void sub_1B1B2F4AC(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v5 = sub_1B1C2CDF8();
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_72();
    v5 = sub_1B1BE2064();
    v36 = v35;

    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v6 = OUTLINED_FUNCTION_57_1();
    }

    else
    {
      OUTLINED_FUNCTION_72();
      v6 = sub_1B1C2D578();
    }

    OUTLINED_FUNCTION_56_1(v6);
    if (v24)
    {
      if (v7 >= 1)
      {
        if (v7 != 1)
        {
          OUTLINED_FUNCTION_7_8();
          if (v17)
          {
            while (1)
            {
              OUTLINED_FUNCTION_31_2();
              if (v14 && v21 < v19)
              {
                v22 = -48;
              }

              else if (v21 < 0x41 || v21 >= v18)
              {
                OUTLINED_FUNCTION_15_9();
                if (!v14 || v21 >= v23)
                {
                  goto LABEL_129;
                }

                v22 = -87;
              }

              else
              {
                v22 = -55;
              }

              if (is_mul_ok(v20, a3) && !__CFADD__(v20 * a3, (v21 + v22)))
              {
                OUTLINED_FUNCTION_30_3();
                if (!v24)
                {
                  continue;
                }
              }

              goto LABEL_129;
            }
          }
        }

        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        OUTLINED_FUNCTION_47_2();
        if (v25 ^ v26 | v24)
        {
          v28 = v31;
        }

        if (v25 ^ v26 | v24)
        {
          v29 = 65;
        }

        if (!(v25 ^ v26 | v24))
        {
          v30 = 58;
        }

        if (v27)
        {
          v32 = 0;
          while (1)
          {
            v33 = *v27;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v29)
              {
                if (v33 < 0x61 || v33 >= v28)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (is_mul_ok(v32, a3) && !__CFADD__(v32 * a3, (v33 + v34)))
            {
              v27 = OUTLINED_FUNCTION_65_1(v27);
              if (!v24)
              {
                continue;
              }
            }

            goto LABEL_129;
          }
        }
      }

      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      if (v7 != 1)
      {
        OUTLINED_FUNCTION_7_8();
        if (v9)
        {
          while (1)
          {
            OUTLINED_FUNCTION_31_2();
            if (v14 && v13 < v11)
            {
              v15 = -48;
            }

            else if (v13 < 0x41 || v13 >= v10)
            {
              OUTLINED_FUNCTION_15_9();
              if (!v14 || v13 >= v16)
              {
                break;
              }

              v15 = -87;
            }

            else
            {
              v15 = -55;
            }

            if (is_mul_ok(v12, a3) && v12 * a3 >= (v13 + v15))
            {
              OUTLINED_FUNCTION_30_3();
              if (!v24)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_129:

      return;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  OUTLINED_FUNCTION_43_3();
  if (!v24)
  {
    if (v38 != 45)
    {
      if (v37)
      {
        OUTLINED_FUNCTION_2_12();
        while (1)
        {
          OUTLINED_FUNCTION_31_2();
          if (v14 && v54 < v53)
          {
            v55 = -48;
          }

          else if (v54 < 0x41 || v54 >= v52)
          {
            OUTLINED_FUNCTION_15_9();
            if (!v14 || v54 >= v56)
            {
              goto LABEL_129;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }

          if (is_mul_ok(v51, a3) && !__CFADD__(v51 * a3, (v54 + v55)))
          {
            OUTLINED_FUNCTION_30_3();
            if (!v24)
            {
              continue;
            }
          }

          goto LABEL_129;
        }
      }

      goto LABEL_129;
    }

    if (v37)
    {
      if (v37 != 1)
      {
        OUTLINED_FUNCTION_2_12();
        OUTLINED_FUNCTION_20_4();
        while (1)
        {
          OUTLINED_FUNCTION_31_2();
          if (v14 && v42 < v41)
          {
            v43 = -48;
          }

          else if (v42 < 0x41 || v42 >= v40)
          {
            OUTLINED_FUNCTION_15_9();
            if (!v14 || v42 >= v44)
            {
              goto LABEL_129;
            }

            v43 = -87;
          }

          else
          {
            v43 = -55;
          }

          if (is_mul_ok(v39, a3) && v39 * a3 >= (v42 + v43))
          {
            OUTLINED_FUNCTION_30_3();
            if (!v24)
            {
              continue;
            }
          }

          goto LABEL_129;
        }
      }

      goto LABEL_129;
    }

    goto LABEL_132;
  }

  if (v37)
  {
    if (v37 != 1)
    {
      OUTLINED_FUNCTION_2_12();
      OUTLINED_FUNCTION_20_4();
      while (1)
      {
        OUTLINED_FUNCTION_31_2();
        if (v14 && v48 < v47)
        {
          v49 = -48;
        }

        else if (v48 < 0x41 || v48 >= v46)
        {
          OUTLINED_FUNCTION_15_9();
          if (!v14 || v48 >= v50)
          {
            goto LABEL_129;
          }

          v49 = -87;
        }

        else
        {
          v49 = -55;
        }

        if (is_mul_ok(v45, a3) && !__CFADD__(v45 * a3, (v48 + v49)))
        {
          OUTLINED_FUNCTION_30_3();
          if (!v24)
          {
            continue;
          }
        }

        goto LABEL_129;
      }
    }

    goto LABEL_129;
  }

LABEL_134:
  __break(1u);
}

unint64_t sub_1B1B2F9A4()
{
  result = qword_1ED9A5290;
  if (!qword_1ED9A5290)
  {
    sub_1B1A8E474(255, &unk_1ED9A5298, 0x1E69DB528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5290);
  }

  return result;
}

uint64_t sub_1B1B2FA0C(uint64_t a1, double a2)
{
  v5 = *(sub_1B1C2C428() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + 16);
  v12 = v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_1B1B2C4A4(a1, v11, a2, v2 + v6, v9, v10, v13, v14);
}

void sub_1B1B2FB9C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  if (v6 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762490, &qword_1B1C37E70);
  v11 = *(sub_1B1C2C1C8() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v15 = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 - v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_23;
  }

  v14[2] = v9;
  v14[3] = 2 * ((v15 - v13) / v12);
LABEL_18:
  v17 = *(sub_1B1C2C1C8() - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_1B1B04B98(a4 + v18, v9, v14 + v18);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1B1B2FD3C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C60, &unk_1B1C37E90);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1B1AC9DF0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C68, &unk_1B1C35DE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B1B2FE4C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762498, &qword_1B1C37E78);
      v11 = swift_allocObject();
      _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_5();
      *(v11 + 16) = v9;
      *(v11 + 24) = v12;
      if (a1)
      {
LABEL_12:
        sub_1B1AC9DF0((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A0, &unk_1B1C37E80);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_20();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B1B2FF3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1B1AA0B44(a1, a2, a3, v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    sub_1B1A9E6FC(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      sub_1B1A9D350();
    }

    v8 = v29;
    sub_1B1A9EEE0(v30, v28);
    v9 = *a5;
    v11 = sub_1B1A8EB10();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
        sub_1B1C2D638();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1B1AC891C(v14, a4 & 1);
      v16 = *a5;
      v17 = sub_1B1A8EB10();
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_1B1A93378(v28, v27);
        __swift_destroy_boxed_opaque_existential_0(v28);

        v20 = (v19[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_0(v20);
        sub_1B1A9EEE0(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_1B1A9EEE0(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1B1C2D818();
  __break(1u);
  return result;
}

uint64_t sub_1B1B3016C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_1B1B2FF3C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

uint64_t sub_1B1B302BC()
{
  result = sub_1B1B302DC();
  qword_1EB772E48 = result;
  return result;
}

uint64_t sub_1B1B302DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v16 - v2;
  v4 = sub_1B1C2C0A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762490, &qword_1B1C37E70);
  v9 = sub_1B1C2C1C8();
  v10 = *(v9 - 8);
  v16[1] = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B1C36280;
  v13 = *MEMORY[0x1E6968F58];
  v14 = *(v5 + 104);
  v14(v8, v13, v4);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_1B1C2C198();
  v14(v8, v13, v4);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_1B1C2C198();
  return v12;
}

uint64_t sub_1B1B30544()
{
  result = sub_1B1B30564();
  qword_1EB772E50 = result;
  return result;
}

uint64_t sub_1B1B30564()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_1B1C2C0A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762490, &qword_1B1C37E70);
  v9 = sub_1B1C2C1C8();
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B1C361C0;
  (*(v5 + 104))(v8, *MEMORY[0x1E6968F58], v4);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_1B1C2C198();
  return v12;
}

uint64_t sub_1B1B30758(uint64_t a1, uint64_t *a2)
{
  v122 = a2;
  v124 = sub_1B1C2C1C8();
  v3 = OUTLINED_FUNCTION_7(v124);
  v110 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3);
  v117 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v102 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v108 = &v102 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v102 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v102 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v102 - v23;
  LOBYTE(v24) = sub_1B1C2D0D8();
  if (qword_1ED9A99C0 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v118 = v11;
    *&v114 = v16;
    v123 = qword_1ED9AA670;
    v25 = os_log_type_enabled(qword_1ED9AA670, v24);
    if (v25)
    {
      v26 = swift_slowAlloc();
      v126[0] = swift_slowAlloc();
      *v26 = 136315394;
      v27 = sub_1B1AB940C();
      v28 = MEMORY[0x1B2738350](a1, v27);
      v30 = sub_1B1A930E4(v28, v29, v126);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = sub_1B1AB5454(v122);
      v33 = sub_1B1A930E4(v31, v32, v126);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_1B1A8A000, v123, v24, "#Local listing assets for types: %s, filter: %s", v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    if (qword_1ED9A9960 != -1)
    {
      v25 = swift_once();
    }

    v16 = &v102;
    v126[0] = qword_1ED9A9968;
    MEMORY[0x1EEE9AC00](v25);
    *(&v102 - 2) = v126;
    v11 = 0;
    v34 = sub_1B1ABAB9C(sub_1B1ABACC4, (&v102 - 4), a1);
    v115 = v19;
    if (v34)
    {
      break;
    }

    v126[0] = MEMORY[0x1E69E7CC0];
    if (qword_1EB7615A8 != -1)
    {
      swift_once();
    }

    v11 = v118;
    v107 = *(qword_1EB772E48 + 16);
    if (!v107)
    {
      v116 = MEMORY[0x1E69E7CC0];
LABEL_65:
      v99 = v116;
      if (!(v116 >> 62))
      {

        sub_1B1C2D7B8();
        type metadata accessor for TTSAsset();
        v100 = v99;
        goto LABEL_70;
      }

      goto LABEL_74;
    }

    OUTLINED_FUNCTION_2_13();
    v104 = v40;
    v105 = v38 + v40;
    v16 = (v41 + 16);
    v121 = (v41 + 8);
    v116 = MEMORY[0x1E69E7CC0];
    *&v42 = 136315138;
    v112 = v42;
    *&v42 = 138412290;
    v114 = v42;
    v106 = v38;
    v119 = (v41 + 16);
    while (v39 < *(v38 + 16))
    {
      v43 = v110;
      v44 = v110[9];
      v111 = v39;
      v45 = v110[2];
      v46 = v108;
      a1 = v124;
      v45(v108, v105 + v44 * v39, v124);
      v47 = sub_1B1B314A0(v46, "Unable to list voice folder %s");
      v122 = v43[1];
      (v122)(v46, a1);
      v48 = v47;
      v49 = *(v47 + 16);
      if (v49)
      {
        v109 = v48;
        v50 = v48 + v104;
        v16 = v119;
        v120 = v45;
        v113 = v44;
        do
        {
          v51 = v124;
          v45(v11, v50, v124);
          v45(v19, v11, v51);
          v52 = objc_allocWithZone(type metadata accessor for TTSAssetAdhocVoice());
          a1 = v45;
          v53 = sub_1B1B61C88(v19);
          if (v53)
          {
            v54 = v53;
            v55 = sub_1B1C2D098();
            if (os_log_type_enabled(v123, v55))
            {
              v24 = OUTLINED_FUNCTION_21_0();
              v56 = swift_slowAlloc();
              *v24 = v114;
              *(v24 + 4) = v54;
              *v56 = v54;
              v57 = v54;
              _os_log_impl(&dword_1B1A8A000, v123, v55, "Found adhoc voice %@", v24, 0xCu);
              sub_1B1A90C78(v56, &qword_1EB7625C0, &qword_1B1C37990);
              OUTLINED_FUNCTION_11();
              OUTLINED_FUNCTION_11();
            }

            v58 = v54;
            MEMORY[0x1B2738320]();
            v22 = *((v126[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            v45 = v120;
            if (v22 >= *((v126[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B1C2CE98();
            }

            sub_1B1C2CEC8();

            v11 = v118;
            (v122)(v118, v124);
            v116 = v126[0];
            v16 = v119;
          }

          else
          {
            v22 = sub_1B1C2D098();
            v45(v117, v11, v124);
            if (os_log_type_enabled(v123, v22))
            {
              v24 = OUTLINED_FUNCTION_21_0();
              v59 = swift_slowAlloc();
              v60 = v117;
              v61 = v59;
              v125[0] = v59;
              *v24 = v112;
              v62 = sub_1B1C2C098();
              v64 = v63;
              v65 = v124;
              a1 = v121;
              (v122)(v60, v124);
              v66 = sub_1B1A930E4(v62, v64, v125);
              v19 = v115;

              *(v24 + 4) = v66;
              v16 = v119;
              _os_log_impl(&dword_1B1A8A000, v123, v22, "Skip invalid voice folder '%s'", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v61);
              v11 = v118;
              OUTLINED_FUNCTION_11();
              OUTLINED_FUNCTION_11();
              v67 = v65;
              v44 = v113;
              (v122)(v11, v67);
            }

            else
            {
              a1 = v124;
              v22 = v122;
              (v122)(v117, v124);
              (v22)(v11, a1);
            }

            v45 = v120;
          }

          v50 += v44;
          --v49;
        }

        while (v49);
      }

      else
      {

        v16 = v119;
      }

      v39 = v111 + 1;
      v38 = v106;
      if (v111 + 1 == v107)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    OUTLINED_FUNCTION_0_13();
  }

  sub_1B1AA0AEC(1, v122);
  if (v126[3])
  {
    v35 = swift_dynamicCast();
    v36 = v125[0];
    if (!v35)
    {
      v36 = 0;
    }

    v117 = v36;
    if (v35)
    {
      v37 = v125[1];
    }

    else
    {
      v37 = 0;
    }

    v122 = v37;
  }

  else
  {
    sub_1B1A90C78(v126, &qword_1EB761DE0, &qword_1B1C352C0);
    v117 = 0;
    v122 = 0;
  }

  v126[0] = MEMORY[0x1E69E7CC0];
  if (qword_1EB7615B0 != -1)
  {
    swift_once();
  }

  v68 = qword_1EB772E50;
  v106 = *(qword_1EB772E50 + 16);
  if (v106)
  {
    v69 = 0;
    OUTLINED_FUNCTION_2_13();
    v103 = v70;
    v105 = v68 + v70;
    a1 = v71 + 16;
    v120 = (v71 + 8);
    v72 = MEMORY[0x1E69E7CC0];
    *&v73 = 136315138;
    v112 = v73;
    v104 = v68;
    v116 = v71 + 16;
    v111 = v22;
    while (v69 < *(v68 + 16))
    {
      v16 = v110;
      v118 = v110[9];
      v11 = v107;
      v74 = v124;
      v121 = v110[2];
      v121(v107, v105 + v118 * v69, v124);
      v75 = sub_1B1B314A0(v11, "Unable to list resource folder %s");
      v119 = v16[1];
      (v119)(v11, v74);
      v76 = v75;
      v77 = *(v75 + 16);
      if (v77)
      {
        v109 = v69;
        v108 = v76;
        v78 = &v76[v103];
        a1 = v116;
        v79 = v121;
        do
        {
          v79(v22, v78, v124);
          v80 = sub_1B1C2C0F8();
          v82 = v80;
          v16 = v81;
          if (!v122 || (v117 == v80 ? (v83 = v122 == v81) : (v83 = 0), v83 || (sub_1B1C2D7A8() & 1) != 0))
          {
            v24 = v121;
            v121(v19, v22, v124);
            v84 = objc_allocWithZone(type metadata accessor for TTSAssetAdhocResource());
            v85 = sub_1B1B6360C(v19, v82, v16);
            if (v85)
            {
              v86 = v85;
              v16 = v126;
              MEMORY[0x1B2738320]();
              if (*((v126[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1B1C2CE98();
              }

              sub_1B1C2CEC8();

              (v119)(v22, v124);
              v72 = v126[0];
            }

            else
            {
              v87 = sub_1B1C2D098();
              v88 = v114;
              (v24)(v114, v22, v124);
              if (os_log_type_enabled(v123, v87))
              {
                v89 = OUTLINED_FUNCTION_21_0();
                v113 = v72;
                v90 = v89;
                v24 = swift_slowAlloc();
                v125[0] = v24;
                *v90 = v112;
                v91 = sub_1B1C2C098();
                v92 = v124;
                v93 = v91;
                v95 = v94;
                v11 = v119;
                (v119)(v88, v124);
                v96 = v93;
                v22 = v111;
                v16 = sub_1B1A930E4(v96, v95, v125);
                v19 = v115;

                *(v90 + 4) = v16;
                _os_log_impl(&dword_1B1A8A000, v123, v87, "Skip invalid resource folder '%s'", v90, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v24);
                OUTLINED_FUNCTION_11();
                v72 = v113;
                OUTLINED_FUNCTION_11();
                (v11)(v22, v92);
              }

              else
              {
                v97 = v88;
                v98 = v124;
                v24 = v119;
                v16 = v120;
                (v119)(v97, v124);
                (v24)(v22, v98);
              }

              a1 = v116;
            }
          }

          else
          {

            (v119)(v22, v124);
          }

          v78 += v118;
          --v77;
          v79 = v121;
        }

        while (v77);

        v68 = v104;
        v69 = v109;
      }

      else
      {

        a1 = v116;
      }

      if (++v69 == v106)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_72;
  }

  v72 = MEMORY[0x1E69E7CC0];
LABEL_68:

  if (!(v72 >> 62))
  {

    sub_1B1C2D7B8();
    type metadata accessor for TTSAsset();
    v100 = v72;
    goto LABEL_70;
  }

LABEL_74:
  type metadata accessor for TTSAsset();

  v100 = sub_1B1C2D668();

LABEL_70:

  return v100;
}

uint64_t sub_1B1B314A0(uint64_t a1, const char *a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B1C2C1C8();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_1B1C2C118();
  v31[0] = 0;
  v14 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:0 options:1 error:v31];

  v15 = v31[0];
  if (v14)
  {
    v16 = sub_1B1C2CE78();
    v17 = v15;
  }

  else
  {
    v18 = v31[0];
    v19 = sub_1B1C2C058();

    swift_willThrow();
    v20 = sub_1B1C2D098();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v21 = qword_1ED9AA670;
    (*(v7 + 16))(v11, a1, v4);
    if (os_log_type_enabled(v21, v20))
    {
      v22 = OUTLINED_FUNCTION_21_0();
      v23 = swift_slowAlloc();
      v31[0] = v23;
      *v22 = 136315138;
      sub_1B1B317AC();
      v24 = sub_1B1C2D778();
      v26 = v25;
      (*(v7 + 8))(v11, v4);
      v27 = sub_1B1A930E4(v24, v26, v31);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1B1A8A000, v21, v20, a2, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      (*(v7 + 8))(v11, v4);
    }

    v16 = MEMORY[0x1E69E7CC0];
  }

  v28 = *MEMORY[0x1E69E9840];
  return v16;
}

unint64_t sub_1B1B317AC()
{
  result = qword_1ED9A5260;
  if (!qword_1ED9A5260)
  {
    sub_1B1C2C1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5260);
  }

  return result;
}

uint64_t TextToPhonemeAction.__allocating_init(pool:)()
{
  v0 = swift_allocObject();
  TextToPhonemeAction.init(pool:)();
  return v0;
}

uint64_t TextToPhonemeAction.init(pool:)()
{
  *(v0 + 16) = sub_1B1AA1E5C();
  sub_1B1AA2740();
  v2 = v1;

  *(v0 + 24) = v2;
  return v0;
}

void sub_1B1B318CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27[7] = *MEMORY[0x1E69E9840];
  v4 = sub_1B1B22B9C(a1, a2);
  if (!v4)
  {
    sub_1B1A9EC9C();
    v21 = swift_allocError();
    OUTLINED_FUNCTION_0_14(v21, v22);
    goto LABEL_16;
  }

  v5 = v4;
  v6 = sub_1B1ABF388();
  if (!v6)
  {
    sub_1B1A9EC9C();
    v23 = swift_allocError();
    OUTLINED_FUNCTION_0_14(v23, v24);

    goto LABEL_16;
  }

  v7 = v6;
  v8 = OBJC_IVAR___SiriTTSPhonemeRequest_phonemeSystem;
  swift_beginAccess();
  v9 = *&v5[v8];
  if (v9 < 3)
  {
    if (*(v3 + 24))
    {
      sub_1B1B231C4(0);
    }

    v10 = objc_opt_self();
    v11 = &v5[OBJC_IVAR___SiriTTSPhonemeRequest_text];
    swift_beginAccess();
    v12 = *v11;
    v13 = *(v11 + 1);

    v14 = sub_1B1C2CB28();

    v15 = *(v7 + 24);
    v16 = *(v7 + 32);

    v17 = sub_1B1C2CB28();

    v27[0] = 0;
    v18 = [v10 generateTTSPhonemes:v14 voicePath:v17 phonemeSystem:v9 error:v27];

    v19 = v27[0];
    if (v18)
    {
      sub_1B1C2CB58();
      v20 = v19;

      if (!*(v3 + 16))
      {

        goto LABEL_16;
      }

      if (qword_1EB7615C8 != -1)
      {
        swift_once();
      }

      sub_1B1B18D54();
    }

    else
    {
      v25 = v27[0];
      sub_1B1C2C058();

      swift_willThrow();
    }

LABEL_16:
    v26 = *MEMORY[0x1E69E9840];
    return;
  }

  v27[1] = *&v5[v8];
  sub_1B1C2D7E8();
  __break(1u);
}

uint64_t TextToPhonemeAction.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t TextToPhonemeAction.__deallocating_deinit()
{
  TextToPhonemeAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B1B31C20@<X0>(uint64_t *a1@<X8>)
{
  result = TextToPhonemeAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B31CD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1B31CFC(v4);
}

uint64_t sub_1B1B31CFC(uint64_t a1)
{
  OUTLINED_FUNCTION_19_2();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1B1B31D88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  __swift_allocate_value_buffer(v0, qword_1EB772E58);
  v1 = __swift_project_value_buffer(v0, qword_1EB772E58);
  return sub_1B1B31DE0(v1);
}

uint64_t sub_1B1B31DE0@<X0>(uint64_t a1@<X8>)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1B1C2C1C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - v8;
  sub_1B1B268F0();
  v10 = sub_1B1AE7720();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1B1BE34F8(0xD000000000000020, 0x80000001B1C4BB70, 0x7473696C70, 0xE500000000000000, v10);
    if (v12)
    {
      v13 = v12;
      sub_1B1C2C168();

      (*(v3 + 32))(v9, v7, v2);
      v17 = sub_1B1C2C208();
      v19 = v18;
      v20 = objc_opt_self();
      v21 = sub_1B1C2C298();
      v29[0] = 0;
      v22 = [v20 propertyListWithData:v21 options:0 format:0 error:v29];

      if (v22)
      {
        v23 = v29[0];
        sub_1B1C2D3F8();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
        if (swift_dynamicCast())
        {
          sub_1B1A945F4(0xD000000000000014, 0x80000001B1C4BBA0, v28[1]);
          v25 = v24;

          if (v25)
          {
            sub_1B1C2C188();

            sub_1B1A94524(v17, v19);

            result = (*(v3 + 8))(v9, v2);
            goto LABEL_5;
          }
        }

        (*(v3 + 8))(v9, v2);

        sub_1B1A94524(v17, v19);
      }

      else
      {
        v26 = v29[0];
        v27 = sub_1B1C2C058();

        swift_willThrow();
        sub_1B1A94524(v17, v19);

        (*(v3 + 8))(v9, v2);
      }

      result = __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
LABEL_5:
      v15 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t AlpineTTSAction.init(pool:)()
{
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  v0[4] = sub_1B1ADA774();
  v0[6] = MEMORY[0x1E69E7CC0];
  v0[5] = sub_1B1AA1E5C();
  v1 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v1;
}

uint64_t sub_1B1B32294()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
}

uint64_t AlpineTTSAction.deinit()
{
  sub_1B1B32310();
  v0 = Buffer.deinit();
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

void sub_1B1B32310()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v0 + 48);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v1;

      v5 = (v2 + 40);
      do
      {
        [v4 removeObserver:*(v5 - 1) name:*v5 object:0];
        v5 += 2;
        --v3;
      }

      while (v3);

      v6 = *(v0 + 48);
    }

    *(v0 + 48) = MEMORY[0x1E69E7CC0];
  }
}

void sub_1B1B323C8()
{
  OUTLINED_FUNCTION_11_7();
  v1 = *(v0 + 32);
  if (v1)
  {
    OUTLINED_FUNCTION_19_2();
    if (*(*(v0 + 40) + 16))
    {
      v2 = v1;
      OUTLINED_FUNCTION_10_9();
      OUTLINED_FUNCTION_17_7();
      do
      {
        OUTLINED_FUNCTION_2_14();
        OUTLINED_FUNCTION_16_9();
      }

      while (!v3);

      v4 = *(v0 + 40);
    }

    *(v0 + 40) = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_15_10();
}

void sub_1B1B3244C()
{
  OUTLINED_FUNCTION_11_7();
  v1 = *(v0 + 24);
  if (v1)
  {
    OUTLINED_FUNCTION_19_2();
    if (*(*(v0 + 32) + 16))
    {
      v2 = v1;
      OUTLINED_FUNCTION_10_9();
      OUTLINED_FUNCTION_17_7();
      do
      {
        OUTLINED_FUNCTION_2_14();
        OUTLINED_FUNCTION_16_9();
      }

      while (!v3);

      v4 = *(v0 + 32);
    }

    *(v0 + 32) = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_15_10();
}

uint64_t AlpineTTSAction.__deallocating_deinit()
{
  v0 = AlpineTTSAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1B1B32500()
{
  v1 = v0;
  v2 = sub_1B1C2BD68();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v89 - v12;
  v100 = sub_1B1C2C1C8();
  v14 = OUTLINED_FUNCTION_7(v100);
  v98 = v15;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v97 = &v89 - v21;
  v22 = sub_1B1AA95C4();
  if (v22)
  {
    v23 = v22;
    v93 = v1;
    v95 = v9;
    v92 = v5;
    ObjectType = swift_getObjectType();
    v25 = SynthesizingRequestProtocol.voice.getter(ObjectType);
    v26 = &v25[OBJC_IVAR___SiriTTSSynthesisVoice_name];
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    v27 = *v26;
    v28 = *(v26 + 1);
    v91 = v27;

    if (v28)
    {
      v94 = v23;
      if (qword_1EB7615B8 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v10, qword_1EB772E58);
      sub_1B1AAC2E0(v29, v13);
      v30 = v100;
      if (__swift_getEnumTagSinglePayload(v13, 1, v100) == 1)
      {

        sub_1B1A90C78(v13, &unk_1EB761F00, &qword_1B1C36480);
        sub_1B1A9EC9C();
        swift_allocError();
        *v31 = 1;
        *(v31 + 8) = 0xD00000000000001DLL;
        *(v31 + 16) = 0x80000001B1C4BA40;
        swift_willThrow();
      }

      else
      {
        (*(v98 + 32))(v97, v13, v30);
        if (*(v93 + 40))
        {
          if (qword_1ED9A4DF8 != -1)
          {
            swift_once();
          }

          sub_1B1AEAD14();
        }

        v90 = v2;
        (*(v98 + 16))(v20, v97, v30);
        OUTLINED_FUNCTION_13_9();
        sub_1B1C2BD38();
        if (qword_1ED9A96B8 != -1)
        {
          swift_once();
        }

        v34 = sub_1B1B56E18();
        if (v35)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0;
        }

        if (v35)
        {
          v37 = v35;
        }

        else
        {
          v37 = 0xE000000000000000;
        }

        v38 = 0xE000000000000000;
        v39 = sub_1B1B57084();
        if (v40)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0;
        }

        if (v40)
        {
          v38 = v40;
        }

        sub_1B1C2BD18();
        sub_1B1C2BD58();
        OUTLINED_FUNCTION_9_8(0x3D6B63616361);
        MEMORY[0x1B27381B0](v36, v37);

        OUTLINED_FUNCTION_14_9();
        sub_1B1C2BD58();

        OUTLINED_FUNCTION_9_8(0x20726572616542);
        MEMORY[0x1B27381B0](v41, v38);

        OUTLINED_FUNCTION_14_9();
        sub_1B1C2BD58();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624D0, &unk_1B1C39860);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B1C364D0;
        *(inited + 32) = 0x7475706E69;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = SynthesizingRequestProtocol.text.getter();
        *(inited + 56) = v43;
        *(inited + 64) = 0x6563696F76;
        *(inited + 72) = 0xE500000000000000;
        *(inited + 80) = v91;
        *(inited + 88) = v28;
        *(inited + 96) = 0x6C65646F6DLL;
        *(inited + 104) = 0xE500000000000000;
        v44 = sub_1B1B57304();
        if (v45)
        {
          v46 = v44;
        }

        else
        {
          v46 = 0;
        }

        v47 = 0xE000000000000000;
        if (v45)
        {
          v47 = v45;
        }

        *(inited + 112) = v46;
        *(inited + 120) = v47;
        v48 = sub_1B1C2CAB8();
        v49 = sub_1B1C2BE28();
        v50 = *(v49 + 48);
        v51 = *(v49 + 52);
        swift_allocObject();
        sub_1B1C2BE18();
        aBlock[0] = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
        sub_1B1B3437C();
        v52 = v96;
        sub_1B1C2BE08();
        if (v52)
        {

          if (qword_1ED9A9288 != -1)
          {
            OUTLINED_FUNCTION_3_1();
          }

          v53 = sub_1B1C2C8A8();
          __swift_project_value_buffer(v53, qword_1ED9A9120);
          v54 = v52;
          v55 = sub_1B1C2C888();
          v56 = sub_1B1C2D0B8();

          os_log_type_enabled(v55, v56);
          v57 = v92;
          OUTLINED_FUNCTION_13_9();
          v58 = v100;
          if (v59)
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            *v60 = 138412290;
            v62 = v52;
            v63 = _swift_stdlib_bridgeErrorToNSError();
            *(v60 + 4) = v63;
            *v61 = v63;
            _os_log_impl(&dword_1B1A8A000, v55, v56, "Unable to encode payload: %@", v60, 0xCu);
            sub_1B1A90C78(v61, &qword_1EB7625C0, &qword_1B1C37990);
            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_11();
          }

          else
          {
          }

          v75 = v90;
          v76 = OUTLINED_FUNCTION_8_7();
          v77(v76, v58);
        }

        else
        {
          sub_1B1C2BD48();

          sub_1B1B33224();
          if (qword_1ED9A9288 != -1)
          {
            OUTLINED_FUNCTION_3_1();
          }

          v64 = sub_1B1C2C8A8();
          __swift_project_value_buffer(v64, qword_1ED9A9120);

          v65 = sub_1B1C2C888();
          v66 = sub_1B1C2D0D8();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            aBlock[0] = swift_slowAlloc();
            *v67 = 136315394;
            OUTLINED_FUNCTION_11_0();
            swift_beginAccess();
            sub_1B1B3441C();
            v68 = sub_1B1C2D778();
            v70 = sub_1B1A930E4(v68, v69, aBlock);

            *(v67 + 4) = v70;
            *(v67 + 12) = 2080;
            v71 = sub_1B1C2CAA8();
            v73 = v72;

            v74 = sub_1B1A930E4(v71, v73, aBlock);

            *(v67 + 14) = v74;
            _os_log_impl(&dword_1B1A8A000, v65, v66, "Sending Alpine request, %s, payload: %s", v67, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_13_9();
            OUTLINED_FUNCTION_11();
          }

          else
          {
          }

          v78 = [objc_opt_self() sharedSession];
          OUTLINED_FUNCTION_11_0();
          swift_beginAccess();
          v79 = sub_1B1C2BD28();
          v80 = swift_allocObject();
          swift_weakInit();
          v81 = swift_allocObject();
          v82 = v94;
          *(v81 + 16) = v80;
          *(v81 + 24) = v82;
          aBlock[4] = sub_1B1B343F8;
          aBlock[5] = v81;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B1B33EEC;
          aBlock[3] = &block_descriptor_6;
          v83 = _Block_copy(aBlock);
          v84 = v82;

          v25 = [v78 dataTaskWithRequest:v79 completionHandler:v83];
          _Block_release(v83);

          [v25 resume];
          v57 = v92;
          if (qword_1ED9A4D38 != -1)
          {
            swift_once();
          }

          v85 = qword_1ED9A4D40;
          v86 = swift_allocObject();
          swift_weakInit();

          sub_1B1B3400C(v85, sub_1B1B34400, v86);

          v87 = OUTLINED_FUNCTION_8_7();
          v88(v87, v100);

          v75 = v90;
          OUTLINED_FUNCTION_13_9();
        }

        (*(v57 + 8))(v25, v75);
      }
    }

    else
    {
      sub_1B1A9EC9C();
      swift_allocError();
      *v33 = 6;
      *(v33 + 8) = 0xD000000000000012;
      *(v33 + 16) = 0x80000001B1C4BA20;
      swift_willThrow();
    }
  }

  else
  {
    sub_1B1A9EC9C();
    swift_allocError();
    *v32 = 1;
    *(v32 + 8) = 0xD000000000000019;
    *(v32 + 16) = 0x80000001B1C4BA00;
    swift_willThrow();
  }
}

void sub_1B1B33170()
{
  OUTLINED_FUNCTION_11_7();
  v2 = v1 & 1;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  [*(*(v0 + 48) + 40) lock];
  v3 = *(v0 + 48);
  if (*(v3 + 16) != v2)
  {
    *(v3 + 16) = v2;
    [*(v3 + 40) broadcast];
    v3 = *(v0 + 48);
  }

  [*(v3 + 40) unlock];
  v4 = *(v0 + 24);
  [v4 lock];
  [v4 broadcast];
  [v4 unlock];
  OUTLINED_FUNCTION_15_10();
}

void sub_1B1B33224()
{
  OUTLINED_FUNCTION_11_7();
  v2 = v1 & 1;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  [*(*(v0 + 32) + 40) lock];
  v3 = *(v0 + 32);
  if (*(v3 + 16) != v2)
  {
    *(v3 + 16) = v2;
    [*(v3 + 40) broadcast];
    v3 = *(v0 + 32);
  }

  [*(v3 + 40) unlock];
  v4 = *(v0 + 24);
  [v4 lock];
  [v4 broadcast];
  [v4 unlock];
  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B332D8(uint64_t a1, unint64_t a2, void *a3, void *a4, char *a5, void *a6)
{
  v12 = sub_1B1C2CBC8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v96 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B1C2C0A8();
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B1C2C1C8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v95 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v103 = &v92 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v92 - v25;
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v26 = sub_1B1C2C8A8();
  v27 = __swift_project_value_buffer(v26, qword_1ED9A9120);
  v104 = a3;
  v28 = a3;
  v102 = v27;
  v29 = sub_1B1C2C888();
  v30 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v94 = v19;
    v100 = a6;
    v32 = v31;
    v33 = a4;
    v34 = v18;
    v35 = a1;
    v36 = a2;
    v37 = a5;
    v38 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v28;
    *v38 = v104;
    v39 = v28;
    _os_log_impl(&dword_1B1A8A000, v29, v30, "Received Alpine response, %@", v32, 0xCu);
    sub_1B1A90C78(v38, &qword_1EB7625C0, &qword_1B1C37990);
    v40 = v38;
    a5 = v37;
    a2 = v36;
    a1 = v35;
    v18 = v34;
    a4 = v33;
    MEMORY[0x1B2739FD0](v40, -1, -1);
    v41 = v32;
    a6 = v100;
    v19 = v94;
    MEMORY[0x1B2739FD0](v41, -1, -1);
  }

  if (a4)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v106 = 0;
      v107 = 0xE000000000000000;
      v42 = a4;
      sub_1B1C2D538();
      MEMORY[0x1B27381B0](0x6520656E69706C41, 0xEE00203A726F7272);
      v105 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
      sub_1B1C2D618();
      v43 = v106;
      v44 = v107;
      sub_1B1A9EC9C();
      v45 = swift_allocError();
      *v46 = 1;
      *(v46 + 8) = v43;
      *(v46 + 16) = v44;
      sub_1B1BD2F28(v45);

LABEL_15:
    }
  }

  else if (v104 && (objc_opt_self(), (v47 = swift_dynamicCastObjCClass()) != 0) && a2 >> 60 != 15)
  {
    v48 = v47;
    v49 = v28;
    sub_1B1B1C108(a1, a2);
    v50 = [v48 statusCode];
    v104 = v49;
    if (v50 != 200)
    {
      sub_1B1AA64DC(a1, a2);
      v65 = sub_1B1C2C888();
      v66 = sub_1B1C2D0B8();
      sub_1B1AA9670(a1, a2);
      v67 = os_log_type_enabled(v65, v66);
      v92 = a2;
      v93 = a1;
      if (v67)
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v108[0] = v69;
        *v68 = 136315138;
        sub_1B1C2CBB8();
        v70 = sub_1B1C2CB78();
        if (v71)
        {
          v72 = v71;
        }

        else
        {
          v70 = 0x206E776F6E6B6E55;
          v72 = 0xED0000726F727265;
        }

        v73 = sub_1B1A930E4(v70, v72, v108);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_1B1A8A000, v65, v66, "Failed http response: %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x1B2739FD0](v69, -1, -1);
        MEMORY[0x1B2739FD0](v68, -1, -1);
      }

      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {

        sub_1B1AA9670(v93, v92);
        return sub_1B1B33FB4();
      }

      v106 = 0;
      v107 = 0xE000000000000000;
      sub_1B1C2D538();

      v106 = 0xD000000000000012;
      v107 = 0x80000001B1C4BB00;
      v105 = [v48 statusCode];
      v74 = sub_1B1C2D778();
      MEMORY[0x1B27381B0](v74);

      v75 = v106;
      v76 = v107;
      sub_1B1A9EC9C();
      v77 = swift_allocError();
      *v78 = 1;
      *(v78 + 8) = v75;
      *(v78 + 16) = v76;
      sub_1B1BD2F28(v77);

      sub_1B1AA9670(v93, v92);
      goto LABEL_15;
    }

    v96 = a5;
    v51 = sub_1B1C2C108();
    v106 = (*((*MEMORY[0x1E69E7D40] & *a6) + 0x90))(v51);
    v108[0] = sub_1B1C2D778();
    v108[1] = v52;
    MEMORY[0x1B27381B0](1986098990, 0xE400000000000000);
    v100 = a6;
    v53 = v97;
    v54 = v98;
    v55 = v99;
    (*(v98 + 104))(v97, *MEMORY[0x1E6968F70], v99);
    sub_1B1A8EDAC();
    v56 = v101;
    v57 = v103;
    sub_1B1C2C1B8();
    (*(v54 + 8))(v53, v55);

    v58 = *(v19 + 8);
    v58(v57, v18);
    sub_1B1C2C308();
    v59 = v100;
    type metadata accessor for AudioData();
    v60 = v56;
    v61 = v95;
    (*(v19 + 16))(v95, v60, v18);
    v79 = AudioData.__allocating_init(audioFileURL:)(v61);
    v80 = v58;
    v103 = v18;
    v81 = v104;
    v93 = a1;
    v82 = a2;
    type metadata accessor for DataContainer();
    v83 = swift_allocObject();
    *(v83 + 16) = sub_1B1C2CAB8();
    v84 = v79;
    sub_1B1ACC2E4(v79);
    v85 = v59;
    sub_1B1ACFA84(v59);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v87 = *(Strong + 40);
      v88 = v87;

      if (v87)
      {
        if (qword_1ED9A4EA8 != -1)
        {
          swift_once();
        }

        [v88 postNotificationName:qword_1ED9A4EB0 object:v84];
      }
    }

    swift_beginAccess();
    v89 = swift_weakLoadStrong();
    if (v89)
    {
      v90 = *(v89 + 40);
      v91 = v90;

      if (v90)
      {
        if (qword_1ED9A4E88 != -1)
        {
          swift_once();
        }

        AudioData.duration.getter();
        sub_1B1ADED40();
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1B1AA81A8();
    }

    else
    {
    }

    sub_1B1AA9670(v93, v82);
    v80(v101, v103);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1B1A9EC9C();
      v62 = swift_allocError();
      *v63 = 1;
      *(v63 + 8) = 0xD000000000000011;
      *(v63 + 16) = 0x80000001B1C4BAE0;
      sub_1B1BD2F28(v62);
      goto LABEL_15;
    }
  }

  return sub_1B1B33FB4();
}

uint64_t sub_1B1B33EEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_1B1C2C2B8();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_1B1AA9670(v6, v11);
}

uint64_t sub_1B1B33FB4()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1B33224();
  }

  return result;
}

uint64_t sub_1B1B3400C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 40);
  if (v5)
  {
    v8 = result;
    v9 = v5;
    v10 = NSNotificationCenter.addObserver(event:callback:)(v8, a2, a3);
    swift_beginAccess();
    swift_unknownObjectRetain();
    v11 = v8;
    sub_1B1B36ED4();
    v12 = *(*(v4 + 48) + 16);
    sub_1B1B3DB74(v12);
    v13 = *(v4 + 48);
    *(v13 + 16) = v12 + 1;
    v14 = v13 + 16 * v12;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    *(v4 + 48) = v13;
    swift_endAccess();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1B1B340E4()
{
  OUTLINED_FUNCTION_11_7();
  v3 = *(v0 + 32);
  if (v3)
  {
    OUTLINED_FUNCTION_5_9(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_0();
    swift_unknownObjectRetain();
    v2;
    sub_1B1B36ED4();
    v4 = *(*(v0 + 40) + 16);
    sub_1B1B3DB74(v4);
    v5 = *(v0 + 40);
    OUTLINED_FUNCTION_1_12(v4 + 1);
    *(v0 + 40) = v6;
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15_10();
}

void sub_1B1B34180()
{
  OUTLINED_FUNCTION_11_7();
  v3 = *(v0 + 24);
  if (v3)
  {
    OUTLINED_FUNCTION_5_9(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_0();
    swift_unknownObjectRetain();
    v2;
    sub_1B1B36ED4();
    v4 = *(*(v0 + 32) + 16);
    sub_1B1B3DB74(v4);
    v5 = *(v0 + 32);
    OUTLINED_FUNCTION_1_12(v4 + 1);
    *(v0 + 32) = v6;
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15_10();
}

void sub_1B1B3421C()
{
  OUTLINED_FUNCTION_11_7();
  v3 = *(v0 + 48);
  if (v3)
  {
    OUTLINED_FUNCTION_5_9(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_0();
    swift_unknownObjectRetain();
    v2;
    sub_1B1B36ED4();
    v4 = *(*(v0 + 56) + 16);
    sub_1B1B3DB74(v4);
    v5 = *(v0 + 56);
    OUTLINED_FUNCTION_1_12(v4 + 1);
    *(v0 + 56) = v6;
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B342DC@<X0>(uint64_t *a1@<X8>)
{
  result = AlpineTTSAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t (*sub_1B1B34328())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_1B1B3437C()
{
  result = qword_1EB7624D8;
  if (!qword_1EB7624D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB761EE0, &unk_1B1C38950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7624D8);
  }

  return result;
}

unint64_t sub_1B1B3441C()
{
  result = qword_1EB7624E0;
  if (!qword_1EB7624E0)
  {
    sub_1B1C2BD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7624E0);
  }

  return result;
}

id sub_1B1B34578()
{
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1B1C2CB28();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, 0);

  if (!v3)
  {

    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = sub_1B1C2CB28();
    v4 = [v4 containsObject_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v4;
}

id sub_1B1B34664()
{
  result = sub_1B1B34688();
  byte_1EB772D29 = result & 1;
  return result;
}

id sub_1B1B34688()
{
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1B1C2CB28();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, 0);

  if (!v3)
  {

    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    swift_unknownObjectRetain();
    v5 = sub_1B1C2CB28();
    v4 = [v4 containsObject_];

    swift_unknownObjectRelease_n();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v4;
}

dispatch_semaphore_t sub_1B1B347A4()
{
  result = dispatch_semaphore_create(1);
  qword_1ED9A9928 = result;
  return result;
}

uint64_t sub_1B1B347C8(void *a1)
{
  if (qword_1ED9A98D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED9A98D8;
  sub_1B1AB940C();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_18_0();

  if (v4)
  {
    return 1;
  }

  if (qword_1ED9A98B8 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED9A98C0;
  v6 = OUTLINED_FUNCTION_18_0();

  if (v6)
  {
    return 1;
  }

  if (qword_1ED9A98A8 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED9A98B0;
  v8 = OUTLINED_FUNCTION_18_0();

  if (v8)
  {
    return 1;
  }

  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v10 = qword_1ED9A9980;
  v11 = OUTLINED_FUNCTION_18_0();

  if ((v11 & 1) == 0)
  {
    if (qword_1ED9A9850 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED9A97E0;
    v13 = OUTLINED_FUNCTION_18_0();

    if ((v13 & 1) == 0)
    {
      if (qword_1ED9A9960 != -1)
      {
        OUTLINED_FUNCTION_12_4();
      }

      v14 = qword_1ED9A9968;
      v15 = OUTLINED_FUNCTION_18_0();

      if ((v15 & 1) == 0)
      {
        sub_1B1C2D0C8();
        if (qword_1ED9A99B8 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1B1C361C0;
        v17 = [a1 string];
        v18 = sub_1B1C2CB58();
        v20 = v19;

        *(v16 + 56) = MEMORY[0x1E69E6158];
        *(v16 + 64) = sub_1B1AC9204();
        *(v16 + 32) = v18;
        *(v16 + 40) = v20;
        sub_1B1C2C7C8();
      }
    }
  }

  return 0;
}

uint64_t NSNotificationCenter.post<A>(event:object:)(uint64_t a1)
{
  [v1 postNotificationName:a1 object:sub_1B1C2D798()];

  return swift_unknownObjectRelease();
}

uint64_t sub_1B1B34B00()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_3_11();
  qword_1ED9A4D40 = result;
  return result;
}

uint64_t sub_1B1B34B50()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4D88 = result;
  return result;
}

uint64_t sub_1B1B34BA8()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_3_11();
  qword_1ED9A4D50 = result;
  return result;
}

uint64_t sub_1B1B34BF8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4D98 = result;
  return result;
}

uint64_t sub_1B1B34C50()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_3_11();
  qword_1ED9A4D60 = result;
  return result;
}

uint64_t sub_1B1B34CA0()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4DC8 = result;
  return result;
}

uint64_t sub_1B1B34CF8()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_5_10();
  qword_1ED9A4E00 = result;
  return result;
}

uint64_t sub_1B1B34D48()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_4_9();
  qword_1EB761028 = result;
  return result;
}

uint64_t sub_1B1B34D98()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_4_9();
  qword_1ED9A4E90 = result;
  return result;
}

uint64_t sub_1B1B34DE8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4E48 = result;
  return result;
}

uint64_t sub_1B1B34E40()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_4_9();
  qword_1ED9A4EB0 = result;
  return result;
}

uint64_t sub_1B1B34E90()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4DA8 = result;
  return result;
}

uint64_t sub_1B1B34EE8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1EB7624E8 = result;
  return result;
}

uint64_t sub_1B1B34F40()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_5_10();
  qword_1ED9A4DE8 = result;
  return result;
}

uint64_t sub_1B1B34F90()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4EC0 = result;
  return result;
}

uint64_t sub_1B1B34FE8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4DD8 = result;
  return result;
}

uint64_t sub_1B1B35040()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4E60 = result;
  return result;
}

uint64_t sub_1B1B35098()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_3_11();
  qword_1ED9A4D28 = result;
  return result;
}

uint64_t sub_1B1B350E8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4CE0 = result;
  return result;
}

uint64_t sub_1B1B35140()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4CF8 = result;
  return result;
}

uint64_t sub_1B1B35198()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4D10 = result;
  return result;
}

uint64_t sub_1B1B351F0()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_5_10();
  qword_1ED9A52D8 = result;
  return result;
}

uint64_t sub_1B1B35240()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_5_10();
  qword_1ED9A4E30 = result;
  return result;
}

uint64_t sub_1B1B35290()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4DB8 = result;
  return result;
}

uint64_t sub_1B1B352E8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4D70 = result;
  return result;
}

uint64_t sub_1B1B35340()
{
  result = sub_1B1C2CB28();
  qword_1ED9A4E18 = result;
  return result;
}

uint64_t sub_1B1B3539C()
{
  result = sub_1B1C2CB28();
  qword_1EB760FF0 = result;
  return result;
}

uint64_t sub_1B1B353F8()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_5_10();
  qword_1EB761018 = result;
  return result;
}

uint64_t sub_1B1B35448()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_3_11();
  qword_1EB760FE0 = result;
  return result;
}

uint64_t sub_1B1B35498()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_3_11();
  qword_1EB760FC8 = result;
  return result;
}

uint64_t sub_1B1B354E8()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_4_9();
  qword_1ED9A4EA0 = result;
  return result;
}

uint64_t sub_1B1B35538()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4CC8 = result;
  return result;
}

uint64_t sub_1B1B35590()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4CB0 = result;
  return result;
}

uint64_t sub_1B1B355E8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4C98 = result;
  return result;
}

uint64_t sub_1B1B35640()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1EB760FB0 = result;
  return result;
}

uint64_t sub_1B1B35698()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_4_9();
  qword_1ED9A4E78 = result;
  return result;
}

uint64_t sub_1B1B356C4()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1EB761000 = result;
  return result;
}

id NSNotificationCenter.addObserver<A>(event:callback:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_2_16();
  v15[2] = v10;
  v15[3] = &block_descriptor_6_0;
  v11 = _Block_copy(v15);
  v12 = a1;

  v13 = [v4 addObserverForName:v12 object:0 queue:0 usingBlock:v11];
  _Block_release(v11);
  return v13;
}

void sub_1B1B35808(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v41 = a3;
  v42 = a2;
  v7 = sub_1B1C2BEE8();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B1C2D2B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - v15;
  v17 = *(a5 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v16, 0, 1, a5);
    (*(v17 + 32))(v20, v16, a5);
    v41(v20);
    (*(v17 + 8))(v20, a5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, a5);
    (*(v12 + 8))(v16, v11);
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v22 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v22, qword_1ED9A9120);
    v24 = v43;
    v23 = v44;
    (*(v43 + 16))(v10, a1, v44);
    v25 = v42;
    v26 = sub_1B1C2C888();
    v27 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v28 = 136315650;
      v29 = sub_1B1C2CB58();
      v31 = sub_1B1A930E4(v29, v30, &v45);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = sub_1B1C2D968();
      v34 = sub_1B1A930E4(v32, v33, &v45);

      *(v28 + 14) = v34;
      *(v28 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A9937C(v46);
      v46[0] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v35 = sub_1B1C2CBD8();
      v37 = v36;
      (*(v24 + 8))(v10, v23);
      v38 = sub_1B1A930E4(v35, v37, &v45);

      *(v28 + 24) = v38;
      _os_log_impl(&dword_1B1A8A000, v26, v27, "Event '%s' expect associated object as %s, got: %s", v28, 0x20u);
      v39 = v42;
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v39, -1, -1);
      MEMORY[0x1B2739FD0](v28, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v10, v23);
    }
  }
}

uint64_t static SHA256.preinstalledAudioHash(request:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return sub_1B1AD8B64(a1, ObjectType);
}

void sub_1B1B35CF8()
{
  OUTLINED_FUNCTION_53_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762560, &qword_1B1C38118);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  if (__swift_getEnumTagSinglePayload(v3, 1, v12) == 1)
  {
    sub_1B1A90C78(v3, &unk_1EB762560, &qword_1B1C38118);
    OUTLINED_FUNCTION_33();
    sub_1B1B7081C(v13);

    sub_1B1A90C78(v7, &unk_1EB762560, &qword_1B1C38118);
  }

  else
  {
    sub_1B1B37D08(v3, v11);
    v14 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v1;
    OUTLINED_FUNCTION_37_1();
    sub_1B1B37880(v15, v16, v17);

    *v1 = v19;
  }

  OUTLINED_FUNCTION_34_3();
}

uint64_t sub_1B1B35E7C()
{
  v0 = sub_1B1C2D6C8();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1B35EC8(uint64_t a1)
{
  if (a1 == 7005)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 7001)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B1B35F04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1B35E7C();
  *a2 = result;
  return result;
}

uint64_t sub_1B1B35F34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1AE53F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1B1B35F60(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  type metadata accessor for TTSAssetUAFStrategy();
  swift_initStaticObject();
  v7 = sub_1B1B67EAC();
  type metadata accessor for TTSAssetTrialStrategy();
  swift_initStaticObject();
  v8 = sub_1B1B3BEDC();
  sub_1B1ABF93C(v8);
  v9 = 0;
  v10 = *(v7 + 16);
  v11 = v7 + 40;
  v24 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v12 = (v11 + 16 * v9);
  while (1)
  {
    if (v10 == v9)
    {

      return;
    }

    if (v9 >= *(v7 + 16))
    {
      break;
    }

    ++v9;
    v13 = v12 + 2;
    v14 = *(v12 - 1);
    v15 = *v12;

    v16 = sub_1B1B36180(a1, a2, a3, a4, v14, v15);
    v18 = v17;

    v12 = v13;
    if (v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = *(v24 + 16);
        sub_1B1A9ED54();
        v24 = v22;
      }

      v19 = *(v24 + 16);
      if (v19 >= *(v24 + 24) >> 1)
      {
        sub_1B1A9ED54();
        v24 = v23;
      }

      *(v24 + 16) = v19 + 1;
      v20 = v24 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v18;
      v11 = v7 + 40;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1B1B36180(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v33 = HIDWORD(a1);
  v12 = HIDWORD(a2);
  v13 = HIDWORD(a3);
  v14 = HIDWORD(a4);
  if (sub_1B1C2CDA8())
  {
    v35 = 0x657461766972702FLL;
    v36 = 0xE800000000000000;
    MEMORY[0x1B27381B0](a5, a6);
    v15 = 0x657461766972702FLL;
    a6 = 0xE800000000000000;
  }

  else
  {

    v15 = a5;
  }

  v16 = *MEMORY[0x1E69E9BA8];
  v17 = *MEMORY[0x1E69E9BE0];
  v32 = v15;
  v34 = a6;
  sub_1B1C2CBF8();
  v35 = __PAIR64__(v33, v11);
  v36 = __PAIR64__(v12, v10);
  v37 = v9;
  v38 = v13;
  v39 = v8;
  v40 = v14;
  v18 = sandbox_extension_issue_file_to_process();

  if (v18)
  {
    v19 = MEMORY[0x1B27380E0](v18);
    if (v20)
    {
      v21 = sub_1B1C2D098();
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      v22 = qword_1ED9AA668;
      if (os_log_type_enabled(qword_1ED9AA668, v21))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v35 = v24;
        *v23 = 136315138;
        v25 = sub_1B1A930E4(v32, v34, &v35);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_1B1A8A000, v22, v21, "Issued sandbox extension to path %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x1B2739FD0](v24, -1, -1);
        MEMORY[0x1B2739FD0](v23, -1, -1);
      }

      else
      {
      }

      free(v18);
    }

    else
    {

      sub_1B1C2D0B8();
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      sub_1B1C2C7C8();
      free(v18);
    }
  }

  else
  {
    v26 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v27 = qword_1ED9AA668;
    if (os_log_type_enabled(qword_1ED9AA668, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136446210;
      v30 = sub_1B1A930E4(v32, a6, &v35);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_1B1A8A000, v27, v26, "Unable to issue sandbox extension to path '%{public}s'", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1B2739FD0](v29, -1, -1);
      MEMORY[0x1B2739FD0](v28, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v19;
}

void *sub_1B1B36550()
{
  type metadata accessor for TTSAssetProxyStrategy();
  v0 = swift_allocObject();
  result = sub_1B1B36D74();
  qword_1ED9AA630 = v0;
  return result;
}

uint64_t sub_1B1B3658C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B1B365EC()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = v0;
    type metadata accessor for TTSAsset();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762510, &unk_1B1C380C0);
    sub_1B1AE6CC8();
    v3 = MEMORY[0x1E69E7CC0];
    sub_1B1C2CAB8();
    sub_1B1AEFB90();
    v5 = v4;

    sub_1B1C2D0A8();
    if (qword_1ED9A9500 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v6 = OUTLINED_FUNCTION_54_0();
      *(v6 + 16) = xmmword_1B1C361C0;
      if ([v5 respondsToSelector_])
      {
        v7 = [v5 debugDescription];
        v8 = v5;
        v9 = sub_1B1C2CB58();
        v11 = v10;
      }

      else
      {
        v8 = v5;
        v9 = 0;
        v11 = 0;
      }

      *(v6 + 56) = MEMORY[0x1E69E6158];
      *(v6 + 64) = sub_1B1AC9204();
      if (v11)
      {
        v13 = v9;
      }

      else
      {
        v13 = 0;
      }

      v14 = 0xE000000000000000;
      if (v11)
      {
        v14 = v11;
      }

      *(v6 + 32) = v13;
      *(v6 + 40) = v14;
      sub_1B1C2C7C8();

      xpc_connection_send_message_with_reply_sync(v1, v8);
      swift_getObjectType();
      if (!sub_1B1AE03A8(7))
      {
        break;
      }

      swift_getObjectType();
      sub_1B1AE5508(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        swift_unknownObjectRelease();
        break;
      }

      v5 = v25;
      v15 = v25[2];
      if (!v15)
      {
        swift_unknownObjectRelease();

        break;
      }

      v23 = v2;
      v25 = v3;
      sub_1B1B2FB58(0, v15, 0);
      v1 = 0;
      v3 = 0;
      v16 = v25;
      v2 = v5 + 5;
      while (v1 < v5[2])
      {
        v17 = *v2;
        v26[0] = *(v2 - 1);
        v26[1] = v17;
        sub_1B1B36A24(v26, &v24);
        v18 = v24;
        v25 = v16;
        v20 = v16[2];
        v19 = v16[3];
        if (v20 >= v19 >> 1)
        {
          v21 = OUTLINED_FUNCTION_19_1(v19);
          sub_1B1B2FB58(v21, v20 + 1, 1);
          v16 = v25;
        }

        v1 = (v1 + 1);
        v16[2] = v20 + 1;
        v16[v20 + 4] = v18;
        v2 += 2;
        if (v15 == v1)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v22 = v23[5];
          v23[5] = v16;
        }
      }

      __break(1u);
LABEL_31:
      OUTLINED_FUNCTION_12_6();
    }

    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12();
    }

    sub_1B1C2C7C8();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12();
    }

    return sub_1B1C2C7C8();
  }
}

char *sub_1B1B36A24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1B1C2CBF8();
  v5 = sandbox_extension_consume();

  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = sub_1B1C2D098();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED9AA668;
    result = os_log_type_enabled(qword_1ED9AA668, v6);
    if (!result)
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1B1A930E4(v3, v4, &v20);
    _os_log_impl(&dword_1B1A8A000, v7, v6, "Consume sandbox extension %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2739FD0](v10, -1, -1);
    v11 = v9;
LABEL_11:
    result = MEMORY[0x1B2739FD0](v11, -1, -1);
LABEL_12:
    *a2 = v5;
    return result;
  }

  v12 = sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED9AA668;
  result = os_log_type_enabled(qword_1ED9AA668, v12);
  if (!result)
  {
    goto LABEL_12;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v20 = v15;
  *v14 = 136315650;
  *(v14 + 4) = sub_1B1A930E4(v3, v4, &v20);
  *(v14 + 12) = 1024;
  *(v14 + 14) = MEMORY[0x1B2737E10]();
  *(v14 + 18) = 2080;
  v16 = MEMORY[0x1B2737E10]();
  result = strerror(v16);
  if (result)
  {
    v17 = sub_1B1C2CCF8();
    v19 = sub_1B1A930E4(v17, v18, &v20);

    *(v14 + 20) = v19;
    _os_log_impl(&dword_1B1A8A000, v13, v12, "Failed to consume sandbox extension %s, errno: %d, error: %s", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v15, -1, -1);
    v11 = v14;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B36D08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  return v0;
}

uint64_t sub_1B1B36D40()
{
  sub_1B1B36D08();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void *sub_1B1B36D74()
{
  v0[2] = 0xD000000000000023;
  v0[3] = 0x80000001B1C4C600;
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = dispatch_semaphore_create(1);
  return v0;
}

unint64_t sub_1B1B36DD0()
{
  v1 = *(v0 + 40);
  sub_1B1C2D498();
  v2 = OUTLINED_FUNCTION_107();

  return sub_1B1B36E10(v2, v3);
}

unint64_t sub_1B1B36E10(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1B1B37DE8(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1B2738970](v8, a1);
    sub_1B1B08B44(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1B1B36F34(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void *sub_1B1B36F90(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

void *sub_1B1B3700C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_1B1B37088(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_1B1B37108(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762490, &qword_1B1C37E70);
  v4 = *(sub_1B1C2C1C8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B1B37204(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1B1B37088(v2, 0);

    MEMORY[0x1B2738A10](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1B1C2D468();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1B1B372A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1B1B37108((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(sub_1B1C2C1C8() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

id sub_1B1B37394(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1B1AEBB3C();
  OUTLINED_FUNCTION_1_14(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    result = sub_1B1C2D818();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7625B8, &unk_1B1C38170);
  if (sub_1B1C2D628())
  {
    v13 = *v3;
    sub_1B1AEBB3C();
    OUTLINED_FUNCTION_23_7();
    if (!v15)
    {
      goto LABEL_14;
    }

    v11 = v14;
  }

  v16 = *v3;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_1B1AD6C78(v11, a2, a1, v16);

    return a2;
  }
}

uint64_t sub_1B1B374BC()
{
  OUTLINED_FUNCTION_53_0();
  v4 = OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_1_14(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_1B1C2D818();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762578, &qword_1B1C38130);
  if (OUTLINED_FUNCTION_9_10())
  {
    OUTLINED_FUNCTION_32_4();
    OUTLINED_FUNCTION_6_10();
    if (!v8)
    {
      goto LABEL_14;
    }

    v3 = v7;
  }

  if (v2)
  {
    v9 = *(*v1 + 56);
    v10 = *(v9 + 8 * v3);
    *(v9 + 8 * v3) = v0;
    OUTLINED_FUNCTION_34_3();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_13_10();
    sub_1B1B37A20(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_34_3();
  }
}

uint64_t sub_1B1B3758C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_36_3();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_1_14(v4, v5);
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762590, &unk_1B1C38148);
  if ((OUTLINED_FUNCTION_47_3() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v1;
  OUTLINED_FUNCTION_30_4();
  v12 = sub_1B1A8EB10();
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_1B1C2D818();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  if (v10)
  {
    v14 = (*(*v1 + 56) + 16 * v9);
    v15 = v14[1];
    *v14 = v0;
    v14[1] = v3;
    OUTLINED_FUNCTION_26_1();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_42_5();
    sub_1B1B37A68(v18, v19, v20, v21, v3, v22);
    OUTLINED_FUNCTION_26_1();
  }
}

uint64_t sub_1B1B37694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_36_3();
  v30 = v11;
  v12 = OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_1_14(v12, v13);
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if ((OUTLINED_FUNCTION_47_3() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *v8;
  OUTLINED_FUNCTION_30_4();
  v20 = sub_1B1A8EB10();
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_13:
    result = sub_1B1C2D818();
    __break(1u);
    return result;
  }

  v17 = v20;
LABEL_5:
  if (v18)
  {
    v22 = (*(*v8 + 56) + 16 * v17);
    v23 = v22[1];
    *v22 = v7;
    v22[1] = v30;
  }

  else
  {
    v25 = OUTLINED_FUNCTION_42_5();
    sub_1B1B37AB4(v25, v26, v27, v28, v30, v29);
  }
}

void sub_1B1B377C4()
{
  OUTLINED_FUNCTION_53_0();
  v4 = OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_1_14(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1B1C2D818();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762588, &qword_1B1C38140);
  if (OUTLINED_FUNCTION_9_10())
  {
    OUTLINED_FUNCTION_32_4();
    OUTLINED_FUNCTION_6_10();
    if (!v8)
    {
      goto LABEL_12;
    }

    v3 = v7;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_34_3();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_13_10();
    sub_1B1B37A20(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_34_3();
  }
}

uint64_t sub_1B1B37880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B1A8EB10();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762570, &qword_1B1C39C00);
  if ((sub_1B1C2D628() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1B1A8EB10();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1B1C2D818();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = v17 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120) - 8) + 72) * v11;

    return sub_1B1B37D78(a1, v18);
  }

  else
  {
    sub_1B1B37B00(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_1B1B37A20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1B1B37A68(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1B1B37AB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_8_9(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_1B1B37B00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
  result = sub_1B1B37D08(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1B1B37BA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_8_9(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

unint64_t sub_1B1B37BEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_7_10(a1, a2, a3, a4);
  *(v7 + 8 * result) = v6;
  *(*(v5 + 56) + 8 * result) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
  }

  return result;
}

uint64_t sub_1B1B37C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_2_17(a1, a2, a3);
  sub_1B1A9EC44(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_35_6();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_36();
    v8 = MEMORY[0x1B2738A20](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B1B37C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_2_17(a1, a2, a3);
  sub_1B1A9EC44(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_35_6();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_36();
    v8 = MEMORY[0x1B2738A20](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B1B37D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1B37D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1B37E44()
{
  result = qword_1ED9A90A0;
  if (!qword_1ED9A90A0)
  {
    type metadata accessor for TTSAssetProperty(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A90A0);
  }

  return result;
}

uint64_t _s8ProxyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8ProxyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B1B38004()
{
  result = qword_1EB761080[0];
  if (!qword_1EB761080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB761080);
  }

  return result;
}

id sub_1B1B38068()
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_75();
  result = sub_1B1AAFB2C();
  qword_1ED9A98B0 = result;
  return result;
}

id sub_1B1B38158()
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_75();
  result = sub_1B1AAFB2C();
  qword_1ED9A98C0 = result;
  return result;
}

id sub_1B1B381FC()
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_75();
  result = sub_1B1AAFB2C();
  qword_1ED9A98D8 = result;
  return result;
}

id sub_1B1B382C8()
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_75();
  result = sub_1B1AAFB2C();
  qword_1ED9A9968 = result;
  return result;
}

Swift::String __swiftcall TTSAssetType.pathComponent()()
{
  v1 = [v0 string];
  sub_1B1C2CB58();

  sub_1B1A8EDAC();
  v2 = sub_1B1C2D398();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

id sub_1B1B38494()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  result = sub_1B1BFFEC8();
  qword_1EB7625D0 = result;
  return result;
}

id sub_1B1B38540()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  result = sub_1B1BFFEC8();
  qword_1ED9A9728 = result;
  return result;
}

id sub_1B1B385EC()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  result = sub_1B1BFFEC8();
  qword_1ED9A94B8 = result;
  return result;
}

id sub_1B1B38694()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  result = sub_1B1BFFEC8();
  qword_1EB761318 = result;
  return result;
}

id sub_1B1B38730()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  result = sub_1B1BFFEC8();
  qword_1ED9A4F10 = result;
  return result;
}

id sub_1B1B3881C()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  result = sub_1B1BFFEC8();
  qword_1ED9A4F00 = result;
  return result;
}

uint64_t sub_1B1B38BB8()
{
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  result = sub_1B1ABAA54(1635018082, 0xE400000000000000);
  qword_1EB7625D8 = result;
  return result;
}

id sub_1B1B38C54()
{
  sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
  v0 = OUTLINED_FUNCTION_1_15();
  result = sub_1B1B67B98((v0 | 0x69746375646F0000));
  qword_1EB7625E0 = result;
  return result;
}

id sub_1B1B38CF8()
{
  sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
  result = sub_1B1B67B98(0x696C69626176696CLL);
  qword_1EB7625E8 = result;
  return result;
}

id sub_1B1B38DA0()
{
  sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
  result = sub_1B1B67B98(0x676E6967617473);
  qword_1EB7625F0 = result;
  return result;
}

uint64_t TTSAssetServer.isEqual(_:)(uint64_t a1)
{
  sub_1B1A9D80C(a1, v40);
  if (v41)
  {
    sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
    if (swift_dynamicCast())
    {
      v3 = [v1 string];
      v4 = sub_1B1C2CB58();
      v6 = v5;

      v7 = v38[1];
      v8 = [v7 string];
      v9 = sub_1B1C2CB58();
      v11 = v10;

      if (v4 == v9 && v6 == v11)
      {

        goto LABEL_16;
      }

      v13 = sub_1B1C2D7A8();

      if (v13)
      {

LABEL_9:
LABEL_16:
        v21 = 1;
        return v21 & 1;
      }

      type metadata accessor for TTSAssetMAStrategy();
      v23 = [v1 string];
      v24 = sub_1B1C2CB58();
      v26 = v25;

      v27 = sub_1B1B39404(v24, v26);
      v29 = v28;

      v30 = [v7 string];

      v31 = sub_1B1C2CB58();
      v33 = v32;

      v34 = sub_1B1B39404(v31, v33);
      v36 = v35;

      if (v29)
      {
        if (v36)
        {
          if (v27 != v34 || v29 != v36)
          {
            v21 = sub_1B1C2D7A8();

            return v21 & 1;
          }

          goto LABEL_9;
        }
      }

      else
      {

        if (!v36)
        {
          goto LABEL_16;
        }
      }

      v21 = 0;
      return v21 & 1;
    }
  }

  else
  {
    sub_1B1A9937C(v40);
  }

  sub_1B1A9D80C(a1, v40);
  v14 = v41;
  if (v41)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v40, v41);
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x1EEE9AC00](v15);
    v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19);
    v20 = sub_1B1C2D798();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v20 = 0;
  }

  v39.receiver = v1;
  v39.super_class = TTSAssetServer;
  v21 = objc_msgSendSuper2(&v39, sel_isEqual_, v20);
  swift_unknownObjectRelease();
  return v21 & 1;
}

uint64_t TTSAssetServer.hash.getter()
{
  type metadata accessor for TTSAssetMAStrategy();
  v1 = [v0 string];
  v2 = sub_1B1C2CB58();
  v4 = v3;

  sub_1B1B39404(v2, v4);
  v6 = v5;

  if (!v6)
  {
    return 0;
  }

  sub_1B1A8EDAC();
  v7 = sub_1B1C2D3B8();

  return v7;
}

unint64_t VoiceBrand.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B1B39300@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VoiceBrand.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1B1B39348()
{
  result = qword_1EB7625F8;
  if (!qword_1EB7625F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7625F8);
  }

  return result;
}

unint64_t sub_1B1B393A0()
{
  result = qword_1EB762600;
  if (!qword_1EB762600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB762520, &qword_1B1C39820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762600);
  }

  return result;
}

uint64_t sub_1B1B39404(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B1C2BEA8();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    OUTLINED_FUNCTION_9_11();
    OUTLINED_FUNCTION_5_13();
    if ((sub_1B1C2CDB8() & 1) == 0)
    {
      v44 = a1;
      v45 = a2;

      v12 = OUTLINED_FUNCTION_9_11();
      MEMORY[0x1B27381B0](v12);

      a1 = v44;
      a2 = v45;
    }

    OUTLINED_FUNCTION_5_13();
    v13 = sub_1B1C2CDA8();

    if (v13)
    {
      v44 = 0xD00000000000001DLL;
      v45 = 0x80000001B1C4CBD0;
      v14 = OUTLINED_FUNCTION_72();
      MEMORY[0x1B27381B0](v14);
    }

    else
    {
      OUTLINED_FUNCTION_5_13();
      if (sub_1B1C2CDA8())
      {
        OUTLINED_FUNCTION_9_11();
        OUTLINED_FUNCTION_5_13();
        v43 = sub_1B1BCFF9C(v15, v16, v17, v18);
        if ((v19 & 1) == 0)
        {
          v20 = HIBYTE(a2) & 0xF;
          if ((a2 & 0x2000000000000000) == 0)
          {
            v20 = a1 & 0xFFFFFFFFFFFFLL;
          }

          v21 = 4 * v20;
          v22 = (v7 + 8);
          for (i = 15; i >> 14 != v21; i = sub_1B1C2CC78())
          {
            v24 = sub_1B1C2CDD8();
            v26 = v25;
            sub_1B1C2BE48();
            sub_1B1BC8E3C(v24, v26);
            LOBYTE(v24) = sub_1B1C2BE88();

            result = (*v22)(v11, v4);
            if (v24)
            {
              if (i >> 14 >= v43 >> 14)
              {
                v28 = v43;
                OUTLINED_FUNCTION_5_13();
                v29 = sub_1B1C2CE08();
                v48 = 0xD000000000000023;
                v49 = 0x80000001B1C4CBA0;
                v44 = v29;
                v45 = v30;
                v46 = v31;
                v47 = v32;
                sub_1B1B3B7CC();
                OUTLINED_FUNCTION_14_10();

                v34 = v48;
                v33 = v49;
                v35 = sub_1B1B5E6F8(v28, a1, a2);
                v37 = v36;
                v39 = v38;
                v41 = v40;

                v48 = v34;
                v49 = v33;
                v44 = v35;
                v45 = v37;
                v46 = v39;
                v47 = v41;

                OUTLINED_FUNCTION_14_10();

                return OUTLINED_FUNCTION_72();
              }

              __break(1u);
              return result;
            }
          }
        }
      }
    }
  }

  return OUTLINED_FUNCTION_72();
}

void sub_1B1B39710(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69B1948]) init];
  [v2 setDiscretionary_];
  [v2 setAllowsExpensiveAccess_];
  if (qword_1EB7610B8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB772C38;
  [qword_1EB772C38 lock];
  if (__OFADD__(qword_1EB772C30, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EB772C30;
    [v3 unlock];
    v4 = objc_opt_self();
    v5 = [a1 string];
    v6 = sub_1B1C2CB58();
    v8 = v7;

    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v13[4] = sub_1B1B3B6E4;
    v13[5] = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1B1B4B398;
    v13[3] = &block_descriptor_9;
    v10 = _Block_copy(v13);
    v11 = v2;
    v12 = a1;

    sub_1B1B3B6EC(v6, v8, v2, v10, v4);
    _Block_release(v10);
  }
}

id sub_1B1B398F8(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  v2 = a2;
  v3 = a1;
  sub_1B1C2D0B8();
  if (qword_1ED9A99C0 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B1C36280;
    v2 = [v2 string];
    v5 = sub_1B1C2CB58();
    v7 = v6;

    *(v4 + 56) = MEMORY[0x1E69E6158];
    v8 = sub_1B1AC9204();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    v9 = MEMORY[0x1E69E65A8];
    *(v4 + 96) = MEMORY[0x1E69E6530];
    *(v4 + 104) = v9;
    *(v4 + 64) = v8;
    *(v4 + 72) = v3;
    sub_1B1C2C7C8();

LABEL_4:
    if (qword_1EB7610B8 != -1)
    {
      swift_once();
    }

    v3 = qword_1EB772C38;
    [qword_1EB772C38 lock];
    v10 = qword_1EB772C30 - 1;
    if (!__OFSUB__(qword_1EB772C30, 1))
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  --qword_1EB772C30;
  if (!v10)
  {
    [v3 broadcast];
  }

  return [v3 unlock];
}

uint64_t sub_1B1B39AC0()
{
  result = sub_1B1B39AE4();
  byte_1EB762610 = result & 1;
  return result;
}

uint64_t sub_1B1B39AE4()
{
  v0 = sub_1B1C2C428();
  v53 = *(v0 - 8);
  v1 = *(v53 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v60 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C38370;
  if (qword_1ED9A98A8 != -1)
  {
LABEL_48:
    swift_once();
  }

  v7 = qword_1ED9A98B0;
  *(inited + 32) = qword_1ED9A98B0;
  v8 = qword_1ED9A9850;
  v59 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED9A97E0;
  *(inited + 40) = qword_1ED9A97E0;
  v10 = qword_1ED9A98B8;
  v57 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v55 = v5;
  v11 = qword_1ED9A98C0;
  *(inited + 48) = qword_1ED9A98C0;
  v12 = qword_1ED9A98D0;
  v61 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED9A98D8;
  *(inited + 56) = qword_1ED9A98D8;
  v14 = qword_1ED9A9978;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v56 = v0;
  v16 = qword_1ED9A9980;
  *(inited + 64) = qword_1ED9A9980;
  v17 = qword_1ED9A9960;
  v58 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1ED9A9968;
  *(inited + 72) = qword_1ED9A9968;
  v62 = MEMORY[0x1E69E7CC0];
  v54 = v18;
  v19 = 0;
  v52 = xmmword_1B1C361C0;
  while (v19 != 6)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1B2738A20](v19, inited);
    }

    else
    {
      if (v19 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }

      v20 = *(inited + 8 * v19 + 32);
    }

    v21 = v20;
    v0 = sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v22 = v15;
    v23 = sub_1B1C2D248();

    if (v23 & 1) != 0 || (v24 = v61, v25 = sub_1B1C2D248(), v24, (v25) || (v26 = v59, v27 = sub_1B1C2D248(), v26, (v27))
    {
      v0 = &v62;
      sub_1B1C2D588();
      v5 = *(v62 + 16);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    else
    {
      v5 = v58;
      v28 = sub_1B1C2D248();

      if (v28 & 1) != 0 || (v5 = v57, v29 = sub_1B1C2D248(), v5, (v29) || (v5 = v54, v0 = sub_1B1C2D248(), v5, (v0))
      {
      }

      else
      {
        v51 = sub_1B1C2D0C8();
        if (qword_1ED9A99B8 != -1)
        {
          swift_once();
        }

        v50 = qword_1ED9AA668;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
        v30 = swift_allocObject();
        *(v30 + 16) = v52;
        v0 = [v21 string];
        v5 = sub_1B1C2CB58();
        v49 = v31;

        *(v30 + 56) = MEMORY[0x1E69E6158];
        *(v30 + 64) = sub_1B1AC9204();
        v32 = v49;
        *(v30 + 32) = v5;
        *(v30 + 40) = v32;
        sub_1B1C2C7C8();
      }
    }

    ++v19;
  }

  swift_setDeallocating();
  sub_1B1B2EFA8();
  v33 = v62;
  v34 = sub_1B1A9547C(v62);
  v36 = v55;
  v35 = v56;
  if (v34)
  {
    v37 = v34;
    type metadata accessor for TTSAssetMAStrategy();
    if (v37 < 1)
    {
      __break(1u);
LABEL_50:
      swift_once();
      goto LABEL_41;
    }

    v38 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1B2738A20](v38, v33);
      }

      else
      {
        v39 = *(v33 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = [v39 string];
      if (!v41)
      {
        sub_1B1C2CB58();
        v41 = sub_1B1C2CB28();
      }

      ++v38;
      MEMORY[0x1B2739140](v41);

      sub_1B1B39710(v40);
    }

    while (v37 != v38);
  }

  LODWORD(v5) = byte_1EB772E70;
  if (byte_1EB772E70)
  {
    return v5 ^ 1;
  }

  byte_1EB772E70 = 1;
  sub_1B1C2C3A8();
  if (qword_1EB7610B8 != -1)
  {
    goto LABEL_50;
  }

LABEL_41:
  v42 = qword_1EB772C38;
  [qword_1EB772C38 lock];
  v43 = (v53 + 8);
  while (qword_1EB772C30 >= 1)
  {
    v44 = v60;
    sub_1B1C2C418();
    v45 = sub_1B1C2C388();
    (*v43)(v44, v35);
    if ((v45 & 1) == 0)
    {
      break;
    }

    v46 = sub_1B1C2C378();
    [v42 waitUntilDate_];
  }

  [v42 unlock];
  (*v43)(v36, v35);
  return v5 ^ 1;
}

void sub_1B1B3A1E8()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  if (!v6)
  {
    v2 = 0;
    v4 = 0xE000000000000000;
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v1 = v6 + 65;
  if (v6 >= 0xFFFFFFBF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v1 >> 11 != 27)
  {
    if (HIWORD(v1) <= 0x10u)
    {
LABEL_7:
      v2 = sub_1B1C2CC38();
      v4 = v3;
LABEL_9:
      MEMORY[0x1B27381B0](v2, v4);

      MEMORY[0x1B27381B0](0x6C617473797243, 0xE700000000000000);

      v5 = OUTLINED_FUNCTION_9_11();
      MEMORY[0x1B27381B0](v5);

      return;
    }

LABEL_13:
    __break(1u);
    goto LABEL_7;
  }

  __break(1u);
}

id sub_1B1B3A3C4(int a1, int a2, id a3)
{
  v4 = [a3 string];
  if (!v4)
  {
    sub_1B1C2CB58();
    v4 = sub_1B1C2CB28();
  }

  v5 = sub_1B1C2CB28();
  MEMORY[0x1B2739150](v4, v5);

  type metadata accessor for TTSAssetMAStrategy();
  sub_1B1B39710(a3);
  v6 = type metadata accessor for TTSAsset();

  return [v6 waitForCatalogUpdates];
}

uint64_t sub_1B1B3A488(void *a1, id a2)
{
  v4 = v2;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_7;
  }

  if (qword_1EB7615E8 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v7 = qword_1EB7625E0;
  sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
  v8 = v7;
  v9 = OUTLINED_FUNCTION_8_10();

  if (v9)
  {
    v10 = 0x80000001B1C4CB00;
    v11 = 0xD00000000000001ELL;
    goto LABEL_18;
  }

  if (qword_1EB7615F0 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v12 = qword_1EB7625E8;
  v13 = OUTLINED_FUNCTION_8_10();

  if ((v13 & 1) == 0)
  {
    if (qword_1EB7615F8 != -1)
    {
      OUTLINED_FUNCTION_1_16();
    }

    v16 = qword_1EB7625F0;
    v17 = OUTLINED_FUNCTION_8_10();

    if (v17)
    {
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      goto LABEL_17;
    }

    type metadata accessor for TTSAssetMAStrategy();
    v18 = [a1 string];
    v19 = sub_1B1C2CB58();
    v21 = v20;

    v11 = sub_1B1B39404(v19, v21);
    v10 = v22;

    if (v10)
    {
      goto LABEL_17;
    }

LABEL_7:
    sub_1B1B3A3C4(*(v4 + 16), *(v4 + 24), a2);
    v10 = 0;
    goto LABEL_22;
  }

  sub_1B1B3A1E8();
  v11 = v14;
  v10 = v15;
LABEL_17:
  swift_bridgeObjectRetain_n();
LABEL_18:
  if (sub_1B1C2CDA8())
  {

    sub_1B1B3A1E8();
    sub_1B1B3A3C4(v23, v24, a2);
  }

  else
  {
    sub_1B1A8EDAC();
    v25 = sub_1B1C2D3D8();

    if (v25)
    {
      sub_1B1B3A3C4(*(v4 + 16), *(v4 + 24), a2);
    }
  }

LABEL_22:
  v26 = OUTLINED_FUNCTION_10_12();
  if (v26)
  {
    if (v10)
    {
LABEL_24:

      v27 = sub_1B1C2CB28();

      goto LABEL_27;
    }
  }

  else
  {
    sub_1B1C2CB58();
    v26 = sub_1B1C2CB28();

    if (v10)
    {
      goto LABEL_24;
    }
  }

  v27 = 0;
LABEL_27:
  v28 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1B2739150](v26, v27);

  if (v10)
  {
    sub_1B1C2D098();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B1C364D0;
    *(v30 + 56) = v28;
    v31 = sub_1B1AC9204();
    *(v30 + 64) = v31;
    *(v30 + 32) = v11;
    *(v30 + 40) = v10;
    v32 = OUTLINED_FUNCTION_10_12();
    v33 = sub_1B1C2CB58();
    v34 = a2;
    v36 = v35;

    *(v30 + 96) = v28;
    *(v30 + 104) = v31;
    v37 = MEMORY[0x1E69E7360];
    *(v30 + 72) = v33;
    *(v30 + 80) = v36;
    v38 = MEMORY[0x1E69E73D8];
    *(v30 + 136) = v37;
    *(v30 + 144) = v38;
    *(v30 + 112) = v29;
    sub_1B1C2C7C8();

    if (v29)
    {

      return 0;
    }

    a2 = v34;
  }

  else
  {
    sub_1B1C2D098();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1B1C361C0;
    v41 = OUTLINED_FUNCTION_10_12();
    v42 = sub_1B1C2CB58();
    v44 = v43;

    *(v40 + 56) = v28;
    *(v40 + 64) = sub_1B1AC9204();
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    sub_1B1C2C7C8();

    if (v29)
    {
      v45 = OUTLINED_FUNCTION_10_12();
      if (!v45)
      {
        sub_1B1C2CB58();
        v45 = sub_1B1C2CB28();
      }

      ASSetAssetServerURLForAssetType();

      v46 = OUTLINED_FUNCTION_10_12();
      if (!v46)
      {
        sub_1B1C2CB58();
        v46 = sub_1B1C2CB28();
      }

      ASSetDefaultAssetServerURLForAssetType();

      goto LABEL_42;
    }
  }

LABEL_42:
  type metadata accessor for TTSAssetMAStrategy();
  sub_1B1B39710(a2);
  return 1;
}

unint64_t sub_1B1B3A9FC()
{
  v1 = v0;
  if (qword_1EB7615E8 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v2 = qword_1EB7625E0;
  sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_8_10();

  if (v4)
  {
    return 0xD00000000000001ELL;
  }

  if (qword_1EB7615F0 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v6 = qword_1EB7625E8;
  v7 = OUTLINED_FUNCTION_8_10();

  if (v7)
  {
    sub_1B1B3A1E8();
    return v8;
  }

  else
  {
    if (qword_1EB7615F8 != -1)
    {
      OUTLINED_FUNCTION_1_16();
    }

    v9 = qword_1EB7625F0;
    v10 = OUTLINED_FUNCTION_8_10();

    if (v10)
    {
      v5 = *(v1 + 16);
      v11 = *(v1 + 24);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1B1B3AB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_text);
  v7 = 1;
  swift_beginAccess();
  v8 = v6[1];
  *v6 = 0;
  v6[1] = 0xE000000000000000;

  if (a2 != 7955819 || a3 != 0xE300000000000000)
  {
    OUTLINED_FUNCTION_72();
    result = sub_1B1C2D7A8();
    v7 = result;
  }

  *(v3 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_inKey) = v7 & 1;
  return result;
}

uint64_t sub_1B1B3ACE8()
{
  v1 = (v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_inKey);
  if (*(v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_inKey) == 1)
  {
    v2 = (v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_text);
    swift_beginAccess();
    if (*v2 == 0x64616F6C6E776F44 && v2[1] == 0xEE006D6F72466465)
    {
      v4 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_5_13();
      v4 = sub_1B1C2D7A8();
    }

    *(v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_wantValue) = v4 & 1;
    goto LABEL_11;
  }

  v1 = (v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_wantValue);
  if (*(v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_wantValue) == 1)
  {
    v5 = (v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_text);
    swift_beginAccess();
    v7 = *v5;
    v6 = v5[1];
    v8 = (v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_source);
    v9 = *(v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_source + 8);
    *v8 = v7;
    v8[1] = v6;

LABEL_11:
    *v1 = 0;
  }

  v10 = (v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_text);
  swift_beginAccess();
  v11 = v10[1];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
}

uint64_t sub_1B1B3AEDC()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_72();
  MEMORY[0x1B27381B0](v0);
  return swift_endAccess();
}

id sub_1B1B3AFB4()
{
  v0[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_inKey] = 0;
  v0[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_wantValue] = 0;
  v1 = &v0[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_text];
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_source];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TTSAssetMAStrategy.DownloadSourceExtractor();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1B1B3B048()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSAssetMAStrategy.DownloadSourceExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B1B3B0D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v56 - v4;
  v6 = sub_1B1C2C0A8();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B1C2C1C8();
  v15 = OUTLINED_FUNCTION_7(v14);
  v57 = v16;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v56 - v22;
  v24 = [a1 pathComponent];
  v25 = sub_1B1C2CB58();
  v27 = v26;

  v58 = 0xD00000000000001ALL;
  v59 = 0x80000001B1C4CAE0;
  MEMORY[0x1B27381B0](v25, v27);
  v28 = OUTLINED_FUNCTION_9_11();
  MEMORY[0x1B27381B0](v28);
  MEMORY[0x1B27381B0](v25, v27);
  v29 = v14;
  v30 = v57;

  MEMORY[0x1B27381B0](1819113518, 0xE400000000000000);
  (*(v9 + 104))(v13, *MEMORY[0x1E6968F68], v6);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v29);
  sub_1B1C2C198();
  sub_1B1A8E474(0, &qword_1EB763F60, 0x1E696B0A8);
  (*(v30 + 16))(v21, v23, v29);
  v31 = sub_1B1B3B5BC(v21);
  if (!v31)
  {
    v39 = OUTLINED_FUNCTION_7_11();
    v40(v39);
    return 0;
  }

  v32 = v31;
  v33 = [objc_allocWithZone(type metadata accessor for TTSAssetMAStrategy.DownloadSourceExtractor()) init];
  [v32 setDelegate_];
  [v32 parse];
  v34 = &v33[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_source];
  v36 = *&v33[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_source];
  v35 = *&v33[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_source + 8];
  if ((v36 || v35 != 0xE000000000000000) && (OUTLINED_FUNCTION_6_11() & 1) == 0)
  {
    v43 = v36 == 0xD00000000000001ELL && 0x80000001B1C4CB00 == v35;
    if (v43 || (OUTLINED_FUNCTION_6_11() & 1) != 0)
    {
      if (qword_1EB7615E8 != -1)
      {
        OUTLINED_FUNCTION_0_16();
      }

      v44 = qword_1EB7625E0;
      goto LABEL_17;
    }

    sub_1B1B3A1E8();
    if (v49 == v36 && v48 == v35)
    {
    }

    else
    {
      v51 = OUTLINED_FUNCTION_6_11();

      if ((v51 & 1) == 0)
      {
        if (*(v56 + 16) == v36 && *(v56 + 24) == v35)
        {
        }

        else
        {
          v53 = OUTLINED_FUNCTION_6_11();

          if ((v53 & 1) == 0)
          {
            sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
            v55 = *v34;
            v54 = *(v34 + 1);

            v45 = sub_1B1B67B98(v55);
            goto LABEL_18;
          }
        }

        if (qword_1EB7615F8 != -1)
        {
          OUTLINED_FUNCTION_1_16();
        }

        v44 = qword_1EB7625F0;
LABEL_17:
        v45 = v44;
LABEL_18:
        v41 = v45;

        v46 = OUTLINED_FUNCTION_7_11();
        v47(v46);
        return v41;
      }
    }

    if (qword_1EB7615F0 != -1)
    {
      OUTLINED_FUNCTION_2_19();
    }

    v44 = qword_1EB7625E8;
    goto LABEL_17;
  }

  v37 = OUTLINED_FUNCTION_7_11();
  v38(v37);

  return 0;
}

id sub_1B1B3B5BC(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B1C2C118();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_1B1C2C1C8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1B1B3B658()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1B1B3B6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1B1C2CB28();

  [a5 startCatalogDownload:v8 options:a3 then:a4];
}

unint64_t sub_1B1B3B768()
{
  result = qword_1EB762648;
  if (!qword_1EB762648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB762640, &qword_1B1C383E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762648);
  }

  return result;
}

unint64_t sub_1B1B3B7CC()
{
  result = qword_1EB762660;
  if (!qword_1EB762660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762660);
  }

  return result;
}

uint64_t sub_1B1B3B874()
{
  v13 = sub_1B1C2D128();
  v0 = OUTLINED_FUNCTION_7(v13);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  v8 = sub_1B1C2D118();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  v10 = sub_1B1C2C9D8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_16();
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  sub_1B1C2C9A8();
  sub_1B1ACD030(&qword_1ED9A9720, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1A97978(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1C2D418();
  (*(v2 + 104))(v7, *MEMORY[0x1E69E8090], v13);
  result = sub_1B1C2D158();
  qword_1ED9AA608 = result;
  return result;
}

id sub_1B1B3BAB0()
{
  result = sub_1B1B3BAD0();
  qword_1ED9AA610 = result;
  return result;
}

id sub_1B1B3BAD0()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  v1 = sub_1B1C2CB28();
  if (qword_1ED9A92A8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED9AA608;
  v6[4] = sub_1B1B3BC28;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B1B3658C;
  v6[3] = &block_descriptor_15;
  v3 = _Block_copy(v6);
  v4 = [v0 addUpdateHandlerForNamespaceName:v1 queue:v2 usingBlock:v3];
  _Block_release(v3);

  qword_1ED9AA5C8 = v4;
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B1B3BC28()
{
  sub_1B1C2D0D8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  sub_1B1C2C7C8();
  type metadata accessor for TTSAssetTrialStrategy();
  result = sub_1B1B3BD20();
  byte_1EB772D30 = 0;
  if (qword_1EB761280 != -1)
  {
    result = swift_once();
  }

  if (byte_1EB772CE0 == 1)
  {

    return notify_post("com.apple.voiceservices.notification.voice-update");
  }

  return result;
}

uint64_t sub_1B1B3BD20()
{
  if (qword_1ED9A92B0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED9A92B0);
  }

  v0 = qword_1ED9AA610;
  [qword_1ED9AA610 refresh];
  if (qword_1ED9A9298 != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  v1 = OUTLINED_FUNCTION_11_6();
  v2 = [v0 factorLevelsWithNamespaceName_];

  sub_1B1A8E474(0, &qword_1ED9A9280, 0x1E69DB538);
  v3 = sub_1B1C2CE78();

  qword_1ED9AA620 = v3;
}

void sub_1B1B3BE10()
{
  if (qword_1ED9A92B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9AA610;
  v1 = sub_1B1C2CB28();
  v2 = [v0 factorLevelsWithNamespaceName_];

  sub_1B1A8E474(0, &qword_1ED9A9280, 0x1E69DB538);
  v3 = sub_1B1C2CE78();

  qword_1ED9AA620 = v3;
}

uint64_t sub_1B1B3BEDC()
{
  v0 = NSUserName();
  v1 = sub_1B1C2CB58();
  v3 = v2;

  strcpy(v8, "/private/var/");
  HIWORD(v8[1]) = -4864;
  MEMORY[0x1B27381B0](v1, v3);

  v5 = v8[0];
  v4 = v8[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B1C36280;

  OUTLINED_FUNCTION_10_13();

  MEMORY[0x1B27381B0](0xD000000000000013, 0x80000001B1C48290);

  MEMORY[0x1B27381B0](47, 0xE100000000000000);

  *(v6 + 32) = v5;
  *(v6 + 40) = v4;

  OUTLINED_FUNCTION_10_13();

  MEMORY[0x1B27381B0](3551284, 0xE300000000000000);

  MEMORY[0x1B27381B0](47, 0xE100000000000000);

  *(v6 + 48) = v5;
  *(v6 + 56) = v4;
  sub_1B1ABF93C(&unk_1F28BFBE0);
  return v6;
}

uint64_t sub_1B1B3C0BC()
{
  v0 = sub_1B1C2C968();
  v1 = OUTLINED_FUNCTION_7(v0);
  v82 = v2;
  v83 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  v72 = (v6 - v5);
  v7 = sub_1B1C2C9F8();
  v8 = OUTLINED_FUNCTION_7(v7);
  v80 = v9;
  v81 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v78 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v72 - v14;
  v15 = sub_1B1C2C988();
  v16 = OUTLINED_FUNCTION_7(v15);
  v76 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  v22 = v21 - v20;
  v23 = sub_1B1C2C9D8();
  v24 = OUTLINED_FUNCTION_7(v23);
  v74 = v25;
  v75 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_16();
  v30 = v29 - v28;
  v31 = sub_1B1C2C998();
  v32 = OUTLINED_FUNCTION_7(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_16();
  v39 = v38 - v37;
  v40 = sub_1B1C2C428();
  v41 = OUTLINED_FUNCTION_7(v40);
  v84 = v42;
  v85 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_16();
  v47 = v46 - v45;
  sub_1B1C2D0D8();
  if (qword_1ED9A99C0 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v77 = qword_1ED9AA670;
  sub_1B1C2C7C8();
  byte_1EB761498 = 0;
  v48 = [objc_opt_self() now];
  sub_1B1C2C3D8();

  v49 = dispatch_semaphore_create(0);
  v73 = v47;
  v50 = v49;
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  (*(v34 + 104))(v39, *MEMORY[0x1E69E7F88], v31);
  v51 = sub_1B1C2D168();
  (*(v34 + 8))(v39, v31);
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  v91 = sub_1B1B3CCF0;
  v92 = v52;
  OUTLINED_FUNCTION_3_13();
  v88 = 1107296256;
  v89 = sub_1B1A95870;
  v90 = &block_descriptor_10;
  v53 = _Block_copy(aBlock);
  v54 = v50;
  sub_1B1C2C9A8();
  v86 = MEMORY[0x1E69E7CC0];
  sub_1B1ACD030(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v30, v22, v53);
  _Block_release(v53);

  (*(v76 + 8))(v22, v15);
  (*(v74 + 8))(v30, v75);

  v55 = v78;
  sub_1B1C2C9E8();
  v56 = v72;
  *v72 = 10;
  v58 = v82;
  v57 = v83;
  (*(v82 + 104))(v56, *MEMORY[0x1E69E7F48], v83);
  v59 = v79;
  MEMORY[0x1B2737ED0](v55, v56);
  (*(v58 + 8))(v56, v57);
  v60 = *(v80 + 8);
  v61 = v55;
  v62 = v81;
  v60(v61, v81);
  LOBYTE(v58) = sub_1B1C2D1A8();
  v60(v59, v62);
  sub_1B1C2D0D8();
  if (v58)
  {
    sub_1B1C2C7C8();
    v63 = v73;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1B1C361C0;
    v65 = v73;
    sub_1B1C2C3B8();
    v66 = MEMORY[0x1E69E6438];
    *(v64 + 56) = MEMORY[0x1E69E63B0];
    *(v64 + 64) = v66;
    *(v64 + 32) = -v67;
    sub_1B1C2C7C8();

    v63 = v65;
  }

  if (qword_1ED9A92A8 != -1)
  {
    OUTLINED_FUNCTION_5_14();
  }

  v68 = qword_1ED9AA608;
  v91 = sub_1B1B3B820;
  v92 = 0;
  OUTLINED_FUNCTION_3_13();
  v88 = 1107296256;
  OUTLINED_FUNCTION_4_11();
  v89 = v69;
  v90 = &block_descriptor_6_1;
  v70 = _Block_copy(aBlock);

  dispatch_sync(v68, v70);
  _Block_release(v70);

  (*(v84 + 8))(v63, v85);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1B3C84C()
{
  v7[1] = *MEMORY[0x1E69E9840];
  sub_1B1AB6238(&unk_1F28BFC10);
  if (qword_1ED9A92B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9AA610;
  v1 = sub_1B1C2CF48();

  v7[0] = 0;
  LODWORD(v0) = [v0 immediateDownloadForNamespaceNames:v1 allowExpensiveNetworking:1 error:v7];

  if (v0)
  {
    v2 = v7[0];
  }

  else
  {
    v3 = v7[0];
    v4 = sub_1B1C2C058();

    swift_willThrow();
  }

  result = sub_1B1C2D1C8();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1B3C978()
{
  type metadata accessor for TTSAssetTrialStrategy();
  result = sub_1B1B3BD20();
  byte_1EB772D30 = 0;
  return result;
}

uint64_t sub_1B1B3C99C()
{
  type metadata accessor for TTSAsset();
  result = sub_1B1B34578();
  if (result)
  {
    type metadata accessor for TTSAssetTrialStrategy();
    swift_initStaticObject();
    return sub_1B1B3C0BC();
  }

  return result;
}

void sub_1B1B3C9E0(char a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    v3 = 0x656372756F736572;
  }

  else
  {
    v3 = 0x6563696F76;
  }

  v4 = 0xE500000000000000;
  if (a1)
  {
    v4 = 0xE800000000000000;
  }

  v27 = v3;
  v28 = v4;
  v29 = MEMORY[0x1E69E7CC0];
  v5 = sub_1B1A9547C(a2);
  v6 = 0;
  v7 = v2 & 0xC000000000000001;
  v8 = v2 & 0xFFFFFFFFFFFFFF8;
  v26 = v2;
  v9 = &off_1E7AF4000;
  v10 = &selRef_array;
  while (1)
  {
    if (v5 == v6)
    {

      return;
    }

    if (v7)
    {
      v11 = MEMORY[0x1B2738A20](v6, v2);
    }

    else
    {
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_29;
      }

      v11 = *(v2 + 8 * v6 + 32);
    }

    v12 = v11;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v13 = [v11 v9[202]];
    if (!v13)
    {
      goto LABEL_30;
    }

    v14 = v13;
    v15 = [v13 v10[271]];

    if (v15 != 101)
    {
      goto LABEL_22;
    }

    v16 = [v12 v9[202]];
    if (!v16)
    {
      goto LABEL_31;
    }

    v17 = v16;
    if (![v16 hasName])
    {
      sub_1B1C2D0C8();
      if (qword_1ED9A99C0 != -1)
      {
        swift_once();
      }

      sub_1B1C2C7C8();

LABEL_22:
      goto LABEL_25;
    }

    v18 = v5;
    v19 = v8;
    v20 = v7;
    v21 = v9;
    v22 = v10;
    sub_1B1AF10E0(v17);
    if (!v23)
    {
      goto LABEL_32;
    }

    MEMORY[0x1B27381B0](v27, v28);
    MEMORY[0x1B27381B0](46, 0xE100000000000000);
    v24 = sub_1B1C2CDA8();

    if (v24)
    {
      sub_1B1C2D588();
      v25 = *(v29 + 16);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    else
    {
    }

    v10 = v22;
    v9 = v21;
    v7 = v20;
    v8 = v19;
    v5 = v18;
    v2 = v26;
LABEL_25:
    ++v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t DataContainer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1B1C2CAB8();
  return v0;
}

uint64_t sub_1B1B3CD68()
{
  v1 = *(v0 + 24);
  [v1 lock];
  OUTLINED_FUNCTION_7_12();
  v2 = sub_1B1A95484(*(v0 + 16));
  [v1 unlock];
  return v2;
}

id Asynchronous<>.isProcessing.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a1 & 1;
  v7 = *(a3 + 8);
  v8 = OUTLINED_FUNCTION_11_10(a1, a2);
  v9 = v7(v8);
  OUTLINED_FUNCTION_6_13(v9);
  v11 = v10;
  OUTLINED_FUNCTION_89_0();

  [v4 lock];

  v12 = OUTLINED_FUNCTION_1_17();
  v13 = *(v7(v12) + 16);

  if (v13 != v6)
  {
    v14 = OUTLINED_FUNCTION_1_17();
    *(v7(v14) + 16) = v6;

    v15 = OUTLINED_FUNCTION_1_17();
    v16 = v7(v15);
    OUTLINED_FUNCTION_6_13(v16);
    v18 = v17;
    OUTLINED_FUNCTION_89_0();

    [v4 broadcast];
  }

  v19 = OUTLINED_FUNCTION_1_17();
  v20 = v7(v19);
  OUTLINED_FUNCTION_6_13(v20);
  v22 = v21;

  [v22 unlock];

  v23 = *(v5 + 24);
  [v23 lock];
  [v23 broadcast];
  return [v23 unlock];
}

void Asynchronous<>.asyncError.setter()
{
  OUTLINED_FUNCTION_23_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_11_10(v5, v3);
  v9 = v7(v8);
  OUTLINED_FUNCTION_6_13(v9);
  v11 = v10;

  [v11 lock];

  v15 = v0;
  v12 = (v7)(v4, v2);
  v13 = *(v12 + 24);
  *(v12 + 24) = v6;
  v14 = v6;

  sub_1B1AD0464(v15, v4, v2);

  OUTLINED_FUNCTION_22_4();
}

uint64_t sub_1B1B3D008(char a1)
{
  OUTLINED_FUNCTION_0();
  v3 = *(v1 + 40);
  [v3 lock];
  *(v1 + 48) = a1;
  [v3 unlock];
  return swift_endAccess();
}

uint64_t Workflow.__allocating_init(graph:notification:errorHandlers:)()
{
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_13_12();
  v0 = swift_allocObject();
  Workflow.init(graph:notification:errorHandlers:)();
  return v0;
}

uint64_t sub_1B1B3D0CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v9;
    v6 = v10;
    v7 = v11;
  }

  else
  {
    sub_1B1C2D538();

    swift_getErrorValue();
    v8 = sub_1B1C2D828();
    MEMORY[0x1B27381B0](v8);

    v6 = 0x206E776F6E6B6E55;
    v7 = 0xEF203A6575737369;
    v5 = 1;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_1B1B3D1C8()
{
  result = sub_1B1AA86E8();
  if ((result & 1) == 0)
  {
    sub_1B1B3D008(1);
    v2 = *(v0 + 56);
    [v2 lock];
    v3 = *(v0 + 64);
    if (v3)
    {
      if (qword_1ED9A4D38 != -1)
      {
        swift_once();
      }

      [v3 postNotificationName:qword_1ED9A4D40 object:0];
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v4 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v4, qword_1ED9A9120);
      v5 = sub_1B1C2C888();
      v6 = sub_1B1C2D0B8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1B1A8A000, v5, v6, "Cannot cancel workflow without a NotificationCenter", v7, 2u);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }
    }

    return [v2 unlock];
  }

  return result;
}

double sub_1B1B3D37C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  return sub_1B1AA61C0(a3);
}

uint64_t sub_1B1B3D3A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  sub_1B1A9D80C(a1, v8);
  v6 = *a2;

  return sub_1B1AA5E5C(v8);
}

void (*sub_1B1B3D3FC(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  sub_1B1AA61C0(v7);
  return sub_1B1B3D47C;
}

void sub_1B1B3D47C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  if (a2)
  {
    sub_1B1A9D80C(*a1, v2 + 32);

    sub_1B1AA5E5C(v2 + 32);
    sub_1B1B3E078(v2, &qword_1EB761DE0);
  }

  else
  {

    v6 = OUTLINED_FUNCTION_5_15();
    sub_1B1AA5E5C(v6);
  }

  free(v2);
}

uint64_t DataContainer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Buffer.__deallocating_deinit()
{
  Buffer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1B1B3D570(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v4 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = *a2;
  Asynchronous<>.isProcessing.setter();
}

void Asynchronous<>.isProcessing.setter()
{
  OUTLINED_FUNCTION_23_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7 & 1;
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_11_10(v7, v5);
  v11 = v9(v10);
  OUTLINED_FUNCTION_6_13(v11);
  v13 = v12;
  OUTLINED_FUNCTION_89_0();

  [v1 lock];

  v14 = OUTLINED_FUNCTION_8_11();
  v15 = *(v9(v14) + 16);

  if (v15 != v8)
  {
    v16 = OUTLINED_FUNCTION_8_11();
    *(v9(v16) + 16) = v8;

    v17 = OUTLINED_FUNCTION_8_11();
    v18 = v9(v17);
    OUTLINED_FUNCTION_6_13(v18);
    v20 = v19;
    OUTLINED_FUNCTION_89_0();

    [v1 broadcast];
  }

  sub_1B1AD0464(v2, v6, v4);
  OUTLINED_FUNCTION_22_4();
}

void (*Asynchronous<>.isProcessing.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v5 = OUTLINED_FUNCTION_11_10(a1, a2);
  *(a1 + 24) = Asynchronous<>.isProcessing.getter(v5, v6) & 1;
  return sub_1B1B3D6F4;
}

void sub_1B1B3D6F4(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  v4 = *(a1 + 24);
  Asynchronous<>.isProcessing.setter();
}

void Asynchronous<>.asyncError.getter()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_12_7(v2, v3);
  v4 = v1();
  OUTLINED_FUNCTION_6_13(v4);
  v6 = v5;
  OUTLINED_FUNCTION_89_0();

  [v0 lock];

  v7 = OUTLINED_FUNCTION_1_17();
  v8 = *((v1)(v7) + 24);

  v9 = OUTLINED_FUNCTION_5_15();
  sub_1B1AD0464(v9, v10, v11);
  OUTLINED_FUNCTION_22_4();
}

void sub_1B1B3D7B4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v5 = *(a2 + a3 - 8);
  v7 = *a1;
  Asynchronous<>.asyncError.getter();
  *a4 = v8;
}

void sub_1B1B3D7EC(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a2;
  v7 = *a1;
  Asynchronous<>.asyncError.setter();
}

void (*Asynchronous<>.asyncError.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  OUTLINED_FUNCTION_11_10(a1, a2);
  Asynchronous<>.asyncError.getter();
  *a1 = v5;
  return sub_1B1B3D888;
}

void sub_1B1B3D888(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (a2)
  {
    v6 = v4;
    OUTLINED_FUNCTION_5_15();
    Asynchronous<>.asyncError.setter();
  }

  else
  {
    OUTLINED_FUNCTION_5_15();
    Asynchronous<>.asyncError.setter();
  }
}

uint64_t Asynchronous<>.waitTimeout.setter(uint64_t a1, uint64_t a2, double a3)
{
  OUTLINED_FUNCTION_21_5(a1, a2);
  *(v4() + 32) = a3;
}

uint64_t (*Asynchronous<>.waitTimeout.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = v3;
  *(a1 + 8) = a2;
  v5 = OUTLINED_FUNCTION_11_10(a1, a2);
  *a1 = Asynchronous<>.waitTimeout.getter(v5, v6);
  return sub_1B1B3D9FC;
}

id (*Asynchronous<>.isProcessing.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v5 = OUTLINED_FUNCTION_11_10(a1, a2);
  *(a1 + 24) = Asynchronous<>.isProcessing.getter(v5, v6) & 1;
  return sub_1B1B3DAB4;
}

uint64_t WorkflowNode.__allocating_init(condition:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  WorkflowNode.init(condition:)(a1);
  return v2;
}

uint64_t sub_1B1B3DBA4(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1B1C2CE98();
  }

  return result;
}

uint64_t sub_1B1B3DC00(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t *sub_1B1B3DC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkflowNode();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v12 = sub_1B1AA1BA4(v10, v11, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v12;
}

uint64_t sub_1B1B3E078(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11_10(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B1B3E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1B1B3E198();
  result = sub_1B1C2D288();
  *a4 = result;
  return result;
}

unint64_t sub_1B1B3E198()
{
  result = qword_1ED9A99B0;
  if (!qword_1ED9A99B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9A99B0);
  }

  return result;
}

uint64_t static TTSAsset.set(server:forType:)(uint64_t a1, void *a2)
{
  v4 = sub_1B1AE9DE8(a2);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 8))(a1, a2, ObjectType, v6);
    swift_unknownObjectRelease();
    return v8 & 1;
  }

  else
  {

    return 0;
  }
}

uint64_t static TTSAsset.set(server:forType:source:)(uint64_t a1, uint64_t a2)
{
  sub_1B1AB5F60();
  v5 = v4;
  ObjectType = swift_getObjectType();
  LOBYTE(a2) = (*(v5 + 8))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return a2 & 1;
}

uint64_t static TTSAsset.get(serverForType:)(void *a1)
{
  v2 = sub_1B1AE9DE8(a1);
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 16))(a1, ObjectType, v4);
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {

    return 0;
  }
}

uint64_t static TTSAsset.get(serverForType:source:)(uint64_t a1)
{
  sub_1B1AB5F60();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t static TTSAsset.describe(server:forType:)(uint64_t a1, void *a2)
{
  v3 = sub_1B1AE9DE8(a2);
  if (v3[2])
  {
    v4 = v3[4];
    v5 = v3[5];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t static TTSAsset.describe(server:source:)(uint64_t a1)
{
  sub_1B1AB5F60();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 24))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

id sub_1B1B3E7BC()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AB30]) init];
  qword_1EB772C38 = result;
  return result;
}

id static TTSAsset.waitForCatalogUpdates()()
{
  if (qword_1EB7610B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB772C38;
  v1 = &selRef_lock;
  do
  {
    [v0 *v1];
    v1 = &selRef_wait;
  }

  while (qword_1EB772C30 > 0);

  return [v0 unlock];
}

uint64_t sub_1B1B3E8B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1B3E908(v4);
}

uint64_t sub_1B1B3E8DC()
{
  OUTLINED_FUNCTION_17_1();
  v1 = *(v0 + 16);
}

uint64_t sub_1B1B3E908(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t SynthesisCacheWritingAction.__allocating_init(pool:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SynthesisCacheWritingAction.init(pool:)();
  return v3;
}

uint64_t sub_1B1B3E990()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1AC4B6C(0xD00000000000001ALL, 0x80000001B1C4D380, 1);
  }

  return result;
}

uint64_t sub_1B1B3EA04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1AC4B6C(0xD000000000000020, 0x80000001B1C4D300, 1);
  }

  return result;
}

uint64_t sub_1B1B3EA78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1AC4B6C(0xD000000000000019, 0x80000001B1C4D2E0, 1);
  }

  return result;
}

uint64_t sub_1B1B3EAEC@<X0>(uint64_t *a1@<X8>)
{
  result = SynthesisCacheWritingAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t (*sub_1B1B3EB5C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_1B1B3EBD0()
{
  sub_1B1B3ED9C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B1B3ED9C()
{
  if (!qword_1EB761148)
  {
    type metadata accessor for SynthesisCacheFile(255);
    v0 = sub_1B1C2D2B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB761148);
    }
  }
}

uint64_t sub_1B1B3EE10()
{
  v0 = [objc_opt_self() mainBundle];
  result = sub_1B1A91B08(v0);
  if (v2)
  {
    if (result == 0xD000000000000012 && v2 == 0x80000001B1C439F0)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1B1C2D7A8();
    }
  }

  else
  {
    v4 = 0;
  }

  byte_1EB772CE0 = v4 & 1;
  return result;
}

void sub_1B1B3EF3C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B1C361C0;
  v10 = a2(0);
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *(v9 + 32) = v10;
  sub_1B1A8E474(0, &unk_1ED9A90F0, 0x1E695DFD8);
  v11 = MEMORY[0x1B27386A0](v9);
  sub_1B1A8E474(0, &qword_1ED9A9880, 0x1E69E58C0);
  sub_1B1A9C7B4();
  v12 = sub_1B1C2CF68();

  *a5 = v12;
}

void sub_1B1B3F150()
{
  if (qword_1EB761138 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB761140;
  v1 = qword_1EB761100;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_1B1B1C7D8(v2, v0);
  v4 = v3;
  if (qword_1EB761128 != -1)
  {
    swift_once();
  }

  sub_1B1B1C7D8(v5, v4);
  v7 = v6;
  if (qword_1EB761110 != -1)
  {
    swift_once();
  }

  sub_1B1B1C7D8(v8, v7);
  qword_1EB7610F8 = v9;
}

uint64_t sub_1B1B3F2D0(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

_BYTE *sub_1B1B3F334(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Entitlements(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Entitlements(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B1B3F54C(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 >= a1)
      {
        v4 = a1;
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2uLL:
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
LABEL_6:
      result = sub_1B1B40604(v4);
      break;
    case 3uLL:
      return result;
    default:
      result = a1;
      break;
  }

  return result;
}

uint64_t OpusDecoder.__allocating_init(destinationFormat:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_0();
  v2 = swift_allocObject();
  OpusDecoder.init(destinationFormat:)(a1);
  return v2;
}

uint64_t OpusDecoder.init(destinationFormat:)(uint64_t a1)
{
  v2 = v1;
  v41 = *MEMORY[0x1E69E9840];
  v38 = 0x40E7700000000000;
  v39 = xmmword_1B1C387F0;
  v40 = xmmword_1B1C38800;
  v4 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_];
  if (!v4)
  {
    sub_1B1A9EC9C();
    v21 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_0_18(v21, v22);
    *(v23 + 8) = 0xD000000000000020;
    *(v23 + 16) = 0x80000001B1C4D3D0;
    swift_willThrow();
    goto LABEL_13;
  }

  v5 = v4;
  *(v2 + 16) = v4;
  v6 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v6;
  v37 = *(a1 + 32);
  v7 = objc_allocWithZone(MEMORY[0x1E6958418]);
  v8 = v5;
  v9 = [v7 initWithStreamDescription_];
  if (!v9)
  {
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD00000000000001FLL, 0x80000001B1C4D400);
    OUTLINED_FUNCTION_2_21();
    sub_1B1C2D618();
    sub_1B1A9EC9C();
    v24 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_0_18(v24, v25);
    *(v26 + 8) = 0;
    *(v26 + 16) = 0xE000000000000000;
    swift_willThrow();

    v27 = *(v2 + 16);
LABEL_12:

    goto LABEL_13;
  }

  v10 = v9;
  *(v2 + 24) = v9;
  sub_1B1B3F9D0();
  v11 = v10;
  v12 = v8;
  v13 = v11;
  v14 = sub_1B1B3FA14(v12, v13);
  v15 = v14;
  if (!v14)
  {
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD000000000000035, 0x80000001B1C4D420);
    OUTLINED_FUNCTION_2_21();
    sub_1B1C2D618();
    sub_1B1A9EC9C();
    v28 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_0_18(v28, v29);
    *(v30 + 8) = 0;
    *(v30 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_10;
  }

  *(v2 + 32) = v14;
  v16 = *(v2 + 24);
  v17 = objc_allocWithZone(MEMORY[0x1E6958440]);
  v18 = v15;
  v19 = [v17 initWithPCMFormat:v16 frameCapacity:4800];
  if (!v19)
  {
    sub_1B1A9EC9C();
    v31 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_0_18(v31, v32);
    *(v33 + 8) = 0xD000000000000028;
    *(v33 + 16) = 0x80000001B1C4D460;
    swift_willThrow();

    v13 = v18;
LABEL_10:

    if (v15)
    {
      v27 = *(v2 + 32);
      goto LABEL_12;
    }

LABEL_13:
    type metadata accessor for OpusDecoder();
    swift_deallocPartialClassInstance();
    goto LABEL_14;
  }

  v20 = v19;

  *(v2 + 40) = v20;
LABEL_14:
  v34 = *MEMORY[0x1E69E9840];
  return v2;
}

unint64_t sub_1B1B3F9D0()
{
  result = qword_1EB761030;
  if (!qword_1EB761030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB761030);
  }

  return result;
}

id sub_1B1B3FA14(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFromFormat:a1 toFormat:a2];

  return v4;
}

char *sub_1B1B3FA70()
{
  v2 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
  v3 = sub_1B1B3FAE4(v2);

  if (!v1)
  {
    [*(v0 + 32) reset];
  }

  return v3;
}

char *sub_1B1B3FAE4(void *a1)
{
  v2 = v1;
  v67 = *MEMORY[0x1E69E9840];
  v59 = sub_1B1C2C228();
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v61 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = xmmword_1B1C35270;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E69583D8]) initWithFormat:*(v2 + 16) packetCapacity:1 maximumPacketSize:1024];
  [v8 setPacketCount_];
  v9 = [v8 packetDescriptions];
  if (v9)
  {
    *v9 = 0;
  }

  v60 = 0;
  v10 = 0;
  v11 = 0;
  v58 = *MEMORY[0x1E6969010];
  v57 = (v4 + 104);
  v56 = (v4 + 8);
  while (1)
  {
    v12 = v10;
    while (1)
    {
      if (v12)
      {
        goto LABEL_16;
      }

      if (v11)
      {
        goto LABEL_17;
      }

      v13 = *(v2 + 32);
      v14 = *(v2 + 40);
      v15 = swift_allocObject();
      v15[2] = a1;
      v15[3] = v7;
      v15[4] = 16;
      v15[5] = v8;
      v64 = sub_1B1B405F8;
      v65 = v15;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v63 = sub_1B1AD121C;
      *(&v63 + 1) = &block_descriptor_12;
      v16 = _Block_copy(&aBlock);
      v17 = a1;

      v18 = v8;

      *&aBlock = 0;
      v19 = v13;
      v20 = v61;
      v10 = [v19 convertToBuffer:v14 error:&aBlock withInputFromBlock:v16];
      _Block_release(v16);
      v11 = aBlock;
      v21 = aBlock;
      v12 = 1;
      if (v10 <= 1)
      {
        v22 = [v14 frameLength];
        v12 = v10;
        if (v22)
        {
          break;
        }
      }
    }

    result = [v14 audioBufferList];
    v54 = *(result + 2);
    if (!v54)
    {
      break;
    }

    v55 = *([v14 audioBufferList] + 3);
    (*v57)(v20, v58, v59);
    v24 = sub_1B1C2C218();
    v53[2] = v25;
    if (v55)
    {
      v53[1] = v24;
      v26 = sub_1B1C2BF58();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();

      v29 = sub_1B1C2BEF8();
      v30 = sub_1B1C2BF48();
      *v31 |= 0x8000000000000000;
      v30(&aBlock, 0);
      v55 = MEMORY[0x1B2737740](v29, v55);
      v54 = v32;
    }

    else
    {
      v33 = sub_1B1C2C218();
      v33(v54, 0);

      v55 = 0;
      v54 = 0xC000000000000000;
    }

    (*v56)(v61, v59);
    OUTLINED_FUNCTION_4_13();
    sub_1B1C2C318();
    v34 = OUTLINED_FUNCTION_4_13();
    sub_1B1A94524(v34, v35);
    v36 = [v14 frameLength];
    v37 = __OFADD__(v60, v36);
    v60 += v36;
    if (v37)
    {
      __break(1u);
LABEL_16:
      if (v11)
      {
LABEL_17:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1B1C2D538();

        *&aBlock = 0xD00000000000002CLL;
        *(&aBlock + 1) = 0x80000001B1C4D490;
        v38 = [v11 localizedDescription];
        v39 = sub_1B1C2CB58();
        v41 = v40;

        MEMORY[0x1B27381B0](v39, v41);

        v43 = *(&aBlock + 1);
        v42 = aBlock;
        sub_1B1A9EC9C();
        OUTLINED_FUNCTION_34();
        *v44 = 1;
        *(v44 + 8) = v42;
        *(v44 + 16) = v43;
        swift_willThrow();

        sub_1B1A94524(v66, *(&v66 + 1));
      }

      else
      {
        v42 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
        v46 = [*(v2 + 24) streamDescription];
        aBlock = *v46;
        v63 = v46[1];
        v64 = *(v46 + 4);

        v47 = &v42[OBJC_IVAR___SiriTTSAudioData_asbd];
        swift_beginAccess();
        *v47 = aBlock;
        *(v47 + 1) = v63;
        *(v47 + 4) = v64;
        v48 = v66;
        v49 = &v42[OBJC_IVAR___SiriTTSAudioData_audioData];
        swift_beginAccess();
        v50 = *v49;
        v51 = v49[1];
        *v49 = v48;
        sub_1B1A94524(v50, v51);
        v52 = OBJC_IVAR___SiriTTSAudioData_packetCount;
        swift_beginAccess();
        *&v42[v52] = v60;
      }

      v45 = *MEMORY[0x1E69E9840];
      return v42;
    }
  }

  __break(1u);
  return result;
}

_DWORD *sub_1B1B40160(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v53[15] = *MEMORY[0x1E69E9840];
  v11 = (a3 + OBJC_IVAR___SiriTTSAudioData_audioData);
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];
  switch(v12 >> 62)
  {
    case 1uLL:
      v31 = v13;
      v32 = v13 >> 32;
      goto LABEL_11;
    case 2uLL:
      v31 = *(v13 + 16);
      v32 = *(v13 + 24);
LABEL_11:
      if (v31 == v32)
      {
        goto LABEL_12;
      }

      goto LABEL_3;
    case 3uLL:
      goto LABEL_12;
    default:
      if ((v12 & 0xFF000000000000) == 0)
      {
LABEL_12:
        a6 = 0;
        v33 = 2;
LABEL_14:
        *a2 = v33;
LABEL_33:
        v49 = *MEMORY[0x1E69E9840];
        return a6;
      }

LABEL_3:
      swift_beginAccess();
      v14 = *(a4 + 16);
      v15 = OBJC_IVAR___SiriTTSAudioData_packetCount;
      swift_beginAccess();
      if (v14 >= *(a3 + v15))
      {
        a6 = 0;
        v33 = 1;
        goto LABEL_14;
      }

      *a2 = 0;
      v16 = v14 * a5;
      if ((v14 * a5) >> 64 != (v14 * a5) >> 63)
      {
        __break(1u);
        goto LABEL_35;
      }

      v17 = __OFADD__(v16, a5);
      v18 = v16 + a5;
      if (v17)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (v18 < v16)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v19 = (a3 + OBJC_IVAR___SiriTTSAudioData_packetDescriptions);
      swift_beginAccess();
      v21 = *v19;
      v20 = v19[1];
      sub_1B1AA64DC(v21, v20);
      v22 = sub_1B1C2C288();
      v24 = v23;
      sub_1B1A94524(v21, v20);
      v25 = sub_1B1B3F54C(v22, v24);
      v27 = HIDWORD(v26);
      v29 = *v11;
      v28 = v11[1];
      v30 = v25;
      switch(v28 >> 62)
      {
        case 1uLL:
          v50 = v25;
          v52 = v22;
          if (v29 > v29 >> 32)
          {
            goto LABEL_38;
          }

          v35 = a6;
          sub_1B1AA64DC(v29, v28);
          v41 = sub_1B1C2BF08();
          if (!v41)
          {
            goto LABEL_27;
          }

          v42 = v41;
          v43 = sub_1B1C2BF38();
          if (__OFSUB__(v29, v43))
          {
            goto LABEL_40;
          }

          v39 = v29 - v43 + v42;
          goto LABEL_28;
        case 2uLL:
          v50 = v25;
          v52 = v22;
          v34 = *(v29 + 16);
          v35 = a6;
          sub_1B1AA64DC(v29, v28);
          v36 = sub_1B1C2BF08();
          if (v36)
          {
            v37 = v36;
            v38 = sub_1B1C2BF38();
            if (__OFSUB__(v34, v38))
            {
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
            }

            v39 = v34 - v38 + v37;
          }

          else
          {
            v39 = 0;
          }

          sub_1B1C2BF28();
          if (!v39)
          {
            __break(1u);
LABEL_27:
            v39 = 0;
LABEL_28:
            result = sub_1B1C2BF28();
            if (!v39)
            {
              goto LABEL_42;
            }
          }

          v45 = [v35 data];
          memmove(v45, (v39 + v51), v27);
          sub_1B1A94524(v29, v28);

          v22 = v52;
LABEL_30:
          [a6 setByteLength_];
          result = [a6 packetDescriptions];
          if (result)
          {
            result[3] = v27;
            sub_1B1A94524(v22, v24);
            swift_beginAccess();
            v46 = *(a4 + 16);
            v17 = __OFADD__(v46, 1);
            v47 = v46 + 1;
            if (!v17)
            {
              *(a4 + 16) = v47;
              v48 = a6;
              goto LABEL_33;
            }

            goto LABEL_37;
          }

          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        case 3uLL:
          memset(v53, 0, 14);
          goto LABEL_19;
        default:
          v53[0] = *v11;
          LOWORD(v53[1]) = v28;
          BYTE2(v53[1]) = BYTE2(v28);
          BYTE3(v53[1]) = BYTE3(v28);
          BYTE4(v53[1]) = BYTE4(v28);
          BYTE5(v53[1]) = BYTE5(v28);
LABEL_19:
          v40 = a6;
          memcpy([v40 data], v53 + v30, v27);
          sub_1B1A94524(v29, v28);

          goto LABEL_30;
      }
  }
}

uint64_t OpusDecoder.__deallocating_deinit()
{
  OpusDecoder.deinit();
  v0 = OUTLINED_FUNCTION_1_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B1B40604(uint64_t a1)
{
  v2 = sub_1B1C2BF08();
  if (v2)
  {
    v3 = v2;
    result = sub_1B1C2BF38();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  result = sub_1B1C2BF28();
  if (v5)
  {
    result = *v5;
    v6 = v5[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of OpusDecoder.__allocating_init(destinationFormat:)(uint64_t *a1)
{
  v2 = *(v1 + 112);
  v5 = *a1;
  v3 = *(a1 + 3);
  v6 = *(a1 + 1);
  v7 = v3;
  return v2(&v5);
}

uint64_t sub_1B1B40740(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  v3 = sub_1B1AE3168(a1);
  sub_1B1A93AEC(v3, v4, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (!swift_dynamicCast())
  {
    return 4;
  }

  result = sub_1B1B19970();
  if (result == 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1B1B407D8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  v3 = sub_1B1AE3168(a1);
  sub_1B1A93AEC(v3, v4, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1B40878(char a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  sub_1B1AE3168(a1);
  if (*(v4 + 16) && (v5 = sub_1B1A8EB10(), (v6 & 1) != 0))
  {
    sub_1B1A93378(*(v4 + 56) + 32 * v5, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_1B1B40A60()
{
  v1 = sub_1B1AF16C4(5);
  if (v2)
  {
    return v1;
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v3 = 1061109567;
  v4 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v4, qword_1ED9A9120);
  v5 = v0;
  v6 = sub_1B1C2C888();
  v7 = sub_1B1C2D0C8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_21_0();
    v9 = OUTLINED_FUNCTION_19_0();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1B1A930E4(*&v5[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie], *&v5[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie + 8], &v11);
    _os_log_impl(&dword_1B1A8A000, v6, v7, "Missing identifier: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  return v3;
}

id sub_1B1B40BF0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t sub_1B1B40E78()
{
  v1 = v0;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v2 = sub_1B1AF1750();
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4();
  }

  v3 = qword_1ED9A9968;
  v4 = sub_1B1C2D248();

  v5 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  if (v4)
  {
  }

  else
  {

    return sub_1B1AE0B90(v5);
  }
}

void *sub_1B1B40FA0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_authorizedBundle;
  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_authorizedBundle);
  v4 = v3;
  if (v3)
  {
    goto LABEL_17;
  }

  v5 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_bundlePath + 8);
  if (!v5)
  {
    sub_1B1C2D0A8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12();
    }

    sub_1B1C2C7C8();
    goto LABEL_16;
  }

  v6 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_bundlePath);
  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);

  v7 = sub_1B1AE7720();
  if (!v7)
  {
    v15 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12();
    }

    v16 = qword_1ED9AA668;
    if (os_log_type_enabled(qword_1ED9AA668, v15))
    {

      v17 = OUTLINED_FUNCTION_21_0();
      v18 = OUTLINED_FUNCTION_19_0();
      v22 = v18;
      *v17 = 136446210;
      v19 = sub_1B1A930E4(v6, v5, &v22);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_1B1A8A000, v16, v15, "Invalid bundle path %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

LABEL_16:
    v4 = 0;
    goto LABEL_17;
  }

  v4 = v7;
  v8 = sub_1B1C2D0A8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  v9 = qword_1ED9AA668;
  if (os_log_type_enabled(qword_1ED9AA668, v8))
  {

    v10 = OUTLINED_FUNCTION_21_0();
    v11 = OUTLINED_FUNCTION_19_0();
    v22 = v11;
    *v10 = 136315138;
    v12 = sub_1B1A930E4(v6, v5, &v22);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_1B1A8A000, v9, v8, "Constructed bundle %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v13 = *(v1 + v2);
  *(v1 + v2) = v4;
  v14 = v4;

LABEL_17:
  v20 = v3;
  return v4;
}

uint64_t sub_1B1B412CC()
{
  if (([v0 locallyAvailable] & 1) == 0)
  {
    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v1 = OUTLINED_FUNCTION_54_0();
    *(v1 + 16) = xmmword_1B1C361C0;
    *(v1 + 56) = type metadata accessor for TTSAssetProxyAsset();
    *(v1 + 64) = sub_1B1B41BF4();
    *(v1 + 32) = v0;
    v2 = v0;
    sub_1B1C2C7C8();
  }

  return 0;
}

uint64_t sub_1B1B413A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v6 = OUTLINED_FUNCTION_54_0();
  *(v6 + 16) = xmmword_1B1C361C0;
  *(v6 + 56) = type metadata accessor for TTSAssetProxyAsset();
  *(v6 + 64) = sub_1B1B41BF4();
  *(v6 + 32) = v4;
  v7 = v4;
  sub_1B1C2C7C8();

  if (a4)
  {
    return a4(v7);
  }

  return result;
}

void sub_1B1B415A8(void *a1, void (**a2)(void, void))
{
  sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C361C0;
  *(v4 + 56) = type metadata accessor for TTSAssetProxyAsset();
  *(v4 + 64) = sub_1B1B41BF4();
  *(v4 + 32) = a1;
  v5 = a1;
  sub_1B1C2C7C8();

  (a2)[2](a2, v5);

  _Block_release(a2);
}

uint64_t sub_1B1B41724(uint64_t (*a1)(void))
{
  sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v3 = OUTLINED_FUNCTION_54_0();
  *(v3 + 16) = xmmword_1B1C361C0;
  *(v3 + 56) = type metadata accessor for TTSAssetProxyAsset();
  *(v3 + 64) = sub_1B1B41BF4();
  *(v3 + 32) = v1;
  v4 = v1;
  sub_1B1C2C7C8();

  if (a1)
  {
    return a1(0);
  }

  return result;
}

uint64_t sub_1B1B418C4()
{
  sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v1 = OUTLINED_FUNCTION_54_0();
  *(v1 + 16) = xmmword_1B1C361C0;
  *(v1 + 56) = type metadata accessor for TTSAssetProxyAsset();
  *(v1 + 64) = sub_1B1B41BF4();
  *(v1 + 32) = v0;
  v2 = v0;
  sub_1B1C2C7C8();
}

uint64_t sub_1B1B41A0C()
{
  sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v1 = OUTLINED_FUNCTION_54_0();
  *(v1 + 16) = xmmword_1B1C361C0;
  *(v1 + 56) = type metadata accessor for TTSAssetProxyAsset();
  *(v1 + 64) = sub_1B1B41BF4();
  *(v1 + 32) = v0;
  v2 = v0;
  sub_1B1C2C7C8();

  return 3;
}

id TTSAssetProxyAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B1B41B48()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie + 8);

  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_bundlePath + 8);

  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
}

id TTSAssetProxyAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSAssetProxyAsset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B1B41BF4()
{
  result = qword_1EB762718;
  if (!qword_1EB762718)
  {
    type metadata accessor for TTSAssetProxyAsset();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762718);
  }

  return result;
}

uint64_t sub_1B1B41C60()
{
  v132 = *MEMORY[0x1E69E9840];
  v1 = sub_1B1C2C0A8();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v125 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v108 - v11;
  v13 = sub_1B1C2C1C8();
  v14 = OUTLINED_FUNCTION_7(v13);
  v123 = v15;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v122 = (&v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v121 = &v108 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v108 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v108 - v25;
  v28 = *(v0 + 24);
  v27 = *(v0 + 32);
  v127 = v29;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v29);
  v30 = *(v4 + 104);
  v30(v8, *MEMORY[0x1E6968F70], v1);

  sub_1B1C2C198();
  v129 = 0xD000000000000013;
  v130 = 0x80000001B1C4D810;
  v31 = *MEMORY[0x1E6968F68];
  v30(v8, *MEMORY[0x1E6968F68], v1);
  v32 = sub_1B1A8EDAC();
  v124 = v26;
  sub_1B1C2C1B8();
  v33 = *(v125 + 8);
  v120 = v1;
  v34 = v125 + 8;
  v33(v8, v1);
  v126 = v24;
  v53 = sub_1B1C2C208();
  v55 = v54;
  v114 = v33;
  v115 = v32;
  v116 = v31;
  v117 = v30;
  v118 = v8;
  v119 = v4 + 104;
  v56 = v34;
  v57 = objc_opt_self();
  v58 = sub_1B1C2C298();
  v129 = 0;
  v59 = [v57 propertyListWithData:v58 options:0 format:0 error:&v129];

  if (!v59)
  {
    v95 = v129;
    v96 = sub_1B1C2C058();

    swift_willThrow();
    sub_1B1A94524(v53, v55);

    v48 = v126;
    v62 = v122;
LABEL_2:
    v35 = v127;
    v36 = v123;
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v37 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v37, qword_1ED9A9120);
    (*(v36 + 16))(v62, v48, v35);
    v38 = sub_1B1C2C888();
    v39 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v48;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v129 = v42;
      *v41 = 136315138;
      sub_1B1B317AC();
      v43 = sub_1B1C2D778();
      v45 = v44;
      v46 = OUTLINED_FUNCTION_4_15();
      (v30)(v46, v127);
      v47 = sub_1B1A930E4(v43, v45, &v129);
      v35 = v127;

      *(v41 + 4) = v47;
      _os_log_impl(&dword_1B1A8A000, v38, v39, "Unable to load voice_configs.plist from %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_11();
      v48 = v40;
      OUTLINED_FUNCTION_11();
    }

    else
    {

      v49 = OUTLINED_FUNCTION_4_15();
      (v30)(v49, v35);
    }

    (v30)(v48, v35);
    (v30)(v124, v35);
    goto LABEL_8;
  }

  v30 = v53;
  v60 = v129;
  sub_1B1C2D3F8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
  v61 = OUTLINED_FUNCTION_1_18();
  v48 = v126;
  v62 = v122;
  if ((v61 & 1) == 0)
  {
    sub_1B1A94524(v53, v55);
    goto LABEL_2;
  }

  v63 = v128;
  sub_1B1A93AEC(0xD000000000000013, 0x80000001B1C4D830, v128);
  v122 = v53;
  if (!v131)
  {

    sub_1B1A9937C(&v129);
LABEL_35:
    v97 = v127;
    v98 = v123;
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v99 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v99, qword_1ED9A9120);
    v100 = sub_1B1C2C888();
    v101 = sub_1B1C2D0B8();
    if (!os_log_type_enabled(v100, v101))
    {
      goto LABEL_46;
    }

    v102 = swift_slowAlloc();
    *v102 = 0;
    v103 = "Unable to parse vocalizer_resources";
    goto LABEL_45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
  if ((OUTLINED_FUNCTION_1_18() & 1) == 0)
  {

    goto LABEL_35;
  }

  v64 = v128;
  sub_1B1A93AEC(0xD000000000000018, 0x80000001B1C4D850, v63);

  if (!v131)
  {

    sub_1B1A9937C(&v129);
LABEL_41:
    v97 = v127;
    v98 = v123;
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v104 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v104, qword_1ED9A9120);
    v100 = sub_1B1C2C888();
    v101 = sub_1B1C2D0B8();
    if (!os_log_type_enabled(v100, v101))
    {
      goto LABEL_46;
    }

    v102 = swift_slowAlloc();
    *v102 = 0;
    v103 = "Unable to parse vocalizer_resources_order";
LABEL_45:
    _os_log_impl(&dword_1B1A8A000, v100, v101, v103, v102, 2u);
    v97 = v127;
    OUTLINED_FUNCTION_11();
LABEL_46:

    sub_1B1A94524(v122, v55);
    v105 = *(v98 + 8);
    v105(v48, v97);
    v105(v124, v97);
LABEL_8:
    v50 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if ((OUTLINED_FUNCTION_1_18() & 1) == 0)
  {

    goto LABEL_41;
  }

  v109 = v55;
  v66 = v128;
  v50 = MEMORY[0x1E69E7CC0];
  v128 = MEMORY[0x1E69E7CC0];
  v67 = *(v66 + 16);
  v110 = v66;
  if (v67)
  {
    v111 = (v123 + 8);
    v68 = (v66 + 40);
    *&v65 = 136315138;
    v112 = v65;
    v125 = v56;
    v113 = v64;
    do
    {
      v69 = v67;
      v71 = *(v68 - 1);
      v70 = *v68;
      v72 = v68;
      v73 = *(v64 + 16);

      if (v73 && (v74 = sub_1B1A8EB10(), (v75 & 1) != 0))
      {
        v76 = v64;
        v77 = v48;
        v78 = (*(v76 + 56) + 16 * v74);
        v79 = *v78;
        v80 = v78[1];
        v81 = objc_allocWithZone(SiriTTSSynthesisEngineResource);

        v82 = [v81 init];
        v83 = sub_1B1C2CB28();

        [v82 setMimeType_];

        v129 = v71;
        v130 = v70;
        v84 = v118;
        v85 = v120;
        v117(v118, v116, v120);
        v86 = v121;
        sub_1B1C2C1B8();
        v114(v84, v85);

        sub_1B1C2C098();
        (*v111)(v86, v127);
        v87 = sub_1B1C2CB28();

        [v82 setPath_];

        v88 = v82;
        MEMORY[0x1B2738320]();
        if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B1C2CE98();
        }

        sub_1B1C2CEC8();

        v50 = v128;
        v48 = v77;
        v30 = v122;
        v64 = v113;
      }

      else
      {
        if (qword_1ED9A9288 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v89 = sub_1B1C2C8A8();
        __swift_project_value_buffer(v89, qword_1ED9A9120);

        v90 = sub_1B1C2C888();
        v91 = sub_1B1C2D0B8();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v129 = v93;
          *v92 = v112;
          v94 = sub_1B1A930E4(v71, v70, &v129);

          *(v92 + 4) = v94;
          _os_log_impl(&dword_1B1A8A000, v90, v91, "Unknown mime-type for file %s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v93);
          OUTLINED_FUNCTION_11();
          v64 = v113;
          v30 = v122;
          OUTLINED_FUNCTION_11();
        }

        else
        {
        }

        v48 = v126;
      }

      v68 = v72 + 2;
      v67 = v69 - 1;
    }

    while (v69 != 1);
  }

  sub_1B1A94524(v30, v109);

  v106 = *(v123 + 8);
  v107 = v127;
  v106(v48, v127);
  v106(v124, v107);
LABEL_9:
  v51 = *MEMORY[0x1E69E9840];
  return v50;
}

void *sub_1B1B42850()
{
  v2 = v0;
  if (!sub_1B1ABF388())
  {
    sub_1B1A9EC9C();
    swift_allocError();
    *v11 = 1;
    *(v11 + 8) = 0xD00000000000002DLL;
    *(v11 + 16) = 0x80000001B1C4D7A0;
    return swift_willThrow();
  }

  v3 = *(v0 + 40);
  if (v3)
  {
    if (qword_1ED9A4DD0 != -1)
    {
      swift_once();
    }

    [v3 postNotificationName:qword_1ED9A4DD8 object:0];
  }

  v28 = v3;
  v4 = *(v2 + 32);
  v5 = *(v4 + 16);

  [v5 lock];
  v6 = *(v4 + 32);
  v7 = v6;
  [v5 unlock];

  if (v6)
  {
    v8 = [v7 tag];

    v9 = sub_1B1C2CB58();
    v6 = v10;
  }

  else
  {
    v9 = 0;
  }

  sub_1B1ABF3D0();
  v13 = sub_1B1ABE028();
  if (v1)
  {
  }

  v14 = v13;

  sub_1B1B22BDC(v14);
  v15 = sub_1B1B22BB4();
  if (!v15)
  {
    v21 = &off_1E7AF4000;
    if (!v6)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v16 = v15;
  v17 = [v15 tag];

  v18 = sub_1B1C2CB58();
  v20 = v19;

  v21 = &off_1E7AF4000;
  if (!v6)
  {
    if (!v20)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (!v20)
  {
LABEL_24:

    goto LABEL_25;
  }

  if (v9 == v18 && v6 == v20)
  {

    goto LABEL_30;
  }

  v23 = sub_1B1C2D7A8();

  if (v23)
  {
LABEL_30:
    v24 = v28;
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_37:
    sub_1B1AA81A8();
  }

LABEL_25:
  v24 = v28;
  if (!v28)
  {
    goto LABEL_37;
  }

  if (qword_1ED9A4D08 != -1)
  {
    swift_once();
  }

  [v28 v21[117]];
LABEL_31:
  if (qword_1ED9A4E58 != -1)
  {
    swift_once();
  }

  v25 = qword_1ED9A4E60;
  result = sub_1B1B22BB4();
  if (result)
  {
    v26 = result;
    v27 = [result tag];

    if (!v27)
    {
      sub_1B1C2CB58();
      v27 = sub_1B1C2CB28();
    }

    [v24 v21[117]];

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

void sub_1B1B42BF8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
}

uint64_t sub_1B1B42C4C@<X0>(uint64_t *a1@<X8>)
{
  result = SynthesisEngineSelectionAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B42CD8()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t sub_1B1B42D14()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);
  sub_1B1C2CAA8();
  os_unfair_lock_unlock((v0 + 16));
  return OUTLINED_FUNCTION_92();
}

uint64_t sub_1B1B42D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB7613B0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB772D20;
  v7 = sub_1B1AC9F5C(5, qword_1EB772D20);
  if (v7 != 2 && (v7 & 1) != 0)
  {
    v13 = a1;

    MEMORY[0x1B27381B0](0x6267385F3331682DLL, 0xE800000000000000);
    sub_1B1A93AEC(a1, a2, a3);

    if (v15)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_1B1A90C20(v14, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  v8 = sub_1B1AC9F5C(4, v6);
  if (v8 != 2 && (v8 & 1) != 0)
  {
    v13 = a1;

    MEMORY[0x1B27381B0](0x416C617275656E2DLL, 0xE900000000000058);
    sub_1B1A93AEC(a1, a2, a3);

    if (v15)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_1B1A90C20(v14, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  v9 = sub_1B1AC9F5C(3, v6);
  if (v9 != 2 && (v9 & 1) != 0)
  {
    v13 = a1;

    MEMORY[0x1B27381B0](808545581, 0xE400000000000000);
    sub_1B1A93AEC(a1, a2, a3);

    if (v15)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_1B1A90C20(v14, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  v10 = sub_1B1AC9F5C(2, v6);
  if (v10 != 2 && (v10 & 1) != 0)
  {
    v13 = a1;

    MEMORY[0x1B27381B0](0x646F50692DLL, 0xE500000000000000);
    sub_1B1A93AEC(a1, a2, a3);

    if (v15)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_1B1A90C20(v14, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  v11 = sub_1B1AC9F5C(1, v6);
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v13 = a1;

    MEMORY[0x1B27381B0](0x656E6F6850692DLL, 0xE700000000000000);
    sub_1B1A93AEC(a1, a2, a3);

    if (v15)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_1B1A90C20(v14, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  v13 = a1;

  MEMORY[0x1B27381B0](0x636972656E65672DLL, 0xE800000000000000);
  sub_1B1A93AEC(a1, a2, a3);

  if (v15)
  {
    if (swift_dynamicCast())
    {
      return v13;
    }
  }

  else
  {
    sub_1B1A90C20(v14, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return 0;
}

uint64_t sub_1B1B431D4()
{
  v1 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId];
  os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId]);
  v3 = *(v1 + 1);
  v2 = *(v1 + 2);

  os_unfair_lock_unlock(v1);
  v4 = type metadata accessor for TTSAssetUAFAsset(0);
  if (v2)
  {
    v10.receiver = v0;
    v10.super_class = v4;
    v5 = objc_msgSendSuper2(&v10, sel_description);
    sub_1B1C2CB58();

    v6 = OUTLINED_FUNCTION_72();
    MEMORY[0x1B27381B0](v6);

    v7 = OUTLINED_FUNCTION_92();
    MEMORY[0x1B27381B0](v7);
  }

  else
  {
    v11.receiver = v0;
    v11.super_class = v4;
    v8 = objc_msgSendSuper2(&v11, sel_description);
    sub_1B1C2CB58();
  }

  return OUTLINED_FUNCTION_43_0();
}

id sub_1B1B432F4()
{
  v0 = sub_1B1C2CB28();

  v1 = sub_1B1C2CB28();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

void sub_1B1B43388(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  if (sub_1B1A9547C(a2) == 1)
  {
    if (!sub_1B1B4802C(a3))
    {
      goto LABEL_4;
    }

    v6 = sub_1B1B67DE4(*(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier), *(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8), *(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16));
    v7 = sub_1B1B2A100(v6);

    if (!v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier;
    sub_1B1B67DE4(*(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier), *(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8), *(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16));
    v13 = sub_1B1C2CB28();

    sub_1B1B67C04(*v12, *(v12 + 8), *(v12 + 16));
    v14 = sub_1B1C2CA78();

    v7 = [a3 assetNamed:v13 withUsage:v14];

    if (!v7)
    {
LABEL_4:
      v8 = (v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path);
      os_unfair_lock_lock((v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path));
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940) + 28);
      sub_1B1A90C20(v8 + v9, &unk_1EB761F00, &qword_1B1C36480);
      v10 = sub_1B1C2C1C8();
      __swift_storeEnumTagSinglePayload(v8 + v9, 1, 1, v10);
      os_unfair_lock_unlock(v8);
      v11 = 0;
LABEL_15:
      v34 = v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty;
      os_unfair_lock_lock((v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty));
      *(v34 + 4) = 0;
      os_unfair_lock_unlock(v34);

      return;
    }
  }

  v15 = *(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);
  v11 = v7;

  v16 = [v11 metadata];
  v17 = sub_1B1C2CA98();

  v18 = sub_1B1B47A68(v17);

  sub_1B1BFFF38(v18);

  os_unfair_lock_lock((v15 + 16));

  sub_1B1B479F4(v19, sub_1B1AA0B88, 0, (v15 + 24));
  if (!v3)
  {
    os_unfair_lock_unlock((v15 + 16));

    v20 = [v11 metadata];
    v21 = sub_1B1C2CA98();

    v22 = *MEMORY[0x1E69DEF10];
    v23 = sub_1B1C2CB58();
    v25 = sub_1B1A945F4(v23, v24, v21);
    v27 = v26;

    if (v27)
    {
      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v29 = v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId;
        os_unfair_lock_lock((v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId));
        v30 = *(v29 + 16);

        *(v29 + 8) = v25;
        *(v29 + 16) = v27;
LABEL_14:
        os_unfair_lock_unlock(v29);
        v32 = (v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path);
        os_unfair_lock_lock((v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path));
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940);
        sub_1B1B43764(v32 + *(v33 + 28), v11);
        os_unfair_lock_unlock(v32);

        goto LABEL_15;
      }
    }

    v29 = v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId;
    os_unfair_lock_lock((v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId));
    v31 = *(v29 + 16);

    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    goto LABEL_14;
  }

  os_unfair_lock_unlock((v15 + 16));
  __break(1u);
}

uint64_t sub_1B1B43764(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  sub_1B1A90C20(a1, &unk_1EB761F00, &qword_1B1C36480);
  v8 = [a2 location];
  if (v8)
  {
    v9 = v8;
    sub_1B1C2C168();

    v10 = sub_1B1C2C1C8();
    v11 = 0;
  }

  else
  {
    v10 = sub_1B1C2C1C8();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v11, 1, v10);
  return sub_1B1B480BC(v7, a1);
}

void sub_1B1B4386C()
{
  type metadata accessor for TTSAssetUAFAsset(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C37D90;
  *(inited + 32) = v0;
  v0;
  sub_1B1AB7D70(inited);
  swift_setDeallocating();
  sub_1B1B2EFA8();
  sub_1B1AA0BC0();
}

uint64_t sub_1B1B43988()
{
  result = sub_1B1AC93E4();
  qword_1EB772D20 = result;
  return result;
}

uint64_t sub_1B1B439A8()
{
  v0 = sub_1B1C2D6C8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1B43A04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1B439A8();
  *a2 = result;
  return result;
}

uint64_t sub_1B1B43A34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1ACB1D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B1B43AE8(void *a1)
{
  v2 = v1 + *a1;
  os_unfair_lock_lock(v2);
  sub_1B1B43B5C((v2 + 8), v1, &v4);
  os_unfair_lock_unlock(v2);
  return v4;
}

unsigned __int8 *sub_1B1B43B5C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (v5)
  {
    goto LABEL_78;
  }

  v6 = *(a2 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);

  v7 = v6;
  sub_1B1AB9288();

  if (!v25[3])
  {
    sub_1B1A90C20(v25, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_16_12();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_77:
    v5 = 0;
LABEL_78:
    *a3 = v5;
    return v5;
  }

  result = v23;
  v9 = HIBYTE(v24) & 0xF;
  v10 = v23 & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v11 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_77;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    sub_1B1B2F4AC(v23, v24, 0xAuLL);
    v7 = v20;
    v22 = v21;

    if (v22)
    {
      goto LABEL_77;
    }

    goto LABEL_81;
  }

  if ((v24 & 0x2000000000000000) == 0)
  {
    if ((v23 & 0x1000000000000000) != 0)
    {
      result = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v12 = *result;
    if (v12 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1();
              if (!v14 && v13)
              {
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_38_3();
              if (!v14)
              {
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_29_2();
              if (v13)
              {
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_5_0();
              if (v14)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_65;
        }

        goto LABEL_75;
      }

      goto LABEL_85;
    }

    if (v12 != 45)
    {
      if (v10)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            v18 = *result - 48;
            if (v18 > 9)
            {
              goto LABEL_75;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              goto LABEL_75;
            }

            v13 = __CFADD__(10 * v7, v18);
            v7 = 10 * v7 + v18;
            if (v13)
            {
              goto LABEL_75;
            }

            ++result;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_75:
      v7 = 0;
      v16 = 1;
LABEL_76:
      v19 = v16;

      if (v19)
      {
        goto LABEL_77;
      }

LABEL_81:
      v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      *a1 = v5;
      goto LABEL_78;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1();
            if (!v14 && v13)
            {
              goto LABEL_75;
            }

            OUTLINED_FUNCTION_38_3();
            if (!v14)
            {
              goto LABEL_75;
            }

            v13 = 10 * v7 >= v15;
            v7 = 10 * v7 - v15;
            if (!v13)
            {
              goto LABEL_75;
            }

            OUTLINED_FUNCTION_5_0();
            if (v14)
            {
              goto LABEL_76;
            }
          }
        }

LABEL_65:
        v16 = 0;
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v25[0] = v23;
  v25[1] = v24 & 0xFFFFFFFFFFFFFFLL;
  if (v23 != 43)
  {
    if (v23 != 45)
    {
      if (v9)
      {
        v7 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_1();
          if (!v14 && v13)
          {
            break;
          }

          OUTLINED_FUNCTION_38_3();
          if (!v14)
          {
            break;
          }

          OUTLINED_FUNCTION_29_2();
          if (v13)
          {
            break;
          }

          OUTLINED_FUNCTION_5_0();
          if (v14)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_48_6();
        while (1)
        {
          OUTLINED_FUNCTION_1();
          if (!v14 && v13)
          {
            break;
          }

          OUTLINED_FUNCTION_38_3();
          if (!v14)
          {
            break;
          }

          v13 = 10 * v7 >= v17;
          v7 = 10 * v7 - v17;
          if (!v13)
          {
            break;
          }

          OUTLINED_FUNCTION_5_0();
          if (v14)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_84;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      OUTLINED_FUNCTION_48_6();
      while (1)
      {
        OUTLINED_FUNCTION_1();
        if (!v14 && v13)
        {
          break;
        }

        OUTLINED_FUNCTION_38_3();
        if (!v14)
        {
          break;
        }

        OUTLINED_FUNCTION_29_2();
        if (v13)
        {
          break;
        }

        OUTLINED_FUNCTION_5_0();
        if (v14)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_75;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1B1B43F04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v5 = *a1;
  if (!v5)
  {
    v6 = *(a2 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);

    sub_1B1AB9288();

    if (v19[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
      if (swift_dynamicCast())
      {
        v7 = *(v18 + 16);
        if (v7)
        {
          v17 = v3;
          v20 = MEMORY[0x1E69E7CC0];
          sub_1B1AC9FA8();
          v8 = v20;
          sub_1B1A8EDAC();
          v9 = (v18 + 40);
          do
          {
            v10 = *v9;
            v19[0] = *(v9 - 1);
            v19[1] = v10;
            v11 = sub_1B1C2D398();
            v13 = v12;
            v20 = v8;
            v14 = *(v8 + 16);
            if (v14 >= *(v8 + 24) >> 1)
            {
              sub_1B1AC9FA8();
              v8 = v20;
            }

            *(v8 + 16) = v14 + 1;
            v15 = v8 + 16 * v14;
            *(v15 + 32) = v11;
            *(v15 + 40) = v13;
            v9 += 2;
            --v7;
          }

          while (v7);

          v3 = v17;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1B1A90C20(v19, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    v8 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *v3 = v8;
    *a3 = v8;
  }

  *a3 = v5;
}