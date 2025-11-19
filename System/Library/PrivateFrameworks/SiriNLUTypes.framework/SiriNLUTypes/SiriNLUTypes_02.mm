uint64_t sub_1C87A88B8()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return v0;
}

uint64_t sub_1C87A8910@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1C8BD434C() + 16);

  if (a1 && (v5 = a1, v4 >= a1))
  {
    result = sub_1C8BD434C();
    if (*(result + 16) < a1)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = v5 - 1;
    v9 = sub_1C8BD456C();
    OUTLINED_FUNCTION_21(v9);
    (*(v10 + 16))(a2, v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, v9);

    v11 = a2;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    sub_1C8BD456C();
    v11 = OUTLINED_FUNCTION_199();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_53_4(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_53_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 280) = v1 - a1;

  return sub_1C8BD4A8C();
}

uint64_t sub_1C87A8B2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C87A8B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C87A8BDC()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_255@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 20);

  return sub_1C8BD49FC();
}

uint64_t OUTLINED_FUNCTION_255_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_255_1()
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v3 = v1 + *(v0 + 24);

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_80_4(uint64_t a1, uint64_t a2)
{

  return sub_1C87867A0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_262_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  v6 = *(v4 + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_67_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_67_2(uint64_t a1, uint64_t a2)
{

  return sub_1C8786744(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_67_7()
{

  return sub_1C8A1B55C();
}

uint64_t OUTLINED_FUNCTION_67_8()
{
  v2 = *(v0 - 248);
  v3 = *(v0 - 240);
  v4 = *(v0 - 280);

  return sub_1C8BD51BC();
}

uint64_t OUTLINED_FUNCTION_67_9()
{
  v1 = *(v0 + *(type metadata accessor for Siri_Nlu_Internal_ParseOverride(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_67_10()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t sub_1C87A8E58()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_55_3()
{
  v1 = *(v0 + *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_55_7(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Siri_Nlu_External_Cdm_NluResponse(0);
  v5 = *(result + 20);
  *(a1 + 64) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_55_8(uint64_t a1)
{
  *(v1 - 320) = a1;
}

uint64_t sub_1C87A8FA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C87A8FBC(a1, a2);
  }

  return a1;
}

uint64_t sub_1C87A8FBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C87A9014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_1C87A91A0(a5, a6);
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7D0, &qword_1C8C10530);
  if ((sub_1C8BD525C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v7;
  v19 = sub_1C87A91A0(a5, a6);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_1C8BD52AC();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v7;
  if (v17)
  {
    v22 = (v21[7] + 32 * v16);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *v22 = a1;
    v22[1] = a2;
    v22[2] = a3;
    v22[3] = a4;

    return sub_1C87A997C(v24, v25);
  }

  else
  {
    sub_1C87A99D4(v16, a5, a6, a1, a2, a3, a4, v21);

    return sub_1C87A8FBC(a5, a6);
  }
}

uint64_t sub_1C87A91CC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 40);
  sub_1C8BD530C();
  a3(v12, a1, a2);
  v9 = sub_1C8BD531C();

  return a4(a1, a2, v9);
}

unint64_t sub_1C87A9260(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v10 = ~v5;
    v11 = a2 >> 62;
    if (a1)
    {
      v12 = 0;
    }

    else
    {
      v12 = a2 == 0xC000000000000000;
    }

    v13 = !v12;
    v65 = v13;
    v56 = HIDWORD(a1);
    v14 = HIDWORD(a1) == a1;
    v15 = __OFSUB__(HIDWORD(a1), a1);
    v61 = v15;
    v60 = HIDWORD(a1) - a1;
    v16 = BYTE6(a2);
    v57 = a1;
    v58 = v3 + 64;
    v55 = a1 >> 32;
    v54 = (a1 >> 32) - a1;
    v62 = ~v5;
    v63 = BYTE6(a2);
    v64 = a2 >> 62;
    while (1)
    {
      v17 = (*(v7 + 48) + 16 * v6);
      v19 = *v17;
      v18 = v17[1];
      v20 = v18 >> 62;
      if (v14)
      {
        if (v19)
        {
          v21 = 0;
          v14 = 0;
        }

        else
        {
          v21 = v18 >= 0xC000000000000000;
          v14 = v18 == 0xC000000000000000;
        }

        v22 = !v21;
        if (((v22 | v65) & 1) == 0)
        {
          break;
        }

        v23 = 0;
      }

      else
      {
        v23 = 0;
        switch(v20)
        {
          case 0uLL:
            v23 = BYTE6(v18);
            break;
          case 1uLL:
            LODWORD(v23) = HIDWORD(v19) - v19;
            v14 = HIDWORD(v19) == v19;
            if (__OFSUB__(HIDWORD(v19), v19))
            {
              goto LABEL_89;
            }

            v23 = v23;
            break;
          case 2uLL:
            v25 = *(v19 + 16);
            v24 = *(v19 + 24);
            v26 = __OFSUB__(v24, v25);
            v23 = v24 - v25;
            v14 = v23 == 0;
            if (!v26)
            {
              break;
            }

            goto LABEL_88;
          case 3uLL:
            break;
          default:
LABEL_105:
            JUMPOUT(0);
        }
      }

      v27 = v16;
      switch(v11)
      {
        case 0uLL:
          goto LABEL_31;
        case 1uLL:
          v27 = v60;
          if (!v61)
          {
            goto LABEL_31;
          }

          __break(1u);
          goto LABEL_87;
        case 2uLL:
          v29 = *(a1 + 16);
          v28 = *(a1 + 24);
          v26 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v26)
          {
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
          }

LABEL_31:
          v14 = v23 == v27;
          if (v23 != v27)
          {
            goto LABEL_85;
          }

          if (v23 < 1)
          {
            goto LABEL_86;
          }

          break;
        case 3uLL:
          if (!v23)
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        default:
          goto LABEL_105;
      }

      switch(v20)
      {
        case 1:
          if (v19 >> 32 < v19)
          {
            goto LABEL_90;
          }

          sub_1C87A8FBC(a1, a2);
          sub_1C87A8FBC(a1, a2);
          sub_1C87A8FBC(a1, a2);
          sub_1C87A8FBC(v19, v18);
          v35 = sub_1C8BD3F9C();
          if (!v35)
          {
            goto LABEL_65;
          }

          v40 = sub_1C8BD3FBC();
          if (__OFSUB__(v19, v40))
          {
            goto LABEL_93;
          }

          v35 += v19 - v40;
LABEL_65:
          sub_1C8BD3FAC();
          sub_1C88DAE50(v35, a1, a2, __s1);
          sub_1C87A997C(a1, a2);
          sub_1C87A997C(v19, v18);
          sub_1C87A997C(a1, a2);
          v41 = __s1[0];
          sub_1C87A997C(a1, a2);
          v4 = v58;
          v7 = v59;
          v10 = v62;
          v16 = v63;
          v11 = v64;
          if (v41)
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        case 2:
          v33 = *(v19 + 16);
          v34 = *(v19 + 24);
          sub_1C87A8FBC(a1, a2);
          sub_1C87A8FBC(a1, a2);
          sub_1C87A8FBC(a1, a2);
          sub_1C87A8FBC(v19, v18);
          v35 = sub_1C8BD3F9C();
          if (!v35)
          {
            goto LABEL_47;
          }

          v36 = sub_1C8BD3FBC();
          if (__OFSUB__(v33, v36))
          {
            goto LABEL_92;
          }

          v35 += v33 - v36;
LABEL_47:
          if (!__OFSUB__(v34, v33))
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        case 3:
          memset(__s1, 0, 14);
          if (v11 == 2)
          {
            v43 = *(a1 + 16);
            v44 = *(a1 + 24);
            sub_1C87A8FBC(a1, a2);
            sub_1C87A8FBC(v19, v18);
            v45 = sub_1C8BD3F9C();
            if (v45)
            {
              v46 = sub_1C8BD3FBC();
              if (__OFSUB__(v43, v46))
              {
                goto LABEL_98;
              }

              v45 += v43 - v46;
            }

            v26 = __OFSUB__(v44, v43);
            v47 = v44 - v43;
            if (v26)
            {
              goto LABEL_96;
            }

            v48 = sub_1C8BD3FAC();
            v7 = v59;
            if (!v45)
            {
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
              sub_1C87A997C(a1, a2);
              sub_1C87A997C(a1, a2);

              __break(1u);
              JUMPOUT(0x1C87A994CLL);
            }

LABEL_80:
            if (v48 >= v47)
            {
              v52 = v47;
            }

            else
            {
              v52 = v48;
            }

            v39 = memcmp(__s1, v45, v52);
            sub_1C87A997C(v19, v18);
            sub_1C87A997C(a1, a2);
            v4 = v58;
LABEL_84:
            v10 = v62;
            v16 = v63;
            v11 = v64;
            if (!v39)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          }

          if (v11 == 1)
          {
            if (v55 < v57)
            {
              goto LABEL_95;
            }

            sub_1C87A8FBC(a1, a2);
            sub_1C87A8FBC(v19, v18);
            v30 = sub_1C8BD3F9C();
            if (v30)
            {
              v37 = sub_1C8BD3FBC();
              if (__OFSUB__(v57, v37))
              {
                goto LABEL_100;
              }

              v30 += v57 - v37;
            }

            v32 = sub_1C8BD3FAC();
            if (!v30)
            {
              goto LABEL_103;
            }

LABEL_57:
            if (v32 >= v54)
            {
              v38 = v54;
            }

            else
            {
              v38 = v32;
            }

            v39 = memcmp(__s1, v30, v38);
            sub_1C87A997C(v19, v18);
            sub_1C87A997C(a1, a2);
            goto LABEL_84;
          }

LABEL_67:
          __s2 = a1;
          v67 = BYTE2(a1);
          v68 = BYTE3(a1);
          v69 = v56;
          v70 = BYTE5(a1);
          v71 = BYTE6(a1);
          v72 = HIBYTE(a1);
          v73 = a2;
          v74 = BYTE2(a2);
          v75 = BYTE3(a2);
          v76 = BYTE4(a2);
          v77 = BYTE5(a2);
          v42 = memcmp(__s1, &__s2, v16);
          v16 = v63;
          v11 = v64;
          if (!v42)
          {
            goto LABEL_86;
          }

LABEL_85:
          v6 = (v6 + 1) & v10;
          if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
          {
            goto LABEL_86;
          }

          break;
        default:
          __s1[0] = v19;
          LOWORD(__s1[1]) = v18;
          BYTE2(__s1[1]) = BYTE2(v18);
          BYTE3(__s1[1]) = BYTE3(v18);
          BYTE4(__s1[1]) = BYTE4(v18);
          BYTE5(__s1[1]) = BYTE5(v18);
          if (!v11)
          {
            goto LABEL_67;
          }

          if (v11 == 1)
          {
            if (v55 < v57)
            {
              goto LABEL_94;
            }

            sub_1C87A8FBC(a1, a2);
            sub_1C87A8FBC(v19, v18);
            v30 = sub_1C8BD3F9C();
            if (v30)
            {
              v31 = sub_1C8BD3FBC();
              if (__OFSUB__(v57, v31))
              {
                goto LABEL_101;
              }

              v30 += v57 - v31;
            }

            v32 = sub_1C8BD3FAC();
            if (!v30)
            {
              goto LABEL_102;
            }

            goto LABEL_57;
          }

          v49 = *(a1 + 16);
          v50 = *(a1 + 24);
          sub_1C87A8FBC(a1, a2);
          sub_1C87A8FBC(v19, v18);
          v45 = sub_1C8BD3F9C();
          if (v45)
          {
            v51 = sub_1C8BD3FBC();
            if (__OFSUB__(v49, v51))
            {
              goto LABEL_99;
            }

            v45 += v49 - v51;
          }

          v26 = __OFSUB__(v50, v49);
          v47 = v50 - v49;
          if (v26)
          {
            goto LABEL_97;
          }

          v48 = sub_1C8BD3FAC();
          v7 = v59;
          if (!v45)
          {
            goto LABEL_104;
          }

          goto LABEL_80;
      }
    }
  }

LABEL_86:
  *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1C87A997C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1C87A99D4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_1C87A9A24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C87A997C(a1, a2);
  }

  return a1;
}

uint64_t sub_1C87A9A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(a1);
  return a1;
}

BOOL sub_1C87A9AB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  v8 = a5[1];
  sub_1C8BD401C();
  v10 = v9;
  if ((v9 & 1) == 0)
  {
    sub_1C87A9B38(a3, a4);
  }

  return (v10 & 1) == 0;
}

uint64_t sub_1C87A9B38(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (sub_1C8BD3F9C() && __OFSUB__(v4, sub_1C8BD3FBC()))
      {
        goto LABEL_14;
      }

LABEL_10:
      sub_1C8BD3FAC();
LABEL_11:
      result = sub_1C8BD3FDC();
      v6 = *MEMORY[0x1E69E9840];
      return result;
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (sub_1C8BD3F9C() && __OFSUB__(v2, sub_1C8BD3FBC()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_10;
      }

      __break(1u);
      goto LABEL_11;
    default:
      goto LABEL_11;
  }
}

_OWORD *sub_1C87A9D30(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1C87A9D8C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C87A9DC4()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_UserStatedTask.task.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserStatedTask(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

BOOL sub_1C87A9F10(uint64_t (*a1)(unint64_t))
{
  v102 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v97 - v7;
  v8 = OUTLINED_FUNCTION_86();
  v104 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  v9 = OUTLINED_FUNCTION_21(v104);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v101 = v12;
  v13 = OUTLINED_FUNCTION_86();
  v14 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v13);
  v15 = OUTLINED_FUNCTION_21(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_0();
  v99 = v18;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v97 - v20;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v97 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  v25 = OUTLINED_FUNCTION_80(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_10_0();
  v98 = v28;
  OUTLINED_FUNCTION_83_0();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v97 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v97 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v97 - v36;
  v38 = *(v2 + *(type metadata accessor for Siri_Nlu_External_SystemDialogAct(0) + 20));
  v39 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__prompted;
  OUTLINED_FUNCTION_277();
  sub_1C8786744(v38 + v39, v37, &dword_1EC2B86E8, &unk_1C8BF4630);
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v37, 1, v14);
  sub_1C8778ED8(v37, &dword_1EC2B86E8, &unk_1C8BF4630);
  if (v2 == 1)
  {
    return 0;
  }

  else
  {
    sub_1C8786744(v38 + v39, v35, &dword_1EC2B86E8, &unk_1C8BF4630);
    OUTLINED_FUNCTION_73(v35);
    if (v41)
    {
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v42 = *(v14 + 20);
      type metadata accessor for Siri_Nlu_External_UUID();
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
      v47 = *(v14 + 24);
      OUTLINED_FUNCTION_5();
      v54 = v104;
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v104);
      OUTLINED_FUNCTION_73(v35);
      v55 = v103;
      if (!v41)
      {
        sub_1C8778ED8(v35, &dword_1EC2B86E8, &unk_1C8BF4630);
      }
    }

    else
    {
      v51 = OUTLINED_FUNCTION_218();
      sub_1C87AA5FC(v51, v52, v53);
      v55 = v103;
      v54 = v104;
    }

    v56 = sub_1C8886B78();
    OUTLINED_FUNCTION_0_13();
    sub_1C87AAA8C(v23, v57);
    if (v56)
    {
      return 1;
    }

    sub_1C8786744(v38 + v39, v32, &dword_1EC2B86E8, &unk_1C8BF4630);
    OUTLINED_FUNCTION_73(v32);
    if (v41)
    {
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v58 = *(v14 + 20);
      type metadata accessor for Siri_Nlu_External_UUID();
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
      v63 = *(v14 + 24);
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v54);
      OUTLINED_FUNCTION_73(v32);
      v67 = v100;
      if (!v41)
      {
        sub_1C8778ED8(v32, &dword_1EC2B86E8, &unk_1C8BF4630);
      }
    }

    else
    {
      sub_1C87AA5FC(v32, v55, type metadata accessor for Siri_Nlu_External_SystemPrompted);
      v67 = v100;
    }

    sub_1C8786744(v55 + *(v14 + 24), v67, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    if (__swift_getEnumTagSinglePayload(v67, 1, v54) == 1)
    {
      v68 = MEMORY[0x1E69E7CC0];
      v69 = v101;
      *v101 = MEMORY[0x1E69E7CC0];
      v69[1] = v68;
      v69[2] = v68;
      v69[3] = v68;
      v69[4] = v68;
      v70 = v69 + *(v54 + 36);
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v71 = *(v54 + 40);
      type metadata accessor for Siri_Nlu_External_SemVer();
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67, 1, v54);
      if (EnumTagSinglePayload != 1)
      {
        EnumTagSinglePayload = sub_1C8778ED8(v67, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      }
    }

    else
    {
      v69 = v101;
      EnumTagSinglePayload = sub_1C87AA5FC(v67, v101, type metadata accessor for Siri_Nlu_External_UsoGraph);
    }

    v77 = v69[1];
    MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
    *(&v97 - 2) = v69;
    OUTLINED_FUNCTION_8_13();
    v81 = sub_1C87AA658(v102, v78, v79, v80);
    OUTLINED_FUNCTION_0_13();
    sub_1C87AAA8C(v55, v82);
    OUTLINED_FUNCTION_7_15();
    sub_1C87AAA8C(v69, v83);
    if (v81)
    {
      return 1;
    }

    else
    {
      v84 = v98;
      sub_1C8786744(v38 + v39, v98, &dword_1EC2B86E8, &unk_1C8BF4630);
      OUTLINED_FUNCTION_73(v84);
      if (v41)
      {
        v94 = v99;
        _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
        v85 = *(v14 + 20);
        type metadata accessor for Siri_Nlu_External_UUID();
        OUTLINED_FUNCTION_5();
        __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
        v90 = *(v14 + 24);
        OUTLINED_FUNCTION_5();
        __swift_storeEnumTagSinglePayload(v91, v92, v93, v54);
        OUTLINED_FUNCTION_73(v84);
        if (!v41)
        {
          sub_1C8778ED8(v84, &dword_1EC2B86E8, &unk_1C8BF4630);
        }
      }

      else
      {
        v94 = v99;
        sub_1C87AA5FC(v84, v99, type metadata accessor for Siri_Nlu_External_SystemPrompted);
      }

      v40 = sub_1C87AAE28();
      OUTLINED_FUNCTION_0_13();
      sub_1C87AAA8C(v94, v95);
    }
  }

  return v40;
}

uint64_t OUTLINED_FUNCTION_273(uint64_t a1, uint64_t a2)
{

  return sub_1C8786744(a1, a2, v2, v3);
}

uint64_t Siri_Nlu_External_UserDialogAct.userStatedTask.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_375(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_113_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  v10 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t sub_1C87AA5FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_218();
  v8(v7);
  return a2;
}

BOOL sub_1C87AA658(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *(a4(0) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1C87AA73C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v35 = a3;
  v36 = a2;
  v4 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B0, &qword_1C8BE6E40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Siri_Nlu_External_UsoEdge(0);
  sub_1C8786744(a1 + *(v16 + 28), v11, &qword_1EC2B61B0, &qword_1C8BE6E40);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = &v15[v12[5]];
    *v17 = 0;
    v17[4] = 1;
    v18 = &v15[v12[6]];
    *v18 = 0;
    v18[4] = 1;
    v19 = v12[7];
    v20 = type metadata accessor for Siri_Nlu_External_UsoLabel(0);
    __swift_storeEnumTagSinglePayload(&v15[v19], 1, 1, v20);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_1C8778ED8(v11, &qword_1EC2B61B0, &qword_1C8BE6E40);
    }
  }

  else
  {
    sub_1C87AA5FC(v11, v15, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  }

  v21 = &v15[v12[5]];
  v22 = *v21;
  v23 = v21[4];
  sub_1C87AAA8C(v15, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  v25 = sub_1C88E328C(v24, v36);
  result = 0;
  if (v25)
  {
    v27 = *v35;
    v28 = (a1 + *(v16 + 20));
    if (*(v28 + 4))
    {
      v29 = 0;
    }

    else
    {
      v29 = *v28;
    }

    if (v29 >= *(v27 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C88878A8(v27 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v29, v7, type metadata accessor for Siri_Nlu_External_UsoNode);
      v30 = &v7[*(v4 + 24)];
      v31 = *v30;
      v32 = v30[4];
      sub_1C87AAA8C(v7, type metadata accessor for Siri_Nlu_External_UsoNode);
      return (v31 == 1303) & ~v32;
    }
  }

  return result;
}

uint64_t sub_1C87AAA8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C87AAAE4(uint64_t a1, uint64_t *a2)
{
  v31 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B0, &qword_1C8BE6E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UsoEdge(0);
  sub_1C8786744(a1 + *(v15 + 28), v10, &qword_1EC2B61B0, &qword_1C8BE6E40);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = &v14[v11[5]];
    *v16 = 0;
    v16[4] = 1;
    v17 = &v14[v11[6]];
    *v17 = 0;
    v17[4] = 1;
    v18 = v11[7];
    v19 = type metadata accessor for Siri_Nlu_External_UsoLabel(0);
    __swift_storeEnumTagSinglePayload(&v14[v18], 1, 1, v19);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_1C8778ED8(v10, &qword_1EC2B61B0, &qword_1C8BE6E40);
    }
  }

  else
  {
    sub_1C87AA5FC(v10, v14, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  }

  v20 = &v14[v11[5]];
  v21 = *v20;
  v22 = v20[4];
  sub_1C87AAA8C(v14, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  result = 0;
  if ((v22 & 1) == 0 && v21 == 1394)
  {
    v24 = *v31;
    v25 = (a1 + *(v15 + 20));
    if (*(v25 + 4))
    {
      v26 = 0;
    }

    else
    {
      v26 = *v25;
    }

    if (v26 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C88878A8(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v6, type metadata accessor for Siri_Nlu_External_UsoNode);
      v27 = &v6[*(v3 + 24)];
      v28 = *v27;
      v29 = v27[4];
      sub_1C87AAA8C(v6, type metadata accessor for Siri_Nlu_External_UsoNode);
      return (v28 == 3029) & ~v29;
    }
  }

  return result;
}

BOOL sub_1C87AAE28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19[-v3];
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  sub_1C8786744(v0 + *(v9 + 24), v4, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    *v8 = MEMORY[0x1E69E7CC0];
    v8[1] = v10;
    v8[2] = v10;
    v8[3] = v10;
    v8[4] = v10;
    v11 = v8 + *(v5 + 36);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = *(v5 + 40);
    v13 = type metadata accessor for Siri_Nlu_External_SemVer();
    __swift_storeEnumTagSinglePayload(v8 + v12, 1, 1, v13);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
    if (EnumTagSinglePayload != 1)
    {
      EnumTagSinglePayload = sub_1C8778ED8(v4, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    EnumTagSinglePayload = sub_1C87AA5FC(v4, v8, type metadata accessor for Siri_Nlu_External_UsoGraph);
  }

  v15 = v8[1];
  MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
  *&v19[-16] = v8;
  v16 = sub_1C87AA658(sub_1C87AB3DC, &v19[-32], v15, type metadata accessor for Siri_Nlu_External_UsoEdge);
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    *&v19[-16] = v8;
    v17 = sub_1C87AA658(sub_1C8887888, &v19[-32], v15, type metadata accessor for Siri_Nlu_External_UsoEdge);
  }

  else
  {
    v17 = 0;
  }

  sub_1C87AAA8C(v8, type metadata accessor for Siri_Nlu_External_UsoGraph);
  return v17;
}

uint64_t sub_1C87AB0B8(uint64_t a1, uint64_t *a2)
{
  v31 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B0, &qword_1C8BE6E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UsoEdge(0);
  sub_1C8786744(a1 + *(v15 + 28), v10, &qword_1EC2B61B0, &qword_1C8BE6E40);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = &v14[v11[5]];
    *v16 = 0;
    v16[4] = 1;
    v17 = &v14[v11[6]];
    *v17 = 0;
    v17[4] = 1;
    v18 = v11[7];
    v19 = type metadata accessor for Siri_Nlu_External_UsoLabel(0);
    __swift_storeEnumTagSinglePayload(&v14[v18], 1, 1, v19);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_1C8778ED8(v10, &qword_1EC2B61B0, &qword_1C8BE6E40);
    }
  }

  else
  {
    sub_1C87AA5FC(v10, v14, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  }

  v20 = &v14[v11[5]];
  v21 = *v20;
  v22 = v20[4];
  sub_1C87AAA8C(v14, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  result = 0;
  if ((v22 & 1) == 0 && v21 == 1275)
  {
    v24 = *v31;
    v25 = (a1 + *(v15 + 20));
    if (*(v25 + 4))
    {
      v26 = 0;
    }

    else
    {
      v26 = *v25;
    }

    if (v26 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C88878A8(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v6, type metadata accessor for Siri_Nlu_External_UsoNode);
      v27 = &v6[*(v3 + 24)];
      v28 = *v27;
      v29 = v27[4];
      sub_1C87AAA8C(v6, type metadata accessor for Siri_Nlu_External_UsoNode);
      return (v28 == 1305) & ~v29;
    }
  }

  return result;
}

Swift::Bool __swiftcall Siri_Nlu_External_SystemDialogAct.asrTaskUseConfirmation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  v2 = OUTLINED_FUNCTION_80(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  v7 = *(v0 + *(type metadata accessor for Siri_Nlu_External_SystemDialogAct(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__offered;
  OUTLINED_FUNCTION_277();
  sub_1C8786744(v7 + v8, v6, &qword_1EC2B86F0, &unk_1C8BF5030);
  v9 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  LOBYTE(v7) = __swift_getEnumTagSinglePayload(v6, 1, v9) != 1;
  sub_1C8778ED8(v6, &qword_1EC2B86F0, &unk_1C8BF5030);
  return v7;
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasPrompted.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t OUTLINED_FUNCTION_201_1()
{

  return sub_1C8BD517C();
}

uint64_t OUTLINED_FUNCTION_201_2(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
  v4 = *(v3 + 32);
  return 0;
}

uint64_t Siri_Nlu_External_SystemDialogAct.prompted.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_166_2(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v9 = OUTLINED_FUNCTION_44();
    v13 = OUTLINED_FUNCTION_231_1(v9, v10, v11, v12);
    v14 = type metadata accessor for Siri_Nlu_External_UsoGraph(v13);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &dword_1EC2B86E8, &unk_1C8BF4630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_100_1()
{

  return sub_1C8BD517C();
}

Swift::Bool __swiftcall Siri_Nlu_External_SystemPrompted.isMessagePayloadPrompt()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20[-v3];
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  sub_1C87AB9AC(v0 + *(v11 + 24), v4, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    *v10 = MEMORY[0x1E69E7CC0];
    v10[1] = v12;
    v10[2] = v12;
    v10[3] = v12;
    v10[4] = v12;
    v13 = v10 + *(v5 + 36);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = *(v5 + 40);
    v15 = type metadata accessor for Siri_Nlu_External_SemVer();
    __swift_storeEnumTagSinglePayload(v10 + v14, 1, 1, v15);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
    if (EnumTagSinglePayload != 1)
    {
      EnumTagSinglePayload = sub_1C8778ED8(v4, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    EnumTagSinglePayload = sub_1C88E3658(v4, v10, type metadata accessor for Siri_Nlu_External_UsoGraph);
  }

  v17 = v10[1];
  MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
  *&v20[-16] = &unk_1F4872030;
  *&v20[-8] = v10;
  v18 = sub_1C8886B58();
  sub_1C87A8B84(v10, type metadata accessor for Siri_Nlu_External_UsoGraph);
  return v18;
}

uint64_t sub_1C87AB9AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_21(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasGaveOptions.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_Span.matcherNames.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.gaveOptions.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A80, &unk_1C8BF5090);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v10 = sub_1C879A880();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_93_3();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t sub_1C87ABC10()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  sub_1C8BD530C();
  v1(0);
  v2 = OUTLINED_FUNCTION_184();
  sub_1C8776788(v2, v3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87ABCD4()
{
  sub_1C8776788(qword_1EDACB410, type metadata accessor for Siri_Nlu_External_SystemDialogAct);

  return sub_1C8BD4CFC();
}

uint64_t Siri_Nlu_External_SystemGaveOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_UserDialogAct(0), OUTLINED_FUNCTION_174_1(), sub_1C8776788(v3, v4), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_205_0(), result = sub_1C8BD4E0C(), !v1))
  {
    v6 = v2 + *(type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0) + 20);
    OUTLINED_FUNCTION_119();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_504()
{
  v2 = *(v0 - 72);

  return sub_1C8BD4E2C();
}

void Siri_Nlu_External_UserStatedTask.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_444(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  v10 = type metadata accessor for Siri_Nlu_External_UsoGraph(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v14 = OUTLINED_FUNCTION_402();
  v15 = type metadata accessor for Siri_Nlu_External_UserStatedTask(v14);
  OUTLINED_FUNCTION_82(v15);
  v16 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_188_0(v16, v17);
  if (v18)
  {
    sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_5:
    OUTLINED_FUNCTION_260_0();
    sub_1C8BD49DC();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_127_0();
  sub_1C879A720();
  OUTLINED_FUNCTION_13_14();
  sub_1C8776788(v19, v20);
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_504();
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

double sirinluinternalitfm::ITFMParserResponse::ITFMParserResponse(sirinluinternalitfm::ITFMParserResponse *this)
{
  *this = &unk_1F4878DC8;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4878DC8;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void Siri_Nlu_External_SystemPrompted.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph(v11);
  v13 = OUTLINED_FUNCTION_52_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v16);
  v17 = OUTLINED_FUNCTION_315();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_80(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_87_2();
  v23 = type metadata accessor for Siri_Nlu_External_UUID();
  v24 = OUTLINED_FUNCTION_21(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = OUTLINED_FUNCTION_36_4();
  v28 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v27);
  OUTLINED_FUNCTION_78_2(v28);
  OUTLINED_FUNCTION_102_2();
  if (v29)
  {
    sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    sub_1C8776788(v30, v31);
    OUTLINED_FUNCTION_45_4();
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  v32 = *(v3 + 24);
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v29)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_13_14();
  sub_1C8776788(v33, v34);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

BOOL sub_1C87AC31C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

uint64_t sub_1C87AC358(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1C87AC430(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C87AC5D0@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Tokenizer_TokenizerResponse.text.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87AC658(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v12 = OUTLINED_FUNCTION_18_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_12:
    v10 = v3 + v14;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    v14 = a3[7];
    goto LABEL_12;
  }

  v15 = *(v3 + a3[6] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1C87AC788(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
    result = OUTLINED_FUNCTION_18_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(v4 + a4[6] + 8) = a2;
        return result;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v16 = a4[7];
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1C87AC8D8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_RequestID.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AC92C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_RequestID.userID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AC958()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_RequestID.loggableUserID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AC984()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_RequestID.trpID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AC9B0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_RequestID.connectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AC9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1C87ACAD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1C87ACBD4@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_SubwordTokenChain.locale.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87ACC04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87ACC8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87ACE10()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.resultCandidateID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87ACE3C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.utterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87ACF58()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.entityCandidates.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87ACF84()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.detectedMentions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87ACFB0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.maxCandidates.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AD000()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.matchingSpans.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AD02C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.turnIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AD0F4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.contextualSpans.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AD120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C87AD1C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C87AD270@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Embedding_EmbeddingRequest.text.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87AD2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1C87AD3B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1C87AD614@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Itfm_ITFMParserRequest.matchingSpans.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87AD7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C87AD854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C87AD9FC@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.utterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87ADAA4(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v12 = OUTLINED_FUNCTION_18_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_14:
    v10 = v3 + v14;
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  v16 = OUTLINED_FUNCTION_18_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_14;
  }

  if (a2 != 2147483646)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    v14 = a3[8];
    goto LABEL_14;
  }

  v18 = *(v3 + a3[7] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  v19 = v18 - 1;
  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1C87ADC20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
    v14 = OUTLINED_FUNCTION_18_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
      result = OUTLINED_FUNCTION_18_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = result;
        v16 = a4[6];
      }

      else
      {
        if (a3 == 2147483646)
        {
          *(v4 + a4[7] + 8) = a2;
          return result;
        }

        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
        v16 = a4[8];
      }
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1C87ADE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
    v12 = OUTLINED_FUNCTION_18_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E8, &qword_1C8BE7DD8);
      v14 = *(a3 + 24);
    }

    v10 = v3 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1C87ADF28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
    v14 = OUTLINED_FUNCTION_18_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E8, &qword_1C8BE7DD8);
      v16 = *(a4 + 24);
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1C87AE038()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.osRelease.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AE088()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.ncvNumber.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AE0D8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.patchNumber.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AE128()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.boltTaskID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AE1A4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.modelType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AE220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_23_2(a1 + *(a3 + 32));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_1C87AE2BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87AE360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
    OUTLINED_FUNCTION_18_0(v11);
    if (*(v12 + 84) != a2)
    {
      return OUTLINED_FUNCTION_23_2(v3 + *(a3 + 24));
    }

    v10 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1C87AE444(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
    result = OUTLINED_FUNCTION_18_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v12 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1C87AE534(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == a2)
  {
    v7 = v5;
    v8 = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
    v8 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1C87AE5D0(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a3)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
    v10 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1C87AE674@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.variable.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87AE6A4@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.eventID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87AE6D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87AE75C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87AE7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C87AE894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87AE9F8()
{
  OUTLINED_FUNCTION_22_3();
  if (v0 == v2)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  v4 = v1;
  v5 = v0;
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == v5)
  {
    v8 = *(v4 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
    v8 = *(v4 + 28);
  }

  v9 = OUTLINED_FUNCTION_21_0(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1C87AEAB4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_3();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v9);
    if (*(v10 + 84) == v8)
    {
      v11 = *(v7 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
      v11 = *(v7 + 28);
    }

    v12 = OUTLINED_FUNCTION_21_0(v11);

    __swift_storeEnumTagSinglePayload(v12, v13, a2, v14);
  }
}

uint64_t sub_1C87AEBA4()
{
  OUTLINED_FUNCTION_22_3();
  if (v0 == v2)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  v4 = v1;
  v5 = v0;
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == v5)
  {
    v8 = *(v4 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    v8 = *(v4 + 24);
  }

  v9 = OUTLINED_FUNCTION_21_0(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1C87AEC60(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_3();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v9);
    if (*(v10 + 84) == v8)
    {
      v11 = *(v7 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v11 = *(v7 + 24);
    }

    v12 = OUTLINED_FUNCTION_21_0(v11);

    __swift_storeEnumTagSinglePayload(v12, v13, a2, v14);
  }
}

uint64_t sub_1C87AED2C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_MatchInfo.AliasType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87AEE58()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoNode.usoElementID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AEFB0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoNode.entityLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AEFDC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoNode.verbLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AF008()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoEdge.fromIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AF054()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoEdge.toIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AF118()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoEdgeLabel.usoElementID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AF164()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoEdgeLabel.enumeration.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AF228()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoEntityIdentifier.nodeIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AF274()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AF2A0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AF38C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoEntityIdentifier.groupIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AF3D8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoEntityIdentifier.interpretationGroup.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AF48C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoLabel.value.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AF4B8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_MatchInfo.matchSignalBitset.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AF7A4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoEntitySpan.nodeIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AF918()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoEntitySpan.properties.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AF9EC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UsoEntitySpan.alternatives.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87AFAEC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_AsrAlternative.alternative.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AFB6C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_SpanProperty.key.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87AFCA4()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_17();
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    if (v0 == 2147483646)
    {
      return OUTLINED_FUNCTION_23_2(v1 + *(v2 + 24));
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
    OUTLINED_FUNCTION_18_0(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_241_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
      v10 = *(v2 + 36);
    }

    v5 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

void sub_1C87AFDAC()
{
  v2 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_164_1(*(v0 + 24));
      return;
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
    OUTLINED_FUNCTION_18_0(v4);
    if (*(v5 + 84) == v1)
    {
      OUTLINED_FUNCTION_249_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
      v6 = *(v0 + 36);
    }
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1C87AFEA8()
{
  OUTLINED_FUNCTION_166();
  if (v3)
  {
    v4 = *v1;
    OUTLINED_FUNCTION_61_1();
    return (v5 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_173();
    v7 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v7);
    if (*(v8 + 84) == v0)
    {
      v9 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6138, &unk_1C8BE8D80);
      v9 = *(v2 + 24);
    }

    v10 = OUTLINED_FUNCTION_21_0(v9);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

void sub_1C87AFF64()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v3 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6138, &unk_1C8BE8D80);
      v6 = *(v0 + 24);
    }

    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C87B001C()
{
  OUTLINED_FUNCTION_166();
  if (v3)
  {
    v4 = *v1;
    OUTLINED_FUNCTION_61_1();
    return (v5 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_173();
    v7 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v7);
    if (*(v8 + 84) == v0)
    {
      v9 = *(v2 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
      OUTLINED_FUNCTION_18_0(v10);
      if (*(v11 + 84) == v0)
      {
        OUTLINED_FUNCTION_240_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
        OUTLINED_FUNCTION_241_0();
      }
    }

    v12 = OUTLINED_FUNCTION_21_0(v9);

    return __swift_getEnumTagSinglePayload(v12, v13, v14);
  }
}

void sub_1C87B011C()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v3 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 20);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
      OUTLINED_FUNCTION_18_0(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_248_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
        OUTLINED_FUNCTION_249_0();
      }
    }

    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1C87B0268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_196();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    OUTLINED_FUNCTION_61_1();
    return (v12 + 1);
  }
}

uint64_t sub_1C87B0300()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1C87B03B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_196();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    if (v11 <= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = *(v3 + *(a3 + 20));
    }

    v13 = v12 - 2;
    if (v11 >= 2)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C87B0460()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 2;
  }

  return result;
}

uint64_t sub_1C87B0510()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_17();
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    if (v0 == 2147483646)
    {
      return OUTLINED_FUNCTION_23_2(v1 + *(v2 + 20));
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
    v5 = v1 + *(v2 + 24);
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

void sub_1C87B05D0()
{
  v3 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v2)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v2 == 2147483646)
    {
      OUTLINED_FUNCTION_164_1(*(v1 + 20));
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
    v5 = v0 + *(v1 + 24);
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C87B0684()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_17();
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    if (v0 == 2147483646)
    {
      return OUTLINED_FUNCTION_23_2(v1 + *(v2 + 20));
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
    v9 = OUTLINED_FUNCTION_18_0(v8);
    if (*(v10 + 84) == v0)
    {
      v6 = v9;
      v11 = *(v2 + 24);
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6968, &unk_1C8BE8DC0);
      OUTLINED_FUNCTION_18_0(v12);
      if (*(v13 + 84) == v0)
      {
        OUTLINED_FUNCTION_240_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
        OUTLINED_FUNCTION_241_0();
      }
    }

    v5 = v1 + v11;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

void sub_1C87B07D4()
{
  v2 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_164_1(*(v0 + 20));
      return;
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
    OUTLINED_FUNCTION_18_0(v4);
    if (*(v5 + 84) == v1)
    {
      v6 = *(v0 + 24);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6968, &unk_1C8BE8DC0);
      OUTLINED_FUNCTION_18_0(v7);
      if (*(v8 + 84) == v1)
      {
        OUTLINED_FUNCTION_248_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
        OUTLINED_FUNCTION_249_0();
      }
    }
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_1C87B0918@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_UUID.highInt.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87B096C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_UUID.lowInt.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87B0A08@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Ssu_SSURequest.utterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B0A38@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Ssu_SSURequest.locale.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B0B18(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = OUTLINED_FUNCTION_18_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v14 = OUTLINED_FUNCTION_18_0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[9];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
        v12 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_1C87B0C38(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = OUTLINED_FUNCTION_18_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v14 = OUTLINED_FUNCTION_18_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[9];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
        v12 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C87B0DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 <= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = *(a1 + *(a3 + 20));
    }

    v10 = v9 - 2;
    if (v8 >= 2)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C87B0E64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C87B0F90()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_RewriteToken.value.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B0FBC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_RewriteToken.startIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B100C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_RewriteToken.endIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B10AC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_RewriteToken.phoneSequence.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B10D8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_RewriteToken.removeSpaceAfter.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87B117C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_RewriteUtterance.utterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B11F8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_RewriteInteraction.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B1224()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_RewriteInteraction.tap2Edit.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87B1278()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_RewriteInteraction.startTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B1318()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_RewriteHypothesis.utterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B139C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20) + 8);
    OUTLINED_FUNCTION_61_1();
    return OUTLINED_FUNCTION_73_1(v11);
  }
}

uint64_t sub_1C87B143C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87B14D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    OUTLINED_FUNCTION_61_1();
    return (v5 + 1);
  }

  else
  {
    v9 = sub_1C8BD49FC();
    v10 = OUTLINED_FUNCTION_18_0(v9);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(a3 + 24);
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v13 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v13, a2, v12);
  }
}

void sub_1C87B15A4()
{
  OUTLINED_FUNCTION_101_0();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(v5 + 28);
    }

    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

uint64_t sub_1C87B1664(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    OUTLINED_FUNCTION_61_1();
    return (v5 + 1);
  }

  else
  {
    v9 = sub_1C8BD49FC();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void sub_1C87B16E4()
{
  OUTLINED_FUNCTION_101_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1C8BD49FC();
    v5 = *(v4 + 24);
    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C87B1754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    v12 = OUTLINED_FUNCTION_18_0(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(v3 + *(a3 + 24) + 8);
      OUTLINED_FUNCTION_61_1();
      return OUTLINED_FUNCTION_73_1(v16);
    }

    v9 = v12;
    v10 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1C87B1844(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v8);
  if (*(v9 + 84) == a3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    result = OUTLINED_FUNCTION_18_0(v10);
    if (*(v12 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v13 = v4 + *(a4 + 20);
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_1C87B1980@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.rewrittenUtterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B19B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1C87B1A88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C87B1B5C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Token.value.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B1B88()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Token.begin.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B1BD4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Token.end.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B1C20()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Token.isSignificant.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87B1C74()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Token.isWhitespace.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87B1CC8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Token.tokenIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B1D14()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Token.nonWhitespaceTokenIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B1D60()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Token.cleanValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_1C87B1D8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87B1E20@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.PrescribedTool.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87B1F0C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_NLRouterServiceResponse.heuristicRule.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B1FB4@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.rewriteUtterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B21E4(uint64_t *a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_173();
    v7 = sub_1C8BD49FC();
    v8 = OUTLINED_FUNCTION_18_0(v7);
    if (*(v9 + 84) == v2)
    {
      v10 = v8;
      v11 = *(v3 + 24);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA8, &unk_1C8BEBC60);
      v11 = *(v3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, v2, v10);
  }
}

void *sub_1C87B22B4(void *result, int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v6 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v6);
    if (*(v7 + 84) == a3)
    {
      v8 = *(a4 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA8, &unk_1C8BEBC60);
      v9 = *(a4 + 40);
    }

    OUTLINED_FUNCTION_135();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  return result;
}

uint64_t sub_1C87B23F8()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_17();
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
LABEL_13:

    return __swift_getEnumTagSinglePayload(v5, v0, v6);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v8 = OUTLINED_FUNCTION_18_0(v7);
  if (*(v9 + 84) == v0)
  {
    v6 = v8;
    v10 = v2[5];
LABEL_12:
    v5 = v1 + v10;
    goto LABEL_13;
  }

  if (v0 != 2147483646)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
    v10 = v2[8];
    goto LABEL_12;
  }

  v11 = *(v1 + v2[6] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_1C87B2520()
{
  v4 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    result = OUTLINED_FUNCTION_18_0(v6);
    if (*(v8 + 84) == v3)
    {
      v9 = v2[5];
    }

    else
    {
      if (v3 == 2147483646)
      {
        *(v1 + v2[6] + 8) = v0;
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
      v10 = v2[8];
    }
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1C87B2628()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_17();
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
LABEL_11:

    return __swift_getEnumTagSinglePayload(v5, v0, v6);
  }

  if (v0 != 252)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F98, &qword_1C8BE6C48);
    v5 = v1 + *(v2 + 28);
    goto LABEL_11;
  }

  v7 = *(v1 + *(v2 + 24));
  if (v7 <= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = *(v1 + *(v2 + 24));
  }

  v9 = v8 - 3;
  if (v7 >= 3)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C87B26F8()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v3 == 252)
    {
      *(v1 + *(v2 + 24)) = v0 + 3;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F98, &qword_1C8BE6C48);
    v7 = v1 + *(v2 + 28);
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_1C87B2804()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_17();
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF8, &qword_1C8BEBC80);
    v8 = OUTLINED_FUNCTION_18_0(v7);
    if (*(v9 + 84) == v0)
    {
      v6 = v8;
      v10 = *(v2 + 20);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F00, &qword_1C8BEBC88);
      v10 = *(v2 + 24);
    }

    v5 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_1C87B28E8()
{
  v2 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF8, &qword_1C8BEBC80);
    OUTLINED_FUNCTION_18_0(v4);
    if (*(v5 + 84) == v1)
    {
      v6 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F00, &qword_1C8BEBC88);
      v7 = *(v0 + 24);
    }
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_1C87B29C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(v3 + *(a3 + 20));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C87B2A70()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 2;
  }

  return result;
}

uint64_t sub_1C87B2B20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_221_0();

  return __swift_getEnumTagSinglePayload(v3, a2, v4);
}

uint64_t sub_1C87B2B60()
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C87B2BA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87B2C28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87B2D28@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Queryrewrite_QRRequest.interactions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87B2D58@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Queryrewrite_QRRequest.originalInteractions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87B2D88@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Queryrewrite_QRRequest.resultCandidateID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B2E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C87B2F40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C87B3000@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_ResponseStatus.description_p.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B3030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C87B30EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87B3A24@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.appInFocusBundleID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B3A54@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.hasFocusedOnScreenImage_p.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C87B3AAC@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.hasFocusedOnScreenDocument_p.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C87B3E4C()
{
  OUTLINED_FUNCTION_166();
  if (v3)
  {
    return OUTLINED_FUNCTION_68_0(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[10];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7590, &qword_1C8BED7A0);
    OUTLINED_FUNCTION_18_0(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7598, &qword_1C8C0A650);
      v7 = v2[12];
    }
  }

  v10 = OUTLINED_FUNCTION_21_0(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1C87B3F48()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v3 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[10];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7590, &qword_1C8BED7A0);
      OUTLINED_FUNCTION_18_0(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[11];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7598, &qword_1C8C0A650);
        v5 = v0[12];
      }
    }

    v8 = OUTLINED_FUNCTION_102_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1C87B4084()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    return OUTLINED_FUNCTION_68_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_138();
  v4 = OUTLINED_FUNCTION_21_0(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C87B40E8()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    v2 = OUTLINED_FUNCTION_102_0(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1C87B543C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Psc_PSCServiceRequest.matchingSpans.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87B55D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C87B567C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C87B5724@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.text.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B577C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1C87B5868(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1C87B5944(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87B59CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87B5A4C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Tokenizer_TokenizerRequest.text.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B5A7C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Tokenizer_TokenizerRequest.locale.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B5AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1C87B5BC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1C87B5E94@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_UaapParser_UaaPParserRequest.maxNumParses.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87B5EE8(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = OUTLINED_FUNCTION_18_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v14 = OUTLINED_FUNCTION_18_0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
        v17 = OUTLINED_FUNCTION_18_0(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[7];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
          v20 = OUTLINED_FUNCTION_18_0(v19);
          if (*(v21 + 84) == a2)
          {
            v11 = v20;
            v12 = a3[8];
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
            v12 = a3[9];
          }
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_1C87B60A0(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = OUTLINED_FUNCTION_18_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v14 = OUTLINED_FUNCTION_18_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
        v17 = OUTLINED_FUNCTION_18_0(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[7];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
          v20 = OUTLINED_FUNCTION_18_0(v19);
          if (*(v21 + 84) == a3)
          {
            v11 = v20;
            v12 = a4[8];
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
            v12 = a4[9];
          }
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C87B6444(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8710, &unk_1C8BF4640);
    v12 = OUTLINED_FUNCTION_18_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8718, &qword_1C8C102A0);
      v16 = OUTLINED_FUNCTION_18_0(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8720, &qword_1C8BF4650);
        v19 = OUTLINED_FUNCTION_18_0(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8728, &qword_1C8BF4658);
          v14 = a3[8];
        }
      }
    }

    v10 = v3 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1C87B65C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8710, &unk_1C8BF4640);
    v14 = OUTLINED_FUNCTION_18_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8718, &qword_1C8C102A0);
      v18 = OUTLINED_FUNCTION_18_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8720, &qword_1C8BF4650);
        v21 = OUTLINED_FUNCTION_18_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8728, &qword_1C8BF4658);
          v16 = a4[8];
        }
      }
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1C87B67D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1C87B6814(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1C87B686C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Itfm_ITFMHypothesis.label.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B690C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Itfm_ITFMHypothesis.stringLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B6938()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Itfm_ITFMParserResponse.classificationLabel.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87B6A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C87B6AB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87B6B60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = OUTLINED_FUNCTION_18_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
      v12 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_1C87B6C34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = OUTLINED_FUNCTION_18_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
      v12 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C87B6DF4@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.resultCandidateID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B6E24@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.utterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87B6F44@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.maxCandidates.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87B7010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C87B70B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C87B7174@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_Span.MatcherName.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87B72B8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_TurnInput.salientEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B72E4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_TurnInput.activeTasks.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B7310()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_TurnInput.executedTasks.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B733C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_TurnInput.asrOutputs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B73E0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_TurnInput.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B740C()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_External_TurnInput.tapToEdit.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87B7458()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_TurnInput.startTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B7510()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_External_TurnInput.connectedToCarPlayUltra.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87B76B4()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_External_LegacyNLContext.dictationPrompt.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87B7700()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_External_LegacyNLContext.strictPrompt.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87B774C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_LegacyNLContext.previousDomainName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B7778()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_External_LegacyNLContext.listenAfterSpeaking.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87B77CC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_RepetitionResult.asrHypothesisIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B78E4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UserParse.parserID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B859C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_RewriteMessage.rewrittenUtterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B85C8()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_External_ReferenceContext.contextualReference.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87B8614()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_External_ReferenceContext.disambiguationNeeded.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87B8660()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_DelegatedUserDialogAct.asrHypothesisIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B8700()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B9154()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_RRGroupIdentifier.seq.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B9378()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_RRSurroundingText.text.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B9658()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_EntityCandidate.annotations.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B9928()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_AsrHypothesis.utterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B99A0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_AsrTokenInformation.postItnText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B99CC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_AsrTokenInformation.phoneSequence.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B99F8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_AsrTokenInformation.ipaPhoneSequence.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B9A24()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_External_AsrTokenInformation.addSpaceAfter.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87B9A70()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_External_AsrTokenInformation.removeSpaceAfter.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87B9ABC()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_External_AsrTokenInformation.removeSpaceBefore.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87B9B54()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_AsrTokenInformation.beginIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B9BA0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_AsrTokenInformation.endIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B9BEC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_AsrTokenInformation.startMilliSeconds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B9C38()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_AsrTokenInformation.endMilliSeconds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B9C84()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_Span.label.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B9CB0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_Span.input.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87B9CDC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_Span.startTokenIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B9D28()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_Span.endTokenIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87B9F00(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_226();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 24));
    if (v12 <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = *(v3 + *(a3 + 24));
    }

    v14 = v13 - 4;
    if (v12 >= 4)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C87B9FA4()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_147_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0 + 4;
  }

  return result;
}

uint64_t sub_1C87BA028()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_147_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 3;
  }

  return result;
}

uint64_t sub_1C87BA0FC()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  v4 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_18_0(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A60, &unk_1C8BF5058);
      OUTLINED_FUNCTION_18_0(v9);
      if (*(v10 + 84) == v0)
      {
        v6 = v1[9];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
        OUTLINED_FUNCTION_18_0(v11);
        if (*(v12 + 84) == v0)
        {
          v6 = v1[10];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
          v6 = v1[12];
        }
      }
    }
  }

  v13 = OUTLINED_FUNCTION_21_0(v6);

  return __swift_getEnumTagSinglePayload(v13, v14, v15);
}

void sub_1C87BA284()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v3 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      OUTLINED_FUNCTION_18_0(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_264_0();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A60, &unk_1C8BF5058);
        OUTLINED_FUNCTION_18_0(v8);
        if (*(v9 + 84) == v1)
        {
          v5 = v0[9];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
          OUTLINED_FUNCTION_18_0(v10);
          if (*(v11 + 84) == v1)
          {
            v5 = v0[10];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
            v5 = v0[12];
          }
        }
      }
    }

    v12 = OUTLINED_FUNCTION_102_0(v5);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_1C87BA478(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_226();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 24) + 8);
    OUTLINED_FUNCTION_61_1();
    return OUTLINED_FUNCTION_73_1(v13);
  }
}

void sub_1C87BA510()
{
  v2 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_147_2();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_164_1(*(v0 + 24));
  }
}

uint64_t sub_1C87BA5B8(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_226();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 20));
    if (v12 >= 2)
    {
      v13 = ((v12 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v13 = -2;
    }

    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1C87BA670()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_147_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 2;
  }

  return result;
}

uint64_t sub_1C87BA71C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_221_0();

  return __swift_getEnumTagSinglePayload(v3, a2, v4);
}

uint64_t sub_1C87BA75C()
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  v0 = OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C87BA798()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_17();
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    if (v0 == 2147483646)
    {
      v7 = *(v1 + *(v2 + 20) + 8);
      OUTLINED_FUNCTION_61_1();
      return OUTLINED_FUNCTION_73_1(v8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6128, &qword_1C8BE6DC8);
    OUTLINED_FUNCTION_266();
    v5 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

void sub_1C87BA85C()
{
  v2 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_164_1(*(v0 + 20));
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6128, &qword_1C8BE6DC8);
    OUTLINED_FUNCTION_264_0();
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1C87BA95C()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  v3 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_240_0();
  }

  v6 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C87BAA00()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_264_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      OUTLINED_FUNCTION_248_0();
    }

    v5 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C87BAAAC(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_241();
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == a2)
  {
    v5 = OUTLINED_FUNCTION_226();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_386();
    v10 = *(v9 + 8);
    OUTLINED_FUNCTION_61_1();
    return OUTLINED_FUNCTION_73_1(v11);
  }
}

void sub_1C87BAB40()
{
  v2 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_147_2();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_164_1(*(v0 + 20));
  }
}

uint64_t sub_1C87BABC0()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  v4 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
    v6 = *(v1 + 40);
  }

  v7 = OUTLINED_FUNCTION_21_0(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C87BAC68()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v3 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
      v5 = *(v0 + 40);
    }

    v6 = OUTLINED_FUNCTION_102_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C87BAD40()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  v3 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
    OUTLINED_FUNCTION_18_0(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
      OUTLINED_FUNCTION_240_0();
    }
  }

  v8 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1C87BAE2C()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
      OUTLINED_FUNCTION_18_0(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_264_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
        OUTLINED_FUNCTION_248_0();
      }
    }

    v7 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C87BB164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C87BB210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C87BB2B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87BB340(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87BB3C8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.jsonTranscript.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BB41C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.sessionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BB448()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientSessionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BB474()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientRequestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BB4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    if (a2 == 2147483646)
    {
      return OUTLINED_FUNCTION_23_2(v3 + *(a3 + 20));
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91E8, &qword_1C8BFA3D0);
    v10 = v3 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_1C87BB568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      OUTLINED_FUNCTION_27_6();
      return;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91E8, &qword_1C8BFA3D0);
    v12 = v4 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1C87BB630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_23_2(a1 + *(a3 + 20));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

void sub_1C87BB6CC(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v3, a2, a2, v7);
  }

  else
  {
    OUTLINED_FUNCTION_27_6();
  }
}

uint64_t sub_1C87BB764@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_TokenChain.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87BB794@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_TokenChain.locale.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87BB824@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolType.rawValue.getter();
  *a1 = result;
  return result;
}

BOOL sub_1C87BBB74@<W0>(_BOOL8 *a1@<X8>)
{
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87BD480()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BD4AC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property.displayName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BDE4C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.BOOL.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87BDEA0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.int.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BDFA4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.string.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BE034()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.dateComponents.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BE060()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.url.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BE08C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.attributedString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BE400()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.searchableItem.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BE5D8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.identificationHint.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BE884()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.timeZoneIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BE8B0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.era.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BE8FC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.year.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BE948()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.month.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BE994()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.day.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BE9E0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.hour.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BEA2C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.minute.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BEA78()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.second.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BEAC4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.nanosecond.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BEB10()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.weekday.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BEB5C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BEBA8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.quarter.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BEBF4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.weekOfMonth.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BEC40()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.weekOfYear.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BEC8C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87BECD8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar.localeIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BEEA4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.hydratedAppEntity.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BFA50()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BFBD4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.standaloneLinkQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BFCD0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.regularContentItemClass.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87BFECC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.rawGroupID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C0F40()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.limit.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C16EC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component.text.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C1718()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component.parameter.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C1744()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition.expectedResult.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C1850()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.description_p.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C30FC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.stateChange.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C31B4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C31E0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C3264()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.parameters.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C32F8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.outputResultName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C339C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.descriptionSummary.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C33C8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.categories.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C33F4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.searchKeywords.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C3498()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.requirements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C34C4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.flags.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C3548()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.sampleInvocations.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C3574()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.systemProtocols.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C3618()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.hiddenParameters.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C3714()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.visibilityFlags.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C3740()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.description_p.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C3BC4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category.subcategoryName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C3BF0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.workflowAsset.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C3C94()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon.background.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C3CC0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation.replacedByToolID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C3DB8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.remote.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C3DE4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.bundleVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C3E10()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.teamID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C3F08()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.remote.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C3F34()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.numericFormat.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C43E0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.data.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C4484()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.file.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C44B0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.tintColorData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C44DC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.configurationData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C45E8()
{
  OUTLINED_FUNCTION_23_0();
  result = Google_Protobuf_FileOptions.Siri_Nlu_External_IntelligenceFlow_toolKitProtoVersion.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C4638(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_221_0();

  return __swift_getEnumTagSinglePayload(v3, a2, v4);
}

uint64_t sub_1C87C4678()
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _s12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKitV14TypeIdentifierV9PrimitiveV19MeasurementUnitTypeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_1109(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKitV14TypeIdentifierV9PrimitiveV19MeasurementUnitTypeOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C87C4758(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_1109(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C87C476C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1C87C4804()
{
  OUTLINED_FUNCTION_166();
  if (v3)
  {
    return OUTLINED_FUNCTION_68_0(*v1);
  }

  v5 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_1033();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
    OUTLINED_FUNCTION_18_0(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_1083();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
      v7 = *(v2 + 48);
    }
  }

  v10 = OUTLINED_FUNCTION_21_0(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1C87C48F8()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v3 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_1038();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
      OUTLINED_FUNCTION_18_0(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_1086();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
        v5 = *(v0 + 48);
      }
    }

    v8 = OUTLINED_FUNCTION_102_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1C87C49F8()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    return OUTLINED_FUNCTION_68_0(*v1);
  }

  v4 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_241_0();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
    OUTLINED_FUNCTION_18_0(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_1151();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
      OUTLINED_FUNCTION_1033();
    }
  }

  v9 = OUTLINED_FUNCTION_21_0(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1C87C4AE8()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_249_0();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
      OUTLINED_FUNCTION_18_0(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_1155();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
        OUTLINED_FUNCTION_1038();
      }
    }

    v7 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C87C4C2C()
{
  OUTLINED_FUNCTION_166();
  if (v3)
  {
    return OUTLINED_FUNCTION_68_0(*v1);
  }

  v5 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAD8, &qword_1C8BFA9F8);
    OUTLINED_FUNCTION_18_0(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_240_0();
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAE0, &qword_1C8BFAA00);
      OUTLINED_FUNCTION_18_0(v10);
      if (*(v11 + 84) == v0)
      {
        OUTLINED_FUNCTION_241_0();
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAE8, &qword_1C8BFAA08);
        OUTLINED_FUNCTION_18_0(v12);
        if (*(v13 + 84) == v0)
        {
          OUTLINED_FUNCTION_1151();
        }

        else
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAF0, &qword_1C8BFAA10);
          OUTLINED_FUNCTION_18_0(v14);
          if (*(v15 + 84) == v0)
          {
            OUTLINED_FUNCTION_1033();
          }

          else
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAF8, &qword_1C8BFAA18);
            OUTLINED_FUNCTION_18_0(v16);
            if (*(v17 + 84) == v0)
            {
              OUTLINED_FUNCTION_1083();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB00, &unk_1C8BFAA20);
              v7 = *(v2 + 48);
            }
          }
        }
      }
    }
  }

  v18 = OUTLINED_FUNCTION_21_0(v7);

  return __swift_getEnumTagSinglePayload(v18, v19, v20);
}

void sub_1C87C4E40()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v3 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_264_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAD8, &qword_1C8BFA9F8);
      OUTLINED_FUNCTION_18_0(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_248_0();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAE0, &qword_1C8BFAA00);
        OUTLINED_FUNCTION_18_0(v8);
        if (*(v9 + 84) == v1)
        {
          OUTLINED_FUNCTION_249_0();
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAE8, &qword_1C8BFAA08);
          OUTLINED_FUNCTION_18_0(v10);
          if (*(v11 + 84) == v1)
          {
            OUTLINED_FUNCTION_1155();
          }

          else
          {
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAF0, &qword_1C8BFAA10);
            OUTLINED_FUNCTION_18_0(v12);
            if (*(v13 + 84) == v1)
            {
              OUTLINED_FUNCTION_1038();
            }

            else
            {
              v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAF8, &qword_1C8BFAA18);
              OUTLINED_FUNCTION_18_0(v14);
              if (*(v15 + 84) == v1)
              {
                OUTLINED_FUNCTION_1086();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB00, &unk_1C8BFAA20);
                v5 = *(v0 + 48);
              }
            }
          }
        }
      }
    }

    v16 = OUTLINED_FUNCTION_102_0(v5);

    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }
}

uint64_t sub_1C87C50A8()
{
  OUTLINED_FUNCTION_643();
  v1 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB30, &qword_1C8BFAA58);
    OUTLINED_FUNCTION_240_0();
  }

  v4 = OUTLINED_FUNCTION_21_0(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

uint64_t sub_1C87C5138(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_333();
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = *(a4 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB30, &qword_1C8BFAA58);
    v9 = *(a4 + 28);
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1C87C520C()
{
  OUTLINED_FUNCTION_643();
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    if (v0 == 2147483646)
    {
      OUTLINED_FUNCTION_766(*(v1 + 24));
      return OUTLINED_FUNCTION_986(v5);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
    OUTLINED_FUNCTION_240_0();
  }

  v7 = OUTLINED_FUNCTION_21_0(v4);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C87C52C4()
{
  OUTLINED_FUNCTION_533_0();
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_226_2();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_795();
      *(v5 + 8) = v0;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
    OUTLINED_FUNCTION_248_0();
  }

  v6 = OUTLINED_FUNCTION_102_0(v4);

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C87C53F4()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_68_0(*(v0 + 24));
  }

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_241_0();
  v4 = OUTLINED_FUNCTION_21_0(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C87C5454()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_102_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C87C54FC()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_122_1();
  }

  v3 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
    OUTLINED_FUNCTION_18_0(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_240_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
      OUTLINED_FUNCTION_241_0();
    }
  }

  v8 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1C87C55E8()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_264_0();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
      OUTLINED_FUNCTION_18_0(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_248_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
        OUTLINED_FUNCTION_249_0();
      }
    }

    v7 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C87C5798()
{
  OUTLINED_FUNCTION_643();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    v6 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v6);
    if (*(v7 + 84) != v0)
    {
      OUTLINED_FUNCTION_766(*(v1 + 24));
      return OUTLINED_FUNCTION_986(v9);
    }

    v4 = OUTLINED_FUNCTION_566();
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1C87C5870()
{
  OUTLINED_FUNCTION_533_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v4 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v4);
    if (*(v5 + 84) != v1)
    {
      OUTLINED_FUNCTION_795();
      *(v10 + 8) = v0;
      return;
    }

    OUTLINED_FUNCTION_648();
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C87C59A0(unsigned __int8 *a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *a1;
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_1033();
    v7 = OUTLINED_FUNCTION_21_0(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_1C87C5A14()
{
  OUTLINED_FUNCTION_12_0();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_1038();
    v4 = OUTLINED_FUNCTION_102_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C87C5AC8()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_122_1();
  }

  v3 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC98, &qword_1C8BFAB10);
    OUTLINED_FUNCTION_18_0(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD00, &qword_1C8BFAB40);
      OUTLINED_FUNCTION_18_0(v8);
      if (*(v9 + 84) == v0)
      {
        OUTLINED_FUNCTION_240_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC78, &qword_1C8BFAAF0);
        OUTLINED_FUNCTION_241_0();
      }
    }
  }

  v10 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1C87C5BFC()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC98, &qword_1C8BFAB10);
      OUTLINED_FUNCTION_18_0(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_264_0();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD00, &qword_1C8BFAB40);
        OUTLINED_FUNCTION_18_0(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_248_0();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC78, &qword_1C8BFAAF0);
          OUTLINED_FUNCTION_249_0();
        }
      }
    }

    v9 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_1C87C5D38()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_68_0(*(v0 + 16));
  }

  OUTLINED_FUNCTION_138();
  v3 = OUTLINED_FUNCTION_565();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1C87C5D98()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_264_0();
    v4 = OUTLINED_FUNCTION_102_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C87C5E08(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *(a1 + 12);
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_241_0();
    v7 = OUTLINED_FUNCTION_21_0(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_1C87C5E7C()
{
  OUTLINED_FUNCTION_12_0();
  if (v2 == 254)
  {
    *(v1 + 12) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_102_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C87C5F58(uint64_t a1, int a2)
{
  if (a2 == 253)
  {
    v2 = *(a1 + 16);
    if (v2 <= 1)
    {
      return 0;
    }

    else
    {
      return v2 ^ 0xFF;
    }
  }

  else
  {
    OUTLINED_FUNCTION_138();
    v4 = OUTLINED_FUNCTION_549();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void sub_1C87C5FC4()
{
  OUTLINED_FUNCTION_12_0();
  if (v2 == 253)
  {
    *(v1 + 16) = ~v0;
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_226_2();
    v4 = OUTLINED_FUNCTION_102_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C87C6028()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_68_0(*v0);
  }

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_240_0();
  v4 = OUTLINED_FUNCTION_21_0(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C87C6088()
{
  OUTLINED_FUNCTION_101_0();
  if (v0)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_248_0();
    v2 = OUTLINED_FUNCTION_102_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1C87C60EC()
{
  OUTLINED_FUNCTION_12_0();
  v3 = *(v2 + 28);
  v4 = sub_1C8BD49FC();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1C87C613C()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 28);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C87C61B4()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_122_1();
  }

  v3 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_240_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA88, &qword_1C8BFA998);
    OUTLINED_FUNCTION_241_0();
  }

  v6 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C87C6258()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_248_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA88, &qword_1C8BFA998);
      OUTLINED_FUNCTION_249_0();
    }

    v5 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C87C635C(unsigned __int8 *a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *a1;
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_138();
    v6 = OUTLINED_FUNCTION_549();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1C87C63D0()
{
  OUTLINED_FUNCTION_12_0();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_226_2();
    v4 = OUTLINED_FUNCTION_102_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C87C6468()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_122_1();
  }

  v3 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_1151();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
    OUTLINED_FUNCTION_1083();
  }

  v6 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C87C650C()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_1155();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
      OUTLINED_FUNCTION_1086();
    }

    v5 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C87C666C()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_122_1();
  }

  v3 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_1033();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE68, &qword_1C8BFAC20);
    OUTLINED_FUNCTION_1083();
  }

  v6 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C87C6710()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_1038();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE68, &qword_1C8BFAC20);
      OUTLINED_FUNCTION_1086();
    }

    v5 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C87C67E8()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_122_1();
  }

  v3 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_241_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE80, &qword_1C8BFAC38);
    OUTLINED_FUNCTION_1083();
  }

  v6 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C87C688C()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_249_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE80, &qword_1C8BFAC38);
      OUTLINED_FUNCTION_1086();
    }

    v5 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C87C6960()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_122_1();
  }

  v3 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE98, &qword_1C8BFAC50);
    OUTLINED_FUNCTION_18_0(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_240_0();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEA0, &qword_1C8BFAC58);
      OUTLINED_FUNCTION_18_0(v8);
      if (*(v9 + 84) == v0)
      {
        OUTLINED_FUNCTION_241_0();
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEA8, &qword_1C8BFAC60);
        OUTLINED_FUNCTION_18_0(v10);
        if (*(v11 + 84) == v0)
        {
          OUTLINED_FUNCTION_1151();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB0, &qword_1C8BFAC68);
          OUTLINED_FUNCTION_1033();
        }
      }
    }
  }

  v12 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void sub_1C87C6ADC()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_264_0();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE98, &qword_1C8BFAC50);
      OUTLINED_FUNCTION_18_0(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_248_0();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEA0, &qword_1C8BFAC58);
        OUTLINED_FUNCTION_18_0(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_249_0();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEA8, &qword_1C8BFAC60);
          OUTLINED_FUNCTION_18_0(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_1155();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB0, &qword_1C8BFAC68);
            OUTLINED_FUNCTION_1038();
          }
        }
      }
    }

    v11 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

uint64_t sub_1C87C6F5C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_SubwordToken.value.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87C6F8C@<X0>(_DWORD *a1@<X8>)
{
  result = Siri_Nlu_Internal_SubwordToken.subwordTokenIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87C6FE0@<X0>(_DWORD *a1@<X8>)
{
  result = Siri_Nlu_Internal_SubwordToken.tokenIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87C7034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C87C70F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87C72FC@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_Cdm_NluResponse.parses.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87C73A4@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_Cdm_NluResponse.repetitionResults.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87C74C4(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_68_0(*a1);
  }

  v7 = sub_1C8BD49FC();
  v8 = OUTLINED_FUNCTION_18_0(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
    v13 = OUTLINED_FUNCTION_18_0(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
      v11 = a3[7];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void *sub_1C87C75D8(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = OUTLINED_FUNCTION_18_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
      v14 = OUTLINED_FUNCTION_18_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
        v12 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C87C76F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_68_0(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1C87C778C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C87C79B4@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Snlc_SNLCParserRequest.matchingSpans.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87C7B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C87C7BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C87C7C9C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingSetup.locale.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87C7CCC@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingSetup.embeddingVersion.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87C7CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C87C7DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87C7E78()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_NLv4EmbeddingTensor.numToken.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C7EC8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_NLv4EmbeddingTensor.numLayer.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C7F18()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_NLv4EmbeddingTensor.embeddingDim.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C7F68()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_NLv4EmbeddingTensor.embedderID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C7F94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87C801C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87C809C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87C8124(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87C824C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Common_Int64Value.value.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C829C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Common_UInt64Value.value.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C82EC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Common_Int32Value.value.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C833C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Common_UInt32Value.value.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C838C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Common_BoolValue.value.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87C83E0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Common_StringValue.value.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C840C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Common_BytesValue.value.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C8438(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1C87C847C()
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  v0 = OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C87C84B8()
{
  v3 = OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v1)
  {
    v5 = OUTLINED_FUNCTION_226();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }

  else
  {
    v9 = *(v0 + *(v2 + 20));
    if (v9 >= 2)
    {
      v10 = ((v9 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v10 = -2;
    }

    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C87C8564(uint64_t a1, char a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_147_2();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C87C85F8()
{
  v3 = OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v1)
  {
    v5 = OUTLINED_FUNCTION_226();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }

  else
  {
    v9 = *(v0 + *(v2 + 20) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C87C8698(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_147_2();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87C8730()
{
  v3 = OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v1)
  {
    v5 = OUTLINED_FUNCTION_226();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }

  else
  {
    v9 = *(v0 + *(v2 + 20) + 8) >> 60;
    v10 = ((4 * v9) & 0xC) == 0;
    v11 = ((4 * v9) & 0xC | (v9 >> 2)) ^ 0xF;
    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t sub_1C87C87CC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_147_2();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    v15 = (v4 + *(a4 + 20));
    *v15 = 0;
    v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_1C87C88B4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MatchingSpan.label.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C88E0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MatchingSpan.input.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C890C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MatchingSpan.startTokenIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C895C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MatchingSpan.endTokenIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C8A24()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MatchingSpan.matcherNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C8AC8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_MatchingSpan.semanticValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C8D4C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_SiriVocabularySpanData.priorOrdinality.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C8FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_68_0(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1C87C9048(uint64_t a1, int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_147_2();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C87C9108(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1C87C914C()
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  v0 = OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C87C91F8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Queryrewrite_QRToken.value.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C9224()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Queryrewrite_QRToken.startIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C9274()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Queryrewrite_QRToken.endIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C9314()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Queryrewrite_QRToken.phoneSequence.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C9340()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Queryrewrite_QRToken.removeSpaceAfter.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87C93E4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Queryrewrite_QRUtterance.utterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C9460()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Queryrewrite_QRInteraction.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C948C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Queryrewrite_QRInteraction.tap2Edit.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87C94E0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Queryrewrite_QRInteraction.startTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87C9580()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Queryrewrite_QRHypothesis.utterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87C9604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20) + 8);
    OUTLINED_FUNCTION_61_1();
    return OUTLINED_FUNCTION_73_1(v11);
  }
}

uint64_t sub_1C87C96A4(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87C9740(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    OUTLINED_FUNCTION_61_1();
    return (v5 + 1);
  }

  else
  {
    v9 = sub_1C8BD49FC();
    v10 = OUTLINED_FUNCTION_18_0(v9);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(a3 + 24);
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v13 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v13, a2, v12);
  }
}

void sub_1C87C980C()
{
  OUTLINED_FUNCTION_101_0();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(v5 + 28);
    }

    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

uint64_t sub_1C87C98CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    OUTLINED_FUNCTION_61_1();
    return (v5 + 1);
  }

  else
  {
    v9 = sub_1C8BD49FC();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void sub_1C87C994C()
{
  OUTLINED_FUNCTION_101_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1C8BD49FC();
    v5 = *(v4 + 24);
    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C87C99BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    v12 = OUTLINED_FUNCTION_18_0(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(v3 + *(a3 + 24) + 8);
      OUTLINED_FUNCTION_61_1();
      return OUTLINED_FUNCTION_73_1(v16);
    }

    v9 = v12;
    v10 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1C87C9AAC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v8);
  if (*(v9 + 84) == a3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    result = OUTLINED_FUNCTION_18_0(v10);
    if (*(v12 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v13 = v4 + *(a4 + 20);
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_1C87C9BE8@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_MultilingualVariant.languageVariantName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1C87C9C6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = OUTLINED_FUNCTION_18_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
      v12 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C87C9D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C87C9DF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87C9EBC@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_SsuInference_SsuInferenceRequest.utterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87C9EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v12 = OUTLINED_FUNCTION_18_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1C87C9FF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C8BD49FC();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
    result = OUTLINED_FUNCTION_18_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1C87CA130()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CA22C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingDim.getter();
  *v0 = result;
  return result;
}