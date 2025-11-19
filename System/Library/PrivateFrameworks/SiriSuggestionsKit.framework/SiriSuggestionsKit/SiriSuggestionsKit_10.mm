uint64_t sub_1BF9755C0(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA200, &qword_1BF9C4838);
  sub_1BF919B68();
  sub_1BF9B54A8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    v15 = 0;
    sub_1BF978328();
    sub_1BF9B5558();
    v10 = v14[1];
    v11 = sub_1BF976D38(1);
    v13 = sub_1BF919EE8(v10, v11);

    a2 = sub_1BF972D58(v13);
    (*(v6 + 8))(v9, v5);
  }

  return a2;
}

uint64_t SiriSuggestions.IntentQuery.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA208, &qword_1BF9C4840);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_0();
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF977488();
  OUTLINED_FUNCTION_30_9();
  v23 = *(v4 + 8);
  v25 = *(v4 + 16);
  v27 = *(v4 + 24);
  sub_1BF9439F0(v23, v25, v27);
  sub_1BF977578();
  sub_1BF9B5638();
  if (v2)
  {
    sub_1BF8F5A94(v23, v25, v27);
  }

  else
  {
    sub_1BF8F5A94(v23, v25, v27);
    v11 = type metadata accessor for SiriSuggestions.IntentQuery(0);
    v12 = *(v11 + 32);
    type metadata accessor for SiriSuggestions.Intent(0);
    OUTLINED_FUNCTION_6_15();
    sub_1BF977530(v13, v14);
    OUTLINED_FUNCTION_9_16();
    sub_1BF9B55E8();
    v24 = *(v4 + 32);
    v26 = *(v4 + 40);
    v28 = *(v4 + 48);
    v15 = sub_1BF8D6B34();

    OUTLINED_FUNCTION_27_8();
    sub_1BF9B55E8();

    if (!v15)
    {
      sub_1BF91BA00(*v4);
      sub_1BF975A7C(v3, 3, v19);

      v20 = *(v11 + 28);
      sub_1BF9B4518();
      OUTLINED_FUNCTION_7_15();
      sub_1BF977530(v21, v22);
      OUTLINED_FUNCTION_9_16();
      sub_1BF9B5638();
    }
  }

  v16 = OUTLINED_FUNCTION_7_3();
  return v17(v16);
}

uint64_t sub_1BF975A7C(uint64_t a1, char a2, uint64_t a3)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  v44 = *(v45 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v7 = v42 - v6;
  v59 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA208, &qword_1BF9C4840);
  sub_1BF919B68();
  v43 = v7;
  sub_1BF9B5598();
  v8 = *(a3 + 16);
  sub_1BF8DD6D4();
  v10 = v9;
  v11 = *(a3 + 16);
  sub_1BF8DD788();
  v13 = v12;
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  v47 = a3;

  v20 = 0;
  v46 = v14;
  if (v17)
  {
    while (1)
    {
      v48 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v17)) | (v20 << 6);
      v23 = (*(v47 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      sub_1BF9502F0(*(v47 + 56) + 40 * v22, v57, &qword_1EBDE8AB8, &qword_1BF9B85C0);
      v52[0] = v24;
      v52[1] = v25;
      v53 = v57[0];
      v54 = v57[1];
      v55 = v58;
      sub_1BF9502F0(v52, v49, &qword_1EBDEA248, &qword_1BF9C7790);
      v27 = v49[0];
      v26 = v49[1];
      v28 = v10;
      v29 = *(v10 + 16);
      v30 = v28;
      v31 = *(v28 + 24);

      if (v29 >= v31 >> 1)
      {
        sub_1BF8DD6D4();
        v30 = v37;
      }

      *(v30 + 16) = v29 + 1;
      v32 = v30 + 16 * v29;
      v10 = v30;
      *(v32 + 32) = v27;
      *(v32 + 40) = v26;
      sub_1BF8DFBF0(v50, &qword_1EBDE8AB8, &qword_1BF9B85C0);
      sub_1BF9502F0(v52, v49, &qword_1EBDEA248, &qword_1BF9C7790);

      v13 = v48;
      v33 = *(v48 + 16);
      if (v33 >= *(v48 + 24) >> 1)
      {
        sub_1BF8DD788();
        v13 = v38;
      }

      v14 = v46;
      v17 &= v17 - 1;
      result = sub_1BF8DFBF0(v52, &qword_1EBDEA248, &qword_1BF9C7790);
      *(v13 + 16) = v33 + 1;
      v34 = v13 + 40 * v33;
      v35 = v51;
      v36 = v50[1];
      *(v34 + 32) = v50[0];
      *(v34 + 48) = v36;
      *(v34 + 64) = v35;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return result;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v48 = v13;
      v20 = v21;
      goto LABEL_9;
    }
  }

  v56 = v10;
  LOBYTE(v52[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF9782C8(&qword_1EDBF4B20, &qword_1EBDE88A0, &qword_1BF9B7FC0);
  v39 = v45;
  v40 = v43;
  v41 = v42[1];
  sub_1BF9B5638();
  if (v41)
  {
    (*(v44 + 8))(v40, v39);
  }

  else
  {

    sub_1BF996908();
    (*(v44 + 8))(v40, v39);
  }
}

uint64_t sub_1BF975F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
  if (v4 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_18_12() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_70() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == OUTLINED_FUNCTION_22_8() && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_70() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
        if (v10 || (OUTLINED_FUNCTION_70() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4955557972657571 && a2 == 0xE900000000000044)
        {

          return 4;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_70();

          if (v12)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1BF976064(char a1)
{
  result = 0x7954746E65746E69;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_18_12();
      break;
    case 2:
      result = OUTLINED_FUNCTION_22_8();
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    case 4:
      result = 0x4955557972657571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF976120(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF976174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF975F0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9761A8(uint64_t a1)
{
  v2 = sub_1BF977488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9761E4(uint64_t a1)
{
  v2 = sub_1BF977488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.IntentQuery.hashValue.getter()
{
  type metadata accessor for SiriSuggestions.IntentQuery(0);
  OUTLINED_FUNCTION_1_23();
  sub_1BF977530(v0, v1);

  return sub_1BF9B4A48();
}

uint64_t sub_1BF976290()
{
  sub_1BF9B57A8();
  v1 = *(v0 + 8);
  if (!*(v0 + 24))
  {
    if (!*(v0 + 16))
    {
      sub_1BF9B57C8();
      return sub_1BF9B57E8();
    }

    sub_1BF9B57C8();
    goto LABEL_6;
  }

  if (*(v0 + 24) != 1)
  {
LABEL_6:
    sub_1BF9B4B48();
    return sub_1BF9B57E8();
  }

  v3 = *(v0 + 8);
  v4 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  sub_1BF9B4B08();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t SiriSuggestions.IntentQueryWithExecutionParameters.executionParameters.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for SiriSuggestions.IntentQueryWithExecutionParameters(0) + 20));
}

uint64_t SiriSuggestions.IntentQueryWithExecutionParameters.init(intentQuery:executionParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BF9775EC(a1, a3);
  result = type metadata accessor for SiriSuggestions.IntentQueryWithExecutionParameters(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1BF976444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7551746E65746E69 && a2 == 0xEB00000000797265;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BF9CD720 == a2)
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

uint64_t sub_1BF976518(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x7551746E65746E69;
  }
}

uint64_t sub_1BF976564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF976444(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF97658C(uint64_t a1)
{
  v2 = sub_1BF977650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9765C8(uint64_t a1)
{
  v2 = sub_1BF977650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.IntentQueryWithExecutionParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA218, &qword_1BF9C4848);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_0();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF977650();
  OUTLINED_FUNCTION_30_9();
  type metadata accessor for SiriSuggestions.IntentQuery(0);
  OUTLINED_FUNCTION_1_23();
  sub_1BF977530(v10, v11);
  OUTLINED_FUNCTION_9_16();
  sub_1BF9B5638();
  if (!v2)
  {
    v15 = *(v3 + *(type metadata accessor for SiriSuggestions.IntentQueryWithExecutionParameters(0) + 20));
    sub_1BF9776A4();

    OUTLINED_FUNCTION_27_8();
    sub_1BF9B5638();
  }

  v12 = OUTLINED_FUNCTION_7_3();
  return v13(v12);
}

void SiriSuggestions.IntentQueryWithExecutionParameters.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v32 = v3;
  v4 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v35 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA220, &qword_1BF9C4850);
  v11 = OUTLINED_FUNCTION_1(v10);
  v33 = v12;
  v34 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = type metadata accessor for SiriSuggestions.IntentQueryWithExecutionParameters(0);
  v19 = OUTLINED_FUNCTION_13(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v24 = v23 - v22;
  v25 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF977650();
  sub_1BF9B5868();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v26 = v33;
    v27 = v24;
    OUTLINED_FUNCTION_1_23();
    sub_1BF977530(v28, v29);
    v30 = v34;
    sub_1BF9B5558();
    sub_1BF9775EC(v35, v27);
    sub_1BF9776F8();
    sub_1BF9B5558();
    (*(v26 + 8))(v17, v30);
    *(v27 + *(v18 + 20)) = v36;
    sub_1BF97774C(v27, v32);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1BF9777A4(v27, type metadata accessor for SiriSuggestions.IntentQueryWithExecutionParameters);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF976A80(uint64_t a1, uint64_t a2)
{
  sub_1BF9502F0(a1, &v18, &qword_1EBDEA260, &qword_1BF9C4F50);
  sub_1BF925014(v18, *(&v18 + 1), a2, &v14);
  if (*(&v15 + 1) == 1)
  {
    sub_1BF8DFBF0(&v14, &qword_1EBDEA268, &qword_1BF9C4F58);
    sub_1BF8DFBF0(&v19, &qword_1EBDE95F0, &qword_1BF9B85D0);

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  sub_1BF8DFBF0(&v19, &qword_1EBDE95F0, &qword_1BF9B85D0);

  sub_1BF9502F0(&v22, &v18, &qword_1EBDE95F0, &qword_1BF9B85D0);
  if (!*(&v19 + 1))
  {
    sub_1BF8DFBF0(&v18, &qword_1EBDE95F0, &qword_1BF9B85D0);
    goto LABEL_8;
  }

  sub_1BF8E8174(&v18, &v14);
  sub_1BF9502F0(a1, &v18, &qword_1EBDEA260, &qword_1BF9C4F50);
  if (!v21)
  {
    sub_1BF8DFBF0(&v19, &qword_1EBDE95F0, &qword_1BF9B85D0);

    __swift_destroy_boxed_opaque_existential_1(&v14);
LABEL_8:
    if (!*(&v23 + 1) && !*(a1 + 40))
    {
      sub_1BF8DFBF0(&v22, &qword_1EBDE95F0, &qword_1BF9B85D0);
      v9 = 1;
      return v9 & 1;
    }

    sub_1BF8DFBF0(&v22, &qword_1EBDE95F0, &qword_1BF9B85D0);
    goto LABEL_11;
  }

  sub_1BF8E8174(&v19, v11);

  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  v4 = v12;
  v5 = v13;
  v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
  *(&v19 + 1) = v4;
  v20 = v5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v18);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1Tm, v6, v4);
  sub_1BF90AB90();
  v9 = v8;
  sub_1BF8DFBF0(&v22, &qword_1EBDE95F0, &qword_1BF9B85D0);
  __swift_destroy_boxed_opaque_existential_1(&v18);
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(&v14);
  return v9 & 1;
}

uint64_t sub_1BF976D38(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v58 - v7;
  v74 = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  sub_1BF8DF500();
  sub_1BF9B54A8();
  if (!v1)
  {
    v58 = v5;
    v59 = v4;
    v9 = sub_1BF9B5568();
    v10 = *(v9 + 16);
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    v11 = sub_1BF9876DC(&v70, v10);
    v64 = *(v9 + 16);
    v65 = v8;
    if (v64)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_93;
      }

      while (1)
      {
        v12 = 0;
        v62 = v9;
        v63 = v9 + 32;
        v60 = &v70 + 1;
        v61 = v11 + 32;
        while (v12 < *(v9 + 16))
        {
          v13 = v63 + 32 * v12;
          v15 = *v13;
          v14 = *(v13 + 8);
          v16 = HIBYTE(v14) & 0xF;
          v17 = *v13 & 0xFFFFFFFFFFFFLL;
          if ((v14 & 0x2000000000000000) != 0)
          {
            v18 = HIBYTE(v14) & 0xF;
          }

          else
          {
            v18 = *v13 & 0xFFFFFFFFFFFFLL;
          }

          if (!v18)
          {
            goto LABEL_85;
          }

          v19 = *(v13 + 16);
          v20 = *(v13 + 24);
          if ((v14 & 0x1000000000000000) == 0)
          {
            if ((v14 & 0x2000000000000000) != 0)
            {
              *&v70 = *v13;
              *(&v70 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
              if (v15 == 43)
              {
                if (!v16)
                {
                  goto LABEL_89;
                }

                if (--v16)
                {
                  v9 = 0;
                  v32 = v60;
                  while (1)
                  {
                    v33 = *v32 - 48;
                    if (v33 > 9)
                    {
                      break;
                    }

                    v34 = 10 * v9;
                    if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                    {
                      break;
                    }

                    v9 = v34 + v33;
                    if (__OFADD__(v34, v33))
                    {
                      break;
                    }

                    ++v32;
                    if (!--v16)
                    {
                      goto LABEL_67;
                    }
                  }
                }
              }

              else if (v15 == 45)
              {
                if (!v16)
                {
                  goto LABEL_92;
                }

                if (--v16)
                {
                  v9 = 0;
                  v26 = v60;
                  while (1)
                  {
                    v27 = *v26 - 48;
                    if (v27 > 9)
                    {
                      break;
                    }

                    v28 = 10 * v9;
                    if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                    {
                      break;
                    }

                    v9 = v28 - v27;
                    if (__OFSUB__(v28, v27))
                    {
                      break;
                    }

                    ++v26;
                    if (!--v16)
                    {
                      goto LABEL_67;
                    }
                  }
                }
              }

              else if (v16)
              {
                v9 = 0;
                v37 = &v70;
                while (1)
                {
                  v38 = *v37 - 48;
                  if (v38 > 9)
                  {
                    break;
                  }

                  v39 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    break;
                  }

                  v9 = v39 + v38;
                  if (__OFADD__(v39, v38))
                  {
                    break;
                  }

                  ++v37;
                  if (!--v16)
                  {
                    goto LABEL_67;
                  }
                }
              }
            }

            else
            {
              if ((v15 & 0x1000000000000000) != 0)
              {
                v21 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v44 = *v13;
                v45 = *(v13 + 8);
                v21 = sub_1BF9B5318();
              }

              v22 = *v21;
              if (v22 == 43)
              {
                if (v17 < 1)
                {
                  goto LABEL_91;
                }

                v16 = v17 - 1;
                if (v17 != 1)
                {
                  v9 = 0;
                  if (!v21)
                  {
                    goto LABEL_58;
                  }

                  v29 = v21 + 1;
                  while (1)
                  {
                    v30 = *v29 - 48;
                    if (v30 > 9)
                    {
                      break;
                    }

                    v31 = 10 * v9;
                    if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                    {
                      break;
                    }

                    v9 = v31 + v30;
                    if (__OFADD__(v31, v30))
                    {
                      break;
                    }

                    ++v29;
                    if (!--v16)
                    {
                      goto LABEL_67;
                    }
                  }
                }
              }

              else if (v22 == 45)
              {
                if (v17 < 1)
                {
                  goto LABEL_90;
                }

                v16 = v17 - 1;
                if (v17 != 1)
                {
                  v9 = 0;
                  if (v21)
                  {
                    v23 = v21 + 1;
                    while (1)
                    {
                      v24 = *v23 - 48;
                      if (v24 > 9)
                      {
                        goto LABEL_66;
                      }

                      v25 = 10 * v9;
                      if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                      {
                        goto LABEL_66;
                      }

                      v9 = v25 - v24;
                      if (__OFSUB__(v25, v24))
                      {
                        goto LABEL_66;
                      }

                      ++v23;
                      if (!--v16)
                      {
                        goto LABEL_67;
                      }
                    }
                  }

LABEL_58:
                  LOBYTE(v16) = 0;
LABEL_67:
                  LOBYTE(v66) = v16;
                  v40 = v16;

                  if (v40)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_68;
                }
              }

              else
              {
                if (!v17)
                {
                  goto LABEL_66;
                }

                v9 = 0;
                if (!v21)
                {
                  goto LABEL_58;
                }

                while (1)
                {
                  v35 = *v21 - 48;
                  if (v35 > 9)
                  {
                    break;
                  }

                  v36 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    break;
                  }

                  v9 = v36 + v35;
                  if (__OFADD__(v36, v35))
                  {
                    break;
                  }

                  ++v21;
                  if (!--v17)
                  {
                    goto LABEL_58;
                  }
                }
              }
            }

LABEL_66:
            v9 = 0;
            LOBYTE(v16) = 1;
            goto LABEL_67;
          }

          v41 = *(v13 + 8);
          swift_bridgeObjectRetain_n();
          v9 = sub_1BF99854C(v15, v14, 10);
          v43 = v42;

          if (v43)
          {
            goto LABEL_86;
          }

LABEL_68:
          sub_1BF8E21AC();

          if (v9 < 0)
          {
            goto LABEL_87;
          }

          if (v9 >= *(v11 + 16))
          {
            goto LABEL_88;
          }

          ++v12;
          sub_1BF97860C(&v70, v61 + 56 * v9);
          v9 = v62;
          if (v12 == v64)
          {
            goto LABEL_75;
          }
        }

        __break(1u);
LABEL_85:

LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        sub_1BF98C660(v11);
        v11 = v57;
      }
    }

LABEL_75:

    v46 = *(v11 + 16);
    v64 = v11;
    v2 = MEMORY[0x1E69E7CC0];
    if (v46)
    {
      v47 = v11 + 32;
      do
      {
        sub_1BF9502F0(v47, &v70, &qword_1EBDE95F0, &qword_1BF9B85D0);
        v66 = v70;
        v67 = v71;
        v68 = v72;
        v69 = v73;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = *(v2 + 16);
          sub_1BF8DD558();
          v2 = v54;
        }

        v48 = *(v2 + 16);
        if (v48 >= *(v2 + 24) >> 1)
        {
          sub_1BF8DD558();
          v2 = v55;
        }

        *(v2 + 16) = v48 + 1;
        v49 = v2 + 56 * v48;
        v50 = v66;
        v51 = v67;
        v52 = v68;
        *(v49 + 80) = v69;
        *(v49 + 48) = v51;
        *(v49 + 64) = v52;
        *(v49 + 32) = v50;
        v47 += 56;
        --v46;
      }

      while (v46);
    }

    (*(v58 + 8))(v65, v59);
  }

  return v2;
}

unint64_t sub_1BF9773AC()
{
  result = qword_1EDBF4A60;
  if (!qword_1EDBF4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A60);
  }

  return result;
}

uint64_t sub_1BF97740C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1BF974668(a1, *(v1 + 24));
}

uint64_t sub_1BF977418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF977488()
{
  result = qword_1EDBF4A48;
  if (!qword_1EDBF4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A48);
  }

  return result;
}

unint64_t sub_1BF9774DC()
{
  result = qword_1EDBF3AA0;
  if (!qword_1EDBF3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3AA0);
  }

  return result;
}

uint64_t sub_1BF977530(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BF977578()
{
  result = qword_1EDBF45B0;
  if (!qword_1EDBF45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF45B0);
  }

  return result;
}

uint64_t sub_1BF9775EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF977650()
{
  result = qword_1EDBF45A0;
  if (!qword_1EDBF45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF45A0);
  }

  return result;
}

unint64_t sub_1BF9776A4()
{
  result = qword_1EDBF1EC0;
  if (!qword_1EDBF1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF1EC0);
  }

  return result;
}

unint64_t sub_1BF9776F8()
{
  result = qword_1EDBF1EB8;
  if (!qword_1EDBF1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF1EB8);
  }

  return result;
}

uint64_t sub_1BF97774C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_23_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

uint64_t sub_1BF9777A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1BF977800()
{
  result = qword_1EDBF3AA8;
  if (!qword_1EDBF3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3AA8);
  }

  return result;
}

uint64_t sub_1BF97789C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1BF9778DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF977960(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BF9779A0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_1BF977A20()
{
  sub_1BF977ADC();
  if (v0 <= 0x3F)
  {
    sub_1BF977B50();
    if (v1 <= 0x3F)
    {
      sub_1BF9B4518();
      if (v2 <= 0x3F)
      {
        sub_1BF977BA0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BF977ADC()
{
  if (!qword_1EDBF4B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
    v0 = sub_1BF9B49D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF4B28);
    }
  }
}

void sub_1BF977B50()
{
  if (!qword_1EDBF4CE8)
  {
    v0 = sub_1BF9B50F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF4CE8);
    }
  }
}

void sub_1BF977BA0()
{
  if (!qword_1EDBF4D00)
  {
    type metadata accessor for SiriSuggestions.Intent(255);
    v0 = sub_1BF9B50F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF4D00);
    }
  }
}

uint64_t sub_1BF977C20()
{
  result = type metadata accessor for SiriSuggestions.IntentQuery(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s34IntentQueryWithExecutionParametersV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s11IntentQueryV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11IntentQueryV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s10IntentTypeO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF977FB4()
{
  result = qword_1EBDEA230;
  if (!qword_1EBDEA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA230);
  }

  return result;
}

unint64_t sub_1BF97800C()
{
  result = qword_1EBDEA238;
  if (!qword_1EBDEA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA238);
  }

  return result;
}

unint64_t sub_1BF978064()
{
  result = qword_1EBDEA240;
  if (!qword_1EBDEA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA240);
  }

  return result;
}

unint64_t sub_1BF9780BC()
{
  result = qword_1EDBF4590;
  if (!qword_1EDBF4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4590);
  }

  return result;
}

unint64_t sub_1BF978114()
{
  result = qword_1EDBF4598;
  if (!qword_1EDBF4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4598);
  }

  return result;
}

unint64_t sub_1BF97816C()
{
  result = qword_1EDBF4A38;
  if (!qword_1EDBF4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A38);
  }

  return result;
}

unint64_t sub_1BF9781C4()
{
  result = qword_1EDBF4A40;
  if (!qword_1EDBF4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A40);
  }

  return result;
}

unint64_t sub_1BF97821C()
{
  result = qword_1EDBF4A50;
  if (!qword_1EDBF4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A50);
  }

  return result;
}

unint64_t sub_1BF978274()
{
  result = qword_1EDBF4A58;
  if (!qword_1EDBF4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A58);
  }

  return result;
}

uint64_t sub_1BF9782C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF978328()
{
  result = qword_1EDBF0578;
  if (!qword_1EDBF0578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0578);
  }

  return result;
}

uint64_t sub_1BF9783A4(uint64_t a1, char a2, uint64_t *a3)
{
  v43 = a3;
  v31 = *(a1 + 16);
  if (!v31)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    sub_1BF9502F0(v6, &v37, &qword_1EBDEA250, &qword_1BF9C4F38);
    v8 = v37;
    v7 = v38;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v9 = *v43;
    v11 = sub_1BF8C2E64(v37, v38);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA258, &unk_1BF9C4F40);
        sub_1BF9B53B8();
        if (v15)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v16 = v43;
      sub_1BF95B984(v14);
      v17 = *v16;
      v18 = sub_1BF8C2E64(v8, v7);
      if ((v15 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v11 = v18;
      if (v15)
      {
LABEL_11:
        v20 = *v43;
        sub_1BF9502F0(*(*v43 + 56) + 56 * v11, v32, &qword_1EBDE95F0, &qword_1BF9B85D0);
        sub_1BF8DFBF0(&v33, &qword_1EBDE95F0, &qword_1BF9B85D0);

        sub_1BF97860C(v32, *(v20 + 56) + 56 * v11);
        goto LABEL_15;
      }
    }

    v21 = *v43;
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    v23 = v21[7] + 56 * v11;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    *(v23 + 48) = v36;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    *v23 = v24;
    v27 = v21[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_21;
    }

    v21[2] = v29;
LABEL_15:
    ++v5;
    v6 += 72;
    a2 = 1;
    if (v31 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF97860C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_21_14()
{

  return sub_1BF9B4B48();
}

unint64_t ThirdPartyParameter.parameterName.getter()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x7261506472696874;
  }

  *v0;
  return result;
}

uint64_t sub_1BF978728(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF978748, 0, 0);
}

uint64_t sub_1BF978748()
{
  v21 = v0;
  v1 = v0[3];
  v2 = sub_1BF8C2F90();
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v2;
  v5 = v3;
  if (sub_1BF9B4C08())
  {

LABEL_4:
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v6 = sub_1BF9B47C8();
    __swift_project_value_buffer(v6, qword_1EDBF5570);
    v7 = sub_1BF9B47A8();
    v8 = sub_1BF9B5038();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BF8B8000, v7, v8, "Unable to determine appId from INIntent", v9, 2u);
      MEMORY[0x1BFB5F320](v9, -1, -1);
    }

    v10 = v0[2];

    *v10 = 0u;
    v10[1] = 0u;
    v11 = 2;
    goto LABEL_14;
  }

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v12 = sub_1BF9B47C8();
  __swift_project_value_buffer(v12, qword_1EDBF5570);

  v13 = sub_1BF9B47A8();
  v14 = sub_1BF9B5038();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1BF8DE810(v4, v5, &v20);
    _os_log_impl(&dword_1BF8B8000, v13, v14, "Determined appId from INIntent as: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1BFB5F320](v16, -1, -1);
    MEMORY[0x1BFB5F320](v15, -1, -1);
  }

  v17 = v0[2];
  v17[3] = MEMORY[0x1E69E6158];
  *v17 = v4;
  v17[1] = v5;
  v11 = 1;
LABEL_14:
  *(v0[2] + 32) = v11;
  v18 = v0[1];

  return v18();
}

uint64_t ThirdPartyParameter.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

unint64_t sub_1BF978A70()
{
  result = qword_1EBDEA270;
  if (!qword_1EBDEA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA270);
  }

  return result;
}

unint64_t sub_1BF978AC8()
{
  result = qword_1EBDEA278;
  if (!qword_1EBDEA278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDEA280, &qword_1BF9C4FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA278);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ThirdPartyParameter(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF978C18(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D70, &qword_1BF9C5560);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF97FBA0(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1BF978CB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92B0, &qword_1BF9C9210);
    v1 = sub_1BF9B5478();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1BF97F5EC(v2, 1, &v4);

  return v4;
}

uint64_t sub_1BF978D64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D60, &qword_1BF9C2B38);
    v2 = sub_1BF9B5478();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v4 = v2;
  sub_1BF97F8E0(a1, 1, &v4);
  return v4;
}

uint64_t sub_1BF978E0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a2;
  result = sub_1BF8D2004(a3, a4);
  if (v6)
  {
    v8 = a4[3];
    v9 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v8);
    (*(v9 + 8))(&v13, a1, v8, v9);
    v16[3] = &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator;
    v16[4] = &off_1F3EFBD28;
    v10 = swift_allocObject();
    v16[0] = v10;
    sub_1BF8D2004(&v13, v10 + 24);
    *(v10 + 16) = v6;

    __swift_destroy_boxed_opaque_existential_1Tm(&v13);
    v11 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator);
    v14 = &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator;
    v15 = off_1F3EFBD30;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v13);
    (*(off_1F3EFBC18 + 2))(boxed_opaque_existential_1Tm, v11, &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator);
    __swift_destroy_boxed_opaque_existential_1Tm(a4);
    sub_1BF8C2C9C(&v13, a4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return result;
}

uint64_t sub_1BF978F54()
{
  OUTLINED_FUNCTION_40_3();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_62_6();
  sub_1BF97E160(v3, v2, v0);
  return v1;
}

uint64_t sub_1BF978FA0()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_15_3();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return OUTLINED_FUNCTION_43();
}

void sub_1BF978FE4()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v4 = *(v0 + 32);
  sub_1BF97AD14();
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v5 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v5, qword_1EDBF5570);
  sub_1BF8C4A08(v3, &v25);
  sub_1BF8C4A08(v3, v24);

  v6 = sub_1BF9B47A8();
  v7 = sub_1BF9B5038();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315650;

    v9 = sub_1BF8E9F70(&v25);
    v12 = OUTLINED_FUNCTION_46_4(v9, v10, v11);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    OUTLINED_FUNCTION_15_3();
    v13 = *(v1 + 40);

    MEMORY[0x1BFB5E030](v14, &type metadata for SignalLookupKey);

    v18 = OUTLINED_FUNCTION_46_4(v15, v16, v17);

    *(v8 + 14) = v18;
    *(v8 + 22) = 2080;
    type metadata accessor for ResolvableParameter();
    v19 = sub_1BF9B4978();
    v21 = v20;
    sub_1BF8E9F70(v24);
    v22 = sub_1BF8DE810(v19, v21, &v23);

    *(v8 + 24) = v22;
    _os_log_impl(&dword_1BF8B8000, v6, v7, "Built suggestion with Id: %s \nsignalSubscriptions: %s \nresolvableParams: %s", v8, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {

    sub_1BF8E9F70(v24);
    sub_1BF8E9F70(&v25);
  }

  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF979210()
{
  OUTLINED_FUNCTION_32_11();
  sub_1BF97A1F4(v0, v1, v2, v3, v4);
}

uint64_t sub_1BF979258(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *(v3 + 32);
  v12 = &type metadata for SiriSuggestions.IntentType;
  v13 = &protocol witness table for SiriSuggestions.IntentType;
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  sub_1BF8D2004(v10, v9);
  swift_beginAccess();
  sub_1BF9439F0(a1, a2, a3);
  sub_1BF981A78(v9, v7 + 80, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t SuggestionDetailsBuilder.intentType(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = v13 - v12;
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  v23 = &type metadata for SiriSuggestions.IntentType;
  v24 = &protocol witness table for SiriSuggestions.IntentType;
  v21[0] = v17;
  v21[1] = v16;
  v22 = v18;
  v19 = *(a2 + 144);
  sub_1BF9439F0(v17, v16, v18);
  v19(v21, a1, a2);
  (*(v8 + 8))(v14, a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return (*(v8 + 16))(a3, v3, a1);
}

uint64_t SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v11 - v10;
  (*(v13 + 176))();
  (*(v6 + 8))(v12, a1);
  return (*(v6 + 16))(a2, v2, a1);
}

uint64_t sub_1BF979574()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2C0, &qword_1BF9C5528);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BF9B6370;
  if (qword_1EDBF26B8 != -1)
  {
    swift_once();
  }

  v1 = *algn_1EDBF26C8;
  *(v0 + 32) = qword_1EDBF26C0;
  *(v0 + 40) = v1;
  v2 = qword_1EDBF28A8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDC03438;
  v4 = unk_1EDC03440;
  v5 = qword_1EDC03448;
  v6 = unk_1EDC03450;
  type metadata accessor for SystemClock();
  v7 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v8 = sub_1BF981B0C(v0, v3, v4, v5, v6, 0, v7);

  qword_1EDBF1948 = v8;
  return result;
}

uint64_t sub_1BF9796D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1BF979758(v2, v3);
}

uint64_t sub_1BF979718()
{
  OUTLINED_FUNCTION_15_3();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1BF979758(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1BF9797F4(uint64_t a1, uint64_t *a2)
{
  sub_1BF9649CC(a1, v5);
  v3 = *a2;
  return sub_1BF979870(v5);
}

uint64_t sub_1BF979870(uint64_t a1)
{
  OUTLINED_FUNCTION_23();
  sub_1BF9798B8(a1, v1 + 32);
  return swift_endAccess();
}

uint64_t GenericSuggestionDetailsBuilder.__allocating_init(suggestionId:catId:)()
{
  type metadata accessor for GenericSuggestionDetailsBuilder();
  OUTLINED_FUNCTION_60_4();
  v0 = swift_allocObject();
  GenericSuggestionDetailsBuilder.init(suggestionId:dialogDetails:)();
  return v0;
}

uint64_t GenericSuggestionDetailsBuilder.__allocating_init(suggestionId:dialogDetails:)()
{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_60_4();
  swift_allocObject();
  OUTLINED_FUNCTION_62_6();
  GenericSuggestionDetailsBuilder.init(suggestionId:dialogDetails:)();
  return v0;
}

uint64_t GenericSuggestionDetailsBuilder.init(suggestionId:dialogDetails:)()
{
  OUTLINED_FUNCTION_40_3();
  *(v1 + 128) = 0;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 136) = -1;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0;
  *(v1 + 216) = 514;
  v4 = type metadata accessor for UtteranceActionProvider();
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0;
  v5 = OUTLINED_FUNCTION_69_2();
  *(v1 + 288) = v4;
  *(v1 + 296) = &off_1F3EFDBC0;
  *(v1 + 264) = v5;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 368) = 0xD000000000000010;
  *(v1 + 376) = 0x80000001BF9CD740;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 384) = 0xD000000000000010;
  *(v1 + 392) = 0x80000001BF9CB2D0;
  *(v1 + 400) = 0x7470697263736564;
  *(v1 + 408) = 0xEB000000006E6F69;
  *(v1 + 416) = 0u;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 480) = 0u;
  *(v1 + 496) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  v6 = v0[1];
  *(v1 + 32) = *v0;
  *(v1 + 48) = v6;
  *(v1 + 57) = *(v0 + 25);
  return v1;
}

uint64_t sub_1BF979B80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(v1 + 168);
    *(v1 + 168) = a1;
  }
}

uint64_t sub_1BF979BCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(v1 + 176);
    *(v1 + 176) = a1;
  }
}

uint64_t sub_1BF979C18(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

uint64_t sub_1BF979C68(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1BF980D2C(v4, v1, v2, v3);
}

uint64_t sub_1BF979CB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(v1 + 184);
    *(v1 + 184) = a1;
  }
}

uint64_t sub_1BF979D00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(v1 + 192);
    *(v1 + 192) = a1;
  }
}

uint64_t sub_1BF979D4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(v1 + 200);
    *(v1 + 200) = a1;
  }
}

uint64_t sub_1BF979D98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(v1 + 208);
    *(v1 + 208) = a1;
  }
}

uint64_t sub_1BF979DE4()
{
  v2 = v0;
  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v3 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v3, qword_1EDBF57F8);

  v4 = sub_1BF9B47A8();
  v5 = sub_1BF9B5038();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_109();
    v18 = OUTLINED_FUNCTION_39_0();
    *v1 = 136315138;
    OUTLINED_FUNCTION_15_3();
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);

    v11 = OUTLINED_FUNCTION_46_4(v8, v9, v10);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_19_17();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  *(v2 + 216) = 1;
}

uint64_t sub_1BF979F28(uint64_t a1)
{
  sub_1BF8D2004(a1, v3);
  OUTLINED_FUNCTION_11_2();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 264));
  sub_1BF8C2C9C(v3, v1 + 264);
  swift_endAccess();
}

uint64_t sub_1BF979F78(uint64_t a1)
{
  sub_1BF8D2004(a1, v3);
  OUTLINED_FUNCTION_11_2();
  sub_1BF981A78(v3, v1 + 224, &qword_1EBDEA288, &qword_1BF9C5060);
  swift_endAccess();
}

uint64_t sub_1BF979FD0(uint64_t a1)
{
  sub_1BF8D2004(a1, v3);
  OUTLINED_FUNCTION_11_2();
  sub_1BF981A78(v3, v1 + 304, &qword_1EBDEA290, &qword_1BF9C5068);
  swift_endAccess();
}

uint64_t sub_1BF97A028(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 352);
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
}

uint64_t sub_1BF97A070(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 376);
  *(v2 + 368) = a1;
  *(v2 + 376) = a2;
}

uint64_t sub_1BF97A0B8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 408);
  *(v2 + 400) = a1;
  *(v2 + 408) = a2;
}

uint64_t sub_1BF97A100(uint64_t a1)
{
  sub_1BF8D2004(a1, v3);
  OUTLINED_FUNCTION_11_2();
  sub_1BF981A78(v3, v1 + 416, &qword_1EBDE8E10, &qword_1BF9B9980);
  swift_endAccess();
}

uint64_t sub_1BF97A158(uint64_t a1)
{
  v2 = *(v1 + 456);
  *(v1 + 456) = a1;
}

uint64_t sub_1BF97A19C(uint64_t a1)
{
  sub_1BF8D2004(a1, v3);
  OUTLINED_FUNCTION_11_2();
  sub_1BF981A78(v3, v1 + 464, &qword_1EBDEA298, &qword_1BF9C9D00);
  swift_endAccess();
}

uint64_t sub_1BF97A1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  swift_beginAccess();
  if (*(v6 + 144))
  {
    if (a5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = sub_1BF9B4988();
    v11 = *(v6 + 144);
    *(v6 + 144) = v10;

    if (a5)
    {
LABEL_10:
      v18 = sub_1BF979938();
      if (*v19)
      {
        sub_1BF981D14(a3, &v23, &qword_1EBDE9E58, &qword_1BF9C30B0);
        v25 = a4;

        sub_1BF932A1C();
      }

      (v18)(v26, 0);
    }
  }

  sub_1BF981D14(a3, &v23, &qword_1EBDE9E58, &qword_1BF9C30B0);
  if (!v24)
  {
    sub_1BF8DFBF0(&v23, &qword_1EBDE9E58, &qword_1BF9C30B0);
    goto LABEL_10;
  }

  sub_1BF8C2C9C(&v23, v26);
  type metadata accessor for FilterResolver();
  v13 = v27;
  v12 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v14 = (*(*(v12 + 8) + 16))(v13);
  static FilterResolver.filterLockscreen(for:using:)(v14, v15, v26, v22);

  v16 = sub_1BF979938();
  if (*v17)
  {
    sub_1BF8D2004(v22, &v23);
    v25 = a4;

    sub_1BF932A1C();
  }

  (v16)(v21, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
}

uint64_t sub_1BF97A440(uint64_t a1)
{
  v2 = *(v1 + 360);
  *(v1 + 360) = a1;
}

void sub_1BF97A49C()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v61 = v8;
  v60 = v9;
  v62 = sub_1BF9B4378();
  OUTLINED_FUNCTION_2_0();
  v63 = v10;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v57 - v15;
  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v17 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v17, qword_1EDBF57F8);

  v18 = sub_1BF9B47A8();
  v19 = sub_1BF9B5038();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v73[0] = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_1BF8DE810(v61, v7, v73);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1BF8DE810(v5, v3, v73);
    _os_log_impl(&dword_1BF8B8000, v18, v19, "trying to load cat from %s and %s", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  sub_1BF9B4358();
  OUTLINED_FUNCTION_15_3();
  sub_1BF981D14(v1 + 224, &v70, &qword_1EBDEA288, &qword_1BF9C5060);
  if (v71)
  {
    sub_1BF8C2C9C(&v70, v73);
  }

  else
  {
    v21 = type metadata accessor for StaticIconUrlProvider();
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_7_16(v22);
    v73[3] = v21;
    v73[4] = &protocol witness table for StaticIconUrlProvider;
    v73[0] = v23;
  }

  v24 = type metadata accessor for UtteranceActionProvider();
  v25 = OUTLINED_FUNCTION_69_2();
  v71 = v24;
  v72 = &off_1F3EFDBC0;
  *&v70 = v25;
  v57[1] = "Clock";
  v26 = *(v63 + 16);
  v27 = OUTLINED_FUNCTION_72_3();
  v28 = v62;
  v26(v27);
  v29 = type metadata accessor for TemplateOverrideDialogIdCallback(0);
  OUTLINED_FUNCTION_52_5(v29);
  v30 = OUTLINED_FUNCTION_9_17();
  v61 = sub_1BF900AA8(v30, v31, v32, v33, v34, 1);
  v35 = OUTLINED_FUNCTION_72_3();
  v26(v35);
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_9_17();
  sub_1BF8FF2BC();
  v58 = v36;
  v37 = OUTLINED_FUNCTION_72_3();
  v59 = v16;
  v26(v37);

  sub_1BF8FF2BC();
  v39 = v38;
  v40 = OUTLINED_FUNCTION_72_3();
  v26(v40);

  OUTLINED_FUNCTION_9_17();
  sub_1BF8FF2BC();
  v42 = v41;
  sub_1BF8D2004(&v70, v69);
  sub_1BF8D2004(v73, v66);
  OUTLINED_FUNCTION_28_2();
  v43 = swift_allocObject();
  *(v43 + 16) = v39;
  *(v43 + 24) = *(&v69[3] + 8);
  *(v43 + 40) = v29;
  *(v43 + 48) = &off_1F3EF9308;
  OUTLINED_FUNCTION_28_2();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = *(&v69[2] + 8);
  *(v44 + 40) = v29;
  *(v44 + 48) = &off_1F3EF9308;
  v45 = type metadata accessor for ViewCallbacksWrapper();
  v46 = OUTLINED_FUNCTION_68_3();
  v47 = v67;
  v48 = v68;
  __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
  OUTLINED_FUNCTION_2_0();
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_17();
  v53 = OUTLINED_FUNCTION_22_4(v52);
  v54(v53);
  v65 = v61;
  v64 = v58;
  v55 = sub_1BF902974(&v65, &v64, sub_1BF981CD0, v43, sub_1BF981CD0, v44, v69, v28, v46, v29, v29, v47, &off_1F3EF9308, &off_1F3EF9308, v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  v56 = v60;
  v60[3] = v45;
  v56[4] = &protocol witness table for ViewCallbacksWrapper;
  *v56 = v55;
  (*(v63 + 8))(v59, v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  __swift_destroy_boxed_opaque_existential_1Tm(&v70);
  OUTLINED_FUNCTION_64();
}

BOOL sub_1BF97AA80()
{
  v3 = v0;
  v4 = *(v0 + 360);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = *(v4 + 16);

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    for (i = 32; ; i += 16)
    {
      if (v6 == v7)
      {

        v5 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }

      if (v7 >= *(v4 + 16))
      {
        break;
      }

      v1 = *(v4 + i);
      v2 = *(v1 + 16);
      v10 = *(v8 + 16);
      v5 = v10 + v2;
      if (__OFADD__(v10, v2))
      {
        goto LABEL_28;
      }

      v11 = *(v4 + i);

      if (!swift_isUniquelyReferenced_nonNull_native() || v5 > *(v8 + 24) >> 1)
      {
        sub_1BF8DCDC8();
        v8 = v12;
      }

      if (*(v1 + 16))
      {
        v13 = *(v8 + 16);
        if ((*(v8 + 24) >> 1) - v13 < v2)
        {
          goto LABEL_30;
        }

        memcpy((v8 + 2 * v13 + 32), (v1 + 32), 2 * v2);

        if (v2)
        {
          v14 = *(v8 + 16);
          v15 = __OFADD__(v14, v2);
          v16 = v14 + v2;
          if (v15)
          {
            goto LABEL_31;
          }

          *(v8 + 16) = v16;
        }
      }

      else
      {

        if (v2)
        {
          goto LABEL_29;
        }
      }

      ++v7;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:
  i = *(v8 + 16);
  v2 = *(sub_1BF927580(v8) + 16);

  if (i != v2)
  {
    if (qword_1EDBF57F0 == -1)
    {
LABEL_20:
      v17 = sub_1BF9B47C8();
      OUTLINED_FUNCTION_49_3(v17, qword_1EDBF57F8);

      v18 = sub_1BF9B47A8();
      v19 = sub_1BF9B5048();

      if (os_log_type_enabled(v18, v19))
      {
        OUTLINED_FUNCTION_109();
        v20 = OUTLINED_FUNCTION_39_0();
        v32 = v20;
        *v1 = 136315138;
        if (*(v3 + 360))
        {
          v21 = *(v3 + 360);
        }

        else
        {
          v21 = v5;
        }

        v22 = MEMORY[0x1BFB5E030](v21, &type metadata for VersionedInvocation);
        v24 = v23;

        v25 = sub_1BF8DE810(v22, v24, &v32);

        *(v1 + 4) = v25;
        OUTLINED_FUNCTION_19_17();
        _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_87();
      }

      return i == v2;
    }

LABEL_32:
    OUTLINED_FUNCTION_4_1();
    goto LABEL_20;
  }

  return i == v2;
}

void sub_1BF97AD14()
{
  OUTLINED_FUNCTION_65_0();
  v106 = v0;
  v5 = v4;
  v7 = v6;
  v105 = v8;
  sub_1BF981D14(v8, &v128, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v103 = v5;
  v104 = v7;
  if (!*(&v129 + 1))
  {
    sub_1BF8DFBF0(&v128, &qword_1EBDE9E28, &qword_1BF9C2CE8);
LABEL_25:
    OUTLINED_FUNCTION_53_7();
    goto LABEL_26;
  }

  v1 = v130;
  __swift_project_boxed_opaque_existential_1(&v128, *(&v129 + 1));
  OUTLINED_FUNCTION_23_0();
  type metadata accessor for AllOwnerConfigs();
  OUTLINED_FUNCTION_55_6(v1);
  v10 = v9();
  if (!v10)
  {
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
    goto LABEL_25;
  }

  v11 = v10;
  v12 = sub_1BF965210(v10);
  if (!v12)
  {

    goto LABEL_24;
  }

  v1 = v12;
  v2 = v11 & 0xC000000000000001;
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_105;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFF8;
  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v3 = *(v11 + 32);

  while (1)
  {
    for (i = 1; v1 != i; ++i)
    {
      if (v2)
      {
        v15 = MEMORY[0x1BFB5E5E0](i, v11);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_101;
        }

        if (i >= *(v13 + 16))
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v15 = *(v11 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_100;
      }

      if (*(v3 + 24) < *(v15 + 24))
      {

        v3 = v15;
      }

      else
      {
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
    v16 = *(v3 + 16);
    v17 = v5[3];
    v1 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v17);
    v2 = v1 + 48;
    v18 = *(v1 + 48);

    v19 = v18(v17, v1);
    if (*(v16 + 16))
    {
      v21 = sub_1BF8C2E64(v19, v20);
      v1 = v22;

      if (v1)
      {
        v23 = (*(v16 + 56) + 32 * v21);
        v7 = *v23;
        v3 = v23[1];
        v5 = v23[2];
        v1 = v23[3];

        goto LABEL_26;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_53_7();
LABEL_26:
    sub_1BF981D14(v105, &v128, &qword_1EBDE9E28, &qword_1BF9C2CE8);
    if (!*(&v129 + 1))
    {
      sub_1BF8DFBF0(&v128, &qword_1EBDE9E28, &qword_1BF9C2CE8);
      goto LABEL_32;
    }

    v24 = v130;
    v11 = __swift_project_boxed_opaque_existential_1(&v128, *(&v129 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2B0, &qword_1BF9C5088);
    OUTLINED_FUNCTION_55_6(v24);
    v26 = v25();
    if (!v26)
    {
      break;
    }

    if (*(v26 + 16))
    {
      sub_1BF8D2004(v26 + 32, v133);

      __swift_destroy_boxed_opaque_existential_1Tm(&v128);
      goto LABEL_33;
    }

    __break(1u);
LABEL_105:
    v3 = MEMORY[0x1BFB5E5E0](0, v11);
    v13 = v11 & 0xFFFFFFFFFFFFFF8;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
LABEL_32:
  memset(v133, 0, sizeof(v133));
  v134 = 0;
LABEL_33:
  if (qword_1EDBF57F0 != -1)
  {
LABEL_103:
    OUTLINED_FUNCTION_4_1();
  }

  v27 = sub_1BF9B47C8();
  __swift_project_value_buffer(v27, qword_1EDBF57F8);
  v28 = sub_1BF9B47A8();
  v29 = sub_1BF9B5038();
  if (OUTLINED_FUNCTION_95(v29))
  {
    v30 = OUTLINED_FUNCTION_109();
    v31 = swift_slowAlloc();
    *&v128 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1BF8DE810(0x6C616E6F6974704FLL, 0xEF3E6B636F6C433CLL, &v128);
    _os_log_impl(&dword_1BF8B8000, v28, v29, "Got clock of type: %s from lifecycle", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  v32 = v106;
  OUTLINED_FUNCTION_15_3();
  sub_1BF981D14((v106 + 38), &v128, &qword_1EBDEA290, &qword_1BF9C5068);
  if (*(&v129 + 1))
  {
    sub_1BF8C2C9C(&v128, v132);
  }

  else
  {
    if (v106[44])
    {
      v33 = v106[43];
      v34 = v106;
      v35 = v106[44];
    }

    else
    {
      v34 = v106;
    }

    sub_1BF97CE3C();

    v32 = v34;
    if (*(&v129 + 1))
    {
      sub_1BF8DFBF0(&v128, &qword_1EBDEA290, &qword_1BF9C5068);
    }
  }

  if (!v3)
  {
    goto LABEL_61;
  }

  sub_1BF980DF0(v7, v3);
  v36 = *(v1 + 16);
  OUTLINED_FUNCTION_15_3();
  v37 = (v1 + 80);
  v38 = v36 + 1;
  do
  {
    if (!--v38)
    {

LABEL_60:
      v32 = v106;
      goto LABEL_61;
    }

    v40 = *(v37 - 3);
    v39 = *(v37 - 2);
    v41 = *(v37 - 1);
    v42 = *v37;
    if (*(v37 - 6) == v106[2] && *(v37 - 5) == v106[3])
    {
      break;
    }

    v37 += 7;
  }

  while ((sub_1BF9B56D8() & 1) == 0);

  v44 = OUTLINED_FUNCTION_5_16();
  sub_1BF911868(v44, v45);

  if (!v39)
  {

    sub_1BF911DC8(v40, 0);
    goto LABEL_60;
  }

  v46 = OUTLINED_FUNCTION_5_16();
  sub_1BF911DC8(v46, v47);
  v48 = v41;
  v49 = v42;
  v32 = v106;
  if (v42)
  {
    goto LABEL_55;
  }

  v49 = v106[44];
  if (v49)
  {
    v48 = v106[43];
    v50 = v106[44];

LABEL_55:
    v51 = OUTLINED_FUNCTION_5_16();
    sub_1BF911868(v51, v52);

    v53 = sub_1BF9B47A8();
    v54 = sub_1BF9B5038();
    v55 = OUTLINED_FUNCTION_5_16();
    sub_1BF911DC8(v55, v56);

    if (os_log_type_enabled(v53, v54))
    {
      v57 = swift_slowAlloc();
      *&v128 = swift_slowAlloc();
      *v57 = 136315394;

      v58 = sub_1BF8DE810(v40, v39, &v128);

      *(v57 + 4) = v58;
      v32 = v106;
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_1BF8DE810(v48, v49, &v128);
      _os_log_impl(&dword_1BF8B8000, v53, v54, "Loading catId - %s from templates in directory - %s", v57, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    sub_1BF97A49C();
    v59 = OUTLINED_FUNCTION_5_16();
    sub_1BF911DC8(v59, v60);

    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    sub_1BF8C2C9C(&v128, v132);
  }

  else
  {
    sub_1BF911DC8(v40, v39);
  }

LABEL_61:
  OUTLINED_FUNCTION_15_3();
  v1 = v32[18];
  v61 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v62 = *(v1 + 16);
    v63 = MEMORY[0x1E69E7CC0];
    if (v62)
    {
      v118 = MEMORY[0x1E69E7CC0];

      sub_1BF8D0768();
      v63 = v118;
      v66 = sub_1BF95FA38(v1);
      v7 = 0;
      v3 = v1 + 64;
      v107 = v62;
      if ((v66 & 0x8000000000000000) == 0)
      {
        while (v66 < 1 << *(v1 + 32))
        {
          v67 = v66 >> 6;
          if ((*(v3 + 8 * (v66 >> 6)) & (1 << v66)) == 0)
          {
            goto LABEL_95;
          }

          if (*(v1 + 36) != v64)
          {
            goto LABEL_96;
          }

          v108 = v65;
          v109 = v64;
          v68 = (*(v1 + 48) + 16 * v66);
          v70 = *v68;
          v69 = v68[1];
          sub_1BF9650B0(*(v1 + 56) + 48 * v66, &v129);
          *&v124 = v70;
          *(&v124 + 1) = v69;
          v125 = v129;
          v126 = v130;
          v127 = v131;
          sub_1BF981D14(&v124, v122, &qword_1EBDE9E50, &unk_1BF9C5070);
          v3 = v122[1];
          v110 = v122[0];
          v119 = v124;
          v120[0] = v125;
          v120[1] = v126;
          v121 = v127;

          v71 = *(&v121 + 1);

          sub_1BF96515C(v120);
          sub_1BF96515C(&v123);
          v118 = v63;
          v73 = *(v63 + 16);
          v72 = *(v63 + 24);
          if (v73 >= v72 >> 1)
          {
            OUTLINED_FUNCTION_11_3(v72);
            sub_1BF8D0768();
            v63 = v118;
          }

          *(v63 + 16) = v73 + 1;
          v74 = (v63 + 24 * v73);
          v74[4] = v110;
          v74[5] = v3;
          v74[6] = v71;
          v75 = 1 << *(v1 + 32);
          if (v66 >= v75)
          {
            goto LABEL_97;
          }

          v3 = v1 + 64;
          v76 = *(v1 + 64 + 8 * v67);
          if ((v76 & (1 << v66)) == 0)
          {
            goto LABEL_98;
          }

          if (*(v1 + 36) != v109)
          {
            goto LABEL_99;
          }

          v77 = v76 & (-2 << (v66 & 0x3F));
          if (v77)
          {
            v75 = __clz(__rbit64(v77)) | v66 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v78 = v67 << 6;
            v79 = v67 + 1;
            v80 = (v1 + 72 + 8 * v67);
            while (v79 < (v75 + 63) >> 6)
            {
              v82 = *v80++;
              v81 = v82;
              v78 += 64;
              ++v79;
              if (v82)
              {
                sub_1BF90E758(v66, v109, v108 & 1);
                v75 = __clz(__rbit64(v81)) + v78;
                goto LABEL_79;
              }
            }

            sub_1BF90E758(v66, v109, v108 & 1);
          }

LABEL_79:
          if (++v7 == v107)
          {

            v32 = v106;
            v61 = MEMORY[0x1E69E7CC0];
            goto LABEL_84;
          }

          v65 = 0;
          v64 = *(v1 + 36);
          v66 = v75;
          if (v75 < 0)
          {
            break;
          }
        }
      }

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
      goto LABEL_102;
    }
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

LABEL_84:
  v83 = sub_1BF978C18(v63);
  sub_1BF97CB7C(v105, v103, &v128);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_59_7();
  sub_1BF981D14(v84, v85, v86, v87);
  sub_1BF8DFBF0(&v124, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  OUTLINED_FUNCTION_15_3();
  v89 = v32[2];
  v88 = v32[3];
  sub_1BF8D2004(v132, &v124);

  sub_1BF97BA00(v122);
  sub_1BF97BCB8();
  OUTLINED_FUNCTION_59_7();
  sub_1BF981D14(v90, v91, v92, v93);
  OUTLINED_FUNCTION_15_3();
  sub_1BF981D14((v32 + 52), v116, &qword_1EBDE8E10, &qword_1BF9B9980);
  v94 = v32[57];
  *v104 = v89;
  *(v104 + 8) = v88;
  *(v104 + 96) = v83;
  *(v104 + 16) = v89;
  *(v104 + 24) = v88;
  sub_1BF8D2004(&v124, v104 + 104);
  sub_1BF8D2004(v122, v104 + 144);
  sub_1BF8D2004(&v119, v104 + 184);
  OUTLINED_FUNCTION_59_7();
  sub_1BF981D14(v95, v96, v97, v98);
  if (v112)
  {

    sub_1BF8DFBF0(&v118, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1Tm(&v119);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    __swift_destroy_boxed_opaque_existential_1Tm(&v124);
    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    sub_1BF8DFBF0(v133, &qword_1EBDEA2A8, &qword_1BF9C5080);
    sub_1BF8C2C9C(&v111, &v113);
  }

  else
  {
    *(&v114 + 1) = &type metadata for SiriSuggestions.IntentType;
    v115 = &protocol witness table for SiriSuggestions.IntentType;
    swift_bridgeObjectRetain_n();

    *&v113 = v89;
    *(&v113 + 1) = v88;
    LOBYTE(v114) = 2;
    sub_1BF8DFBF0(&v118, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
    __swift_destroy_boxed_opaque_existential_1Tm(&v119);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    __swift_destroy_boxed_opaque_existential_1Tm(&v124);
    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    sub_1BF8DFBF0(v133, &qword_1EBDEA2A8, &qword_1BF9C5080);
  }

  if (v94)
  {
    v99 = v94;
  }

  else
  {
    v99 = v61;
  }

  v100 = v114;
  *(v104 + 32) = v113;
  *(v104 + 48) = v100;
  v101 = v115;
  v102 = v116[1];
  *(v104 + 224) = v116[0];
  *(v104 + 240) = v102;
  *(v104 + 256) = v117;
  *(v104 + 264) = v99;
  *(v104 + 72) = 0;
  *(v104 + 80) = 0;
  *(v104 + 64) = v101;
  *(v104 + 88) = -1;
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF97BA00@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2D0, &unk_1BF9C5540);
  OUTLINED_FUNCTION_2_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  OUTLINED_FUNCTION_15_3();
  sub_1BF981D14(v1 + 464, &v17, &qword_1EBDEA298, &qword_1BF9C9D00);
  if (v18)
  {
    return sub_1BF8C2C9C(&v17, a1);
  }

  v13 = *(v1 + 152);
  v12 = *(v1 + 160);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  sub_1BF9B4598();
  v14 = type metadata accessor for SimpleActionKeyMapper();
  v15 = OUTLINED_FUNCTION_52_5(v14);
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  result = (*(v5 + 32))(v15 + OBJC_IVAR____TtC18SiriSuggestionsKit21SimpleActionKeyMapper_loggingParamsIdTransformer, v10, v3);
  a1[3] = v14;
  a1[4] = &protocol witness table for SimpleActionKeyMapper;
  *a1 = v15;
  if (v18)
  {
    return sub_1BF8DFBF0(&v17, &qword_1EBDEA298, &qword_1BF9C9D00);
  }

  return result;
}

uint64_t sub_1BF97BBB0()
{
  if (qword_1EDBF28A8 != -1)
  {
    OUTLINED_FUNCTION_23_14();
  }

  v0 = qword_1EDC03438;
  v1 = unk_1EDC03440;
  v2 = qword_1EDC03448;
  v3 = unk_1EDC03450;
  v10[3] = &unk_1F3EFDAF0;
  v10[4] = &off_1F3EFDB90;
  OUTLINED_FUNCTION_35_9();
  v4 = swift_allocObject();
  v9 = 0;
  v10[0] = v4;
  v4[2] = v0;
  v4[3] = v1;
  v4[4] = v2;
  v4[5] = v3;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  memset(v6, 0, sizeof(v6));

  sub_1BF97BCB8();
  sub_1BF8DFBF0(v6, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  sub_1BF8DFBF0(v8, &qword_1EBDEA2A8, &qword_1BF9C5080);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

void sub_1BF97BCB8()
{
  OUTLINED_FUNCTION_65_0();
  v4 = v0;
  v120 = v5;
  v118 = v6;
  v7 = v2;
  v119 = v8;
  v9 = v3;
  if (*(v0 + 168))
  {
    v10 = v3;
    v11 = v2;

    sub_1BF927614();
    v13 = v12;
    if (qword_1EDBF5838 != -1)
    {
      OUTLINED_FUNCTION_17_16();
    }

    v14 = qword_1EDBF56F8;
    v1 = type metadata accessor for LocalePrerequisite();
    OUTLINED_FUNCTION_35_9();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = 1;
    *(v15 + 32) = v14;
    *(v15 + 40) = &off_1F3EFC740;

    sub_1BF8DE328();
    v17 = v16;
    v18 = *(v16 + 16);
    if (v18 >= *(v16 + 24) >> 1)
    {
      OUTLINED_FUNCTION_4_24();
      v17 = v102;
    }

    *(&v125 + 1) = v1;
    OUTLINED_FUNCTION_16_14();
    v126 = sub_1BF981AC4(v19, v20);
    *&v124 = v15;
    *(v17 + 16) = v18 + 1;
    sub_1BF8C2C9C(&v124, v17 + 40 * v18 + 32);
    v7 = v11;
    v9 = v10;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (*(v4 + 176))
  {

    sub_1BF927614();
    v22 = v21;
    if (qword_1EDBF5838 != -1)
    {
      OUTLINED_FUNCTION_17_16();
    }

    v23 = qword_1EDBF56F8;
    v1 = type metadata accessor for LocalePrerequisite();
    OUTLINED_FUNCTION_35_9();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = 0;
    *(v24 + 32) = v23;
    *(v24 + 40) = &off_1F3EFC740;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_12();
      v17 = v103;
    }

    OUTLINED_FUNCTION_10_17();
    if (v25)
    {
      OUTLINED_FUNCTION_4_24();
      v17 = v104;
    }

    *(&v125 + 1) = v1;
    OUTLINED_FUNCTION_16_14();
    v28 = sub_1BF981AC4(v26, v27);
    OUTLINED_FUNCTION_1_24(v28);
  }

  if (*(v4 + 184))
  {

    sub_1BF9274A4();
    OUTLINED_FUNCTION_23_0();
    type metadata accessor for DevicePrerequisite();
    OUTLINED_FUNCTION_26_14();
    DevicePrerequisite.init(devices:includes:)();
    OUTLINED_FUNCTION_62_6();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_12();
      v17 = v105;
    }

    OUTLINED_FUNCTION_10_17();
    if (v25)
    {
      OUTLINED_FUNCTION_4_24();
      v17 = v106;
    }

    *(&v125 + 1) = v1;
    OUTLINED_FUNCTION_15_19();
    v31 = sub_1BF981AC4(v29, v30);
    OUTLINED_FUNCTION_1_24(v31);
  }

  v32 = *(v4 + 192);
  if (v32)
  {

    sub_1BF9274A4();
    OUTLINED_FUNCTION_23_0();
    type metadata accessor for DevicePrerequisite();
    OUTLINED_FUNCTION_26_14();
    DevicePrerequisite.init(devices:includes:)();
    OUTLINED_FUNCTION_62_6();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_12();
      v17 = v107;
    }

    OUTLINED_FUNCTION_10_17();
    if (v25)
    {
      OUTLINED_FUNCTION_4_24();
      v17 = v108;
    }

    *(&v125 + 1) = v1;
    OUTLINED_FUNCTION_15_19();
    v35 = sub_1BF981AC4(v33, v34);
    v32 = OUTLINED_FUNCTION_1_24(v35);
  }

  v36 = *(v4 + 200);
  if (v36)
  {
    v124 = 0u;
    v125 = 0u;
    LOBYTE(v126) = 1;
    MEMORY[0x1EEE9AC00](v32);
    v117[2] = &v124;
    swift_bridgeObjectRetain_n();
    v1 = sub_1BF906310(sub_1BF93F594, v117, v36);

    if (v1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF8BE424(0, *(v36 + 16) + 1, 1, v36);
        v36 = v113;
      }

      v38 = *(v36 + 16);
      v37 = *(v36 + 24);
      v1 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v114 = OUTLINED_FUNCTION_11_3(v37);
        sub_1BF8BE424(v114, v38 + 1, 1, v36);
        v36 = v115;
      }

      *(v36 + 16) = v1;
      v39 = v36 + 40 * v38;
      *(v39 + 32) = 4;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 2;
    }

    v40 = sub_1BF9277BC(v36);
    type metadata accessor for DeliveryVehiclePrerequisite();
    v41 = OUTLINED_FUNCTION_26_14();
    *(v41 + 16) = v40;
    *(v41 + 24) = 1;
  }

  else
  {
    v42 = sub_1BF97FD64(&unk_1F3EF5F58);
    type metadata accessor for DeliveryVehiclePrerequisite();
    v43 = OUTLINED_FUNCTION_26_14();
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_12();
    v17 = v100;
  }

  OUTLINED_FUNCTION_10_17();
  if (v25)
  {
    OUTLINED_FUNCTION_4_24();
    v17 = v101;
  }

  *(&v125 + 1) = v1;
  OUTLINED_FUNCTION_14_14();
  v46 = sub_1BF981AC4(v44, v45);
  OUTLINED_FUNCTION_1_24(v46);
  if (*(v4 + 208))
  {

    v48 = sub_1BF9277BC(v47);
    type metadata accessor for DeliveryVehiclePrerequisite();
    v49 = OUTLINED_FUNCTION_26_14();
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    OUTLINED_FUNCTION_10_17();
    if (v25)
    {
      OUTLINED_FUNCTION_4_24();
      v17 = v109;
    }

    *(&v125 + 1) = v1;
    OUTLINED_FUNCTION_14_14();
    v52 = sub_1BF981AC4(v50, v51);
    OUTLINED_FUNCTION_1_24(v52);
  }

  v53 = *(v4 + 216);
  if (v53 != 2 && (v53 & 1) != 0)
  {
    if (qword_1EDBF57F0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v54 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v54, qword_1EDBF57F8);
    v55 = sub_1BF9B47A8();
    v56 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_95(v56))
    {
      v57 = OUTLINED_FUNCTION_12_0();
      *v57 = 0;
      _os_log_impl(&dword_1BF8B8000, v55, v56, "adding pre-req because onlyEnableThroughConfig is set", v57, 2u);
      OUTLINED_FUNCTION_87();
    }

    OUTLINED_FUNCTION_15_3();
    v58 = *(v4 + 16);
    v59 = *(v4 + 24);
    ShouldBeEnabledFromConfigPrerequisite = type metadata accessor for ShouldBeEnabledFromConfigPrerequisite();
    v61 = swift_allocObject();
    *(v61 + 16) = v58;
    *(v61 + 24) = v59;
    v62 = *(v17 + 16);
    v63 = *(v17 + 24);

    if (v62 >= v63 >> 1)
    {
      OUTLINED_FUNCTION_31_12();
      v17 = v116;
    }

    *(&v125 + 1) = ShouldBeEnabledFromConfigPrerequisite;
    v64 = sub_1BF981AC4(&qword_1EDBF0D80, type metadata accessor for ShouldBeEnabledFromConfigPrerequisite);
    OUTLINED_FUNCTION_1_24(v64);
  }

  if (*(v4 + 217) != 2)
  {
    v66 = *(v17 + 16);
    v65 = *(v17 + 24);
    if (v66 >= v65 >> 1)
    {
      OUTLINED_FUNCTION_11_3(v65);
      OUTLINED_FUNCTION_31_12();
      v17 = v111;
    }

    v67 = type metadata accessor for NetworkPrerequisite();
    inited = swift_initStaticObject();
    *(&v125 + 1) = v67;
    v126 = sub_1BF981AC4(&qword_1EDBF2AF8, type metadata accessor for NetworkPrerequisite);
    *&v124 = inited;
    *(v17 + 16) = v66 + 1;
    OUTLINED_FUNCTION_6_16();
  }

  if (*(v4 + 360))
  {
    sub_1BF8D2004(v119, &v124);
    sub_1BF981D14(v7, &v121, &qword_1EBDEA2A8, &qword_1BF9C5080);
    if (v122)
    {
      sub_1BF8C2C9C(&v121, v123);
    }

    else
    {
      v74 = type metadata accessor for SystemClock();
      v75 = OUTLINED_FUNCTION_69_2();
      v123[3] = v74;
      v123[4] = &off_1F3EF85D8;
      v123[0] = v75;
    }

    v76 = type metadata accessor for InvocationTypePrerequisite();
    v77 = *(&v125 + 1);
    __swift_mutable_project_boxed_opaque_existential_1(&v124, *(&v125 + 1));
    OUTLINED_FUNCTION_2_0();
    v79 = *(v78 + 64);
    MEMORY[0x1EEE9AC00](v80);
    OUTLINED_FUNCTION_17();
    v82 = OUTLINED_FUNCTION_43_8(v81);
    v83(v82);
    sub_1BF931988();
    v85 = v84;
    __swift_destroy_boxed_opaque_existential_1Tm(&v124);
    *(&v125 + 1) = v76;
    OUTLINED_FUNCTION_13_13();
    v88 = sub_1BF981AC4(v86, v87);
    v126 = v88;
    *&v124 = v85;
    v123[0] = v17;
    v90 = *(v17 + 16);
    v89 = *(v17 + 24);
    if (v90 >= v89 >> 1)
    {
      OUTLINED_FUNCTION_11_3(v89);
      OUTLINED_FUNCTION_31_12();
      v17 = v110;
      v123[0] = v110;
      v76 = *(&v125 + 1);
      v91 = v126;
    }

    else
    {
      v91 = v88;
    }

    __swift_mutable_project_boxed_opaque_existential_1(&v124, v76);
    OUTLINED_FUNCTION_2_0();
    v93 = *(v92 + 64);
    MEMORY[0x1EEE9AC00](v94);
    OUTLINED_FUNCTION_17();
    v96 = OUTLINED_FUNCTION_54_5(v95);
    v97(v96);
    sub_1BF9808B8(v90, v77, v123, v76, v91);
    __swift_destroy_boxed_opaque_existential_1Tm(&v124);
  }

  else
  {
    v69 = sub_1BF97C6E0(v118, v119, v120 & 1, v7);
    v71 = *(v17 + 16);
    v70 = *(v17 + 24);
    if (v71 >= v70 >> 1)
    {
      OUTLINED_FUNCTION_11_3(v70);
      OUTLINED_FUNCTION_31_12();
      v17 = v112;
    }

    *(&v125 + 1) = type metadata accessor for InvocationTypePrerequisite();
    OUTLINED_FUNCTION_13_13();
    v126 = sub_1BF981AC4(v72, v73);
    *&v124 = v69;
    *(v17 + 16) = v71 + 1;
    OUTLINED_FUNCTION_6_16();
  }

  v98 = type metadata accessor for UnionPrerequisite();
  v99 = swift_allocObject();
  *(v99 + 16) = v17;
  v9[3] = v98;
  v9[4] = sub_1BF981AC4(&qword_1EDBF2F18, type metadata accessor for UnionPrerequisite);
  *v9 = v99;
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF97C6E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1BF981D14(a1, &v43, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  if (!v44)
  {
    sub_1BF8DFBF0(&v43, &qword_1EBDE9E28, &qword_1BF9C2CE8);
    if (qword_1EDBF57F0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v21 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v21, qword_1EDBF57F8);
    v22 = sub_1BF9B47A8();
    v23 = sub_1BF9B5028();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_12_0();
      *v24 = 0;
      _os_log_impl(&dword_1BF8B8000, v22, v23, "[warning] no lifecycle container available. This adoptor is likely not on the v2 API using a builderFactory. Using the disabled Prerequisite", v24, 2u);
      OUTLINED_FUNCTION_87();
    }

    if (qword_1EDBF1940 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDBF1948;

    return v12;
  }

  sub_1BF8C2C9C(&v43, v45);
  if (a3)
  {
    goto LABEL_21;
  }

  v7 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  OUTLINED_FUNCTION_23_0();
  type metadata accessor for InvocationTypePrerequisite();
  OUTLINED_FUNCTION_55_6(v7);
  OUTLINED_FUNCTION_59_7();
  v9 = v8();
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = v9;
  result = sub_1BF965210(v9);
  if (!result)
  {

LABEL_21:
    if (qword_1EDBF57F0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v25 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v25, qword_1EDBF57F8);
    v26 = sub_1BF9B47A8();
    v27 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_95(v27))
    {
      v28 = OUTLINED_FUNCTION_12_0();
      *v28 = 0;
      _os_log_impl(&dword_1BF8B8000, v26, v27, "unable to get default invocation type prerequisite from lifecycle. Building our own", v28, 2u);
      OUTLINED_FUNCTION_87();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2C0, &qword_1BF9C5528);
    OUTLINED_FUNCTION_35_9();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BF9B6370;
    if (qword_1EDBF26B8 != -1)
    {
      swift_once();
    }

    v30 = *algn_1EDBF26C8;
    *(v29 + 32) = qword_1EDBF26C0;
    *(v29 + 40) = v30;
    sub_1BF8D2004(a2, &v43);
    sub_1BF981D14(a4, &v40, &qword_1EBDEA2A8, &qword_1BF9C5080);
    if (v41)
    {
      sub_1BF8C2C9C(&v40, v42);
    }

    else
    {
      v31 = type metadata accessor for SystemClock();
      v32 = OUTLINED_FUNCTION_69_2();
      v42[3] = v31;
      v42[4] = &off_1F3EF85D8;
      v42[0] = v32;
    }

    type metadata accessor for InvocationTypePrerequisite();
    __swift_mutable_project_boxed_opaque_existential_1(&v43, v44);
    OUTLINED_FUNCTION_2_0();
    v34 = *(v33 + 64);
    MEMORY[0x1EEE9AC00](v35);
    OUTLINED_FUNCTION_17();
    v37 = OUTLINED_FUNCTION_54_5(v36);
    v38(v37);
    sub_1BF931988();
    v12 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    goto LABEL_31;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1BFB5E5E0](0, v10);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);

LABEL_8:

    if (qword_1EDBF57F0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v13 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v13, qword_1EDBF57F8);
    v14 = sub_1BF9B47A8();
    v15 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_95(v15))
    {
      *OUTLINED_FUNCTION_12_0() = 0;
      OUTLINED_FUNCTION_19_17();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_87();
    }

LABEL_31:
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF97CB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1BF981D14(a1, v25, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v5 = v26;
  if (!v26)
  {
    sub_1BF8DFBF0(v25, &qword_1EBDE9E28, &qword_1BF9C2CE8);
LABEL_7:
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    goto LABEL_8;
  }

  v6 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2E0, &qword_1BF9C5558);
  OUTLINED_FUNCTION_55_6(v6);
  v8 = v7();
  if (!v8)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    goto LABEL_7;
  }

  sub_1BF8F19D4(v8, &v28);

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  if (*(&v29 + 1))
  {
    sub_1BF8C2C9C(&v28, &v31);
    return sub_1BF8C2C9C(&v31, a3);
  }

LABEL_8:
  sub_1BF8DFBF0(&v28, &qword_1EBDEA2D8, &qword_1BF9C5550);
  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v10 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v10, qword_1EDBF57F8);
  sub_1BF8D2004(a2, &v31);
  v11 = sub_1BF9B47A8();
  v12 = sub_1BF9B5028();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_109();
    v13 = OUTLINED_FUNCTION_39_0();
    *&v28 = v13;
    *v5 = 136315138;
    v14 = v33;
    __swift_project_boxed_opaque_existential_1(&v31, v32);
    v15 = *(v14 + 16);
    v16 = sub_1BF9B5668();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(&v31);
    v19 = sub_1BF8DE810(v16, v18, &v28);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_1BF8B8000, v11, v12, "[warning] No Policy config on the lifecycle -- SiriHints won't be enabled for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v31);
  }

  if (qword_1EDBF28A8 != -1)
  {
    OUTLINED_FUNCTION_23_14();
  }

  v20 = qword_1EDC03438;
  v21 = unk_1EDC03440;
  v22 = qword_1EDC03448;
  v23 = unk_1EDC03450;
  a3[3] = &unk_1F3EFDAF0;
  a3[4] = &off_1F3EFDB90;
  OUTLINED_FUNCTION_35_9();
  v24 = swift_allocObject();
  *a3 = v24;
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v24[5] = v23;
}

void sub_1BF97CE3C()
{
  OUTLINED_FUNCTION_65_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v156 = v7;
  sub_1BF9B4378();
  OUTLINED_FUNCTION_2_0();
  v158 = v9;
  v159 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v146 - v15;
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v17 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v17, qword_1EDBF5570);

  v18 = sub_1BF9B47A8();
  v19 = sub_1BF9B5028();

  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_109();
    v155 = v4;
    v20 = OUTLINED_FUNCTION_39_0();
    v154 = v6;
    v21 = v20;
    *&v179[0] = v20;
    *v4 = 136315138;
    OUTLINED_FUNCTION_15_3();
    v1 = v16;
    v23 = v2[2];
    v22 = v2[3];

    v24 = sub_1BF8DE810(v23, v22, v179);
    v16 = v1;

    *(v4 + 4) = v24;
    OUTLINED_FUNCTION_19_17();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  sub_1BF9B4358();
  OUTLINED_FUNCTION_15_3();
  sub_1BF9649CC((v2 + 4), v179);
  v157 = v16;
  if (!v180)
  {
    OUTLINED_FUNCTION_15_3();
    sub_1BF981D14((v2 + 28), &v173, &qword_1EBDEA288, &qword_1BF9C5060);
    if (v174)
    {
      sub_1BF8C2C9C(&v173, v176);
    }

    else
    {
      type metadata accessor for StaticIconUrlProvider();
      v73 = OUTLINED_FUNCTION_47_5();
      OUTLINED_FUNCTION_7_16(v73);
      v177 = v18;
      v178 = &protocol witness table for StaticIconUrlProvider;
      v176[0] = v74;
    }

    OUTLINED_FUNCTION_15_3();
    sub_1BF8D2004((v2 + 33), &v173);
    v76 = v2[46];
    v75 = v2[47];
    v77 = v2[50];
    v150 = v2[51];
    v151 = v77;
    v78 = v2[49];
    v152 = v2[48];
    v153 = v76;
    v155 = v78;
    v79 = *(v158 + 16);
    v80 = v14;
    v81 = v157;
    (v79)(v14, v157, v159);
    v149 = type metadata accessor for TemplateOverrideDialogIdCallback(0);
    OUTLINED_FUNCTION_52_5(v149);
    v82 = OUTLINED_FUNCTION_24_9();
    v154 = sub_1BF900AA8(v82, v83, v84, v76, v75, 1);
    (v79)(v14, v81, v159);
    v148 = v79;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    OUTLINED_FUNCTION_24_9();
    v85 = v149;
    sub_1BF8FF2BC();
    v153 = v86;
    OUTLINED_FUNCTION_42_9();
    v79();

    OUTLINED_FUNCTION_24_9();
    sub_1BF8FF2BC();
    v88 = v87;
    OUTLINED_FUNCTION_42_9();
    v148();
    OUTLINED_FUNCTION_24_9();
    sub_1BF8FF2BC();
    v90 = v89;
    sub_1BF8D2004(&v173, &v171);
    OUTLINED_FUNCTION_51_6();
    OUTLINED_FUNCTION_28_2();
    v91 = swift_allocObject();
    *(v91 + 16) = v88;
    *(v91 + 24) = v162;
    *(v91 + 40) = v85;
    *(v91 + 48) = &off_1F3EF9308;
    OUTLINED_FUNCTION_28_2();
    v92 = swift_allocObject();
    *(v92 + 16) = v90;
    *(v92 + 24) = v170;
    *(v92 + 40) = v85;
    *(v92 + 48) = &off_1F3EF9308;
    v93 = type metadata accessor for ViewCallbacksWrapper();
    v94 = OUTLINED_FUNCTION_68_3();
    v95 = v168;
    v96 = v169;
    v97 = __swift_mutable_project_boxed_opaque_existential_1(&v167, v168);
    OUTLINED_FUNCTION_41_6(v97, v98, v99, v100, v101, v102, v103, v104, v146);
    OUTLINED_FUNCTION_2_0();
    v106 = *(v105 + 64);
    MEMORY[0x1EEE9AC00](v107);
    OUTLINED_FUNCTION_17();
    v109 = OUTLINED_FUNCTION_43_8(v108);
    v110(v109);
    OUTLINED_FUNCTION_58_6();
    v151 = &off_1F3EF9308;
    v152 = v96;
    v149 = v95;
    v150 = &off_1F3EF9308;
    v147 = v85;
    v148 = v85;
    v146 = v94;
    v111 = OUTLINED_FUNCTION_57_7();
    v117 = sub_1BF902974(v111, v112, v113, v114, v115, v92, v116, v80, v146, v147, v148, v149, v150, v151, v152);
    __swift_destroy_boxed_opaque_existential_1Tm(&v167);
    v118 = v156;
    v156[3] = v93;
    v118[4] = &protocol witness table for ViewCallbacksWrapper;
    *v118 = v117;
    goto LABEL_17;
  }

  if (v180 == 1)
  {
    v30 = v179[0];
    OUTLINED_FUNCTION_15_3();
    sub_1BF981D14((v2 + 28), &v173, &qword_1EBDEA288, &qword_1BF9C5060);
    if (v174)
    {
      sub_1BF8C2C9C(&v173, v176);
    }

    else
    {
      type metadata accessor for StaticIconUrlProvider();
      v31 = OUTLINED_FUNCTION_47_5();
      OUTLINED_FUNCTION_7_16(v31);
      v177 = v18;
      v178 = &protocol witness table for StaticIconUrlProvider;
      v176[0] = v32;
    }

    OUTLINED_FUNCTION_15_3();
    sub_1BF8D2004((v2 + 33), &v173);
    v33 = v2[46];
    v34 = v2[47];
    v35 = v2[50];
    v149 = v2[51];
    v150 = v35;
    v36 = v2[49];
    v152 = v2[48];
    v153 = v33;
    v155 = v36;
    v147 = *(v158 + 16);
    (v147)(v14, v16, v159);
    v148 = type metadata accessor for TemplateOverrideCATTemplatingCallback(0);
    OUTLINED_FUNCTION_52_5(v148);
    v37 = v34;
    v38 = v14;
    v154 = sub_1BF900358(v14, v33, v37, 1, v30, *(&v30 + 1));
    OUTLINED_FUNCTION_42_9();
    v39 = v147;
    v147();
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    v40 = v148;
    sub_1BF8FEB88();
    v153 = v41;
    OUTLINED_FUNCTION_42_9();
    v39();

    sub_1BF8FEB88();
    v150 = v42;
    OUTLINED_FUNCTION_42_9();
    v39();
    v151 = *(&v30 + 1);

    sub_1BF8FEB88();
    v44 = v43;
    sub_1BF8D2004(&v173, &v171);
    OUTLINED_FUNCTION_51_6();
    OUTLINED_FUNCTION_28_2();
    v45 = swift_allocObject();
    *(v45 + 16) = v150;
    *(v45 + 24) = v162;
    *(v45 + 40) = v40;
    *(v45 + 48) = &off_1F3EF92F0;
    OUTLINED_FUNCTION_28_2();
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v170;
    *(v46 + 40) = v40;
    *(v46 + 48) = &off_1F3EF92F0;
    v47 = type metadata accessor for ViewCallbacksWrapper();
    v48 = OUTLINED_FUNCTION_68_3();
    v49 = v168;
    v50 = v169;
    v51 = __swift_mutable_project_boxed_opaque_existential_1(&v167, v168);
    OUTLINED_FUNCTION_41_6(v51, v52, v53, v54, v55, v56, v57, v58, v146);
    OUTLINED_FUNCTION_2_0();
    v60 = *(v59 + 64);
    MEMORY[0x1EEE9AC00](v61);
    OUTLINED_FUNCTION_17();
    v63 = OUTLINED_FUNCTION_22_4(v62);
    v64(v63);
    OUTLINED_FUNCTION_58_6();
    v151 = &off_1F3EF92F0;
    v152 = v50;
    v149 = v49;
    v150 = &off_1F3EF92F0;
    v147 = v40;
    v148 = v40;
    v146 = v48;
    v65 = OUTLINED_FUNCTION_57_7();
    v71 = sub_1BF902974(v65, v66, v67, v68, v69, v46, v70, v38, v146, v147, v148, v149, v150, v151, v152);
    __swift_destroy_boxed_opaque_existential_1Tm(&v167);
    v72 = v156;
    v156[3] = v47;
    v72[4] = &protocol witness table for ViewCallbacksWrapper;

    *v72 = v71;
LABEL_17:
    __swift_destroy_boxed_opaque_existential_1Tm(&v173);
    (*(v158 + 8))(v157, v159);
    v119 = v176;
    goto LABEL_20;
  }

  sub_1BF8C2C9C(v179, v176);
  OUTLINED_FUNCTION_15_3();
  sub_1BF981D14((v2 + 28), &v171, &qword_1EBDEA288, &qword_1BF9C5060);
  if (v172)
  {
    sub_1BF8C2C9C(&v171, &v173);
  }

  else
  {
    type metadata accessor for StaticIconUrlProvider();
    v120 = OUTLINED_FUNCTION_47_5();
    OUTLINED_FUNCTION_7_16(v120);
    v174 = v18;
    v175 = &protocol witness table for StaticIconUrlProvider;
    *&v173 = v121;
  }

  OUTLINED_FUNCTION_15_3();
  sub_1BF8D2004((v2 + 33), &v171);
  OUTLINED_FUNCTION_51_6();
  OUTLINED_FUNCTION_28_2();
  v122 = swift_allocObject();
  sub_1BF8C2C9C(&v167, v122 + 16);
  OUTLINED_FUNCTION_51_6();
  OUTLINED_FUNCTION_28_2();
  v123 = swift_allocObject();
  sub_1BF8C2C9C(&v167, v123 + 16);
  OUTLINED_FUNCTION_51_6();
  OUTLINED_FUNCTION_28_2();
  v124 = swift_allocObject();
  sub_1BF8C2C9C(&v167, v124 + 16);
  sub_1BF8D2004(v176, v166);
  OUTLINED_FUNCTION_28_2();
  v125 = swift_allocObject();
  sub_1BF8C2C9C(v166, v125 + 16);
  sub_1BF8D2004(&v171, v165);
  sub_1BF8D2004(&v173, &v162);
  v126 = type metadata accessor for ViewCallbacksWrapper();
  v127 = OUTLINED_FUNCTION_68_3();
  v128 = v163;
  v129 = v164;
  v130 = __swift_mutable_project_boxed_opaque_existential_1(&v162, v163);
  OUTLINED_FUNCTION_41_6(v130, v131, v132, v133, v134, v135, v136, v137, v146);
  OUTLINED_FUNCTION_2_0();
  v139 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_17();
  v142 = OUTLINED_FUNCTION_22_4(v141);
  v143(v142);
  v161[0] = sub_1BF90322C;
  v161[1] = v122;
  v160[0] = sub_1BF903234;
  v160[1] = v123;
  v144 = sub_1BF902974(v161, v160, sub_1BF90323C, v124, sub_1BF903244, v125, v165, v1, v127, &type metadata for DelegateDialogCallback, &type metadata for DelegateDialogCallback, v128, &off_1F3EF92D8, &off_1F3EF92D8, v129);
  __swift_destroy_boxed_opaque_existential_1Tm(&v162);
  v145 = v156;
  v156[3] = v126;
  v145[4] = &protocol witness table for ViewCallbacksWrapper;
  *v145 = v144;
  __swift_destroy_boxed_opaque_existential_1Tm(&v171);
  __swift_destroy_boxed_opaque_existential_1Tm(v176);
  (*(v158 + 8))(v157, v159);
  v119 = &v173;
LABEL_20:
  __swift_destroy_boxed_opaque_existential_1Tm(v119);
  OUTLINED_FUNCTION_64();
}

uint64_t GenericSuggestionDetailsBuilder.deinit()
{
  v1 = *(v0 + 24);

  sub_1BF960A50(v0 + 32);
  sub_1BF8DFBF0(v0 + 80, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  sub_1BF980E40(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  v2 = *(v0 + 144);

  v3 = *(v0 + 160);

  v4 = *(v0 + 168);

  v5 = *(v0 + 176);

  v6 = *(v0 + 184);

  v7 = *(v0 + 192);

  v8 = *(v0 + 200);

  v9 = *(v0 + 208);

  sub_1BF8DFBF0(v0 + 224, &qword_1EBDEA288, &qword_1BF9C5060);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 264));
  sub_1BF8DFBF0(v0 + 304, &qword_1EBDEA290, &qword_1BF9C5068);
  v10 = *(v0 + 352);

  v11 = *(v0 + 360);

  v12 = *(v0 + 376);

  v13 = *(v0 + 392);

  v14 = *(v0 + 408);

  sub_1BF8DFBF0(v0 + 416, &qword_1EBDE8E10, &qword_1BF9B9980);
  v15 = *(v0 + 456);

  sub_1BF8DFBF0(v0 + 464, &qword_1EBDEA298, &qword_1BF9C9D00);
  return v0;
}

uint64_t GenericSuggestionDetailsBuilder.__deallocating_deinit()
{
  GenericSuggestionDetailsBuilder.deinit();
  OUTLINED_FUNCTION_60_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF97DAE8@<X0>(uint64_t *a1@<X8>)
{
  result = GenericSuggestionDetailsBuilder.__allocating_init(suggestionId:dialogDetails:)();
  *a1 = result;
  return result;
}

uint64_t sub_1BF97DB10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979B80(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DB3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979BCC(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = sub_1BF979C18(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1BF97DB94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979CB4(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DBC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979D00(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DBEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979D4C(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DC18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979D98(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DC44@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF979F18();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97DC70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979FD0(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DC9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979F78(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DCC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979F28(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = sub_1BF97A028(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1BF97DD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = sub_1BF97A070(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1BF97DD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = sub_1BF97A0B8(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1BF97DD78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  result = sub_1BF980D2C(v7, v4, v5, v6);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DDC4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF979DE4();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97DDF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF97A19C(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DE1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF97A158(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v8 = *v6;
  result = sub_1BF97A1F4(a1, a2, a3, a4, a5);
  *a6 = v8;
  return result;
}

uint64_t sub_1BF97DE74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF97A100(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DEC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF97A440(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DF38()
{
  result = sub_1BF97DF60();
  qword_1EDC03438 = result;
  unk_1EDC03440 = v1;
  qword_1EDC03448 = v2;
  unk_1EDC03450 = v3;
  return result;
}

uint64_t sub_1BF97DF60()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  v1 = *(off_1EDBF2FF8 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1BF8D0748();
    v2 = v11;
    v3 = (v0 + 32);
    v4 = *(v11 + 16);
    v5 = 16 * v4;
    do
    {
      v7 = *v3++;
      v6 = v7;
      v12 = v2;
      v8 = v4 + 1;
      if (v4 >= *(v2 + 24) >> 1)
      {
        sub_1BF8D0748();
        v2 = v12;
      }

      *(v2 + 16) = v8;
      v9 = v2 + v5;
      *(v9 + 32) = v6;
      *(v9 + 40) = 0x7FFFFFFFFFFFFFFFLL;
      v5 += 16;
      v4 = v8;
      --v1;
    }

    while (v1);
  }

  sub_1BF978D64(v2);
  sub_1BF9322AC();
  sub_1BF9B4988();
  return 3;
}

uint64_t SuggestionDefinitionBuildingErrors.hashValue.getter()
{
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](0);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF97E160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 40) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
  sub_1BF932404();
  *(v3 + 48) = sub_1BF9B4988();
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  sub_1BF9649CC(a3, &v7);
  type metadata accessor for GenericSuggestionDetailsBuilder();
  OUTLINED_FUNCTION_60_4();
  v5 = swift_allocObject();
  GenericSuggestionDetailsBuilder.init(suggestionId:dialogDetails:)();
  sub_1BF960A50(a3);
  *(v3 + 32) = v5;
  return v3;
}

uint64_t sub_1BF97E260(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void sub_1BF97E2AC()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v2 = sub_1BF8C9288(v0);
  if (!v2)
  {
LABEL_13:
    sub_1BF97E4F4();

    OUTLINED_FUNCTION_64();
    return;
  }

  v3 = v2;
  OUTLINED_FUNCTION_49_4();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v1 & 0xC000000000000001;
    v27 = v1;
    v26 = v1 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v5 = MEMORY[0x1BFB5E5E0](0, v1);
      }

      else
      {
        v5 = *(v1 + 32);
      }

      v6 = OUTLINED_FUNCTION_63_3();
      sub_1BF8DFE40(v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BB0, &qword_1BF9B86C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CF0, &unk_1BF9B8790);
      if (OUTLINED_FUNCTION_48_5())
      {
        v8 = OUTLINED_FUNCTION_30_10();
        v9(v8);
        v10 = v31;
        v11 = v32;
        v12 = v33;
        v28 = v35;
        v29 = v34;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        OUTLINED_FUNCTION_2_0();
        v14 = *(v13 + 64);
        MEMORY[0x1EEE9AC00](v15);
        OUTLINED_FUNCTION_17();
        v17 = OUTLINED_FUNCTION_36_9(v16);
        v18(v17);
        v19 = v3;
        v3 = v1;
        v20 = v11;
        v4 = v26;
        v1 = v27;
        AnySignalValue.init<A>(_:)(v19, v10, v20, v12, v29, v28, v37);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_61_5();
        sub_1BF8DFBF0(v21, &qword_1EBDE8CF8, qword_1BF9C2C00);
        v22 = OUTLINED_FUNCTION_63_3();
        sub_1BF8E0940(v22, v23);
      }

      sub_1BF8D2004(v5 + 16, &v39);

      memcpy(v38, v37, sizeof(v38));
      OUTLINED_FUNCTION_65_5();
      if (v25)
      {
        OUTLINED_FUNCTION_11_3(v24);
        sub_1BF8D07C8();
      }

      OUTLINED_FUNCTION_33_9();
    }

    while (v3);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1BF97E4F4()
{
  OUTLINED_FUNCTION_23();

  sub_1BF8D2464(v0);
  swift_endAccess();
}

void sub_1BF97E554()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = *v2;
  v4 = sub_1BF8C9288(v0);
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_49_4();
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = v1 & 0xC000000000000001;
      while (1)
      {
        if (v6)
        {
          v7 = MEMORY[0x1BFB5E5E0](0, v1);
        }

        else
        {
          v7 = *(v1 + 32);
        }

        v8 = OUTLINED_FUNCTION_63_3();
        sub_1BF8DFE40(v8, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BB0, &qword_1BF9B86C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CF0, &unk_1BF9B8790);
        if (OUTLINED_FUNCTION_48_5())
        {
          v10 = OUTLINED_FUNCTION_30_10();
          v11(v10);
          v12 = v30;
          v13 = v32;
          v27 = v33;
          v28 = v31;
          v26 = v34;
          __swift_project_boxed_opaque_existential_1(v29, v30);
          OUTLINED_FUNCTION_2_0();
          v15 = *(v14 + 64);
          MEMORY[0x1EEE9AC00](v16);
          OUTLINED_FUNCTION_17();
          v18 = OUTLINED_FUNCTION_36_9(v17);
          v19(v18);
          v20 = v1;
          v1 = v6;
          AnySignalValue.init<A>(_:)(v20, v12, v28, v13, v27, v26, v36);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          __swift_destroy_boxed_opaque_existential_1Tm(v35);
        }

        else
        {
          v21 = OUTLINED_FUNCTION_61_5();
          sub_1BF8DFBF0(v21, &qword_1EBDE8CF8, qword_1BF9C2C00);
          v22 = OUTLINED_FUNCTION_63_3();
          sub_1BF8E0940(v22, v23);
        }

        sub_1BF8D2004(v7 + 16, &v38);

        memcpy(v37, v36, sizeof(v37));
        OUTLINED_FUNCTION_65_5();
        if (v25)
        {
          OUTLINED_FUNCTION_11_3(v24);
          sub_1BF8D07C8();
        }

        OUTLINED_FUNCTION_33_9();
      }
    }

    __break(1u);
  }

  else
  {
    v37[0] = v3;
    sub_1BF97E7B4(MEMORY[0x1E69E7CC0], v37);

    OUTLINED_FUNCTION_64();
  }
}

uint64_t sub_1BF97E7B4(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for ActionIdentifier();
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v11 = (v10 - v9);
  v12 = *a2;
  *v11 = sub_1BF978FA0();
  v11[1] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for DefaultCandidateSuggestionConfigurator(0);
  v15 = OUTLINED_FUNCTION_52_5(v14);
  sub_1BF960AA4(v11, v15 + OBJC_IVAR____TtC18SiriSuggestionsKit38DefaultCandidateSuggestionConfigurator_actionIdentifier);

  v16 = sub_1BF980950(a1, v12, v15, v2);

  return v16;
}

uint64_t sub_1BF97E8B8(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = sub_1BF978FA0();
  CandidateSuggestionConfiguratorFactory.create(suggestionId:)(v4, v5, v2, v3);

  OUTLINED_FUNCTION_11_2();
  sub_1BF981A78(v7, v1 + 56, &qword_1EBDE99C8, &unk_1BF9C2D00);
  swift_endAccess();
}

uint64_t sub_1BF97E9D0()
{
  OUTLINED_FUNCTION_32_11();
  sub_1BF979DE4();
}

uint64_t sub_1BF97EA40()
{
  OUTLINED_FUNCTION_32_11();
  sub_1BF979F18();
}

uint64_t sub_1BF97EB10()
{
  OUTLINED_FUNCTION_32_11();
  v0();
}

uint64_t sub_1BF97EB6C()
{
  OUTLINED_FUNCTION_32_11();
  v0();
}

uint64_t sub_1BF97EBE0()
{
  OUTLINED_FUNCTION_32_11();
  v0();
}

uint64_t sub_1BF97EC3C(uint64_t a1, void (*a2)(uint64_t, _OWORD *))
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  a2(a1, v3);
  return sub_1BF8DFBF0(v3, &qword_1EBDE9E28, &qword_1BF9C2CE8);
}

void *sub_1BF97EC8C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  sub_1BF8DFBF0((v0 + 7), &qword_1EBDE99C8, &unk_1BF9C2D00);
  return v0;
}

uint64_t sub_1BF97ECDC()
{
  sub_1BF97EC8C();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1BF97ED10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF978F54();
  *a1 = result;
  return result;
}

uint64_t sub_1BF97ED38@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97ED78@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EDB8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB10();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EDF8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EE38@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EE78@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EEB8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EEF8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EA40();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EF24@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EF64@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EFA4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EFE4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB10();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F024@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB10();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F064@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB10();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F0A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979258(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1BF97F0DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  result = sub_1BF980C24(v7, v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t sub_1BF97F128@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97E9D0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F154@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F194@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F1D4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF979210();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F200@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F264@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = sub_1BF97E260(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1BF97F32C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97E4F4();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  result = sub_1BF97E7B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF97F384@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *v4;
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
  result = sub_1BF980AAC(a1, a2, v11, v8, v9, v10);
  *a4 = result;
  return result;
}

uint64_t sub_1BF97F3F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF97E8B8(a1);
  *a2 = v4;
  return result;
}

void sub_1BF97F41C(void *a1@<X8>)
{
  v3 = *v1;
  sub_1BF97E2AC();
  *a1 = v3;
}

void sub_1BF97F448(void *a1@<X8>)
{
  v3 = *v1;
  sub_1BF97E554();
  *a1 = v4;
}

uint64_t sub_1BF97F474@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UtteranceAction();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  a1[3] = v2;
  result = sub_1BF981AC4(&qword_1EDBF32A8, type metadata accessor for UtteranceAction);
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1BF97F52C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF97F550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1BF9B56D8() & 1;
  }
}

void sub_1BF97F5EC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v28 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1BF9B5758();
      __break(1u);
      goto LABEL_22;
    }

    v30 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_1BF8C2E64(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2F0, &unk_1BF9C5570);
      sub_1BF9B53B8();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    v22 = (v20[7] + 16 * v12);
    *v22 = v9;
    v22[1] = v8;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v30 + 1;
    a2 = 1;
  }

  sub_1BF95BE84(v15);
  v17 = *a3;
  v18 = sub_1BF8C2E64(v7, v6);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD00000000000001BLL, 0x80000001BF9CDAF0);
  sub_1BF9B5378();
  MEMORY[0x1BFB5DE90](39, 0xE100000000000000);
  sub_1BF9B53F8();
  __break(1u);
}

void sub_1BF97F8E0(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v24 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1BF9B5758();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 4);
    if ((v7 & 0xFF00) == 0x700)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v26 = *(i - 4);
    v9 = *a3;
    v11 = sub_1BF9B2B50(v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2C8, &unk_1BF9C5530);
      sub_1BF9B53B8();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + 2 * v11) = v7;
    *(v18[7] + 8 * v11) = v8;
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_1BF95CBC4();
  v15 = *a3;
  v16 = sub_1BF9B2B50(v7);
  if ((v14 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();

  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD00000000000001BLL, 0x80000001BF9CDAF0);
  sub_1BF9B5378();
  MEMORY[0x1BFB5DE90](39, 0xE100000000000000);
  sub_1BF9B53F8();
  __break(1u);
}

uint64_t sub_1BF97FBA0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1BF8C2E64(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2E8, &qword_1BF9C5568);
        sub_1BF9B53B8();
      }
    }

    else
    {
      sub_1BF95CEB4();
      v15 = *a3;
      v16 = sub_1BF8C2E64(v7, v6);
      if ((v14 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v11 = v16;
    }

    v18 = *a3;
    if (v14)
    {

      v19 = v18[7];
      v20 = *(v19 + 8 * v11);
      *(v19 + 8 * v11) = v8;
    }

    else
    {
      v18[(v11 >> 6) + 8] |= 1 << v11;
      v21 = (v18[6] + 16 * v11);
      *v21 = v7;
      v21[1] = v6;
      *(v18[7] + 8 * v11) = v8;
      v22 = v18[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v18[2] = v24;
    }

    ++v4;
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

uint64_t sub_1BF97FD64(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_100;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D0, &qword_1BF9C06F0);
  result = sub_1BF9B5258();
  v3 = result;
  v69 = *(v1 + 16);
  if (!v69)
  {
    goto LABEL_100;
  }

  v4 = 0;
  v81 = result + 56;
  v71 = result;
  v67 = v1 + 32;
  v68 = v1;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_102;
    }

    v5 = v67 + 40 * v4;
    v7 = *v5;
    v6 = *(v5 + 8);
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v10 = *(v5 + 32);
    v11 = *(v3 + 40);
    sub_1BF9B57A8();
    sub_1BF8C0D00(v7, v6, v9, v8, v10);
    DeliveryVehicle.rawValue.getter();
    sub_1BF9B4B48();

    result = sub_1BF9B57E8();
    v12 = -1 << *(v3 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    v15 = *(v81 + 8 * (v13 >> 6));
    v16 = 1 << v13;
    v77 = v8;
    v79 = v6;
    v82 = v7;
    if (((1 << v13) & v15) == 0)
    {
      break;
    }

    v70 = v4;
    v80 = ~v12;
    v72 = v9;
    v17 = v9 | v6 | v8;
    v18 = v17 | v7;
    v19 = v7 == 1;
    v23 = v17 == 0;
    v20 = v17 == 0;
    if (!v23)
    {
      v19 = 0;
    }

    v21 = v7 == 2;
    v22 = v7 == 4;
    v23 = v18 == 0;
    if (v18)
    {
      v24 = v19;
    }

    else
    {
      v24 = 1;
    }

    v76 = v24;
    v25 = "assistantSuggestions";
    if (v23)
    {
      v25 = "siriNotification";
    }

    v75 = v25 | 0x8000000000000000;
    v26 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 2;
    v27 = !v21 || !v20;
    v28 = 0x706C654869726973;
    if (v21 && v20)
    {
      v28 = 0x696669746F4E736FLL;
    }

    v29 = 0xEE006E6F69746163;
    if (v27)
    {
      v29 = 0xE800000000000000;
    }

    v30 = !v22 || !v20;
    if (v22 && v20)
    {
      v31 = 0xD000000000000014;
    }

    else
    {
      v31 = 0xD000000000000010;
    }

    v32 = "siriAutoComplete";
    if (v30)
    {
      v32 = "actionWillExecute";
    }

    v33 = v32 | 0x8000000000000000;
    v34 = !v26 || !v20;
    if (v26 && v20)
    {
      v35 = v28;
    }

    else
    {
      v35 = v31;
    }

    if (v34)
    {
      v36 = v33;
    }

    else
    {
      v36 = v29;
    }

    v73 = v36;
    v74 = v35;
    v78 = v10;
    v37 = v6;
    while (1)
    {
      v38 = *(v3 + 48) + 40 * v13;
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = *(v38 + 16);
      v42 = *(v38 + 24);
      v43 = *(v38 + 32);
      v83 = v41;
      v84 = v40;
      v85 = *v38;
      if (v43 == 2)
      {
        if (!(v41 | v40 | v39 | v42))
        {
          v45 = 0xD000000000000010;
          v46 = 0x80000001BF9CBC40;
LABEL_61:
          v44 = v82;
          goto LABEL_62;
        }

        v47 = v41 | v40 | v42;
        v48 = v39 == 1 && v47 == 0;
        v45 = 0xD000000000000010;
        v46 = 0x80000001BF9CBC20;
        v44 = v82;
        if (!v48)
        {
          v49 = v85 == 2 && v47 == 0;
          v45 = 0x696669746F4E736FLL;
          v46 = 0xEE006E6F69746163;
          if (!v49)
          {
            if (v85 == 3 && v47 == 0)
            {
              v46 = 0xE800000000000000;
              v45 = 0x706C654869726973;
            }

            else
            {
              v51 = v47 == 0;
              v52 = v85 == 4;
              v53 = !v52 || !v51;
              if (v52 && v51)
              {
                v45 = 0xD000000000000014;
              }

              else
              {
                v45 = 0xD000000000000010;
              }

              v54 = "siriAutoComplete";
              if (v53)
              {
                v54 = "actionWillExecute";
              }

              v44 = v82;
              v46 = v54 | 0x8000000000000000;
            }
          }
        }
      }

      else
      {
        if (v43 != 1)
        {

          MEMORY[0x1BFB5DE90](v85, v40);
          if (v42)
          {
            MEMORY[0x1BFB5DE90](v41, v42);
            v55 = 95;
            v56 = 0xE100000000000000;
          }

          else
          {
            v55 = 0;
            v56 = 0xE000000000000000;
          }

          MEMORY[0x1BFB5DE90](v55, v56);

          v45 = 0x5F7070416E69;
          v46 = 0xE600000000000000;
          v10 = v78;
          v37 = v79;
          goto LABEL_61;
        }

        v44 = v82;
        if (*v38)
        {
          if (*v38 == 1)
          {
            v45 = 0x746E694869726973;
            v46 = 0xEF6E656B6F705373;
          }

          else
          {
            v46 = 0xE700000000000000;
            v45 = 0x6E776F6E6B6E75;
          }
        }

        else
        {
          v45 = 0x746E694869726973;
          v46 = 0xE900000000000073;
        }
      }

LABEL_62:
      if (v10 == 2)
      {
        v57 = v76 ? 0xD000000000000010 : v74;
        v58 = v76 ? v75 : v73;
      }

      else if (v10 == 1)
      {
        if (v44)
        {
          v57 = v44 == 1 ? 0x746E694869726973 : 0x6E776F6E6B6E75;
          v58 = v44 == 1 ? 0xEF6E656B6F705373 : 0xE700000000000000;
        }

        else
        {
          v57 = 0x746E694869726973;
          v58 = 0xE900000000000073;
        }
      }

      else
      {
        MEMORY[0x1BFB5DE90](v44, v37);
        if (v77)
        {
          MEMORY[0x1BFB5DE90](v72);
          v60 = 95;
          v59 = 0xE100000000000000;
        }

        else
        {
          v60 = 0;
          v59 = 0xE000000000000000;
        }

        MEMORY[0x1BFB5DE90](v60, v59);

        v57 = 0x5F7070416E69;
        v58 = 0xE600000000000000;
        v3 = v71;
        v10 = v78;
        v37 = v79;
      }

      if (v45 == v57 && v46 == v58)
      {
        break;
      }

      v62 = sub_1BF9B56D8();
      sub_1BF8C0CB8(v85, v84, v83, v42, v43);

      if (v62)
      {
        goto LABEL_94;
      }

      v13 = (v13 + 1) & v80;
      v14 = v13 >> 6;
      v15 = *(v81 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if ((v15 & (1 << v13)) == 0)
      {
        v1 = v68;
        v4 = v70;
        v9 = v72;
        goto LABEL_95;
      }
    }

    sub_1BF8C0CB8(v85, v84, v83, v42, v43);

LABEL_94:
    result = sub_1BF8C0CB8(v82, v37, v72, v77, v10);
    v1 = v68;
    v4 = v70;
LABEL_97:
    if (++v4 == v69)
    {
LABEL_100:

      return v3;
    }
  }

  v1 = v68;
LABEL_95:
  *(v81 + 8 * v14) = v15 | v16;
  v63 = *(v3 + 48) + 40 * v13;
  *v63 = v82;
  *(v63 + 8) = v79;
  *(v63 + 16) = v9;
  *(v63 + 24) = v77;
  *(v63 + 32) = v10;
  v64 = *(v3 + 16);
  v65 = __OFADD__(v64, 1);
  v66 = v64 + 1;
  if (!v65)
  {
    *(v3 + 16) = v66;
    goto LABEL_97;
  }

LABEL_102:
  __break(1u);
  return result;
}

uint64_t (*sub_1BF980454(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *)
{
  v6 = sub_1BF97F520(a3);
  sub_1BF97F52C(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = MEMORY[0x1BFB5E5E0](a2, a3);
  }

  *a1 = v8;
  return j__OUTLINED_FUNCTION_25_12;
}

uint64_t sub_1BF9804E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1BF97F594(v5, v7) & 1;
}

uint64_t sub_1BF980530(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 96;
  (*(v9 + 16))(v12);
  swift_beginAccess();
  sub_1BF944C38();
  v13 = *(*(a3 + 40) + 16);
  sub_1BF944CF0(v13);
  v14 = *(a3 + 40);
  *(v14 + 16) = v13 + 1;
  sub_1BF932458(a1, v14 + 120 * v13 + 32);
  *(a3 + 40) = v14;
  swift_endAccess();
  v15 = sub_1BF978FA0();
  CandidateSuggestionConfiguratorFactory.create(suggestionId:)(v15, v16, a4, a5);

  swift_beginAccess();
  sub_1BF92523C(a1, *(a3 + 48), &v26);
  if (v27)
  {
    sub_1BF8C2C9C(&v26, v25);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B28, &unk_1BF9B8640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF9B6380;
    sub_1BF8D2004(v25, inited + 32);
    sub_1BF8D2004(v28, inited + 72);
    static CandidateSuggestionConfigurators.merge(_:)(inited, &v26);
    swift_setDeallocating();
    sub_1BF906498();
    if (!v27)
    {
      sub_1BF8DFBF0(&v26, &qword_1EBDE99C8, &unk_1BF9C2D00);
      if (qword_1EDBF57F0 != -1)
      {
        goto LABEL_10;
      }

      while (1)
      {
        v20 = sub_1BF9B47C8();
        __swift_project_value_buffer(v20, qword_1EDBF57F8);
        v21 = sub_1BF9B47A8();
        v22 = sub_1BF9B5048();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_1BF8B8000, v21, v22, "Unable to merge configurators. This shouldnt be happening", v23, 2u);
          MEMORY[0x1BFB5F320](v23, -1, -1);
        }

        __break(1u);
LABEL_10:
        swift_once();
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    sub_1BF8C2C9C(&v26, v28);
  }

  else
  {
    sub_1BF8DFBF0(&v26, &qword_1EBDE99C8, &unk_1BF9C2D00);
    swift_endAccess();
  }

  sub_1BF932458(a1, v25);
  sub_1BF8D2004(v28, &v26);
  swift_beginAccess();
  sub_1BF932964(&v26, v25);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v18 = *(v9 + 8);

  v18(v12, a4);
  return a3;
}

uint64_t sub_1BF9808B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1BF8C2C9C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1BF980950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionIdentifier();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24[3] = type metadata accessor for DefaultCandidateSuggestionConfigurator(0);
  v24[4] = &protocol witness table for DefaultCandidateSuggestionConfigurator;
  v24[0] = a3;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (a1 + 32);

    do
    {
      *v11 = sub_1BF978FA0();
      v11[1] = v14;
      swift_storeEnumTagMultiPayload();
      v20 = a2;
      sub_1BF978E0C(v11, &v20, v24, v21);
      sub_1BF9651B0(v11);
      v15 = v22;
      v16 = v23;
      v17 = __swift_project_boxed_opaque_existential_1(v21, v22);
      sub_1BF980530(v13, v17, a4, v15, v16);

      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v13 += 15;
      --v12;
    }

    while (v12);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return a4;
}

uint64_t sub_1BF980AAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for ActionIdentifier();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30[3] = a5;
  v30[4] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v30);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1Tm, a3, a5);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *a2;
    v19 = (a1 + 32);
    do
    {
      *v15 = sub_1BF978FA0();
      v15[1] = v20;
      swift_storeEnumTagMultiPayload();
      v26 = v18;
      sub_1BF978E0C(v15, &v26, v30, v27);
      sub_1BF9651B0(v15);
      v21 = v28;
      v22 = v29;
      v23 = __swift_project_boxed_opaque_existential_1(v27, v28);
      sub_1BF980530(v19, v23, a4, v21, v22);

      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v19 += 15;
      --v17;
    }

    while (v17);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return a4;
}

uint64_t sub_1BF980C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  sub_1BF980D2C(v10, *(a2 + 32), a3, a4);

  v11 = *(v7 + 8);

  v11(v10, a3);
  return a2;
}

uint64_t sub_1BF980D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1BF8D2004(v10, v9);
  OUTLINED_FUNCTION_23();
  sub_1BF981A78(v9, a2 + 80, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return a2;
}

uint64_t sub_1BF980DF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BF980E40(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1BF8F5A94(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1BF980E58()
{
  result = qword_1EBDEA2B8;
  if (!qword_1EBDEA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA2B8);
  }

  return result;
}

uint64_t dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.register(signals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))();
}

{
  return (*(a3 + 48))();
}

uint64_t dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.register(signals:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 24))();
}

{
  return (*(a4 + 56))();
}

_BYTE *storeEnumTagSinglePayload for SuggestionDefinitionBuildingErrors(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF981838(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF981874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF9818C0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1BF9818F4(uint64_t a1, int a2)
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

uint64_t sub_1BF981934(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit8Resolver_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF981998(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1BF9819D8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_25_12(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1BF981A78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_35_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return v4;
}

uint64_t sub_1BF981AC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF981B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v20[3] = *a7;
  v20[4] = &off_1F3EF85D8;
  v20[0] = a7;
  type metadata accessor for InvocationTypePrerequisite();
  v13 = swift_allocObject();
  v19[3] = &unk_1F3EFDAF0;
  v19[4] = &off_1F3EFDB90;
  v14 = swift_allocObject();
  v19[0] = v14;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  *(v13 + 56) = a1;
  sub_1BF8D2004(v19, v13 + 64);
  *(v13 + 104) = a6;
  sub_1BF8D2004(v20, v13 + 112);
  v15 = qword_1EDBF1D10;

  if (v15 != -1)
  {
    swift_once();
  }

  *(v13 + 152) = byte_1EDC03418;
  *(v13 + 160) = unk_1EDC03420;
  v16 = type metadata accessor for OSFeatureFlagProvider();
  v17 = swift_allocObject();
  v17[2] = sub_1BF905224;
  v17[3] = 0;
  v17[4] = sub_1BF905228;
  v17[5] = 0;
  *(v13 + 40) = v16;
  *(v13 + 48) = &protocol witness table for OSFeatureFlagProvider;

  *(v13 + 16) = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v13;
}

uint64_t objectdestroy_106Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  OUTLINED_FUNCTION_28_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF981D14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_35_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return sub_1BF8C2C9C((v2 - 128), v0 + 40 * v1 + 32);
}

void OUTLINED_FUNCTION_31_12()
{

  sub_1BF8DE328();
}

void OUTLINED_FUNCTION_49_4()
{
  *(v1 - 96) = v0;

  sub_1BF8D07C8();
}

uint64_t OUTLINED_FUNCTION_51_6()
{

  return sub_1BF8D2004(v1 - 200, v0 + 288);
}

void OUTLINED_FUNCTION_58_6()
{
  v1 = v0[7];
  v0[41] = v0[8];
  v0[19] = v1;
}

uint64_t OUTLINED_FUNCTION_68_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_69_2()
{

  return swift_allocObject();
}

const char *SiriSuggestionsFeatureFlags.domain.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return "Siri";
  }

  switch(v1)
  {
    case 33:
      return "IntelligenceFlow";
    case 29:
      return "SiriUI";
    case 30:
      return "IntelligenceFlow";
    case 19:
      return "ResponseFramework";
    default:
      return "SiriAssistantSuggestions";
  }
}

const char *SiriSuggestionsFeatureFlags.feature.getter()
{
  result = "suggestions";
  switch(*v0)
  {
    case 1:
      result = "conversationalContinuers";
      break;
    case 2:
      result = "conversationalContinuersCarPlay";
      break;
    case 3:
      result = "conversationalContinuersHomePod";
      break;
    case 4:
      result = "conversationalContinuersiPad";
      break;
    case 5:
      result = "conversationalContinuersVision";
      break;
    case 6:
      result = "inAppSuggestions";
      break;
    case 7:
      result = "siriHelp";
      break;
    case 8:
      result = "siriHelpCarPlay";
      break;
    case 9:
      result = "siriHelpHomePod";
      break;
    case 0xA:
      result = "siriHelpMac";
      break;
    case 0xB:
      result = "siriHelpThirdParty";
      break;
    case 0xC:
      result = "experimentService";
      break;
    case 0xD:
      result = "featureAnnouncement";
      break;
    case 0xE:
      result = "panIndiaFeatureAnnouncement";
      break;
    case 0xF:
      result = "crossDomainHint";
      break;
    case 0x10:
      result = "voxHint";
      break;
    case 0x11:
      result = "siriHelpUseResponseFramework2";
      break;
    case 0x12:
      result = "siriHelpUseSnippetModernization";
      break;
    case 0x13:
      result = "SMART";
      break;
    case 0x14:
      result = "featureExtraction";
      break;
    case 0x15:
      result = "SAESuggestions";
      break;
    case 0x16:
      result = "SAESuggestionsMac";
      break;
    case 0x17:
      result = "habitualActions";
      break;
    case 0x18:
      result = "contextualActions";
      break;
    case 0x19:
      result = "currentAppViewActions";
      break;
    case 0x1A:
      result = "firstUseSuggestions";
      break;
    case 0x1B:
      result = "handCraftedAppIntentSuggestions";
      break;
    case 0x1C:
      result = "appIntentSuggestions";
      break;
    case 0x1D:
      result = "sae";
      break;
    case 0x1E:
      result = "FullPlanner";
      break;
    case 0x1F:
      result = "SAEContinuers";
      break;
    case 0x20:
      result = "aytQueryOverXPC";
      break;
    case 0x21:
      result = "DisableAllActions";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriSuggestionsFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF982194()
{
  v2 = *v0;
  sub_1BF9B57A8();
  SiriSuggestionsFeatureFlags.hash(into:)();
  return sub_1BF9B57E8();
}

unint64_t sub_1BF9821E0()
{
  result = qword_1EBDEA2F8;
  if (!qword_1EBDEA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA2F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriSuggestionsFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDF)
  {
    if (a2 + 33 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 33) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 34;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v5 = v6 - 34;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriSuggestionsFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDE)
  {
    v6 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
          *result = a2 + 33;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF9823D0()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_5_1(dword_1BF9C5798);
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v12 = OUTLINED_FUNCTION_2_24(v3, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_1BF9824B0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 16);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  (*(*(v3 + 8) + 16))(v2);
  OUTLINED_FUNCTION_4();

  return v4();
}

uint64_t InternalSuggestionsRepository.getAsyncPooledSuggestions()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF982558, 0, 0);
}

uint64_t sub_1BF982558()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[4];
  (*(v0[3] + 16))(v0[2]);
  OUTLINED_FUNCTION_4();

  return v2();
}

uint64_t dispatch thunk of InternalSuggestionsRepository.getAsyncPooledSuggestions()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v7[1] = sub_1BF95E930;

  return v10(a1, a2);
}

uint64_t sub_1BF9826FC()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_5_1(&unk_1BF9C5788);
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v12 = OUTLINED_FUNCTION_2_24(v3, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_1BF982780()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_5_1(&unk_1BF9C5778);
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v12 = OUTLINED_FUNCTION_2_24(v3, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_1BF982804(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF95FA3C;

  return InternalSuggestionsRepository.getAsyncPooledSuggestions()(a1, a2);
}

uint64_t sub_1BF9828E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = &type metadata for BridgeOwner;
  *(a4 + 32) = sub_1BF986624();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
}

uint64_t sub_1BF982944@<X0>(unint64_t *a1@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  a3[3] = *v3;
  a3[4] = sub_1BF9865E0(a1, a2);
  *a3 = v3;
}

uint64_t Owner.getOwner()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1Tm, v3, a1);
}

uint64_t OwnerProviders.__allocating_init(owners:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t OwnerProviders.init(owners:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_1BF982A9C(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = v2;
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 48) = v8;
  *v8 = v3;
  v8[1] = sub_1BF982BCC;

  return v10(ObjectType, a2);
}

uint64_t sub_1BF982BCC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  *(v6 + 56) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BF982CDC, v2, 0);
}

uint64_t sub_1BF982CDC()
{
  v19 = v0;
  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v1 = *(v0 + 56);
  v2 = sub_1BF9B47C8();
  __swift_project_value_buffer(v2, qword_1EDBF57F8);

  v3 = sub_1BF9B47A8();
  v4 = sub_1BF9B5028();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8868, &unk_1BF9B8590);
    v9 = MEMORY[0x1BFB5E030](v5, v8);
    v11 = sub_1BF8DE810(v9, v10, &v18);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_24_10(&dword_1BF8B8000, v12, v13, "Initialised Owners are: %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  v14 = *(v0 + 56);
  v15 = *(v0 + 40);
  swift_beginAccess();
  sub_1BF8D2518(v14);
  swift_endAccess();
  OUTLINED_FUNCTION_77();

  return v16();
}

uint64_t sub_1BF982EA4()
{
  v20 = v0;
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = MEMORY[0x1E69E7CC0];

  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v3 = *(v0 + 40);
  v4 = sub_1BF9B47C8();
  __swift_project_value_buffer(v4, qword_1EDBF57F8);

  v5 = sub_1BF9B47A8();
  v6 = sub_1BF9B5028();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = *(v1 + 112);

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8868, &unk_1BF9B8590);
    v11 = MEMORY[0x1BFB5E030](v9, v10);
    v13 = v12;

    v14 = sub_1BF8DE810(v11, v13, &v19);

    *(v7 + 4) = v14;
    OUTLINED_FUNCTION_24_10(&dword_1BF8B8000, v15, v16, "Destroyed Owners are: %s");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  OUTLINED_FUNCTION_77();

  return v17();
}

uint64_t OwnerProviders.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t OwnerProviders.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BF9830C4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF972D14;

  return sub_1BF982A9C(a1, a2);
}

uint64_t sub_1BF98316C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF972884;

  return sub_1BF982E84();
}

uint64_t DomainOwnerProvider.getOwner()@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + 16))();
  a2[3] = type metadata accessor for DomainOwner();
  result = sub_1BF9865E0(&qword_1EDBF3868, type metadata accessor for DomainOwner);
  a2[4] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_1BF983280(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1BF9B56D8();
  }
}

uint64_t static Owner.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10_18();
  v6 = *(v5 + 40);
  v6(v34, v7, v5);
  v8 = v35;
  v9 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  OUTLINED_FUNCTION_8_13(v9);
  v11 = v10(v8, v9);
  v13 = v12;
  v14 = OUTLINED_FUNCTION_88();
  (v6)(v14);
  v15 = v32;
  v16 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  OUTLINED_FUNCTION_8_13(v16);
  if (v11 == v17(v15, v16) && v13 == v18)
  {

    __swift_destroy_boxed_opaque_existential_1(v31);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_16_15();

    __swift_destroy_boxed_opaque_existential_1(v31);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v21 = 0;
    if ((v20 & 1) == 0)
    {
      return v21 & 1;
    }
  }

  v22 = *(a4 + 48);
  v23 = OUTLINED_FUNCTION_88();
  v24 = v22(v23);
  v26 = v25;
  v27 = OUTLINED_FUNCTION_88();
  if (v24 == v22(v27) && v26 == v28)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_1BF9B56D8();
  }

  return v21 & 1;
}

uint64_t Owner.hash(into:)()
{
  OUTLINED_FUNCTION_10_18();
  v4 = *(v3 + 40);
  v7 = OUTLINED_FUNCTION_20_16(v5, v6);
  v8(v7);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  SuggestionGroup.hash(into:)(v2, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v12);
  (*(v0 + 48))(v1, v0);
  sub_1BF9B4B48();
}

BOOL Owner.equals(other:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  v7 = OUTLINED_FUNCTION_20_16(a1, a2);
  v9 = v8(v7);
  v11 = v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  if (v9 == (*(v13 + 48))(v12, v13) && v11 == v14)
  {
  }

  else
  {
    v16 = OUTLINED_FUNCTION_16_15();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  (*(a3 + 40))(v36, a2, a3);
  v17 = v37;
  v18 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  OUTLINED_FUNCTION_8_13(v18);
  v20 = v19(v17, v18);
  v22 = v21;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  (*(v24 + 40))(v33, v23, v24);
  v25 = v34;
  v26 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  OUTLINED_FUNCTION_8_13(v26);
  if (v20 == v27(v25, v26) && v22 == v28)
  {

    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    v30 = sub_1BF9B56D8();

    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v36);
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  DynamicType = swift_getDynamicType();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return DynamicType == swift_getDynamicType();
}

unint64_t sub_1BF983790()
{
  type metadata accessor for DefaultOwner();
  v0 = swift_allocObject();
  *(v0 + 40) = &type metadata for CoreSuggestionGroups;
  result = sub_1BF937F68();
  *(v0 + 16) = 4;
  *(v0 + 48) = result;
  *(v0 + 56) = 0x72656E774F6F4ELL;
  *(v0 + 64) = 0xE700000000000000;
  *(v0 + 72) = 0x72656E774F6F4ELL;
  *(v0 + 80) = 0xE700000000000000;
  qword_1EDBF4B48 = v0;
  return result;
}

uint64_t static Owners.SIRIHELPOWNER.getter()
{
  type metadata accessor for SiriHelpOwner();

  return swift_initStaticObject();
}

unint64_t sub_1BF983854()
{
  type metadata accessor for DefaultOwner();
  v0 = swift_allocObject();
  *(v0 + 40) = &type metadata for CoreSuggestionGroups;
  result = sub_1BF937F68();
  *(v0 + 16) = 4;
  *(v0 + 48) = result;
  *(v0 + 56) = 0xD000000000000011;
  *(v0 + 64) = 0x80000001BF9CDF90;
  *(v0 + 72) = 0xD000000000000011;
  *(v0 + 80) = 0x80000001BF9CDF90;
  qword_1EDBF0860 = v0;
  return result;
}

uint64_t static Owners.createMap<A>(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8868, &unk_1BF9B8590);
  OUTLINED_FUNCTION_14_15();
  sub_1BF9B4E08();
  v0 = OUTLINED_FUNCTION_14_15();
  OUTLINED_FUNCTION_4_25();
  v1 = OUTLINED_FUNCTION_21_15();
  sub_1BF9094A0(v1, v2, v3, v0, v4, v5, v6, v7);
  sub_1BF9B4E08();
  swift_getWitnessTable();
  return sub_1BF9B4998();
}

uint64_t sub_1BF9839FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8868, &unk_1BF9B8590);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = (&v15 - v9);
  v16 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  *a3 = (*(v12 + 48))(v11, v12);
  *(a3 + 1) = v13;
  (*(v7 + 16))(v10, a1, TupleTypeMetadata2);
  (*(*(a2 - 8) + 32))(&a3[v16], v10 + *(TupleTypeMetadata2 + 48), a2);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Owners.createOwnerArray<A>(_:)()
{
  sub_1BF9B4E08();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8868, &unk_1BF9B8590);
  v0 = OUTLINED_FUNCTION_14_15();
  OUTLINED_FUNCTION_4_25();
  v1 = OUTLINED_FUNCTION_21_15();
  return sub_1BF9094A0(v1, v2, v3, v0, v4, v5, v6, v7);
}

uint64_t sub_1BF983C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8868, &unk_1BF9B8590);
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  (*(a3 + 8))(a2, a3);
  return (*(*(a2 - 8) + 16))(a4 + v8, a1, a2);
}

uint64_t DomainOwner.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_43();
}

void *DomainOwner.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = a1;
  v2[5] = a2;

  return v2;
}

Swift::String __swiftcall DomainOwner.getIdentifier()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_43();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1BF983D90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
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

uint64_t sub_1BF983E58(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1BF983EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF983D90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF983EDC(uint64_t a1)
{
  v2 = sub_1BF985704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF983F18(uint64_t a1)
{
  v2 = sub_1BF985704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DomainOwner.__deallocating_deinit()
{
  DomainOwner.deinit();
  v0 = OUTLINED_FUNCTION_7_17();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t DomainOwner.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_7_17();
  v0 = swift_allocObject();
  DomainOwner.init(from:)();
  return v0;
}

uint64_t sub_1BF98408C@<X0>(uint64_t *a1@<X8>)
{
  result = DomainOwner.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void *_s18SiriSuggestionsKit11DomainOwnerCyACSScfC_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_17();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a1;
  v4[5] = a2;

  return v4;
}

unint64_t AppOwner.getSuggestionGroup()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for CoreSuggestionGroups;
  result = sub_1BF937F68();
  *(a1 + 32) = result;
  *a1 = 2;
  return result;
}

uint64_t sub_1BF984164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
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

uint64_t sub_1BF984234(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_1BF98427C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF9842D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF984164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9842F8(uint64_t a1)
{
  v2 = sub_1BF985758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF984334(uint64_t a1)
{
  v2 = sub_1BF985758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9843A4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  v8 = OUTLINED_FUNCTION_20_16(a1, a2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_1(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1BF9B5898();
  v19 = v6[2];
  v20 = v6[3];
  v27 = 0;
  v21 = v25[1];
  sub_1BF9B55F8();
  if (!v21)
  {
    v22 = v6[4];
    v23 = v6[5];
    v26 = 1;
    sub_1BF9B55F8();
  }

  return (*(v12 + 8))(v17, v10);
}

uint64_t AppOwner.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_7_17();
  v0 = swift_allocObject();
  AppOwner.init(from:)();
  return v0;
}

void *sub_1BF984578(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  v8 = *v4;
  v9 = OUTLINED_FUNCTION_20_16(a1, a2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1BF9B5868();
  if (v23)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[2] = sub_1BF9B5518();
    v4[3] = v16;
    v18 = sub_1BF9B5518();
    v20 = v19;
    v21 = OUTLINED_FUNCTION_12_16();
    v22(v21);
    v6[4] = v18;
    v6[5] = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_1BF9847C4@<X0>(uint64_t *a1@<X8>)
{
  result = AppOwner.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DefaultOwner.description.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1BF984858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_10_18();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  OUTLINED_FUNCTION_23_15();
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = a4(v16, v6, v5, v4, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v18;
}

void *DefaultOwner.__allocating_init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A78, &unk_1BF9B8570);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8DF554();
  sub_1BF9B5868();
  if (!v1)
  {
    LOBYTE(v27) = 1;
    v9 = sub_1BF9B5518();
    v11 = v10;
    sub_1BF8D9A54();
    v13 = OUTLINED_FUNCTION_9_18();
    v14(v13);
    sub_1BF8D5C74(&v27, v24);
    v15 = swift_allocObject();
    v16 = v25;
    v17 = v26;
    __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    OUTLINED_FUNCTION_23_15();
    v19 = *(v18 + 64);
    MEMORY[0x1EEE9AC00](v20);
    v22 = v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22);
    v8 = sub_1BF9857AC(v22, v9, v11, v15, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

Swift::String __swiftcall DefaultOwner.getIdentifier()()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = OUTLINED_FUNCTION_43();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t static DefaultOwner.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[7] == a2[7] && a1[8] == a2[8];
  if (v4 || (v5 = 0, (sub_1BF9B56D8() & 1) != 0))
  {
    v6 = a1[5];
    v7 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
    OUTLINED_FUNCTION_8_13(v7);
    v9 = v8(v6, v7);
    v11 = v10;
    v12 = a2[5];
    v13 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v12);
    OUTLINED_FUNCTION_8_13(v13);
    if (v9 == v14(v12, v13) && v11 == v15)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1BF9B56D8();
    }
  }

  return v5 & 1;
}

uint64_t DefaultOwner.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A70, &qword_1BF9C57E0);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22[-1] - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8DF554();
  sub_1BF9B5898();
  v14 = v3[7];
  v15 = v3[8];
  LOBYTE(v22[0]) = 1;
  sub_1BF9B55F8();
  if (v2)
  {
    return (*(v7 + 8))(v12, v5);
  }

  v17 = v3[5];
  v18 = v3[6];
  v19 = __swift_project_boxed_opaque_existential_1(v3 + 2, v17);
  v22[3] = v17;
  v22[4] = *(v18 + 16);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v22);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1Tm, v19, v17);
  sub_1BF8DA9D4();
  (*(v7 + 8))(v12, v5);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1BF984ED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (OUTLINED_FUNCTION_70() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
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

uint64_t sub_1BF984FC8(char a1)
{
  if (!a1)
  {
    return 0x70756F7267;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0x7470697263736564;
}

uint64_t sub_1BF985030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF984ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF985058(uint64_t a1)
{
  v2 = sub_1BF8DF554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF985094(uint64_t a1)
{
  v2 = sub_1BF8DF554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t *DefaultOwner.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return v0;
}

uint64_t DefaultOwner.__deallocating_deinit()
{
  DefaultOwner.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

void *sub_1BF9851F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = DefaultOwner.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t SiriHelpOwner.getSuggestionGroup()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for CoreSuggestionGroups;
  result = sub_1BF937F68();
  *(a1 + 32) = result;
  *a1 = 0;
  return result;
}

uint64_t sub_1BF985294(uint64_t a1)
{
  v2 = sub_1BF98583C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9852D0(uint64_t a1)
{
  v2 = sub_1BF98583C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriHelpOwner.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA320, &qword_1BF9C57E8);
  OUTLINED_FUNCTION_1(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF98583C();
  sub_1BF9B5898();
  return (*(v4 + 8))(v9, v2);
}

uint64_t SiriHelpOwner.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1BF985510@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SiriHelpOwner.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_1BF985554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  (*(v11 + 16))(v14, a1, a5);
  v16 = sub_1BF9857AC(v14, a2, a3, v15, a5, a6);
  (*(v11 + 8))(a1, a5);
  return v16;
}

unint64_t sub_1BF985704()
{
  result = qword_1EDBF52C8;
  if (!qword_1EDBF52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF52C8);
  }

  return result;
}

unint64_t sub_1BF985758()
{
  result = qword_1EDBF4080;
  if (!qword_1EDBF4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4080);
  }

  return result;
}

uint64_t *sub_1BF9857AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  a4[5] = a5;
  a4[6] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4 + 2);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  a4[7] = a2;
  a4[8] = a3;
  a4[9] = a2;
  a4[10] = a3;

  return a4;
}

unint64_t sub_1BF98583C()
{
  result = qword_1EDBF3C88[0];
  if (!qword_1EDBF3C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF3C88);
  }

  return result;
}

uint64_t sub_1BF985890(void *a1)
{
  a1[2] = sub_1BF9865E0(&qword_1EDBF52A0, type metadata accessor for DomainOwner);
  a1[3] = sub_1BF9865E0(&qword_1EDBF52A8, type metadata accessor for DomainOwner);
  result = sub_1BF9865E0(&qword_1EDBF52B0, type metadata accessor for DomainOwner);
  a1[4] = result;
  return result;
}

uint64_t sub_1BF98593C(void *a1)
{
  a1[2] = sub_1BF9865E0(&qword_1EDBF4058, type metadata accessor for AppOwner);
  a1[3] = sub_1BF9865E0(&qword_1EDBF4060, type metadata accessor for AppOwner);
  result = sub_1BF9865E0(&qword_1EDBF4068, type metadata accessor for AppOwner);
  a1[4] = result;
  return result;
}

uint64_t sub_1BF985A0C(void *a1)
{
  a1[2] = sub_1BF9865E0(&qword_1EDBF51A8, type metadata accessor for DefaultOwner);
  a1[3] = sub_1BF9865E0(&qword_1EDBF51B0, type metadata accessor for DefaultOwner);
  result = sub_1BF9865E0(&qword_1EDBF51B8, type metadata accessor for DefaultOwner);
  a1[4] = result;
  return result;
}

uint64_t sub_1BF985ADC(void *a1)
{
  a1[2] = sub_1BF9865E0(&qword_1EDBF4718, type metadata accessor for SiriHelpOwner);
  a1[3] = sub_1BF9865E0(&qword_1EDBF4720, type metadata accessor for SiriHelpOwner);
  result = sub_1BF9865E0(&qword_1EDBF4728, type metadata accessor for SiriHelpOwner);
  a1[4] = result;
  return result;
}

uint64_t dispatch thunk of OwnerProviders.start(container:)()
{
  v2 = *(*v0 + 136);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BF972884;
  v5 = OUTLINED_FUNCTION_88();

  return v7(v5);
}

uint64_t dispatch thunk of OwnerProviders.destroy()()
{
  v2 = *(*v0 + 144);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BF972D14;

  return v6();
}

_BYTE *storeEnumTagSinglePayload for Owners(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1BF986054(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BF98613C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF98621C()
{
  result = qword_1EBDEA328;
  if (!qword_1EBDEA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA328);
  }

  return result;
}

unint64_t sub_1BF986274()
{
  result = qword_1EBDEA330;
  if (!qword_1EBDEA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA330);
  }

  return result;
}

unint64_t sub_1BF9862CC()
{
  result = qword_1EBDEA338;
  if (!qword_1EBDEA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA338);
  }

  return result;
}

unint64_t sub_1BF986324()
{
  result = qword_1EDBF3C78;
  if (!qword_1EDBF3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3C78);
  }

  return result;
}

unint64_t sub_1BF98637C()
{
  result = qword_1EDBF3C80;
  if (!qword_1EDBF3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3C80);
  }

  return result;
}

unint64_t sub_1BF9863D4()
{
  result = qword_1EDBF51C0;
  if (!qword_1EDBF51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF51C0);
  }

  return result;
}

unint64_t sub_1BF98642C()
{
  result = qword_1EDBF51C8;
  if (!qword_1EDBF51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF51C8);
  }

  return result;
}

unint64_t sub_1BF986484()
{
  result = qword_1EDBF4070;
  if (!qword_1EDBF4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4070);
  }

  return result;
}

unint64_t sub_1BF9864DC()
{
  result = qword_1EDBF4078;
  if (!qword_1EDBF4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4078);
  }

  return result;
}

unint64_t sub_1BF986534()
{
  result = qword_1EDBF52B8;
  if (!qword_1EDBF52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF52B8);
  }

  return result;
}

unint64_t sub_1BF98658C()
{
  result = qword_1EDBF52C0;
  if (!qword_1EDBF52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF52C0);
  }

  return result;
}

uint64_t sub_1BF9865E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF986624()
{
  result = qword_1EBDEA340;
  if (!qword_1EBDEA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA340);
  }

  return result;
}

uint64_t sub_1BF9866D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DB8, &unk_1BF9C6710);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF98C3F4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

SiriSuggestionsKit::AppIdDetails_optional __swiftcall IntentType.getAppIdDetails()()
{
  v3 = *v2;
  v4 = *(v2 + 40);
  v5 = v1;
  switch(v4)
  {
    case 1:
      v0 = [*v2 launchId];
      if (!v0)
      {
        goto LABEL_10;
      }

      v13 = v0;
      v3 = sub_1BF9B4AA8();
      v8 = v14;

      goto LABEL_6;
    case 2:
    case 3:
      v7 = *(v2 + 24);
      v6 = *(v2 + 32);
      v8 = *(v2 + 8);
      v9 = *(v2 + 16);

      sub_1BF944F20(v3, v8, v9, v7, v6, v4);

      if (!v8)
      {
        goto LABEL_10;
      }

LABEL_6:
      OUTLINED_FUNCTION_10();
      v0 = sub_1BF9B4C08();
      if (v0)
      {
        v15 = 0;
      }

      else
      {
        v15 = 2;
      }

      *v5 = v3;
      *(v5 + 8) = v8;
      *(v5 + 16) = v15;
      break;
    default:
LABEL_10:
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      break;
  }

  result.value.appId._object = v10;
  result.value.appId._countAndFlagsBits = v0;
  result.is_nil = v12;
  result.value.party = v11;
  return result;
}

uint64_t static AppIntentFilter.builder()()
{
  type metadata accessor for AppIntentFilter.Builder();
  v0 = swift_allocObject();
  sub_1BF988CD4();
  return v0;
}

uint64_t IntentType.toV2Reprensentation()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0) - 8) + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v84 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  switch(*(v1 + 40))
  {
    case 1:
      v43 = [*v1 typeName];
      v44 = sub_1BF9B4AA8();
      v46 = v45;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
      v28 = sub_1BF9B4988();
      v47 = type metadata accessor for SiriSuggestions.IntentQuery(0);
      v48 = *(v47 + 32);
      v49 = type metadata accessor for SiriSuggestions.Intent(0);
      OUTLINED_FUNCTION_58_7(a1 + v48, v50, v51, v49);
      v52 = a1 + *(v47 + 28);
      result = sub_1BF9B4508();
      *(a1 + 8) = v44;
      *(a1 + 16) = v46;
      *(a1 + 24) = 1;
      goto LABEL_22;
    case 2:
    case 3:
      v92 = a1;
      v93 = v6;
      v13 = *(v11 + 16);
      v90 = v8;
      v91 = v7;
      v88 = v11;
      v89 = v10;
      v86 = v12;
      v87 = v9;
      if (v13)
      {
        v14 = v11 + 32;
        v15 = OUTLINED_FUNCTION_24();
        sub_1BF944F20(v15, v16, v17, v18, v19, v20);
        v21 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1BF8D1F54(v14, &v99);
          sub_1BF8E69C4(&v100, &v96);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9640, &qword_1BF9BF1F8);
          if ((swift_dynamicCast() & 1) == 0)
          {
            memset(__dst, 0, 56);
          }

          sub_1BF98CF44();
          if (v95[3])
          {
            sub_1BF8C17FC(v95, v94);
            v97[0] = v99;
            sub_1BF8C17FC(v94, &v97[1]);
          }

          else
          {
            memset(v97, 0, 72);
          }

          sub_1BF8E8118(__dst, &qword_1EBDEA348, &qword_1BF9C6050);
          sub_1BF8D1FB0(&v99);
          if (*(&v97[0] + 1))
          {
            memcpy(__dst, v97, 0x48uLL);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = *(v21 + 16);
              OUTLINED_FUNCTION_28_0();
              sub_1BF8DE044();
              v21 = v25;
            }

            v23 = *(v21 + 16);
            v22 = *(v21 + 24);
            if (v23 >= v22 >> 1)
            {
              OUTLINED_FUNCTION_11_3(v22);
              sub_1BF8DE044();
              v21 = v26;
            }

            *(v21 + 16) = v23 + 1;
            memcpy((v21 + 72 * v23 + 32), __dst, 0x48uLL);
          }

          else
          {
            sub_1BF8E8118(v97, &qword_1EBDEA350, &unk_1BF9C6058);
          }

          v14 += 56;
          --v13;
        }

        while (v13);
      }

      else
      {
        v53 = OUTLINED_FUNCTION_24();
        sub_1BF944F20(v53, v54, v55, v56, v57, v58);
        v21 = MEMORY[0x1E69E7CC0];
      }

      v59 = sub_1BF987328(v21);

      v60 = sub_1BF9866D4(v59);
      v61 = v88;

      v62 = v87;
      v63 = v87;
      v64 = v89;
      v65 = v89;
      if (!v89)
      {

        v63 = 0;
        v65 = 0xE000000000000000;
      }

      v85 = v63;
      v66 = v90;

      sub_1BF91C8BC(v60);
      v84 = v67;

      v68 = v91;
      v69 = 0;
      v70 = 0;
      switch(v86)
      {
        case 1:
          v71 = [v91 launchId];
          if (v71)
          {
            v72 = v71;
            v69 = sub_1BF9B4AA8();
            v70 = v73;
          }

          else
          {
            v69 = 0;
            v70 = 0;
          }

          break;
        case 2:
        case 3:
          sub_1BF944F20(v91, v66, v62, v64, v61, v86);

          v69 = v68;
          v70 = v66;
          break;
        default:
          break;
      }

      v74 = type metadata accessor for SiriSuggestions.Intent(0);
      OUTLINED_FUNCTION_58_7(v93, v75, v76, v74);
      if (v70)
      {
        OUTLINED_FUNCTION_10();
        if (sub_1BF9B4C08())
        {
          v77 = 0;
        }

        else
        {
          v77 = 2;
        }
      }

      else
      {
        v69 = 0;
        v77 = 0;
      }

      v78 = type metadata accessor for SiriSuggestions.IntentQuery(0);
      v79 = *(v78 + 32);
      v80 = v92;
      v81 = v93;
      sub_1BF98CF44();
      v82 = v80 + *(v78 + 28);
      sub_1BF9B4508();
      result = sub_1BF8E8118(v81, &qword_1EBDE8E78, &unk_1BF9B9DD0);
      *(v80 + 24) = 0;
      v83 = v84;
      *(v80 + 8) = v85;
      *(v80 + 16) = v65;
      *v80 = v83;
      *(v80 + 32) = v69;
      *(v80 + 40) = v70;
      *(v80 + 48) = v77;
      return result;
    case 4:
      v27 = *(v1 + 8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
      v28 = sub_1BF9B4988();
      v29 = type metadata accessor for SiriSuggestions.IntentQuery(0);
      v30 = *(v29 + 32);
      v31 = type metadata accessor for SiriSuggestions.Intent(0);
      OUTLINED_FUNCTION_58_7(a1 + v30, v32, v33, v31);
      v34 = a1 + *(v29 + 28);
      result = sub_1BF9B4508();
      *(a1 + 16) = v8;
      *(a1 + 24) = 2;
      goto LABEL_20;
    default:
      v36 = *(v1 + 8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
      v28 = sub_1BF9B4988();
      v37 = type metadata accessor for SiriSuggestions.IntentQuery(0);
      v38 = *(v37 + 32);
      v39 = type metadata accessor for SiriSuggestions.Intent(0);
      OUTLINED_FUNCTION_58_7(a1 + v38, v40, v41, v39);
      v42 = a1 + *(v37 + 28);
      result = sub_1BF9B4508();
      *(a1 + 16) = v8;
      *(a1 + 24) = 1;
LABEL_20:
      *(a1 + 8) = v7;
LABEL_22:
      *a1 = v28;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      return result;
  }
}

uint64_t static IntentType.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *(a2 + 4);
  v6 = *(a2 + 40);
  v7 = *a1;
  v8 = a1[1];
  v9 = OUTLINED_FUNCTION_55_7();
  v11 = v10;
  v16 = *a2;
  v17 = a2[1];
  v12 = IntentType.toString()();
  if (v9 == v12._countAndFlagsBits && v11 == v12._object)
  {
    v14 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_88();
    v14 = sub_1BF9B56D8();
  }

  return v14 & 1;
}

uint64_t sub_1BF986FC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_13_14();
    sub_1BF8D0220();
    v2 = v12;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
      swift_dynamicCast();
      v5 = *(v12 + 16);
      if (v5 >= *(v12 + 24) >> 1)
      {
        sub_1BF8D0220();
      }

      *(v12 + 16) = v5 + 1;
      v6 = v12 + 32 * v5;
      *(v6 + 32) = v10;
      *(v6 + 48) = v11;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BF9870D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1BF8D0588();
    v2 = v11;
    v4 = a1 + 32;
    do
    {
      sub_1BF98C714(v4, v10);
      v11 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_1BF8D0588();
        v2 = v11;
      }

      v8 = &unk_1F3EFE570;
      v9 = sub_1BF98CE64();
      *&v7 = swift_allocObject();
      sub_1BF98C714(v10, v7 + 16);
      *(v2 + 16) = v5 + 1;
      sub_1BF8C2C9C(&v7, v2 + 40 * v5 + 32);
      sub_1BF98CEB8(v10);
      v4 += 64;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BF9871F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_13_14();
    sub_1BF8D05A8();
    v4 = (a1 + 56);
    v2 = v16;
    do
    {
      v8 = *(v4 - 3);
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A10, &qword_1BF9B8508);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D20, qword_1BF9C66E0);
      swift_dynamicCast();
      v5 = *(v16 + 16);
      if (v5 >= *(v16 + 24) >> 1)
      {
        sub_1BF8D05A8();
      }

      *(v16 + 16) = v5 + 1;
      v6 = (v16 + 32 * v5);
      v6[4] = v12;
      v6[5] = v13;
      v6[6] = v14;
      v6[7] = v15;
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BF987328(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1BF8D06A8();
    v2 = v8;
    v4 = a1 + 32;
    do
    {
      sub_1BF98CF44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B00, &qword_1BF9B8618);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DC8, &qword_1BF9C2BA8);
      swift_dynamicCast();
      v8 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_1BF8D06A8();
        v2 = v8;
      }

      *(v2 + 16) = v5 + 1;
      memcpy((v2 + 72 * v5 + 32), __src, 0x48uLL);
      v4 += 72;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BF98746C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_13_14();
    sub_1BF8D0788();
    v3 = v15;
    v5 = a1 + 32;
    do
    {
      sub_1BF8E69C4(v5, v13);
      v6 = OUTLINED_FUNCTION_22_0();
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      v9 = OUTLINED_FUNCTION_24();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      OUTLINED_FUNCTION_41_7();
      OUTLINED_FUNCTION_52_6();
      if (v11)
      {
        sub_1BF8D0788();
        v3 = v15;
      }

      *(v3 + 16) = v8;
      sub_1BF8C2C9C(&v14, v3 + 40 * v1 + 32);
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1BF987574(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a2;
    v7 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v8 = sub_1BF9B4D88();
      *(v8 + 16) = v6;
      v9 = v8 + 32;
      do
      {
        sub_1BF98CF44();
        v9 += 48;
        --v6;
      }

      while (v6);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    sub_1BF8E8118(v7, a3, a4);
    return v8;
  }

  return result;
}

uint64_t sub_1BF987620(uint64_t result, uint64_t a2)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A60, &qword_1BF9B8558);
      v4 = sub_1BF9B4D88();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_1BF98CF44();
        v5 += 64;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1BF8E8118(v3, &qword_1EBDE8A60, &qword_1BF9B8558);
    return v4;
  }

  return result;
}

uint64_t sub_1BF9876DC(uint64_t result, uint64_t a2)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
      v4 = sub_1BF9B4D88();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_1BF98CF44();
        v5 += 56;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1BF8E8118(v3, &qword_1EBDE95F0, &qword_1BF9B85D0);
    return v4;
  }

  return result;
}

Swift::String __swiftcall IntentType.toString()()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);
  switch(v2)
  {
    case 1:
      v12 = [*v0 typeName];
      sub_1BF9B4AA8();

      OUTLINED_FUNCTION_4_26();
      v13 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x1BFB5DE90](v13);
      goto LABEL_12;
    case 2:
    case 3:
      v4 = *(v0 + 24);
      v3 = *(v0 + 32);
      v5 = *(v0 + 16);
      if (v4)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      if (v4)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0xE000000000000000;
      }

      v8 = OUTLINED_FUNCTION_88();
      sub_1BF944F20(v8, v9, v5, v4, v3, v2);

      OUTLINED_FUNCTION_45_7();
      MEMORY[0x1BFB5DE90](v6, v7);
LABEL_12:

      break;
    case 4:
      v10 = *(v0 + 8);

      break;
    default:
      OUTLINED_FUNCTION_4_26();
      v11 = OUTLINED_FUNCTION_88();
      MEMORY[0x1BFB5DE90](v11);
      break;
  }

  v14 = OUTLINED_FUNCTION_88();
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}