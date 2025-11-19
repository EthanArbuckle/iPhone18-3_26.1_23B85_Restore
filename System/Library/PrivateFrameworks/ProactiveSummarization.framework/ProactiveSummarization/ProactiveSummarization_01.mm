unint64_t sub_231CC46A8(unint64_t result)
{
  if (*(v1[2] + 16))
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      v4 = v1[1];
      v5 = *v1;

      v6 = sub_231CC66B0((v3 + 16), v3 + 32, v3, v4, 0);
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_231CC60A8(0, v6);
    sub_231CC6258(0, v2);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231CC4764(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 40));
  sub_231CC47C4((v2 + 48), a1, a2, v2, &v6);
  os_unfair_lock_unlock((v2 + 40));
  return v6;
}

uint64_t sub_231CC47C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v101 = a5;
  v9 = sub_231E0FD90();
  v10 = OUTLINED_FUNCTION_24(v9);
  v99 = v11;
  v100 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_1();
  v98 = v15 - v14;
  v16 = sub_231E10E30();
  v17 = OUTLINED_FUNCTION_24(v16);
  v102 = v18;
  v103 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_1();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74198, &qword_231E13878);
  v25 = OUTLINED_FUNCTION_47(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v97 - v28;
  v30 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();
  v31 = OUTLINED_FUNCTION_12(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v97 - v38;
  sub_231CC4CBC(a2, a3, *a1, a1[1], a1[2], v29);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    result = sub_231CC154C(v29, &qword_27DD74198, &qword_231E13878);
    v41 = 0;
  }

  else
  {
    sub_231CB4E2C(v29, v39);
    v42 = sub_231CB4EEC();
    (*(v102 + 16))(v23, v42, v103);
    sub_231CB4858(v39, v36);

    v43 = sub_231E10E10();
    v44 = sub_231E11AF0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v97 = v46;
      v104[0] = v46;
      *v45 = 136446466;
      v47 = (*(*a4 + 120))(v46);
      v49 = sub_231CB5000(v47, v48, v104);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      v50 = sub_231CC352C();
      v52 = v51;
      sub_231CB4E90(v36);
      v53 = sub_231CB5000(v50, v52, v104);

      *(v45 + 14) = v53;
      _os_log_impl(&dword_231CAE000, v43, v44, "InMemoryMailResultCache %{public}s: Fetching item: %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    else
    {

      sub_231CB4E90(v36);
    }

    (*(v102 + 8))(v23, v103);
    v41 = *v39;
    v54 = v39[16];
    if (v54 >> 6)
    {
      if (v54 >> 6 == 1)
      {
        v55 = v41;
      }

      else
      {
        type metadata accessor for SpotlightWriter();
        OUTLINED_FUNCTION_22_0(xmmword_231E13680);
        v79 = OUTLINED_FUNCTION_19_0();
        sub_231CD2A28(v79, v80, v81, v82, v83, v84, v85, v86, v87);
        v88 = OUTLINED_FUNCTION_19_0();
        sub_231CD2A90(v88, v89, v90, v91, 2, v92, v93, v94, v95);
        OUTLINED_FUNCTION_11_1();
        v96 = v98;
        sub_231E0FD20();
        v41 = sub_231CD6450(v104, v96);
        sub_231CC4F5C(v104);
        (*(v99 + 8))(v96, v100);
      }
    }

    else
    {
      v56 = *(v39 + 1);
      type metadata accessor for SpotlightWriter();
      OUTLINED_FUNCTION_22_0(xmmword_231E13680);
      v57 = OUTLINED_FUNCTION_18_0();
      sub_231CC34E4(v57, v58, v54);
      v59 = OUTLINED_FUNCTION_18_0();
      sub_231CC3500(v59, v60, v54);
      v61 = OUTLINED_FUNCTION_18_0();
      sub_231CD2A28(v61, v62, v63, v64, v65, v66, v67, v68, v69);
      v70 = OUTLINED_FUNCTION_18_0();
      sub_231CD2A90(v70, v71, v72, v73, 2, v74, v75, v76, v77);
      OUTLINED_FUNCTION_11_1();
      v78 = v98;
      sub_231E0FD20();
      v41 = sub_231CD6450(v104, v78);
      sub_231CC4F5C(v104);
      (*(v99 + 8))(v78, v100);
    }

    result = sub_231CB4E90(v39);
  }

  *v101 = v41;
  return result;
}

uint64_t sub_231CC4CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14[0] = a1;
  v14[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v14;
  v8 = sub_231CC5DC8(sub_231CC69D0, v13, a4);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    sub_231CC523C(v8, a5, a6);
    v10 = 0;
  }

  v11 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();
  return __swift_storeEnumTagSinglePayload(a6, v10, 1, v11);
}

uint64_t sub_231CC4D5C()
{
  sub_231CC154C(v0 + 48, &qword_27DD74188, &qword_231E136A8);

  return swift_deallocClassInstance();
}

uint64_t sub_231CC4DF0()
{
  result = sub_231E0F950();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_231CC4E80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xE && *(a1 + 17))
    {
      v2 = *a1 + 13;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 2) & 0xC | (*(a1 + 16) >> 6)) ^ 0xF;
      if (v2 >= 0xD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_231CC4ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *(result + 16) = 0;
    *result = a2 - 14;
    *(result + 8) = 0;
    if (a3 >= 0xE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      return OUTLINED_FUNCTION_15_0(result, 16 * (((-a2 >> 2) & 3) - 4 * a2));
    }
  }

  return result;
}

uint64_t sub_231CC4F28(uint64_t a1, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(a1 + 16) & 0xF | (a2 << 6);
  }

  else
  {
    *a1 = a2 - 2;
    *(a1 + 8) = 0;
    v2 = 0x80;
  }

  return OUTLINED_FUNCTION_15_0(a1, v2);
}

uint64_t sub_231CC4FB0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231CC50A8;

  return v7(a1);
}

uint64_t sub_231CC50A8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231CC518C()
{
  OUTLINED_FUNCTION_18();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_19();
  v4 = v0[15];

  return v3();
}

unint64_t sub_231CC51F0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = a2 + 16 * result;
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_231CC523C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(_s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa() - 8);
  v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4;

  return sub_231CB4858(v7, a3);
}

uint64_t sub_231CC52F4()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = *v0;
        v3 = sub_231E0FC50();

        *v0 = v3;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_231CC534C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = a5;
  v6 = a4;
  v8 = *(a3 + 8);
  v9 = *(v8 + 16);
  if (v9 < a4 || v9 < a5)
  {
    goto LABEL_18;
  }

  if (a5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = result;
  if (a4 == a5)
  {
LABEL_14:

    sub_231CC5724(v6, v5, v8, v12);
  }

  if (a4 < a5)
  {

    v23 = v6;
    v13 = (v8 + 16 * v6 + 40);
    v14 = v6;
    v24 = v5;
    while (v14 < v5)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(a3 + 8);
      v18 = *(v17 + 16);

      sub_231CC5E18(v15, v16, v17 + 32, v18, v12);
      v20 = v19;
      v22 = v21;

      if (v20)
      {
        goto LABEL_16;
      }

      ++v14;
      result = sub_231CC5534(v22, v12, a2, a3);
      v13 += 2;
      v5 = v24;
      if (v24 == v14)
      {

        v8 = *(a3 + 8);
        v6 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_231CC54C8(unint64_t result, uint64_t a2, uint64_t a3)
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

unint64_t sub_231CC5534(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = sub_231E0FBC0();
  sub_231E0FC20();
  if (v26)
  {
    v7 = sub_231E0FBD0();
    v8 = a1;
    while (1)
    {
      result = sub_231E0FC00();
      if (v10)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_26;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_231E12220();

      sub_231E116E0();
      v16 = sub_231E12250();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_27;
      }

      v19 = v18 & v16;
      if (v8 >= v7)
      {
        if (v19 >= v7 && v8 >= v19)
        {
LABEL_18:
          v22 = sub_231E0FC00();
          if ((v23 & 1) == 0)
          {
            v24 = ((v18 & ((v22 - (a2[1] >> 6)) >> 63)) + v22 - (a2[1] >> 6)) ^ v18;
          }

          v8 = a1;
          sub_231E0FBE0();
        }
      }

      else if (v19 >= v7 || v8 >= v19)
      {
        goto LABEL_18;
      }

      sub_231E0FC20();
    }
  }

  return sub_231E0FBE0();
}

uint64_t sub_231CC5724(uint64_t result, int64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_61;
  }

  if (v4 < 1)
  {
    return result;
  }

  v7 = result;
  v8 = *(a3 + 16);
  if ((v8 - v4) / 2 > result)
  {
    result = MEMORY[0x23837B130](*a4 & 0x3F);
    if (result / 3 > v7)
    {
      if (v7 < 0)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      result = sub_231CC54C8(0, v7, a3);
      v10 = v9;
      v12 = v11;
      v13 = 0;
      v15 = v14 >> 1;
      while (v12 != v15)
      {
        if (v12 >= v15)
        {
          __break(1u);
          goto LABEL_52;
        }

        v16 = (v10 + 16 * v12);
        v17 = *v16;
        v18 = v16[1];
        v19 = *a4;
        sub_231E12220();

        sub_231E116E0();
        result = sub_231E12250();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_53;
        }

        if (sub_231E0FBC0())
        {
          while (1)
          {
            v20 = sub_231E0FC00();
            if ((v21 & 1) == 0 && v20 == v13)
            {
              break;
            }

            sub_231E0FC20();
          }
        }

        result = v13 + v4;
        if (__OFADD__(v13, v4))
        {
          goto LABEL_54;
        }

        sub_231E0FC10();

        v22 = __OFADD__(v13++, 1);
        if (v22)
        {
          goto LABEL_57;
        }

        ++v12;
      }

      result = swift_unknownObjectRelease();
LABEL_43:
      v41 = a4[1];
      if (!__OFSUB__(v41 >> 6, v4))
      {
        v42 = 1 << *a4;
        v22 = __OFSUB__(v42, 1);
        v43 = v42 - 1;
        if (!v22)
        {
          v44 = (v43 & (((v41 >> 6) - v4) >> 63)) + (v41 >> 6) - v4;
          if (v44 < v43)
          {
            v43 = 0;
          }

          a4[1] = a4[1] & 0x3F | ((v44 - v43) << 6);
          return result;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    sub_231E0FBC0();
    v37 = sub_231E0FC00();
    if ((v38 & 1) != 0 || v37 >= v7)
    {
LABEL_36:
      result = sub_231E0FC20();
      goto LABEL_43;
    }

    v22 = __OFADD__(v37, v4);
    result = v37 + v4;
    if (!v22)
    {
      sub_231E0FC10();
      goto LABEL_36;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v23 = a2;
  v24 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  result = MEMORY[0x23837B130](*a4 & 0x3F);
  if (v24 >= result / 3)
  {
    sub_231E0FBC0();
    v39 = sub_231E0FC00();
    if ((v40 & 1) == 0 && v39 >= v23)
    {
      v22 = __OFSUB__(v39, v4);
      result = v39 - v4;
      if (v22)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      sub_231E0FC10();
    }

    return sub_231E0FC20();
  }

  if (v8 < v23)
  {
LABEL_66:
    __break(1u);
    return result;
  }

  result = sub_231CC54C8(v23, v8, a3);
  v26 = v25;
  v28 = v27;
  v30 = v29 >> 1;
  while (v28 != v30)
  {
    if (v28 >= v30)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v31 = (v26 + 16 * v28);
    v32 = *v31;
    v33 = v31[1];
    v34 = *a4;
    sub_231E12220();

    sub_231E116E0();
    result = sub_231E12250();
    if (__OFSUB__(1 << *a4, 1))
    {
      goto LABEL_55;
    }

    if (sub_231E0FBC0())
    {
      while (1)
      {
        v35 = sub_231E0FC00();
        if ((v36 & 1) == 0 && v35 == v23)
        {
          break;
        }

        sub_231E0FC20();
      }
    }

    result = v23 - v4;
    if (__OFSUB__(v23, v4))
    {
      goto LABEL_56;
    }

    sub_231E0FC10();

    v22 = __OFADD__(v23++, 1);
    if (v22)
    {
      goto LABEL_58;
    }

    ++v28;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_231CC5BA0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = v2[1];
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v5 = sub_231CC5BE8(v2[1], a2, 0, v3);
  v6 = *v2;

  *v2 = v5;
  return result;
}

uint64_t sub_231CC5BE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x23837B160](v6);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x23837B170]();
    sub_231CC5C60(a1, (v9 + 16));
  }

  return v9;
}

uint64_t sub_231CC5CA0(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        sub_231E12220();

        sub_231E116E0();
        result = sub_231E12250();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_231E0FBC0();

        if (v10)
        {
          while (1)
          {
            sub_231E0FC20();
          }
        }

        result = sub_231E0FC10();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *sub_231CC5DC8(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_231CC5E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_231E12220();
  sub_231E116E0();
  result = sub_231E12250();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_231E0FBF0();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (sub_231E12100())
        {
          break;
        }

        sub_231E0FC20();
        v11 = sub_231E0FC00();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

uint64_t sub_231CC5F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((result & 1) == 0)
  {
    result = sub_231CC686C(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_231CC686C((v12 > 1), v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (!*v4)
  {
    if (v13 <= 0xE)
    {
      return result;
    }

    v16 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (MEMORY[0x23837B130](*(v15 + 16) & 0x3FLL) <= v13)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && v16 == 0)
    {

      *v4 = 0;
      return result;
    }

LABEL_15:
    v18 = MEMORY[0x23837B160](v13 + 1);
    return sub_231CC5BA0(v18, v16);
  }

  result = sub_231CC52F4();
  if (*v4)
  {
    return sub_231CC67E4((*v4 + 16), *v4 + 32, a3, v4);
  }

  __break(1u);
  return result;
}

unint64_t sub_231CC60A8(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      return sub_231CC6344(a1);
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x23837B140]())
  {
LABEL_12:
    v13 = sub_231CC6344(a1);
    if (v7)
    {
      swift_beginAccess();
      v14 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(*v5 + 16);
    if (v14 || v15 >= 0x10)
    {
      v16 = MEMORY[0x23837B160](v15);
      sub_231CC5BA0(v16, v14);
    }

    else
    {

      *v3 = 0;
    }

    return v13;
  }

  result = sub_231CC52F4();
  v10 = *v3;
  if (*v3)
  {
    v11 = *v3;

    result = sub_231CC5534(a2, (v10 + 16), v10 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v12 = v3[1];

      sub_231CC5724(a1, a1 + 1, v12, (v10 + 16));

      return sub_231CC6344(a1);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_231CC6258@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_231CC63CC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(_s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa() - 8);
    v9 = *(v8 + 72);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v9 * a1;
    sub_231CB4E2C(v10, a2);
    result = sub_231CB5940(v10 + v9, v7 - 1 - a1, v10);
    *(v5 + 16) = v7 - 1;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_231CC6344(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_231CC63E0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

size_t sub_231CC63F4(size_t result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741A0, &qword_231E13888);
  v10 = *(_s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa() - 8);
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
  v15 = *(_s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_231CB5940(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_231CC65A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_231CC66B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_231CC51F0(a5, a4);
  v7 = *a1;
  sub_231E12220();
  sub_231E116E0();
  result = sub_231E12250();
  v9 = 1 << *a1;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 & result;
    v13 = sub_231E0FBC0();

    if (!v13)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v16 = v13;
      v14 = sub_231E0FC00();
      if ((v15 & 1) == 0 && v14 == a5)
      {
        break;
      }

      sub_231E0FC20();
    }

    while (!v16)
    {
LABEL_6:
      __break(1u);
    }

    return v12;
  }

  return result;
}

uint64_t sub_231CC67E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 + 8) + 16) + ~(a1[1] >> 6);
  v5 = (-1 << *a1) ^ ~(((v4 >> 63) & ~(-1 << *a1)) + v4);
  return sub_231E0FBE0();
}

size_t sub_231CC684C(size_t a1, int64_t a2, char a3)
{
  result = sub_231CC63F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_231CC686C(char *a1, int64_t a2, char a3)
{
  result = sub_231CC65A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_231CC688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 8);
  while (a4 != v7)
  {
    v9 = *(v8 - 1) == a1 && *v8 == a2;
    if (v9 || (sub_231E12100() & 1) != 0)
    {
      return v7;
    }

    ++v7;
    v8 += 2;
  }

  return 0;
}

uint64_t sub_231CC6918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  v9 = a4[1];
  if (a3)
  {

    v11 = sub_231CC5E18(v8, v9, a1, a2, (a3 + 16));
    v13 = v12;
    v15 = v14;
  }

  else
  {
    result = sub_231CC688C(*a4, a4[1], a1, a2);
    v11 = result;
    v13 = v17;
    v15 = 0;
  }

  *a5 = v11;
  *(a5 + 8) = v13 & 1;
  *(a5 + 16) = v15;
  return result;
}

uint64_t sub_231CC69F4(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CC6A58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_26_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_231CC6AA8()
{
  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_7(v4);

  return v6(v5);
}

uint64_t sub_231CC6B44()
{
  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_7(v4);

  return v6(v5);
}

uint64_t OUTLINED_FUNCTION_10_3@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_3()
{

  return sub_231E12190();
}

void OUTLINED_FUNCTION_22_0(__n128 a1)
{
  *v1 = a1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_231CC6C88(void *a1, uint64_t a2)
{
  v4 = sub_231E10E30();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v38 - v17;
  v19 = sub_231E10400();
  v20 = OUTLINED_FUNCTION_24(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
LABEL_6:

    return a2;
  }

  sub_231CC2C10(a1);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_231CC7038(v18);
    v27 = sub_231CB4EEC();
    (*(v7 + 16))(v12, v27, v4);
    v28 = sub_231E10E10();
    v29 = sub_231E11AD0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_231CAE000, v28, v29, "Could not fall back to me card or account information for recipient details", v30, 2u);
      MEMORY[0x23837E1D0](v30, -1, -1);
    }

    (*(v7 + 8))(v12, v4);
    goto LABEL_6;
  }

  v39 = *(v22 + 32);
  v39(v26, v18, v19);
  v32 = sub_231CB4EEC();
  (*(v7 + 16))(v14, v32, v4);
  v33 = sub_231E10E10();
  v34 = sub_231E11AC0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_231CAE000, v33, v34, "Falling back to me card or account information for recipient details", v35, 2u);
    MEMORY[0x23837E1D0](v35, -1, -1);
  }

  (*(v7 + 8))(v14, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
  v36 = *(v22 + 72);
  v37 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  a2 = swift_allocObject();
  *(a2 + 16) = xmmword_231E138E0;
  v39((a2 + v37), v26, v19);
  return a2;
}

uint64_t sub_231CC7038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231CC7180()
{
  v5 = &unk_2846F07A0;
  v0 = sub_231CC7270();
  v6 = v0;
  LOBYTE(v4[0]) = 8;
  v1 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v4);
  if (v1)
  {
    return 0;
  }

  v5 = &unk_2846F07A0;
  v6 = v0;
  LOBYTE(v4[0]) = 3;
  v3 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v4);
  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_231CC7218(char a1)
{
  v4[3] = &unk_2846F07A0;
  v4[4] = sub_231CC7270();
  LOBYTE(v4[0]) = a1;
  v2 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_231CC7270()
{
  result = qword_2814CCA70;
  if (!qword_2814CCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CCA70);
  }

  return result;
}

uint64_t sub_231CC731C()
{
  sub_231E12220();
  MEMORY[0x23837D730](0);
  return sub_231E12250();
}

uint64_t sub_231CC7370()
{
  sub_231E12220();
  MEMORY[0x23837D730](0);
  return sub_231E12250();
}

unint64_t sub_231CC73B4()
{
  result = qword_27DD741C8;
  if (!qword_27DD741C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD741C8);
  }

  return result;
}

unint64_t sub_231CC740C()
{
  result = qword_27DD741D0;
  if (!qword_27DD741D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD741D0);
  }

  return result;
}

unint64_t sub_231CC7464()
{
  result = qword_27DD741D8;
  if (!qword_27DD741D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD741D8);
  }

  return result;
}

uint64_t sub_231CC74D8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_231CC7560(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationXPCServer.Entitlement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_231CC76C0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for InMemoryContactNameCache.InMemoryContactNameCacheError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_231CC77EC(_BYTE *result, int a2, int a3)
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

id sub_231CC78F0()
{
  v3[3] = &unk_2846F08C0;
  v3[4] = sub_231CC7FD4();
  v0 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v3);
  v1 = MEMORY[0x277CCA1A0];
  if ((v0 & 1) == 0)
  {
    v1 = MEMORY[0x277CCA190];
  }

  result = *v1;
  qword_2814CE750 = result;
  return result;
}

uint64_t *sub_231CC7964()
{
  if (qword_2814CDF98 != -1)
  {
    swift_once();
  }

  return &qword_2814CE750;
}

uint64_t *sub_231CC79CC()
{
  if (qword_2814CDF88 != -1)
  {
    swift_once();
  }

  return &qword_2814CE740;
}

uint64_t *sub_231CC7A34()
{
  if (qword_2814CDF90 != -1)
  {
    swift_once();
  }

  return &qword_2814CE748;
}

uint64_t *sub_231CC7A9C()
{
  if (qword_2814CDF80 != -1)
  {
    swift_once();
  }

  return &qword_2814CE738;
}

unint64_t sub_231CC7AEC()
{
  result = sub_231DE8A04(1);
  qword_2814CE7C8 = result;
  unk_2814CE7D0 = v1;
  return result;
}

uint64_t *sub_231CC7B14()
{
  if (qword_2814CE0D0 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  return &qword_2814CE7C8;
}

uint64_t sub_231CC7B54()
{
  if (qword_2814CE0D0 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  return OUTLINED_FUNCTION_4_2(unk_2814CE7D0, qword_2814CE7E0);
}

void *sub_231CC7BA0()
{
  if (qword_2814CE100 != -1)
  {
    swift_once();
  }

  return qword_2814CE7E0;
}

unint64_t sub_231CC7BF0()
{
  result = sub_231DE8A04(0);
  qword_2814CE788 = result;
  unk_2814CE790 = v1;
  return result;
}

uint64_t *sub_231CC7C18()
{
  if (qword_2814CE0B0 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  return &qword_2814CE788;
}

uint64_t sub_231CC7C58()
{
  if (qword_2814CE0B0 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  return OUTLINED_FUNCTION_4_2(unk_2814CE790, qword_2814CE798);
}

void *sub_231CC7CA4()
{
  if (qword_2814CE0B8 != -1)
  {
    swift_once();
  }

  return qword_2814CE798;
}

unint64_t sub_231CC7CF4()
{
  result = sub_231DE8A04(2);
  qword_2814CE7A8 = result;
  unk_2814CE7B0 = v1;
  return result;
}

uint64_t *sub_231CC7D1C()
{
  if (qword_2814CE0C0 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  return &qword_2814CE7A8;
}

uint64_t sub_231CC7D5C()
{
  if (qword_2814CE0C0 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  return OUTLINED_FUNCTION_4_2(unk_2814CE7B0, qword_2814CE7B8);
}

void *sub_231CC7DA8()
{
  if (qword_2814CE0C8 != -1)
  {
    swift_once();
  }

  return qword_2814CE7B8;
}

void *sub_231CC7E14()
{
  if (qword_2814CD6A0 != -1)
  {
    swift_once();
  }

  return &unk_2814CE620;
}

uint64_t sub_231CC7E80(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3, void *a4)
{
  v7 = sub_231E0FD90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v10);
  v13 = sub_231E0FD00();
  v15 = v14;
  result = (*(v8 + 8))(v12, v7);
  *a3 = v13;
  *a4 = v15;
  return result;
}

void *sub_231CC7F78()
{
  if (qword_2814CD6A8 != -1)
  {
    swift_once();
  }

  return &unk_2814CE630;
}

unint64_t sub_231CC7FD4()
{
  result = qword_2814CC6B0;
  if (!qword_2814CC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CC6B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return swift_once();
}

uint64_t sub_231CC8098()
{
  v0 = sub_231CC8D80();
  if (!v0)
  {
    OUTLINED_FUNCTION_6_3();
LABEL_9:
    sub_231CC8E60(v22);
    return 0;
  }

  v1 = v0;
  v2 = sub_231E115F0();
  v3 = OUTLINED_FUNCTION_1_4();
  v5 = [v3 v4];

  if (v5)
  {
    OUTLINED_FUNCTION_5_1();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_3();
  }

  OUTLINED_FUNCTION_3_5(v6, v7, v8, v9, v10, v11, v12, v13, v18, v20, v21);
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_231CC8EC8();
  if (OUTLINED_FUNCTION_2_2())
  {
    [v19 doubleValue];
    v16 = v15;

    return v16;
  }

  return 0;
}

id sub_231CC8220()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

id sub_231CC82DC()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

id sub_231CC8398()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

id sub_231CC8454()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

double sub_231CC8510()
{
  v0 = sub_231CC8D80();
  if (!v0)
  {
    OUTLINED_FUNCTION_6_3();
LABEL_9:
    sub_231CC8E60(v22);
    return 0.0;
  }

  v1 = v0;
  OUTLINED_FUNCTION_0();
  v2 = sub_231E115F0();
  v3 = OUTLINED_FUNCTION_1_4();
  v5 = [v3 v4];

  if (v5)
  {
    OUTLINED_FUNCTION_5_1();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_3();
  }

  OUTLINED_FUNCTION_3_5(v6, v7, v8, v9, v10, v11, v12, v13, v18, v20, v21);
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_231CC8EC8();
  if ((OUTLINED_FUNCTION_2_2() & 1) == 0)
  {
    return 0.0;
  }

  [v19 doubleValue];
  v16 = v15;

  return v16;
}

id sub_231CC8604()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

id sub_231CC86C4()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

uint64_t sub_231CC8780()
{
  v0 = sub_231CC8D80();
  if (!v0)
  {
    OUTLINED_FUNCTION_6_3();
LABEL_9:
    sub_231CC8E60(v21);
    return 2;
  }

  v1 = v0;
  OUTLINED_FUNCTION_0();
  v2 = sub_231E115F0();
  v3 = OUTLINED_FUNCTION_1_4();
  v5 = [v3 v4];

  if (v5)
  {
    OUTLINED_FUNCTION_5_1();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_3();
  }

  OUTLINED_FUNCTION_3_5(v6, v7, v8, v9, v10, v11, v12, v13, v17, v19, v20);
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_231CC8EC8();
  if ((OUTLINED_FUNCTION_2_2() & 1) == 0)
  {
    return 2;
  }

  v15 = [v18 BOOLValue];

  return v15;
}

unint64_t sub_231CC886C()
{
  v0 = sub_231CC8D80();
  if (!v0)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_9:
    sub_231CC8E60(&v13);
    goto LABEL_10;
  }

  v1 = v0;
  OUTLINED_FUNCTION_0();
  v2 = sub_231E115F0();
  v3 = OUTLINED_FUNCTION_1_4();
  v5 = [v3 v4];

  if (v5)
  {
    OUTLINED_FUNCTION_5_1();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_3();
  }

  v13 = *v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

  sub_231CC8EC8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v9 = 0;
    v8 = 1;
    return v9 | (v8 << 32);
  }

  [v11[0] floatValue];
  v7 = v6;

  v8 = 0;
  v9 = v7;
  return v9 | (v8 << 32);
}

unint64_t sub_231CC8990@<X0>(uint64_t a1@<X8>)
{
  result = sub_231CC8A28();
  if ((v3 & 1) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result <= 0xFF)
    {
      sub_231E119D0();
      v4 = 0;
      goto LABEL_6;
    }

    __break(1u);
    return result;
  }

  v4 = 1;
LABEL_6:
  v5 = sub_231E119F0();

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

id sub_231CC8A28()
{
  v0 = sub_231CC8D80();
  if (!v0)
  {
    OUTLINED_FUNCTION_6_3();
LABEL_9:
    sub_231CC8E60(v21);
    return 0;
  }

  v1 = v0;
  v2 = sub_231E115F0();
  v3 = OUTLINED_FUNCTION_1_4();
  v5 = [v3 v4];

  if (v5)
  {
    OUTLINED_FUNCTION_5_1();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_3();
  }

  OUTLINED_FUNCTION_3_5(v6, v7, v8, v9, v10, v11, v12, v13, v17, v19, v20);
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_231CC8EC8();
  if ((OUTLINED_FUNCTION_2_2() & 1) == 0)
  {
    return 0;
  }

  v15 = [v18 integerValue];

  return v15;
}

id sub_231CC8B78()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

id sub_231CC8CC4()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

id sub_231CC8D80()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  return sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
}

id sub_231CC8DEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_231E115F0();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_231CC8E60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD741E0, &qword_231E15D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231CC8EC8()
{
  result = qword_2814CBD70;
  if (!qword_2814CBD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814CBD70);
  }

  return result;
}

void sub_231CC8F48(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 27:
    case 28:
      OUTLINED_FUNCTION_22_1();
      break;
    case 4:
    case 17:
    case 21:
    case 29:
      OUTLINED_FUNCTION_0();
      break;
    default:
      return;
  }
}

uint64_t sub_231CC9304()
{
  sub_231CCC298();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CC933C()
{
  sub_231CCC298();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CC9374(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_20_1() && a2 == v4;
  if (v5 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == 0xD000000000000010 && 0x8000000231E2E8D0 == a2;
    if (v7 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == 0xD000000000000015 && 0x8000000231E2E8F0 == a2;
      if (v8 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0xD000000000000012 && 0x8000000231E2E910 == a2;
        if (v9 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == 0xD000000000000022 && 0x8000000231E2E930 == a2;
          if (v10 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = a1 == 0xD000000000000013 && 0x8000000231E2E960 == a2;
            if (v11 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = a1 == 0xD000000000000019 && 0x8000000231E2E980 == a2;
              if (v12 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = a1 == 0xD000000000000011 && 0x8000000231E2E9A0 == a2;
                if (v13 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v14 = a1 == 0xD000000000000015 && 0x8000000231E2E9C0 == a2;
                  if (v14 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v15 = a1 == 0xD000000000000018 && 0x8000000231E2E9E0 == a2;
                    if (v15 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v16 = a1 == 0xD000000000000013 && 0x8000000231E2EA00 == a2;
                      if (v16 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v17 = a1 == 0xD000000000000015 && 0x8000000231E2EA20 == a2;
                        if (v17 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v18 = a1 == 0xD00000000000001ALL && 0x8000000231E2EA40 == a2;
                          if (v18 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v19 = a1 == 0xD000000000000025 && 0x8000000231E2EA60 == a2;
                            if (v19 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v20 = a1 == 0xD000000000000016 && 0x8000000231E2EA90 == a2;
                              if (v20 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v21 = a1 == 0xD000000000000018 && 0x8000000231E2EAB0 == a2;
                                if (v21 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v22 = a1 == 0xD000000000000026 && 0x8000000231E2EAD0 == a2;
                                  if (v22 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v23 = a1 == 0xD000000000000022 && 0x8000000231E2EB00 == a2;
                                    if (v23 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v24 = a1 == 0xD00000000000002ALL && 0x8000000231E2EB30 == a2;
                                      if (v24 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v25 = a1 == 0xD00000000000001BLL && 0x8000000231E2EB60 == a2;
                                        if (v25 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v26 = a1 == 0xD00000000000001CLL && 0x8000000231E2EB80 == a2;
                                          if (v26 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v27 = a1 == 0xD000000000000023 && 0x8000000231E2EBA0 == a2;
                                            if (v27 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v28 = a1 == 0xD00000000000002BLL && 0x8000000231E2EBD0 == a2;
                                              if (v28 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v29 = a1 == 0x5F6567617373656DLL && a2 == 0xEF676F6C6B636162;
                                                if (v29 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v31 = a1 == OUTLINED_FUNCTION_30_0() && a2 == v30;
                                                  if (v31 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v32 = a1 == 0x6165725F6C69616DLL && a2 == 0xE900000000000064;
                                                    if (v32 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v33 = a1 == 0x5F6567617373656DLL && a2 == 0xEC00000064616572;
                                                      if (v33 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v34 = a1 == 0xD00000000000001BLL && 0x8000000231E2EC00 == a2;
                                                        if (v34 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v35 = a1 == 0xD00000000000002DLL && 0x8000000231E2EC20 == a2;
                                                          if (v35 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v36 = a1 == 0xD000000000000022 && 0x8000000231E2EC50 == a2;
                                                            if (v36 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else if (a1 == 0xD000000000000027 && 0x8000000231E2EC80 == a2)
                                                            {

                                                              return 30;
                                                            }

                                                            else
                                                            {
                                                              v38 = OUTLINED_FUNCTION_15_2();

                                                              if (v38)
                                                              {
                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                return 31;
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

void sub_231CC9AA8()
{
  OUTLINED_FUNCTION_20_1();
  switch(v0)
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 27:
    case 28:
    case 29:
    case 30:
      OUTLINED_FUNCTION_21_0();
      break;
    case 2:
    case 8:
    case 11:
      OUTLINED_FUNCTION_0();
      break;
    case 24:
      OUTLINED_FUNCTION_30_0();
      break;
    default:
      return;
  }
}

uint64_t sub_231CC9E4C()
{
  sub_231CCC2EC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CC9E84()
{
  sub_231CCC2EC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CC9EBC()
{
  sub_231CCC244();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CC9EF4()
{
  sub_231CCC244();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CC9F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231CC9374(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231CC9F64()
{
  sub_231CCC19C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CC9F9C()
{
  sub_231CCC19C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CC9FD4()
{
  sub_231CCCA78();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA00C()
{
  sub_231CCCA78();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA044()
{
  sub_231CCC9D0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA07C()
{
  sub_231CCC9D0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA0B4()
{
  sub_231CCC3E8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA0EC()
{
  sub_231CCC3E8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA124()
{
  sub_231CCCB20();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA15C()
{
  sub_231CCCB20();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA194()
{
  sub_231CCCA24();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA1CC()
{
  sub_231CCCA24();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA204()
{
  sub_231CCCB74();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA23C()
{
  sub_231CCCB74();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA274()
{
  sub_231CCCBC8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA2AC()
{
  sub_231CCCBC8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA2E4()
{
  sub_231CCCACC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA31C()
{
  sub_231CCCACC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA354()
{
  sub_231CCC394();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA38C()
{
  sub_231CCC394();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA3C4()
{
  sub_231CCC784();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA3FC()
{
  sub_231CCC784();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA434()
{
  sub_231CCC8D4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA46C()
{
  sub_231CCC8D4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA4A4()
{
  sub_231CCC43C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA4DC()
{
  sub_231CCC43C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA514()
{
  sub_231CCC880();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA54C()
{
  sub_231CCC880();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA584()
{
  sub_231CCC928();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA5BC()
{
  sub_231CCC928();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA5F4()
{
  sub_231CCC97C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA62C()
{
  sub_231CCC97C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA664()
{
  sub_231CCC82C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA69C()
{
  sub_231CCC82C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA6D4()
{
  sub_231CCC7D8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA70C()
{
  sub_231CCC7D8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA744()
{
  sub_231CCC340();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA77C()
{
  sub_231CCC340();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA7B4()
{
  sub_231CCC4E4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA7EC()
{
  sub_231CCC4E4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA824()
{
  sub_231CCC490();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA85C()
{
  sub_231CCC490();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA894()
{
  sub_231CCC58C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA8CC()
{
  sub_231CCC58C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA904()
{
  sub_231CCC538();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA93C()
{
  sub_231CCC538();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA974()
{
  sub_231CCC5E0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA9AC()
{
  sub_231CCC5E0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA9E4()
{
  sub_231CCC634();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCAA1C()
{
  sub_231CCC634();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCAA54()
{
  sub_231CCC688();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCAA8C()
{
  sub_231CCC688();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCAAC4()
{
  sub_231CCC6DC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCAAFC()
{
  sub_231CCC6DC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCAB34()
{
  sub_231CCC730();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCAB6C()
{
  sub_231CCC730();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCABA4()
{
  sub_231CCC1F0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCABDC()
{
  sub_231CCC1F0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

void sub_231CCAC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35_1();
  a19 = v20;
  a20 = v21;
  v298 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741E8, &qword_231E13B10);
  v26 = OUTLINED_FUNCTION_24(v25);
  v293 = v27;
  v294 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_1();
  v292 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741F0, &qword_231E13B18);
  v33 = OUTLINED_FUNCTION_24(v32);
  v290 = v34;
  v291 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_1();
  v289 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741F8, &qword_231E13B20);
  v40 = OUTLINED_FUNCTION_24(v39);
  v287 = v41;
  v288 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12_1();
  v286 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74200, &qword_231E13B28);
  v47 = OUTLINED_FUNCTION_24(v46);
  v284 = v48;
  v285 = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12_1();
  v283 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74208, &qword_231E13B30);
  v54 = OUTLINED_FUNCTION_24(v53);
  v281 = v55;
  v282 = v54;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_12_1();
  v280 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74210, &qword_231E13B38);
  v61 = OUTLINED_FUNCTION_24(v60);
  v278 = v62;
  v279 = v61;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74218, &qword_231E13B40);
  OUTLINED_FUNCTION_0_7(v67, &a17);
  v275 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74220, &qword_231E13B48);
  OUTLINED_FUNCTION_0_7(v73, &a14);
  v272 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74228, &qword_231E13B50);
  OUTLINED_FUNCTION_0_7(v79, &a11);
  v269 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74230, &qword_231E13B58);
  OUTLINED_FUNCTION_0_7(v85, &v299);
  v266 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74238, &qword_231E13B60);
  OUTLINED_FUNCTION_0_7(v91, &v296);
  v263 = v92;
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74240, &qword_231E13B68);
  OUTLINED_FUNCTION_0_7(v97, &v293);
  v260 = v98;
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74248, &qword_231E13B70);
  OUTLINED_FUNCTION_0_7(v103, &v290);
  v257 = v104;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74250, &qword_231E13B78);
  OUTLINED_FUNCTION_0_7(v109, &v287);
  v254 = v110;
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74258, &qword_231E13B80);
  OUTLINED_FUNCTION_0_7(v115, &v284);
  v251 = v116;
  v118 = *(v117 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74260, &qword_231E13B88);
  OUTLINED_FUNCTION_0_7(v121, &v281);
  v248 = v122;
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v126);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74268, &qword_231E13B90);
  OUTLINED_FUNCTION_0_7(v127, &v278);
  v245 = v128;
  v130 = *(v129 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74270, &qword_231E13B98);
  OUTLINED_FUNCTION_0_7(v133, &v275);
  v242 = v134;
  v136 = *(v135 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v138);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74278, &qword_231E13BA0);
  OUTLINED_FUNCTION_0_7(v139, &v272);
  v240 = v140;
  v142 = *(v141 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74280, &qword_231E13BA8);
  OUTLINED_FUNCTION_0_7(v145, &v269);
  v238[30] = v146;
  v148 = *(v147 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v150);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74288, &qword_231E13BB0);
  OUTLINED_FUNCTION_0_7(v151, &v266);
  v238[27] = v152;
  v154 = *(v153 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v156);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74290, &qword_231E13BB8);
  OUTLINED_FUNCTION_0_7(v157, &v263);
  v238[24] = v158;
  v160 = *(v159 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v162);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74298, &qword_231E13BC0);
  OUTLINED_FUNCTION_0_7(v163, &v260);
  v238[21] = v164;
  v166 = *(v165 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v168);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742A0, &qword_231E13BC8);
  OUTLINED_FUNCTION_0_7(v169, &v257);
  v238[18] = v170;
  v172 = *(v171 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v174);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742A8, &qword_231E13BD0);
  OUTLINED_FUNCTION_0_7(v175, &v254);
  v238[15] = v176;
  v178 = *(v177 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v180);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742B0, &qword_231E13BD8);
  OUTLINED_FUNCTION_0_7(v181, &v251);
  v238[12] = v182;
  v184 = *(v183 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v185);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v186);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742B8, &qword_231E13BE0);
  OUTLINED_FUNCTION_0_7(v187, &v248);
  v238[9] = v188;
  v190 = *(v189 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v192);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742C0, &qword_231E13BE8);
  OUTLINED_FUNCTION_0_7(v193, &v245);
  v238[6] = v194;
  v196 = *(v195 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v198);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742C8, &qword_231E13BF0);
  OUTLINED_FUNCTION_0_7(v199, &v242);
  v238[3] = v200;
  v202 = *(v201 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v203);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v204);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742D0, &qword_231E13BF8);
  OUTLINED_FUNCTION_24(v205);
  v238[1] = v206;
  v208 = *(v207 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v209);
  v211 = v238 - v210;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742D8, &qword_231E13C00);
  OUTLINED_FUNCTION_24(v212);
  v238[0] = v213;
  v215 = *(v214 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v216);
  v218 = v238 - v217;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742E0, &qword_231E13C08);
  OUTLINED_FUNCTION_24(v296);
  v220 = v219;
  v222 = *(v221 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v223);
  v225 = v238 - v224;
  v226 = v24[4];
  v227 = __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  sub_231CCC19C();
  v295 = v225;
  sub_231E12270();
  v228 = (v220 + 8);
  switch(v298)
  {
    case 1:
      OUTLINED_FUNCTION_31_0();
      sub_231CCCB74();
      v227 = v295;
      v225 = v296;
      sub_231E12000();
      OUTLINED_FUNCTION_13(&v240);
      v230 = v211;
      v231 = v205;
      break;
    case 2:
      HIBYTE(a10) = 2;
      sub_231CCCB20();
      v234 = v238[2];
      v235 = v295;
      v236 = v296;
      sub_231E12000();
      OUTLINED_FUNCTION_13(&v241);
      v237(v234, v238[4]);
      (*v228)(v235, v236);
      goto LABEL_36;
    case 3:
      HIBYTE(a10) = 3;
      sub_231CCCACC();
      OUTLINED_FUNCTION_5_2(&v243);
      v230 = OUTLINED_FUNCTION_7_2(&v244);
      v233 = &v245;
      goto LABEL_30;
    case 4:
      HIBYTE(a10) = 4;
      sub_231CCCA78();
      OUTLINED_FUNCTION_5_2(&v246);
      v230 = OUTLINED_FUNCTION_7_2(&v247);
      v233 = &v248;
      goto LABEL_30;
    case 5:
      HIBYTE(a10) = 5;
      sub_231CCCA24();
      OUTLINED_FUNCTION_5_2(&v249);
      v230 = OUTLINED_FUNCTION_7_2(&v250);
      v233 = &v251;
      goto LABEL_30;
    case 6:
      HIBYTE(a10) = 6;
      sub_231CCC9D0();
      OUTLINED_FUNCTION_5_2(&v252);
      v230 = OUTLINED_FUNCTION_7_2(&v253);
      v233 = &v254;
      goto LABEL_30;
    case 7:
      HIBYTE(a10) = 7;
      sub_231CCC97C();
      OUTLINED_FUNCTION_5_2(&v255);
      v230 = OUTLINED_FUNCTION_7_2(&v256);
      v233 = &v257;
      goto LABEL_30;
    case 8:
      HIBYTE(a10) = 8;
      sub_231CCC928();
      OUTLINED_FUNCTION_5_2(&v258);
      v230 = OUTLINED_FUNCTION_7_2(&v259);
      v233 = &v260;
      goto LABEL_30;
    case 9:
      HIBYTE(a10) = 9;
      sub_231CCC8D4();
      OUTLINED_FUNCTION_5_2(&v261);
      v230 = OUTLINED_FUNCTION_7_2(&v262);
      v233 = &v263;
      goto LABEL_30;
    case 10:
      HIBYTE(a10) = 10;
      sub_231CCC880();
      OUTLINED_FUNCTION_5_2(&v264);
      v230 = OUTLINED_FUNCTION_7_2(&v265);
      v233 = &v266;
      goto LABEL_30;
    case 11:
      HIBYTE(a10) = 11;
      sub_231CCC82C();
      OUTLINED_FUNCTION_5_2(&v267);
      v230 = OUTLINED_FUNCTION_7_2(&v268);
      v233 = &v269;
      goto LABEL_30;
    case 12:
      HIBYTE(a10) = 12;
      sub_231CCC7D8();
      OUTLINED_FUNCTION_5_2(&v270);
      v230 = OUTLINED_FUNCTION_7_2(&v271);
      v233 = &v272;
      goto LABEL_30;
    case 13:
      HIBYTE(a10) = 13;
      sub_231CCC784();
      OUTLINED_FUNCTION_5_2(&v273);
      v230 = OUTLINED_FUNCTION_7_2(&v274);
      v233 = &v275;
      goto LABEL_30;
    case 14:
      HIBYTE(a10) = 14;
      sub_231CCC730();
      OUTLINED_FUNCTION_5_2(&v276);
      v230 = OUTLINED_FUNCTION_7_2(&v277);
      v233 = &v278;
      goto LABEL_30;
    case 15:
      HIBYTE(a10) = 15;
      sub_231CCC6DC();
      OUTLINED_FUNCTION_5_2(&v279);
      v230 = OUTLINED_FUNCTION_7_2(&v280);
      v233 = &v281;
      goto LABEL_30;
    case 16:
      HIBYTE(a10) = 16;
      sub_231CCC688();
      OUTLINED_FUNCTION_5_2(&v282);
      v230 = OUTLINED_FUNCTION_7_2(&v283);
      v233 = &v284;
      goto LABEL_30;
    case 17:
      HIBYTE(a10) = 17;
      sub_231CCC634();
      OUTLINED_FUNCTION_5_2(&v285);
      v230 = OUTLINED_FUNCTION_7_2(&v286);
      v233 = &v287;
      goto LABEL_30;
    case 18:
      HIBYTE(a10) = 18;
      sub_231CCC5E0();
      OUTLINED_FUNCTION_5_2(&v288);
      v230 = OUTLINED_FUNCTION_7_2(&v289);
      v233 = &v290;
      goto LABEL_30;
    case 19:
      HIBYTE(a10) = 19;
      sub_231CCC58C();
      OUTLINED_FUNCTION_5_2(&v291);
      v230 = OUTLINED_FUNCTION_7_2(&v292);
      v233 = &v293;
      goto LABEL_30;
    case 20:
      HIBYTE(a10) = 20;
      sub_231CCC538();
      OUTLINED_FUNCTION_5_2(&v294);
      v230 = OUTLINED_FUNCTION_7_2(&v295);
      v233 = &v296;
      goto LABEL_30;
    case 21:
      HIBYTE(a10) = 21;
      sub_231CCC4E4();
      OUTLINED_FUNCTION_5_2(&v297);
      v230 = OUTLINED_FUNCTION_7_2(&v298);
      v233 = &v299;
      goto LABEL_30;
    case 22:
      HIBYTE(a10) = 22;
      sub_231CCC490();
      OUTLINED_FUNCTION_5_2(&a9);
      v230 = OUTLINED_FUNCTION_7_2(&a10);
      v233 = &a11;
      goto LABEL_30;
    case 23:
      HIBYTE(a10) = 23;
      sub_231CCC43C();
      OUTLINED_FUNCTION_5_2(&a12);
      v230 = OUTLINED_FUNCTION_7_2(&a13);
      v233 = &a14;
      goto LABEL_30;
    case 24:
      HIBYTE(a10) = 24;
      sub_231CCC3E8();
      OUTLINED_FUNCTION_5_2(&a15);
      v230 = OUTLINED_FUNCTION_7_2(&a16);
      v233 = &a17;
LABEL_30:
      v231 = *(v233 - 32);
      break;
    case 25:
      HIBYTE(a10) = 25;
      sub_231CCC394();
      OUTLINED_FUNCTION_5_2(&a18);
      v232 = v278;
      v231 = v279;
      goto LABEL_34;
    case 26:
      HIBYTE(a10) = 26;
      sub_231CCC340();
      v205 = v280;
      OUTLINED_FUNCTION_9_2();
      v232 = v281;
      v231 = v282;
      goto LABEL_34;
    case 27:
      HIBYTE(a10) = 27;
      sub_231CCC2EC();
      v205 = v283;
      OUTLINED_FUNCTION_9_2();
      v232 = v284;
      v231 = v285;
      goto LABEL_34;
    case 28:
      HIBYTE(a10) = 28;
      sub_231CCC298();
      v205 = v286;
      OUTLINED_FUNCTION_9_2();
      v232 = v287;
      v231 = v288;
      goto LABEL_34;
    case 29:
      HIBYTE(a10) = 29;
      sub_231CCC244();
      v205 = v289;
      OUTLINED_FUNCTION_9_2();
      v232 = v290;
      v231 = v291;
      goto LABEL_34;
    case 30:
      HIBYTE(a10) = 30;
      sub_231CCC1F0();
      v205 = v292;
      OUTLINED_FUNCTION_9_2();
      v232 = v293;
      v231 = v294;
LABEL_34:
      v229 = *(v232 + 8);
      v230 = v205;
      break;
    default:
      HIBYTE(a10) = 0;
      sub_231CCCBC8();
      v227 = v295;
      v225 = v296;
      sub_231E12000();
      OUTLINED_FUNCTION_13(&v239);
      v230 = v218;
      v231 = v212;
      break;
  }

  v229(v230, v231);
  (*v228)(v227, v225);
LABEL_36:
  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_231CCC19C()
{
  result = qword_27DD75FE0;
  if (!qword_27DD75FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75FE0);
  }

  return result;
}

unint64_t sub_231CCC1F0()
{
  result = qword_27DD75FE8;
  if (!qword_27DD75FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75FE8);
  }

  return result;
}

unint64_t sub_231CCC244()
{
  result = qword_27DD75FF0;
  if (!qword_27DD75FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75FF0);
  }

  return result;
}

unint64_t sub_231CCC298()
{
  result = qword_27DD75FF8;
  if (!qword_27DD75FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75FF8);
  }

  return result;
}

unint64_t sub_231CCC2EC()
{
  result = qword_27DD76000;
  if (!qword_27DD76000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76000);
  }

  return result;
}

unint64_t sub_231CCC340()
{
  result = qword_27DD76008;
  if (!qword_27DD76008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76008);
  }

  return result;
}

unint64_t sub_231CCC394()
{
  result = qword_27DD76010;
  if (!qword_27DD76010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76010);
  }

  return result;
}

unint64_t sub_231CCC3E8()
{
  result = qword_27DD76018;
  if (!qword_27DD76018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76018);
  }

  return result;
}

unint64_t sub_231CCC43C()
{
  result = qword_27DD76020;
  if (!qword_27DD76020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76020);
  }

  return result;
}

unint64_t sub_231CCC490()
{
  result = qword_27DD76028;
  if (!qword_27DD76028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76028);
  }

  return result;
}

unint64_t sub_231CCC4E4()
{
  result = qword_27DD76030;
  if (!qword_27DD76030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76030);
  }

  return result;
}

unint64_t sub_231CCC538()
{
  result = qword_27DD76038;
  if (!qword_27DD76038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76038);
  }

  return result;
}

unint64_t sub_231CCC58C()
{
  result = qword_27DD76040;
  if (!qword_27DD76040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76040);
  }

  return result;
}

unint64_t sub_231CCC5E0()
{
  result = qword_27DD76048;
  if (!qword_27DD76048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76048);
  }

  return result;
}

unint64_t sub_231CCC634()
{
  result = qword_27DD76050;
  if (!qword_27DD76050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76050);
  }

  return result;
}

unint64_t sub_231CCC688()
{
  result = qword_27DD76058;
  if (!qword_27DD76058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76058);
  }

  return result;
}

unint64_t sub_231CCC6DC()
{
  result = qword_27DD76060;
  if (!qword_27DD76060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76060);
  }

  return result;
}

unint64_t sub_231CCC730()
{
  result = qword_27DD76068;
  if (!qword_27DD76068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76068);
  }

  return result;
}

unint64_t sub_231CCC784()
{
  result = qword_27DD76070;
  if (!qword_27DD76070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76070);
  }

  return result;
}

unint64_t sub_231CCC7D8()
{
  result = qword_27DD76078;
  if (!qword_27DD76078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76078);
  }

  return result;
}

unint64_t sub_231CCC82C()
{
  result = qword_27DD76080;
  if (!qword_27DD76080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76080);
  }

  return result;
}

unint64_t sub_231CCC880()
{
  result = qword_27DD76088;
  if (!qword_27DD76088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76088);
  }

  return result;
}

unint64_t sub_231CCC8D4()
{
  result = qword_27DD76090;
  if (!qword_27DD76090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76090);
  }

  return result;
}

unint64_t sub_231CCC928()
{
  result = qword_27DD76098;
  if (!qword_27DD76098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76098);
  }

  return result;
}

unint64_t sub_231CCC97C()
{
  result = qword_27DD760A0;
  if (!qword_27DD760A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760A0);
  }

  return result;
}

unint64_t sub_231CCC9D0()
{
  result = qword_27DD760A8;
  if (!qword_27DD760A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760A8);
  }

  return result;
}

unint64_t sub_231CCCA24()
{
  result = qword_27DD760B0;
  if (!qword_27DD760B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760B0);
  }

  return result;
}

unint64_t sub_231CCCA78()
{
  result = qword_27DD760B8;
  if (!qword_27DD760B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760B8);
  }

  return result;
}

unint64_t sub_231CCCACC()
{
  result = qword_27DD760C0;
  if (!qword_27DD760C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760C0);
  }

  return result;
}

unint64_t sub_231CCCB20()
{
  result = qword_27DD760C8;
  if (!qword_27DD760C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760C8);
  }

  return result;
}

unint64_t sub_231CCCB74()
{
  result = qword_27DD760D0;
  if (!qword_27DD760D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760D0);
  }

  return result;
}

unint64_t sub_231CCCBC8()
{
  result = qword_27DD760D8;
  if (!qword_27DD760D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760D8);
  }

  return result;
}

void sub_231CCCC1C()
{
  OUTLINED_FUNCTION_35_1();
  v286 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742E8, &qword_231E13C10);
  OUTLINED_FUNCTION_0_7(v3, &v287);
  v254 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v281 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742F0, &qword_231E13C18);
  OUTLINED_FUNCTION_0_7(v9, &v285);
  v252 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v280 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742F8, &qword_231E13C20);
  OUTLINED_FUNCTION_0_7(v15, &v283);
  v250 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_1();
  v279 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74300, &qword_231E13C28);
  OUTLINED_FUNCTION_0_7(v21, &v281);
  v248 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12_1();
  v278 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74308, &qword_231E13C30);
  OUTLINED_FUNCTION_0_7(v27, &v279);
  v246 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_1();
  v277 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74310, &qword_231E13C38);
  OUTLINED_FUNCTION_0_7(v33, &v277);
  v244 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_1();
  v276 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74318, &qword_231E13C40);
  OUTLINED_FUNCTION_0_7(v39, &v275);
  v242 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12_1();
  v275 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74320, &qword_231E13C48);
  OUTLINED_FUNCTION_0_7(v45, &v273);
  v240 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_12_1();
  v274 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74328, &qword_231E13C50);
  OUTLINED_FUNCTION_0_7(v51, &v271);
  v238 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_12_1();
  v273 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74330, &qword_231E13C58);
  OUTLINED_FUNCTION_0_7(v57, &v269);
  v236 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_12_1();
  v272 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74338, &qword_231E13C60);
  OUTLINED_FUNCTION_0_7(v63, &v267);
  v234 = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_12_1();
  v271 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74340, &qword_231E13C68);
  OUTLINED_FUNCTION_0_7(v69, &v265);
  v232 = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_12_1();
  v270 = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74348, &qword_231E13C70);
  OUTLINED_FUNCTION_0_7(v75, &v263);
  v230 = v76;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_12_1();
  v269 = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74350, &qword_231E13C78);
  OUTLINED_FUNCTION_0_7(v81, &v261);
  v228 = v82;
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_12_1();
  v268 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74358, &qword_231E13C80);
  OUTLINED_FUNCTION_0_7(v87, &v259);
  v226[2] = v88;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_12_1();
  v267 = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74360, &qword_231E13C88);
  OUTLINED_FUNCTION_0_7(v93, &v257);
  v226[0] = v94;
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_12_1();
  v266 = v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74368, &qword_231E13C90);
  OUTLINED_FUNCTION_0_7(v99, &v255);
  v225[32] = v100;
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74370, &qword_231E13C98);
  OUTLINED_FUNCTION_0_7(v105, &v253);
  v225[30] = v106;
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74378, &qword_231E13CA0);
  OUTLINED_FUNCTION_0_7(v111, &v251);
  v225[28] = v112;
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74380, &qword_231E13CA8);
  OUTLINED_FUNCTION_0_7(v117, &v249);
  v225[26] = v118;
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v122);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74388, &qword_231E13CB0);
  OUTLINED_FUNCTION_0_7(v123, &v247);
  v225[24] = v124;
  v126 = *(v125 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74390, &qword_231E13CB8);
  OUTLINED_FUNCTION_0_7(v129, &v245);
  v225[22] = v130;
  v132 = *(v131 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_12_1();
  v284 = v134;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74398, &qword_231E13CC0);
  OUTLINED_FUNCTION_0_7(v135, &v243);
  v225[20] = v136;
  v138 = *(v137 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_12_1();
  v283 = v140;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743A0, &qword_231E13CC8);
  OUTLINED_FUNCTION_0_7(v141, &v241);
  v225[18] = v142;
  v144 = *(v143 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v146);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743A8, &qword_231E13CD0);
  OUTLINED_FUNCTION_0_7(v147, &v239);
  v225[16] = v148;
  v150 = *(v149 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v152);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743B0, &qword_231E13CD8);
  OUTLINED_FUNCTION_0_7(v153, &v237);
  v225[14] = v154;
  v156 = *(v155 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_12_1();
  v282 = v158;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743B8, &qword_231E13CE0);
  OUTLINED_FUNCTION_0_7(v159, &v235);
  v225[12] = v160;
  v162 = *(v161 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v164);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743C0, &qword_231E13CE8);
  OUTLINED_FUNCTION_0_7(v165, &v233);
  v225[10] = v166;
  v168 = *(v167 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v169);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v170);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743C8, &qword_231E13CF0);
  OUTLINED_FUNCTION_0_7(v171, &v231);
  v225[8] = v172;
  v174 = *(v173 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v176);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743D0, &qword_231E13CF8);
  OUTLINED_FUNCTION_0_7(v177, &v229);
  v225[6] = v178;
  v180 = *(v179 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v181);
  v183 = v225 - v182;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743D8, &qword_231E13D00);
  OUTLINED_FUNCTION_24(v184);
  v225[5] = v185;
  v187 = *(v186 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v188);
  v190 = v225 - v189;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E0, &qword_231E13D08);
  OUTLINED_FUNCTION_24(v191);
  v193 = v192;
  v195 = *(v194 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v196);
  v198 = v225 - v197;
  v199 = v2[3];
  v200 = v2[4];
  v285 = v2;
  __swift_project_boxed_opaque_existential_0(v2, v199);
  sub_231CCC19C();
  v201 = v286;
  sub_231E12260();
  if (v201)
  {
    goto LABEL_10;
  }

  v225[3] = v190;
  v225[2] = v184;
  v225[4] = v183;
  v202 = v282;
  v286 = v193;
  v203 = sub_231E11FE0();
  v204 = sub_231CCF16C(v203, 0);
  v208 = v191;
  if (v206 == v207 >> 1)
  {
    v209 = v198;
    v210 = v286;
LABEL_9:
    v221 = sub_231E11DC0();
    swift_allocError();
    v223 = v222;
    v224 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E8, &qword_231E13D10) + 48);
    *v223 = &unk_2846F0A00;
    sub_231E11F40();
    OUTLINED_FUNCTION_32_0();
    (*(*(v221 - 8) + 104))(v223, *MEMORY[0x277D84160], v221);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v210 + 8))(v209, v208);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v285);
LABEL_11:
    OUTLINED_FUNCTION_33_0();
    return;
  }

  v225[1] = 0;
  if (v206 < (v207 >> 1))
  {
    v211 = *(v205 + v206);
    v212 = sub_231CCF304(v206 + 1, v207 >> 1, v204, v205, v206, v207);
    v214 = v213;
    v216 = v215;
    swift_unknownObjectRelease();
    if (v214 == v216 >> 1)
    {
      v217 = v286;
      v225[0] = v212;
      switch(v211)
      {
        case 1:
          OUTLINED_FUNCTION_31_0();
          sub_231CCCB74();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v228);
          v220 = &v229;
          break;
        case 2:
          sub_231CCCB20();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v230);
          v220 = &v231;
          break;
        case 3:
          sub_231CCCACC();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v232);
          v220 = &v233;
          break;
        case 4:
          sub_231CCCA78();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v234);
          v220 = &v235;
          break;
        case 5:
          sub_231CCCA24();
          OUTLINED_FUNCTION_8_2();
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_13(&v236);
          v218 = v202;
          v220 = &v237;
          break;
        case 6:
          sub_231CCC9D0();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v238);
          v220 = &v239;
          break;
        case 7:
          sub_231CCC97C();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v240);
          v220 = &v241;
          break;
        case 8:
          sub_231CCC928();
          OUTLINED_FUNCTION_8_2();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v242);
          v220 = &v243;
          break;
        case 9:
          sub_231CCC8D4();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v244);
          v220 = &v245;
          break;
        case 10:
          sub_231CCC880();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v246);
          v220 = &v247;
          break;
        case 11:
          sub_231CCC82C();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v248);
          v220 = &v249;
          break;
        case 12:
          sub_231CCC7D8();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v250);
          v220 = &v251;
          break;
        case 13:
          sub_231CCC784();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v252);
          v220 = &v253;
          break;
        case 14:
          sub_231CCC730();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v254);
          v220 = &v255;
          break;
        case 15:
          sub_231CCC6DC();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v256);
          v220 = &v257;
          break;
        case 16:
          sub_231CCC688();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v258);
          v220 = &v259;
          break;
        case 17:
          sub_231CCC634();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v260);
          v220 = &v261;
          break;
        case 18:
          sub_231CCC5E0();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v262);
          v220 = &v263;
          break;
        case 19:
          sub_231CCC58C();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v264);
          v220 = &v265;
          break;
        case 20:
          sub_231CCC538();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v266);
          v220 = &v267;
          break;
        case 21:
          sub_231CCC4E4();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v268);
          v220 = &v269;
          break;
        case 22:
          sub_231CCC490();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v270);
          v220 = &v271;
          break;
        case 23:
          sub_231CCC43C();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v272);
          v220 = &v273;
          break;
        case 24:
          sub_231CCC3E8();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v274);
          v220 = &v275;
          break;
        case 25:
          sub_231CCC394();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v276);
          v220 = &v277;
          break;
        case 26:
          sub_231CCC340();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v278);
          v220 = &v279;
          break;
        case 27:
          sub_231CCC2EC();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v280);
          v220 = &v281;
          break;
        case 28:
          sub_231CCC298();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v282);
          v220 = &v283;
          break;
        case 29:
          sub_231CCC244();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v284);
          v220 = &v285;
          break;
        case 30:
          sub_231CCC1F0();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v286);
          v220 = &v287;
          break;
        default:
          sub_231CCCBC8();
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_17_3();
          v218 = OUTLINED_FUNCTION_6_4(&v227);
          v220 = v226;
          break;
      }

      v219(v218, *(v220 - 32));
      (*(v217 + 8))(v198, v191);
      __swift_destroy_boxed_opaque_existential_0(v285);
      goto LABEL_11;
    }

    v209 = v198;
    v210 = v286;
    v208 = v191;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_231CCE530(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C6176 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15_2();

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

uint64_t sub_231CCE614(char a1)
{
  sub_231E12220();
  MEMORY[0x23837D730](a1 & 1);
  return sub_231E12250();
}

uint64_t sub_231CCE65C(char a1)
{
  if (a1)
  {
    return 0x64696C61766E69;
  }

  else
  {
    return 0x64696C6176;
  }
}

uint64_t sub_231CCE690(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_231E12100();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_231CCE704(_BYTE *a1@<X8>)
{
  sub_231CCCC1C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_231CCE770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231CCE530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231CCE7A0()
{
  sub_231CCF1B4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCE7D8()
{
  sub_231CCF1B4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCE810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231CCE690(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231CCE83C()
{
  sub_231CCF208();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCE874()
{
  sub_231CCF208();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCE8AC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = j__swift_bridgeObjectRelease(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_231CCE8E4()
{
  sub_231CCF2B0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCE91C()
{
  sub_231CCF2B0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

void sub_231CCE954()
{
  OUTLINED_FUNCTION_35_1();
  v34 = v0;
  v2 = v1;
  v31 = v3;
  v35[0] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743F0, &qword_231E13D18);
  v5 = OUTLINED_FUNCTION_24(v4);
  v32 = v6;
  v33 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743F8, &qword_231E13D20);
  OUTLINED_FUNCTION_24(v30);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74400, &qword_231E13D28);
  OUTLINED_FUNCTION_24(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v24);
  v26 = &v29 - v25;
  v27 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_231CCF1B4();
  sub_231E12270();
  if (v35[0] == 31)
  {
    sub_231CCF2B0();
    sub_231E12000();
    (*(v13 + 8))(v18, v30);
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    sub_231CCF208();
    sub_231E12000();
    sub_231CCF25C();
    v28 = v33;
    sub_231E12090();
    (*(v32 + 8))(v11, v28);
  }

  (*(v21 + 8))(v26, v19);
  OUTLINED_FUNCTION_33_0();
}

void sub_231CCEC24()
{
  OUTLINED_FUNCTION_35_1();
  v58 = v0;
  v2 = v1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74410, &qword_231E13D30);
  OUTLINED_FUNCTION_24(v57);
  v55 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74418, &qword_231E13D38);
  OUTLINED_FUNCTION_24(v9);
  v54 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74420, &qword_231E13D40);
  OUTLINED_FUNCTION_24(v16);
  v56 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v20);
  v21 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_231CCF1B4();
  v22 = v58;
  sub_231E12260();
  if (v22)
  {
    goto LABEL_9;
  }

  v52 = v9;
  v53 = v15;
  v58 = v8;
  v23 = v57;
  v24 = sub_231E11FE0();
  v25 = sub_231CCF16C(v24, 0);
  if (v27 == v28 >> 1)
  {
    v29 = v2;
LABEL_8:
    v38 = sub_231E11DC0();
    swift_allocError();
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E8, &qword_231E13D10) + 48);
    *v40 = &unk_2846F0970;
    sub_231E11F40();
    OUTLINED_FUNCTION_32_0();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v42 = *(v56 + 8);
    v43 = OUTLINED_FUNCTION_19_1();
    v44(v43);
    v2 = v29;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v2);
LABEL_10:
    OUTLINED_FUNCTION_33_0();
    return;
  }

  if (v27 < (v28 >> 1))
  {
    v29 = v2;
    v59 = *(v26 + v27);
    v30 = sub_231CCF304(v27 + 1, v28 >> 1, v25, v26, v27, v28);
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    v35 = v55;
    if (v32 == v34 >> 1)
    {
      v51 = v30;
      if (v59)
      {
        OUTLINED_FUNCTION_31_0();
        sub_231CCF208();
        v36 = v58;
        OUTLINED_FUNCTION_34_0();
        v37 = v56;
        sub_231CCF380();
        sub_231E11FD0();
        swift_unknownObjectRelease();
        (*(v35 + 8))(v36, v23);
        v48 = *(v37 + 8);
      }

      else
      {
        sub_231CCF2B0();
        v45 = v53;
        OUTLINED_FUNCTION_34_0();
        v46 = v56;
        swift_unknownObjectRelease();
        (*(v54 + 8))(v45, v52);
        v47 = *(v46 + 8);
      }

      v49 = OUTLINED_FUNCTION_19_1();
      v50(v49);
      __swift_destroy_boxed_opaque_existential_0(v29);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_231CCF124(_BYTE *a1@<X8>)
{
  sub_231CCEC24();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_231CCF16C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_231CCF1B4()
{
  result = qword_27DD760E0;
  if (!qword_27DD760E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760E0);
  }

  return result;
}

unint64_t sub_231CCF208()
{
  result = qword_27DD760E8;
  if (!qword_27DD760E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760E8);
  }

  return result;
}

unint64_t sub_231CCF25C()
{
  result = qword_27DD74408;
  if (!qword_27DD74408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74408);
  }

  return result;
}

unint64_t sub_231CCF2B0()
{
  result = qword_27DD760F0[0];
  if (!qword_27DD760F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD760F0);
  }

  return result;
}

uint64_t sub_231CCF304(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_231CCF380()
{
  result = qword_27DD74428;
  if (!qword_27DD74428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74428);
  }

  return result;
}

unint64_t sub_231CCF3D8()
{
  result = qword_27DD74430;
  if (!qword_27DD74430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74430);
  }

  return result;
}

uint64_t sub_231CCF42C(uint64_t result, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_155();
  }

  if (a2 < 0xE1)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 0x1F;
    v8 = v6 - 31;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 31;
    if (a2 + 31 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = (*result | (v5 << 8)) - 31;
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_231CCF4D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 31;
  if (a3 + 31 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xE1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xE0)
  {
    v7 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    switch(v6)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v7);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v7);
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v7);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 31);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231CCF598(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x1F)
  {
    return v1 - 30;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_231CCF5AC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 30;
  }

  return result;
}

uint64_t _s6OriginOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_231CCF65C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
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
          result = OUTLINED_FUNCTION_18_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t _s22ProactiveSummarization22SummarizationAnalyticsC8IntervalO18CompleteCodingKeysOwet_0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_155();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_156(a1);
}

_BYTE *sub_231CCF780(_BYTE *result, int a2, int a3)
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

uint64_t sub_231CCF830(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_231CCF8BC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
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
          result = OUTLINED_FUNCTION_18_1(result, a2 + 30);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231CCFAFC()
{
  result = qword_27DD78400[0];
  if (!qword_27DD78400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78400);
  }

  return result;
}

unint64_t sub_231CCFB54()
{
  result = qword_27DD78610[0];
  if (!qword_27DD78610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78610);
  }

  return result;
}

unint64_t sub_231CCFBAC()
{
  result = qword_27DD78920[0];
  if (!qword_27DD78920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78920);
  }

  return result;
}

unint64_t sub_231CCFC04()
{
  result = qword_27DD78A30;
  if (!qword_27DD78A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78A30);
  }

  return result;
}

unint64_t sub_231CCFC5C()
{
  result = qword_27DD78A38[0];
  if (!qword_27DD78A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78A38);
  }

  return result;
}

unint64_t sub_231CCFCB4()
{
  result = qword_27DD78AC0;
  if (!qword_27DD78AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78AC0);
  }

  return result;
}

unint64_t sub_231CCFD0C()
{
  result = qword_27DD78AC8[0];
  if (!qword_27DD78AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78AC8);
  }

  return result;
}

unint64_t sub_231CCFD64()
{
  result = qword_27DD78B50;
  if (!qword_27DD78B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78B50);
  }

  return result;
}

unint64_t sub_231CCFDBC()
{
  result = qword_27DD78B58[0];
  if (!qword_27DD78B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78B58);
  }

  return result;
}

unint64_t sub_231CCFE14()
{
  result = qword_27DD78BE0;
  if (!qword_27DD78BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78BE0);
  }

  return result;
}

unint64_t sub_231CCFE6C()
{
  result = qword_27DD78BE8[0];
  if (!qword_27DD78BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78BE8);
  }

  return result;
}

unint64_t sub_231CCFEC4()
{
  result = qword_27DD78C70;
  if (!qword_27DD78C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78C70);
  }

  return result;
}

unint64_t sub_231CCFF1C()
{
  result = qword_27DD78C78;
  if (!qword_27DD78C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78C78);
  }

  return result;
}

unint64_t sub_231CCFF74()
{
  result = qword_27DD78D00;
  if (!qword_27DD78D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78D00);
  }

  return result;
}

unint64_t sub_231CCFFCC()
{
  result = qword_27DD78D08[0];
  if (!qword_27DD78D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78D08);
  }

  return result;
}

unint64_t sub_231CD0024()
{
  result = qword_27DD78D90;
  if (!qword_27DD78D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78D90);
  }

  return result;
}

unint64_t sub_231CD007C()
{
  result = qword_27DD78D98[0];
  if (!qword_27DD78D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78D98);
  }

  return result;
}

unint64_t sub_231CD00D4()
{
  result = qword_27DD78E20;
  if (!qword_27DD78E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78E20);
  }

  return result;
}

unint64_t sub_231CD012C()
{
  result = qword_27DD78E28[0];
  if (!qword_27DD78E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78E28);
  }

  return result;
}

unint64_t sub_231CD0184()
{
  result = qword_27DD78EB0;
  if (!qword_27DD78EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78EB0);
  }

  return result;
}

unint64_t sub_231CD01DC()
{
  result = qword_27DD78EB8[0];
  if (!qword_27DD78EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78EB8);
  }

  return result;
}

unint64_t sub_231CD0234()
{
  result = qword_27DD78F40;
  if (!qword_27DD78F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78F40);
  }

  return result;
}

unint64_t sub_231CD028C()
{
  result = qword_27DD78F48[0];
  if (!qword_27DD78F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78F48);
  }

  return result;
}

unint64_t sub_231CD02E4()
{
  result = qword_27DD78FD0;
  if (!qword_27DD78FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78FD0);
  }

  return result;
}

unint64_t sub_231CD033C()
{
  result = qword_27DD78FD8[0];
  if (!qword_27DD78FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78FD8);
  }

  return result;
}

unint64_t sub_231CD0394()
{
  result = qword_27DD79060;
  if (!qword_27DD79060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79060);
  }

  return result;
}

unint64_t sub_231CD03EC()
{
  result = qword_27DD79068[0];
  if (!qword_27DD79068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79068);
  }

  return result;
}

unint64_t sub_231CD0444()
{
  result = qword_27DD790F0;
  if (!qword_27DD790F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD790F0);
  }

  return result;
}

unint64_t sub_231CD049C()
{
  result = qword_27DD790F8[0];
  if (!qword_27DD790F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD790F8);
  }

  return result;
}

unint64_t sub_231CD04F4()
{
  result = qword_27DD79180;
  if (!qword_27DD79180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79180);
  }

  return result;
}

unint64_t sub_231CD054C()
{
  result = qword_27DD79188[0];
  if (!qword_27DD79188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79188);
  }

  return result;
}

unint64_t sub_231CD05A4()
{
  result = qword_27DD79210;
  if (!qword_27DD79210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79210);
  }

  return result;
}

unint64_t sub_231CD05FC()
{
  result = qword_27DD79218[0];
  if (!qword_27DD79218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79218);
  }

  return result;
}

unint64_t sub_231CD0654()
{
  result = qword_27DD792A0;
  if (!qword_27DD792A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD792A0);
  }

  return result;
}

unint64_t sub_231CD06AC()
{
  result = qword_27DD792A8[0];
  if (!qword_27DD792A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD792A8);
  }

  return result;
}

unint64_t sub_231CD0704()
{
  result = qword_27DD79330;
  if (!qword_27DD79330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79330);
  }

  return result;
}

unint64_t sub_231CD075C()
{
  result = qword_27DD79338[0];
  if (!qword_27DD79338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79338);
  }

  return result;
}

unint64_t sub_231CD07B4()
{
  result = qword_27DD793C0;
  if (!qword_27DD793C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD793C0);
  }

  return result;
}

unint64_t sub_231CD080C()
{
  result = qword_27DD793C8[0];
  if (!qword_27DD793C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD793C8);
  }

  return result;
}

unint64_t sub_231CD0864()
{
  result = qword_27DD79450;
  if (!qword_27DD79450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79450);
  }

  return result;
}

unint64_t sub_231CD08BC()
{
  result = qword_27DD79458[0];
  if (!qword_27DD79458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79458);
  }

  return result;
}

unint64_t sub_231CD0914()
{
  result = qword_27DD794E0;
  if (!qword_27DD794E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD794E0);
  }

  return result;
}

unint64_t sub_231CD096C()
{
  result = qword_27DD794E8[0];
  if (!qword_27DD794E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD794E8);
  }

  return result;
}

unint64_t sub_231CD09C4()
{
  result = qword_27DD79570;
  if (!qword_27DD79570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79570);
  }

  return result;
}

unint64_t sub_231CD0A1C()
{
  result = qword_27DD79578;
  if (!qword_27DD79578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79578);
  }

  return result;
}

unint64_t sub_231CD0A74()
{
  result = qword_27DD79600;
  if (!qword_27DD79600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79600);
  }

  return result;
}

unint64_t sub_231CD0ACC()
{
  result = qword_27DD79608[0];
  if (!qword_27DD79608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79608);
  }

  return result;
}

unint64_t sub_231CD0B24()
{
  result = qword_27DD79690;
  if (!qword_27DD79690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79690);
  }

  return result;
}

unint64_t sub_231CD0B7C()
{
  result = qword_27DD79698[0];
  if (!qword_27DD79698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79698);
  }

  return result;
}

unint64_t sub_231CD0BD4()
{
  result = qword_27DD79720;
  if (!qword_27DD79720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79720);
  }

  return result;
}

unint64_t sub_231CD0C2C()
{
  result = qword_27DD79728[0];
  if (!qword_27DD79728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79728);
  }

  return result;
}

unint64_t sub_231CD0C84()
{
  result = qword_27DD797B0;
  if (!qword_27DD797B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD797B0);
  }

  return result;
}

unint64_t sub_231CD0CDC()
{
  result = qword_27DD797B8[0];
  if (!qword_27DD797B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD797B8);
  }

  return result;
}

unint64_t sub_231CD0D34()
{
  result = qword_27DD79840;
  if (!qword_27DD79840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79840);
  }

  return result;
}

unint64_t sub_231CD0D8C()
{
  result = qword_27DD79848[0];
  if (!qword_27DD79848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79848);
  }

  return result;
}

unint64_t sub_231CD0DE4()
{
  result = qword_27DD798D0;
  if (!qword_27DD798D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD798D0);
  }

  return result;
}

unint64_t sub_231CD0E3C()
{
  result = qword_27DD798D8[0];
  if (!qword_27DD798D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD798D8);
  }

  return result;
}

unint64_t sub_231CD0E94()
{
  result = qword_27DD79960;
  if (!qword_27DD79960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79960);
  }

  return result;
}

unint64_t sub_231CD0EEC()
{
  result = qword_27DD79968[0];
  if (!qword_27DD79968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79968);
  }

  return result;
}

unint64_t sub_231CD0F44()
{
  result = qword_27DD799F0;
  if (!qword_27DD799F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD799F0);
  }

  return result;
}

unint64_t sub_231CD0F9C()
{
  result = qword_27DD799F8[0];
  if (!qword_27DD799F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD799F8);
  }

  return result;
}

unint64_t sub_231CD0FF4()
{
  result = qword_27DD79A80;
  if (!qword_27DD79A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79A80);
  }

  return result;
}

unint64_t sub_231CD104C()
{
  result = qword_27DD79A88[0];
  if (!qword_27DD79A88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79A88);
  }

  return result;
}

unint64_t sub_231CD10A4()
{
  result = qword_27DD79B10;
  if (!qword_27DD79B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79B10);
  }

  return result;
}

unint64_t sub_231CD10FC()
{
  result = qword_27DD79B18[0];
  if (!qword_27DD79B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79B18);
  }

  return result;
}

unint64_t sub_231CD1154()
{
  result = qword_27DD79BA0;
  if (!qword_27DD79BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79BA0);
  }

  return result;
}

unint64_t sub_231CD11AC()
{
  result = qword_27DD79BA8[0];
  if (!qword_27DD79BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79BA8);
  }

  return result;
}

unint64_t sub_231CD1204()
{
  result = qword_27DD79C30;
  if (!qword_27DD79C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79C30);
  }

  return result;
}

unint64_t sub_231CD125C()
{
  result = qword_27DD79C38[0];
  if (!qword_27DD79C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79C38);
  }

  return result;
}

unint64_t sub_231CD12B4()
{
  result = qword_27DD79CC0;
  if (!qword_27DD79CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79CC0);
  }

  return result;
}

unint64_t sub_231CD130C()
{
  result = qword_27DD79CC8[0];
  if (!qword_27DD79CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79CC8);
  }

  return result;
}

unint64_t sub_231CD1364()
{
  result = qword_27DD79D50;
  if (!qword_27DD79D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79D50);
  }

  return result;
}

unint64_t sub_231CD13BC()
{
  result = qword_27DD79D58[0];
  if (!qword_27DD79D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79D58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_231E11F30();
}

uint64_t OUTLINED_FUNCTION_17_3()
{
  v2 = *(v0 - 864);

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_231E11DB0();
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return sub_231E11F30();
}

uint64_t sub_231CD1550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a3;
  v92 = sub_231E107F0();
  v5 = OUTLINED_FUNCTION_24(v92);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v91 = v11 - v10;
  OUTLINED_FUNCTION_3_0();
  v90 = sub_231E10EE0();
  v12 = OUTLINED_FUNCTION_24(v90);
  v93 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  v77 = v17 - v16;
  OUTLINED_FUNCTION_3_0();
  v18 = sub_231E10210();
  v19 = OUTLINED_FUNCTION_24(v18);
  v88 = v20;
  v89 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_1();
  v79 = v24 - v23;
  OUTLINED_FUNCTION_3_0();
  v25 = sub_231E0F950();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_4_1();
  v86 = v28 - v27;
  OUTLINED_FUNCTION_3_0();
  v84 = sub_231E10400();
  v29 = OUTLINED_FUNCTION_24(v84);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_1();
  v36 = v35 - v34;
  v37 = sub_231E113F0();
  v38 = OUTLINED_FUNCTION_24(v37);
  v87 = v39;
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v38);
  v44 = v75 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = v75 - v45;
  sub_231E100E0();
  (*(*a1 + 168))(v36, a2);
  (*(v31 + 8))(v36, v84);
  v47 = sub_231E10150();
  v95 = a1;
  v96 = a2;
  v48 = sub_231CD1BA8(sub_231CD1B30, v94, v47);

  v49 = sub_231E102B0();
  v50 = sub_231E10000();
  v80 = v51;
  v81 = v50;
  v52 = *(v87 + 16);
  v82 = v44;
  v83 = v46;
  v84 = v37;
  v52(v44, v46, v37);
  sub_231E101B0();
  v53 = sub_231E102D0();
  v55 = v54;
  v56 = v79;
  sub_231E10220();
  v57 = sub_231E10200();
  v78 = v58;
  (*(v88 + 8))(v56, v89);
  v59 = sub_231E100A0();
  v60 = *(v59 + 16);
  if (v60)
  {
    v75[1] = v57;
    v75[2] = v55;
    v75[3] = v53;
    v76 = v49;
    v79 = v48;
    v97 = MEMORY[0x277D84F90];
    v61 = v59;
    sub_231CD25B8(0, v60, 0);
    v62 = v77;
    v63 = v97;
    v65 = *(v7 + 16);
    v64 = v7 + 16;
    v89 = v65;
    v66 = (*(v64 + 64) + 32) & ~*(v64 + 64);
    v75[0] = v61;
    v67 = v61 + v66;
    v88 = *(v64 + 56);
    v68 = (v64 - 8);
    do
    {
      v69 = v91;
      v70 = v92;
      v71 = v64;
      v89(v91, v67, v92);
      sub_231DC4964();
      (*v68)(v69, v70);
      v97 = v63;
      v73 = *(v63 + 16);
      v72 = *(v63 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_231CD25B8(v72 > 1, v73 + 1, 1);
        v63 = v97;
      }

      *(v63 + 16) = v73 + 1;
      (*(v93 + 32))(v63 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v73, v62, v90);
      v67 += v88;
      --v60;
      v64 = v71;
    }

    while (v60);
  }

  sub_231E10F60();
  return (*(v87 + 8))(v83, v84);
}

uint64_t sub_231CD1B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(v2 + 16) + 168))(a1, *(v2 + 24));
  v4 = sub_231E113F0();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

size_t sub_231CD1BA8(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74448, &unk_231E171C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_231E113F0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v33 = &v29 - v15;
  v16 = 0;
  v17 = *(a3 + 16);
  v31 = v18;
  v34 = (v18 + 32);
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v17 == v16)
    {
      return v35;
    }

    v19 = *(sub_231E10400() - 8);
    a1(a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_231CD2860(v9);
      ++v16;
    }

    else
    {
      v32 = *v34;
      v32(v33, v9, v10);
      v32(v14, v33, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_231CD22F4(0, *(v35 + 16) + 1, 1, v35);
      }

      v22 = *(v35 + 16);
      v21 = *(v35 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v29 = v22 + 1;
        v26 = sub_231CD22F4(v21 > 1, v22 + 1, 1, v35);
        v23 = v29;
        v35 = v26;
      }

      ++v16;
      v24 = v35;
      *(v35 + 16) = v23;
      v25 = v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v22;
      v14 = v30;
      v32(v25, v30, v10);
    }
  }

  v27 = v35;

  return v27;
}

uint64_t sub_231CD1EC0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_231E113F0();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x277D84F90];
  sub_231CD2650(0, v10, 0);
  v11 = v23;
  v12 = *(sub_231E10400() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19 = v6 + 32;
  v18 = *(v12 + 72);
  while (1)
  {
    v21(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_231CD2650(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v20);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231CD20C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_231E0F950();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_4_1();
  v6 = sub_231E10400();
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  v14 = v13 - v12;
  v15 = sub_231E113F0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_4_1();
  sub_231E10000();
  sub_231E0FF80();
  (*(*a1 + 168))(v14, a2);
  (*(v9 + 8))(v14, v6);
  v17 = sub_231E0FF90();
  v20 = a1;
  v21 = a2;
  sub_231CD1EC0(sub_231CD2600, v19, v17);

  sub_231E0FFA0();
  sub_231E0FFC0();
  sub_231E0FFE0();
  sub_231E0FFB0();
  return sub_231E10F60();
}

size_t sub_231CD22F4(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_231CD23F4(v8, v7);
  v10 = *(sub_231E113F0() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_231CD24F0(a4 + v11, v8, v9 + v11, MEMORY[0x277D4B3B8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_231CD23F4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74438, &qword_231E15C08);
  v4 = *(sub_231E113F0() - 8);
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

uint64_t sub_231CD24F0(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_231CD25B8(size_t a1, int64_t a2, char a3)
{
  result = sub_231CD2698(a1, a2, a3, *v3, &qword_27DD74440, &unk_231E15C10, MEMORY[0x277D4AF58], MEMORY[0x277D4AF58]);
  *v3 = result;
  return result;
}

size_t sub_231CD2650(size_t a1, int64_t a2, char a3)
{
  result = sub_231CD2698(a1, a2, a3, *v3, &qword_27DD74438, &qword_231E15C08, MEMORY[0x277D4B3B8], MEMORY[0x277D4B3B8]);
  *v3 = result;
  return result;
}

size_t sub_231CD2698(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    sub_231CD24F0(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_231CD2860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74448, &unk_231E171C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_231CD28C8@<X0>(void *__src@<X0>, float *a2@<X8>, float a3@<S0>)
{
  memcpy(&__srca[4], __src, 0x60uLL);
  *a2 = a3;
  return memcpy(a2 + 1, __srca, 0x64uLL);
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization24InferenceEnvironmentInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231CD2950(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 104))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231CD29B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_231CD2A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v9 = a3;
  v13 = a3 >> 8;
  OUTLINED_FUNCTION_148(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, __src[0], *&__src[3]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v9;
  *(a9 + 17) = v13;
  return memcpy((a9 + 18), __src, 0x66uLL);
}

void *sub_231CD2A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v9 = a5;
  v10 = a3;
  v14 = a3 >> 8;
  OUTLINED_FUNCTION_148(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, __src[0], *&__src[3]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v10;
  *(a9 + 17) = v14;
  result = memcpy((a9 + 18), __src, 0x66uLL);
  *(a9 + 120) = v9;
  return result;
}

void *sub_231CD2B00@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  memcpy(__dst, (a1 + 32), sizeof(__dst));
  v4 = *a1;
  __src[0] = *(a1 + 8);
  LOWORD(__src[1]) = *(a1 + 24);
  memcpy(&__src[1] + 8, (a1 + 32), 0x60uLL);
  sub_231CD2BC0(&v9, v6);
  sub_231CE1054(__dst, v6, &qword_27DD74450, &qword_231E15C20);
  sub_231CD2C1C(a1);
  result = memcpy(a2, __src, 0x78uLL);
  a2[120] = v4;
  return result;
}

void *sub_231CD2C70@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  memcpy(&__dst[120], a2, 0x79uLL);
  memcpy(__dst, a1, 0x78uLL);
  result = memcpy(a5, __dst, 0xF8uLL);
  *(a5 + 248) = a6;
  *(a5 + 256) = a3;
  *(a5 + 264) = a4;
  return result;
}

uint64_t sub_231CD2CF8(const void *a1)
{
  v2 = swift_allocObject();
  sub_231CD2D38(a1);
  return v2;
}

uint64_t sub_231CD2D38(const void *a1)
{
  _s14descr2846EFBA1C23InMemoryMailResultCacheCMa();
  *(v1 + 144) = sub_231CC364C(10000, 150.0, 300.0);
  memcpy((v1 + 16), a1, 0x80uLL);
  return v1;
}

uint64_t sub_231CD2DA0()
{
  OUTLINED_FUNCTION_18();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  OUTLINED_FUNCTION_127(v7);
  v8 = sub_231E10AE0();
  v1[9] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_55();
  v12 = sub_231E10BE0();
  v1[12] = v12;
  OUTLINED_FUNCTION_6(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_55();
  v16 = sub_231E10A30();
  v1[15] = v16;
  OUTLINED_FUNCTION_6(v16);
  v1[16] = v17;
  v19 = *(v18 + 64);
  v1[17] = OUTLINED_FUNCTION_55();
  v20 = sub_231E106A0();
  v1[18] = v20;
  OUTLINED_FUNCTION_6(v20);
  v1[19] = v21;
  v23 = *(v22 + 64);
  v1[20] = OUTLINED_FUNCTION_55();
  v24 = sub_231E10340();
  v1[21] = v24;
  OUTLINED_FUNCTION_6(v24);
  v1[22] = v25;
  v27 = *(v26 + 64);
  v1[23] = OUTLINED_FUNCTION_55();
  v28 = type metadata accessor for EntityKind();
  v1[24] = v28;
  OUTLINED_FUNCTION_47(v28);
  v30 = *(v29 + 64);
  v1[25] = OUTLINED_FUNCTION_55();
  v31 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_231CD2FA0()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[24];
  sub_231CD3AE0(v0[3], v0[25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[25];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v0[19] + 32))(v0[20], v3, v0[18]);
      v45 = swift_task_alloc();
      v0[27] = v45;
      *v45 = v0;
      v45[1] = sub_231CD346C;
      v46 = v0[20];
      v47 = v0[7];
      v48 = v0[8];
      v49 = v0[5];
      v50 = v0[6];
      v51 = v0[4];
      v52 = OUTLINED_FUNCTION_13_2();

      result = sub_231CD3E20(v52, v53, v54, v55, v56, v57);
      break;
    case 2:
      v31 = v0[17];
      v32 = v0[15];
      v33 = OUTLINED_FUNCTION_126(v0[16]);
      v34(v33);
      sub_231E10A20();
      OUTLINED_FUNCTION_81_0();
      v0[28] = v35;
      v36 = swift_task_alloc();
      v0[29] = v36;
      *v36 = v0;
      v36[1] = sub_231CD35FC;
      v37 = v0[8];
      OUTLINED_FUNCTION_9_3();

      result = sub_231CD45F4();
      break;
    case 3:
      v38 = v0[14];
      v39 = v0[12];
      v40 = OUTLINED_FUNCTION_126(v0[13]);
      v41(v40);
      sub_231E10BC0();
      OUTLINED_FUNCTION_81_0();
      v0[30] = v42;
      v43 = swift_task_alloc();
      v0[31] = v43;
      *v43 = v0;
      v43[1] = sub_231CD37A0;
      v44 = v0[8];
      OUTLINED_FUNCTION_9_3();

      result = sub_231CD48E0();
      break;
    case 4:
      (*(v0[10] + 32))(v0[11], v3, v0[9]);
      v18 = swift_task_alloc();
      v0[32] = v18;
      *v18 = v0;
      v18[1] = sub_231CD394C;
      v19 = v0[11];
      v20 = v0[7];
      v21 = v0[8];
      v22 = v0[5];
      v23 = v0[6];
      v24 = v0[4];
      v25 = OUTLINED_FUNCTION_13_2();

      result = sub_231CD4364(v25, v26, v27, v28, v29, v30);
      break;
    default:
      (*(v0[22] + 32))(v0[23], v3, v0[21]);
      v4 = swift_task_alloc();
      v0[26] = v4;
      *v4 = v0;
      v4[1] = sub_231CD32DC;
      v5 = v0[23];
      v6 = v0[7];
      v7 = v0[8];
      v8 = v0[5];
      v9 = v0[6];
      v10 = v0[4];
      v11 = OUTLINED_FUNCTION_13_2();

      result = sub_231CD3B44(v11, v12, v13, v14, v15, v16);
      break;
  }

  return result;
}

uint64_t sub_231CD32DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 208);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231CD33C0()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[23];
  v2 = v0[25];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[14];
  v7 = OUTLINED_FUNCTION_88(v0[22]);
  v8(v7);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_231CD346C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 216);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231CD3550()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[20];
  v2 = v0[25];
  v3 = v0[23];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v7 = OUTLINED_FUNCTION_88(v0[19]);
  v8(v7);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_231CD35FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 232);
  v3 = *(v1 + 224);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231CD36FC()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[16];
  v2 = v0[17];
  OUTLINED_FUNCTION_89();
  v4 = v0[14];
  v3 = v0[15];
  v6 = OUTLINED_FUNCTION_88(v5);
  v7(v6);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_231CD37A0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231CD38A0()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[13];
  v2 = v0[14];
  OUTLINED_FUNCTION_89();
  v3 = v0[17];
  v4 = v0[11];
  (*(v5 + 8))(v2, v0[12]);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_231CD394C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 256);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231CD3A30()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  OUTLINED_FUNCTION_89();
  v4 = v0[17];
  v5 = v0[14];
  (*(v6 + 8))(v2);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_231CD3AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityKind();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CD3B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231CD3B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, char a12)
{
  OUTLINED_FUNCTION_59_1();
  v13 = v12[5];
  v14 = v12[3];
  sub_231E10120();
  v16 = v15;
  sub_231E10000();
  v18 = v17;
  sub_231E102F0();
  v20 = v19;
  if (v13)
  {
    v22 = v12[6];
    v21 = v12[7];
    v23 = v12[4];
    v24 = v12[5];
  }

  else
  {
    v25 = v12[8];
    v26 = v25[6];
    v24 = v25[7];
    v22 = v25[8];
    v21 = v25[9];
  }

  v12[9] = v22;
  v12[10] = v24;
  v12[11] = v21;
  v12[12] = v20;
  v12[13] = v18;
  v12[14] = v16;
  v27 = v21;
  v28 = v22;
  v29 = swift_task_alloc();
  v12[15] = v29;
  *v29 = v12;
  OUTLINED_FUNCTION_41_0(v29);
  OUTLINED_FUNCTION_27_1(v30);
  OUTLINED_FUNCTION_35();

  return sub_231CD4CF4(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_231CD3C98()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1[15];
  v3 = v1[14];
  v4 = v1[13];
  v5 = v1[12];
  v6 = v1[11];
  v7 = v1[10];
  v8 = v1[9];
  v9 = *v0;
  OUTLINED_FUNCTION_4();
  *v10 = v9;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_231CD3E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231CD3E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  v11 = v9[3];
  sub_231E10560();
  if (!v12)
  {
    v13 = v9[3];
    sub_231E10690();
  }

  v9[9] = v12;
  v14 = v9[3];
  sub_231E10560();
  if (v15)
  {

    v10 = 0;
  }

  else
  {
    v16 = v9[3];
    sub_231E10660();
    OUTLINED_FUNCTION_131();
  }

  v9[10] = v10;
  v17 = v9[5];
  if (v17)
  {
    v19 = v9[6];
    v18 = v9[7];
    v20 = v9[4];
  }

  else
  {
    v21 = v9[8];
    v22 = v21[10];
    v17 = v21[11];
    v19 = v21[12];
    v18 = v21[13];
  }

  v9[12] = v17;
  v9[13] = v18;
  v9[11] = v19;
  v23 = v18;
  v24 = v19;
  v25 = swift_task_alloc();
  v9[14] = v25;
  *v25 = v9;
  OUTLINED_FUNCTION_41_0(v25);
  OUTLINED_FUNCTION_27_1(v26);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_44();

  return sub_231CD58D0(v27, v28, v29, v30, v31, v32, v33, v34, a9);
}

uint64_t sub_231CD3F7C()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1[14];
  v3 = v1[13];
  v4 = v1[12];
  v5 = v1[11];
  v6 = v1[10];
  v7 = v1[9];
  v8 = *v0;
  OUTLINED_FUNCTION_4();
  *v9 = v8;

  OUTLINED_FUNCTION_19();

  return v10();
}

uint64_t sub_231CD40F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231CD4108()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[3];
  sub_231E10A20();
  OUTLINED_FUNCTION_81_0();
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_231CD41AC;
  v4 = v0[4];
  OUTLINED_FUNCTION_9_3();

  return sub_231CD45F4();
}

uint64_t sub_231CD41AC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_231CD42A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231CD42C0()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[3];
  sub_231E10BC0();
  OUTLINED_FUNCTION_81_0();
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_231CE177C;
  v4 = v0[4];
  OUTLINED_FUNCTION_9_3();

  return sub_231CD48E0();
}

uint64_t sub_231CD4364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231CD4384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  v11 = v9[5];
  v12 = v9[3];
  sub_231E10AD0();
  v14 = v13;
  sub_231E10AB0();
  OUTLINED_FUNCTION_131();
  if (v11)
  {
    v16 = v9[6];
    v15 = v9[7];
    v18 = v9[4];
    v17 = v9[5];
  }

  else
  {
    v19 = v9[8];
    v20 = v19[14];
    v17 = v19[15];
    v16 = v19[16];
    v15 = v19[17];
  }

  v9[9] = v16;
  v9[10] = v17;
  v9[11] = v15;
  v9[12] = v10;
  v9[13] = v14;
  v21 = v15;
  v22 = v16;
  v23 = swift_task_alloc();
  v9[14] = v23;
  *v23 = v9;
  OUTLINED_FUNCTION_41_0(v23);
  OUTLINED_FUNCTION_27_1(v24);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_44();

  return sub_231CD545C(v25, v26, v27, v28, v29, v30, v31, v32, a9);
}

uint64_t sub_231CD4480()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1[14];
  v3 = v1[13];
  v4 = v1[12];
  v5 = v1[11];
  v6 = v1[10];
  v7 = v1[9];
  v8 = *v0;
  OUTLINED_FUNCTION_4();
  *v9 = v8;

  OUTLINED_FUNCTION_19();

  return v10();
}

uint64_t sub_231CD45F4()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_231E0FD90();
  v1[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CD469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_47_0();
  v11 = v10[8];
  v12 = v10[5];
  v13 = sub_231CC78B4();
  v14 = *v13;
  v10[9] = v13[1];

  sub_231E0FD40();
  v16 = v12[2];
  v15 = v12[3];
  v18 = v12[4];
  v17 = v12[5];
  v19 = swift_task_alloc();
  v10[10] = v19;
  *v19 = v10;
  v19[1] = sub_231CD4784;
  v20 = v10[8];
  v21 = v10[4];
  v22 = v10[5];
  v23 = v10[3];
  OUTLINED_FUNCTION_27_1(v10[2]);
  OUTLINED_FUNCTION_66_0();

  return sub_231CD5DE8(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_231CD4784()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v2 = v1[10];
  v3 = v1[9];
  v4 = v1[8];
  v5 = v1[7];
  v6 = v1[6];
  v7 = *v0;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_25();
  v11(v10);

  OUTLINED_FUNCTION_19();

  return v12();
}

uint64_t sub_231CD48E0()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_69();
  v1[7] = swift_task_alloc();
  v8 = sub_231E0FD90();
  v1[8] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_55();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231CD49C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  v12 = v10[7];
  v11 = v10[8];
  v13 = sub_231CC78C0();
  v14 = *v13;
  v10[11] = v13[1];

  v15 = sub_231CC78D8();
  v16 = *v15;
  v17 = v15[1];

  sub_231E0FDA0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v11);
  v19 = v10[10];
  if (EnumTagSinglePayload == 1)
  {
    v21 = v10[7];
    v20 = v10[8];
    v22 = v10[6];
    v24 = *v15;
    v23 = v15[1];
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);

    sub_231E0FD10();
    if (__swift_getEnumTagSinglePayload(v21, 1, v20) != 1)
    {
      sub_231CE1118(v10[7], &qword_27DD74458, &qword_231E15D38);
    }
  }

  else
  {
    (*(v10[9] + 32))(v10[10], v10[7], v10[8]);
  }

  v28 = v10[5];
  v29 = v28[2];
  v30 = v28[3];
  v31 = v28[4];
  v32 = v28[5];
  v33 = swift_task_alloc();
  v10[12] = v33;
  *v33 = v10;
  v33[1] = sub_231CD4B60;
  v34 = v10[10];
  v35 = v10[4];
  v36 = v10[5];
  v37 = v10[3];
  OUTLINED_FUNCTION_27_1(v10[2]);
  OUTLINED_FUNCTION_44();

  return sub_231CD5DE8(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

uint64_t sub_231CD4B60()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[10];
  v5 = v1[9];
  v6 = v1[8];
  v7 = v1[7];
  v8 = v1[6];
  v9 = *v0;
  OUTLINED_FUNCTION_4();
  *v10 = v9;

  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_25();
  v13(v12);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_231CD4CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, char a12)
{
  OUTLINED_FUNCTION_18();
  *(v13 + 240) = a12;
  *(v13 + 112) = a11;
  *(v13 + 120) = v12;
  *(v13 + 80) = a9;
  *(v13 + 96) = a10;
  *(v13 + 64) = v14;
  *(v13 + 72) = v15;
  *(v13 + 48) = v16;
  *(v13 + 56) = v17;
  *(v13 + 32) = v18;
  *(v13 + 40) = v19;
  *(v13 + 16) = v20;
  *(v13 + 24) = v21;
  *(v13 + 128) = *v12;
  v22 = sub_231E10E30();
  *(v13 + 136) = v22;
  OUTLINED_FUNCTION_6(v22);
  *(v13 + 144) = v23;
  v25 = *(v24 + 64);
  *(v13 + 152) = OUTLINED_FUNCTION_55();
  v26 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  *(v13 + 160) = OUTLINED_FUNCTION_55();
  v29 = sub_231E0FD90();
  *(v13 + 168) = v29;
  OUTLINED_FUNCTION_6(v29);
  *(v13 + 176) = v30;
  v32 = *(v31 + 64);
  *(v13 + 184) = OUTLINED_FUNCTION_55();
  v33 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_144(v33, v34, v35);
}

uint64_t sub_231CD4E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50_0();
  v11 = v10[23];
  v12 = v10[10];
  sub_231E0FD20();
  if (v12)
  {
    v13 = v10[11];
    v14 = v10[12];
    v15 = v10[9];
    v16 = v10[10];
  }

  else
  {
    v17 = v10[15];
    v18 = v17[6];
    v16 = v17[7];
    v13 = v17[8];
    v14 = v17[9];
  }

  v10[25] = v16;
  v10[26] = v14;
  v10[24] = v13;
  v14;
  v19 = v13;
  OUTLINED_FUNCTION_49();
  v20 = swift_task_alloc();
  v10[27] = v20;
  *v20 = v10;
  v20[1] = sub_231CD4F44;
  v21 = v10[23];
  v22 = v10[15];
  v23 = v10[7];
  v24 = v10[8];
  v25 = v10[5];
  v26 = v10[6];
  OUTLINED_FUNCTION_27_1(v10[2]);
  OUTLINED_FUNCTION_106();

  return sub_231CD5DE8(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_231CD4F44()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1[27];
  v3 = v1[26];
  v4 = v1[25];
  v5 = v1[24];
  v6 = v1[23];
  v7 = v1[22];
  v8 = v1[21];
  v9 = *v0;
  OUTLINED_FUNCTION_4();
  *v10 = v9;

  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_25();
  v13(v12);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_106();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231CD50CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v14 = *(v12 + 32);
  if (v14 && (v15 = *(v12 + 24), v16 = sub_231DE8A04(1), sub_231CD6294(v16, v17, v15, v14), v18 = v16, v20 = v19, , (*(v12 + 224) = v20) != 0))
  {
    v21 = *(v12 + 160);
    v22 = *(v12 + 128);
    v23 = *(*(v12 + 120) + 144);
    sub_231CD62F8(*(v12 + 104), *(v12 + 112), *(v12 + 240), *(v12 + 16), v21);
    (*(*v23 + 128))(v21, v18, v20);
    sub_231CB4E90(v21);
    v24 = swift_task_alloc();
    *(v12 + 232) = v24;
    *v24 = v12;
    v24[1] = sub_231CD52FC;
    v25 = *(v12 + 120);
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_44();

    return sub_231CD45F4();
  }

  else
  {
    v29 = *(v12 + 144);
    v28 = *(v12 + 152);
    v30 = *(v12 + 136);
    v31 = *(v12 + 48);
    sub_231CB4EEC();
    v32 = OUTLINED_FUNCTION_18_2();
    v33(v32);

    v34 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_153();
    v35 = OUTLINED_FUNCTION_85();
    v37 = *(v12 + 144);
    v36 = *(v12 + 152);
    v38 = *(v12 + 136);
    if (v35)
    {
      v40 = *(v12 + 40);
      v39 = *(v12 + 48);
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a9 = OUTLINED_FUNCTION_28();
      *v13 = 136446210;
      v41 = OUTLINED_FUNCTION_54_0();
      *(v13 + 4) = sub_231CB5000(v41, v42, v43);
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v44, v45, "SpotlightWriter: Not writing mail result to notification, missing notification id, mail uniqueId: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v46 = *(v37 + 8);
    v47 = OUTLINED_FUNCTION_25();
    v48(v47);
    v49 = *(v12 + 184);
    v50 = *(v12 + 152);
    v51 = *(v12 + 160);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_44();

    return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }
}

uint64_t sub_231CD52FC()
{
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v6 = v1[23];
  v7 = v1[20];
  v8 = v1[19];

  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_231CD545C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v10[10] = a9;
  v10[11] = v9;
  v10[8] = v11;
  v10[9] = v12;
  v10[6] = v13;
  v10[7] = v14;
  v10[4] = v15;
  v10[5] = v16;
  v10[2] = v17;
  v10[3] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  v10[12] = OUTLINED_FUNCTION_69();
  v10[13] = swift_task_alloc();
  v22 = sub_231E0FD90();
  v10[14] = v22;
  OUTLINED_FUNCTION_6(v22);
  v10[15] = v23;
  v25 = *(v24 + 64);
  v10[16] = OUTLINED_FUNCTION_55();
  v26 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v26, v27, v28);
}

uint64_t sub_231CD5540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50_0();
  v12 = v10[13];
  v11 = v10[14];
  v13 = sub_231CC7FC8();
  v14 = *v13;
  v15 = v13[1];

  OUTLINED_FUNCTION_70();
  sub_231E0FDA0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v11);
  v17 = v10[16];
  if (EnumTagSinglePayload == 1)
  {
    v19 = v10[13];
    v18 = v10[14];
    v20 = v10[12];
    v22 = *v13;
    v21 = v13[1];
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);

    sub_231E0FD10();
    if (__swift_getEnumTagSinglePayload(v19, 1, v18) != 1)
    {
      sub_231CE1118(v10[13], &qword_27DD74458, &qword_231E15D38);
    }
  }

  else
  {
    v26 = v10[14];
    v27 = v10[13];
    v28 = OUTLINED_FUNCTION_126(v10[15]);
    v29(v28);
  }

  v30 = v10[8];
  if (v30)
  {
    v31 = v10[9];
    v32 = v10[10];
    v33 = v10[7];
  }

  else
  {
    v34 = v10[11];
    v35 = v34[14];
    v30 = v34[15];
    v31 = v34[16];
    v32 = v34[17];
  }

  v10[18] = v30;
  v10[19] = v32;
  v10[17] = v31;
  v32;
  v36 = v31;
  OUTLINED_FUNCTION_49();
  v37 = swift_task_alloc();
  v10[20] = v37;
  *v37 = v10;
  v37[1] = sub_231CD56FC;
  v38 = v10[16];
  v39 = v10[11];
  v40 = v10[5];
  v41 = v10[6];
  v42 = v10[3];
  v43 = v10[4];
  OUTLINED_FUNCTION_27_1(v10[2]);
  OUTLINED_FUNCTION_106();

  return sub_231CD5DE8(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10);
}

uint64_t sub_231CD56FC()
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_21();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = v1[17];
  v6 = v1[16];
  v7 = v1[15];
  v8 = v1[14];
  v9 = v1[13];
  v10 = v1[12];
  v11 = *v0;
  OUTLINED_FUNCTION_4();
  *v12 = v11;

  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_25();
  v15(v14);

  OUTLINED_FUNCTION_19();

  return v16();
}

uint64_t sub_231CD58D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v10[10] = a9;
  v10[11] = v9;
  v10[8] = v11;
  v10[9] = v12;
  v10[6] = v13;
  v10[7] = v14;
  v10[4] = v15;
  v10[5] = v16;
  v10[2] = v17;
  v10[3] = v18;
  v10[12] = *v9;
  v19 = sub_231E0FD90();
  v10[13] = v19;
  OUTLINED_FUNCTION_6(v19);
  v10[14] = v20;
  v22 = *(v21 + 64);
  v10[15] = OUTLINED_FUNCTION_55();
  v23 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v23, v24, v25);
}

uint64_t sub_231CD59A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50_0();
  v11 = v10[15];
  v12 = v10[8];
  sub_231E0FD70();
  if (v12)
  {
    v13 = v10[9];
    v14 = v10[10];
    v15 = v10[7];
    v16 = v10[8];
  }

  else
  {
    v17 = v10[11];
    v18 = v17[10];
    v16 = v17[11];
    v13 = v17[12];
    v14 = v17[13];
  }

  v10[17] = v16;
  v10[18] = v14;
  v10[16] = v13;
  v14;
  v19 = v13;
  OUTLINED_FUNCTION_49();
  v20 = swift_task_alloc();
  v10[19] = v20;
  *v20 = v10;
  v20[1] = sub_231CD5AA4;
  v21 = v10[15];
  v22 = v10[11];
  v23 = v10[5];
  v24 = v10[6];
  v25 = v10[3];
  v26 = v10[4];
  OUTLINED_FUNCTION_27_1(v10[2]);
  OUTLINED_FUNCTION_106();

  return sub_231CD5DE8(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_231CD5AA4()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1[19];
  v3 = v1[18];
  v4 = v1[17];
  v5 = v1[16];
  v6 = v1[15];
  v7 = v1[14];
  v8 = v1[13];
  v9 = *v0;
  OUTLINED_FUNCTION_4();
  *v10 = v9;

  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_25();
  v13(v12);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_106();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231CD5C2C()
{
  OUTLINED_FUNCTION_29();
  sub_231CD65F4(v0[3], v0[4]);
  OUTLINED_FUNCTION_81_0();
  v0[20] = v1;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_231CD5CD0;
  v3 = v0[11];
  OUTLINED_FUNCTION_9_3();

  return sub_231CD45F4();
}

uint64_t sub_231CD5CD0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1[21];
  v3 = v1[20];
  v4 = v1[15];
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_231CD5DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18();
  v12 = *v10;
  v11[11] = a10;
  v11[12] = v12;
  v11[9] = v13;
  v11[10] = a9;
  v11[7] = v14;
  v11[8] = v15;
  v11[5] = v16;
  v11[6] = v17;
  v11[3] = v18;
  v11[4] = v19;
  OUTLINED_FUNCTION_127(v20);
  v21 = sub_231E10E30();
  v11[13] = v21;
  OUTLINED_FUNCTION_6(v21);
  v11[14] = v22;
  v24 = *(v23 + 64);
  v11[15] = OUTLINED_FUNCTION_55();
  v25 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v25, v26, v27);
}

uint64_t sub_231CD5EB8()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = sub_231CD6450(*(v0 + 16), *(v0 + 56));
  *(v0 + 128) = v5;
  objc_allocWithZone(MEMORY[0x277CC34B0]);

  v6 = v5;
  OUTLINED_FUNCTION_49();

  v7 = OUTLINED_FUNCTION_94();
  *(v0 + 136) = v7;
  [v7 setIsUpdate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v8 = OUTLINED_FUNCTION_76();
  *(v0 + 144) = v8;
  OUTLINED_FUNCTION_48_0(v8, xmmword_231E13420);
  v9 = v7;
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_231CD5FE4;
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  OUTLINED_FUNCTION_106();

  return sub_231D5F40C(v15, v16, v17, v18, v19);
}

uint64_t sub_231CD5FE4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (!v0)
  {
    v9 = *(v3 + 144);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CD60E4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 128);

  v2 = *(v0 + 120);

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_231CD6148()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];

  sub_231CB4EEC();
  v8 = OUTLINED_FUNCTION_17_4();
  v9(v8);
  v10 = v1;
  v11 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_118_0();
  v12 = OUTLINED_FUNCTION_117();
  v13 = v0[20];
  if (v12)
  {
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_116(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_97(v15);
    OUTLINED_FUNCTION_40_0(&dword_231CAE000, v16, v17, "Could not write summarization status with error: %@");
    sub_231CE1118(v14, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v0[14] + 8))(v0[15], v0[13]);
  v18 = v0[15];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_231CD6294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x23837CC20](58, 0xE100000000000000);
  MEMORY[0x23837CC20](a3, a4);
}

uint64_t sub_231CD62F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, double *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = ~a3;
  v11 = sub_231E0FD90();
  v12 = OUTLINED_FUNCTION_24(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  v19 = v18 - v17;
  if (v10)
  {
    sub_231CC3500(a1, a2, a3);

    return sub_231CC3610(a1, a2, a3, a5);
  }

  else
  {
    sub_231E0FD20();
    v21 = sub_231CD6450(a4, v19);
    (*(v14 + 8))(v19, v11);
    return sub_231CC3610(v21, 0, 64, a5);
  }
}

id sub_231CD6450(double *a1, uint64_t a2)
{
  v4 = sub_231E0FD90();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v12 = v11 - v10;
  sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  (*(v7 + 16))(v12, a2, v4);
  v13 = sub_231CD6B44(v12);
  v14 = *(a1 + 15);
  v15 = *(a1 + 16);
  LODWORD(v12) = *(a1 + 240);
  v16 = *(a1 + 68);
  sub_231DE93AC();
  v17 = 0;
  if (v12 != 2)
  {
    v17 = sub_231E11910();
  }

  v18 = OUTLINED_FUNCTION_46_0();
  [v18 v19];

  memcpy(__dst, a1 + 18, sizeof(__dst));
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_78();
  sub_231DE9728(v20, v21, v22, v23);
  v24 = *a1;
  v25 = *(a1 + 1);
  v26 = *(a1 + 8);
  sub_231DE8F6C();
  memcpy(v34, a1 + 3, sizeof(v34));
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_78();
  sub_231DE9728(v27, v28, v29, v30);
  sub_231DE92E8(a1[31]);
  v31 = *(a1 + 32);
  if (v31)
  {
    sub_231CE0FE4(v31, v13);
  }

  v32 = *(a1 + 33);
  if (v32)
  {
    sub_231CE0F84(v32, v13);
  }

  return v13;
}

unint64_t sub_231CD65F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_231DE8A04(0);
  v6 = v5;
  v7 = sub_231D6F8B8(a1, a2);
  sub_231CD6294(v4, v6, v7, v8);

  return v4;
}

uint64_t sub_231CD6674()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  *(v1 + 104) = v3;
  v4 = sub_231E10E30();
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_6(v4);
  *(v1 + 40) = v5;
  v7 = *(v6 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_55();
  v8 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231CD673C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 104);
  v5 = sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  sub_231E0FD20();
  v6 = sub_231CD6B44(v1);
  OUTLINED_FUNCTION_150(v6);
  sub_231E10000();
  sub_231E102F0();
  v7 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v8 = OUTLINED_FUNCTION_93(v5);
  *(v0 + 72) = v8;
  [v8 setIsUpdate_];
  v9 = v3[6];
  v10 = v3[7];
  v11 = v3[8];
  v12 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v13 = OUTLINED_FUNCTION_76();
  *(v0 + 80) = v13;
  OUTLINED_FUNCTION_48_0(v13, xmmword_231E13420);
  v14 = v8;
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_8_3(v15);
  OUTLINED_FUNCTION_66_0();

  return sub_231D5F40C(v16, v17, v18, v19, v20);
}

uint64_t sub_231CD6894()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v9 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CD6994()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 64);

  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_231CD6A00()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_111();

  sub_231DC4AB8();
  v4 = OUTLINED_FUNCTION_17_4();
  v5(v4);
  v6 = v0;
  v7 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_118_0();
  v8 = OUTLINED_FUNCTION_117();
  v9 = v1[12];
  if (v8)
  {
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_116(5.7779e-34);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_97(v11);
    OUTLINED_FUNCTION_40_0(&dword_231CAE000, v12, v13, "Could not write smart replies status with error: %@");
    sub_231CE1118(v10, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v1[5] + 8))(v1[6], v1[4]);
  v15 = v1[6];
  v14 = v1[7];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

id sub_231CD6B44(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_231E0FD30();
  v4 = [v2 initWithContentType_];

  v5 = sub_231E0FD90();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_231CD6BE0()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  *(v1 + 104) = v3;
  v4 = sub_231E10E30();
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_6(v4);
  *(v1 + 40) = v5;
  v7 = *(v6 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_55();
  v8 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231CD6CA8()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 104);
  v5 = sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  sub_231E0FD70();
  v6 = sub_231CD6B44(v1);
  OUTLINED_FUNCTION_150(v6);
  sub_231E10690();
  sub_231E10660();
  v7 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v8 = OUTLINED_FUNCTION_93(v5);
  *(v0 + 72) = v8;
  [v8 setIsUpdate_];
  v9 = v3[10];
  v10 = v3[11];
  v11 = v3[12];
  v12 = v3[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v13 = OUTLINED_FUNCTION_76();
  *(v0 + 80) = v13;
  OUTLINED_FUNCTION_48_0(v13, xmmword_231E13420);
  v14 = v8;
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_8_3(v15);
  OUTLINED_FUNCTION_66_0();

  return sub_231D5F40C(v16, v17, v18, v19, v20);
}

uint64_t sub_231CD6E00()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v9 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CD6F00()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_111();

  sub_231CB4EEC();
  v4 = OUTLINED_FUNCTION_17_4();
  v5(v4);
  v6 = v0;
  v7 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_118_0();
  v8 = OUTLINED_FUNCTION_117();
  v9 = v1[12];
  if (v8)
  {
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_116(5.7779e-34);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_97(v11);
    OUTLINED_FUNCTION_40_0(&dword_231CAE000, v12, v13, "Could not write summarization status with error: %@");
    sub_231CE1118(v10, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v1[5] + 8))(v1[6], v1[4]);
  v15 = v1[6];
  v14 = v1[7];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_231CD7044()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v1[3] = v8;
  v9 = sub_231E0FD90();
  v1[10] = v9;
  OUTLINED_FUNCTION_6(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_55();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231CD70F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_47_0();
  v13 = v12[12];
  v14 = v12[9];
  v15 = sub_231CC78B4();
  v16 = *v15;
  v12[13] = v15[1];

  sub_231E0FD40();
  v35 = *(v14 + 16);
  v17 = *(v14 + 32);
  v18 = *(v14 + 40);
  v19 = sub_231E11530();
  v12[14] = v19;
  v20 = swift_task_alloc();
  v12[15] = v20;
  *v20 = v12;
  v20[1] = sub_231CD722C;
  v21 = v12[8];
  v22 = v12[9];
  v23 = v12[6];
  v24 = v12[7];
  v25 = v12[5];
  v26 = v12[4];
  v27 = v12[3];
  v37 = v12[12];
  v28 = OUTLINED_FUNCTION_27_1(v12[2]);

  return sub_231CD73B0(v28, v29, v30, v31, v19, v32, v33, v16, a9, a10, a11, a12);
}

uint64_t sub_231CD722C()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1[15];
  v3 = v1[14];
  v4 = v1[13];
  v5 = v1[12];
  v6 = v1[11];
  v7 = v1[10];
  v8 = *v0;
  OUTLINED_FUNCTION_4();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_19();

  return v10();
}

uint64_t sub_231CD73B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_18();
  *(v13 + 128) = a12;
  *(v13 + 136) = v12;
  *(v13 + 120) = a11;
  *(v13 + 104) = a10;
  *(v13 + 88) = a9;
  OUTLINED_FUNCTION_99(v14, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_231E10E30();
  *(v13 + 144) = v23;
  OUTLINED_FUNCTION_6(v23);
  *(v13 + 152) = v24;
  v26 = *(v25 + 64);
  *(v13 + 160) = OUTLINED_FUNCTION_55();
  v27 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_144(v27, v28, v29);
}

uint64_t sub_231CD7460()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  sub_231CD8860(*(v0 + 16), *(v0 + 24), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 96), *(v0 + 32));
  v6 = v5;
  *(v0 + 168) = v5;
  objc_allocWithZone(MEMORY[0x277CC34B0]);

  v7 = v6;
  OUTLINED_FUNCTION_49();

  v8 = OUTLINED_FUNCTION_94();
  *(v0 + 176) = v8;
  [v8 setIsUpdate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v9 = OUTLINED_FUNCTION_76();
  *(v0 + 184) = v9;
  OUTLINED_FUNCTION_48_0(v9, xmmword_231E13420);
  v10 = v8;
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *v11 = v0;
  v11[1] = sub_231CD7598;
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v14 = *(v0 + 104);
  v15 = *(v0 + 112);
  OUTLINED_FUNCTION_106();

  return sub_231D5F40C(v16, v17, v18, v19, v20);
}