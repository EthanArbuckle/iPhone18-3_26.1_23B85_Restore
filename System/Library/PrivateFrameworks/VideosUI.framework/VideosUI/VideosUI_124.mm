uint64_t sub_1E407A6EC()
{
  v1 = v0;
  result = OUTLINED_FUNCTION_5_0();
  v3 = v0[2];
  if (v3 >> 62)
  {
    goto LABEL_29;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v17 = v4;
      while (1)
      {
        v6 = sub_1E407AEB0(v5, v1[8], v4);
        OUTLINED_FUNCTION_21_117();
        v7 = v1[3];
        if (v7[2] && (sub_1E3928950(v5), (v8 & 1) != 0))
        {
          OUTLINED_FUNCTION_20_125();
          [v7 setQueuePriority_];
        }

        else
        {
          swift_endAccess();
        }

        OUTLINED_FUNCTION_21_117();
        v9 = v1[4];
        if (v9 && v9[2] && (sub_1E3928950(v5), (v10 & 1) != 0))
        {
          OUTLINED_FUNCTION_20_125();
          [v9 setQueuePriority_];
        }

        else
        {
          swift_endAccess();
        }

        OUTLINED_FUNCTION_21_117();
        v11 = v1[5];
        if (*(v11 + 16))
        {
          sub_1E3928950(v5);
          if (v12)
          {
            break;
          }
        }

        result = swift_endAccess();
LABEL_25:
        if (++v5 == v4)
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_20_125();
      v13 = sub_1E32AE9B0(v11);

      for (i = 0; ; ++i)
      {
        if (v13 == i)
        {

          v4 = v17;
          goto LABEL_25;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1E6911E60](i, v11);
        }

        else
        {
          if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v15 = *(v11 + 8 * i + 32);
        }

        v16 = v15;
        if (__OFADD__(i, 1))
        {
          break;
        }

        [v15 setQueuePriority_];
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_1E4207384();
      if (result < 0)
      {
        __break(1u);
      }

      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1E407A8EC(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = v2;
    v5 = result;
    OUTLINED_FUNCTION_5_0();
    v6 = *(v2 + 16);
    if (v6 >> 62)
    {
      goto LABEL_46;
    }

    for (result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); result > a2; result = sub_1E4207384())
    {
      OUTLINED_FUNCTION_8_197();
      v7 = *(v3 + 16);

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v3 + 16) = v7;
      if (!result || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        result = sub_1E37EFA58(v7);
        v7 = result;
        *(v3 + 16) = result;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __break(1u);
        return result;
      }

      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = v5;
      *(v3 + 16) = v7;
      swift_endAccess();

      sub_1E4079598();
      v8 = *(v3 + 64);
      v9 = sub_1E32AE9B0(*(v3 + 16));
      v10 = sub_1E407AEB0(a2, v8, v9);
      v11 = *(*v5 + 488);
      v12 = v11();
      if (v12)
      {
        v13 = sub_1E373E010(39, v12);

        if (v13)
        {
          type metadata accessor for ImageViewModel();
          v14 = swift_dynamicCastClass();
          if (v14)
          {
            v74 = v14;
            OUTLINED_FUNCTION_33_89();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
            v15 = sub_1E3798394();
            v23 = OUTLINED_FUNCTION_32_91(v15, v16, v17, v18, v19, v20, v21, v22, v71, v74, v77, v78, v81);
            sub_1E38D2054(v23, v24);

            if (!v77)
            {
            }

            v25 = sub_1E407AF48(v75, v77, 0x27u);
            if (!v25)
            {
              goto LABEL_41;
            }

            v26 = v25;
            v27 = [objc_allocWithZone(VUIMediaInfoImageFetchOperation) initWithMediaInfo_];
            [v27 setQueuePriority_];
            [*(v3 + 72) addOperation_];
            OUTLINED_FUNCTION_8_197();
            v72 = v26;
            v28 = v27;
            swift_isUniquelyReferenced_nonNull_native();
            v78 = *(v3 + 24);
            sub_1E407D03C(v28, a2);
            *(v3 + 24) = v78;
            swift_endAccess();
            OUTLINED_FUNCTION_8_197();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v36 = OUTLINED_FUNCTION_23_102(isUniquelyReferenced_nonNull_native, v30, isUniquelyReferenced_nonNull_native, v31, v32, v33, v34, v35, v72, v75);
            sub_1E407CF24(v36, v37);
            *(v3 + 48) = v78;
            swift_endAccess();
          }
        }
      }

      v38 = (v11)(v12);
      if (v38)
      {
        v39 = sub_1E373E010(40, v38);

        if (v39)
        {
          type metadata accessor for ImageViewModel();
          v40 = swift_dynamicCastClass();
          if (v40)
          {
            v41 = v40;
            OUTLINED_FUNCTION_33_89();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
            v42 = sub_1E3798394();
            v50 = OUTLINED_FUNCTION_32_91(v42, v43, v44, v45, v46, v47, v48, v49, v71, v73, v77, v78, v81);
            sub_1E38D2054(v50, v51);

            if (!v77)
            {
            }

            v52 = sub_1E407AF48(v41, v77, 0x27u);
            if (!v52)
            {
LABEL_41:
            }

            v53 = v52;
            v54 = [objc_allocWithZone(VUIMediaInfoImageFetchOperation) initWithMediaInfo_];
            [v54 setQueuePriority_];
            [*(v3 + 72) addOperation_];
            OUTLINED_FUNCTION_8_197();
            if (*(v3 + 32))
            {
              v76 = v54;
              v55 = swift_isUniquelyReferenced_nonNull_native();
              v62 = OUTLINED_FUNCTION_23_102(v55, v56, v55, v57, v58, v59, v60, v61, v71, v76);
              sub_1E407D03C(v62, v63);
              *(v3 + 32) = v79;
            }

            swift_endAccess();
          }
        }
      }

      result = sub_1E407B1C8();
      if (!result)
      {
        return result;
      }

      v64 = result;
      OUTLINED_FUNCTION_8_197();

      v65 = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v3 + 80);
      sub_1E407D154(v64, a2, v65, &qword_1ECF3F210);
      *(v3 + 80) = v78;
      swift_endAccess();
      v5 = sub_1E407B4AC(v64, v5);

      if (!v5)
      {
LABEL_37:
        OUTLINED_FUNCTION_8_197();
        if (v5)
        {
          v70 = swift_isUniquelyReferenced_nonNull_native();
          v80 = *(v3 + 40);
          sub_1E407D154(v5, a2, v70, &qword_1ECF3F208);
          *(v3 + 40) = v80;
        }

        else
        {
          sub_1E407C71C(a2);
        }

        return swift_endAccess();
      }

      v66 = sub_1E32AE9B0(v5);

      for (i = 0; ; ++i)
      {
        if (v66 == i)
        {

          goto LABEL_37;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x1E6911E60](i, v5);
        }

        else
        {
          if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v68 = *(v5 + 8 * i + 32);
        }

        v69 = v68;
        if (__OFADD__(i, 1))
        {
          break;
        }

        [v68 setQueuePriority_];
        [*(v3 + 72) addOperation_];
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }
  }

  return result;
}

uint64_t sub_1E407AEB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result - a2;
  if (__OFSUB__(result, a2))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v3 < 0)
  {
    v4 = __OFSUB__(0, v3);
    v3 = a2 - result;
    if (v4)
    {
      goto LABEL_24;
    }
  }

  v5 = result + a3;
  if (__OFADD__(result, a3))
  {
    goto LABEL_20;
  }

  v4 = __OFSUB__(v5, a2);
  v6 = v5 - a2;
  if (v4)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 < 0)
  {
    v4 = __OFSUB__(0, v6);
    v6 = -v6;
    if (v4)
    {
      goto LABEL_25;
    }
  }

  v7 = result - a3;
  if (__OFSUB__(result, a3))
  {
    goto LABEL_22;
  }

  v4 = __OFSUB__(v7, a2);
  v8 = v7 - a2;
  if (v4)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    v4 = __OFSUB__(0, v8);
    v8 = -v8;
    if (v4)
    {
      goto LABEL_26;
    }
  }

  if (v8 < v6)
  {
    v6 = v8;
  }

  if (v6 < v3)
  {
    v3 = v6;
  }

  if (v3)
  {
    return 4 * (v3 < 2);
  }

  else
  {
    return 8;
  }
}

uint64_t sub_1E407AF48(uint64_t a1, uint64_t a2, unsigned int a3)
{
  OUTLINED_FUNCTION_26_0();
  v5 = (*(v4 + 392))();
  v6 = 0.0;
  if (v5)
  {
    type metadata accessor for ImageLayout();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_26_0();
      v6 = (*(v7 + 2288))();
      v9 = v8;

      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  if ((*(*a2 + 392))(v5))
  {
    OUTLINED_FUNCTION_26_0();
    v11 = (*(v10 + 1560))();
  }

  else
  {
    v11 = sub_1E3A2532C();
  }

  sub_1E3D417B8(v11, v30);
  v12 = v30[0];
  v13 = v30[1];
  v14 = v30[2];
  v15 = v31;
  sub_1E3DF9E68(v36);
  LOBYTE(v24[0]) = 0;
  v20[0] = v13;
  v20[1] = v14;
  v21 = v15;
  memcpy(v22, v32, sizeof(v22));
  sub_1E3DC050C(v20);
  v16 = sub_1E39D7838(&unk_1F5D94660);
  memcpy(&__src[3] + 1, v37, 0x41uLL);
  *(&__src[11] + 2) = v33;
  *(&__src[13] + 2) = v34;
  *(&__src[15] + 2) = v35;
  __src[0] = v12;
  *&__src[1] = v6;
  __src[2] = v9;
  LOBYTE(__src[3]) = 0;
  nullsub_1(v34, v17);
  memcpy(__dst, __src, 0x82uLL);
  sub_1E3D41C40(a2, v16, a3, __dst);
  OUTLINED_FUNCTION_79_2();
  v24[0] = v12;
  *&v24[1] = v6;
  v24[2] = v9;
  v25 = 0;
  memcpy(v26, v37, sizeof(v26));
  v27 = v33;
  v28 = v34;
  v29 = v35;
  sub_1E39F8998(v24);
  return v15;
}

uint64_t sub_1E407B1C8()
{
  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 488))();
  if (v2)
  {
    sub_1E373E010(229, v2);
    v3 = OUTLINED_FUNCTION_79_2();
    if (v0)
    {
      v4 = (*(*v0 + 488))(v3);
      if (v4)
      {
        v5 = sub_1E373E010(239, v4);

        if (v5)
        {
          v7 = (*(*v5 + 464))(v6);
          if (v7)
          {
            v8 = v7;
            v9 = MEMORY[0x1E69E7CC0];
            v18 = MEMORY[0x1E69E7CC0];
            result = sub_1E32AE9B0(v7);
            v11 = result;
            v12 = 0;
            while (1)
            {
              if (v11 == v12)
              {
                v16 = sub_1E32AE9B0(v9);
                v17 = sub_1E32AE9B0(v8);

                if (v16 == v17)
                {
                  return v9;
                }

                return 0;
              }

              if ((v8 & 0xC000000000000001) != 0)
              {
                result = MEMORY[0x1E6911E60](v12, v8);
                v13 = result;
              }

              else
              {
                if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_30;
                }

                v13 = *(v8 + 8 * v12 + 32);
              }

              if (__OFADD__(v12, 1))
              {
                __break(1u);
LABEL_30:
                __break(1u);
                return result;
              }

              if (!(*(*v13 + 488))(result))
              {
                goto LABEL_18;
              }

              OUTLINED_FUNCTION_134_9();
              if (!v14 || (sub_1E3740AE8(39), (v15 & 1) == 0))
              {

                goto LABEL_18;
              }

              type metadata accessor for ImageViewModel();
              if (swift_dynamicCastClass())
              {
                MEMORY[0x1E6910BF0]();
                if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1E42062F4();
                }

                result = sub_1E4206324();
                v9 = v18;
                ++v12;
              }

              else
              {
LABEL_18:

                ++v12;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

unint64_t sub_1E407B4AC(unint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 488))();
  if (!v4)
  {
    return 0;
  }

  sub_1E373E010(229, v4);
  v5 = OUTLINED_FUNCTION_79_2();
  if (!v2)
  {
    return 0;
  }

  v6 = (*(*v2 + 488))(v5);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = sub_1E373E010(239, v6);

  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = (*(*v7 + 464))(v8);
  if (!v9)
  {

LABEL_13:

    return 0;
  }

  v10 = sub_1E32AE9B0(v9);
  if (v10 == sub_1E32AE9B0(a1))
  {
    v11 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    v19 = a1;
    v20 = 0;

    while (1)
    {
      v12 = sub_1E407BF14();
      if (!v12)
      {
        break;
      }

      v14 = sub_1E407AF48(v12, v13, 0x27u);
      if (!v14)
      {

        goto LABEL_19;
      }

      v15 = v14;
      v16 = [objc_allocWithZone(VUIMediaInfoImageFetchOperation) initWithMediaInfo_];
      MEMORY[0x1E6910BF0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();

      v11 = v21;
    }

    v17 = sub_1E32AE9B0(v11);

    if (v17)
    {
      return v11;
    }
  }

  else
  {

LABEL_19:
  }

  return 0;
}

uint64_t sub_1E407B75C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v11, v4);
  v12 = sub_1E41FFC94();
  v13 = sub_1E42067E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = a1;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v15, v16, "MediaShowcasingMetadataInteractor:: setIndex to %ld");
    OUTLINED_FUNCTION_6_0();
  }

  (*(v6 + 8))(v10, v4);
  *(v2 + 64) = a1;
  return sub_1E407A6EC();
}

uint64_t sub_1E407B8A8()
{

  return v0;
}

uint64_t sub_1E407B900()
{
  sub_1E407B8A8();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1E407B934()
{
  v0 = swift_allocObject();
  sub_1E407B96C();
  return v0;
}

void *sub_1E407B96C()
{
  v0[2] = MEMORY[0x1E69E7CC0];
  sub_1E407D8F0();
  v0[3] = sub_1E4205CB4();
  v0[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1F0);
  v0[5] = OUTLINED_FUNCTION_14_174();
  type metadata accessor for ImageViewModel();
  v1 = OUTLINED_FUNCTION_14_174();
  v0[7] = 0;
  v0[8] = 0;
  v0[6] = v1;
  v0[9] = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F858);
  v0[10] = OUTLINED_FUNCTION_14_174();
  return v0;
}

uint64_t sub_1E407BA38(unint64_t a1, unsigned int a2, uint64_t a3)
{
  type metadata accessor for ImageViewModel();
  v4 = sub_1E4205CB4();
  v5 = sub_1E32AE9B0(a1);
  v6 = 0;
  while (2)
  {
    while (2)
    {
      for (i = v6; ; ++i)
      {
        if (v5 == i)
        {
          return v4;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1E6911E60](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v8 = *(a1 + 8 * i + 32);
        }

        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v9 = *(*v8 + 488);

        if (v9(v10))
        {
          break;
        }

LABEL_14:

LABEL_15:
      }

      OUTLINED_FUNCTION_134_9();
      if (!v11 || (sub_1E3740AE8(a2), (v12 & 1) == 0))
      {

        goto LABEL_14;
      }

      v13 = swift_dynamicCastClass();
      if (!v13)
      {

        goto LABEL_15;
      }

      v14 = a3 + i;
      if (__OFADD__(a3, i))
      {
        goto LABEL_30;
      }

      v15 = v13;

      swift_isUniquelyReferenced_nonNull_native();
      v27 = sub_1E3928950(v14);
      v28 = v16;
      OUTLINED_FUNCTION_11_53();
      if (__OFADD__(v17, v18))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1F8);
      if (sub_1E4207644())
      {
        v19 = sub_1E3928950(v14);
        v21 = v28;
        if ((v28 & 1) != (v20 & 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        v19 = v27;
        v21 = v28;
      }

      if (v21)
      {
        *(v4[7] + 8 * v19) = v15;

        continue;
      }

      break;
    }

    v22 = OUTLINED_FUNCTION_0_331(v19, &v4[v19 >> 6]);
    *(v4[6] + 8 * v22) = v14;
    *(v4[7] + 8 * v22) = v15;

    v23 = v4[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      v4[2] = v25;
      continue;
    }

    break;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E407BD2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v12);
  v10 = v12;
  if (v4)
  {
  }

  return v10;
}

uint64_t sub_1E407BDB4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1E407D678(a1, sub_1E407D9C0, 0, isUniquelyReferenced_nonNull_native, &v8, &qword_1ECF3F220, &unk_1E42E8DD8, &qword_1ECF3F210);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1E407BE64(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1E407D678(a1, sub_1E407D9C0, 0, isUniquelyReferenced_nonNull_native, &v8, &qword_1ECF3F218, &unk_1E42E8DD0, &qword_1ECF3F208);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1E407BF14()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    v3 = sub_1E4207384();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 8);
  if (v4 == v3)
  {
LABEL_11:
    v1 = 0;
    *(v0 + 32) = 1;
    return v1;
  }

  v5 = v2 & 0xC000000000000001;
  sub_1E34AF4E4(*(v0 + 8), (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x1E6911E60](v4, v2);
  }

  else
  {
    v1 = *(v2 + 8 * v4 + 32);
  }

  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = v4 + 1;
    v5 = *(v0 + 16);
    v6 = sub_1E32AE9B0(v5);
    v4 = *(v0 + 24);
    if (v4 == v6)
    {

      goto LABEL_11;
    }

    sub_1E34AF4E4(*(v0 + 24), (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) == 0)
    {

      goto LABEL_14;
    }
  }

  result = MEMORY[0x1E6911E60](v4, v5);
LABEL_14:
  if (!__OFADD__(v4, 1))
  {
    *(v0 + 24) = v4 + 1;
    return v1;
  }

  __break(1u);
  return result;
}

void sub_1E407C05C(uint64_t **a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *a1;
  v10 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v10, v2);

  v11 = sub_1E41FFC94();
  v12 = sub_1E42067E4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v15 = *v9;
    v23 = v14;
    v16 = (*(v15 + 1096))();
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v16 = 7104878;
      v18 = 0xE300000000000000;
    }

    v19 = sub_1E3270FC8(v16, v18, &v23);

    *(v13 + 4) = v19;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v20, v21, "MediaShowcasingMetadataInteractor: setupPortableScoreboard: %s");
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v4 + 8))(v8, v2);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  v22 = (*(*v9 + 2104))(0);
  (*(*v9 + 2368))(v22);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E407C2C4()
{
  v28 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v27 = v5 - v4;
  OUTLINED_FUNCTION_5_0();
  v6 = *(v0 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  v7 = sub_1E32AE9B0(v6);

  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E6911E60](v8, v6);
      v9 = v10;
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    if (!(*(*v9 + 488))(v10))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_134_9();
    if (!v11 || (sub_1E3740AE8(234), (v12 & 1) == 0))
    {

      goto LABEL_13;
    }

    type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1E6910BF0]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v29 = v32;
      ++v8;
    }

    else
    {
LABEL_13:

      ++v8;
    }
  }

  v13 = v29;
  v14 = 0;
  v31 = sub_1E32AE9B0(v29);
  v30 = (v2 + 16);
  v15 = (v2 + 8);
  v17 = v27;
  v16 = v28;
  while (v31 != v14)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1E6911E60](v14, v13);
    }

    else
    {
      if (v14 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v18 = *(v13 + 8 * v14 + 32);
    }

    if (__OFADD__(v14, 1))
    {
      goto LABEL_34;
    }

    v19 = sub_1E324FBDC();
    (*v30)(v17, v19, v16);

    v20 = sub_1E41FFC94();
    v21 = sub_1E42067E4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136315138;
      v24 = (*(*v18 + 1096))();
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v24 = 7104878;
        v26 = 0xE300000000000000;
      }

      sub_1E3270FC8(v24, v26, &v32);
      OUTLINED_FUNCTION_79_2();
      *(v22 + 4) = v16;
      v16 = v28;
      _os_log_impl(&dword_1E323F000, v20, v21, "MediaShowcasingMetadataInteractor: cleanupPortableScoreboard: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_6_0();
      v13 = v29;
      v17 = v27;
      OUTLINED_FUNCTION_6_0();
    }

    (*v15)(v17, v16);
    (*(*v18 + 2376))(0);

    ++v14;
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E407C71C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E3928950(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F208);
  sub_1E4207644();
  v6 = *(*(v8 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1F0);
  sub_1E4207664();
  *v2 = v8;
  return v6;
}

uint64_t sub_1E407C7F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F228);
  result = sub_1E4207724();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_32:
    *v3 = v7;
    return result;
  }

  v31 = v3;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        sub_1E373CBF0(0, (v30 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((a2 & 1) == 0)
    {
      v21 = v20;
    }

    result = sub_1E4207B34();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + 8 * v25) = v19;
    *(*(v7 + 56) + 8 * v25) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1E407CA58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F230);
  result = sub_1E4207724();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v30 = v3;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      sub_1E373CBF0(0, (v29 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((a2 & 1) == 0)
    {
    }

    result = sub_1E4207B34();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + 8 * v24) = v19;
    *(*(v7 + 56) + 8 * v24) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
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
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1E407CCC4(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_1E4207724();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_31:

LABEL_32:
    *v4 = v8;
    return result;
  }

  v31 = v4;
  v9 = 0;
  v10 = (v6 + 64);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_32;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      sub_1E373CBF0(0, (v30 + 63) >> 6, v6 + 64);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_24_111();
    v13 &= v13 - 1;
LABEL_12:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v6 + 48) + 8 * v19);
    v21 = *(*(v6 + 56) + 8 * v19);
    if ((a2 & 1) == 0)
    {
    }

    result = sub_1E4207B34();
    v22 = -1 << *(v8 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v15 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v8 + 48) + 8 * v25) = v20;
    *(*(v8 + 56) + 8 * v25) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v15 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1E407CF24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E3928950(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1F8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E3928950(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if ((v10 & 1) == 0)
  {
    return sub_1E407D264(v9, a2, a1, v13);
  }

  *(*(v13 + 56) + 8 * v9) = a1;
}

void sub_1E407D03C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E3928950(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F200);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E3928950(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    v14 = *(v13 + 56);
    v15 = *(v14 + 8 * v9);
    *(v14 + 8 * v9) = a1;
  }

  else
  {
    sub_1E407D264(v9, a2, a1, v13);
  }
}

void sub_1E407D154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1E3928950(a2);
  OUTLINED_FUNCTION_11_53();
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v8;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E3928950(a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v4;
  if (v13)
  {
    *(*(v16 + 56) + 8 * v12) = a1;
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E407D264(v12, a2, a1, v16);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E407D264(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_0_331(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

uint64_t sub_1E407D2A8(void *a1, uint64_t a2, void *a3)
{
  *a1 = a3;
  v4 = a3;
  return a2;
}

uint64_t sub_1E407D2D4(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;

  return a2;
}

uint64_t sub_1E407D304(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v75 = a5;
  v12 = a3;
  sub_1E394CDB0(a1, a2, a3, v74);
  OUTLINED_FUNCTION_9_184();
  v56 = v12;

  if (v8)
  {
    while (1)
    {
      HIDWORD(v68) = a4;
      v13 = v5;
LABEL_8:
      OUTLINED_FUNCTION_13_183();
      v73 = v17;
      v18 = *(v16 + v15);
      v26 = OUTLINED_FUNCTION_27_98(v18, v19, v20, v21, v22, v23, v24, v25, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v73);
      v27(v26);

      v36 = OUTLINED_FUNCTION_34_76(v28, v29, v30, v31, v32, v33, v34, v35, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71);
      OUTLINED_FUNCTION_11_53();
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        break;
      }

      v41 = v37;
      if (*(v12 + 24) >= v40)
      {
        if ((v68 & 0x100000000) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F200);
          v12 = v75;
          sub_1E4207654();
        }
      }

      else
      {
        v42 = v75;
        sub_1E407C7F4(v40, BYTE4(v68) & 1);
        v12 = *v42;
        v43 = sub_1E3928950(v10);
        if ((v41 & 1) != (v44 & 1))
        {
          goto LABEL_23;
        }

        v36 = v43;
      }

      OUTLINED_FUNCTION_26_117();
      if (v41)
      {
        v46 = *(v45 + 56);
        v47 = *(v46 + 8 * v36);
        *(v46 + 8 * v36) = v6;
      }

      else
      {
        OUTLINED_FUNCTION_1_289(v45);
        if (v50)
        {
          goto LABEL_22;
        }

        *(v48 + 16) = v49;
      }

      a4 = 1;
      v5 = v13;
    }
  }

  else
  {
    v14 = v5;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        OUTLINED_FUNCTION_31_91();
      }

      ++v14;
      if (*(v9 + 8 * v13))
      {
        HIDWORD(v68) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E407D4BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v71 = a5;
  v12 = a3;
  sub_1E394CDB0(a1, a2, a3, v70);
  OUTLINED_FUNCTION_9_184();
  v52 = v12;

  if (v8)
  {
    while (1)
    {
      HIDWORD(v64) = a4;
      v13 = v5;
LABEL_8:
      OUTLINED_FUNCTION_13_183();
      v69 = v15;

      v24 = OUTLINED_FUNCTION_27_98(v16, v17, v18, v19, v20, v21, v22, v23, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v69);
      v25(v24);

      v34 = OUTLINED_FUNCTION_34_76(v26, v27, v28, v29, v30, v31, v32, v33, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
      OUTLINED_FUNCTION_11_53();
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        break;
      }

      v39 = v35;
      if (*(v12 + 24) >= v38)
      {
        if ((v64 & 0x100000000) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1F8);
          v12 = v71;
          sub_1E4207654();
        }
      }

      else
      {
        v40 = v71;
        sub_1E407CA58(v38, BYTE4(v64) & 1);
        v12 = *v40;
        v41 = sub_1E3928950(v10);
        if ((v39 & 1) != (v42 & 1))
        {
          goto LABEL_23;
        }

        v34 = v41;
      }

      OUTLINED_FUNCTION_26_117();
      if (v39)
      {
        *(*(v43 + 56) + 8 * v34) = v6;
      }

      else
      {
        OUTLINED_FUNCTION_1_289(v43);
        if (v46)
        {
          goto LABEL_22;
        }

        *(v44 + 16) = v45;
      }

      a4 = 1;
      v5 = v13;
    }
  }

  else
  {
    v14 = v5;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        OUTLINED_FUNCTION_31_91();
      }

      ++v14;
      if (*(v9 + 8 * v13))
      {
        HIDWORD(v64) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E407D678(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t *a8)
{
  v42 = a5;
  sub_1E394CDB0(a1, a2, a3, v41);
  v9 = v41[1];
  v10 = v41[3];
  v11 = v41[4];
  v36 = v41[5];
  v37 = v41[0];
  v12 = (v41[2] + 64) >> 6;

  if (v11)
  {
    while (1)
    {
      v38 = a4;
      v13 = v10;
LABEL_8:
      OUTLINED_FUNCTION_24_111();
      v16 = (v13 << 9) | (8 * v15);
      v17 = *(*(v37 + 56) + v16);
      v40[0] = *(*(v37 + 48) + v16);
      v40[1] = v17;

      v36(v39, v40);

      v18 = v39[0];
      v19 = v39[1];
      v20 = *v42;
      v21 = sub_1E3928950(v39[0]);
      OUTLINED_FUNCTION_11_53();
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v22;
      if (v20[3] >= v25)
      {
        if ((v38 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(a8);
          sub_1E4207654();
        }
      }

      else
      {
        sub_1E407CCC4(v25, v38 & 1, a6);
        v27 = sub_1E3928950(v18);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v21 = v27;
      }

      v11 &= v11 - 1;
      v29 = *v42;
      if (v26)
      {
        *(v29[7] + 8 * v21) = v19;
      }

      else
      {
        v29[(v21 >> 6) + 8] |= 1 << v21;
        *(v29[6] + 8 * v21) = v18;
        *(v29[7] + 8 * v21) = v19;
        v30 = v29[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_23;
        }

        v29[2] = v32;
      }

      a4 = 1;
      v10 = v13;
      if (!v11)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v14 = v10;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        sub_1E34AF4DC();
      }

      v11 = *(v9 + 8 * v13);
      ++v14;
      if (v11)
      {
        v38 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

unint64_t sub_1E407D8F0()
{
  result = qword_1EE23AF30;
  if (!qword_1EE23AF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AF30);
  }

  return result;
}

uint64_t sub_1E407D988()
{
  OUTLINED_FUNCTION_25_106();
  result = v1();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E407D9D8()
{
  OUTLINED_FUNCTION_25_106();
  result = v1();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E407DA28()
{
  v0 = sub_1E38E51A8(&unk_1F5D94688);
  v3 = v0;
  if (TVAppFeature.isEnabled.getter(17))
  {
    sub_1E38E8158(&v2, 127);
    return v3;
  }

  return v0;
}

void sub_1E407DA90(void *a1)
{
  if (sub_1E404C4C8())
  {
    v2 = 169;
    v3 = 189;
  }

  else
  {
    sub_1E407DD70(a1, 127);
    sub_1E407DD70(a1, 128);
    sub_1E407DD70(a1, 123);
    sub_1E407DD70(a1, 148);
    sub_1E407DD70(a1, 135);
    sub_1E407DD70(a1, 137);
    sub_1E407DD70(a1, 130);
    sub_1E407DD70(a1, 121);
    sub_1E407DC98(a1, 170);
    sub_1E407DC98(a1, 171);
    sub_1E407DC98(a1, 173);
    sub_1E407DC98(a1, 178);
    sub_1E407DC98(a1, 179);
    sub_1E407DC98(a1, 197);
    sub_1E407DC98(a1, 216);
    sub_1E407DC98(a1, 194);
    sub_1E407DC98(a1, 215);
    sub_1E407DC98(a1, 206);
    sub_1E407DC98(a1, 198);
    sub_1E407DC98(a1, 183);
    sub_1E407DC98(a1, 184);
    sub_1E407DC98(a1, 187);
    sub_1E407DC98(a1, 188);
    sub_1E407DC98(a1, 190);
    sub_1E407DC98(a1, 193);
    sub_1E407DC98(a1, 200);
    sub_1E407DC98(a1, 201);
    sub_1E407DC98(a1, 189);
    if ((TVAppFeature.isEnabled.getter(17) & 1) == 0)
    {
      sub_1E407DC98(a1, 174);
    }

    sub_1E407DC98(a1, 256);
    sub_1E407DC98(a1, 213);
    sub_1E407DC98(a1, 214);
    sub_1E407DC98(a1, 196);
    v2 = 199;
    v3 = 244;
  }

  sub_1E407DC98(a1, v3);

  sub_1E407DC98(a1, v2);
}

void sub_1E407DC98(void *a1, uint64_t a2)
{
  sub_1E3859230(a2);
  if (_MergedGlobals_270 != -1)
  {
    swift_once();
  }

  if (!sub_1E407F450(a2, qword_1EE28CB70))
  {
    type metadata accessor for CardCollectionViewCell();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1E4205ED4();

  [a1 vui:ObjCClassFromMetadata registerClass:v5 forCellWithReuseIdentifier:?];
}

void sub_1E407DD70(void *a1, uint64_t a2)
{
  type metadata accessor for ViewControllerHostingCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1E3859230(a2);
  v5 = sub_1E4205ED4();

  [a1 vui:ObjCClassFromMetadata registerClass:v5 forCellWithReuseIdentifier:?];
}

id sub_1E407DDFC(void *a1, uint64_t a2, unsigned __int16 *a3)
{
  v4 = v3;
  v8 = sub_1E42046B4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_9_3();
  v201 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v204 = v197 - v11;
  v205 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v203 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_3();
  v202 = v14;
  *&v209 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  *&v208 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v207 = v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v197 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v206 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1E3859230(a3[49]);
  v23 = sub_1E4205ED4();

  v213 = a2;
  v24 = sub_1E41FE7E4();
  v210 = [a1 vui:v23 dequeueReusableCellWithIdentifier:v24 indexPath:?];

  v25 = TVAppFeature.isEnabled.getter(10);
  v26 = MEMORY[0x1E69E7D40];
  v211 = a1;
  v212 = a3;
  if (v25)
  {
    OUTLINED_FUNCTION_18_137();
    v28 = (*(v27 + 992))();
    v31 = v26;
    if (v29 == 1)
    {
      v32 = v26;
      v33 = sub_1E324FBDC();
      v34 = v208;
      v35 = v209;
      (*(v208 + 16))(v20, v33, v209);
      v36 = sub_1E41FFC94();
      v37 = sub_1E42067F4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1E323F000, v36, v37, "StackViewController+Cells:: missing view layout environment", v38, 2u);
        MEMORY[0x1E69143B0](v38, -1, -1);
      }

      (*(v34 + 8))(v20, v35);
      a3 = v212;
      v26 = v32;
    }

    else
    {
      v46 = v29;
      v199 = v28;
      LOBYTE(v218[0]) = v28;
      *(&v218[0] + 1) = v29;
      LOWORD(v218[1]) = v30;
      *&v220[0] = v29;
      MEMORY[0x1EEE9AC00](v28);
      v197[-2] = v218;
      v197[-1] = v211;
      v47 = v46;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE00);
      v49 = sub_1E4148D98(sub_1E407FADC, &v197[-4], v48);
      v50 = (*v31 & *v4) + 536;
      v51 = *((*v31 & *v4) + 0x218);
      v52 = (v51)(v49);
      sub_1E4200104();

      v200 = v4;
      v53 = v51();
      sub_1E42000B4();

      v54 = *(&v220[0] + 1);
      if (*(&v220[0] + 1))
      {
        v219[0] = v220[0];
        *&v219[1] = *&v220[1];
        sub_1E4200034();

        v50 = *&v220[0];
        v197[1] = *&v220[1];
        v198 = *(&v220[0] + 1);
      }

      v55 = (*(*v212 + 392))();
      if (v55)
      {
        (*(*v55 + 1640))(LOBYTE(v218[0]), *(&v218[0] + 1), LOWORD(v218[1]));

        sub_1E39DFB80(v199, v46);
        v56 = OUTLINED_FUNCTION_19_147();
        v57(v56);
      }

      else
      {
        v58 = OUTLINED_FUNCTION_19_147();
        v59(v58);
        sub_1E39DFB80(v199, v46);
      }

      v4 = v200;
      a3 = v212;
      v26 = MEMORY[0x1E69E7D40];
      if (v54)
      {
        sub_1E3790548(v50, v198);
      }
    }
  }

  else
  {
    type metadata accessor for LayoutGrid();
    [a1 frame];
    Width = CGRectGetWidth(v221);
    v40 = sub_1E3A2579C(Width);
    v41 = (*(*a3 + 392))(v40);
    if (v41)
    {
      v42 = v41;
      v43 = [v211 vuiTraitCollection];
      sub_1E3C2AE10();
      v45 = v44;
      (*(*v42 + 1640))();
    }
  }

  v60 = v210;
  *&v218[0] = v210;
  v61 = sub_1E3280A90(0, &qword_1EE23B120);
  v210 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C250);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v219, 0, 40);
    sub_1E325F748(v219, &unk_1ECF429D0);
LABEL_29:
    LOBYTE(v214) = 0;
    v76 = sub_1E41FE854();
    v77 = *((*v26 & *v4) + 0x2F0);
    if (*(v77() + 16) && (sub_1E3928950(v76), (v78 & 1) != 0))
    {
      OUTLINED_FUNCTION_20_126();
      memcpy(v79, v80, v81);
      OUTLINED_FUNCTION_20_126();
      memmove(v82, v83, v84);
      sub_1E3AE1020(v219, v218);

      nullsub_1(v85, v86);
    }

    else
    {

      sub_1E3790540(v220);
    }

    memcpy(v219, v220, sizeof(v219));
    if (sub_1E3AD9318(v219) == 1)
    {
      memcpy(v218, v220, sizeof(v218));
      sub_1E325F748(v218, &unk_1ECF296A0);
    }

    else
    {
      v87 = *(&v220[10] + 1);
      memcpy(v218, v220, sizeof(v218));

      sub_1E325F748(v218, &unk_1ECF296A0);
      if (v87)
      {
        v216[0] = 2;
        memset(&v216[1], 0, 35);
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE18);
        sub_1E4148C68(sub_1E40595A4, v88, v217);
        v208 = v217[1];
        v209 = v217[0];
        v89 = *&v217[2];
        v90 = WORD4(v217[2]);
        LOBYTE(v214) = BYTE8(v217[2]);
        v91 = BYTE10(v217[2]);
        if (LOBYTE(v217[0]) == 2)
        {

          v92 = HIBYTE(v90);
        }

        else
        {
          v95 = sub_1E41FE844();
          v96 = sub_1E407F49C(v95, v87);

          v92 = v96 & 1;
        }

        v94 = v208;
        v93 = v209;
        goto LABEL_41;
      }
    }

    LOBYTE(v90) = 0;
    v89 = 0;
    v92 = 0;
    v91 = 0;
    v93 = xmmword_1E42A9820;
    v94 = 0uLL;
LABEL_41:
    v217[0] = v93;
    v217[1] = v94;
    *&v217[2] = v89;
    BYTE8(v217[2]) = v90;
    BYTE9(v217[2]) = v92;
    BYTE10(v217[2]) = v91;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE18);
    sub_1E4148C68(sub_1E405A6D4, v97, v218);
    v98 = v218[0];
    LOBYTE(v214) = BYTE8(v218[2]);
    if (LOBYTE(v218[0]) == 2)
    {
      v99 = v210;
      v216[0] = v210;
      memset(v218, 0, 40);
    }

    else
    {
      *&v209 = v61;
      v100 = WORD4(v218[2]) | (BYTE10(v218[2]) << 16);
      v101 = v211;
      v102 = sub_1E407F528(v211);
      v104 = v103;
      v105 = sub_1E41FE854();
      if (*(v77() + 16) && (sub_1E3928950(v105), (v106 & 1) != 0))
      {
        OUTLINED_FUNCTION_20_126();
        memcpy(v107, v108, v109);
        OUTLINED_FUNCTION_20_126();
        memmove(v110, v111, v112);
        sub_1E3AE1020(v217, v216);

        nullsub_1(v113, v114);
      }

      else
      {

        sub_1E3790540(v218);
      }

      memcpy(v217, v218, sizeof(v217));
      v115 = sub_1E3AD9318(v217);
      v116 = *(&v218[0] + 1);
      memcpy(v216, v218, sizeof(v216));
      sub_1E325F748(v216, &unk_1ECF296A0);
      if (v115 == 1)
      {
        v116 = 0;
      }

      v117 = [v101 numberOfItemsInSection_];
      LOBYTE(v214) = 0;
      v99 = v210;
      v216[0] = v210;
      v215 = 0;
      *(&v218[1] + 1) = &type metadata for CollectionViewCellContext;
      *&v218[2] = &off_1F5D621F8;
      v118 = swift_allocObject();
      *&v218[0] = v118;
      *(v118 + 16) = v98 & 1;
      *(v118 + 17) = BYTE1(v98) & 1;
      *(v118 + 18) = BYTE2(v98) & 1;
      *(v118 + 24) = v102;
      *(v118 + 32) = v104;
      *(v118 + 40) = v116;
      *(v118 + 48) = v117;
      *(v118 + 56) = v215;
      *(v118 + 57) = BYTE1(v100);
      *(v118 + 58) = BYTE2(v100) & 1;
      v61 = v209;
    }

    type metadata accessor for UIFactory();
    v119 = v99;
    sub_1E38E5240(v212, v216, v218, 0, v4, v61, v217);

    sub_1E325F748(v218, &qword_1ECF296C0);
    return v99;
  }

  sub_1E3251BE8(v219, v220);
  v62 = *(a3 + 3);
  if (!v62)
  {
    __swift_destroy_boxed_opaque_existential_1(v220);
    goto LABEL_29;
  }

  v63 = *(a3 + 2);
  OUTLINED_FUNCTION_18_137();
  v65 = (*(v64 + 680))();
  v66 = sub_1E378A81C(v63, v62, v65);

  if (([objc_opt_self() isSearchEnabled] & 1) == 0 || (type metadata accessor for UnifiedMessagingBubbleTipViewModel(), (v67 = swift_dynamicCastClass()) == 0))
  {
LABEL_52:
    if (v66)
    {
LABEL_65:
      v145 = sub_1E324FBDC();
      v146 = v207;
      v147 = v208;
      v148 = v209;
      (*(v208 + 16))(v207, v145, v209);
      v149 = v66;
      v150 = sub_1E41FFC94();
      v151 = sub_1E4206814();

      if (os_log_type_enabled(v150, v151))
      {
        v200 = v4;
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        *&v218[0] = v153;
        *v152 = 136315650;
        swift_beginAccess();
        v154 = *(&v220[1] + 1);
        v155 = __swift_project_boxed_opaque_existential_1(v220, *(&v220[1] + 1));
        *(&v219[1] + 1) = v154;
        __swift_allocate_boxed_opaque_existential_1(v219);
        OUTLINED_FUNCTION_8_198();
        (*(v156 + 16))();
        v157 = sub_1E3294FA4(v219);
        sub_1E3270FC8(v157, v158, v218);
        OUTLINED_FUNCTION_11_5();

        *(v152 + 4) = v155;
        *(v152 + 12) = 2080;
        swift_beginAccess();
        v159 = *(&v220[1] + 1);
        v160 = *&v220[2];
        __swift_project_boxed_opaque_existential_1(v220, *(&v220[1] + 1));
        v161 = (*(v160 + 8))(v159, v160);
        swift_endAccess();
        if (v161)
        {
          v162 = sub_1E3280A90(0, &qword_1EE23B250);
        }

        else
        {
          v162 = 0;
          *&v219[1] = 0;
          *(&v219[0] + 1) = 0;
        }

        *&v219[0] = v161;
        *(&v219[1] + 1) = v162;
        v163 = sub_1E3294FA4(v219);
        sub_1E3270FC8(v163, v164, v218);
        OUTLINED_FUNCTION_11_5();

        *(v152 + 14) = v159;
        *(v152 + 22) = 2080;
        if (v66)
        {
          v165 = sub_1E3280A90(0, &qword_1EE23B250);
          v166 = v149;
        }

        else
        {
          v166 = 0;
          v165 = 0;
          *&v219[1] = 0;
          *(&v219[0] + 1) = 0;
        }

        *&v219[0] = v166;
        *(&v219[1] + 1) = v165;
        v167 = v149;
        v168 = sub_1E3294FA4(v219);
        sub_1E3270FC8(v168, v169, v218);
        OUTLINED_FUNCTION_11_5();

        *(v152 + 24) = v159;
        _os_log_impl(&dword_1E323F000, v150, v151, "StackViewController:: Dequeue: Hosting Cell: %s, Existing ViewController: %s, New View Controller: %s", v152, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E69143B0](v153, -1, -1);
        MEMORY[0x1E69143B0](v152, -1, -1);

        (*(v208 + 8))(v207, v209);
        v4 = v200;
      }

      else
      {

        (*(v147 + 8))(v146, v148);
      }

      swift_beginAccess();
      v170 = *(&v220[1] + 1);
      v171 = *&v220[2];
      __swift_mutable_project_boxed_opaque_existential_1(v220, *(&v220[1] + 1));
      v172 = *(v171 + 16);
      v173 = v149;
      v172(v66, v170, v171);
      swift_endAccess();
      if (!v66)
      {
        __swift_destroy_boxed_opaque_existential_1(v220);
        return v210;
      }

      v174 = *(*v212 + 576);
      v175 = v173;
      v176 = v174();
      v99 = v210;
      if (v176)
      {
        v177 = v176;
        (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1A0))(v218);
        if (*(&v218[1] + 1))
        {
          sub_1E3251BE8(v218, v219);
          [v99 frame];
          type metadata accessor for Metrics();
          sub_1E3BA8620();
          v178 = v204;
          (*(*v177 + 224))();
          v179 = v205;
          if (__swift_getEnumTagSinglePayload(v178, 1, v205) == 1)
          {

            v180 = &qword_1ECF2B7B0;
            v181 = v178;
LABEL_79:
            sub_1E325F748(v181, v180);
LABEL_88:
            __swift_destroy_boxed_opaque_existential_1(v219);
            goto LABEL_89;
          }

          v183 = v202;
          v182 = v203;
          (*(v203 + 32))(v202, v178, v179);
          v214 = v175;
          sub_1E3280A90(0, &qword_1EE23B250);
          v184 = v175;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C260);
          if (OUTLINED_FUNCTION_12_167())
          {
            v185 = OUTLINED_FUNCTION_4_258();
            v186(v185);
            OUTLINED_FUNCTION_9_185();

            type metadata accessor for CollectionImpressionManager();
            OUTLINED_FUNCTION_3_261();
            OUTLINED_FUNCTION_8_198();
            (*(v187 + 16))();
            sub_1E42046D4();
            v188 = sub_1E3F0AE74();
            OUTLINED_FUNCTION_10_171(v188, &off_1F5D8D100);
            v189 = OUTLINED_FUNCTION_5_237();
            v190(v189);
          }

          else
          {
            memset(v217, 0, 40);
            sub_1E325F748(v217, &qword_1ECF3C268);
            v214 = v184;
            v184 = v184;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E3E0);
            if ((OUTLINED_FUNCTION_12_167() & 1) == 0)
            {
              (*(v182 + 8))(v183, v179);

              memset(v217, 0, 40);
              v180 = &unk_1ECF3E3D0;
              v181 = v217;
              goto LABEL_79;
            }

            v191 = OUTLINED_FUNCTION_4_258();
            v192(v191);
            OUTLINED_FUNCTION_9_185();

            type metadata accessor for ViewImpressionManager();
            OUTLINED_FUNCTION_3_261();
            OUTLINED_FUNCTION_8_198();
            (*(v193 + 16))();
            sub_1E42046D4();
            v194 = sub_1E3F09578();
            OUTLINED_FUNCTION_10_171(v194, &off_1F5D8D098);
            v195 = OUTLINED_FUNCTION_5_237();
            v196(v195);
          }

          (*(v179 + 8))(v183, v205);
          __swift_destroy_boxed_opaque_existential_1(v218);
          goto LABEL_88;
        }

        sub_1E325F748(v218, &unk_1ECF296D0);
      }

      else
      {
      }

LABEL_89:
      __swift_destroy_boxed_opaque_existential_1(v220);
      return v99;
    }

    goto LABEL_55;
  }

  v68 = *(*v67 + 928);

  v70 = v68(v69);
  v72 = v71;
  v73 = sub_1E3B58264();
  if (!v72)
  {

    goto LABEL_52;
  }

  if (v70 == *v73 && v72 == v73[1])
  {

    goto LABEL_55;
  }

  v75 = sub_1E42079A4();

  if ((v75 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_55:
  [v211 bounds];
  v121.n128_u64[0] = v120;
  v123.n128_u64[0] = v122;
  v124 = nullsub_1(v121, v123);
  v126 = v125;
  v128 = v127;
  v129 = v124;
  v130 = TVAppFeature.isEnabled.getter(10);
  v206 = v63;
  v131 = v26;
  if ((v130 & 1) == 0)
  {
    v135 = *sub_1E3E6011C();

LABEL_61:
    v136 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    *&v219[2] = &off_1F5D62200;
    *&v219[0] = v126;
    *(&v219[0] + 1) = v128;
    *(&v219[1] + 1) = &type metadata for CollectionViewContext;
    *&v219[1] = v135;
    v137 = v136;
    v138 = sub_1E39C4090(a3, v66, v219);

    sub_1E325F748(v219, &qword_1ECF296C0);
    v139 = *((*v131 & *v4) + 0x2B8);
    v140 = v138;
    v141 = v4;
    v142 = v139(v219);
    v144 = v143;
    if (v138)
    {
      swift_isUniquelyReferenced_nonNull_native();
      *&v218[0] = *v144;
      sub_1E3E8AFEC(v140, v206, v62);
      *v144 = *&v218[0];
    }

    else
    {
    }

    v142(v219, 0);

    v66 = v138;
    v4 = v141;
    goto LABEL_65;
  }

  result = [v4 vuiView];
  if (result)
  {
    v133 = result;
    v134 = [result vuiBackgroundColor];

    if (!v134)
    {
      v134 = *sub_1E3E6011C();
    }

    v135 = v134;
    goto LABEL_61;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E407F450(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3740AE8(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E407F49C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = sub_1E4207B34();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

double sub_1E407F528(void *a1)
{
  [a1 safeAreaInsets];
  [a1 vuiBounds];
  v3 = v2;
  v4 = OUTLINED_FUNCTION_6();
  v8 = v3 - sub_1E3952BE0(v4, v5, v6, v7);
  [a1 vuiBounds];
  v9 = OUTLINED_FUNCTION_6();
  sub_1E3952BD8(v9, v10, v11);
  return v8;
}

unint64_t sub_1E407F5BC()
{
  v1 = type metadata accessor for EntityLockupCollectionViewCell();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v1, 206);
  v2 = type metadata accessor for BrandLockupCell();
  swift_isUniquelyReferenced_nonNull_native();
  v3 = OUTLINED_FUNCTION_14_175();
  sub_1E407F9CC(v3, 198);
  OUTLINED_FUNCTION_6_224();
  v4 = type metadata accessor for OrdinalCardCell();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v4, 200);
  OUTLINED_FUNCTION_6_224();
  type metadata accessor for FlowcaseViewCell();
  OUTLINED_FUNCTION_7_229();
  v5 = OUTLINED_FUNCTION_0_332();
  sub_1E407F9CC(v5, 175);
  OUTLINED_FUNCTION_6_224();
  type metadata accessor for FeaturedCardCollectionViewCell();
  OUTLINED_FUNCTION_11_5();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v2, 173);
  OUTLINED_FUNCTION_6_224();
  type metadata accessor for LeagueStandingsCard();
  OUTLINED_FUNCTION_11_186();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v0, 244);
  OUTLINED_FUNCTION_6_224();
  type metadata accessor for ViewHostingCell();
  OUTLINED_FUNCTION_11_186();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v0, 199);
  OUTLINED_FUNCTION_6_224();
  type metadata accessor for OrdinalListCell();
  OUTLINED_FUNCTION_11_186();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v0, 201);
  if ((TVAppFeature.isEnabled.getter(17) & 1) == 0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v6 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v6, 174);
  }

  if (sub_1E39DFFC0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4C0);
    OUTLINED_FUNCTION_7_229();
    v7 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v7, 256);
  }

  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (!v9)
  {
    type metadata accessor for SyndicationCell();
    OUTLINED_FUNCTION_7_229();
    v10 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v10, 196);
  }

  if (TVAppFeature.isEnabled.getter(10))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A540);
    OUTLINED_FUNCTION_7_229();
    v11 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v11, 178);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E0);
    OUTLINED_FUNCTION_11_186();
    OUTLINED_FUNCTION_1_290();
    sub_1E407F9CC(v9, 179);
    OUTLINED_FUNCTION_13_184();
    OUTLINED_FUNCTION_1_290();
    sub_1E407F9CC(v9, 183);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4F0);
    OUTLINED_FUNCTION_7_229();
    v12 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v12, 189);
    OUTLINED_FUNCTION_13_184();
    v13 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v13, 214);
    OUTLINED_FUNCTION_13_184();
    OUTLINED_FUNCTION_1_290();
    sub_1E407F9CC(v9, 169);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4A0);
    OUTLINED_FUNCTION_11_186();
    OUTLINED_FUNCTION_1_290();
    sub_1E407F9CC(v9, 170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D540);
    OUTLINED_FUNCTION_11_186();
    OUTLINED_FUNCTION_1_290();
    sub_1E407F9CC(v9, 193);
    OUTLINED_FUNCTION_13_184();
    v14 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v14, 190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C960);
    OUTLINED_FUNCTION_7_229();
    v15 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v15, 171);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4B0);
    OUTLINED_FUNCTION_7_229();
    v16 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v16, 196);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A520);
    OUTLINED_FUNCTION_7_229();
    v17 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v17, 206);
  }

  type metadata accessor for MonogramLockupCell();
  OUTLINED_FUNCTION_7_229();
  v18 = OUTLINED_FUNCTION_0_332();
  sub_1E407F9CC(v18, 194);
  OUTLINED_FUNCTION_13_184();
  v19 = OUTLINED_FUNCTION_0_332();
  sub_1E407F9CC(v19, 215);
  if (TVAppFeature.isEnabled.getter(10))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D508);
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v4, 200);
  swift_isUniquelyReferenced_nonNull_native();
  v20 = OUTLINED_FUNCTION_14_175();
  result = sub_1E407F9CC(v20, 187);
  qword_1EE28CB70 = v22;
  return result;
}

unint64_t sub_1E407F9CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E3740AE8(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F258);
  result = sub_1E4207644();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1E3740AE8(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v9 = result;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_1E37519DC(v9, a2, a1, v13);
  }

  return result;
}

void sub_1E407FADC()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) vuiTraitCollection];
  v3 = *(v1 + 8);
  *(v1 + 8) = v2;
}

id sub_1E407FB28(uint64_t a1)
{
  v2 = *(a1 + 56);
  OUTLINED_FUNCTION_15_167();
  MaxY = CGRectGetMaxY(v15);
  v4 = *(a1 + 48);
  [v4 contentOffset];
  if (v5 >= -MaxY)
  {
    if (*(a1 + 64) > 0.0)
    {
      CGRectGetHeight(*a1);
    }

    OUTLINED_FUNCTION_15_167();
    OUTLINED_FUNCTION_9_10();
    [v4 contentOffset];
    v16.origin.x = OUTLINED_FUNCTION_24_0();
    *&v6 = CGRectOffset(v16, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_15_167();
  }

  v12 = CGRect.center.getter(v6, v7, v8, v9);

  return [v2 setVuiCenter_];
}

void sub_1E407FC9C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E407FCF8(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_statusBarView;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

void *sub_1E407FD7C()
{
  v1 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView;
  OUTLINED_FUNCTION_15_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E407FDBC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView;
  OUTLINED_FUNCTION_3_102();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0();
  v7 = *&v1[v5];
  if (v7)
  {
    v8 = v7;
    [v8 setVuiAutoresizingMask_];

    v9 = *&v1[v5];
  }

  else
  {
    v9 = 0;
  }

  [v1 vui:v9 addSubview:v4 oldView:?];
}

void (*sub_1E407FE74(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView;
  OUTLINED_FUNCTION_5_0();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E407FEF4;
}

void *sub_1E407FF0C()
{
  v1 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView;
  OUTLINED_FUNCTION_15_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E407FF4C(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView;
  OUTLINED_FUNCTION_3_102();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0();
  v7 = *&v1[v5];
  if (v7 && (v8 = v7, [v8 setVuiAutoresizingMask_], v8, (v9 = *&v1[v5]) != 0))
  {
    [v9 setVuiClipsToBounds_];
    v10 = *&v1[v5];
  }

  else
  {
    v10 = 0;
  }

  [v1 vui:v10 addSubview:v4 oldView:?];
}

void (*sub_1E408001C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView;
  OUTLINED_FUNCTION_5_0();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E408009C;
}

void sub_1E40800B4(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

uint64_t sub_1E4080134@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_animator;
  OUTLINED_FUNCTION_15_0();
  return sub_1E4080180(v1 + v3, a1);
}

uint64_t sub_1E4080180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E40801F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_animator;
  swift_beginAccess();
  sub_1E408025C(a1, v1 + v3);
  swift_endAccess();
  sub_1E40808A4();
  return sub_1E4080B6C(a1);
}

uint64_t sub_1E408025C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F280);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*sub_1E40802CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E4080330;
}

void sub_1E4080330(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E40808A4();
  }
}

double sub_1E4080364(char a1, CGFloat a2, double a3)
{
  OUTLINED_FUNCTION_7_19();
  v9 = (*(v8 + 128))();
  if (v9)
  {
    v10 = v9;
    [v9 frame];
    OUTLINED_FUNCTION_3();

    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = v3;
    v28.size.height = v4;
    CGRectGetHeight(v28);
  }

  OUTLINED_FUNCTION_7_19();
  v12 = *(v11 + 152);
  v13 = v12();
  if (v13)
  {
    v14 = v13;
    [v13 vui:a2 sizeThatFits:a3];
  }

  OUTLINED_FUNCTION_7_19();
  v16 = *(v15 + 176);
  v17 = v16();
  v27 = a2;
  if (v17)
  {
    v18 = v17;
    OUTLINED_FUNCTION_5_238();
    MaxY = CGRectGetMaxY(v29);
    [v18 vui:a2 sizeThatFits:a3];
    v21 = v20;
  }

  else
  {
    a2 = 0.0;
    v21 = 0.0;
    MaxY = 0.0;
  }

  OUTLINED_FUNCTION_5_238();
  CGRectGetHeight(v30);
  v31.origin.x = 0.0;
  v31.origin.y = MaxY;
  v31.size.width = a2;
  v31.size.height = v21;
  CGRectGetHeight(v31);
  if ((a1 & 1) == 0)
  {
    v22 = v12();
    OUTLINED_FUNCTION_5_238();
    [v23 v24];

    v25 = v16();
    [v25 setFrame_];
  }

  return v27;
}

void sub_1E40805E8(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F288);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  if (a2)
  {
    if (a1)
    {
      v10 = *(v3 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_trackingScrollView);
      if (v10)
      {
        v11 = v10;
        v12 = a1;
        [v3 frame];
        Height = CGRectGetHeight(v27);
        v14 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x98))();
        if (v14)
        {
          v15 = v14;
          [v14 frame];
          OUTLINED_FUNCTION_9_10();

          v28.origin.x = OUTLINED_FUNCTION_24_0();
          v16 = CGRectGetHeight(v28);
        }

        else
        {
          v16 = 0.0;
        }

        v17 = v16 - Height;
        [v11 contentOffset];
        v19 = v18;
        [v12 contentOffset];
        if (v17 > v19 || v17 > v20)
        {
          [v11 contentOffset];
          if (v17 < v22)
          {
            v22 = v17;
          }

          [v12 setContentOffset_];
        }
      }
    }
  }

  v23 = *(v3 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_trackingScrollView);
  *(v3 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_trackingScrollView) = a1;
  v24 = a1;

  if (a1)
  {
    swift_getKeyPath();
    sub_1E41FE2F4();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E4080C18();
    v25 = sub_1E4200844();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v25 = 0;
  }

  *(v3 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_scrollObserver) = v25;

  sub_1E40808A4();
}

void sub_1E40808A4()
{
  v5 = *&v0[OBJC_IVAR____TtC8VideosUI17PinningHeaderView_trackingScrollView];
  if (!v5)
  {
LABEL_18:
    OUTLINED_FUNCTION_12_168();
    return;
  }

  v47 = v5;
  [v47 contentSize];
  if (v6 > 0.0)
  {
    OUTLINED_FUNCTION_0_94();
    v8 = *(v7 + 128);
    v9 = v8();
    if (v9)
    {
      v10 = v9;
      [v9 frame];
      OUTLINED_FUNCTION_3();
    }

    else
    {
      v1 = 0;
      v2 = 0;
      v3 = 0;
      v4 = 0;
    }

    OUTLINED_FUNCTION_0_94();
    v14 = (*(v13 + 152))();
    if (v14 || (v14 = v8()) != 0)
    {
      v15 = v14;
      [v14 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v54.origin.x = v17;
      v54.origin.y = v19;
      v54.size.width = v21;
      v54.size.height = v23;
      MaxY = CGRectGetMaxY(v54);
    }

    else
    {
      MaxY = 0.0;
    }

    OUTLINED_FUNCTION_0_94();
    v26 = (*(v25 + 176))();
    if (v26)
    {
      v27 = v26;
      [v26 frame];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v46 = MaxY;
      v34 = v4;
      v35 = v3;
      v36 = v2;
      v37 = v1;
      v39 = v38;

      v55.origin.x = v29;
      v55.origin.y = v31;
      v55.size.width = v33;
      v55.size.height = v39;
      v1 = v37;
      v2 = v36;
      v3 = v35;
      v4 = v34;
      MaxY = v46;
      Height = CGRectGetHeight(v55);
    }

    else
    {
      Height = 0.0;
    }

    __src[0] = v1;
    __src[1] = v2;
    __src[2] = v3;
    __src[3] = v4;
    __src[4] = 0;
    *&__src[5] = MaxY;
    __src[6] = v47;
    __src[7] = v0;
    *&__src[8] = Height;
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_0_94();
    v42 = *(v41 + 200);
    v43 = v0;
    v42(v51);
    if (v51[3])
    {
      sub_1E327F454(v51, v48);
      sub_1E4080B6C(v51);
      v44 = v49;
      v45 = v50;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      (*(v45 + 8))(__dst, v44, v45);
      sub_1E4081098(__src);
      __swift_destroy_boxed_opaque_existential_1(v48);
    }

    else
    {
      sub_1E4081098(__src);
      sub_1E4080B6C(v51);
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_12_168();
}

uint64_t sub_1E4080B6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E4080BD4()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E40808A4();
  }
}

unint64_t sub_1E4080C18()
{
  result = qword_1EE23ADB8;
  if (!qword_1EE23ADB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23ADB8);
  }

  return result;
}

id sub_1E4080C7C(uint64_t a1, double a2, double a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for PinningHeaderView();
  result = objc_msgSendSuper2(&v9, sel_hitTest_withEvent_, a1, a2, a3);
  if (result)
  {
    v8 = result == v3;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {

    return 0;
  }

  return result;
}

id sub_1E4080D94()
{
  OUTLINED_FUNCTION_0_8();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView) = 0;
  OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI17PinningHeaderView_animator);
  v5 = OUTLINED_FUNCTION_14_176(&OBJC_IVAR____TtC8VideosUI17PinningHeaderView_trackingScrollView);
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E4080E44(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView] = 0;
  OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI17PinningHeaderView_animator);
  v5.receiver = v1;
  v5.super_class = OUTLINED_FUNCTION_14_176(&OBJC_IVAR____TtC8VideosUI17PinningHeaderView_trackingScrollView);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E4080F14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PinningHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4080FD4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1E4081014(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1E408110C()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 352))();
}

uint64_t sub_1E40811AC()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 360))();
}

void (*sub_1E4081248(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = sub_1E4081208();
  return sub_1E4081290;
}

id sub_1E40812D4(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = v3;
    a2(0);
    v9 = a3();
    v10 = *(v3 + v4);
    *(v8 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

void (*sub_1E4081358(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = sub_1E40812A0();
  return sub_1E40813A0;
}

uint64_t sub_1E40813E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedLibrarySidebarItems;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

uint64_t sub_1E408147C()
{
  v1 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_needsModeEvaluationOnDidAppear;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E40814B0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_needsModeEvaluationOnDidAppear;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E408153C()
{
  v1 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_isSidebarDisabled;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E4081570(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_isSidebarDisabled;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

BOOL sub_1E40815FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager);
  OUTLINED_FUNCTION_12_5();
  v2 += 86;
  v3 = *v2;
  if ((*v2)())
  {
    OUTLINED_FUNCTION_19_148();
    v5 = (*(v4 + 280))();
    v6 = sub_1E32AE9B0(v5);

    if (v6)
    {
      return 1;
    }
  }

  if (v3())
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_3();
  v9 = *((*(v8 + 632))() + 16);

  if (!v9)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_3();
  v11 = (*(v10 + 736))();
  sub_1E32AE9B0(v11);
  OUTLINED_FUNCTION_50();

  return v1 != 0;
}

uint64_t sub_1E4081764()
{
  v1 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedMode;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E4081798(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedMode;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E4081824()
{
  v1 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_viewIsVisible;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E4081858(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_viewIsVisible;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E40818E4()
{
  v1 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_userHasHiddenSidebar;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E4081918(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_userHasHiddenSidebar;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E40819D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootSplitViewController();
  return objc_msgSendSuper2(&v2, sel_preferredDisplayMode);
}

uint64_t sub_1E4081A60(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RootSplitViewController();
  objc_msgSendSuper2(&v4, sel_setPreferredDisplayMode_, a1);
  return sub_1E4081AA8();
}

uint64_t sub_1E4081AA8()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_3();
  v2 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & v3) + 0x198))();
  if (result)
  {
    result = [v0 preferredDisplayMode];
    if (result != 1)
    {
      sub_1E324FBDC();
      v5 = OUTLINED_FUNCTION_4_114();
      v6(v5);
      v7 = sub_1E41FFC94();
      v8 = sub_1E4206814();
      if (OUTLINED_FUNCTION_72_1(v8))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_48_5(&dword_1E323F000, v9, v10, "RootSplitViewController:: system overriding preferred display mode, clearing user sidebar hidden state");
        OUTLINED_FUNCTION_6_0();
      }

      v11 = OUTLINED_FUNCTION_74();
      v12(v11);
      OUTLINED_FUNCTION_36_3();
      return (*((*v2 & v13) + 0x1A0))(0);
    }
  }

  return result;
}

void *sub_1E4081C60()
{
  v1 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_presentedTipViewController;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E4081C9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_presentedTipViewController;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1E4081D30()
{
  v1 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_accountMessageViewController;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E4081D6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_accountMessageViewController;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E4081E00()
{
  v1 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_sidebarOpeningInProgress;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E4081E34(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_sidebarOpeningInProgress;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E4081EC0()
{
  v1 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_waitingForPresentationDismissal;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E4081EF4(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_waitingForPresentationDismissal;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void sub_1E4081F80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_rootControllerConfig;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 rootControllerConfig];

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager;
  type metadata accessor for RootSplitViewManager();
  *&v5[v1] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController____lazy_storage___sideBarController) = 0;
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_53_52(v6);
    v9 = v8;

    if (v9)
    {
      v10 = (v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_tvTitle);
      *v10 = v7;
      v10[1] = v9;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController____lazy_storage___splitTabBarController) = 0;
      v11 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_libraryManager;
      type metadata accessor for LibrarySideBarManager();
      *(v1 + v11) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedLibrarySidebarItems) = MEMORY[0x1E69E7CC0];
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_needsModeEvaluationOnDidAppear) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_isSidebarDisabled) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedMode) = 3;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_viewIsVisible) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_userHasHiddenSidebar) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_presentedTipViewController) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_accountMessageViewController) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_sidebarOpeningInProgress) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_waitingForPresentationDismissal) = 0;
      v12 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
      v13 = [v12 navigationBar];
      [v13 setHidden_];

      type metadata accessor for RootHostingViewController();
      v14 = v12;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_secondaryColumnHostingController) = sub_1E41191BC(v14);
      v48.receiver = v1;
      v48.super_class = type metadata accessor for RootSplitViewController();
      v15 = objc_msgSendSuper2(&v48, sel_initWithStyle_, 1);
      v16 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_15_94();
      v18 = *(v17 + 232);
      v19 = v15;
      v20 = v18();
      OUTLINED_FUNCTION_15_94();
      v22 = *(v21 + 152);
      v23 = v19;
      v22(v15, &off_1F5D94850);

      v24 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager;
      v25 = *&v23[OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager];
      OUTLINED_FUNCTION_4_0();
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_26_3();
      v28 = *((*v16 & v27) + 0x1A8);
      v29 = v25;

      v28(sub_1E4086940, v26);

      v30 = *&v23[v24];
      v31 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_libraryManager;
      v32 = *&v23[OBJC_IVAR____TtC8VideosUI23RootSplitViewController_libraryManager];
      v33 = *((*v16 & *v30) + 0x300);
      v34 = v30;
      v35 = v32;
      v33(v32);

      v36 = *&v23[v31];
      OUTLINED_FUNCTION_21();
      v38 = *(v37 + 248);
      v39 = v23;
      v40 = v36;
      v38(v15, &off_1F5D8F8A0);

      v41 = v39;
      (*((*v16 & *v39) + 0x100))();
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_15_94();
      v43 = *(v42 + 120);
      v44 = v39;
      v43(v15, &off_1F5D8F888);

      [v44 setPreferredDisplayMode_];
      [v44 setDisplayModeButtonVisibility_];
      sub_1E40824F8();
      [v44 setDelegate_];
      v45 = objc_opt_self();
      v46 = [v45 defaultCenter];
      [v46 addObserver:v44 selector:sel_willEnterForeground_ name:*MEMORY[0x1E69DF7E8] object:0];

      v47 = [v45 defaultCenter];
      [v47 addObserver:v44 selector:sel_didEnterBackground_ name:*MEMORY[0x1E69DF7E0] object:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1E40824F8()
{
  v1 = [v0 viewControllers];
  sub_1E38DA110();
  OUTLINED_FUNCTION_19_3();
  v2 = sub_1E42062B4();

  v3 = sub_1E32AE9B0(v2);

  if (!v3)
  {
    v5 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    v7 = (*(v6 + 232))();
    [v0 setViewController:v7 forColumn:0];

    OUTLINED_FUNCTION_26_3();
    v9 = (*((*v5 & v8) + 0x100))();
    [v0 setViewController:v9 forColumn:3];

    v10 = *&v0[OBJC_IVAR____TtC8VideosUI23RootSplitViewController_secondaryColumnHostingController];

    return [v0 setViewController:v10 forColumn:2];
  }

  return result;
}

void sub_1E408266C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_rootControllerConfig;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 rootControllerConfig];

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager;
  type metadata accessor for RootSplitViewManager();
  *(v1 + v5) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController____lazy_storage___sideBarController) = 0;
  v6 = [objc_opt_self() sharedInstance];
  if (!v6)
  {
    __break(1u);
  }

  v7 = v6;
  v8 = sub_1E3741090(22100, 0xE200000000000000, v6);
  v10 = v9;

  if (!v10)
  {
    __break(1u);
  }

  v11 = (v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_tvTitle);
  *v11 = v8;
  v11[1] = v10;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController____lazy_storage___splitTabBarController) = 0;
  v12 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_libraryManager;
  type metadata accessor for LibrarySideBarManager();
  *(v1 + v12) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedLibrarySidebarItems) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_needsModeEvaluationOnDidAppear) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_isSidebarDisabled) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedMode) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_viewIsVisible) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_userHasHiddenSidebar) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_presentedTipViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_accountMessageViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_sidebarOpeningInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_waitingForPresentationDismissal) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E4082870(char a1)
{
  v2 = v1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for RootSplitViewController();
  objc_msgSendSuper2(&v21, sel_viewDidAppear_, a1 & 1);
  v4 = *(v2 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager);
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_19_148();
  v7 = (*(v6 + 440))();
  sub_1E374E8E4(v7, 0);
  OUTLINED_FUNCTION_19_148();
  if (v9)
  {
    v10 = (*(v8 + 352))();
    if ([v2 isCollapsed])
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v12 = *v5;
    if (v10)
    {
      (*((v12 & *v4) + 0x1C0))(v11);
    }

    else
    {
      (*((v12 & *v2) + 0x170))(v11);
    }
  }

  else if ((*(v8 + 304))())
  {
    OUTLINED_FUNCTION_3_3();
    if ((*(v13 + 352))())
    {
      [v2 isCollapsed];
      OUTLINED_FUNCTION_67_1();
      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      (*((*v5 & v14) + 0x1C0))(v16);
    }

    OUTLINED_FUNCTION_3_3();
    (*(v17 + 312))(0);
  }

  OUTLINED_FUNCTION_3_3();
  (*(v18 + 392))(1);
  OUTLINED_FUNCTION_36_3();
  (*((*v5 & v19) + 0x100))();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_19_148();
  (*(v20 + 144))(0);
}

void sub_1E4082BB4(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RootSplitViewController();
  objc_msgSendSuper2(&v7, sel_viewWillDisappear_, a1 & 1);
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v4) + 0x188))(0);
  OUTLINED_FUNCTION_26_3();
  (*((*v3 & v5) + 0x100))();
  OUTLINED_FUNCTION_71();
  (*((*v3 & v6) + 0x90))(1);
}

void sub_1E4082CF8()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_5();
  v2 = *(v1 + 928);
  v3 = v2();
  if (v3)
  {

    sub_1E324FBDC();
    v4 = OUTLINED_FUNCTION_4_114();
    v5(v4);
    v6 = sub_1E41FFC94();
    v7 = sub_1E4206814();
    if (OUTLINED_FUNCTION_72_1(v7))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_48_5(&dword_1E323F000, v8, v9, "RootSplitViewController:: account message: foregrounding, re-fetching message");
      OUTLINED_FUNCTION_6_0();
    }

    v10 = OUTLINED_FUNCTION_74();
    v3 = v11(v10);
  }

  v12 = (v2)(v3);
  if (v12)
  {
    (*(*v12 + 1000))(v12);
  }

  OUTLINED_FUNCTION_24_1();
  (*(v13 + 1128))();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4082EEC()
{
  OUTLINED_FUNCTION_120_1();
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v1 + 1136))();
  OUTLINED_FUNCTION_26_3();
  return (*((*v0 & v2) + 0x498))();
}

uint64_t sub_1E4082F9C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FDEE4();
  v13 = a1;
  a4();

  return (*(v8 + 8))(v12, v6);
}

id sub_1E4083074()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for RootSplitViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E4083278()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  HIDWORD(v166) = v2;
  v168 = v3;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A0);
  OUTLINED_FUNCTION_0_10();
  v163 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v170 = &v157 - v6;
  i = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  k = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v162 = &v157 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v157 - v17;
  v19 = *&v0[OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager];
  v20 = MEMORY[0x1E69E7D40];
  v21 = *((*MEMORY[0x1E69E7D40] & *&v19->Flags) + 0x1B8);
  v22 = v21(v16);
  if (sub_1E374E8E4(v22, 2))
  {
    v167 = v9;
    v159 = v18;
    v171 = v0;
    v23 = (*v20 & *&v19->Flags) + 632;
    v24 = v19;
    v165 = *((*v20 & *&v19->Flags) + 0x278);
    v164 = v23;
    v25 = v165();
    v26 = 0;
    v27 = *(v25 + 16);
    v28 = (v25 + 32);
    v161 = i;
    while (v27 != v26)
    {
      if (v26 >= *(v25 + 16))
      {
        goto LABEL_86;
      }

      sub_1E327F454(v28, &v173);
      __swift_project_boxed_opaque_existential_1(&v173, v175);
      v29 = OUTLINED_FUNCTION_2_253();
      v31 = v30(v29);
      v1 = v32;
      v33 = sub_1E396B0E4();
      if (v31 == *v33 && v1 == v33[1])
      {

LABEL_16:

        sub_1E3251BE8(&v173, &v176);
        sub_1E3251BE8(&v176, &v178);
        v160 = type metadata accessor for LibrarySidebarItem();
        OUTLINED_FUNCTION_34_77();
        v59 = OUTLINED_FUNCTION_50();
        v158 = v60(v59);
        v157 = v61;
        OUTLINED_FUNCTION_34_77();
        v62 = OUTLINED_FUNCTION_2_253();
        i = v63(v62);
        v65 = v64;
        v66 = v180;
        OUTLINED_FUNCTION_34_77();
        v67 = OUTLINED_FUNCTION_50();
        v69 = v68(v67, v66);
        v70 = v179;
        v71 = v180;
        __swift_project_boxed_opaque_existential_1(&v178, v179);
        (v71[12])(v70, v71);
        OUTLINED_FUNCTION_43_69();
        v46 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & v72) + 0x118))();
        k = j__OUTLINED_FUNCTION_18();
        v73 = j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_195_3();
        BYTE3(v158) = v70 & 1;
        BYTE2(v158) = v73 & 1;
        BYTE1(v158) = v69 & 1;
        LOBYTE(v158) = 1;
        OUTLINED_FUNCTION_40_73(v158, 0, i, v65, v74, k & 1, v75, v76, 0, 1, v69 & 1, v73 & 1, v70 & 1, SBYTE4(v158), v159);
        v25 = v77;
        __swift_destroy_boxed_opaque_existential_1(&v178);
LABEL_17:
        OUTLINED_FUNCTION_5_239();
        (*(v78 + 480))(0);
        v1 = *(v9 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_libraryManager);
        v79 = *((*v46 & *v25) + 0x1C8);
        v80 = v1;
        v79(v1, &off_1F5D8BA78);

        v24 = v19;
        if ((*((*v46 & *&v19->Flags) + 0x2B0))())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F340);
          v81 = swift_allocObject();
          *(v81 + 16) = xmmword_1E4297BE0;
          *(v81 + 56) = type metadata accessor for LibrarySidebarItem();
          *(v81 + 64) = &off_1EE277438;
          *(v81 + 32) = v25;
          v82 = *((*v46 & *&v19->Flags) + 0x280);
          v83 = v25;
          v82(v81);
          goto LABEL_44;
        }

        v84 = v25;
        OUTLINED_FUNCTION_32_92();
        v25 = v85();
        v28 = 0;
        k = *(v25 + 16);
        for (i = v25 + 32; ; i += 40)
        {
          if (k == v28)
          {

            v25 = v84;
            goto LABEL_44;
          }

          if (v28 >= *(v25 + 16))
          {
            goto LABEL_87;
          }

          sub_1E327F454(i, &v178);
          OUTLINED_FUNCTION_34_77();
          v86 = OUTLINED_FUNCTION_2_253();
          v24 = v87(v86);
          v1 = v88;
          v89 = sub_1E396B0E4();
          if (v24 == *v89 && v1 == v89[1])
          {

            __swift_destroy_boxed_opaque_existential_1(&v178);
          }

          else
          {
            v91 = v89;
            v24 = sub_1E42079A4();

            __swift_destroy_boxed_opaque_existential_1(&v178);
            if ((v24 & 1) == 0)
            {

              OUTLINED_FUNCTION_32_92();
              v25 = v92();
              i = 0;
              v28 = *(v25 + 16);
              k = 32;
              while (v28 != i)
              {
                if (i >= *(v25 + 16))
                {
                  goto LABEL_88;
                }

                sub_1E327F454(v25 + k, &v178);
                OUTLINED_FUNCTION_34_77();
                v93 = OUTLINED_FUNCTION_2_253();
                v95 = v94(v93);
                v1 = v96;
                if (v95 == *v91 && v96 == v91[1])
                {

                  __swift_destroy_boxed_opaque_existential_1(&v178);
LABEL_41:

                  v179 = type metadata accessor for LibrarySidebarItem();
                  v180 = &off_1EE277438;
                  v25 = v84;
                  *&v178 = v84;
                  v105 = *((*MEMORY[0x1E69E7D40] & *&v19->Flags) + 0x288);
                  v106 = v84;
                  v1 = v105(&v176);
                  v28 = v107;
                  v24 = *v107;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *v28 = v24;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    goto LABEL_90;
                  }

                  goto LABEL_42;
                }

                v24 = sub_1E42079A4();

                __swift_destroy_boxed_opaque_existential_1(&v178);
                if (v24)
                {
                  goto LABEL_41;
                }

                ++i;
                k += 40;
              }

              OUTLINED_FUNCTION_15_94();
              v99 = *(v98 + 648);
              v25 = v84;
              v100 = v84;
              v101 = v99(&v178);
              v103 = v102;
              sub_1E3E2422C();
              v104 = *(*v103 + 16);
              sub_1E3E24278(v104);
              sub_1E3E2587C(v104, v100, v103);
              v101(&v178, 0);
LABEL_44:
              while (2)
              {
                v172 = v168;
                OUTLINED_FUNCTION_5_239();
                v1 = *(v109 + 376);

                v160 = v25;
                v24 = v25;
                v25 = (v1)(v110);
                v111 = sub_1E32AE9B0(v25);
                if (v111)
                {
                  v28 = v111;
                  if (v111 >= 1)
                  {
                    for (j = 0; j != v28; j = (j + 1))
                    {
                      if ((v25 & 0xC000000000000001) != 0)
                      {
                        v113 = MEMORY[0x1E6911E60](j, v25);
                      }

                      else
                      {
                        v113 = *(v25 + 8 * j + 32);
                      }

                      v114 = v113;
                      if (v172)
                      {
                        v115 = *&v113[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
                        v116 = *&v113[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];

                        sub_1E397B708(v115, v116);
                      }

                      else
                      {
                      }
                    }

                    goto LABEL_54;
                  }
                }

                else
                {
LABEL_54:

                  v118 = v165;
                  v119 = *((v165)(v117) + 16);

                  if (v119)
                  {
                    v120 = v171;
                    v121 = MEMORY[0x1E69E7D40];
                    OUTLINED_FUNCTION_27_29();
                    v123 = (*(v122 + 232))();
                    v118();
                    OUTLINED_FUNCTION_36_3();
                    (*((*v121 & v124) + 0x160))();

                    v126 = (*((*v121 & *v120) + 0x1C8))(v125);
                    v127 = v161;
                    v128 = v167;
                    if (v126)
                    {
                      v129 = v126;
                      v130 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
                      OUTLINED_FUNCTION_5_0();
                      LOBYTE(v130) = v129[v130];

                      if ((v130 & 1) == 0)
                      {
                        sub_1E324FBDC();
                        OUTLINED_FUNCTION_66_4();
                        v131(v159);
                        v132 = sub_1E41FFC94();
                        v133 = sub_1E4206814();
                        if (os_log_type_enabled(v132, v133))
                        {
                          v134 = OUTLINED_FUNCTION_125_0();
                          *v134 = 0;
                          _os_log_impl(&dword_1E323F000, v132, v133, "RootSplitViewController:: account message: attempting to present from sideBar mode transition", v134, 2u);
                          OUTLINED_FUNCTION_6_0();
                        }

                        (*(v128 + 8))(v159, v127);
                      }
                    }

                    v135 = OUTLINED_FUNCTION_18();
                    sub_1E3F7DFAC(0, v135 & 1, v136, v137, v138, v139, v140, v141, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
                  }

                  else
                  {
                    sub_1E324FBDC();
                    v142 = v167;
                    OUTLINED_FUNCTION_66_4();
                    v143 = v162;
                    v144 = v161;
                    v145(v162);
                    v146 = sub_1E41FFC94();
                    v147 = sub_1E4206814();
                    v148 = os_log_type_enabled(v146, v147);
                    v121 = MEMORY[0x1E69E7D40];
                    if (v148)
                    {
                      v149 = OUTLINED_FUNCTION_125_0();
                      *v149 = 0;
                      _os_log_impl(&dword_1E323F000, v146, v147, "RootSplitViewController:: can't update sidebar because no sections", v149, 2u);
                      OUTLINED_FUNCTION_6_0();
                    }

                    (*(v142 + 8))(v143, v144);
                  }

                  v167 = v172;
                  sub_1E4084434();
                  sub_1E3F76DEC();
                  *&v176 = (*((*v121 & *&v19->Flags) + 0x290))();
                  *(&v176 + 1) = v150;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
                  sub_1E40869E4();
                  sub_1E4206194();
                  v151 = sub_1E38DA110();
                  v19 = &protocol descriptor for TemplateReparentable;
                  v168 = v151;
                  while (1)
                  {
                    *&v173 = MEMORY[0x1E69E6158];
                    *(&v173 + 1) = v151;
                    v174 = MEMORY[0x1E69E6168];
                    swift_getOpaqueTypeConformance2();
                    v24 = v170;
                    sub_1E4207174();
                    v25 = *(&v176 + 1);
                    if (!*(&v176 + 1))
                    {
                      (*(v163 + 8))(v170, v169);

                      goto LABEL_83;
                    }

                    v152 = v177;
                    objc_opt_self();
                    OUTLINED_FUNCTION_19_3();
                    v153 = swift_dynamicCastObjCClass();
                    if (v153)
                    {
                      break;
                    }

LABEL_80:
                  }

                  v171 = v152;
                  v1 = [v153 viewControllers];
                  swift_checkMetadataState();
                  OUTLINED_FUNCTION_19_3();
                  i = sub_1E42062B4();

                  if (i >> 62)
                  {
                    v28 = sub_1E4207384();
                  }

                  else
                  {
                    v28 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  for (k = 0; ; ++k)
                  {
                    if (v28 == k)
                    {

                      v151 = v168;
                      v152 = v171;
                      goto LABEL_80;
                    }

                    if ((i & 0xC000000000000001) != 0)
                    {
                      v154 = MEMORY[0x1E6911E60](k, i);
                    }

                    else
                    {
                      if (k >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_85;
                      }

                      v154 = *(i + 8 * k + 32);
                    }

                    v1 = v154;
                    if (__OFADD__(k, 1))
                    {
                      break;
                    }

                    swift_getObjectType();
                    v155 = OUTLINED_FUNCTION_19_3();
                    if (dynamic_cast_existential_1_conditional(v155))
                    {
                      OUTLINED_FUNCTION_145();
                      ObjectType = swift_getObjectType();
                      (*(v151 + 64))(0, ObjectType, v151);
                    }
                  }

                  __break(1u);
LABEL_85:
                  __break(1u);
LABEL_86:
                  __break(1u);
LABEL_87:
                  __break(1u);
LABEL_88:
                  __break(1u);
                }

                __break(1u);
LABEL_90:
                v24 = sub_1E3E25304(v24);
                *v28 = v24;
LABEL_42:
                if (i >= *(v24 + 16))
                {
                  __break(1u);
                  return;
                }

                __swift_destroy_boxed_opaque_existential_1(v24 + k);
                sub_1E3251BE8(&v178, v24 + k);
                (v1)(&v176, 0);
                continue;
              }
            }
          }

          v28 = (v28 + 1);
        }
      }

      v24 = sub_1E42079A4();

      if (v24)
      {
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_1(&v173);
      v28 += 5;
      ++v26;
    }

    v160 = type metadata accessor for LibrarySidebarItem();
    k = *(&v19->Name + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryTitle);
    v158 = *(&v19->Flags + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryTitle);

    v45 = sub_1E396B0E4();
    i = v45[1];
    v157 = *v45;
    v46 = MEMORY[0x1E69E7D40];
    v47 = (*MEMORY[0x1E69E7D40] & *&v19->Flags) + 688;
    v48 = *((*MEMORY[0x1E69E7D40] & *&v19->Flags) + 0x2B0);

    v50 = v48(v49);
    v51 = v50;
    v48(v50);
    OUTLINED_FUNCTION_43_69();
    (*((*v46 & v52) + 0x118))(v53);
    v54 = j__OUTLINED_FUNCTION_18();
    LOBYTE(v48) = j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_195_3();
    BYTE3(v158) = (v47 & 1) == 0;
    BYTE2(v158) = v48 & 1;
    BYTE1(v158) = (v51 & 1) == 0;
    LOBYTE(v158) = 1;
    OUTLINED_FUNCTION_40_73(v158, k, 0, i, v55, v54 & 1, v56, v57, 0, 1, SBYTE1(v158), v48 & 1, SBYTE3(v158), SBYTE4(v158), v159);
    v25 = v58;
    goto LABEL_17;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_66_4();
  v35(k);
  v36 = v0;
  v37 = sub_1E41FFC94();
  v38 = sub_1E4206814();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v167 = v9;
    v41 = v40;
    *&v178 = v40;
    *v39 = 136315138;
    LOBYTE(v176) = (v21)();
    sub_1E3E25614();
    v42 = sub_1E4207944();
    v44 = sub_1E3270FC8(v42, v43, &v178);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1E323F000, v37, v38, "RootSplitViewController:: commit changes for sidebar mode, but the current mode is %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v167 + 8))(k, i);
  }

  else
  {

    (*(v9 + 8))(k, i);
  }

LABEL_83:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4084434()
{
  OUTLINED_FUNCTION_120_1();
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v1 + 440))();
  OUTLINED_FUNCTION_26_3();
  (*((*v0 & v2) + 0x3F8))();

  sub_1E408450C();
}

void sub_1E408450C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *&v0[OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager];
  v84 = v8;
  (*((*MEMORY[0x1E69E7D40] & *v16) + 0x428))(&v86, v8);
  if (!v87)
  {
    sub_1E325F748(&v86, &unk_1ECF2F1D0);
    v54 = sub_1E324FBDC();
    (*(v11 + 16))(v15, v54, v9);
    v55 = sub_1E41FFC94();
    v56 = sub_1E42067F4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 134218752;
      *(v57 + 4) = v84;
      *(v57 + 12) = 1024;
      *(v57 + 14) = v6 & 1;
      *(v57 + 18) = 1024;
      *(v57 + 20) = v4 & 1;
      *(v57 + 24) = 1024;
      *(v57 + 26) = v2 & 1;
      _os_log_impl(&dword_1E323F000, v55, v56, "RootSplitViewController::setSelectedIndex %ld invalid, userDriven %{BOOL}d, movingFocus %{BOOL}d, withAnimation %{BOOL}d", v57, 0x1Eu);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v11 + 8))(v15, v9);
    goto LABEL_24;
  }

  sub_1E3251BE8(&v86, v88);
  if ([v0 displayMode] == 3 && (v6 & 1) != 0)
  {
    [v0 hideColumn_];
  }

  v17 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_15_94();
  v18 += 61;
  v19 = *v18;
  v20 = (*v18)() != v8;
  if (((v21 | v6 ^ 1 | v20) & 1) == 0)
  {
    v19();
    OUTLINED_FUNCTION_5_239();
    (*(v58 + 520))();
    sub_1E4084F7C(v6 & 1);
LABEL_23:
    __swift_destroy_boxed_opaque_existential_1(v88);
LABEL_24:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v82 = v19;
  v83 = v6;
  v22 = v90;
  OUTLINED_FUNCTION_34_77();
  v23 = OUTLINED_FUNCTION_50();
  v25 = v24(v23, v22);
  v27 = v26;
  OUTLINED_FUNCTION_1_31();
  (*((*v17 & v28) + 0x290))();
  *&v86 = v25;
  *(&v86 + 1) = v27;
  sub_1E38DA110();
  sub_1E3CA4D00();

  v29 = v85;
  if (v85)
  {
    goto LABEL_7;
  }

  sub_1E327F454(v88, &v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
  type metadata accessor for RemoteBarItem();
  if (OUTLINED_FUNCTION_37_77())
  {
    OUTLINED_FUNCTION_36_73();
    v59 = v89;
    v60 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v61 = (*(v60 + 16))(v59, v60);
    v63 = v62;

    *&v86 = v61;
    *(&v86 + 1) = v63;
    OUTLINED_FUNCTION_35_79();
    v29 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x450))(v27, 1, 1, v86, *(&v86 + 1));
  }

  else
  {
    v29 = 0;
  }

  sub_1E327F454(v88, &v86);
  type metadata accessor for LibraryBarItem();
  if (OUTLINED_FUNCTION_37_77())
  {
    OUTLINED_FUNCTION_36_73();
    v66 = v29;
    v68 = *&v27[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
    v67 = *&v27[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];

    *&v86 = v68;
    *(&v86 + 1) = v67;
    OUTLINED_FUNCTION_35_79();
    v29 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x410))(v27, 0, 1, v86, *(&v86 + 1));
  }

  if (!v29 || (objc_opt_self(), (v69 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_7:
    OUTLINED_FUNCTION_5_239();
    (*(v30 + 464))();
    if (v29)
    {
      v31 = v29;
      v82();
      OUTLINED_FUNCTION_1_31();
      (*((*v17 & v32) + 0x208))();
      OUTLINED_FUNCTION_1_31();
      (*((*v17 & v33) + 0x1F0))(v84, 0);
      v34 = v83;
      if (v83)
      {
        type metadata accessor for VideosUI();
        v35 = v31;
        static VideosUI.notifyAppearingViewControllerOfTabSwitch(_:)(v29);
      }

      v36 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_16_89();
      v38 = (*(v37 + 440))();
      if (sub_1E374E8E4(v38, 2))
      {
        v39 = v90;
        OUTLINED_FUNCTION_34_77();
        v40 = OUTLINED_FUNCTION_50();
        v41(v40, v39);
        OUTLINED_FUNCTION_1_31();
        (*((*v36 & v42) + 0x478))();

        objc_opt_self();
        v43 = swift_dynamicCastObjCClass();
        if (v43)
        {
          v44 = v43;
          OUTLINED_FUNCTION_21();
          v46 = *(v45 + 152);
          v47 = v31;
          v46(v44);
          v34 = v83;
        }

        if ((v34 & 1) == 0)
        {
          v48 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_27_29();
          v50 = (*(v49 + 232))();
          v51 = v89;
          v52 = v90;
          __swift_project_boxed_opaque_existential_1(v88, v89);
          (*(v52 + 16))(v51, v52);
          OUTLINED_FUNCTION_36_3();
          v34 = v83;
          (*((*v48 & v53) + 0x170))();
        }
      }

      else
      {
        OUTLINED_FUNCTION_16_89();
        v65 = (*(v64 + 256))();
        [v65 setSelectedIndex_];
      }

      sub_1E4084F7C(v34 & 1);
    }

    goto LABEL_23;
  }

  v70 = [v69 viewControllers];
  v71 = sub_1E42062B4();

  v72 = sub_1E32AE9B0(v71);
  for (i = 0; ; ++i)
  {
    if (v72 == i)
    {

      v17 = MEMORY[0x1E69E7D40];
      goto LABEL_7;
    }

    if ((v71 & 0xC000000000000001) != 0)
    {
      v74 = MEMORY[0x1E6911E60](i, v71);
    }

    else
    {
      if (i >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v74 = *(v71 + 8 * i + 32);
    }

    v75 = v74;
    if (__OFADD__(i, 1))
    {
      break;
    }

    swift_getObjectType();
    v76 = OUTLINED_FUNCTION_19_3();
    if (dynamic_cast_existential_1_conditional(v76))
    {
      v78 = v77;
      ObjectType = swift_getObjectType();
      v80 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x1B8))();
      v81 = sub_1E374E8E4(v80, 1);
      (*(v78 + 64))(v81, ObjectType, v78);
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1E4084F7C(char a1)
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_85();
  result = (*(v3 + 488))();
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_85();
    (*(v6 + 1064))(&v20);
    if (!v21)
    {
      return sub_1E325F748(&v20, &unk_1ECF2F1D0);
    }

    sub_1E3251BE8(&v20, v22);
    v7 = v23;
    v8 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    OUTLINED_FUNCTION_66_4();
    v10 = v9(v7, v8);
    v12 = v11;
    OUTLINED_FUNCTION_67_1();
    v14 = (*((*v2 & v13) + 0x218))();
    if (v15)
    {
      if (v14 == v10 && v15 == v12)
      {
      }

      else
      {
        v17 = sub_1E42079A4();

        if ((v17 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      OUTLINED_FUNCTION_85();
      (*(v18 + 464))();
    }

    else
    {
    }

LABEL_14:
    OUTLINED_FUNCTION_85();
    (*(v19 + 1024))(a1 & 1);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return result;
}

uint64_t sub_1E40851B0()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 1000))();
}

void sub_1E40852C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E324FBDC();
  (*(v10 + 16))(v14, v15, v8);

  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(v7 + 16);

    _os_log_impl(&dword_1E323F000, v16, v17, "RootSplitViewController:: update with bar items count %ld", v18, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v19 = OUTLINED_FUNCTION_57();
  v20(v19);
  sub_1E40824F8();
  v21 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_27_29();
  v23 = *(v22 + 376);
  v24 = v3;
  v23(v3);
  OUTLINED_FUNCTION_67_1();
  (*((*v21 & v25) + 0x3F0))(v7, v5 & 1);
  OUTLINED_FUNCTION_67_1();
  v27 = (*((*v21 & v26) + 0x3A0))();
  if (v27)
  {
    v28 = *(*v27 + 880);
    v29 = swift_unknownObjectRetain();
    v28(v29, &off_1F5D8F8C0);
  }

  v30 = *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_libraryManager);
  OUTLINED_FUNCTION_27_29();
  v31 += 86;
  v32 = *v31;
  v33 = (*v31)();
  (*((*v21 & *v30) + 0x110))(v33 & 1);
  OUTLINED_FUNCTION_67_1();
  v35 = (*((*v21 & v34) + 0x1B8))();
  if (sub_1E374E8E4(v35, 1))
  {
    OUTLINED_FUNCTION_24_1();
    v37 = (*(v36 + 256))();
    v38 = [v37 tabBar];

    [v38 setHidden_];
  }

  sub_1E3F76770();
  sub_1E4083278();

  OUTLINED_FUNCTION_36_3();
  v40 = (*((*v21 & v39) + 0x168))();
  if (v40 != 3)
  {
    v41 = v40;
    OUTLINED_FUNCTION_24_1();
    if ((*(v42 + 352))())
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v43 + 384))())
      {
        OUTLINED_FUNCTION_27_29();
        (*(v44 + 448))(v41);
        OUTLINED_FUNCTION_36_3();
        (*((*v21 & v45) + 0x170))(3);
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E4085894()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  (*(v0 + 1032))();
  if ((v1 & 1) == 0)
  {

    sub_1E408450C();
  }
}

BOOL sub_1E4085A3C()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  (*(v0 + 1072))();
  return (v1 & 1) == 0;
}

uint64_t sub_1E4085AFC()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 656);

  v1(v2);
  sub_1E38DA110();
  sub_1E3CA4D00();

  return v4;
}

BOOL sub_1E4085C44()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 440))();

  return sub_1E374E8E4(v1, 1);
}

void sub_1E4085CF0()
{
  sub_1E38DA110();
  v1 = sub_1E42062A4();
  [v0 setViewControllers_];
}

uint64_t sub_1E4085D98()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 1048))() & 1;
}

void sub_1E4085E2C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_15_94();
  v21 = (*(v11 + 440))();
  v20 = 2;
  sub_1E397C3E4();
  if (sub_1E4205E84())
  {
    OUTLINED_FUNCTION_5_239();
    (*(v12 + 1072))(v3, v1);
    if (v13)
    {
      v14 = sub_1E324FBDC();
      (*(v6 + 16))(v10, v14, v4);

      v15 = sub_1E41FFC94();
      v16 = sub_1E42067F4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_1E3270FC8(v3, v1, &v19);
        _os_log_impl(&dword_1E323F000, v15, v16, "RootSplitViewController: could not find index for %s from side bar selection", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v10, v4);
    }

    else
    {
      sub_1E408450C();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4086098()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 1152))();
}

uint64_t sub_1E40860F4(uint64_t a1, uint64_t a2)
{
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  return (*(v4 + 1168))(a1, a2, v5 & 1);
}

void sub_1E4086180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 432))();
  if (v6)
  {

    OUTLINED_FUNCTION_4_0();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a2;
    aBlock[4] = sub_1E4086A48;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    aBlock[3] = &block_descriptor_161;
    v9 = _Block_copy(aBlock);

    [v3 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }

  else if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2 && (OUTLINED_FUNCTION_16_89(), LOBYTE(aBlock[0]) = (*(v10 + 440))(), v15 = 1, sub_1E397C3E4(), (sub_1E4205E84() & 1) == 0))
  {
    sub_1E3F7D644(a2);
    OUTLINED_FUNCTION_16_89();
    (*(v13 + 1160))();
  }

  else
  {
    OUTLINED_FUNCTION_12_5();
    LOBYTE(aBlock[0]) = (*(v11 + 440))();
    v15 = 1;
    sub_1E397C3E4();
    if ((sub_1E4205E84() & 1) == 0)
    {
      OUTLINED_FUNCTION_12_5();
      (*(v12 + 1176))();
    }
  }
}

void sub_1E408648C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v4 vuiView];
  if (!v14)
  {
    __break(1u);
    goto LABEL_36;
  }

  v15 = v14;
  v16 = [v14 window];

  if (!v16)
  {
    return;
  }

  v17 = [v16 windowScene];

  if (!v17)
  {
    return;
  }

  v18 = [v17 interfaceOrientation];

  if (!UIDeviceOrientationIsLandscape(v18))
  {
    return;
  }

  v19 = [objc_opt_self() mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;

  v24 = [v4 vuiView];
  if (!v24)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;

  if (v21 == v27 && v23 == v29)
  {
    v31 = a3 == 1 && a2 == 2;
    v32 = v31;
    v33 = MEMORY[0x1E69E7D40];
    if (v31)
    {
      OUTLINED_FUNCTION_12_5();
      if ((*(v34 + 408))())
      {
        return;
      }

      sub_1E324FBDC();
      v35 = OUTLINED_FUNCTION_4_114();
      v36(v35);
      v37 = sub_1E41FFC94();
      v38 = sub_1E4206814();
      if (!OUTLINED_FUNCTION_72_1(v38))
      {
        v32 = 1;
        v40 = 1;
        goto LABEL_33;
      }

      v39 = OUTLINED_FUNCTION_125_0();
      *v39 = 0;
      _os_log_impl(&dword_1E323F000, v37, v12, "RootSplitViewController:: user elected to hide sidebar in landscape orientation", v39, 2u);
      v40 = 1;
    }

    else
    {
      if (a3 != 2 || a2 != 1)
      {
        return;
      }

      OUTLINED_FUNCTION_12_5();
      if (((*(v42 + 408))() & 1) == 0)
      {
        return;
      }

      v43 = sub_1E324FBDC();
      (*(v9 + 16))(v12, v43, v7);
      v37 = sub_1E41FFC94();
      v44 = sub_1E4206814();
      if (!os_log_type_enabled(v37, v44))
      {
        v32 = 0;
        v40 = 0;
        goto LABEL_33;
      }

      v45 = OUTLINED_FUNCTION_125_0();
      *v45 = 0;
      _os_log_impl(&dword_1E323F000, v37, v44, "RootSplitViewController:: user elected to unhide sidebar in landscape orientation", v45, 2u);
      v40 = 0;
    }

    OUTLINED_FUNCTION_6_0();
    v33 = MEMORY[0x1E69E7D40];
LABEL_33:

    v46 = OUTLINED_FUNCTION_74();
    v47(v46);
    (*((*v33 & *v4) + 0x1A0))(v32);
    [v4 setPreferredDisplayMode_];
  }
}

void sub_1E4086940()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_21();
    (*(v2 + 440))();
    sub_1E3F788B0();
  }
}

unint64_t sub_1E40869E4()
{
  result = qword_1EE279310;
  if (!qword_1EE279310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE279310);
  }

  return result;
}

void sub_1E4086A48()
{
  Description = v0[1].Description;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_16_89();
    (*(v4 + 440))(0);
  }

  if ((Description & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    OUTLINED_FUNCTION_5_0();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5 || (v6 = v5, v7 = *(v5 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager), v6, OUTLINED_FUNCTION_67_1(), (*((*v3 & v8) + 0x1B8))(), v7, sub_1E397C3E4(), v0 = &type metadata for RootSplitViewManager.Mode, (sub_1E4205E84() & 1) == 0))
    {
      OUTLINED_FUNCTION_5_0();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = OUTLINED_FUNCTION_50();
        sub_1E3F7D644(v9);
      }
    }
  }
}

void type metadata accessor for DisplayMode()
{
  if (!qword_1ECF3F3D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF3F3D8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_53_52(void *a1)
{

  return sub_1E3741090(22100, 0xE200000000000000, a1);
}

uint64_t sub_1E4086C3C()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E4086CD8()
{
  *(v0 + 98) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E4086D20();

  return v1;
}

uint64_t sub_1E4086D20()
{
  sub_1E39537A8();
  v87[0] = v1;
  v87[1] = v2;
  v87[2] = v3;
  v87[3] = v4;
  v88 = 0;
  v5 = (*(*v0 + 560))(v87);
  v6 = *(*v0 + 1728);
  v7 = v6(v5);
  v8 = sub_1E3BE9944(v7, 2);
  (*(*v0 + 1752))();
  OUTLINED_FUNCTION_2_1();
  if (v8)
  {
    v10 = 15;
  }

  else
  {
    v10 = 3;
  }

  (*(v9 + 1696))(v10);

  OUTLINED_FUNCTION_9_2();
  v12 = *(v11 + 1752);
  v13 = v12();
  sub_1E3755B54();
  v14 = sub_1E4206F24();
  (*(*v13 + 680))(v14);

  (v12)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 2128))(0x3FE6666666666666, 0);

  (v12)(v17);
  OUTLINED_FUNCTION_2_1();
  v19 = 1;
  (*(v18 + 1984))(1);

  v21 = v6(v20);
  if (sub_1E3BE9944(v21, 2))
  {
    v19 = 2;
  }

  v12();
  OUTLINED_FUNCTION_2_1();
  (*(v22 + 2056))(v19, 0);

  (v12)(v23);
  OUTLINED_FUNCTION_2_1();
  (*(v24 + 2080))(v19, 0);

  (v12)(v25);
  OUTLINED_FUNCTION_2_1();
  (*(v26 + 2104))(0, 0);

  v27 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  v28 = [objc_opt_self() blackColor];
  v29 = [v28 colorWithAlphaComponent_];

  [v27 setShadowColor_];
  [v27 setShadowOffset_];
  (v12)([v27 setShadowBlurRadius_]);
  OUTLINED_FUNCTION_2_1();
  v31 = *(v30 + 608);
  v32 = v27;
  v31(v27);

  OUTLINED_FUNCTION_9_2();
  v34 = *(v33 + 1776);
  v34();
  OUTLINED_FUNCTION_2_1();
  (*(v35 + 1696))(22);

  v37 = (v34)(v36);
  v38 = *sub_1E3E60364();
  v39 = *(*v37 + 680);
  v40 = v38;
  v39(v38);

  v42 = (v34)(v41);
  v43 = sub_1E4205F14();
  v45 = v44;
  v46 = sub_1E4205F14();
  v48 = sub_1E376C12C(v43, v45, v46, v47);
  (*(*v42 + 1888))(v48);

  (v34)(v49);
  OUTLINED_FUNCTION_2_1();
  (*(v50 + 2128))(0x3FE6666666666666, 0);

  (v34)(v51);
  OUTLINED_FUNCTION_2_1();
  (*(v52 + 1984))(1);

  (v34)(v53);
  OUTLINED_FUNCTION_2_1();
  (*(v54 + 2056))(1, 0);

  (v34)(v55);
  OUTLINED_FUNCTION_2_1();
  (*(v56 + 2080))(1, 0);

  (v34)(v57);
  OUTLINED_FUNCTION_2_1();
  (*(v58 + 2104))(0, 0);

  OUTLINED_FUNCTION_9_2();
  v60 = (*(v59 + 1800))();
  v89[0] = sub_1E3952C40();
  v89[1] = v61;
  v89[2] = v62;
  v89[3] = v63;
  v90 = 0;
  (*(*v60 + 184))(v89);

  v64 = objc_opt_self();
  v65 = [v64 blackColor];
  v66 = [v64 whiteColor];
  v67 = sub_1E3E5F2F8(v65, v66);

  OUTLINED_FUNCTION_9_2();
  v69 = *(v68 + 1824);
  v69();
  OUTLINED_FUNCTION_2_1();
  v71 = (*(v70 + 2048))();

  v72 = *(*v71 + 680);
  v73 = v67;
  v72(v67);

  (v69)(v74);
  OUTLINED_FUNCTION_2_1();
  v76 = (*(v75 + 2048))();

  (*(*v76 + 872))(v67);

  OUTLINED_FUNCTION_9_2();
  v78 = (*(v77 + 1752))();
  sub_1E3C37CBC(v78, 23);

  OUTLINED_FUNCTION_9_2();
  v80 = (*(v79 + 1776))();
  sub_1E3C37CBC(v80, 17);

  OUTLINED_FUNCTION_9_2();
  v82 = *(v81 + 1800);
  v83 = v82();
  sub_1E3C37CBC(v83, 59);

  v85 = (v82)(v84);
  sub_1E3C37CBC(v85, 65);
}

uint64_t sub_1E4087838(char a1)
{
  LOBYTE(v13[0]) = a1;
  (*(*v1 + 1728))();
  sub_1E3BEAB58();
  result = sub_1E4205E84();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    v1[98] = a1;
    memset(v13, 0, sizeof(v13));
    v14 = 1;
    (*(*v1 + 560))(v13);
    OUTLINED_FUNCTION_9_2();
    v5 = (*(v4 + 1752))();
    type metadata accessor for TextLayout();
    v6 = sub_1E383BCC0();
    (*(*v5 + 1648))(v6);

    OUTLINED_FUNCTION_9_2();
    v8 = (*(v7 + 1776))();
    v9 = sub_1E383BCC0();
    (*(*v8 + 1648))(v9);

    OUTLINED_FUNCTION_9_2();
    v11 = (*(v10 + 1800))();
    type metadata accessor for ButtonLayout();
    v12 = sub_1E3BBB724();
    (*(*v11 + 1648))(v12);

    return sub_1E4086D20();
  }

  return result;
}

uint64_t sub_1E4087B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_viewImpressioner;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E3D96570(v1 + v3, a1, &qword_1ECF2C970);
}

uint64_t sub_1E4087B90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_viewImpressioner;
  swift_beginAccess();
  sub_1E37C5630(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E4087C50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F4E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E3859230(194);
  *(inited + 40) = v1;
  *(inited + 48) = type metadata accessor for MonogramLockupCell();
  *(inited + 56) = sub_1E3859230(198);
  *(inited + 64) = v2;
  *(inited + 72) = type metadata accessor for BrandLockupCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4F0);
  result = sub_1E4205CB4();
  qword_1EE28B028 = result;
  return result;
}

void sub_1E4087D08()
{
  v1 = sub_1E4087E1C();
  [v1 setShouldSnapContent_];
}

uint64_t sub_1E4087D60()
{
  v1 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___cachedHeaderViews;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___cachedHeaderViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___cachedHeaderViews);
  }

  else
  {
    sub_1E41FE874();
    sub_1E3280A90(0, &qword_1EE23AE80);
    sub_1E408F7C0(&unk_1EE28A418);
    v2 = sub_1E4205CB4();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1E4087E1C()
{
  v1 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout);
  }

  else
  {
    v4 = [objc_allocWithZone(VUIShelfViewLayout) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

objc_super *sub_1E4087E90()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___groupCollectionContainerView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___groupCollectionContainerView);
  }

  else
  {
    v3 = v0;
    v54 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___groupCollectionContainerView;
    v4 = sub_1E4087E1C();
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_45_2();
    v6 = objc_allocWithZone(type metadata accessor for MultiGroupHorizontalCollectionController.MultiGroupContainerView());
    *&v6[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView] = 0;
    v7 = &v6[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_viewContentInsets];
    v8 = *(MEMORY[0x1E69DDCE0] + 16);
    *v7 = *MEMORY[0x1E69DDCE0];
    *(v7 + 1) = v8;
    *&v6[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView] = 0;
    *&v6[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView] = 0;
    *&v6[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_shelfLayout] = v4;
    v9 = &v6[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_invalidationHandler];
    *v9 = sub_1E4090014;
    v9[1] = v5;
    v10 = v4;

    v11 = OUTLINED_FUNCTION_1_36();
    v13 = [(objc_super *)v12 initWithFrame:v11];
    [(objc_super *)v13 setVuiClipsToBounds:0];

    type metadata accessor for BaseCollectionView();
    v14 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout;
    v15 = *(v3 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout);
    swift_getObjCClassFromMetadata();
    v16 = OUTLINED_FUNCTION_1_36();
    v53 = v13;
    v19 = [v17 v18];
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 setVuiClipsToBounds_];

    v20 = v19;
    [v20 setShowsVerticalScrollIndicator_];
    [v20 setScrollEnabled_];
    [v20 setShowsHorizontalScrollIndicator_];
    [v20 setPrefetchingEnabled_];
    [v20 setBouncesVertically_];
    OUTLINED_FUNCTION_29_100();
    v22 = *(v21 + 112);
    v23 = swift_unknownObjectRetain();
    v22(v23);
    OUTLINED_FUNCTION_29_100();
    v25 = *(v24 + 136);
    v26 = swift_unknownObjectRetain();
    v25(v26);
    [*(v3 + v14) setDelegate_];
    v27 = [objc_opt_self() clearColor];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_29_100();
    (*(v28 + 176))(v27, v29 & 1);

    [v20 setAlwaysBounceHorizontal_];
    if ([objc_opt_self() isPad])
    {
      [v20 _setVisibleRectEdgeInsets_];
    }

    if (_MergedGlobals_167 != -1)
    {
LABEL_19:
      OUTLINED_FUNCTION_14_177();
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v30 = qword_1EE28B028;
    v31 = 1 << *(qword_1EE28B028 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(qword_1EE28B028 + 64);
    v34 = (v31 + 63) >> 6;

    v35 = 0;
    if (v33)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v36 >= v34)
      {
        break;
      }

      v33 = *(v30 + 64 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        do
        {
LABEL_14:
          v33 &= v33 - 1;
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

          v38 = sub_1E4205ED4();

          [v20 vui:ObjCClassFromMetadata registerClass:v38 forCellWithReuseIdentifier:?];
        }

        while (v33);
        continue;
      }
    }

    v39 = sub_1E4205F14();
    v41 = v40;
    v42 = sub_1E3811878();
    v43 = *v42;
    v44 = v42[1];
    v45 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_supplementaryKindToReuseIdentifierMap;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v3 + v45);
    sub_1E38C5C90(v43, v44, v39, v41);
    *(v3 + v45) = v55;

    swift_endAccess();
    type metadata accessor for CollectionRichHeaderView();
    v46 = swift_getObjCClassFromMetadata();
    v47 = @"VUIShelfLayoutElementKindHeader";

    v48 = sub_1E4205ED4();

    [v20 vui:v46 registerClass:v47 forSupplementaryViewOfKind:v48 withReuseIdentifier:?];

    v49 = *(&v53->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
    *(&v53->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView) = v20;

    v50 = *(v3 + v54);
    *(v3 + v54) = v53;
    v2 = v53;

    v1 = 0;
  }

  v51 = v1;
  return v2;
}

void sub_1E4088424()
{
  v1 = sub_1E4087E90();
  [v0 setView_];
}

id sub_1E40884B4()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for MultiGroupHorizontalCollectionController();
  objc_msgSendSuper2(&v22, sel_vui_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() clearColor];
    [v3 setVuiBackgroundColor_];

    v5 = sub_1E4087E1C();
    [v5 setHeaderBottomMargin_];

    v6 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout;
    [*&v1[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout] setMinimumLineSpacing_];
    [*&v1[v6] setShouldSnapContent_];
    v7 = sub_1E4087E90();
    v8 = *(&v7->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
    v9 = v8;

    if (v8)
    {
      OUTLINED_FUNCTION_4_0();
      v10 = swift_allocObject();
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_2_4();
      v11 = swift_allocObject();
      *(v11 + 16) = sub_1E408F8E8;
      *(v11 + 24) = v10;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F510));
      v12 = v9;
      v13 = sub_1E4200084();
      v14 = *&v1[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource];
      *&v1[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource] = v13;
      v15 = v13;

      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_45_2();

      sub_1E4200094();
    }

    sub_1E4089C6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1E4297BE0;
    v17 = sub_1E41FFEA4();
    v18 = MEMORY[0x1E69DC0F8];
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_45_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0);
    sub_1E4206944();
    swift_unknownObjectRelease();

    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1E4297BE0;
    v20 = sub_1E42001D4();
    v21 = MEMORY[0x1E69DC2B0];
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_45_2();
    sub_1E4206944();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MultiGroupHorizontalCollectionController()
{
  result = qword_1EE290570;
  if (!qword_1EE290570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4088860(char a1, char a2, double a3, double a4)
{
  v5 = v4;
  if (a3 != 0.0 || a4 != 0.0)
  {
    v8 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastViewWidth;
    if (*&v4[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastViewWidth] != a3 || (a1 & 1) != 0)
    {
      type metadata accessor for LayoutGrid();
      sub_1E3A2579C(a3);
      v9 = [v4 vuiTraitCollection];
      OUTLINED_FUNCTION_8_21();
      v13 = v12;
      v14 = *&v4[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel];
      if (v14)
      {
        v15 = v10;
        v16 = v11;
        v17 = *(*v14 + 392);

        v17(v18);
        OUTLINED_FUNCTION_60_1();

        OUTLINED_FUNCTION_8();
        (*(v19 + 1640))(v15, v13, v16);
      }
    }

    if (*&v4[v8] != a3 || (a2 & 1) != 0)
    {
      *&v4[v8] = a3;
      v20 = &v4[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics];
      *v20 = 0u;
      *(v20 + 1) = 0u;
      *(v20 + 2) = 0u;
      *(v20 + 3) = 0u;
      *(v20 + 4) = 0u;
      v20[80] = 1;
      v32 = sub_1E4087D60();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F500);
      sub_1E4205D14();
      *&v4[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___cachedHeaderViews] = v32;

      v21 = [objc_allocWithZone(VUIShelfViewLayoutInvalidationContext) init];
      v22 = sub_1E4087E90([v21 setInvalidateLayout_]);
      v23 = *&v22[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView];
      v24 = v23;

      if (v23)
      {
        v25 = [v24 collectionViewLayout];

        [v25 invalidateLayoutWithContext_];
      }

      v26 = sub_1E4087E1C();
      type metadata accessor for LayoutGrid();
      sub_1E3A25950(*&v5[v8]);
      [v26 setMinimumInteritemSpacing_];

      sub_1E3A258E4(*&v5[v8]);
      if (*(*&v5[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___groupCollectionContainerView] + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView))
      {
        OUTLINED_FUNCTION_3();
        v28 = v27;
        v29 = OUTLINED_FUNCTION_6();
        [v30 v31];
      }
    }
  }
}

void sub_1E4088B8C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v15 = sub_1E4087E1C();
  v16 = [v15 indexPathForSnappedContent];

  if (v16)
  {
    sub_1E41FE804();

    v17 = sub_1E41FE874();
    v18 = 0;
  }

  else
  {
    v17 = sub_1E41FE874();
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v18, 1, v17);
  sub_1E3898A70(v11, v14);
  OUTLINED_FUNCTION_4_0();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = OUTLINED_FUNCTION_34();
  sub_1E3D96570(v20, v21, &qword_1ECF309A0);
  v22 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  sub_1E3898A70(v8, v23 + v22);
  v25[4] = sub_1E4089D88;
  v25[5] = v23;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1E37C7850;
  v25[3] = &block_descriptor_162;
  v24 = _Block_copy(v25);

  [v1 animateAlongsideTransition:v24 completion:0];
  _Block_release(v24);
  sub_1E325F7FC(v14, &qword_1ECF309A0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4088DFC()
{
  OUTLINED_FUNCTION_31_1();
  v45 = v0;
  v1 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v43 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F508);
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  v12 = OUTLINED_FUNCTION_8_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_15;
  }

  v24 = Strong;
  v42 = v14;
  v25 = sub_1E4087E1C();
  v26 = [v25 indexPathForSnappedContent];

  if (v26)
  {
    sub_1E41FE804();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v27, 1, v1);
  v28 = *(v7 + 48);
  sub_1E3D96570(v45, v10, &qword_1ECF309A0);
  sub_1E3D96570(v22, &v10[v28], &qword_1ECF309A0);
  OUTLINED_FUNCTION_11_150(v10);
  if (v29)
  {
    sub_1E325F7FC(v22, &qword_1ECF309A0);
    OUTLINED_FUNCTION_11_150(&v10[v28]);
    if (v29)
    {

      sub_1E325F7FC(v10, &qword_1ECF309A0);
LABEL_15:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    goto LABEL_13;
  }

  sub_1E3D96570(v10, v19, &qword_1ECF309A0);
  OUTLINED_FUNCTION_11_150(&v10[v28]);
  if (v29)
  {
    sub_1E325F7FC(v22, &qword_1ECF309A0);
    (*(v43 + 8))(v19, v1);
LABEL_13:
    sub_1E325F7FC(v10, &qword_1ECF3F508);
    goto LABEL_14;
  }

  v37 = v43;
  (*(v43 + 32))(v6, &v10[v28], v1);
  OUTLINED_FUNCTION_8_199();
  sub_1E408F7C0(v38);
  v39 = sub_1E4205E84();
  v40 = *(v37 + 8);
  v40(v6, v1);
  sub_1E325F7FC(v22, &qword_1ECF309A0);
  v40(v19, v1);
  sub_1E325F7FC(v10, &qword_1ECF309A0);
  if (v39)
  {

    goto LABEL_15;
  }

LABEL_14:
  v30 = objc_opt_self();
  v31 = v44;
  sub_1E3D96570(v45, v44, &qword_1ECF309A0);
  v32 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v24;
  sub_1E3898A70(v31, v33 + v32);
  OUTLINED_FUNCTION_2_4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E408F888;
  *(v34 + 24) = v33;
  v46[4] = sub_1E379E500;
  v46[5] = v34;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 1107296256;
  v46[2] = sub_1E3839B50;
  v46[3] = &block_descriptor_84_4;
  v35 = _Block_copy(v46);
  v36 = v24;

  [v30 performWithoutAnimation_];

  _Block_release(v35);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if ((v30 & 1) == 0)
  {
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1E408933C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = sub_1E4087E1C();
  sub_1E3D96570(a2, v6, &qword_1ECF309A0);
  v8 = sub_1E41FE874();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1E41FE7E4();
    OUTLINED_FUNCTION_37_1();
    v10 = OUTLINED_FUNCTION_34();
    v11(v10);
  }

  [v7 snapContentToIndexPath_];
}

id sub_1E40894BC()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_viewImpressioner;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  type metadata accessor for ContextMenuInteractor();
  v2 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  OUTLINED_FUNCTION_1_291(v2);
  v3 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastFocusedIndexPath;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_61_29(v4);
  *(v0 + v3) = sub_1E4205CB4();
  *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_datasourceLoaded) = 0;
  type metadata accessor for MultiGroupHorizontalCollectionController();
  OUTLINED_FUNCTION_25();
  return objc_msgSendSuper2(v5, v6);
}

void sub_1E40895AC()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_viewImpressioner;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  type metadata accessor for ContextMenuInteractor();
  v2 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  OUTLINED_FUNCTION_1_291(v2);
  v3 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastFocusedIndexPath;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_61_29(v4);
  *(v0 + v3) = sub_1E4205CB4();
  *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_datasourceLoaded) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E40896CC()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_viewImpressioner;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  type metadata accessor for ContextMenuInteractor();
  v2 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  OUTLINED_FUNCTION_1_291(v2);
  v3 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastFocusedIndexPath;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_61_29(v4);
  *(v0 + v3) = sub_1E4205CB4();
  *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_datasourceLoaded) = 0;
  OUTLINED_FUNCTION_23_103();
  __break(1u);
}

uint64_t sub_1E40897C0(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F3E8);
  v6 = sub_1E4148C68(sub_1E4089BA8, v5, v32);
  v7 = v32[0];
  v8 = (*(*a1 + 1040))(v6);
  if (!v8)
  {
    return v7;
  }

  sub_1E32AE9B0(v8);
  OUTLINED_FUNCTION_11_5();

  if (!v2)
  {
    return v7;
  }

  *&v7[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel] = a1;

  v9 = [v7 view];
  v10 = OUTLINED_FUNCTION_6_12();
  sub_1E4088860(1, 0, v10, v11);
  LOBYTE(v31) = 13;
  (*(*a1 + 776))(v32, &v31, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v32[3])
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v12 = sub_1E3F36DEC();
    if (v12 == 6)
    {
      type metadata accessor for InsettedSeparatorDecorationView();
    }

    else
    {
      if (v12 != 1)
      {
        goto LABEL_11;
      }

      type metadata accessor for GradientBackgroundDecorationView();
    }

    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = [v13 init];
    OUTLINED_FUNCTION_6_12();
    sub_1E4089BE4(v15);
  }

  else
  {
    sub_1E325F7FC(v32, &unk_1ECF296E0);
  }

LABEL_11:
  v16 = sub_1E4087E90();
  OUTLINED_FUNCTION_12_6();
  if ((*(v17 + 968))())
  {
LABEL_12:

    v18 = 0.0;
LABEL_13:
    v19 = *(MEMORY[0x1E69DDCE0] + 8);
    v20 = *(MEMORY[0x1E69DDCE0] + 24);
    v21 = 0;
    v22 = 0.0;
    if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
    {
      v21 = *sub_1E3C11B28();
      v22 = v18;
    }

    v23 = (v16 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_viewContentInsets);
    *v23 = v22;
    *(v23 + 1) = v19;
    *(v23 + 2) = v21;
    *(v23 + 3) = v20;

    return v7;
  }

  OUTLINED_FUNCTION_12_6();
  v26 = (*(v25 + 1040))();
  v18 = 24.0;
  if (!v26)
  {
    goto LABEL_13;
  }

  v27 = v26;
  result = sub_1E32AE9B0(v26);
  v28 = result;
  v29 = 0;
  while (1)
  {
    if (v28 == v29)
    {

      goto LABEL_13;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v29, v27);
    }

    else
    {
      if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      result = OUTLINED_FUNCTION_60_38();
    }

    if (__OFADD__(v29, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_8();
    (*(v30 + 904))();
    OUTLINED_FUNCTION_65_31();

    ++v29;
    if (v3)
    {

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id sub_1E4089BA8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for MultiGroupHorizontalCollectionController()) init];
  *a1 = result;
  return result;
}

void sub_1E4089BE4(void *a1)
{
  [a1 frame];
  [a1 setFrame_];
  v3 = sub_1E4087E90();
  v2 = a1;
  sub_1E408E364(a1);
}

uint64_t sub_1E4089C6C()
{
  v1 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_datasourceLoaded;
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_datasourceLoaded) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel))
    {

      sub_1E4089DE8();
    }

    *(v0 + v1) = 1;
  }

  return result;
}

void sub_1E4089CE4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      [v2 bounds];

      v4 = OUTLINED_FUNCTION_17_4();
      sub_1E4088860(1, v5, v4, v6);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E4089D88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_48_54();

  sub_1E4088DFC();
}

void sub_1E4089DE8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v27 = v3;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v28 = v9;
  v29 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_41();
  v11 = (*(*v7 + 968))();
  v12 = sub_1E4087E90();
  v13 = v12;
  if (v11)
  {
    v14 = *(&v12->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView);
    v15 = v14;

    v16 = type metadata accessor for UIFactory();
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_1E3280A90(0, &qword_1EE23AE80);

    sub_1E393D92C(v17, v14, v30, 0);
    OUTLINED_FUNCTION_76();

    sub_1E325F7FC(v30, &qword_1ECF296C0);
    v18 = *&v2[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___groupCollectionContainerView];
    sub_1E408E2E0(v16);
  }

  else
  {
    sub_1E408E2E0(0);
  }

  v19 = sub_1E4087E90();
  [(objc_super *)v19 vui_setNeedsLayout];

  v20 = v7;
  v21 = (*(*v7 + 1040))();
  if (!v21)
  {
    goto LABEL_14;
  }

  if (!sub_1E32AE9B0(v21))
  {

LABEL_14:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  sub_1E4059D8C();
  sub_1E4200074();
  if (v5 && (, sub_1E408D5DC(), v20 = v22, , ((v20 ^ 1) & 1) != 0) || (v27 & 1) != 0)
  {
    v20 = v2;
    sub_1E408DB88();
  }

  v23 = v2;
  v24 = OUTLINED_FUNCTION_76();
  sub_1E408D3C4(v24, v1, v20);
  v25 = *&v20[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource];
  if (v25)
  {
    v26 = v25;
    OUTLINED_FUNCTION_76();

    OUTLINED_FUNCTION_25();
    sub_1E42000D4();

    (*(v28 + 8))(v1, v29);
    goto LABEL_14;
  }

  __break(1u);
}

void (*sub_1E408A280(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & **v1) + 0xC8))();
  return sub_1E37BCF0C;
}

id sub_1E408A310()
{
  v1 = v0;
  type metadata accessor for CollectionViewModel();
  v2 = swift_dynamicCastClass();
  v3 = v2;
  if (!v2)
  {
    return (v3 != 0);
  }

  *&v0[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel] = v2;
  OUTLINED_FUNCTION_12_6();
  v5 = *(v4 + 968);
  v6 = swift_retain_n();
  v7 = v5(v6);
  v8 = sub_1E4087E90();
  v9 = v8;
  if (v7)
  {
    v10 = *(&v8->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView);
    v11 = v10;

    type metadata accessor for UIFactory();
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_1E3280A90(0, &qword_1EE23AE80);

    sub_1E393D92C(v12, v10, &v19, 0);

    sub_1E325F7FC(&v19, &qword_1ECF296C0);
    v13 = *&v1[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___groupCollectionContainerView];
    v14 = OUTLINED_FUNCTION_65_31();
    sub_1E408E2E0(v14);
  }

  else
  {
    sub_1E408E2E0(0);
  }

  result = [v1 view];
  if (result)
  {
    v16 = result;
    [result bounds];

    v17 = OUTLINED_FUNCTION_17_4();
    sub_1E4088860(0, 1, v17, v18);
    sub_1E4089DE8();

    return (v3 != 0);
  }

  __break(1u);
  return result;
}

void sub_1E408A51C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  v18 = (*(*v6 + 1040))(v15);
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  v44 = v13;
  if (!sub_1E408A950(v4))
  {
    if (!sub_1E37D027C(v19))
    {
      goto LABEL_4;
    }

    v40 = v9;

    v43 = sub_1E40502A4(v42);
    v41 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource;
    v23 = *&v2[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource];
    if (v23)
    {
      v24 = v21;
      v25 = v22;
      v26 = v23;
      sub_1E4200104();

      v45 = v43;
      v46 = v24;
      v47 = v25;
      v27 = sub_1E41FFFD4();
      if (v28)
      {
        (*(v44 + 8))(v17, v11);

LABEL_17:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      v39 = v27;
      v2[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_isApplyingSnapshot] = 1;
      sub_1E4087D08();
      v29 = v43;
      v43 = v25;
      sub_1E408B0D0(v29, v24, v25, v4);
      v30 = *&v2[v41];
      if (v30)
      {
        v31 = v30;
        OUTLINED_FUNCTION_60_1();

        OUTLINED_FUNCTION_4_0();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1E42000D4();

        v32 = sub_1E324FBDC();
        v33 = v40;
        (*(v40 + 16))(v1, v32, v7);

        v34 = sub_1E41FFC94();
        v35 = sub_1E42067E4();
        if (OUTLINED_FUNCTION_104(v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 134218240;
          *(v36 + 4) = sub_1E32AE9B0(v4);

          *(v36 + 12) = 2048;
          *(v36 + 14) = v39;
          _os_log_impl(&dword_1E323F000, v34, v35, "MultiGroupHorizontalCollectionController::Did Append %ld items to section %ld", v36, 0x16u);
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        v37 = v44;

        (*(v33 + 8))(v1, v7);
        (*(v37 + 8))(v17, v11);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_1E408AA80();
LABEL_4:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E408A950(unint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for CollectionGroupViewModel();
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1E408AA80()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_11_14();
  v60 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v49 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v50 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_41();
  *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_isApplyingSnapshot) = 1;
  sub_1E4087D08();
  v51 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource;
  v52 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource);
  if (!v11)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v12 = v11;
  sub_1E4200104();

  v63 = sub_1E32AE9B0(v2);
  if (v63)
  {
    if (v63 >= 1)
    {
      v13 = 0;
      v61 = v2 & 0xC000000000000001;
      v56 = (v4 + 8);
      v57 = (v4 + 16);
      *(&v14 + 1) = 2;
      v55 = xmmword_1E4297BE0;
      *&v14 = 134217984;
      v54 = v14;
      *&v14 = 134218240;
      v53 = v14;
      v62 = v2;
      v65 = v1;
      while (1)
      {
        if (v61)
        {
          v15 = MEMORY[0x1E6911E60](v13, v2);
        }

        else
        {
          v15 = *(v2 + 8 * v13 + 32);
        }

        v17 = sub_1E40502A4(v16);
        v19 = v18;
        v21 = v20;
        v66 = v17;
        v67 = v18;
        v68 = v20;
        v22 = sub_1E41FFFD4();
        v24 = v23;
        v25 = (*(*v15 + 872))();
        v26 = v25;
        v27 = v25 >> 62;
        if (v24)
        {
          if (v25)
          {
            if (v27)
            {
              if (OUTLINED_FUNCTION_59_37())
              {
LABEL_12:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
                v28 = swift_allocObject();
                *(v28 + 16) = v55;
                *(v28 + 32) = v17;
                *(v28 + 40) = v19;
                *(v28 + 48) = v21;

                sub_1E41FFFB4();

                v29 = OUTLINED_FUNCTION_47_58();
                sub_1E408B0D0(v29, v30, v31, v32);
                v33 = sub_1E324FBDC();
                (*v57)(v59, v33, v60);

                v34 = sub_1E41FFC94();
                v35 = sub_1E42067E4();
                if (OUTLINED_FUNCTION_104(v35))
                {
                  v36 = swift_slowAlloc();
                  *v36 = v54;
                  if (v27)
                  {
                    v37 = OUTLINED_FUNCTION_59_37();
                  }

                  else
                  {
                    v37 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  *(v36 + 4) = v37;

                  _os_log_impl(&dword_1E323F000, v34, v35, "MultiGroupHorizontalCollectionController::Did Append a new section with %ld items", v36, 0xCu);
                  OUTLINED_FUNCTION_6_0();
                }

                else
                {

                  swift_bridgeObjectRelease_n();
                }

                (*v56)(v59, v60);
                goto LABEL_36;
              }
            }

            else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          if (v25)
          {
            if (v27)
            {
              if (OUTLINED_FUNCTION_59_37())
              {
LABEL_18:
                v38 = OUTLINED_FUNCTION_47_58();
                sub_1E408B0D0(v38, v39, v40, v41);
                v42 = sub_1E324FBDC();
                (*v57)(v58, v42, v60);

                v43 = sub_1E41FFC94();
                v44 = sub_1E42067E4();
                if (OUTLINED_FUNCTION_104(v44))
                {
                  v45 = swift_slowAlloc();
                  *v45 = v53;
                  if (v27)
                  {
                    v46 = OUTLINED_FUNCTION_59_37();
                  }

                  else
                  {
                    v46 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  *(v45 + 4) = v46;

                  *(v45 + 12) = 2048;
                  *(v45 + 14) = v22;
                  _os_log_impl(&dword_1E323F000, v43, v44, "MultiGroupHorizontalCollectionController::Did Append %ld items to section %ld", v45, 0x16u);
                  OUTLINED_FUNCTION_6_0();
                }

                else
                {

                  swift_bridgeObjectRelease_n();
                }

                (*v56)(v58, v60);
                goto LABEL_36;
              }
            }

            else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }
          }
        }

LABEL_36:
        v1 = v65;
        v2 = v62;
        if (v63 == ++v13)
        {
          goto LABEL_37;
        }
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_37:
  v47 = *(v52 + v51);
  if (v47)
  {
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = v47;
    OUTLINED_FUNCTION_50();

    sub_1E42000D4();

    (*(v50 + 8))(v1, v64);

    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_41:
  __break(1u);
}

uint64_t sub_1E408B0D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19 = sub_1E32AE9B0(a4);

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v19 == v7)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
      sub_1E41FFF74();
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v7, a4);
    }

    else
    {
      if (v7 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(v7, 1))
    {
      break;
    }

    v10 = sub_1E4050F14(v9, a1, a2);
    v12 = v11;
    v14 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1E40599A8(0, *(v8 + 2) + 1, 1, v8);
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    if (v16 >= v15 >> 1)
    {
      v8 = sub_1E40599A8((v15 > 1), v16 + 1, 1, v8);
    }

    *(v8 + 2) = v16 + 1;
    v17 = &v8[24 * v16];
    *(v17 + 4) = v10;
    *(v17 + 5) = v12;
    *(v17 + 6) = v14;

    ++v7;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1E408B2D0()
{
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_isApplyingSnapshot) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel);
    if (v1)
    {
      v2 = type metadata accessor for CollectionViewModel();

      if (sub_1E39BD1F0(v2, &off_1F5D96700))
      {
        OUTLINED_FUNCTION_111();
        if (((*(v3 + 1488))() & 1) == 0)
        {
          v4 = sub_1E4087E90();
          v5 = *(&v4->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
          v6 = v5;

          if (v5)
          {
            v7 = v6;
            [v7 vuiContentSize];
            v9 = v8;
            [v7 vuiContentOffset];
            v11 = v10;
            v13 = v12;
            [v7 vuiBounds];
            v15 = v14;
            v17 = v16;

            v18 = COERCE_DOUBLE((*(*v1 + 1552))());
            if (v19)
            {
              v20 = 1.0;
            }

            else
            {
              v20 = v18;
            }

            v21.origin.x = v11;
            v21.origin.y = v13;
            v21.size.width = v15;
            v21.size.height = v17;
            if (v9 - CGRectGetMaxX(v21) <= v15 * v20)
            {
              sub_1E408E050();
            }
          }
        }
      }
    }
  }
}

void sub_1E408B498()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 1040);

    v2(v3);
    OUTLINED_FUNCTION_11_5();

    if (v2)
    {
      LOBYTE(v45) = sub_1E41FE854();
      v46 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4C0);
      v4 = sub_1E3827828(&qword_1EE23B578, &unk_1ECF3F4C0);
      v12 = OUTLINED_FUNCTION_46_63(v4, v5, v6, v7, v8, v9, v10, v11, v38, v2, v41, v42, v43, v44, v45);
      sub_1E38D2054(v12, v13);

      if (v48)
      {
        v15 = (*(*v48 + 872))(v14);
        if (v15)
        {
          v16 = v15;
          LOBYTE(v45) = sub_1E41FE844();
          v46 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
          v17 = sub_1E3827828(&qword_1EE23B540, &unk_1ECF2C790);
          v25 = OUTLINED_FUNCTION_46_63(v17, v18, v19, v20, v21, v22, v23, v24, v39, v16, v41, v42, v43, v44, v45);
          sub_1E38D2054(v25, v26);

          (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(&v45, v27);
          if (v47)
          {
            sub_1E327F454(&v45, &v40);
            sub_1E325F7FC(&v45, &qword_1ECF2C970);
            v29 = v43;
            v28 = v44;
            __swift_project_boxed_opaque_existential_1(&v40, v43);
            v30 = (*(*(v28 + 8) + 32))(v29);
            __swift_destroy_boxed_opaque_existential_1(&v40);
          }

          else
          {
            sub_1E325F7FC(&v45, &qword_1ECF2C970);
            v30 = 0;
          }

          v31 = sub_1E4087E90();
          v32 = *(&v31->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
          v33 = v32;

          if (v32)
          {
            v34 = sub_1E41FE7E4();
            v35 = [v33 vui:v34 cellForItemAtIndexPath:?];

            if (v35)
            {
              v36 = v35;
            }
          }

          else
          {
            v35 = 0;
          }

          OUTLINED_FUNCTION_26();
          (*(v37 + 800))(2, v30, v35, 0);
        }

        else
        {
        }
      }
    }
  }
}

void sub_1E408B880(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource);
  if (v3)
  {
    v5 = v3;
    sub_1E42000B4();

    if (v25[1])
    {
      OUTLINED_FUNCTION_26();
      v7 = *(v6 + 576);

      v9 = v7(v8);
      if (v9)
      {
        v10 = v9;
        v11 = [a2 vuiCellView];
        if (v11)
        {
          v12 = v11;
          (*((*MEMORY[0x1E69E7D40] & *v2) + 0xB8))(v25);
          if (v25[3])
          {
            sub_1E327F454(v25, v22);
            sub_1E325F7FC(v25, &qword_1ECF2C970);
            v13 = v12;
            v14 = v23;
            v15 = v24;
            __swift_project_boxed_opaque_existential_1(v22, v23);
            v16 = *(v15 + 16);
            v17 = v15;
            v12 = v13;
            v16(v13, v10, v14, v17);
            v18 = __swift_destroy_boxed_opaque_existential_1(v22);
          }

          else
          {
            v18 = sub_1E325F7FC(v25, &qword_1ECF2C970);
          }

          v19 = v7(v18);
          sub_1E3E8B2A4(v19);

          goto LABEL_12;
        }
      }
    }

LABEL_12:
    sub_1E408B2D0();
    v20 = OUTLINED_FUNCTION_34();
    sub_1E3790548(v20, v21);
    return;
  }

  __break(1u);
}

uint64_t sub_1E408BB84()
{
  result = sub_1E3E8B1CC();
  if (result)
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v5);
    if (v5[3])
    {
      sub_1E327F454(v5, v4);
      sub_1E325F7FC(v5, &qword_1ECF2C970);
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      v2 = OUTLINED_FUNCTION_34();
      v3(v2);
      __swift_destroy_boxed_opaque_existential_1(v4);
    }

    else
    {
      sub_1E325F7FC(v5, &qword_1ECF2C970);
    }

    sub_1E3E8B2A4(0);
  }

  return result;
}

uint64_t sub_1E408BEC4(void *a1)
{
  [a1 vuiBounds];
  OUTLINED_FUNCTION_3();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))(v6);
  if (!v6[3])
  {
    return sub_1E325F7FC(v6, &qword_1ECF2C970);
  }

  sub_1E327F454(v6, v5);
  sub_1E325F7FC(v6, &qword_1ECF2C970);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_50();
  v3(v2);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1E408C028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = OUTLINED_FUNCTION_34();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_50_1();
  sub_1E3D96570(a3, v3, &qword_1ECF309A0);
  v10 = sub_1E41FE874();
  result = __swift_getEnumTagSinglePayload(v3, 1, v10);
  if (result != 1)
  {
    v12 = v5 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics;
    if ((*(v5 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics + 80) & 1) == 0)
    {
      goto LABEL_20;
    }

    v13 = *(v5 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel);
    if (!v13)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_12_6();
    v15 = *(v14 + 392);

    if (!v15(v16))
    {

      goto LABEL_20;
    }

    OUTLINED_FUNCTION_11_14();
    v17 = type metadata accessor for MultiGroupHorizontalCollectionController();
    v18 = *(v5 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastViewWidth);
    v72 = 1;
    v19 = (*(*v13 + 960))(v17);
    if (v19)
    {
      v20 = v19;
      OUTLINED_FUNCTION_26();
      *&v66 = (*(v21 + 984))();
      BYTE8(v66) = v22 & 1;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0);
      OUTLINED_FUNCTION_53_53(v23, v24, v23);
      type metadata accessor for LayoutGrid();
      v25 = OUTLINED_FUNCTION_51_1();
      v26 = sub_1E3A25B9C(v15, v64, v25 & 1);
      *&v66 = (*(*v15 + 1128))();
      BYTE8(v66) = v27 & 1;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
      OUTLINED_FUNCTION_53_53(v28, v29, v28);
      sub_1E3A25D00(v26, 0, v18, *&v64);
      if (_MergedGlobals_167 != -1)
      {
        OUTLINED_FUNCTION_14_177();
      }

      v30 = sub_1E3859230(*(v20 + 98));
      v32 = v31;
      swift_beginAccess();
      sub_1E3D50F6C(v30, v32, qword_1EE28B028);
      OUTLINED_FUNCTION_60_1();

      if (v30)
      {
        swift_endAccess();
        swift_getObjCClassFromMetadata();
        v33 = OUTLINED_FUNCTION_1_36();
        v36 = [v34 v35];
        v37 = j__OUTLINED_FUNCTION_18();
        v38 = j__OUTLINED_FUNCTION_18();
        v39 = j__OUTLINED_FUNCTION_1_36();
        v41 = v40;
        v42 = OUTLINED_FUNCTION_5_11();
        v43 = j__OUTLINED_FUNCTION_18();
        sub_1E38BAEA8(1, v37 & 1, v38 & 1, 0, 1, 2, v43 & 1, &v64, v39, v41, v42);
        type metadata accessor for UIFactory();
        *&v60 = v36;
        *(&v67 + 1) = &type metadata for CollectionViewCellContext;
        *&v68 = &off_1F5D621F8;
        v44 = swift_allocObject();
        *&v66 = v44;
        v45 = v65[0];
        v44[1] = v64;
        v44[2] = v45;
        *(v44 + 43) = *(v65 + 11);
        v46 = sub_1E3280A90(0, &qword_1EE23AFD0);

        sub_1E38E5240(v47, &v60, &v66, 0, 0, v46, v63);

        sub_1E325F7FC(&v66, &qword_1ECF296C0);
        *&v66 = v36;
        v48 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA30);
        if (swift_dynamicCast())
        {
          if (*(&v61 + 1))
          {
            sub_1E3251BE8(&v60, v63);
            v49 = v63[4];
            __swift_project_boxed_opaque_existential_1(v63, v63[3]);
            v50 = OUTLINED_FUNCTION_76();
            v51(v50, v49);
            v58 = v67;
            v59 = v66;
            v56 = v69;
            v57 = v68;
            v52 = v70;
            v53 = v71;

            __swift_destroy_boxed_opaque_existential_1(v63);
            v54 = 0;
LABEL_19:

            *v12 = v59;
            *(v12 + 16) = v58;
            *(v12 + 32) = v57;
            *(v12 + 48) = v56;
            *(v12 + 64) = v52;
            *(v12 + 72) = v53;
            *(v12 + 80) = v54;
LABEL_20:
            OUTLINED_FUNCTION_37_1();
            return (*(v55 + 8))(v3, v10);
          }
        }

        else
        {
          v62 = 0;
          v61 = 0u;
          v60 = 0u;
        }

        sub_1E325F7FC(&v60, &qword_1ECF3F4E0);
      }

      else
      {
        swift_endAccess();
      }
    }

    v52 = 0;
    v53 = 0;
    v59 = 0u;
    v54 = v72;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void sub_1E408C7E8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v9 = *(v1 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel);
  if (v9)
  {

    MEMORY[0x1E6909190](0, a1);
    v10 = sub_1E4087D60();
    v11 = sub_1E408D37C(v2, v10);

    v12 = type metadata accessor for MultiGroupHorizontalCollectionController();
    v13 = *(v1 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastViewWidth);
    v14 = (*(*v9 + 1040))(v12);
    if (v14)
    {
      v28[1] = v14;
      *&v26[0] = a1;
      BYTE8(v26[0]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4C0);
      sub_1E3827828(&qword_1EE23B578, &unk_1ECF3F4C0);
      sub_1E38D2054(v26, v28);

      if (v28[0])
      {
        OUTLINED_FUNCTION_8();
        (*(v15 + 904))(v16, v17);
        OUTLINED_FUNCTION_26_5();

        if (&unk_1E42A0990)
        {
          v18 = type metadata accessor for UIFactory();
          v27 = 0;
          memset(v26, 0, sizeof(v26));
          sub_1E3280A90(0, &qword_1EE23AE80);

          sub_1E393D92C(v19, v11, v26, 0);
          OUTLINED_FUNCTION_60_1();

          sub_1E325F7FC(v26, &qword_1ECF296C0);
          if (v18)
          {
            type metadata accessor for LayoutGrid();
            v20 = v18;
            sub_1E3A258E4(v13);
            [v20 vui:v13 - v21 - v22 sizeThatFits:0.0];
            OUTLINED_FUNCTION_18_3();

            v23 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___cachedHeaderViews;
            v24 = *(v3 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___cachedHeaderViews);
            v25 = v20;
            OUTLINED_FUNCTION_26_5();

            swift_isUniquelyReferenced_nonNull_native();
            *&v26[0] = v24;
            sub_1E408F548(&unk_1E42A0990, v2);

            (*(v7 + 8))(v2, v5);
            *(v3 + v23) = *&v26[0];

            goto LABEL_9;
          }
        }
      }
    }

    (*(v7 + 8))(v2, v5);
  }

LABEL_9:
  OUTLINED_FUNCTION_17_4();
}

double sub_1E408CBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E69DDCE0];
  if (a3)
  {
    type metadata accessor for LayoutGrid();
    sub_1E3A25950(*(v3 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastViewWidth));
  }

  return v4;
}

void sub_1E408CC98(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  if (!a1)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1E3D96570(a3, v16 - v7, &qword_1ECF309A0);
  sub_1E41FE874();
  v9 = OUTLINED_FUNCTION_11_5();
  if (__swift_getEnumTagSinglePayload(v9, 1, a3) == 1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = sub_1E41FE7E4();
  OUTLINED_FUNCTION_37_1();
  (*(v11 + 8))(v8, a3);
  v12 = [a1 vui:v10 cellForItemAtIndexPath:?];

  if (v12)
  {
    v16[1] = &unk_1F5F79530;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      v13 = OUTLINED_FUNCTION_1_36();
      [v14 v15];
      OUTLINED_FUNCTION_3();
    }
  }

  OUTLINED_FUNCTION_6();
}

void sub_1E408CF28()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v51 = v10;
    v52 = v1;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel) && (OUTLINED_FUNCTION_8(), v16 += 130, v17 = *v16, v18 = v16, v19 = , v17(v19), OUTLINED_FUNCTION_26_5(), , v18))
    {
      v20 = sub_1E41FE854();
      sub_1E34AF4E4(v20, (v18 & 0xC000000000000001) == 0, v18);
      if ((v18 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v20, v18);
      }

      else
      {
        OUTLINED_FUNCTION_60_38();
      }

      OUTLINED_FUNCTION_8();
      (*(v21 + 904))();
      OUTLINED_FUNCTION_26_5();

      v22 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_supplementaryKindToReuseIdentifierMap;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v23 = *&v15[v22];

      v50 = v18;

      v24 = sub_1E37D26AC(v5, v3, v23);
      v26 = v25;

      if (v26)
      {
        v27 = sub_1E4205ED4();
        sub_1E4205ED4();
        OUTLINED_FUNCTION_26_5();

        v28 = sub_1E41FE7E4();
        v29 = [v7 vui:v27 dequeueReusableSupplementaryViewOfKind:v24 withReuseIdentifier:v28 forIndexPath:?];

        v30 = type metadata accessor for UIFactory();
        v54 = 0;
        memset(v53, 0, sizeof(v53));
        sub_1E3280A90(0, &qword_1EE23B018);
        v31 = v50;

        v32 = v29;
        sub_1E393D92C(v31, v29, v53, 0);
        OUTLINED_FUNCTION_60_1();

        sub_1E325F7FC(v53, &qword_1ECF296C0);
        if (v32)
        {
          v34 = *(v31 + 16);
          v33 = *(v31 + 24);
          swift_getObjectType();
          v35 = dynamic_cast_existential_1_conditional(v32);
          if (v35)
          {
            v49 = v35;
            v47 = v36;
            ObjectType = swift_getObjectType();
            OUTLINED_FUNCTION_4_0();
            v37 = swift_allocObject();
            OUTLINED_FUNCTION_45_2();
            v46 = v33;
            v38 = v51;
            (*(v51 + 16))(&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v52, v8);
            v39 = (*(v38 + 80) + 40) & ~*(v38 + 80);
            v40 = swift_allocObject();
            v41 = v34;
            v42 = v40;
            v40[2] = v37;
            v40[3] = v41;
            v40[4] = v46;
            (*(v38 + 32))(v40 + v39, &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
            v43 = v47;
            v52 = *(v47 + 16);

            v44 = v32;
            v52(sub_1E408FCFC, v42, ObjectType, v43);
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void *sub_1E408D37C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E408F31C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void sub_1E408D3C4(unint64_t a1, uint64_t a2, void *a3)
{
  v17 = sub_1E32AE9B0(a1);
  for (i = 0; ; ++i)
  {
    if (v17 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = sub_1E40502A4(v6);
    v9 = v8;
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E4297BE0;
    *(v12 + 32) = v7;
    *(v12 + 40) = v9;
    *(v12 + 48) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
    sub_1E41FFFB4();

    v14 = (*(*v5 + 872))(v13);
    if (v14)
    {
      v15 = v14;
      if (v14 >> 62)
      {
        if (sub_1E4207384())
        {
LABEL_10:
          sub_1E408B0D0(v7, v9, v11, v15);
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

LABEL_13:
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_1E408D5DC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v52 = v7 - v6;
  v8 = *(*v1 + 968);
  v9 = v8();
  if (v9)
  {

    OUTLINED_FUNCTION_26();
    if (!(*(v10 + 968))())
    {
      goto LABEL_52;
    }
  }

  if ((v8)(v9))
  {
  }

  else
  {
    OUTLINED_FUNCTION_26();
    if ((*(v16 + 968))())
    {

      goto LABEL_52;
    }
  }

  OUTLINED_FUNCTION_12_6();
  v11 += 130;
  v12 = *v11;
  v13 = (*v11)();
  v14 = v13;
  v50 = v12;
  if (v13)
  {
    v15 = sub_1E32AE9B0(v13);
  }

  else
  {
    v15 = 0;
  }

  OUTLINED_FUNCTION_26();
  v17 += 130;
  v18 = *v17;
  v19 = (*v17)();
  if (!v19)
  {
    if (!v14)
    {
      goto LABEL_17;
    }

LABEL_52:
    LODWORD(v21) = 1;
    goto LABEL_53;
  }

  sub_1E32AE9B0(v19);
  OUTLINED_FUNCTION_65_31();

  if (v14)
  {
    v20 = v15 == v2;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    goto LABEL_52;
  }

LABEL_17:
  v21 = (v50)(v19);
  if (!v21)
  {
    goto LABEL_53;
  }

  v22 = v18();
  v23 = v52;
  if (!v22)
  {
    goto LABEL_58;
  }

  v24 = v22;
  v25 = sub_1E32AE9B0(v21);
  if (!v25)
  {

LABEL_58:

    LODWORD(v21) = 0;
    goto LABEL_54;
  }

  v26 = v25;
  v45 = v4;
  v46 = v2;
  v27 = sub_1E32AE9B0(v24);
  v28 = 0;
  v49 = v21;
  v51 = v21 & 0xC000000000000001;
  v47 = v21 + 32;
  v48 = v26;
  while (2)
  {
    sub_1E34AF4E4(v28, v51 == 0, v21);
    if (v51)
    {
      v29 = MEMORY[0x1E6911E60](v28, v21);
    }

    else
    {
      v29 = *(v47 + 8 * v28);
    }

    if (__OFADD__(v28++, 1))
    {
      __break(1u);
      return;
    }

    for (i = 0; ; ++i)
    {
      if (v27 == i)
      {

        goto LABEL_49;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1E6911E60](i, v24);
      }

      else
      {
        if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v32 = *(v24 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:

LABEL_63:
        LODWORD(v21) = 1;
        goto LABEL_64;
      }

      v33 = v32[3];
      v34 = v29[3];
      if (v33)
      {
        break;
      }

      if (!v34)
      {
        goto LABEL_42;
      }

LABEL_40:
    }

    if (!v34)
    {
      goto LABEL_40;
    }

    v35 = v32[2] == v29[2] && v33 == v34;
    if (!v35 && (sub_1E42079A4() & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_42:
    v36 = (*v29 + 904);
    v37 = *v36;
    v38 = (*v36)();
    if (v38)
    {

      if (!(*(*v32 + 904))(v39))
      {

        goto LABEL_63;
      }
    }

    if ((v37)(v38))
    {

      v26 = v48;
      v21 = v49;
    }

    else
    {
      v40 = (*(*v32 + 904))();

      v26 = v48;
      v21 = v49;
      if (v40)
      {
        goto LABEL_62;
      }
    }

LABEL_49:
    if (v28 != v26)
    {
      continue;
    }

    break;
  }

  LODWORD(v21) = 0;
LABEL_64:
  v4 = v45;
  v2 = v46;
LABEL_53:
  v23 = v52;
LABEL_54:
  v41 = sub_1E324FBDC();
  (*(v4 + 16))(v23, v41, v2);
  v42 = sub_1E41FFC94();
  v43 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_104(v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 67109120;
    *(v44 + 4) = v21;
    _os_log_impl(&dword_1E323F000, v42, v43, "MultiGroupHorizontalCollectionController::needs to reload?: [%{BOOL}d]", v44, 8u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v23, v2);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E408DB88()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v59 = v7 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v46 - v11;
  v12 = sub_1E4087E90();
  v13 = *(&v12->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
  v58 = v13;

  if (!v13)
  {
    goto LABEL_27;
  }

  v48 = @"VUIShelfLayoutElementKindHeader";
  v14 = [v58 indexPathsForVisibleSupplementaryElementsOfKind_];
  v15 = sub_1E42062B4();

  if (*(v15 + 16))
  {
    v16 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource);
    if (!v16)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v17 = v16;
    sub_1E4200104();

    v18 = sub_1E32AE9B0(v2);
    if (v18)
    {
      v47 = v9;
      if (v18 >= 1)
      {
        v19 = 0;
        v56 = v2 & 0xC000000000000001;
        v57 = v18;
        v51 = v2;
        v52 = v2 + 32;
        v50 = v4 + 8;
        while (1)
        {
          if (v56)
          {
            MEMORY[0x1E6911E60](v19, v2);
          }

          else
          {
          }

          OUTLINED_FUNCTION_12_6();
          if ((*(v20 + 904))())
          {

            v22 = sub_1E40502A4(v21);
            v24 = v23;
            v26 = v25;
            *&v60 = v22;
            *(&v60 + 1) = v23;
            *&v61 = v25;
            v27 = sub_1E41FFFD4();
            if ((v28 & 1) == 0)
            {
              v53 = v26;
              MEMORY[0x1E6909190](0, v27);
              v29 = 0;
              v30 = *(v15 + 16);
              while (v30 != v29)
              {
                v31 = v24;
                v32 = v29 + 1;
                OUTLINED_FUNCTION_8_199();
                sub_1E408F7C0(&qword_1EE28A410);
                v33 = sub_1E4205E84();
                v29 = v32;
                v24 = v31;
                if (v33)
                {
                  v34 = v58;
                  v35 = v48;
                  v36 = sub_1E41FE7E4();
                  v49 = [v34 supplementaryViewForElementKind:v35 atIndexPath:v36];

                  type metadata accessor for UIFactory();
                  v62 = 0;
                  v60 = 0u;
                  v61 = 0u;
                  sub_1E3280A90(0, &qword_1EE23B018);
                  OUTLINED_FUNCTION_60_1();

                  v38 = v49;
                  v39 = sub_1E393D92C(v37, v49, &v60, 0);

                  sub_1E325F7FC(&v60, &qword_1ECF296C0);
                  v40 = OUTLINED_FUNCTION_44_64();
                  v41(v40);
                  goto LABEL_19;
                }
              }

              v42 = OUTLINED_FUNCTION_44_64();
              v43(v42);

LABEL_19:
              v2 = v51;
              goto LABEL_20;
            }
          }

LABEL_20:
          if (++v19 == v57)
          {

            v9 = v47;
            goto LABEL_26;
          }
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_26:
    (*(v9 + 8))(v55, v54);
LABEL_27:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E408E050()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v20 = v2;
  v7 = type metadata accessor for CollectionViewModel();
  if (sub_1E39BD1F0(v7, &off_1F5D96700))
  {
    OUTLINED_FUNCTION_111();
    if (((*(v8 + 1488))() & 1) == 0)
    {
      OUTLINED_FUNCTION_111();
      v20 = (*(v9 + 1160))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
      v10 = sub_1E4205F84();
      v12 = v11;
      v13 = sub_1E324FBDC();
      (*(v5 + 16))(v0, v13, v3);

      v14 = sub_1E41FFC94();
      v15 = sub_1E4206814();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v20 = v17;
        *v16 = 136315138;
        v18 = sub_1E3270FC8(v10, v12, &v20);

        *(v16 + 4) = v18;
        _os_log_impl(&dword_1E323F000, v14, v15, "MultiGroupHorizontalCollectionController::needs more content with context: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v5 + 8))(v0, v3);
      OUTLINED_FUNCTION_111();
      (*(v19 + 1504))(2, 0, 1, 0, 0);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E408E2E0(void *a1)
{
  v4 = *&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView];
  *&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView] = a1;
  v2 = *&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView];
  v3 = a1;
  [v1 vui:v2 addSubview:v4 oldView:?];
}

void sub_1E408E364(void *a1)
{
  v7 = *&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView];
  *&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView] = a1;
  v2 = a1;
  v3 = [v1 subviews];
  sub_1E3280A90(0, &qword_1EE23AE80);
  v4 = sub_1E42062B4();

  if (sub_1E32AE9B0(v4))
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](0, v4);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(v4 + 32);
    }

    v6 = v5;

    [v1 vui:*&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView] insertSubview:v6 belowSubview:v7 oldView:?];
  }

  else
  {

    [v1 vui:*&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView] addSubview:v7 oldView:?];
  }
}

void sub_1E408E4A8()
{
  *(v0 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView) = 0;
  v1 = (v0 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_viewContentInsets);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView) = 0;
  OUTLINED_FUNCTION_23_103();
  __break(1u);
}

double sub_1E408E538(char a1, double a2)
{
  v3 = v2;
  v43 = type metadata accessor for MultiGroupHorizontalCollectionController.MultiGroupContainerView();
  v6 = OUTLINED_FUNCTION_170();
  objc_msgSendSuper2(v7, v8, v6, v3, v43);
  if (a1)
  {
    v10 = *(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_invalidationHandler);

    v11 = OUTLINED_FUNCTION_170();
    v10(v11);

    [*(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_shelfLayout) computedContentHeight];
    if (*(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView))
    {
      v12 = OUTLINED_FUNCTION_170();
      [v13 v14];
    }

    sub_1E3952BD8(*(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_viewContentInsets), *(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_viewContentInsets + 8), *(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_viewContentInsets + 16));
  }

  else
  {
    v15 = v9;
    v16 = *(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView);
    if (v16)
    {
      v17 = v16;
      OUTLINED_FUNCTION_15_167();
      [v17 setFrame_];
    }

    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_15_167();
    Width = CGRectGetWidth(v44);
    sub_1E3A258E4(Width);
    v20 = v19;
    v22 = v21;
    OUTLINED_FUNCTION_15_167();
    v23 = OUTLINED_FUNCTION_170();
    v26 = sub_1E3CEE8A0(v23, v24, v20, v22, v25);
    v29 = *(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView);
    if (v29)
    {
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v33 = v29;
      [v33 vui:v31 sizeThatFits:v32];
      v35 = v34;
      [v33 setFrame_];

      v37 = v35 + 0.0;
    }

    else
    {
      v37 = 0.0;
    }

    OUTLINED_FUNCTION_15_167();
    v39 = v38;
    [*(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_shelfLayout) computedContentHeight];
    v41 = *(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
    if (v41)
    {
      [v41 setFrame_];
    }

    return v15;
  }

  return a2;
}

id sub_1E408E83C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1E408E994(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource);
  if (v2)
  {
    v3 = v1;
    v4 = result;
    v5 = v2;
    sub_1E42000B4();

    if (!v12)
    {
      return 0;
    }

    v6 = [v4 contextMenuInteraction];
    v7 = OUTLINED_FUNCTION_53();
    v11 = sub_1E3C9C60C(v7, v8, v6, v4, v9, v3, v10);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E408EBF8(uint64_t a1, void *a2, void *a3)
{
  sub_1E3C9EA54();
  if (a3)
  {
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v9[4] = sub_1E408F0BC;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1E378AEA4;
    v9[3] = &block_descriptor_13_5;
    v7 = _Block_copy(v9);
    v8 = a2;

    [a3 addCompletion_];
    _Block_release(v7);
  }
}

void sub_1E408ED94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_41();
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v7 = OUTLINED_FUNCTION_53();
  sub_1E3D96570(v7, v8, &qword_1ECF309A0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_1E325F7FC(v1, &qword_1ECF309A0);
LABEL_11:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v9 = OUTLINED_FUNCTION_34();
  v10(v9);
  v11 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource);
  if (v11)
  {
    v12 = v11;
    sub_1E42000B4();

    if (v23)
    {
      OUTLINED_FUNCTION_26();
      if (!(*(v13 + 392))())
      {
        v19 = OUTLINED_FUNCTION_3_241();
        v20(v19);

        goto LABEL_11;
      }

      type metadata accessor for MonogramLockupCellLayout();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = (*(*v14 + 1800))();
        (*(*v15 + 1744))(v15);
        OUTLINED_FUNCTION_65_31();

        (*(*v2 + 432))(v16);

        v17 = OUTLINED_FUNCTION_3_241();
        v18(v17);
        goto LABEL_11;
      }
    }

    v21 = OUTLINED_FUNCTION_3_241();
    v22(v21);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_1E408F0BC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_contextMenuInteractor);
    OUTLINED_FUNCTION_50();
    sub_1E3C9F738();
  }
}

uint64_t sub_1E408F12C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 130))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 120);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E408F180(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 130) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 130) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

void sub_1E408F210()
{
  sub_1E3CA2E5C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1E408F31C(uint64_t a1)
{
  sub_1E41FE874();
  sub_1E408F7C0(&unk_1EE28A418);
  v2 = sub_1E4205DA4();

  return sub_1E408F3A0(a1, v2);
}

unint64_t sub_1E408F3A0(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1E41FE874();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_1E408F7C0(&qword_1EE28A410);
    v10 = sub_1E4205E84();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

void sub_1E408F548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E41FE874();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_1E408F31C(a2);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4B0);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1E408F31C(a2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v13 = v15;
LABEL_5:
  v17 = *v3;
  if (v14)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v13);
    *(v18 + 8 * v13) = a1;
  }

  else
  {
    (*(v7 + 16))(v9, a2, v6);
    sub_1E408F708(v13, v9, a1, v17);
  }
}

uint64_t sub_1E408F708(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1E41FE874();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1E408F7C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E41FE874();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E408F804()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_isApplyingSnapshot) = 0;
    sub_1E4087D08();
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_1E408B2D0();
  }
}

void sub_1E408F888()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v0);
  v1 = OUTLINED_FUNCTION_48_54();

  sub_1E408933C(v1, v2);
}

void *sub_1E408F8E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*a5 + 368))();
  v7 = sub_1E4205ED4();

  v8 = sub_1E41FE7E4();
  v9 = [a1 vui:v7 dequeueReusableCellWithIdentifier:v8 indexPath:?];

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      OUTLINED_FUNCTION_111();
      if ((*(v13 + 392))())
      {
        OUTLINED_FUNCTION_11_14();
        type metadata accessor for LayoutGrid();
        sub_1E3A2579C(*&v12[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastViewWidth]);
        v14 = [v12 vuiTraitCollection];
        OUTLINED_FUNCTION_8_21();
        v16 = v15;
        (*(*v7 + 1640))();

        [a1 bounds];
        sub_1E3DF9E68(v41);
        if (v12[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics + 80])
        {
          v17 = 0;
        }

        else
        {
          v17 = *&v12[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics];
        }

        if (v12[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics + 80])
        {
          v18 = 0;
        }

        else
        {
          v18 = *&v12[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics + 8];
        }

        v40[136] = 0;
        j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        v19 = OUTLINED_FUNCTION_5_11();
        j__OUTLINED_FUNCTION_18();
        v20 = OUTLINED_FUNCTION_17_4();
        sub_1E38BAEA8(v21, v22, v23, 0, 1, 2, v24, v25, v20, v26, v19);
        __src[0] = v17;
        __src[1] = v18;
        LOBYTE(__src[2]) = 0;
        OUTLINED_FUNCTION_38_76(&__src[2] + 1);
        memcpy(&v40[48], __src, 0x52uLL);
        v37 = v10;
        sub_1E37CCDA0(__src, v33);
        v27 = v10;
        if (TVAppFeature.isEnabled.getter(10))
        {
          v33[0] = v17;
          v33[1] = v18;
          v34 = 0;
          OUTLINED_FUNCTION_38_76(v35);
          sub_1E37CCDFC(v33);
          v28 = swift_allocObject();
          memcpy((v28 + 16), v40, 0x82uLL);
          v29 = &off_1F5D94980;
          v30 = &type metadata for MultiGroupCellContext;
        }

        else
        {
          sub_1E37CCDFC(__src);
          v28 = swift_allocObject();
          *(v28 + 16) = v17;
          *(v28 + 24) = v18;
          *(v28 + 32) = 0;
          OUTLINED_FUNCTION_38_76((v28 + 33));
          v29 = &off_1F5D868A0;
          v30 = &unk_1F5D869A0;
        }

        *&v35[7] = v30;
        v36 = v29;
        v33[0] = v28;
        type metadata accessor for UIFactory();
        v31 = sub_1E3280A90(0, &qword_1EE23AFD0);
        sub_1E38E5240(a5, &v37, v33, 0, 0, v31, &v38);

        sub_1E325F7FC(v33, &qword_1ECF296C0);
      }
    }
  }

  else
  {
  }

  return v10;
}

uint64_t (**sub_1E408FCFC())(void)
{
  v3 = v0;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_17_2(v4);
  v6 = *(v5 + 80);
  v28 = *(v0 + 24);
  v29 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  v9 = *(Strong + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel);
  if (!v9 || (OUTLINED_FUNCTION_8(), v1 = *(v10 + 1040), v11 = , (v1)(v11), OUTLINED_FUNCTION_65_31(), , !v2))
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  if (v29)
  {
    v27 = v8;
    v12 = sub_1E32AE9B0(v2);
    v13 = 0;
    v30 = v2 & 0xC000000000000001;
    v14 = v2 & 0xFFFFFFFFFFFFFF8;
    while (v12 != v13)
    {
      if (v30)
      {
        v9 = MEMORY[0x1E6911E60](v13, v2);
      }

      else
      {
        if (v13 >= *(v14 + 16))
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_60_38();
      }

      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        MEMORY[0x1E6911E60](v9, v2);
        goto LABEL_28;
      }

      v15 = v2;
      OUTLINED_FUNCTION_8();
      v16 += 113;
      v8 = *v16;
      v1 = v16;
      v17 = (*v16)();
      if (v17 && (v19 = *(v17 + 16), v18 = *(v17 + 24), , , v18))
      {
        if (v19 == v28 && v18 == v29)
        {

LABEL_32:

          (v8)(v25);
          OUTLINED_FUNCTION_11_5();

LABEL_33:
          v8 = v27;
          goto LABEL_34;
        }

        v21 = sub_1E42079A4();

        v2 = v15;
        if (v21)
        {
          goto LABEL_32;
        }
      }

      else
      {

        v2 = v15;
      }

      ++v13;
    }

    v1 = 0;
    goto LABEL_33;
  }

  v22 = (v6 + 40) & ~v6;
  if (sub_1E41FE854() < 0 || (sub_1E41FE854(), v23 = OUTLINED_FUNCTION_76(), v3 + v22 >= sub_1E32AE9B0(v23)))
  {

    v1 = 0;
  }

  else
  {
    v9 = sub_1E41FE854();
    sub_1E34AF4E4(v9, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_60_38();
LABEL_28:

    OUTLINED_FUNCTION_8();
    (*(v24 + 904))();
    OUTLINED_FUNCTION_11_5();
  }

LABEL_34:

  return v1;
}

void sub_1E4090014()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OUTLINED_FUNCTION_6_12();
    sub_1E4088860(0, 0, v2, v3);
  }
}

uint64_t OUTLINED_FUNCTION_53_53(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4148C68(v3, a3, v4 - 256);
}

void *sub_1E4090198()
{
  v1 = OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_bannerImage;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1E40901E0())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_bannerImage;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E4090250;
}

void *sub_1E4090268()
{
  v1 = OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_descriptionView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1E40902B0())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_descriptionView;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E4090320;
}

void sub_1E4090338(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E40903B8()
{
  v1 = OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_separatorView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1E4090400())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_separatorView;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E4090470;
}

id sub_1E4090488()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_imageViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_roomBannerLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_bannerImage) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_descriptionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_previousWidth) = 0;
  v5 = type metadata accessor for RoomBannerCollectionViewCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

void sub_1E4090564()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_imageViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_roomBannerLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_bannerImage) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_descriptionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_previousWidth) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E4090620(char a1, double a2)
{
  v3 = v2;
  if ((a1 & 1) == 0 && [objc_opt_self() isPad])
  {
    v6 = *&v2[OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_previousWidth];
    OUTLINED_FUNCTION_11_187();
    if (v6 == CGRectGetWidth(v83))
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_87();
    v8 = (*(v7 + 128))();
    if (!v8)
    {
      goto LABEL_27;
    }

    v9 = v8;
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_11_187();
    Width = CGRectGetWidth(v84);
    sub_1E3A2579C(Width);
    OUTLINED_FUNCTION_87();
    v12 = (*(v11 + 152))();
    if (v12)
    {
      v13 = v12;
      v14 = [v3 vuiTraitCollection];
      sub_1E3C2AE10();
      v16 = v15;
      (*(*v13 + 1640))();
    }

    OUTLINED_FUNCTION_11_187();
    v17 = CGRectGetWidth(v85);
    v18 = *(*v9 + 392);

    v20 = v18(v19);

    if (v20)
    {
      type metadata accessor for ImageLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_30();
        v22 = *(v21 + 304);

        v24 = COERCE_DOUBLE(v22(v23));
        if (v25)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v24;
        }

        (*(*v9 + 208))(COERCE_CGFLOAT(*&v17), 0);
      }

      else
      {
        v26 = 0.0;
      }
    }

    else
    {
      v26 = 0.0;
    }

    OUTLINED_FUNCTION_11_187();
    v27 = CGRectGetWidth(v86);
    v28 = sub_1E3C3E520(v27, v26);
    OUTLINED_FUNCTION_87();
    v30 = *(v29 + 176);
    v31 = v28;
    v32 = v30();
    if (v32)
    {
      v33 = v32;
      v34 = [v32 imageProxy];

      if (!v28)
      {
        if (!v34)
        {
          goto LABEL_26;
        }

        v35 = swift_unknownObjectRelease();
        goto LABEL_25;
      }

      if (v34)
      {

        v35 = swift_unknownObjectRelease();
        if (v28 == v34)
        {

LABEL_26:

          goto LABEL_27;
        }

LABEL_25:
        v36 = (v30)(v35);
        [v36 setImageProxy_];

LABEL_27:
        *&v3[OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_previousWidth] = a2;
        goto LABEL_28;
      }
    }

    else if (!v28)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_28:
  OUTLINED_FUNCTION_87();
  result = (*(v37 + 152))();
  if (result)
  {
    v39 = result;
    v78 = a1;
    type metadata accessor for LayoutGrid();
    sub_1E3A2579C(a2);
    sub_1E3A25914();
    v41 = v40;
    v43 = v42;
    OUTLINED_FUNCTION_87();
    v45 = *(v44 + 176);
    v46 = v45();
    v47 = 0.0;
    v48 = 0.0;
    v49 = 0.0;
    if (v46)
    {

      v50 = *(*(*v39 + 1736))();
      (*(v50 + 2288))();
      v48 = v51;

      VUIRoundValue();
      v49 = a2;
    }

    v76 = v49;
    OUTLINED_FUNCTION_87();
    v53 = *(v52 + 200);
    v54 = v53();
    if (v54)
    {
      v55 = v54;
      v77 = a2 - v41 - v43;
      v56 = [v54 sizeThatFits_];
      v57 = *(*v39 + 1760);
      (v57)(v56);
      OUTLINED_FUNCTION_30();
      (*(v58 + 152))(v79);

      v59 = v79[0];
      if (v80)
      {
        v59 = 0.0;
      }

      [v55 topMarginWithBaselineMargin_];
      v87.origin.x = OUTLINED_FUNCTION_7_230();
      MaxY = CGRectGetMaxY(v87);
      v57();
      v61 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_30();
      (*(v62 + 152))(v81);

      v63 = *&v81[2];
      if (v82)
      {
        v63 = 0.0;
      }

      [v55 bottomMarginWithBaselineMargin_];
      v47 = MaxY + v64;
      OUTLINED_FUNCTION_87();
      v66 = (*(v65 + 224))();
      if (v66)
      {
        v67 = v66;
        v68 = (*((*v61 & *v66) + 0x70))();
      }

      else
      {
        v68 = 1.0;
      }

      if (v78)
      {
      }
    }

    else
    {
      v41 = 0.0;
      v77 = 0.0;
      v68 = 0.0;
      if (a1)
      {
      }
    }

    v69 = v45();
    if (v69)
    {
      v70 = v69;
      [v69 setFrame_];
    }

    [v3 effectiveUserInterfaceLayoutDirection];
    v71 = v53();
    if (v71)
    {
      v72 = v71;
      [v3 bounds];
      OUTLINED_FUNCTION_7_230();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v72 setFrame_];
    }

    OUTLINED_FUNCTION_87();
    v74 = (*(v73 + 224))();
    if (v74)
    {
      v75 = v74;
      [v74 setFrame_];
    }
  }

  return result;
}