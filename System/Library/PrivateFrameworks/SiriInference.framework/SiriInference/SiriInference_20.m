int64_t sub_1DD4F09F4(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1DD59AF80(v3, -result, 0, a2);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_1DD4BE560(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4F0AE0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDE98, &qword_1DD6555F0);
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_130(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDEA8, &qword_1DD655618);
  OUTLINED_FUNCTION_2_61();
  sub_1DD3FAC5C(v4, &qword_1ECCDDE98, &qword_1DD6555F0);
  return sub_1DD63F688();
}

void sub_1DD4F0BAC()
{
  OUTLINED_FUNCTION_18_4();
  v3 = v2;
  v5 = v4;
  v51 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDEB8, &qword_1DD655620);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v50 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDE98, &qword_1DD6555F0);
  v16 = OUTLINED_FUNCTION_3(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_47();
  v19 = sub_1DD63F648();
  v52 = OUTLINED_FUNCTION_0(v19);
  v53 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_10_0();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDEC0, &qword_1DD655628);
  v23 = OUTLINED_FUNCTION_0(v49);
  v54 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_4();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_16_3();
  v47 = v31;
  v55 = v5;
  v56 = v3;
  v48 = sub_1DD3B530C();
  MEMORY[0x1E12AFE30](v57, &v55, MEMORY[0x1E69E6158], v48);
  sub_1DD63DB48();
  sub_1DD4F0FCC();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDEA8, &qword_1DD655618);
  OUTLINED_FUNCTION_2_61();
  sub_1DD3FAC5C(v33, &qword_1ECCDDEB8, &qword_1DD655620);
  v34 = v32;
  v43 = v32;
  v44 = v7;
  sub_1DD63F628();
  v35 = *(v8 + 8);
  v46 = v8 + 8;
  v35(v14, v7);
  v36 = *(v53 + 8);
  v53 += 8;
  v45 = v36;
  v36(v0, v52);
  MEMORY[0x1E12AFE70](v1, v34);
  v37 = sub_1DD3FAC5C(&qword_1ECCDDED0, &qword_1ECCDDEC0, &qword_1DD655628);
  v38 = v47;
  v39 = v49;
  MEMORY[0x1E12AFE30](v29, v49, v37);
  v40 = *(v54 + 8);
  v54 += 8;
  v40(v29, v39);
  v55 = v57[0];
  v56 = v57[1];
  sub_1DD63DB38();

  sub_1DD63DB48();
  v41 = v50;
  v42 = v44;
  sub_1DD63F618();
  sub_1DD63F608();
  v35(v41, v42);
  v45(v0, v52);
  v35(v14, v42);
  v40(v38, v39);
  OUTLINED_FUNCTION_17();
}

void sub_1DD4F0FCC()
{
  OUTLINED_FUNCTION_18_4();
  v61 = v2;
  v3 = sub_1DD63DB58();
  v4 = OUTLINED_FUNCTION_0(v3);
  v57 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDEB8, &qword_1DD655620);
  v59 = OUTLINED_FUNCTION_0(v14);
  v60 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_1_4();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_16_3();
  v55 = v22;
  v58 = sub_1DD63F648();
  v23 = OUTLINED_FUNCTION_0(v58);
  v56 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_10_0();
  v52 = v0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDED8, &qword_1DD655630);
  v28 = OUTLINED_FUNCTION_3(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6_47();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDEE0, &qword_1DD655638);
  v32 = OUTLINED_FUNCTION_0(v31);
  v54 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1_4();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_16_3();
  v53 = v40;
  v41 = sub_1DD63F678();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v41);
  sub_1DD63DB48();
  sub_1DD63F658();
  v42 = sub_1DD4F29F0(&qword_1ECCDDEE8, MEMORY[0x1E69E8250]);
  MEMORY[0x1E12AFE30](v10, v3, v42);
  v43 = *(v57 + 8);
  v43(v10, v3);
  sub_1DD63DB38();
  v43(v13, v3);
  OUTLINED_FUNCTION_2_61();
  sub_1DD3FAC5C(v44, &qword_1ECCDDEB8, &qword_1DD655620);
  v45 = MEMORY[0x1E69E67B0];
  v46 = v55;
  v47 = v59;
  v48 = v52;
  sub_1DD63F638();
  (*(v60 + 8))(v20, v47);
  (*(v56 + 8))(v48, v58);
  sub_1DD3ADFD0(v1, &qword_1ECCDDED8, &qword_1DD655630);
  MEMORY[0x1E12AFE80](v46, v45);
  v49 = sub_1DD3FAC5C(&qword_1ECCDDEF0, &qword_1ECCDDEE0, &qword_1DD655638);
  v50 = v53;
  MEMORY[0x1E12AFE30](v38, v31, v49);
  v51 = *(v54 + 8);
  v51(v38, v31);
  sub_1DD63DB38();
  v51(v50, v31);
  OUTLINED_FUNCTION_17();
}

void sub_1DD4F1444()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDE88, &qword_1DD6555E0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDE90, &qword_1DD6555E8);
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_4();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70[-v24];
  if (v1)
  {
    v26 = v3 == 0x6563726F66 && v1 == 0xE500000000000000;
    if (v26 || (sub_1DD640CD8() & 1) != 0)
    {

      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v27 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v27, qword_1ECD0DDF0);
      v28 = sub_1DD63F9D8();
      v29 = sub_1DD640368();
      if (!OUTLINED_FUNCTION_5_6(v29))
      {
        goto LABEL_12;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DD38D000, v28, v10, "LearnedChoiceExtractor: Using default strategy for prediction but will always disambiguate.", v30, 2u);
      goto LABEL_11;
    }

    v31 = v3 == 0x74736574616CLL && v1 == 0xE600000000000000;
    if (v31 || (sub_1DD640CD8() & 1) != 0)
    {

      goto LABEL_13;
    }

    if (qword_1ECCDB088 != -1)
    {
      swift_once();
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDE98, &qword_1DD6555F0);
    __swift_project_value_buffer(v32, qword_1ECCDDE58);
    sub_1DD4F1B64();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_1DD3ADFD0(v13, &qword_1ECCDDE88, &qword_1DD6555E0);
      if (qword_1ECCDB090 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v32, qword_1ECCDDE70);
      sub_1DD4F1B64();
      if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
      {
        sub_1DD3ADFD0(v10, &qword_1ECCDDE88, &qword_1DD6555E0);
        if (qword_1ECCDB0E0 != -1)
        {
          OUTLINED_FUNCTION_0_7();
        }

        v33 = sub_1DD63F9F8();
        OUTLINED_FUNCTION_130(v33, qword_1ECD0DDF0);

        v28 = sub_1DD63F9D8();
        v34 = sub_1DD640378();

        if (!os_log_type_enabled(v28, v34))
        {

          goto LABEL_12;
        }

        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v71 = v36;
        *v35 = 136315138;
        v37 = sub_1DD39565C(v3, v1, &v71);

        *(v35 + 4) = v37;
        _os_log_impl(&dword_1DD38D000, v28, v34, "LearnedChoiceExtractor: Could not parse [%s]", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_0_1();
LABEL_11:
        OUTLINED_FUNCTION_0_1();
LABEL_12:

        goto LABEL_13;
      }

      (*(v17 + 32))(v22, v10, v14);
      KeyPath = swift_getKeyPath();
      sub_1DD63F6A8();

      if ((v72 ^ v71) >> 14)
      {
        v55 = OUTLINED_FUNCTION_13_30();
        sub_1DD4F2314(v55, v56, v57, v58, v59);
        if ((v60 & 0x100) != 0)
        {
          v61 = OUTLINED_FUNCTION_13_30();
          sub_1DD4F1D80(v61, v62, v63, v64, v65);
        }

        KeyPath = v60;

        if ((KeyPath & 1) == 0)
        {
          (*(v17 + 8))(v22, v14);
          goto LABEL_13;
        }
      }

      else
      {
      }

      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v66 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v66, qword_1ECD0DDF0);
      v67 = sub_1DD63F9D8();
      v68 = sub_1DD640378();
      if (OUTLINED_FUNCTION_4_0(v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_1DD38D000, v67, KeyPath, "LearnedChoiceExtractor: Could not get Int count", v69, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      (*(v17 + 8))(v22, v14);
    }

    else
    {

      (*(v17 + 32))(v25, v13, v14);
      v38 = swift_getKeyPath();
      sub_1DD63F6A8();

      if ((v72 ^ v71) >> 14)
      {
        v39 = OUTLINED_FUNCTION_11_35();
        sub_1DD4F2314(v39, v40, v41, v42, v43);
        if ((v44 & 0x100) != 0)
        {
          v45 = OUTLINED_FUNCTION_11_35();
          sub_1DD4F1D80(v45, v46, v47, v48, v49);
        }

        v38 = v44;

        if ((v38 & 1) == 0)
        {
          (*(v17 + 8))(v25, v14);
          goto LABEL_13;
        }
      }

      else
      {
      }

      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v50 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v50, qword_1ECD0DDF0);
      v51 = sub_1DD63F9D8();
      v52 = sub_1DD640378();
      if (OUTLINED_FUNCTION_4_0(v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1DD38D000, v51, v38, "LearnedChoiceExtractor: Could not get Int count", v53, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      (*(v17 + 8))(v25, v14);
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4F1B64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDE98, &qword_1DD6555F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  sub_1DD3FAC5C(&qword_1ECCDDEB0, &qword_1ECCDDE98, &qword_1DD6555F0);
  sub_1DD63F668();
  sub_1DD4F1D4C();
  sub_1DD63F698();
  (*(v1 + 8))(v4, v0);
}

void sub_1DD4F1D2C()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 8);
  sub_1DD4F016C();
}

uint64_t sub_1DD4F1D3C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1DD4F0118();
}

unsigned __int8 *sub_1DD4F1D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1DD4F23F0();

  result = sub_1DD640048();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1DD511C60();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DD640948();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
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

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1DD4F2314(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1DD640948();
  }

  result = sub_1DD4F2444(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1DD4F23F0()
{
  result = qword_1ECCDDEA0;
  if (!qword_1ECCDDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDEA0);
  }

  return result;
}

uint64_t sub_1DD4F2444(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1DD625824(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1DD63FFC8();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1DD625824(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1DD625824(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1DD63FFC8();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
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

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1DD4F2880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1DD4F28C0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1DD4F2910(uint64_t a1)
{
  result = sub_1DD4F2938();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD4F2938()
{
  result = qword_1ECCDDEF8;
  if (!qword_1ECCDDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDEF8);
  }

  return result;
}

uint64_t sub_1DD4F298C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnedDisambiguation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4F29F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD4F2A90(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC780(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD4F65EC(v6);
  *a1 = v2;
  return result;
}

void LearnedDisambiguation.cloneForPredictionRecord()()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DD63D0F8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v14 = *v1;
  v13 = v1[1];

  sub_1DD63D0E8();
  v15 = sub_1DD63D098();
  v17 = v16;
  (*(v7 + 8))(v12, v4);
  v18 = type metadata accessor for LearnedDisambiguation();
  v19 = v3 + v18[6];
  sub_1DD63D068();
  v20 = *(v1 + v18[7]);
  v21 = *(v1 + v18[8]);
  *v3 = v14;
  v3[1] = v13;
  v3[2] = v15;
  v3[3] = v17;
  *(v3 + v18[7]) = v20;
  *(v3 + v18[8]) = v21;
  v22 = (v3 + v18[9]);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_41_10((v3 + v18[10]));

  OUTLINED_FUNCTION_17();
}

uint64_t type metadata accessor for LearnedDisambiguation()
{
  result = qword_1ECCDDF08;
  if (!qword_1ECCDDF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD4F2C78(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_1DD63D558();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD4F2D38, 0, 0);
}

uint64_t sub_1DD4F2D38()
{
  sub_1DD63D718();
  sub_1DD63D708();
  sub_1DD63D6E8();

  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_15_2();
  v2 = sub_1DD63D7A8();
  v0[11] = v2;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1DD4F2E6C;
  v5 = v0[10];
  v6 = v0[8];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0x6465726568746167, 0xEA00000000002928, sub_1DD4F6520, v2, v6);
}

uint64_t sub_1DD4F2E6C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1DD4F3028;
  }

  else
  {
    v3 = sub_1DD4F2F80;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD4F2F80()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  sub_1DD63D548();
  sub_1DD4F5968();

  (*(v4 + 8))(v2, v3);
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DD4F3028()
{
  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v1 = *(v0 + 104);
  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1ECD0DDF0);
  v3 = OUTLINED_FUNCTION_15_2();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  v8 = *(v0 + 88);
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_54();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1DD38D000, v4, v5, "Could not gather signal values: %@", v9, 0xCu);
    sub_1DD390754(v10, &qword_1ECCDBF90, &qword_1DD6445B0);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
    v13 = *(v0 + 88);
  }

  OUTLINED_FUNCTION_41_10(*(v0 + 56));
  v14 = *(v0 + 80);

  v15 = *(v0 + 8);

  return v15();
}

void LearnedDisambiguation.init(useCase:id:timestamp:choices:selection:encodedPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18_4();
  v23 = v22;
  v49 = v24;
  v50 = v25;
  v47 = v26;
  v48 = v27;
  v29 = v28;
  v46 = sub_1DD63D9E8();
  v30 = OUTLINED_FUNCTION_0(v46);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2();
  v37 = v36 - v35;
  v38 = type metadata accessor for LearnedDisambiguation();
  v39 = v38[6];
  v40 = sub_1DD63D078();
  v41 = *(v40 - 8);
  (*(v41 + 16))(&v29[v39], v23, v40);
  sub_1DD4F3F88();
  v45 = v42;

  sub_1DD63FE58();

  sub_1DD63D9F8();
  v43 = sub_1DD63D9D8();
  (*(v41 + 8))(v23, v40);
  (*(v32 + 8))(v37, v46);
  *v29 = v47;
  *(v29 + 1) = v48;
  *(v29 + 2) = v49;
  *(v29 + 3) = v50;
  *&v29[v38[7]] = v45;
  *&v29[v38[8]] = v43;
  v44 = &v29[v38[9]];
  *v44 = a21;
  *(v44 + 1) = a22;
  OUTLINED_FUNCTION_41_10(&v29[v38[10]]);
  OUTLINED_FUNCTION_17();
}

uint64_t LearnedDisambiguation.useCase.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LearnedDisambiguation.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LearnedDisambiguation.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LearnedDisambiguation() + 24);
  v4 = sub_1DD63D078();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t LearnedDisambiguation.choices.getter()
{
  v1 = *(v0 + *(type metadata accessor for LearnedDisambiguation() + 28));
}

uint64_t LearnedDisambiguation.choicesHash.getter()
{
  v1 = sub_1DD63D9E8();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v7 = *(v0 + *(type metadata accessor for LearnedDisambiguation() + 28));

  sub_1DD63DA08();
  v8 = sub_1DD63D9D8();
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_14_9();
  v11(v10);
  return v8;
}

__n128 LearnedDisambiguation.signalValues.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LearnedDisambiguation() + 40));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

void sub_1DD4F35D8()
{
  OUTLINED_FUNCTION_18_4();
  v1 = sub_1DD63F438();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_0();
  v71 = v11;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_0();
  v75 = v13;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v70 - v15);
  v17 = sub_1DD63FC88();
  v76 = v0;
  v18 = v0[1];
  *v16 = *v0;
  v16[1] = v18;
  v19 = *MEMORY[0x1E69D2AE8];
  v79 = *(v4 + 104);
  v70[0] = v1;
  v79(v16, v19, v1);
  v78 = *(v4 + 32);
  v20 = OUTLINED_FUNCTION_5_9();
  v21(v20);

  swift_isUniquelyReferenced_nonNull_native();
  *&v81 = v17;
  v22 = OUTLINED_FUNCTION_18_26();
  sub_1DD3FFF08(v22, v23);
  v24 = v76[3];
  *v16 = v76[2];
  v16[1] = v24;
  v72 = v19;
  v25 = v70[0];
  OUTLINED_FUNCTION_16_31();
  v26();
  v27 = OUTLINED_FUNCTION_5_9();
  v78(v27);

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_24();
  v28 = OUTLINED_FUNCTION_18_26();
  sub_1DD3FFF08(v28, 25705);
  v29 = v81;
  v30 = type metadata accessor for LearnedDisambiguation();
  v31 = v76 + *(v30 + 24);
  sub_1DD63CF48();
  *v16 = v32;
  v79(v16, *MEMORY[0x1E69D2AD8], v25);
  v33 = v75;
  v73 = v16;
  v77 = v4 + 32;
  (v78)(v75, v16, v25);
  v34 = v33;
  swift_isUniquelyReferenced_nonNull_native();
  *&v81 = v29;
  sub_1DD3FFF08(v33, 0x6D617473656D6974);
  v70[1] = v81;
  v74 = v30;
  v35 = *(v76 + *(v30 + 28));
  v36 = *(v35 + 16);
  if (v36)
  {
    *&v81 = MEMORY[0x1E69E7CC0];
    sub_1DD42BD68(0, v36, 0);
    v37 = v81;
    v38 = (v35 + 32);
    v39 = *MEMORY[0x1E69D2AC0];
    do
    {
      v40 = *v38++;
      *v9 = v40;
      OUTLINED_FUNCTION_16_31();
      v41();
      *&v81 = v37;
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1DD42BD68(v42 > 1, v43 + 1, 1);
        v37 = v81;
      }

      *(v37 + 16) = v43 + 1;
      (v78)(v37 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v43, v9, v25);
      --v36;
    }

    while (v36);
    v44 = v75;
  }

  else
  {
    v39 = *MEMORY[0x1E69D2AC0];
    v37 = MEMORY[0x1E69E7CC0];
    v44 = v34;
  }

  v45 = v71;
  *v71 = v37;
  v46 = v79;
  v79(v45, *MEMORY[0x1E69D2AD0], v25);
  v47 = v73;
  v48 = v78;
  (v78)(v73, v45, v25);
  v49 = v48;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_24();
  sub_1DD3FFF08(v47, 0x736563696F6863);
  *v47 = *(v76 + *(v74 + 32));
  v46(v47, v39, v25);
  v50 = v44;
  v51 = v44;
  v52 = v49;
  (v49)(v50, v47, v25);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_24();
  v53 = OUTLINED_FUNCTION_18_26();
  sub_1DD3FFF08(v53, v54);
  v55 = v74;
  v56 = v76;
  v57 = (v76 + *(v74 + 36));
  v58 = v57[1];
  *v47 = *v57;
  v47[1] = v58;
  OUTLINED_FUNCTION_16_31();
  v59();
  v60 = OUTLINED_FUNCTION_5_9();
  v52(v60);

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_24();
  v61 = OUTLINED_FUNCTION_18_26();
  sub_1DD3FFF08(v61, v62);
  v63 = v81;
  v64 = (v56 + *(v55 + 40));
  v65 = *(v64 + 2);
  v81 = *v64;
  v82 = v65;
  sub_1DD4F3BBC();
  *v47 = v66;
  v67 = *MEMORY[0x1E69D2AE0];
  OUTLINED_FUNCTION_16_31();
  v68();
  v69 = OUTLINED_FUNCTION_5_9();
  v52(v69);
  swift_isUniquelyReferenced_nonNull_native();
  v80 = v63;
  sub_1DD3FFF08(v51, 0x61566C616E676973);
  OUTLINED_FUNCTION_17();
}

void sub_1DD4F3BBC()
{
  OUTLINED_FUNCTION_18_4();
  v1 = sub_1DD63F438();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v27 - v11);
  v13 = *v0;
  v14 = v0[1];
  v27 = v0[2];
  v15 = sub_1DD63FC88();
  *v12 = v13;
  v16 = *MEMORY[0x1E69D2AC0];
  v17 = *(v4 + 104);
  v18 = OUTLINED_FUNCTION_13_31();
  v17(v18);
  v19 = *(v4 + 32);
  v20 = OUTLINED_FUNCTION_11_36();
  v19(v20);
  swift_isUniquelyReferenced_nonNull_native();
  v28 = v15;
  sub_1DD3FFF08(v9, 3223670);
  v21 = v28;
  *v12 = v14;
  v22 = OUTLINED_FUNCTION_13_31();
  v17(v22);
  v23 = OUTLINED_FUNCTION_11_36();
  v19(v23);
  swift_isUniquelyReferenced_nonNull_native();
  v28 = v21;
  sub_1DD3FFF08(v9, 3289206);
  v24 = v28;
  *v12 = v27;
  v25 = OUTLINED_FUNCTION_13_31();
  v17(v25);
  v26 = OUTLINED_FUNCTION_11_36();
  v19(v26);
  swift_isUniquelyReferenced_nonNull_native();
  v28 = v24;
  sub_1DD3FFF08(v9, 3354742);
  OUTLINED_FUNCTION_17();
}

uint64_t LearnedDisambiguation.description.getter()
{
  v1 = v0;
  sub_1DD6408D8();
  OUTLINED_FUNCTION_15_28();
  MEMORY[0x1E12B2260](*v1, v1[1]);
  MEMORY[0x1E12B2260](0x3D6469202CLL, 0xE500000000000000);
  MEMORY[0x1E12B2260](v1[2], v1[3]);
  MEMORY[0x1E12B2260](0x7473656D6974202CLL, 0xEC0000003D706D61);
  v2 = type metadata accessor for LearnedDisambiguation();
  v3 = v0 + v2[6];
  v9 = sub_1DD480258() >> 32;
  v4 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v4);

  MEMORY[0x1E12B2260](0x6563696F6863202CLL, 0xEA00000000003D73);
  v5 = MEMORY[0x1E12B2430](*(v1 + v2[7]), MEMORY[0x1E69E7668]);
  MEMORY[0x1E12B2260](v5);

  MEMORY[0x1E12B2260](0x7463656C6573202CLL, 0xEC0000003D6E6F69);
  v8 = *(v1 + v2[8]);
  v6 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v6);

  OUTLINED_FUNCTION_15_28();
  MEMORY[0x1E12B2260](*(v1 + v2[9]), *(v1 + v2[9] + 8));
  MEMORY[0x1E12B2260](32093, 0xE200000000000000);
  return HIDWORD(v9);
}

void sub_1DD4F3F88()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = sub_1DD63D9E8();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v8 = *(v1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DD42BCF4();
    v9 = v19;
    v10 = (v5 + 8);
    v11 = (v1 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_1DD63FE58();

      sub_1DD63D9F8();
      v14 = sub_1DD63D9D8();
      v15 = *v10;
      v16 = OUTLINED_FUNCTION_14_9();
      v17(v16);

      v19 = v9;
      v18 = *(v9 + 16);
      if (v18 >= *(v9 + 24) >> 1)
      {
        sub_1DD42BCF4();
        v9 = v19;
      }

      *(v9 + 16) = v18 + 1;
      *(v9 + 4 * v18 + 32) = v14;
      v11 += 2;
      --v8;
    }

    while (v8);
  }

  v19 = v9;

  sub_1DD4F2A90(&v19);

  OUTLINED_FUNCTION_17();
}

uint64_t static LearnedDisambiguation.< infix(_:_:)()
{
  v0 = *(type metadata accessor for LearnedDisambiguation() + 24);

  return sub_1DD63CFC8();
}

uint64_t static LearnedDisambiguation.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for LearnedDisambiguation();
  v7 = v6[6];
  if ((sub_1DD63D028() & 1) == 0 || (sub_1DD3C43B4(*(a1 + v6[7]), *(a2 + v6[7])) & 1) == 0 || *(a1 + v6[8]) != *(a2 + v6[8]))
  {
    return 0;
  }

  v8 = v6[9];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    return 1;
  }

  return sub_1DD640CD8();
}

void LearnedDisambiguation.decodePayload<A>(to:)()
{
  OUTLINED_FUNCTION_18_4();
  v43[2] = v1;
  v43[3] = v2;
  v4 = v3;
  v44 = v5;
  v6 = sub_1DD6405F8();
  v7 = OUTLINED_FUNCTION_0(v6);
  v43[1] = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = v43 - v11;
  v13 = sub_1DD63FE28();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  v22 = sub_1DD63C7A8();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1DD63C798();
  v25 = (v0 + *(type metadata accessor for LearnedDisambiguation() + 36));
  v26 = *v25;
  v27 = v25[1];
  sub_1DD63FE18();
  v28 = sub_1DD63FDE8();
  v30 = v29;
  (*(v16 + 8))(v21, v13);
  if (v30 >> 60 == 15)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v31 = sub_1DD63F9F8();
    __swift_project_value_buffer(v31, qword_1ECD0DDF0);
    v32 = sub_1DD63F9D8();
    v33 = sub_1DD640378();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DD38D000, v32, v33, "LearnedDisambiguation: PervasiveEntityResolution could not decode parse, starting fresh", v34, 2u);
      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    sub_1DD63C788();

    sub_1DD3AD77C(v28, v30);
    OUTLINED_FUNCTION_21_21();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    (*(*(v4 - 8) + 32))(v44, v12, v4);
  }

  OUTLINED_FUNCTION_21_21();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4F45AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DD63D078();
  v5 = OUTLINED_FUNCTION_0(v4);
  v147 = v6;
  v148 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v146 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC448, &qword_1DD655800);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_1_4();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v122 - v17;
  v19 = sub_1DD63F438();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_4();
  v144 = (v25 - v26);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_0();
  v145 = v28;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v122 - v30);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v122 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v122 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v149 = &v122 - v39;
  v40 = sub_1DD4F505C(0x65736143657375, 0xE700000000000000, a1);
  if (v41)
  {
    v42 = v41;
    v142 = v40;
    v43 = sub_1DD4F505C(25705, 0xE200000000000000, a1);
    if (v44)
    {
      v141 = v43;
      v143 = v44;
      sub_1DD4F54CC();
      if ((v46 & 1) == 0)
      {
        v131 = v45;
        sub_1DD4F54CC();
        if ((v48 & 1) == 0)
        {
          v126 = v47;
          v49 = sub_1DD4F505C(0x64616F6C796170, 0xE700000000000000, a1);
          if (v50)
          {
            v125 = v49;
            v127 = v50;
            v51 = OUTLINED_FUNCTION_17_28();
            sub_1DD59B9EC(v51, 0xE700000000000000, a1);
            if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
            {

              sub_1DD390754(v18, &qword_1ECCDC448, &qword_1DD655800);
LABEL_26:
              if (qword_1ECCDB0E0 != -1)
              {
                OUTLINED_FUNCTION_0_7();
              }

              v80 = sub_1DD63F9F8();
              __swift_project_value_buffer(v80, qword_1ECD0DDF0);
              v81 = sub_1DD63F9D8();
              v82 = sub_1DD640378();
              if (os_log_type_enabled(v81, v82))
              {
                v83 = OUTLINED_FUNCTION_54();
                v84 = swift_slowAlloc();
                v150 = v84;
                *v83 = 136315138;
                v85 = OUTLINED_FUNCTION_17_28();
                *(v83 + 4) = sub_1DD39565C(v85, 0xE700000000000000, v86);
                _os_log_impl(&dword_1DD38D000, v81, v82, "LearnedDisambiguation: Could not extract %s", v83, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v84);
                OUTLINED_FUNCTION_0_1();
                OUTLINED_FUNCTION_0_1();
              }

              goto LABEL_11;
            }

            v57 = v149;
            v139 = *(v22 + 32);
            v140 = v22 + 32;
            v139();
            v137 = *(v22 + 16);
            v138 = v22 + 16;
            v137(v37, v57, v19);
            v58 = *(v22 + 88);
            v59 = OUTLINED_FUNCTION_5_9();
            v135 = v61;
            v136 = v60;
            if ((v61)(v59) != *MEMORY[0x1E69D2AD0])
            {
              v78 = *(v22 + 8);
              v78(v57, v19);

              v79 = OUTLINED_FUNCTION_5_9();
              (v78)(v79);
              goto LABEL_26;
            }

            v123 = a2;
            v62 = *(v22 + 96);
            v63 = OUTLINED_FUNCTION_5_9();
            v130 = v64;
            v129 = v65;
            v65(v63);
            v66 = *v37;
            v67 = *(*v37 + 16);
            v124 = v22;
            if (v67)
            {
              v68 = (*(v22 + 80) + 32) & ~*(v22 + 80);
              v122 = v66;
              v69 = (v66 + v68);
              v134 = *(v22 + 72);
              v133 = *MEMORY[0x1E69D2AC0];
              v128 = (v22 + 8);
              v70 = MEMORY[0x1E69E7CC0];
              do
              {
                v137(v34, v69, v19);
                (v139)(v31, v34, v19);
                v71 = v135(v31, v19);
                if (v71 == v133)
                {
                  OUTLINED_FUNCTION_22_20();
                  v72();
                  v132 = *v31;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v75 = *(v70 + 16);
                    sub_1DD3C018C();
                    v70 = v76;
                  }

                  v73 = *(v70 + 16);
                  v74 = v70;
                  if (v73 >= *(v70 + 24) >> 1)
                  {
                    sub_1DD3C018C();
                    v74 = v77;
                  }

                  *(v74 + 16) = v73 + 1;
                  v70 = v74;
                  *(v74 + 4 * v73 + 32) = v132;
                }

                else
                {
                  (*v128)(v31, v19);
                }

                v69 += v134;
                --v67;
              }

              while (v67);
              v87 = *(v122 + 16);
            }

            else
            {
              v87 = 0;
              v70 = MEMORY[0x1E69E7CC0];
            }

            v88 = *(v70 + 16);

            a2 = v123;
            if (v88 != v87)
            {

              if (qword_1ECCDB0E0 != -1)
              {
                OUTLINED_FUNCTION_0_7();
              }

              v91 = sub_1DD63F9F8();
              __swift_project_value_buffer(v91, qword_1ECD0DDF0);
              v92 = sub_1DD63F9D8();
              v93 = sub_1DD640378();
              v94 = os_log_type_enabled(v92, v93);
              v95 = v149;
              if (v94)
              {
                v96 = swift_slowAlloc();
                *v96 = 0;
                _os_log_impl(&dword_1DD38D000, v92, v93, "LearnedDisambiguation: Could not extract convert choices as UInt32", v96, 2u);
                OUTLINED_FUNCTION_0_1();
              }

              (*(v124 + 8))(v95, v19);
              goto LABEL_11;
            }

            v134 = v70;
            sub_1DD59B9EC(0x61566C616E676973, 0xEC0000007365756CLL, a1);

            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v19);
            v90 = v124;
            if (EnumTagSinglePayload == 1)
            {
              sub_1DD390754(v15, &qword_1ECCDC448, &qword_1DD655800);
            }

            else
            {
              v97 = v145;
              (v139)(v145, v15, v19);
              v98 = v144;
              v137(v144, v97, v19);
              v99 = OUTLINED_FUNCTION_5_9();
              if ((v135)(v99) == *MEMORY[0x1E69D2AE0])
              {
                OUTLINED_FUNCTION_5_9();
                OUTLINED_FUNCTION_22_20();
                v100();
                v101 = *v98;
                v102 = v97;
                OUTLINED_FUNCTION_6_48();
                if (v104)
                {
                  v105 = -1;
                }

                else
                {
                  v105 = v103;
                }

                OUTLINED_FUNCTION_6_48();
                if (v107)
                {
                  v108 = -1;
                }

                else
                {
                  v108 = v106;
                }

                OUTLINED_FUNCTION_6_48();
                v110 = v109;
                v112 = v111;
                v90 = v124;

                (*(v90 + 8))(v102, v19);
                if (v112)
                {
                  v110 = -1;
                }

                goto LABEL_52;
              }

              v113 = *(v124 + 8);
              v113(v97, v19);
              v114 = OUTLINED_FUNCTION_5_9();
              (v113)(v114);
              v90 = v124;
            }

            v105 = -1;
            v108 = -1;
            v110 = -1;
LABEL_52:
            v115 = v146;
            sub_1DD63CF38();
            (*(v90 + 8))(v149, v19);
            v116 = v141;
            *a2 = v142;
            a2[1] = v42;
            v117 = v143;
            a2[2] = v116;
            a2[3] = v117;
            v118 = type metadata accessor for LearnedDisambiguation();
            (*(v147 + 32))(a2 + v118[6], v115, v148);
            *(a2 + v118[7]) = v134;
            *(a2 + v118[8]) = v126;
            v119 = (a2 + v118[9]);
            v120 = v127;
            *v119 = v125;
            v119[1] = v120;
            v121 = (a2 + v118[10]);
            *v121 = v105;
            v121[1] = v108;
            v121[2] = v110;
            OUTLINED_FUNCTION_21_21();
            return __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
          }
        }
      }
    }
  }

LABEL_11:
  v52 = type metadata accessor for LearnedDisambiguation();
  v53 = a2;
  v54 = 1;
  v55 = 1;
  return __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
}

uint64_t sub_1DD4F505C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC448, &qword_1DD655800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_1DD63F438();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  sub_1DD59B9EC(a1, a2, a3);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1DD390754(v9, &qword_1ECCDC448, &qword_1DD655800);
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD63F9F8();
    __swift_project_value_buffer(v18, qword_1ECD0DDF0);

    v19 = sub_1DD63F9D8();
    v20 = sub_1DD640378();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DD39565C(a1, a2, &v33);
      _os_log_impl(&dword_1DD38D000, v19, v20, "LearnedDisambiguationMetaData: No value for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
      MEMORY[0x1E12B3DA0](v21, -1, -1);
    }
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v14, v17, v10);
    v23 = (*(v11 + 88))(v14, v10);
    v24 = *(v11 + 8);
    if (v23 == *MEMORY[0x1E69D2AE8])
    {
      v24(v17, v10);
      (*(v11 + 96))(v14, v10);
      result = *v14;
      v26 = *(v14 + 1);
      return result;
    }

    v24(v14, v10);
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v27 = sub_1DD63F9F8();
    __swift_project_value_buffer(v27, qword_1ECD0DDF0);

    v28 = sub_1DD63F9D8();
    v29 = sub_1DD640378();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1DD39565C(a1, a2, &v33);
      _os_log_impl(&dword_1DD38D000, v28, v29, "LearnedDisambiguationMetaData: Expected string for %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12B3DA0](v31, -1, -1);
      MEMORY[0x1E12B3DA0](v30, -1, -1);
    }

    v24(v17, v10);
  }

  return 0;
}

void sub_1DD4F54CC()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC448, &qword_1DD655800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v44 - v8;
  v10 = sub_1DD63F438();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = OUTLINED_FUNCTION_14_9();
  sub_1DD59B9EC(v22, v23, v5);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1DD390754(v9, &qword_1ECCDC448, &qword_1DD655800);
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v24 = sub_1DD63F9F8();
    __swift_project_value_buffer(v24, qword_1ECD0DDF0);
    OUTLINED_FUNCTION_15_2();

    v25 = sub_1DD63F9D8();
    v26 = sub_1DD640378();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_54();
      v28 = swift_slowAlloc();
      v45 = v28;
      *v27 = 136315138;
      v29 = OUTLINED_FUNCTION_14_9();
      *(v27 + 4) = sub_1DD39565C(v29, v30, v31);
      _os_log_impl(&dword_1DD38D000, v25, v26, "LearnedDisambiguationMetaData: No value for %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    v44 = v1;
    (*(v13 + 32))(v21, v9, v10);
    (*(v13 + 16))(v18, v21, v10);
    v32 = (*(v13 + 88))(v18, v10);
    v33 = *(v13 + 8);
    if (v32 == *v3)
    {
      v33(v21, v10);
      (*(v13 + 96))(v18, v10);
      v34 = *v18;
    }

    else
    {
      v33(v18, v10);
      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v35 = sub_1DD63F9F8();
      __swift_project_value_buffer(v35, qword_1ECD0DDF0);
      OUTLINED_FUNCTION_15_2();

      v36 = sub_1DD63F9D8();
      v37 = sub_1DD640378();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v33;
        v39 = OUTLINED_FUNCTION_54();
        v40 = swift_slowAlloc();
        v45 = v40;
        *v39 = 136315138;
        v41 = OUTLINED_FUNCTION_14_9();
        *(v39 + 4) = sub_1DD39565C(v41, v42, v43);
        _os_log_impl(&dword_1DD38D000, v36, v37, v44, v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();

        v38(v21, v10);
      }

      else
      {

        v33(v21, v10);
      }
    }
  }

  OUTLINED_FUNCTION_17();
}

void sub_1DD4F5968()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v95 = v2;
  v3 = sub_1DD63D818();
  v4 = OUTLINED_FUNCTION_0(v3);
  v93 = v5;
  v94 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v92 = v9 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF8, &qword_1DD643E80);
  v10 = OUTLINED_FUNCTION_7(v100);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v91 = (v13 - v14);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_0();
  v102 = v16;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v88 - v18;
  v96 = sub_1DD63FC88();
  v20 = v1 + 64;
  v21 = 1 << *(v1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v1 + 64);
  v24 = (v21 + 63) >> 6;
  v99 = *MEMORY[0x1E69D2B58];
  v101 = v1;

  v25 = 0;
  v97 = v24;
  v98 = v1 + 64;
LABEL_4:
  v26 = v25;
  if (!v23)
  {
    goto LABEL_6;
  }

  do
  {
    v27 = v19;
    v28 = v102;
    v25 = v26;
LABEL_10:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v25 << 6);
    v31 = *(v101 + 56);
    v32 = (*(v101 + 48) + 16 * v30);
    v34 = *v32;
    v33 = v32[1];
    v35 = sub_1DD63D4F8();
    OUTLINED_FUNCTION_0(v35);
    v37 = v36;
    v39 = v31 + *(v38 + 72) * v30;
    v40 = v100;
    v19 = v27;
    (*(v36 + 16))(&v27[*(v100 + 48)], v39, v35);
    *v27 = v34;
    *(v27 + 1) = v33;
    sub_1DD3DD9B4(v27, v28, &qword_1ECCDBAF8, &qword_1DD643E80);
    v41 = *(v28 + 8);

    v42 = *(v40 + 48);
    v43 = (*(v37 + 88))(v28 + v42, v35);
    if (v43 == v99)
    {
      v44 = v102;
      (*(v37 + 96))(v102 + v42, v35);
      v90 = *(v44 + v42);
      v45 = v91;
      sub_1DD3DD9B4(v19, v91, &qword_1ECCDBAF8, &qword_1DD643E80);
      v46 = *v45;
      v47 = v45[1];
      v48 = v96;
      swift_isUniquelyReferenced_nonNull_native();
      v103 = v48;
      v89 = v46;
      v49 = v47;
      v50 = sub_1DD3978DC();
      v52 = *(v48 + 16);
      v53 = (v51 & 1) == 0;
      v96 = (v52 + v53);
      if (__OFADD__(v52, v53))
      {
LABEL_33:
        __break(1u);
      }

      else
      {
        v54 = v50;
        v55 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
        if (sub_1DD640A08())
        {
          v56 = sub_1DD3978DC();
          if ((v55 & 1) != (v57 & 1))
          {
LABEL_35:
            sub_1DD640D58();
            __break(1u);
            return;
          }

          v54 = v56;
        }

        if (v55)
        {

          v96 = v103;
          *(*(v103 + 56) + 8 * v54) = v90;
          sub_1DD390754(v19, &qword_1ECCDBAF8, &qword_1DD643E80);
LABEL_21:
          v24 = v97;
          v20 = v98;
          (*(v37 + 8))(v91 + *(v100 + 48), v35);
          goto LABEL_4;
        }

        v58 = v103;
        *(v103 + 8 * (v54 >> 6) + 64) |= 1 << v54;
        v59 = (v58[6] + 16 * v54);
        v60 = v90;
        *v59 = v89;
        v59[1] = v49;
        *(v58[7] + 8 * v54) = v60;
        sub_1DD390754(v19, &qword_1ECCDBAF8, &qword_1DD643E80);
        v61 = v58[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (!v62)
        {
          v96 = v58;
          v58[2] = v63;
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    sub_1DD390754(v19, &qword_1ECCDBAF8, &qword_1DD643E80);
    (*(v37 + 8))(v102 + v42, v35);
    v26 = v25;
    v24 = v97;
    v20 = v98;
  }

  while (v23);
  while (1)
  {
LABEL_6:
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v25 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v25);
    ++v26;
    if (v23)
    {
      v27 = v19;
      v28 = v102;
      goto LABEL_10;
    }
  }

  v65 = v92;
  v64 = v93;
  v66 = *(v93 + 104);
  v67 = v94;
  v66(v92, *MEMORY[0x1E69D2BD0], v94);
  v68 = sub_1DD63D828();
  v70 = v69;
  v71 = *(v64 + 8);
  v71(v65, v67);
  v72 = v96;
  v73 = sub_1DD59B63C(v68, v70, v96);
  v75 = v74;

  if (v75)
  {
    v76 = -1;
  }

  else
  {
    v76 = v73;
  }

  v102 = v76;
  v66(v65, *MEMORY[0x1E69D2BE0], v67);
  sub_1DD63D828();
  v77 = OUTLINED_FUNCTION_23_22();
  (v71)(v77);
  v78 = sub_1DD59B63C(v73, v70, v72);
  v80 = v79;

  if (v80)
  {
    v81 = -1;
  }

  else
  {
    v81 = v78;
  }

  v66(v65, *MEMORY[0x1E69D2BD8], v67);
  sub_1DD63D828();
  v82 = OUTLINED_FUNCTION_23_22();
  (v71)(v82);
  v83 = sub_1DD59B63C(v78, v70, v72);
  v85 = v84;

  if (v85)
  {
    v86 = -1;
  }

  else
  {
    v86 = v83;
  }

  v87 = v95;
  *v95 = v102;
  v87[1] = v81;
  v87[2] = v86;
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4F5FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF20, &qword_1DD655818);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  sub_1DD63D568();
}

uint64_t sub_1DD4F6100(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v2 = sub_1DD63D7B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD63D558();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF28, &qword_1DD655820);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  sub_1DD3DD9B4(v21, &v20 - v14, &qword_1ECCDDF28, &qword_1DD655820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v3 + 32);
    v16(v6, v15, v2);
    sub_1DD4F65A4(&qword_1ECCDDF30, MEMORY[0x1E69D2BB8]);
    v17 = swift_allocError();
    v16(v18, v6, v2);
    v23 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF20, &qword_1DD655818);
    return sub_1DD6401B8();
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF20, &qword_1DD655818);
    return sub_1DD6401C8();
  }
}

void sub_1DD4F6418()
{
  sub_1DD63D078();
  if (v0 <= 0x3F)
  {
    sub_1DD4F64C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD4F64C0()
{
  if (!qword_1ECCDDF18)
  {
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCDDF18);
    }
  }
}

uint64_t sub_1DD4F6528(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF20, &qword_1DD655818) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DD4F6100(a1, v4);
}

uint64_t sub_1DD4F65A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD4F65EC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
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
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD4F673C(v7, v8, a1, v4);
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
    return sub_1DD4F66E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD4F66E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 4 * a3 - 4;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 4 * a3);
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
      v5 += 4;
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

void sub_1DD4F673C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 4 * v8);
        v10 = *(*a3 + 4 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 4 * v11++) >= v12);
          v12 = *(*a3 + 4 * v13);
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

                v18 = *(v17 + 4 * v16);
                *(v17 + 4 * v16) = *(v17 + 4 * v15);
                *(v17 + 4 * v15) = v18;
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 4 * v8 - 4;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 4 * v8);
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
              v21 += 4;
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

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_1DD3BEB7C();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1DD3BEB7C();
        v7 = v72;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
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

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1DD4F6D08((*a3 + 4 * *v64), (*a3 + 4 * *v66), (*a3 + 4 * v67), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1DD4F6BDC(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_1DD4F6BDC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8(v5);
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
    sub_1DD4F6D08((*a3 + 4 * *v9), (*a3 + 4 * *v11), (*a3 + 4 * v12), a2);
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

uint64_t sub_1DD4F6D08(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 4;
  v9 = (a3 - a2) / 4;
  if (v8 < v9)
  {
    sub_1DD3C1BC8(a1, (a2 - a1) / 4, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1DD3C1BC8(a2, (a3 - a2) / 4, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  v14 = v6 - 4;
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      *v5 = v16;
    }

    v10 -= 4;
  }

LABEL_28:
  v17 = (v10 - v4) / 4;
  if (v6 != v4 || v6 >= &v4[4 * v17])
  {
    memmove(v6, v4, 4 * v17);
  }

  return 1;
}

uint64_t sub_1DD4F6EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCE8, &unk_1DD64AF90);
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = sub_1DD63F308();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v20 = (v19 - v18);
  sub_1DD63F2F8();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v21 = *(v15 + 32);
  v21(v20, v11, v12);
  v21(a3, v20, v12);
  v22 = type metadata accessor for LearnedDisambiguationPersistentStorage();
  v23 = (a3 + *(v22 + 20));
  *v23 = a1;
  v23[1] = a2;
  *(a3 + *(v22 + 24)) = 1;
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v22);
}

uint64_t static LearnedDisambiguationPersistentStorage.all.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v80 = (v69 - v5);
  v6 = type metadata accessor for LearnedDisambiguation();
  v7 = OUTLINED_FUNCTION_0(v6);
  v74 = v8;
  v75 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = sub_1DD63F0B8();
  v15 = OUTLINED_FUNCTION_0(v14);
  v76 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  v22 = sub_1DD63F2B8();
  v23 = OUTLINED_FUNCTION_0(v22);
  v77 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_4();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15_29();
  v31 = sub_1DD63F308();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  v39 = v38 - v37;
  v40 = v79;
  sub_1DD63F2F8();
  if (!v40)
  {
    v72 = v34;
    v73 = v31;
    v78 = v13;
    v79 = v14;
    v41 = v76;
    sub_1DD63F2A8();
    sub_1DD63F268();
    v42 = *(v77 + 8);
    v42(v29, v22);
    v43 = sub_1DD63F298();
    v71 = 0;
    v44 = v39;
    v46 = v43;
    v42(v0, v22);
    v47 = *(v46 + 16);
    if (v47)
    {
      v69[1] = v46;
      v70 = v44;
      v48 = *(v41 + 16);
      v49 = *(v41 + 80);
      OUTLINED_FUNCTION_24_0();
      v52 = v46 + v51;
      v76 = *(v50 + 56);
      v77 = v53;
      v54 = (v50 - 8);
      v22 = MEMORY[0x1E69E7CC0];
      v55 = v75;
      v56 = v79;
      do
      {
        v57 = v50;
        (v77)(v21, v52, v56);
        v58 = sub_1DD63F068();
        v59 = v80;
        sub_1DD4F45AC(v58, v80);
        (*v54)(v21, v56);
        if (__swift_getEnumTagSinglePayload(v59, 1, v55) == 1)
        {
          sub_1DD390754(v59, &qword_1ECCDD880, &qword_1DD652070);
        }

        else
        {
          sub_1DD4F298C(v59, v78);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = *(v22 + 16);
            sub_1DD3C0254();
            v22 = v67;
          }

          v61 = *(v22 + 16);
          v60 = *(v22 + 24);
          v62 = v74;
          if (v61 >= v60 >> 1)
          {
            OUTLINED_FUNCTION_14_0(v60);
            sub_1DD3C0254();
            v62 = v74;
            v22 = v68;
          }

          *(v22 + 16) = v61 + 1;
          v63 = *(v62 + 80);
          OUTLINED_FUNCTION_24_0();
          sub_1DD4F298C(v78, v22 + v64 + *(v65 + 72) * v61);
          v55 = v75;
        }

        v52 += v76;
        --v47;
        v50 = v57;
        v56 = v79;
      }

      while (v47);

      v44 = v70;
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    (*(v72 + 8))(v44, v73);
  }

  return v22;
}

uint64_t sub_1DD4F75D0(int a1)
{
  v2 = v1;
  v83 = type metadata accessor for LearnedDisambiguationPersistentStorage();
  v4 = OUTLINED_FUNCTION_7(v83);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v85 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v83 - v13);
  v15 = type metadata accessor for LearnedDisambiguation();
  v16 = OUTLINED_FUNCTION_0(v15);
  v86 = v17;
  v87 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v90 = v21 - v20;
  v22 = sub_1DD63F0B8();
  v23 = OUTLINED_FUNCTION_0(v22);
  v84 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  v30 = sub_1DD63F328();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v38 = v37 - v36;
  v39 = sub_1DD63F2B8();
  v40 = OUTLINED_FUNCTION_0(v39);
  v88 = v41;
  v89 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_1_4();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v83 - v48;
  sub_1DD4F7CE0(a1);
  (*(v33 + 104))(v38, *MEMORY[0x1E69D2A60], v30);
  sub_1DD63F288();
  v50 = v30;
  v51 = v88;
  (*(v33 + 8))(v38, v50);
  v52 = *(v51 + 8);
  v53 = v46;
  v54 = v89;
  v52(v53);
  v88 = v2;
  v55 = sub_1DD63F298();
  v56 = v84;
  (v52)(v49, v54);
  v57 = *(v55 + 16);
  if (v57)
  {
    v58 = *(v56 + 16);
    v59 = *(v56 + 80);
    OUTLINED_FUNCTION_24_0();
    v85 = v55;
    v62 = v55 + v61;
    v88 = *(v60 + 56);
    v89 = v63;
    v64 = (v60 - 8);
    v65 = MEMORY[0x1E69E7CC0];
    v66 = v87;
    do
    {
      v67 = v60;
      v89(v29, v62, v22);
      v68 = sub_1DD63F068();
      sub_1DD4F45AC(v68, v14);
      (*v64)(v29, v22);
      if (__swift_getEnumTagSinglePayload(v14, 1, v66) == 1)
      {
        sub_1DD390754(v14, &qword_1ECCDD880, &qword_1DD652070);
      }

      else
      {
        sub_1DD4F298C(v14, v90);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = *(v65 + 16);
          sub_1DD3C0254();
          v65 = v76;
        }

        v70 = *(v65 + 16);
        v69 = *(v65 + 24);
        v71 = v86;
        if (v70 >= v69 >> 1)
        {
          OUTLINED_FUNCTION_14_0(v69);
          sub_1DD3C0254();
          v71 = v86;
          v65 = v77;
        }

        *(v65 + 16) = v70 + 1;
        v72 = *(v71 + 80);
        OUTLINED_FUNCTION_24_0();
        sub_1DD4F298C(v90, v65 + v73 + *(v74 + 72) * v70);
        v66 = v87;
      }

      v62 += v88;
      --v57;
      v60 = v67;
    }

    while (v57);
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v78 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v78, qword_1ECD0DDF0);

  v79 = sub_1DD63F9D8();
  v80 = sub_1DD640368();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = OUTLINED_FUNCTION_54();
    *v81 = 134217984;
    *(v81 + 4) = *(v65 + 16);

    _os_log_impl(&dword_1DD38D000, v79, v80, "LearnedDisambiguationPersistentStorage: count of entries %ld", v81, 0xCu);
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  return v65;
}

uint64_t sub_1DD4F7CE0(int a1)
{
  v2 = sub_1DD63F2B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1DD63F2A8();
  sub_1DD63F268();
  v10 = *(v3 + 8);
  v10(v6, v2);
  sub_1DD4F8830(a1);
  sub_1DD63F258();

  return (v10)(v9, v2);
}

uint64_t sub_1DD4F7E34@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v134 = a2;
  v131 = type metadata accessor for LearnedDisambiguationPersistentStorage();
  v5 = OUTLINED_FUNCTION_7(v131);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v141 = v8 - v9;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  v129 = &v126 - v11;
  v142 = sub_1DD63D078();
  v12 = OUTLINED_FUNCTION_0(v142);
  v139 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v143 = (v16 - v17);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15_29();
  v130 = sub_1DD63F0B8();
  v19 = OUTLINED_FUNCTION_0(v130);
  v144 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_4();
  v128 = v23 - v24;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v126 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v132 = &v126 - v29;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v126 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF50, &unk_1DD6558A8);
  v34 = OUTLINED_FUNCTION_3(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1_4();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v126 - v41;
  v43 = sub_1DD63F2B8();
  v44 = OUTLINED_FUNCTION_0(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2();
  v51 = v50 - v49;
  sub_1DD4F7CE0(a1);
  v133 = v2;
  v72 = sub_1DD63F298();
  v73 = v139;
  v126 = v39;
  v74 = v130;
  (*(v46 + 8))(v51, v43);
  v141 = *(v72 + 16);
  v127 = v42;
  if (v141)
  {
    v76 = *(v144 + 16);
    v75 = v144 + 16;
    v77 = *(v144 + 80);
    OUTLINED_FUNCTION_24_0();
    v140 = v72;
    v137 = v72 + v78;
    v138 = v79;
    (v79)(v32);
    v80 = (v73 + 8);
    v139 = v75;
    v135 = (v75 + 16);
    v136 = v75 - 8;
    for (i = 1; ; ++i)
    {
      v82 = v143;
      if (v141 == i)
      {

        v42 = v127;
        (*v135)(v127, v32, v74);
        v92 = v42;
        v93 = 0;
        goto LABEL_16;
      }

      if (i >= *(v140 + 16))
      {
        break;
      }

      v83 = v144;
      v138(v27, v137 + *(v144 + 72) * i, v74);
      sub_1DD63F098();
      sub_1DD63F098();
      v84 = sub_1DD63CFC8();
      v85 = *v80;
      v86 = v82;
      v87 = v142;
      (*v80)(v86, v142);
      v85(v3, v87);
      v88 = *(v83 + 8);
      if (v84)
      {
        v88(v32, v74);
        (*v135)(v32, v27, v74);
      }

      else
      {
        v88(v27, v74);
      }
    }

    __break(1u);
    OUTLINED_FUNCTION_0_7();
    v52 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v52, qword_1ECD0DDF0);
    OUTLINED_FUNCTION_3_53();
    v53 = v141;
    sub_1DD4F94E4(v133, v141, v54);
    v55 = i;
    v56 = sub_1DD63F9D8();
    v57 = sub_1DD640378();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v134;
    if (v58)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = OUTLINED_FUNCTION_62();
      v145[0] = v62;
      *v60 = 136315394;
      v63 = (v53 + *(v131 + 20));
      v64 = *v63;
      v65 = v63[1];

      OUTLINED_FUNCTION_0_96();
      v67 = sub_1DD4F9544(v53, v66);
      v69 = OUTLINED_FUNCTION_57_0(v67, v68, v145);

      *(v60 + 4) = v69;
      *(v60 + 12) = 2112;
      v70 = i;
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 14) = v71;
      *v61 = v71;
      _os_log_impl(&dword_1DD38D000, v56, v57, "LearnedDisambiguationPersistentStorage: Could not query for %s: %@", v60, 0x16u);
      sub_1DD390754(v61, &qword_1ECCDBF90, &qword_1DD6445B0);
      OUTLINED_FUNCTION_0_1();
      __swift_destroy_boxed_opaque_existential_1(v62);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      OUTLINED_FUNCTION_0_96();
      sub_1DD4F9544(v53, v89);
    }

    v90 = type metadata accessor for LearnedDisambiguation();
    v91 = v59;
    return __swift_storeEnumTagSinglePayload(v91, 1, 1, v90);
  }

  v92 = v42;
  v93 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v92, v93, 1, v74);
  v94 = v134;
  v95 = v42;
  v96 = v126;
  sub_1DD4F95A8(v42, v126);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v96, 1, v74);
  v98 = v132;
  v99 = v128;
  v100 = v129;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD390754(v96, &qword_1ECCDDF50, &unk_1DD6558A8);
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v101 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v101, qword_1ECD0DDF0);
    OUTLINED_FUNCTION_3_53();
    sub_1DD4F94E4(v133, v100, v102);
    v103 = sub_1DD63F9D8();
    v104 = sub_1DD640368();
    v105 = v95;
    if (os_log_type_enabled(v103, v104))
    {
      v106 = OUTLINED_FUNCTION_54();
      v107 = OUTLINED_FUNCTION_62();
      v145[0] = v107;
      *v106 = 136315138;
      v108 = (v100 + *(v131 + 20));
      v109 = *v108;
      v110 = v108[1];

      OUTLINED_FUNCTION_0_96();
      sub_1DD4F9544(v100, v111);
      v112 = sub_1DD39565C(v109, v110, v145);

      *(v106 + 4) = v112;
      _os_log_impl(&dword_1DD38D000, v103, v104, "LearnedDisambiguationPersistentStorage: Could not query for  the most recent entry for  %s", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v107);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      OUTLINED_FUNCTION_0_96();
      sub_1DD4F9544(v100, v123);
    }

    sub_1DD390754(v105, &qword_1ECCDDF50, &unk_1DD6558A8);
    v90 = type metadata accessor for LearnedDisambiguation();
    v91 = v94;
    return __swift_storeEnumTagSinglePayload(v91, 1, 1, v90);
  }

  v113 = v144;
  (*(v144 + 32))(v132, v96, v74);
  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v114 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v114, qword_1ECD0DDF0);
  (*(v113 + 16))(v99, v98, v74);
  v115 = sub_1DD63F9D8();
  v116 = sub_1DD640358();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = OUTLINED_FUNCTION_54();
    v143 = OUTLINED_FUNCTION_62();
    v145[0] = v143;
    *v117 = 136315138;
    sub_1DD63F068();
    sub_1DD63F438();
    sub_1DD63FC68();
    v118 = v74;

    v119 = *(v113 + 8);
    v120 = v119(v99, v74);
    v122 = OUTLINED_FUNCTION_57_0(v120, v121, v145);

    *(v117 + 4) = v122;
    _os_log_impl(&dword_1DD38D000, v115, v116, "LearnedDisambiguationPersistentStorage: found the mostRecentInteraction:  %s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v143);
    v94 = v134;
    OUTLINED_FUNCTION_0_1();
    v98 = v132;
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    v119 = *(v113 + 8);
    v119(v99, v74);
    v118 = v74;
  }

  v125 = sub_1DD63F068();
  sub_1DD4F45AC(v125, v94);
  v119(v98, v118);
  return sub_1DD390754(v127, &qword_1ECCDDF50, &unk_1DD6558A8);
}

uint64_t sub_1DD4F8830(int a1)
{
  v3 = (v1 + *(type metadata accessor for LearnedDisambiguationPersistentStorage() + 20));
  v9 = *v3;
  v10 = v3[1];

  MEMORY[0x1E12B2260](46, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7668];
  *(v4 + 16) = xmmword_1DD643F90;
  v6 = MEMORY[0x1E69E76D0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  v7 = sub_1DD63FE08();
  MEMORY[0x1E12B2260](v7);

  return v9;
}

uint64_t sub_1DD4F88F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for LearnedDisambiguationPersistentStorage();
  v3[5] = v4;
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64);
  v3[6] = OUTLINED_FUNCTION_10_23();
  v7 = type metadata accessor for LearnedDisambiguation();
  v3[7] = v7;
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 64);
  v3[8] = OUTLINED_FUNCTION_10_23();
  v10 = sub_1DD63F0B8();
  v3[9] = v10;
  OUTLINED_FUNCTION_51(v10);
  v3[10] = v11;
  v13 = *(v12 + 64);
  v3[11] = OUTLINED_FUNCTION_10_23();
  v14 = sub_1DD63F418();
  v3[12] = v14;
  OUTLINED_FUNCTION_51(v14);
  v3[13] = v15;
  v17 = *(v16 + 64);
  v3[14] = OUTLINED_FUNCTION_10_23();
  v18 = sub_1DD63F328();
  v3[15] = v18;
  OUTLINED_FUNCTION_51(v18);
  v3[16] = v19;
  v21 = *(v20 + 64);
  v3[17] = OUTLINED_FUNCTION_10_23();
  v22 = sub_1DD63D9E8();
  v3[18] = v22;
  OUTLINED_FUNCTION_51(v22);
  v3[19] = v23;
  v25 = *(v24 + 64);
  v3[20] = OUTLINED_FUNCTION_10_23();

  return MEMORY[0x1EEE6DFA0](sub_1DD4F8AD4, 0, 0);
}

uint64_t sub_1DD4F8AD4()
{
  v58 = v0;
  v1 = v0[5];
  v2 = v0[2];
  v3 = (v0[4] + *(v1 + 20));
  if (*v2 == *v3 && v2[1] == v3[1])
  {
    v55 = v0[4];
    v56 = v0[5];
    goto LABEL_8;
  }

  if (sub_1DD640CD8())
  {
    v55 = v0[4];
    v56 = v0[5];
    v2 = v0[2];
LABEL_8:
    v5 = v0[19];
    v6 = v0[20];
    v7 = v0[16];
    v50 = v0[17];
    v51 = v0[15];
    v8 = v0[10];
    v53 = v0[11];
    v54 = v0[14];
    v52 = v0[9];
    v9 = v0[7];
    v48 = v0[18];
    v49 = v0[3];
    swift_allocBox();
    v11 = v10;
    sub_1DD63F0A8();
    v12 = v2[2];
    v13 = v2[3];

    sub_1DD63F038();
    sub_1DD63F058();
    v14 = *(v2 + *(v9 + 28));

    sub_1DD63DA08();
    LODWORD(v12) = sub_1DD63D9D8();
    (*(v5 + 8))(v6, v48);
    sub_1DD4F8830(v12);
    sub_1DD63F048();
    sub_1DD4F35D8();
    sub_1DD63F078();
    (*(v7 + 16))(v50, v49, v51);
    sub_1DD63F088();
    (*(v8 + 16))(v53, v11, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF48, &qword_1DD6558A0);
    sub_1DD63FC88();
    sub_1DD63F3E8();
    v15 = v0[14];
    if (*(v55 + *(v56 + 24)) == 1)
    {

      sub_1DD63F3F8();
    }

    else
    {
      v16 = v0[4];
      sub_1DD63F408();
    }

    (*(v0[13] + 8))(v0[14], v0[12]);

    goto LABEL_17;
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v17 = v0[8];
  v18 = v0[6];
  v19 = v0[4];
  v20 = v0[2];
  v21 = sub_1DD63F9F8();
  __swift_project_value_buffer(v21, qword_1ECD0DDF0);
  sub_1DD4F94E4(v20, v17, type metadata accessor for LearnedDisambiguation);
  OUTLINED_FUNCTION_3_53();
  sub_1DD4F94E4(v19, v18, v22);
  v23 = sub_1DD63F9D8();
  v24 = sub_1DD640378();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[8];
  v27 = v0[6];
  if (v25)
  {
    v28 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v28 = 136315394;
    v29 = *v26;
    v30 = v26[1];

    OUTLINED_FUNCTION_7_41();
    v31 = sub_1DD39565C(v29, v30, v57);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    v32 = (v27 + *(v1 + 20));
    v33 = *v32;
    v34 = v32[1];

    OUTLINED_FUNCTION_0_96();
    v36 = sub_1DD4F9544(v27, v35);
    v38 = OUTLINED_FUNCTION_57_0(v36, v37, v57);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_1DD38D000, v23, v24, "LearnedDisambiguationPersistentStorage: Ignoring mismatched useCase [%s]!=[%s]", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    OUTLINED_FUNCTION_0_96();
    sub_1DD4F9544(v27, v39);
    OUTLINED_FUNCTION_7_41();
  }

LABEL_17:
  v40 = v0[20];
  v41 = v0[17];
  v42 = v0[14];
  v43 = v0[11];
  v44 = v0[8];
  v45 = v0[6];

  v46 = v0[1];

  return v46();
}

void sub_1DD4F9070(void *a1, char a2)
{
  if (a2)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DD63F9F8();
    __swift_project_value_buffer(v3, qword_1ECD0DDF0);
    v4 = a1;
    oslog = sub_1DD63F9D8();
    v5 = sub_1DD640378();
    sub_1DD39A630(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1DD38D000, oslog, v5, "LearnedDisambiguationPersistentStorage: Donation failed with %@.", v6, 0xCu);
      sub_1DD390754(v7, &qword_1ECCDBF90, &qword_1DD6445B0);
      MEMORY[0x1E12B3DA0](v7, -1, -1);
      MEMORY[0x1E12B3DA0](v6, -1, -1);
    }
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD63F9F8();
    __swift_project_value_buffer(v10, qword_1ECD0DDF0);
    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640368();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DD38D000, v11, v12, "LearnedDisambiguationPersistentStorage: Donation succeeded.", v13, 2u);
      MEMORY[0x1E12B3DA0](v13, -1, -1);
    }

    oslog = sub_1DD63F9D8();
    v14 = sub_1DD640368();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      sub_1DD63F0B8();
      swift_projectBox();
      swift_beginAccess();
      sub_1DD63F068();
      swift_endAccess();
      sub_1DD63F438();
      v17 = sub_1DD63FC68();
      v19 = v18;

      v20 = sub_1DD39565C(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1DD38D000, oslog, v14, "LearnedDisambiguationPersistentStorage: Donated learning: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E12B3DA0](v16, -1, -1);
      MEMORY[0x1E12B3DA0](v15, -1, -1);

      return;
    }
  }
}

uint64_t type metadata accessor for LearnedDisambiguationPersistentStorage()
{
  result = qword_1ECCDDF38;
  if (!qword_1ECCDDF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD4F9460()
{
  result = sub_1DD63F308();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD4F94E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD4F9544(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD4F95A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF50, &unk_1DD6558A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4F963C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LearningResult()
{
  result = qword_1ECCDDF58;
  if (!qword_1ECCDDF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD4F9720()
{
  sub_1DD4F97AC();
  if (v0 <= 0x3F)
  {
    sub_1DD4F9804();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD4F97AC()
{
  if (!qword_1ECCDDF68)
  {
    type metadata accessor for LearnedDisambiguation();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCDDF68);
    }
  }
}

void sub_1DD4F9804()
{
  if (!qword_1EE163958)
  {
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE163958);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LearningResult.ResultType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4F9934()
{
  result = qword_1ECCDDF70;
  if (!qword_1ECCDDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDF70);
  }

  return result;
}

uint64_t sub_1DD4F9988()
{
  sub_1DD63D118();
  sub_1DD3B7F10();
  sub_1DD640678();

  v0 = sub_1DD63FE58();
  v2 = v1;

  v3 = v0 == 0x74615F6564 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_97() & 1) != 0)
  {
    goto LABEL_56;
  }

  v4 = v0 == 0x65625F6C6ELL && v2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_97() & 1) != 0)
  {
    goto LABEL_56;
  }

  v5 = v0 == 0x65625F7266 && v2 == 0xE500000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_97() & 1) != 0)
  {
    goto LABEL_56;
  }

  v6 = v0 == 0x72665F7266 && v2 == 0xE500000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_97() & 1) != 0 || (v0 == 0x65645F6564 ? (v7 = v2 == 0xE500000000000000) : (v7 = 0), v7 || (OUTLINED_FUNCTION_0_97() & 1) != 0 || (v0 == 0x6C702D6C70 ? (v8 = v2 == 0xE500000000000000) : (v8 = 0), v8 || (OUTLINED_FUNCTION_0_97() & 1) != 0 || (v0 == 0x75725F7572 ? (v9 = v2 == 0xE500000000000000) : (v9 = 0), v9 || (OUTLINED_FUNCTION_0_97() & 1) != 0 || (v0 == 0x68635F6564 ? (v10 = v2 == 0xE500000000000000) : (v10 = 0), v10 || (OUTLINED_FUNCTION_0_97() & 1) != 0 || (v0 == 0x68635F7266 ? (v11 = v2 == 0xE500000000000000) : (v11 = 0), v11 || (OUTLINED_FUNCTION_0_97() & 1) != 0 || (v0 == 0x68635F7469 ? (v12 = v2 == 0xE500000000000000) : (v12 = 0), v12 || (OUTLINED_FUNCTION_0_97() & 1) != 0 || (v0 == 0x65735F7673 ? (v13 = v2 == 0xE500000000000000) : (v13 = 0), v13))))))))
  {
LABEL_56:

    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_0_97();
  }

  return v14 & 1;
}

uint64_t sub_1DD4F9BB8()
{
  sub_1DD63D118();
  sub_1DD3B52B8();
  v0 = sub_1DD3B530C();
  OUTLINED_FUNCTION_69(v0, MEMORY[0x1E69E6158], v1, v2, v3, v4, v5, v6, 26746);
  v7 = sub_1DD63FD48();

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v16 = sub_1DD63D118();
    OUTLINED_FUNCTION_69(v16, MEMORY[0x1E69E6158], v9, v10, v11, v12, v13, v14, 6649209);
    v8 = sub_1DD63FD48();
  }

  return v8 & 1;
}

uint64_t sub_1DD4F9C90()
{
  sub_1DD63D118();
  sub_1DD3B52B8();
  v0 = sub_1DD3B530C();
  OUTLINED_FUNCTION_69(v0, MEMORY[0x1E69E6158], v1, v2, v0, v3, v4, v5, 24938);
  v6 = sub_1DD63FD48();

  return v6 & 1;
}

uint64_t sub_1DD4F9D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657669727261 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x747261706564 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

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

uint64_t sub_1DD4F9E34(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x657669727261;
  }

  return 0x747261706564;
}

uint64_t sub_1DD4F9E84(uint64_t a1)
{
  v2 = sub_1DD4FA438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4F9EC0(uint64_t a1)
{
  v2 = sub_1DD4FA438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD4F9F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4F9D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4F9F2C(uint64_t a1)
{
  v2 = sub_1DD4FA390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4F9F68(uint64_t a1)
{
  v2 = sub_1DD4FA390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD4F9FA4(uint64_t a1)
{
  v2 = sub_1DD4FA3E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4F9FE0(uint64_t a1)
{
  v2 = sub_1DD4FA3E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD4FA01C(uint64_t a1)
{
  v2 = sub_1DD4FA48C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4FA058(uint64_t a1)
{
  v2 = sub_1DD4FA48C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Location.Event.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF78, &qword_1DD655960);
  v4 = OUTLINED_FUNCTION_0(v3);
  v45 = v5;
  v46 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF80, &qword_1DD655968);
  v11 = OUTLINED_FUNCTION_0(v10);
  v42 = v12;
  v43 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v38 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF88, &qword_1DD655970);
  v18 = OUTLINED_FUNCTION_0(v17);
  v39 = v19;
  v40 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF90, &qword_1DD655978);
  OUTLINED_FUNCTION_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v38 - v31;
  v33 = *v1;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4FA390();
  sub_1DD640EF8();
  if (v33)
  {
    if (v33 == 1)
    {
      v48 = 1;
      sub_1DD4FA438();
      v24 = v41;
      OUTLINED_FUNCTION_52_0();
      v36 = v42;
      v35 = v43;
    }

    else
    {
      v49 = 2;
      sub_1DD4FA3E4();
      v24 = v44;
      OUTLINED_FUNCTION_52_0();
      v36 = v45;
      v35 = v46;
    }
  }

  else
  {
    v47 = 0;
    sub_1DD4FA48C();
    OUTLINED_FUNCTION_52_0();
    v36 = v39;
    v35 = v40;
  }

  (*(v36 + 8))(v24, v35);
  return (*(v27 + 8))(v32, v25);
}

unint64_t sub_1DD4FA390()
{
  result = qword_1ECCDDF98;
  if (!qword_1ECCDDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDF98);
  }

  return result;
}

unint64_t sub_1DD4FA3E4()
{
  result = qword_1ECCDDFA0;
  if (!qword_1ECCDDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFA0);
  }

  return result;
}

unint64_t sub_1DD4FA438()
{
  result = qword_1ECCDDFA8;
  if (!qword_1ECCDDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFA8);
  }

  return result;
}

unint64_t sub_1DD4FA48C()
{
  result = qword_1ECCDDFB0;
  if (!qword_1ECCDDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFB0);
  }

  return result;
}

uint64_t Location.Event.hashValue.getter()
{
  v1 = *v0;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

uint64_t Location.Event.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDFB8, &qword_1DD655980);
  OUTLINED_FUNCTION_0(v71);
  v68 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDFC0, &qword_1DD655988);
  v9 = OUTLINED_FUNCTION_0(v8);
  v65 = v10;
  v66 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDFC8, &qword_1DD655990);
  OUTLINED_FUNCTION_0(v16);
  v64 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDFD0, &qword_1DD655998);
  OUTLINED_FUNCTION_0(v23);
  v69 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v59 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4FA390();
  v31 = v72;
  sub_1DD640ED8();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v16;
  v62 = v22;
  v63 = v15;
  v33 = v70;
  v32 = v71;
  v72 = a1;
  v34 = sub_1DD640B98();
  result = sub_1DD418088(v34, 0);
  if (v37 == v38 >> 1)
  {
    goto LABEL_9;
  }

  v60 = 0;
  if (v37 >= (v38 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v39) = *(v36 + v37);
    sub_1DD41805C(v37 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v41 == v43 >> 1;
    v45 = v68;
    if (!v44)
    {
LABEL_9:
      v50 = sub_1DD640938();
      swift_allocError();
      v52 = v51;
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5C8, &qword_1DD6559A0) + 48);
      *v52 = &type metadata for Location.Event;
      sub_1DD640AC8();
      sub_1DD640928();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v69 + 8))(v29, v23);
      a1 = v72;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v39)
    {
      if (v39 == 1)
      {
        v74 = 1;
        sub_1DD4FA438();
        v46 = v63;
        OUTLINED_FUNCTION_104();
        v47 = v67;
        v48 = v23;
        v49 = v69;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v46, v66);
        (*(v49 + 8))(v29, v48);
      }

      else
      {
        LODWORD(v66) = v39;
        v75 = 2;
        sub_1DD4FA3E4();
        v55 = v60;
        sub_1DD640AB8();
        v47 = v67;
        v39 = v23;
        v56 = v69;
        if (v55)
        {
          (*(v69 + 8))(v29, v39);
          swift_unknownObjectRelease();
          a1 = v72;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        swift_unknownObjectRelease();
        (*(v45 + 8))(v33, v32);
        (*(v56 + 8))(v29, v39);
        LOBYTE(v39) = v66;
      }
    }

    else
    {
      v73 = 0;
      sub_1DD4FA48C();
      v54 = v62;
      OUTLINED_FUNCTION_104();
      swift_unknownObjectRelease();
      (*(v64 + 8))(v54, v61);
      v57 = OUTLINED_FUNCTION_86_1();
      v58(v57);
      v47 = v67;
    }

    *v47 = v39;
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  return result;
}

unint64_t sub_1DD4FAB48()
{
  result = qword_1ECCDDFD8;
  if (!qword_1ECCDDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFD8);
  }

  return result;
}

_BYTE *sub_1DD4FABAC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4FACBC()
{
  result = qword_1ECCDDFE0;
  if (!qword_1ECCDDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFE0);
  }

  return result;
}

unint64_t sub_1DD4FAD14()
{
  result = qword_1ECCDDFE8;
  if (!qword_1ECCDDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFE8);
  }

  return result;
}

unint64_t sub_1DD4FAD6C()
{
  result = qword_1ECCDDFF0;
  if (!qword_1ECCDDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFF0);
  }

  return result;
}

unint64_t sub_1DD4FADC4()
{
  result = qword_1ECCDDFF8;
  if (!qword_1ECCDDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFF8);
  }

  return result;
}

unint64_t sub_1DD4FAE1C()
{
  result = qword_1ECCDE000;
  if (!qword_1ECCDE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE000);
  }

  return result;
}

unint64_t sub_1DD4FAE74()
{
  result = qword_1ECCDE008;
  if (!qword_1ECCDE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE008);
  }

  return result;
}

unint64_t sub_1DD4FAECC()
{
  result = qword_1ECCDE010;
  if (!qword_1ECCDE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE010);
  }

  return result;
}

unint64_t sub_1DD4FAF24()
{
  result = qword_1ECCDE018;
  if (!qword_1ECCDE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE018);
  }

  return result;
}

unint64_t sub_1DD4FAF7C()
{
  result = qword_1ECCDE020;
  if (!qword_1ECCDE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE020);
  }

  return result;
}

uint64_t sub_1DD4FAFF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7496035 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

uint64_t sub_1DD4FB0BC(char a1)
{
  if (a1)
  {
    return 7496035;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1DD4FB0EC(uint64_t a1)
{
  v2 = sub_1DD4FB558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4FB128(uint64_t a1)
{
  v2 = sub_1DD4FB558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD4FB16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4FAFF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4FB194(uint64_t a1)
{
  v2 = sub_1DD4FB504();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4FB1D0(uint64_t a1)
{
  v2 = sub_1DD4FB504();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD4FB20C(uint64_t a1)
{
  v2 = sub_1DD4FB5AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4FB248(uint64_t a1)
{
  v2 = sub_1DD4FB5AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Location.MobileSpace.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE028, &qword_1DD655DD0);
  v4 = OUTLINED_FUNCTION_0(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE030, &qword_1DD655DD8);
  v11 = OUTLINED_FUNCTION_0(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE038, &qword_1DD655DE0);
  OUTLINED_FUNCTION_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4FB504();
  sub_1DD640EF8();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_1DD4FB558();
    v29 = v33;
    sub_1DD640BB8();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_1DD4FB5AC();
    sub_1DD640BB8();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

unint64_t sub_1DD4FB504()
{
  result = qword_1ECCDE040;
  if (!qword_1ECCDE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE040);
  }

  return result;
}

unint64_t sub_1DD4FB558()
{
  result = qword_1ECCDE048;
  if (!qword_1ECCDE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE048);
  }

  return result;
}

unint64_t sub_1DD4FB5AC()
{
  result = qword_1ECCDE050;
  if (!qword_1ECCDE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE050);
  }

  return result;
}

uint64_t Location.MobileSpace.hashValue.getter()
{
  v1 = *v0;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

uint64_t Location.MobileSpace.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE058, &qword_1DD655DE8);
  OUTLINED_FUNCTION_0(v52);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE060, &qword_1DD655DF0);
  OUTLINED_FUNCTION_0(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE068, &unk_1DD655DF8);
  OUTLINED_FUNCTION_0(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4FB504();
  v24 = v53;
  sub_1DD640ED8();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = v9;
  v47 = v15;
  v53 = a1;
  v25 = v52;
  v26 = sub_1DD640B98();
  result = sub_1DD418088(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = result;
LABEL_9:
    v40 = sub_1DD640938();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5C8, &qword_1DD6559A0) + 48);
    *v42 = &type metadata for Location.MobileSpace;
    sub_1DD640AC8();
    sub_1DD640928();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v16);
    a1 = v53;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45[1] = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + v29);
    v32 = sub_1DD41805C(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 != v36 >> 1)
    {
      v52 = v32;
      goto LABEL_9;
    }

    v54 = v31;
    if (v31)
    {
      v56 = 1;
      sub_1DD4FB558();
      v37 = v8;
      OUTLINED_FUNCTION_2_62();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v49 + 8))(v37, v25);
    }

    else
    {
      v55 = 0;
      sub_1DD4FB5AC();
      v44 = v47;
      OUTLINED_FUNCTION_2_62();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v48 + 8))(v44, v46);
    }

    (*(v39 + 8))(v22, v34);
    *v38 = v54;
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  return result;
}

unint64_t sub_1DD4FBB24()
{
  result = qword_1ECCDE070;
  if (!qword_1ECCDE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE070);
  }

  return result;
}

_BYTE *sub_1DD4FBB88(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4FBC88()
{
  result = qword_1ECCDE078;
  if (!qword_1ECCDE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE078);
  }

  return result;
}

unint64_t sub_1DD4FBCE0()
{
  result = qword_1ECCDE080;
  if (!qword_1ECCDE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE080);
  }

  return result;
}

unint64_t sub_1DD4FBD38()
{
  result = qword_1ECCDE088;
  if (!qword_1ECCDE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE088);
  }

  return result;
}

unint64_t sub_1DD4FBD90()
{
  result = qword_1ECCDE090;
  if (!qword_1ECCDE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE090);
  }

  return result;
}

unint64_t sub_1DD4FBDE8()
{
  result = qword_1ECCDE098;
  if (!qword_1ECCDE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE098);
  }

  return result;
}

unint64_t sub_1DD4FBE40()
{
  result = qword_1ECCDE0A0;
  if (!qword_1ECCDE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE0A0);
  }

  return result;
}

unint64_t sub_1DD4FBE98()
{
  result = qword_1ECCDE0A8;
  if (!qword_1ECCDE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE0A8);
  }

  return result;
}

unint64_t sub_1DD4FBEF0(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE0C0, &qword_1DD656160);
    v3 = OUTLINED_FUNCTION_1_74();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  OUTLINED_FUNCTION_0_98();
  OUTLINED_FUNCTION_8_42();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_4_50(v13 | (v12 << 6));
    v16 = *v14;
    v15 = v14[1];
    v30 = *(v18 + 8 * v17);

    swift_dynamicCast();
    sub_1DD400AE4(&v31, v33);
    sub_1DD400AE4(v33, v34);
    sub_1DD400AE4(v34, &v32);
    result = sub_1DD3978DC();
    v19 = result;
    if (v20)
    {
      OUTLINED_FUNCTION_6_49();
      v22 = v21[1];
      *v21 = v16;
      v21[1] = v15;

      v23 = (v3[7] + 32 * v19);
      __swift_destroy_boxed_opaque_existential_1(v23);
      result = sub_1DD400AE4(&v32, v23);
      v11 = v12;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_9_38();
      *(v3 + v24 + 64) |= v25;
      OUTLINED_FUNCTION_6_49();
      *v26 = v16;
      v26[1] = v15;
      result = sub_1DD400AE4(&v32, (v3[7] + 32 * v19));
      v27 = v3[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_18;
      }

      v3[2] = v29;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v3;
    }

    v7 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1DD4FC0F0(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE0B8, &qword_1DD656158);
    v3 = OUTLINED_FUNCTION_1_74();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  OUTLINED_FUNCTION_0_98();
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = v3 + 64;

  v11 = 0;
  if (v8)
  {
LABEL_12:
    while (1)
    {
      OUTLINED_FUNCTION_4_50(__clz(__rbit64(v8)) | (v11 << 6));
      v15 = *v13;
      v14 = v13[1];
      sub_1DD395720(v17 + 32 * v16, v39);
      *&v38 = v15;
      *(&v38 + 1) = v14;
      v36[2] = v38;
      v37[0] = v39[0];
      v37[1] = v39[1];
      v36[0] = v38;

      swift_dynamicCast();
      sub_1DD400AE4(v37, v31);
      v32 = v28;
      v33 = v29;
      v34 = v30;
      sub_1DD400AE4(v31, v35);
      v28 = v32;
      v29 = v33;
      v30 = v34;
      sub_1DD400AE4(v35, v36);
      v18 = *(v3 + 40);
      v19 = sub_1DD640828() & ~(-1 << *(v3 + 32));
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_5_53();
LABEL_21:
      OUTLINED_FUNCTION_2_63();
      *(v10 + v24) |= v25;
      v27 = *(v3 + 48) + 40 * v26;
      *v27 = v28;
      *(v27 + 16) = v29;
      *(v27 + 32) = v30;
      sub_1DD400AE4(v36, (*(v3 + 56) + 32 * v26));
      ++*(v3 + 16);
    }

    OUTLINED_FUNCTION_4_3();
    while (++v20 != v22 || (v21 & 1) == 0)
    {
      v23 = v20 == v22;
      if (v20 == v22)
      {
        v20 = 0;
      }

      v21 |= v23;
      if (*(v10 + 8 * v20) != -1)
      {
        OUTLINED_FUNCTION_8_41();
        goto LABEL_21;
      }
    }
  }

  else
  {
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return;
      }

      v8 = *(v1 + 64 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1DD4FC360(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE10, &qword_1DD64D240);
    v3 = OUTLINED_FUNCTION_1_74();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  OUTLINED_FUNCTION_0_98();
  OUTLINED_FUNCTION_8_42();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_4_50(v12 | (v11 << 6));
    v15 = *v13;
    v14 = v13[1];
    v18 = *(v17 + 8 * v16);

    v19 = v18;
    v20 = sub_1DD3978DC();
    if (v21)
    {
      OUTLINED_FUNCTION_6_49();
      v23 = v22[1];
      *v22 = v15;
      v22[1] = v14;

      v24 = v3[7];
      v25 = *(v24 + 8 * v20);
      *(v24 + 8 * v20) = v19;

      v10 = v11;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_9_38();
      *(v3 + v26 + 64) |= v27;
      OUTLINED_FUNCTION_6_49();
      *v28 = v15;
      v28[1] = v14;
      *(v3[7] + 8 * v20) = v19;
      v29 = v3[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v3[2] = v31;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v7 = *(v1 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1DD4FC508(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE0B8, &qword_1DD656158);
    v3 = OUTLINED_FUNCTION_1_74();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  OUTLINED_FUNCTION_0_98();
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = v3 + 64;

  v11 = 0;
  if (v8)
  {
LABEL_12:
    while (1)
    {
      OUTLINED_FUNCTION_4_50(__clz(__rbit64(v8)) | (v11 << 6));
      v14 = v13[1];
      v17 = *(v16 + 4 * v15);
      *&v36[0] = *v13;
      *(&v36[0] + 1) = v14;

      swift_dynamicCast();
      swift_dynamicCast();
      v32 = v28;
      v33 = v29;
      v34 = v30;
      sub_1DD400AE4(&v31, v35);
      v28 = v32;
      v29 = v33;
      v30 = v34;
      sub_1DD400AE4(v35, v36);
      v18 = *(v3 + 40);
      v19 = sub_1DD640828() & ~(-1 << *(v3 + 32));
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_5_53();
LABEL_21:
      OUTLINED_FUNCTION_2_63();
      *(v10 + v24) |= v25;
      v27 = *(v3 + 48) + 40 * v26;
      *v27 = v28;
      *(v27 + 16) = v29;
      *(v27 + 32) = v30;
      sub_1DD400AE4(v36, (*(v3 + 56) + 32 * v26));
      ++*(v3 + 16);
    }

    OUTLINED_FUNCTION_4_3();
    while (++v20 != v22 || (v21 & 1) == 0)
    {
      v23 = v20 == v22;
      if (v20 == v22)
      {
        v20 = 0;
      }

      v21 |= v23;
      if (*(v10 + 8 * v20) != -1)
      {
        OUTLINED_FUNCTION_8_41();
        goto LABEL_21;
      }
    }
  }

  else
  {
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return;
      }

      v8 = *(v1 + 64 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

INSpatialEventTrigger_optional __swiftcall Location.toINSpatialEventTrigger(withPlacemarkName:)(Swift::String_optional withPlacemarkName)
{
  object = withPlacemarkName.value._object;
  countAndFlagsBits = withPlacemarkName.value._countAndFlagsBits;
  memcpy(__dst, v1, 0x2B0uLL);
  v4 = *(v1 + 688);
  v5 = *(v1 + 689);
  *v12 = *(v1 + 690);
  *&v12[14] = *(v1 + 704);
  __dst[688] = v4;
  __dst[689] = v5;
  v14 = Location.toCLPlacemark()();
  if (v14.value.super.isa)
  {
    isa = v14.value.super.isa;
    if (object)
    {
      v7._countAndFlagsBits = countAndFlagsBits;
      v7._object = object;
      v8 = CLPlacemark.withOverriddenName(_:)(v7).super.isa;
      v9 = v8;
    }

    else
    {
      v9 = 0;
      v8 = v14.value.super.isa;
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E696EA48]) initWithPlacemark:v8 event:qword_1DD656168[v4]];
  }

  else if (v5 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E696EA48]) initWithMobileSpace:v5 & 1 event:qword_1DD656168[v4]];
  }

  v14.value.super.isa = v10;
  return *&v14.value.super.isa;
}

CLPlacemark_optional __swiftcall Location.toCLPlacemark()()
{
  v56 = *(v1 + 11);
  v57 = *(v1 + 13);
  v61 = *(v1 + 24);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v63 = *(v1 + 32);
  v64 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v7 = *(v1 + 104);
  v6 = *(v1 + 112);
  v53 = *(v1 + 512);
  v54 = *(v1 + 536);
  v55 = *(v1 + 72);
  v58 = *(v1 + 520);
  v59 = *(v1 + 544);
  v65 = *(v1 + 608);
  v8 = *(v1 + 616);
  v60 = *(v1 + 648);
  v9 = *(v1 + 704);
  v62 = *(v1 + 656);
  if (v9 >> 60 == 15 || (v10 = *(v1 + 696), sub_1DD4FCE10(), sub_1DD3D01B4(v10, v9), (v11 = sub_1DD4FCD90(v10, v9)) == 0))
  {
    if (!v5 || (, v18 = sub_1DD4FCD30(v4, v5), (v0 & 1) != 0) || (v19 = *&v18, , v20 = sub_1DD4FCD30(v7, v6), (v0 & 1) != 0))
    {
      isa = 0;
      goto LABEL_11;
    }

    v52 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v19 longitude:*&v20];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD270, &qword_1DD64F1A0);
    inited = swift_initStackObject();
    v23 = inited;
    *(inited + 16) = xmmword_1DD652A50;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v24 = MEMORY[0x1E69E6158];
    if (v3)
    {
      v25 = v2;
    }

    else
    {
      v25 = 0;
    }

    v26 = 0xE000000000000000;
    if (v3)
    {
      v27 = v3;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    *(inited + 48) = v25;
    *(inited + 56) = v27;
    *(inited + 72) = v24;
    *(inited + 80) = 2037672259;
    v28 = v55;
    if (v64)
    {
      v29 = v64;
    }

    else
    {
      v28 = 0;
      v29 = 0xE000000000000000;
    }

    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v28;
    *(inited + 104) = v29;
    *(inited + 120) = v24;
    *(inited + 128) = 1701667150;
    v30 = v65;
    if (v8)
    {
      v31 = v8;
    }

    else
    {
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v30;
    *(inited + 152) = v31;
    *(inited + 168) = v24;
    strcpy((inited + 176), "Thoroughfare");
    *(inited + 189) = 0;
    *(inited + 190) = -5120;
    if (v58 >= 2)
    {

      v26 = v58;
      v34 = v62;
      v33 = v63;
      v35 = v59;
      v32 = v53;
    }

    else
    {
      v32 = 0;
      v34 = v62;
      v33 = v63;
      v35 = v59;
    }

    v36 = 0;
    v23[24] = v32;
    v23[25] = v26;
    v23[27] = v24;
    v23[28] = 0x6F726F6854627553;
    v23[29] = 0xEF65726166686775;
    v37 = 0xE000000000000000;
    if (v58 != 1 && v35)
    {

      v36 = v54;
      v37 = v38;
    }

    v23[30] = v36;
    v23[31] = v37;
    v23[33] = v24;
    v23[34] = 0xD000000000000015;
    v39 = v60;
    if (v34)
    {
      v40 = v34;
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    v23[35] = 0x80000001DD66EDD0;
    v23[36] = v39;
    v23[37] = v40;
    v23[39] = v24;
    v23[40] = 5261658;
    v41 = v61;
    if (v33)
    {
      v42 = v33;
    }

    else
    {
      v41 = 0;
      v42 = 0xE000000000000000;
    }

    v23[41] = 0xE300000000000000;
    v23[42] = v41;
    v23[43] = v42;
    v23[45] = v24;
    v23[46] = 0x437972746E756F43;
    v23[47] = 0xEB0000000065646FLL;
    if (v56 == 4)
    {
      v43 = v23 + 48;
      v23[51] = v24;
    }

    else
    {
      v44 = Country.Value.rawValue.getter();
      v43 = v23 + 48;
      v23[51] = v24;
      if (v45)
      {
        *v43 = v44;
LABEL_41:
        v23[49] = v45;

        v46 = sub_1DD63FC88();
        v47 = v52;
        sub_1DD4FC0F0(v46);
        v49 = v48;

        v50 = objc_allocWithZone(MEMORY[0x1E695FC20]);
        sub_1DD3FE5F0(v52, v49, 0, 0);
        isa = v51;

        goto LABEL_11;
      }
    }

    *v43 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_41;
  }

  v13 = v11;
  v14 = [objc_opt_self() placemarkWithGEOMapItem_];
  isa = v14;
  if (v8 && v14)
  {
    v16 = v14;
    v17._countAndFlagsBits = v65;
    v17._object = v8;
    isa = CLPlacemark.withOverriddenName(_:)(v17).super.isa;
  }

LABEL_11:
  v21 = isa;
  result.value._internal = v0;
  result.value.super.isa = v21;
  result.is_nil = v12;
  return result;
}

uint64_t sub_1DD4FCD30(uint64_t a1, uint64_t a2)
{
  sub_1DD4FCEC0(a1, a2);

  return 0;
}

id sub_1DD4FCD90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1DD63CF08();
    sub_1DD3AD77C(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() mapItemStorageForSerializedMapItemStorage_];

  return v5;
}

unint64_t sub_1DD4FCE10()
{
  result = qword_1ECCDE0B0;
  if (!qword_1ECCDE0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDE0B0);
  }

  return result;
}

_BYTE *sub_1DD4FCE54@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_1DD4FCEC0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1DD6408A8();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_1DD4FCFD4()
{
  if (*(v0 + 640))
  {
    v2 = *(v0 + 632);
    goto LABEL_83;
  }

  v78 = *(v0 + 11);
  v79 = *(v0 + 13);
  v80 = *(v0 + 32);
  v3 = *(v0 + 56);
  v76 = *(v0 + 48);
  v77 = *(v0 + 24);
  v4 = *(v0 + 80);
  v5 = *(v0 + 416);
  v73 = *(v0 + 512);
  v74 = *(v0 + 72);
  v6 = *(v0 + 520);
  v72 = *(v0 + 536);
  v7 = *(v0 + 544);
  v8 = *(v0 + 553);
  v81 = *(v0 + 600);
  v75 = *(v0 + 648);
  v9 = *(v0 + 656);
  if (v5)
  {
    if (v5 == 1)
    {
LABEL_5:
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }

    v0 = *(v0 + 408);
  }

  else
  {
    v5 = *(v0 + 432);
    if (v5)
    {
      v0 = *(v0 + 424);
    }

    else
    {
      v5 = *(v0 + 456);
      if (v5)
      {
        v0 = *(v0 + 448);
      }

      else
      {
        v5 = *(v0 + 472);
        if (v5)
        {
          v0 = *(v0 + 464);
        }

        else
        {
          v5 = *(v0 + 496);
          if (!v5)
          {
            goto LABEL_5;
          }

          v0 = *(v0 + 488);
        }
      }
    }
  }

  sub_1DD3BE2A4();
  v10 = v11;
  v1 = *(v11 + 16);
  v12 = v1 + 1;
  if (v1 >= *(v11 + 24) >> 1)
  {
    sub_1DD3BE2A4();
    v12 = v1 + 1;
    v10 = v52;
  }

  *(v10 + 16) = v12;
  v13 = v10 + 16 * v1;
  *(v13 + 32) = v0;
  *(v13 + 40) = v5;
LABEL_12:
  if (v6 != 1)
  {
    if (v7)
    {

      sub_1DD3BE2A4();
      v15 = v14;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_14_0(v16);
        sub_1DD3BE2A4();
        v15 = v67;
      }

      *(v15 + 16) = v17 + 1;
      v18 = v15 + 16 * v17;
      *(v18 + 32) = v72;
      *(v18 + 40) = v7;
      if (!v6)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (!v6)
      {
LABEL_24:
        if ((v8 & 0xFF00) != 0x900)
        {
          v22 = StreetType.Value.rawValue.getter();
          v24 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_54();
            v15 = v70;
          }

          v25 = *(v15 + 16);
          if (v25 >= *(v15 + 24) >> 1)
          {
            sub_1DD3BE2A4();
            v15 = v71;
          }

          *(v15 + 16) = v25 + 1;
          v26 = v15 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
        sub_1DD4477A4();
        v0 = sub_1DD63FD58();
        v28 = v27;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_23();
          v10 = v61;
        }

        v1 = *(v10 + 16);
        if (v1 >= *(v10 + 24) >> 1)
        {
          sub_1DD3BE2A4();
          v10 = v62;
        }

        *(v10 + 16) = v1 + 1;
        v29 = v10 + 16 * v1;
        *(v29 + 32) = v0;
        *(v29 + 40) = v28;
        goto LABEL_35;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_54();
      v15 = v68;
    }

    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      OUTLINED_FUNCTION_14_0(v19);
      sub_1DD3BE2A4();
      v15 = v69;
    }

    *(v15 + 16) = v20 + 1;
    v21 = v15 + 16 * v20;
    *(v21 + 32) = v73;
    *(v21 + 40) = v6;
    goto LABEL_24;
  }

LABEL_35:
  if (v4)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v10 = v53;
    }

    OUTLINED_FUNCTION_2_64();
    if (v31)
    {
      OUTLINED_FUNCTION_14_0(v30);
      sub_1DD3BE2A4();
      v10 = v54;
    }

    *(v10 + 16) = v0;
    v32 = v10 + 16 * v1;
    *(v32 + 32) = v74;
    *(v32 + 40) = v4;
  }

  if (v9)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v10 = v55;
    }

    OUTLINED_FUNCTION_2_64();
    if (v31)
    {
      OUTLINED_FUNCTION_14_0(v33);
      sub_1DD3BE2A4();
      v10 = v56;
    }

    *(v10 + 16) = v0;
    v34 = v10 + 16 * v1;
    *(v34 + 32) = v75;
    *(v34 + 40) = v9;
  }

  if (v3)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v10 = v57;
    }

    OUTLINED_FUNCTION_2_64();
    if (v31)
    {
      OUTLINED_FUNCTION_14_0(v35);
      sub_1DD3BE2A4();
      v10 = v58;
    }

    *(v10 + 16) = v0;
    v36 = v10 + 16 * v1;
    *(v36 + 32) = v76;
    *(v36 + 40) = v3;
  }

  if (v80)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v10 = v59;
    }

    v38 = *(v10 + 16);
    v37 = *(v10 + 24);
    if (v38 >= v37 >> 1)
    {
      OUTLINED_FUNCTION_14_0(v37);
      sub_1DD3BE2A4();
      v10 = v60;
    }

    *(v10 + 16) = v38 + 1;
    v39 = v10 + 16 * v38;
    *(v39 + 32) = v77;
    *(v39 + 40) = v80;
  }

  if (v78 != 4)
  {
    v40 = Country.Value.rawValue.getter();
    v42 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v10 = v63;
    }

    v43 = *(v10 + 16);
    if (v43 >= *(v10 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v10 = v64;
    }

    *(v10 + 16) = v43 + 1;
    v44 = v10 + 16 * v43;
    *(v44 + 32) = v40;
    *(v44 + 40) = v42;
  }

  if ((v81 & 0xFF00) != 0x400)
  {
    v45 = 0xED00006163697265;
    v46 = 0x6D41206874726F4ELL;
    switch(v81)
    {
      case 1:
        v46 = 0x6D41206874756F53;
        break;
      case 2:
        v45 = 0xE900000000000061;
        v46 = 0x6369747261746E41;
        break;
      case 3:
        v45 = 0xE600000000000000;
        v46 = 0x616369726641;
        break;
      case 4:
        v45 = 0xE600000000000000;
        v46 = 0x65706F727545;
        break;
      case 5:
        v45 = 0xE400000000000000;
        v46 = 1634300737;
        break;
      case 6:
        v45 = 0xE700000000000000;
        v47 = 0x697361727545;
        goto LABEL_76;
      case 7:
        v45 = 0xE700000000000000;
        v47 = 0x696E6165634FLL;
LABEL_76:
        v46 = v47 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
        break;
      default:
        break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v10 = v65;
    }

    v49 = *(v10 + 16);
    v48 = *(v10 + 24);
    if (v49 >= v48 >> 1)
    {
      OUTLINED_FUNCTION_14_0(v48);
      sub_1DD3BE2A4();
      v10 = v66;
    }

    *(v10 + 16) = v49 + 1;
    v50 = v10 + 16 * v49;
    *(v50 + 32) = v46;
    *(v50 + 40) = v45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v2 = sub_1DD63FD58();

LABEL_83:

  return v2;
}

void OUTLINED_FUNCTION_3_54()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD3BE2A4();
}

__n128 Location.init(radius:country:zipcode:state:city:centroid:place:timezone:proximity:landmark:streetAddress:continentName:addressReference:locationName:locationLabel:county:locationAccuracy:)@<Q0>(uint64_t *a1@<X0>, __int16 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, const void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, const void *a12, const void *a13, __int16 *a14, __int16 *a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21)
{
  v22 = *a1;
  v23 = *(a1 + 4);
  v24 = *(a1 + 10);
  v25 = *a2;
  v26 = *(a2 + 2);
  v36 = *a3;
  v27 = *(a3 + 2);
  v38 = *a4;
  v37 = *(a4 + 2);
  v40 = *a5;
  v39 = *(a5 + 2);
  v43 = *a6;
  v41 = *(a6 + 3);
  v42 = *(a6 + 2);
  v44 = *a11;
  v51 = *a15;
  v52 = *a14;
  v53 = a16[1];
  v54 = *a16;
  *(a9 + 8) = 4;
  v47 = *(a16 + 16);
  *(a9 + 11) = 4;
  v49 = a19[1];
  v50 = *a19;
  v48 = *(a19 + 8);
  *a9 = 0;
  *(a9 + 10) = 0;
  *(a9 + 13) = 0;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0;
  sub_1DD3AD724(__src);
  memcpy((a9 + 120), __src, 0x106uLL);
  *(a9 + 400) = 5;
  *(a9 + 408) = 0;
  *(a9 + 416) = 1;
  *(a9 + 424) = 0u;
  *(a9 + 440) = 0u;
  *(a9 + 456) = 0u;
  *(a9 + 472) = 0u;
  *(a9 + 488) = 0u;
  *(a9 + 504) = 0;
  *(a9 + 512) = xmmword_1DD642F70;
  *(a9 + 528) = 0u;
  *(a9 + 544) = 0u;
  *(a9 + 560) = 0u;
  *(a9 + 576) = 0u;
  *(a9 + 592) = 0;
  *(a9 + 600) = 132096;
  *(a9 + 624) = 0;
  *(a9 + 608) = 0u;
  *(a9 + 664) = 0;
  *(a9 + 648) = 0u;
  *(a9 + 688) = 515;
  *(a9 + 696) = xmmword_1DD6561A0;
  *a9 = v22;
  *(a9 + 10) = v24;
  *(a9 + 8) = v23;
  *(a9 + 13) = v26;
  *(a9 + 11) = v25;
  v28 = *(a9 + 32);

  *(a9 + 16) = v36;
  *(a9 + 32) = v27;
  v29 = *(a9 + 56);

  *(a9 + 40) = v38;
  *(a9 + 56) = v37;
  v30 = *(a9 + 80);

  *(a9 + 64) = v40;
  *(a9 + 80) = v39;
  v31 = *(a9 + 104);
  v32 = *(a9 + 112);
  sub_1DD3AD738(*(a9 + 88), *(a9 + 96));
  *(a9 + 88) = v43;
  *(a9 + 104) = v42;
  *(a9 + 112) = v41;
  memcpy(__dst, (a9 + 120), 0x106uLL);
  sub_1DD3ADFD0(__dst, &qword_1ECCDB838, &qword_1DD6570C0);
  memcpy((a9 + 120), a7, 0x106uLL);
  *(a9 + 384) = a8;
  *(a9 + 392) = a10;
  *(a9 + 400) = v44;
  memcpy(v57, (a9 + 408), 0x61uLL);
  sub_1DD3ADFD0(v57, &qword_1ECCDB840, &qword_1DD642FC8);
  memcpy((a9 + 408), a12, 0x61uLL);
  memcpy(v58, (a9 + 512), 0x58uLL);
  sub_1DD3ADFD0(v58, &qword_1ECCDB848, &qword_1DD642FD0);
  memcpy((a9 + 512), a13, 0x58uLL);
  *(a9 + 600) = v52;
  *(a9 + 602) = v51;
  v33 = *(a9 + 616);

  *(a9 + 608) = v54;
  *(a9 + 616) = v53;
  *(a9 + 624) = v47;
  *(a9 + 632) = a17;
  *(a9 + 640) = a18;
  v34 = *(a9 + 656);

  *(a9 + 648) = v50;
  *(a9 + 656) = v49;
  *(a9 + 664) = v48;
  *(a9 + 672) = a20;
  *(a9 + 680) = a21;
  sub_1DD3AD77C(*(a9 + 696), *(a9 + 704));
  result = xmmword_1DD6561A0;
  *(a9 + 696) = xmmword_1DD6561A0;
  return result;
}

void Location.radius.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 10);
  *a1 = *v1;
  *(a1 + 10) = v3;
  *(a1 + 8) = v2;
}

void Location.country.getter(_WORD *a1@<X8>)
{
  v2 = *(v1 + 11);
  *(a1 + 2) = *(v1 + 13);
  OUTLINED_FUNCTION_27_10(a1);
}

uint64_t Location.centroid.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1DD4FDA84(v2, v3);
}

uint64_t sub_1DD4FDA84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 Location.centroid.setter(uint64_t a1)
{
  v3 = v1[13];
  v4 = v1[14];
  sub_1DD3AD738(v1[11], v1[12]);
  result = *a1;
  *(v1 + 13) = *(a1 + 16);
  *(v1 + 11) = result;
  return result;
}

uint64_t Location.place.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 120), 0x106uLL);
  memcpy(a1, (v1 + 120), 0x106uLL);
  return sub_1DD4FDD00(__dst, v4, &qword_1ECCDB838, &qword_1DD6570C0);
}

void *Location.place.setter(const void *a1)
{
  memcpy(v4, (v1 + 120), 0x106uLL);
  sub_1DD3ADFD0(v4, &qword_1ECCDB838, &qword_1DD6570C0);
  return memcpy((v1 + 120), a1, 0x106uLL);
}

uint64_t Location.timezone.getter()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Location.landmark.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 408), 0x61uLL);
  memcpy(a1, (v1 + 408), 0x61uLL);
  return sub_1DD4FDD00(__dst, &v4, &qword_1ECCDB840, &qword_1DD642FC8);
}

uint64_t Location.streetAddress.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 512), sizeof(__dst));
  memcpy(a1, (v1 + 512), 0x58uLL);
  return sub_1DD4FDD00(__dst, &v4, &qword_1ECCDB848, &qword_1DD642FD0);
}

uint64_t sub_1DD4FDD00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_15_0();
  v7(v6);
  return a2;
}

uint64_t Location.locationName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 616);
  v3 = *(v1 + 624);
  *a1 = *(v1 + 608);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t Location.locationLabel.getter()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Location.locationLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 640);

  *(v2 + 632) = a1;
  *(v2 + 640) = a2;
  return result;
}

uint64_t Location.county.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 656);
  v3 = *(v1 + 664);
  *a1 = *(v1 + 648);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t Location.locationAccuracy.getter()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 680);

  return OUTLINED_FUNCTION_15_0();
}

id sub_1DD4FDE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD3AD724(__src);
  memcpy(__dst, __src, sizeof(__dst));
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_43_13();
  memcpy(v12, __dst, 0x106uLL);
  sub_1DD3ADFD0(v12, &qword_1ECCDB838, &qword_1DD6570C0);
  memcpy(__dst, __src, sizeof(__dst));
  v13[0] = xmmword_1DD642F70;
  memset(&v13[1], 0, 80);
  v14 = 0;
  sub_1DD3ADFD0(v13, &qword_1ECCDB840, &qword_1DD642FC8);
  v15[0] = xmmword_1DD642F70;
  memset(&v15[1], 0, 64);
  v16 = 0;
  sub_1DD3ADFD0(v15, &qword_1ECCDB848, &qword_1DD642FD0);
  swift_bridgeObjectRelease_n();
  result = [objc_opt_self() mapItemStorageForGEOMapItem_];
  if (result)
  {
    v5 = result;
    v6 = [result data];

    if (v6)
    {
      v7 = sub_1DD63CF28();
      v9 = v8;

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v7 = 0;
      v9 = 0xF000000000000000;
    }

    sub_1DD3AD77C(0, 0xF000000000000000);
    *a2 = 0;
    *(a2 + 10) = 0;
    *(a2 + 8) = 4;
    *(a2 + 13) = 0;
    *(a2 + 11) = 4;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0;
    result = memcpy((a2 + 120), __dst, 0x106uLL);
    *(a2 + 384) = 0u;
    *(a2 + 400) = 5;
    *(a2 + 408) = 0;
    *(a2 + 416) = 1;
    *(a2 + 424) = 0u;
    *(a2 + 440) = 0u;
    *(a2 + 456) = 0u;
    *(a2 + 472) = 0u;
    *(a2 + 488) = 0u;
    *(a2 + 504) = 0;
    *(a2 + 512) = xmmword_1DD642F70;
    *(a2 + 528) = 0u;
    *(a2 + 544) = 0u;
    *(a2 + 560) = 0u;
    *(a2 + 576) = 0u;
    *(a2 + 592) = 0;
    *(a2 + 600) = 132096;
    *(a2 + 608) = 0u;
    *(a2 + 624) = 0;
    *(a2 + 632) = 0u;
    *(a2 + 648) = 0u;
    *(a2 + 664) = 0;
    *(a2 + 672) = 0u;
    *(a2 + 688) = 515;
    *(a2 + 696) = v7;
    *(a2 + 704) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1DD4FE0FC@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 4;
  v2 = a1 + 8;
  v3 = (a1 + 408);
  *(a1 + 10) = 0;
  *(a1 + 11) = 4;
  v4 = a1 + 11;
  *(a1 + 13) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  sub_1DD3AD724(__src);
  memcpy((a1 + 120), __src, 0x106uLL);
  *(a1 + 400) = 5;
  *(a1 + 408) = 0;
  *(a1 + 416) = 1;
  v5.n128_f64[0] = OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_39_12(v5, xmmword_1DD642F70);
  *(a1 + 600) = 132096;
  *(a1 + 624) = 0;
  *(a1 + 608) = v6;
  *(a1 + 664) = 0;
  *(a1 + 648) = v6;
  *(a1 + 688) = 515;
  *(v3 + 18) = xmmword_1DD6561A0;
  *a1 = 0;
  *(v2 + 2) = 0;
  *v2 = 4;
  *(v4 + 2) = 0;
  *v4 = 4;
  v7 = *(a1 + 32);

  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  v8 = *(a1 + 56);

  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  v9 = *(a1 + 80);

  *(a1 + 80) = 0;
  *(a1 + 64) = 0u;
  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  sub_1DD3AD738(*(a1 + 88), *(a1 + 96));
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  memcpy(__dst, (a1 + 120), 0x106uLL);
  sub_1DD3ADFD0(__dst, &qword_1ECCDB838, &qword_1DD6570C0);
  memcpy((a1 + 120), __src, 0x106uLL);
  *(a1 + 384) = 0u;
  *(a1 + 400) = 5;
  memcpy(v17, v3, 0x61uLL);
  sub_1DD3ADFD0(v17, &qword_1ECCDB840, &qword_1DD642FC8);
  *v3 = xmmword_1DD642F70;
  OUTLINED_FUNCTION_30_13();
  memcpy(v18, (a1 + 512), 0x58uLL);
  sub_1DD3ADFD0(v18, &qword_1ECCDB848, &qword_1DD642FD0);
  OUTLINED_FUNCTION_39_12(0, xmmword_1DD642F70);
  *(a1 + 600) = 132096;
  v12 = *(a1 + 616);

  *(a1 + 624) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 632) = 0u;
  v13 = *(a1 + 656);

  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 672) = 0u;
  sub_1DD3AD77C(v3[36], *(a1 + 704));
  result = xmmword_1DD6561A0;
  *(v3 + 18) = xmmword_1DD6561A0;
  return result;
}

uint64_t static Location.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 4) | (*(a1 + 10) << 16);
  v6 = *(a1 + 13);
  v7 = *(a1 + 11);
  v186 = *(a1 + 1);
  v187 = a1[4];
  v182 = *(a1 + 5);
  v184 = a1[7];
  v174 = *(a1 + 4);
  v179 = a1[10];
  v177 = a1[12];
  v175 = a1[11];
  v176 = a1[13];
  v169 = a1[14];
  memcpy(__dst, a1 + 15, 0x106uLL);
  v162 = a1[48];
  v166 = a1[49];
  v164 = *(a1 + 400);
  memcpy(v198, a1 + 51, sizeof(v198));
  memcpy(v199, a1 + 64, sizeof(v199));
  v159 = *(a1 + 301);
  v160 = *(a1 + 300);
  v158 = *(a1 + 38);
  v157 = *(a1 + 624);
  v153 = a1[81];
  v154 = a1[79];
  v155 = a1[82];
  v156 = a1[80];
  v152 = *(a1 + 332);
  v150 = a1[84];
  v151 = a1[85];
  v8 = *a2;
  v9 = *(a2 + 8) | (*(a2 + 10) << 16);
  v10 = *(a2 + 13);
  v11 = *(a2 + 11);
  v12 = *(a2 + 24);
  v185 = *(a2 + 16);
  v13 = *(a2 + 32);
  v180 = *(a2 + 40);
  v181 = *(a2 + 48);
  v183 = *(a2 + 56);
  v170 = *(a2 + 64);
  v171 = *(a2 + 72);
  v178 = *(a2 + 80);
  v172 = *(a2 + 96);
  v173 = *(a2 + 88);
  v167 = *(a2 + 104);
  v168 = *(a2 + 112);
  memcpy(__src, (a2 + 120), 0x106uLL);
  v161 = *(a2 + 384);
  v165 = *(a2 + 392);
  v163 = *(a2 + 400);
  memcpy(v201, (a2 + 408), 0x61uLL);
  memcpy(v202, (a2 + 512), 0x58uLL);
  v14 = *(a2 + 600);
  v15 = *(a2 + 602);
  v16 = *(a2 + 608);
  v17 = *(a2 + 616);
  v18 = *(a2 + 624);
  v19 = *(a2 + 632);
  v20 = *(a2 + 640);
  v21 = *(a2 + 648);
  v22 = *(a2 + 656);
  v23 = *(a2 + 664);
  v24 = *(a2 + 672);
  v25 = *(a2 + 680);
  if (v5 == 4)
  {
    v26 = v15;
    v147 = v18;
    v27 = v16;
    OUTLINED_FUNCTION_29_16();
    if (v9 != 4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    *&v195[0] = v4;
    WORD4(v195[0]) = v5;
    BYTE10(v195[0]) = BYTE2(v5);
    if (v9 == 4)
    {
      goto LABEL_26;
    }

    v26 = v15;
    v147 = v18;
    v27 = v16;
    OUTLINED_FUNCTION_29_16();
    v193[0] = v8;
    LOWORD(v193[1]) = v9 & 0x1FF;
    BYTE2(v193[1]) = BYTE2(v9) & 1;
    v30 = v29;
    v31 = static Radius.== infix(_:_:)(v195, v193);
    v28 = v30;
    if ((v31 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v7 == 4)
  {
    if (v11 != 4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    LOWORD(v195[0]) = v7;
    BYTE2(v195[0]) = (v7 | (v6 << 16)) >> 16;
    if (v11 == 4)
    {
      goto LABEL_26;
    }

    LOWORD(v193[0]) = v11;
    BYTE2(v193[0]) = (v11 | (v10 << 16)) >> 16;
    v32 = v28;
    v33 = static Country.== infix(_:_:)(v195, v193);
    v28 = v32;
    if ((v33 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v34 = v25;
  if (v187)
  {
    v195[0] = v186;
    *&v195[1] = v187;
    if (!v13)
    {
      goto LABEL_24;
    }

    v35 = v28;
    LOBYTE(v193[0]) = v185;
    v193[1] = v12;
    v193[2] = v13;
    swift_bridgeObjectRetain_n();

    v36 = OUTLINED_FUNCTION_27_18();
    v38 = static Zipcode.== infix(_:_:)(v36, v37);

    if ((v38 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13)
    {
      goto LABEL_24;
    }

    v35 = v28;
  }

  if (v184)
  {
    v195[0] = v182;
    *&v195[1] = v184;
    if (!v183)
    {
      goto LABEL_24;
    }

    LOWORD(v193[0]) = v180;
    v193[1] = v181;
    v193[2] = v183;
    swift_bridgeObjectRetain_n();

    v39 = OUTLINED_FUNCTION_27_18();
    v41 = static State.== infix(_:_:)(v39, v40);

    if ((v41 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v183)
    {
      goto LABEL_24;
    }
  }

  if (!v179)
  {
    v47 = v176;
    if (!v178)
    {

      goto LABEL_37;
    }

LABEL_24:

LABEL_25:

    goto LABEL_26;
  }

  v195[0] = v174;
  *&v195[1] = v179;
  if (!v178)
  {
    goto LABEL_24;
  }

  LOWORD(v193[0]) = v170;
  v193[1] = v171;
  v193[2] = v178;
  swift_bridgeObjectRetain_n();

  v44 = OUTLINED_FUNCTION_27_18();
  v46 = static City.== infix(_:_:)(v44, v45);

  v47 = v176;
  if ((v46 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_37:
  if (!v177)
  {
    sub_1DD4FDA84(v175, 0);
    if (!v172)
    {
      sub_1DD4FDA84(v173, 0);
      goto LABEL_57;
    }

    v56 = OUTLINED_FUNCTION_38_12();
    sub_1DD4FDA84(v56, v57);
    goto LABEL_53;
  }

  if (!v172)
  {
    v58 = OUTLINED_FUNCTION_10_37();
    sub_1DD4FDA84(v58, v59);
    sub_1DD4FDA84(v173, 0);
    v60 = OUTLINED_FUNCTION_10_37();
    sub_1DD4FDA84(v60, v61);

LABEL_53:
    v62 = OUTLINED_FUNCTION_10_37();
    sub_1DD3AD738(v62, v63);
    v64 = OUTLINED_FUNCTION_38_12();
LABEL_54:
    sub_1DD3AD738(v64, v65);
    goto LABEL_26;
  }

  v48 = v175 == v173 && v177 == v172;
  if (!v48 && (sub_1DD640CD8() & 1) == 0)
  {
    v79 = OUTLINED_FUNCTION_10_37();
    sub_1DD4FDA84(v79, v80);
    v81 = OUTLINED_FUNCTION_38_12();
    sub_1DD4FDA84(v81, v82);
    v83 = OUTLINED_FUNCTION_10_37();
    sub_1DD4FDA84(v83, v84);
    v85 = OUTLINED_FUNCTION_38_12();
    sub_1DD3AD738(v85, v86);

    v64 = OUTLINED_FUNCTION_10_37();
    goto LABEL_54;
  }

  if (v47 == v167 && v169 == v168)
  {
    OUTLINED_FUNCTION_16_32();
    sub_1DD4FDA84(v66, v67);
    OUTLINED_FUNCTION_16_32();
    sub_1DD4FDA84(v68, v69);
    OUTLINED_FUNCTION_16_32();
    sub_1DD4FDA84(v70, v71);
    OUTLINED_FUNCTION_16_32();
    sub_1DD3AD738(v72, v73);

LABEL_57:
    OUTLINED_FUNCTION_16_32();
    sub_1DD3AD738(v74, v75);
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_23_23();
  v188 = sub_1DD640CD8();
  OUTLINED_FUNCTION_16_32();
  sub_1DD4FDA84(v50, v51);
  OUTLINED_FUNCTION_23_23();
  sub_1DD4FDA84(v52, v53);
  sub_1DD4FDA84(v175, v177);
  OUTLINED_FUNCTION_23_23();
  sub_1DD3AD738(v54, v55);

  sub_1DD3AD738(v175, v177);
  if ((v188 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_58:
  memcpy(v195, __dst, 0x106uLL);
  memcpy(&v195[16] + 8, __src, 0x106uLL);
  memcpy(v196, __dst, 0x106uLL);
  if (OUTLINED_FUNCTION_0_99(v196) == 1)
  {
    memcpy(v193, &v195[16] + 8, 0x106uLL);
    if (OUTLINED_FUNCTION_0_99(v193) == 1)
    {
      OUTLINED_FUNCTION_37_15(v194);
      OUTLINED_FUNCTION_15_30(__dst);
      OUTLINED_FUNCTION_15_30(__src);
      OUTLINED_FUNCTION_23_23();
      sub_1DD3ADFD0(v76, v77, v78);
      goto LABEL_68;
    }

    OUTLINED_FUNCTION_26_20(__dst, v194);
    OUTLINED_FUNCTION_26_20(__src, v194);
LABEL_65:
    memcpy(v193, v195, 0x20EuLL);
    v87 = &unk_1ECCDE0C8;
    v88 = &unk_1DD6561B0;
    v89 = v193;
LABEL_66:
    sub_1DD3ADFD0(v89, v87, v88);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_37_15(v194);
  OUTLINED_FUNCTION_37_15(v192);
  memcpy(v193, &v195[16] + 8, 0x106uLL);
  if (OUTLINED_FUNCTION_0_99(v193) == 1)
  {
    OUTLINED_FUNCTION_37_15(v191);
    OUTLINED_FUNCTION_24_16(__dst);
    OUTLINED_FUNCTION_24_16(__src);
    OUTLINED_FUNCTION_24_16(v194);
    sub_1DD501494(v191);
    goto LABEL_65;
  }

  memcpy(v191, &v195[16] + 8, 0x106uLL);
  OUTLINED_FUNCTION_24_16(__dst);
  OUTLINED_FUNCTION_24_16(__src);
  OUTLINED_FUNCTION_24_16(v194);
  static Place.== infix(_:_:)();
  v91 = v90;
  memcpy(v189, v191, 0x106uLL);
  sub_1DD501494(v189);
  memcpy(v190, v192, 0x106uLL);
  sub_1DD501494(v190);
  OUTLINED_FUNCTION_37_15(v191);
  OUTLINED_FUNCTION_23_23();
  sub_1DD3ADFD0(v92, v93, v94);
  if ((v91 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_68:
  if (v166)
  {
    if (!v165)
    {
      goto LABEL_26;
    }

    v95 = v162 == v161 && v166 == v165;
    if (!v95 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v165)
  {
    goto LABEL_26;
  }

  if (v164 == 5)
  {
    if (v163 != 5)
    {
      goto LABEL_26;
    }
  }

  else if (v163 == 5 || (sub_1DD3AE138() & 1) == 0)
  {
    goto LABEL_26;
  }

  memcpy(v190, &v198[16], 0x51uLL);
  v96 = v201[0];
  v97 = v201[1];
  memcpy(v189, &v201[2], 0x51uLL);
  if (*&v198[8] == 1)
  {
    if (v201[1] == 1)
    {
      *&v195[0] = *v198;
      *(&v195[0] + 1) = 1;
      v98 = OUTLINED_FUNCTION_22_21();
      memcpy(v98, v99, 0x51uLL);
      OUTLINED_FUNCTION_26_20(v198, v193);
      OUTLINED_FUNCTION_26_20(v201, v193);
      OUTLINED_FUNCTION_23_23();
      sub_1DD3ADFD0(v100, v101, v102);
      goto LABEL_90;
    }

    OUTLINED_FUNCTION_26_20(v198, v195);
    OUTLINED_FUNCTION_26_20(v201, v195);
LABEL_88:
    OUTLINED_FUNCTION_34_13();
    memcpy(v105, v106, 0x51uLL);
    *(&v195[6] + 1) = v96;
    *&v195[7] = v97;
    memcpy(&qword_1ECCDB8B8, v189, 0x51uLL);
    v87 = &unk_1ECCDE0D0;
    v88 = &unk_1DD6561B8;
LABEL_97:
    v89 = v195;
    goto LABEL_66;
  }

  v195[0] = *v198;
  v103 = OUTLINED_FUNCTION_22_21();
  memcpy(v103, v104, 0x51uLL);
  memcpy(v193, v195, 0x61uLL);
  if (v97 == 1)
  {
    memcpy(v194, v195, 0x61uLL);
    OUTLINED_FUNCTION_15_30(v198);
    OUTLINED_FUNCTION_15_30(v201);
    OUTLINED_FUNCTION_15_30(v195);
    sub_1DD4EE484(v194);
    goto LABEL_88;
  }

  memcpy(&v194[2], &v201[2], 0x51uLL);
  v194[0] = v96;
  v194[1] = v97;
  OUTLINED_FUNCTION_15_30(v198);
  OUTLINED_FUNCTION_15_30(v201);
  OUTLINED_FUNCTION_15_30(v195);
  v107 = static Landmark.== infix(_:_:)(v193, v194);
  memcpy(v191, v194, 0x61uLL);
  sub_1DD4EE484(v191);
  memcpy(v192, v193, 0x61uLL);
  sub_1DD4EE484(v192);
  OUTLINED_FUNCTION_31_16();
  memcpy(v108, v109, 0x51uLL);
  OUTLINED_FUNCTION_23_23();
  sub_1DD3ADFD0(v110, v111, v112);
  if ((v107 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_90:
  memcpy(v190, &v199[16], 0x48uLL);
  v114 = v202[0];
  v113 = v202[1];
  memcpy(v189, &v202[2], 0x48uLL);
  if (*&v199[8] == 1)
  {
    if (v202[1] == 1)
    {
      *&v195[0] = *v199;
      *(&v195[0] + 1) = 1;
      v115 = OUTLINED_FUNCTION_22_21();
      memcpy(v115, v116, 0x48uLL);
      OUTLINED_FUNCTION_26_20(v199, v193);
      OUTLINED_FUNCTION_26_20(v202, v193);
      OUTLINED_FUNCTION_23_23();
      sub_1DD3ADFD0(v117, v118, v119);
      goto LABEL_99;
    }

    OUTLINED_FUNCTION_26_20(v199, v195);
    OUTLINED_FUNCTION_26_20(v202, v195);
    goto LABEL_96;
  }

  v195[0] = *v199;
  v120 = OUTLINED_FUNCTION_22_21();
  memcpy(v120, v121, 0x48uLL);
  memcpy(v193, v195, 0x58uLL);
  if (v113 == 1)
  {
    memcpy(v194, v195, 0x58uLL);
    OUTLINED_FUNCTION_15_30(v199);
    OUTLINED_FUNCTION_15_30(v202);
    OUTLINED_FUNCTION_15_30(v195);
    sub_1DD501440(v194);
LABEL_96:
    OUTLINED_FUNCTION_34_13();
    memcpy(v122, v123, 0x48uLL);
    *(&v195[5] + 1) = v114;
    *&v195[6] = v113;
    memcpy(&qword_1ECCDB8B0, v189, 0x48uLL);
    v87 = &unk_1ECCDE0D8;
    v88 = &unk_1DD6561C0;
    goto LABEL_97;
  }

  memcpy(&v194[2], &v202[2], 0x48uLL);
  v194[0] = v114;
  v194[1] = v113;
  OUTLINED_FUNCTION_15_30(v199);
  OUTLINED_FUNCTION_15_30(v202);
  OUTLINED_FUNCTION_15_30(v195);
  v124 = static StreetAddress.== infix(_:_:)(v193, v194);
  memcpy(v191, v194, 0x58uLL);
  sub_1DD501440(v191);
  memcpy(v192, v193, 0x58uLL);
  sub_1DD501440(v192);
  OUTLINED_FUNCTION_31_16();
  memcpy(v125, v126, 0x48uLL);
  OUTLINED_FUNCTION_23_23();
  sub_1DD3ADFD0(v127, v128, v129);
  if ((v124 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_99:
  if ((v160 & 0xFF00) == 0x400)
  {
    if ((v35 & 0xFF00) != 0x400)
    {
      goto LABEL_26;
    }
  }

  else
  {
    LOWORD(v195[0]) = v160;
    if ((v35 & 0xFF00) == 0x400)
    {
      goto LABEL_26;
    }

    LOWORD(v193[0]) = v35;
    v130 = OUTLINED_FUNCTION_27_18();
    if ((static ContinentName.== infix(_:_:)(v130, v131) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v159 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    LOWORD(v195[0]) = v159;
    if (v26 == 2)
    {
      goto LABEL_26;
    }

    LOWORD(v193[0]) = v26 & 0xFF01;
    v132 = OUTLINED_FUNCTION_27_18();
    if ((static AddressReference.== infix(_:_:)(v132, v133) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (*(&v158 + 1))
  {
    v195[0] = v158;
    LOBYTE(v195[1]) = v157;
    if (!v149)
    {
      goto LABEL_114;
    }

    v193[0] = v27;
    v193[1] = v149;
    LOBYTE(v193[2]) = v147;
    swift_bridgeObjectRetain_n();

    v134 = OUTLINED_FUNCTION_27_18();
    v136 = static LocationName.== infix(_:_:)(v134, v135);

    if ((v136 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v149)
    {
      goto LABEL_114;
    }
  }

  if (v156)
  {
    if (!v148)
    {
      goto LABEL_26;
    }

    v137 = v154 == v145 && v156 == v148;
    if (!v137 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v148)
  {
    goto LABEL_26;
  }

  if (v155)
  {
    *&v195[0] = v153;
    *(&v195[0] + 1) = v155;
    LOWORD(v195[1]) = v152;
    if (v146)
    {
      v193[0] = v144;
      v193[1] = v146;
      LOWORD(v193[2]) = v143;
      swift_bridgeObjectRetain_n();

      v138 = OUTLINED_FUNCTION_27_18();
      v140 = static County.== infix(_:_:)(v138, v139);

      if ((v140 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_133;
    }

    goto LABEL_114;
  }

  if (v146)
  {
LABEL_114:

    goto LABEL_25;
  }

LABEL_133:
  if (v151)
  {
    if (v34)
    {
      if (v150 != v142 || v151 != v34)
      {
        v42 = sub_1DD640CD8();
        return v42 & 1;
      }

LABEL_141:
      v42 = 1;
      return v42 & 1;
    }
  }

  else if (!v34)
  {
    goto LABEL_141;
  }

LABEL_26:
  v42 = 0;
  return v42 & 1;
}

Swift::Void __swiftcall Location.setLocationName(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = *(v1 + 616);

  *(v1 + 608) = countAndFlagsBits;
  *(v1 + 616) = object;
  *(v1 + 624) = 3;
}

uint64_t sub_1DD4FF41C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737569646172 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65646F6370697ALL && a2 == 0xE700000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 2037672291 && a2 == 0xE400000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x64696F72746E6563 && a2 == 0xE800000000000000;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6563616C70 && a2 == 0xE500000000000000;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656E6F7A656D6974 && a2 == 0xE800000000000000;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x74696D69786F7270 && a2 == 0xE900000000000079;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6B72616D646E616CLL && a2 == 0xE800000000000000;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6441746565727473 && a2 == 0xED00007373657264;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E656E69746E6F63 && a2 == 0xED0000656D614E74;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000010 && 0x80000001DD66EDF0 == a2;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC000000656D614ELL;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6E6F697461636F6CLL && a2 == 0xED00006C6562614CLL;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x79746E756F63 && a2 == 0xE600000000000000;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000010 && 0x80000001DD66EE10 == a2;
                                  if (v21 || (sub_1DD640CD8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
                                    if (v22 || (sub_1DD640CD8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x7053656C69626F6DLL && a2 == 0xEB00000000656361;
                                      if (v23 || (sub_1DD640CD8() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0x446D65744970616DLL && a2 == 0xEB00000000617461)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_1DD640CD8();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
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

unint64_t sub_1DD4FFA1C(char a1)
{
  result = 0x737569646172;
  switch(a1)
  {
    case 1:
      result = 0x7972746E756F63;
      break;
    case 2:
      result = 0x65646F6370697ALL;
      break;
    case 3:
      v3 = 1952543859;
      goto LABEL_17;
    case 4:
      result = 2037672291;
      break;
    case 5:
      result = 0x64696F72746E6563;
      break;
    case 6:
      v3 = 1667329136;
LABEL_17:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 7:
      result = 0x656E6F7A656D6974;
      break;
    case 8:
      result = 0x74696D69786F7270;
      break;
    case 9:
      result = 0x6B72616D646E616CLL;
      break;
    case 10:
      result = 0x6441746565727473;
      break;
    case 11:
      result = 0x6E656E69746E6F63;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
    case 14:
      result = 0x6E6F697461636F6CLL;
      break;
    case 15:
      result = 0x79746E756F63;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x746E657665;
      break;
    case 18:
      result = 0x7053656C69626F6DLL;
      break;
    case 19:
      result = 0x446D65744970616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4FFC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4FF41C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4FFC5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD4FFA14();
  *a1 = result;
  return result;
}

uint64_t sub_1DD4FFC84(uint64_t a1)
{
  v2 = sub_1DD5014E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4FFCC0(uint64_t a1)
{
  v2 = sub_1DD5014E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Location.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE0E0, &qword_1DD6561C8);
  v5 = OUTLINED_FUNCTION_32_15(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v38 - v10;
  v71 = *v1;
  LODWORD(v72) = *(v1 + 4);
  v86 = *(v1 + 10);
  v12 = *(v1 + 13);
  v69 = *(v1 + 11);
  v70 = v12;
  v13 = v1[2];
  v67 = v1[3];
  v68 = v13;
  v14 = v1[4];
  v16 = v1[6];
  v15 = v1[7];
  v63 = v1[5];
  v64 = v16;
  v65 = v15;
  v66 = v14;
  v17 = v1[9];
  v60 = v1[8];
  v61 = v17;
  v18 = v1[11];
  v62 = v1[10];
  v19 = v1[12];
  v20 = v1[13];
  v56 = v18;
  v57 = v19;
  v21 = v1[14];
  v58 = v20;
  v59 = v21;
  memcpy(v83, v1 + 15, 0x106uLL);
  v22 = v1[49];
  v54 = v1[48];
  v55 = v22;
  v53 = *(v1 + 400);
  memcpy(v84, v1 + 51, 0x61uLL);
  memcpy(__dst, v1 + 64, 0x58uLL);
  v23 = *(v1 + 300);
  v51 = *(v1 + 301);
  v52 = v23;
  v24 = v1[76];
  v50 = v1[77];
  v49 = *(v1 + 624);
  v25 = v1[79];
  v47 = v1[80];
  v48 = v24;
  v26 = v1[81];
  v45 = v1[82];
  v46 = v25;
  v44 = *(v1 + 332);
  v41 = v1[84];
  v42 = v1[85];
  v43 = v26;
  v27 = *(v1 + 689);
  v39 = *(v1 + 688);
  v40 = v27;
  v38 = v1[87];
  v28 = v1[88];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5014E8();
  sub_1DD640EF8();
  v82[0] = v71;
  BYTE2(v82[1]) = v86;
  v30 = v11;
  LOWORD(v82[1]) = v72;
  v81[0] = 0;
  sub_1DD50153C();
  OUTLINED_FUNCTION_14_31();
  v31 = v73;
  sub_1DD640C08();
  if (v31)
  {
    return (*(v7 + 8))(v11, v2);
  }

  v34 = v67;
  v33 = v68;
  v35 = v66;
  v72 = v28;
  v73 = v7;
  BYTE2(v82[0]) = (v69 | (v70 << 16)) >> 16;
  LOWORD(v82[0]) = v69;
  v81[0] = 1;
  sub_1DD501590();
  OUTLINED_FUNCTION_14_31();
  sub_1DD640C08();
  v82[0] = v33;
  v82[1] = v34;
  v82[2] = v35;
  v81[0] = 2;
  sub_1DD5015E4();

  OUTLINED_FUNCTION_14_31();
  sub_1DD640C08();

  v82[0] = v63;
  v82[1] = v64;
  v82[2] = v65;
  v81[0] = 3;
  sub_1DD501638();

  OUTLINED_FUNCTION_14_31();
  sub_1DD640C08();

  v82[0] = v60;
  v82[1] = v61;
  v82[2] = v62;
  v81[0] = 4;
  sub_1DD50168C();

  OUTLINED_FUNCTION_14_31();
  sub_1DD640C08();

  v82[0] = v56;
  v82[1] = v57;
  v82[2] = v58;
  v82[3] = v59;
  v81[0] = 5;
  sub_1DD4FDA84(v56, v57);
  sub_1DD5016E0();
  OUTLINED_FUNCTION_14_31();
  sub_1DD640C08();
  OUTLINED_FUNCTION_44_13();
  memcpy(v82, v83, 0x106uLL);
  v90 = 6;
  sub_1DD4FDD00(v83, v81, &qword_1ECCDB838, &qword_1DD6570C0);
  sub_1DD501734();
  sub_1DD640C08();
  memcpy(v81, v82, 0x106uLL);
  sub_1DD3ADFD0(v81, &qword_1ECCDB838, &qword_1DD6570C0);
  v80[0] = 7;
  sub_1DD640BC8();
  v80[0] = v53;
  v79[0] = 8;
  sub_1DD501788();
  sub_1DD640C08();
  memcpy(v80, v84, sizeof(v80));
  v89 = 9;
  sub_1DD4FDD00(v84, v79, &qword_1ECCDB840, &qword_1DD642FC8);
  sub_1DD5017DC();
  sub_1DD640C08();
  memcpy(v79, v80, 0x61uLL);
  sub_1DD3ADFD0(v79, &qword_1ECCDB840, &qword_1DD642FC8);
  memcpy(v78, __dst, sizeof(v78));
  v88 = 10;
  sub_1DD4FDD00(__dst, v77, &qword_1ECCDB848, &qword_1DD642FD0);
  sub_1DD501830();
  sub_1DD640C08();
  memcpy(v77, v78, sizeof(v77));
  sub_1DD3ADFD0(v77, &qword_1ECCDB848, &qword_1DD642FD0);
  LOWORD(v74) = v52;
  v87 = 11;
  sub_1DD501884();
  OUTLINED_FUNCTION_12_30();
  OUTLINED_FUNCTION_25_14();
  sub_1DD640C08();
  LOWORD(v74) = v51;
  v87 = 12;
  sub_1DD5018D8();
  OUTLINED_FUNCTION_12_30();
  OUTLINED_FUNCTION_25_14();
  sub_1DD640C08();
  v74 = v48;
  v75 = v50;
  LOBYTE(v76) = v49;
  v87 = 13;
  v36 = sub_1DD50192C();

  OUTLINED_FUNCTION_12_30();
  OUTLINED_FUNCTION_25_14();
  sub_1DD640C08();
  if (v36)
  {
    goto LABEL_4;
  }

  LOBYTE(v74) = 14;
  OUTLINED_FUNCTION_25_14();
  sub_1DD640BC8();
  v74 = v43;
  v75 = v45;
  v76 = v44;
  v87 = 15;
  v37 = sub_1DD501980();

  OUTLINED_FUNCTION_12_30();
  OUTLINED_FUNCTION_25_14();
  sub_1DD640C08();
  if (v37)
  {
LABEL_4:
  }

  else
  {

    LOBYTE(v74) = 16;
    OUTLINED_FUNCTION_25_14();
    sub_1DD640BC8();
    LOBYTE(v74) = v39;
    v87 = 17;
    sub_1DD5019D4();
    OUTLINED_FUNCTION_12_30();
    OUTLINED_FUNCTION_25_14();
    sub_1DD640C08();
    LOBYTE(v74) = v40;
    v87 = 18;
    sub_1DD501A28();
    OUTLINED_FUNCTION_12_30();
    OUTLINED_FUNCTION_25_14();
    sub_1DD640C08();
    v74 = v38;
    v75 = v72;
    v87 = 19;
    sub_1DD501A7C(v38, v72);
    sub_1DD47756C();
    OUTLINED_FUNCTION_12_30();
    OUTLINED_FUNCTION_25_14();
    sub_1DD640C08();
    sub_1DD3AD77C(v74, v75);
  }

  return (*(v73 + 8))(v30, v2);
}

uint64_t Location.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE170, &qword_1DD6561D0);
  v7 = OUTLINED_FUNCTION_32_15(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v81 - v12;
  sub_1DD3AD724(v218);
  memcpy(v217, v218, sizeof(v217));
  v14 = a1[3];
  v15 = a1[4];
  v139 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1DD5014E8();
  sub_1DD640ED8();
  if (!v2)
  {
    LOBYTE(v144[0]) = 0;
    sub_1DD501AC0();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v92 = v181;
    v91 = v182 | (BYTE2(v182) << 16);
    LOBYTE(v144[0]) = 1;
    sub_1DD501B14();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v90 = v181 | (BYTE2(v181) << 16);
    LOBYTE(v144[0]) = 2;
    sub_1DD501B68();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v89 = v181;
    v23 = v182;
    v24 = v183;

    LOBYTE(v144[0]) = 3;
    sub_1DD501BBC();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v140 = v23;
    v141 = v24;
    v87 = a2;
    v25 = v181;
    v26 = v182;
    v88 = v183;

    LOBYTE(v144[0]) = 4;
    sub_1DD501C10();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v131 = v181;
    v132 = v182;
    v27 = v183;

    LOBYTE(v144[0]) = 5;
    sub_1DD501C64();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v134 = v27;
    v120 = v181;
    v122 = v182;
    v123 = v183;
    v126 = v184;
    OUTLINED_FUNCTION_43_13();
    v179[263] = 6;
    sub_1DD501CB8();
    OUTLINED_FUNCTION_9_39();
    sub_1DD640B18();
    memcpy(v178, v180, sizeof(v178));
    memcpy(v179, v217, 0x106uLL);
    sub_1DD3ADFD0(v179, &qword_1ECCDB838, &qword_1DD6570C0);
    memcpy(v217, v178, sizeof(v217));
    OUTLINED_FUNCTION_20_24(7);
    v110 = sub_1DD640AD8();
    v112 = v28;
    v85 = v25;
    v86 = v26;
    LOBYTE(v144[0]) = 8;
    sub_1DD501D0C();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v219 = 0;
    v107 = v181;
    v164 = 9;
    sub_1DD501D60();
    OUTLINED_FUNCTION_9_39();
    v29 = v219;
    sub_1DD640B18();
    v219 = v29;
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_7_2();
      v31(v30);
      OUTLINED_FUNCTION_1_75();
      v113 = 0;
      v111 = 0;
      OUTLINED_FUNCTION_2_65();
      OUTLINED_FUNCTION_6_50();
      v97 = 1;
LABEL_8:
      v96 = 1;
LABEL_9:
      v93 = 2;
LABEL_10:
      OUTLINED_FUNCTION_19_25();
      v15 = v88;
      v17 = v89;
      v14 = v85;
      a2 = v86;
      goto LABEL_4;
    }

    v121 = v165;
    v97 = v166;
    v128 = v168;
    v129 = v169;
    v130 = v170;
    v133 = v171;
    v135 = v172;
    v136 = v173;
    v137 = v174;
    v138 = v175;
    v124 = v167;
    v125 = v176;
    v127 = v177;
    v143 = xmmword_1DD642F70;
    v162[0] = xmmword_1DD642F70;
    memset(&v162[1], 0, 80);
    v163 = 0;
    sub_1DD3ADFD0(v162, &qword_1ECCDB840, &qword_1DD642FC8);
    v150 = 10;
    sub_1DD501DB4();
    OUTLINED_FUNCTION_9_39();
    v32 = v219;
    sub_1DD640B18();
    v219 = v32;
    if (v32)
    {
      v33 = OUTLINED_FUNCTION_7_2();
      v34(v33);
      v118 = 0;
      v119 = 0;
      v116 = 0;
      v117 = 0;
      v114 = 0;
      v115 = 0;
      v113 = 0;
      v111 = 0;
      OUTLINED_FUNCTION_2_65();
      OUTLINED_FUNCTION_6_50();
      goto LABEL_8;
    }

    v96 = v152;
    v118 = v153;
    v119 = v151;
    v116 = v155;
    v117 = v154;
    v114 = v157;
    v115 = v156;
    v113 = v158;
    v111 = v159;
    v108 = v161;
    v109 = v160;
    v148[0] = v143;
    memset(&v148[1], 0, 64);
    v149 = 0;
    sub_1DD3ADFD0(v148, &qword_1ECCDB848, &qword_1DD642FD0);
    LOBYTE(v144[0]) = 11;
    sub_1DD501E08();
    OUTLINED_FUNCTION_5_55();
    v35 = v219;
    sub_1DD640B18();
    v219 = v35;
    if (v35)
    {
      v36 = OUTLINED_FUNCTION_7_2();
      v37(v36);
      OUTLINED_FUNCTION_4_51();
      v98 = 1024;
LABEL_17:
      v94 = 3;
      v95 = 2;
      goto LABEL_9;
    }

    v98 = v181;
    LOBYTE(v144[0]) = 12;
    sub_1DD501E5C();
    OUTLINED_FUNCTION_5_55();
    v38 = v219;
    sub_1DD640B18();
    v219 = v38;
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_7_2();
      v40(v39);
      OUTLINED_FUNCTION_4_51();
      goto LABEL_17;
    }

    v93 = v181;
    LOBYTE(v144[0]) = 13;
    sub_1DD501EB0();
    OUTLINED_FUNCTION_5_55();
    v41 = v219;
    sub_1DD640B18();
    v219 = v41;
    if (v41)
    {
      v42 = OUTLINED_FUNCTION_7_2();
      v43(v42);
      OUTLINED_FUNCTION_4_51();
    }

    else
    {
      v99 = v181;
      v101 = v182;
      v103 = v183;

      OUTLINED_FUNCTION_20_24(14);
      v44 = v219;
      v142 = sub_1DD640AD8();
      *&v143 = v45;
      v219 = v44;
      if (v44)
      {
        v46 = OUTLINED_FUNCTION_7_2();
        v47(v46);
        OUTLINED_FUNCTION_40_8();
        v142 = 0;
        *&v143 = 0;
      }

      else
      {
        LOBYTE(v144[0]) = 15;
        sub_1DD501F04();
        OUTLINED_FUNCTION_5_55();
        v48 = v219;
        sub_1DD640B18();
        v219 = v48;
        if (v48)
        {
          v49 = OUTLINED_FUNCTION_7_2();
          v50(v49);
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v100 = v181;
          v102 = v182;
          v104 = v183;

          OUTLINED_FUNCTION_20_24(16);
          v51 = v219;
          v105 = sub_1DD640AD8();
          v106 = v52;
          v219 = v51;
          if (v51)
          {
            v53 = OUTLINED_FUNCTION_7_2();
            v54(v53);
            v105 = 0;
            v106 = 0;
          }

          else
          {
            LOBYTE(v144[0]) = 17;
            sub_1DD501F58();
            OUTLINED_FUNCTION_5_55();
            v55 = v219;
            sub_1DD640B18();
            v219 = v55;
            if (!v55)
            {
              v94 = v181;
              LOBYTE(v144[0]) = 18;
              sub_1DD501FAC();
              OUTLINED_FUNCTION_5_55();
              v58 = v219;
              sub_1DD640B18();
              v219 = v58;
              if (!v58)
              {
                v95 = v181;
                v145 = 19;
                sub_1DD477290();
                OUTLINED_FUNCTION_9_39();
                v61 = v219;
                sub_1DD640B18();
                v219 = v61;
                if (!v61)
                {
                  v64 = OUTLINED_FUNCTION_7_2();
                  v65(v64);
                  v83 = v147;
                  v84 = v146;
                  sub_1DD3AD77C(0, 0xF000000000000000);
                  v144[0] = v92;
                  v82 = HIWORD(v91);
                  BYTE2(v144[1]) = BYTE2(v91);
                  LOWORD(v144[1]) = v91;
                  v81 = HIWORD(v90);
                  BYTE5(v144[1]) = BYTE2(v90);
                  *(&v144[1] + 3) = v90;
                  v144[2] = v89;
                  v144[3] = v140;
                  v144[4] = v141;
                  v144[5] = v85;
                  v144[6] = v86;
                  v144[7] = v88;
                  v144[8] = v131;
                  v144[9] = v132;
                  v144[10] = v134;
                  v144[11] = v120;
                  v144[12] = v122;
                  v144[13] = v123;
                  v144[14] = v126;
                  memcpy(&v144[15], v178, 0x106uLL);
                  *(&v144[50] + 1) = v216[0];
                  *(&v144[63] + 1) = v215[0];
                  *(&v144[78] + 1) = *v214;
                  *(&v144[83] + 2) = v212;
                  *(&v144[86] + 2) = v210;
                  HIDWORD(v144[50]) = *(v216 + 3);
                  HIDWORD(v144[63]) = *(v215 + 3);
                  HIDWORD(v144[78]) = *&v214[3];
                  HIWORD(v144[83]) = v213;
                  HIWORD(v144[86]) = v211;
                  v144[48] = v110;
                  v144[49] = v112;
                  LOBYTE(v144[50]) = v107;
                  v144[51] = v121;
                  v144[52] = v97;
                  v144[53] = v124;
                  v66 = v128;
                  v67 = v129;
                  v144[54] = v128;
                  v144[55] = v129;
                  v68 = v130;
                  v144[56] = v130;
                  v69 = v133;
                  v144[57] = v133;
                  v71 = v135;
                  v70 = v136;
                  v144[58] = v135;
                  v144[59] = v136;
                  v73 = v137;
                  v72 = v138;
                  v144[60] = v137;
                  v144[61] = v138;
                  v144[62] = v125;
                  LOBYTE(v144[63]) = v127;
                  v144[64] = v119;
                  v144[65] = v96;
                  v144[66] = v118;
                  v144[67] = v117;
                  v144[68] = v116;
                  v144[69] = v115;
                  v144[70] = v114;
                  v144[71] = v113;
                  v144[72] = v111;
                  v144[73] = v109;
                  v144[74] = v108;
                  LOWORD(v144[75]) = v98;
                  WORD1(v144[75]) = v93;
                  v144[76] = v99;
                  v144[77] = v101;
                  LOBYTE(v144[78]) = v103;
                  v144[79] = v142;
                  v144[80] = v143;
                  v144[81] = v100;
                  v144[82] = v102;
                  LOWORD(v144[83]) = v104;
                  v144[84] = v105;
                  v144[85] = v106;
                  LOBYTE(v144[86]) = v94;
                  BYTE1(v144[86]) = v95;
                  v144[87] = v84;
                  v144[88] = v83;
                  memcpy(v87, v144, 0x2C8uLL);
                  sub_1DD472DF8(v144, &v181);
                  __swift_destroy_boxed_opaque_existential_1(v139);
                  v181 = v92;
                  BYTE2(v182) = v82;
                  LOWORD(v182) = v91;
                  BYTE5(v182) = v81;
                  *(&v182 + 3) = v90;
                  v183 = v89;
                  v184 = v140;
                  v185 = v141;
                  v186 = v85;
                  v187 = v86;
                  v188 = v88;
                  OUTLINED_FUNCTION_18_27();
                  v189 = v126;
                  memcpy(v190, v217, sizeof(v190));
                  OUTLINED_FUNCTION_17_29();
                  v192 = v124;
                  v193 = v66;
                  v194 = v67;
                  v195 = v68;
                  v196 = v69;
                  v197 = v71;
                  v198 = v70;
                  v199 = v73;
                  v200 = v72;
                  v201 = v125;
                  OUTLINED_FUNCTION_33_10(v191);
                  v202 = v127;
                  OUTLINED_FUNCTION_13_32((v74 + 505));
                  *(v75 + 625) = *(v76 + 7);
                  *&v204[3] = *(v76 + 10);
                  v205 = v142;
                  OUTLINED_FUNCTION_28_10(v143);
                  v79 = *v78;
                  OUTLINED_FUNCTION_21_22((v77 + 666));
                  OUTLINED_FUNCTION_42_10((v80 + 690));
                  v21 = v83;
                  v208 = v84;
                  goto LABEL_5;
                }

                v62 = OUTLINED_FUNCTION_7_2();
                v63(v62);
                goto LABEL_10;
              }

              v59 = OUTLINED_FUNCTION_7_2();
              v60(v59);
              goto LABEL_29;
            }

            v56 = OUTLINED_FUNCTION_7_2();
            v57(v56);
          }
        }
      }
    }

    v94 = 3;
LABEL_29:
    v95 = 2;
    goto LABEL_10;
  }

  v219 = v2;
  OUTLINED_FUNCTION_0_100();
  OUTLINED_FUNCTION_8_43();
  v140 = 0;
  v141 = 0;
  v17 = 0;
  v9 = 0;
  v3 = 4;
  OUTLINED_FUNCTION_3_55();
  LODWORD(v13) = 4;
  v16 = &v181;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v139);
  v181 = v9;
  BYTE2(v182) = BYTE2(v13);
  LOWORD(v182) = v13;
  BYTE5(v182) = BYTE2(v3);
  *(v16 + 11) = v3;
  v183 = v17;
  v184 = v140;
  v185 = v141;
  v186 = v14;
  v187 = a2;
  v188 = v15;
  OUTLINED_FUNCTION_18_27();
  v189 = v126;
  memcpy(v190, v217, sizeof(v190));
  OUTLINED_FUNCTION_17_29();
  v192 = v124;
  v193 = v128;
  v194 = v129;
  v195 = v130;
  v196 = v133;
  v197 = v135;
  v198 = v136;
  v199 = v137;
  OUTLINED_FUNCTION_33_10(v191);
  v200 = v138;
  v201 = v125;
  v202 = v127;
  OUTLINED_FUNCTION_13_32(v203);
  *v204 = *(v18 + 7);
  *&v204[3] = *(v18 + 10);
  v205 = v142;
  OUTLINED_FUNCTION_28_10(v143);
  v20 = *v19;
  OUTLINED_FUNCTION_21_22(v206);
  OUTLINED_FUNCTION_42_10(&v207);
  v208 = 0;
  v21 = 0xF000000000000000;
LABEL_5:
  v209 = v21;
  return sub_1DD501A90(&v181);
}

unint64_t sub_1DD5014E8()
{
  result = qword_1ECCDE0E8;
  if (!qword_1ECCDE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE0E8);
  }

  return result;
}

unint64_t sub_1DD50153C()
{
  result = qword_1ECCDE0F0;
  if (!qword_1ECCDE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE0F0);
  }

  return result;
}

unint64_t sub_1DD501590()
{
  result = qword_1ECCDE0F8;
  if (!qword_1ECCDE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE0F8);
  }

  return result;
}

unint64_t sub_1DD5015E4()
{
  result = qword_1ECCDE100;
  if (!qword_1ECCDE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE100);
  }

  return result;
}

unint64_t sub_1DD501638()
{
  result = qword_1ECCDE108;
  if (!qword_1ECCDE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE108);
  }

  return result;
}

unint64_t sub_1DD50168C()
{
  result = qword_1ECCDE110;
  if (!qword_1ECCDE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE110);
  }

  return result;
}

unint64_t sub_1DD5016E0()
{
  result = qword_1ECCDE118;
  if (!qword_1ECCDE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE118);
  }

  return result;
}

unint64_t sub_1DD501734()
{
  result = qword_1ECCDE120;
  if (!qword_1ECCDE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE120);
  }

  return result;
}

unint64_t sub_1DD501788()
{
  result = qword_1ECCDE128;
  if (!qword_1ECCDE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE128);
  }

  return result;
}

unint64_t sub_1DD5017DC()
{
  result = qword_1ECCDE130;
  if (!qword_1ECCDE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE130);
  }

  return result;
}

unint64_t sub_1DD501830()
{
  result = qword_1ECCDE138;
  if (!qword_1ECCDE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE138);
  }

  return result;
}

unint64_t sub_1DD501884()
{
  result = qword_1ECCDE140;
  if (!qword_1ECCDE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE140);
  }

  return result;
}

unint64_t sub_1DD5018D8()
{
  result = qword_1ECCDE148;
  if (!qword_1ECCDE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE148);
  }

  return result;
}

unint64_t sub_1DD50192C()
{
  result = qword_1ECCDE150;
  if (!qword_1ECCDE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE150);
  }

  return result;
}

unint64_t sub_1DD501980()
{
  result = qword_1ECCDE158;
  if (!qword_1ECCDE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE158);
  }

  return result;
}

unint64_t sub_1DD5019D4()
{
  result = qword_1ECCDE160;
  if (!qword_1ECCDE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE160);
  }

  return result;
}

unint64_t sub_1DD501A28()
{
  result = qword_1ECCDE168;
  if (!qword_1ECCDE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE168);
  }

  return result;
}

uint64_t sub_1DD501A7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DD3D01B4(a1, a2);
  }

  return a1;
}

unint64_t sub_1DD501AC0()
{
  result = qword_1ECCDE178;
  if (!qword_1ECCDE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE178);
  }

  return result;
}

unint64_t sub_1DD501B14()
{
  result = qword_1ECCDE180;
  if (!qword_1ECCDE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE180);
  }

  return result;
}

unint64_t sub_1DD501B68()
{
  result = qword_1ECCDE188;
  if (!qword_1ECCDE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE188);
  }

  return result;
}

unint64_t sub_1DD501BBC()
{
  result = qword_1ECCDE190;
  if (!qword_1ECCDE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE190);
  }

  return result;
}

unint64_t sub_1DD501C10()
{
  result = qword_1ECCDE198;
  if (!qword_1ECCDE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE198);
  }

  return result;
}

unint64_t sub_1DD501C64()
{
  result = qword_1ECCDE1A0;
  if (!qword_1ECCDE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE1A0);
  }

  return result;
}

unint64_t sub_1DD501CB8()
{
  result = qword_1ECCDE1A8;
  if (!qword_1ECCDE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE1A8);
  }

  return result;
}

unint64_t sub_1DD501D0C()
{
  result = qword_1ECCDE1B0;
  if (!qword_1ECCDE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE1B0);
  }

  return result;
}

unint64_t sub_1DD501D60()
{
  result = qword_1ECCDE1B8;
  if (!qword_1ECCDE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE1B8);
  }

  return result;
}

unint64_t sub_1DD501DB4()
{
  result = qword_1ECCDE1C0;
  if (!qword_1ECCDE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE1C0);
  }

  return result;
}

unint64_t sub_1DD501E08()
{
  result = qword_1ECCDE1C8;
  if (!qword_1ECCDE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE1C8);
  }

  return result;
}

unint64_t sub_1DD501E5C()
{
  result = qword_1ECCDE1D0;
  if (!qword_1ECCDE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE1D0);
  }

  return result;
}

unint64_t sub_1DD501EB0()
{
  result = qword_1ECCDE1D8;
  if (!qword_1ECCDE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE1D8);
  }

  return result;
}

unint64_t sub_1DD501F04()
{
  result = qword_1ECCDE1E0;
  if (!qword_1ECCDE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE1E0);
  }

  return result;
}

unint64_t sub_1DD501F58()
{
  result = qword_1ECCDE1E8;
  if (!qword_1ECCDE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE1E8);
  }

  return result;
}

unint64_t sub_1DD501FAC()
{
  result = qword_1ECCDE1F0;
  if (!qword_1ECCDE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE1F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference8CentroidVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD502048(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 712))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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