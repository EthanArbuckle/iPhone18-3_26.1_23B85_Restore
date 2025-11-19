uint64_t sub_1D8CBAC40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1D8CD7324();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v71 = &v65 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v25 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v73 = (v18 + 8);
  v74 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v69 = &v65 - v19;
    v71 = v16;
    sub_1D8CC3C4C(a1, (a2 - a1) / v21, a4);
    v72 = (a4 + v25 * v21);
    v76 = v72;
    v27 = a4;
    v28 = v21;
    v68 = v8;
    v70 = a3;
    while (1)
    {
      if (v27 >= v72 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v30 = a1;
      v31 = *v74;
      v32 = v69;
      v33 = a2;
      (*v74)(v69, a2, v8);
      v75 = v27;
      v34 = v71;
      v31();
      v35 = sub_1D8CD7304();
      v37 = v36;
      if (v35 == sub_1D8CD7304() && v37 == v38)
      {

        v45 = *v73;
        (*v73)(v34, v8);
        v45(v32, v8);
      }

      else
      {
        v40 = sub_1D8CD8154();

        v41 = *v73;
        (*v73)(v34, v8);
        v41(v32, v8);
        if (v40)
        {
          v42 = v33;
          a2 = v33 + v28;
          v43 = v30;
          if (v30 < v33 || v30 >= a2)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v70;
          }

          else
          {
            a3 = v70;
            v8 = v68;
            if (v30 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v75;
          goto LABEL_40;
        }
      }

      v27 = v75 + v28;
      v43 = v30;
      v46 = v30 < v75 || v30 >= v27;
      a2 = v33;
      if (v46)
      {
        v8 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v70;
      }

      else
      {
        a3 = v70;
        v8 = v68;
        if (v30 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v27;
LABEL_40:
      a1 = v43 + v28;
      v78 = a1;
    }
  }

  sub_1D8CC3C4C(a2, v23 / v21, a4);
  v75 = a4;
  v47 = a4 + v26 * v21;
  v48 = -v21;
  v49 = v47;
  v69 = -v21;
LABEL_42:
  v70 = a2;
  v68 = a2 + v48;
  v50 = a3;
  v66 = v49;
  while (1)
  {
    if (v47 <= v75)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_70;
    }

    if (v70 <= a1)
    {
      break;
    }

    v67 = v49;
    v51 = v47 + v48;
    v52 = *v74;
    (*v74)(v71, v47 + v48, v8);
    (v52)(v72, v68, v8);
    v53 = sub_1D8CD7304();
    v55 = v54;
    if (v53 == sub_1D8CD7304() && v55 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_1D8CD8154();
    }

    v59 = (v50 + v69);
    v60 = *v73;
    (*v73)(v72, v8);
    v60(v71, v8);
    if (v58)
    {
      v62 = v50 < v70 || v59 >= v70;
      a3 = v59;
      if (v62)
      {
        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v67;
        v48 = v69;
      }

      else
      {
        v64 = v67;
        v63 = v68;
        v49 = v67;
        v22 = v50 == v70;
        a2 = v68;
        v48 = v69;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v63;
          v49 = v64;
        }
      }

      goto LABEL_42;
    }

    if (v50 < v47 || v59 >= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v59;
      v47 = v51;
      v49 = v51;
      v48 = v69;
    }

    else
    {
      v49 = v51;
      v22 = v47 == v50;
      v50 = v59;
      v47 = v51;
      v48 = v69;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v59;
        v47 = v51;
        v49 = v51;
      }
    }
  }

  v78 = v70;
  v76 = v66;
LABEL_70:
  sub_1D8CBB25C(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_1D8CBB25C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1D8CD7324();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1D8CBB33C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAC0, &qword_1D8CDBA90);
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

uint64_t sub_1D8CBB43C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACEB0, &qword_1D8CDA970);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1D8CC3C20((a4 + 32), v8, (v10 + 32));
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

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1D8CBB53C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAC8, &qword_1D8CDA950);
  v10 = *(sub_1D8CD7324() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1D8CD7324() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1D8CC3C4C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t getEnumTagSinglePayload for Requestor(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ParsecURLRequestBuilder.URLError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D8CBB878()
{
  result = qword_1ECAACAD8;
  if (!qword_1ECAACAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACAD8);
  }

  return result;
}

uint64_t static DeviceContextUtil.deviceCountryCode()()
{
  v0 = [objc_opt_self() sharedConfiguration];
  if (!v0)
  {
    if (qword_1ED9C4020 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v5 = sub_1D8CD7A04();
    __swift_project_value_buffer(v5, qword_1ED9C5630);
    v1 = sub_1D8CD79E4();
    v6 = sub_1D8CD7E24();
    if (OUTLINED_FUNCTION_3_2(v6))
    {
      v7 = OUTLINED_FUNCTION_45();
      *v7 = 0;
      OUTLINED_FUNCTION_85(&dword_1D8C92000, v8, v9, "nil GEOCountryConfiguration received from GEOServices");
      MEMORY[0x1DA727900](v7, -1, -1);
    }

    goto LABEL_8;
  }

  v1 = v0;
  v2 = [v0 countryCode];
  if (!v2)
  {
LABEL_8:

    return 0;
  }

  v3 = v2;
  v4 = sub_1D8CD7B04();

  return v4;
}

uint64_t static DeviceContextUtil.effectiveSystemLanguage()()
{
  v0 = sub_1D8CD76E4();
  if (v0[2])
  {
    v2 = v0[4];
    v1 = v0[5];

    v34[0] = 45;
    v34[1] = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v3);
    v33[2] = v34;
    sub_1D8CBC67C(sub_1D8CBC894, v33, v2, v1);
    if ((v4 & 1) == 0)
    {
      v24 = sub_1D8CD7C74();
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v16 = MEMORY[0x1DA726A10](v24, v26, v28, v30);
      goto LABEL_16;
    }
  }

  if (qword_1ED9C4020 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v5 = sub_1D8CD7A04();
  __swift_project_value_buffer(v5, qword_1ED9C5630);
  v6 = sub_1D8CD79E4();
  v7 = sub_1D8CD7E04();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_45();
    *v8 = 0;
    _os_log_impl(&dword_1D8C92000, v6, v7, "No preferred languages available. Set localeId with currentLocale", v8, 2u);
    MEMORY[0x1DA727900](v8, -1, -1);
  }

  v9 = objc_opt_self();
  v10 = sub_1D8CBC7A0(v9);
  if (v10 && (v11 = sub_1D8CBBCE0(v10), , v11))
  {
    v12 = objc_opt_self();
    v13 = sub_1D8CD7CD4();

    v14 = [v12 preferredLocalizationsFromArray_];

    v15 = sub_1D8CD7CE4();
    if (v15[2])
    {
      v16 = v15[4];
      v17 = v15[5];

LABEL_16:

      return v16;
    }

    v18 = sub_1D8CD79E4();
    v32 = sub_1D8CD7E24();
    if (OUTLINED_FUNCTION_3_2(v32))
    {
      v22 = OUTLINED_FUNCTION_45();
      *v22 = 0;
      v23 = "error getting effectiveSystemLanguage from NSLocale";
      goto LABEL_13;
    }
  }

  else
  {
    v18 = sub_1D8CD79E4();
    v19 = sub_1D8CD7E24();
    if (OUTLINED_FUNCTION_3_2(v19))
    {
      v22 = OUTLINED_FUNCTION_45();
      *v22 = 0;
      v23 = "error getting system languages from NSLocale";
LABEL_13:
      OUTLINED_FUNCTION_85(&dword_1D8C92000, v20, v21, v23);
      MEMORY[0x1DA727900](v22, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1D8CBBCE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D8CBC780(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1D8C9D24C(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D8CBC780(v5 > 1, v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t static DeviceContextUtil.localeIdentifier()()
{
  v0 = sub_1D8CD7754();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_37();
  v8 = v7 - v6;
  v9 = [objc_opt_self() currentLocale];
  sub_1D8CD76F4();

  v10 = sub_1D8CD76D4();
  (*(v3 + 8))(v8, v0);
  return v10;
}

uint64_t static DeviceContextUtil.topPreferredLanguages()()
{
  v0 = [objc_opt_self() preferredLanguages];
  v1 = sub_1D8CD7CE4();

  if (*(v1 + 16) < 4uLL)
  {
    return v1;
  }

  v2 = sub_1D8CBC7FC(0, 3, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_3:
    sub_1D8CBC474(v2, v4, v6, v8);
    v1 = v9;
LABEL_10:
    swift_unknownObjectRelease();
    return v1;
  }

  sub_1D8CD8164();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);

  if (__OFSUB__(v8 >> 1, v6))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v11 != (v8 >> 1) - v6)
  {
LABEL_13:
    swift_unknownObjectRelease_n();
    goto LABEL_3;
  }

  v1 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  return v1;
}

uint64_t static DeviceContextUtil.region.getter()
{
  v0 = sub_1D8CD7734();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_37();
  v8 = v7 - v6;
  v9 = sub_1D8CD7754();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_37();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAE0, &qword_1D8CDAA30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v26 - v20;
  v22 = [objc_opt_self() currentLocale];
  sub_1D8CD76F4();

  sub_1D8CD7744();
  (*(v12 + 8))(v17, v9);
  sub_1D8CD7724();
  (*(v3 + 8))(v8, v0);
  v23 = sub_1D8CD7714();
  if (__swift_getEnumTagSinglePayload(v21, 1, v23) == 1)
  {
    sub_1D8CBC8B4(v21);
    return 0;
  }

  else
  {
    v24 = sub_1D8CD7704();
    (*(*(v23 - 8) + 8))(v21, v23);
  }

  return v24;
}

size_t sub_1D8CBC270(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAC8, &qword_1D8CDA950);
  v4 = *(sub_1D8CD7324() - 8);
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

size_t sub_1D8CBC36C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAE8, &qword_1D8CDAA58);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAF0, &unk_1D8CDAA60) - 8);
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

void sub_1D8CBC474(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACEB0, &qword_1D8CDA970);
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

size_t sub_1D8CBC544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D8CBC270(*(a1 + 16), 0);
  v4 = *(sub_1D8CD7324() - 8);
  v5 = sub_1D8CBC9C8(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v1, a1);

  sub_1D8CBCC60();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D8CBC638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1D8CD8154() & 1;
  }
}

unint64_t sub_1D8CBC67C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_1D8CD7C04();
    v13[0] = sub_1D8CD7C64();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_1D8CBC780(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1D8CBB43C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D8CBC7A0(void *a1)
{
  v1 = [a1 systemLanguages];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8CD7CE4();

  return v3;
}

unint64_t sub_1D8CBC7FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D8CBC8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAE0, &qword_1D8CDAA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DeviceContextUtil(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D8CBC9C8(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1D8CD7324();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v33 - v13;
  v15 = a4 + 64;
  v14 = *(a4 + 64);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 64;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 56);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t KnownAggregationRecipeClient.adHocRecipesAllowed.getter()
{
  if (qword_1ECAAC4B8 != -1)
  {
    swift_once();
  }

  return byte_1ED9C5648;
}

uint64_t KnownAggregationRecipeClient.init(rawValue:)()
{
  OUTLINED_FUNCTION_1_4();
  v1 = sub_1D8CD80E4();

  *v0 = v1 != 0;
  return result;
}

uint64_t sub_1D8CBCD40(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return KnownAggregationRecipeClient.init(rawValue:)();
}

uint64_t KnownAggregationProcessBundleId.init(rawValue:)()
{
  OUTLINED_FUNCTION_1_4();
  v1 = sub_1D8CD80E4();

  *v0 = v1 != 0;
  return result;
}

uint64_t sub_1D8CBCE08(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return KnownAggregationProcessBundleId.init(rawValue:)();
}

unint64_t sub_1D8CBCE14@<X0>(void *a1@<X8>)
{
  result = KnownAggregationProcessBundleId.rawValue.getter();
  *a1 = 0xD000000000000026;
  a1[1] = v3;
  return result;
}

uint64_t KnownAggregationRecipeName.sodaRecipeDirectory.getter()
{
  v1 = *v0;
  if (v1 > 1)
  {
    v8 = 0;
    v2 = "Spotlight.SurveyDaily";
    v3 = "SpotlightFeatureReport";
    v4 = v1 == 3;
    if (v1 == 3)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000015;
    }
  }

  else
  {
    sub_1D8CD8014();

    v8 = 0x6867696C746F7053;
    v2 = ".SearchAnalyticsWorker";
    v3 = "SpotlightFeatureExtraction";
    v4 = v1 == 0;
    if (v1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1DA726A90](v5, v6 | 0x8000000000000000);

  MEMORY[0x1DA726A90](0x52746F72696F702ELL, 0xED00006570696365);
  return v8;
}

unint64_t KnownAggregationRecipeName.rawValue.getter()
{
  result = 0xD00000000000001ALL;
  switch(*v0)
  {
    case 1:
    case 3:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t KnownAggregationRecipeName.recipeFileName.getter()
{
  v1 = 0xD00000000000001ALL;
  v2 = ".SearchAnalyticsWorker";
  switch(*v0)
  {
    case 1:
      v3 = "SpotlightFeatureReport";
      goto LABEL_5;
    case 2:
      v2 = "SpotlightFeatureReport";
      v1 = 0xD000000000000015;
      break;
    case 3:
      v3 = "Spotlight.SurveyWeekly";
LABEL_5:
      v2 = (v3 - 32);
      v1 = 0xD000000000000016;
      break;
    default:
      break;
  }

  MEMORY[0x1DA726A90](v1, v2 | 0x8000000000000000);

  MEMORY[0x1DA726A90](0x52746F72696F702ELL, 0xED00006570696365);
  return 0;
}

uint64_t KnownAggregationRecipeName.uafAssetSpecifier.getter()
{
  result = 0x6974636172747845;
  switch(*v0)
  {
    case 1:
      result = 0x74726F706552;
      break;
    case 2:
      result = 0x6144796576727553;
      break;
    case 3:
      result = 0x6557796576727553;
      break;
    default:
      return result;
  }

  return result;
}

PegasusConfiguration::KnownAggregationRecipeName_optional __swiftcall KnownAggregationRecipeName.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_4();
  v2 = sub_1D8CD80E4();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1D8CBD1F4@<X0>(unint64_t *a1@<X8>)
{
  result = KnownAggregationRecipeName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D8CBD230()
{
  result = qword_1ECAACAF8;
  if (!qword_1ECAACAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACAF8);
  }

  return result;
}

unint64_t sub_1D8CBD288()
{
  result = qword_1ECAACB00;
  if (!qword_1ECAACB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACB00);
  }

  return result;
}

unint64_t sub_1D8CBD2E0()
{
  result = qword_1ECAACB08;
  if (!qword_1ECAACB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACB08);
  }

  return result;
}

unint64_t sub_1D8CBD338()
{
  result = qword_1ECAACB10;
  if (!qword_1ECAACB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAACB18, &qword_1D8CDAC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACB10);
  }

  return result;
}

_BYTE *sub_1D8CBD3B0(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for KnownAggregationRecipeName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for KnownAggregationRecipeName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8CBD63C()
{
  v1 = sub_1D8CD7754();
  v2 = OUTLINED_FUNCTION_1_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() currentLocale];
  sub_1D8CD76F4();

  v10 = sub_1D8CD76D4();
  (*(v4 + 8))(v8, v0);
  return v10;
}

uint64_t sub_1D8CBD738()
{
  v1 = sub_1D8CD7754();
  v2 = OUTLINED_FUNCTION_1_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DeviceContextUtil.deviceCountryCode()();
  if (v9 && (, static DeviceContextUtil.effectiveSystemLanguage()(), v10))
  {

    v11 = [objc_opt_self() currentLocale];
    sub_1D8CD76F4();

    sub_1D8CD76D4();
    (*(v4 + 8))(v8, v0);

    return 1;
  }

  else
  {
    v40 = v0;
    if (qword_1ED9C4150 != -1)
    {
      swift_once();
    }

    v13 = sub_1D8CD7A04();
    __swift_project_value_buffer(v13, qword_1ED9C5668);
    v14 = sub_1D8CD79E4();
    v15 = sub_1D8CD7E14();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v16 = 136315138;
      v17 = static DeviceContextUtil.deviceCountryCode()();
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v17 = 7104878;
        v19 = 0xE300000000000000;
      }

      v20 = sub_1D8C9D088(v17, v19, &v41);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D8C92000, v14, v15, "ConfigDebug: context.geoDeviceCountryCode = %s", v16, 0xCu);
      OUTLINED_FUNCTION_0_6();
      MEMORY[0x1DA727900](v16, -1, -1);
    }

    v21 = sub_1D8CD79E4();
    v22 = sub_1D8CD7E14();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v23 = 136315138;
      v24 = static DeviceContextUtil.effectiveSystemLanguage()();
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v24 = 7104878;
        v26 = 0xE300000000000000;
      }

      v27 = sub_1D8C9D088(v24, v26, &v41);

      *(v23 + 4) = v27;
      OUTLINED_FUNCTION_2_6(&dword_1D8C92000, v28, v29, "ConfigDebug: context.effectiveCountryCode = %s");
      OUTLINED_FUNCTION_0_6();
      MEMORY[0x1DA727900](v23, -1, -1);
    }

    v30 = sub_1D8CD79E4();
    v31 = sub_1D8CD7E14();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v32 = 136315138;
      v33 = [objc_opt_self() currentLocale];
      sub_1D8CD76F4();

      v34 = sub_1D8CD76D4();
      v36 = v35;
      (*(v4 + 8))(v8, v40);
      v37 = sub_1D8C9D088(v34, v36, &v41);

      *(v32 + 4) = v37;
      OUTLINED_FUNCTION_2_6(&dword_1D8C92000, v38, v39, "ConfigDebug: context.localeIdentifier = %s");
      OUTLINED_FUNCTION_0_6();
      MEMORY[0x1DA727900](v32, -1, -1);
    }

    return 0;
  }
}

void sub_1D8CBDB44()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 48));
  sub_1D8CBE768((v1 + 16));

  os_unfair_lock_unlock((v1 + 48));
}

uint64_t sub_1D8CBDBBC()
{
  OUTLINED_FUNCTION_10();
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D8CBDC98;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 32, 0, 0, 0x746C757365527369, 0xEF29287964616552, sub_1D8CBEC60, v3, v4);
}

uint64_t sub_1D8CBDC98()
{
  OUTLINED_FUNCTION_10();
  v1 = *(*v0 + 24);
  v2 = *v0;
  OUTLINED_FUNCTION_1();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D8CBDD88, 0, 0);
}

void sub_1D8CBDDA0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 12);
  sub_1D8CBF204(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);
}

uint64_t sub_1D8CBDE20()
{
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](0);
  return sub_1D8CD8284();
}

uint64_t sub_1D8CBDE6C()
{
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](0);
  return sub_1D8CD8284();
}

uint64_t sub_1D8CBDED4(unsigned __int8 a1)
{
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](a1);
  return sub_1D8CD8284();
}

void sub_1D8CBDF30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  os_unfair_lock_lock((v2 + 48));
  sub_1D8CBEC68((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 48));
  if (v3 != 2)
  {
    v3 &= 1u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAF0, &unk_1D8CDAA60);
    sub_1D8CD7D34();
  }
}

unsigned __int8 *sub_1D8CBDFC4@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = *result;
  if (v4 >= 2)
  {
    v10 = v4 != 2;
  }

  else
  {
    v6 = result;
    sub_1D8CBF178();
    v7 = *(*(v6 + 2) + 16);
    sub_1D8CBF1C4(v7);
    v8 = *(v6 + 2);
    *(v8 + 16) = v7 + 1;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAF0, &unk_1D8CDAA60);
    result = (*(*(v9 - 8) + 16))(v8 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v7, a2, v9);
    *(v6 + 2) = v8;
    v10 = 2;
  }

  *a3 = v10;
  return result;
}

uint64_t sub_1D8CBE0AC(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15 - v7;
  if (*a1 == 1)
  {
    v9 = sub_1D8CD7D64();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = a2;
    *(v11 + 40) = v10;
    sub_1D8CA36B0();
    v13 = v12;
    sub_1D8CBF2E8(v8);
    v14 = *(a1 + 24);

    *(a1 + 24) = v13;
  }

  return result;
}

uint64_t sub_1D8CBE1F0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  v6 = sub_1D8CD8064();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8CBE2B4, 0, 0);
}

uint64_t sub_1D8CBE2B4()
{
  v1 = v0[9];
  v2 = v0[5];
  sub_1D8CD82B4();
  sub_1D8CD8204();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1D8CBE38C;
  v4 = v0[9];
  v5 = OUTLINED_FUNCTION_3_4();

  return sub_1D8CBECD8(v5, v6, 0, 0, 1);
}

uint64_t sub_1D8CBE38C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;

  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[7];
  if (v0)
  {

    v9 = *(v7 + 8);
    v10 = OUTLINED_FUNCTION_3_4();
    v11(v10);
    v12 = sub_1D8CBF5D0;
  }

  else
  {
    v13 = *(v7 + 8);
    v14 = OUTLINED_FUNCTION_3_4();
    v15(v14);
    v12 = sub_1D8CBE514;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1D8CBE514()
{
  OUTLINED_FUNCTION_10();
  if ((sub_1D8CD7DA4() & 1) == 0)
  {
    v1 = *(v0 + 48);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D8CBE5AC();
    }
  }

  v2 = *(v0 + 72);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1D8CBE5AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAF0, &unk_1D8CDAA60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17[-v4];
  v6 = *(v0 + 16);
  os_unfair_lock_lock((v6 + 48));
  v7 = MEMORY[0x1E69E7CC0];
  if (*(v6 + 16) == 1)
  {
    *(v6 + 16) = 2;
    v8 = *(v6 + 40);
    *(v6 + 40) = 0;

    v9 = *(v6 + 32);
    *(v6 + 32) = v7;
    v7 = v9;
  }

  os_unfair_lock_unlock((v6 + 48));
  v10 = *(v7 + 16);
  if (v10)
  {
    v13 = *(v2 + 16);
    v11 = v2 + 16;
    v12 = v13;
    v14 = v7 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v1);
      v17[15] = 0;
      sub_1D8CD7D34();
      (*(v11 - 8))(v5, v1);
      v14 += v15;
      --v10;
    }

    while (v10);
  }
}

void sub_1D8CBE768(_BYTE *a1)
{
  if (*a1 - 1 >= 2)
  {
    *a1 = 1;
  }

  else
  {
    if (qword_1ED9C4150 != -1)
    {
      swift_once();
    }

    v1 = sub_1D8CD7A04();
    __swift_project_value_buffer(v1, qword_1ED9C5668);
    v2 = sub_1D8CD79E4();
    v3 = sub_1D8CD7E24();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D8C92000, v2, v3, "Missing onRemoteRequestEnd call", v4, 2u);
      MEMORY[0x1DA727900](v4, -1, -1);
    }
  }
}

uint64_t sub_1D8CBE864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAF0, &unk_1D8CDAA60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v15 - v4;
  v6 = *(v0 + 16);
  os_unfair_lock_lock((v6 + 48));
  sub_1D8CBEA04((v6 + 16), &v16);
  os_unfair_lock_unlock((v6 + 48));
  v7 = *(v16 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = (*(v8 + 64) + 32) & ~*(v8 + 64);
    v15[1] = v16;
    v12 = v16 + v11;
    v13 = *(v8 + 56);
    do
    {
      v9(v5, v12, v1);
      LOBYTE(v16) = 1;
      sub_1D8CD7D34();
      (*(v8 - 8))(v5, v1);
      v12 += v13;
      --v7;
    }

    while (v7);
  }
}

void sub_1D8CBEA04(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  if (*a1 - 1 > 1)
  {
    if (qword_1ED9C4150 != -1)
    {
      swift_once();
    }

    v4 = sub_1D8CD7A04();
    __swift_project_value_buffer(v4, qword_1ED9C5668);
    v5 = sub_1D8CD79E4();
    v6 = sub_1D8CD7E24();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D8C92000, v5, v6, "Missing onRemoteRequestStart call", v7, 2u);
      MEMORY[0x1DA727900](v7, -1, -1);
    }
  }

  else
  {
    *a1 = 3;
  }

  v9 = *(a1 + 2);
  v8 = *(a1 + 3);
  *(a1 + 2) = MEMORY[0x1E69E7CC0];
  if (v8)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
    sub_1D8CD7D84();

    *(a1 + 3) = 0;
  }

  *a2 = v9;
}

uint64_t sub_1D8CBEB74()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D8CBEBD0(uint64_t a1, int a2)
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

uint64_t sub_1D8CBEC10(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8CBEC84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACB20, &qword_1D8CDADF0);
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_1D8CBECD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D8CD8054();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D8CBEDD8, 0, 0);
}

uint64_t sub_1D8CBEDD8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1D8CD8064();
  v7 = sub_1D8CBF350(&qword_1ED9C3BD0, MEMORY[0x1E69E8820]);
  OUTLINED_FUNCTION_3_4();
  sub_1D8CD81E4();
  sub_1D8CBF350(&unk_1ED9C3BD8, MEMORY[0x1E69E87E8]);
  sub_1D8CD8074();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D8CBEF64;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1D8CBEF64()
{
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 64);
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v2;
  v2[15] = v0;

  v5(v6, v7);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CBF114, 0, 0);
  }

  else
  {
    v10 = v2[10];
    v9 = v2[11];

    OUTLINED_FUNCTION_13();

    return v11();
  }
}

uint64_t sub_1D8CBF114()
{
  OUTLINED_FUNCTION_10();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_13();
  v4 = v0[15];

  return v3();
}

void sub_1D8CBF178()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_1D8CC3884();
    *v0 = v4;
  }
}

void sub_1D8CBF1C4(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_1D8CC3884();
    *v1 = v2;
  }
}

uint64_t sub_1D8CBF224(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D8CB1174;

  return sub_1D8CBE1F0(v6, a1, v4, v5, v7);
}

uint64_t sub_1D8CBF2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8CBF350(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for TaskCoordinator.TaskError(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for TaskCoordinator.Status(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D8CBF524()
{
  result = qword_1ECAACB28;
  if (!qword_1ECAACB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACB28);
  }

  return result;
}

unint64_t sub_1D8CBF57C()
{
  result = qword_1ECAACB30[0];
  if (!qword_1ECAACB30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECAACB30);
  }

  return result;
}

uint64_t sub_1D8CBF648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6830];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D8CBF6BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6820];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D8CBF728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6820];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D8CBF798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6820];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_1D8CBF808@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8CBF63C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8CBF87C()
{
  v0 = sub_1D8CD46EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

_BYTE *sub_1D8CBF8F0(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D8CBF9A4(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

double UserAgent.init(_:requestor:)(unint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = Client.init(_:)(a1, &v32);
  v11 = OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23, SWORD2(v23), SBYTE6(v23), SHIBYTE(v23), v25, v28, v30, v32, v33, v34, v35);
  *&result = OUTLINED_FUNCTION_2_7(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24, v26, v27, v29, v31, v32, *(&v32 + 1), v33, v34, v35, v36, v19, v37).n128_u64[0];
  return result;
}

Swift::String __swiftcall userAgentString(forClientName:forRequestor:)(Swift::String forClientName, Swift::String forRequestor)
{
  object = forRequestor._object;
  countAndFlagsBits = forRequestor._countAndFlagsBits;
  v4 = sub_1D8C938D8(2);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0xE000000000000000;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = sub_1D8C938D8(1);
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = sub_1D8C938D8(3);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v17 = sub_1D8C938D8(0);
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v7 = v18;
  }

  MEMORY[0x1DA726A90](8251, 0xE200000000000000);
  MEMORY[0x1DA726A90](v11, v12);

  MEMORY[0x1DA726A90](32, 0xE100000000000000);
  MEMORY[0x1DA726A90](v15, v16);

  MEMORY[0x1DA726A90](32, 0xE100000000000000);
  MEMORY[0x1DA726A90](v19, v7);

  MEMORY[0x1DA726A90](10272, 0xE200000000000000);
  MEMORY[0x1DA726A90](v6, v8);

  MEMORY[0x1DA726A90](8233, 0xE200000000000000);
  MEMORY[0x1DA726A90](forClientName._countAndFlagsBits, forClientName._object);
  v20 = countAndFlagsBits;
  v21 = object;
  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

double sub_1D8CBFBD4()
{
  v2 = xmmword_1D8CDB090;
  v3 = 0xE700000000000000;
  v1 = 0;
  UserAgent.init(_:requestor:)(v4, &v2, &v1);
  xmmword_1ED9C40D8 = v4[0];
  unk_1ED9C40E8 = v4[1];
  result = *&v5;
  xmmword_1ED9C40F8 = v5;
  unk_1ED9C4108 = v6;
  return result;
}

double sub_1D8CBFC30()
{
  v2 = xmmword_1D8CDB0A0;
  v3 = 0xE700000000000000;
  v1 = 0;
  UserAgent.init(_:requestor:)(v4, &v2, &v1);
  xmmword_1ECAACC38 = v4[0];
  unk_1ECAACC48 = v4[1];
  result = *&v5;
  xmmword_1ECAACC58 = v5;
  unk_1ECAACC68 = v6;
  return result;
}

uint64_t static UserAgent.unknown.getter()
{
  if (qword_1ECAAC618 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_1_6(&xmmword_1ECAACC38, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

double UserAgent.init(_:requestor:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  v4 = Client.init(_:)(a2, &v33);
  v12 = OUTLINED_FUNCTION_0_7(v4, v5, v6, v7, v8, v9, v10, v11, v22, v24, SWORD2(v24), SBYTE6(v24), SHIBYTE(v24), v26, v29, v31, v33, v34, v35, v36);
  *&result = OUTLINED_FUNCTION_2_7(v12, v13, v14, v15, v16, v17, v18, v19, v23, v25, v27, v28, v30, v32, v33, *(&v33 + 1), v34, v35, v36, v37, v20, v38).n128_u64[0];
  return result;
}

uint64_t Requestor.hashValue.getter()
{
  v1 = *v0;
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](v1);
  return sub_1D8CD8284();
}

unint64_t sub_1D8CBFF24()
{
  result = qword_1ECAACC78;
  if (!qword_1ECAACC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACC78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Requestor(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D8CC0044()
{
  v0 = sub_1D8CD7A04();
  __swift_allocate_value_buffer(v0, qword_1ECAACC80);
  __swift_project_value_buffer(v0, qword_1ECAACC80);
  return sub_1D8CD79F4();
}

uint64_t sub_1D8CC00B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACCA0, &unk_1D8CDB2D0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  qword_1ED9C4C20 = result;
  return result;
}

uint64_t static PrimaryPersonaContainerPathLookup.path(for:)()
{
  if (container_query_create())
  {
    container_query_set_class();
    v0 = sub_1D8CD7B94();
    xpc_string_create((v0 + 32));

    container_query_set_group_identifiers();
    swift_unknownObjectRelease();
    v1 = *MEMORY[0x1E69E9980];
    container_query_set_persona_unique_string();
    container_query_operation_set_flags();
    if (container_query_get_single_result())
    {
      path = container_get_path();
      if (path)
      {
        if (strlen(path) >= 1)
        {
          sub_1D8CC0370();
          v3 = sub_1D8CD7C34();
          container_query_free();
          return v3;
        }

        sub_1D8CC031C();
        OUTLINED_FUNCTION_2_8();
        *v13 = xmmword_1D8CDB1B0;
        v14 = 2;
      }

      else
      {
        if (container_query_get_last_error() && container_error_copy_unlocalized_description())
        {
          v9 = sub_1D8CD7C34();
          v11 = v10;
          OUTLINED_FUNCTION_11();
          MEMORY[0x1DA727900]();
        }

        else
        {
          v9 = 0;
          v11 = 0xE000000000000000;
        }

        sub_1D8CC031C();
        OUTLINED_FUNCTION_2_8();
        *v13 = v9;
        *(v13 + 8) = v11;
        v14 = 1;
      }

      *(v13 + 16) = v14;
    }

    else
    {
      if (container_query_get_last_error() && container_error_copy_unlocalized_description())
      {
        v6 = sub_1D8CD7C34();
        v8 = v7;
        OUTLINED_FUNCTION_11();
        MEMORY[0x1DA727900]();
      }

      else
      {
        v6 = 0;
        v8 = 0xE000000000000000;
      }

      sub_1D8CC031C();
      OUTLINED_FUNCTION_2_8();
      *v12 = v6;
      *(v12 + 8) = v8;
      *(v12 + 16) = 0;
    }

    swift_willThrow();
    return container_query_free();
  }

  else
  {
    sub_1D8CC031C();
    OUTLINED_FUNCTION_2_8();
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 2;
    return swift_willThrow();
  }
}

unint64_t sub_1D8CC031C()
{
  result = qword_1ECAACC98;
  if (!qword_1ECAACC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACC98);
  }

  return result;
}

void sub_1D8CC0370()
{
  v0 = container_copy_sandbox_token();
  if (v0)
  {
    v1 = v0;
    if (sandbox_extension_consume() == -1)
    {
      if (qword_1ECAAC620 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v2 = sub_1D8CD7A04();
      __swift_project_value_buffer(v2, qword_1ECAACC80);
      v3 = sub_1D8CD79E4();
      v4 = sub_1D8CD7E24();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_1D8C92000, v3, v4, "token/process not valid for extension", v5, 2u);
        OUTLINED_FUNCTION_11();
        MEMORY[0x1DA727900]();
      }
    }

    free(v1);
  }

  else
  {
    if (qword_1ECAAC620 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v6 = sub_1D8CD7A04();
    __swift_project_value_buffer(v6, qword_1ECAACC80);
    oslog = sub_1D8CD79E4();
    v7 = sub_1D8CD7E24();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D8C92000, oslog, v7, "token not sent by container", v8, 2u);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_20PegasusConfiguration0A15ConfigPathErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D8CC0564(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D8CC05A4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D8CC05E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PrimaryPersonaContainerPathLookup(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D8CC06BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAACEE0, &qword_1D8CD9C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8CC0724(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D8CD7F94();

  return sub_1D8CC0768(a1, v5);
}

unint64_t sub_1D8CC0768(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1D8CB4DCC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1DA726E10](v8, a1);
    sub_1D8CAD7EC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D8CC082C()
{
  result = qword_1ECAACCB0;
  if (!qword_1ECAACCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACCB0);
  }

  return result;
}

uint64_t sub_1D8CC088C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D8CC08CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8CC098C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D8CD7A04();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D8CD79F4();
}

uint64_t sub_1D8CC0A04()
{
  v0 = sub_1D8CD7A04();
  __swift_allocate_value_buffer(v0, qword_1ED9C5650);
  __swift_project_value_buffer(v0, qword_1ED9C5650);
  return sub_1D8CD79F4();
}

uint64_t sub_1D8CC0AB0()
{
  result = sub_1D8CC0AD8(5);
  byte_1ED9C5648 = result & 1;
  return result;
}

uint64_t sub_1D8CC0AD8(char a1)
{
  sub_1D8C93BCC(a1);
  v1 = sub_1D8CD7AD4();

  v2 = MGCopyAnswer();

  if (!v2)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

unint64_t Useragentpb_ClientID.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x12;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1D8CC0BA8@<X0>(uint64_t *a1@<X8>)
{
  result = Useragentpb_ClientID.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D8CC0BD0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1D8CC9924();
}

uint64_t sub_1D8CC0BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8CC15B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D8CC0C28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1D8CC9C8C();
}

uint64_t static Useragentpb_ClientID.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1ECAACCB8 = a1;
}

uint64_t sub_1D8CC0D40@<X0>(uint64_t *a1@<X8>)
{
  result = static Useragentpb_ClientID.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D8CC0D68()
{
  v0 = sub_1D8CD78F4();
  __swift_allocate_value_buffer(v0, qword_1ECAACCC0);
  __swift_project_value_buffer(v0, qword_1ECAACCC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD08, &qword_1D8CDB548);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAACD10, &unk_1D8CDB550) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D8CDB370;
  v4 = v42 + v3 + v1[14];
  *(v42 + v3) = 0;
  *v4 = "UnknownClient";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1D8CD78D4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v42 + v3 + v2 + v1[14];
  *(v42 + v3 + v2) = 1;
  *v8 = "Safari";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v42 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "Spotlight";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v42 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "Lookup";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v42 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "Siri";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v42 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "Messages";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v42 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "News";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v42 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "Parsecd";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v42 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "DPrivacyd";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v7();
  v23 = (v42 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CoreSuggestions";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v7();
  v25 = (v42 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "FlightUtilities";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v7();
  v27 = (v42 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "Trystero";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v7();
  v29 = (v42 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "MapsSuggestions";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v42 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "DuetExpert";
  *(v32 + 1) = 10;
  v32[16] = 2;
  v7();
  v33 = (v42 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "VisualIntelligence";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v7();
  v35 = (v42 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "AMP";
  *(v36 + 1) = 3;
  v36[16] = 2;
  v7();
  v37 = (v42 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "Mail";
  *(v38 + 1) = 4;
  v38[16] = 2;
  v7();
  v39 = (v42 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "Sideband";
  *(v40 + 1) = 8;
  v40[16] = 2;
  v7();
  return sub_1D8CD78E4();
}

uint64_t static Useragentpb_ClientID._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECAAC640 != -1)
  {
    swift_once();
  }

  v2 = sub_1D8CD78F4();
  v3 = __swift_project_value_buffer(v2, qword_1ECAACCC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1D8CC1394()
{
  result = qword_1ECAACCD8;
  if (!qword_1ECAACCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACCD8);
  }

  return result;
}

unint64_t sub_1D8CC13EC()
{
  result = qword_1ECAACCE0;
  if (!qword_1ECAACCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACCE0);
  }

  return result;
}

unint64_t sub_1D8CC1444()
{
  result = qword_1ECAACCE8;
  if (!qword_1ECAACCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACCE8);
  }

  return result;
}

unint64_t sub_1D8CC149C()
{
  result = qword_1ECAACCF0;
  if (!qword_1ECAACCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAACCF8, &qword_1D8CDB468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACCF0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Useragentpb_ClientID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Useragentpb_ClientID(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8CC1568(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8CC1584(uint64_t result, int a2)
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

unint64_t sub_1D8CC15B4()
{
  result = qword_1ECAACD00;
  if (!qword_1ECAACD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACD00);
  }

  return result;
}

uint64_t sub_1D8CC162C(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_1F5454B90 != a1);
  return v2 & 1;
}

uint64_t sub_1D8CC1654(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_1F5454B68 != a1);
  return v2 & 1;
}

void *sub_1D8CC1684()
{
  OUTLINED_FUNCTION_4();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_1D8CC1E44();
  }

  v2 = sub_1D8CD46EC();
  v3 = *(v2 + *(*v2 + 464));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_77();

  OUTLINED_FUNCTION_77();
  v6 = *(v2 + *(v5 + 480));
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D8CC1714()
{
  v1 = v0;
  OUTLINED_FUNCTION_4();
  v3 = *(v0 + *(v2 + 128));
  sub_1D8CD7E24();
  sub_1D8CD7904();
  sub_1D8CD4950();
  sub_1D8CD7E24();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v5 = OUTLINED_FUNCTION_1_0();
  *(v5 + 16) = xmmword_1D8CD8F40;
  v6 = (v1 + *(*v1 + 464));
  v8 = *v6;
  v7 = v6[1];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9B0, &unk_1D8CD9998);
  v9 = sub_1D8CD7B64();
  v11 = v10;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D8C96E60();
  *(v5 + 64) = v12;
  *(v5 + 32) = v9;
  *(v5 + 40) = v11;
  sub_1D8CD7904();

  sub_1D8CD7E24();
  v129 = v4;
  v13 = OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_6(v13, v14, v15, v16, v17, v18, v19, v20, v106, v112, v118, v124, v129, v135, v21);
  ObjectType = swift_getObjectType();
  v113 = v7;
  v22 = v7;
  v23 = *(v7 + 16);
  v23(ObjectType, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC818, &unk_1D8CD9620);
  v24 = sub_1D8CD7B64();
  v13[3].n128_u64[1] = MEMORY[0x1E69E6158];
  v13[4].n128_u64[0] = v12;
  v13[2].n128_u64[0] = v24;
  v13[2].n128_u64[1] = v25;
  v136 = v3;
  sub_1D8CD7904();

  v119 = sub_1D8CC1FDC();
  if (v28)
  {
    sub_1D8CD7E24();
    v29 = OUTLINED_FUNCTION_1_0();
    v38 = OUTLINED_FUNCTION_3_6(v29, v30, v31, v32, v33, v34, v35, v36, ObjectType, v113, v119, v12, v130, v3, v37);
    (v23)(v108, v114, v38);
    v39 = sub_1D8CD7B64();
    v40 = MEMORY[0x1E69E6158];
    v41 = v125;
    v29[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v29[4].n128_u64[0] = v125;
    v29[2].n128_u64[0] = v39;
    v29[2].n128_u64[1] = v42;
    sub_1D8CD7904();
    v43 = v40;
  }

  else
  {
    v44 = v26;
    v45 = v27;
    v46 = HIDWORD(v27);
    sub_1D8CD7E24();
    v47 = OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3_6(v47, v48, v49, v50, v51, v52, v53, v54, ObjectType, v113, v119, v12, v130, v136, v55);
    v56 = MEMORY[0x1E69E65A8];
    v57[7] = v58;
    v57[8] = v56;
    v57[4] = v44;
    sub_1D8CD7904();

    sub_1D8CD7E24();
    v59 = OUTLINED_FUNCTION_5_1();
    v60 = MEMORY[0x1E69E7668];
    OUTLINED_FUNCTION_3_6(v59, v61, v62, v63, v64, v65, v66, v67, v109, v115, v121, v126, v132, v138, v68);
    v69 = MEMORY[0x1E69E76D0];
    *(v70 + 56) = v60;
    *(v70 + 64) = v69;
    *(v70 + 32) = v46;
    OUTLINED_FUNCTION_1_9();
    sub_1D8CD7904();

    sub_1D8CD7E24();
    v71 = OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_3_6(v71, v72, v73, v74, v75, v76, v77, v78, v110, v116, v122, v127, v133, v139, v79);
    *(v80 + 56) = v60;
    *(v80 + 64) = v69;
    *(v80 + 32) = v45;
    OUTLINED_FUNCTION_1_9();
    sub_1D8CD7904();

    sub_1D8CD7E24();
    v81 = OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_3_6(v81, v82, v83, v84, v85, v86, v87, v88, v111, v117, v123, v128, v134, v140, v89);
    v90 = MEMORY[0x1E69E6438];
    v91[7] = v92;
    v91[8] = v90;
    v91[4] = v120;
    OUTLINED_FUNCTION_1_9();
    sub_1D8CD7904();
    v43 = MEMORY[0x1E69E6158];
    v41 = v125;
  }

  sub_1D8CD7E24();
  v93 = OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_6(v93, v94, v95, v96, v97, v98, v99, v100, v108, v114, v120, v125, v131, v137, v101);
  v102 = *(v1 + *(*v1 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9C0, &unk_1D8CD99A8);
  v103 = sub_1D8CD7B64();
  v93[3].n128_u64[1] = v43;
  v93[4].n128_u64[0] = v41;
  v93[2].n128_u64[0] = v103;
  v93[2].n128_u64[1] = v104;
  OUTLINED_FUNCTION_9_1();
  sub_1D8CD7904();

  sub_1D8CD7E24();
  OUTLINED_FUNCTION_9_1();
  return sub_1D8CD7904();
}

uint64_t sub_1D8CC1BD4(uint64_t a1, unint64_t a2, double a3)
{
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD28, &qword_1D8CDB740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8CD97E0;
  *(inited + 32) = 0x635F737574617473;
  *(inited + 40) = 0xEB0000000065646FLL;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 0x656D69746E7572;
  *(inited + 64) = 0xE700000000000000;
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  OUTLINED_FUNCTION_6();
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = v9;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  strcpy((inited + 104), "uploaded_bytes");
  *(inited + 119) = -18;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  sub_1D8CC26E8();
  return sub_1D8CD7A84();
}

uint64_t sub_1D8CC1D54(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8CD97E0;
  v8 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = MEMORY[0x1E69E6530];
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  v9 = MEMORY[0x1E69E7668];
  v10 = MEMORY[0x1E69E76D0];
  *(v7 + 96) = MEMORY[0x1E69E7668];
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  v11 = MEMORY[0x1E69E63B0];
  *(v7 + 112) = v6;
  v12 = MEMORY[0x1E69E6438];
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = a3;
  sub_1D8CD4648("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

void sub_1D8CC1E44()
{
  OUTLINED_FUNCTION_4();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_1D8CC1FDC();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v3 = OUTLINED_FUNCTION_1_0();
      *(v3 + 16) = xmmword_1D8CD8F40;
      OUTLINED_FUNCTION_77();
      v5 = (v0 + *(v4 + 464));
      v6 = *v5;
      v7 = v5[1];
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(ObjectType, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC818, &unk_1D8CD9620);
      v9 = sub_1D8CD7B64();
      v11 = v10;
      *(v3 + 56) = MEMORY[0x1E69E6158];
      *(v3 + 64) = sub_1D8C96E60();
      *(v3 + 32) = v9;
      *(v3 + 40) = v11;
      OUTLINED_FUNCTION_9_1();
      sub_1D8CD4648(v12);
    }

    else
    {
      OUTLINED_FUNCTION_77();
      (*(v13 + 568))(v14, v15);
    }

    sub_1D8CD4878();
  }
}

uint64_t sub_1D8CC1FDC()
{
  OUTLINED_FUNCTION_4();
  v2 = (v0 + *(v1 + 464));
  v3 = *v2;
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  v7 = v6(ObjectType, v4);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
    v19 = OUTLINED_FUNCTION_1_0();
    *(v19 + 16) = xmmword_1D8CD8F40;
    v83 = v6(ObjectType, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC818, &unk_1D8CD9620);
    v20 = sub_1D8CD7B64();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1D8C96E60();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    OUTLINED_FUNCTION_9_1();
    sub_1D8CD4648();

    sub_1D8CD4878();
    *&result = 0.0;
    return result;
  }

  [v9 statusCode];
  if (!(*(v4 + 8))(ObjectType, v4))
  {

    *&result = 0.0;
    return result;
  }

  OUTLINED_FUNCTION_6();
  *&v88 = 0xD000000000000021;
  *(&v88 + 1) = v10;
  v11 = sub_1D8CD7FB4();
  OUTLINED_FUNCTION_2_10(v11, v12, v13, v14, v15, v16, v17, v18, v61, v65, v69, v74, v79, v83, v84, v85, v86, v87, v88);
  sub_1D8CAD7EC(&v83);
  if (v89)
  {
    OUTLINED_FUNCTION_0_11();
  }

  else
  {
    sub_1D8CAFBCC(&v88);
  }

  OUTLINED_FUNCTION_6();
  *&v88 = 0xD00000000000001DLL;
  *(&v88 + 1) = v24;
  v25 = sub_1D8CD7FB4();
  OUTLINED_FUNCTION_2_10(v25, v26, v27, v28, v29, v30, v31, v32, v62, v66, v70, v75, v80, v83, v84, v85, v86, v87, v88);
  sub_1D8CAD7EC(&v83);
  if (v89)
  {
    OUTLINED_FUNCTION_0_11();
  }

  else
  {
    sub_1D8CAFBCC(&v88);
  }

  OUTLINED_FUNCTION_6();
  v71 = v33;
  v34 = sub_1D8CD7FB4();
  OUTLINED_FUNCTION_2_10(v34, v35, v36, v37, v38, v39, v40, v41, v63, 0xD00000000000001BLL, v71, v76, v81, v83, v84, v85, v86, v87, v88);
  sub_1D8CAD7EC(&v83);
  if (v89)
  {
    if (OUTLINED_FUNCTION_0_11())
    {
      v78 = v67;
      goto LABEL_19;
    }
  }

  else
  {
    sub_1D8CAFBCC(&v88);
  }

  OUTLINED_FUNCTION_6();
  v72 = v42;
  v43 = sub_1D8CD7FB4();
  OUTLINED_FUNCTION_2_10(v43, v44, v45, v46, v47, v48, v49, v50, v64, 0xD00000000000001BLL, v72, v77, v82, v83, v84, v85, v86, v87, v88);
  sub_1D8CAD7EC(&v83);
  if (!v89)
  {
    sub_1D8CAFBCC(&v88);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    goto LABEL_25;
  }

LABEL_19:
  v51 = *&v78;
  OUTLINED_FUNCTION_6();
  v73 = v52;
  v53 = sub_1D8CD7FB4();
  OUTLINED_FUNCTION_2_10(v53, v54, v55, v56, v57, v58, v59, v60, v64, 0xD00000000000001ALL, v73, v78, v82, v83, v84, v85, v86, v87, v88);

  sub_1D8CAD7EC(&v83);
  if (v89)
  {
    if (OUTLINED_FUNCTION_0_11())
    {
      *&result = v68 - v51;
      return result;
    }
  }

  else
  {
    sub_1D8CAFBCC(&v88);
  }

LABEL_25:
  *&result = 0.0;
  return result;
}

id sub_1D8CC244C()
{
  v1 = [v0 response];

  return v1;
}

uint64_t sub_1D8CC2484()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v0 + *(v1 + 464));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_4();
  v5 = *(v0 + *(v4 + 480));

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8CC24EC()
{
  v0 = sub_1D8CC1684();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D8CC2558(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(*a1 + 480);
  if (*(a1 + v3))
  {
    v4 = a1;
    v5 = *(a1 + v3);
    swift_unknownObjectRetain();
    is_activated = nw_activity_is_activated();
    v7 = *v4;
    if (is_activated)
    {
      *(v4 + *(v7 + 472));
      nw_activity_complete_with_reason();
    }

    else
    {
      v8 = *(v4 + *(v7 + 128));
      sub_1D8CD7E04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D8CD8F40;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD20, &qword_1D8CD99B8);
      v10 = sub_1D8CD7B64();
      v12 = v11;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1D8C96E60();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      sub_1D8CD7904();
    }

    a1 = swift_unknownObjectRelease();
  }

  return a2(a1);
}

unint64_t sub_1D8CC26E8()
{
  result = qword_1ED9C54E0;
  if (!qword_1ED9C54E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9C54E0);
  }

  return result;
}

unint64_t FeedbackStreamDescriptor.messageSchemaName.getter()
{
  if (*v0)
  {
    result = 0xD000000000000028;
  }

  else
  {
    result = 0xD000000000000026;
  }

  *v0;
  return result;
}

uint64_t FeedbackStreamDescriptor.streamSegmentSize.getter()
{
  if (*v0)
  {
    return 0x200000;
  }

  else
  {
    return 0x20000;
  }
}

PegasusConfiguration::FeedbackStreamDescriptor_optional __swiftcall FeedbackStreamDescriptor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8CD8184();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D8CC2820@<X0>(unint64_t *a1@<X8>)
{
  result = FeedbackStreamDescriptor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PegasusConfiguration::FeedbackStreamDescriptor_optional __swiftcall FeedbackStreamDescriptor.init(tableName:)(Swift::String tableName)
{
  object = tableName._object;
  countAndFlagsBits = tableName._countAndFlagsBits;
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD30, &qword_1D8CDB758);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = countAndFlagsBits == 0x5F6E6F6973736573 && object == 0xEB00000000736673;
  if (!v9 && (sub_1D8CD8154() & 1) == 0)
  {
    v18 = countAndFlagsBits;
    v19 = object;
    v17._countAndFlagsBits = 0x6569765F7366735FLL;
    v17._object = 0xE900000000000077;
    v12 = sub_1D8CD7754();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
    sub_1D8C94EC8();
    sub_1D8CD7F64();
    v14 = v13;
    sub_1D8C953A4(v8, &qword_1ECAACD30, &qword_1D8CDB758);
    if (v14)
    {
    }

    else
    {
      v18 = countAndFlagsBits;
      v19 = object;
      sub_1D8CD7BB4();
      OUTLINED_FUNCTION_1_10();
      v17._countAndFlagsBits = v15;
      v17._object = v16;
      MEMORY[0x1DA726A90]();

      result.value = FeedbackStreamDescriptor.init(rawValue:)(v17).value;
      v11 = v17._countAndFlagsBits;
      if (LOBYTE(v17._countAndFlagsBits) != 17)
      {
        goto LABEL_7;
      }
    }

    v11 = 17;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  *v4 = v11;
  return result;
}

uint64_t FeedbackStreamDescriptor.storeFolderName.getter()
{
  if (*v0)
  {
    result = 0x6B63616264656566;
  }

  else
  {
    result = 0;
  }

  *v0;
  return result;
}

uint64_t FeedbackStreamDescriptor.streamTTLDate.getter()
{
  v0 = sub_1D8CD7674();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CD7654();
  sub_1D8CD7624();
  v9 = v8;
  v10 = v8;
  result = (*(v3 + 8))(v7, v0);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (((v9 / 86400 - 7) * 86400) >> 64 == (86400 * (v9 / 86400 - 7)) >> 63)
  {
    return sub_1D8CD7614();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t FeedbackStreamDescriptor.caName.getter()
{
  v3 = *v0;
  FeedbackStreamDescriptor.rawValue.getter();
  OUTLINED_FUNCTION_1_10();
  sub_1D8CC2C90();
  sub_1D8CD7DE4();

  v1 = MEMORY[0x1DA726A10]();

  return v1;
}

unint64_t sub_1D8CC2C90()
{
  result = qword_1ECAACD38;
  if (!qword_1ECAACD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACD38);
  }

  return result;
}

unint64_t sub_1D8CC2CE8()
{
  result = qword_1ED9C4138;
  if (!qword_1ED9C4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C4138);
  }

  return result;
}

unint64_t sub_1D8CC2D40()
{
  result = qword_1ECAACD40;
  if (!qword_1ECAACD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAACD48, &qword_1D8CDB800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACD40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeedbackStreamDescriptor(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8CC2E70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8CC2EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D8CC2F14(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D8CC2F2C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void *sub_1D8CC2F5C()
{
  OUTLINED_FUNCTION_7_1();
  type metadata accessor for Locker();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  v1[4] = v2;
  v1[5] = v4;
  v1[3] = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D8CC2FD8()
{
  v1 = v0;
  v16 = MEMORY[0x1E69E7CC0];
  v2 = *(*(v0 + 32) + 16);

  os_unfair_lock_lock(v2);
  sub_1D8CC3134(v0, &v16);
  os_unfair_lock_unlock(v2);

  result = swift_unknownObjectWeakLoadStrong();
  v4 = v16;
  if (result)
  {
    v5 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v4, ObjectType, v5);
    result = swift_unknownObjectRelease();
  }

  v7 = 0;
  v8 = v4[2];
  for (i = v4 + 5; ; i += 2)
  {
    if (v8 == v7)
    {

      sub_1D8C9B6F4(v1 + 16);
      v14 = *(v1 + 32);

      v15 = *(v1 + 40);

      return v1;
    }

    if (v7 >= v4[2])
    {
      break;
    }

    ++v7;
    v10 = *(i - 1);
    v11 = *i;
    v12 = swift_getObjectType();
    v13 = *(v11 + 72);
    swift_unknownObjectRetain();
    v13(v12, v11);
    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8CC3134(uint64_t a1, void **a2)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(a1 + 40) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v35 = *(a1 + 40);
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v34 = v5;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v14 = __clz(__rbit64(v9)) | (v12 << 6);
        v15 = (*(v35 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(v35 + 56) + 8 * v14);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          v21 = *(v18 + 24);
          ObjectType = swift_getObjectType();
          v23 = *(v21 + 64);

          v23(ObjectType, v21);
          v24 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = v24[2];

            v32 = sub_1D8CC3954(0, v31 + 1, 1, v24);
            v33 = *a2;
            *a2 = v32;

            v24 = *a2;
          }

          v27 = v24[2];
          v26 = v24[3];
          v5 = v34;
          if (v27 >= v26 >> 1)
          {
            v24 = sub_1D8CC3954((v26 > 1), v27 + 1, 1, v24);
            *a2 = v24;
          }

          v24[2] = v27 + 1;
          v28 = &(*a2)[2 * v27];
          *(v28 + 32) = v20;
          *(v28 + 40) = v21;
        }

        else
        {
          sub_1D8CC3DF4();

          v29 = sub_1D8CD7EB4();
          sub_1D8CD7E24();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1D8CD8F40;
          *(v30 + 56) = MEMORY[0x1E69E6158];
          *(v30 + 64) = sub_1D8C96E60();
          *(v30 + 32) = v17;
          *(v30 + 40) = v16;

          sub_1D8CD7904();
        }

        v9 &= v9 - 1;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8CC3420()
{
  sub_1D8CC2FD8();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

void sub_1D8CC3478()
{
  OUTLINED_FUNCTION_5_2();
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_4_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_12();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_1D8CBC270(v7, v4);
  v9 = *(sub_1D8CD7324() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_1D8CC3C4C(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_1();
  }
}

void sub_1D8CC353C()
{
  OUTLINED_FUNCTION_5_2();
  if (v5)
  {
    OUTLINED_FUNCTION_1_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_4_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_2_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD60, &qword_1D8CDBA98);
    v9 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_11_2(v9);
    OUTLINED_FUNCTION_3_7(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_6_2();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D8CC3608()
{
  OUTLINED_FUNCTION_5_2();
  if (v5)
  {
    OUTLINED_FUNCTION_1_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_4_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_2_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACEB0, &qword_1D8CDA970);
    v9 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_11_2(v9);
    OUTLINED_FUNCTION_3_7(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_6_2();
  if (v1)
  {
    if (v3 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D8CC36D4()
{
  OUTLINED_FUNCTION_5_2();
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_4_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_12();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAC0, &qword_1D8CDBA90);
    v9 = OUTLINED_FUNCTION_8_2();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_1D8CC37B4()
{
  OUTLINED_FUNCTION_5_2();
  if (v5)
  {
    OUTLINED_FUNCTION_1_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_4_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_2_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD78, &qword_1D8CDBAA8);
    v9 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_11_2(v9);
    OUTLINED_FUNCTION_3_7(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_6_2();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D8CC3884()
{
  OUTLINED_FUNCTION_5_2();
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_4_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_12();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_1D8CBC36C(v7, v4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAF0, &unk_1D8CDAA60) - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_1D8CC3D08(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_1();
  }
}

void *sub_1D8CC3954(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD50, &qword_1D8CDBA78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD58, &unk_1D8CDBA80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D8CC3A84()
{
  OUTLINED_FUNCTION_5_2();
  if (v5)
  {
    OUTLINED_FUNCTION_1_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_4_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_2_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD70, &unk_1D8CDCC40);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_6_2();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_1D8CC3B54()
{
  OUTLINED_FUNCTION_5_2();
  if (v5)
  {
    OUTLINED_FUNCTION_1_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_4_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_2_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD68, &qword_1D8CDBAA0);
    v9 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_11_2(v9);
    OUTLINED_FUNCTION_3_7(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_6_2();
  if (v1)
  {
    if (v3 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1D8CC3C20(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t sub_1D8CC3C4C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1D8CD7324(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1D8CD7324();
    OUTLINED_FUNCTION_9_2();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_9_2();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1D8CC3D08(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAF0, &unk_1D8CDAA60), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAF0, &unk_1D8CDAA60);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1D8CC3DF4()
{
  result = qword_1ED9C3BE8;
  if (!qword_1ED9C3BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9C3BE8);
  }

  return result;
}

uint64_t sub_1D8CC3E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a4 + 56))(a3, a4);
  v10 = v9;
  v11 = *(*(a2 + 32) + 16);
  os_unfair_lock_lock(v11);
  sub_1D8C9B450(a2, v8, v10, a1, a4);

  os_unfair_lock_unlock(v11);

  return sub_1D8CC3EF8(a2, a1, a3, a4);
}

uint64_t sub_1D8CC3EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a2, a4, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8CC3FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 + 80);
  v8[3] = a1;
  v8[4] = a2;
  v8[0] = v5;
  v6 = __swift_project_boxed_opaque_existential_1(v8, a1);
  LOBYTE(a3) = a3(*v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return a3 & 1;
}

uint64_t sub_1D8CC4038()
{
  v1 = *(*(v0 + *(*v0 + 152)) + 16);

  os_unfair_lock_lock(v1);
  v28 = *(v0 + 32);
  v29 = *(v0 + 24);
  v27 = *(v0 + 40);
  v31 = *(v0 + 41);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  v30 = *(v0 + 72);
  swift_unknownObjectRetain();

  v33 = v4;

  os_unfair_lock_unlock(v1);

  v5 = *(v0 + 96);
  sub_1D8CD7E24();
  sub_1D8CD7904();
  sub_1D8CD7E24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D8CDB570;
  sub_1D8C97B40(*(v0 + 80));
  v7 = sub_1D8CD8024();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D8C96E60();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 64) = v11;
  strcpy((v6 + 72), "networkRequest");
  *(v6 + 87) = -18;
  *(v6 + 136) = v10;
  *(v6 + 144) = v11;
  v32 = v11;
  *(v6 + 112) = 0xD000000000000010;
  *(v6 + 120) = 0x80000001D8CDDBC0;
  sub_1D8CD7904();

  if ((v31 & 1) == 0)
  {
    sub_1D8CD7E24();
    v12 = OUTLINED_FUNCTION_2_13();
    *(v12 + 16) = xmmword_1D8CD8F40;
    v13 = sub_1D8CD8024();
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = v32;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    OUTLINED_FUNCTION_3_8();

    if (v2)
    {

      sub_1D8CD7E24();
      v15 = OUTLINED_FUNCTION_2_13();
      *(v15 + 16) = xmmword_1D8CD8F40;
      *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD90, &qword_1D8CDBBE8);
      *(v15 + 64) = sub_1D8CC4EE0(&qword_1ECAACF30, &qword_1ECAACD90, &qword_1D8CDBBE8);
      *(v15 + 32) = v2;
      OUTLINED_FUNCTION_3_8();
    }
  }

  if (v3)
  {

    sub_1D8CD7E24();
    v16 = OUTLINED_FUNCTION_2_13();
    *(v16 + 16) = xmmword_1D8CD8F40;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD88, &qword_1D8CDBBE0);
    *(v16 + 64) = sub_1D8CC4EE0(&unk_1ECAACF20, &qword_1ECAACD88, &qword_1D8CDBBE0);
    *(v16 + 32) = v3;
    OUTLINED_FUNCTION_3_8();
  }

  result = sub_1D8CD57B8(v33);
  if (result)
  {
    v18 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v19 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA726EA0](v19, v33);
      }

      else
      {
        v20 = *(v33 + 8 * v19 + 32);
        swift_unknownObjectRetain();
      }

      ++v19;
      sub_1D8CD7E24();
      v21 = OUTLINED_FUNCTION_1_0();
      *(v21 + 16) = xmmword_1D8CD8F40;
      swift_unknownObjectRetain();
      v22 = sub_1D8CD7B64();
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = v32;
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      sub_1D8CD7904();
      swift_unknownObjectRelease();
    }

    while (v18 != v19);
  }

  sub_1D8CD7E24();
  sub_1D8CD7904();
  OUTLINED_FUNCTION_1_12();
  if (sub_1D8CC3FD8(v24, v25, v26))
  {
    sub_1D8CD7E34();
    sub_1D8CD7904();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1D8CC4550()
{
  v1 = *(*(v0 + *(*v0 + 152)) + 16);

  os_unfair_lock_lock(v1);
  v25 = *(v0 + 32);
  v26 = *(v0 + 24);
  v24 = *(v0 + 40);
  v28 = *(v0 + 41);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  v27 = *(v0 + 72);
  swift_unknownObjectRetain();

  v30 = v4;

  os_unfair_lock_unlock(v1);

  v5 = *(v0 + 96);
  sub_1D8CD7E24();
  sub_1D8CD7904();
  sub_1D8CD7E24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D8CDB570;
  sub_1D8C97B40(*(v0 + 80));
  v7 = sub_1D8CD8024();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D8C96E60();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 64) = v11;
  strcpy((v6 + 72), "resourceAccess");
  *(v6 + 87) = -18;
  *(v6 + 136) = v10;
  *(v6 + 144) = v11;
  v29 = v11;
  *(v6 + 112) = 0xD000000000000010;
  *(v6 + 120) = 0x80000001D8CDDBC0;
  sub_1D8CD7904();

  if ((v28 & 1) == 0)
  {
    sub_1D8CD7E24();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D8CD8F40;
    v13 = sub_1D8CD8024();
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = v29;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    sub_1D8CD7904();

    if (v2)
    {

      sub_1D8CD7E24();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D8CD8F40;
      *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD90, &qword_1D8CDBBE8);
      *(v15 + 64) = sub_1D8CC4EE0(&qword_1ECAACF30, &qword_1ECAACD90, &qword_1D8CDBBE8);
      *(v15 + 32) = v2;
      sub_1D8CD7904();
    }
  }

  if (v3)
  {

    sub_1D8CD7E24();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D8CD8F40;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD88, &qword_1D8CDBBE0);
    *(v16 + 64) = sub_1D8CC4EE0(&unk_1ECAACF20, &qword_1ECAACD88, &qword_1D8CDBBE0);
    *(v16 + 32) = v3;
    sub_1D8CD7904();
  }

  result = sub_1D8CD57B8(v30);
  if (result)
  {
    v18 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v19 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA726EA0](v19, v30);
      }

      else
      {
        v20 = *(v30 + 8 * v19 + 32);
        swift_unknownObjectRetain();
      }

      ++v19;
      sub_1D8CD7E24();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D8CD8F40;
      swift_unknownObjectRetain();
      v22 = sub_1D8CD7B64();
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = v29;
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      sub_1D8CD7904();
      swift_unknownObjectRelease();
    }

    while (v18 != v19);
  }

  sub_1D8CD7E24();
  sub_1D8CD7904();
  if (sub_1D8CC3FD8(&type metadata for ResourceAccessActivity, &off_1F5453FD8, sub_1D8CC1654))
  {
    sub_1D8CD7E34();
    sub_1D8CD7904();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1D8CC4B24()
{
  v1 = *(v0 + qword_1ED9C5628);

  v2 = *(v0 + qword_1ED9C5618 + 16);
}

uint64_t sub_1D8CC4BD4()
{
  v1 = *(v0 + 96);
  sub_1D8CD7E24();
  OUTLINED_FUNCTION_0_0();
  sub_1D8CD7904();
  sub_1D8CC4550();
  sub_1D8CD7E24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v2 = OUTLINED_FUNCTION_1_0();
  *(v2 + 16) = xmmword_1D8CD8F40;
  v19 = *(v0 + qword_1ED9C3D48);
  v3 = sub_1D8CD7B64();
  v5 = v4;
  v6 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D8C96E60();
  *(v2 + 64) = v7;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  OUTLINED_FUNCTION_0_0();
  sub_1D8CD7904();

  sub_1D8CD7E24();
  v8 = OUTLINED_FUNCTION_1_0();
  *(v8 + 16) = xmmword_1D8CD8F40;
  v17 = *(v0 + qword_1ED9C5620);
  v18 = *(v0 + qword_1ED9C5620 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD80, &qword_1D8CDBBD8);
  v9 = sub_1D8CD7B64();
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  OUTLINED_FUNCTION_0_0();
  sub_1D8CD7904();

  sub_1D8CD7E24();
  v11 = OUTLINED_FUNCTION_1_0();
  v12 = *(v0 + qword_1ED9C5628);
  *(v11 + 16) = xmmword_1D8CD8F40;
  v13 = v12 == 0;
  v14 = 7562617;
  if (v13)
  {
    v14 = 28526;
  }

  v15 = 0xE300000000000000;
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  if (v13)
  {
    v15 = 0xE200000000000000;
  }

  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  OUTLINED_FUNCTION_0_0();
  sub_1D8CD7904();

  sub_1D8CD7E24();
  OUTLINED_FUNCTION_0_0();
  return sub_1D8CD7904();
}

unint64_t sub_1D8CC4E08(uint64_t a1)
{
  *(a1 + 8) = sub_1D8CC4E38();
  result = sub_1D8CC4E8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D8CC4E38()
{
  result = qword_1ED9C3D20;
  if (!qword_1ED9C3D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3D20);
  }

  return result;
}

unint64_t sub_1D8CC4E8C()
{
  result = qword_1ED9C3D10;
  if (!qword_1ED9C3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3D10);
  }

  return result;
}

uint64_t sub_1D8CC4EE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1D8CC4F28()
{
  result = qword_1ED9C5510;
  if (!qword_1ED9C5510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9C5510);
  }

  return result;
}

uint64_t FederatedIdentifier.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D8CD76C4();
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t FederatedIdentifier.dateCreated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FederatedIdentifier() + 20);
  v4 = sub_1D8CD7674();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for FederatedIdentifier()
{
  result = qword_1ECAAC4E8;
  if (!qword_1ECAAC4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FederatedIdentifier.init(uuid:dateCreated:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D8CD76C4();
  OUTLINED_FUNCTION_8(v6);
  (*(v7 + 32))(a3, a1);
  v8 = *(type metadata accessor for FederatedIdentifier() + 20);
  v9 = sub_1D8CD7674();
  OUTLINED_FUNCTION_8(v9);
  v11 = *(v10 + 32);

  return v11(a3 + v8, a2);
}

uint64_t FederatedIdentifier.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1D8CD76B4();
  v2 = a1 + *(type metadata accessor for FederatedIdentifier() + 20);
  return sub_1D8CD7654();
}

uint64_t static FederatedIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8CD7694() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for FederatedIdentifier() + 20);

  return MEMORY[0x1EEDC4D98](a1 + v4, a2 + v4);
}

uint64_t sub_1D8CC51D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8CD8154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6165724365746164 && a2 == 0xEB00000000646574)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D8CD8154();

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

uint64_t sub_1D8CC52A8(char a1)
{
  if (a1)
  {
    return 0x6165724365746164;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_1D8CC52E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8CC51D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8CC5330@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8CC52A0();
  *a1 = result;
  return result;
}

uint64_t sub_1D8CC5358(uint64_t a1)
{
  v2 = sub_1D8CC5580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8CC5394(uint64_t a1)
{
  v2 = sub_1D8CC5580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FederatedIdentifier.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACDA0, &qword_1D8CDBFF0);
  OUTLINED_FUNCTION_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8CC5580();
  sub_1D8CD82A4();
  v22 = 0;
  sub_1D8CD76C4();
  OUTLINED_FUNCTION_1_13();
  sub_1D8CC669C(v14, v15);
  OUTLINED_FUNCTION_8_3(v3, &v22);
  if (!v2)
  {
    v16 = *(type metadata accessor for FederatedIdentifier() + 20);
    v21 = 1;
    sub_1D8CD7674();
    OUTLINED_FUNCTION_0_13();
    sub_1D8CC669C(v17, v18);
    OUTLINED_FUNCTION_8_3(v3 + v16, &v21);
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1D8CC5580()
{
  result = qword_1ECAAC508[0];
  if (!qword_1ECAAC508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECAAC508);
  }

  return result;
}

uint64_t FederatedIdentifier.hash(into:)()
{
  sub_1D8CD76C4();
  OUTLINED_FUNCTION_1_13();
  sub_1D8CC669C(v0, v1);
  sub_1D8CD7AA4();
  v2 = *(type metadata accessor for FederatedIdentifier() + 20);
  sub_1D8CD7674();
  OUTLINED_FUNCTION_0_13();
  sub_1D8CC669C(v3, v4);
  return sub_1D8CD7AA4();
}

uint64_t FederatedIdentifier.hashValue.getter()
{
  sub_1D8CD8254();
  sub_1D8CD76C4();
  OUTLINED_FUNCTION_1_13();
  sub_1D8CC669C(v0, v1);
  sub_1D8CD7AA4();
  v2 = *(type metadata accessor for FederatedIdentifier() + 20);
  sub_1D8CD7674();
  OUTLINED_FUNCTION_0_13();
  sub_1D8CC669C(v3, v4);
  sub_1D8CD7AA4();
  return sub_1D8CD8284();
}

uint64_t FederatedIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = sub_1D8CD7674();
  v4 = OUTLINED_FUNCTION_3(v38);
  v35 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_37();
  v10 = v9 - v8;
  v40 = sub_1D8CD76C4();
  v11 = OUTLINED_FUNCTION_3(v40);
  v37 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_37();
  v39 = v16 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACDB8, &qword_1D8CDBFF8);
  OUTLINED_FUNCTION_3(v41);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v19);
  v20 = type metadata accessor for FederatedIdentifier();
  v21 = OUTLINED_FUNCTION_8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_37();
  v26 = v25 - v24;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8CC5580();
  sub_1D8CD8294();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  OUTLINED_FUNCTION_1_13();
  sub_1D8CC669C(v28, v29);
  sub_1D8CD80F4();
  (*(v37 + 32))(v26, v39, v40);
  OUTLINED_FUNCTION_0_13();
  sub_1D8CC669C(v30, v31);
  sub_1D8CD80F4();
  v32 = OUTLINED_FUNCTION_6_3();
  v33(v32);
  (*(v35 + 32))(v26 + *(v20 + 20), v10, v38);
  sub_1D8CC5C10(v26, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1D8CC5C74(v26);
}

uint64_t sub_1D8CC5B28(uint64_t a1, uint64_t a2)
{
  sub_1D8CD8254();
  sub_1D8CD76C4();
  sub_1D8CC669C(&qword_1ECAACDA8, MEMORY[0x1E69695A8]);
  sub_1D8CD7AA4();
  v3 = *(a2 + 20);
  sub_1D8CD7674();
  sub_1D8CC669C(&qword_1ECAACDB0, MEMORY[0x1E6969530]);
  sub_1D8CD7AA4();
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC5C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FederatedIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8CC5C74(uint64_t a1)
{
  v2 = type metadata accessor for FederatedIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static FederatedIdentifier.< infix(_:_:)()
{
  v0 = *(type metadata accessor for FederatedIdentifier() + 20);

  return sub_1D8CD75E4();
}

uint64_t sub_1D8CC5DB4()
{
  v0 = *(type metadata accessor for FederatedIdentifier() + 20);

  return sub_1D8CD75E4();
}

uint64_t FederatedIdentifier.isValid(for:)(uint64_t a1)
{
  v63 = a1;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA18, &qword_1D8CDC000) - 8) + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v60 - v3;
  v65 = sub_1D8CD7674();
  v5 = OUTLINED_FUNCTION_3(v65);
  v62 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v60 - v11;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACDD0, &qword_1D8CDC008) - 8) + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACDD8, &qword_1D8CDC010) - 8) + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v20 = sub_1D8CD7434();
  v21 = OUTLINED_FUNCTION_3(v20);
  v66 = v22;
  v67 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_37();
  v27 = v26 - v25;
  v28 = sub_1D8CD7764();
  v29 = OUTLINED_FUNCTION_3(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_37();
  v36 = v35 - v34;
  v37 = sub_1D8CD77C4();
  v38 = OUTLINED_FUNCTION_3(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_37();
  v45 = v44 - v43;
  (*(v31 + 104))(v36, *MEMORY[0x1E6969868], v28);
  sub_1D8CD7774();
  (*(v31 + 8))(v36, v28);
  (*(v40 + 16))(v19, v45, v37);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v37);
  v46 = sub_1D8CD77D4();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v46);
  sub_1D8CD7424();
  if (v63 && (Config.federatedIdentifierTTLInDays.getter(), (v47 & 1) == 0))
  {
    sub_1D8CD73E4();
  }

  else
  {
    sub_1D8CD7404();
  }

  v48 = v64 + *(type metadata accessor for FederatedIdentifier() + 20);
  sub_1D8CD7794();
  v49 = v65;
  if (__swift_getEnumTagSinglePayload(v4, 1, v65) == 1)
  {
    sub_1D8CC63F0(v4);
    if (qword_1ED9C4150 != -1)
    {
      OUTLINED_FUNCTION_32();
    }

    v50 = sub_1D8CD7A04();
    __swift_project_value_buffer(v50, qword_1ED9C5668);
    v51 = sub_1D8CD79E4();
    v52 = sub_1D8CD7E24();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1D8C92000, v51, v52, "FederatedIdentifier endDate could not be computed", v53, 2u);
      MEMORY[0x1DA727900](v53, -1, -1);
    }

    v54 = 0;
  }

  else
  {
    v55 = v62;
    v56 = v60;
    (*(v62 + 32))(v60, v4, v49);
    v57 = v61;
    sub_1D8CD7654();
    v54 = sub_1D8CD75D4();
    v58 = *(v55 + 8);
    v58(v57, v49);
    v58(v56, v49);
  }

  (*(v66 + 8))(v27, v67);
  (*(v40 + 8))(v45, v37);
  return v54 & 1;
}

uint64_t sub_1D8CC63F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA18, &qword_1D8CDC000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Config.federatedIdentifierTTLInDays.getter()
{
  v1 = sub_1D8CD7AD4();
  v2 = [v0 valueForKey:v1 shouldConsiderOverrides:1];

  if (!v2)
  {
    return 0;
  }

  sub_1D8CD7F84();
  swift_unknownObjectRelease();
  sub_1D8C9D24C(v15, v14);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    return v13;
  }

  else
  {
    if (qword_1ED9C4150 != -1)
    {
      OUTLINED_FUNCTION_32();
    }

    v4 = sub_1D8CD7A04();
    __swift_project_value_buffer(v4, qword_1ED9C5668);
    sub_1D8C9D24C(v15, v14);
    v5 = sub_1D8CD79E4();
    v6 = sub_1D8CD7E24();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      swift_getDynamicType();
      v9 = sub_1D8CD82E4();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      v12 = sub_1D8C9D088(v9, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1D8C92000, v5, v6, "Config has FederatedIdentifier with unexpected type: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x1DA727900](v8, -1, -1);
      MEMORY[0x1DA727900](v7, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    return 0;
  }
}

uint64_t sub_1D8CC669C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CC670C()
{
  result = sub_1D8CD76C4();
  if (v1 <= 0x3F)
  {
    result = sub_1D8CD7674();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FederatedIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D8CC6870()
{
  result = qword_1ECAACDE8;
  if (!qword_1ECAACDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACDE8);
  }

  return result;
}

unint64_t sub_1D8CC68C8()
{
  result = qword_1ECAAC4F8;
  if (!qword_1ECAAC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC4F8);
  }

  return result;
}

unint64_t sub_1D8CC6920()
{
  result = qword_1ECAAC500;
  if (!qword_1ECAAC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC500);
  }

  return result;
}

uint64_t sub_1D8CC6978()
{
  v1 = v0;
  v2 = sub_1D8CD78B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  [v1 code];
  sub_1D8CD7884();
  (*(v3 + 16))(v10, v12, v2);
  sub_1D8CD78A4();
  sub_1D8CC6DFC();
  v13 = OUTLINED_FUNCTION_1_14();
  v14 = *(v3 + 8);
  v14(v7, v2);
  if (v13)
  {
    v15 = OUTLINED_FUNCTION_3_9();
    (v14)(v15);
    v16 = OUTLINED_FUNCTION_38();
    (v14)(v16);
    return 59;
  }

  else
  {
    sub_1D8CD7874();
    OUTLINED_FUNCTION_1_14();
    v18 = OUTLINED_FUNCTION_0_14();
    (v14)(v18);
    sub_1D8CD7894();
    OUTLINED_FUNCTION_1_14();
    v19 = OUTLINED_FUNCTION_0_14();
    (v14)(v19);
    sub_1D8CD77F4();
    OUTLINED_FUNCTION_1_14();
    v20 = OUTLINED_FUNCTION_0_14();
    (v14)(v20);
    sub_1D8CD77E4();
    OUTLINED_FUNCTION_1_14();
    v21 = OUTLINED_FUNCTION_0_14();
    (v14)(v21);
    sub_1D8CD7814();
    OUTLINED_FUNCTION_1_14();
    v22 = OUTLINED_FUNCTION_0_14();
    (v14)(v22);
    sub_1D8CD7844();
    OUTLINED_FUNCTION_1_14();
    v23 = OUTLINED_FUNCTION_0_14();
    (v14)(v23);
    sub_1D8CD7804();
    OUTLINED_FUNCTION_1_14();
    v24 = OUTLINED_FUNCTION_0_14();
    (v14)(v24);
    sub_1D8CD7834();
    OUTLINED_FUNCTION_1_14();
    v25 = OUTLINED_FUNCTION_0_14();
    (v14)(v25);
    sub_1D8CD7824();
    OUTLINED_FUNCTION_1_14();
    v26 = OUTLINED_FUNCTION_0_14();
    (v14)(v26);
    sub_1D8CD7854();
    OUTLINED_FUNCTION_1_14();
    v27 = OUTLINED_FUNCTION_0_14();
    (v14)(v27);
    sub_1D8CD7864();
    v28 = OUTLINED_FUNCTION_1_14();
    v14(v7, v2);
    v29 = OUTLINED_FUNCTION_3_9();
    (v14)(v29);
    v30 = OUTLINED_FUNCTION_38();
    (v14)(v30);
    if (v28)
    {
      return 69;
    }

    else
    {
      return 22;
    }
  }
}

unint64_t sub_1D8CC6DFC()
{
  result = qword_1ECAAC5E0;
  if (!qword_1ECAAC5E0)
  {
    sub_1D8CD78B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC5E0);
  }

  return result;
}

PegasusConfiguration::DataVaultStorageClass_optional __swiftcall DataVaultStorageClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8CD80E4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DataVaultStorageClass.rawValue.getter()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

unint64_t sub_1D8CC6F44@<X0>(unint64_t *a1@<X8>)
{
  result = DataVaultStorageClass.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataVaultStorageClass.path(using:makeDirectory:)(NSFileManager using, Swift::Bool makeDirectory)
{
  v33 = makeDirectory;
  v4 = type metadata accessor for DataVaultPathProvider();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_37();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v32 - v11;
  v13 = sub_1D8CD7554();
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_37();
  v21 = v20 - v19;
  v22 = *v2;
  isa = using.super.isa;
  sub_1D8C9CC40();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1D8CC7244(v12);
    sub_1D8CC72AC();
    swift_allocError();
    *v24 = xmmword_1D8CDB1B0;
    *(v24 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v21, v12, v13);
    (*(v16 + 16))(v8 + *(v4 + 20), v21, v13);
    v8->super.isa = using.super.isa;
    v34 = v22;
    v25 = using.super.isa;
    isa = v8;
    v26 = v32[1];
    v27 = sub_1D8CC7300(&v34, v33);
    if (!v26)
    {
      isa = v27;
      v22 = v28;
    }

    sub_1D8CC79F0(v8);
    (*(v16 + 8))(v21, v13);
  }

  v29 = isa;
  v30 = v22;
  result._object = v30;
  result._countAndFlagsBits = v29;
  return result;
}

uint64_t type metadata accessor for DataVaultPathProvider()
{
  result = qword_1ECAACE10;
  if (!qword_1ECAACE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8CC7244(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8CC72AC()
{
  result = qword_1ECAACDF0;
  if (!qword_1ECAACDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACDF0);
  }

  return result;
}

void (*sub_1D8CC7300(unsigned __int8 *a1, int a2))(uint64_t, uint64_t)
{
  v89 = a2;
  v4 = sub_1D8CD7484();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37();
  v12 = v11 - v10;
  v99 = sub_1D8CD7554();
  v13 = OUTLINED_FUNCTION_3(v99);
  v95 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v92 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v87 - v19;
  v94 = *a1;
  v21 = *(type metadata accessor for DataVaultPathProvider() + 20);
  v97 = 0x73746C756176;
  v98 = 0xE600000000000000;
  v22 = *(v7 + 104);
  v91 = *MEMORY[0x1E6968F58];
  v90 = v22;
  v22(v12);
  v23 = sub_1D8C94EC8();
  sub_1D8CD7534();
  v26 = *(v7 + 8);
  v25 = v7 + 8;
  v24 = v26;
  v93 = v4;
  v26(v12, v4);
  v27 = v96;
  sub_1D8CC7D5C();
  if (v27)
  {
    (*(v95 + 8))(v20, v99);
    return v24;
  }

  v87[1] = v23;
  v87[2] = v25;
  v29 = v92;
  v88 = v2;
  v87[0] = 0;
  v96 = v20;
  v30 = v95;
  v31 = "com.apple.photos";
  v32 = 0xD000000000000014;
  v33 = "coreparsec_feedbacks";
  v34 = 0xD000000000000017;
  if (v94 != 1)
  {
    v34 = 0xD000000000000016;
    v33 = "coreparsec_aggregations";
  }

  if (v94)
  {
    v32 = v34;
    v31 = v33;
  }

  v97 = v32;
  v98 = v31 | 0x8000000000000000;
  v35 = v93;
  v90(v12, v91, v93);
  sub_1D8CD7534();
  v24(v12, v35);

  v24 = sub_1D8CD74F4();
  v37 = v36;
  v38 = v99;
  v95 = *(v30 + 8);
  (v95)(v29, v99);
  v39 = swift_slowAlloc();
  *v39 = 0;
  v40 = *v88;
  v41 = sub_1D8CD7AD4();
  LODWORD(v40) = [v40 fileExistsAtPath:v41 isDirectory:v39];

  v42 = *v39;
  OUTLINED_FUNCTION_3_0();
  if (!v40)
  {
    if (v89)
    {
      if (qword_1ECAAC630 != -1)
      {
        OUTLINED_FUNCTION_0_15();
      }

      v61 = sub_1D8CD7A04();
      __swift_project_value_buffer(v61, qword_1ECAAF5E8);

      v62 = sub_1D8CD79E4();
      v63 = sub_1D8CD7E14();

      if (os_log_type_enabled(v62, v63))
      {
        swift_slowAlloc();
        v64 = OUTLINED_FUNCTION_7_3();
        v97 = v64;
        *v41 = 136315138;
        v65 = OUTLINED_FUNCTION_1_15();
        *(v41 + 1) = sub_1D8C9D088(v65, v66, v67);
        OUTLINED_FUNCTION_3_10(&dword_1D8C92000, v68, v69, "Creating new datavault at %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_3_0();
      }

      LOBYTE(v97) = v94;
      v70 = OUTLINED_FUNCTION_1_15();
      v57 = v87[0];
      v60 = sub_1D8CC7EEC(v70, v71, v72);
      goto LABEL_22;
    }

LABEL_25:
    (v95)(v96, v38);
    return v24;
  }

  if (v42)
  {
    v43 = v94;
    LOBYTE(v97) = v94;
    v44 = OUTLINED_FUNCTION_1_15();
    if (!sub_1D8CC83F0(v44, v45, v46))
    {
      if (qword_1ECAAC630 != -1)
      {
        OUTLINED_FUNCTION_0_15();
      }

      v47 = sub_1D8CD7A04();
      __swift_project_value_buffer(v47, qword_1ECAAF5E8);

      v48 = sub_1D8CD79E4();
      v49 = sub_1D8CD7E24();

      if (os_log_type_enabled(v48, v49))
      {
        swift_slowAlloc();
        v50 = OUTLINED_FUNCTION_7_3();
        v97 = v50;
        *v41 = 136315138;
        v51 = OUTLINED_FUNCTION_1_15();
        *(v41 + 1) = sub_1D8C9D088(v51, v52, v53);
        OUTLINED_FUNCTION_3_10(&dword_1D8C92000, v54, v55, "Found invalid datavault at %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        v43 = v94;
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_3_0();
      }

      LOBYTE(v97) = v43;
      v56 = OUTLINED_FUNCTION_1_15();
      v57 = v87[0];
      v60 = sub_1D8CC8188(v56, v58, v59);
LABEL_22:
      if (!v57)
      {
        v24 = v60;
      }

      v73 = OUTLINED_FUNCTION_4_5();
      v74(v73);

      return v24;
    }

    goto LABEL_25;
  }

  if (qword_1ECAAC630 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  v75 = sub_1D8CD7A04();
  __swift_project_value_buffer(v75, qword_1ECAAF5E8);

  v76 = sub_1D8CD79E4();
  v77 = sub_1D8CD7E24();

  if (os_log_type_enabled(v76, v77))
  {
    swift_slowAlloc();
    v78 = OUTLINED_FUNCTION_7_3();
    v97 = v78;
    *v41 = 136315138;
    v79 = OUTLINED_FUNCTION_1_15();
    *(v41 + 1) = sub_1D8C9D088(v79, v80, v81);
    OUTLINED_FUNCTION_3_10(&dword_1D8C92000, v82, v83, "datavault path conflicts with file %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3_0();
  }

  sub_1D8CC72AC();
  swift_allocError();
  *v84 = v24;
  *(v84 + 8) = v37;
  *(v84 + 16) = 0;
  swift_willThrow();
  v85 = OUTLINED_FUNCTION_4_5();
  v86(v85);
  return v24;
}

uint64_t sub_1D8CC79F0(uint64_t a1)
{
  v2 = type metadata accessor for DataVaultPathProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8CC7A50()
{
  result = qword_1ECAACDF8;
  if (!qword_1ECAACDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACDF8);
  }

  return result;
}

unint64_t sub_1D8CC7AA8()
{
  result = qword_1ECAACE00;
  if (!qword_1ECAACE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAACE08, &qword_1D8CDC2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACE00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataVaultStorageClass(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_20PegasusConfiguration18DataVaultPathErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D8CC7C04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_1D8CC7C44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1D8CC7C88(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1D8CC7CD8()
{
  result = sub_1D8C95360();
  if (v1 <= 0x3F)
  {
    result = sub_1D8CD7554();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_1D8CC7D5C()
{
  v15[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D8CD74F4();
  v3 = v2;
  v4 = swift_slowAlloc();
  *v4 = 0;
  v5 = *v0;
  v6 = sub_1D8CD7AD4();
  v7 = [v5 fileExistsAtPath:v6 isDirectory:v4];

  v8 = *v4;
  MEMORY[0x1DA727900](v4, -1, -1);
  if (!v7)
  {

    v10 = sub_1D8CD74A4();
    v15[0] = 0;
    v11 = [v5 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v15];

    if (v11)
    {
      result = v15[0];
      goto LABEL_9;
    }

    v13 = v15[0];
    sub_1D8CD7454();

LABEL_8:
    result = swift_willThrow();
    goto LABEL_9;
  }

  if (!v8)
  {
    sub_1D8CC72AC();
    swift_allocError();
    *v12 = v1;
    *(v12 + 8) = v3;
    *(v12 + 16) = 0;
    goto LABEL_8;
  }

LABEL_9:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8CC7EEC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a3;
  sub_1D8CD7A24();
  sub_1D8CD7A34();
  sub_1D8CD7A44();
  sub_1D8CD7B94();
  sub_1D8CD7B94();

  v5 = rootless_mkdir_datavault();

  if (v5)
  {
    if (qword_1ECAAC630 != -1)
    {
      swift_once();
    }

    v6 = sub_1D8CD7A04();
    __swift_project_value_buffer(v6, qword_1ECAAF5E8);
    v7 = sub_1D8CD79E4();
    a1 = sub_1D8CD7E24();
    if (os_log_type_enabled(v7, a1))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      v10 = 0xD000000000000017;
      if (v4 != 1)
      {
        v10 = 0xD000000000000016;
      }

      v11 = "coreparsec_feedbacks";
      if (v4 != 1)
      {
        v11 = "coreparsec_aggregations";
      }

      if (v4)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xD000000000000014;
      }

      if (v4)
      {
        v13 = v11;
      }

      else
      {
        v13 = "com.apple.photos";
      }

      v14 = sub_1D8C9D088(v12, v13 | 0x8000000000000000, &v18);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_1D8C92000, v7, a1, "Creating datavault for %s failed", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1DA727900](v9, -1, -1);
      MEMORY[0x1DA727900](v8, -1, -1);
    }

    v15 = MEMORY[0x1DA726880]();
    sub_1D8CC72AC();
    swift_allocError();
    *v16 = v15;
    *(v16 + 8) = 0;
    *(v16 + 16) = 2;
    swift_willThrow();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1D8CC8188(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  sub_1D8CD7B94();
  sub_1D8CD7B94();

  v5 = rootless_convert_to_datavault();

  if (v5)
  {
    if (qword_1ECAAC630 != -1)
    {
      swift_once();
    }

    v6 = sub_1D8CD7A04();
    __swift_project_value_buffer(v6, qword_1ECAAF5E8);
    v7 = sub_1D8CD79E4();
    a1 = sub_1D8CD7E24();
    if (os_log_type_enabled(v7, a1))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      v10 = 0xD000000000000017;
      if (v3 != 1)
      {
        v10 = 0xD000000000000016;
      }

      v11 = "coreparsec_feedbacks";
      if (v3 != 1)
      {
        v11 = "coreparsec_aggregations";
      }

      if (v3)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xD000000000000014;
      }

      if (v3)
      {
        v13 = v11;
      }

      else
      {
        v13 = "com.apple.photos";
      }

      v14 = sub_1D8C9D088(v12, v13 | 0x8000000000000000, &v18);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_1D8C92000, v7, a1, "Converting datavault for %s failed", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1DA727900](v9, -1, -1);
      MEMORY[0x1DA727900](v8, -1, -1);
    }

    v15 = MEMORY[0x1DA726880]();
    sub_1D8CC72AC();
    swift_allocError();
    *v16 = v15;
    *(v16 + 8) = 0;
    *(v16 + 16) = 1;
    swift_willThrow();
  }

  else
  {
  }

  return a1;
}

BOOL sub_1D8CC83F0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3;
  sub_1D8CD7B94();
  sub_1D8CD7B94();

  v3 = rootless_check_datavault_flag();

  return v3 == 0;
}

uint64_t sub_1D8CC84AC()
{
  result = sub_1D8CD2738(&unk_1F54553F8);
  qword_1ECAAF600 = result;
  return result;
}

uint64_t sub_1D8CC84D4()
{
  result = sub_1D8CD2738(&unk_1F54555B8);
  qword_1ECAAF608 = result;
  return result;
}

uint64_t sub_1D8CC84FC()
{
  result = sub_1D8CD2738(&unk_1F5455858);
  qword_1ECAAF610 = result;
  return result;
}

double sub_1D8CC8524()
{
  v2 = xmmword_1D8CDC460;
  v3 = 0xE800000000000000;
  v1 = 0;
  UserAgent.init(_:requestor:)(v4, &v2, &v1);
  xmmword_1ECAAF618 = v4[0];
  unk_1ECAAF628 = v4[1];
  result = *&v5;
  xmmword_1ECAAF638 = v5;
  unk_1ECAAF648 = v6;
  return result;
}

Swift::Bool __swiftcall ConfigurationManager.hashtagImagesEnabled()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = sub_1D8CB6A88(5uLL);
  if (v5)
  {
    v6 = [v5 isEnabled];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = ConfigurationManager.isHashtagImagesEnabledByDefault()();
  }

  v7 = sub_1D8CD7D64();
  v10 = *(v0 + 16);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v10;
  swift_unknownObjectRetain();
  sub_1D8CC903C(0, 0, v4, &unk_1D8CDC478, v8);

  return v6 & 1;
}

Swift::Bool __swiftcall ConfigurationManager.isHashtagImagesEnabledByDefault()()
{
  v1 = v0;
  if (qword_1ED9C4150 != -1)
  {
    swift_once();
  }

  v2 = sub_1D8CD7A04();
  __swift_project_value_buffer(v2, qword_1ED9C5668);
  v3 = sub_1D8CD79E4();
  v4 = sub_1D8CD7E14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D8C92000, v3, v4, "Checking #images status with default table", v5, 2u);
    OUTLINED_FUNCTION_3_0();
  }

  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(*(v7 + 8) + 24))(v39, ObjectType);
  v9 = v40;
  v10 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v11 = (*(v10 + 24))(v9, v10);
  if (!v12)
  {
    if (qword_1ECAAC628 != -1)
    {
      v11 = OUTLINED_FUNCTION_0_16();
    }

    OUTLINED_FUNCTION_6_4(v11, qword_1ECAAF5D0);
    v23 = sub_1D8CD79E4();
    v24 = sub_1D8CD7E24();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_36;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Failed to get effective system language";
LABEL_25:
    _os_log_impl(&dword_1D8C92000, v23, v24, v26, v25, 2u);
LABEL_26:
    OUTLINED_FUNCTION_3_0();
LABEL_36:

    v22 = 0;
    goto LABEL_37;
  }

  v13 = v11;
  v14 = v12;
  v15 = v40;
  v16 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v17 = (*(v16 + 8))(v15, v16);
  if (!v18)
  {

    if (qword_1ECAAC628 != -1)
    {
      v27 = OUTLINED_FUNCTION_0_16();
    }

    OUTLINED_FUNCTION_6_4(v27, qword_1ECAAF5D0);
    v23 = sub_1D8CD79E4();
    v24 = sub_1D8CD7E24();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_36;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Failed to get country code";
    goto LABEL_25;
  }

  v19 = v17;
  v20 = v18;
  if (qword_1ECAAC648 != -1)
  {
    swift_once();
  }

  if (!sub_1D8CC95F8(v19, v20, qword_1ECAAF600))
  {
    if (qword_1ECAAC650 != -1)
    {
      swift_once();
    }

    if (!sub_1D8CC95F8(v19, v20, qword_1ECAAF608))
    {

      if (qword_1ECAAC628 != -1)
      {
        v32 = OUTLINED_FUNCTION_0_16();
      }

      OUTLINED_FUNCTION_6_4(v32, qword_1ECAAF5D0);

      v23 = sub_1D8CD79E4();
      v33 = sub_1D8CD7E14();

      if (os_log_type_enabled(v23, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v38 = v35;
        *v34 = 136315138;
        v36 = sub_1D8C9D088(v19, v20, &v38);

        *(v34 + 4) = v36;
        _os_log_impl(&dword_1D8C92000, v23, v33, "#images disabled in country: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        OUTLINED_FUNCTION_3_0();
        goto LABEL_26;
      }

      goto LABEL_35;
    }
  }

  if (qword_1ECAAC658 != -1)
  {
    swift_once();
  }

  v21 = sub_1D8CC95F8(v13, v14, qword_1ECAAF610);
  if ((v21 & 1) == 0)
  {
    if (qword_1ECAAC628 != -1)
    {
      v21 = OUTLINED_FUNCTION_0_16();
    }

    OUTLINED_FUNCTION_6_4(v21, qword_1ECAAF5D0);

    v23 = sub_1D8CD79E4();
    v28 = sub_1D8CD7E14();

    if (os_log_type_enabled(v23, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136315138;
      v31 = sub_1D8C9D088(v13, v14, &v38);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_1D8C92000, v23, v28, "#images disabled for language: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      OUTLINED_FUNCTION_3_0();
      goto LABEL_26;
    }

LABEL_35:

    goto LABEL_36;
  }

  v22 = 1;
LABEL_37:
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  return v22;
}

uint64_t sub_1D8CC8C48()
{
  OUTLINED_FUNCTION_10();
  if (qword_1ECAAC660 != -1)
  {
    OUTLINED_FUNCTION_1_16();
  }

  OUTLINED_FUNCTION_2_14(&xmmword_1ECAAF618);
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_1D8CC8D08;
  v2 = *(v0 + 336);

  return sub_1D8C96AE4(v0 + 80);
}

uint64_t sub_1D8CC8D08()
{
  v2 = *(*v1 + 344);
  v3 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  *(v3 + 352) = v0;

  if (v0)
  {
    v5 = *(v3 + 80);
    v6 = *(v3 + 96);
    v7 = *(v3 + 128);
    *(v3 + 240) = *(v3 + 112);
    *(v3 + 256) = v7;
    *(v3 + 208) = v5;
    *(v3 + 224) = v6;
    sub_1D8CAD6CC(v3 + 208);

    return MEMORY[0x1EEE6DFA0](sub_1D8CC8E7C, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v8 = *(v3 + 80);
    v9 = *(v3 + 96);
    v10 = *(v3 + 128);
    *(v3 + 304) = *(v3 + 112);
    *(v3 + 320) = v10;
    *(v3 + 272) = v8;
    *(v3 + 288) = v9;
    sub_1D8CAD6CC(v3 + 272);
    v11 = *(v3 + 8);

    return v11();
  }
}

uint64_t sub_1D8CC8E94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D8CC8F54;

  return sub_1D8CC8C28(a1, v4, v5, v7);
}

uint64_t sub_1D8CC8F54()
{
  OUTLINED_FUNCTION_10();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1D8CC903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1D8CC96E4(a3, v23 - v10);
  v12 = sub_1D8CD7D64();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D8CBF2E8(v11);
  }

  else
  {
    sub_1D8CD7D54();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D8CD7D14();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D8CD7B94() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1D8CBF2E8(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8CBF2E8(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D8CC92AC()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[42];
  v2 = sub_1D8CB6A88(5uLL);
  if (v2)
  {
    v3 = [v2 isEnabled];
    swift_unknownObjectRelease();
    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = *(v0[42] + 16);
    if (qword_1ECAAC660 != -1)
    {
      OUTLINED_FUNCTION_1_16();
    }

    OUTLINED_FUNCTION_2_14(&xmmword_1ECAAF618);
    v7 = swift_task_alloc();
    v0[43] = v7;
    *v7 = v0;
    v7[1] = sub_1D8CC93D0;

    return sub_1D8C96AE4((v0 + 10));
  }
}

uint64_t sub_1D8CC93D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  OUTLINED_FUNCTION_1();
  *v7 = v6;

  if (v1)
  {

    v8 = *(v4 + 80);
    v9 = *(v4 + 96);
    v10 = *(v4 + 128);
    *(v4 + 240) = *(v4 + 112);
    *(v4 + 256) = v10;
    *(v4 + 208) = v8;
    *(v4 + 224) = v9;
    sub_1D8CAD6CC(v4 + 208);
    v11 = sub_1D8CC9598;
  }

  else
  {
    *(v4 + 352) = a1;
    v12 = *(v4 + 80);
    v13 = *(v4 + 96);
    v14 = *(v4 + 128);
    *(v4 + 304) = *(v4 + 112);
    *(v4 + 320) = v14;
    *(v4 + 272) = v12;
    *(v4 + 288) = v13;
    sub_1D8CAD6CC(v4 + 272);
    v11 = sub_1D8CC9520;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1D8CC9520()
{
  OUTLINED_FUNCTION_10();
  v1 = [*(v0 + 352) isEnabled];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D8CC9598()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 336);
  v2 = ConfigurationManager.isHashtagImagesEnabledByDefault()();
  v3 = *(v0 + 8);
  v4 = v2;

  return v3(v4);
}

BOOL sub_1D8CC95F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1D8CD8254();
  sub_1D8CD7BD4();
  v7 = sub_1D8CD8284();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_1D8CD8154();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_1D8CC96E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8CC9754(uint64_t a1)
{
  v1 = *(a1 + 448);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8CC9828(char a1)
{
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1DA7270D0](qword_1D8CDC718[a1]);
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC9874()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_6_5();
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC98A8()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3();
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC98E4()
{
  OUTLINED_FUNCTION_10_2();
  sub_1D8CC9A34();
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC9924()
{
  OUTLINED_FUNCTION_10_2();
  sub_1D8CC1394();
  sub_1D8CD7AA4();
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC99BC(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1DA7270D0](a1);
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC9A34()
{
  sub_1D8CD7BD4();
}

uint64_t sub_1D8CC9B2C()
{
  sub_1D8CD7BD4();
}

uint64_t sub_1D8CC9BCC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1D8CD7BD4();
}

uint64_t sub_1D8CC9C48(uint64_t a1, unsigned __int8 a2)
{
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](a2);
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC9C8C()
{
  sub_1D8CD8254();
  sub_1D8CC1394();
  sub_1D8CD7AA4();
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC9CE8()
{
  sub_1D8CD8254();
  sub_1D8CD7BD4();

  return sub_1D8CD8284();
}

uint64_t sub_1D8CC9D84(uint64_t a1, char a2)
{
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](qword_1D8CDC718[a2]);
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC9DD4(uint64_t a1, uint64_t a2)
{
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](a2);
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC9E18()
{
  sub_1D8CD8254();
  sub_1D8CC9A34();
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC9E5C()
{
  sub_1D8CD8254();
  OUTLINED_FUNCTION_6_5();
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC9E94()
{
  sub_1D8CD8254();
  OUTLINED_FUNCTION_11_3();
  return sub_1D8CD8284();
}

uint64_t sub_1D8CC9ED4(uint64_t a1)
{
  OUTLINED_FUNCTION_4();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v1 + 48);
  *(v1 + 48) = a1;

  os_unfair_lock_unlock(v4);
}

uint64_t sub_1D8CC9F60()
{
  v1 = sub_1D8CD7674();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4();
  (*(v2 + 16))(v5, v0 + *(v6 + 144), v1);
  sub_1D8CD7604();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D8CCA090()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v4);
  v8 = v38 - v7 + 16;
  v9 = *(v0 + 40);
  v40 = *(v0 + 24);
  v41 = v9;
  v42 = *(v0 + 56);
  v43 = *(v0 + 72);
  v10 = *(&v9 + 1);
  sub_1D8C9B12C(&v40, v38, &qword_1ECAACE20, &qword_1D8CDC600);
  sub_1D8CCB1B8(v10);
  if ((BYTE1(v41) & 1) == 0)
  {
    v11 = v42;
    if (v42)
    {
      v12 = v40;
      v13 = v41;
      v14 = *(v1 + 80);
      v15 = *(*v1 + 136);
      swift_beginAccess();
      sub_1D8C9B12C(v1 + v15, v8, &qword_1ECAAC7D8, &qword_1D8CD95B0);
      v16 = sub_1D8CD7964();
      result = __swift_getEnumTagSinglePayload(v8, 1, v16);
      if (result != 1)
      {
        v18 = *(v1 + 88);

        v19 = sub_1D8CD7E54();
        v20 = sub_1D8CCA9C8(v14);
        LOBYTE(v36) = v13;
        sub_1D8C980C0(v19, v18, v20, v21, 2, v8, v12, *(&v12 + 1), v36, v11);

        (*(*(v16 - 8) + 8))(v8, v16);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  v22 = *(v1 + 80);
  v23 = *(*v1 + 136);
  swift_beginAccess();
  sub_1D8C9B12C(v1 + v23, v6, &qword_1ECAAC7D8, &qword_1D8CD95B0);
  v24 = sub_1D8CD7964();
  result = __swift_getEnumTagSinglePayload(v6, 1, v24);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = *(v1 + 88);
  sub_1D8CD7E54();
  sub_1D8CCA9C8(v22);
  sub_1D8CD7924();
  (*(*(v24 - 8) + 8))(v6, v24);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1D8C9B71C(&v40, &qword_1ECAACE20, &qword_1D8CDC600);
  }

  v27 = Strong;
  *&v38[0] = v1;
  v28 = sub_1D8CD7B64();
  v30 = v29;
  v31 = *(*(v27 + 32) + 16);
  os_unfair_lock_lock(v31);
  sub_1D8C9B450(v27, v28, v30, v1, &off_1F5454760);

  os_unfair_lock_unlock(v31);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v27 + 24);
    ObjectType = swift_getObjectType();
    (*(v32 + 16))(v1, &off_1F5454760, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  LOBYTE(v38[0]) = 1;

  sub_1D8C9B71C(&v40, &qword_1ECAACE20, &qword_1D8CDC600);
  v34 = v38[0];
  v35 = *(v1 + 40);
  v38[0] = *(v1 + 24);
  v38[1] = v35;
  v38[2] = *(v1 + 56);
  v39 = *(v1 + 72);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 41) = v34;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = 0;
  sub_1D8C9B71C(v38, &qword_1ECAACE20, &qword_1D8CDC600);
  *(v1 + 81) = 1;
  return swift_weakAssign();
}

uint64_t sub_1D8CCA4C8()
{
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_3();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_15();
  sub_1D8C9B12C(v41, v40, &qword_1ECAACE28, &qword_1D8CDC608);
  sub_1D8C9B190(v0, 0x526B726F7774656ELL, 0xEE00747365757165);
  if ((v41[17] & 1) == 0 && v42)
  {
    OUTLINED_FUNCTION_8_4();
    v9 = *(v8 + 136);
    OUTLINED_FUNCTION_7_4();
    sub_1D8C9B12C(v0 + v9, v1, &qword_1ECAAC7D8, &qword_1D8CD95B0);
    v10 = sub_1D8CD7964();
    result = __swift_getEnumTagSinglePayload(v1, 1, v10);
    if (result != 1)
    {
      v12 = *(v0 + 96);

      sub_1D8CD7E54();
      v13 = sub_1D8C97B40(v3);
      OUTLINED_FUNCTION_1_17(v13, v14, v15, v16, v17, v18, v19, v20, v38, v39);

      OUTLINED_FUNCTION_25(v10);
      (*(v21 + 8))(v1, v10);
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v22 = *(v0 + 80);
  v23 = *(*v4 + 136);
  OUTLINED_FUNCTION_7_4();
  sub_1D8C9B12C(v4 + v23, v2, &qword_1ECAAC7D8, &qword_1D8CD95B0);
  v24 = sub_1D8CD7964();
  result = __swift_getEnumTagSinglePayload(v2, 1, v24);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = *(v4 + 96);
  sub_1D8CD7E54();
  sub_1D8C97B40(v22);
  sub_1D8CD7924();
  OUTLINED_FUNCTION_25(v24);
  v26 = *(v25 + 8);
  v27 = OUTLINED_FUNCTION_9_3();
  v29(v27, v28);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v40[0] = v4;
    sub_1D8CD7B64();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_16_2(v32, v33, v34, v35, &off_1F5454760);

    os_unfair_lock_unlock(v12);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v36 = *(v31 + 24);
      ObjectType = swift_getObjectType();
      (*(v36 + 16))(v4, &off_1F5454760, ObjectType, v36);
      swift_unknownObjectRelease();
    }

    LOBYTE(v40[0]) = 1;

    sub_1D8C9B71C(v41, &qword_1ECAACE28, &qword_1D8CDC608);
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_15_2(MEMORY[0x1E69E7CC0]);
    *(v4 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_1D8CC3F88())
    {
      sub_1D8CD7E34();
      sub_1D8CD7904();
    }

    return sub_1D8C9B71C(v41, &qword_1ECAACE28, &qword_1D8CDC608);
  }
}

uint64_t sub_1D8CCA860()
{
  if (*(v0 + 81) != 1)
  {
    (*(*v0 + 400))();
  }

  swift_weakDestroy();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);

  swift_unknownObjectRelease();

  sub_1D8C9B71C(v0 + *(*v0 + 136), &qword_1ECAAC7D8, &qword_1D8CD95B0);
  v5 = *(*v0 + 144);
  v6 = sub_1D8CD7674();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + *(*v0 + 152));

  return v0;
}

uint64_t sub_1D8CCA988(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1DA7270D0](a1);
  return sub_1D8CD8284();
}

const char *sub_1D8CCA9C8(char a1)
{
  result = "unknown";
  switch(a1)
  {
    case 1:
      result = "parsecSession";
      break;
    case 2:
      result = "parsecFeedbackEvent";
      break;
    case 3:
      result = "customFeedback";
      break;
    case 4:
      result = "batchedInstrumentation";
      break;
    case 5:
      result = "fileInstrumentation";
      break;
    case 6:
      result = "pegasusConfiguration";
      break;
    case 7:
      result = "bagResource";
      break;
    case 8:
      result = "bag";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D8CCAA7C(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_1D8CCAA9C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8CCAA7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8CCAAC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8CCAA8C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1D8CCAAF4()
{
  v0 = qword_1ED9C3D70;

  return v0;
}

uint64_t sub_1D8CCAB2C()
{
  v0 = *aDiskwrite;

  return v0;
}

uint64_t sub_1D8CCABA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD28, &qword_1D8CDB740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8CD8F40;
  *(inited + 32) = 0x7365747962;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1D8CC26E8();
  return sub_1D8CD7A84();
}

uint64_t sub_1D8CCAC64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v3[56];
  v5 = *(v4 - 8);
  v6 = v5[8];
  result = MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - v8;
  if ((v2[81] & 1) == 0)
  {
    v10 = v3[59];
    v21 = v5[2];
    v21(v9, &v2[v10], v4);
    v11 = v3[57];
    v12 = (*(v11 + 8))(v4, v11);
    v13 = v5[1];
    v14 = OUTLINED_FUNCTION_9_3();
    v13(v14);
    sub_1D8CC9ED4(v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D8CD8F40;
    v21(v9, &v2[v10], v4);
    v16 = (*(v11 + 16))(v4, v11);
    v17 = OUTLINED_FUNCTION_9_3();
    v13(v17);
    v18 = MEMORY[0x1E69E65A8];
    *(v15 + 56) = MEMORY[0x1E69E6530];
    *(v15 + 64) = v18;
    *(v15 + 32) = v16;
    sub_1D8C9ACE0("bytesWritten=%{signpost.description:attribute,public}llu", 56, 2, v15);

    v19 = *(*&v2[*(*v2 + 152)] + 16);

    os_unfair_lock_lock(v19);
    if ((v2[81] & 1) == 0)
    {
      sub_1D8CCA090();
    }

    os_unfair_lock_unlock(v19);
  }

  return result;
}

uint64_t sub_1D8CCAEDC()
{
  v1 = *v0;

  OUTLINED_FUNCTION_4();
  v3 = *(*(*(v1 + 448) - 8) + 8);
  v4 = v0 + *(v2 + 472);

  return v3(v4);
}

uint64_t sub_1D8CCAF68()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  if ((*(v0 + 81) & 1) == 0)
  {
    sub_1D8CCAC64(v1);
  }

  v4 = sub_1D8CCA860();

  OUTLINED_FUNCTION_4();
  (*(*(*(v3 + 448) - 8) + 8))(v4 + *(v5 + 472));
  return v4;
}

uint64_t sub_1D8CCB010()
{
  v0 = sub_1D8CCAF68();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1D8CCB088(uint64_t a1)
{
  *(a1 + 8) = sub_1D8CCB0B8();
  result = sub_1D8CCB10C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D8CCB0B8()
{
  result = qword_1ED9C3D68;
  if (!qword_1ED9C3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3D68);
  }

  return result;
}

unint64_t sub_1D8CCB10C()
{
  result = qword_1ED9C3D58;
  if (!qword_1ED9C3D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3D58);
  }

  return result;
}

unint64_t sub_1D8CCB164()
{
  result = qword_1ED9C3D60;
  if (!qword_1ED9C3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3D60);
  }

  return result;
}

uint64_t sub_1D8CCB1B8(uint64_t a1)
{
  result = sub_1D8CCB3C0(a1);
  if (result)
  {
    v3 = *(v1 + 88);

    sub_1D8CD7E14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D8CD8F50;
    v5 = aDiskwrite[0];
    v6 = aDiskwrite[1];
    v7 = MEMORY[0x1E69E6158];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v8 = v7;
    v9 = sub_1D8C96E60();
    *(v4 + 64) = v9;
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    sub_1D8CC26E8();

    v10 = v8;
    v11 = sub_1D8CD7A74();
    v13 = v12;

    *(v4 + 96) = v10;
    *(v4 + 104) = v9;
    *(v4 + 72) = v11;
    *(v4 + 80) = v13;
    sub_1D8CD7904();

    v14 = aDiskwrite[0];
    v15 = aDiskwrite[1];
    swift_bridgeObjectRetain_n();

    MEMORY[0x1DA726A90](46, 0xE100000000000000);
    MEMORY[0x1DA726A90](v14, v15);

    v16 = sub_1D8CD7AD4();

    v17 = sub_1D8CD7A54();
    AnalyticsSendEvent();
  }

  return result;
}

uint64_t sub_1D8CCB3C0(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = *(v2 + 80);

    v5 = sub_1D8CD7F24();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1D8CB4574(v5, 0x656372756F736572, 0xEE00796C696D6146);
    sub_1D8CC9F60();
    v6 = sub_1D8CD7DB4();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1D8CB4574(v6, 0x6E6F697461727564, 0xE800000000000000);
    return v3;
  }

  return result;
}

uint64_t sub_1D8CCB490(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1D8CCB518(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D8CCB600()
{
  result = qword_1ECAACE38;
  if (!qword_1ECAACE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACE38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 64) = a1;
  *(v1 + 72) = 0;

  return sub_1D8C9B71C(v4 - 208, v2, v3);
}

uint64_t Client.init(_:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (a1 < 0x1E && ((0x2FFFFFFFu >> a1) & 1) != 0)
  {
    v6 = byte_1D8CDCC0A[a1];
    result = PegasusClientName.rawValue.getter();
    *a2 = a1;
    a2[1] = result;
    a2[2] = v5;
  }

  else
  {
    result = sub_1D8CD81A4();
    __break(1u);
  }

  return result;
}

double sub_1D8CCB740()
{
  *&result = 7;
  xmmword_1ED9C4060 = xmmword_1D8CDB090;
  qword_1ED9C4070 = 0xE700000000000000;
  return result;
}

double sub_1D8CCB760()
{
  *&result = 16;
  xmmword_1ED9C54F0 = xmmword_1D8CDCB10;
  qword_1ED9C5500 = 0xEA00000000007469;
  return result;
}

double sub_1D8CCB784()
{
  result = 0.0;
  xmmword_1ED9C3CC0 = xmmword_1D8CDB0A0;
  qword_1ED9C3CD0 = 0xE700000000000000;
  return result;
}

double Client.init(_:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  PegasusClientName.rawValue.getter();
  Client.init(_:)(v3, &v7);
  v4 = v8;
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v4;
  return result;
}

unint64_t ClientType.init(rawValue:)(unint64_t result)
{
  if (result > 0x1D || result == 28)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D8CCB82C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ClientType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1D8CCB864()
{
  result = qword_1ECAACE40;
  if (!qword_1ECAACE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACE40);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D8CCB8CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D8CCB90C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SessionType.hashValue.getter()
{
  v2 = *v0;
  sub_1D8CD8254();
  SessionType.hash(into:)();
  return sub_1D8CD8284();
}

unint64_t SessionType.serverExperimentNamespace.getter()
{
  v1 = *(v0 + 8);
  if (v1 == 12)
  {
    return 0xD00000000000001FLL;
  }

  v2 = 0xD000000000000010;
  v3 = 0xD000000000000012;
  if (v1 != 1)
  {
    v3 = 0;
  }

  if (v1 != 6)
  {
    v2 = v3;
  }

  if (v1 == 2)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v2;
  }
}

unint64_t SessionType.deviceExperimentNamespace.getter()
{
  v1 = *(v0 + 8);
  v2 = 0xD000000000000012;
  v3 = 0x4847494C544F5053;
  if (v1 != 2)
  {
    v3 = 0;
  }

  if (v1 != 11)
  {
    v2 = v3;
  }

  if (v1 == 1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v2;
  }
}

uint64_t SessionType.allStreamDescriptors.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_8_5(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11), v13);
  if (v12 == 17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD70, &unk_1D8CDCC40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D8CD8F40;
  *(v9 + 32) = v12;
  v14 = v9;
  sub_1D8CCC11C(&unk_1F54558C8);
  return v14;
}

uint64_t Collection<>.biomeStreamDescriptors.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD48, &qword_1D8CDB800);
  v3 = *(a2 + 8);
  sub_1D8CCC1D4();
  v4 = sub_1D8CD7C84();

  return sub_1D8CCBCC8(v4);
}

void sub_1D8CCBC18(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  SessionType.biomeStreamDescriptor.getter(&v8);
  v3 = v8;
  if (v8 == 17)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD70, &unk_1D8CDCC40);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D8CD8F40;
    *(v5 + 32) = v3;
    v7 = v5;
    sub_1D8CCC11C(&unk_1F54558C8);
    v4 = v7;
  }

  *a2 = v4;
}

uint64_t sub_1D8CCBCC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8C9C284();
  v4 = MEMORY[0x1DA726C40](v2, &type metadata for FeedbackStreamDescriptor, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_1D8CCC3D8(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

char *SessionType.init(forStream:)@<X0>(char *result@<X0>, void *a2@<X8>)
{
  v2 = qword_1D8CDCE18[*result];
  *a2 = 0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1D8CCBDEC()
{
  result = sub_1D8CCBE0C();
  qword_1ECAACE48 = result;
  return result;
}

uint64_t sub_1D8CCBE0C()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 = byte_1F5455038[v0 + 32];
    switch(byte_1F5455038[v0 + 32])
    {
      case 1u:
        goto LABEL_18;
      case 2u:
        v2 = 2;
        goto LABEL_18;
      case 3u:
        v2 = 3;
        goto LABEL_18;
      case 4u:
        v2 = 4;
        goto LABEL_18;
      case 5u:
        v2 = 5;
        goto LABEL_18;
      case 6u:
        v2 = 6;
        goto LABEL_18;
      case 7u:
        v2 = 7;
        goto LABEL_18;
      case 8u:
        v2 = 8;
        goto LABEL_18;
      case 9u:
        v2 = 9;
        goto LABEL_18;
      case 0xAu:
        v2 = 10;
        goto LABEL_18;
      case 0xBu:
        v2 = 11;
        goto LABEL_18;
      case 0xCu:
        v2 = 12;
        goto LABEL_18;
      case 0xDu:
        v2 = 13;
        goto LABEL_18;
      case 0xEu:
        v2 = 14;
        goto LABEL_18;
      case 0xFu:
        v2 = 15;
        goto LABEL_18;
      case 0x10u:
        v2 = 16;
LABEL_18:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = *(v1 + 16);
          sub_1D8CC3B54();
          v1 = v6;
        }

        v3 = *(v1 + 16);
        if (v3 >= *(v1 + 24) >> 1)
        {
          sub_1D8CC3B54();
          v1 = v7;
        }

        *(v1 + 16) = v3 + 1;
        v4 = v1 + 16 * v3;
        *(v4 + 32) = 0;
        *(v4 + 40) = v2;
        break;
      default:
        break;
    }

    ++v0;
  }

  while (v0 != 17);
  return v1;
}

uint64_t static SessionType.allKnownCases.getter()
{
  if (qword_1ECAAC5A0 != -1)
  {
    OUTLINED_FUNCTION_3_11();
  }

  swift_beginAccess();
}

uint64_t static SessionType.allKnownCases.setter(uint64_t a1)
{
  if (qword_1ECAAC5A0 != -1)
  {
    OUTLINED_FUNCTION_3_11();
  }

  swift_beginAccess();
  qword_1ECAACE48 = a1;
}

uint64_t (*static SessionType.allKnownCases.modify())()
{
  if (qword_1ECAAC5A0 != -1)
  {
    OUTLINED_FUNCTION_3_11();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D8CCC0B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1D8CDCC30;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1D8CCC11C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D8CCC370(v4 + v3);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  if ((*(v5 + 24) >> 1) - v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + v6 + 32), (a1 + 32), v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_1D8CCC1D4()
{
  result = qword_1ECAACE50;
  if (!qword_1ECAACE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAACD48, &qword_1D8CDB800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACE50);
  }

  return result;
}

unint64_t sub_1D8CCC23C()
{
  result = qword_1ED9C3F40[0];
  if (!qword_1ED9C3F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9C3F40);
  }

  return result;
}

uint64_t sub_1D8CCC290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFEE && *(a1 + 16))
  {
    return (*a1 + 2147483631);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 0x11)
  {
    return (v3 - 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8CCC2F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEF)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483631;
    if (a3 >= 0x7FFFFFEF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 16;
    }
  }

  return result;
}

void *sub_1D8CCC340(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

void sub_1D8CCC370(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_1D8CC3A84();
    *v1 = v6;
  }
}

uint64_t sub_1D8CCC3D8(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  v6 = sub_1D8C9D498(*(*v2 + 40), a2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = 0xE700000000000000;
      v11 = 0x6E6F6973736573;
      switch(*(*(v5 + 48) + v8))
      {
        case 1:
          v11 = 0xD000000000000010;
          v10 = 0x80000001D8CDD5C0;
          break;
        case 2:
          v11 = 0xD000000000000013;
          v10 = 0x80000001D8CDD5E0;
          break;
        case 3:
          v11 = 0x6C7070612E6D6F63;
          v12 = 0x697269732E65;
          goto LABEL_18;
        case 4:
          v11 = 0xD000000000000010;
          v10 = 0x80000001D8CDD610;
          break;
        case 5:
          v11 = 0xD000000000000012;
          v10 = 0x80000001D8CDD630;
          break;
        case 6:
          v11 = 0x6C7070612E6D6F63;
          v12 = 0x7377656E2E65;
          goto LABEL_18;
        case 7:
          v11 = 0xD000000000000011;
          v10 = 0x80000001D8CDD660;
          break;
        case 8:
          v11 = 0xD000000000000015;
          v10 = 0x80000001D8CDD680;
          break;
        case 9:
          v11 = 0xD000000000000019;
          v10 = 0x80000001D8CDD6A0;
          break;
        case 0xA:
          v11 = 0xD000000000000019;
          v10 = 0x80000001D8CDD6C0;
          break;
        case 0xB:
          v11 = 0x6C7070612E6D6F63;
          v12 = 0x6C69616D2E65;
LABEL_18:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 0xC:
          v11 = 0xD000000000000018;
          v10 = 0x80000001D8CDD6F0;
          break;
        case 0xD:
          v11 = 0xD000000000000014;
          v10 = 0x80000001D8CDD710;
          break;
        case 0xE:
          v11 = 0xD000000000000012;
          v10 = 0x80000001D8CDD730;
          break;
        case 0xF:
          v11 = 0xD000000000000015;
          v10 = 0x80000001D8CDD750;
          break;
        case 0x10:
          v11 = 0xD000000000000010;
          v10 = 0x80000001D8CDD770;
          break;
        default:
          break;
      }

      v13 = 0xE700000000000000;
      v14 = 0x6E6F6973736573;
      switch(v3)
      {
        case 1:
          v14 = 0xD000000000000010;
          v13 = 0x80000001D8CDD5C0;
          break;
        case 2:
          v14 = 0xD000000000000013;
          v13 = 0x80000001D8CDD5E0;
          break;
        case 3:
          v14 = 0x6C7070612E6D6F63;
          v15 = 0x697269732E65;
          goto LABEL_36;
        case 4:
          v14 = 0xD000000000000010;
          v13 = 0x80000001D8CDD610;
          break;
        case 5:
          v14 = 0xD000000000000012;
          v13 = 0x80000001D8CDD630;
          break;
        case 6:
          v14 = 0x6C7070612E6D6F63;
          v15 = 0x7377656E2E65;
          goto LABEL_36;
        case 7:
          v14 = 0xD000000000000011;
          v13 = 0x80000001D8CDD660;
          break;
        case 8:
          v14 = 0xD000000000000015;
          v13 = 0x80000001D8CDD680;
          break;
        case 9:
          v14 = 0xD000000000000019;
          v13 = 0x80000001D8CDD6A0;
          break;
        case 10:
          v14 = 0xD000000000000019;
          v13 = 0x80000001D8CDD6C0;
          break;
        case 11:
          v14 = 0x6C7070612E6D6F63;
          v15 = 0x6C69616D2E65;
LABEL_36:
          v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 12:
          v14 = 0xD000000000000018;
          v13 = 0x80000001D8CDD6F0;
          break;
        case 13:
          v14 = 0xD000000000000014;
          v13 = 0x80000001D8CDD710;
          break;
        case 14:
          v14 = 0xD000000000000012;
          v13 = 0x80000001D8CDD730;
          break;
        case 15:
          v14 = 0xD000000000000015;
          v13 = 0x80000001D8CDD750;
          break;
        case 16:
          v14 = 0xD000000000000010;
          v13 = 0x80000001D8CDD770;
          break;
        default:
          break;
      }

      if (v11 == v14 && v10 == v13)
      {
        break;
      }

      v17 = sub_1D8CD8154();

      if (v17)
      {
        goto LABEL_47;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

LABEL_47:
    result = 0;
    LOBYTE(v3) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_45:
    v18 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v21;
    sub_1D8CCCD4C(v3, v8, isUniquelyReferenced_nonNull_native);
    *v21 = v22;
    result = 1;
  }

  *a1 = v3;
  return result;
}