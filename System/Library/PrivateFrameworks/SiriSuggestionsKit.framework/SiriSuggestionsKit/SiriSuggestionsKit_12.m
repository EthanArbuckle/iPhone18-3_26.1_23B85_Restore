uint64_t sub_1BF9976D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    sub_1BF9B56D8();
    OUTLINED_FUNCTION_59_9();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF997748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9976D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF997774(uint64_t a1)
{
  v2 = sub_1BF8C34DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9977B0(uint64_t a1)
{
  v2 = sub_1BF8C34DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void NSCodingAdaptor.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA4D0, &qword_1BF9C77A8);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27_11();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_32_12(v2);
  sub_1BF998AF8();
  OUTLINED_FUNCTION_33_11();
  if (!v0)
  {
    v11 = sub_1BF997910();
    v12 = OUTLINED_FUNCTION_5_17();
    v13(v12);
    *v4 = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF997910()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA4D0, &qword_1BF9C77A8);
  sub_1BF9023EC();
  result = sub_1BF9B5558();
  if (!v0)
  {
    v3 = v11;
    v2 = v12;
    v4 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    sub_1BF8F9A50(v11, v12);
    v5 = sub_1BF998394(v11, v12);
    [v5 setRequiresSecureCoding_];
    v6 = *MEMORY[0x1E696A508];
    sub_1BF9B4AA8();
    sub_1BF9B50A8();

    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D8, &unk_1BF9BF240);
      if (swift_dynamicCast())
      {

        sub_1BF8F9F3C(v11, v12);
        return v14;
      }
    }

    else
    {
      sub_1BF8E8118(&v11, &qword_1EBDE9208, &unk_1BF9C2A50);
    }

    type metadata accessor for CodingErrors();
    sub_1BF8C3530(qword_1EDBF36D8, type metadata accessor for CodingErrors);
    swift_allocError();
    v8 = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
    v10 = *(v9 + 48);
    *(v8 + 24) = &type metadata for NSCodingAdaptor.CodingKeys;
    *(v8 + 32) = sub_1BF998AF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D8, &unk_1BF9BF240);
    sub_1BF9B4638();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    swift_willThrow();

    return sub_1BF8F9F3C(v3, v2);
  }

  return result;
}

uint64_t sub_1BF997B60(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:0 error:v9];
  v2 = v9[0];
  if (v1)
  {
    v3 = sub_1BF9B4448();
    v5 = v4;

    v9[0] = v3;
    v9[1] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA4D8, &unk_1BF9C77B0);
    sub_1BF8FC3CC();
    sub_1BF9B5638();
    result = sub_1BF8F9F3C(v3, v5);
  }

  else
  {
    v7 = v2;
    sub_1BF9B4348();

    result = swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF997C94(uint64_t a1)
{
  v2 = sub_1BF998AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF997CD0(uint64_t a1)
{
  v2 = sub_1BF998AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TransportWrapper.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A38, &qword_1BF9B8530);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_39_2();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_32_12(v2);
  sub_1BF8BF584();
  OUTLINED_FUNCTION_33_11();
  if (!v0)
  {
    sub_1BF8D8C18();
    v11 = v19;
    v16 = v18;
    v12 = v18;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    *(v4 + 24) = v16;
    *(v4 + 40) = v11;
    __swift_allocate_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_11(v12);
    (*(v13 + 16))();
    v14 = OUTLINED_FUNCTION_22_11();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF997ED0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1BF9B56D8();
    OUTLINED_FUNCTION_59_9();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF997F40(uint64_t a1)
{
  v2 = sub_1BF8BF584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF997F7C(uint64_t a1)
{
  v2 = sub_1BF8BF584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableSendableDictionary.dictionary.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void CodableSendableDictionary.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95E8, &unk_1BF9BEFD0);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27_11();
  v10 = v3[3];
  v11 = v3[4];
  OUTLINED_FUNCTION_32_12(v3);
  sub_1BF998B4C();
  OUTLINED_FUNCTION_33_11();
  if (!v0)
  {
    v12 = sub_1BF915750(v1);
    v13 = OUTLINED_FUNCTION_5_17();
    v14(v13);
    *v5 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

void CodableSendableDictionary.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95E0, &qword_1BF9C77D0);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27_11();
  v10 = *v0;
  v11 = v3[3];
  v12 = v3[4];
  OUTLINED_FUNCTION_32_12(v3);
  sub_1BF998B4C();
  OUTLINED_FUNCTION_74_2();
  sub_1BF91B788(v10);
  sub_1BF91619C();
  (*(v6 + 8))(v1, v4);

  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF99822C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972)
  {

    v4 = 0;
  }

  else
  {
    sub_1BF9B56D8();
    OUTLINED_FUNCTION_59_9();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF9982C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF99822C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF9982EC(uint64_t a1)
{
  v2 = sub_1BF998B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF998328(uint64_t a1)
{
  v2 = sub_1BF998B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1BF998394(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BF9B4428();
  v12[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_1BF9B4348();

    swift_willThrow();
  }

  sub_1BF8F9F3C(a1, a2);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1BF998474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1BF949C88(a1, a2);
}

uint64_t sub_1BF998494(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF9984F8(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *sub_1BF99854C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_1BF9B4C48();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BF95D868();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
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
      result = sub_1BF9B5318();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_49_6();
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
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_56_6();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
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

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_49_6();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_56_6();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_8_15();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_56_6();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_8_15();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_56_6();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
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

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_8_15();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_56_6();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1BF998A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1BF90CD8C(a1, a2);
}

unint64_t sub_1BF998A84()
{
  result = qword_1EDBF4B30;
  if (!qword_1EDBF4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B30);
  }

  return result;
}

uint64_t sub_1BF998AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1BF997298(a1, a2);
}

unint64_t sub_1BF998AF8()
{
  result = qword_1EDBF4C38;
  if (!qword_1EDBF4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4C38);
  }

  return result;
}

unint64_t sub_1BF998B4C()
{
  result = qword_1EDBF4210;
  if (!qword_1EDBF4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4210);
  }

  return result;
}

uint64_t sub_1BF998BD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1BF998C10(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1BF998C94()
{
  sub_1BF998CEC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1BF998CEC()
{
  if (!qword_1EDBF4B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDEA4E0, &qword_1BF9C7A88);
    sub_1BF9B4668();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBF4B18);
    }
  }
}

_BYTE *sub_1BF998D9C(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF998E48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1BF998E88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BF998EF0()
{
  result = qword_1EBDEA4E8;
  if (!qword_1EBDEA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA4E8);
  }

  return result;
}

unint64_t sub_1BF998F48()
{
  result = qword_1EBDEA4F0;
  if (!qword_1EBDEA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA4F0);
  }

  return result;
}

unint64_t sub_1BF998FA0()
{
  result = qword_1EBDEA4F8;
  if (!qword_1EBDEA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA4F8);
  }

  return result;
}

unint64_t sub_1BF998FF8()
{
  result = qword_1EBDEA500;
  if (!qword_1EBDEA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA500);
  }

  return result;
}

unint64_t sub_1BF999050()
{
  result = qword_1EBDEA508;
  if (!qword_1EBDEA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA508);
  }

  return result;
}

unint64_t sub_1BF9990A8()
{
  result = qword_1EBDEA510;
  if (!qword_1EBDEA510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA510);
  }

  return result;
}

unint64_t sub_1BF999100()
{
  result = qword_1EDBF4200;
  if (!qword_1EDBF4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4200);
  }

  return result;
}

unint64_t sub_1BF999158()
{
  result = qword_1EDBF4208;
  if (!qword_1EDBF4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4208);
  }

  return result;
}

unint64_t sub_1BF9991B0()
{
  result = qword_1EDBF50A0;
  if (!qword_1EDBF50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF50A0);
  }

  return result;
}

unint64_t sub_1BF999208()
{
  result = qword_1EDBF50A8;
  if (!qword_1EDBF50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF50A8);
  }

  return result;
}

unint64_t sub_1BF999260()
{
  result = qword_1EDBF4C28;
  if (!qword_1EDBF4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4C28);
  }

  return result;
}

unint64_t sub_1BF9992B8()
{
  result = qword_1EDBF4C30;
  if (!qword_1EDBF4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4C30);
  }

  return result;
}

unint64_t sub_1BF999310()
{
  result = qword_1EDBF5648;
  if (!qword_1EDBF5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5648);
  }

  return result;
}

unint64_t sub_1BF999368()
{
  result = qword_1EDBF5650;
  if (!qword_1EDBF5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5650);
  }

  return result;
}

unint64_t sub_1BF9993C0()
{
  result = qword_1EDBF5728;
  if (!qword_1EDBF5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5728);
  }

  return result;
}

unint64_t sub_1BF999418()
{
  result = qword_1EDBF5620;
  if (!qword_1EDBF5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5620);
  }

  return result;
}

unint64_t sub_1BF999470()
{
  result = qword_1EDBF50E0;
  if (!qword_1EDBF50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF50E0);
  }

  return result;
}

unint64_t sub_1BF9994C8()
{
  result = qword_1EDBF50E8[0];
  if (!qword_1EDBF50E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF50E8);
  }

  return result;
}

void OUTLINED_FUNCTION_29_8()
{

  sub_1BF8E2E08();
}

void OUTLINED_FUNCTION_67_5()
{
  v1 = *(v0 - 272);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
}

unint64_t OUTLINED_FUNCTION_72_4(double a1, double a2, __n128 a3)
{
  *(v4 - 208) = a3;
  sub_1BF8C2C9C((v3 | 8), v4 - 176);
  *(v4 - 184) = *(v4 - 208);

  return sub_1BF998A84();
}

uint64_t OUTLINED_FUNCTION_73_3()
{
  v3 = *(v1 - 72);

  return sub_1BF9984F8(v0, v3);
}

uint64_t sub_1BF9996D8()
{
  OUTLINED_FUNCTION_37_1();
  sub_1BF9B4B48();
  return sub_1BF9B57E8();
}

uint64_t sub_1BF9997EC(uint64_t a1, void (*a2)(char *))
{
  v3 = OUTLINED_FUNCTION_37_1();
  v11 = OUTLINED_FUNCTION_12_19(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  a2(v11);
  return sub_1BF9B57E8();
}

BOOL sub_1BF999830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return (static SuggestionsOSVersion.< infix(_:_:)(v5, v6) & 1) == 0;
}

uint64_t sub_1BF999868()
{
  v0 = ActionIdentifier.description.getter();
  v2 = v1;
  if (v0 == ActionIdentifier.description.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_10_20();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t static SuggestionsOSVersion.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v8 = *a1;
  OUTLINED_FUNCTION_5_19();
  sub_1BF9B5668();
  OUTLINED_FUNCTION_15_22();
  OUTLINED_FUNCTION_5_19();
  v5 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v5);

  OUTLINED_FUNCTION_5_19();
  sub_1BF9B5668();
  OUTLINED_FUNCTION_15_22();
  OUTLINED_FUNCTION_5_19();
  v6 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v6);

  return 0;
}

uint64_t sub_1BF9999FC()
{
  v0 = ActionIdentifier.description.getter();
  v2 = v1;
  if (v0 == ActionIdentifier.description.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_10_20();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

BOOL sub_1BF999A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return (static SuggestionsOSVersion.< infix(_:_:)(v6, v5) & 1) == 0;
}

uint64_t sub_1BF999ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return static SuggestionsOSVersion.< infix(_:_:)(v5, v6) & 1;
}

uint64_t sub_1BF999AF0()
{
  v0 = ActionIdentifier.description.getter();
  v2 = v1;
  if (v0 == ActionIdentifier.description.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1BF9B56D8();
  }

  return v5 & 1;
}

SiriSuggestionsKit::SuggestionsOSInfo __swiftcall SuggestionsOSInfo.init(osVersion:)(SiriSuggestionsKit::SuggestionsOSVersion osVersion)
{
  *v1 = 0;
  OUTLINED_FUNCTION_2_29(v1, *osVersion.majorVersion);
  result.osVersion.minorVersion = v4;
  result.osVersion.majorVersion = v3;
  result.osType = v2;
  return result;
}

SiriSuggestionsKit::SuggestionsOSVersion __swiftcall SuggestionsOSVersion.init(majorVersion:minorVersion:)(Swift::Int majorVersion, Swift::Int minorVersion)
{
  *v2 = majorVersion;
  v2[1] = minorVersion;
  result.minorVersion = minorVersion;
  result.majorVersion = majorVersion;
  return result;
}

__n128 SuggestionsOSInfo.osVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

uint64_t SuggestionsOSInfo.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0x3A65707954736F7BLL, 0xE900000000000020);
  sub_1BF9B5378();
  MEMORY[0x1BFB5DE90](0x73726556736F202CLL, 0xED0000203A6E6F69);
  v4 = SuggestionsOSVersion.description.getter();
  MEMORY[0x1BFB5DE90](v4);

  MEMORY[0x1BFB5DE90](125, 0xE100000000000000);
  return 0;
}

BOOL static SuggestionsOSInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_1BF8CA284(*a1, *a2);
  v8 = v2 == v4 && v3 == v5;
  return (v6 & 1) != 0 && v8;
}

uint64_t sub_1BF999D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954736FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF999DEC(char a1)
{
  if (a1)
  {
    return 0x6F6973726556736FLL;
  }

  else
  {
    return 0x65707954736FLL;
  }
}

uint64_t sub_1BF999E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF999D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF999E6C(uint64_t a1)
{
  v2 = sub_1BF99AC94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF999EA8(uint64_t a1)
{
  v2 = sub_1BF99AC94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionsOSInfo.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA5C0, &qword_1BF9C8250);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v12 = *v0;
  v13 = *(v0 + 1);
  v15 = *(v0 + 2);
  v16 = v13;
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF99AC94();
  sub_1BF9B5898();
  LOBYTE(v17) = v12;
  sub_1BF99ACE8();
  OUTLINED_FUNCTION_4_11();
  sub_1BF9B5638();
  if (!v1)
  {
    v17 = v16;
    v18 = v15;
    sub_1BF99AD3C();
    OUTLINED_FUNCTION_4_11();
    sub_1BF9B5638();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_37();
}

uint64_t SuggestionsOSInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1BF8CD538(a1, *v1);
  MEMORY[0x1BFB5EAC0](v2);
  return MEMORY[0x1BFB5EAC0](v3);
}

uint64_t SuggestionsOSInfo.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  v4 = OUTLINED_FUNCTION_37_1();
  v12 = OUTLINED_FUNCTION_12_19(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
  sub_1BF8CD538(v12, v13);
  v14 = OUTLINED_FUNCTION_8_16();
  MEMORY[0x1BFB5EAC0](v14);
  v15 = OUTLINED_FUNCTION_5_19();
  MEMORY[0x1BFB5EAC0](v15);
  return sub_1BF9B57E8();
}

void SuggestionsOSInfo.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA5E0, &qword_1BF9C8258);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF99AC94();
  OUTLINED_FUNCTION_9_19();
  if (!v0)
  {
    sub_1BF99AF10();
    OUTLINED_FUNCTION_7_21();
    sub_1BF99AF64();
    OUTLINED_FUNCTION_7_21();
    v10 = OUTLINED_FUNCTION_20();
    v11(v10);
    *v4 = v12;
    *(v4 + 8) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF99A260()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  v4 = sub_1BF9B57A8();
  v12 = OUTLINED_FUNCTION_12_19(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
  sub_1BF8CD538(v12, v13);
  v14 = OUTLINED_FUNCTION_8_16();
  MEMORY[0x1BFB5EAC0](v14);
  v15 = OUTLINED_FUNCTION_5_19();
  MEMORY[0x1BFB5EAC0](v15);
  return sub_1BF9B57E8();
}

__n128 sub_1BF99A56C@<Q0>(void *a1@<X0>, _BYTE *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  *a4 = *a2;
  result = *a3;
  *(a4 + 8) = *a3;
  return result;
}

uint64_t SuggestionsOSVersion.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF9B5288();

  OUTLINED_FUNCTION_8_16();
  v3 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v3);

  MEMORY[0x1BFB5DE90](0xD000000000000010, 0x80000001BF9CE2B0);
  OUTLINED_FUNCTION_8_16();
  v4 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v4);

  MEMORY[0x1BFB5DE90](125, 0xE100000000000000);
  return 0x6556726F6A616D7BLL;
}

SiriSuggestionsKit::SuggestionsOSVersion __swiftcall SuggestionsOSVersion.init(from:)(NSOperatingSystemVersion from)
{
  *v1 = from.majorVersion;
  v1[1] = from.minorVersion;
  return *&from.majorVersion;
}

uint64_t SuggestionsOSVersion.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1BFB5EAC0](*v0);
  return MEMORY[0x1BFB5EAC0](v1);
}

uint64_t sub_1BF99A71C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726556726F6A616DLL && a2 == 0xEC0000006E6F6973;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726556726F6E696DLL && a2 == 0xEC0000006E6F6973)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF99A7F0(char a1)
{
  if (a1)
  {
    return 0x726556726F6E696DLL;
  }

  else
  {
    return 0x726556726F6A616DLL;
  }
}

uint64_t sub_1BF99A828(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *v4;
  v7 = sub_1BF9B57A8();
  v15 = OUTLINED_FUNCTION_12_19(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);
  a4(v15);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF99A878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF99A71C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF99A8A0(uint64_t a1)
{
  v2 = sub_1BF99AFB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF99A8DC(uint64_t a1)
{
  v2 = sub_1BF99AFB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionsOSVersion.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA5F8, &qword_1BF9C8260);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v14 - v10;
  v12 = *v0;
  v14[1] = v0[1];
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF99AFB8();
  sub_1BF9B5898();
  OUTLINED_FUNCTION_4_11();
  sub_1BF9B5628();
  if (!v1)
  {
    OUTLINED_FUNCTION_4_11();
    sub_1BF9B5628();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_37();
}

uint64_t SuggestionsOSVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_37_1();
  v3 = OUTLINED_FUNCTION_8_16();
  MEMORY[0x1BFB5EAC0](v3);
  v4 = OUTLINED_FUNCTION_5_19();
  MEMORY[0x1BFB5EAC0](v4);
  return sub_1BF9B57E8();
}

void SuggestionsOSVersion.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA608, &qword_1BF9C8268);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF99AFB8();
  OUTLINED_FUNCTION_9_19();
  if (!v0)
  {
    v10 = sub_1BF9B5548();
    v11 = sub_1BF9B5548();
    v12 = OUTLINED_FUNCTION_20();
    v13(v12);
    *v4 = v10;
    v4[1] = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF99AC08()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  MEMORY[0x1BFB5EAC0](v2);
  return sub_1BF9B57E8();
}

unint64_t sub_1BF99AC94()
{
  result = qword_1EBDEA5C8;
  if (!qword_1EBDEA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA5C8);
  }

  return result;
}

unint64_t sub_1BF99ACE8()
{
  result = qword_1EBDEA5D0;
  if (!qword_1EBDEA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA5D0);
  }

  return result;
}

unint64_t sub_1BF99AD3C()
{
  result = qword_1EBDEA5D8;
  if (!qword_1EBDEA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA5D8);
  }

  return result;
}

SiriSuggestionsKit::SuggestionsOSType_optional __swiftcall SuggestionsOSType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SuggestionsOSType.rawValue.getter()
{
  result = 5459817;
  switch(*v0)
  {
    case 1:
      result = 0x534F63616DLL;
      break;
    case 2:
      result = 1397716596;
      break;
    case 3:
      result = 0x534F6863746177;
      break;
    case 4:
      result = 0x534F6E6F69736976;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BF99AF10()
{
  result = qword_1EBDEA5E8;
  if (!qword_1EBDEA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA5E8);
  }

  return result;
}

unint64_t sub_1BF99AF64()
{
  result = qword_1EBDEA5F0;
  if (!qword_1EBDEA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA5F0);
  }

  return result;
}

unint64_t sub_1BF99AFB8()
{
  result = qword_1EBDEA600;
  if (!qword_1EBDEA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA600);
  }

  return result;
}

unint64_t sub_1BF99B010()
{
  result = qword_1EDBF45C0;
  if (!qword_1EDBF45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF45C0);
  }

  return result;
}

unint64_t sub_1BF99B064()
{
  result = qword_1EDBF3AB8;
  if (!qword_1EDBF3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3AB8);
  }

  return result;
}

unint64_t sub_1BF99B0BC()
{
  result = qword_1EBDEA610;
  if (!qword_1EBDEA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA610);
  }

  return result;
}

uint64_t sub_1BF99B124@<X0>(uint64_t *a1@<X8>)
{
  result = SuggestionsOSType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionsOSInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && a1[24])
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 6;
      v2 = v3 - 6;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for SuggestionsOSInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionsOSInfos(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SuggestionsOSVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SuggestionsOSVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionsOSType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BF99B46C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF99B54C()
{
  result = qword_1EBDEA618;
  if (!qword_1EBDEA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA618);
  }

  return result;
}

unint64_t sub_1BF99B5A4()
{
  result = qword_1EBDEA620;
  if (!qword_1EBDEA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA620);
  }

  return result;
}

unint64_t sub_1BF99B5FC()
{
  result = qword_1EBDEA628;
  if (!qword_1EBDEA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA628);
  }

  return result;
}

unint64_t sub_1BF99B654()
{
  result = qword_1EBDEA630;
  if (!qword_1EBDEA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA630);
  }

  return result;
}

unint64_t sub_1BF99B6AC()
{
  result = qword_1EBDEA638;
  if (!qword_1EBDEA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA638);
  }

  return result;
}

unint64_t sub_1BF99B704()
{
  result = qword_1EBDEA640;
  if (!qword_1EBDEA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA640);
  }

  return result;
}

unint64_t sub_1BF99B758()
{
  result = qword_1EBDEA648;
  if (!qword_1EBDEA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA648);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return sub_1BF9B56D8();
}

void sub_1BF99B7D8()
{
  if (qword_1EDBF3510 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF3518[0];
  v1 = *(off_1EDBF3518[0] + 16);
  if (v1)
  {

    v2 = MEMORY[0x1E69E7CC0];
    v3 = 32;
    do
    {
      v4 = *(v0 + v3);
      if ((v4 & 0xFE) != 2 && (v4 >> 8) - 2 > 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = *(v2 + 16);
          sub_1BF8D0260();
        }

        v7 = *(v2 + 16);
        if (v7 >= *(v2 + 24) >> 1)
        {
          sub_1BF8D0260();
        }

        *(v2 + 16) = v7 + 1;
        *(v2 + 2 * v7 + 32) = v4;
      }

      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  off_1EDBF2FF8 = v2;
}

uint64_t static ProductConstants.siriHintsInvocations.getter()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }
}

_BYTE *storeEnumTagSinglePayload for ProductConstants(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF99BA20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D30, &qword_1BF9C2AF0);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF99C6D4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t IntentSupportingApp.applicationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IntentSupportingApp.init(applicationIdentifier:supportedIntents:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static IntentSupportingApp.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1BF9B56D8() & 1) == 0)
  {
    return 0;
  }

  return sub_1BF99BB70(v2, v3);
}

uint64_t sub_1BF99BB70(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_1BF9B57A8();

      sub_1BF9B4B48();
      v16 = sub_1BF9B57E8();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_1BF9B56D8();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t IntentSupportingApp.hash(into:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1BF9B4B48();

  return sub_1BF99C918(a1, v5);
}

uint64_t IntentSupportingApp.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  sub_1BF99C918(__src, v3);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF99BDC8()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  sub_1BF9B57A8();
  IntentSupportingApp.hash(into:)(v2);
  return sub_1BF9B57E8();
}

uint64_t IntentCache.__allocating_init(applicationRecordEnumerator:discoverer:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  IntentCache.init(applicationRecordEnumerator:discoverer:)(a1, a2);
  return v4;
}

void IntentCache.init(applicationRecordEnumerator:discoverer:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = a1[3];
  v7 = a1[4];
  v19 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  sub_1BF8D2004(a2, (v2 + 3));
  v9 = *(v8 + 16);
  if (v9)
  {
    v20 = a2;
    v21 = v5;
    v22 = v2;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1BF8D0828();
    v10 = v23;
    v11 = (v8 + 48);
    do
    {
      v12 = *(v11 - 2);
      v13 = *(v11 - 1);
      v14 = *v11;
      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      swift_bridgeObjectRetain_n();

      if (v16 >= v15 >> 1)
      {
        sub_1BF8D0828();
      }

      *(v23 + 16) = v16 + 1;
      v17 = (v23 + 40 * v16);
      v17[4] = v12;
      v17[5] = v13;
      v17[6] = v12;
      v17[7] = v13;
      v17[8] = v14;
      v11 += 3;
      --v9;
    }

    while (v9);

    v5 = v21;
    v3 = v22;
    a2 = v20;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1BF99BA20(v10);
  __swift_destroy_boxed_opaque_existential_1(a2);
  v3[2] = v18;
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_0_28();
}

uint64_t sub_1BF99C048(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1BF92BFD4();
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return a2;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void IntentCache.findIntents(forApp:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = v3[2];
  if (*(v8 + 16) && (v9 = sub_1BF8C2E64(a1, a2), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 24 * v9);
    v12 = v11[1];
    v13 = v11[2];
    *a3 = *v11;
    a3[1] = v12;
    a3[2] = v13;

    OUTLINED_FUNCTION_0_28();
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v15 = sub_1BF9B47C8();
    __swift_project_value_buffer(v15, qword_1EDBF5570);

    v16 = sub_1BF9B47A8();
    v17 = sub_1BF9B5038();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_1BF8DE810(a1, a2, &v26);
      *(v18 + 12) = 2080;
      sub_1BF8D2004((v4 + 3), v25);
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA650, &qword_1BF9C88D0);
      v20 = sub_1BF9B4B08();
      v22 = sub_1BF8DE810(v20, v21, &v26);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_1BF8B8000, v16, v17, "cache missed when looking up intents for %s, using %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5F320](v19, -1, -1);
      MEMORY[0x1BFB5F320](v18, -1, -1);
    }

    v23 = v4[6];
    v24 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v23);
    (*(v24 + 8))(a1, a2, v23, v24);
    OUTLINED_FUNCTION_0_28();
  }
}

uint64_t IntentCache.findApps(forIntent:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(v2 + 16) + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  v31 = result;
LABEL_5:
  while (v11)
  {
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (*(result + 56) + 24 * (v16 | (v14 << 6)));
    v18 = v17[2];
    if (*(v18 + 16))
    {
      v19 = v17[1];
      v32 = *v17;
      v20 = *(v18 + 40);
      sub_1BF9B57A8();
      v33 = v19;

      sub_1BF9B4B48();
      v21 = sub_1BF9B57E8();
      v22 = ~(-1 << *(v18 + 32));
      do
      {
        v23 = v21 & v22;
        if (((*(v18 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
        {

          result = v31;
          goto LABEL_5;
        }

        v24 = (*(v18 + 48) + 16 * v23);
        if (*v24 == a1 && v24[1] == a2)
        {
          break;
        }

        v26 = sub_1BF9B56D8();
        v21 = v23 + 1;
      }

      while ((v26 & 1) == 0);
      v27 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = *(v34 + 16);
        sub_1BF8D0728();
        v27 = v34;
      }

      v29 = *(v27 + 16);
      if (v29 >= *(v27 + 24) >> 1)
      {
        sub_1BF8D0728();
        v27 = v34;
      }

      *(v27 + 16) = v29 + 1;
      v34 = v27;
      v30 = (v27 + 24 * v29);
      v30[4] = v32;
      v30[5] = v33;
      v30[6] = v18;
      result = v31;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v34;
    }

    v11 = *(v7 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t IntentCache.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t IntentCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1BF99C6D4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v38 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 5)
  {
    if (v38 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v6 = *(i - 1);
    v7 = *i;
    v9 = *(i - 3);
    v8 = *(i - 2);
    v10 = *(i - 4);

    if (!v9)
    {
    }

    v40 = v4;
    v41 = v6;
    v11 = *a3;
    v13 = sub_1BF8C2E64(v10, v9);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_18;
    }

    v17 = v12;
    if (v11[3] >= v16)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA658, qword_1BF9C8AB0);
        sub_1BF9B53B8();
      }
    }

    else
    {
      sub_1BF95D030(v16, a2 & 1);
      v18 = *a3;
      v19 = sub_1BF8C2E64(v10, v9);
      if ((v17 & 1) != (v20 & 1))
      {
        goto LABEL_20;
      }

      v13 = v19;
    }

    v21 = *a3;
    if (v17)
    {
      v22 = 3 * v13;
      v23 = (v21[7] + 24 * v13);
      v25 = *v23;
      v24 = v23[1];
      v26 = v23[2];

      v28 = sub_1BF99C048(v27, v26);

      v29 = (v21[7] + 8 * v22);
      v31 = v29[1];
      v30 = v29[2];
      *v29 = v25;
      v29[1] = v24;
      v29[2] = v28;
    }

    else
    {
      v21[(v13 >> 6) + 8] |= 1 << v13;
      v32 = (v21[6] + 16 * v13);
      *v32 = v10;
      v32[1] = v9;
      v33 = (v21[7] + 24 * v13);
      *v33 = v8;
      v33[1] = v41;
      v33[2] = v7;
      v34 = v21[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_19;
      }

      v21[2] = v36;
    }

    v4 = v40 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF99C918(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1BF9B57E8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1BF9B57A8();

    sub_1BF9B4B48();
    v15 = sub_1BF9B57E8();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1BFB5EAC0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF99CA70()
{
  result = qword_1EDBF2B40;
  if (!qword_1EDBF2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF2B40);
  }

  return result;
}

uint64_t dispatch thunk of InternalFinalizer.finalise(suggestion:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1BF8E8FFC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t LNDisplayRepresentation.getDisplay(for:)()
{
  v1 = [v0 title];
  sub_1BF9B4538();
  v2 = sub_1BF9B4A98();

  v3 = [v1 localizedStringForLocaleIdentifier_];

  v4 = sub_1BF9B4AA8();
  return v4;
}

uint64_t LNValue.getDisplay(for:)()
{
  v1 = [v0 displayRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = LNDisplayRepresentation.getDisplay(for:)();

  return v3;
}

uint64_t GlobalLifeCycleContainer.gmStatusChanged(status:)()
{
  OUTLINED_FUNCTION_6();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[16] = v0;
  v5 = *(*(v2 + 8) + 8);
  OUTLINED_FUNCTION_12_4();
  v13 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v1[21] = v9;
  *v9 = v1;
  OUTLINED_FUNCTION_17_0(v9);
  v10 = OUTLINED_FUNCTION_58_8();

  return v11(v10);
}

uint64_t sub_1BF99CF54()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = v4[21];
  v6 = v4[20];
  v7 = v4[19];
  v8 = v4[18];
  v9 = *v0;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  v2[22] = v11;

  v12 = *(v7 + 24);
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_57_10();
  v2[23] = v13;
  v2[24] = v14;
  v15 = OUTLINED_FUNCTION_55_9();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1BF99D090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v11 = *(v10[22] + 16);
  v10[25] = v11;
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v10[26] = v12;
      v13 = v10[22];
      OUTLINED_FUNCTION_26_16(v12);
      OUTLINED_FUNCTION_47_8();
      if (OUTLINED_FUNCTION_8_17())
      {
        break;
      }

      OUTLINED_FUNCTION_2_30();
      OUTLINED_FUNCTION_18_14();
      if (v14)
      {
        v15 = v10[22];
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_0_29();
    v39 = v25 + *v25;
    v27 = *(v26 + 4);
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_44_10(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_15_23(v29);
    OUTLINED_FUNCTION_48_8();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }

  else
  {
LABEL_7:

    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_48_8();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }
}

uint64_t sub_1BF99D1FC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_43_10();
  v2 = *(v0 + 216);
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_46_7();
  v6 = *(v5 + 192);
  v7 = *(v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1BF99D308, v7, v6);
}

uint64_t sub_1BF99D308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  __swift_destroy_boxed_opaque_existential_1(v10 + 2);
  while (1)
  {
    OUTLINED_FUNCTION_18_14();
    if (v12)
    {
      break;
    }

    v10[26] = v11;
    v13 = v10[22];
    OUTLINED_FUNCTION_26_16(v11);
    OUTLINED_FUNCTION_47_8();
    if (OUTLINED_FUNCTION_8_17())
    {
      OUTLINED_FUNCTION_42_12();
      OUTLINED_FUNCTION_0_29();
      v38 = v24 + *v24;
      v26 = *(v25 + 4);
      v27 = swift_task_alloc();
      v28 = OUTLINED_FUNCTION_44_10(v27);
      *v28 = v29;
      OUTLINED_FUNCTION_15_23();
      OUTLINED_FUNCTION_48_8();

      return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
    }

    OUTLINED_FUNCTION_2_30();
  }

  v14 = v10[22];

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_48_8();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t GlobalLifeCycleContainer.siriLocaleChange()()
{
  OUTLINED_FUNCTION_6();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v1[16] = v0;
  v4 = *(*(v2 + 8) + 8);
  OUTLINED_FUNCTION_12_4();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v1[20] = v8;
  *v8 = v1;
  OUTLINED_FUNCTION_17_0(v8);
  v9 = OUTLINED_FUNCTION_58_8();

  return v10(v9);
}

uint64_t sub_1BF99D584()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = v4[20];
  v6 = v4[19];
  v7 = v4[18];
  v8 = v4[17];
  v9 = *v0;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  v2[21] = v11;

  v12 = *(v7 + 24);
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_57_10();
  v2[22] = v13;
  v2[23] = v14;
  v15 = OUTLINED_FUNCTION_55_9();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1BF99D6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v11 = *(v10[21] + 16);
  v10[24] = v11;
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v10[25] = v12;
      v13 = v10[21];
      OUTLINED_FUNCTION_26_16(v12);
      OUTLINED_FUNCTION_47_8();
      if (OUTLINED_FUNCTION_8_17())
      {
        break;
      }

      OUTLINED_FUNCTION_2_30();
      v12 = v10[25] + 1;
      if (v12 == v10[24])
      {
        v14 = v10[21];
        goto LABEL_6;
      }
    }

    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_0_29();
    v36 = v24 + *v24;
    v26 = *(v25 + 4);
    v27 = swift_task_alloc();
    v10[26] = v27;
    *v27 = v10;
    OUTLINED_FUNCTION_17_0(v27);
    OUTLINED_FUNCTION_40_6();
    OUTLINED_FUNCTION_48_8();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }

  else
  {
LABEL_6:

    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_48_8();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }
}

uint64_t sub_1BF99D854()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_43_10();
  v2 = *(v0 + 208);
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_46_7();
  v6 = *(v5 + 184);
  v7 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1BF99D960, v7, v6);
}

uint64_t sub_1BF99D960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  __swift_destroy_boxed_opaque_existential_1(v10 + 2);
  while (1)
  {
    v11 = v10[25] + 1;
    if (v11 == v10[24])
    {
      break;
    }

    v10[25] = v11;
    v12 = v10[21];
    OUTLINED_FUNCTION_26_16(v11);
    OUTLINED_FUNCTION_47_8();
    if (OUTLINED_FUNCTION_8_17())
    {
      OUTLINED_FUNCTION_42_12();
      OUTLINED_FUNCTION_0_29();
      v35 = v23 + *v23;
      v25 = *(v24 + 4);
      v26 = swift_task_alloc();
      v10[26] = v26;
      *v26 = v10;
      OUTLINED_FUNCTION_17_0(v26);
      OUTLINED_FUNCTION_40_6();
      OUTLINED_FUNCTION_48_8();

      return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
    }

    OUTLINED_FUNCTION_2_30();
  }

  v13 = v10[21];

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_48_8();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t BaseLifeCycleContainer.getTypeKey(entity:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  return BaseLifeCycleContainer.getTypeKey(type:)();
}

uint64_t BaseLifeCycleContainer.getTypeKey(type:)()
{
  v0 = sub_1BF9B4668();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v8 = v7 - v6;
  sub_1BF9B4638();
  v9 = sub_1BF9B4658();
  (*(v3 + 8))(v8, v0);
  return v9;
}

uint64_t sub_1BF99DBF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8BC564;

  return GlobalLifeCycleContainer.addToLifeCycle<A>(type:entity:)();
}

uint64_t GlobalLifeCycleContainer.addToLifeCycle<A>(type:entity:)()
{
  OUTLINED_FUNCTION_7();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = *(v2 + 24);
  sub_1BF9B4E28();
  v8 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BF99DD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v10 = v9[9];
  v31 = v9[10];
  v11 = v9[6];
  v12 = v9[7];
  BaseLifeCycleContainer.getTypeKey(type:)();
  v9[12] = v13;
  v9[5] = v10;
  __swift_allocate_boxed_opaque_existential_1Tm(v9 + 2);
  OUTLINED_FUNCTION_11(v10);
  (*(v14 + 16))();
  v15 = *(v31 + 56);
  v30 = v15 + *v15;
  v16 = v15[1];
  v17 = swift_task_alloc();
  v9[13] = v17;
  *v17 = v9;
  v17[1] = sub_1BF99DE98;
  v18 = v9[10];
  v19 = v9[11];
  v20 = v9[8];
  OUTLINED_FUNCTION_48_8();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_1BF99DE98()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *(v4 + 96);
  v7 = *v0;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  OUTLINED_FUNCTION_77();

  return v9();
}

uint64_t sub_1BF99DF94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8BC644;

  return GlobalLifeCycleContainer.addToLifeCycle(typeName:entity:)();
}

uint64_t GlobalLifeCycleContainer.addToLifeCycle(typeName:entity:)()
{
  OUTLINED_FUNCTION_7();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[14] = v5;
  v1[15] = v6;
  v7 = *(v2 + 24);
  sub_1BF9B4E28();
  v8 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BF99E0CC()
{
  if (qword_1EDBF4B40 != -1)
  {
    swift_once();
  }

  v18 = v0[18];
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = qword_1EDBF4B48;
  v0[12] = type metadata accessor for DefaultOwner();
  v0[13] = sub_1BF93A93C();
  v0[9] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA680, &unk_1BF9C8BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF9B6370;
  *(inited + 32) = v3;
  *(inited + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A18, &qword_1BF9B8510);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BF9B6370;
  v7 = v2[3];
  __swift_project_boxed_opaque_existential_1(v2, v7);
  *(v6 + 56) = v7;
  __swift_allocate_boxed_opaque_existential_1Tm((v6 + 32));
  OUTLINED_FUNCTION_11(v7);
  (*(v8 + 16))();
  *(inited + 48) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
  v9 = sub_1BF9B4988();
  v0[20] = v9;
  v10 = *(v18 + 40);
  v17 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_1BF99E350;
  v13 = v0[18];
  v14 = v0[19];
  v15 = v0[17];

  return (v17)(v0 + 9, v9, v15, v13);
}

uint64_t sub_1BF99E350()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *(v4 + 160);
  v7 = *v0;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 72));
  OUTLINED_FUNCTION_77();

  return v9();
}

uint64_t sub_1BF99E44C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8BC644;

  return GlobalLifeCycleContainer.addToLifeCycle(entity:)();
}

uint64_t GlobalLifeCycleContainer.addToLifeCycle(entity:)()
{
  OUTLINED_FUNCTION_7();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = *(v2 + 24);
  sub_1BF9B4E28();
  v6 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF99E56C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 24);
  v17 = *(v0 + 32);
  v2 = *(v17 + 8);
  v3 = BaseLifeCycleContainer.getTypeKey(entity:)(*(v0 + 16));
  v5 = v4;
  *(v0 + 48) = v4;
  v6 = *(v17 + 56);
  OUTLINED_FUNCTION_5_0();
  v16 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_1BF99E69C;
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);

  return v16(v3, v5, v13, v14, v11);
}

uint64_t sub_1BF99E69C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  OUTLINED_FUNCTION_77();

  return v6();
}

uint64_t GlobalLifeCycleContainer.start()()
{
  OUTLINED_FUNCTION_6();
  v1[47] = v2;
  v1[48] = v0;
  v1[46] = v3;
  v1[44] = v0;
  v4 = *(v2 + 8);
  v1[49] = v4;
  v5 = *(v4 + 8);
  v1[50] = v5;
  v1[51] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0xD84B000000000000;
  v11 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  v1[52] = v7;
  *v7 = v1;
  v7[1] = sub_1BF99E8C4;
  v8 = OUTLINED_FUNCTION_40_6();

  return v9(v8);
}

uint64_t sub_1BF99E8C4()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = v4[52];
  v6 = v4[48];
  v7 = v4[47];
  v8 = v4[46];
  v9 = *v0;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  v2[53] = v11;

  v12 = *(v7 + 24);
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_57_10();
  v2[54] = v13;
  v2[55] = v14;
  v15 = OUTLINED_FUNCTION_55_9();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1BF99EC3C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *(v0 + 456);
  v5 = *v1;
  OUTLINED_FUNCTION_3_19();
  *v6 = v5;
  *(v8 + 464) = v7;

  OUTLINED_FUNCTION_46_7();
  v10 = *(v9 + 440);
  v11 = *(v0 + 432);

  return MEMORY[0x1EEE6DFA0](sub_1BF99ED48, v11, v10);
}

uint64_t sub_1BF99ED48()
{
  v35 = v0;
  v1 = *(v0 + 464);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1BF8C187C(v3, v0 + 256);
      sub_1BF8C192C((v0 + 256), (v0 + 288));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A28, &unk_1BF9B8520);
      if (swift_dynamicCast())
      {
        if (*(v0 + 80))
        {
          OUTLINED_FUNCTION_42_12();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = *(v4 + 16);
            sub_1BF8DE6D0();
            v4 = v7;
          }

          v5 = *(v4 + 16);
          if (v5 >= *(v4 + 24) >> 1)
          {
            sub_1BF8DE6D0();
            v4 = v8;
          }

          *(v4 + 16) = v5 + 1;
          sub_1BF8C2C9C((v0 + 16), v4 + 40 * v5 + 32);
          goto LABEL_12;
        }
      }

      else
      {
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      sub_1BF8E8118(v0 + 56, &qword_1EBDEA688, &qword_1BF9C8BF0);
LABEL_12:
      v3 += 32;
      if (!--v2)
      {
        v9 = *(v0 + 464);

        goto LABEL_15;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_15:
  *(v0 + 472) = v4;
  v10 = *(v4 + 16);
  *(v0 + 480) = v10;
  if (v10)
  {
    *(v0 + 488) = 0;
    v11 = *(v0 + 448);
    v12 = *(v0 + 384);
    sub_1BF8D2004(v4 + 32, v0 + 96);
    sub_1BF8D2004(v0 + 96, v0 + 136);
    sub_1BF8D2004(v0 + 96, v0 + 176);
    swift_unknownObjectRetain();
    v13 = sub_1BF9B47A8();
    v14 = sub_1BF9B5028();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_60_6();
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_49_7(4.8151e-34);
      OUTLINED_FUNCTION_11(v11);
      (*(v16 + 16))();
      BaseLifeCycleContainer.getTypeKey(entity:)((v0 + 320));
      OUTLINED_FUNCTION_53_9();
      __swift_destroy_boxed_opaque_existential_1((v0 + 320));
      v17 = __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      OUTLINED_FUNCTION_62_8(v17, v18, &v33);
      OUTLINED_FUNCTION_61_7();
      OUTLINED_FUNCTION_50_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A28, &unk_1BF9B8520);
      sub_1BF9B4B08();
      OUTLINED_FUNCTION_53_9();
      v19 = __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      OUTLINED_FUNCTION_62_8(v19, v20, &v33);
      OUTLINED_FUNCTION_61_7();
      *(v15 + 14) = &v34;
      OUTLINED_FUNCTION_59_10(&dword_1BF8B8000, v21, v22, "Starting: %s - %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_54();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    }

    v25 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    OUTLINED_FUNCTION_1_28(v25);
    v32 = (v26 + *v26);
    v28 = *(v27 + 4);
    v29 = swift_task_alloc();
    *(v0 + 496) = v29;
    *v29 = v0;
    v29[1] = sub_1BF99F190;
    v30 = *(v0 + 376);
    v31 = OUTLINED_FUNCTION_82(*(v0 + 384));

    return v32(v31);
  }

  else
  {

    OUTLINED_FUNCTION_77();

    return v23();
  }
}

uint64_t sub_1BF99F190()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_43_10();
  v2 = *(v0 + 496);
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_46_7();
  v6 = *(v5 + 440);
  v7 = *(v0 + 432);

  return MEMORY[0x1EEE6DFA0](sub_1BF99F29C, v7, v6);
}

uint64_t sub_1BF99F29C()
{
  v30 = v0;
  v1 = v0[60];
  v2 = v0[61] + 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  if (v2 == v1)
  {
    v3 = v0[59];

    OUTLINED_FUNCTION_77();

    return v4();
  }

  else
  {
    v6 = v0[61];
    v0[61] = v6 + 1;
    v7 = v0[56];
    v8 = v0[48];
    sub_1BF8D2004(v0[59] + 40 * v6 + 72, (v0 + 12));
    sub_1BF8D2004((v0 + 12), (v0 + 17));
    sub_1BF8D2004((v0 + 12), (v0 + 22));
    swift_unknownObjectRetain();
    v9 = sub_1BF9B47A8();
    v10 = sub_1BF9B5028();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_60_6();
      v28 = swift_slowAlloc();
      OUTLINED_FUNCTION_49_7(4.8151e-34);
      OUTLINED_FUNCTION_11(v7);
      (*(v12 + 16))();
      BaseLifeCycleContainer.getTypeKey(entity:)(v0 + 40);
      OUTLINED_FUNCTION_53_9();
      __swift_destroy_boxed_opaque_existential_1(v0 + 40);
      v13 = __swift_destroy_boxed_opaque_existential_1(v0 + 17);
      OUTLINED_FUNCTION_62_8(v13, v14, &v28);
      OUTLINED_FUNCTION_61_7();
      OUTLINED_FUNCTION_50_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A28, &unk_1BF9B8520);
      sub_1BF9B4B08();
      OUTLINED_FUNCTION_53_9();
      v15 = __swift_destroy_boxed_opaque_existential_1(v0 + 22);
      OUTLINED_FUNCTION_62_8(v15, v16, &v28);
      OUTLINED_FUNCTION_61_7();
      *(v11 + 14) = &v29;
      OUTLINED_FUNCTION_59_10(&dword_1BF8B8000, v17, v18, "Starting: %s - %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_54();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 22);
      __swift_destroy_boxed_opaque_existential_1(v0 + 17);
    }

    v19 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    v20 = *(v19 + 8);
    OUTLINED_FUNCTION_12_4();
    v27 = (v21 + *v21);
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v0[62] = v24;
    *v24 = v0;
    v24[1] = sub_1BF99F190;
    v25 = v0[47];
    v26 = OUTLINED_FUNCTION_82(v0[48]);

    return v27(v26);
  }
}

uint64_t GlobalLifeCycleContainer.bundleLoaded()()
{
  OUTLINED_FUNCTION_7();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = *(v2 + 24);
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_57_10();
  v1[20] = v5;
  v1[21] = v6;
  v7 = OUTLINED_FUNCTION_55_9();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF99F624()
{
  OUTLINED_FUNCTION_6();
  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v1 = sub_1BF9B47C8();
  v0[22] = __swift_project_value_buffer(v1, qword_1EDBF57F8);
  v2 = sub_1BF9B47A8();
  v3 = sub_1BF9B5038();
  if (OUTLINED_FUNCTION_33_12(v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_56_7(v4);
    OUTLINED_FUNCTION_75_2();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_54();
  }

  v11 = v0[18];
  v10 = v0[19];

  v0[16] = v10;
  v12 = *(v11 + 8);
  OUTLINED_FUNCTION_1_28(v12);
  v19 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v0[23] = v16;
  *v16 = v0;
  v16[1] = sub_1BF99F7B4;
  v17 = v0[17];

  return v19(v17, v12);
}

uint64_t sub_1BF99F7B4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *(v0 + 184);
  v5 = *v1;
  OUTLINED_FUNCTION_3_19();
  *v6 = v5;
  *(v8 + 192) = v7;

  OUTLINED_FUNCTION_46_7();
  v10 = *(v9 + 168);
  v11 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1BF99F8C0, v11, v10);
}

void sub_1BF99F8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v11 = *(v10[24] + 16);
  v10[25] = v11;
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_28_13(v12);
      if (v14)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_26_16(v13);
      OUTLINED_FUNCTION_47_8();
      if (OUTLINED_FUNCTION_8_17())
      {
        break;
      }

      OUTLINED_FUNCTION_2_30();
      OUTLINED_FUNCTION_18_14();
      if (v15)
      {
        v16 = v10[24];
        goto LABEL_8;
      }
    }

    v25 = v10[22];
    OUTLINED_FUNCTION_42_12();
    v26 = sub_1BF9B47A8();
    v27 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_33_12(v27))
    {
      v28 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_56_7(v28);
      OUTLINED_FUNCTION_75_2();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_54();
    }

    OUTLINED_FUNCTION_0_29();
    v48 = v34 + *v34;
    v36 = *(v35 + 4);
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_44_10(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_5_20(v38);
    OUTLINED_FUNCTION_48_8();

    v44(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
  }

  else
  {
LABEL_8:

    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_48_8();

    v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }
}

uint64_t sub_1BF99FA74()
{
  OUTLINED_FUNCTION_65();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v2[27];
  *v4 = *v1;
  *(v3 + 224) = v0;

  v6 = v2[21];
  v7 = v2[20];
  if (v0)
  {
    v8 = sub_1BF99FD50;
  }

  else
  {
    v8 = sub_1BF99FBA4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

void sub_1BF99FBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  __swift_destroy_boxed_opaque_existential_1(v10 + 2);
  while (1)
  {
    OUTLINED_FUNCTION_18_14();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_28_13(v11);
    if (v14)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_26_16(v13);
    OUTLINED_FUNCTION_47_8();
    if (OUTLINED_FUNCTION_8_17())
    {
      v24 = v10[22];
      OUTLINED_FUNCTION_42_12();
      v25 = sub_1BF9B47A8();
      v26 = sub_1BF9B5038();
      if (OUTLINED_FUNCTION_33_12(v26))
      {
        v27 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_56_7(v27);
        OUTLINED_FUNCTION_75_2();
        _os_log_impl(v28, v29, v30, v31, v32, 2u);
        OUTLINED_FUNCTION_54();
      }

      OUTLINED_FUNCTION_0_29();
      v47 = v33 + *v33;
      v35 = *(v34 + 4);
      v36 = swift_task_alloc();
      v37 = OUTLINED_FUNCTION_44_10(v36);
      *v37 = v38;
      OUTLINED_FUNCTION_5_20();
      OUTLINED_FUNCTION_48_8();

      v43(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
      return;
    }

    OUTLINED_FUNCTION_2_30();
  }

  v15 = v10[24];

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_48_8();

  v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

void sub_1BF99FD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v11 = v10[22];
  v12 = sub_1BF9B47A8();
  v13 = sub_1BF9B5048();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v10[28];
  if (v14)
  {
    v16 = OUTLINED_FUNCTION_12_0();
    *v16 = 0;
    _os_log_impl(&dword_1BF8B8000, v12, v13, "error running bundleLoaded", v16, 2u);
    OUTLINED_FUNCTION_87();
  }

  __swift_destroy_boxed_opaque_existential_1(v10 + 2);
  while (1)
  {
    OUTLINED_FUNCTION_18_14();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_28_13(v17);
    if (v20)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_26_16(v19);
    OUTLINED_FUNCTION_47_8();
    if (OUTLINED_FUNCTION_8_17())
    {
      v30 = v10[22];
      OUTLINED_FUNCTION_42_12();
      v31 = sub_1BF9B47A8();
      v32 = sub_1BF9B5038();
      if (OUTLINED_FUNCTION_33_12(v32))
      {
        v33 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_56_7(v33);
        OUTLINED_FUNCTION_75_2();
        _os_log_impl(v34, v35, v36, v37, v38, 2u);
        OUTLINED_FUNCTION_54();
      }

      OUTLINED_FUNCTION_0_29();
      v53 = v39 + *v39;
      v41 = *(v40 + 4);
      v42 = swift_task_alloc();
      v43 = OUTLINED_FUNCTION_44_10(v42);
      *v43 = v44;
      OUTLINED_FUNCTION_5_20();
      OUTLINED_FUNCTION_48_8();

      v49(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
      return;
    }

    OUTLINED_FUNCTION_2_30();
  }

  v21 = v10[24];

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_48_8();

  v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_1BF99FF68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1BF99FFC4(v4);
}

uint64_t sub_1BF99FF94()
{
  OUTLINED_FUNCTION_15_3();
  v1 = *(v0 + 16);
}

uint64_t sub_1BF99FFC4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void sub_1BF9A0034()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_15_3();
  v2 = *(v1 + 16);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v6 = (63 - v4) >> 6;
  v7 = *(v1 + 16);
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v5)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= v6)
          {
            goto LABEL_20;
          }

          v5 = *(v2 + 64 + 8 * v10);
          ++v8;
          if (v5)
          {
            v8 = v10;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

LABEL_9:
      v11 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
      v12 = *(*(v2 + 56) + v11);
      v13 = *(v12 + 16);
      v14 = *(v9 + 16);
      if (__OFADD__(v14, v13))
      {
        goto LABEL_24;
      }

      v15 = *(*(v2 + 56) + v11);

      if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v9 + 24) >> 1)
      {
        sub_1BF8DCEAC();
        v9 = v16;
      }

      v5 &= v5 - 1;
      if (!*(v12 + 16))
      {
        break;
      }

      if ((*(v9 + 24) >> 1) - *(v9 + 16) < v13)
      {
        goto LABEL_25;
      }

      swift_arrayInitWithCopy();

      if (v13)
      {
        v17 = *(v9 + 16);
        v18 = __OFADD__(v17, v13);
        v19 = v17 + v13;
        if (v18)
        {
          goto LABEL_26;
        }

        *(v9 + 16) = v19;
      }
    }
  }

  while (!v13);
  __break(1u);
LABEL_20:

  OUTLINED_FUNCTION_4();

  v20(v9);
}

uint64_t LocalLifeCycleContainer.__allocating_init(globalStore:)()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  *(v0 + 16) = v3;
  swift_getObjectType();
  v4 = *(v2 + 32);
  OUTLINED_FUNCTION_5_0();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_0_20(v8);

  return v10(v9);
}

uint64_t sub_1BF9A0334()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BF9A0424, 0, 0);
}

uint64_t sub_1BF9A0424()
{
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  type metadata accessor for LocalLifeCycleContainer();
  v3 = swift_allocObject();
  *(v3 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
  v4 = sub_1BF9B4988();
  swift_unknownObjectRelease();
  *(v3 + 16) = v4;
  OUTLINED_FUNCTION_4();

  return v5(v3);
}

uint64_t LocalLifeCycleContainer.__allocating_init(existingEntities:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
  *(v2 + 16) = sub_1BF9B4988();
  return v2;
}

uint64_t LocalLifeCycleContainer.init(existingEntities:)(uint64_t a1)
{
  *(v1 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
  *(v1 + 16) = sub_1BF9B4988();
  return v1;
}

uint64_t sub_1BF9A05AC(void *a1)
{
  v2 = sub_1BF9B4668();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v10 = v9 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_1BF9B4638();
  v11 = sub_1BF9B4658();
  v13 = v12;
  (*(v5 + 8))(v10, v2);
  sub_1BF9A0BD4(v11, v13, a1);
}

uint64_t sub_1BF9A06B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF9B4668();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v12 = v11 - v10;
  sub_1BF9B4638();
  sub_1BF9B4658();
  (*(v7 + 8))(v12, v4);
  v13 = *(v2 + 24);
  v14 = OUTLINED_FUNCTION_26();
  v17 = sub_1BF9251EC(v14, v15, v16);
  if (v17)
  {
    v47 = v17;
    MEMORY[0x1EEE9AC00](v17);
    *&v45[-16] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
    sub_1BF9A0F08();
    v18 = sub_1BF9B4C88();
  }

  else
  {
    v18 = 0;
  }

  OUTLINED_FUNCTION_15_3();
  v19 = *(v2 + 16);

  v20 = OUTLINED_FUNCTION_26();
  v22 = sub_1BF9251EC(v20, v21, v19);

  if (v22)
  {
    v46 = v22;
    MEMORY[0x1EEE9AC00](v23);
    *&v45[-16] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
    sub_1BF9A0F08();
    v24 = sub_1BF9B4C88();
  }

  else
  {
    v24 = 0;
  }

  if (v18 | v24)
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v34 = sub_1BF9B47C8();
    __swift_project_value_buffer(v34, qword_1EDBF5570);

    v35 = sub_1BF9B47A8();
    v36 = sub_1BF9B5038();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = v38;
      *v37 = 136315138;
      v39 = OUTLINED_FUNCTION_26();
      v42 = sub_1BF8DE810(v39, v40, v41);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1BF8B8000, v35, v36, "Found global values for %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    else
    {
    }

    if (v18)
    {
      if (v24)
      {
LABEL_21:
        v43 = sub_1BF9B4D58();

        return v43;
      }
    }

    else
    {
      sub_1BF9B4D78();
      if (v24)
      {
        goto LABEL_21;
      }
    }

    sub_1BF9B4D78();
    goto LABEL_21;
  }

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v25 = sub_1BF9B47C8();
  __swift_project_value_buffer(v25, qword_1EDBF5570);

  v26 = sub_1BF9B47A8();
  v27 = sub_1BF9B5028();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46 = v29;
    *v28 = 136315138;
    v30 = OUTLINED_FUNCTION_26();
    v33 = sub_1BF8DE810(v30, v31, v32);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_1BF8B8000, v26, v27, "No value for: %s in LifeCycle container", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_54();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1BF9A0B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BF8C187C(a1, &v7);
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_1BF9A0BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_15_3();
  v8 = *(v3 + 16);
  v9 = *(v8 + 16);

  if (v9 && (v10 = sub_1BF8C2E64(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v10);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = a3[3];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v25 = v13;
  __swift_allocate_boxed_opaque_existential_1Tm(v24);
  OUTLINED_FUNCTION_11(v13);
  (*(v14 + 16))();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = *(v12 + 16);
    sub_1BF8DCEAC();
    v12 = v21;
  }

  v15 = *(v12 + 16);
  if (v15 >= *(v12 + 24) >> 1)
  {
    sub_1BF8DCEAC();
    v12 = v22;
  }

  *(v12 + 16) = v15 + 1;
  sub_1BF8C192C(v24, (v12 + 32 * v15 + 32));
  swift_beginAccess();
  v16 = *(v4 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v4 + 16);
  v17 = OUTLINED_FUNCTION_26();
  sub_1BF936C54(v17, v18, a2);
  *(v4 + 16) = v23;
  return swift_endAccess();
}

uint64_t LocalLifeCycleContainer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t LocalLifeCycleContainer.__deallocating_deinit()
{
  LocalLifeCycleContainer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BF9A0E38()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF8D59E4;

  return sub_1BF9A0014();
}

unint64_t sub_1BF9A0F08()
{
  result = qword_1EDBF0570;
  if (!qword_1EDBF0570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0570);
  }

  return result;
}

uint64_t dispatch thunk of BaseLifeCycleContainer.allEntities.getter()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_20_19(v0, v1);
  OUTLINED_FUNCTION_1_28(v2);
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_20(v7);

  return v10(v9);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.entities.getter()
{
  OUTLINED_FUNCTION_6();
  v2 = *(OUTLINED_FUNCTION_20_19(v0, v1) + 32);
  OUTLINED_FUNCTION_5_0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_20(v7);

  return v10(v9);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.addToLifeCycle(owner:localEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v14 = *(OUTLINED_FUNCTION_9_20(v10, v11, v12, v13) + 40);
  OUTLINED_FUNCTION_5_0();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_15_2(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_7_22(v19);
  OUTLINED_FUNCTION_48_8();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.addToLifeCycle<A>(type:entity:)()
{
  OUTLINED_FUNCTION_45();
  v5 = *(OUTLINED_FUNCTION_35_11(v0, v1, v2, v3, v4) + 48);
  OUTLINED_FUNCTION_12_4();
  v15 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_2(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_17_0(v10);
  v12 = OUTLINED_FUNCTION_37_8();

  return v13(v12);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.addToLifeCycle(typeName:entity:)()
{
  OUTLINED_FUNCTION_45();
  v5 = *(OUTLINED_FUNCTION_35_11(v0, v1, v2, v3, v4) + 56);
  OUTLINED_FUNCTION_12_4();
  v15 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_2(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_17_0(v10);
  v12 = OUTLINED_FUNCTION_37_8();

  return v13(v12);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.addToLifeCycle(entity:)()
{
  OUTLINED_FUNCTION_6();
  v3 = *(OUTLINED_FUNCTION_15(v0, v1, v2) + 64);
  OUTLINED_FUNCTION_12_4();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_6_2(v8);

  return v11(v10);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.getEntity<A>(entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v14 = *(OUTLINED_FUNCTION_9_20(v10, v11, v12, v13) + 72);
  OUTLINED_FUNCTION_5_0();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_15_2(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_7_22(v19);
  OUTLINED_FUNCTION_48_8();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.destroy(owner:)()
{
  OUTLINED_FUNCTION_6();
  v3 = *(OUTLINED_FUNCTION_15(v0, v1, v2) + 80);
  OUTLINED_FUNCTION_12_4();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_6_2(v8);

  return v11(v10);
}

uint64_t dispatch thunk of GlobalLifeCycleContainer.getAllOwners()()
{
  OUTLINED_FUNCTION_6();
  v2 = *(OUTLINED_FUNCTION_20_19(v0, v1) + 88);
  OUTLINED_FUNCTION_5_0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_20(v7);

  return v10(v9);
}

uint64_t dispatch thunk of Destroyable.destroy()()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_20_19(v0, v1);
  OUTLINED_FUNCTION_1_28(v2);
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_20(v7);

  return v10(v9);
}

uint64_t dispatch thunk of Startable.start(container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_9_20(v10, v11, v12, v13);
  OUTLINED_FUNCTION_1_28(v14);
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_15_2(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_7_22(v19);
  OUTLINED_FUNCTION_48_8();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of OnBundleLoaded.bundleLoaded(globalLifecyclecontainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_9_20(v10, v11, v12, v13);
  OUTLINED_FUNCTION_1_28(v14);
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_15_2(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_7_22(v19);
  OUTLINED_FUNCTION_48_8();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GMStatusChangeHandler.handleGMStatusChange(status:)()
{
  OUTLINED_FUNCTION_6();
  v3 = *(OUTLINED_FUNCTION_15(v0, v1, v2) + 8);
  OUTLINED_FUNCTION_12_4();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_6_2(v8);

  return v11(v10);
}

uint64_t dispatch thunk of SiriLocaleChangeHandler.handleSiriLocaleChange()()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_20_19(v0, v1);
  OUTLINED_FUNCTION_1_28(v2);
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_20(v7);

  return v10(v9);
}

uint64_t dispatch thunk of LocalLifeCycleContainer.allEntities.getter()
{
  OUTLINED_FUNCTION_65();
  v1 = *(*v0 + 120);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_17_0(v4);

  return v7();
}

uint64_t *OUTLINED_FUNCTION_49_7(float a1)
{
  *v1 = a1;
  v3 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 17, v3);
  v2[43] = v3;

  return __swift_allocate_boxed_opaque_existential_1Tm(v2 + 40);
}

uint64_t OUTLINED_FUNCTION_60_6()
{
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);

  return swift_slowAlloc();
}

uint64_t sub_1BF9A2328(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF9A2350, 0, 0);
}

uint64_t sub_1BF9A2350()
{
  v19 = v0;
  if (*(v0 + 72) == 1)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    *(v0 + 48) = swift_getObjectType();
    v4 = *(*(v2 + 8) + 8);
    v6 = sub_1BF9B4E28();

    return MEMORY[0x1EEE6DFA0](sub_1BF9A251C, v6, v5);
  }

  else
  {
    if (qword_1EDBF0898 != -1)
    {
      OUTLINED_FUNCTION_3_29();
    }

    v7 = *(v0 + 40);
    v8 = sub_1BF9B47C8();
    __swift_project_value_buffer(v8, qword_1EDBF08A0);

    v9 = sub_1BF9B47A8();
    v10 = sub_1BF9B5028();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 32);
      v11 = *(v0 + 40);
      swift_slowAlloc();
      v18 = OUTLINED_FUNCTION_17_19();
      *v1 = 136315138;
      *(v1 + 4) = sub_1BF8DE810(v12, v11, &v18);
      OUTLINED_FUNCTION_18_15(&dword_1BF8B8000, v13, v10, "No thirdparty app id applicable. Using default at: %s");
      OUTLINED_FUNCTION_15_24();
      OUTLINED_FUNCTION_93();
    }

    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = *(v0 + 8);

    return v17(v14, v15);
  }
}

uint64_t sub_1BF9A251C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 56) = Context.getThirdPartyAppId()();

  return MEMORY[0x1EEE6DFA0](sub_1BF9A2588, 0, 0);
}

uint64_t sub_1BF9A2588()
{
  v20 = v0;
  v2 = v0[8];
  if (v2)
  {
    if (qword_1EDBF0898 != -1)
    {
      OUTLINED_FUNCTION_3_29();
    }

    v3 = v0 + 7;
    v4 = sub_1BF9B47C8();
    __swift_project_value_buffer(v4, qword_1EDBF08A0);

    v5 = sub_1BF9B47A8();
    v6 = sub_1BF9B5028();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *v3;
      swift_slowAlloc();
      v19 = OUTLINED_FUNCTION_17_19();
      *v1 = 136315138;
      *(v1 + 4) = sub_1BF8DE810(v7, v2, &v19);
      OUTLINED_FUNCTION_18_15(&dword_1BF8B8000, v8, v6, "Found third party app Id in context. Updating proactive actionId to %s");
      OUTLINED_FUNCTION_15_24();
      OUTLINED_FUNCTION_93();
    }
  }

  else
  {
    if (qword_1EDBF0898 != -1)
    {
      OUTLINED_FUNCTION_3_29();
    }

    v9 = v0[5];
    v10 = sub_1BF9B47C8();
    __swift_project_value_buffer(v10, qword_1EDBF08A0);

    v11 = sub_1BF9B47A8();
    v12 = sub_1BF9B5028();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[4];
      v13 = v0[5];
      swift_slowAlloc();
      v19 = OUTLINED_FUNCTION_17_19();
      *v1 = 136315138;
      *(v1 + 4) = sub_1BF8DE810(v14, v13, &v19);
      OUTLINED_FUNCTION_18_15(&dword_1BF8B8000, v15, v12, "No thirdparty app id applicable. Using default at: %s");
      OUTLINED_FUNCTION_15_24();
      OUTLINED_FUNCTION_93();
    }

    v2 = v0[5];
    v3 = v0 + 4;
  }

  v16 = *v3;
  v17 = v0[1];

  return v17(v16, v2);
}

uint64_t sub_1BF9A27B4()
{
  OUTLINED_FUNCTION_7_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_30(v1);
  OUTLINED_FUNCTION_13_16();

  return sub_1BF9A2328(v3, v4, v5, v6, v7);
}

uint64_t static ProactiveResolver.createProactiveResolver(resolverType:actionIdProvider:entityId:valuePostProcessor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  if (a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6A0, &qword_1BF9C8E20);
    inited = swift_initStackObject();
    v9 = a1;
    v20 = OUTLINED_FUNCTION_1_29(inited, xmmword_1BF9B6370);
    v20[4].n128_u64[1] = MEMORY[0x1E69E6158];
    v20[3].n128_u64[0] = a5;
    v20[3].n128_u64[1] = a6;
  }

  v21 = sub_1BF9B4988();
  OUTLINED_FUNCTION_5_21();
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  OUTLINED_FUNCTION_5_21();
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  type metadata accessor for DelegatingResolver();
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_4_27();
  result = DelegatingResolver.init(resolverTypeOperand:delegationType:delegation:params:valuePostProcessor:dependentValuesUpdate:)(a1, a2, v24, 0xE900000000000065, v27, v21, v25, v22, &unk_1BF9C8E48, v23);
  a9[3] = v9;
  a9[4] = &protocol witness table for DelegatingResolver;
  *a9 = result;
  return result;
}

uint64_t sub_1BF9A2BC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BF9A2BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF9A2C10, 0, 0);
}

uint64_t sub_1BF9A2C10()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6A0, &qword_1BF9C8E20);
  inited = swift_initStackObject();
  v0[16] = inited;
  *(inited + 16) = xmmword_1BF9B6370;
  *(inited + 32) = 0x64496E6F69746361;
  *(inited + 40) = 0xE800000000000000;
  v9 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1BF9A2D44;
  v5 = v0[15];
  v7 = v0[12];
  v6 = v0[13];

  return v9(v7, v6);
}

uint64_t sub_1BF9A2D44()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;
  *(v1 + 144) = v3;
  *(v1 + 152) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BF9A2E40, 0, 0);
}

uint64_t sub_1BF9A2E40()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v3[9] = MEMORY[0x1E69E6158];
  v3[6] = v2;
  v3[7] = v1;
  v4 = sub_1BF9B4988();
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1BF9A2EC4()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_6_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_30(v1);
  OUTLINED_FUNCTION_22_12();

  return sub_1BF9A2BEC(v3, v4, v5, v6);
}

uint64_t ProactiveAppPrediction.appBundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static ProactiveResolver.createProactiveResolver(resolverType:valuePostProcessor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));

  v10 = sub_1BF9B4988();
  OUTLINED_FUNCTION_5_21();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = type metadata accessor for DelegatingResolver();
  swift_allocObject();

  OUTLINED_FUNCTION_4_27();
  result = DelegatingResolver.init(resolverTypeOperand:delegationType:delegation:params:valuePostProcessor:dependentValuesUpdate:)(a1, a2, v13, 0xE900000000000065, v16, v10, v14, v11, &unk_1BF9C9168, 0);
  a5[3] = v12;
  a5[4] = &protocol witness table for DelegatingResolver;
  *a5 = result;
  return result;
}

double sub_1BF9A30B0@<D0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, _OWORD *a3@<X8>)
{
  sub_1BF8C187C(a1, v9);
  if (swift_dynamicCast())
  {
    v9[0] = v6;
    v9[1] = v7;
    v9[2] = v8;
    a2(v9);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

SiriSuggestionsKit::ProactiveAppPrediction __swiftcall ProactiveAppPrediction.init(appBundleId:confidence:)(Swift::String appBundleId, Swift::Double confidence)
{
  *v2 = appBundleId;
  *(v2 + 16) = confidence;
  result.appBundleId = appBundleId;
  result.confidence = confidence;
  return result;
}

uint64_t sub_1BF9A3160()
{
  OUTLINED_FUNCTION_7_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_30(v1);
  OUTLINED_FUNCTION_13_16();

  return sub_1BF9A2328(v3, v4, v5, v6, v7);
}

uint64_t sub_1BF9A31FC()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  v5 = *(*v0 + 16);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6(v4, v2);
}

uint64_t sub_1BF9A32FC()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_6_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_30(v1);
  OUTLINED_FUNCTION_22_12();

  return sub_1BF9A2BEC(v3, v4, v5, v6);
}

uint64_t sub_1BF9A338C()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

_BYTE *storeEnumTagSinglePayload for ProactiveResolver(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_10_21()
{

  return swift_allocObject();
}

uint64_t dispatch thunk of AppDetailsBuilder.build()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1BF8E8FFC;

  return v11(a1, a2, a3);
}

uint64_t static FilterResolver.filterLockscreen(for:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1BF8D2004(a3, v10);
  OUTLINED_FUNCTION_17_1();
  v8 = swift_allocObject();
  v8[2] = sub_1BF9A3D28;
  v8[3] = 0;
  sub_1BF8D5C74(v10, (v8 + 4));
  v8[9] = a1;
  v8[10] = a2;
  a4[3] = v4;
  a4[4] = &protocol witness table for FilterResolver;
  *a4 = v8;
}

uint64_t FilterResolver.resolverTypeOperand.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t FilterResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF9A3834, 0, 0);
}

uint64_t sub_1BF9A3834()
{
  v29 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1BF8D2004(v0[19], (v0 + 2));
  sub_1BF8D2004(v2, (v0 + 7));
  sub_1BF8D2004(v3, (v0 + 12));
  LOBYTE(v4) = v5(v0 + 2);
  sub_1BF9A3F80((v0 + 2));
  if (v4)
  {
    v6 = v0[21];
    v7 = v6[7];
    v8 = v6[8];
    __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
    v9 = *(v8 + 8);
    v10 = *(v9 + 24);
    v27 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[22] = v12;
    *v12 = v0;
    v12[1] = sub_1BF9A3B0C;
    v13 = v0[19];
    v14 = v0[20];
    v16 = v0[17];
    v15 = v0[18];

    return v27(v16, v15, v13, v14, v7, v9);
  }

  else
  {
    if (qword_1EDBF0898 != -1)
    {
      swift_once();
    }

    v18 = v0[21];
    v19 = sub_1BF9B47C8();
    __swift_project_value_buffer(v19, qword_1EDBF08A0);

    v20 = sub_1BF9B47A8();
    v21 = sub_1BF9B5028();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[21];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1BF8DE810(*(v22 + 72), *(v22 + 80), &v28);
      _os_log_impl(&dword_1BF8B8000, v20, v21, "Predicate not matched. Skipping resolution for %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFB5F320](v24, -1, -1);
      MEMORY[0x1BFB5F320](v23, -1, -1);
    }

    v25 = v0[1];
    v26 = MEMORY[0x1E69E7CC0];

    return v25(v26);
  }
}

uint64_t sub_1BF9A3B0C(uint64_t a1)
{
  v3 = *(*v1 + 176);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t FilterResolver.getRoot()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = __swift_project_boxed_opaque_existential_1((v1 + 32), v3);
  a1[3] = v3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
  v6 = *(*(v3 - 8) + 16);

  return v6(boxed_opaque_existential_1Tm, v4, v3);
}

uint64_t static FilterResolver.filter(for:using:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_1BF8D2004(a3, v14);
  OUTLINED_FUNCTION_17_1();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  sub_1BF8D5C74(v14, (v12 + 4));
  v12[9] = a1;
  v12[10] = a2;
  a6[3] = v6;
  a6[4] = &protocol witness table for FilterResolver;
  *a6 = v12;
}

uint64_t sub_1BF9A3D28(void *a1)
{
  if (qword_1EDBF0898 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF9B47C8();
  __swift_project_value_buffer(v2, qword_1EDBF08A0);
  sub_1BF9A4160(a1, v20);
  v3 = sub_1BF9B47A8();
  v4 = sub_1BF9B5028();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v7 = v22;
    v8 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v8 + 64))(&v18, v7, v8);
    v9 = sub_1BF9B4B08();
    v11 = v10;
    sub_1BF9A3F80(v20);
    v12 = sub_1BF8DE810(v9, v11, &v19);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1BF8B8000, v3, v4, "Checking if device is locked: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB5F320](v6, -1, -1);
    MEMORY[0x1BFB5F320](v5, -1, -1);
  }

  else
  {

    sub_1BF9A3F80(v20);
  }

  v13 = a1[8];
  v14 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v13);
  (*(v14 + 64))(v20, v13, v14);
  if (v20[0])
  {
    v15 = sub_1BF9B56D8();

    v16 = v15 ^ 1;
  }

  else
  {

    v16 = 0;
  }

  return v16 & 1;
}

void *FilterResolver.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[10];

  return v0;
}

uint64_t FilterResolver.__deallocating_deinit()
{
  FilterResolver.deinit();
  v0 = OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF9A4054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF9090B8;

  return FilterResolver.resolveParameter(parameter:suggestion:interaction:environment:)(a1, a2, a3, a4);
}

uint64_t DelegatingResolver.__allocating_init(resolverTypeOperand:delegationType:delegation:params:valuePostProcessor:dependentValuesUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_3_30();
  v17 = swift_allocObject();
  DelegatingResolver.init(resolverTypeOperand:delegationType:delegation:params:valuePostProcessor:dependentValuesUpdate:)(v15, v14, v13, v12, v11, v10, a7, a8, a9, a10);
  return v17;
}

uint64_t DelegatingResolver.resolverTypeOperand.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t DelegatingResolver.delegationType.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_1BF9A42A4()
{
  OUTLINED_FUNCTION_7();
  sub_1BF9B4988();
  OUTLINED_FUNCTION_4();

  return v0();
}

uint64_t DelegatingResolver.init(resolverTypeOperand:delegationType:delegation:params:valuePostProcessor:dependentValuesUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_3_30();
  swift_defaultActor_initialize();
  *(v10 + 176) = 0;
  *(v10 + 160) = 0u;
  *(v10 + 144) = 0u;
  *(v10 + 112) = v16;
  *(v10 + 120) = v15;
  *(v10 + 128) = v14;
  *(v10 + 136) = v13;
  swift_beginAccess();
  sub_1BF9A43CC(v12, v10 + 144);
  swift_endAccess();
  *(v10 + 184) = v11;
  *(v10 + 192) = a7;
  *(v10 + 200) = a8;
  *(v10 + 208) = a9;
  *(v10 + 216) = a10;
  return v10;
}

uint64_t sub_1BF9A43CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6A8, &qword_1BF9C9030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF9A443C(uint64_t a1, uint64_t a2)
{
  *(v3 + 296) = a2;
  *(v3 + 304) = v2;
  return OUTLINED_FUNCTION_1_18(sub_1BF9A4458, v2);
}

uint64_t sub_1BF9A4458()
{
  v61 = v0;
  v1 = *(v0 + 304);
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = v2 == 0x76697463616F7270 && v3 == 0xE900000000000065;
  if (v4 || (v5 = *(v1 + 128), v6 = *(v1 + 136), (sub_1BF9B56D8() & 1) != 0))
  {
    v7 = *(v0 + 296);
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v9 + 32))(v59, v8, v9);
    v11 = v59[0];
    v10 = v59[1];
    v13 = v59[2];
    v12 = v59[3];
    v14 = v60;
    if (v60 == 255)
    {
      v33 = OUTLINED_FUNCTION_0_31();
      sub_1BF969CB0(v33, v34, v35, v36, 255);
      OUTLINED_FUNCTION_6_21();
    }

    else
    {
      *(v0 + 96) = 5;
      *(v0 + 104) = 0;
      *(v0 + 112) = 0;
      *(v0 + 120) = 0;
      *(v0 + 128) = 2;
      *(v0 + 136) = v11;
      *(v0 + 144) = v10;
      *(v0 + 152) = v13;
      *(v0 + 160) = v12;
      *(v0 + 168) = v14;
      v15 = OUTLINED_FUNCTION_0_31();
      sub_1BF8E6A24(v15, v16, v17, v18, v14);
      v19 = sub_1BF8CA80C((v0 + 136), (v0 + 96));
      v20 = OUTLINED_FUNCTION_0_31();
      sub_1BF969CB0(v20, v21, v22, v23, v14);
      OUTLINED_FUNCTION_6_21();
      v24 = OUTLINED_FUNCTION_0_31();
      sub_1BF969CB0(v24, v25, v26, v27, v14);
      if (v19)
      {
        if (qword_1EDBF0898 != -1)
        {
          OUTLINED_FUNCTION_3_29();
        }

        v28 = sub_1BF9B47C8();
        __swift_project_value_buffer(v28, qword_1EDBF08A0);
        v29 = sub_1BF9B47A8();
        v30 = sub_1BF9B5038();
        if (!os_log_type_enabled(v29, v30))
        {
          goto LABEL_22;
        }

        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1BF8B8000, v29, v30, "Not running ProactiveResolver for siriAutoComplete deliveryVehicle.", v31, 2u);
        v32 = v31;
LABEL_21:
        MEMORY[0x1BFB5F320](v32, -1, -1);
LABEL_22:

        OUTLINED_FUNCTION_4();
        v57 = MEMORY[0x1E69E7CC0];

        return v56(v57);
      }
    }
  }

  v37 = *(v0 + 304);
  swift_beginAccess();
  sub_1BF9A4C48(v37 + 144, v0 + 56);
  if (!*(v0 + 80))
  {
    sub_1BF8EE3F8(v0 + 56, &qword_1EBDEA6A8, &qword_1BF9C9030);
    if (qword_1EDBF0898 != -1)
    {
      OUTLINED_FUNCTION_3_29();
    }

    v50 = *(v0 + 304);
    v51 = sub_1BF9B47C8();
    __swift_project_value_buffer(v51, qword_1EDBF08A0);

    v29 = sub_1BF9B47A8();
    v52 = sub_1BF9B5048();

    if (!os_log_type_enabled(v29, v52))
    {
      goto LABEL_22;
    }

    v53 = *(v0 + 304);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v59[0] = v55;
    *v54 = 136315394;
    *(v54 + 4) = sub_1BF8DE810(*(v53 + 112), *(v53 + 120), v59);
    *(v54 + 12) = 2080;
    *(v54 + 14) = sub_1BF8DE810(v2, v3, v59);
    _os_log_impl(&dword_1BF8B8000, v29, v52, "No delegation set. Unable to resolve parameter for %s using %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5F320](v55, -1, -1);
    v32 = v54;
    goto LABEL_21;
  }

  v38 = *(v0 + 296);
  v39 = *(v0 + 304);
  sub_1BF8C2C9C((v0 + 56), v0 + 16);
  v40 = *(v39 + 208);
  v41 = *(v39 + 216);
  v42 = v38[3];
  v43 = v38[4];
  __swift_project_boxed_opaque_existential_1(v38, v42);
  v44 = (*(v43 + 8))(v42, v43);
  v46 = v45;
  *(v0 + 312) = v44;
  v58 = (v40 + *v40);
  v47 = v40[1];
  v48 = swift_task_alloc();
  *(v0 + 320) = v48;
  *v48 = v0;
  v48[1] = sub_1BF9A4900;

  return v58(v44, v46);
}

uint64_t sub_1BF9A4900()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 304);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v7 + 328) = v6;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1BF9A4A28, v3, 0);
}

uint64_t sub_1BF9A4A28()
{
  v21 = v0;
  v1 = *(v0 + 328);
  v2 = *(*(v0 + 304) + 184);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v2;
  sub_1BF969A2C(v1, sub_1BF9A4FA0, 0, isUniquelyReferenced_nonNull_native, &v20);
  v4 = v20;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  v7 = (*(v6 + 8))(v4, v5, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v0 + 304);
    v10 = *(v9 + 192);
    v11 = *(v9 + 200);
    v12 = v7 + 32;
    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1BF8C187C(v12, v0 + 176);
      v10(v0 + 176);
      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      if (*(v0 + 264))
      {
        sub_1BF8C192C((v0 + 240), (v0 + 208));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = *(v13 + 16);
          sub_1BF8DCEAC();
          v13 = v16;
        }

        v14 = *(v13 + 16);
        if (v14 >= *(v13 + 24) >> 1)
        {
          sub_1BF8DCEAC();
          v13 = v17;
        }

        *(v13 + 16) = v14 + 1;
        sub_1BF8C192C((v0 + 208), (v13 + 32 * v14 + 32));
      }

      else
      {
        sub_1BF8EE3F8(v0 + 240, &qword_1EBDE9208, &unk_1BF9C2A50);
      }

      v12 += 32;
      --v8;
    }

    while (v8);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4();

  return v18(v13);
}

uint64_t sub_1BF9A4C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6A8, &qword_1BF9C9030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF9A4CB8(uint64_t a1)
{
  sub_1BF8D2004(a1, v3);
  swift_beginAccess();
  sub_1BF9A43CC(v3, v1 + 144);
  return swift_endAccess();
}

void *DelegatingResolver.deinit()
{
  v1 = v0[15];

  v2 = v0[17];

  sub_1BF8EE3F8((v0 + 18), &qword_1EBDEA6A8, &qword_1BF9C9030);
  v3 = v0[23];

  v4 = v0[25];

  v5 = v0[27];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DelegatingResolver.__deallocating_deinit()
{
  DelegatingResolver.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BF9A4DDC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BF9A4E74;

  return sub_1BF9A443C(v6, a2);
}

uint64_t sub_1BF9A4E74()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  OUTLINED_FUNCTION_4();

  return v6(v2);
}

uint64_t sub_1BF9A4F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF8C187C(a4, a1);

  return a2;
}

uint64_t sub_1BF9A4FA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF9A4F60((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t dispatch thunk of DelegatingResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 168);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1BF9A4E74;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_1BF9A51A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1BF9A51E4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1BF8C187C(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_1BF8C192C(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return sub_1BF8EE3F8(v19, &unk_1EBDE9600, &qword_1BF9C9160);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return sub_1BF969CB0(5, 0, 0, 0, 2);
}

void sub_1BF9A5358(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v31 = a3;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v12 = __clz(__rbit64(v7)) | (v9 << 6);
      v13 = (*(v31 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v31 + 56) + 8 * v12);
      v30[0] = *v13;
      v30[1] = v14;
      v30[2] = v15;

      a1(&v26, v30);
      if (v3)
      {
        break;
      }

      v16 = v27;
      if (v27)
      {
        v24 = v28;
        v22 = v26;
        v23 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = *(v10 + 16);
          sub_1BF8DD964();
          v10 = v20;
        }

        v17 = *(v10 + 16);
        if (v17 >= *(v10 + 24) >> 1)
        {
          sub_1BF8DD964();
          v10 = v21;
        }

        *(v10 + 16) = v17 + 1;
        v18 = (v10 + 32 * v17);
        v18[4] = v22;
        v18[5] = v16;
        v18[6] = v24;
        v18[7] = v23;
      }

      v7 &= v7 - 1;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return;
      }

      v7 = *(v4 + 8 * v11);
      ++v9;
      if (v7)
      {
        v9 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BF9A554C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92B0, &qword_1BF9C9210);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF9A6934(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t SimpleActionKeyMapper.__allocating_init(actionId:loggingParamsIdTransformer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  OUTLINED_FUNCTION_13(v11);
  (*(v12 + 32))(v9 + v10, a3);
  return v9;
}

uint64_t sub_1BF9A569C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  return SimpleActionKeyMapper.map(suggestion:resolvedParams:associatedAppId:)(a1, a2, v4, a3);
}

uint64_t ActionKeyMapper.map(suggestion:resolvedParams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  return (*(a4 + 8))(a1, a2, v5, a3);
}

uint64_t static ActionKeyMappers.simpleActionKeyMapper(actionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  sub_1BF9B4598();
  v11 = type metadata accessor for SimpleActionKeyMapper();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v7 + 32))(v14 + OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer, v10, v6);
  a3[3] = v11;
  a3[4] = &protocol witness table for SimpleActionKeyMapper;
  *a3 = v14;
}

uint64_t sub_1BF9A586C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t SimpleActionKeyMapper.init(actionId:loggingParamsIdTransformer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 32))(v3 + v5, a3);
  return v3;
}

uint64_t type metadata accessor for SimpleActionKeyMapper()
{
  result = qword_1EDBF25D0;
  if (!qword_1EDBF25D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SimpleActionKeyMapper.map(suggestion:resolvedParams:associatedAppId:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  v9 = *a3;
  v8 = a3[1];
  v10 = *(a3 + 16);
  v11 = sub_1BF9A5A7C(a1, a2, v4 + OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer);
  if (v4[3])
  {
    v12 = v4[2];
    v13 = v4[3];
  }

  else
  {
    v12 = *a1;
    v13 = a1[1];
  }

  MEMORY[0x1BFB5DE90](v12, v13);

  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = v11;

  v14 = sub_1BF8C482C(0, 0xE000000000000000, v11);
  v16 = v15;

  *(a4 + 24) = v14;
  *(a4 + 32) = v16;
  *(a4 + 40) = v9;
  *(a4 + 48) = v8;
  *(a4 + 56) = v10;
  return result;
}

uint64_t sub_1BF9A5A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v7[2] = a2;
  v7[3] = a3;
  sub_1BF9A5358(sub_1BF9A6914, v7, v3);
  v5 = sub_1BF9871F4(v4);

  return sub_1BF9A554C(v5);
}

void sub_1BF9A5AF4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];

  sub_1BF925088(v7, v8, a2, v35);
  sub_1BF8DFB90(v35, &v32, &qword_1EBDE9208, &unk_1BF9C2A50);
  if (!v33)
  {
    sub_1BF8DFBF0(v35, &qword_1EBDE9208, &unk_1BF9C2A50);

    v10 = &v32;
LABEL_5:
    sub_1BF8DFBF0(v10, &qword_1EBDE9208, &unk_1BF9C2A50);
    goto LABEL_14;
  }

  sub_1BF8C192C(&v32, v34);
  sub_1BF8C187C(v34, &v32);
  type metadata accessor for ResolvableParameter();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_1BF8DFBF0(v35, &qword_1EBDE9208, &unk_1BF9C2A50);

LABEL_14:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  v11 = sub_1BF9B45A8();
  v11(&v32, v34);
  if (v4)
  {

    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_1BF8DFBF0(v35, &qword_1EBDE9208, &unk_1BF9C2A50);
    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v13 = sub_1BF9B47C8();
    __swift_project_value_buffer(v13, qword_1EDBF5570);

    v14 = v4;
    v15 = sub_1BF9B47A8();
    v16 = sub_1BF9B5048();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v36 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      *&v35[0] = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_1BF8DE810(v7, v8, v35);
      *(v18 + 12) = 2080;
      *&v34[0] = v4;
      v20 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
      v21 = sub_1BF9B4B08();
      v23 = sub_1BF8DE810(v21, v22, v35);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_1BF8B8000, v15, v16, "Unable to transform param: %s to logging equivalent: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5F320](v19, -1, -1);
      v24 = v18;
      a3 = v36;
      MEMORY[0x1BFB5F320](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  v12 = sub_1BF9B45A8();
  *&v31[0] = v7;
  *(&v31[0] + 1) = v8;
  v12(&v29, v31);

  v25 = v29;
  sub_1BF8DFB90(&v32, &v29, &qword_1EBDE9208, &unk_1BF9C2A50);
  if (!v30)
  {

    sub_1BF8DFBF0(&v32, &qword_1EBDE9208, &unk_1BF9C2A50);
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_1BF8DFBF0(v35, &qword_1EBDE9208, &unk_1BF9C2A50);
    v10 = &v29;
    goto LABEL_5;
  }

  sub_1BF8C192C(&v29, v31);
  if (!*(&v25 + 1))
  {

    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_1BF8DFBF0(&v32, &qword_1EBDE9208, &unk_1BF9C2A50);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v10 = v35;
    goto LABEL_5;
  }

  sub_1BF9A604C(v31, &v29);
  v26 = sub_1BF9B4B08();
  v28 = v27;

  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_1BF8DFBF0(&v32, &qword_1EBDE9208, &unk_1BF9C2A50);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_1BF8DFBF0(v35, &qword_1EBDE9208, &unk_1BF9C2A50);
  *a3 = v25;
  *(a3 + 16) = v26;
  *(a3 + 24) = v28;
}

_OWORD *sub_1BF9A604C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = sub_1BF9B5808();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6B0, &qword_1BF9C9218);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6B8, &qword_1BF9C9220);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v36[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v36[-v20];
  v22 = sub_1BF9B5838();
  v40 = *(v22 - 8);
  v41 = v22;
  v23 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v36[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(&v46 + 1) = MEMORY[0x1E69E7CA0] + 8;
  *&v45 = swift_allocObject();
  v39 = a1;
  sub_1BF8C187C(a1, v45 + 16);
  sub_1BF9B57F8();
  sub_1BF9B5818();
  (*(v4 + 104))(v19, *MEMORY[0x1E69E75C0], v3);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v3);
  v26 = *(v8 + 56);
  sub_1BF8DFB90(v21, v11, &qword_1EBDEA6B8, &qword_1BF9C9220);
  sub_1BF8DFB90(v19, v11 + v26, &qword_1EBDEA6B8, &qword_1BF9C9220);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    sub_1BF8DFBF0(v19, &qword_1EBDEA6B8, &qword_1BF9C9220);
    sub_1BF8DFBF0(v21, &qword_1EBDEA6B8, &qword_1BF9C9220);
    if (__swift_getEnumTagSinglePayload(v11 + v26, 1, v3) == 1)
    {
      sub_1BF8DFBF0(v11, &qword_1EBDEA6B8, &qword_1BF9C9220);
LABEL_8:
      v32 = sub_1BF9B5828();
      sub_1BF8F04F8(v32, &v45);

      if (*(&v47 + 1))
      {
        (*(v40 + 8))(v25, v41);
        v43 = v45;
        v44[0] = v46;
        v44[1] = v47;

        return sub_1BF8C192C(v44, v42);
      }

      v27 = &unk_1EBDEA6C0;
      v28 = &unk_1BF9C9228;
      v29 = &v45;
      goto LABEL_11;
    }

LABEL_6:
    v27 = &qword_1EBDEA6B0;
    v28 = &qword_1BF9C9218;
    v29 = v11;
LABEL_11:
    sub_1BF8DFBF0(v29, v27, v28);
    goto LABEL_12;
  }

  sub_1BF8DFB90(v11, v16, &qword_1EBDEA6B8, &qword_1BF9C9220);
  if (__swift_getEnumTagSinglePayload(v11 + v26, 1, v3) == 1)
  {
    sub_1BF8DFBF0(v19, &qword_1EBDEA6B8, &qword_1BF9C9220);
    sub_1BF8DFBF0(v21, &qword_1EBDEA6B8, &qword_1BF9C9220);
    (*(v4 + 8))(v16, v3);
    goto LABEL_6;
  }

  v30 = v38;
  (*(v4 + 32))(v38, v11 + v26, v3);
  v37 = sub_1BF9B4A88();
  v31 = *(v4 + 8);
  v31(v30, v3);
  sub_1BF8DFBF0(v19, &qword_1EBDEA6B8, &qword_1BF9C9220);
  sub_1BF8DFBF0(v21, &qword_1EBDEA6B8, &qword_1BF9C9220);
  v31(v16, v3);
  sub_1BF8DFBF0(v11, &qword_1EBDEA6B8, &qword_1BF9C9220);
  if (v37)
  {
    goto LABEL_8;
  }

LABEL_12:
  v34 = v42;
  v42[3] = MEMORY[0x1E69E7CA0] + 8;
  v35 = swift_allocObject();
  *v34 = v35;
  sub_1BF8C187C(v39, v35 + 16);
  return (*(v40 + 8))(v25, v41);
}

uint64_t SimpleActionKeyMapper.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t SimpleActionKeyMapper.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

_BYTE *storeEnumTagSinglePayload for ActionKeyMappers(_BYTE *result, int a2, int a3)
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

void sub_1BF9A67E0()
{
  sub_1BF9A68A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1BF9A68A8()
{
  if (!qword_1EDBF3F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE96F8, &qword_1BF9BF440);
    v0 = sub_1BF9B45B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF3F50);
    }
  }
}

void sub_1BF9A6914(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  sub_1BF9A5AF4(a1, v2[2], a2);
}

uint64_t sub_1BF9A6934(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v32 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v32 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v34 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_1BF8C2E64(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2F0, &unk_1BF9C5570);
        sub_1BF9B53B8();
      }
    }

    else
    {
      sub_1BF95BE84(v15);
      v17 = *a3;
      v18 = sub_1BF8C2E64(v7, v6);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {
      v21 = (v20[7] + 16 * v12);
      v23 = *v21;
      v22 = v21[1];

      v24 = (v20[7] + 16 * v12);
      v25 = v24[1];
      *v24 = v23;
      v24[1] = v22;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v26 = (v20[6] + 16 * v12);
      *v26 = v7;
      v26[1] = v6;
      v27 = (v20[7] + 16 * v12);
      *v27 = v8;
      v27[1] = v9;
      v28 = v20[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_18;
      }

      v20[2] = v30;
    }

    v4 = v34 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF9A6B24()
{
  sub_1BF9B4B48();
}

uint64_t SuggestionGroup.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  sub_1BF9B4B48();
}

uint64_t sub_1BF9A6C64(unsigned __int8 a1, char a2)
{
  v2 = 0x6E69616D6F44;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E69616D6F44;
  switch(v4)
  {
    case 1:
      v5 = 0x6D6574737953;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 7368769;
      break;
    case 3:
      v5 = 0x656369766544;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1701736270;
      break;
    case 5:
      v5 = 0x7261506472696854;
      v3 = 0xEA00000000007974;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1819242324;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6D6574737953;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 7368769;
      break;
    case 3:
      v2 = 0x656369766544;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1701736270;
      break;
    case 5:
      v2 = 0x7261506472696854;
      v6 = 0xEA00000000007974;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1819242324;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BF9B56D8();
  }

  return v8 & 1;
}

uint64_t static SuggestionGroup.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = v6(a3, a4);
  v9 = v8;
  if (v7 == v6(a3, a4) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1BF9B56D8();
  }

  return v12 & 1;
}

Swift::String __swiftcall CoreSuggestionGroups.getName()()
{
  v1 = 0xE600000000000000;
  v2 = 0x6E69616D6F44;
  switch(*v0)
  {
    case 1:
      v2 = 0x6D6574737953;
      break;
    case 2:
      v1 = 0xE300000000000000;
      v2 = 7368769;
      break;
    case 3:
      v2 = 0x656369766544;
      break;
    case 4:
      v1 = 0xE400000000000000;
      v2 = 1701736270;
      break;
    case 5:
      v1 = 0xEA00000000007974;
      v2 = 0x7261506472696854;
      break;
    case 6:
      v1 = 0xE400000000000000;
      v2 = 1819242324;
      break;
    default:
      break;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1BF9A6F5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7368801 && a2 == 0xE300000000000000;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
        if (v8 || (sub_1BF9B56D8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701736302 && a2 == 0xE400000000000000;
          if (v9 || (sub_1BF9B56D8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7261506472696874 && a2 == 0xEA00000000007974;
            if (v10 || (sub_1BF9B56D8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1819242356 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1BF9B56D8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BF9A7198(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 0x6D6574737973;
      break;
    case 2:
      result = 7368801;
      break;
    case 3:
      result = 0x656369766564;
      break;
    case 4:
      result = 1701736302;
      break;
    case 5:
      result = 0x7261506472696874;
      break;
    case 6:
      result = 1819242356;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF9A723C(uint64_t a1)
{
  v2 = sub_1BF9A7DC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A7278(uint64_t a1)
{
  v2 = sub_1BF9A7DC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A72D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9A6F5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9A72FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF9A7190();
  *a1 = result;
  return result;
}

uint64_t sub_1BF9A7324(uint64_t a1)
{
  v2 = sub_1BF9A7C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A7360(uint64_t a1)
{
  v2 = sub_1BF9A7C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A739C(uint64_t a1)
{
  v2 = sub_1BF9A7D70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A73D8(uint64_t a1)
{
  v2 = sub_1BF9A7D70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A7414(uint64_t a1)
{
  v2 = sub_1BF9A7E6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A7450(uint64_t a1)
{
  v2 = sub_1BF9A7E6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A748C(uint64_t a1)
{
  v2 = sub_1BF9A7D1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A74C8(uint64_t a1)
{
  v2 = sub_1BF9A7D1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A7504(uint64_t a1)
{
  v2 = sub_1BF9A7E18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A7540(uint64_t a1)
{
  v2 = sub_1BF9A7E18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A757C(uint64_t a1)
{
  v2 = sub_1BF9A7CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A75B8(uint64_t a1)
{
  v2 = sub_1BF9A7CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9A75F4(uint64_t a1)
{
  v2 = sub_1BF9A7C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9A7630(uint64_t a1)
{
  v2 = sub_1BF9A7C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreSuggestionGroups.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6C8, &qword_1BF9C9230);
  v5 = OUTLINED_FUNCTION_1(v4);
  v85 = v6;
  v86 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v84 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6D0, &qword_1BF9C9238);
  v12 = OUTLINED_FUNCTION_1(v11);
  v82 = v13;
  v83 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v81 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6D8, &qword_1BF9C9240);
  v19 = OUTLINED_FUNCTION_1(v18);
  v79 = v20;
  v80 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12();
  v78 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6E0, &qword_1BF9C9248);
  v26 = OUTLINED_FUNCTION_1(v25);
  v76 = v27;
  v77 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_12();
  v75 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6E8, &qword_1BF9C9250);
  v33 = OUTLINED_FUNCTION_1(v32);
  v73 = v34;
  v74 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_12();
  v72 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6F0, &qword_1BF9C9258);
  v40 = OUTLINED_FUNCTION_1(v39);
  v70 = v41;
  v71 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v68 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA6F8, &qword_1BF9C9260);
  OUTLINED_FUNCTION_1(v47);
  v69 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v68 - v52;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA700, &qword_1BF9C9268);
  OUTLINED_FUNCTION_1(v87);
  v55 = v54;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v68 - v59;
  v61 = *v2;
  v62 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9A7C20();
  sub_1BF9B5898();
  v63 = (v55 + 8);
  switch(v61)
  {
    case 1:
      v89 = 1;
      sub_1BF9A7E18();
      OUTLINED_FUNCTION_2_32();
      v67 = v70;
      v66 = v71;
      goto LABEL_9;
    case 2:
      v90 = 2;
      sub_1BF9A7DC4();
      v46 = v72;
      OUTLINED_FUNCTION_2_32();
      v67 = v73;
      v66 = v74;
      goto LABEL_9;
    case 3:
      v91 = 3;
      sub_1BF9A7D70();
      v46 = v75;
      OUTLINED_FUNCTION_2_32();
      v67 = v76;
      v66 = v77;
      goto LABEL_9;
    case 4:
      v92 = 4;
      sub_1BF9A7D1C();
      v46 = v78;
      OUTLINED_FUNCTION_2_32();
      v67 = v79;
      v66 = v80;
      goto LABEL_9;
    case 5:
      v93 = 5;
      sub_1BF9A7CC8();
      v46 = v81;
      OUTLINED_FUNCTION_2_32();
      v67 = v82;
      v66 = v83;
      goto LABEL_9;
    case 6:
      v94 = 6;
      sub_1BF9A7C74();
      v46 = v84;
      OUTLINED_FUNCTION_2_32();
      v67 = v85;
      v66 = v86;
LABEL_9:
      (*(v67 + 8))(v46, v66);
      result = (*v63)(v60, v47);
      break;
    default:
      v88 = 0;
      sub_1BF9A7E6C();
      v64 = v87;
      sub_1BF9B5598();
      (*(v69 + 8))(v53, v47);
      result = (*v63)(v60, v64);
      break;
  }

  return result;
}

unint64_t sub_1BF9A7C20()
{
  result = qword_1EDBF4F78[0];
  if (!qword_1EDBF4F78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF4F78);
  }

  return result;
}

unint64_t sub_1BF9A7C74()
{
  result = qword_1EBDEA708;
  if (!qword_1EBDEA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA708);
  }

  return result;
}

unint64_t sub_1BF9A7CC8()
{
  result = qword_1EBDEA710;
  if (!qword_1EBDEA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA710);
  }

  return result;
}

unint64_t sub_1BF9A7D1C()
{
  result = qword_1EDBF4F50;
  if (!qword_1EDBF4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F50);
  }

  return result;
}

unint64_t sub_1BF9A7D70()
{
  result = qword_1EBDEA718;
  if (!qword_1EBDEA718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA718);
  }

  return result;
}

unint64_t sub_1BF9A7DC4()
{
  result = qword_1EBDEA720;
  if (!qword_1EBDEA720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA720);
  }

  return result;
}

unint64_t sub_1BF9A7E18()
{
  result = qword_1EDBF4218;
  if (!qword_1EDBF4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4218);
  }

  return result;
}

unint64_t sub_1BF9A7E6C()
{
  result = qword_1EBDEA728;
  if (!qword_1EBDEA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA728);
  }

  return result;
}

uint64_t CoreSuggestionGroups.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  sub_1BF9A6B24();
  return sub_1BF9B57E8();
}

uint64_t CoreSuggestionGroups.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA730, &qword_1BF9C9270);
  v102 = OUTLINED_FUNCTION_1(v3);
  v103 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v109 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA738, &qword_1BF9C9278);
  v100 = OUTLINED_FUNCTION_1(v9);
  v101 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v108 = v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA740, &qword_1BF9C9280);
  OUTLINED_FUNCTION_1(v94);
  v99 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v105 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA748, &qword_1BF9C9288);
  v21 = OUTLINED_FUNCTION_1(v20);
  v97 = v22;
  v98 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_12();
  v104 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA750, &qword_1BF9C9290);
  v28 = OUTLINED_FUNCTION_1(v27);
  v95 = v29;
  v96 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_12();
  v107 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA758, &qword_1BF9C9298);
  v35 = OUTLINED_FUNCTION_1(v34);
  v92 = v36;
  v93 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v86 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA760, &qword_1BF9C92A0);
  OUTLINED_FUNCTION_1(v42);
  v91 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v86 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA768, &unk_1BF9C92A8);
  OUTLINED_FUNCTION_1(v49);
  v51 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v54);
  v56 = v86 - v55;
  v57 = a1[3];
  v58 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v57);
  sub_1BF9A7C20();
  v59 = v111;
  sub_1BF9B5868();
  if (v59)
  {
    return __swift_destroy_boxed_opaque_existential_1(v110);
  }

  v89 = v48;
  v88 = v42;
  v90 = v41;
  v61 = v107;
  v60 = v108;
  v62 = v109;
  v111 = v49;
  v63 = sub_1BF9B5568();
  result = sub_1BF8D21BC(v63, 0);
  if (v66 == v67 >> 1)
  {
    goto LABEL_7;
  }

  v86[1] = 0;
  if (v66 >= (v67 >> 1))
  {
    __break(1u);
    return result;
  }

  v87 = *(v65 + v66);
  sub_1BF8D21AC(v66 + 1);
  v69 = v68;
  v71 = v70;
  swift_unknownObjectRelease();
  if (v69 != v71 >> 1)
  {
LABEL_7:
    v76 = v56;
    v77 = sub_1BF9B5308();
    swift_allocError();
    v79 = v78;
    v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400) + 48);
    *v79 = &type metadata for CoreSuggestionGroups;
    v81 = v111;
    sub_1BF9B54B8();
    sub_1BF9B52F8();
    (*(*(v77 - 8) + 104))(v79, *MEMORY[0x1E69E6AF8], v77);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v76, v81);
    return __swift_destroy_boxed_opaque_existential_1(v110);
  }

  v72 = v51;
  v73 = v106;
  v74 = v111;
  switch(v87)
  {
    case 1:
      v113 = 1;
      sub_1BF9A7E18();
      v62 = v90;
      OUTLINED_FUNCTION_1_30();
      swift_unknownObjectRelease();
      v84 = v92;
      v83 = v93;
      goto LABEL_15;
    case 2:
      v114 = 2;
      sub_1BF9A7DC4();
      OUTLINED_FUNCTION_1_30();
      swift_unknownObjectRelease();
      (*(v95 + 8))(v61, v96);
      break;
    case 3:
      v115 = 3;
      sub_1BF9A7D70();
      v62 = v104;
      OUTLINED_FUNCTION_1_30();
      swift_unknownObjectRelease();
      v84 = v97;
      v83 = v98;
      goto LABEL_15;
    case 4:
      v116 = 4;
      sub_1BF9A7D1C();
      v82 = v105;
      OUTLINED_FUNCTION_1_30();
      swift_unknownObjectRelease();
      (*(v99 + 8))(v82, v94);
      break;
    case 5:
      v117 = 5;
      sub_1BF9A7CC8();
      OUTLINED_FUNCTION_1_30();
      swift_unknownObjectRelease();
      (*(v101 + 8))(v60, v100);
      break;
    case 6:
      v118 = 6;
      sub_1BF9A7C74();
      OUTLINED_FUNCTION_1_30();
      swift_unknownObjectRelease();
      v83 = v102;
      v84 = v103;
LABEL_15:
      (*(v84 + 8))(v62, v83);
      break;
    default:
      v112 = 0;
      sub_1BF9A7E6C();
      v75 = v89;
      OUTLINED_FUNCTION_1_30();
      swift_unknownObjectRelease();
      (*(v91 + 8))(v75, v88);
      break;
  }

  (*(v72 + 8))(v56, v74);
  v85 = v110;
  *v73 = v87;
  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t sub_1BF9A875C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

unint64_t sub_1BF9A87F0()
{
  result = qword_1EBDEA770;
  if (!qword_1EBDEA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA770);
  }

  return result;
}

unint64_t sub_1BF9A8844(uint64_t a1)
{
  *(a1 + 8) = sub_1BF9A8874();
  result = sub_1BF9A88C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BF9A8874()
{
  result = qword_1EDBF4EE0;
  if (!qword_1EDBF4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EE0);
  }

  return result;
}

unint64_t sub_1BF9A88C8()
{
  result = qword_1EDBF4EE8;
  if (!qword_1EDBF4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EE8);
  }

  return result;
}

unint64_t sub_1BF9A8920()
{
  result = qword_1EBDEA778;
  if (!qword_1EBDEA778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDEA780, &qword_1BF9C9340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA778);
  }

  return result;
}

uint64_t sub_1BF9A89A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1BF9A8A30(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF9A8B80()
{
  result = qword_1EBDEA788;
  if (!qword_1EBDEA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA788);
  }

  return result;
}

unint64_t sub_1BF9A8BD8()
{
  result = qword_1EDBF4F10;
  if (!qword_1EDBF4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F10);
  }

  return result;
}

unint64_t sub_1BF9A8C30()
{
  result = qword_1EDBF4F18;
  if (!qword_1EDBF4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F18);
  }

  return result;
}

unint64_t sub_1BF9A8C88()
{
  result = qword_1EDBF4F00;
  if (!qword_1EDBF4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F00);
  }

  return result;
}

unint64_t sub_1BF9A8CE0()
{
  result = qword_1EDBF4F08;
  if (!qword_1EDBF4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F08);
  }

  return result;
}

unint64_t sub_1BF9A8D38()
{
  result = qword_1EDBF4F58;
  if (!qword_1EDBF4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F58);
  }

  return result;
}

unint64_t sub_1BF9A8D90()
{
  result = qword_1EDBF4F60;
  if (!qword_1EDBF4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F60);
  }

  return result;
}

unint64_t sub_1BF9A8DE8()
{
  result = qword_1EDBF4F20;
  if (!qword_1EDBF4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F20);
  }

  return result;
}

unint64_t sub_1BF9A8E40()
{
  result = qword_1EDBF4F28;
  if (!qword_1EDBF4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F28);
  }

  return result;
}

unint64_t sub_1BF9A8E98()
{
  result = qword_1EDBF4F40;
  if (!qword_1EDBF4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F40);
  }

  return result;
}

unint64_t sub_1BF9A8EF0()
{
  result = qword_1EDBF4F48;
  if (!qword_1EDBF4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F48);
  }

  return result;
}

unint64_t sub_1BF9A8F48()
{
  result = qword_1EDBF4EF0;
  if (!qword_1EDBF4EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EF0);
  }

  return result;
}

unint64_t sub_1BF9A8FA0()
{
  result = qword_1EDBF4EF8;
  if (!qword_1EDBF4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EF8);
  }

  return result;
}

unint64_t sub_1BF9A8FF8()
{
  result = qword_1EDBF4F30;
  if (!qword_1EDBF4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F30);
  }

  return result;
}

unint64_t sub_1BF9A9050()
{
  result = qword_1EDBF4F38;
  if (!qword_1EDBF4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F38);
  }

  return result;
}

unint64_t sub_1BF9A90A8()
{
  result = qword_1EDBF4F68;
  if (!qword_1EDBF4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F68);
  }

  return result;
}

unint64_t sub_1BF9A9100()
{
  result = qword_1EDBF4F70;
  if (!qword_1EDBF4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4F70);
  }

  return result;
}

void sub_1BF9A915C(void (*a1)(void **, uint64_t *)@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  if (a5 == -1)
  {
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = -1;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = a4;
    v11 = a5;
    sub_1BF90DA94(a2, a3, a4, a5);
    a1(&v8, &v7);
    sub_1BF90D8B8(v8, v9, v10, v11);
  }
}

uint64_t sub_1BF9A9210(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BF9B4B78();
    v1 = sub_1BF9B4C58();

    return v1;
  }

  return result;
}

uint64_t static SuggestionTransformers.passthroughParameterForLogging()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_7_24();

  return sub_1BF9B4598();
}

uint64_t static SuggestionTransformers.removeParameterFromLogging()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_1_31();

  return sub_1BF9B4598();
}

uint64_t static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_1_8();
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v2;
  v4[4] = v1;
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
  OUTLINED_FUNCTION_0_32();
  v3[4] = sub_1BF991690(v5, &qword_1EBDEA1C0, qword_1BF9C4690);
  *v3 = &unk_1BF9C9A60;
  v3[1] = v4;
}

uint64_t static SuggestionTransformers.ignoreIntentValue()@<X0>(void *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
  OUTLINED_FUNCTION_0_32();
  result = sub_1BF991690(v2, &qword_1EBDEA1C0, qword_1BF9C4690);
  a1[4] = result;
  *a1 = &unk_1BF9C9A70;
  a1[1] = 0;
  return result;
}

uint64_t ResolvableParameter.typeIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ResolvableParameter.loggingKeyTransformer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void ResolvableParameter.__allocating_init(typeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_65_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_1(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_1_31();
  sub_1BF9B4598();
  v36 = *(v23 + 48);
  v37 = *(v23 + 52);
  v38 = swift_allocObject();
  v39 = (v38 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer);
  v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
  OUTLINED_FUNCTION_0_32();
  v39[4] = sub_1BF991690(v40, &qword_1EBDEA1C0, qword_1BF9C4690);
  *v39 = &unk_1BF9C9A70;
  v39[1] = 0;
  *(v38 + 16) = v27;
  *(v38 + 24) = v25;
  *(v38 + 32) = 1;
  (*(v30 + 32))(v38 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer, v35, v28);
  OUTLINED_FUNCTION_64();
}

void ResolvableParameter.__allocating_init(typeIdentifier:required:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_65_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_1(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_1_31();
  sub_1BF9B4598();
  v36 = OUTLINED_FUNCTION_20_21();
  v37 = (v36 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer);
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
  OUTLINED_FUNCTION_0_32();
  v37[4] = sub_1BF991690(v38, &qword_1EBDEA1C0, qword_1BF9C4690);
  *v37 = &unk_1BF9C9A70;
  v37[1] = 0;
  *(v36 + 16) = v27;
  *(v36 + 24) = v25;
  *(v36 + 32) = v23;
  (*(v30 + 32))(v36 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer, v35, v28);
  OUTLINED_FUNCTION_64();
}

uint64_t ResolvableParameter.__allocating_init(typeIdentifier:required:loggingKeyTransformer:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_92();
  v9 = (v8 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer);
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
  OUTLINED_FUNCTION_0_32();
  v9[4] = sub_1BF991690(v10, &qword_1EBDEA1C0, qword_1BF9C4690);
  *v9 = &unk_1BF9C9A70;
  v9[1] = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v11 = OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_13(v12);
  (*(v13 + 32))(v8 + v11, a4);
  return v8;
}

void ResolvableParameter.__allocating_init(typeIdentifier:required:intentTransformer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_65_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA790, &qword_1BF9C9A80);
  OUTLINED_FUNCTION_1(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_72(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_1_31();
  sub_1BF9B4598();
  (*(v26 + 16))(v31, v23, v24);
  OUTLINED_FUNCTION_20_21();
  ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:intentTransformer:)();
  (*(v26 + 8))(v23, v24);
  OUTLINED_FUNCTION_64();
}

uint64_t ResolvableParameter.__allocating_init(typeIdentifier:required:loggingKeyTransformer:intentTransformer:)()
{
  OUTLINED_FUNCTION_6_22();
  v0 = OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_19_0();
  ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:intentTransformer:)();
  return v0;
}

void ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:intentTransformer:)()
{
  OUTLINED_FUNCTION_65_0();
  v2 = v1;
  v26 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA790, &qword_1BF9C9A80);
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v26 - v16;
  (*(v13 + 16))(&v26 - v16, v2, v10);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v17, v10);
  *(v0 + 16) = v9;
  *(v0 + 24) = v7;
  *(v0 + 32) = v5;
  v20 = OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  v22 = *(v21 - 8);
  v23 = v0 + v20;
  v24 = v26;
  (*(v22 + 16))(v23, v26, v21);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
  OUTLINED_FUNCTION_0_32();
  v29 = sub_1BF991690(v25, &qword_1EBDEA1C0, qword_1BF9C4690);
  *&v27 = &unk_1BF9C9A90;
  *(&v27 + 1) = v19;
  (*(v13 + 8))(v2, v10);
  (*(v22 + 8))(v24, v21);
  sub_1BF8C2C9C(&v27, v0 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF9A9F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF9A9FB8, 0, 0);
}

uint64_t sub_1BF9A9FB8()
{
  v18 = v0;
  v1 = v0[3];
  v2 = v0[4];
  SiriSuggestions.Intent.toV1Representation()(v16);
  v4 = v16[0];
  v3 = v16[1];
  v5 = v16[2];
  v6 = v17;
  *(swift_task_alloc() + 16) = v2;
  sub_1BF9A915C(sub_1BF9ADC28, v4, v3, v5, v6, v14);
  v7 = OUTLINED_FUNCTION_33();
  sub_1BF9ADC48(v7, v8, v5, v6);

  v9 = v0[2];
  if (v15 == 255)
  {
    *v9 = 0u;
    *(v9 + 16) = 0u;
    v11 = 2;
  }

  else
  {
    v10 = v14[1];
    *v9 = v14[0];
    *(v9 + 16) = v10;
    v11 = v15;
  }

  *(v9 + 32) = v11;
  OUTLINED_FUNCTION_11_1();

  return v12();
}

uint64_t sub_1BF9AA0D8(__int128 *a1, uint64_t a2, void *a3)
{
  v9 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA790, &qword_1BF9C9A80);
  v7 = sub_1BF9B45A8();
  v10 = v9;
  v11 = v5;
  v12 = v6;
  v7(&v10);

  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t static ResolvableParameter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF9B4668();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  if (*(a1 + 32) == *(a2 + 32) && (*(a1 + 16) == *(a2 + 16) ? (v14 = *(a1 + 24) == *(a2 + 24)) : (v14 = 0), v14 || (sub_1BF9B56D8() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
    sub_1BF9B4638();
    sub_1BF9B4638();
    v13 = sub_1BF9B4628();
    v15 = *(v7 + 8);
    v16 = OUTLINED_FUNCTION_33();
    v15(v16);
    (v15)(v12, v4);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t ResolvableParameter.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(v0 + v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer));
  return v0;
}

uint64_t ResolvableParameter.__deallocating_deinit()
{
  ResolvableParameter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1BF9AA4A8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t static SuggestionTransformers.validSetParametersForLogging<A>(validValues:)()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_1_8();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = v0;
  v3[4] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_7_24();

  return sub_1BF9B4598();
}

double sub_1BF9AA580@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20[1] = a3;
  v7 = sub_1BF9B50F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v20 - v11;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF8C187C(a1, v21);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a2);
    v17 = *(v13 + 32);
    v17(v16, v12, a2);
    if (sub_1BF9B4FA8())
    {
      *(a4 + 24) = a2;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
      v17(boxed_opaque_existential_1Tm, v16, a2);
      return result;
    }

    (*(v13 + 8))(v16, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, a2);
    (*(v8 + 8))(v12, v7);
  }

  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t static SuggestionTransformers.hashParametersForLogging(numCharacters:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_7_24();

  return sub_1BF9B4598();
}

void sub_1BF9AA854(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v56 = a3;
  v49 = a2;
  v55 = a4;
  v5 = sub_1BF9B4918();
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF9B4908();
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - v14;
  sub_1BF8C187C(a1, &v59);
  v16 = sub_1BF9B4B08();
  v18 = sub_1BF9AAD58(v16, v17);
  v20 = v19;
  sub_1BF9AD978(&qword_1EDBF3F98, MEMORY[0x1E6966620]);
  sub_1BF9B48F8();
  sub_1BF8F9A50(v18, v20);
  v21 = v58;
  sub_1BF9ACED4(v18, v20);
  v50 = v21;
  v51 = v20;
  v52 = v18;
  sub_1BF8F9F3C(v18, v20);
  sub_1BF9B48E8();
  (*(v61 + 8))(v8, v5);
  v22 = *(v57 + 16);
  v53 = v15;
  v22(v13, v15, v9);
  sub_1BF9AD978(qword_1EDBF3FA0, MEMORY[0x1E69663E0]);
  v54 = v9;
  sub_1BF9B4C68();
  v24 = v59;
  v23 = v60;
  v25 = *(v59 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v60 == v25)
  {
LABEL_2:

    v59 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    sub_1BF991690(&qword_1EDBF4E48, &qword_1EBDE88A0, &qword_1BF9B7FC0);
    v27 = sub_1BF9B4A78();
    v29 = v28;

    if (v56)
    {
      v31 = v54;
      v30 = v55;
      v55[3] = MEMORY[0x1E69E6158];
LABEL_16:
      sub_1BF8F9F3C(v52, v51);
      *v30 = v27;
      v30[1] = v29;
      (*(v57 + 8))(v53, v31);
      return;
    }

    v43 = v49;
    if ((v49 & 0x8000000000000000) == 0)
    {

      v44 = sub_1BF9A9210(v43);
      v45 = MEMORY[0x1BFB5DE30](v44);
      v47 = v46;

      v31 = v54;
      v30 = v55;
      v55[3] = MEMORY[0x1E69E6158];
      if (v47)
      {

        v27 = v45;
        v29 = v47;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v61 = v59 + 32;
    v58 = xmmword_1BF9B6370;
    v32 = v60;
    while ((v23 & 0x8000000000000000) == 0)
    {
      if (v32 >= *(v24 + 16))
      {
        goto LABEL_18;
      }

      v33 = *(v61 + v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA798, &unk_1BF9C9C88);
      v34 = swift_allocObject();
      *(v34 + 16) = v58;
      *(v34 + 56) = MEMORY[0x1E69E7508];
      *(v34 + 64) = MEMORY[0x1E69E7558];
      *(v34 + 32) = v33;
      v35 = sub_1BF9B4AD8();
      v37 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v26 + 16);
        sub_1BF8DD6D4();
        v26 = v41;
      }

      v38 = *(v26 + 16);
      if (v38 >= *(v26 + 24) >> 1)
      {
        sub_1BF8DD6D4();
        v26 = v42;
      }

      ++v32;
      *(v26 + 16) = v38 + 1;
      v39 = v26 + 16 * v38;
      *(v39 + 32) = v35;
      *(v39 + 40) = v37;
      if (v25 == v32)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BF9AAD58(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  *&v37 = a1;
  *(&v37 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA7A0, &qword_1BF9C9C98);
  if (swift_dynamicCast())
  {
    sub_1BF8C2C9C(v35, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_1BF9B4338();
    v35[0] = v37;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    goto LABEL_59;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_1BF8DFBF0(v35, &qword_1EBDEA7A8, &qword_1BF9C9CA0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v35;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1BF9B5318();
  }

  sub_1BF9AC97C(v4, v5, &v38);
  v6 = *(&v38 + 1);
  v7 = v38;
  if (*(&v38 + 1) >> 60 != 15)
  {
    v35[0] = v38;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v35[0] = MEMORY[0x1BFB5D700](v8);
  *(&v35[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v35[0]);
  v10 = sub_1BF9ACA98(sub_1BF9ADBAC);
  v12 = *(&v35[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v35[0]);
  switch(*(&v35[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v35[0]) - LODWORD(v35[0]);
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v35[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v35[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1BF9B43E8();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v37 + 7) = 0;
      *&v37 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v35[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_1BF95DC78(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_1BF9B4BA8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_1BF9B4BE8();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v38 = v13;
      *(&v38 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v38 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_1BF9B5318();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_1BF95DC78(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = sub_1BF9B4BB8();
LABEL_46:
    *(&v37 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v38 = v37;
      *(&v38 + 6) = *(&v37 + 6);
      sub_1BF9B4418();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v38 = v37;
    *(&v38 + 6) = *(&v37 + 6);
    sub_1BF9B4418();
    sub_1BF921E14(v34, v6);
    goto LABEL_58;
  }

  sub_1BF921E14(v34, v6);
LABEL_59:
  v31 = v35[0];
  sub_1BF8F9A50(*&v35[0], *(&v35[0] + 1));

  sub_1BF8F9F3C(v31, *(&v31 + 1));
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

void static SuggestionTransformers.obfuscateParametersForLogging(numCharacters:rngFactory:currentDate:)()
{
  OUTLINED_FUNCTION_65_0();
  v29 = v0;
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v31 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v18 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v28 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v9;
  *(v21 + 24) = v7 & 1;
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_7_24();
  sub_1BF9B4598();
  v22 = v3;
  v5(v32, 0, 1);
  v23 = v5;
  __swift_mutable_project_boxed_opaque_existential_1(v32, v32[3]);
  v24 = sub_1BF9B4A38();
  (*(v14 + 16))(v18, v20, v11);
  v25 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v23;
  *(v26 + 3) = v22;
  v27 = v30;
  *(v26 + 4) = v29;
  *(v26 + 5) = v27;
  *(v26 + 6) = v24;
  (*(v14 + 32))(&v26[v25], v18, v11);

  sub_1BF9B4598();
  (*(v14 + 8))(v20, v11);
  __swift_destroy_boxed_opaque_existential_1(v32);
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF9AB4C4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, unint64_t, void), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v9 = sub_1BF9AB644(a4);
  a2(v21, v9, 0);
  __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  v20[0] = sub_1BF9B4A38() ^ a6;
  v10 = sub_1BF9B5668();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  v13 = sub_1BF9B45A8();
  sub_1BF8C187C(a1, &v18);
  v14 = sub_1BF9B4B08();
  v16 = v15;
  v18 = v10;
  v19 = v12;

  MEMORY[0x1BFB5DE90](v14, v16);

  v20[3] = MEMORY[0x1E69E6158];
  v20[0] = v18;
  v20[1] = v19;
  v13(v20);

  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

unint64_t sub_1BF9AB644(void (*a1)(uint64_t))
{
  v2 = sub_1BF9B44C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v5);
  sub_1BF9B4498();
  v9 = v8;
  result = (*(v3 + 8))(v7, v2);
  v11 = v9 / 604800.0;
  if (COERCE__INT64(fabs(v9 / 604800.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v11 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v11 < 1.84467441e19)
  {
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static SuggestionTransformers.mapINIntentValue<A>(extractor:)()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_1_8();
  v3 = swift_allocObject();
  v3[2] = v0;
  v3[3] = v2;
  v3[4] = v1;

  return sub_1BF9B4598();
}

void sub_1BF9AB808(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 24) || (v5 = *a1, v6 = *(a1 + 8), v7 = *(a1 + 16), (v8 = swift_dynamicCastUnknownClass()) == 0))
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 2;
  }

  else
  {
    v9 = v8;
    v10 = v5;
    a2(v9);
    sub_1BF90D8B8(v5, v6, v7, 0);
  }
}

uint64_t sub_1BF9AB8BC()
{
  OUTLINED_FUNCTION_7();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SiriSuggestions.Intent(0);
  v0[4] = v3;
  OUTLINED_FUNCTION_72(v3);
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF9AB948, 0, 0);
}

uint64_t sub_1BF9AB948()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[4];
  sub_1BF93A558(v0[3], v0[5]);
  OUTLINED_FUNCTION_33();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[5];
  if (EnumCaseMultiPayload)
  {
    v4 = v0[2];
    sub_1BF9AD920(v3, type metadata accessor for SiriSuggestions.Intent);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 2;
    v5 = v0[5];

    OUTLINED_FUNCTION_11_1();

    return v6();
  }

  else
  {
    v8 = *v3;
    v0[6] = *v3;
    v9 = v8;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[7] = v10;
    *v10 = v11;
    v10[1] = sub_1BF9ABA70;
    v12 = v0[2];

    return sub_1BF978728(v12, v9);
  }
}

uint64_t sub_1BF9ABA70()
{
  OUTLINED_FUNCTION_7();
  v2 = *(*v1 + 56);
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  *(v5 + 64) = v0;

  if (v0)
  {
    v6 = sub_1BF9ABBDC;
  }

  else
  {
    v6 = sub_1BF9ABB78;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BF9ABB78()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 48);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_11_1();

  return v3();
}

uint64_t sub_1BF9ABBDC()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[5];
  v1 = v0[6];

  OUTLINED_FUNCTION_77();
  v4 = v0[8];

  return v3();
}

uint64_t sub_1BF9ABC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for SiriSuggestions.Intent(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF9ABCE0, 0, 0);
}

uint64_t sub_1BF9ABCE0()
{
  v1 = v0[7];
  sub_1BF93A558(v0[3], v0[8]);
  OUTLINED_FUNCTION_33();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[8];
  if (EnumCaseMultiPayload)
  {
    sub_1BF9AD920(v3, type metadata accessor for SiriSuggestions.Intent);
LABEL_3:
    v4 = v0[2];
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 2;
    v5 = v0[8];

    OUTLINED_FUNCTION_11_1();

    return v6();
  }

  v8 = v0[6];
  v9 = *v3;
  v0[9] = *v3;
  v10 = swift_dynamicCastUnknownClass();
  if (!v10)
  {

    goto LABEL_3;
  }

  v11 = v10;
  v12 = v0[4];
  v13 = v9;
  v19 = (v12 + *v12);
  v14 = v12[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[10] = v15;
  *v15 = v16;
  v15[1] = sub_1BF9ABE94;
  v17 = v0[5];
  v18 = v0[2];

  return v19(v18, v11);
}

uint64_t sub_1BF9ABE94()
{
  OUTLINED_FUNCTION_7();
  v2 = *(*v1 + 80);
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  *(v5 + 88) = v0;

  if (v0)
  {
    v6 = sub_1BF9AC000;
  }

  else
  {
    v6 = sub_1BF9ABF9C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BF9ABF9C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 72);

  v2 = *(v0 + 64);

  OUTLINED_FUNCTION_11_1();

  return v3();
}

uint64_t sub_1BF9AC000()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_77();
  v4 = v0[11];

  return v3();
}

double sub_1BF9AC094@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t sub_1BF9AC0C8()
{
  v1 = *(v0 + 16);
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 2;
  OUTLINED_FUNCTION_11_1();
  return v2();
}

uint64_t static SuggestionTransformers.addAppIntentValue(extractor:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for SiriSuggestions.Intent(0);
  OUTLINED_FUNCTION_3_14();

  return sub_1BF9B4598();
}

uint64_t sub_1BF9AC190@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SiriSuggestions.Intent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BF93A558(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = type metadata accessor for SiriSuggestions.Intent;
  if (EnumCaseMultiPayload == 1 && (type metadata accessor for SiriSuggestions.AppIntent(0), v12 = swift_getEnumCaseMultiPayload(), v11 = type metadata accessor for SiriSuggestions.AppIntent, v12 == 1))
  {
    v13 = *v9;
    a2(*v9, v9[1], v9[2]);
  }

  else
  {
    result = sub_1BF9AD920(v9, v11);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 2;
  }

  return result;
}

uint64_t static SuggestionTransformers.addAppIntentValue(lnActionParameterName:behaviour:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BF9AD550;
  *(v9 + 24) = v8;
  type metadata accessor for SiriSuggestions.Intent(0);

  return sub_1BF9B4598();
}

double sub_1BF9AC3BC@<D0>(void *a1@<X0>, uint64_t a2@<X3>, unint64_t a3@<X4>, void (*a4)(uint64_t *)@<X5>, uint64_t a5@<X8>)
{
  v37 = a3;
  v5 = [a1 parameters];
  sub_1BF9AD8DC();
  v6 = sub_1BF9B4D08();

  v7 = sub_1BF965210(v6);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      goto LABEL_18;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB5E5E0](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v11 = [v9 identifier];
    v12 = sub_1BF9B4AA8();
    v14 = v13;

    if (v12 == a2 && v14 == v37)
    {
      break;
    }

    v16 = sub_1BF9B56D8();

    if (v16)
    {
      goto LABEL_16;
    }
  }

LABEL_16:

  v17 = [v10 value];

  if (v17)
  {
    v18 = [v17 value];
    sub_1BF9B51C8();
    swift_unknownObjectRelease();
    a4(v36);

    __swift_destroy_boxed_opaque_existential_1(v36);
    return result;
  }

LABEL_18:
  if (qword_1EDBF5568 == -1)
  {
    goto LABEL_19;
  }

LABEL_24:
  swift_once();
LABEL_19:
  v20 = sub_1BF9B47C8();
  __swift_project_value_buffer(v20, qword_1EDBF5570);
  v21 = v37;

  v22 = a1;
  v23 = sub_1BF9B47A8();
  v24 = sub_1BF9B5038();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_1BF8DE810(a2, v21, v36);
    *(v25 + 12) = 2080;
    v27 = [v22 description];
    v28 = sub_1BF9B4AA8();
    v30 = v29;

    v31 = sub_1BF8DE810(v28, v30, v36);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_1BF8B8000, v23, v24, "Unable to find parameter: %s on action: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5F320](v26, -1, -1);
    MEMORY[0x1BFB5F320](v25, -1, -1);
  }

  result = 0.0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 2;
  return result;
}

uint64_t static SuggestionTransformers.containsParameterForLogging()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  OUTLINED_FUNCTION_7_24();

  return sub_1BF9B4598();
}

uint64_t sub_1BF9AC7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BF8C187C(a1, &v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  swift_dynamicCast();
  v3 = v7 != 0;
  result = sub_1BF8DFBF0(v6, &qword_1EBDE9208, &unk_1BF9C2A50);
  *(a2 + 24) = MEMORY[0x1E69E6370];
  *a2 = v3;
  return result;
}

uint64_t IntentParameter.description.getter()
{
  sub_1BF9AD570(v0, v6);
  if (v7)
  {
    if (v7 != 1)
    {
      return 0x65726F6E6769;
    }

    sub_1BF8C192C(v6, v5);
    sub_1BF9B5288();
    v1 = 0x80000001BF9CE490;
    v2 = 0xD000000000000011;
  }

  else
  {
    sub_1BF8C192C(v6, v5);
    v2 = 0x7B747865746E6F63;
    v1 = 0xE800000000000000;
  }

  MEMORY[0x1BFB5DE90](v2, v1);
  sub_1BF9B5378();
  MEMORY[0x1BFB5DE90](125, 0xE100000000000000);
  v3 = 0;
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1BF9AC97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1BF9B4388();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1BF9B4328();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1BF9B42D8();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1BF9B43D8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1BF9ACA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1BF9ACFB8(sub_1BF9ADC08, v5, a1, a2);
}

uint64_t sub_1BF9ACA98(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BF8F9F3C(v6, v5);
      *v4 = xmmword_1BF9C9A40;
      sub_1BF8F9F3C(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_1BF9B42E8() && __OFSUB__(v6, sub_1BF9B4318()))
      {
        goto LABEL_24;
      }

      v13 = sub_1BF9B4328();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1BF9B42C8();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1BF9AD01C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BF8F9F3C(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1BF9C9A40;
      sub_1BF8F9F3C(0, 0xC000000000000000);
      sub_1BF9B4398();
      v6 = v20;
      v9 = sub_1BF9AD01C(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x1E69E9840];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_1BF8F9F3C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_1BF9ACE5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1BF9B4388();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1BFB5D6B0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1BFB5D6D0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1BF9ACED4(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_1BF9ADA94(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_1BF9AD9C0();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_1BF9ACF70(uint64_t result)
{
  if (result)
  {
    result = sub_1BF9B5298();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF9ACFB8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1BF9AD01C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1BF9B42E8();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1BF9B4318();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1BF9B4308();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1BF9AD0D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (a6 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer);
  v15[3] = a7;
  v15[4] = a8;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v15);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1Tm, a5, a7);
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  v17 = OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_loggingKeyTransformer;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_13(v18);
  (*(v19 + 32))(a6 + v17, a4);
  return a6;
}

uint64_t sub_1BF9AD1B8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1BF9ADC74;

  return sub_1BF9ABC44(a1, a2, v7, v8, v6);
}

uint64_t sub_1BF9AD278(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA790, &qword_1BF9C9A80);
  OUTLINED_FUNCTION_72(v6);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1BF9AD360;

  return sub_1BF9A9F94(a1, a2, v2 + v8);
}

uint64_t sub_1BF9AD360()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_77();

  return v4();
}

uint64_t sub_1BF9AD484(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_72(v3);
  v5 = *(v4 + 80);
  return sub_1BF9AB4C4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

void sub_1BF9AD514(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  sub_1BF9AB808(a1, *(v2 + 24), a2);
}

uint64_t type metadata accessor for ResolvableParameter()
{
  result = qword_1EDBF2998;
  if (!qword_1EDBF2998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF9AD5FC()
{
  sub_1BF9AD6E8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1BF9AD6E8()
{
  if (!qword_1EDBF3F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE9208, &unk_1BF9C2A50);
    v0 = sub_1BF9B45B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF3F48);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SuggestionTransformers(_BYTE *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit15IntentParameterO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1BF9AD820(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF9AD85C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
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

uint64_t sub_1BF9AD8A8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1BF9AD8DC()
{
  result = qword_1EBDE9650;
  if (!qword_1EBDE9650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDE9650);
  }

  return result;
}

uint64_t sub_1BF9AD920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF9AD978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF9AD9C0()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1BF9B4918();
  sub_1BF9AD978(&qword_1EDBF3F98, MEMORY[0x1E6966620]);
  result = sub_1BF9B48D8();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF9ADA94(uint64_t a1, uint64_t a2)
{
  result = sub_1BF9B42E8();
  if (!result || (result = sub_1BF9B4318(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1BF9B4308();
      sub_1BF9B4918();
      sub_1BF9AD978(&qword_1EDBF3F98, MEMORY[0x1E6966620]);
      return sub_1BF9B48D8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF9ADB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1BF9ACA44(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1BF9ADBC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_1BF9ACF70(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

void sub_1BF9ADC48(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_1BF90D8B8(a1, a2, a3, a4);
  }
}

uint64_t OUTLINED_FUNCTION_25_16(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  return sub_1BF9AD0D0(a1, a2, a3, a4, v7, v4, v5, v6);
}

uint64_t PolicyConfig.invocationObservationPeriodInDays.getter()
{
  sub_1BF9323B0();

  return sub_1BF9B4988();
}

uint64_t PolicyConfig.suppressionWindowHoursSinceLastDeliveryVehicle.getter()
{
  sub_1BF9322AC();

  return sub_1BF9B4988();
}

uint64_t sub_1BF9ADE30(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  type metadata accessor for ContextContainer();
  sub_1BF8D2004(v3 + 16, v9);
  v8 = v6;
  static ContextContainer.createContext(targetOwner:suggestionEnablementState:generationContext:)(v9, &v8, a2, a3);
  sub_1BF8EE3F8(v9, &qword_1EBDE9918, &qword_1BF9C0750);
  return OUTLINED_FUNCTION_43();
}

__n128 SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:actionIdKeyMapper:prerequisite:intentMatch:filter:inAppDonationApps:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 96) = a3;
  if (!a5)
  {

    a4 = a1;
    a5 = a2;
  }

  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  sub_1BF8D2004(a6, a9 + 104);
  sub_1BF8D2004(a7, a9 + 144);
  sub_1BF8D2004(a8, a9 + 184);
  sub_1BF9AF258(a10, &v22, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  if (v23)
  {
    sub_1BF8EE3F8(a10, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    OUTLINED_FUNCTION_16_20();
    __swift_destroy_boxed_opaque_existential_1(a6);
    sub_1BF8C2C9C(&v22, &v24);
  }

  else
  {
    *(&v25 + 1) = &type metadata for SiriSuggestions.IntentType;
    v26 = &protocol witness table for SiriSuggestions.IntentType;
    *&v24 = a1;
    *(&v24 + 1) = a2;
    LOBYTE(v25) = 2;

    sub_1BF8EE3F8(a10, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    OUTLINED_FUNCTION_16_20();
    __swift_destroy_boxed_opaque_existential_1(a6);
    if (v23)
    {
      sub_1BF8EE3F8(&v22, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    }
  }

  v18 = v25;
  *(a9 + 32) = v24;
  *(a9 + 48) = v18;
  v19 = v26;
  result = *a11;
  v21 = *(a11 + 16);
  *(a9 + 224) = *a11;
  *(a9 + 240) = v21;
  *(a9 + 256) = *(a11 + 32);
  *(a9 + 264) = a12;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 64) = v19;
  *(a9 + 88) = -1;
  return result;
}

uint64_t Suggestion.__allocating_init(details:owner:)(const void *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  memcpy((v4 + 56), a1, 0x110uLL);
  sub_1BF8C2C9C(a2, v4 + 16);
  return v4;
}

uint64_t Suggestion.init(details:owner:)(void *__src, __int128 *a2)
{
  memcpy((v2 + 56), __src, 0x110uLL);
  sub_1BF8C2C9C(a2, v2 + 16);
  return v2;
}

uint64_t Suggestion.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1BF8E9F70(v0 + 56);
  return v0;
}

uint64_t Suggestion.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1BF8E9F70(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0, 328, 7);
}

uint64_t SuggestionDetails.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_43();
}

uint64_t SuggestionDetails.historicIntentType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_1BF9AE220(v2, v3, v4);
}

uint64_t sub_1BF9AE220(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1BF9439F0(a1, a2, a3);
  }

  return a1;
}

uint64_t SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  sub_1BF8D2004(a6, v8);
  SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:filter:)();
  return __swift_destroy_boxed_opaque_existential_1(a6);
}

void SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:filter:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v110 = v6;
  v120 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1BF8D2004(v7, v177);
  static ActionKeyMappers.simpleActionKeyMapper(actionId:)(0, 0, v176);
  OUTLINED_FUNCTION_25_17(v1, v175);
  sub_1BF8D2004(v177, v174);
  sub_1BF8D2004(v176, v173);
  v14 = type metadata accessor for NoOpPrerequisite();
  inited = swift_initStaticObject();
  v172[3] = v14;
  v172[4] = sub_1BF9AF200();
  v172[0] = inited;
  OUTLINED_FUNCTION_25_17(v175, v171);
  sub_1BF8D2004(v174, v170);
  sub_1BF8D2004(v173, v169);
  sub_1BF8D2004(v172, v168);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_25_17(v171, &v162);
  sub_1BF8D2004(v170, &v157);
  sub_1BF8D2004(v169, &v152);
  sub_1BF8D2004(v168, &v147);
  v16 = sub_1BF9AF258(v167, &v142, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  v24 = OUTLINED_FUNCTION_17_20(v16, v17, v18, v19, v20, v21, v22, v23, v110, v120, v130, v131, v132, v133, v134, v135, *(&v135 + 1), v136, v137, v138, v139.n128_i64[0], v139.n128_i64[1], v140, *(&v140 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
  v26 = OUTLINED_FUNCTION_25_17(v24, v25);
  *v13 = v11;
  v13[1] = v9;
  v13[12] = v111;
  if (!v3)
  {

    v5 = v11;
    v3 = v9;
  }

  v13[2] = v5;
  v13[3] = v3;
  v34 = OUTLINED_FUNCTION_24_14(v26, v27, v28, v29, v30, v31, v32, v33, v111, v121, v130, v131, v132, v133, v134, v135, *(&v135 + 1), v136, v137, v138, v139.n128_i64[0], v139.n128_i64[1], v140, *(&v140 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
  v42 = OUTLINED_FUNCTION_21_17(v34, v35, v36, v37, v38, v39, v40, v41, v112, v122, v130, v131, v132, v133, v134, v135, *(&v135 + 1), v136, v137, v138, v139.n128_i64[0], v139.n128_i64[1], v140, *(&v140 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
  v50 = OUTLINED_FUNCTION_14_17(v42, v43, v44, v45, v46, v47, v48, v49, v113, v123, v130, v131, v132, v133, v134, v135, *(&v135 + 1), v136, v137, v138, v139.n128_i64[0], v139.n128_i64[1], v140, *(&v140 + 1), v141, v142, v143, v144, v145, v146, v147);
  v56 = OUTLINED_FUNCTION_11_18(v50, v51, &qword_1EBDEA2A0, &unk_1BF9C9CF0, v52, v53, v54, v55, v114, v124, v130, v131, v132, v133, v134, v135, *(&v135 + 1), v136, v137, v138, v139.n128_i64[0], v139.n128_i64[1], v140, *(&v140 + 1), v141, v142);
  sub_1BF9AF258(v56, v57, v58, v59);
  if (v133)
  {
    OUTLINED_FUNCTION_3_31(v1);
    v60 = __swift_destroy_boxed_opaque_existential_1(v125);
    v68 = OUTLINED_FUNCTION_4_29(v60, v61, v62, v63, v64, v65, v66, v67, v115, v125, v130, v131, v132, v133, v134, v135, *(&v135 + 1), v136, v137, v138, v139.n128_i64[0], v139.n128_i64[1], v140, *(&v140 + 1), v141, v142);
    sub_1BF8EE3F8(v68, v69, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1(&v147);
    __swift_destroy_boxed_opaque_existential_1(&v152);
    __swift_destroy_boxed_opaque_existential_1(&v157);
    v70 = OUTLINED_FUNCTION_3_31(&v162);
    OUTLINED_FUNCTION_6_23(v70, v71, v72, v73, v74, v75, v76, v77, v116, v126, v130, v131, v132, v133, v134, v135, *(&v135 + 1), v136, v137, v138, v139.n128_i64[0], v139.n128_i64[1], v140, *(&v140 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167[0]);
    __swift_destroy_boxed_opaque_existential_1(v168);
    __swift_destroy_boxed_opaque_existential_1(v169);
    __swift_destroy_boxed_opaque_existential_1(v170);
    OUTLINED_FUNCTION_3_31(v171);
    v78 = OUTLINED_FUNCTION_5_22(v173);
    OUTLINED_FUNCTION_3_31(v78);
    OUTLINED_FUNCTION_2_33();
    v79 = __swift_destroy_boxed_opaque_existential_1(v172);
    v81 = OUTLINED_FUNCTION_15_25(v79, v80);
  }

  else
  {
    OUTLINED_FUNCTION_10_22();

    OUTLINED_FUNCTION_3_31(v1);
    v90 = __swift_destroy_boxed_opaque_existential_1(v125);
    v98 = OUTLINED_FUNCTION_4_29(v90, v91, v92, v93, v94, v95, v96, v97, v115, v125, v130, v131, v132, 0, v134, v11, v9, v136, &type metadata for SiriSuggestions.IntentType, &protocol witness table for SiriSuggestions.IntentType, v139.n128_i64[0], v139.n128_i64[1], v140, *(&v140 + 1), v141, v142);
    sub_1BF8EE3F8(v98, v99, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1(&v147);
    __swift_destroy_boxed_opaque_existential_1(&v152);
    __swift_destroy_boxed_opaque_existential_1(&v157);
    v100 = OUTLINED_FUNCTION_3_31(&v162);
    OUTLINED_FUNCTION_6_23(v100, v101, v102, v103, v104, v105, v106, v107, v118, v128, v130, v131, v132, v133, v134, v135, *(&v135 + 1), v136, v137, v138, v139.n128_i64[0], v139.n128_i64[1], v140, *(&v140 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167[0]);
    __swift_destroy_boxed_opaque_existential_1(v168);
    __swift_destroy_boxed_opaque_existential_1(v169);
    __swift_destroy_boxed_opaque_existential_1(v170);
    OUTLINED_FUNCTION_3_31(v171);
    v108 = OUTLINED_FUNCTION_5_22(v173);
    OUTLINED_FUNCTION_3_31(v108);
    OUTLINED_FUNCTION_2_33();
    v81 = __swift_destroy_boxed_opaque_existential_1(v172);
    if (v133)
    {
      v81 = sub_1BF8EE3F8(&v130, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    }
  }

  OUTLINED_FUNCTION_1_32(v81, v82, v83, v84, v85, v86, v87, v88, v117, v127, v130, v131, v132, v133, v134, v89, v135);
  OUTLINED_FUNCTION_0_33(v109, v119, v129, v130, v131, v132, v133, v134, v135, *(&v135 + 1), v136, v137, v138, v139, v140);
  OUTLINED_FUNCTION_64();
}

void SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:actionIdKeyMapper:filter:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_13_17(v12, v10, v8, v6, v4, v16);
  sub_1BF8D2004(v3, v124);
  v17 = type metadata accessor for NoOpPrerequisite();
  inited = swift_initStaticObject();
  v123[3] = v17;
  v123[4] = sub_1BF9AF200();
  v123[0] = inited;
  sub_1BF9AF258(v1, v122, &qword_1EBDE8E10, &qword_1BF9B9980);
  sub_1BF8D2004(&v125, v121);
  sub_1BF8D2004(v124, v120);
  sub_1BF8D2004(v123, v119);
  OUTLINED_FUNCTION_8_19();
  sub_1BF9AF258(v122, v117, &qword_1EBDE8E10, &qword_1BF9B9980);
  sub_1BF8D2004(v121, v116);
  sub_1BF8D2004(v120, &v111);
  sub_1BF8D2004(v119, &v106);
  v19 = sub_1BF9AF258(v118, &v101, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  v27 = OUTLINED_FUNCTION_17_20(v19, v20, v21, v22, v23, v24, v25, v26, v75, v82, v89, v90, v91, v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98.n128_i64[0], v98.n128_i64[1], v99, *(&v99 + 1), v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116[0], v116[1], v116[2], v116[3], v116[4], v117[0]);
  v29 = sub_1BF9AF258(v27, v28, &qword_1EBDE8E10, &qword_1BF9B9980);
  *v15 = v13;
  v15[1] = v11;
  v15[12] = v9;
  if (!v5)
  {

    v7 = v13;
    v5 = v11;
  }

  v15[2] = v7;
  v15[3] = v5;
  v37 = OUTLINED_FUNCTION_24_14(v29, v30, v31, v32, v33, v34, v35, v36, v76, v83, v89, v90, v91, v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98.n128_i64[0], v98.n128_i64[1], v99, *(&v99 + 1), v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116[0]);
  v45 = OUTLINED_FUNCTION_21_17(v37, v38, v39, v40, v41, v42, v43, v44, v77, v84, v89, v90, v91, v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98.n128_i64[0], v98.n128_i64[1], v99, *(&v99 + 1), v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
  v53 = OUTLINED_FUNCTION_14_17(v45, v46, v47, v48, v49, v50, v51, v52, v78, v85, v89, v90, v91, v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98.n128_i64[0], v98.n128_i64[1], v99, *(&v99 + 1), v100, v101, v102, v103, v104, v105, v106);
  v59 = OUTLINED_FUNCTION_11_18(v53, v54, &qword_1EBDEA2A0, &unk_1BF9C9CF0, v55, v56, v57, v58, v79, v86, v89, v90, v91, v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98.n128_i64[0], v98.n128_i64[1], v99, *(&v99 + 1), v100, v101);
  sub_1BF9AF258(v59, v60, v61, v62);
  if (v92)
  {
    OUTLINED_FUNCTION_12_21(v1);
    __swift_destroy_boxed_opaque_existential_1(v3);
    __swift_destroy_boxed_opaque_existential_1(v87);
    OUTLINED_FUNCTION_22_13(&v101);
    __swift_destroy_boxed_opaque_existential_1(&v106);
    __swift_destroy_boxed_opaque_existential_1(&v111);
    __swift_destroy_boxed_opaque_existential_1(v116);
    OUTLINED_FUNCTION_12_21(v117);
    OUTLINED_FUNCTION_22_13(v118);
    __swift_destroy_boxed_opaque_existential_1(v119);
    __swift_destroy_boxed_opaque_existential_1(v120);
    __swift_destroy_boxed_opaque_existential_1(v121);
    OUTLINED_FUNCTION_12_21(v122);
    OUTLINED_FUNCTION_2_33();
    v63 = __swift_destroy_boxed_opaque_existential_1(v123);
    v65 = OUTLINED_FUNCTION_15_25(v63, v64);
  }

  else
  {
    v96 = &type metadata for SiriSuggestions.IntentType;
    v97 = &protocol witness table for SiriSuggestions.IntentType;
    *&v94 = v13;
    *(&v94 + 1) = v11;
    OUTLINED_FUNCTION_10_22();

    OUTLINED_FUNCTION_12_21(v1);
    __swift_destroy_boxed_opaque_existential_1(v3);
    __swift_destroy_boxed_opaque_existential_1(v87);
    OUTLINED_FUNCTION_22_13(&v101);
    __swift_destroy_boxed_opaque_existential_1(&v106);
    __swift_destroy_boxed_opaque_existential_1(&v111);
    __swift_destroy_boxed_opaque_existential_1(v116);
    OUTLINED_FUNCTION_12_21(v117);
    OUTLINED_FUNCTION_22_13(v118);
    __swift_destroy_boxed_opaque_existential_1(v119);
    __swift_destroy_boxed_opaque_existential_1(v120);
    __swift_destroy_boxed_opaque_existential_1(v121);
    OUTLINED_FUNCTION_12_21(v122);
    OUTLINED_FUNCTION_2_33();
    v65 = __swift_destroy_boxed_opaque_existential_1(v123);
  }

  OUTLINED_FUNCTION_1_32(v65, v66, v67, v68, v69, v70, v71, v72, v80, v87, v89, v90, v91, v92, v93, v73, v94);
  OUTLINED_FUNCTION_0_33(v74, v81, v88, v89, v90, v91, v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99);
  OUTLINED_FUNCTION_64();
}

void SuggestionDetails.init(suggestionId:resolverParams:viewProvider:actionIdKeyMapper:filter:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v119 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1BF8D2004(v4, v177);
  sub_1BF9AF258(v3, &v174, &qword_1EBDEA298, &qword_1BF9C9D00);
  if (v175)
  {
    sub_1BF8C2C9C(&v174, v176);
  }

  else
  {
    static ActionKeyMappers.simpleActionKeyMapper(actionId:)(0, 0, v176);
    if (v175)
    {
      sub_1BF8EE3F8(&v174, &qword_1EBDEA298, &qword_1BF9C9D00);
    }
  }

  OUTLINED_FUNCTION_23_18(v1, &v174);
  sub_1BF8D2004(v177, v173);
  sub_1BF8D2004(v176, v172);
  v13 = type metadata accessor for NoOpPrerequisite();
  inited = swift_initStaticObject();
  v171[3] = v13;
  v171[4] = sub_1BF9AF200();
  v171[0] = inited;
  OUTLINED_FUNCTION_23_18(&v174, v170);
  sub_1BF8D2004(v173, v169);
  sub_1BF8D2004(v172, v168);
  sub_1BF8D2004(v171, v167);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_23_18(v170, &v161);
  sub_1BF8D2004(v169, &v156);
  sub_1BF8D2004(v168, &v151);
  sub_1BF8D2004(v167, &v146);
  v15 = sub_1BF9AF258(v166, &v141, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  v23 = OUTLINED_FUNCTION_17_20(v15, v16, v17, v18, v19, v20, v21, v22, v109, v119, v129, v130, v131, v132, v133, v134, *(&v134 + 1), v135, v136, v137, v138.n128_i64[0], v138.n128_i64[1], v139, *(&v139 + 1), v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
  v25 = OUTLINED_FUNCTION_23_18(v23, v24);
  *v12 = v10;
  v12[1] = v8;
  v12[12] = v120;
  v12[2] = v10;
  v12[3] = v8;
  v33 = OUTLINED_FUNCTION_24_14(v25, v26, v27, v28, v29, v30, v31, v32, v110, v120, v129, v130, v131, v132, v133, v134, *(&v134 + 1), v135, v136, v137, v138.n128_i64[0], v138.n128_i64[1], v139, *(&v139 + 1), v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156);
  v41 = OUTLINED_FUNCTION_21_17(v33, v34, v35, v36, v37, v38, v39, v40, v111, v121, v129, v130, v131, v132, v133, v134, *(&v134 + 1), v135, v136, v137, v138.n128_i64[0], v138.n128_i64[1], v139, *(&v139 + 1), v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
  v49 = OUTLINED_FUNCTION_14_17(v41, v42, v43, v44, v45, v46, v47, v48, v112, v122, v129, v130, v131, v132, v133, v134, *(&v134 + 1), v135, v136, v137, v138.n128_i64[0], v138.n128_i64[1], v139, *(&v139 + 1), v140, v141, v142, v143, v144, v145, v146);
  v57 = OUTLINED_FUNCTION_11_18(v49, v50, v51, v52, v53, v54, v55, v56, v113, v123, v129, v130, v131, v132, v133, v134, *(&v134 + 1), v135, v136, v137, v138.n128_i64[0], v138.n128_i64[1], v139, *(&v139 + 1), v140, v141);
  sub_1BF9AF258(v57, v58, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  if (v132)
  {

    OUTLINED_FUNCTION_9_21(v1);
    sub_1BF8EE3F8(v3, &qword_1EBDEA298, &qword_1BF9C9D00);
    v59 = __swift_destroy_boxed_opaque_existential_1(v5);
    v67 = OUTLINED_FUNCTION_4_29(v59, v60, v61, v62, v63, v64, v65, v66, v114, v124, v129, v130, v131, v132, v133, v134, *(&v134 + 1), v135, v136, v137, v138.n128_i64[0], v138.n128_i64[1], v139, *(&v139 + 1), v140, v141);
    sub_1BF8EE3F8(v67, v68, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1(&v146);
    __swift_destroy_boxed_opaque_existential_1(&v151);
    __swift_destroy_boxed_opaque_existential_1(&v156);
    v69 = OUTLINED_FUNCTION_9_21(&v161);
    OUTLINED_FUNCTION_6_23(v69, v70, v71, v72, v73, v74, v75, v76, v115, v125, v129, v130, v131, v132, v133, v134, *(&v134 + 1), v135, v136, v137, v138.n128_i64[0], v138.n128_i64[1], v139, *(&v139 + 1), v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166[0]);
    __swift_destroy_boxed_opaque_existential_1(v167);
    __swift_destroy_boxed_opaque_existential_1(v168);
    __swift_destroy_boxed_opaque_existential_1(v169);
    OUTLINED_FUNCTION_9_21(v170);
    v77 = OUTLINED_FUNCTION_5_22(v172);
    OUTLINED_FUNCTION_9_21(v77);
    OUTLINED_FUNCTION_2_33();
    v78 = __swift_destroy_boxed_opaque_existential_1(v171);
    v80 = OUTLINED_FUNCTION_15_25(v78, v79);
  }

  else
  {
    OUTLINED_FUNCTION_10_22();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_9_21(v1);
    sub_1BF8EE3F8(v3, &qword_1EBDEA298, &qword_1BF9C9D00);
    v89 = __swift_destroy_boxed_opaque_existential_1(v5);
    v97 = OUTLINED_FUNCTION_4_29(v89, v90, v91, v92, v93, v94, v95, v96, v114, v124, v129, v130, v131, 0, v133, v10, v8, v135, &type metadata for SiriSuggestions.IntentType, &protocol witness table for SiriSuggestions.IntentType, v138.n128_i64[0], v138.n128_i64[1], v139, *(&v139 + 1), v140, v141);
    sub_1BF8EE3F8(v97, v98, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1(&v146);
    __swift_destroy_boxed_opaque_existential_1(&v151);
    __swift_destroy_boxed_opaque_existential_1(&v156);
    v99 = OUTLINED_FUNCTION_9_21(&v161);
    OUTLINED_FUNCTION_6_23(v99, v100, v101, v102, v103, v104, v105, v106, v117, v127, v129, v130, v131, v132, v133, v134, *(&v134 + 1), v135, v136, v137, v138.n128_i64[0], v138.n128_i64[1], v139, *(&v139 + 1), v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166[0]);
    __swift_destroy_boxed_opaque_existential_1(v167);
    __swift_destroy_boxed_opaque_existential_1(v168);
    __swift_destroy_boxed_opaque_existential_1(v169);
    OUTLINED_FUNCTION_9_21(v170);
    v107 = OUTLINED_FUNCTION_5_22(v172);
    OUTLINED_FUNCTION_9_21(v107);
    OUTLINED_FUNCTION_2_33();
    v80 = __swift_destroy_boxed_opaque_existential_1(v171);
    if (v132)
    {
      v80 = sub_1BF8EE3F8(&v129, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    }
  }

  OUTLINED_FUNCTION_1_32(v80, v81, v82, v83, v84, v85, v86, v87, v116, v126, v129, v130, v131, v132, v133, v88, v134);
  OUTLINED_FUNCTION_0_33(v108, v118, v128, v129, v130, v131, v132, v133, v134, *(&v134 + 1), v135, v136, v137, v138, v139);
  OUTLINED_FUNCTION_64();
}

void SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:actionIdKeyMapper:prerequisite:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_65_0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  OUTLINED_FUNCTION_13_17(v33, v31, v29, v27, v25, v37);
  sub_1BF8D2004(v24, v139);
  sub_1BF8D2004(v22, v138);
  v137 = 0;
  memset(v136, 0, sizeof(v136));
  sub_1BF9AF258(a21, v135, &qword_1EBDE8E10, &qword_1BF9B9980);
  sub_1BF8D2004(&v140, v134);
  sub_1BF8D2004(v139, &v129);
  sub_1BF8D2004(v138, &v124);
  v38 = sub_1BF9AF258(v136, &v119, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  v46 = OUTLINED_FUNCTION_17_20(v38, v39, v40, v41, v42, v43, v44, v45, v24, v100, v107, v108, v109, v110, v111, v112, *(&v112 + 1), v113, v114, v115, v116.n128_i64[0], v116.n128_i64[1], v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v135[0]);
  v48 = sub_1BF9AF258(v46, v47, &qword_1EBDE8E10, &qword_1BF9B9980);
  *v36 = v34;
  v36[1] = v32;
  v36[12] = v30;
  if (!v26)
  {

    v28 = v34;
    v26 = v32;
  }

  v36[2] = v28;
  v36[3] = v26;
  v56 = OUTLINED_FUNCTION_24_14(v48, v49, v50, v51, v52, v53, v54, v55, v94, v101, v107, v108, v109, v110, v111, v112, *(&v112 + 1), v113, v114, v115, v116.n128_i64[0], v116.n128_i64[1], v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
  v64 = OUTLINED_FUNCTION_21_17(v56, v57, v58, v59, v60, v61, v62, v63, v95, v102, v107, v108, v109, v110, v111, v112, *(&v112 + 1), v113, v114, v115, v116.n128_i64[0], v116.n128_i64[1], v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
  v72 = OUTLINED_FUNCTION_14_17(v64, v65, v66, v67, v68, v69, v70, v71, v96, v103, v107, v108, v109, v110, v111, v112, *(&v112 + 1), v113, v114, v115, v116.n128_i64[0], v116.n128_i64[1], v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124);
  v78 = OUTLINED_FUNCTION_11_18(v72, v73, &qword_1EBDEA2A0, &unk_1BF9C9CF0, v74, v75, v76, v77, v97, v104, v107, v108, v109, v110, v111, v112, *(&v112 + 1), v113, v114, v115, v116.n128_i64[0], v116.n128_i64[1], v117, *(&v117 + 1), v118, v119);
  sub_1BF9AF258(v78, v79, v80, v81);
  if (v110)
  {
    OUTLINED_FUNCTION_7_25(a21);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v98);
    __swift_destroy_boxed_opaque_existential_1(v105);
    OUTLINED_FUNCTION_3_31(&v119);
    __swift_destroy_boxed_opaque_existential_1(&v124);
    __swift_destroy_boxed_opaque_existential_1(&v129);
    __swift_destroy_boxed_opaque_existential_1(v134);
    OUTLINED_FUNCTION_7_25(v135);
    OUTLINED_FUNCTION_3_31(v136);
    __swift_destroy_boxed_opaque_existential_1(v138);
    v82 = OUTLINED_FUNCTION_2_33();
    v84 = OUTLINED_FUNCTION_15_25(v82, v83);
  }

  else
  {
    v114 = &type metadata for SiriSuggestions.IntentType;
    v115 = &protocol witness table for SiriSuggestions.IntentType;
    *&v112 = v34;
    *(&v112 + 1) = v32;
    OUTLINED_FUNCTION_10_22();

    OUTLINED_FUNCTION_7_25(a21);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v98);
    __swift_destroy_boxed_opaque_existential_1(v105);
    OUTLINED_FUNCTION_3_31(&v119);
    __swift_destroy_boxed_opaque_existential_1(&v124);
    __swift_destroy_boxed_opaque_existential_1(&v129);
    __swift_destroy_boxed_opaque_existential_1(v134);
    OUTLINED_FUNCTION_7_25(v135);
    OUTLINED_FUNCTION_3_31(v136);
    __swift_destroy_boxed_opaque_existential_1(v138);
    v84 = OUTLINED_FUNCTION_2_33();
  }

  OUTLINED_FUNCTION_1_32(v84, v85, v86, v87, v88, v89, v90, v91, v98, v105, v107, v108, v109, v110, v111, v92, v112);
  OUTLINED_FUNCTION_0_33(v93, v99, v106, v107, v108, v109, v110, v111, v112, *(&v112 + 1), v113, v114, v115, v116, v117);
  OUTLINED_FUNCTION_64();
}

double SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:actionIdKeyMapper:prerequisite:intentMatch:filter:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v13 = a5;
  v14 = a4;
  OUTLINED_FUNCTION_13_17(a1, a2, a3, a4, a5, a6);
  sub_1BF8D2004(a7, v94);
  sub_1BF8D2004(a8, v93);
  sub_1BF9AF258(a10, v92, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  sub_1BF9AF258(a11, &v89, &qword_1EBDE8E10, &qword_1BF9B9980);
  *a9 = a1;
  a9[1] = a2;
  a9[12] = a3;
  if (!v13)
  {

    v14 = a1;
    v13 = a2;
  }

  a9[2] = v14;
  a9[3] = v13;
  sub_1BF8D2004(v95, (a9 + 13));
  v19 = sub_1BF8D2004(v94, (a9 + 18));
  v27 = OUTLINED_FUNCTION_14_17(v19, v20, v21, v22, v23, v24, v25, v26, v70, v75, v80, v81, v82, v83, v84, v85, *(&v85 + 1), v86, v87, v88, v89.n128_i64[0], v89.n128_i64[1], v90, *(&v90 + 1), v91, v92[0], v92[1], v92[2], v92[3], v92[4], v93[0]);
  v33 = OUTLINED_FUNCTION_11_18(v27, v28, &qword_1EBDEA2A0, &unk_1BF9C9CF0, v29, v30, v31, v32, v71, v76, v80, v81, v82, v83, v84, v85, *(&v85 + 1), v86, v87, v88, v89.n128_i64[0], v89.n128_i64[1], v90, *(&v90 + 1), v91, v92[0]);
  sub_1BF9AF258(v33, v34, v35, v36);
  if (v83)
  {
    sub_1BF8EE3F8(a11, &qword_1EBDE8E10, &qword_1BF9B9980);
    sub_1BF8EE3F8(a10, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    OUTLINED_FUNCTION_16_20();
    v37 = __swift_destroy_boxed_opaque_existential_1(v77);
    v45 = OUTLINED_FUNCTION_4_29(v37, v38, v39, v40, v41, v42, v43, v44, v72, v77, v80, v81, v82, v83, v84, v85, *(&v85 + 1), v86, v87, v88, v89.n128_i64[0], v89.n128_i64[1], v90, *(&v90 + 1), v91, v92[0]);
    sub_1BF8EE3F8(v45, v46, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1(v93);
    v47 = OUTLINED_FUNCTION_2_33();
    v49 = OUTLINED_FUNCTION_15_25(v47, v48);
  }

  else
  {
    OUTLINED_FUNCTION_10_22();

    sub_1BF8EE3F8(a11, &qword_1EBDE8E10, &qword_1BF9B9980);
    sub_1BF8EE3F8(a10, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    OUTLINED_FUNCTION_16_20();
    v58 = __swift_destroy_boxed_opaque_existential_1(v77);
    v66 = OUTLINED_FUNCTION_4_29(v58, v59, v60, v61, v62, v63, v64, v65, v72, v77, v80, v81, v82, 0, v84, a1, a2, v86, &type metadata for SiriSuggestions.IntentType, &protocol witness table for SiriSuggestions.IntentType, v89.n128_i64[0], v89.n128_i64[1], v90, *(&v90 + 1), v91, v92[0]);
    sub_1BF8EE3F8(v66, v67, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1(v93);
    v49 = OUTLINED_FUNCTION_2_33();
    if (v83)
    {
      v49 = sub_1BF8EE3F8(&v80, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    }
  }

  OUTLINED_FUNCTION_1_32(v49, v50, v51, v52, v53, v54, v55, v56, v73, v78, v80, v81, v82, v83, v84, v57, v85);
  *&result = OUTLINED_FUNCTION_0_33(v68, v74, v79, v80, v81, v82, v83, v84, v85, *(&v85 + 1), v86, v87, v88, v89, v90).n128_u64[0];
  return result;
}

unint64_t sub_1BF9AF200()
{
  result = qword_1EDBF30A0;
  if (!qword_1EDBF30A0)
  {
    type metadata accessor for NoOpPrerequisite();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF30A0);
  }

  return result;
}

uint64_t sub_1BF9AF258(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return a2;
}

uint64_t sub_1BF9AF314(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_1BF9AF354(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return sub_1BF8EE3F8(&a51, v51, v52);
}

uint64_t OUTLINED_FUNCTION_21_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  return sub_1BF8D2004(&a36, v36 + 144);
}

uint64_t OUTLINED_FUNCTION_25_17(uint64_t a1, uint64_t a2)
{

  return sub_1BF9AF258(a1, a2, v2, v3);
}

uint64_t InAppDetails.getKey(entityMapper:)@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = v3[4];

  result = sub_1BF9B11C0(v11, a1, a2);
  *a3 = v8;
  a3[1] = v7;
  a3[2] = v10;
  a3[3] = v9;
  a3[4] = result;
  return result;
}

SiriSuggestionsKit::InAppIdentifier __swiftcall InAppIdentifier.init(appBundleId:placementId:)(Swift::String appBundleId, Swift::String_optional placementId)
{
  v2->value = appBundleId;
  v2[1] = placementId;
  result.placementId = placementId;
  result.appBundleId = appBundleId;
  return result;
}

void sub_1BF9AF4E0()
{
  qword_1EDC03480 = 0;
  *algn_1EDC03488 = 0xE000000000000000;
  qword_1EDC03490 = 0;
  unk_1EDC03498 = 0;
}

uint64_t InAppIdentifier.appBundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InAppIdentifier.placementId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InAppIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  sub_1BF9B5288();

  strcpy(v8, "{appBundleId: ");
  HIBYTE(v8[1]) = -18;
  MEMORY[0x1BFB5DE90](v1, v2);
  MEMORY[0x1BFB5DE90](0x6D6563616C70202CLL, 0xEF203A6449746E65);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4271950;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x1BFB5DE90](v5, v6);

  MEMORY[0x1BFB5DE90](125, 0xE100000000000000);
  return v8[0];
}

uint64_t static InAppIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BF9B56D8(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1BF9B56D8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BF9AF6F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xEB00000000644974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF9AF7C8(char a1)
{
  if (a1)
  {
    return 0x6E656D6563616C70;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_1BF9AF828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9AF6F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9AF850(uint64_t a1)
{
  v2 = sub_1BF9B1364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9AF88C(uint64_t a1)
{
  v2 = sub_1BF9B1364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InAppIdentifier.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA7B0, &qword_1BF9C9EE0);
  OUTLINED_FUNCTION_1(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF9B1364();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  if (!v1)
  {
    sub_1BF9B55B8();
  }

  (*(v16 + 8))(v10, v4);
  OUTLINED_FUNCTION_37();
}

uint64_t InAppIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1BF9B4B48();
  if (!v4)
  {
    return sub_1BF9B57C8();
  }

  sub_1BF9B57C8();

  return sub_1BF9B4B48();
}

uint64_t InAppIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_37_1();
  sub_1BF9B4B48();
  sub_1BF9B57C8();
  if (v4)
  {
    sub_1BF9B4B48();
  }

  return sub_1BF9B57E8();
}

void InAppIdentifier.init(from:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_22();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA7B8, &qword_1BF9C9EE8);
  OUTLINED_FUNCTION_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  OUTLINED_FUNCTION_8();
  sub_1BF9B1364();
  OUTLINED_FUNCTION_53();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_6_24();
    v11 = sub_1BF9B5518();
    v13 = v12;
    OUTLINED_FUNCTION_6_24();
    v14 = sub_1BF9B54D8();
    v16 = v15;
    v17 = *(v5 + 8);
    v19 = v14;
    v17(v10, v3);
    *v2 = v11;
    v2[1] = v13;
    v2[2] = v19;
    v2[3] = v16;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9AFCC8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_1BF9B57A8();
  InAppIdentifier.hash(into:)();
  return sub_1BF9B57E8();
}

uint64_t InAppDetails.identifier.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_14_18(a1);
}

__n128 InAppDetails.init(identifier:entities:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1->n128_u64[1];
  a3->n128_u64[0] = a1->n128_u64[0];
  a3->n128_u64[1] = v3;
  result = a1[1];
  a3[1] = result;
  a3[2].n128_u64[0] = a2;
  a3[2].n128_u64[1] = 0;
  return result;
}

__n128 InAppDetails.init(identifier:entities:intentQueries:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1->n128_u64[1];
  a4->n128_u64[0] = a1->n128_u64[0];
  a4->n128_u64[1] = v4;
  result = a1[1];
  a4[1] = result;
  a4[2].n128_u64[0] = a2;
  a4[2].n128_u64[1] = a3;
  return result;
}

void InAppDetails.init(identifier:entities:intentToSuggest:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SiriSuggestions.Intent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v12 = a1[1];
  v14 = *(a1 + 1);
  v15 = *(a3 + 24);
  if (v15 == 255)
  {
    v21 = 0;
  }

  else
  {
    v30 = v12;
    v31 = v14;
    v16 = *a3;
    v29 = *(a3 + 8);
    v17 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E80, &unk_1BF9C9EF0);
    v18 = *(type metadata accessor for SiriSuggestions.IntentQuery(0) - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BF9B6370;
    if (v15)
    {
      v22 = v16;
      v28[1] = v8;
      v23 = v13;
      v24 = a2;
      v25 = v22;

      *v11 = v25;
      a2 = v24;
      v13 = v23;
      v26 = v29;
      v11[1] = v29;
      v11[2] = v17;
      type metadata accessor for SiriSuggestions.AppIntent(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      *v11 = v16;
      swift_storeEnumTagMultiPayload();
      v27 = v16;
      v26 = v29;
    }

    SiriSuggestions.Intent.getIntentQuery()();
    sub_1BF90DBB4(v11);
    sub_1BF9ADC48(v16, v26, v17, v15);
    v14 = v31;
    v12 = v30;
  }

  *a4 = v13;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14;
  *(a4 + 32) = a2;
  *(a4 + 40) = v21;
}

void InAppDetails.init(from:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_22();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE95B0, &unk_1BF9BEFA0);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  OUTLINED_FUNCTION_8();
  sub_1BF9B13B8();
  OUTLINED_FUNCTION_53();
  if (!v1)
  {
    sub_1BF8E61A4();
    OUTLINED_FUNCTION_6_24();
    sub_1BF9B5558();
    v9 = v24;
    v22 = v23;
    v10 = v25;
    v11 = v26;
    v19 = sub_1BF915B7C(1, v8);
    v20 = v9;
    v21 = v11;
    v18 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AB8, &qword_1BF9C1D20);
    sub_1BF9B140C(&qword_1EBDEA7C8, &qword_1EDBF3A90);
    OUTLINED_FUNCTION_4_30();
    sub_1BF9B5508();
    v12 = OUTLINED_FUNCTION_60();
    v13(v12);
    v14 = v23;
    v15 = v20;
    *v2 = v22;
    v2[1] = v15;
    v16 = v21;
    v2[2] = v18;
    v2[3] = v16;
    v2[4] = v19;
    v2[5] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_37();
}

void InAppDetails.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v24 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE9590, &qword_1BF9BEF90);
  OUTLINED_FUNCTION_1(v4);
  v25 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v14 = v0[3];
  v15 = v0[5];
  v22 = v0[4];
  v23 = v13;
  v21 = v15;
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF9B13B8();

  sub_1BF9B5898();
  v26 = v11;
  v27 = v12;
  v28 = v23;
  v29 = v14;
  sub_1BF8E61F8();
  OUTLINED_FUNCTION_3_32();
  v17 = v24;
  sub_1BF9B5638();

  if (v17)
  {
    (*(v25 + 8))(v10, v4);
  }

  else
  {
    v18 = v21;
    v19 = v25;
    sub_1BF91B788(v22);
    sub_1BF916914();

    v26 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AB8, &qword_1BF9C1D20);
    sub_1BF9B140C(&qword_1EBDEA7D0, &qword_1EDBF3A98);
    OUTLINED_FUNCTION_3_32();
    sub_1BF9B55E8();
    (*(v19 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_37();
}

void __swiftcall InAppDetailsKey.init(identifier:entities:)(SiriSuggestionsKit::InAppDetailsKey *__return_ptr retstr, SiriSuggestionsKit::InAppIdentifier identifier, Swift::OpaquePointer entities)
{
  v3 = *(identifier.appBundleId._countAndFlagsBits + 8);
  retstr->identifier.appBundleId._countAndFlagsBits = *identifier.appBundleId._countAndFlagsBits;
  retstr->identifier.appBundleId._object = v3;
  retstr->identifier.placementId = *(identifier.appBundleId._countAndFlagsBits + 16);
  retstr->entities._rawValue = identifier.appBundleId._object;
}

uint64_t InAppDetails.description.getter()
{
  v9 = *v0;
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);

  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD000000000000011, 0x80000001BF9CE580);
  v5 = InAppIdentifier.description.getter();
  MEMORY[0x1BFB5DE90](v5);

  MEMORY[0x1BFB5DE90](0x65697469746E650ALL, 0xEB00000000203A73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
  v6 = sub_1BF9B4978();
  MEMORY[0x1BFB5DE90](v6);

  MEMORY[0x1BFB5DE90](0xD000000000000013, 0x80000001BF9CE5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EB0, &qword_1BF9C31A8);
  v7 = sub_1BF9B4B08();
  MEMORY[0x1BFB5DE90](v7);

  return 0;
}

uint64_t sub_1BF9B05EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_70() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001BF9CE5C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_70();

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

uint64_t sub_1BF9B06E8(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x7365697469746E65;
  }

  return 0xD000000000000010;
}

uint64_t sub_1BF9B0758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9B05EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9B0780(uint64_t a1)
{
  v2 = sub_1BF9B13B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9B07BC(uint64_t a1)
{
  v2 = sub_1BF9B13B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InAppDetailsKey.identifier.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_14_18(a1);
}

uint64_t InAppDetailsKey.description.getter()
{
  v7 = *v0;
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  sub_1BF9B5288();

  strcpy(v8, "{identifier: ");
  v4 = InAppIdentifier.description.getter();
  MEMORY[0x1BFB5DE90](v4);

  MEMORY[0x1BFB5DE90](0x697469746E65202CLL, 0xEC000000203A7365);
  v5 = sub_1BF9B4978();
  MEMORY[0x1BFB5DE90](v5);

  MEMORY[0x1BFB5DE90](125, 0xE100000000000000);
  return v8[0];
}

void static InAppDetailsKey.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1BF9B56D8() & 1) == 0)
  {
    return;
  }

  if (!v4)
  {
    if (v5)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v5)
  {
    v9 = v2 == v6 && v4 == v5;
    if (v9 || (sub_1BF9B56D8() & 1) != 0)
    {
LABEL_13:

      sub_1BF8D5F08(v3, v7);
    }
  }
}

uint64_t sub_1BF9B0A38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF9B0B08(char a1)
{
  if (a1)
  {
    return 0x7365697469746E65;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1BF9B0B44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF9B0B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9B0A38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9B0BC0(uint64_t a1)
{
  v2 = sub_1BF9B14D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9B0BFC(uint64_t a1)
{
  v2 = sub_1BF9B14D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InAppDetailsKey.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v19 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA7D8, &unk_1BF9C9F00);
  OUTLINED_FUNCTION_1(v4);
  v20 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v14 = v0[3];
  v17 = v0[4];
  v18 = v13;
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF9B14D8();

  sub_1BF9B5898();
  v21 = v11;
  v22 = v12;
  v23 = v18;
  v24 = v14;
  sub_1BF8E61F8();
  OUTLINED_FUNCTION_3_32();
  v16 = v19;
  sub_1BF9B5638();

  if (!v16)
  {
    v21 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8888, &qword_1BF9B7D48);
    sub_1BF8D7594(&qword_1EDBF4758);
    OUTLINED_FUNCTION_3_32();
    sub_1BF9B5638();
  }

  (*(v20 + 8))(v10, v4);
  OUTLINED_FUNCTION_37();
}

uint64_t InAppDetailsKey.hash(into:)(const void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1BF9B4B48();
  sub_1BF9B57C8();
  if (v6)
  {
    sub_1BF9B4B48();
  }

  return sub_1BF8D7448(a1, v7);
}

uint64_t InAppDetailsKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_37_1();
  sub_1BF9B4B48();
  sub_1BF9B57C8();
  if (v4)
  {
    sub_1BF9B4B48();
  }

  sub_1BF8D7448(v7, v5);
  return sub_1BF9B57E8();
}

void InAppDetailsKey.init(from:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_22();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA7E8, &qword_1BF9C9F10);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  sub_1BF9B14D8();
  OUTLINED_FUNCTION_53();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    sub_1BF8E61A4();
    OUTLINED_FUNCTION_6_24();
    sub_1BF9B5558();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8888, &qword_1BF9B7D48);
    sub_1BF8D7594(&qword_1EDBF4E50);
    OUTLINED_FUNCTION_4_30();
    sub_1BF9B5558();
    v7 = OUTLINED_FUNCTION_60();
    v8(v7);
    *v2 = v9;
    v2[1] = v10;
    v2[2] = v11;
    v2[3] = v12;
    v2[4] = v9;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9B1160()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  sub_1BF9B57A8();
  InAppDetailsKey.hash(into:)(v4);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF9B11C0(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3)
{
  v32[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92B0, &qword_1BF9C9210);
  result = sub_1BF9B5458();
  v5 = 0;
  v29 = result;
  v30 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v28 = result + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v30 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      sub_1BF8D7914(*(v30 + 56) + 48 * v16, v32);

      v20 = a2(v32);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v32);
      result = v29;
      *(v28 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v23 = (v29[6] + 16 * v16);
      *v23 = v18;
      v23[1] = v19;
      v24 = (v29[7] + 16 * v16);
      *v24 = v20;
      v24[1] = v22;
      v25 = v29[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v29[2] = v27;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF9B1364()
{
  result = qword_1EDBF4320;
  if (!qword_1EDBF4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4320);
  }

  return result;
}

unint64_t sub_1BF9B13B8()
{
  result = qword_1EBDEA7C0;
  if (!qword_1EBDEA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA7C0);
  }

  return result;
}

uint64_t sub_1BF9B140C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE9AB8, &qword_1BF9C1D20);
    sub_1BF9B1494(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF9B1494(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSuggestions.IntentQuery(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF9B14D8()
{
  result = qword_1EBDEA7E0;
  if (!qword_1EBDEA7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA7E0);
  }

  return result;
}

unint64_t sub_1BF9B1530()
{
  result = qword_1EDBF32D0;
  if (!qword_1EDBF32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32D0);
  }

  return result;
}

unint64_t sub_1BF9B1588()
{
  result = qword_1EBDEA7F0;
  if (!qword_1EBDEA7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA7F0);
  }

  return result;
}

uint64_t sub_1BF9B15E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BF9B1628(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1BF9B1680(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BF9B16C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1BF9B1724(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BF9B17FC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9B18DC()
{
  result = qword_1EBDEA7F8;
  if (!qword_1EBDEA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA7F8);
  }

  return result;
}

unint64_t sub_1BF9B1934()
{
  result = qword_1EBDEA800;
  if (!qword_1EBDEA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA800);
  }

  return result;
}

unint64_t sub_1BF9B198C()
{
  result = qword_1EBDEA808;
  if (!qword_1EBDEA808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA808);
  }

  return result;
}

unint64_t sub_1BF9B19E4()
{
  result = qword_1EBDEA810;
  if (!qword_1EBDEA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA810);
  }

  return result;
}

unint64_t sub_1BF9B1A3C()
{
  result = qword_1EBDEA818;
  if (!qword_1EBDEA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA818);
  }

  return result;
}

unint64_t sub_1BF9B1A94()
{
  result = qword_1EBDEA820;
  if (!qword_1EBDEA820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA820);
  }

  return result;
}

unint64_t sub_1BF9B1AEC()
{
  result = qword_1EBDEA828;
  if (!qword_1EBDEA828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA828);
  }

  return result;
}

unint64_t sub_1BF9B1B44()
{
  result = qword_1EDBF4310;
  if (!qword_1EDBF4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4310);
  }

  return result;
}

unint64_t sub_1BF9B1B9C()
{
  result = qword_1EDBF4318;
  if (!qword_1EDBF4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4318);
  }

  return result;
}

uint64_t static IntentParameterServiceUtils.getParametersFromIntent(intent:suggestion:checkForAllMandatoryParams:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 89) = a3;
  *(v3 + 184) = a1;
  *(v3 + 192) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF9B1C24, 0, 0);
}

uint64_t sub_1BF9B1C24()
{
  v2 = *(v0 + 192);
  v3 = sub_1BF9B4988();
  v4 = *(v2 + 152);
  *(v0 + 200) = v4;
  v5 = *(v4 + 32);
  *(v0 + 90) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  *(v0 + 208) = v3;
  *(v0 + 216) = v3;

  if (v8)
  {
    v10 = 0;
LABEL_8:
    *(v0 + 224) = v8;
    *(v0 + 232) = v10;
    OUTLINED_FUNCTION_2_34(v9, __clz(__rbit64(v8)) | (v10 << 6));
    sub_1BF8D2004(v8 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer, v0 + 16);
    OUTLINED_FUNCTION_4_31();

    v12 = OUTLINED_FUNCTION_5_24();
    v13 = v1(v12);
    v15 = OUTLINED_FUNCTION_0_34(v13, v14);
    v24 = v16;
    v17 = v15[1];
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_7_26(v18);
    *v19 = v20;
    v21 = OUTLINED_FUNCTION_1_33(v19);
    v22 = v24;
  }

  else
  {
    v11 = 0;
    while (((63 - v7) >> 6) - 1 != v11)
    {
      v10 = v11 + 1;
      v8 = *(v9 + 8 * v11++ + 72);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v21 = OUTLINED_FUNCTION_5();
  }

  return v22(v21);
}

uint64_t sub_1BF9B1DF8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v8 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v5 = *(v2 + 248);

    v6 = sub_1BF9B256C;
  }

  else
  {
    v6 = sub_1BF9B1F38;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BF9B1F38()
{
  v71 = v0;
  sub_1BF9AD570(v0 + 56, v0 + 96);
  if (*(v0 + 128) == 2)
  {
    v2 = vorrq_s8(*(v0 + 96), *(v0 + 112));
    if (!*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)))
    {
      v43 = *(v0 + 89);
      sub_1BF9B29C8(v0 + 96);
      if (v43 == 1 && *(*(v0 + 256) + 32) == 1)
      {
        v44 = *(v0 + 216);

        if (qword_1EDBF08E8 != -1)
        {
          OUTLINED_FUNCTION_3_33();
        }

        v45 = *(v0 + 248);
        v46 = sub_1BF9B47C8();
        __swift_project_value_buffer(v46, qword_1EDBF08F0);

        v47 = sub_1BF9B47A8();
        v48 = sub_1BF9B5048();

        v49 = os_log_type_enabled(v47, v48);
        v50 = *(v0 + 248);
        if (v49)
        {
          v51 = *(v0 + 240);
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v70 = v53;
          *v52 = 136315138;
          v54 = sub_1BF8DE810(v51, v50, &v70);

          *(v52 + 4) = v54;
          _os_log_impl(&dword_1BF8B8000, v47, v48, "%s: This is a mandatory parameter and it isnt being extracted. Returning nothing", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v53);
          OUTLINED_FUNCTION_87();
          OUTLINED_FUNCTION_87();
        }

        else
        {
        }

        v66 = *(v0 + 256);
        v67 = *(v0 + 200);
        sub_1BF9B4988();

        sub_1BF9B29C8(v0 + 56);
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_38:
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_10_23();

        __asm { BRAA            X2, X16 }
      }

      if (qword_1EDBF08E8 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_44;
    }
  }

  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 208);
  sub_1BF9B29C8(v0 + 96);
  sub_1BF9AD570(v0 + 56, v0 + 136);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 176) = v5;
  v6 = sub_1BF8C2E64(v3, v4);
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    goto LABEL_42;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA830, qword_1BF9CA590);
  if ((sub_1BF9B53A8() & 1) == 0)
  {
    goto LABEL_10;
  }

  v10 = *(v0 + 176);
  v11 = sub_1BF8C2E64(*(v0 + 240), *(v0 + 248));
  if ((v9 & 1) == (v12 & 1))
  {
    v8 = v11;
LABEL_10:
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    if (v9)
    {

      v17 = *(v0 + 176);
      sub_1BF9B3890(v0 + 136, v17[7] + 40 * v8);

      sub_1BF9B29C8(v0 + 56);
    }

    else
    {
      v18 = *(v0 + 240);
      v17 = *(v0 + 176);
      v17[(v8 >> 6) + 8] |= 1 << v8;
      v19 = (v17[6] + 16 * v8);
      *v19 = v18;
      v19[1] = v15;
      v20 = v17[7] + 40 * v8;
      v21 = *(v0 + 136);
      v22 = *(v0 + 152);
      *(v20 + 32) = *(v0 + 168);
      *v20 = v21;
      *(v20 + 16) = v22;

      sub_1BF9B29C8(v0 + 56);
      v23 = v17[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_43;
      }

      v17[2] = v25;
    }

    for (i = v17; ; i = *(v0 + 216))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v28 = *(v0 + 224);
      v27 = *(v0 + 232);
      *(v0 + 208) = v17;
      *(v0 + 216) = i;
      v29 = (v28 - 1) & v28;
      if (v29)
      {
        v30 = *(v0 + 200);
        goto LABEL_22;
      }

      while (!__OFADD__(v27, 1))
      {
        v30 = OUTLINED_FUNCTION_8_20();
        if (v33 == v24)
        {

          goto LABEL_38;
        }

        v29 = *(v30 + 8 * v32 + 64);
        v27 = v31 + 1;
        if (v29)
        {
          v27 = v32;
LABEL_22:
          *(v0 + 224) = v29;
          *(v0 + 232) = v27;
          OUTLINED_FUNCTION_2_34(v30, __clz(__rbit64(v29)) | (v27 << 6));
          sub_1BF8D2004(v8 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer, v0 + 16);
          OUTLINED_FUNCTION_4_31();

          v34 = OUTLINED_FUNCTION_5_24();
          v35 = v1(v34);
          v37 = OUTLINED_FUNCTION_0_34(v35, v36)[1];
          v38 = swift_task_alloc();
          v39 = OUTLINED_FUNCTION_7_26(v38);
          *v39 = v40;
          OUTLINED_FUNCTION_1_33();
          OUTLINED_FUNCTION_10_23();

          __asm { BRAA            X2, X16 }
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      OUTLINED_FUNCTION_3_33();
LABEL_32:
      v55 = *(v0 + 248);
      v56 = *(v0 + 192);
      v57 = sub_1BF9B47C8();
      __swift_project_value_buffer(v57, qword_1EDBF08F0);

      v58 = sub_1BF9B47A8();
      v59 = sub_1BF9B5038();

      v60 = os_log_type_enabled(v58, v59);
      v61 = *(v0 + 248);
      v8 = *(v0 + 256);
      if (v60)
      {
        v62 = *(v0 + 240);
        v63 = *(v0 + 192);
        v64 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v64 = 136315394;
        v1 = sub_1BF8DE810(v62, v61, &v70);

        *(v64 + 4) = v1;
        *(v64 + 12) = 2080;
        *(v64 + 14) = sub_1BF8DE810(*(v63 + 56), *(v63 + 64), &v70);
        _os_log_impl(&dword_1BF8B8000, v58, v59, "Ignoring intent parameter: %s for %s", v64, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_87();
      }

      else
      {
        v65 = *(v0 + 248);
      }

      sub_1BF9B29C8(v0 + 56);
      v17 = *(v0 + 208);
    }
  }

  OUTLINED_FUNCTION_10_23();

  return sub_1BF9B5758();
}

uint64_t sub_1BF9B256C()
{
  v42 = v0;
  if (qword_1EDBF08E8 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_3_33();
  }

  v2 = v0[35];
  v3 = v0[32];
  v4 = sub_1BF9B47C8();
  __swift_project_value_buffer(v4, qword_1EDBF08F0);

  v5 = v2;
  v6 = sub_1BF9B47A8();
  v7 = sub_1BF9B5048();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[35];
  v10 = v0[32];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 136315394;
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);

    v15 = sub_1BF8DE810(v13, v14, &v41);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v1 = v17;
    _os_log_impl(&dword_1BF8B8000, v6, v7, "Error when extracting properties for %s. Ignoring result. %@", v11, 0x16u);
    sub_1BF9B2960(v1);
    OUTLINED_FUNCTION_87();
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {
  }

  v18 = v0[26];
  v19 = v0[27];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v21 = v0[28];
  v20 = v0[29];
  v0[26] = v18;
  v0[27] = v19;
  v22 = (v21 - 1) & v21;
  if (v22)
  {
    v23 = v0[25];
LABEL_12:
    v0[28] = v22;
    v0[29] = v20;
    OUTLINED_FUNCTION_2_34(v23, __clz(__rbit64(v22)) | (v20 << 6));
    sub_1BF8D2004(v18 + OBJC_IVAR____TtC18SiriSuggestionsKit19ResolvableParameter_intentTransformer, (v0 + 2));
    OUTLINED_FUNCTION_4_31();

    v28 = OUTLINED_FUNCTION_5_24();
    v29 = v1(v28);
    v31 = OUTLINED_FUNCTION_0_34(v29, v30);
    v40 = v32;
    v33 = v31[1];
    v34 = swift_task_alloc();
    v35 = OUTLINED_FUNCTION_7_26(v34);
    *v35 = v36;
    v38 = OUTLINED_FUNCTION_1_33();
    v39 = v40;
  }

  else
  {
    while (1)
    {
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      v23 = OUTLINED_FUNCTION_8_20();
      if (v26 == v27)
      {
        break;
      }

      v22 = *(v23 + 8 * v25 + 64);
      v20 = v24 + 1;
      if (v22)
      {
        v20 = v25;
        goto LABEL_12;
      }
    }

    v38 = OUTLINED_FUNCTION_5();
  }

  return v39(v38);
}

uint64_t sub_1BF9B288C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1BF9B28EC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1BF9B2960(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9468, &unk_1BF9C2470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF9B2A1C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1BF9B4888();
  sub_1BF9B39F4(&qword_1EBDE9DF8);
  v5 = sub_1BF9B4A48();

  return sub_1BF9B2D2C(a1, v5);
}

unint64_t sub_1BF9B2AA0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1BF9B5208();

  return sub_1BF9B2ED4(a1, v5);
}

unint64_t sub_1BF9B2AE4(char a1)
{
  v3 = *(v1 + 40);
  sub_1BF9B57A8();
  sub_1BF8CD538(v6, a1);
  v4 = sub_1BF9B57E8();

  return sub_1BF9B2F98(a1, v4);
}

unint64_t sub_1BF9B2B50(unsigned int a1)
{
  v3 = *(v1 + 40);
  sub_1BF9B57A8();
  InvocationType.hash(into:)();
  v4 = sub_1BF9B57E8();

  return sub_1BF9B31A4(a1, v4);
}

unint64_t sub_1BF9B2BC0(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_1BF9B57A8();
  sub_1BF8CD538(v10, a1);
  MEMORY[0x1BFB5EAC0](a2);
  MEMORY[0x1BFB5EAC0](a3);
  v8 = sub_1BF9B57E8();

  return sub_1BF9B345C(a1, a2, a3, v8);
}

unint64_t sub_1BF9B2C5C(void *a1)
{
  v3 = *(v1 + 40);
  sub_1BF9B57A8();
  v4 = a1[14];
  __swift_project_boxed_opaque_existential_1(a1 + 10, a1[13]);
  v5 = *(v4 + 32);
  sub_1BF9B4A58();
  sub_1BF9B57A8();
  v6 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9B4A58();
  v7 = sub_1BF9B57E8();
  MEMORY[0x1BFB5EAC0](v7);
  v8 = sub_1BF9B57E8();

  return sub_1BF9B3698(a1, v8);
}

unint64_t sub_1BF9B2D2C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1BF9B4888();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1BF9B39F4(&qword_1EBDEA838);
    v10 = sub_1BF9B4A88();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BF9B2ED4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1BF9B3998(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1BFB5E520](v8, a1);
    sub_1BF972B34(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BF9B2F98(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 5459817;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE500000000000000;
          v8 = 0x534F63616DLL;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 1397716596;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x534F6863746177;
          break;
        case 4:
          v7 = 0xE800000000000000;
          v8 = 0x534F6E6F69736976;
          break;
        case 5:
          v7 = 0xE700000000000000;
          v8 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v9 = 0xE300000000000000;
      v10 = 5459817;
      switch(a1)
      {
        case 1:
          v9 = 0xE500000000000000;
          v10 = 0x534F63616DLL;
          break;
        case 2:
          v9 = 0xE400000000000000;
          v10 = 1397716596;
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = 0x534F6863746177;
          break;
        case 4:
          v9 = 0xE800000000000000;
          v10 = 0x534F6E6F69736976;
          break;
        case 5:
          v9 = 0xE700000000000000;
          v10 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_1BF9B56D8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1BF9B31A4(unsigned int a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v5 = ~v3;
  v6 = a1 & 0xFF00;
  v7 = BYTE1(a1) - 2;
  v8 = a1;
  v22 = a1 & 0xFE;
  if (a1)
  {
    v9 = 0x6E61747369737361;
  }

  else
  {
    v9 = 1919251317;
  }

  v20 = v9;
  v10 = 0xE400000000000000;
  if (a1)
  {
    v10 = 0xE900000000000074;
  }

  v21 = v10;
  if ((a1 >> 8))
  {
    v11 = 0x6465707974;
  }

  else
  {
    v11 = 0x6563696F76;
  }

  while (2)
  {
    v12 = *(*(v2 + 48) + 2 * v4);
    switch(v12 >> 8)
    {
      case 2u:
        if (v6 != 512)
        {
          goto LABEL_47;
        }

        return v4;
      case 3u:
        if (v6 != 768)
        {
          goto LABEL_47;
        }

        return v4;
      case 4u:
        if (v6 != 1024)
        {
          goto LABEL_47;
        }

        return v4;
      case 5u:
        if (v6 != 1280)
        {
          goto LABEL_47;
        }

        return v4;
      case 6u:
        if (v6 != 1536)
        {
          goto LABEL_47;
        }

        return v4;
      default:
        if (v7 < 5)
        {
          goto LABEL_47;
        }

        if (*(*(v2 + 48) + 2 * v4) == 2)
        {
          if (v8 == 2)
          {
            goto LABEL_42;
          }

          goto LABEL_47;
        }

        if (*(*(v2 + 48) + 2 * v4) != 3)
        {
          if (v22 == 2)
          {
            goto LABEL_47;
          }

          if (v12)
          {
            v13 = 0x6E61747369737361;
          }

          else
          {
            v13 = 1919251317;
          }

          if (v12)
          {
            v14 = 0xE900000000000074;
          }

          else
          {
            v14 = 0xE400000000000000;
          }

          if (v13 == v20 && v14 == v21)
          {

            goto LABEL_42;
          }

          v19 = sub_1BF9B56D8();

          if (v19)
          {
            goto LABEL_42;
          }

LABEL_47:
          v4 = (v4 + 1) & v5;
          if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
          {
            continue;
          }

          return v4;
        }

        if (v8 != 3)
        {
          goto LABEL_47;
        }

LABEL_42:
        if ((v12 >> 8))
        {
          v16 = 0x6465707974;
        }

        else
        {
          v16 = 0x6563696F76;
        }

        if (v16 == v11)
        {
          swift_bridgeObjectRelease_n();
          return v4;
        }

        v17 = sub_1BF9B56D8();
        swift_bridgeObjectRelease_n();
        if ((v17 & 1) == 0)
        {
          goto LABEL_47;
        }

        return v4;
    }
  }
}

unint64_t sub_1BF9B345C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    do
    {
      v9 = *(v4 + 48) + 24 * v6;
      v11 = *(v9 + 8);
      v10 = *(v9 + 16);
      v12 = 0xE300000000000000;
      v13 = 5459817;
      switch(*v9)
      {
        case 1:
          v12 = 0xE500000000000000;
          v13 = 0x534F63616DLL;
          break;
        case 2:
          v12 = 0xE400000000000000;
          v13 = 1397716596;
          break;
        case 3:
          v12 = 0xE700000000000000;
          v13 = 0x534F6863746177;
          break;
        case 4:
          v12 = 0xE800000000000000;
          v13 = 0x534F6E6F69736976;
          break;
        case 5:
          v12 = 0xE700000000000000;
          v13 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v14 = 0xE300000000000000;
      v15 = 5459817;
      switch(a1)
      {
        case 1:
          v14 = 0xE500000000000000;
          v15 = 0x534F63616DLL;
          break;
        case 2:
          v14 = 0xE400000000000000;
          v15 = 1397716596;
          break;
        case 3:
          v14 = 0xE700000000000000;
          v15 = 0x534F6863746177;
          break;
        case 4:
          v14 = 0xE800000000000000;
          v15 = 0x534F6E6F69736976;
          break;
        case 5:
          v14 = 0xE700000000000000;
          v15 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      if (v13 == v15 && v12 == v14)
      {
      }

      else
      {
        v17 = sub_1BF9B56D8();

        if ((v17 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      if (v11 == a2 && v10 == a3)
      {
        return v6;
      }

LABEL_26:
      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1BF9B3698(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    while (1)
    {
      sub_1BF932458(*(v6 + 48) + 120 * v5, v26);
      v9 = v29;
      v10 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v11 = (*(v10 + 40))(v9, v10);
      v13 = v12;
      v14 = a1[13];
      v15 = a1[14];
      __swift_project_boxed_opaque_existential_1(a1 + 10, v14);
      if (v11 == (*(v15 + 40))(v14, v15) && v13 == v16)
      {
        break;
      }

      v18 = sub_1BF9B56D8();

      if (v18)
      {
        goto LABEL_10;
      }

      sub_1BF9324B4(v26);
LABEL_11:
      v5 = (v5 + 1) & v8;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

LABEL_10:
    v19 = v27;
    v20 = a1[3];
    v21 = __swift_project_boxed_opaque_existential_1(a1, v20);
    v25[3] = v20;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v25);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1Tm, v21, v20);
    v23 = v19(v25);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1BF9324B4(v26);
    if (v23)
    {
      return v5;
    }

    goto LABEL_11;
  }

  return v5;
}

_BYTE *storeEnumTagSinglePayload for IntentParameterServiceUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF9B39F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BF9B4888();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF9B3A98@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BF9B4AF8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1BF9B4328();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v17 = 0xC800000000;
  v18 = sub_1BF9B42F8();
  sub_1BF9B41D0(&v17, 0);
  v18 |= 0x4000000000000000uLL;
  v9 = sub_1BF9B3D64(&v17, a1);
  if ((v10 & 1) != 0 || v9 < 1)
  {
    result = sub_1BF8F9F3C(v17, v18);
    v13 = 0;
    v15 = 0;
  }

  else
  {
    sub_1BF9B4408();
    v11 = v17;
    v12 = v18;
    sub_1BF9B4AE8();
    v13 = sub_1BF9B4AC8();
    v15 = v14;
    result = sub_1BF8F9F3C(v11, v12);
  }

  *a2 = v13;
  a2[1] = v15;
  return result;
}

double sub_1BF9B3BD8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
    sub_1BF9B5278();
    if (!v2)
    {
      return *&v5[2];
    }

    return result;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      sub_1BF9B3A98(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), v5);
      if (!v2)
      {
        return *v5;
      }

      return result;
    }

    goto LABEL_9;
  }

  v5[0] = a1;
  v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  sub_1BF9B3A98(v5, &v4);
  if (!v2)
  {
    return *&v4;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemInformation(_BYTE *result, int a2, int a3)
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

__int128 *sub_1BF9B3D64(uint64_t *a1, char *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BF8F9F3C(v4, v3);
      *a1 = xmmword_1BF9C9A40;
      sub_1BF8F9F3C(0, 0xC000000000000000);
      v14 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      if (v14 < v4)
      {
        goto LABEL_25;
      }

      if (sub_1BF9B42E8() && __OFSUB__(v4, sub_1BF9B4318()))
      {
        goto LABEL_26;
      }

      v15 = sub_1BF9B4328();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = sub_1BF9B42C8();

      v13 = v18;
LABEL_18:
      if (v14 < v4)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v7 = sub_1BF9B40EC(v4, v4 >> 32, v13, a2);

      v12 = v13 | 0x4000000000000000;
      if (v2)
      {
        *a1 = v4;
        goto LABEL_21;
      }

      *a1 = v4;
      a1[1] = v12;
      break;
    case 2uLL:
      v9 = *a1;

      sub_1BF8F9F3C(v4, v3);
      *&v23 = v4;
      *(&v23 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1BF9C9A40;
      sub_1BF8F9F3C(0, 0xC000000000000000);
      v7 = &v23;
      sub_1BF9B4398();
      v10 = v23;
      v11 = sub_1BF9B40EC(*(v23 + 16), *(v23 + 24), *(&v23 + 1), a2);
      if (v2)
      {
        v12 = *(&v10 + 1) | 0x8000000000000000;
        *a1 = v10;
LABEL_21:
        a1[1] = v12;
      }

      else
      {
        v7 = v11;
        *a1 = v10;
        a1[1] = *(&v10 + 1) | 0x8000000000000000;
      }

      break;
    case 3uLL:
      *(&v23 + 7) = 0;
      v22 = 0;
      *&v23 = 0;
      if (sysctlbyname(a2, &v23, &v22, 0, 0))
      {
        v7 = 0;
      }

      else
      {
        v7 = v22;
      }

      break;
    default:
      sub_1BF8F9F3C(v4, v3);
      *&v23 = v4;
      WORD4(v23) = v3;
      BYTE10(v23) = BYTE2(v3);
      BYTE11(v23) = BYTE3(v3);
      BYTE12(v23) = BYTE4(v3);
      BYTE13(v23) = BYTE5(v3);
      BYTE14(v23) = BYTE6(v3);
      v22 = BYTE6(v3);
      if (sysctlbyname(a2, &v23, &v22, 0, 0))
      {
        v7 = 0;
      }

      else
      {
        v7 = v22;
      }

      v8 = DWORD2(v23) | ((WORD6(v23) | (BYTE14(v23) << 16)) << 32);
      *a1 = v23;
      a1[1] = v8;
      break;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

size_t sub_1BF9B40EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1BF9B42E8();
  if (!v7)
  {
LABEL_13:
    __break(1u);
  }

  v8 = v7;
  v9 = sub_1BF9B4318();
  v10 = a1 - v9;
  if (__OFSUB__(a1, v9))
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_1BF9B4308();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v17[0] = v14;
  if (sysctlbyname(a4, (v8 + v10), v17, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = v17[0];
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF9B41D0(int *a1, int a2)
{
  sub_1BF9B43B8();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = sub_1BF9B42E8();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return sub_1BF9B4278();
  }

  v8 = v7;
  v9 = sub_1BF9B4318();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = sub_1BF9B4308();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}