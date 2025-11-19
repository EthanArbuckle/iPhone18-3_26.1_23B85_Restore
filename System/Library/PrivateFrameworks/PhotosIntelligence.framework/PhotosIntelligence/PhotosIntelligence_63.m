void sub_1C7416858(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = a4;
  v60 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v49 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v13 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v13)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v12;
  v64 = a1;
  v63 = v61;
  v55 = (v9 + 8);
  v56 = (v9 + 16);
  v17 = v14 / v12;
  if (v16 >= v14 / v12)
  {
    v31 = v61;
    sub_1C741E628(a2, v14 / v12, v61);
    v32 = v31 + v17 * v12;
    v33 = -v12;
    v34 = v32;
    v51 = -v12;
    v52 = a1;
LABEL_36:
    v35 = v34;
    v53 = a2;
    v54 = a2 + v33;
    v36 = a3;
    v49 = v34;
    while (1)
    {
      if (v32 <= v61)
      {
        v64 = a2;
        v62 = v35;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v35;
      v59 = v36 + v33;
      v37 = v32 + v33;
      v38 = v57;
      v39 = *v56;
      v40 = v32;
      v41 = v60;
      (*v56)(v57, v37, v60);
      v42 = v58;
      v39(v58, v54, v41);
      LOBYTE(v39) = sub_1C754DEDC();
      v43 = *v55;
      (*v55)(v42, v41);
      v43(v38, v41);
      if (v39)
      {
        v32 = v40;
        a3 = v59;
        if (v36 < v53 || v59 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v50;
          v33 = v51;
          a1 = v52;
        }

        else
        {
          v47 = v50;
          v33 = v51;
          v34 = v50;
          v13 = v36 == v53;
          v48 = v54;
          a2 = v54;
          a1 = v52;
          if (!v13)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v48;
            v34 = v47;
          }
        }

        goto LABEL_36;
      }

      v44 = v59;
      if (v36 < v40 || v59 >= v40)
      {
        swift_arrayInitWithTakeFrontToBack();
        v36 = v44;
        v32 = v37;
        v35 = v37;
        a1 = v52;
        a2 = v53;
        v33 = v51;
      }

      else
      {
        v35 = v37;
        v13 = v40 == v36;
        v36 = v59;
        v32 = v37;
        a1 = v52;
        a2 = v53;
        v33 = v51;
        if (!v13)
        {
          swift_arrayInitWithTakeBackToFront();
          v36 = v44;
          v32 = v37;
          v35 = v37;
        }
      }
    }

    v64 = a2;
    v62 = v49;
  }

  else
  {
    v18 = v61;
    sub_1C741E628(a1, (a2 - a1) / v12, v61);
    v54 = v18 + v16 * v12;
    v62 = v54;
    v59 = a3;
    while (v61 < v54 && a2 < a3)
    {
      v20 = a1;
      v21 = v57;
      v22 = *v56;
      v23 = v60;
      (*v56)(v57, a2, v60);
      v24 = v58;
      v22(v58, v61, v23);
      LOBYTE(v22) = sub_1C754DEDC();
      v25 = a2;
      v26 = *v55;
      (*v55)(v24, v23);
      v26(v21, v23);
      if (v22)
      {
        a2 = v25 + v12;
        v27 = v20;
        if (v20 < v25 || v20 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v59;
        }

        else
        {
          a3 = v59;
          if (v20 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v29 = v61 + v12;
        v27 = v20;
        if (v20 < v61 || v20 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v25;
          a3 = v59;
        }

        else
        {
          a2 = v25;
          a3 = v59;
          if (v20 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v63 = v29;
        v61 = v29;
      }

      a1 = v27 + v12;
      v64 = a1;
    }
  }

LABEL_58:
  sub_1C74208E4(&v64, &v63, &v62);
}

uint64_t sub_1C7416D60(void *a1)
{
  v1 = [a1 displayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

uint64_t GroundedGenericLocation.init(text:type:synonyms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for GroundedGenericLocation();
  v9 = *(v8 + 20);
  sub_1C754F4DC();
  OUTLINED_FUNCTION_12();
  result = (*(v10 + 32))(&a5[v9], a3);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

uint64_t type metadata accessor for GroundedGenericLocation()
{
  result = qword_1EDD0DF18;
  if (!qword_1EDD0DF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static GroundedGenericLocation.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for GroundedGenericLocation();
  if ((sub_1C6FA1070(a1 + *(v5 + 20), a2 + *(v5 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1C70020D4(v7, v8);
}

uint64_t GroundedGenericLocation.text.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t GroundedGenericLocation.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroundedGenericLocation() + 20);
  sub_1C754F4DC();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t GroundedGenericLocation.synonyms.getter()
{
  type metadata accessor for GroundedGenericLocation();

  return sub_1C75504FC();
}

uint64_t GroundedGenericLocation.description.getter()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000001ELL, 0x80000001C75AFEC0);
  MEMORY[0x1CCA5CD70](*v0, v0[1]);
  MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
  v1 = type metadata accessor for GroundedGenericLocation();
  v2 = sub_1C754F4CC();
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](0x796E6F6E7973202CLL, 0xEC000000203A736DLL);
  v3 = MEMORY[0x1CCA5D090](*(v0 + *(v1 + 24)), MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v3);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C7417240(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C7417358(char a1)
{
  if (!a1)
  {
    return 1954047348;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x736D796E6F6E7973;
}

uint64_t sub_1C74173A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7417240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C74173D0(uint64_t a1)
{
  v2 = sub_1C7417C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C741740C(uint64_t a1)
{
  v2 = sub_1C7417C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroundedGenericLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BC48);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7417C50();
  sub_1C755200C();
  v18 = 0;
  sub_1C7551CCC();
  if (!v2)
  {
    v11 = type metadata accessor for GroundedGenericLocation();
    v17 = 1;
    sub_1C754F4DC();
    OUTLINED_FUNCTION_0_176();
    sub_1C7417F8C(v12, v13);
    OUTLINED_FUNCTION_4_102();
    v16 = *(v3 + *(v11 + 24));
    v15[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FF60E4(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_4_102();
  }

  return (*(v7 + 8))(v10, v5);
}

void GroundedGenericLocation.hash(into:)()
{
  sub_1C75505AC();
  type metadata accessor for GroundedGenericLocation();
  sub_1C754F4DC();
  OUTLINED_FUNCTION_0_176();
  sub_1C7417F8C(v0, v1);
  sub_1C755059C();

  sub_1C70418D0();
}

uint64_t GroundedGenericLocation.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  type metadata accessor for GroundedGenericLocation();
  sub_1C754F4DC();
  OUTLINED_FUNCTION_0_176();
  sub_1C7417F8C(v0, v1);
  sub_1C755059C();
  sub_1C70418D0();
  return sub_1C7551FAC();
}

uint64_t GroundedGenericLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v30 = sub_1C754F4DC();
  OUTLINED_FUNCTION_3_0();
  v32 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BC60);
  OUTLINED_FUNCTION_3_0();
  v29 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for GroundedGenericLocation();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7417C50();
  v13 = v33;
  sub_1C7551FFC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = a1;
  v14 = v6;
  v27 = v9;
  v15 = v30;
  v16 = v32;
  v37 = 0;
  v17 = sub_1C7551BBC();
  v19 = v18;
  *v12 = v17;
  v12[1] = v18;
  v36 = 1;
  OUTLINED_FUNCTION_0_176();
  sub_1C7417F8C(v20, v21);
  sub_1C7551C1C();
  v26[1] = v19;
  (*(v16 + 32))(v12 + *(v27 + 20), v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  v35 = 2;
  sub_1C6FF60E4(&qword_1EDD0CF50);
  sub_1C7551C1C();
  v22 = OUTLINED_FUNCTION_1_131();
  v23(v22);
  v24 = v28;
  *(v12 + *(v27 + 24)) = v34;
  sub_1C72BD52C(v12, v24);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1C71AFE7C(v12);
}

uint64_t sub_1C7417B98()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C754F4DC();
  sub_1C7417F8C(&qword_1EC216340, MEMORY[0x1E69C18A8]);
  sub_1C755059C();
  sub_1C70418D0();
  return sub_1C7551FAC();
}

unint64_t sub_1C7417C50()
{
  result = qword_1EC21BC50;
  if (!qword_1EC21BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BC50);
  }

  return result;
}

void sub_1C7417D14()
{
  sub_1C754F4DC();
  if (v0 <= 0x3F)
  {
    sub_1C704303C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for GroundedGenericLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7417E88()
{
  result = qword_1EC21BC78;
  if (!qword_1EC21BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BC78);
  }

  return result;
}

unint64_t sub_1C7417EE0()
{
  result = qword_1EC21BC80;
  if (!qword_1EC21BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BC80);
  }

  return result;
}

unint64_t sub_1C7417F38()
{
  result = qword_1EC21BC88;
  if (!qword_1EC21BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BC88);
  }

  return result;
}

uint64_t sub_1C7417F8C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C7417FD4(uint64_t a1)
{
  v3 = type metadata accessor for Hastings.Feature();
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v26[1] = v1;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v6 = v35;
    v9 = sub_1C719D92C(a1);
    v10 = 0;
    v34 = a1 + 56;
    v27 = a1 + 64;
    v28 = v5;
    v29 = a1;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(a1 + 32))
      {
        v11 = v9 >> 6;
        if ((*(v34 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v7)
        {
          goto LABEL_25;
        }

        v33 = v8;
        v32 = v7;
        v12 = v30;
        sub_1C74228D0();
        v14 = *v12;
        v13 = v12[1];
        sub_1C75504FC();
        sub_1C7422928(v12, type metadata accessor for Hastings.Feature);
        v35 = v6;
        v15 = *(v6 + 16);
        if (v15 >= *(v6 + 24) >> 1)
        {
          sub_1C6F7ED9C();
          v6 = v35;
        }

        *(v6 + 16) = v15 + 1;
        v16 = v6 + 16 * v15;
        *(v16 + 32) = v14;
        *(v16 + 40) = v13;
        if (v33)
        {
          goto LABEL_29;
        }

        a1 = v29;
        v17 = 1 << *(v29 + 32);
        if (v9 >= v17)
        {
          goto LABEL_26;
        }

        v18 = *(v34 + 8 * v11);
        if ((v18 & (1 << v9)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v29 + 36) != v32)
        {
          goto LABEL_28;
        }

        v19 = v18 & (-2 << (v9 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v20 = v28;
        }

        else
        {
          v21 = v11 << 6;
          v22 = v11 + 1;
          v20 = v28;
          v23 = (v27 + 8 * v11);
          while (v22 < (v17 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              sub_1C6F9ED50(v9, v32, 0);
              v17 = __clz(__rbit64(v24)) + v21;
              goto LABEL_19;
            }
          }

          sub_1C6F9ED50(v9, v32, 0);
        }

LABEL_19:
        if (++v10 == v20)
        {
          return;
        }

        v8 = 0;
        v7 = *(a1 + 36);
        v9 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1C74182C8(uint64_t a1)
{
  v62 = sub_1C754F58C();
  v2 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v56 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v56 - v7;
  v8 = type metadata accessor for Hastings.Feature();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v60 = v2 + 16;
  v61 = v2;
  v66 = a1;
  sub_1C75504FC();
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC8];
  v63 = a1 + 64;
  if (v14)
  {
    while (1)
    {
      v18 = v16;
LABEL_8:
      sub_1C74228D0();
      v19 = *(v65 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      v68 = v17;
      sub_1C6FC286C();
      if (__OFADD__(v17[2], (v21 & 1) == 0))
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BD88);
      v24 = sub_1C7551A2C();
      v17 = v68;
      if (v24)
      {
        sub_1C6FC286C();
        if ((v23 & 1) != (v26 & 1))
        {
          goto LABEL_32;
        }

        v22 = v25;
      }

      if ((v23 & 1) == 0)
      {
        v17[(v22 >> 6) + 8] |= 1 << v22;
        (*(v61 + 16))(v17[6] + *(v61 + 72) * v22, &v10[v19], v62);
        *(v17[7] + 8 * v22) = 0;
        v27 = v17[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_31;
        }

        v17[2] = v29;
      }

      v30 = v17[7];
      v31 = *(v30 + 8 * v22);
      v28 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v28)
      {
        goto LABEL_30;
      }

      v14 &= v14 - 1;
      *(v30 + 8 * v22) = v32;
      sub_1C7422928(v10, type metadata accessor for Hastings.Feature);
      v16 = v18;
      v11 = v63;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v18 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    v68 = 91;
    v69 = 0xE100000000000000;
    v34 = v61;
    v33 = v62;
    v35 = *(v61 + 104);
    v36 = v57;
    v35(v57, *MEMORY[0x1E69C1920], v62);
    v37 = sub_1C6FE0F40(v36, v17);
    v39 = v38;
    v40 = *(v34 + 8);
    v40(v36, v33);
    if (v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = v37;
    }

    v67 = v41;
    v42 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v42);

    MEMORY[0x1CCA5CD70](47, 0xE100000000000000);
    v43 = v58;
    v35(v58, *MEMORY[0x1E69C1918], v33);
    v44 = sub_1C6FE0F40(v43, v17);
    v46 = v45;
    v40(v43, v33);
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      v47 = v44;
    }

    v67 = v47;
    v48 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v48);

    MEMORY[0x1CCA5CD70](47, 0xE100000000000000);
    v49 = v59;
    v35(v59, *MEMORY[0x1E69C1910], v33);
    v50 = sub_1C6FE0F40(v49, v17);
    v52 = v51;

    v40(v49, v33);
    if (v52)
    {
      v53 = 0;
    }

    else
    {
      v53 = v50;
    }

    v67 = v53;
    v54 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v54);

    MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
    return v68;
  }

  return result;
}

uint64_t sub_1C7418830(uint64_t a1)
{
  v62 = sub_1C754F58C();
  v2 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v56 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v56 - v7;
  v8 = type metadata accessor for Hastings.Feature();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v60 = v2 + 16;
  v61 = v2;
  v66 = a1;
  sub_1C75504FC();
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC8];
  v63 = a1 + 56;
  if (v14)
  {
    while (1)
    {
      v18 = v16;
LABEL_8:
      sub_1C74228D0();
      v19 = *(v65 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      v68 = v17;
      sub_1C6FC286C();
      if (__OFADD__(v17[2], (v21 & 1) == 0))
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BD88);
      v24 = sub_1C7551A2C();
      v17 = v68;
      if (v24)
      {
        sub_1C6FC286C();
        if ((v23 & 1) != (v26 & 1))
        {
          goto LABEL_32;
        }

        v22 = v25;
      }

      if ((v23 & 1) == 0)
      {
        v17[(v22 >> 6) + 8] |= 1 << v22;
        (*(v61 + 16))(v17[6] + *(v61 + 72) * v22, &v10[v19], v62);
        *(v17[7] + 8 * v22) = 0;
        v27 = v17[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_31;
        }

        v17[2] = v29;
      }

      v30 = v17[7];
      v31 = *(v30 + 8 * v22);
      v28 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v28)
      {
        goto LABEL_30;
      }

      v14 &= v14 - 1;
      *(v30 + 8 * v22) = v32;
      sub_1C7422928(v10, type metadata accessor for Hastings.Feature);
      v16 = v18;
      v11 = v63;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v18 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    v68 = 91;
    v69 = 0xE100000000000000;
    v34 = v61;
    v33 = v62;
    v35 = *(v61 + 104);
    v36 = v57;
    v35(v57, *MEMORY[0x1E69C1920], v62);
    v37 = sub_1C6FE0F40(v36, v17);
    v39 = v38;
    v40 = *(v34 + 8);
    v40(v36, v33);
    if (v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = v37;
    }

    v67 = v41;
    v42 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v42);

    MEMORY[0x1CCA5CD70](47, 0xE100000000000000);
    v43 = v58;
    v35(v58, *MEMORY[0x1E69C1918], v33);
    v44 = sub_1C6FE0F40(v43, v17);
    v46 = v45;
    v40(v43, v33);
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      v47 = v44;
    }

    v67 = v47;
    v48 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v48);

    MEMORY[0x1CCA5CD70](47, 0xE100000000000000);
    v49 = v59;
    v35(v59, *MEMORY[0x1E69C1910], v33);
    v50 = sub_1C6FE0F40(v49, v17);
    v52 = v51;

    v40(v49, v33);
    if (v52)
    {
      v53 = 0;
    }

    else
    {
      v53 = v50;
    }

    v67 = v53;
    v54 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v54);

    MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
    return v68;
  }

  return result;
}

void sub_1C7418D98(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422EDC();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C741E950(v6);
  *a1 = v3;
}

void Hastings.ClusterAssetElector.ElectedAssetIterator.next()()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v134 = v3;
  v4 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v130 - v9;
  v139 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0);
  OUTLINED_FUNCTION_3_0();
  v133 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v130 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A28);
  v18 = OUTLINED_FUNCTION_76(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_2();
  v147 = v19;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_84_14();
  v22 = type metadata accessor for Hastings.Asset(v21);
  OUTLINED_FUNCTION_3_0();
  v151 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v130 - v27);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_130();
  v148 = v30;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C741DB6C();
  OUTLINED_FUNCTION_80_4(v1, 1, v22);
  if (!v49)
  {
    sub_1C7422980();
    sub_1C7422980();
    OUTLINED_FUNCTION_25_8();
    v120 = v22;
    goto LABEL_44;
  }

  v146 = v22;
  sub_1C6FD7FC8(v1, &qword_1EC216A28);
  v145 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v150 = v145[17];
  v33 = *(v0 + v150);
  v34 = *(v33 + 16);
  if (!v34)
  {
LABEL_43:
    OUTLINED_FUNCTION_84();
    v120 = v146;
LABEL_44:
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
LABEL_45:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v149 = v145[18];
  v136 = (v6 + 16);
  v135 = v6 + 8;
  *&v32 = 136315394;
  v130 = v32;
  v131 = v10;
  v142 = v0;
  v137 = v4;
  v143 = v16;
  while (1)
  {
    v35 = *(v2 + v149);
    if ((v35 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v35 >= v34)
    {
      goto LABEL_50;
    }

    v36 = OUTLINED_FUNCTION_78_16();
    sub_1C6FB5E28(v36, v37);
    __swift_mutable_project_boxed_opaque_existential_0(v154, v154[3]);
    v38 = v147;
    sub_1C755150C();
    OUTLINED_FUNCTION_80_4(v38, 1, v146);
    if (!v49)
    {
      OUTLINED_FUNCTION_6_104();
      sub_1C7422980();
      v144 = v145[13];
      v42 = *(v2 + v144);
      if (*(v42 + 16))
      {
        sub_1C7551F3C();
        v43 = *v148;
        v44 = v148[1];
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_9_2();
        v47 = ~v46;
        while (1)
        {
          v48 = v45 & v47;
          if (((*(v42 + 56 + (((v45 & v47) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v47)) & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_2_122();
          sub_1C74228D0();
          v49 = *v28 == v43 && v28[1] == v44;
          if (v49)
          {
            OUTLINED_FUNCTION_3_112();
            sub_1C7422928(v28, v109);
LABEL_37:
            OUTLINED_FUNCTION_3_112();
            sub_1C7422928(v148, v110);
            v2 = v142;
            goto LABEL_42;
          }

          v50 = sub_1C7551DBC();
          OUTLINED_FUNCTION_3_112();
          sub_1C7422928(v28, v51);
          v45 = v48 + 1;
          if (v50)
          {
            goto LABEL_37;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C70E3D64();
        v33 = v116;
      }

      v2 = v142;
      v52 = v141;
      v53 = v140;
      v54 = v143;
      if (v35 >= *(v33 + 16))
      {
        goto LABEL_52;
      }

      v55 = OUTLINED_FUNCTION_78_16();
      __swift_assign_boxed_opaque_existential_1(v55, v56);
      *(v2 + v150) = v33;
      v57 = *(v33 + 16);
      if (!v57)
      {
        goto LABEL_53;
      }

      v58 = (v35 + 1) % v57;
      v59 = v148;
      *(v2 + v149) = v58;
      sub_1C74228D0();
      v60 = v138;
      sub_1C70F0914();
      sub_1C7422928(v60, type metadata accessor for Hastings.Asset);
      v61 = v145;
      v62 = sub_1C6FE0FD0(v59, *(v2 + v145[7]));
      if (v62)
      {
        v63 = v62;
      }

      else
      {
        v63 = MEMORY[0x1E69E7CD0];
      }

      sub_1C74228D0();
      v64 = v139;
      *(v54 + *(v139 + 20)) = v63;
      *(v54 + *(v64 + 24)) = 0;
      sub_1C75504FC();
      Hastings.ClusterAssetElector.ElectedAssetIterator.process(asset:)();
      if (v152 == 1)
      {
        v86 = v61[19];
        sub_1C6FB0664();
        v87 = *(*(v2 + v86) + 16);
        sub_1C6FB0F4C();
        v88 = *(v2 + v86);
        *(v88 + 16) = v87 + 1;
        sub_1C74228D0();
        *(v2 + v86) = v88;
        (*v136)(v131, v2, v137);
        v89 = v132;
        sub_1C74228D0();
        sub_1C75504FC();
        v90 = sub_1C754FEEC();
        v91 = sub_1C755117C();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = OUTLINED_FUNCTION_23_1();
          v93 = OUTLINED_FUNCTION_49_1();
          v94 = OUTLINED_FUNCTION_41_41(v93);

          *(v92 + 4) = v94;
          *(v92 + 12) = 2080;
          v95 = Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset.description.getter();
          v97 = v96;
          OUTLINED_FUNCTION_1_132();
          v98 = v89;
          v100 = v99;
          sub_1C7422928(v98, v101);
          v102 = sub_1C6F765A4(v95, v97, v153);

          *(v92 + 14) = v102;
          _os_log_impl(&dword_1C6F5C000, v90, v91, "Cluster %s: %s\n\tadding to waiting room", v92, 0x16u);
          OUTLINED_FUNCTION_65_26();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0](v103, v104);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0](v105, v106);

          v107 = OUTLINED_FUNCTION_24_43();
          v108(v107);
          v84 = v143;
          v85 = v100;
          goto LABEL_41;
        }

        v111 = v89;
      }

      else
      {
        if (v152 != 2)
        {
          OUTLINED_FUNCTION_1_132();
          sub_1C7422928(v54, v126);

          OUTLINED_FUNCTION_6_104();
          sub_1C7422980();
          OUTLINED_FUNCTION_25_8();
          __swift_storeEnumTagSinglePayload(v127, v128, v129, v146);
          goto LABEL_48;
        }

        (*v136)(v52, v2, v137);
        OUTLINED_FUNCTION_30_43();
        sub_1C74228D0();
        sub_1C75504FC();
        v65 = sub_1C754FEEC();
        v66 = sub_1C755117C();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = OUTLINED_FUNCTION_23_1();
          v68 = OUTLINED_FUNCTION_49_1();
          v69 = OUTLINED_FUNCTION_41_41(v68);

          *(v67 + 4) = v69;
          *(v67 + 12) = 2080;
          v70 = Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset.description.getter();
          v72 = v71;
          OUTLINED_FUNCTION_1_132();
          v73 = v53;
          v75 = v74;
          sub_1C7422928(v73, v76);
          v77 = sub_1C6F765A4(v70, v72, v153);

          *(v67 + 14) = v77;
          _os_log_impl(&dword_1C6F5C000, v65, v66, "Cluster %s: %s\n\tdiscarding", v67, 0x16u);
          OUTLINED_FUNCTION_65_26();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0](v78, v79);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0](v80, v81);

          v82 = OUTLINED_FUNCTION_24_43();
          v83(v82);
          v84 = v143;
          v85 = v75;
LABEL_41:
          sub_1C7422928(v84, v85);
          OUTLINED_FUNCTION_3_112();
          sub_1C7422928(v148, v114);
          goto LABEL_42;
        }

        v111 = v53;
      }

      sub_1C7422928(v111, type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset);
      v112 = OUTLINED_FUNCTION_24_43();
      v113(v112);
      v84 = v143;
      v85 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset;
      goto LABEL_41;
    }

    sub_1C6FD7FC8(v38, &qword_1EC216A28);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C70E3D64();
      v33 = v115;
    }

    v39 = *(v33 + 16);
    if (v35 >= v39)
    {
      goto LABEL_51;
    }

    v40 = v39 - 1;
    v41 = v33 + 40 * v35;
    __swift_destroy_boxed_opaque_existential_1(v41 + 32);
    memmove((v41 + 32), (v41 + 72), 40 * (v40 - v35));
    *(v33 + 16) = v40;
    *(v2 + v150) = v33;
    if (!v40)
    {
      sub_1C741DAC8();
      v121 = v145;
      sub_1C75504FC();
      sub_1C706D1DC();
      v123 = v122;
      v124 = v121[15];

      *(v2 + v124) = v123;
      v125 = v121[16];

      *(v2 + v125) = MEMORY[0x1E69E7CD0];
      sub_1C741DB6C();
LABEL_48:
      __swift_destroy_boxed_opaque_existential_1(v154);
      goto LABEL_45;
    }

    *(v2 + v149) = v35 % v40;
LABEL_42:
    __swift_destroy_boxed_opaque_existential_1(v154);
    v33 = *(v2 + v150);
    v34 = *(v33 + 16);
    if (!v34)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_1C741999C()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for Hastings.Feature();
  v2 = OUTLINED_FUNCTION_76(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_2();
  v63 = v3;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A08);
  v8 = OUTLINED_FUNCTION_76(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v57 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v64 = sub_1C739D0F4(*(v0 + *(v57 + 24)));
  v15 = 0;
  sub_1C7418D98(&v64);
  v16 = 0;
  v17 = v64;
  v18 = *(v64 + 16);
  *&v19 = 136315906;
  v53 = v19;
  v54 = v0;
  v60 = v14;
  v61 = v11;
  v58 = v18;
  v59 = v64;
  while (1)
  {
    if (v16 == v18)
    {
      v20 = OUTLINED_FUNCTION_431();
      __swift_instantiateConcreteTypeFromMangledNameV2(v20);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      v62 = v18;
      goto LABEL_7;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *(v17 + 16))
    {
      goto LABEL_14;
    }

    v25 = OUTLINED_FUNCTION_431();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v25);
    sub_1C6FD7F70();
    v62 = v16 + 1;
    OUTLINED_FUNCTION_25_8();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
LABEL_7:
    sub_1C7091CBC();
    v30 = OUTLINED_FUNCTION_431();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v30);
    OUTLINED_FUNCTION_80_4(v14, 1, v31);
    if (v32)
    {

      OUTLINED_FUNCTION_25_0();
      return;
    }

    v33 = *&v14[*(v31 + 48)];
    OUTLINED_FUNCTION_27_49();
    v34 = sub_1C7422980();
    MEMORY[0x1EEE9AC00](v34);
    *(&v53 - 2) = v0;
    sub_1C75504FC();
    sub_1C706CDA4(sub_1C7423B38, (&v53 - 2), v33);
    v36 = *(v35 + 16);

    v37 = (v0 + *(v57 + 40));
    v38 = *v37;
    v39 = v37[1];
    OUTLINED_FUNCTION_4_103();
    sub_1C74228D0();
    sub_1C75504FC();
    sub_1C75504FC();
    v40 = sub_1C754FEEC();
    v41 = v6;
    v42 = sub_1C75511BC();

    if (os_log_type_enabled(v40, v42))
    {
      v43 = swift_slowAlloc();
      v55 = v36;
      v44 = v43;
      v45 = OUTLINED_FUNCTION_49_1();
      v46 = v63;
      v64 = v45;
      *v44 = v53;
      *(v44 + 4) = sub_1C6F765A4(v38, v39, &v64);
      *(v44 + 12) = 2080;
      v47 = Hastings.Feature.description.getter();
      v49 = v48;
      v56 = v15;
      sub_1C7422928(v46, type metadata accessor for Hastings.Feature);
      v50 = sub_1C6F765A4(v47, v49, &v64);

      *(v44 + 14) = v50;
      *(v44 + 22) = 2048;
      *(v44 + 24) = v55;
      *(v44 + 32) = 2048;
      v51 = *(v33 + 16);

      *(v44 + 34) = v51;

      _os_log_impl(&dword_1C6F5C000, v40, v42, "Cluster %s: Feature '%s' represented by %ld assets out of %ld available", v44, 0x2Au);
      OUTLINED_FUNCTION_82_20();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v0 = v54;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      v52 = v41;
      v15 = v56;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      sub_1C7422928(v63, type metadata accessor for Hastings.Feature);
      v52 = v41;
    }

    sub_1C7422928(v52, type metadata accessor for Hastings.Feature);
    v6 = v41;
    v14 = v60;
    v18 = v58;
    v17 = v59;
    v16 = v62;
  }

  __break(1u);
LABEL_14:
  __break(1u);

  __break(1u);
}

void Hastings.ClusterAssetElector.ElectedAssetIterator.init(from:assetsByFeature:assetDependencySets:requiredAssets:id:diagnosticReporter:)()
{
  OUTLINED_FUNCTION_33();
  v88 = v0;
  v87 = v1;
  v86 = v2;
  v85 = v3;
  v5 = v4;
  v7 = v6;
  v99 = v8;
  isUniquelyReferenced_nonNull_native = v9;
  type metadata accessor for Hastings.Asset(0);
  OUTLINED_FUNCTION_3_0();
  v103 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_130();
  v111 = v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_140_1();
  v105 = v24;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v27);
  if (qword_1EC2140D8 != -1)
  {
    goto LABEL_73;
  }

LABEL_2:
  v28 = sub_1C754FF1C();
  v29 = __swift_project_value_buffer(v28, qword_1EC21BC98);
  (*(*(v28 - 8) + 16))(isUniquelyReferenced_nonNull_native, v29, v28);
  v30 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v31 = MEMORY[0x1E69E7CD0];
  *(isUniquelyReferenced_nonNull_native + v30[12]) = MEMORY[0x1E69E7CD0];
  *(isUniquelyReferenced_nonNull_native + v30[13]) = v31;
  *(isUniquelyReferenced_nonNull_native + v30[14]) = v31;
  *(isUniquelyReferenced_nonNull_native + v30[15]) = v31;
  *(isUniquelyReferenced_nonNull_native + v30[18]) = 0;
  v32 = MEMORY[0x1E69E7CC0];
  *(isUniquelyReferenced_nonNull_native + v30[19]) = MEMORY[0x1E69E7CC0];
  *(isUniquelyReferenced_nonNull_native + v30[20]) = v32;
  *(isUniquelyReferenced_nonNull_native + v30[5]) = v5;
  v90 = v30;
  v89 = isUniquelyReferenced_nonNull_native;
  *(isUniquelyReferenced_nonNull_native + v30[6]) = v7;
  v5 = v7 + 64;
  v33 = 1 << *(v7 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & *(v7 + 64);
  v94 = (v33 + 63) >> 6;
  v95 = v7;
  swift_bridgeObjectRetain_n();
  v36 = 0;
  v37 = MEMORY[0x1E69E7CC8];
  v91 = v7 + 64;
  v101 = v15;
LABEL_6:
  if (v35)
  {
    v38 = v95;
    goto LABEL_13;
  }

  v38 = v95;
  while (1)
  {
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
LABEL_72:
      __break(1u);
LABEL_73:
      swift_once();
      goto LABEL_2;
    }

    if (v39 >= v94)
    {
      break;
    }

    v35 = *(v5 + 8 * v39);
    ++v36;
    if (v35)
    {
      v36 = v39;
LABEL_13:
      v96 = v35;
      v97 = v36;
      v40 = __clz(__rbit64(v35)) | (v36 << 6);
      v41 = v38;
      OUTLINED_FUNCTION_4_103();
      sub_1C74228D0();
      *(v98 + *(v93 + 48)) = *(*(v41 + 56) + 8 * v40);
      isUniquelyReferenced_nonNull_native = v92;
      sub_1C6FD7F70();
      v42 = *(v92 + *(v93 + 48));
      OUTLINED_FUNCTION_27_49();
      sub_1C7422980();
      v104 = *(v42 + 16);
      if (v104)
      {
        sub_1C75504FC();
        v5 = 0;
        v43 = 0;
        v102 = v42;
        while (1)
        {
          if (v43 >= *(v42 + 16))
          {
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          v7 = *(v103 + 72);
          OUTLINED_FUNCTION_2_122();
          sub_1C74228D0();
          OUTLINED_FUNCTION_4_103();
          sub_1C74228D0();
          sub_1C6F6E5B4(v5);
          swift_isUniquelyReferenced_nonNull_native();
          *&v115 = v37;
          sub_1C6FC292C();
          if (__OFADD__(*(v37 + 16), (v45 & 1) == 0))
          {
            goto LABEL_70;
          }

          v5 = v44;
          isUniquelyReferenced_nonNull_native = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BCB0);
          v46 = v115;
          if (sub_1C7551A2C())
          {
            sub_1C6FC292C();
            if ((isUniquelyReferenced_nonNull_native & 1) != (v48 & 1))
            {
              sub_1C7551E4C();
              __break(1u);
              return;
            }

            v5 = v47;
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            *(v115 + 8 * (v5 >> 6) + 64) |= 1 << v5;
            OUTLINED_FUNCTION_2_122();
            sub_1C74228D0();
            *(*(v46 + 56) + 8 * v5) = MEMORY[0x1E69E7CD0];
            v49 = *(v46 + 16);
            v50 = __OFADD__(v49, 1);
            v51 = v49 + 1;
            if (v50)
            {
              goto LABEL_71;
            }

            *(v46 + 16) = v51;
          }

          v107 = v5;
          v108 = v43 + 1;
          v106 = *(v46 + 56);
          v110 = *(v106 + 8 * v5);
          sub_1C7551F3C();
          v52 = *v111;
          v53 = *(v111 + 8);
          sub_1C75505AC();
          v109 = v46;
          sub_1C75505AC();

          isUniquelyReferenced_nonNull_native = sub_1C754F58C();
          OUTLINED_FUNCTION_13_81();
          sub_1C7423CAC(&qword_1EC215238, v54);
          sub_1C755059C();
          sub_1C7551FAC();
          v7 = v110 + 56;
          OUTLINED_FUNCTION_9_2();
          v57 = v56 & ~v55;
          if (((*(v110 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
          {
LABEL_55:
            v7 = v107;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_4_103();
            v5 = v100;
            sub_1C74228D0();
            *&v115 = *(v106 + 8 * v107);
            sub_1C72ED3C8();
            *(v106 + 8 * v107) = v115;
            goto LABEL_57;
          }

          v5 = ~v55;
          while (1)
          {
            OUTLINED_FUNCTION_4_103();
            sub_1C74228D0();
            v58 = *v19 == v52 && *(v19 + 8) == v53;
            if (!v58 && (sub_1C7551DBC() & 1) == 0)
            {
              goto LABEL_47;
            }

            v59 = 0xE900000000000072;
            v60 = 0x6574636172616843;
            switch(*(v19 + 16))
            {
              case 1:
                v59 = 0xE800000000000000;
                v60 = 0x6E6F697461636F4CLL;
                break;
              case 2:
                v59 = 0xE500000000000000;
                v60 = 0x746E657645;
                break;
              case 3:
                v59 = 0xE400000000000000;
                v60 = 1885958740;
                break;
              case 4:
                v59 = 0xE500000000000000;
                v60 = 0x7972657551;
                break;
              case 5:
                v60 = 0x6B61657262656954;
                v59 = 0xEA00000000007265;
                break;
              default:
                break;
            }

            v61 = 0x6574636172616843;
            v62 = 0xE900000000000072;
            switch(*(v111 + 16))
            {
              case 1:
                v62 = 0xE800000000000000;
                v61 = 0x6E6F697461636F4CLL;
                break;
              case 2:
                v62 = 0xE500000000000000;
                v61 = 0x746E657645;
                break;
              case 3:
                v62 = 0xE400000000000000;
                v61 = 1885958740;
                break;
              case 4:
                v62 = 0xE500000000000000;
                v61 = 0x7972657551;
                break;
              case 5:
                v61 = 0x6B61657262656954;
                v62 = 0xEA00000000007265;
                break;
              default:
                break;
            }

            if (v60 == v61 && v59 == v62)
            {
              break;
            }

            v64 = sub_1C7551DBC();

            if (v64)
            {
              goto LABEL_49;
            }

LABEL_47:
            OUTLINED_FUNCTION_5_94();
            sub_1C7422928(v19, v65);
LABEL_54:
            v57 = (v57 + 1) & v5;
            if (((*(v7 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
            {
              goto LABEL_55;
            }
          }

LABEL_49:
          OUTLINED_FUNCTION_13_81();
          sub_1C7423CAC(&qword_1EC2147A0, v66);
          sub_1C7550A5C();
          sub_1C7550A5C();
          if (v115 != v112 || *(&v115 + 1) != v114)
          {
            v68 = sub_1C7551DBC();

            OUTLINED_FUNCTION_5_94();
            sub_1C7422928(v19, v69);
            if (v68)
            {
              goto LABEL_57;
            }

            goto LABEL_54;
          }

          OUTLINED_FUNCTION_5_94();
          sub_1C7422928(v19, v70);
LABEL_57:
          OUTLINED_FUNCTION_5_94();
          sub_1C7422928(v111, v71);
          OUTLINED_FUNCTION_3_112();
          v15 = v101;
          sub_1C7422928(v101, v72);
          OUTLINED_FUNCTION_29_40();
          v43 = v108;
          v37 = v109;
          v42 = v102;
          if (v108 == v104)
          {

            OUTLINED_FUNCTION_29_40();
            goto LABEL_60;
          }
        }
      }

      sub_1C75504FC();

      v5 = 0;
LABEL_60:
      v35 = (v96 - 1) & v96;
      OUTLINED_FUNCTION_5_94();
      sub_1C7422928(v105, v73);
      sub_1C6F6E5B4(v5);
      sub_1C6FD7FC8(v98, &qword_1EC2168B0);
      v5 = v91;
      v36 = v97;
      goto LABEL_6;
    }
  }

  v74 = v89;
  *(v89 + v90[7]) = v37;
  v75 = v99;
  *(v89 + v90[8]) = v99;
  *(v89 + v90[9]) = v85;
  v76 = (v89 + v90[10]);
  *v76 = v86;
  v76[1] = v87;
  *(v89 + v90[11]) = v88;
  sub_1C75504FC();
  sub_1C706D1DC();
  *(v89 + v90[16]) = v77;
  v78 = *(v99 + 16);
  if (v78)
  {
    v113 = MEMORY[0x1E69E7CC0];
    sub_1C716ED90(0, v78, 0);
    v79 = 32;
    v80 = v113;
    do
    {
      v81 = *(v75 + v79);
      v83 = *(v113 + 16);
      v82 = *(v113 + 24);
      sub_1C75504FC();
      if (v83 >= v82 >> 1)
      {
        sub_1C716ED90(v82 > 1, v83 + 1, 1);
      }

      v84 = OUTLINED_FUNCTION_64();
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(v84);
      v117 = sub_1C7099594(&qword_1EC21BCC0, &qword_1EC21BCB8);
      v115 = v81;
      *(v113 + 16) = v83 + 1;
      sub_1C6F699F8(&v115, v113 + 40 * v83 + 32);
      v79 += 8;
      --v78;
      v75 = v99;
    }

    while (v78);

    v74 = v89;
  }

  else
  {

    v80 = MEMORY[0x1E69E7CC0];
  }

  *(v74 + v90[17]) = v80;
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C741AB24(uint64_t a1)
{
  v2 = sub_1C74229D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C741AB60(uint64_t a1)
{
  v2 = sub_1C74229D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.ClusterAssetElector.ElectedAssetIterator.DiagnosticReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C741ABF4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BCC8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74229D8();
  sub_1C755200C();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FC18BC();
  sub_1C7551D2C();
  v3 = OUTLINED_FUNCTION_103();
  return v4(v3);
}

uint64_t Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset.init(asset:features:isRequired:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_6_104();
  sub_1C7422980();
  result = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0) + 20));
  if (*(v1 + 16))
  {
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](2120480, 0xE300000000000000);
    sub_1C7417FD4(v1);
    v17 = v2;
    sub_1C75504FC();
    sub_1C70401E8();

    v3 = v17;
    v4 = *(v17 + 16);
    if (v4)
    {
      v18 = MEMORY[0x1E69E7CC0];
      sub_1C716D51C();
      v5 = v3 + 40;
      do
      {
        sub_1C75504FC();
        sub_1C755082C();
        v6 = sub_1C755098C();
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v13 = *(v18 + 16);
        if (v13 >= *(v18 + 24) >> 1)
        {
          sub_1C716D51C();
        }

        *(v18 + 16) = v13 + 1;
        v14 = (v18 + 32 * v13);
        v14[4] = v6;
        v14[5] = v8;
        v14[6] = v10;
        v14[7] = v12;
        v5 += 16;
        --v4;
      }

      while (v4);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219368);
    sub_1C7099594(&qword_1EDD06A40, &qword_1EC219368);
    sub_1C721AA20();
    sub_1C7550A4C();
    OUTLINED_FUNCTION_43_36();
    v15 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v15);

    MEMORY[0x1CCA5CD70](23840, 0xE200000000000000);
  }

  else
  {
    sub_1C75504FC();
  }

  return OUTLINED_FUNCTION_90();
}

uint64_t Hastings.ClusterAssetElector.ElectedAssetIterator.ProcessingResult.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C741B0FC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21BC98);
  v1 = __swift_project_value_buffer(v0, qword_1EC21BC98);
  if (qword_1EC213E88 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC25B6F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1C741B1C4(uint64_t a1, uint64_t a2)
{
  v28 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v14 = v13 - v12;
  v15 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v16 = *(a2 + *(v15 + 28));
  sub_1C75504FC();
  v17 = sub_1C6FE0FD0(a1, v16);

  if (!v17)
  {
    v17 = MEMORY[0x1E69E7CD0];
  }

  OUTLINED_FUNCTION_2_122();
  sub_1C74228D0();
  *(v14 + *(v11 + 28)) = v17;
  *(v14 + *(v11 + 32)) = 1;
  Hastings.ClusterAssetElector.ElectedAssetIterator.process(asset:)();
  if (v30)
  {
    v18 = (a2 + *(v15 + 40));
    v20 = *v18;
    v19 = v18[1];
    (*(v5 + 16))(v9, a2, v28);
    sub_1C75504FC();
    v21 = sub_1C754FEEC();
    v22 = sub_1C755119C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      v25 = sub_1C6F765A4(v20, v19, &v29);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1C6F5C000, v21, v22, "Cluster %s: Processing of required asset failed, that's unexpected", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    (*(v5 + 8))(v9, v28);
  }

  OUTLINED_FUNCTION_1_132();
  return sub_1C7422928(v14, v26);
}

void Hastings.ClusterAssetElector.ElectedAssetIterator.process(asset:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v406 = v4;
  v392 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v409 = v7 - v6;
  v8 = type metadata accessor for Hastings.Asset(0);
  v9 = OUTLINED_FUNCTION_76(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BCD8);
  v13 = OUTLINED_FUNCTION_76(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v15);
  v401 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v398 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v21);
  v22 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v407 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_78();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v379 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v379 - v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_130();
  v408 = v35;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_140_1();
  v412 = v43;
  v45 = *v3;
  v44 = v3[1];
  v46 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v47 = (v1 + v46[10]);
  v48 = v47[1];
  v404 = *v47;
  v394 = v46[12];
  v402 = v3;
  sub_1C7009ADC();
  if (v49)
  {
    v50 = v406;
    (*(v407 + 16))(v27, v1, v22);
    sub_1C75504FC();
    sub_1C75504FC();
    v51 = sub_1C754FEEC();
    v52 = sub_1C755118C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = OUTLINED_FUNCTION_23_1();
      v415 = OUTLINED_FUNCTION_49_1();
      *v53 = 136315394;
      v54 = OUTLINED_FUNCTION_34_40();
      *(v53 + 4) = sub_1C6F765A4(v54, v48, v55);
      *(v53 + 12) = 2080;
      sub_1C75504FC();
      v56 = OUTLINED_FUNCTION_20_58();
      v57 = MEMORY[0x1CCA5CC40](v56);
      v59 = v58;

      v60 = sub_1C6F765A4(v57, v59, &v415);

      *(v53 + 14) = v60;
      _os_log_impl(&dword_1C6F5C000, v51, v52, "Cluster %s: Asset %s already elected, discarding", v53, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v50 = v406;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v61 = OUTLINED_FUNCTION_79_18();
    v62(v61);
    v63 = 2;
LABEL_129:
    *v50 = v63;
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v380 = v33;
  v381 = v30;
  v400 = v48;
  v403 = v22;
  v405 = v46;
  v64 = *(v1 + v46[5]);
  v65 = *(v64 + 16);
  v410 = v1;
  v411 = v64;
  if (v65)
  {
    v66 = 0;
    v67 = v64 + 32;
    v389 = v64 + 32;
    while (v66 < *(v64 + 16))
    {
      v68 = v67 + 24 * v66;
      v69 = *(v68 + 8);
      if (*(v69 + 16))
      {
        v3 = *v68;
        v70 = *(v68 + 16);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_9_2();
        v73 = ~v72;
        do
        {
          v74 = v71 & v73;
          if (((*(v69 + 56 + (((v71 & v73) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v71 & v73)) & 1) == 0)
          {

LABEL_28:

            v64 = v411;
            v67 = v389;
            goto LABEL_29;
          }

          v75 = (*(v69 + 48) + 16 * v74);
          v76 = *v75 == v45 && v75[1] == v44;
          if (v76)
          {
            break;
          }

          v77 = sub_1C7551DBC();
          v71 = v74 + 1;
        }

        while ((v77 & 1) == 0);
        if (!*(v70 + 16) || (v78 = sub_1C6F78124(v45, v44), (v79 & 1) == 0))
        {

          OUTLINED_FUNCTION_38_38();
          if (v70)
          {
            OUTLINED_FUNCTION_2_49();
            sub_1C755180C();
            MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75AFEE0);
            sub_1C75504FC();
            v207 = OUTLINED_FUNCTION_20_58();
            v209 = v208;
            MEMORY[0x1CCA5CC40](v207);
            OUTLINED_FUNCTION_43_36();
            v210 = OUTLINED_FUNCTION_64();
            MEMORY[0x1CCA5CD70](v210);

            MEMORY[0x1CCA5CD70](0xD000000000000035, 0x80000001C75AFF00);
            v65 = v415;
            OUTLINED_FUNCTION_31_42();
            sub_1C6FB0600();
            OUTLINED_FUNCTION_46_34();
            OUTLINED_FUNCTION_36_34(v209 + 1);
            *(v70 + 16) = v211;
            swift_endAccess();
          }

          OUTLINED_FUNCTION_35_28();
          v212 = OUTLINED_FUNCTION_40_44();
          v213 = v403;
          v214(v212);
          sub_1C75504FC();
          OUTLINED_FUNCTION_37_38();
          v215 = sub_1C754FEEC();
          sub_1C755119C();
          OUTLINED_FUNCTION_67_23();

          if (OUTLINED_FUNCTION_64_20())
          {
            OUTLINED_FUNCTION_23_1();
            v216 = OUTLINED_FUNCTION_60_11();
            OUTLINED_FUNCTION_83_10(v216);
            v217 = OUTLINED_FUNCTION_22_63(4.8151e-34);
            OUTLINED_FUNCTION_21_57(v217);
            v218 = OUTLINED_FUNCTION_20_58();
            MEMORY[0x1CCA5CC40](v218);
            OUTLINED_FUNCTION_6_46();
            v219 = OUTLINED_FUNCTION_50_30();
            v221 = sub_1C6F765A4(v219, v44, v220);

            *(v65 + 14) = v221;
            OUTLINED_FUNCTION_32_39(&dword_1C6F5C000, v222, v223, "Cluster %s: INCONSISTENCY: Asset %s is dependent but has no dependency group, discarding");
            v63 = 2;
            OUTLINED_FUNCTION_51_27();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();

            (v3[1])(v390, v213);
          }

          else
          {

            (v3[1])(v65, v213);
            v63 = 2;
          }

          goto LABEL_50;
        }

        v80 = (*(v70 + 56) + 16 * v78);
        v81 = *v80;
        v82 = v80[1];
        sub_1C75504FC();

        v83 = *(v410 + v405[14]);
        if (*(v83 + 16))
        {
          sub_1C7551F3C();
          sub_1C75505AC();
          sub_1C7551FAC();
          OUTLINED_FUNCTION_9_2();
          v86 = ~v85;
          while (1)
          {
            v87 = v84 & v86;
            if (((*(v83 + 56 + (((v84 & v86) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v84 & v86)) & 1) == 0)
            {
              break;
            }

            v88 = (*(v83 + 48) + 16 * v87);
            if (*v88 != v81 || v88[1] != v82)
            {
              v90 = sub_1C7551DBC();
              v84 = v87 + 1;
              if ((v90 & 1) == 0)
              {
                continue;
              }
            }

            v3 = v82;
            goto LABEL_28;
          }
        }

        v119 = v410;
        v120 = *(v410 + v405[11]);
        if (v120)
        {
          OUTLINED_FUNCTION_2_49();
          sub_1C755180C();
          OUTLINED_FUNCTION_60_24();
          sub_1C75504FC();
          v121 = OUTLINED_FUNCTION_20_58();
          v122 = MEMORY[0x1CCA5CC40](v121);
          v124 = v123;

          MEMORY[0x1CCA5CD70](v122, v124);

          MEMORY[0x1CCA5CD70](0x65646E6570656420, 0xEE00206E6920746ELL);
          MEMORY[0x1CCA5CD70](v81, v82);
          OUTLINED_FUNCTION_23_50();
          MEMORY[0x1CCA5CD70](v125 + 11, v126 | 0x8000000000000000);
          v127 = v415;
          v128 = v416;
          OUTLINED_FUNCTION_31_42();
          sub_1C6FB0600();
          v129 = *(*(v120 + 16) + 16);
          sub_1C6FB0EFC();
          v130 = *(v120 + 16);
          *(v130 + 16) = v129 + 1;
          v131 = v130 + 16 * v129;
          *(v131 + 32) = v127;
          *(v131 + 40) = v128;
          v119 = v410;
          *(v120 + 16) = v130;
          swift_endAccess();
        }

        v132 = v407;
        v133 = v412;
        v134 = v403;
        (*(v407 + 16))(v412, v119, v403);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v135 = sub_1C754FEEC();
        v136 = sub_1C755117C();

        if (os_log_type_enabled(v135, v136))
        {
          OUTLINED_FUNCTION_98();
          v137 = swift_slowAlloc();
          v415 = swift_slowAlloc();
          *v137 = 136315650;
          v138 = OUTLINED_FUNCTION_34_40();
          *(v137 + 4) = sub_1C6F765A4(v138, v139, v140);
          *(v137 + 12) = 2080;
          sub_1C75504FC();
          v141 = OUTLINED_FUNCTION_20_58();
          v142 = MEMORY[0x1CCA5CC40](v141);
          v144 = v143;

          v145 = sub_1C6F765A4(v142, v144, &v415);

          *(v137 + 14) = v145;
          *(v137 + 22) = 2080;
          v146 = sub_1C6F765A4(v81, v82, &v415);

          *(v137 + 24) = v146;
          _os_log_impl(&dword_1C6F5C000, v135, v136, "Cluster %s: Asset %s dependent in %s with no anchor asset, deferring", v137, 0x20u);
          OUTLINED_FUNCTION_82_20();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();

          (*(v132 + 8))(v412, v403);
        }

        else
        {

          (*(v132 + 8))(v133, v134);
        }

        goto LABEL_49;
      }

LABEL_29:
      ++v66;
      v1 = v410;
      if (v66 == v65)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_136;
  }

LABEL_30:
  v91 = 0x207465737341;
  v92 = v405;
  v93 = v397;
  sub_1C741D6B4();
  v94 = v401;
  OUTLINED_FUNCTION_80_4(v93, 1, v401);
  if (v76)
  {
    sub_1C6FD7FC8(v93, &qword_1EC21BCD8);
    v95 = *(v1 + v92[11]);
    if (v95)
    {
      OUTLINED_FUNCTION_2_49();
      sub_1C755180C();

      v415 = 0x207465737341;
      v416 = 0xE600000000000000;
      sub_1C75504FC();
      v96 = OUTLINED_FUNCTION_20_58();
      v98 = v97;
      MEMORY[0x1CCA5CC40](v96);
      OUTLINED_FUNCTION_43_36();
      v99 = OUTLINED_FUNCTION_64();
      MEMORY[0x1CCA5CD70](v99);

      OUTLINED_FUNCTION_23_50();
      MEMORY[0x1CCA5CD70](v100 + 14, v101 | 0x8000000000000000);
      v91 = v415;
      OUTLINED_FUNCTION_31_42();
      sub_1C6FB0600();
      OUTLINED_FUNCTION_88_17();
      OUTLINED_FUNCTION_36_34(v98 + 1);
      *(v95 + 16) = v102;
      swift_endAccess();
    }

    OUTLINED_FUNCTION_35_28();
    OUTLINED_FUNCTION_40_44();
    OUTLINED_FUNCTION_69_24();
    v103();
    sub_1C75504FC();
    OUTLINED_FUNCTION_37_38();
    v104 = sub_1C754FEEC();
    sub_1C755117C();
    OUTLINED_FUNCTION_67_23();

    v105 = OUTLINED_FUNCTION_64_20();
    v390 = v95;
    if (v105)
    {
      OUTLINED_FUNCTION_23_1();
      v106 = OUTLINED_FUNCTION_60_11();
      OUTLINED_FUNCTION_83_10(v106);
      v107 = OUTLINED_FUNCTION_22_63(4.8151e-34);
      OUTLINED_FUNCTION_21_57(v107);
      v108 = OUTLINED_FUNCTION_20_58();
      MEMORY[0x1CCA5CC40](v108);
      v110 = v109;

      v111 = OUTLINED_FUNCTION_50_30();
      v113 = sub_1C6F765A4(v111, v110, v112);

      *(v91 + 14) = v113;
      OUTLINED_FUNCTION_32_39(&dword_1C6F5C000, v114, v115, "Cluster %s: Asset %s elected (all features represented)");
      OUTLINED_FUNCTION_51_27();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      v116 = v3[1];
      v117 = v393;
      v118 = v403;
    }

    else
    {

      v117 = OUTLINED_FUNCTION_64();
    }

    v393 = v116;
    v116(v117, v118);
    LODWORD(v397) = 0;
    goto LABEL_65;
  }

  v147 = v398 + 32;
  v412 = *(v398 + 32);
  (v412)(v399, v93, v94);
  v148 = v392;
  v149 = v402;
  v150 = v92[15];
  sub_1C75504FC();
  v151 = OUTLINED_FUNCTION_66_2();
  v153 = sub_1C72387A4(v151, v152);
  if ((*(v149 + *(v148 + 24)) & 1) == 0)
  {
    v187 = v388;
    sub_1C741D6B4();
    OUTLINED_FUNCTION_80_4(v187, 1, v94);
    if (v76)
    {

      sub_1C6FD7FC8(v187, &qword_1EC21BCD8);
      OUTLINED_FUNCTION_38_38();
      if (v150)
      {
        OUTLINED_FUNCTION_2_49();
        sub_1C755180C();

        v415 = 0x207465737341;
        v416 = 0xE600000000000000;
        sub_1C75504FC();
        v188 = OUTLINED_FUNCTION_20_58();
        v190 = v189;
        MEMORY[0x1CCA5CC40](v188);
        OUTLINED_FUNCTION_43_36();
        v191 = OUTLINED_FUNCTION_64();
        MEMORY[0x1CCA5CD70](v191);

        OUTLINED_FUNCTION_23_50();
        MEMORY[0x1CCA5CD70](v192 + 12, v193 | 0x8000000000000000);
        v148 = v415;
        OUTLINED_FUNCTION_31_42();
        sub_1C6FB0600();
        OUTLINED_FUNCTION_46_34();
        OUTLINED_FUNCTION_36_34(v190 + 1);
        *(v150 + 16) = v194;
        swift_endAccess();
      }

      OUTLINED_FUNCTION_35_28();
      v195 = OUTLINED_FUNCTION_40_44();
      v196 = v403;
      v197(v195);
      sub_1C75504FC();
      OUTLINED_FUNCTION_37_38();
      v198 = sub_1C754FEEC();
      sub_1C755117C();
      OUTLINED_FUNCTION_67_23();

      if (OUTLINED_FUNCTION_64_20())
      {
        OUTLINED_FUNCTION_23_1();
        v199 = OUTLINED_FUNCTION_60_11();
        OUTLINED_FUNCTION_83_10(v199);
        v200 = OUTLINED_FUNCTION_22_63(4.8151e-34);
        OUTLINED_FUNCTION_21_57(v200);
        v201 = OUTLINED_FUNCTION_20_58();
        MEMORY[0x1CCA5CC40](v201);
        OUTLINED_FUNCTION_6_46();
        v202 = OUTLINED_FUNCTION_50_30();
        v204 = sub_1C6F765A4(v202, v44, v203);

        *(v148 + 14) = v204;
        OUTLINED_FUNCTION_32_39(&dword_1C6F5C000, v205, v206, "Cluster %s: Asset %s has no needed feature, deferring");
        OUTLINED_FUNCTION_51_27();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        (*(v149 + 8))(v386, v196);
      }

      else
      {

        (*(v149 + 8))(v148, v196);
      }

      v373 = OUTLINED_FUNCTION_44_32();
      v374(v373);
    }

    else
    {
      v148 = v94;
      v149 = v387;
      v332 = OUTLINED_FUNCTION_151_1();
      (v412)(v332);
      v333 = sub_1C754F57C();
      if ((v333 & 1) == 0)
      {
        (*(v398 + 8))(v149, v94);
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_38_38();
      if (v150)
      {
        OUTLINED_FUNCTION_2_49();
        sub_1C755180C();
        OUTLINED_FUNCTION_60_24();
        sub_1C75504FC();
        v334 = OUTLINED_FUNCTION_20_58();
        v336 = v335;
        v337 = MEMORY[0x1CCA5CC40](v334);
        v339 = v338;

        MEMORY[0x1CCA5CD70](v337, v339);

        MEMORY[0x1CCA5CD70](0x206F6E2073616820, 0xEF2064656465656ELL);
        OUTLINED_FUNCTION_325();
        sub_1C75519EC();
        OUTLINED_FUNCTION_23_50();
        MEMORY[0x1CCA5CD70](v340 - 2, v341 | 0x8000000000000000);
        v343 = v415;
        v342 = v416;
        OUTLINED_FUNCTION_31_42();
        sub_1C6FB0600();
        OUTLINED_FUNCTION_46_34();
        v344 = *(v150 + 16);
        *(v344 + 16) = v336 + 1;
        v345 = v344 + 16 * v336;
        *(v345 + 32) = v343;
        *(v345 + 40) = v342;
        *(v150 + 16) = v344;
        swift_endAccess();
      }

      v346 = v385;
      (*(v407 + 16))(v385, v147, v403);
      v347 = v398;
      v348 = v384;
      v349 = OUTLINED_FUNCTION_151_1();
      v412 = v350;
      (v350)(v349);
      sub_1C75504FC();
      OUTLINED_FUNCTION_37_38();
      v351 = v346;
      v352 = sub_1C754FEEC();
      sub_1C755117C();
      OUTLINED_FUNCTION_67_23();

      if (OUTLINED_FUNCTION_64_20())
      {
        OUTLINED_FUNCTION_98();
        v353 = swift_slowAlloc();
        LODWORD(v410) = v351;
        v354 = v148;
        v355 = v353;
        v411 = swift_slowAlloc();
        v415 = v411;
        v356 = OUTLINED_FUNCTION_22_63(4.8152e-34);
        OUTLINED_FUNCTION_21_57(v356);
        v357 = OUTLINED_FUNCTION_20_58();
        MEMORY[0x1CCA5CC40](v357);
        v358 = v347;
        OUTLINED_FUNCTION_6_46();
        v359 = OUTLINED_FUNCTION_50_30();
        v361 = sub_1C6F765A4(v359, v44, v360);

        *(v355 + 14) = v361;
        *(v355 + 22) = 2080;
        (v412)(v383, v348, v354);
        v362 = sub_1C75506EC();
        v364 = v363;
        v365 = *(v358 + 8);
        v366 = OUTLINED_FUNCTION_151_1();
        v365(v366);
        v367 = sub_1C6F765A4(v362, v364, &v415);

        *(v355 + 24) = v367;
        _os_log_impl(&dword_1C6F5C000, v352, v410, "Cluster %s: Asset %s has no needed %s feature, deferring", v355, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        v368 = OUTLINED_FUNCTION_85_15();
        v369(v368);
        (v365)(v387, v354);
        v370 = OUTLINED_FUNCTION_325();
        (v365)(v370, v354);
      }

      else
      {

        v375 = *(v347 + 8);
        v375(v348, v148);
        v376 = OUTLINED_FUNCTION_85_15();
        v377(v376);
        v375(v387, v148);
        v378 = OUTLINED_FUNCTION_325();
        v375(v378, v148);
      }
    }

LABEL_49:
    v63 = 1;
LABEL_50:
    v50 = v406;
    goto LABEL_129;
  }

LABEL_42:
  v154 = *(v153 + 16);
  LODWORD(v397) = v154 != 0;
  v155 = v410;
  if (v154)
  {
    sub_1C75504FC();
    sub_1C7397760();
    sub_1C7420BBC(v153, v156, v157, v158, v159, v160, v161, v162, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  }

  v163 = *(v155 + v405[11]);
  if (v163)
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    v415 = 0x207465737341;
    v416 = 0xE600000000000000;
    sub_1C75504FC();
    v164 = OUTLINED_FUNCTION_20_58();
    v166 = v165;
    MEMORY[0x1CCA5CC40](v164);
    OUTLINED_FUNCTION_43_36();
    v167 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v167);

    OUTLINED_FUNCTION_23_50();
    MEMORY[0x1CCA5CD70](v168 + 14, v169 | 0x8000000000000000);
    v148 = v415;
    OUTLINED_FUNCTION_31_42();
    sub_1C6FB0600();
    OUTLINED_FUNCTION_88_17();
    OUTLINED_FUNCTION_36_34(v166 + 1);
    *(v163 + 16) = v170;
    swift_endAccess();
  }

  OUTLINED_FUNCTION_35_28();
  OUTLINED_FUNCTION_40_44();
  OUTLINED_FUNCTION_69_24();
  v171();
  sub_1C75504FC();
  OUTLINED_FUNCTION_37_38();
  v172 = sub_1C754FEEC();
  sub_1C755117C();
  OUTLINED_FUNCTION_67_23();

  v173 = OUTLINED_FUNCTION_64_20();
  v390 = v163;
  if (v173)
  {
    OUTLINED_FUNCTION_23_1();
    v174 = OUTLINED_FUNCTION_60_11();
    OUTLINED_FUNCTION_83_10(v174);
    v175 = OUTLINED_FUNCTION_22_63(4.8151e-34);
    OUTLINED_FUNCTION_21_57(v175);
    v176 = OUTLINED_FUNCTION_20_58();
    MEMORY[0x1CCA5CC40](v176);
    v178 = v177;

    v179 = OUTLINED_FUNCTION_50_30();
    v181 = sub_1C6F765A4(v179, v178, v180);

    *(v148 + 14) = v181;
    OUTLINED_FUNCTION_32_39(&dword_1C6F5C000, v182, v183, "Cluster %s: Asset %s elected (new represented features)");
    OUTLINED_FUNCTION_51_27();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    v184 = *(v149 + 8);
    v185 = v391;
    v186 = v403;
  }

  else
  {

    v185 = OUTLINED_FUNCTION_64();
  }

  v393 = v184;
  v184(v185, v186);
  v224 = OUTLINED_FUNCTION_44_32();
  v225(v224);
LABEL_65:
  v226 = v409;
  v227 = v395;
  sub_1C74228D0();
  sub_1C70F0914();
  sub_1C7422928(v227, type metadata accessor for Hastings.Asset);
  v229 = *(v411 + 16);
  if (!v229)
  {
    v399 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_70_22();
LABEL_99:
    v277 = (v407 + 16);
    v278 = v410;
    OUTLINED_FUNCTION_58_29();
    v279();
    OUTLINED_FUNCTION_30_43();
    sub_1C74228D0();
    v280 = v400;
    sub_1C75504FC();
    v281 = v399;
    sub_1C75504FC();
    v282 = sub_1C754FEEC();
    v283 = sub_1C755117C();

    if (os_log_type_enabled(v282, v283))
    {
      LODWORD(v411) = v283;
      v412 = v277;
      v284 = swift_slowAlloc();
      v414 = swift_slowAlloc();
      *v284 = 136315906;
      *(v284 + 4) = sub_1C6F765A4(v404, v280, &v414);
      *(v284 + 12) = 2080;
      v285 = Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset.description.getter();
      v287 = v286;
      OUTLINED_FUNCTION_1_132();
      sub_1C7422928(v226, v288);
      v289 = sub_1C6F765A4(v285, v287, &v414);

      *(v284 + 14) = v289;
      *(v284 + 22) = 2080;
      if (v397)
      {
        v290 = 0xD000000000000016;
      }

      else
      {
        v290 = 0;
      }

      v291 = 0xE000000000000000;
      if (v397)
      {
        v292 = 0x80000001C75A4D30;
      }

      else
      {
        v292 = 0xE000000000000000;
      }

      v293 = sub_1C6F765A4(v290, v292, &v414);

      *(v284 + 24) = v293;
      *(v284 + 32) = 2080;
      if (*(v281 + 16))
      {
        v415 = 0;
        v416 = 0xE000000000000000;
        sub_1C755180C();

        v415 = 0xD000000000000015;
        v416 = 0x80000001C75AFF40;
        v413 = v281;
        sub_1C75504FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        sub_1C7099594(&qword_1EDD0CF58, &unk_1EC217A00);
        v294 = sub_1C75505FC();
        v296 = v295;

        MEMORY[0x1CCA5CD70](v294, v296);

        v297 = v415;
        v291 = v416;
      }

      else
      {

        v297 = 0;
      }

      v300 = sub_1C6F765A4(v297, v291, &v414);

      *(v284 + 34) = v300;
      _os_log_impl(&dword_1C6F5C000, v282, v411, "Cluster %s: %s\n\tadding asset%s%s", v284, 0x2Au);
      OUTLINED_FUNCTION_82_20();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      OUTLINED_FUNCTION_80_14();
      v301();
      v278 = v410;
    }

    else
    {

      OUTLINED_FUNCTION_1_132();
      sub_1C7422928(v226, v298);
      OUTLINED_FUNCTION_57_27();
      OUTLINED_FUNCTION_80_14();
      v299();
    }

    v50 = v406;
    if (v397)
    {
      v302 = *(v278 + v405[15]);
      if (*(v302 + 16) >= *(*(v278 + v405[6]) + 16))
      {
        v320 = sub_1C75504FC();
        v321 = sub_1C74182C8(v320);
        v323 = v322;

        OUTLINED_FUNCTION_58_29();
        v324();
        v325 = v400;
        sub_1C75504FC();
        sub_1C75504FC();
        v326 = sub_1C754FEEC();
        v327 = sub_1C755117C();

        if (OUTLINED_FUNCTION_64_20())
        {
          v328 = OUTLINED_FUNCTION_23_1();
          v415 = OUTLINED_FUNCTION_49_1();
          *v328 = 136315394;
          v329 = OUTLINED_FUNCTION_34_40();
          *(v328 + 4) = sub_1C6F765A4(v329, v325, v330);
          *(v328 + 12) = 2080;
          v331 = sub_1C6F765A4(v321, v323, &v415);

          *(v328 + 14) = v331;
          _os_log_impl(&dword_1C6F5C000, v326, v327, "Cluster %s: Feature representation complete (%s", v328, 0x16u);
          OUTLINED_FUNCTION_82_20();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {
        }

        OUTLINED_FUNCTION_57_27();
        OUTLINED_FUNCTION_80_14();
        v372();
        v50 = v406;
      }

      else
      {
        sub_1C7418830(v302);
        v304 = v303;
        v305 = sub_1C75504FC();
        sub_1C74182C8(v305);

        OUTLINED_FUNCTION_151_1();
        OUTLINED_FUNCTION_58_29();
        v306();
        v307 = v400;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v308 = sub_1C754FEEC();
        v309 = sub_1C755117C();

        if (OUTLINED_FUNCTION_64_20())
        {
          OUTLINED_FUNCTION_98();
          v310 = swift_slowAlloc();
          v415 = swift_slowAlloc();
          *v310 = 136315650;
          v311 = OUTLINED_FUNCTION_34_40();
          *(v310 + 4) = sub_1C6F765A4(v311, v307, v312);
          *(v310 + 12) = 2080;
          v313 = OUTLINED_FUNCTION_50_30();
          v315 = sub_1C6F765A4(v313, v304, v314);

          *(v310 + 14) = v315;
          *(v310 + 22) = 2080;
          v316 = OUTLINED_FUNCTION_103();
          v319 = sub_1C6F765A4(v316, v317, v318);

          *(v310 + 24) = v319;
          _os_log_impl(&dword_1C6F5C000, v308, v309, "Cluster %s: %s features represented out of %s", v310, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {

          OUTLINED_FUNCTION_57_27();
        }

        OUTLINED_FUNCTION_80_14();
        v371();
        v50 = v406;
      }
    }

    if (v401)
    {
      sub_1C741DAC8();
    }

    v63 = 0;
    goto LABEL_129;
  }

  v230 = 0;
  v412 = (v411 + 32);
  v395 = ", represented groups ";
  v394 = "Dependency group ";
  v398 = v407 + 16;
  v396 = v407 + 8;
  v399 = MEMORY[0x1E69E7CC0];
  *&v228 = 136315394;
  v391 = v228;
  OUTLINED_FUNCTION_70_22();
  while (v230 < *(v231 + 16))
  {
    v232 = &v412[24 * v230];
    v233 = *v232;
    ++v230;
    if (*(*v232 + 16))
    {
      v234 = *(v232 + 2);
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v237 = ~v236;
      do
      {
        v238 = v235 & v237;
        OUTLINED_FUNCTION_77_15();
        if ((v239 & 1) == 0)
        {
          goto LABEL_79;
        }

        v240 = (*(v233 + 48) + 16 * v238);
        if (*v240 == v45 && v240[1] == v44)
        {
          break;
        }

        v242 = sub_1C7551DBC();
        v235 = v238 + 1;
      }

      while ((v242 & 1) == 0);
      if (!*(v234 + 16))
      {
LABEL_79:

        v226 = v409;
        goto LABEL_80;
      }

      v243 = sub_1C6F78124(v45, v44);
      v226 = v409;
      if ((v244 & 1) == 0)
      {

LABEL_80:

        v231 = v411;
        goto LABEL_81;
      }

      v245 = (*(v234 + 56) + 16 * v243);
      v247 = *v245;
      v246 = v245[1];
      sub_1C75504FC();

      v248 = v246;

      v249 = v405[14];
      sub_1C75504FC();
      v250 = v410;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v415 = *(v250 + v249);
      sub_1C73A873C(v247, v248, isUniquelyReferenced_nonNull_native);
      *(v250 + v249) = v415;
      if (v252)
      {

        OUTLINED_FUNCTION_75_18();
      }

      else
      {
        v401 = v247;
        v254 = v248;
        sub_1C75504FC();
        OUTLINED_FUNCTION_325();
        v255 = swift_isUniquelyReferenced_nonNull_native();
        v256 = v390;
        if ((v255 & 1) == 0)
        {
          sub_1C6FB1814();
          v399 = v275;
        }

        v257 = v401;
        v258 = *(v399 + 16);
        if (v258 >= *(v399 + 24) >> 1)
        {
          sub_1C6FB1814();
          v399 = v276;
        }

        v259 = v399;
        *(v399 + 16) = v258 + 1;
        v260 = v259 + 16 * v258;
        *(v260 + 32) = v257;
        *(v260 + 40) = v254;
        if (v256)
        {
          OUTLINED_FUNCTION_2_49();
          sub_1C755180C();
          MEMORY[0x1CCA5CD70](0xD000000000000011, v395 | 0x8000000000000000);
          MEMORY[0x1CCA5CD70](v257, v254);
          MEMORY[0x1CCA5CD70](0xD000000000000020, v394 | 0x8000000000000000);
          v261 = v415;
          v226 = v416;
          OUTLINED_FUNCTION_31_42();
          sub_1C6FB0600();
          v262 = *(*(v256 + 16) + 16);
          sub_1C6FB0EFC();
          v263 = *(v256 + 16);
          *(v263 + 16) = v262 + 1;
          v264 = v263 + 16 * v262;
          *(v264 + 32) = v261;
          *(v264 + 40) = v226;
          *(v256 + 16) = v263;
          swift_endAccess();
        }

        v265 = v382;
        v266 = v403;
        v392(v382, v410, v403);
        OUTLINED_FUNCTION_37_38();
        sub_1C75504FC();
        v267 = sub_1C754FEEC();
        v268 = sub_1C755117C();

        if (os_log_type_enabled(v267, v268))
        {
          v269 = OUTLINED_FUNCTION_23_1();
          v389 = OUTLINED_FUNCTION_49_1();
          v415 = v389;
          *v269 = v391;
          v270 = OUTLINED_FUNCTION_34_40();
          *(v269 + 4) = sub_1C6F765A4(v270, v226, v271);
          *(v269 + 12) = 2080;
          v272 = sub_1C6F765A4(v401, v254, &v415);

          *(v269 + 14) = v272;
          _os_log_impl(&dword_1C6F5C000, v267, v268, "Cluster %s: Dependency group %s now has elected anchored assets", v269, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();

          v273 = v382;
          v274 = v403;
        }

        else
        {

          v273 = v265;
          v274 = v266;
        }

        v393(v273, v274);
        v226 = v409;
        OUTLINED_FUNCTION_75_18();
      }

      v231 = v411;
      if (v253)
      {
        goto LABEL_99;
      }
    }

    else
    {
LABEL_81:
      if (v230 == v229)
      {
        goto LABEL_99;
      }
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_1C741D6B4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BCD8);
  v6 = OUTLINED_FUNCTION_76(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_2();
  v51 = v7;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_84_14();
  v9 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_2();
  v50 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v56 = v18;
  v57 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v55 = v20 - v19;
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v9);
  v24 = v2 + 56;
  v25 = 1 << *(v2 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v2 + 56);
  v28 = (v25 + 63) >> 6;
  v53 = (v11 + 32);
  v54 = (v11 + 16);
  v49 = (v11 + 8);
  v59 = v2;
  sub_1C75504FC();
  v29 = 0;
  v58 = v4;
  while (v27)
  {
    v30 = v29;
LABEL_9:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = v55;
    OUTLINED_FUNCTION_28_37(v31 | (v30 << 6));
    v34 = v33;
    sub_1C74228D0();
    (*v54)(v16, v32 + *(v57 + 24), v9);
    sub_1C7422928(v32, v34);
    OUTLINED_FUNCTION_64();
    sub_1C6FD7F70();
    OUTLINED_FUNCTION_80_4(v0, 1, v9);
    if (v35)
    {
      sub_1C6FD7FC8(v4, &qword_1EC21BCD8);
      sub_1C6FD7FC8(v0, &qword_1EC21BCD8);
      (*v53)(v4, v16, v9);
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v9);
      v29 = v30;
    }

    else
    {
      v52 = *v53;
      v39 = v16;
      v40 = v50;
      v52(v50, v0, v9);
      OUTLINED_FUNCTION_13_81();
      sub_1C7423CAC(&qword_1EC21BD90, v41);
      v42 = sub_1C755061C();
      sub_1C6FD7FC8(v58, &qword_1EC21BCD8);
      if (v42)
      {
        v43 = v40;
      }

      else
      {
        v43 = v39;
      }

      if (v42)
      {
        v44 = v39;
      }

      else
      {
        v44 = v40;
      }

      (*v49)(v43, v9);
      v52(v51, v44, v9);
      v4 = v58;
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v9);
      v16 = v39;
      sub_1C7091CBC();
      v29 = v30;
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      OUTLINED_FUNCTION_25_0();
      return;
    }

    v27 = *(v24 + 8 * v30);
    ++v29;
    if (v27)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C741DAC8()
{
  result = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v2 = *(v0 + *(result + 76));
  if (*(v2 + 16))
  {
    v3 = *(result + 80);
    sub_1C75504FC();
    sub_1C6FB05E8();
    v4 = *(*(v0 + v3) + 16);
    sub_1C6FB0EE4();

    return sub_1C7423B58(v4, v2, 0, (v0 + v3));
  }

  return result;
}

void sub_1C741DB6C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v38 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BDA8);
  v4 = OUTLINED_FUNCTION_76(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v7 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = *(type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0) + 80);
  v39 = v7;
  while (1)
  {
    v13 = *(v1 + v12);
    v14 = *(v13 + 16);
    if (!v14)
    {
      type metadata accessor for Hastings.Asset(0);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
LABEL_15:
      OUTLINED_FUNCTION_25_0();
      return;
    }

    sub_1C6FB5E28(v13 + 40 * v14 - 8, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C70E3D4C();
      v13 = v27;
    }

    v15 = *(v13 + 16);
    if (!v15)
    {
      break;
    }

    v16 = v15 - 1;
    __swift_destroy_boxed_opaque_existential_1(v13 + 40 * v15 - 8);
    *(v13 + 16) = v16;
    *(v1 + v12) = v13;
    __swift_mutable_project_boxed_opaque_existential_0(v43, v43[3]);
    OUTLINED_FUNCTION_431();
    sub_1C755150C();
    OUTLINED_FUNCTION_80_4(v6, 1, v7);
    if (v17)
    {
      sub_1C6FD7FC8(v6, &qword_1EC21BDA8);
      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    else
    {
      sub_1C7422980();
      sub_1C6FB5E28(v43, v40);
      *(v1 + v12) = v13;
      v18 = *(v13 + 16);
      if (v18 >= *(v13 + 24) >> 1)
      {
        sub_1C6FB1730();
        v13 = v28;
        *(v1 + v12) = v28;
      }

      v19 = v41;
      v20 = v42;
      v21 = __swift_mutable_project_boxed_opaque_existential_0(v40, v41);
      MEMORY[0x1EEE9AC00](v21);
      OUTLINED_FUNCTION_14_0();
      v24 = v23 - v22;
      (*(v25 + 16))(v23 - v22);
      sub_1C7423C0C(v18, v24, (v1 + v12), v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v40);
      *(v1 + v12) = v13;
      Hastings.ClusterAssetElector.ElectedAssetIterator.process(asset:)();
      if (!v40[0])
      {
        OUTLINED_FUNCTION_2_122();
        sub_1C74228D0();
        OUTLINED_FUNCTION_1_132();
        sub_1C7422928(v11, v33);
        type metadata accessor for Hastings.Asset(0);
        OUTLINED_FUNCTION_25_8();
        __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
        __swift_destroy_boxed_opaque_existential_1(v43);
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_1_132();
      sub_1C7422928(v11, v26);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v7 = v39;
    }
  }

  __break(1u);
}

uint64_t sub_1C741DEA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  sub_1C6FD7F70();

  v6 = Hastings.Feature.description.getter();
  v8 = v7;
  sub_1C7422928(v5, type metadata accessor for Hastings.Feature);
  sub_1C6FD7F70();

  v9 = Hastings.Feature.description.getter();
  v11 = v10;
  sub_1C7422928(v2, type metadata accessor for Hastings.Feature);
  if (v6 == v9 && v8 == v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1C7551DBC();
  }

  return v13 & 1;
}

uint64_t sub_1C741E03C()
{
  type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  sub_1C7009ADC();
  return v0 & 1;
}

uint64_t Hastings.ClusterAssetElector.ElectedAssetIterator.testCandidateAsset(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Hastings.Asset(0);
  v6 = OUTLINED_FUNCTION_76(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_2_122();
  OUTLINED_FUNCTION_64();
  sub_1C74228D0();
  v7 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v8 = sub_1C6FE0FD0(a1, *(v2 + *(v7 + 28)));
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  v10 = *(v2 + *(v7 + 36));
  v14 = a1;
  v11 = sub_1C7073774(sub_1C71598A8, v13, v10);
  OUTLINED_FUNCTION_6_104();
  sub_1C7422980();
  result = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0);
  *(a2 + *(result + 20)) = v9;
  *(a2 + *(result + 24)) = v11;
  return result;
}

void sub_1C741E1D8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_115();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_12(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_19_69();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_19_69();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_1C741E300(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[128 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E320(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E370(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[120 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E3C8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E3EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E414(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E43C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E45C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E484(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E4AC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[136 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E4D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[144 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E52C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E584(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E5C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[152 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E604(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E6AC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[192 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E74C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E7BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_16_62(a3, result, 112 * a2);
  }

  return result;
}

void sub_1C741E870(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_115();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_103(), __swift_instantiateConcreteTypeFromMangledNameV2(v8), OUTLINED_FUNCTION_12(), v4 + *(v9 + 72) * v3 <= a3))
  {
    v10 = OUTLINED_FUNCTION_103();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10);
    OUTLINED_FUNCTION_19_69();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_19_69();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1C741E950(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C741F014(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C741EA98(0, v2, 1, a1);
  }
}

void sub_1C741EA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  MEMORY[0x1EEE9AC00](v55);
  v45 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v36[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v36[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v38 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v54 = "Hastings.curatedAssets";
    v20 = *(v17 + 72);
    v21 = v19 + v20 * (a3 - 1);
    v43 = -v20;
    v44 = v19;
    v22 = a1 - a3;
    v37 = v20;
    v23 = v19 + v20 * a3;
    v46 = v15;
    v47 = &v36[-v18];
    while (2)
    {
      v41 = v21;
      v42 = a3;
      v39 = v23;
      v40 = v22;
      v24 = v22;
      while (1)
      {
        v50 = v24;
        sub_1C6FD7F70();
        sub_1C6FD7F70();
        v25 = v48;
        sub_1C6FD7F70();

        v56 = 0;
        v57 = 0xE000000000000000;
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
        MEMORY[0x1CCA5CD70](*v25, *(v25 + 8));
        MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
        v58 = *(v25 + 16);
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](0xD000000000000010, v54 | 0x8000000000000000);
        v53 = type metadata accessor for Hastings.Feature();
        v52 = sub_1C754F58C();
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
        v26 = v56;
        v27 = v57;
        v28 = v46;
        v51 = type metadata accessor for Hastings.Feature;
        sub_1C7422928(v25, type metadata accessor for Hastings.Feature);
        v29 = v49;
        sub_1C6FD7F70();

        v56 = 0;
        v57 = 0xE000000000000000;
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
        MEMORY[0x1CCA5CD70](*v29, *(v29 + 8));
        MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
        v58 = *(v29 + 16);
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](0xD000000000000010, v54 | 0x8000000000000000);
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
        v31 = v56;
        v30 = v57;
        sub_1C7422928(v29, v51);
        if (v26 == v31 && v27 == v30)
        {
          break;
        }

        v33 = sub_1C7551DBC();

        sub_1C6FD7FC8(v28, &qword_1EC2168B0);
        sub_1C6FD7FC8(v47, &qword_1EC2168B0);
        v34 = v50;
        if (v33)
        {
          if (!v44)
          {
            __break(1u);
            return;
          }

          sub_1C7091CBC();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C7091CBC();
          v21 += v43;
          v23 += v43;
          v35 = __CFADD__(v34, 1);
          v24 = v34 + 1;
          if (!v35)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C6FD7FC8(v28, &qword_1EC2168B0);
      sub_1C6FD7FC8(v47, &qword_1EC2168B0);
LABEL_14:
      a3 = v42 + 1;
      v21 = v41 + v37;
      v22 = v40 - 1;
      v23 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C741F014(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  v155 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v149 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v162 = &v140 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v164 = &v140 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v163 = &v140 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v166 = &v140 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v165 = &v140 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v154 = &v140 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v153 = &v140 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v158 = &v140 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v157 = &v140 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v140 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v156 = a3;
  v34 = a3[1];
  if (v34 < 1)
  {
    v36 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v174 = *v146;
    if (!v174)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v140 = &v140 - v33;
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v174 = "Hastings.curatedAssets";
  v145 = a4;
  v167 = v32;
  v141 = v30;
  while (1)
  {
    v37 = v35;
    v38 = v35 + 1;
    if (v38 >= v34)
    {
      v45 = v38;
    }

    else
    {
      v168 = v34;
      v144 = v36;
      v39 = *v156;
      v40 = *(v155 + 72);
      v41 = v38;
      v173 = *v156 + v40 * v38;
      v42 = v140;
      sub_1C6FD7F70();
      sub_1C6FD7F70();
      LODWORD(v161) = sub_1C741DEA4();
      if (v5)
      {
        sub_1C6FD7FC8(v30, &qword_1EC2168B0);
        sub_1C6FD7FC8(v42, &qword_1EC2168B0);
LABEL_124:

        return;
      }

      v142 = 0;
      sub_1C6FD7FC8(v30, &qword_1EC2168B0);
      sub_1C6FD7FC8(v42, &qword_1EC2168B0);
      v143 = v37;
      v43 = v37 + 2;
      v44 = (v39 + v40 * (v37 + 2));
      v45 = v41;
      v169 = v40;
      v46 = v168;
      v47 = v173;
      while (1)
      {
        v48 = v43;
        if (v45 + 1 >= v46)
        {
          break;
        }

        v171 = v44;
        v172 = v43;
        v159 = v45;
        sub_1C6FD7F70();
        v173 = v47;
        sub_1C6FD7F70();
        v49 = v153;
        sub_1C6FD7F70();

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
        MEMORY[0x1CCA5CD70](*v49, *(v49 + 8));
        MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
        v177 = *(v49 + 16);
        sub_1C75519EC();
        v50 = v174;
        MEMORY[0x1CCA5CD70](0xD000000000000010, v174 | 0x8000000000000000);
        type metadata accessor for Hastings.Feature();
        sub_1C754F58C();
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
        v51 = v176;
        v170 = v175;
        sub_1C7422928(v49, type metadata accessor for Hastings.Feature);
        v5 = v154;
        v52 = v51;
        sub_1C6FD7F70();

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
        MEMORY[0x1CCA5CD70](*v5, *(v5 + 8));
        MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
        v177 = *(v5 + 16);
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](0xD000000000000010, v50 | 0x8000000000000000);
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
        v54 = v175;
        v53 = v176;
        sub_1C7422928(v5, type metadata accessor for Hastings.Feature);
        if (v170 == v54 && v52 == v53)
        {
          v56 = 0;
        }

        else
        {
          v56 = sub_1C7551DBC();
        }

        v40 = v169;

        sub_1C6FD7FC8(v158, &qword_1EC2168B0);
        sub_1C6FD7FC8(v157, &qword_1EC2168B0);
        v57 = v161 ^ v56;
        v48 = v172;
        v44 = (v171 + v40);
        v47 = v173 + v40;
        v45 = v159 + 1;
        v43 = v172 + 1;
        v46 = v168;
        if (v57)
        {
          goto LABEL_17;
        }
      }

      v45 = v46;
LABEL_17:
      a4 = v145;
      if (v161)
      {
        v37 = v143;
        if (v45 < v143)
        {
          goto LABEL_149;
        }

        if (v143 >= v45)
        {
          v5 = v142;
          v36 = v144;
        }

        else
        {
          v58 = v46 >= v48 ? v48 : v46;
          v59 = v40 * (v58 - 1);
          v60 = v45;
          v61 = v40 * v58;
          v62 = v143 * v40;
          v159 = v60;
          v63 = v143;
          v5 = v142;
          do
          {
            if (v63 != --v60)
            {
              v64 = *v156;
              if (!*v156)
              {
                goto LABEL_154;
              }

              sub_1C7091CBC();
              v65 = v62 < v59 || v64 + v62 >= (v64 + v61);
              if (v65)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v62 != v59)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C7091CBC();
              v40 = v169;
            }

            ++v63;
            v59 -= v40;
            v61 -= v40;
            v62 += v40;
          }

          while (v63 < v60);
          a4 = v145;
          v36 = v144;
          v45 = v159;
        }
      }

      else
      {
        v5 = v142;
        v36 = v144;
        v37 = v143;
      }
    }

    v66 = v156[1];
    if (v45 < v66)
    {
      if (__OFSUB__(v45, v37))
      {
        goto LABEL_146;
      }

      if (v45 - v37 < a4)
      {
        break;
      }
    }

LABEL_61:
    if (v45 < v37)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v36 = v130;
    }

    v87 = *(v36 + 2);
    v86 = *(v36 + 3);
    v88 = v87 + 1;
    v159 = v45;
    if (v87 >= v86 >> 1)
    {
      sub_1C6FB17EC();
      v36 = v131;
    }

    *(v36 + 2) = v88;
    v89 = v36 + 32;
    v90 = &v36[16 * v87 + 32];
    v91 = v159;
    *v90 = v37;
    *(v90 + 1) = v91;
    v173 = *v146;
    if (!v173)
    {
      goto LABEL_155;
    }

    if (v87)
    {
      while (1)
      {
        v92 = v88 - 1;
        v93 = &v89[16 * v88 - 16];
        v94 = &v36[16 * v88];
        if (v88 >= 4)
        {
          break;
        }

        if (v88 == 3)
        {
          v95 = *(v36 + 4);
          v96 = *(v36 + 5);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_81:
          if (v98)
          {
            goto LABEL_132;
          }

          v110 = *v94;
          v109 = *(v94 + 1);
          v111 = __OFSUB__(v109, v110);
          v112 = v109 - v110;
          v113 = v111;
          if (v111)
          {
            goto LABEL_135;
          }

          v114 = *(v93 + 1);
          v115 = v114 - *v93;
          if (__OFSUB__(v114, *v93))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v112, v115))
          {
            goto LABEL_140;
          }

          if (v112 + v115 >= v97)
          {
            if (v97 < v115)
            {
              v92 = v88 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (v88 < 2)
        {
          goto LABEL_134;
        }

        v117 = *v94;
        v116 = *(v94 + 1);
        v105 = __OFSUB__(v116, v117);
        v112 = v116 - v117;
        v113 = v105;
LABEL_96:
        if (v113)
        {
          goto LABEL_137;
        }

        v119 = *v93;
        v118 = *(v93 + 1);
        v105 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v105)
        {
          goto LABEL_139;
        }

        if (v120 < v112)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v92 - 1 >= v88)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_148;
        }

        if (!*v156)
        {
          goto LABEL_152;
        }

        v124 = v36;
        v125 = &v89[16 * v92 - 16];
        v126 = *v125;
        v127 = &v89[16 * v92];
        v128 = *(v127 + 1);
        sub_1C74200EC(*v156 + *(v155 + 72) * *v125, *v156 + *(v155 + 72) * *v127, (*v156 + *(v155 + 72) * v128), v173);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v128 < v126)
        {
          goto LABEL_127;
        }

        v129 = *(v124 + 2);
        if (v92 > v129)
        {
          goto LABEL_128;
        }

        *v125 = v126;
        *(v125 + 1) = v128;
        if (v92 >= v129)
        {
          goto LABEL_129;
        }

        v88 = v129 - 1;
        memmove(&v89[16 * v92], v127 + 16, 16 * (v129 - 1 - v92));
        v36 = v124;
        *(v124 + 2) = v129 - 1;
        if (v129 <= 2)
        {
          goto LABEL_110;
        }
      }

      v99 = &v89[16 * v88];
      v100 = *(v99 - 8);
      v101 = *(v99 - 7);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_130;
      }

      v104 = *(v99 - 6);
      v103 = *(v99 - 5);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_131;
      }

      v106 = *(v94 + 1);
      v107 = v106 - *v94;
      if (__OFSUB__(v106, *v94))
      {
        goto LABEL_133;
      }

      v105 = __OFADD__(v97, v107);
      v108 = v97 + v107;
      if (v105)
      {
        goto LABEL_136;
      }

      if (v108 >= v102)
      {
        v122 = *v93;
        v121 = *(v93 + 1);
        v105 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v105)
        {
          goto LABEL_144;
        }

        if (v97 < v123)
        {
          v92 = v88 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

LABEL_110:
    v34 = v156[1];
    v35 = v159;
    a4 = v145;
    v30 = v141;
    if (v159 >= v34)
    {
      goto LABEL_114;
    }
  }

  v67 = v37 + a4;
  if (__OFADD__(v37, a4))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v156[1];
  }

  if (v67 < v37)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v36 = sub_1C7420830();
LABEL_116:
    v132 = v36 + 16;
    v133 = *(v36 + 2);
    while (v133 >= 2)
    {
      if (!*v156)
      {
        goto LABEL_153;
      }

      v134 = v36;
      v135 = &v36[16 * v133];
      v136 = *v135;
      v137 = &v132[2 * v133];
      v138 = v137[1];
      sub_1C74200EC(*v156 + *(v155 + 72) * *v135, *v156 + *(v155 + 72) * *v137, (*v156 + *(v155 + 72) * v138), v174);
      if (v5)
      {
        break;
      }

      if (v138 < v136)
      {
        goto LABEL_141;
      }

      if (v133 - 2 >= *v132)
      {
        goto LABEL_142;
      }

      *v135 = v136;
      *(v135 + 1) = v138;
      v139 = *v132 - v133;
      if (*v132 < v133)
      {
        goto LABEL_143;
      }

      v133 = *v132 - 1;
      memmove(v137, v137 + 2, 16 * v139);
      *v132 = v133;
      v36 = v134;
    }

    goto LABEL_124;
  }

  if (v45 == v67)
  {
    goto LABEL_61;
  }

  v144 = v36;
  v142 = v5;
  v68 = *v156;
  v69 = *(v155 + 72);
  v70 = *v156 + v69 * (v45 - 1);
  v160 = -v69;
  v143 = v37;
  v71 = v37 - v45;
  v159 = v45;
  v161 = v68;
  v147 = v69;
  v72 = v68 + v45 * v69;
  v148 = v67;
LABEL_48:
  v150 = v72;
  v151 = v71;
  v73 = v71;
  v152 = v70;
  while (1)
  {
    v169 = v72;
    v170 = v73;
    sub_1C6FD7F70();
    v168 = v70;
    sub_1C6FD7F70();
    v74 = v163;
    sub_1C6FD7F70();

    v175 = 0;
    v176 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
    MEMORY[0x1CCA5CD70](*v74, *(v74 + 8));
    MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
    v177 = *(v74 + 16);
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](0xD000000000000010, v174 | 0x8000000000000000);
    v173 = type metadata accessor for Hastings.Feature();
    v172 = sub_1C754F58C();
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
    v76 = v175;
    v75 = v176;
    v171 = type metadata accessor for Hastings.Feature;
    sub_1C7422928(v74, type metadata accessor for Hastings.Feature);
    v77 = v166;
    v78 = v164;
    sub_1C6FD7F70();

    v175 = 0;
    v176 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
    MEMORY[0x1CCA5CD70](*v78, *(v78 + 8));
    MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
    v177 = *(v78 + 16);
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](0xD000000000000010, v174 | 0x8000000000000000);
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
    v80 = v175;
    v79 = v176;
    sub_1C7422928(v78, v171);
    if (v76 == v80 && v75 == v79)
    {

      sub_1C6FD7FC8(v77, &qword_1EC2168B0);
      sub_1C6FD7FC8(v165, &qword_1EC2168B0);
LABEL_59:
      v70 = v152 + v147;
      v71 = v151 - 1;
      v72 = v150 + v147;
      if (++v159 == v148)
      {
        v45 = v148;
        v5 = v142;
        v36 = v144;
        v37 = v143;
        goto LABEL_61;
      }

      goto LABEL_48;
    }

    v82 = sub_1C7551DBC();

    sub_1C6FD7FC8(v77, &qword_1EC2168B0);
    sub_1C6FD7FC8(v165, &qword_1EC2168B0);
    if ((v82 & 1) == 0)
    {
      goto LABEL_59;
    }

    v83 = v170;
    if (!v161)
    {
      break;
    }

    v84 = v169;
    sub_1C7091CBC();
    v85 = v168;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C7091CBC();
    v70 = v85 + v160;
    v72 = v84 + v160;
    v65 = __CFADD__(v83, 1);
    v73 = v83 + 1;
    if (v65)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_1C74200EC(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v80 = a3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  MEMORY[0x1EEE9AC00](v84);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v70 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v70 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v70 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v70 - v17;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v70 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v25 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_71;
  }

  v27 = &v80[-a2];
  if (&v80[-a2] == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_72;
  }

  v29 = v25 / v24;
  v87 = a1;
  v86 = a4;
  v30 = v27 / v24;
  if (v25 / v24 < v27 / v24)
  {
    v76 = v20;
    sub_1C741E870(a1, v25 / v24, a4);
    v77 = a4 + v29 * v24;
    v85 = v77;
    v31 = v80;
    v74 = v22;
    v75 = v24;
    while (1)
    {
      if (a4 >= v77 || a2 >= v31)
      {
        goto LABEL_69;
      }

      v81 = a1;
      v83 = a2;
      sub_1C6FD7F70();
      v82 = a4;
      v33 = v76;
      sub_1C6FD7F70();
      v34 = v78;
      sub_1C6FD7F70();

      v35 = Hastings.Feature.description.getter();
      v37 = v36;
      sub_1C7422928(v34, type metadata accessor for Hastings.Feature);
      v38 = v79;
      sub_1C6FD7F70();

      v39 = Hastings.Feature.description.getter();
      v41 = v40;
      sub_1C7422928(v38, type metadata accessor for Hastings.Feature);
      if (v35 == v39 && v37 == v41)
      {

        sub_1C6FD7FC8(v33, &qword_1EC2168B0);
        sub_1C6FD7FC8(v74, &qword_1EC2168B0);
      }

      else
      {
        v43 = sub_1C7551DBC();

        sub_1C6FD7FC8(v33, &qword_1EC2168B0);
        sub_1C6FD7FC8(v74, &qword_1EC2168B0);
        if (v43)
        {
          a4 = v82;
          v44 = v75;
          a2 = v83 + v75;
          v45 = v81;
          if (v81 < v83 || v81 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v81 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_37;
        }
      }

      v45 = v81;
      v44 = v75;
      a4 = v82 + v75;
      v47 = v81 < v82 || v81 >= a4;
      a2 = v83;
      if (v47)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v81 != v82)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v86 = a4;
LABEL_37:
      a1 = v45 + v44;
      v87 = a1;
      v31 = v80;
    }
  }

  sub_1C741E870(a2, v27 / v24, a4);
  v48 = a4 + v30 * v24;
  v49 = -v24;
  v50 = v48;
  v51 = v80;
  v81 = a1;
  v82 = a4;
  v75 = -v24;
LABEL_41:
  v52 = v51;
  v71 = v50;
  v53 = v50;
  v83 = a2;
  v78 = (a2 + v49);
  while (1)
  {
    if (v48 <= a4)
    {
      v87 = a2;
      v85 = v53;
      goto LABEL_69;
    }

    if (a2 <= a1)
    {
      break;
    }

    v79 = v52;
    v80 = v48;
    v74 = v53;
    v54 = v48 + v49;
    sub_1C6FD7F70();
    sub_1C6FD7F70();
    v55 = v72;
    sub_1C6FD7F70();

    v56 = Hastings.Feature.description.getter();
    v58 = v57;
    sub_1C7422928(v55, type metadata accessor for Hastings.Feature);
    v59 = v73;
    sub_1C6FD7F70();

    v60 = Hastings.Feature.description.getter();
    v62 = v61;
    sub_1C7422928(v59, type metadata accessor for Hastings.Feature);
    if (v56 == v60 && v58 == v62)
    {
      v64 = 0;
    }

    else
    {
      v64 = sub_1C7551DBC();
    }

    v49 = v75;
    v65 = v79;
    v51 = &v79[v75];
    sub_1C6FD7FC8(v77, &qword_1EC2168B0);
    sub_1C6FD7FC8(v76, &qword_1EC2168B0);
    a1 = v81;
    a4 = v82;
    a2 = v83;
    if (v64)
    {
      v67 = v65 < v83 || v51 >= v83;
      v48 = v80;
      if (v67)
      {
        a2 = v78;
        swift_arrayInitWithTakeFrontToBack();
        v50 = v74;
      }

      else
      {
        v68 = v74;
        v50 = v74;
        v69 = v78;
        a2 = v78;
        if (v65 != v83)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v69;
          v50 = v68;
        }
      }

      goto LABEL_41;
    }

    if (v65 < v80 || v51 >= v80)
    {
      swift_arrayInitWithTakeFrontToBack();
      v52 = &v65[v49];
      v48 = v54;
      v53 = v54;
    }

    else
    {
      v53 = v54;
      v52 = &v65[v49];
      v48 = v54;
      if (v80 != v65)
      {
        swift_arrayInitWithTakeBackToFront();
        v52 = &v65[v49];
        v48 = v54;
        v53 = v54;
      }
    }
  }

  v87 = a2;
  v85 = v71;
LABEL_69:
  sub_1C74209F4(&v87, &v86, &v85, &qword_1EC2168B0);
}

void sub_1C742092C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_72_22();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    OUTLINED_FUNCTION_66_2();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_66_2();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1C74209F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_72_22();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    OUTLINED_FUNCTION_66_2();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_66_2();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_1C7420ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1C7420BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BD80);
  v25 = OUTLINED_FUNCTION_76(v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = type metadata accessor for Hastings.Feature();
  MEMORY[0x1EEE9AC00](v28 - 8);
  OUTLINED_FUNCTION_14_0();
  v31 = (v30 - v29);
  OUTLINED_FUNCTION_38_3();
  if (v32)
  {
    OUTLINED_FUNCTION_11();
    v35 = v34 & v33;
    v37 = (v36 + 63) >> 6;
    sub_1C75504FC();
    v38 = 0;
    if (!v35)
    {
      goto LABEL_4;
    }

    do
    {
      v39 = v38;
LABEL_8:
      v40 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      OUTLINED_FUNCTION_28_37(v40 | (v39 << 6));
      v42 = v41;
      sub_1C74228D0();
      sub_1C742159C(v31, v27);
      sub_1C7422928(v31, v42);
      sub_1C6FD7FC8(v27, &qword_1EC21BD80);
    }

    while (v35);
LABEL_4:
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v37)
      {

        goto LABEL_11;
      }

      v35 = *(v23 + 56 + 8 * v39);
      ++v38;
      if (v35)
      {
        v38 = v39;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C7420D70()
{
  OUTLINED_FUNCTION_68_23();
  if (v6)
  {
    if (!*(v5 + 16))
    {
      return;
    }
  }

  else if (!sub_1C75516BC())
  {
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    sub_1C6FDEC1C();
    sub_1C7423CAC(&qword_1EDD0CD08, sub_1C6FDEC1C);
    OUTLINED_FUNCTION_89_17();
    v1 = v14;
    v2 = v15;
    v0 = v16;
    v7 = v17;
    v3 = v18;
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_42_36();
    v7 = 0;
  }

  v8 = (v0 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v9 = v7;
    v10 = v7;
    if (!v3)
    {
      break;
    }

LABEL_13:
    v11 = OUTLINED_FUNCTION_45_36();
    if (!v11)
    {
LABEL_19:
      OUTLINED_FUNCTION_64();
      sub_1C6F61E88();
      return;
    }

    while (1)
    {
      v12 = sub_1C7422460(v11, sub_1C6FDEC1C, sub_1C7237660, sub_1C72F2D40, sub_1C7235B44);

      v7 = v10;
      v3 = v4;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      if (sub_1C75516FC())
      {
        sub_1C6FDEC1C();
        swift_dynamicCast();
        v11 = v13;
        v10 = v7;
        v4 = v3;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    ++v9;
    if (*(v2 + 8 * v10))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1C7420F88()
{
  OUTLINED_FUNCTION_38_3();
  if (v1)
  {
    v2 = v0 + 56;
    OUTLINED_FUNCTION_11();
    v5 = v4 & v3;
    v7 = (v6 + 63) >> 6;
    sub_1C75504FC();
    v8 = 0;
    if (!v5)
    {
      goto LABEL_4;
    }

    do
    {
LABEL_8:
      v5 &= v5 - 1;
      sub_1C75504FC();
      v10 = OUTLINED_FUNCTION_64();
      sub_1C7421CF8(v10, v11);
    }

    while (v5);
    while (1)
    {
LABEL_4:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }
  }
}

void sub_1C7421098()
{
  OUTLINED_FUNCTION_38_3();
  if (v1)
  {
    v2 = v0;
    v3 = v0 + 56;
    OUTLINED_FUNCTION_11();
    v6 = v5 & v4;
    v8 = (v7 + 63) >> 6;
    sub_1C75504FC();
    v9 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }

    do
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1C7421E0C(*(*(v2 + 48) + ((v10 << 9) | (8 * v11))));
    }

    while (v6);
    while (1)
    {
LABEL_4:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return;
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }
  }
}

void sub_1C7421178()
{
  OUTLINED_FUNCTION_38_3();
  if (v1)
  {
    v2 = v0;
    v3 = v0 + 56;
    OUTLINED_FUNCTION_11();
    v6 = v5 & v4;
    v8 = (v7 + 63) >> 6;
    sub_1C75504FC();
    v9 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }

    do
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1C7421EF8(*(*(v2 + 48) + (v11 | (v10 << 6))), &v12);
    }

    while (v6);
    while (1)
    {
LABEL_4:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return;
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }
  }
}

void sub_1C7421264()
{
  OUTLINED_FUNCTION_68_23();
  if (v6)
  {
    if (!*(v5 + 16))
    {
      return;
    }
  }

  else if (!sub_1C75516BC())
  {
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
    sub_1C7423CAC(&qword_1EC2167A8, type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate);
    OUTLINED_FUNCTION_89_17();
    v1 = v14;
    v2 = v15;
    v0 = v16;
    v7 = v17;
    v3 = v18;
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_42_36();
    v7 = 0;
  }

  v8 = (v0 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v9 = v7;
    v10 = v7;
    if (!v3)
    {
      break;
    }

LABEL_13:
    v11 = OUTLINED_FUNCTION_45_36();
    if (!v11)
    {
LABEL_19:
      OUTLINED_FUNCTION_64();
      sub_1C6F61E88();
      return;
    }

    while (1)
    {
      v12 = sub_1C7422460(v11, type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate, sub_1C7237660, sub_1C72F4C8C, sub_1C7235B6C);

      v7 = v10;
      v3 = v4;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      if (sub_1C75516FC())
      {
        type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
        swift_dynamicCast();
        v11 = v13;
        v10 = v7;
        v4 = v3;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    ++v9;
    if (*(v2 + 8 * v10))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1C742147C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_3();
  if (v1)
  {
    v2 = v0;
    v3 = v0 + 56;
    OUTLINED_FUNCTION_11();
    v6 = v5 & v4;
    v8 = (v7 + 63) >> 6;
    sub_1C75504FC();
    v9 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }

    do
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      memcpy(__dst, (*(v2 + 48) + 192 * (v11 | (v10 << 6))), sizeof(__dst));
      sub_1C7080654(__dst, v13);
      sub_1C74225EC(__dst, v12);
      sub_1C70806B0(__dst);
      memcpy(v13, v12, sizeof(v13));
      sub_1C6FD7FC8(v13, &qword_1EC21BDB0);
    }

    while (v6);
LABEL_4:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C742159C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for Hastings.Feature();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v2;
  v8 = *v2;
  sub_1C7551F3C();
  v9 = *a1;
  v10 = a1[1];
  sub_1C75505AC();
  sub_1C6FF7814();
  v33 = v4;
  v11 = *(v4 + 24);
  sub_1C754F58C();
  sub_1C7423CAC(&qword_1EC215238, MEMORY[0x1E69C1928]);
  v32 = v11;
  sub_1C755059C();
  v12 = sub_1C7551FAC();
  v36 = v8 + 56;
  v37 = v8;
  v13 = -1 << *(v8 + 32);
  v14 = v12 & ~v13;
  if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_33:
    v24 = v31;
    v25 = 1;
    return __swift_storeEnumTagSinglePayload(v24, v25, 1, v33);
  }

  v34 = ~v13;
  v35 = *(v5 + 72);
  while (1)
  {
    sub_1C74228D0();
    v15 = *v7 == v9 && *(v7 + 1) == v10;
    if (!v15 && (sub_1C7551DBC() & 1) == 0)
    {
LABEL_25:
      sub_1C7422928(v7, type metadata accessor for Hastings.Feature);
      goto LABEL_32;
    }

    v16 = 0xE900000000000072;
    v17 = 0x6574636172616843;
    switch(v7[16])
    {
      case 1:
        v16 = 0xE800000000000000;
        v17 = 0x6E6F697461636F4CLL;
        break;
      case 2:
        v16 = 0xE500000000000000;
        v17 = 0x746E657645;
        break;
      case 3:
        v16 = 0xE400000000000000;
        v17 = 1885958740;
        break;
      case 4:
        v16 = 0xE500000000000000;
        v17 = 0x7972657551;
        break;
      case 5:
        v17 = 0x6B61657262656954;
        v16 = 0xEA00000000007265;
        break;
      default:
        break;
    }

    v18 = 0x6574636172616843;
    v19 = 0xE900000000000072;
    switch(*(a1 + 16))
    {
      case 1:
        v19 = 0xE800000000000000;
        v18 = 0x6E6F697461636F4CLL;
        break;
      case 2:
        v19 = 0xE500000000000000;
        v18 = 0x746E657645;
        break;
      case 3:
        v19 = 0xE400000000000000;
        v18 = 1885958740;
        break;
      case 4:
        v19 = 0xE500000000000000;
        v18 = 0x7972657551;
        break;
      case 5:
        v18 = 0x6B61657262656954;
        v19 = 0xEA00000000007265;
        break;
      default:
        break;
    }

    if (v17 == v18 && v16 == v19)
    {
    }

    else
    {
      v21 = sub_1C7551DBC();

      if ((v21 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    sub_1C7423CAC(&qword_1EC2147A0, MEMORY[0x1E69C1928]);
    sub_1C7550A5C();
    sub_1C7550A5C();
    if (v40 == v38 && v41 == v39)
    {
      break;
    }

    v23 = sub_1C7551DBC();

    sub_1C7422928(v7, type metadata accessor for Hastings.Feature);
    if (v23)
    {
      goto LABEL_35;
    }

LABEL_32:
    v14 = (v14 + 1) & v34;
    if (((*(v36 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  sub_1C7422928(v7, type metadata accessor for Hastings.Feature);
LABEL_35:
  v26 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C72F2BC4();
  }

  v28 = v31;
  sub_1C7422980();
  sub_1C7235DDC(v14);
  *v26 = v40;
  v24 = v28;
  v25 = 0;
  return __swift_storeEnumTagSinglePayload(v24, v25, 1, v33);
}

void sub_1C7421AD4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v25 = a1[3];
  v26 = a1[2];
  v6 = *v2;
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_2();
  v9 = v8 & ~v7;
  v28 = v10;
  v11 = 0uLL;
  if (((*(v10 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    v20 = 0;
    v21 = 0uLL;
    goto LABEL_18;
  }

  v12 = ~v7;
  while (1)
  {
    v13 = (*(v6 + 48) + 40 * v9);
    v14 = v13[2];
    v15 = v13[3];
    v16 = *v13 == v4 && v13[1] == v5;
    if (!v16 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_12;
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7036A90(v14, v26);
    if ((v17 & 1) == 0)
    {

      goto LABEL_12;
    }

    sub_1C7036A90(v15, v25);
    v19 = v18;

    if (v19)
    {
      break;
    }

LABEL_12:
    v9 = (v9 + 1) & v12;
    if (((*(v28 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      v20 = 0;
      v21 = 0uLL;
      v11 = 0uLL;
      goto LABEL_18;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v2;
  v30 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C72F3284();
    v23 = v30;
  }

  v24 = *(v23 + 48) + 40 * v9;
  v20 = *v24;
  v27 = *(v24 + 24);
  v29 = *(v24 + 8);
  sub_1C723614C(v9);
  v21 = v27;
  v11 = v29;
  *v2 = v30;
LABEL_18:
  *a2 = v20;
  *(a2 + 8) = v11;
  *(a2 + 24) = v21;
}

uint64_t sub_1C7421CF8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_2();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    OUTLINED_FUNCTION_77_15();
    if ((v10 & 1) == 0)
    {
      break;
    }

    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1C7551DBC() & 1) != 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C72F28DC();
      }

      sub_1C723634C();
      *v2 = v15;
      return OUTLINED_FUNCTION_64();
    }

    v6 = v9 + 1;
  }

  return OUTLINED_FUNCTION_64();
}

uint64_t sub_1C7421E0C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1C7551F2C();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      break;
    }

    v5 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v12 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C72F44D0();
    v10 = v12;
  }

  v8 = *(*(v10 + 48) + 8 * v7);
  sub_1C7236474(v7);
  *v2 = v12;
  return v8;
}

void sub_1C7421EF8(char a1@<W0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1C72DF388();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = 0xE400000000000000;
      v12 = 1701736302;
      switch(*(*(v6 + 48) + v9))
      {
        case 1:
          v11 = 0xE600000000000000;
          v13 = 1936876912;
          goto LABEL_21;
        case 2:
          v12 = 0x67416E6F73726570;
          v15 = 0x6570795465;
          goto LABEL_12;
        case 3:
          v12 = 1702125924;
          break;
        case 4:
          v11 = 0xE900000000000079;
          v12 = 0x6144664F74726170;
          break;
        case 5:
          v11 = 0xEA00000000006B65;
          v12 = 0x6557664F74726170;
          break;
        case 6:
          v11 = 0xE600000000000000;
          v13 = 1935762803;
LABEL_21:
          v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v11 = 0xE800000000000000;
          v14 = 1633906540;
          goto LABEL_16;
        case 8:
          v12 = 0x4C636972656E6567;
          v11 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v12 = 1952540791;
          break;
        case 0xA:
          v12 = 0x764563696C627570;
          v11 = 0xEB00000000746E65;
          break;
        case 0xB:
          v12 = 0x6C616E6F73726570;
          v15 = 0x746E657645;
LABEL_12:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0xC:
          v12 = 0x746954636973756DLL;
          v11 = 0xEA0000000000656CLL;
          break;
        case 0xD:
          v11 = 0xEB00000000747369;
          v12 = 0x747241636973756DLL;
          break;
        case 0xE:
          v11 = 0xEA00000000006572;
          v12 = 0x6E6547636973756DLL;
          break;
        case 0xF:
          v12 = 1685024621;
          break;
        case 0x10:
          v11 = 0xE800000000000000;
          v14 = 1634891108;
LABEL_16:
          v12 = v14 | 0x6E6F697400000000;
          break;
        case 0x11:
          v11 = 0xE600000000000000;
          v12 = 0x706972547369;
          break;
        case 0x12:
          v12 = 0x6D69546C6C417369;
          v11 = 0xE900000000000065;
          break;
        case 0x13:
          v11 = 0xE900000000000072;
          v12 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v16 = 0xE400000000000000;
      v17 = 1701736302;
      switch(a1)
      {
        case 1:
          v16 = 0xE600000000000000;
          v18 = 1936876912;
          goto LABEL_44;
        case 2:
          v17 = 0x67416E6F73726570;
          v20 = 0x6570795465;
          goto LABEL_35;
        case 3:
          v17 = 1702125924;
          break;
        case 4:
          v16 = 0xE900000000000079;
          v17 = 0x6144664F74726170;
          break;
        case 5:
          v16 = 0xEA00000000006B65;
          v17 = 0x6557664F74726170;
          break;
        case 6:
          v16 = 0xE600000000000000;
          v18 = 1935762803;
LABEL_44:
          v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v16 = 0xE800000000000000;
          v19 = 1633906540;
          goto LABEL_39;
        case 8:
          v17 = 0x4C636972656E6567;
          v16 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v17 = 1952540791;
          break;
        case 10:
          v17 = 0x764563696C627570;
          v16 = 0xEB00000000746E65;
          break;
        case 11:
          v17 = 0x6C616E6F73726570;
          v20 = 0x746E657645;
LABEL_35:
          v16 = v20 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v17 = 0x746954636973756DLL;
          v16 = 0xEA0000000000656CLL;
          break;
        case 13:
          v16 = 0xEB00000000747369;
          v17 = 0x747241636973756DLL;
          break;
        case 14:
          v16 = 0xEA00000000006572;
          v17 = 0x6E6547636973756DLL;
          break;
        case 15:
          v17 = 1685024621;
          break;
        case 16:
          v16 = 0xE800000000000000;
          v19 = 1634891108;
LABEL_39:
          v17 = v19 | 0x6E6F697400000000;
          break;
        case 17:
          v16 = 0xE600000000000000;
          v17 = 0x706972547369;
          break;
        case 18:
          v17 = 0x6D69546C6C417369;
          v16 = 0xE900000000000065;
          break;
        case 19:
          v16 = 0xE900000000000072;
          v17 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      if (v12 == v17 && v11 == v16)
      {
        break;
      }

      v22 = sub_1C7551DBC();

      if (v22)
      {
        goto LABEL_57;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_57:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v25 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C72F2FD4();
      v24 = v25;
    }

    *a2 = *(*(v24 + 48) + v9);
    sub_1C72365C4();
    *v3 = v25;
  }

  else
  {
LABEL_55:
    *a2 = 20;
  }
}

uint64_t sub_1C7422460(void *a1, void (*a2)(void), void (*a3)(uint64_t), void (*a4)(void), uint64_t (*a5)(uint64_t, id))
{
  v6 = v5;
  v8 = *v5;
  if ((*v5 & 0xC000000000000001) == 0)
  {
    a2(0);
    sub_1C75513DC();
    OUTLINED_FUNCTION_9_2();
    v17 = ~v16;
    while (1)
    {
      v18 = v15 & v17;
      if (((*(v8 + 56 + (((v15 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v17)) & 1) == 0)
      {
        break;
      }

      v19 = *(*(v8 + 48) + 8 * v18);
      v20 = sub_1C75513EC();

      if (v20)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v6;
        v25 = *v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          a4();
          v22 = v25;
        }

        v13 = *(*(v22 + 48) + 8 * v18);
        a3(v18);
        *v6 = v25;
        return v13;
      }

      v15 = v18 + 1;
    }

    return 0;
  }

  if (v8 < 0)
  {
    v10 = *v5;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  sub_1C75504FC();
  v11 = a1;
  v12 = sub_1C755170C();

  if ((v12 & 1) == 0)
  {

    return 0;
  }

  v13 = a5(v10, v11);

  return v13;
}

double sub_1C74225EC@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  sub_1C7551F3C();
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  sub_1C75505AC();
  v25 = v5;
  sub_1C6FF87E8();
  v8 = sub_1C7551FAC();
  v9 = -1 << *(v4 + 32);
  v10 = v8 & ~v9;
  if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_22:
    sub_1C7423CA4(__dst);
    memcpy(a2, __dst, 0xC0uLL);
    return result;
  }

  v26 = ~v9;
  while (1)
  {
    memcpy(__dst, (*(v4 + 48) + 192 * v10), 0xC0uLL);
    v11 = __dst[1] == v6 && __dst[2] == v7;
    if (!v11 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_21;
    }

    v12 = 0xD000000000000011;
    v13 = "edMoodsInferredFallback";
    switch(LOBYTE(__dst[0]))
    {
      case 1:
        v12 = 0xD000000000000016;
        v13 = "appleMusicMaestro";
        break;
      case 2:
        v12 = 0xD000000000000015;
        v13 = "appleMusicSimpleSearch";
        break;
      case 3:
        v12 = 0xD000000000000010;
        v13 = "appleMusicSmartSearch";
        break;
      default:
        break;
    }

    v14 = v13 | 0x8000000000000000;
    v15 = 0xD000000000000011;
    v16 = "edMoodsInferredFallback";
    switch(v25)
    {
      case 1:
        v15 = 0xD000000000000016;
        v16 = "appleMusicMaestro";
        break;
      case 2:
        v15 = 0xD000000000000015;
        v16 = "appleMusicSimpleSearch";
        break;
      case 3:
        v15 = 0xD000000000000010;
        v16 = "appleMusicSmartSearch";
        break;
      default:
        break;
    }

    if (v12 == v15 && v14 == (v16 | 0x8000000000000000))
    {
      break;
    }

    v18 = sub_1C7551DBC();
    sub_1C7080654(__dst, v27);

    sub_1C70806B0(__dst);
    if (v18)
    {
      goto LABEL_24;
    }

LABEL_21:
    v10 = (v10 + 1) & v26;
    if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  sub_1C7080654(__dst, v27);

  sub_1C70806B0(__dst);
LABEL_24:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v23;
  v27[0] = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C72F2FE8();
    v21 = v27[0];
  }

  memmove(a2, (*(v21 + 48) + 192 * v10), 0xC0uLL);
  sub_1C72369E8(v10);
  *v23 = v27[0];
  return CGRectMake(v22);
}

uint64_t sub_1C74228D0()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C7422928(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7422980()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

unint64_t sub_1C74229D8()
{
  result = qword_1EC21BCD0;
  if (!qword_1EC21BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BCD0);
  }

  return result;
}

unint64_t sub_1C7422F84()
{
  result = qword_1EC21BCE0;
  if (!qword_1EC21BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BCE0);
  }

  return result;
}

void sub_1C7423000()
{
  sub_1C754FF1C();
  if (v0 <= 0x3F)
  {
    sub_1C7423284();
    if (v1 <= 0x3F)
    {
      sub_1C74232D4();
      if (v2 <= 0x3F)
      {
        sub_1C742338C();
        if (v3 <= 0x3F)
        {
          sub_1C74235F4(319, &qword_1EC21BD18, &qword_1EC2168C8);
          if (v4 <= 0x3F)
          {
            sub_1C7423444(319, &qword_1EC21BD20, 255, type metadata accessor for Hastings.Asset, MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              sub_1C7423444(319, &qword_1EC21BD28, v5, type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.DiagnosticReporter, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1C74234CC();
                if (v8 <= 0x3F)
                {
                  sub_1C7042C44();
                  if (v9 <= 0x3F)
                  {
                    sub_1C7423560();
                    if (v10 <= 0x3F)
                    {
                      sub_1C74235F4(319, &qword_1EC21BD40, &qword_1EC214E90);
                      if (v11 <= 0x3F)
                      {
                        sub_1C7423444(319, &qword_1EC21BD48, 255, type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset, MEMORY[0x1E69E62F8]);
                        if (v12 <= 0x3F)
                        {
                          sub_1C74235F4(319, &qword_1EC21BD50, &qword_1EC214E80);
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1C7423284()
{
  if (!qword_1EC21BCF8)
  {
    v0 = sub_1C7550C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC21BCF8);
    }
  }
}

void sub_1C74232D4()
{
  if (!qword_1EC21BD00)
  {
    type metadata accessor for Hastings.Feature();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2168C8);
    sub_1C7423CAC(&qword_1EC216778, type metadata accessor for Hastings.Feature);
    v0 = sub_1C755055C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC21BD00);
    }
  }
}

void sub_1C742338C()
{
  if (!qword_1EC21BD08)
  {
    type metadata accessor for Hastings.Asset(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21BD10);
    sub_1C7423CAC(&qword_1EC216190, type metadata accessor for Hastings.Asset);
    v0 = sub_1C755055C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC21BD08);
    }
  }
}

void sub_1C7423444(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C74234CC()
{
  if (!qword_1EC21BD30)
  {
    type metadata accessor for Hastings.Asset(255);
    sub_1C7423CAC(&qword_1EC216190, type metadata accessor for Hastings.Asset);
    v0 = sub_1C755101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC21BD30);
    }
  }
}

void sub_1C7423560()
{
  if (!qword_1EC21BD38)
  {
    type metadata accessor for Hastings.Feature();
    sub_1C7423CAC(&qword_1EC216778, type metadata accessor for Hastings.Feature);
    v0 = sub_1C755101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC21BD38);
    }
  }
}

void sub_1C74235F4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1C7550C3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
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

void sub_1C742381C()
{
  type metadata accessor for Hastings.Asset(319);
  if (v0 <= 0x3F)
  {
    sub_1C7423560();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *_s20ElectedAssetIteratorV16ProcessingResultOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s20ElectedAssetIteratorV18DiagnosticReporterC10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7423A34()
{
  result = qword_1EC21BD68;
  if (!qword_1EC21BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BD68);
  }

  return result;
}

unint64_t sub_1C7423A8C()
{
  result = qword_1EC21BD70;
  if (!qword_1EC21BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BD70);
  }

  return result;
}

unint64_t sub_1C7423AE4()
{
  result = qword_1EC21BD78;
  if (!qword_1EC21BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BD78);
  }

  return result;
}

uint64_t sub_1C7423B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BD98);
  v12 = sub_1C7099594(&qword_1EC21BDA0, &qword_1EC21BD98);
  *&v10 = a2;
  *(&v10 + 1) = a3;
  v8 = *a4;
  *(v8 + 16) = a1 + 1;
  return sub_1C6F699F8(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_1C7423C0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1C6F699F8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1C7423CAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_21_57(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_32_39(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_42_36()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_43_36()
{
}

void OUTLINED_FUNCTION_60_24()
{
  v2 = *(v0 - 152);
  *(v0 - 160) = *(v0 - 160);
  *(v0 - 152) = v2;

  JUMPOUT(0x1CCA5CD70);
}

BOOL OUTLINED_FUNCTION_64_20()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_88_17()
{

  sub_1C6FB0EFC();
}

uint64_t OUTLINED_FUNCTION_89_17()
{

  return sub_1C7550FEC();
}

uint64_t AlchemistConstants.OutputType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C7423FD8()
{
  result = sub_1C755201C();
  qword_1EC21BDB8 = result;
  unk_1EC21BDC0 = v1;
  return result;
}

uint64_t static AlchemistConstants.smkDepthPulseCycleTimeInSeconds.getter()
{
  if (qword_1EC2140E0 != -1)
  {
    swift_once();
  }

  return qword_1EC21BDB8;
}

unint64_t sub_1C7424058()
{
  result = qword_1EC21BDC8;
  if (!qword_1EC21BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BDC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AlchemistConstants(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AlchemistConstants.OutputType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C7424234(uint64_t a1, uint64_t (*a2)(uint64_t), double a3)
{
  if (*(a1 + 16))
  {
    v28 = MEMORY[0x1E69E7CC0];
    v27 = *(a1 + 16);
    sub_1C716DA70();
    v7 = a2(a1);
    v9 = v8;
    v10 = v27;
    v11 = 0;
    v12 = a1 + 64;
    v13 = 1;
    v14 = -2;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < v13 << *(a1 + 32))
      {
        v15 = v7 >> 6;
        v16 = v13 << v7;
        if ((*(v12 + 8 * (v7 >> 6)) & (v13 << v7)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_24;
        }

        v17 = *(*(a1 + 56) + 8 * v7);
        v18 = *(v28 + 16);
        if (v18 >= *(v28 + 24) >> 1)
        {
          sub_1C716DA70();
          OUTLINED_FUNCTION_14_66();
        }

        *(v28 + 16) = v18 + 1;
        *(v28 + 8 * v18 + 32) = (v17 - a3) * (v17 - a3);
        v19 = v13 << *(a1 + 32);
        if (v7 >= v19)
        {
          goto LABEL_25;
        }

        v20 = *(v12 + 8 * v15);
        if ((v20 & v16) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_27;
        }

        v21 = v20 & (v14 << (v7 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v15 << 6;
          v23 = v15 + 1;
          v24 = (a1 + 72 + 8 * v15);
          while (v23 < (v19 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              sub_1C6F9ED50(v7, v9, v6 & 1);
              OUTLINED_FUNCTION_14_66();
              v19 = __clz(__rbit64(v25)) + v22;
              goto LABEL_18;
            }
          }

          sub_1C6F9ED50(v7, v9, v6 & 1);
          OUTLINED_FUNCTION_14_66();
        }

LABEL_18:
        if (++v11 == v10)
        {
          return;
        }

        v6 = 0;
        v9 = *(a1 + 36);
        v7 = v19;
        if (v19 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_1C7424474(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_14_0();
  v46 = v12 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v48 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v42 = v19 - v18;
  OUTLINED_FUNCTION_21_58();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v36 = v21;
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  v24 = sub_1C755106C();
  if (!v24)
  {
    return sub_1C7550BAC();
  }

  v47 = v24;
  v51 = sub_1C755199C();
  v38 = sub_1C75519AC();
  sub_1C755194C();
  result = sub_1C755105C();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v10;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_1C75510CC();
      (*v39)(v16);
      v27(v50, 0);
      v28 = v49;
      v44(v16, v46);
      if (v28)
      {
        v31 = OUTLINED_FUNCTION_18_62();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = OUTLINED_FUNCTION_18_62();
      v30(v29);
      sub_1C755198C();
      result = sub_1C755108C();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C742484C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1C7424890(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (1)
    {
      v4 = v9 + 1;
      if (v9 + 1 >= v7)
      {
        return 0;
      }

      v10 = *(result + 72 + 8 * v9);
      v8 += 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) + v8;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_1C742499C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v11;
  v23 = *(a1 + 16);
  if (v23)
  {
    v22 = a2;
    v14 = *(v6 + 16);
    v15 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14(&v22 - v11, v15, v4, v12);
    v16 = (v6 + 32);
    for (i = 1; v23 != i; ++i)
    {
      (v14)(v9, v15 + *(v6 + 72) * i, v4);
      sub_1C70BBF78();
      v18 = sub_1C755060C();
      v19 = *(v6 + 8);
      if (v18)
      {
        v19(v13, v4);
        (*v16)(v13, v9, v4);
      }

      else
      {
        v19(v9, v4);
      }
    }

    v20 = v22;
    (*v16)(v22, v13, v4);
    return __swift_storeEnumTagSinglePayload(v20, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1C7424BCC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_1C7424C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t static StoryGenerationUtilities.normalizedSoftmaxWithTemperature(_:temperature:)(uint64_t a1, double a2)
{
  if (a2 >= 0.0)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (a1 + 32);
      v8 = 0.0;
      do
      {
        v9 = v7[v6++];
        v8 = v8 + v9;
      }

      while (v5 != v6);
      v10 = 0;
      v11 = v8 / v5;
      v12 = 0.0;
      do
      {
        v13 = v7[v10++];
        v12 = v12 + (v13 - v11) * (v13 - v11);
      }

      while (v5 != v10);
      v14 = sqrt(v12 / v5);
      OUTLINED_FUNCTION_16_63();
      sub_1C716DA70();
      v15 = v14 + 0.000001;
      v16 = v38;
      v17 = *(v38 + 16);
      do
      {
        v18 = *v7;
        v38 = v16;
        v19 = *(v16 + 24);
        if (v17 >= v19 >> 1)
        {
          OUTLINED_FUNCTION_15(v19);
          sub_1C716DA70();
        }

        *(v16 + 16) = v17 + 1;
        *(v16 + 8 * v17 + 32) = (v18 - v11) / v15;
        ++v7;
        ++v17;
        --v5;
      }

      while (v5);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    v20 = COERCE_DOUBLE(sub_1C742484C(v16));
    if (v21)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v20;
    }

    v23 = *(v16 + 16);
    if (v23)
    {
      OUTLINED_FUNCTION_16_63();
      sub_1C716DA70();
      v24 = v38;
      v25 = *(v38 + 16);
      v26 = 32;
      do
      {
        v27 = exp((*(v16 + v26) - v22) / a2);
        v38 = v24;
        v28 = *(v24 + 24);
        if (v25 >= v28 >> 1)
        {
          OUTLINED_FUNCTION_15(v28);
          sub_1C716DA70();
        }

        *(v24 + 16) = v25 + 1;
        *(v24 + 8 * v25 + 32) = v27;
        v26 += 8;
        ++v25;
        --v23;
      }

      while (v23);
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
    }

    v29 = *(v24 + 16);
    if (v29)
    {
      v30 = 0;
      v31 = 0.0;
      do
      {
        v32 = *(v24 + 8 * v30++ + 32);
        v31 = v31 + v32;
      }

      while (v29 != v30);
      OUTLINED_FUNCTION_16_63();
      sub_1C716DA70();
      v2 = v38;
      v33 = *(v38 + 16);
      v34 = 32;
      do
      {
        v35 = *(v24 + v34);
        v36 = *(v38 + 24);
        if (v33 >= v36 >> 1)
        {
          OUTLINED_FUNCTION_15(v36);
          sub_1C716DA70();
        }

        *(v38 + 16) = v33 + 1;
        *(v38 + 8 * v33 + 32) = v35 / v31;
        v34 += 8;
        ++v33;
        --v29;
      }

      while (v29);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    sub_1C7196EF4();
    swift_allocError();
    *v4 = a2;
    *(v4 + 8) = 0;
    swift_willThrow();
  }

  return v2;
}

uint64_t static StoryGenerationUtilities.weightedSamplingWithoutReplacement<A, B>(items:probabilities:sampleSize:using:)(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a6;
  v52 = a7;
  v12 = sub_1C7550BFC();
  if (v12 < 1)
  {
    OUTLINED_FUNCTION_21_58();
    return sub_1C7550BAC();
  }

  v13 = v12;
  if (v12 != *(a2 + 16))
  {
    sub_1C7196EF4();
    swift_allocError();
    *v20 = 7;
    *(v20 + 8) = 2;
    swift_willThrow();
    return a1;
  }

  if (v12 < a3)
  {
    if (qword_1EDD0DBE0 != -1)
    {
LABEL_32:
      OUTLINED_FUNCTION_2();
      swift_once();
    }

    v14 = sub_1C754FF1C();
    __swift_project_value_buffer(v14, qword_1EDD28D28);
    v15 = sub_1C754FEEC();
    v16 = sub_1C75511BC();
    v17 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_96_0();
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C6F5C000, v15, v16, "Returning all items as the sample size exceeds the population", v19, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C75504FC();
    return a1;
  }

  v48 = a1;
  v49 = a3;
  v53 = MEMORY[0x1E69E7CC0];
  sub_1C716E164();
  v21 = 0;
  v22 = v53;
  v23 = a2 + 32;
  v50 = a5;
  do
  {
    if (v13 == v21)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v24 = sub_1C7426C50(v21, *(v23 + 8 * v21));
    if (v7)
    {

      return a1;
    }

    v26 = v24;
    v27 = v25;
    v53 = v22;
    v29 = *(v22 + 16);
    v28 = *(v22 + 24);
    a1 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      OUTLINED_FUNCTION_15(v28);
      sub_1C716E164();
      v22 = v53;
    }

    ++v21;
    *(v22 + 16) = a1;
    v30 = v22 + 16 * v29;
    *(v30 + 32) = v26;
    *(v30 + 40) = v27;
  }

  while (v13 != v21);
  v53 = v22;
  sub_1C75504FC();
  sub_1C7426874(&v53);

  sub_1C7033F04(v49, v53);
  a1 = v34 >> 1;
  v35 = (v34 >> 1) - v33;
  if (!__OFSUB__(v34 >> 1, v33))
  {
    v47[7] = 0;
    if (v35)
    {
      v36 = v32;
      v37 = v33;
      v53 = MEMORY[0x1E69E7CC0];
      sub_1C716D854();
      if ((v35 & 0x8000000000000000) == 0)
      {
        v38 = v53;
        v39 = (v36 + 16 * v37);
        while (v37 < a1)
        {
          v40 = *v39;
          v53 = v38;
          v42 = *(v38 + 16);
          v41 = *(v38 + 24);
          if (v42 >= v41 >> 1)
          {
            OUTLINED_FUNCTION_15(v41);
            sub_1C716D854();
            v38 = v53;
          }

          *(v38 + 16) = v42 + 1;
          *(v38 + 8 * v42 + 32) = v40;
          ++v37;
          v39 += 2;
          if (a1 == v37)
          {
            v43 = swift_unknownObjectRelease();
            goto LABEL_29;
          }
        }

        goto LABEL_31;
      }

      goto LABEL_34;
    }

    v43 = swift_unknownObjectRelease();
    v38 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v53 = v38;
    MEMORY[0x1EEE9AC00](v43);
    v47[2] = v50;
    v47[3] = v51;
    v47[4] = v52;
    v47[5] = v48;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216650);
    v45 = sub_1C7426D84();
    a1 = sub_1C7424474(sub_1C7426D50, v47, v44, v50, MEMORY[0x1E69E73E0], v45, MEMORY[0x1E69E7410], v46);

    return a1;
  }

  __break(1u);
LABEL_34:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C742537C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360);
  v85 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v78 - v9;
  v10 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v87 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  if (qword_1EDD0DBE8 != -1)
  {
LABEL_53:
    OUTLINED_FUNCTION_2_123();
  }

  v16 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v17 = v16;
  v18 = PerformanceMeasure.init(name:log:)();
  if (qword_1EDD0DBE0 != -1)
  {
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  v19 = sub_1C754FF1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDD28D28);
  v21 = sub_1C754FEEC();
  v22 = sub_1C755117C();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_96_0();
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C6F5C000, v21, v22, "Beginning GaussianResults", v23, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v24 = *(a1 + 16);
  if (v24 < 2)
  {
    v33 = sub_1C75504FC();
    v34 = sub_1C71CD9D0(v33);
    v35 = v34;
    if ((a3 & 1) != 0 || *(v34 + 16) <= a2)
    {
      goto LABEL_51;
    }

    if (a2 < 0)
    {
      __break(1u);
LABEL_55:
      __break(1u);
    }

    else
    {
      v36 = OUTLINED_FUNCTION_21_58();
      v24 = sub_1C74B8130(v36, v37, v35);
      v20 = v38;
      a2 = v39;
      a3 = v40;

      if ((a3 & 1) == 0)
      {
LABEL_18:
        sub_1C739C57C(v24, v20, a2, a3);
        v35 = v41;
LABEL_40:
        swift_unknownObjectRelease();
        goto LABEL_51;
      }

      sub_1C7551DEC();
      OUTLINED_FUNCTION_141();
      swift_unknownObjectRetain_n();
      v69 = swift_dynamicCastClass();
      if (!v69)
      {
        swift_unknownObjectRelease();
        v69 = MEMORY[0x1E69E7CC0];
      }

      v70 = *(v69 + 16);

      if (!__OFSUB__(a3 >> 1, a2))
      {
        if (v70 == (a3 >> 1) - a2)
        {
          swift_dynamicCastClass();
          OUTLINED_FUNCTION_141();
          swift_unknownObjectRelease();
          if (!v35)
          {
            swift_unknownObjectRelease();
            v35 = MEMORY[0x1E69E7CC0];
          }

          goto LABEL_40;
        }

        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_57:
    swift_unknownObjectRelease_n();
    goto LABEL_18;
  }

  v28 = OUTLINED_FUNCTION_5_95();
  if (!v29)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_12:
    OUTLINED_FUNCTION_109_2();
    v28 = OUTLINED_FUNCTION_19_70(v31);
  }

  while (v32);
  while (1)
  {
LABEL_9:
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v30 >= v27)
    {
      break;
    }

    ++v25;
    if (*(v26 + 8 * v30))
    {
      goto LABEL_12;
    }
  }

  v42 = v28 / v24;
  v43 = sub_1C75504FC();
  sub_1C7424234(v43, sub_1C7117368, v42);
  if (*(v44 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_12_74();
    }

    while (!v45);
  }

  sqrt(0.0 / (v24 - 1));
  v46 = sub_1C7429208();
  v88 = sub_1C739C5A8(v46);
  sub_1C74267C0(&v88);

  v24 = v88;
  v47 = *(v88 + 16);
  if (v47)
  {
    v79 = v20;
    v80 = a3;
    v81 = a2;
    v82 = a1;
    v83 = v18;
    v88 = MEMORY[0x1E69E7CC0];
    sub_1C716E10C(0, v47, 0);
    v48 = v84;
    v49 = *(v85 + 80);
    v78 = v24;
    v50 = v24 + ((v49 + 32) & ~v49);
    v85 = *(v85 + 72);
    v35 = v88;
    v51 = (v87 + 32);
    do
    {
      v52 = v86;
      sub_1C74295B8(v50, v86);
      sub_1C7429628(v52, v48);
      v53 = *v51;
      (*v51)(v15, v48, v10);
      v88 = v35;
      v54 = v15;
      v55 = v10;
      v57 = *(v35 + 16);
      v56 = *(v35 + 24);
      v24 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v58 = OUTLINED_FUNCTION_15(v56);
        sub_1C716E10C(v58, v57 + 1, 1);
        v48 = v84;
        v35 = v88;
      }

      *(v35 + 16) = v24;
      v53(v35 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v57, v54, v55);
      v50 += v85;
      --v47;
      v10 = v55;
      v15 = v54;
    }

    while (v47);

    a2 = v81;
    a3 = v80;
    v20 = v79;
    if (v80)
    {
      goto LABEL_48;
    }
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      goto LABEL_48;
    }
  }

  if (*(v35 + 16) > a2)
  {
    if (a2 < 0)
    {
      goto LABEL_55;
    }

    v59 = OUTLINED_FUNCTION_21_58();
    v61 = sub_1C74B8130(v59, v60, v35);
    v63 = v62;
    v65 = v64;
    v67 = v66;

    if (v67)
    {
      sub_1C7551DEC();
      OUTLINED_FUNCTION_141();
      swift_unknownObjectRetain_n();
      v71 = swift_dynamicCastClass();
      if (!v71)
      {
        swift_unknownObjectRelease();
        v71 = MEMORY[0x1E69E7CC0];
      }

      v72 = *(v71 + 16);

      if (__OFSUB__(v67 >> 1, v65))
      {
        __break(1u);
      }

      else if (v72 == (v67 >> 1) - v65)
      {
        swift_dynamicCastClass();
        OUTLINED_FUNCTION_141();
        swift_unknownObjectRelease();
        if (!v35)
        {
          swift_unknownObjectRelease();
          v35 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_47;
      }

      swift_unknownObjectRelease_n();
    }

    sub_1C739C57C(v61, v63, v65, v67);
    v35 = v68;
LABEL_47:
    swift_unknownObjectRelease();
  }

LABEL_48:
  v73 = sub_1C754FEEC();
  v74 = sub_1C755117C();
  if (os_log_type_enabled(v73, v74))
  {
    OUTLINED_FUNCTION_96_0();
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_1C6F5C000, v73, v74, "Finished GaussianResults", v75, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v76);
  }

LABEL_51:
  sub_1C6F85170();

  return v35;
}

uint64_t sub_1C7425AD0(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_1EDD0DBE8 != -1)
  {
LABEL_53:
    OUTLINED_FUNCTION_2_123();
  }

  v6 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v7 = v6;
  PerformanceMeasure.init(name:log:)();
  if (qword_1EDD0DBE0 != -1)
  {
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  v8 = sub_1C754FF1C();
  __swift_project_value_buffer(v8, qword_1EDD28D28);
  v9 = sub_1C754FEEC();
  v10 = sub_1C755117C();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_96_0();
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C6F5C000, v9, v10, "Beginning GaussianResults", v11, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v12 = *(a1 + 16);
  if (v12 < 2)
  {
    v21 = sub_1C75504FC();
    v22 = sub_1C71CD90C(v21);
    v23 = v22;
    if ((a3 & 1) != 0 || *(v22 + 16) <= a2)
    {
      goto LABEL_51;
    }

    if (a2 < 0)
    {
      __break(1u);
LABEL_55:
      __break(1u);
    }

    else
    {
      sub_1C74B833C(0);
      v25 = v24;
      v27 = v26;

      if ((v27 & 1) == 0)
      {
LABEL_18:
        sub_1C739C274();
        v23 = v28;
LABEL_40:
        swift_unknownObjectRelease();
        goto LABEL_51;
      }

      sub_1C7551DEC();
      swift_unknownObjectRetain_n();
      v55 = swift_dynamicCastClass();
      if (!v55)
      {
        swift_unknownObjectRelease();
        v55 = MEMORY[0x1E69E7CC0];
      }

      v56 = *(v55 + 16);

      if (!__OFSUB__(v27 >> 1, v25))
      {
        if (v56 == (v27 >> 1) - v25)
        {
          v23 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v23)
          {
            swift_unknownObjectRelease();
            v23 = MEMORY[0x1E69E7CC0];
          }

          goto LABEL_40;
        }

        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_57:
    swift_unknownObjectRelease_n();
    goto LABEL_18;
  }

  v16 = OUTLINED_FUNCTION_5_95();
  if (!v17)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_12:
    OUTLINED_FUNCTION_109_2();
    v16 = OUTLINED_FUNCTION_19_70(v19);
  }

  while (v20);
  while (1)
  {
LABEL_9:
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v18 >= v15)
    {
      break;
    }

    ++v14;
    if (*(v13 + 8 * v18))
    {
      goto LABEL_12;
    }
  }

  v29 = v16 / v12;
  v30 = sub_1C75504FC();
  sub_1C7424234(v30, sub_1C7117368, v29);
  if (*(v31 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_12_74();
    }

    while (!v32);
  }

  sqrt(0.0 / (v12 - 1));
  v33 = sub_1C7429208();
  sub_1C739CBBC(v33, v34, v35, v36, v37, v38, v39, v40, v65, v67, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v71[10], v71[11], v71[12], v71[13]);
  v71[0] = v41;
  sub_1C7426918(v71);

  v42 = v71[0];
  v43 = *(v71[0] + 16);
  if (v43)
  {
    v66 = a3;
    v68 = a2;
    v71[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v23 = v71[0];
    v44 = (v42 + 40);
    do
    {
      v45 = *(v44 - 1);
      v46 = *v44;
      v71[0] = v23;
      v48 = *(v23 + 16);
      v47 = *(v23 + 24);
      sub_1C75504FC();
      if (v48 >= v47 >> 1)
      {
        sub_1C6F7ED9C();
        v23 = v71[0];
      }

      *(v23 + 16) = v48 + 1;
      v49 = v23 + 16 * v48;
      *(v49 + 32) = v45;
      *(v49 + 40) = v46;
      v44 += 3;
      --v43;
    }

    while (v43);

    a2 = v68;
    if (v66)
    {
      goto LABEL_48;
    }
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      goto LABEL_48;
    }
  }

  if (*(v23 + 16) > a2)
  {
    if (a2 < 0)
    {
      goto LABEL_55;
    }

    sub_1C74B833C(0);
    v51 = v50;
    v53 = v52;

    if (v53)
    {
      sub_1C7551DEC();
      swift_unknownObjectRetain_n();
      v57 = swift_dynamicCastClass();
      if (!v57)
      {
        swift_unknownObjectRelease();
        v57 = MEMORY[0x1E69E7CC0];
      }

      v58 = *(v57 + 16);

      if (__OFSUB__(v53 >> 1, v51))
      {
        __break(1u);
      }

      else if (v58 == (v53 >> 1) - v51)
      {
        v23 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v23)
        {
          swift_unknownObjectRelease();
          v23 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_47;
      }

      swift_unknownObjectRelease_n();
    }

    sub_1C739C274();
    v23 = v54;
LABEL_47:
    swift_unknownObjectRelease();
  }

LABEL_48:
  v59 = sub_1C754FEEC();
  v60 = sub_1C755117C();
  v61 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v61, v62))
  {
    OUTLINED_FUNCTION_96_0();
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1C6F5C000, v59, v60, "Finished GaussianResults", v63, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

LABEL_51:
  sub_1C6F85170();

  return v23;
}

uint64_t static StoryGenerationUtilities.gaussianResults<A>(from:comparator:maximumNumberOfResults:cumulativeDistributionThreshold:)(double a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7, unint64_t a8)
{
  v55 = *&a3;
  v56 = a4;
  if (qword_1EDD0DBE8 != -1)
  {
    OUTLINED_FUNCTION_2_123();
  }

  v13 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v14 = v13;
  v15 = PerformanceMeasure.init(name:log:)();
  if (qword_1EDD0DBE0 != -1)
  {
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  v16 = sub_1C754FF1C();
  v57 = __swift_project_value_buffer(v16, qword_1EDD28D28);
  v17 = sub_1C754FEEC();
  v18 = sub_1C755117C();
  v19 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_96_0();
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C6F5C000, v17, v18, "Beginning GaussianResults", v21, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v22 = sub_1C755050C();
  if (v22 < 2)
  {
    OUTLINED_FUNCTION_35();
    *&v61 = sub_1C75504FC();
    OUTLINED_FUNCTION_6_105();
    sub_1C75504EC();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_35();
    v31 = sub_1C7550C4C();
    if ((a6 & 1) == 0 && sub_1C7550BFC() > a5)
    {
      v60 = a5;
      OUTLINED_FUNCTION_6_105();
      sub_1C7550C3C();
      OUTLINED_FUNCTION_1_133();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_15_77();
      sub_1C755109C();
      v58 = v61;
      v59 = v62;
      OUTLINED_FUNCTION_6_105();
      sub_1C75515DC();
      OUTLINED_FUNCTION_4_104();
      OUTLINED_FUNCTION_35();
      v31 = sub_1C7550C4C();
    }
  }

  else
  {
    v23 = v22;
    v53 = a6;
    v51 = a5;
    v54 = v15;
    v24 = MEMORY[0x1E69E63B0];
    *&v58 = sub_1C755053C();
    v60 = 0;
    OUTLINED_FUNCTION_6_105();
    v25 = sub_1C755051C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_15_77();
    v26 = sub_1C75509FC();
    v27 = *&v61 / v23;
    v52 = v58;
    *&v61 = v58;
    MEMORY[0x1EEE9AC00](v26);
    v49 = v27;
    WitnessTable = swift_getWitnessTable();
    if (*(sub_1C7424474(sub_1C7426DE8, &v47, v25, v24, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v29) + 16))
    {
      do
      {
        OUTLINED_FUNCTION_12_74();
      }

      while (!v30);
    }

    sqrt(0.0 / (v23 - 1));
    v33 = MEMORY[0x1EEE9AC00](v32).n128_u64[0];
    v47 = v27;
    v48 = v33;
    v49 = a1;
    MEMORY[0x1EEE9AC00](v34);
    sub_1C75504FC();
    *&v61 = sub_1C755052C();
    MEMORY[0x1EEE9AC00](v61);
    v47 = *&a7;
    v48 = a8;
    v49 = v55;
    v50 = v56;
    OUTLINED_FUNCTION_6_105();
    sub_1C755055C();
    swift_getWitnessTable();
    v35 = sub_1C7550A0C();

    *&v61 = v35;
    MEMORY[0x1EEE9AC00](v36);
    v49 = *&a7;
    v50 = a8;
    swift_getTupleTypeMetadata2();
    v37 = sub_1C7550C3C();
    OUTLINED_FUNCTION_1_133();
    v38 = swift_getWitnessTable();
    v40 = sub_1C7424474(sub_1C7426E6C, &v47, v37, a7, MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v39);

    if ((v53 & 1) == 0 && sub_1C7550BFC() > v51)
    {
      *&v58 = v40;
      v60 = v51;
      OUTLINED_FUNCTION_6_105();
      sub_1C7550C3C();
      OUTLINED_FUNCTION_1_133();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_15_77();
      sub_1C755109C();
      v58 = v61;
      v59 = v62;
      OUTLINED_FUNCTION_6_105();
      sub_1C75515DC();
      OUTLINED_FUNCTION_4_104();
      OUTLINED_FUNCTION_35();
      v40 = sub_1C7550C4C();
    }

    v41 = sub_1C754FEEC();
    v42 = sub_1C755117C();
    v43 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_96_0();
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1C6F5C000, v41, v42, "Finished GaussianResults", v45, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    *&v61 = v40;
    OUTLINED_FUNCTION_6_105();
    sub_1C7550C3C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_35();
    v31 = sub_1C7550C4C();
  }

  sub_1C6F85170();

  return v31;
}

void sub_1C74267C0(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C54();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C7426E8C(v6);
  *a1 = v3;
}

uint64_t sub_1C7426874(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C6C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C7426FD4(v6, &qword_1EC21BDD8, &unk_1C758AC10, sub_1C7427DEC, sub_1C7427310);
  *a1 = v2;
  return result;
}

uint64_t sub_1C7426918(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422DBC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C7426FD4(v6, &qword_1EC2182D0, &unk_1C7571178, sub_1C7428398, sub_1C742739C);
  *a1 = v2;
  return result;
}

long double static StoryGenerationUtilities.cumulativeNormalDistribution(for:mu:sigma:)(double a1, double a2, double a3)
{
  if (a3 <= 0.0)
  {
    v4 = a1 == a2;
    result = 0.0;
    if (v4)
    {
      return 1.0;
    }
  }

  else
  {
    result = erfc((a2 - a1) / a3 * 0.707106781) * 0.5;
    if (result > 1.0)
    {
      return 1.0;
    }
  }

  return result;
}

double sub_1C7426A1C@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

BOOL sub_1C7426A30(double a1, double a2, double a3, double a4)
{
  if (a3 <= 0.0)
  {
    v6 = a1 == a2;
    v5 = 0.0;
    if (v6)
    {
      v5 = 1.0;
    }
  }

  else
  {
    v5 = erfc((a2 - a1) / a3 * 0.707106781) * 0.5;
    if (v5 > 1.0)
    {
      v5 = 1.0;
    }
  }

  return v5 >= a4;
}

BOOL sub_1C7426AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == v8)
  {
    return a3(a1, a2) & 1;
  }

  else
  {
    return v8 < v7;
  }
}

uint64_t sub_1C7426B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, v7);
  return (*(*(a2 - 8) + 32))(a3, v9, a2);
}

uint64_t sub_1C7426C50(uint64_t a1, double a2)
{
  if (a2 <= 0.0)
  {
    sub_1C7196EF4();
    swift_allocError();
    *v5 = a2;
    *(v5 + 8) = 1;
    swift_willThrow();
  }

  else
  {
    v2 = a1;
    sub_1C70AB55C();
    sub_1C70AB5B0();
    sub_1C755047C();
    v4 = v7;
    if (v7 <= 1.0e-10)
    {
      v4 = 1.0e-10;
    }

    log(v4);
  }

  return v2;
}

unint64_t sub_1C7426D84()
{
  result = qword_1EC21BDD0;
  if (!qword_1EC21BDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BDD0);
  }

  return result;
}

double sub_1C7426DE8@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = (*a1 - *(v2 + 16)) * (*a1 - *(v2 + 16));
  *a2 = result;
  return result;
}

void sub_1C7426E8C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C7427494(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C74270F0(0, v2, 1, a1);
  }
}

uint64_t sub_1C7426FD4(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = result;
      v12 = v9 / 2;
      if (v9 <= 1)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v13 = sub_1C7550BBC();
        *(v13 + 16) = v12;
      }

      v14[0] = v13 + 32;
      v14[1] = v12;
      a4(v14, v15, a1, v11);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    return a5(0, v9, 1, a1);
  }

  return result;
}

void sub_1C74270F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v31 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v36 = v18;
    v30 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v34 = v20;
      v35 = a3;
      v32 = v23;
      v33 = v22;
      do
      {
        sub_1C74295B8(v23, v17);
        sub_1C74295B8(v20, v13);
        v24 = *(v8 + 48);
        v25 = *&v17[v24];
        v26 = *&v13[v24];
        if (v25 == v26)
        {
          v27 = MEMORY[0x1CCA5A4B0](v17, v13);
        }

        else
        {
          v27 = v26 < v25;
        }

        sub_1C7429698(v13);
        sub_1C7429698(v17);
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        sub_1C7429628(v23, v10);
        swift_arrayInitWithTakeFrontToBack();
        sub_1C7429628(v10, v20);
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v35 + 1;
      v20 = v34 + v30;
      v22 = v33 - 1;
      v23 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1C7427310(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = (v4 + 16 * a3);
      v8 = *v7;
      v9 = v7[1];
      v10 = v6;
      v11 = v5;
      do
      {
        v12 = *(v11 + 8);
        v13 = *&v8 < *v11;
        if (v9 != v12)
        {
          v13 = v9 < v12;
        }

        if (!v13)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = *v11;
        *v11 = v8;
        *(v11 + 8) = v9;
        v11 -= 16;
      }

      while (!__CFADD__(v10++, 1));
      ++a3;
      v5 += 16;
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

uint64_t sub_1C742739C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 24 * v4;
      result = *v9;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = v8;
      v13 = v7;
      do
      {
        v14 = *(v13 + 16);
        if (v11 == v14)
        {
          if (result == *v13 && v10 == *(v13 + 8))
          {
            break;
          }

          result = sub_1C7551DBC();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        else if (v14 >= v11)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v13 + 24);
        v10 = *(v13 + 32);
        v11 = *(v13 + 40);
        v16 = *(v13 + 16);
        *(v13 + 24) = *v13;
        *(v13 + 40) = v16;
        *v13 = result;
        *(v13 + 8) = v10;
        *(v13 + 16) = v11;
        v13 -= 24;
      }

      while (!__CFADD__(v12++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C7427494(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v135 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360);
  v143 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v139 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v150 = &v130 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v130 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v130 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v145 = &v130 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v142 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v134 = &v130 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v147 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v27 = *v135;
    if (!*v135)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v122 = (v26 + 16);
      for (i = *(v26 + 2); i >= 2; *v122 = i)
      {
        if (!*v147)
        {
          goto LABEL_144;
        }

        v124 = &v26[16 * i];
        v125 = *v124;
        v126 = &v122[2 * i];
        v127 = *(v126 + 1);
        v128 = v149;
        sub_1C74289C4(*v147 + *(v143 + 72) * *v124, *v147 + *(v143 + 72) * *v126, *v147 + *(v143 + 72) * v127, v27);
        v149 = v128;
        if (v128)
        {
          break;
        }

        if (v127 < v125)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v122)
        {
          goto LABEL_133;
        }

        *v124 = v125;
        *(v124 + 1) = v127;
        v129 = *v122 - i;
        if (*v122 < i)
        {
          goto LABEL_134;
        }

        i = *v122 - 1;
        sub_1C7423CF4(v126 + 16, v129, v126);
      }

LABEL_105:

      return;
    }

LABEL_141:
    v26 = sub_1C7420830();
    goto LABEL_109;
  }

  v131 = a4;
  v132 = &v130 - v23;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v151 = v6;
  v27 = v142;
  v146 = v12;
  while (1)
  {
    v28 = v25;
    v29 = v25 + 1;
    v136 = v25;
    if (v25 + 1 < v24)
    {
      v140 = v24;
      v30 = *v147;
      v31 = *(v143 + 72);
      v148 = v25 + 1;
      v32 = v132;
      sub_1C74295B8(v30 + v31 * v29, v132);
      v144 = v31;
      v33 = v30 + v31 * v28;
      v34 = v134;
      sub_1C74295B8(v33, v134);
      v35 = *(v6 + 48);
      v36 = *(v32 + v35);
      v37 = *(v34 + v35);
      if (v36 == v37)
      {
        v38 = MEMORY[0x1CCA5A4B0](v32, v34);
        v34 = v134;
        LODWORD(v141) = v38;
      }

      else
      {
        LODWORD(v141) = v37 < v36;
      }

      v133 = v26;
      sub_1C7429698(v34);
      sub_1C7429698(v32);
      v39 = v28 + 2;
      v40 = v144 * (v28 + 2);
      v41 = v30 + v40;
      v42 = v148;
      v43 = v144 * v148;
      v44 = v30 + v144 * v148;
      do
      {
        v45 = v39;
        v46 = v42;
        v47 = v43;
        v48 = v40;
        v148 = v39;
        if (v39 >= v140)
        {
          break;
        }

        sub_1C74295B8(v41, v27);
        v49 = v27;
        v50 = v145;
        sub_1C74295B8(v44, v145);
        v51 = *(v6 + 48);
        v52 = *(v49 + v51);
        v53 = *(v50 + v51);
        v54 = v50;
        if (v52 == v53)
        {
          v55 = MEMORY[0x1CCA5A4B0](v49, v50);
          v54 = v145;
          v56 = v55;
        }

        else
        {
          v56 = v53 < v52;
        }

        v27 = v49;
        sub_1C7429698(v54);
        sub_1C7429698(v49);
        v57 = v56;
        v45 = v148;
        v39 = v148 + 1;
        v41 += v144;
        v44 += v144;
        v42 = v46 + 1;
        v43 = v47 + v144;
        v40 = v48 + v144;
        v6 = v151;
        v12 = v146;
      }

      while ((v141 & 1) == v57);
      if (v141)
      {
        v28 = v136;
        if (v45 < v136)
        {
          goto LABEL_138;
        }

        if (v136 >= v45)
        {
          v29 = v45;
          v26 = v133;
          goto LABEL_33;
        }

        v58 = v136 * v144;
        do
        {
          if (v28 != v46)
          {
            v59 = *v147;
            if (!*v147)
            {
              goto LABEL_145;
            }

            sub_1C7429628(v59 + v58, v139);
            v60 = v58 < v47 || v59 + v58 >= v59 + v48;
            if (v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C7429628(v139, v59 + v47);
            v45 = v148;
            v27 = v142;
          }

          ++v28;
          v47 -= v144;
          v48 -= v144;
          v58 += v144;
          v61 = v28 < v46--;
        }

        while (v61);
        v29 = v45;
        v26 = v133;
        v6 = v151;
      }

      else
      {
        v29 = v45;
        v26 = v133;
      }

      v28 = v136;
    }

LABEL_33:
    v62 = v147[1];
    if (v29 < v62)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_137;
      }

      if (v29 - v28 < v131)
      {
        break;
      }
    }

LABEL_54:
    if (v29 < v28)
    {
      goto LABEL_136;
    }

    v148 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v26 = v120;
    }

    v75 = *(v26 + 2);
    v76 = v75 + 1;
    v25 = v148;
    if (v75 >= *(v26 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v25 = v148;
      v26 = v121;
    }

    *(v26 + 2) = v76;
    v77 = v26 + 32;
    v78 = &v26[16 * v75 + 32];
    *v78 = v136;
    *(v78 + 1) = v25;
    v144 = *v135;
    if (!v144)
    {
      goto LABEL_146;
    }

    if (v75)
    {
      while (1)
      {
        v79 = v76 - 1;
        v80 = &v77[16 * v76 - 16];
        v81 = &v26[16 * v76];
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v82 = *(v26 + 4);
          v83 = *(v26 + 5);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_74:
          if (v85)
          {
            goto LABEL_123;
          }

          v97 = *v81;
          v96 = *(v81 + 1);
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_126;
          }

          v101 = *(v80 + 1);
          v102 = v101 - *v80;
          if (__OFSUB__(v101, *v80))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v99, v102))
          {
            goto LABEL_131;
          }

          if (v99 + v102 >= v84)
          {
            if (v84 < v102)
            {
              v79 = v76 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v76 < 2)
        {
          goto LABEL_125;
        }

        v104 = *v81;
        v103 = *(v81 + 1);
        v92 = __OFSUB__(v103, v104);
        v99 = v103 - v104;
        v100 = v92;
LABEL_89:
        if (v100)
        {
          goto LABEL_128;
        }

        v106 = *v80;
        v105 = *(v80 + 1);
        v92 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v92)
        {
          goto LABEL_130;
        }

        if (v107 < v99)
        {
          goto LABEL_103;
        }

LABEL_96:
        if (v79 - 1 >= v76)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_140;
        }

        if (!*v147)
        {
          goto LABEL_143;
        }

        v111 = v15;
        v112 = v26;
        v113 = &v77[16 * v79 - 16];
        v114 = *v113;
        v115 = v77;
        v116 = v79;
        v117 = &v77[16 * v79];
        v118 = *(v117 + 1);
        v119 = v149;
        sub_1C74289C4(*v147 + *(v143 + 72) * *v113, *v147 + *(v143 + 72) * *v117, *v147 + *(v143 + 72) * v118, v144);
        v149 = v119;
        if (v119)
        {
          goto LABEL_105;
        }

        if (v118 < v114)
        {
          goto LABEL_118;
        }

        v27 = *(v112 + 2);
        if (v116 > v27)
        {
          goto LABEL_119;
        }

        *v113 = v114;
        *(v113 + 1) = v118;
        if (v116 >= v27)
        {
          goto LABEL_120;
        }

        v76 = v27 - 1;
        sub_1C7423CF4(v117 + 16, v27 - 1 - v116, v117);
        v26 = v112;
        *(v112 + 2) = v27 - 1;
        v61 = v27 > 2;
        v27 = v142;
        v25 = v148;
        v77 = v115;
        v15 = v111;
        v12 = v146;
        if (!v61)
        {
          goto LABEL_103;
        }
      }

      v86 = &v77[16 * v76];
      v87 = *(v86 - 8);
      v88 = *(v86 - 7);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_121;
      }

      v91 = *(v86 - 6);
      v90 = *(v86 - 5);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_122;
      }

      v93 = *(v81 + 1);
      v94 = v93 - *v81;
      if (__OFSUB__(v93, *v81))
      {
        goto LABEL_124;
      }

      v92 = __OFADD__(v84, v94);
      v95 = v84 + v94;
      if (v92)
      {
        goto LABEL_127;
      }

      if (v95 >= v89)
      {
        v109 = *v80;
        v108 = *(v80 + 1);
        v92 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v92)
        {
          goto LABEL_135;
        }

        if (v84 < v110)
        {
          v79 = v76 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v24 = v147[1];
    v6 = v151;
    if (v25 >= v24)
    {
      goto LABEL_107;
    }
  }

  v63 = v28 + v131;
  if (__OFADD__(v28, v131))
  {
    goto LABEL_139;
  }

  if (v63 >= v62)
  {
    v63 = v147[1];
  }

  if (v63 < v28)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v29 == v63)
  {
    goto LABEL_54;
  }

  v133 = v26;
  v64 = *v147;
  v65 = *(v143 + 72);
  v66 = *v147 + v65 * (v29 - 1);
  v67 = -v65;
  v68 = v28 - v29;
  v137 = v65;
  v138 = v63;
  v69 = v64 + v29 * v65;
LABEL_42:
  v148 = v29;
  v140 = v69;
  v141 = v68;
  v144 = v66;
  while (1)
  {
    sub_1C74295B8(v69, v15);
    sub_1C74295B8(v66, v12);
    v70 = *(v6 + 48);
    v71 = *&v15[v70];
    v72 = *&v12[v70];
    if (v71 == v72)
    {
      v73 = MEMORY[0x1CCA5A4B0](v15, v12);
    }

    else
    {
      v73 = v72 < v71;
    }

    sub_1C7429698(v12);
    sub_1C7429698(v15);
    if ((v73 & 1) == 0)
    {
      v6 = v151;
LABEL_52:
      v29 = v148 + 1;
      v66 = v144 + v137;
      v68 = v141 - 1;
      v69 = v140 + v137;
      if (v148 + 1 == v138)
      {
        v29 = v138;
        v26 = v133;
        v27 = v142;
        v28 = v136;
        goto LABEL_54;
      }

      goto LABEL_42;
    }

    if (!v64)
    {
      break;
    }

    v74 = v150;
    sub_1C7429628(v69, v150);
    v6 = v151;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C7429628(v74, v66);
    v66 += v67;
    v69 += v67;
    v60 = __CFADD__(v68++, 1);
    if (v60)
    {
      goto LABEL_52;
    }
  }

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
}