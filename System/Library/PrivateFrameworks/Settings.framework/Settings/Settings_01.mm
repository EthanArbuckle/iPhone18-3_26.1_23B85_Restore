_OWORD *sub_21CDFA678(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_21CDFA688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FEF0, &qword_21CE70278);
    v3 = sub_21CE6D390();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21CE66850(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CDFA7D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21CE6D390();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_21CE66850(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CDFA8FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21CE6D390();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21CE66850(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21CDFA9F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaneRecipe();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CDFAA5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21CDFAAEC(uint64_t result, uint64_t a2, char *__dst, size_t __size)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__source = result;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      if (__dst)
      {
        v5 = __source;
        return strlcpy(__dst, v5, __size);
      }

      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    if ((result & 0x1000000000000000) != 0)
    {
      if (__dst)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        return strlcpy(__dst, v5, __size);
      }

      goto LABEL_13;
    }
  }

  result = sub_21CE6D280();
  if (!v4)
  {
    return v8;
  }

  return result;
}

void sub_21CDFABA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = sub_21CE6CC10();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CE6B960();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = v48 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDC0, &qword_21CE6F630);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v54 = *(v9 + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21CE702B0;
  v52 = *(v10 + 16);
  v53 = v10 + 16;
  v52(v17 + v16, a2, v8);
  v57 = a3;

  sub_21CE3BA04(v17);
  v18 = v57;
  v19 = *(v57 + 16);
  if (v19)
  {
    v57 = MEMORY[0x277D84F90];
    sub_21CDE4558(0, v19, 0);
    v20 = v57;
    v48[1] = v18;
    v21 = v18 + v16;
    v50 = (v10 + 8);
    v51 = (v5 + 16);
    v22 = v49;
    do
    {
      v23 = v55;
      v24 = v52;
      v52(v55, v21, v8);
      v24(v14, v23, v8);
      if (qword_2812132E8 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v22, qword_2812132F0);
      (*v51)(v56, v25, v22);
      v26 = v14;
      v27 = sub_21CE6CC60();
      v29 = v28;
      v30 = v8;
      (*v50)(v23, v8);
      v57 = v20;
      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_21CDE4558((v31 > 1), v32 + 1, 1);
        v22 = v49;
        v20 = v57;
      }

      *(v20 + 16) = v32 + 1;
      v33 = v20 + 16 * v32;
      *(v33 + 32) = v27;
      *(v33 + 40) = v29;
      v21 += v54;
      --v19;
      v8 = v30;
      v14 = v26;
    }

    while (v19);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v57 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40BA0, &qword_21CE6F4B0);
  sub_21CDF0A80();
  v34 = sub_21CE6CB90();
  v36 = v35;

  v37 = MobileGestalt_get_current_device();
  if (!v37)
  {
    __break(1u);
    goto LABEL_23;
  }

  v38 = v37;
  appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

  if (appleInternalInstallCapability)
  {
    v57 = 0xD000000000000017;
    v58 = 0x800000021CE76140;
    MEMORY[0x21CF1ACB0](v34, v36);
    v41 = v57;
    v40 = v58;
    swift_beginAccess();
    if (qword_281211F30 != -1)
    {
      swift_once();
    }

    if (qword_281211F38)
    {
      qword_281213470 = qword_281211F38;
      sub_21CDFAAEC(v41, v40, qword_281211F38, qword_281211F40);
      swift_endAccess();

      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_16:
  if (qword_281213280 != -1)
  {
    swift_once();
  }

  v42 = sub_21CE6BDA0();
  __swift_project_value_buffer(v42, qword_2812165C0);

  v43 = sub_21CE6BD80();
  v44 = sub_21CE6CF30();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v57 = v46;
    *v45 = 141558275;
    *(v45 + 4) = 1752392040;
    *(v45 + 12) = 2081;
    v47 = sub_21CDF2CC8(v34, v36, &v57);

    *(v45 + 14) = v47;
    _os_log_impl(&dword_21CDE1000, v43, v44, "Last Navigation Event: %{private,mask.hash}s", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x21CF1BD50](v46, -1, -1);
    MEMORY[0x21CF1BD50](v45, -1, -1);
  }

  else
  {
  }
}

void sub_21CDFB1B0()
{
  v0 = swift_slowAlloc();
  bzero(v0, 0x4000uLL);
  qword_281211F38 = v0;
  qword_281211F40 = 0x4000;
}

const char *sub_21CDFB1F4@<X0>(const char *__source@<X0>, char *__dst@<X1>, size_t a3@<X2>, const char **a4@<X8>)
{
  if (__dst)
  {
    __source = strlcpy(__dst, __source, a3);
    *a4 = __source;
  }

  else
  {
    __break(1u);
  }

  return __source;
}

uint64_t sub_21CDFB23C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v38 = a2;
  v10 = type metadata accessor for SettingsNavigationEventRecord();
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v19 = *a1;
  v18 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  v20 = v11[7];
  v21 = sub_21CE6B960();
  (*(*(v21 - 8) + 16))(&v17[v20], a4, v21);
  v22 = v11[9];
  v23 = sub_21CE6BA60();
  (*(*(v23 - 8) + 16))(&v17[v22], v37, v23);
  v24 = &v17[v11[10]];
  *v17 = v19;
  *(v17 + 1) = v18;
  v17[16] = a1;
  *&v17[v11[8]] = a5;
  *v24 = v38;
  *(v24 + 1) = a3;
  sub_21CDEFF74();
  v25 = qword_2812132A0;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_21CE6BDA0();
  __swift_project_value_buffer(v26, qword_281216608);
  sub_21CDFB51C(v17, v15);
  v27 = sub_21CE6BD80();
  v28 = sub_21CE6CF00();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 141558275;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2081;
    v31 = SettingsNavigationEventRecord.description.getter();
    v33 = v32;
    sub_21CDFB580(v15);
    v34 = sub_21CDF2CC8(v31, v33, &v39);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_21CDE1000, v27, v28, "Did receive navigation event with payload: %{private,mask.hash}s", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x21CF1BD50](v30, -1, -1);
    MEMORY[0x21CF1BD50](v29, -1, -1);
  }

  else
  {

    sub_21CDFB580(v15);
  }

  return sub_21CDFB580(v17);
}

uint64_t sub_21CDFB51C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsNavigationEventRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CDFB580(uint64_t a1)
{
  v2 = type metadata accessor for SettingsNavigationEventRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CDFB5DC(uint64_t a1)
{
  swift_beginAccess();
  v2 = v1[4];
  v3 = v1[5];
  v22 = *(v3 + 16);
  v17 = v3 + 32;
  v18 = v2 + 32;
  v16 = v1[3];

  v20 = v2;

  v19 = v3;

  v5 = 0;
  while (1)
  {
    if (v5 >= v22)
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *(v20 + 16))
    {
      goto LABEL_12;
    }

    v6 = (v18 + 16 * v5);
    v7 = v6[1];
    *&v29 = *v6;
    *(&v29 + 1) = v7;
    if (v5 >= *(v19 + 16))
    {
      goto LABEL_13;
    }

    sub_21CDE4CF4(v17 + 40 * v5++, v30);
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v32 = v29;
    sub_21CDE4CD8(v27, &v33);

LABEL_8:
    v36 = v32;
    v37[0] = v33;
    v37[1] = v34;
    v38 = v35;
    if (!*(&v32 + 1))
    {
    }

    sub_21CDE4CD8(v37, &v32);
    v8 = v34;
    v26 = *(&v33 + 1);
    __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    *&v29 = *a1;
    *(&v29 + 1) = v9;
    LOBYTE(v30[0]) = v10;
    v11 = type metadata accessor for SettingsNavigationEventRecord();
    v12 = (a1 + v11[8]);
    v13 = v12[1];
    v24 = *v12;
    v25 = v11[7];
    v14 = v11[5];
    v15 = *(a1 + v11[6]);
    v23 = *(v8 + 16);
    sub_21CDEFF74();
    v23(&v29, v24, v13, a1 + v14, v15, a1 + v25, v26, v8);
    sub_21CDEFF7C();
    result = __swift_destroy_boxed_opaque_existential_1(&v32);
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t SettingsEventCenter.emitNavigationEventForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for SettingsNavigationEventRecord();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  v16 = v10[7];
  v17 = sub_21CE6B960();
  (*(*(v17 - 8) + 16))(&v13[v16], a2, v17);
  v18 = v10[9];
  v19 = sub_21CE6BA60();
  (*(*(v19 - 8) + 16))(&v13[v18], a4, v19);
  v20 = &v13[v10[10]];
  *v13 = v14;
  *(v13 + 1) = v15;
  v13[16] = a1;
  *&v13[v10[8]] = a3;
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = *(v4 + 48);
  sub_21CDEFF74();

  sub_21CE6BE60();

  return sub_21CDFB580(v13);
}

uint64_t SettingsEventCenter.emitNavigationEventForApplicationSetting(associatedApplicationBundleIdentifier:title:localizedNavigationComponents:deepLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for SettingsNavigationEventRecord();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v12[7];
  v17 = sub_21CE6B960();
  (*(*(v17 - 8) + 16))(&v15[v16], a3, v17);
  v18 = v12[9];
  v19 = sub_21CE6BA60();
  (*(*(v19 - 8) + 16))(&v15[v18], a5, v19);
  v20 = &v15[v12[10]];
  *v15 = a1;
  *(v15 + 1) = a2;
  v15[16] = 1;
  *&v15[v12[8]] = a4;
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = *(v5 + 48);
  swift_bridgeObjectRetain_n();

  sub_21CE6BE60();

  return sub_21CDFB580(v15);
}

uint64_t SettingsEventCenter.removeResponder<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(*(a3 + 8) + 8))();
  v5 = v4;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  swift_beginAccess();
  sub_21CDE48B8(v7, v3, v5);
  return swift_endAccess();
}

uint64_t sub_21CDFBBAC()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x21CF19C80](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_21CDFBC4C(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_21CDFBC4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

  v8 = MEMORY[0x21CF19C80](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x21CF19C90](v8, a4);
    sub_21CDFBCCC(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_21CDFBD1C(uint64_t result, uint64_t a2, uint64_t *a3)
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
        sub_21CE6D4B0();

        sub_21CE6CCA0();
        result = sub_21CE6D4E0();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_21CE6BC10();

        if (v10)
        {
          while (1)
          {
            sub_21CE6BC60();
          }
        }

        result = sub_21CE6BC50();
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

uint64_t sub_21CDFBE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  result = sub_21CE6D4E0();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_21CE6BC10();
    result = sub_21CE6BC40();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_21CE6D400())
          {
            break;
          }

          sub_21CE6BC60();
          result = sub_21CE6BC40();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

unint64_t sub_21CDFBF98(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_21CDFC198(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x21CF19C60]())
  {
LABEL_16:
    v13 = sub_21CDFC198(a1);
    sub_21CDFBBAC();
    return v13;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = sub_21CE6BC90();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {

    result = sub_21CDFC220(a2, (v10 + 16), v10 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_21CDFC418(a1, a1 + 1, v4, (v10 + 16));

      return sub_21CDFC198(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21CDFC100@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21CE12DFC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_21CDE4CD8(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21CDFC198(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21CE12DE8(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_21CDFC220(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v23 = sub_21CE6BC10();
  sub_21CE6BC60();
  if (v23)
  {
    v7 = sub_21CE6BC20();
    while (1)
    {
      result = sub_21CE6BC40();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_21CE6D4B0();

      sub_21CE6CCA0();
      v16 = sub_21CE6D4E0();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_22;
      }

      v19 = v18 & v16;
      if (v6 >= v7)
      {
        break;
      }

      if (v19 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v20 = sub_21CE6BC40();
      if ((v21 & 1) == 0)
      {
        v8 = ((v18 & ((v20 - (a2[1] >> 6)) >> 63)) + v20 - (a2[1] >> 6)) ^ v18;
      }

      v6 = a1;
      sub_21CE6BC30();
LABEL_5:
      sub_21CE6BC60();
    }

    if (v19 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_21CE6BC30();
}

uint64_t sub_21CDFC418(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x21CF19C50](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v10 = a3;

        if (v8)
        {
          v11 = 0;
          while (1)
          {
            v12 = (v10 + 32 + 16 * v11);
            v13 = *v12;
            v14 = v12[1];
            v15 = *a4;
            sub_21CE6D4B0();

            sub_21CE6CCA0();
            result = sub_21CE6D4E0();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_21CE6BC10())
            {
              while (1)
              {
                v16 = sub_21CE6BC40();
                if ((v17 & 1) == 0 && v16 == v11)
                {
                  break;
                }

                sub_21CE6BC60();
              }
            }

            result = v11 + v5;
            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            sub_21CE6BC50();

            if (v11 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_21CE6BC10();
      v24 = sub_21CE6BC40();
      if ((v25 & 1) != 0 || v24 >= v8)
      {
LABEL_33:
        result = sub_21CE6BC60();
LABEL_18:
        v18 = a4[1];
        if (__OFSUB__(v18 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v19 = 1 << *a4;
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v22 = (v21 & (((v18 >> 6) - v5) >> 63)) + (v18 >> 6) - v5;
        if (v22 < v21)
        {
          v21 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v22 - v21) << 6);
        return result;
      }

      if (!__OFADD__(v24, v5))
      {
        sub_21CE6BC50();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_21CE6BC10();
      v26 = sub_21CE6BC40();
      if ((v27 & 1) == 0 && v26 >= v4)
      {
        v20 = __OFSUB__(v26, v5);
        result = v26 - v5;
        if (v20)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_21CE6BC50();
      }

      return sub_21CE6BC60();
    }

    v4 = a2;
    v23 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x21CF19C50](*a4 & 0x3F);
    if (v23 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      do
      {
        v28 = (a3 + 32 + 16 * v4);
        v29 = *v28;
        v30 = v28[1];
        v31 = *a4;
        sub_21CE6D4B0();

        sub_21CE6CCA0();
        result = sub_21CE6D4E0();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_21CE6BC10())
        {
          while (1)
          {
            v32 = sub_21CE6BC40();
            if ((v33 & 1) == 0 && v32 == v4)
            {
              break;
            }

            sub_21CE6BC60();
          }
        }

        sub_21CE6BC50();
      }

      while (++v4 != v9);
    }
  }

  return result;
}

uint64_t View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a6;
  v30 = a7;
  v31 = a5;
  v28 = a4;
  v29 = a3;
  v27 = a2;
  v8 = sub_21CE6BA60();
  v25 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v26 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21CE6B960();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v24 = *a1;
  v15 = *(a1 + 16);
  (*(v11 + 16))(v13, v27);
  (*(v9 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v8);
  v16 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v9 + 80) + v17 + 8) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v23;
  *(v19 + 16) = v24;
  *(v19 + 24) = v14;
  *(v19 + 32) = v15;
  (*(v11 + 32))(v19 + v16, v13, v20);
  *(v19 + v17) = v29;
  (*(v9 + 32))(v19 + v18, v26, v25);
  sub_21CDEFF74();

  sub_21CE6C8C0();
}

uint64_t sub_21CDFCB00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for SettingsNavigationEventRecord();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281212FB0 != -1)
  {
    swift_once();
  }

  v16 = off_281212FB8;
  v17 = v12[5];
  v18 = sub_21CE6B960();
  (*(*(v18 - 8) + 16))(&v15[v17], a4, v18);
  v19 = v12[7];
  v20 = sub_21CE6BA60();
  (*(*(v20 - 8) + 16))(&v15[v19], a6, v20);
  v21 = &v15[v12[8]];
  *v15 = a1;
  *(v15 + 1) = a2;
  v15[16] = a3 & 1;
  *&v15[v12[6]] = a5;
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = v16[6];
  sub_21CDEFF74();

  sub_21CE6BE60();

  return sub_21CDFB580(v15);
}

uint64_t sub_21CDFCCB8()
{
  v1 = *(sub_21CE6B960() - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_21CE6BA60() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + v3);
  v9 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_21CDFCB00(v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t View.emitNavigationEventOnAppearForApplicationSetting(associatedApplicationBundleIdentifier:title:localizedNavigationComponents:deepLink:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a7;
  v27 = a8;
  v28 = a6;
  v24 = a5;
  v25 = a1;
  v26 = a4;
  v10 = sub_21CE6BA60();
  v23 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CE6B960();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a3, v14);
  (*(v11 + 16))(v13, v24, v10);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v11 + 80) + v19 + 8) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 24) = a2;
  (*(v15 + 32))(v21 + v18, v17, v14);
  *(v21 + v19) = v26;
  (*(v11 + 32))(v21 + v20, v13, v23);

  sub_21CE6C8C0();
}

uint64_t sub_21CDFCFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SettingsNavigationEventRecord();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281212FB0 != -1)
  {
    swift_once();
  }

  v14 = off_281212FB8;
  v15 = v10[5];
  v16 = sub_21CE6B960();
  (*(*(v16 - 8) + 16))(&v13[v15], a3, v16);
  v17 = v10[7];
  v18 = sub_21CE6BA60();
  (*(*(v18 - 8) + 16))(&v13[v17], a5, v18);
  v19 = &v13[v10[8]];
  *v13 = a1;
  *(v13 + 1) = a2;
  v13[16] = 1;
  *&v13[v10[6]] = a4;
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = v14[6];
  swift_bridgeObjectRetain_n();

  sub_21CE6BE60();

  return sub_21CDFB580(v13);
}

uint64_t sub_21CDFD1A8()
{
  v1 = *(sub_21CE6B960() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_21CE6BA60() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_21CDFCFF4(v6, v7, v0 + v2, v5, v8);
}

uint64_t sub_21CDFD288@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_2812128D8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_21CDE9220(&xmmword_2812128E0, v2);
}

uint64_t EnvironmentValues.settingsNavigationProxy.getter()
{
  sub_21CDE8FAC();

  return sub_21CE6C290();
}

uint64_t static SettingsNavigationProxyTrait.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281212880 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_21CDE9220(&unk_281212888, a1);
}

uint64_t static SettingsNavigationProxyTrait.defaultValue.setter(uint64_t a1)
{
  if (qword_281212880 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_21CDFD490(a1, &unk_281212888);
  swift_endAccess();
  return sub_21CDE93A8(a1);
}

uint64_t (*static SettingsNavigationProxyTrait.defaultValue.modify())()
{
  if (qword_281212880 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21CDFD574(uint64_t a1)
{
  if (qword_281212880 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_21CDFD490(a1, &unk_281212888);
  return swift_endAccess();
}

uint64_t UITraitCollection.settingsNavigationProxy.getter()
{
  sub_21CDE9098();

  return sub_21CE6CFC0();
}

uint64_t getEnumTagSinglePayload for SettingsNavigationProxyTrait(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SettingsNavigationProxyTrait(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t SettingsNavigationProxy.SettingsNavigationProxyError.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

uint64_t sub_21CDFD7D8()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

uint64_t sub_21CDFD84C()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

uint64_t SettingsNavigationProxy.stateDrivenNavigationPossible.getter()
{
  sub_21CDFDA00(v0, &v9);
  if (v10)
  {
    sub_21CDE4CD8(&v9, v11);
    v1 = v12;
    v2 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v3 = (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_21CDE5494(&v9, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_2812132A0 != -1)
    {
      swift_once();
    }

    v4 = sub_21CE6BDA0();
    __swift_project_value_buffer(v4, qword_281216608);
    v5 = sub_21CE6BD80();
    v6 = sub_21CE6CF30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21CDE1000, v5, v6, "Attempting to check state driven navigation support when the proxy doesn't have a responder.", v7, 2u);
      MEMORY[0x21CF1BD50](v7, -1, -1);
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_21CDFDA00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF30, &qword_21CE70520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SettingsNavigationProxy.isPrimaryNavigationPathEmpty.getter()
{
  sub_21CDFDA00(v0, &v9);
  if (v10)
  {
    sub_21CDE4CD8(&v9, v11);
    v1 = v12;
    v2 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v3 = (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_21CDE5494(&v9, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v4 = sub_21CE6BDA0();
    __swift_project_value_buffer(v4, qword_27CE44248);
    v5 = sub_21CE6BD80();
    v6 = sub_21CE6CF10();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21CDE1000, v5, v6, "Attempting to check primary navigation path empty when the proxy doesn't have a responder.", v7, 2u);
      MEMORY[0x21CF1BD50](v7, -1, -1);
    }

    v3 = 1;
  }

  return v3 & 1;
}

uint64_t SettingsNavigationProxy.primaryNavigationPathCount.getter()
{
  sub_21CDFDA00(v0, &v9);
  if (v10)
  {
    sub_21CDE4CD8(&v9, v11);
    v1 = v12;
    v2 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v3 = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_21CDE5494(&v9, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v4 = sub_21CE6BDA0();
    __swift_project_value_buffer(v4, qword_27CE44248);
    v5 = sub_21CE6BD80();
    v6 = sub_21CE6CF10();
    if (os_log_type_enabled(v5, v6))
    {
      v3 = -1;
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21CDE1000, v5, v6, "Attempting to check primary navigation path count when the proxy doesn't have a responder.", v7, 2u);
      MEMORY[0x21CF1BD50](v7, -1, -1);
    }

    else
    {

      return -1;
    }
  }

  return v3;
}

void SettingsNavigationProxy.appendToPrimaryNavigationPath<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CDFDA00(v10, &v22);
  if (v23)
  {
    sub_21CDE4CD8(&v22, v24);
    v11 = v25;
    v12 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v12 + 40))(a1, a2, a3, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_21CDE5494(&v22, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v13 = sub_21CE6BDA0();
    __swift_project_value_buffer(v13, qword_27CE44248);
    (*(v6 + 16))(v9, a1, a2);
    v14 = sub_21CE6BD80();
    v15 = sub_21CE6CF10();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24[0] = v17;
      *v16 = 136315138;
      swift_getDynamicType();
      v18 = sub_21CE6D4F0();
      v20 = v19;
      (*(v6 + 8))(v9, a2);
      v21 = sub_21CDF2CC8(v18, v20, v24);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_21CDE1000, v14, v15, "Attempting to append value of type %s with a proxy that doesn't have a responder.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x21CF1BD50](v17, -1, -1);
      MEMORY[0x21CF1BD50](v16, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, a2);
    }
  }
}

void SettingsNavigationProxy.appendToPrimaryNavigationPath<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CDFDA00(v14, &v26);
  if (v27)
  {
    sub_21CDE4CD8(&v26, v28);
    v15 = v29;
    v16 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v16 + 48))(a1, a2, a3, a4, a5, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_21CDE5494(&v26, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v17 = sub_21CE6BDA0();
    __swift_project_value_buffer(v17, qword_27CE44248);
    (*(v10 + 16))(v13, a1, a2);
    v18 = sub_21CE6BD80();
    v19 = sub_21CE6CF10();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      swift_getDynamicType();
      v22 = sub_21CE6D4F0();
      v24 = v23;
      (*(v10 + 8))(v13, a2);
      v25 = sub_21CDF2CC8(v22, v24, v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_21CDE1000, v18, v19, "Attempting to append value of type %s with a proxy that doesn't have a responder.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CF1BD50](v21, -1, -1);
      MEMORY[0x21CF1BD50](v20, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, a2);
    }
  }
}

Swift::Void __swiftcall SettingsNavigationProxy.removeLastFromPrimaryNavigationPath(_:)(Swift::Int a1)
{
  sub_21CDFDA00(v1, &v9);
  if (v10)
  {
    sub_21CDE4CD8(&v9, v11);
    v3 = v12;
    v4 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v4 + 32))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_21CDE5494(&v9, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v5 = sub_21CE6BDA0();
    __swift_project_value_buffer(v5, qword_27CE44248);
    v6 = sub_21CE6BD80();
    v7 = sub_21CE6CF10();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21CDE1000, v6, v7, "Attempting to remove values from primary navigation path when the proxy doesn't have a responder.", v8, 2u);
      MEMORY[0x21CF1BD50](v8, -1, -1);
    }
  }
}

void SettingsNavigationProxy.popToValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SettingsNavigationProxy.stateDrivenNavigationPossible.getter())
  {
    sub_21CDFDA00(v3, &v23);
    if (v24)
    {
      sub_21CDE4CD8(&v23, v25);
      v11 = v26;
      v12 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v12 + 56))(a1, a2, a3, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else
    {
      sub_21CDE5494(&v23, &qword_27CE3FF30, &qword_21CE70520);
      if (qword_27CE3FA48 != -1)
      {
        swift_once();
      }

      v14 = sub_21CE6BDA0();
      __swift_project_value_buffer(v14, qword_27CE44248);
      (*(v7 + 16))(v10, a1, a2);
      v15 = sub_21CE6BD80();
      v16 = sub_21CE6CF10();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v25[0] = v28;
        *v17 = 136315138;
        swift_getDynamicType();
        v18 = sub_21CE6D4F0();
        v20 = v19;
        (*(v7 + 8))(v10, a2);
        v21 = sub_21CDF2CC8(v18, v20, v25);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_21CDE1000, v15, v16, "Attempting to pop to value of type %s with a proxy that doesn't have a responder.", v17, 0xCu);
        v22 = v28;
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x21CF1BD50](v22, -1, -1);
        MEMORY[0x21CF1BD50](v17, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v10, a2);
      }
    }
  }

  else
  {
    sub_21CDFFB58();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }
}

void SettingsNavigationProxy.popToValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SettingsNavigationProxy.stateDrivenNavigationPossible.getter())
  {
    sub_21CDFDA00(v5, &v27);
    if (v28)
    {
      sub_21CDE4CD8(&v27, v29);
      v15 = v30;
      v16 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      (*(v16 + 64))(a1, a2, a3, a4, a5, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    else
    {
      sub_21CDE5494(&v27, &qword_27CE3FF30, &qword_21CE70520);
      if (qword_27CE3FA48 != -1)
      {
        swift_once();
      }

      v18 = sub_21CE6BDA0();
      __swift_project_value_buffer(v18, qword_27CE44248);
      (*(v11 + 16))(v14, a1, a2);
      v19 = sub_21CE6BD80();
      v20 = sub_21CE6CF10();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v29[0] = v32;
        *v21 = 136315138;
        swift_getDynamicType();
        v22 = sub_21CE6D4F0();
        v24 = v23;
        (*(v11 + 8))(v14, a2);
        v25 = sub_21CDF2CC8(v22, v24, v29);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_21CDE1000, v19, v20, "Attempting to pop to value of type %s with a proxy that doesn't have a responder.", v21, 0xCu);
        v26 = v32;
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x21CF1BD50](v26, -1, -1);
        MEMORY[0x21CF1BD50](v21, -1, -1);
      }

      else
      {

        (*(v11 + 8))(v14, a2);
      }
    }
  }

  else
  {
    sub_21CDFFB58();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall SettingsNavigationProxy.clearPrimaryNavigationPath()()
{
  sub_21CDFDA00(v0, &v7);
  if (v8)
  {
    sub_21CDE4CD8(&v7, v9);
    v1 = v10;
    v2 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v2 + 72))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_21CDE5494(&v7, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v3 = sub_21CE6BDA0();
    __swift_project_value_buffer(v3, qword_27CE44248);
    v4 = sub_21CE6BD80();
    v5 = sub_21CE6CF10();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CDE1000, v4, v5, "Attempting to clear primary navigation path with a proxy that doesn't have a responder.", v6, 2u);
      MEMORY[0x21CF1BD50](v6, -1, -1);
    }
  }
}

Swift::Void __swiftcall SettingsNavigationProxy.resetNavigationState()()
{
  sub_21CDFDA00(v0, &v7);
  if (v8)
  {
    sub_21CDE4CD8(&v7, v9);
    v1 = v10;
    v2 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v2 + 80))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_21CDE5494(&v7, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v3 = sub_21CE6BDA0();
    __swift_project_value_buffer(v3, qword_27CE44248);
    v4 = sub_21CE6BD80();
    v5 = sub_21CE6CF10();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CDE1000, v4, v5, "Attempting to reset navigation state with a proxy that doesn't have a responder.", v6, 2u);
      MEMORY[0x21CF1BD50](v6, -1, -1);
    }
  }
}

uint64_t SettingsNavigationProxy.setPrimaryNavigationPath<each A>(_:)(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = TupleTypeMetadata;
  v6 = 8 * a2;
  v43 = a4;
  v44 = a3;
  if (a2 == 1)
  {
    v7 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v9 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v10 = 0;
      v11 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != a2)
      {
LABEL_9:
        v16 = a2 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21CE6C090();
  v42 = v39;
  v40 = *(v41 - 8);
  v24 = *(v40 + 64);
  v25 = MEMORY[0x28223BE20](v41);
  v27 = v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[1] = v39;
  MEMORY[0x28223BE20](v25);
  v28 = (v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v29 = (v44 & 0xFFFFFFFFFFFFFFFELL);
    v30 = (v7 + 32);
    v31 = (v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = a2;
    do
    {
      if (a2 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = *v30;
      }

      v35 = *v29++;
      v34 = v35;
      v36 = &v23[v33];
      v37 = *v5++;
      (*(*(v34 - 8) + 16))(&v23[v33], v37);
      *v31++ = v36;
      v30 += 4;
      --v32;
    }

    while (v32);
  }

  sub_21CDFEFE0(v28, a2, v44, v43, v27);
  SettingsNavigationProxy.setPrimaryNavigationPath(_:)(v27);
  return (*(v40 + 8))(v27, v41);
}

uint64_t sub_21CDFEFE0@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2;
  v50 = a5;
  v51 = a1;
  v6 = 8 * a2;
  v53 = a3;
  v49 = a4;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v9 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v10 = 0;
      v11 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != v5)
      {
LABEL_9:
        v16 = v5 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v52 = TupleTypeMetadata;
  v47 = *(TupleTypeMetadata - 8);
  v21 = *(v47 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21CE6C090();
  v48 = &v44;
  v44 = *(v24 - 8);
  v45 = v24;
  v25 = *(v44 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_21CE6C080();
  v46 = &v44;
  MEMORY[0x28223BE20](v28);
  v29 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v30 = (v53 & 0xFFFFFFFFFFFFFFFELL);
    v31 = (v52 + 32);
    v32 = v51;
    v33 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = v5;
    do
    {
      if (v5 == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = *v31;
      }

      v37 = *v30++;
      v36 = v37;
      v38 = &v23[v35];
      v39 = *v32++;
      (*(*(v36 - 8) + 16))(&v23[v35], v39);
      *v33++ = v38;
      v31 += 4;
      --v34;
    }

    while (v34);
  }

  v40 = v53;
  sub_21CDFF914(v29, v5, v53, v49);
  (*(v47 + 8))(v23, v52);
  result = (*(v44 + 32))(v50, v27, v45);
  if (v5)
  {
    v42 = (v40 & 0xFFFFFFFFFFFFFFFELL) - 8;
    v43 = v51 - 1;
    do
    {
      result = (*(*(*(v42 + 8 * v5) - 8) + 8))(v43[v5]);
      --v5;
    }

    while (v5);
  }

  return result;
}

void SettingsNavigationProxy.setPrimaryNavigationPath(_:)(uint64_t a1)
{
  sub_21CDFDA00(v1, &v9);
  if (v10)
  {
    sub_21CDE4CD8(&v9, v11);
    v3 = v12;
    v4 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v4 + 88))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_21CDE5494(&v9, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v5 = sub_21CE6BDA0();
    __swift_project_value_buffer(v5, qword_27CE44248);
    v6 = sub_21CE6BD80();
    v7 = sub_21CE6CF10();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21CDE1000, v6, v7, "Attempting to set a navigation path with a proxy that doesn't have a responder.", v8, 2u);
      MEMORY[0x21CF1BD50](v8, -1, -1);
    }
  }
}

uint64_t SettingsNavigationProxy.setPrimaryNavigationPath<each A>(_:)(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = TupleTypeMetadata;
  v8 = 8 * a2;
  v45 = a6;
  v46 = a3;
  if (a2 == 1)
  {
    v9 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v11 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v12 = 0;
      v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v11[-v13] < 0x20)
      {
        goto LABEL_9;
      }

      v12 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = (v13 + 16);
      v15 = v11 + 16;
      v16 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 1);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v12 != a2)
      {
LABEL_9:
        v18 = a2 - v12;
        v19 = 8 * v12;
        v20 = &v11[8 * v12];
        v21 = (v13 + v19);
        do
        {
          v22 = *v21++;
          *v20 = v22;
          v20 += 8;
          --v18;
        }

        while (v18);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v9 = TupleTypeMetadata;
  }

  v23 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v25 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_21CE6C090();
  v44 = v41;
  v42 = *(v43 - 8);
  v26 = *(v42 + 64);
  v27 = MEMORY[0x28223BE20](v43);
  v29 = v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[1] = v41;
  MEMORY[0x28223BE20](v27);
  v30 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v31 = (v46 & 0xFFFFFFFFFFFFFFFELL);
    v32 = (v9 + 32);
    v33 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = a2;
    do
    {
      if (a2 == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = *v32;
      }

      v37 = *v31++;
      v36 = v37;
      v38 = &v25[v35];
      v39 = *v7++;
      (*(*(v36 - 8) + 16))(&v25[v35], v39);
      *v33++ = v38;
      v32 += 4;
      --v34;
    }

    while (v34);
  }

  sub_21CDFEFE0(v30, a2, v46, v45, v29);
  SettingsNavigationProxy.setPrimaryNavigationPath(_:)(v29);
  return (*(v42 + 8))(v29, v43);
}

uint64_t SettingsNavigationProxy.getPrimaryNavigationPath()()
{
  sub_21CDFDA00(v0, &v8);
  if (v9)
  {
    sub_21CDE4CD8(&v8, v10);
    v1 = v11;
    v2 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v2 + 96))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_21CDE5494(&v8, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v4 = sub_21CE6BDA0();
    __swift_project_value_buffer(v4, qword_27CE44248);
    v5 = sub_21CE6BD80();
    v6 = sub_21CE6CF10();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21CDE1000, v5, v6, "Attempting to get a navigation path with a proxy that doesn't have a responder.", v7, 2u);
      MEMORY[0x21CF1BD50](v7, -1, -1);
    }

    return sub_21CE6C080();
  }
}

uint64_t static SettingsNavigationProxy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  if (v2 & 1) != 0 || (v3)
  {
    return v2 & v3;
  }

  else
  {
    return MEMORY[0x282133E80](*(a1 + 40), *(a2 + 40));
  }
}

uint64_t sub_21CDFF914(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = result;
    v5 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v6 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      v13[4] = v13;
      v14 = a2;
      v7 = *v5;
      v13[2] = *v6;
      v8 = *(v7 - 8);
      v9 = *(v8 + 64);
      MEMORY[0x28223BE20](result);
      v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
      v11 = *(v8 + 16);
      v12 = v11(v13 - v10, *v4, v7);
      v13[3] = v13;
      MEMORY[0x28223BE20](v12);
      v11(v13 - v10, v13 - v10, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF48, &qword_21CE706D8);
      if (swift_dynamicCast())
      {
        sub_21CDFFD2C(v15, v17);
        __swift_project_boxed_opaque_existential_1(v17, v17[3]);
        sub_21CE6C070();
        (*(v8 + 8))(v13 - v10, v7);
        result = __swift_destroy_boxed_opaque_existential_1(v17);
      }

      else
      {
        v16 = 0;
        memset(v15, 0, sizeof(v15));
        sub_21CDE5494(v15, &qword_27CE3FF50, &unk_21CE706E0);
        sub_21CE6C060();
        result = (*(v8 + 8))(v13 - v10, v7);
      }

      ++v4;
      ++v6;
      ++v5;
      a2 = v14 - 1;
    }

    while (v14 != 1);
  }

  return result;
}

unint64_t sub_21CDFFB58()
{
  result = qword_27CE3FF38;
  if (!qword_27CE3FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FF38);
  }

  return result;
}

unint64_t sub_21CDFFBB0()
{
  result = qword_27CE3FF40;
  if (!qword_27CE3FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FF40);
  }

  return result;
}

uint64_t sub_21CDFFD2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t _s8Settings0A10PaneRecipeV11descriptionSSvg_0()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_21CE6D290();
  v11 = 0;
  v12 = 0xE000000000000000;
  MEMORY[0x21CF1ACB0](0xD000000000000012, 0x800000021CE70780);
  MEMORY[0x21CF1ACB0](0xD000000000000014, 0x800000021CE76160);
  MEMORY[0x21CF1ACB0](*v1, v1[1]);
  MEMORY[0x21CF1ACB0](0x656C646E7562202CLL, 0xEE00203A656D614ELL);
  MEMORY[0x21CF1ACB0](v1[2], v1[3]);
  MEMORY[0x21CF1ACB0](0xD000000000000012, 0x800000021CE76180);
  v3 = type metadata accessor for SettingsPaneRecipe();
  v4 = *(v3 + 24);
  type metadata accessor for NSBundle.PluginLocation(0);
  sub_21CE6D340();
  v5 = *(v3 + 28);
  sub_21CE00700(v1 + v5, v9);
  v6 = v10;
  sub_21CDE5494(v9, qword_27CE40D00, &qword_21CE706F0);
  if (!v6)
  {
    v8 = 0;
    goto LABEL_5;
  }

  result = sub_21CE00700(v1 + v5, v9);
  if (v10)
  {
    sub_21CDE5494(v9, qword_27CE40D00, &qword_21CE706F0);
    MEMORY[0x21CF1ACB0](0x6168736148796E41, 0xEB00000000656C62);
    v8 = 0x3A65756C6176202CLL;
    v2 = 0xE900000000000020;
LABEL_5:
    MEMORY[0x21CF1ACB0](v8, v2);

    MEMORY[0x21CF1ACB0](41, 0xE100000000000000);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t SettingsPaneRecipe.init(bundleName:pluginLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for SettingsPaneRecipe();
  v9 = a4 + *(v8 + 28);
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *a4 = 0x50746C7561666544;
  a4[1] = 0xEB00000000656E61;
  a4[2] = a1;
  a4[3] = a2;
  v10 = a4 + *(v8 + 24);

  return sub_21CE00044(a3, v10);
}

uint64_t SettingsPaneRecipe.init(contentIdentifier:bundleName:pluginLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for SettingsPaneRecipe();
  v13 = a6 + *(v12 + 28);
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v14 = a6 + *(v12 + 24);

  return sub_21CE00044(a5, v14);
}

uint64_t sub_21CE00044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSBundle.PluginLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SettingsPaneRecipe.init<A>(contentIdentifier:bundleName:pluginLocation:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = a4;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  v25[1] = a10;
  MEMORY[0x28223BE20](a1);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SettingsPaneRecipe();
  sub_21CE0021C(a5, a8 + *(v21 + 24));
  v22 = a8 + *(v21 + 28);
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *a8 = a1;
  a8[1] = a2;
  v23 = v26;
  a8[2] = a3;
  a8[3] = v23;
  (*(v17 + 16))(v20, a6, a7);
  sub_21CE6D230();
  (*(v17 + 8))(a6, a7);
  sub_21CE00280(a5);
  return sub_21CE002DC(v27, v22);
}

uint64_t sub_21CE0021C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSBundle.PluginLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE00280(uint64_t a1)
{
  v2 = type metadata accessor for NSBundle.PluginLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CE002DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE40D00, &qword_21CE706F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SettingsPaneRecipe.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_21CE6CCA0();
  v4 = v0[2];
  v5 = v0[3];
  sub_21CE6CCA0();
  v6 = type metadata accessor for SettingsPaneRecipe();
  v7 = v0 + *(v6 + 24);
  sub_21CE6BA60();
  sub_21CDE8A7C(&qword_2812132C0, MEMORY[0x277CC9260]);
  sub_21CE6CB80();
  v8 = &v7[*(type metadata accessor for NSBundle.PluginLocation(0) + 20)];
  v9 = *v8;
  v10 = *(v8 + 1);
  sub_21CE6CCA0();
  sub_21CE00700(v1 + *(v6 + 28), &v14);
  if (!*(&v15 + 1))
  {
    return sub_21CE6D4D0();
  }

  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  sub_21CE6D4D0();
  sub_21CE6D220();
  return sub_21CE00770(v12);
}

uint64_t SettingsPaneRecipe.hashValue.getter()
{
  sub_21CE6D4B0();
  SettingsPaneRecipe.hash(into:)();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE004BC()
{
  sub_21CE6D4B0();
  SettingsPaneRecipe.hash(into:)();
  return sub_21CE6D4E0();
}

uint64_t sub_21CE00500()
{
  sub_21CE6D4B0();
  SettingsPaneRecipe.hash(into:)();
  return sub_21CE6D4E0();
}

BOOL _s8Settings0A10PaneRecipeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21CE6D400() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_21CE6D400() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for SettingsPaneRecipe();
  v7 = *(v6 + 24);
  v8 = a1 + v7;
  v9 = a2 + v7;
  if ((sub_21CE6B9E0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for NSBundle.PluginLocation(0) + 20);
  v11 = *&v8[v10];
  v12 = *&v8[v10 + 8];
  v13 = &v9[v10];
  v14 = v11 == *v13 && v12 == *(v13 + 1);
  if (!v14 && (sub_21CE6D400() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v6 + 28);
  sub_21CE00700(a1 + v15, v21);
  sub_21CE00700(a2 + v15, &v23);
  if (v22)
  {
    sub_21CE00700(v21, v20);
    if (*(&v24 + 1))
    {
      v18[0] = v23;
      v18[1] = v24;
      v19 = v25;
      v16 = MEMORY[0x21CF1B1E0](v20, v18);
      sub_21CE00770(v18);
      sub_21CE00770(v20);
      sub_21CDE5494(v21, qword_27CE40D00, &qword_21CE706F0);
      return (v16 & 1) != 0;
    }

    sub_21CE00770(v20);
  }

  else if (!*(&v24 + 1))
  {
    sub_21CDE5494(v21, qword_27CE40D00, &qword_21CE706F0);
    return 1;
  }

  sub_21CDE5494(v21, &qword_27CE3FF58, &qword_21CE74E00);
  return 0;
}

uint64_t sub_21CE00700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE40D00, &qword_21CE706F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SettingsExperienceContent.onSettingsExperienceOpenURL(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4);
  (*(v9 + 32))(a4, v12, a3);
  result = type metadata accessor for OnSettingsExperienceOpenURLModifier();
  v14 = (a4 + *(result + 36));
  *v14 = a1;
  v14[1] = a2;
  return result;
}

uint64_t sub_21CE008F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for OnSettingsExperienceOpenURLModifier();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

unint64_t sub_21CE00990(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_21CE00D24();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21CE00A18(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_21CE00B54(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_21CE00D24()
{
  result = qword_2812117D8;
  if (!qword_2812117D8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2812117D8);
  }

  return result;
}

uint64_t sub_21CE00D80(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 36));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(v5 + 32);

  v7(v9, v6, v5);
}

uint64_t _SettingsExperienceContentInputs.onSettingsExperienceOpenURLActionHandler.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 _SettingsExperienceContentOutputs.init(item:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDB8, &qword_21CE708D0);
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 16) = xmmword_21CE702B0;
  *(v4 + 32) = v5;
  result = a1[2];
  v8 = a1[3];
  *(v4 + 48) = v6;
  *(v4 + 64) = result;
  *(v4 + 80) = v8;
  *a2 = v4;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CE00F50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CE00F98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_21CE0100C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21CE01054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_21CE010C0()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[5])
  {
    v3 = v0[2];
    v6 = 0;
    sub_21CE6D290();
    MEMORY[0x21CF1ACB0](0xD000000000000022, 0x800000021CE761A0);
    MEMORY[0x21CF1ACB0](v1, v2);
    MEMORY[0x21CF1ACB0](0x795461746164202CLL, 0xEC000000203A6570);
    v4 = sub_21CE6D4F0();
    MEMORY[0x21CF1ACB0](v4);
  }

  else
  {
    sub_21CE6D290();

    v6 = 0xD000000000000022;
    MEMORY[0x21CF1ACB0](v1, v2);
  }

  MEMORY[0x21CF1ACB0](41, 0xE100000000000000);
  return v6;
}

uint64_t sub_21CE011EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_21CE0120C, 0, 0);
}

uint64_t sub_21CE0120C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(type metadata accessor for SettingsExperienceOpenURLAction.Input(0) + 20);
  v4 = sub_21CE6C090();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(0);
  swift_storeEnumTagMultiPayload();
  v5 = v0[1];

  return v5();
}

uint64_t static SettingsExperienceOpenURLAction.Result.handled(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CE6C090();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t SettingsExperienceOpenURLAction.Input.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CE6BA60();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SettingsExperienceOpenURLAction.Input.url.setter(uint64_t a1)
{
  v3 = sub_21CE6BA60();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SettingsExperienceOpenURLAction.Input.navigationPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsExperienceOpenURLAction.Input(0) + 20);
  v4 = sub_21CE6C090();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SettingsExperienceOpenURLAction.Input.navigationPath.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsExperienceOpenURLAction.Input(0) + 20);
  v4 = sub_21CE6C090();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SettingsExperienceOpenURLAction.Input.init(url:navigationPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21CE6BA60();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for SettingsExperienceOpenURLAction.Input(0) + 20);
  v8 = sub_21CE6C090();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t static SettingsExperienceOpenURLAction.Result.openSettingsExperience(_:navigationPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE3FF60, &qword_21CE70A70) + 48);
  sub_21CE01738(a1, a3);
  v7 = sub_21CE6C090();
  (*(*(v7 - 8) + 16))(a3 + v6, a2, v7);
  type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21CE01738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaneRecipe();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE017D4()
{
  result = sub_21CE6BA60();
  if (v1 <= 0x3F)
  {
    result = sub_21CE6C090();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21CE018A0()
{
  result = type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21CE0195C()
{
  sub_21CE6C090();
  if (v0 <= 0x3F)
  {
    sub_21CE019D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21CE019D0()
{
  if (!qword_281212FC0[0])
  {
    type metadata accessor for SettingsPaneRecipe();
    sub_21CE6C090();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_281212FC0);
    }
  }
}

uint64_t sub_21CE01A74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21CE01ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21CE01B24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t SettingsExperienceContent._collectSettingsExperienceContentOutputs_v1(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a3 + 24))(a2, a3);
  v13 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

void sub_21CE01DF4()
{
  sub_21CE6D290();

  v0 = sub_21CE6D4F0();
  MEMORY[0x21CF1ACB0](v0);

  MEMORY[0x21CF1ACB0](46, 0xE100000000000000);
  sub_21CE6D350();
  __break(1u);
}

uint64_t sub_21CE01EE0@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 80);
  if (!v2)
  {

    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  v3 = v1;
  v4 = *(v2 + 16);

  if (!v4)
  {
LABEL_18:

    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  v6 = 0;
  v7 = 32;
  while (v6 < *(v2 + 16))
  {
    v10 = *(v2 + v7 + 32);
    v9 = *(v2 + v7 + 48);
    v11 = *(v2 + v7 + 16);
    v25 = *(v2 + v7);
    v26 = v11;
    v27 = v10;
    v28 = v9;
    v12 = v25;
    v13 = v11;
    v14 = BYTE8(v10);
    sub_21CE00700(v3 + 40, &v20);
    if (*(&v21 + 1))
    {
      v23[0] = v20;
      v23[1] = v21;
      v24 = v22;
      if (!v14)
      {
        result = sub_21CE00770(v23);
        goto LABEL_6;
      }

      if (v12 == *(v3 + 24) || (sub_21CE6D400() & 1) != 0)
      {
        sub_21CE02F4C(&v25, v19);
        sub_21CE6D210();
        sub_21CE00770(v23);
        __swift_project_boxed_opaque_existential_1(v19, v19[3]);
        DynamicType = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_1(v19);
        if (DynamicType == v13)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_21CE02F4C(&v25, v19);
        sub_21CE00770(v23);
      }
    }

    else
    {
      sub_21CE02F4C(&v25, v19);
      sub_21CDE5494(&v20, qword_27CE40D00, &qword_21CE706F0);
      if (v14 & 1) == 0 && (v12 == *(v3 + 24) || (sub_21CE6D400()))
      {
LABEL_20:

        v16 = v26;
        *a1 = v25;
        a1[1] = v16;
        v17 = v28;
        a1[2] = v27;
        a1[3] = v17;
        return result;
      }
    }

    result = sub_21CE02FA8(&v25);
LABEL_6:
    ++v6;
    v7 += 64;
    if (v4 == v6)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

double SettingsExperienceContentCoordinator.__allocating_init(bundle:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0xEB00000000656E61;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0x50746C7561666544;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  return result;
}

uint64_t SettingsExperienceContentCoordinator.init(bundle:)(uint64_t a1)
{
  *(v1 + 32) = 0xEB00000000656E61;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0x50746C7561666544;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  return v1;
}

uint64_t SettingsExperienceContentCoordinator.deinit()
{
  v1 = *(v0 + 80);
  *(v0 + 80) = 0;

  v2 = *(v0 + 32);

  sub_21CDE5494(v0 + 40, qword_27CE40D00, &qword_21CE706F0);
  v3 = *(v0 + 80);

  return v0;
}

uint64_t SettingsExperienceContentCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 80);
  *(v0 + 80) = 0;

  v2 = *(v0 + 32);

  sub_21CDE5494(v0 + 40, qword_27CE40D00, &qword_21CE706F0);
  v3 = *(v0 + 80);

  return swift_deallocClassInstance();
}

void sub_21CE0226C()
{
  v27 = *MEMORY[0x277D85DE8];
  if (!*(v0 + 80))
  {
    v2 = *(v0 + 16);
    if (([v2 isLoaded] & 1) == 0)
    {
      v24[0] = 0;
      if (![v2 loadAndReturnError_])
      {
        v18 = v24[0];
        sub_21CE6B910();

        goto LABEL_12;
      }

      v3 = v24[0];
    }

    v4 = v0;
    NSBundle.settingsExperiencePluginLoaderName.getter();
    if (!v1)
    {
      v21[2] = 0;
      v5 = sub_21CE6CC20();

      v6 = [v2 classNamed_];

      if (v6)
      {
        ObjCClassMetadata = swift_getObjCClassMetadata();
        if (swift_conformsToProtocol2())
        {
          if (ObjCClassMetadata)
          {
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            v26 = AssociatedConformanceWitness;
            __swift_allocate_boxed_opaque_existential_1(v24);
            static _SettingsExperiencePluginLoading.load()();
            v9 = AssociatedTypeWitness;
            v10 = v26;
            __swift_project_boxed_opaque_existential_1(v24, AssociatedTypeWitness);
            v11 = swift_getAssociatedTypeWitness();
            v21[1] = v21;
            v12 = *(v11 - 8);
            v13 = *(v12 + 64);
            MEMORY[0x28223BE20](v11);
            v15 = v21 - v14;
            (*(AssociatedConformanceWitness + 24))(v9, v10);
            v22[0] = &unk_21CE70AE0;
            v22[1] = 0;
            v16 = swift_getAssociatedConformanceWitness();
            (*(v16 + 32))(&v23, v22, v11, v16);

            (*(v12 + 8))(v15, v11);
            v17 = *(v4 + 80);
            *(v4 + 80) = v23;

            __swift_destroy_boxed_opaque_existential_1(v24);
            goto LABEL_13;
          }
        }
      }

      sub_21CE025C0();
      swift_allocError();
      *v19 = 3;
LABEL_12:
      swift_willThrow();
    }
  }

LABEL_13:
  v20 = *MEMORY[0x277D85DE8];
}

unint64_t sub_21CE025C0()
{
  result = qword_281212868;
  if (!qword_281212868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212868);
  }

  return result;
}

double sub_21CE02614@<D0>(uint64_t a1@<X8>)
{
  sub_21CE01EE0(&v28);
  if (!v32)
  {
    sub_21CE025C0();
    v6 = swift_allocError();
    *v7 = 4;
    v22 = v6;
    LOWORD(v23) = 0;
    BYTE2(v23) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FFE8, &unk_21CE71030);
    sub_21CDE8C68();
    sub_21CDE8D74();
    sub_21CE6C400();
    goto LABEL_16;
  }

  v4 = v29;
  v3 = v30;
  if (v31)
  {

    sub_21CE00700(v1 + 40, &v22);
    if (*(&v23 + 1))
    {
      v25 = v22;
      v26 = v23;
      v27 = v24;
      sub_21CE6D210();
      __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(&v22);
      if (DynamicType == v4)
      {
        sub_21CE6D210();
        v3(&v22);
        __swift_destroy_boxed_opaque_existential_1(&v22);
        sub_21CDE8D20();
        sub_21CDE8D74();
        sub_21CE6C400();
        sub_21CE00770(&v25);
        v12 = v22;
        v13 = v23;
        goto LABEL_11;
      }

      sub_21CE00770(&v25);
    }

    else
    {
      sub_21CDE5494(&v22, qword_27CE40D00, &qword_21CE706F0);
    }

    sub_21CE025C0();
    v10 = swift_allocError();
    *v11 = 5;
    v22 = v10;
    LOBYTE(v23) = 1;
    sub_21CDE8D20();
    sub_21CDE8D74();
    sub_21CE6C400();
    v12 = v25;
    v13 = v26;
LABEL_11:
    v22 = v12;
    LOBYTE(v23) = v13;
    BYTE1(v23) = 1;
    v14 = v12;
    sub_21CE02A90(v12, *(&v12 + 1), v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FFF0, &qword_21CE70CA0);
    sub_21CDE8BD8(&qword_2812131F0, &qword_27CE3FFF0, &qword_21CE70CA0, sub_21CDE8D20);
    sub_21CE6C400();

    sub_21CE02AA0(v14, *(&v14 + 1), v13);
    goto LABEL_12;
  }

  v8 = swift_retain_n();
  v9 = v4(v8);

  v22 = v9;
  LOWORD(v23) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FFF0, &qword_21CE70CA0);
  sub_21CDE8BD8(&qword_2812131F0, &qword_27CE3FFF0, &qword_21CE70CA0, sub_21CDE8D20);
  sub_21CE6C400();

LABEL_12:
  v15 = v26;
  v16 = BYTE1(v26);
  if (BYTE1(v26))
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  v22 = v25;
  LOWORD(v23) = v17 | v26;
  BYTE2(v23) = 0;
  v18 = v25;
  sub_21CE02AB0(v25, *(&v25 + 1), v26, SBYTE1(v26));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FFE8, &unk_21CE71030);
  sub_21CDE8C68();
  sub_21CDE8D74();
  sub_21CE6C400();
  sub_21CDE5494(&v28, &qword_27CE3FFF8, &qword_21CE70CA8);
  sub_21CE02AC0(v18, *(&v18 + 1), v15, v16);
LABEL_16:
  result = *&v25;
  v20 = v26;
  v21 = BYTE2(v26);
  *a1 = v25;
  *(a1 + 16) = v20;
  *(a1 + 18) = v21;
  return result;
}

id sub_21CE02A90(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_21CE02AA0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_21CE02AB0(void *a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_21CE02A90(a1, a2, a3 & 1);
  }

  else
  {
  }
}

void sub_21CE02AC0(void *a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    sub_21CE02AA0(a1, a2, a3 & 1);
  }

  else
  {
  }
}

void *sub_21CE02B58(void *a1)
{
  v39 = sub_21CE6BA60();
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v39);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = v35 - v7;
  v8 = type metadata accessor for NSBundle.PluginLocation(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[3];
  v36 = a1[2];
  v16 = type metadata accessor for SettingsPaneRecipe();
  sub_21CE0021C(a1 + *(v16 + 24), v12);
  v17 = *(v16 + 28);
  v38 = a1;
  sub_21CE00700(a1 + v17, v40);
  v35[2] = type metadata accessor for SettingsExperienceContentCoordinator();
  v18 = swift_allocObject();
  v18[10] = 0;
  v18[3] = v14;
  v18[4] = v13;
  sub_21CE00700(v40, (v18 + 5));

  v19 = v36;
  v20 = v15;
  sub_21CE6B9C0();
  v21 = &v12[*(v9 + 28)];
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = v37;
  sub_21CE6B9D0();
  v25 = *(v2 + 8);
  v26 = v6;
  v27 = v39;
  v41 = v2 + 8;
  v25(v26, v39);
  if ((_sSo8NSBundleC8SettingsE30settingsExperiencePluginExists4name8locationSbSS_AbCE0E8LocationVtFZ_0(v19, v20, v12) & 1) != 0 && (v28 = objc_allocWithZone(MEMORY[0x277CCA8D8]), v29 = sub_21CE6B9B0(), v30 = [v28 initWithURL_], v29, v30))
  {
    v25(v24, v27);
    sub_21CE02EEC(v38, type metadata accessor for SettingsPaneRecipe);
    sub_21CDE5494(v40, qword_27CE40D00, &qword_21CE706F0);
    sub_21CE02EEC(v12, type metadata accessor for NSBundle.PluginLocation);
    v18[2] = v30;
  }

  else
  {
    sub_21CE025C0();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
    v25(v24, v27);
    sub_21CE02EEC(v38, type metadata accessor for SettingsPaneRecipe);
    sub_21CDE5494(v40, qword_27CE40D00, &qword_21CE706F0);
    sub_21CE02EEC(v12, type metadata accessor for NSBundle.PluginLocation);
    v32 = v18[4];

    sub_21CDE5494((v18 + 5), qword_27CE40D00, &qword_21CE706F0);
    v33 = v18[10];

    swift_deallocPartialClassInstance();
  }

  return v18;
}

uint64_t sub_21CE02EEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21CE03018(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = MobileGestalt_get_current_device();
  if (v4)
  {
    v5 = v4;
    internalBuild = MobileGestalt_get_internalBuild();

    if (internalBuild)
    {
      v7 = sub_21CE6C3D0();
      sub_21CE032B8(a1, &v35);
      v26 = v43;
      v27 = v44;
      v22 = v39;
      v23 = v40;
      v24 = v41;
      v25 = v42;
      v18 = v35;
      v19 = v36;
      v20 = v37;
      v21 = v38;
      v29[8] = v43;
      v29[9] = v44;
      v29[4] = v39;
      v29[5] = v40;
      v29[6] = v41;
      v29[7] = v42;
      v29[0] = v35;
      v29[1] = v36;
      v28 = v45;
      v30 = v45;
      v29[2] = v37;
      v29[3] = v38;
      sub_21CDFAA5C(&v18, &v31, &qword_27CE40008, &qword_21CE70DC8);
      sub_21CDE5494(v29, &qword_27CE40008, &qword_21CE70DC8);
      *&v17[119] = v25;
      *&v17[135] = v26;
      *&v17[151] = v27;
      *&v17[55] = v21;
      *&v17[71] = v22;
      *&v17[87] = v23;
      *&v17[103] = v24;
      *&v17[7] = v18;
      *&v17[23] = v19;
      v17[167] = v28;
      *&v17[39] = v20;
      KeyPath = swift_getKeyPath();
      v9 = sub_21CE6C590();
      *&v32[113] = *&v17[112];
      *&v32[129] = *&v17[128];
      *&v32[145] = *&v17[144];
      *&v32[49] = *&v17[48];
      *&v32[65] = *&v17[64];
      *&v32[81] = *&v17[80];
      *&v32[97] = *&v17[96];
      *&v32[1] = *v17;
      *&v32[17] = *&v17[16];
      LOBYTE(v35) = 1;
      v31 = v7;
      v32[0] = 1;
      *&v32[161] = *&v17[160];
      *&v32[33] = *&v17[32];
      *&v33 = KeyPath;
      BYTE8(v33) = 1;
      v34[0] = v9;
      memset(&v34[8], 0, 32);
      v34[40] = 1;
      nullsub_1(&v31);
      v47 = v33;
      v48 = *v34;
      v49[0] = *&v34[16];
      *(v49 + 9) = *&v34[25];
      v43 = *&v32[112];
      v44 = *&v32[128];
      v45 = *&v32[144];
      v46 = *&v32[160];
      v39 = *&v32[48];
      v40 = *&v32[64];
      v41 = *&v32[80];
      v42 = *&v32[96];
      v35 = v31;
      v36 = *v32;
      v37 = *&v32[16];
      v38 = *&v32[32];
    }

    else
    {
      sub_21CE0370C(&v35);
    }

    v10 = v48;
    a2[12] = v47;
    a2[13] = v10;
    a2[14] = v49[0];
    *(a2 + 233) = *(v49 + 9);
    v11 = v44;
    a2[8] = v43;
    a2[9] = v11;
    v12 = v46;
    a2[10] = v45;
    a2[11] = v12;
    v13 = v40;
    a2[4] = v39;
    a2[5] = v13;
    v14 = v42;
    a2[6] = v41;
    a2[7] = v14;
    v15 = v36;
    *a2 = v35;
    a2[1] = v15;
    v16 = v38;
    a2[2] = v37;
    a2[3] = v16;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21CE032B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CE6C980();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE6C970();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v36 = sub_21CE6C9A0();

  (*(v5 + 8))(v8, v4);
  sub_21CE6CAD0();
  sub_21CE6BFA0();
  v35 = v48;
  v9 = v49;
  LOBYTE(v4) = v51;
  v34 = v51;
  v39 = v52;
  v37 = v50;
  v38 = v53;
  v32 = sub_21CE6C910();
  KeyPath = swift_getKeyPath();
  LOBYTE(v59) = v9;
  v28 = v9;
  LOBYTE(v54) = v4;
  sub_21CE6C660();
  v10 = sub_21CE6C740();
  v29 = v11;
  v30 = v10;
  LOBYTE(v8) = v12;
  v31 = v13;

  v59 = 0;
  v60 = 0xE000000000000000;
  *&v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CE6D340();
  sub_21CE6C5D0();
  v14 = sub_21CE6C740();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v45 = v8 & 1;
  v44 = 1;
  *&v54 = v36;
  *(&v54 + 1) = v35;
  LOBYTE(v55) = v9;
  *(&v55 + 1) = *v47;
  DWORD1(v55) = *&v47[3];
  *(&v55 + 1) = v37;
  LOBYTE(v56) = v34;
  DWORD1(v56) = *&v46[3];
  *(&v56 + 1) = *v46;
  *(&v56 + 1) = v39;
  *&v57 = v38;
  *(&v57 + 1) = KeyPath;
  v58 = v32;
  *(v43 + 7) = v54;
  *(&v43[4] + 7) = v32;
  *(&v43[3] + 7) = v57;
  *(&v43[2] + 7) = v56;
  *(&v43[1] + 7) = v55;
  v42 = v8 & 1;
  v41 = v18 & 1;
  v40 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v21 = v43[1];
  *(a2 + 9) = v43[0];
  v22 = v43[2];
  v23 = v43[3];
  *(a2 + 72) = *(&v43[3] + 15);
  *(a2 + 57) = v23;
  *(a2 + 41) = v22;
  *(a2 + 25) = v21;
  v24 = v29;
  v25 = v30;
  *(a2 + 88) = v30;
  *(a2 + 96) = v24;
  *(a2 + 104) = v8 & 1;
  *(a2 + 112) = v31;
  *(a2 + 120) = v14;
  *(a2 + 128) = v16;
  *(a2 + 136) = v18 & 1;
  *(a2 + 144) = v20;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  sub_21CDFAA5C(&v54, &v59, &qword_27CE40010, &qword_21CE70E38);
  sub_21CE037E4(v25, v24, v8 & 1);

  sub_21CE037E4(v14, v16, v18 & 1);

  sub_21CE037F4(v14, v16, v18 & 1);

  sub_21CE037F4(v25, v24, v45);

  v59 = v36;
  v60 = v35;
  v61 = v28;
  *v62 = *v47;
  *&v62[3] = *&v47[3];
  v63 = v37;
  v64 = v34;
  *v65 = *v46;
  *&v65[3] = *&v46[3];
  v66 = v39;
  v67 = v38;
  v68 = KeyPath;
  v69 = v32;
  return sub_21CDE5494(&v59, &qword_27CE40010, &qword_21CE70E38);
}

double sub_21CE0370C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 233) = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_21CE03738@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CE6C200();
  *a1 = result;
  return result;
}

uint64_t sub_21CE0378C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CE6C1A0();
  *a1 = result;
  return result;
}

uint64_t sub_21CE037B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_21CE6C1B0();
}

uint64_t sub_21CE037E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21CE037F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_21CE03804()
{
  result = qword_27CE40018;
  if (!qword_27CE40018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40020, &qword_21CE70E40);
    sub_21CE03888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40018);
  }

  return result;
}

unint64_t sub_21CE03888()
{
  result = qword_27CE40028;
  if (!qword_27CE40028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40030, &qword_21CE70E48);
    sub_21CE03914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40028);
  }

  return result;
}

unint64_t sub_21CE03914()
{
  result = qword_27CE40038;
  if (!qword_27CE40038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40040, &qword_21CE70E50);
    sub_21CDE4158(&qword_27CE40048, &qword_27CE40050, &qword_21CE70E58);
    sub_21CDE4158(&qword_2812131A8, &qword_27CE40058, &qword_21CE70E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40038);
  }

  return result;
}

unint64_t sub_21CE039F8()
{
  type metadata accessor for SettingsExperienceCoordinationManager();
  v0 = swift_allocObject();
  result = sub_21CDFA274(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_2812123D0 = v0;
  return result;
}

uint64_t static SettingsExperienceCoordinationManager.shared.getter()
{
  if (qword_2812123C8 != -1)
  {
    swift_once();
  }
}

void sub_21CE03A9C(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for SettingsPaneRecipe();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v71 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v75 = (&v71 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - v16;
  if (qword_281213290 != -1)
  {
    swift_once();
  }

  v18 = sub_21CE6BDA0();
  v19 = __swift_project_value_buffer(v18, qword_2812165D8);
  sub_21CE06EA4(a1, v17, type metadata accessor for SettingsPaneRecipe);
  swift_retain_n();
  v73 = v19;
  v20 = sub_21CE6BD80();
  v21 = sub_21CE6CF30();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v72 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v74 = v2;
    v71 = v24;
    v77 = v24;
    *v23 = 136446466;
    v25 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
    v26 = v4;
    v27 = v13;
    v28 = a1;
    v30 = v29;
    sub_21CE06F0C(v17, type metadata accessor for SettingsPaneRecipe);
    v31 = sub_21CDF2CC8(v25, v30, &v77);
    a1 = v28;
    v13 = v27;
    v4 = v26;

    *(v23 + 4) = v31;
    *(v23 + 12) = 2050;
    swift_beginAccess();
    v32 = *(*(v26 + 16) + 16);

    *(v23 + 14) = v32;

    _os_log_impl(&dword_21CDE1000, v20, v21, "Start lookup for coordinator for recipe '%{public}s' (%{public}ld item(s) in table)…", v23, 0x16u);
    v33 = v71;
    __swift_destroy_boxed_opaque_existential_1(v71);
    v3 = v74;
    MEMORY[0x21CF1BD50](v33, -1, -1);
    v34 = v23;
    v10 = v72;
    MEMORY[0x21CF1BD50](v34, -1, -1);
  }

  else
  {

    sub_21CE06F0C(v17, type metadata accessor for SettingsPaneRecipe);
  }

  swift_beginAccess();
  if (!*(*(v4 + 16) + 16) || (v35 = *(v4 + 16), , sub_21CE66984(a1), v37 = v36, , (v37 & 1) == 0))
  {
    v49 = v75;
    sub_21CE06EA4(a1, v75, type metadata accessor for SettingsPaneRecipe);
    v50 = sub_21CE02B58(v49);
    if (!v3)
    {
      v51 = v50;
      swift_beginAccess();

      v52 = *(v4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v4 + 16);
      *(v4 + 16) = 0x8000000000000000;
      sub_21CE063C4(v51, a1, isUniquelyReferenced_nonNull_native);
      *(v4 + 16) = v78;
      swift_endAccess();
      sub_21CE06EA4(a1, v13, type metadata accessor for SettingsPaneRecipe);
      v54 = sub_21CE6BD80();
      v55 = sub_21CE6CF30();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v74 = 0;
        v57 = v56;
        v58 = a1;
        v59 = swift_slowAlloc();
        v76[0] = v59;
        *v57 = 136446210;
        v60 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
        v61 = v13;
        v63 = v62;
        sub_21CE06F0C(v61, type metadata accessor for SettingsPaneRecipe);
        v64 = sub_21CDF2CC8(v60, v63, v76);

        *(v57 + 4) = v64;
        _os_log_impl(&dword_21CDE1000, v54, v55, "Returning new instance of coordinator for recipe '%{public}s'.", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        v65 = v59;
        a1 = v58;
        MEMORY[0x21CF1BD50](v65, -1, -1);
        MEMORY[0x21CF1BD50](v57, -1, -1);
      }

      else
      {

        sub_21CE06F0C(v13, type metadata accessor for SettingsPaneRecipe);
      }
    }

    goto LABEL_18;
  }

  sub_21CE06EA4(a1, v10, type metadata accessor for SettingsPaneRecipe);
  v38 = sub_21CE6BD80();
  v39 = v10;
  v40 = sub_21CE6CF30();
  if (os_log_type_enabled(v38, v40))
  {
    v41 = swift_slowAlloc();
    v74 = v3;
    v42 = v41;
    v43 = swift_slowAlloc();
    v76[0] = v43;
    *v42 = 136446210;
    v44 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
    v45 = a1;
    v47 = v46;
    sub_21CE06F0C(v39, type metadata accessor for SettingsPaneRecipe);
    v48 = sub_21CDF2CC8(v44, v47, v76);
    a1 = v45;

    *(v42 + 4) = v48;
    _os_log_impl(&dword_21CDE1000, v38, v40, "Return existing coordinator for recipe '%{public}s'.", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x21CF1BD50](v43, -1, -1);
    MEMORY[0x21CF1BD50](v42, -1, -1);
  }

  else
  {

    sub_21CE06F0C(v39, type metadata accessor for SettingsPaneRecipe);
  }

  v66 = *(v4 + 16);
  if (*(v66 + 16))
  {
    v67 = *(v4 + 16);

    v68 = sub_21CE66984(a1);
    if (v69)
    {
      v70 = *(*(v66 + 56) + 8 * v68);

LABEL_18:
      sub_21CE04150(a1, v4);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_21CE04150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaneRecipe();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281213290 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  __swift_project_value_buffer(v8, qword_2812165D8);
  sub_21CE06EA4(a1, v7, type metadata accessor for SettingsPaneRecipe);
  swift_retain_n();
  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CF30();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446466;
    v13 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
    v15 = v14;
    sub_21CE06F0C(v7, type metadata accessor for SettingsPaneRecipe);
    v16 = sub_21CDF2CC8(v13, v15, &v19);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2050;
    swift_beginAccess();
    v17 = *(*(a2 + 16) + 16);

    *(v11 + 14) = v17;

    _os_log_impl(&dword_21CDE1000, v9, v10, "…completed lookup for coordinator for recipe '%{public}s' (%{public}ld item(s) in table).", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CF1BD50](v12, -1, -1);
    MEMORY[0x21CF1BD50](v11, -1, -1);
  }

  else
  {

    sub_21CE06F0C(v7, type metadata accessor for SettingsPaneRecipe);
  }
}

void sub_21CE043A4(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SettingsPaneRecipe();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281213290 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  __swift_project_value_buffer(v8, qword_2812165D8);
  sub_21CE06EA4(a1, v7, type metadata accessor for SettingsPaneRecipe);
  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CF30();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136446210;
    v13 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
    v15 = v14;
    sub_21CE06F0C(v7, type metadata accessor for SettingsPaneRecipe);
    v16 = sub_21CDF2CC8(v13, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_21CDE1000, v9, v10, "Handling request to remove coordinator for recipe '%{public}s'.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CF1BD50](v12, -1, -1);
    MEMORY[0x21CF1BD50](v11, -1, -1);
  }

  else
  {

    sub_21CE06F0C(v7, type metadata accessor for SettingsPaneRecipe);
  }

  swift_beginAccess();
  v17 = sub_21CE046FC(a1);
  swift_endAccess();
  if (v17)
  {

    v18 = sub_21CE6BD80();
    v19 = sub_21CE6CF30();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134349056;
      *(v20 + 4) = *(*(v2 + 16) + 16);

      v21 = "Removed coordinator successfully (%{public}ld item(s) in table).";
LABEL_11:
      _os_log_impl(&dword_21CDE1000, v18, v19, v21, v20, 0xCu);
      MEMORY[0x21CF1BD50](v20, -1, -1);

      return;
    }
  }

  else
  {

    v18 = sub_21CE6BD80();
    v19 = sub_21CE6CF30();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134349056;
      *(v20 + 4) = *(*(v2 + 16) + 16);

      v21 = "Coordinator not found in lookup table (%{public}ld item(s) in table).";
      goto LABEL_11;
    }
  }
}

uint64_t sub_21CE046FC(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_21CE66984(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21CE46A54();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for SettingsPaneRecipe();
  sub_21CE06F0C(v10 + *(*(v11 - 8) + 72) * v6, type metadata accessor for SettingsPaneRecipe);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_21CE59A8C(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_21CE047C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[48] = a3;
  v4[49] = v3;
  v4[46] = a1;
  v4[47] = a2;
  v5 = type metadata accessor for SettingsPaneRecipe();
  v4[50] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v7 = type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(0);
  v4[56] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[57] = swift_task_alloc();
  v9 = type metadata accessor for SettingsExperienceOpenURLAction.Input(0);
  v4[58] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[59] = swift_task_alloc();
  v11 = *(*(type metadata accessor for SettingsExperienceOpenURLAction.Result(0) - 8) + 64) + 15;
  v4[60] = swift_task_alloc();
  v12 = sub_21CE6C090();
  v4[61] = v12;
  v13 = *(v12 - 8);
  v4[62] = v13;
  v14 = *(v13 + 64) + 15;
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v15 = sub_21CE6BA60();
  v4[68] = v15;
  v16 = *(v15 - 8);
  v4[69] = v16;
  v17 = *(v16 + 64) + 15;
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  sub_21CE6CDE0();
  v4[72] = sub_21CE6CDD0();
  v19 = sub_21CE6CDB0();
  v4[73] = v19;
  v4[74] = v18;

  return MEMORY[0x2822009F8](sub_21CE04A40, v19, v18);
}

uint64_t sub_21CE04A40()
{
  v79 = v0;
  if (qword_281213290 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 568);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 376);
  v5 = sub_21CE6BDA0();
  *(v0 + 600) = __swift_project_value_buffer(v5, qword_2812165D8);
  v6 = *(v2 + 16);
  *(v0 + 608) = v6;
  *(v0 + 616) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF30();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 568);
  v11 = *(v0 + 552);
  v12 = *(v0 + 544);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v76[0] = v70;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_21CDE8A7C(&qword_2812132B0, MEMORY[0x277CC9260]);
    v68 = v8;
    v14 = v6;
    v15 = sub_21CE6D3E0();
    v17 = v16;
    v73 = *(v11 + 8);
    v73(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_21CDF2CC8(v18, v17, v76);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_21CDE1000, v7, v68, "Start openURL '%{private,mask.hash}s'…", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x21CF1BD50](v70, -1, -1);
    MEMORY[0x21CF1BD50](v13, -1, -1);
  }

  else
  {

    v73 = *(v11 + 8);
    v73(v10, v12);
  }

  v20 = *(v0 + 384);
  sub_21CE01EE0(v76);
  v21 = v77;
  if (v77)
  {
    v22 = *(v0 + 536);
    v23 = v78;
    v24 = v76[1];
    *(v0 + 16) = v76[0];
    *(v0 + 32) = v24;
    *(v0 + 48) = v76[2];
    *(v0 + 64) = v21;
    *(v0 + 72) = v23;
    sub_21CE6C080();
    swift_beginAccess();
    *(v0 + 632) = v23;
    *(v0 + 624) = 0;
    v25 = *(v0 + 616);
    v26 = *(v0 + 536);
    v27 = *(v0 + 488);
    v28 = *(v0 + 496);
    v30 = *(v0 + 464);
    v29 = *(v0 + 472);
    (*(v0 + 608))(v29, *(v0 + 376), *(v0 + 544));
    v31 = *(v30 + 20);
    v32 = *(v28 + 16);
    *(v0 + 640) = v32;
    *(v0 + 648) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32(v29 + v31, v26, v27);

    v74 = (v21 + *v21);
    v33 = v21[1];
    v34 = swift_task_alloc();
    *(v0 + 656) = v34;
    *v34 = v0;
    v34[1] = sub_21CE050A0;
    v36 = *(v0 + 472);
    v35 = *(v0 + 480);

    return v74(v35, v36);
  }

  else
  {
    v38 = *(v0 + 576);
    v39 = *(v0 + 560);
    v40 = *(v0 + 544);
    v41 = *(v0 + 376);

    v6(v39, v41, v40);
    v42 = sub_21CE6BD80();
    v43 = sub_21CE6CF10();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 560);
    v46 = *(v0 + 552);
    v47 = *(v0 + 544);
    if (v44)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v76[0] = v49;
      *v48 = 141558275;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2081;
      sub_21CDE8A7C(&qword_2812132B0, MEMORY[0x277CC9260]);
      v50 = sub_21CE6D3E0();
      v52 = v51;
      v73(v45, v47);
      v53 = sub_21CDF2CC8(v50, v52, v76);

      *(v48 + 14) = v53;
      _os_log_impl(&dword_21CDE1000, v42, v43, "Attempted to open URL '%{private,mask.hash}s' but no settings experience content was found.", v48, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x21CF1BD50](v49, -1, -1);
      MEMORY[0x21CF1BD50](v48, -1, -1);
    }

    else
    {

      v73(v45, v47);
    }

    v54 = *(v0 + 368);
    v55 = *(v0 + 376);
    sub_21CE6C080();
    sub_21CE05FE4(v55);
    v56 = *(v0 + 568);
    v57 = *(v0 + 560);
    v58 = *(v0 + 536);
    v59 = *(v0 + 528);
    v60 = *(v0 + 520);
    v62 = *(v0 + 504);
    v61 = *(v0 + 512);
    v64 = *(v0 + 472);
    v63 = *(v0 + 480);
    v65 = *(v0 + 456);
    v67 = *(v0 + 440);
    v69 = *(v0 + 432);
    v71 = *(v0 + 424);
    v72 = *(v0 + 416);
    v75 = *(v0 + 408);

    v66 = *(v0 + 8);

    return v66();
  }
}

uint64_t sub_21CE050A0()
{
  v1 = *v0;
  v2 = *(*v0 + 656);
  v3 = *(*v0 + 632);
  v4 = *(*v0 + 472);
  v8 = *v0;

  sub_21CE06F0C(v4, type metadata accessor for SettingsExperienceOpenURLAction.Input);
  v5 = *(v1 + 592);
  v6 = *(v1 + 584);

  return MEMORY[0x2822009F8](sub_21CE05214, v6, v5);
}

uint64_t sub_21CE05214()
{
  v170 = v0;
  v1 = *(v0 + 448);
  sub_21CE06EA4(*(v0 + 480), *(v0 + 456), type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 600);
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(v0 + 512);
    v8 = *(v0 + 488);
    v7 = *(v0 + 496);
    v9 = *(v0 + 456);
    v10 = *(v0 + 440);
    v154 = *(v0 + 432);
    v158 = *(v0 + 504);
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE3FF60, &qword_21CE70A70) + 48);
    sub_21CDFA9F8(v9, v10);
    (*(v7 + 32))(v6, v9 + v11, v8);
    sub_21CE06EA4(v10, v154, type metadata accessor for SettingsPaneRecipe);
    v4(v158, v6, v8);
    v12 = sub_21CE6BD80();
    v13 = sub_21CE6CF30();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 504);
    v16 = *(v0 + 432);
    v17 = (*(v0 + 496) + 8);
    if (v14)
    {
      v159 = *(v0 + 488);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v165 = v19;
      *v18 = 136446722;
      v20 = *(v0 + 32);
      v166 = *(v0 + 16);
      v167 = v20;
      v21 = *(v0 + 64);
      v168 = *(v0 + 48);
      v169 = v21;
      v22 = sub_21CE010C0();
      v24 = sub_21CDF2CC8(v22, v23, &v165);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2082;
      v25 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
      v27 = v26;
      sub_21CE06F0C(v16, type metadata accessor for SettingsPaneRecipe);
      v28 = sub_21CDF2CC8(v25, v27, &v165);

      *(v18 + 14) = v28;
      *(v18 + 22) = 2050;
      v29 = sub_21CE6C050();
      v30 = *v17;
      (*v17)(v15, v159);
      *(v18 + 24) = v29;
      _os_log_impl(&dword_21CDE1000, v12, v13, "Current item %{public}s requested to open settings experience for %{public}s. Working Navigation Path contains %{public}ld item(s).", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v19, -1, -1);
      MEMORY[0x21CF1BD50](v18, -1, -1);
    }

    else
    {
      v30 = *v17;
      (*v17)(*(v0 + 504), *(v0 + 488));

      sub_21CE06F0C(v16, type metadata accessor for SettingsPaneRecipe);
    }

    v53 = *(v0 + 624);
    v54 = *(v0 + 392);
    sub_21CE03A9C(*(v0 + 440));
    if (!v53)
    {
      v55 = *(v0 + 600);
      sub_21CE06EA4(*(v0 + 440), *(v0 + 424), type metadata accessor for SettingsPaneRecipe);
      v56 = sub_21CE6BD80();
      v57 = sub_21CE6CF30();
      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v0 + 424);
      if (v58)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v166 = v61;
        *v60 = 136446210;
        v62 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
        v64 = v63;
        sub_21CE06F0C(v59, type metadata accessor for SettingsPaneRecipe);
        v65 = sub_21CDF2CC8(v62, v64, &v166);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_21CDE1000, v56, v57, "Coordinator initialized for %{public}s, moving to load plugin.", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x21CF1BD50](v61, -1, -1);
        MEMORY[0x21CF1BD50](v60, -1, -1);
      }

      else
      {

        sub_21CE06F0C(v59, type metadata accessor for SettingsPaneRecipe);
      }

      sub_21CE0226C();
      v115 = *(v0 + 600);
      sub_21CE06EA4(*(v0 + 440), *(v0 + 416), type metadata accessor for SettingsPaneRecipe);
      v116 = sub_21CE6BD80();
      v117 = sub_21CE6CF30();
      v118 = os_log_type_enabled(v116, v117);
      v119 = *(v0 + 416);
      if (v118)
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *&v166 = v121;
        *v120 = 136446210;
        v122 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
        v124 = v123;
        sub_21CE06F0C(v119, type metadata accessor for SettingsPaneRecipe);
        v125 = sub_21CDF2CC8(v122, v124, &v166);

        *(v120 + 4) = v125;
        _os_log_impl(&dword_21CDE1000, v116, v117, "Plugin loaded for %{public}s.", v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v121);
        MEMORY[0x21CF1BD50](v121, -1, -1);
        MEMORY[0x21CF1BD50](v120, -1, -1);
      }

      else
      {

        sub_21CE06F0C(v119, type metadata accessor for SettingsPaneRecipe);
      }

      result = sub_21CE01EE0((v0 + 144));
      v126 = *(v0 + 192);
      if (v126)
      {
        v127 = *(v0 + 536);
        v128 = *(v0 + 512);
        v130 = *(v0 + 488);
        v129 = *(v0 + 496);
        v131 = *(v0 + 440);
        v157 = *(v0 + 400);
        v163 = *(v0 + 480);
        v132 = *(v0 + 200);
        v133 = *(v0 + 32);
        *(v0 + 208) = *(v0 + 16);
        *(v0 + 224) = v133;
        v134 = *(v0 + 64);
        *(v0 + 240) = *(v0 + 48);
        *(v0 + 256) = v134;
        v135 = *(v0 + 176);
        *(v0 + 32) = *(v0 + 160);
        *(v0 + 48) = v135;
        *(v0 + 16) = *(v0 + 144);
        *(v0 + 64) = v126;
        *(v0 + 72) = v132;
        sub_21CE02FA8(v0 + 208);
        (*(v129 + 24))(v127, v128, v130);
        sub_21CDE8A7C(qword_281213068, type metadata accessor for SettingsPaneRecipe);
        sub_21CE6C060();

        v30(v128, v130);
        sub_21CE06F0C(v131, type metadata accessor for SettingsPaneRecipe);
        sub_21CE06F0C(v163, type metadata accessor for SettingsExperienceOpenURLAction.Result);
        *(v0 + 632) = v132;
        *(v0 + 624) = 0;
        v136 = *(v0 + 616);
        v137 = *(v0 + 536);
        v138 = *(v0 + 488);
        v139 = *(v0 + 496);
        v141 = *(v0 + 464);
        v140 = *(v0 + 472);
        (*(v0 + 608))(v140, *(v0 + 376), *(v0 + 544));
        v142 = *(v141 + 20);
        v143 = *(v139 + 16);
        *(v0 + 640) = v143;
        *(v0 + 648) = (v139 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v143(v140 + v142, v137, v138);

        v164 = (v126 + *v126);
        v144 = v126[1];
        v145 = swift_task_alloc();
        *(v0 + 656) = v145;
        *v145 = v0;
        v145[1] = sub_21CE050A0;
        v147 = *(v0 + 472);
        v146 = *(v0 + 480);

        return v164(v146, v147);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v66 = *(v0 + 600);
    v67 = *(v0 + 576);
    v68 = *(v0 + 440);
    v69 = *(v0 + 408);

    sub_21CE06EA4(v68, v69, type metadata accessor for SettingsPaneRecipe);
    v70 = v53;
    v71 = sub_21CE6BD80();
    v72 = sub_21CE6CF10();

    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 488);
    v155 = v74;
    v161 = *(v0 + 512);
    v75 = *(v0 + 480);
    v76 = *(v0 + 440);
    v77 = *(v0 + 408);
    if (v73)
    {
      v152 = v30;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v166 = v80;
      *v78 = 136446466;
      v148 = v76;
      v149 = v75;
      v81 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
      v83 = v82;
      sub_21CE06F0C(v77, type metadata accessor for SettingsPaneRecipe);
      v84 = sub_21CDF2CC8(v81, v83, &v166);

      *(v78 + 4) = v84;
      *(v78 + 12) = 2114;
      v85 = v53;
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 14) = v86;
      *v79 = v86;
      _os_log_impl(&dword_21CDE1000, v71, v72, "Failed to open settings experience for %{public}s: %{public}@", v78, 0x16u);
      sub_21CE06F6C(v79);
      MEMORY[0x21CF1BD50](v79, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x21CF1BD50](v80, -1, -1);
      v87 = v78;
      v30 = v152;
      MEMORY[0x21CF1BD50](v87, -1, -1);

      v152(v161, v155);
      sub_21CE06F0C(v148, type metadata accessor for SettingsPaneRecipe);
      v88 = v149;
    }

    else
    {

      sub_21CE06F0C(v77, type metadata accessor for SettingsPaneRecipe);
      v30(v161, v155);
      sub_21CE06F0C(v76, type metadata accessor for SettingsPaneRecipe);
      v88 = v75;
    }

    sub_21CE06F0C(v88, type metadata accessor for SettingsExperienceOpenURLAction.Result);
  }

  else
  {
    v31 = *(v0 + 576);
    v32 = *(v0 + 528);
    v33 = *(v0 + 520);
    v34 = *(v0 + 488);
    v35 = *(v0 + 496);
    v36 = *(v0 + 456);

    (*(v35 + 32))(v32, v36, v34);
    v4(v33, v32, v34);
    v37 = sub_21CE6BD80();
    v38 = sub_21CE6CF30();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 520);
    v41 = *(v0 + 488);
    v42 = *(v0 + 480);
    v43 = (*(v0 + 496) + 8);
    if (v39)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v165 = v45;
      *v44 = 136446466;
      swift_beginAccess();
      v46 = *(v0 + 32);
      v166 = *(v0 + 16);
      v167 = v46;
      v47 = *(v0 + 64);
      v168 = *(v0 + 48);
      v169 = v47;
      v160 = v42;
      v48 = sub_21CE010C0();
      v50 = sub_21CDF2CC8(v48, v49, &v165);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2050;
      v51 = sub_21CE6C050();
      v30 = *v43;
      (*v43)(v40, v41);
      *(v44 + 14) = v51;
      _os_log_impl(&dword_21CDE1000, v37, v38, "Received handled response from %{public}s with resolved navigation path of %{public}ld item(s).", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x21CF1BD50](v45, -1, -1);
      MEMORY[0x21CF1BD50](v44, -1, -1);

      v52 = v160;
    }

    else
    {
      v30 = *v43;
      (*v43)(*(v0 + 520), *(v0 + 488));

      v52 = v42;
    }

    sub_21CE06F0C(v52, type metadata accessor for SettingsExperienceOpenURLAction.Result);
    (*(*(v0 + 496) + 40))(*(v0 + 536), *(v0 + 528), *(v0 + 488));
  }

  v89 = *(v0 + 600);
  v90 = sub_21CE6BD80();
  v91 = sub_21CE6CF30();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = *(v0 + 536);
    v93 = swift_slowAlloc();
    *v93 = 134349056;
    swift_beginAccess();
    *(v93 + 4) = sub_21CE6C050();
    _os_log_impl(&dword_21CDE1000, v90, v91, "Resolved navigation path of %{public}ld item(s).", v93, 0xCu);
    MEMORY[0x21CF1BD50](v93, -1, -1);
  }

  v94 = *(v0 + 648);
  v95 = *(v0 + 640);
  v96 = *(v0 + 536);
  v97 = *(v0 + 488);
  v98 = *(v0 + 496);
  v100 = *(v0 + 368);
  v99 = *(v0 + 376);

  swift_beginAccess();
  v95(v100, v96, v97);
  v30(v96, v97);
  v101 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v101;
  v102 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v102;
  sub_21CE02FA8(v0 + 80);
  sub_21CE05FE4(v99);
  v103 = *(v0 + 568);
  v104 = *(v0 + 560);
  v105 = *(v0 + 536);
  v106 = *(v0 + 528);
  v107 = *(v0 + 520);
  v109 = *(v0 + 504);
  v108 = *(v0 + 512);
  v111 = *(v0 + 472);
  v110 = *(v0 + 480);
  v112 = *(v0 + 456);
  v150 = *(v0 + 440);
  v151 = *(v0 + 432);
  v153 = *(v0 + 424);
  v156 = *(v0 + 416);
  v162 = *(v0 + 408);

  v113 = *(v0 + 8);

  return v113();
}

void sub_21CE05FE4(uint64_t a1)
{
  v2 = sub_21CE6BA60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281213290 != -1)
  {
    swift_once();
  }

  v7 = sub_21CE6BDA0();
  __swift_project_value_buffer(v7, qword_2812165D8);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_21CE6BD80();
  v9 = sub_21CE6CF30();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_21CDE8A7C(&qword_2812132B0, MEMORY[0x277CC9260]);
    v12 = sub_21CE6D3E0();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_21CDF2CC8(v12, v14, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_21CDE1000, v8, v9, "…completed openURL '%{private,mask.hash}s'.", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CF1BD50](v11, -1, -1);
    MEMORY[0x21CF1BD50](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t SettingsExperienceCoordinationManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SettingsExperienceCoordinationManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21CE062C0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_21CE06320@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_21CE06350(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_21CE063C4(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SettingsPaneRecipe();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21CE66984(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_21CE46A54();
      goto LABEL_7;
    }

    sub_21CE45588(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_21CE66984(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21CE06EA4(a2, v11, type metadata accessor for SettingsPaneRecipe);
      return sub_21CE06CE8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_21CE6D440();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_21CE06568(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21CE66850(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21CE45CA0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_21CE66850(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_21CE6D440();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_21CE46DDC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_21CE066E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21CE66850(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21CE45F44(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_21CE66850(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_21CE6D440();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21CE46F48();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

_OWORD *sub_21CE06868(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21CE66850(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21CE470C0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21CE46204(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_21CE66850(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_21CE6D440();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_21CDFA678(a1, v23);
  }

  else
  {
    sub_21CE06D88(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_21CE06A10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_21CE66850(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_21CE66850(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_21CE6D440();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

_OWORD *sub_21CE06BA8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21CE669F0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_21CE473EC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_21CE46784(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_21CE669F0(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_21CE6D440();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_21CDFA678(a1, v20);
  }

  else
  {
    sub_21CE06E3C(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_21CE06CE8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SettingsPaneRecipe();
  result = sub_21CDFA9F8(a2, v8 + *(*(v9 - 8) + 72) * a1);
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

_OWORD *sub_21CE06D88(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21CDFA678(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_21CE06DF4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

_OWORD *sub_21CE06E3C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_21CDFA678(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_21CE06EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CE06F0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CE06F6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40D20, &qword_21CE70EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of SettingsExperienceCoordinationManager.openURL(_:startingFrom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 136);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_21CDE7A00;

  return v12(a1, a2, a3);
}

uint64_t static _SettingsExperiencePluginLoading.load()()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t SettingsPane.init(makeContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x50746C7561666544;
  *(a3 + 8) = 0xEB00000000656E61;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

uint64_t SettingsPane.init(id:makeContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  return result;
}

void *SettingsPane.init<A>(id:for:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a10;
  v18[6] = a11;
  v18[7] = a12;
  v18[8] = a3;
  result = swift_allocObject();
  result[2] = a6;
  result[3] = a7;
  result[4] = a8;
  result[5] = a10;
  result[6] = a11;
  result[7] = a12;
  result[8] = a4;
  result[9] = a5;
  result[10] = sub_21CE074EC;
  result[11] = v18;
  *(a9 + 16) = a3;
  *(a9 + 24) = sub_21CE075F0;
  *(a9 + 32) = result;
  *(a9 + 40) = 1;
  return result;
}

uint64_t sub_21CE07384(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (swift_getDynamicType() == a2)
  {
    sub_21CDE66C8(a1, &v6);
    return swift_dynamicCast();
  }

  else
  {
    sub_21CE6D290();
    MEMORY[0x21CF1ACB0](0x742064656C696146, 0xEF2074736163206FLL);
    sub_21CE6D340();
    MEMORY[0x21CF1ACB0](544175136, 0xE400000000000000);
    v5 = sub_21CE6D4F0();
    MEMORY[0x21CF1ACB0](v5);

    result = sub_21CE6D350();
    __break(1u);
  }

  return result;
}

uint64_t sub_21CE074EC(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return sub_21CE07384(a1, v1[8]);
}

uint64_t sub_21CE07500(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20]();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  a2(v13);
  return (*(v9 + 8))(v13, a7);
}

uint64_t sub_21CE075F0(uint64_t a1)
{
  v2 = *(v1 + 32);
  v5 = *(v1 + 56);
  v4 = *(v1 + 40);
  return sub_21CE07500(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 16), *(v1 + 24));
}

uint64_t SettingsPane._collectSettingsExperienceContentOutputs_v1(inputs:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  if (v3[5])
  {
    v12 = swift_allocObject();
    *(v12 + 16) = *(a2 + 16);
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDB8, &qword_21CE708D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21CE702B0;
    *(v13 + 32) = v7;
    *(v13 + 40) = v8;
    *(v13 + 48) = v9;
    *(v13 + 56) = sub_21CE07858;
    *(v13 + 64) = v12;
    *(v13 + 72) = 1;
  }

  else
  {
    v14 = sub_21CE67408(v3[2], v3[3], *(a2 + 16), *(a2 + 24));
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDB8, &qword_21CE708D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21CE702B0;
    *(v13 + 32) = v7;
    *(v13 + 40) = v8;
    *(v13 + 48) = v14;
    *(v13 + 56) = v16;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0;
  }

  *(v13 + 80) = v6;
  *(v13 + 88) = v5;
  *a3 = v13;

  return sub_21CE07864();
}

uint64_t (*sub_21CE077A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  sub_21CDE66C8(a1, v12);
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  sub_21CDFA678(v12, (v9 + 48));
  v10 = sub_21CE67408(sub_21CE07A98, v9, a4, a5);

  return v10;
}

uint64_t sub_21CE07870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v15(v14);
  sub_21CE328C8(v11, a4, a5);
  v16 = *(v7 + 8);
  v16(v11, a4);
  sub_21CE328C8(v13, a4, a5);
  return (v16)(v13, a4);
}

uint64_t sub_21CE079B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21CE079EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CE07A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SettingsPaneView.init(recipe:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SettingsPaneRecipe();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CE01738(a1, v7);
  v8 = type metadata accessor for SettingsPaneViewModel();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v13[1] = sub_21CE07E94(v7);
  sub_21CE6C9B0();
  result = sub_21CE07D30(a1);
  v12 = v13[3];
  *a2 = v13[2];
  a2[1] = v12;
  return result;
}

double SettingsPaneView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  *&v13 = *v1;
  *(&v13 + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40060, &unk_21CE71020);
  sub_21CE6C9C0();
  v4 = *(v12 + 16);
  v5 = *(v12 + 24);
  sub_21CE07D8C(v4, v5);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40000, &qword_21CE70D18);
    sub_21CE07D98();
    sub_21CDE8D74();
    sub_21CE6C400();
  }

  else
  {
    sub_21CE02614(&v13);
    v6 = v13;
    v7 = v15;
    v8 = v14;
    sub_21CE07DC8(v13, *(&v13 + 1), v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40000, &qword_21CE70D18);
    sub_21CE07D98();
    sub_21CDE8D74();
    sub_21CE6C400();
    sub_21CE07DD8(v4, 0);
    sub_21CE07DE4(v6, *(&v6 + 1), v8, v7);
  }

  result = *&v13;
  v10 = v14 | (v15 << 16);
  v11 = v16;
  *a1 = v13;
  *(a1 + 16) = v10;
  *(a1 + 18) = BYTE2(v10);
  *(a1 + 19) = v11;
  return result;
}

uint64_t sub_21CE07D30(uint64_t a1)
{
  v2 = type metadata accessor for SettingsPaneRecipe();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_21CE07D8C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

id sub_21CE07DC8(id a1, uint64_t a2, __int16 a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
    return sub_21CE02AB0(a1, a2, a3, HIBYTE(a3) & 1);
  }
}

void sub_21CE07DD8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_21CE07DE4(id a1, uint64_t a2, __int16 a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_21CE02AC0(a1, a2, a3, HIBYTE(a3) & 1);
  }
}

uint64_t sub_21CE07E10(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21CDE8D74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CE07E94(uint64_t *a1)
{
  v2 = v1;
  sub_21CE6BB80();
  sub_21CE01738(a1, v1 + OBJC_IVAR____TtC8Settings21SettingsPaneViewModel_recipe);
  if (qword_2812123C8 != -1)
  {
    swift_once();
  }

  sub_21CE03A9C(a1);
  v5 = v4;
  sub_21CE0226C();
  sub_21CE07D30(a1);
  *(v2 + 16) = v5;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_21CE07F78()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsPaneRecipe();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CE6CDE0();
  sub_21CE6CDD0();
  sub_21CE6CDB0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2812123C8 != -1)
  {
    swift_once();
  }

  v6 = OBJC_IVAR____TtC8Settings21SettingsPaneViewModel_recipe;
  sub_21CE01738(v0 + OBJC_IVAR____TtC8Settings21SettingsPaneViewModel_recipe, v5);
  sub_21CE043A4(v5);
  sub_21CE07D30(v5);

  sub_21CE07DD8(*(v0 + 16), *(v0 + 24));
  sub_21CE07D30(v0 + v6);
  v7 = OBJC_IVAR____TtC8Settings21SettingsPaneViewModel___observationRegistrar;
  v8 = sub_21CE6BB90();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t sub_21CE08108(uint64_t a1)
{
  sub_21CE07F78();
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CE0816C()
{
  sub_21CE6CDE0();
  sub_21CE6CDD0();
  v1 = sub_21CE6CDB0();
  v3 = v2;

  return MEMORY[0x2822009B0](v0, sub_21CE08108, v1, v3, 0);
}

uint64_t type metadata accessor for SettingsPaneViewModel()
{
  result = qword_281212C00;
  if (!qword_281212C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CE08254()
{
  result = type metadata accessor for SettingsPaneRecipe();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_21CE6BB90();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t TupleSettingsExperienceContent.init(_:)@<X0>(uint64_t TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = TupleTypeMetadata;
  v40 = a4;
  if (a2 == 1)
  {
    v7 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v10 = 0;
      v11 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != a2)
      {
LABEL_9:
        v16 = a2 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = *(v7 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TupleSettingsExperienceContent();
  v39 = &v37;
  v25 = *(v38 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v38);
  v28 = &v37 - v27;
  if (a2)
  {
    v29 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v30 = (v7 + 32);
    v31 = a2;
    do
    {
      if (a2 == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = *v30;
      }

      v34 = *v29++;
      v33 = v34;
      v35 = *v6++;
      (*(*(v33 - 8) + 32))(&v24[v32], v35);
      v30 += 4;
      --v31;
    }

    while (v31);
  }

  (*(v21 + 16))(v28, v24, v7);
  (*(v25 + 32))(v40, v28, v38);
  return (*(v21 + 8))(v24, v7);
}

uint64_t TupleSettingsExperienceContent.content.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v10 = 0;
      v11 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v24 + 16))(v23, v3, v7);
  if (v6)
  {
    v26 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v7 + 32);
    v28 = v6;
    do
    {
      if (v6 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v27;
      }

      v31 = *v26++;
      v30 = v31;
      v32 = *a2++;
      result = (*(*(v30 - 8) + 32))(v32, &v23[v29]);
      v27 += 4;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t TupleSettingsExperienceContent.content.setter(uint64_t TupleTypeMetadata, uint64_t a2)
{
  v4 = TupleTypeMetadata;
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    v6 = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(v6 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v24 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v25 = (v6 + 32);
    v26 = v5;
    do
    {
      if (v5 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v25;
      }

      v29 = *v24++;
      v28 = v29;
      v30 = *v4++;
      (*(*(v28 - 8) + 32))(&v23[v27], v30);
      v25 += 4;
      --v26;
    }

    while (v26);
  }

  return (*(v20 + 40))(v2, v23, v6);
}

char *TupleSettingsExperienceContent._collectSettingsExperienceContentOutputs_v1(inputs:)@<X0>(uint64_t TupleTypeMetadata@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = TupleTypeMetadata;
  v53 = a3;
  v5 = a2[2];
  if (v5 == 1)
  {
    v6 = *(a2[3] & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = a2[3] & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v55 = *v4;
  v51 = v22;
  v23 = *(v22 + 16);
  v56 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23();
  v52 = v6;
  if (v5)
  {
    v25 = (a2[3] & 0xFFFFFFFFFFFFFFFELL);
    v26 = (a2[4] & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v6 + 32);
    v59 = MEMORY[0x277D84F90];
    v28 = v5;
    v54 = v5;
    while (1)
    {
      v57 = &v51;
      v58 = v28;
      v32 = *v25;
      v33 = *v26;
      v34 = *(*v25 - 8);
      v35 = *(v34 + 64);
      MEMORY[0x28223BE20](v24);
      v37 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = v5 == 1 ? 0 : *v27;
      (*(v34 + 16))(v37, &v56[v38], v32);
      v60 = v55;
      v39 = v32;
      (*(v33 + 32))(&v61, &v60, v32, v33);
      v40 = v61;
      v41 = *(v61 + 16);
      result = v59;
      v42 = *(v59 + 2);
      v43 = v42 + v41;
      if (__OFADD__(v42, v41))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v44 = v59;
      if (!result || v43 > *(v59 + 3) >> 1)
      {
        if (v42 <= v43)
        {
          v45 = v42 + v41;
        }

        else
        {
          v45 = v42;
        }

        result = sub_21CDF225C(result, v45, 1, v59);
        v44 = result;
      }

      v46 = *(v40 + 16);
      v59 = v44;
      if (v46)
      {
        if ((*(v44 + 3) >> 1) - *(v44 + 2) < v41)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        v5 = v54;
        v30 = v39;
        v31 = v58;
        if (v41)
        {
          v47 = *(v59 + 2);
          v48 = __OFADD__(v47, v41);
          v49 = v47 + v41;
          if (v48)
          {
            goto LABEL_36;
          }

          *(v59 + 2) = v49;
          v31 = v58;
        }
      }

      else
      {

        v5 = v54;
        v30 = v39;
        v31 = v58;
        if (v41)
        {
          goto LABEL_34;
        }
      }

      v24 = (*(v34 + 8))(v37, v30);
      v27 += 4;
      ++v26;
      ++v25;
      v28 = v31 - 1;
      if (!v28)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
LABEL_32:
    v50 = v52;
    *v53 = v59;
    return (*(v51 + 8))(v56, v50);
  }

  return result;
}

uint64_t sub_21CE08E88(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL);
    result = swift_checkMetadataState();
    if (v4 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v20[7] = 0;
    v21 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  MEMORY[0x28223BE20](a1);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v5)
  {
    v8 = 0;
    v9 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v5 < 4)
    {
      goto LABEL_10;
    }

    if (&v7[-v9] < 0x20)
    {
      goto LABEL_10;
    }

    v8 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (v9 + 16);
    v11 = v7 + 16;
    v12 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v13 = *v10;
      *(v11 - 1) = *(v10 - 1);
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if (v5 != v8)
    {
LABEL_10:
      v14 = v5 - v8;
      v15 = 8 * v8;
      v16 = &v7[8 * v8];
      v17 = (v9 + v15);
      do
      {
        v18 = *v17++;
        *v16++ = v18;
        --v14;
      }

      while (v14);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v19 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_21CE08FF4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_21CE6B960();
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
  sub_21CE09FE0(0, v10, 0);
  v11 = v23;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = a3 + v19;
  v18 = (v6 + 32);
  v13 = *(v6 + 72);
  while (1)
  {
    v21(v12);
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
      sub_21CE09FE0(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  v15 = type metadata accessor for SettingsNavigationEventRecord();
  v16 = (a7 + v15[8]);
  *a7 = v12;
  *(a7 + 8) = v13;
  *(a7 + 16) = v14;
  v17 = v15[5];
  v18 = sub_21CE6B960();
  (*(*(v18 - 8) + 32))(a7 + v17, a2, v18);
  *(a7 + v15[6]) = a3;
  v19 = v15[7];
  v20 = sub_21CE6BA60();
  result = (*(*(v20 - 8) + 32))(a7 + v19, a4, v20);
  *v16 = a5;
  v16[1] = a6;
  return result;
}

uint64_t SettingsNavigationEventRecord.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_21CDEFF74();
}

uint64_t SettingsNavigationEventRecord.icon.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 16);
  result = sub_21CDEFF7C();
  *v1 = v2;
  v1[1] = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t SettingsNavigationEventRecord.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsNavigationEventRecord() + 20);
  v4 = sub_21CE6B960();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SettingsNavigationEventRecord.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsNavigationEventRecord() + 20);
  v4 = sub_21CE6B960();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SettingsNavigationEventRecord.localizedNavigationComponents.getter()
{
  v1 = *(v0 + *(type metadata accessor for SettingsNavigationEventRecord() + 24));
}

uint64_t SettingsNavigationEventRecord.localizedNavigationComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsNavigationEventRecord() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SettingsNavigationEventRecord.navigationLink.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsNavigationEventRecord() + 28);
  v4 = sub_21CE6BA60();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SettingsNavigationEventRecord.associatedApplicationBundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SettingsNavigationEventRecord() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SettingsNavigationEventRecord.associatedApplicationBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SettingsNavigationEventRecord() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SettingsNavigationEventRecord.resolveLocalizedPathComponents(layoutDirection:)(uint64_t a1)
{
  v2 = sub_21CE6BB40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE6BB20();
  v7 = SettingsNavigationEventRecord.resolveLocalizedPathComponents(layoutDirection:locale:)(a1, v6);
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t SettingsNavigationEventRecord.resolveLocalizedPathComponents(layoutDirection:locale:)(uint64_t a1, uint64_t a2)
{
  v38 = sub_21CE6B960();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v38);
  v42 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = v36 - v8;
  v9 = sub_21CE6C0C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CDFA88], v9);
  v14 = sub_21CE6C0B0();
  (*(v10 + 8))(v13, v9);
  v15 = *(v2 + *(type metadata accessor for SettingsNavigationEventRecord() + 24));
  v44 = a2;
  v16 = sub_21CE08FF4(sub_21CE09C7C, v43, v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v37 = v14;
    v45 = MEMORY[0x277D84F90];
    sub_21CDE4558(0, v17, 0);
    v18 = v45;
    v20 = *(v4 + 16);
    v19 = v4 + 16;
    v21 = *(v19 + 64);
    v36[1] = v16;
    v22 = v16 + ((v21 + 32) & ~v21);
    v39 = *(v19 + 56);
    v40 = v20;
    v23 = (v19 - 8);
    v24 = v38;
    do
    {
      v26 = v40;
      v25 = v41;
      v40(v41, v22, v24);
      v27 = v19;
      v26(v42, v25, v24);
      v28 = sub_21CE6CC70();
      v30 = v29;
      (*v23)(v25, v24);
      v45 = v18;
      v32 = *(v18 + 16);
      v31 = *(v18 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_21CDE4558((v31 > 1), v32 + 1, 1);
        v24 = v38;
        v18 = v45;
      }

      *(v18 + 16) = v32 + 1;
      v33 = v18 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v22 += v39;
      --v17;
      v19 = v27;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v45 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40BA0, &qword_21CE6F4B0);
  sub_21CDF0A80();
  v34 = sub_21CE6CB90();

  return v34;
}

uint64_t sub_21CE09B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21CE6BB40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CE6B960();
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  (*(v7 + 16))(v10, a2, v6);
  return sub_21CE6B950();
}

uint64_t _s8Settings0A21NavigationEventRecordV14navigationLink10Foundation3URLVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsNavigationEventRecord() + 28);
  v4 = sub_21CE6BA60();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SettingsNavigationEventRecord.description.getter()
{
  v1 = v0;
  sub_21CE6D290();
  MEMORY[0x21CF1ACB0](0xD00000000000001DLL, 0x800000021CE711A0);
  MEMORY[0x21CF1ACB0](0x6E6F6369207B203ALL, 0xEA0000000000203ALL);
  v13 = *v0;
  v14 = *(v0 + 16);
  v2 = SettingsEventImage.description.getter();
  MEMORY[0x21CF1ACB0](v2);

  MEMORY[0x21CF1ACB0](0x3A656C746974202CLL, 0xE900000000000020);
  v3 = type metadata accessor for SettingsNavigationEventRecord();
  v4 = v3[5];
  v5 = sub_21CE6B960();
  sub_21CE6D340();
  MEMORY[0x21CF1ACB0](0xD000000000000021, 0x800000021CE76410);
  v6 = MEMORY[0x21CF1AD30](*(v1 + v3[6]), v5);
  MEMORY[0x21CF1ACB0](v6);

  MEMORY[0x21CF1ACB0](0xD000000000000012, 0x800000021CE76440);
  v7 = v3[7];
  sub_21CE6BA60();
  sub_21CDE8AC4(&qword_2812132B0);
  v8 = sub_21CE6D3E0();
  MEMORY[0x21CF1ACB0](v8);

  MEMORY[0x21CF1ACB0](0xD000000000000029, 0x800000021CE76460);
  v9 = (v1 + v3[8]);
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v11 = 0xE400000000000000;
    v10 = 1701736302;
  }

  MEMORY[0x21CF1ACB0](v10, v11);

  MEMORY[0x21CF1ACB0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_21CE09F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_21CE6BA60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

size_t sub_21CE09FE0(size_t a1, int64_t a2, char a3)
{
  result = sub_21CE0A000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21CE0A000(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDC0, &qword_21CE6F630);
  v10 = *(sub_21CE6B960() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21CE6B960() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t _s8Settings0A21NavigationEventRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v4;
  v20 = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v6;
  v18 = v7;
  sub_21CDEFF74();
  sub_21CDEFF74();
  v8 = _s8Settings0A10EventImageO2eeoiySbAC_ACtFZ_0(v19, v17);
  sub_21CDEFF7C();
  sub_21CDEFF7C();
  if (v8)
  {
    v9 = type metadata accessor for SettingsNavigationEventRecord();
    if (MEMORY[0x21CF19920](a1 + v9[5], a2 + v9[5]) & 1) != 0 && (sub_21CE0A328(*(a1 + v9[6]), *(a2 + v9[6])))
    {
      v10 = v9[7];
      if (sub_21CE6B9E0())
      {
        v11 = v9[8];
        v12 = (a1 + v11);
        v13 = *(a1 + v11 + 8);
        v14 = (a2 + v11);
        v15 = v14[1];
        if (v13)
        {
          if (v15 && (*v12 == *v14 && v13 == v15 || (sub_21CE6D400() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v15)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_21CE0A328(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CE6B960();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_21CDE5974(&qword_2812132D0, MEMORY[0x277CC9130]);
    v22 = sub_21CE6CBA0();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t SettingsZeroKeywordNavigationItemsProvider.settingsHostApplicationBundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SettingsZeroKeywordNavigationItemsProvider.suggestions.getter()
{
  swift_getKeyPath();
  sub_21CDE5974(&qword_2812122B8, type metadata accessor for SettingsZeroKeywordNavigationItemsProvider);
  sub_21CE6BB70();

  v1 = *(v0 + 32);
}

uint64_t sub_21CE0A610@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CDE5974(&qword_2812122B8, type metadata accessor for SettingsZeroKeywordNavigationItemsProvider);
  sub_21CE6BB70();

  *a2 = *(v3 + 32);
}

uint64_t sub_21CE0A6BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21CDE7ED8(v4);
}

uint64_t sub_21CE0A6E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CDE5974(&qword_2812122B8, type metadata accessor for SettingsZeroKeywordNavigationItemsProvider);
  sub_21CE6BB70();

  *a2 = *(v3 + 40);
}

uint64_t sub_21CE0A794(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21CDE8620(v4);
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

void *sub_21CE0A7F4()
{
  v0 = type metadata accessor for SettingsZeroKeywordNavigationItemsProvider();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = SettingsZeroKeywordNavigationItemsProvider.init(settingsHostApplicationBundleIdentifier:)(0xD000000000000015, 0x800000021CE757E0);
  qword_27CE40080 = v3;
  return result;
}

uint64_t static SettingsZeroKeywordNavigationItemsProvider.shared.getter()
{
  if (qword_27CE3F9C0 != -1)
  {
    swift_once();
  }
}

uint64_t SettingsZeroKeywordNavigationItemsProvider.__allocating_init(settingsHostApplicationBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  SettingsZeroKeywordNavigationItemsProvider.init(settingsHostApplicationBundleIdentifier:)(a1, a2);
  return v7;
}

uint64_t sub_21CE0A8F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21CE6CDF0();
    v5 = sub_21CE6CE20();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    sub_21CE0B338(0, 0, v3, &unk_21CE71458, v7);

    return sub_21CDE5494(v3, &qword_27CE401F0, &qword_21CE71300);
  }

  return result;
}

uint64_t SettingsZeroKeywordNavigationItemsProvider.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 56);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 56);
    }

    sub_21CE6D1E0();
    sub_21CE6BE40();
    sub_21CDE5974(&qword_27CE3FA98, MEMORY[0x277CBCDA8]);
    result = sub_21CE6CEB0();
    v2 = v26;
    v5 = v27;
    v6 = v28;
    v7 = v29;
    v8 = v30;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    v12 = *(v0 + 56);

    v7 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_21CDEEAA0();
      v18 = *(v1 + 56);
      *(v1 + 56) = MEMORY[0x277D84FA0];

      v19 = *(v1 + 24);

      v20 = *(v1 + 32);

      v21 = *(v1 + 40);

      v22 = *(v1 + 56);

      v23 = OBJC_IVAR____TtC8Settings42SettingsZeroKeywordNavigationItemsProvider___observationRegistrar;
      v24 = sub_21CE6BB90();
      (*(*(v24 - 8) + 8))(v1 + v23, v24);
      return v1;
    }

    while (1)
    {
      sub_21CE6BE30();

      v7 = v15;
      v8 = v16;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_21CE6D1F0())
      {
        sub_21CE6BE40();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t SettingsZeroKeywordNavigationItemsProvider.__deallocating_deinit()
{
  SettingsZeroKeywordNavigationItemsProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CE0ADBC()
{
  v20 = v0;
  v1 = v0[178];
  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_281216608);
  v3 = v1;
  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF10();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[177];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = v0[170];
    v11 = v0[171];
    v12 = v0[172];
    v13 = sub_21CE6D450();
    v15 = sub_21CDF2CC8(v13, v14, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_21CDE1000, v4, v5, "Failed to process records: '%{public}s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CF1BD50](v9, -1, -1);
    MEMORY[0x21CF1BD50](v8, -1, -1);
  }

  else
  {
    v16 = v0[177];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_21CE0AFA4()
{
  v1 = *(v0 + 1432);

  return MEMORY[0x282200920](v0 + 656, v0 + 1392, sub_21CE0B010, v0 + 1296);
}

uint64_t sub_21CE0B068()
{
  v20 = v0;
  v1 = v0[180];
  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_281216608);
  v3 = v1;
  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF10();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[177];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = v0[170];
    v11 = v0[171];
    v12 = v0[172];
    v13 = sub_21CE6D450();
    v15 = sub_21CDF2CC8(v13, v14, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_21CDE1000, v4, v5, "Failed to process records: '%{public}s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CF1BD50](v9, -1, -1);
    MEMORY[0x21CF1BD50](v8, -1, -1);
  }

  else
  {
    v16 = v0[177];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_21CE0B250()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[23];
  v5 = v0[1];

  return v5();
}

uint64_t sub_21CE0B2C8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[20];

  v4 = v0[27];
  v5 = v0[1];

  return v5();
}

uint64_t sub_21CE0B338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21CDE5A20(a3, v27 - v11);
  v13 = sub_21CE6CE20();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21CDE5494(v12, &qword_27CE401F0, &qword_21CE71300);
  }

  else
  {
    sub_21CE6CE10();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21CE6CDB0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21CE6CC90() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21CE0B5E8()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_21CE0B970;
  }

  else
  {
    v3 = sub_21CE0B6FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CE0B6FC()
{
  v23 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 80);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_21CDF2390(0, *(v4 + 2) + 1, 1, *(v0 + 80));
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_21CDF2390((v5 > 1), v6 + 1, 1, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 72);

  *(v4 + 2) = v6 + 1;
  *&v4[8 * v6 + 32] = v1;
  if (v7 != v8)
  {
    v16 = *(v0 + 96);
    *(v0 + 80) = v4;
    v17 = *(v0 + 56);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CF1B2A0](v16);
    }

    else
    {
      if (v16 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v9 = *(v17 + 8 * v16 + 32);
    }

    *(v0 + 88) = v9;
    *(v0 + 96) = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      v18 = [v9 linkAction];
      *(v0 + 40) = sub_21CDE40C8(0, &qword_2812119C8, 0x277D23720);
      *(v0 + 16) = v18;
      v19 = *(MEMORY[0x277CB9C40] + 4);
      v20 = swift_task_alloc();
      *(v0 + 104) = v20;
      sub_21CDF3438();
      *v20 = v0;
      v20[1] = sub_21CE0B5E8;
      v9 = (v0 + 48);
      v17 = v0 + 16;

      return MEMORY[0x28210B540](v9, v17);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x28210B540](v9, v17);
  }

  v10 = *(v0 + 112);
  v11 = *(v0 + 64);
  v22 = MEMORY[0x277D84FA0];

  v12 = sub_21CDE71C0(v4, &v22, v11);
  v13 = *(v0 + 64);

  v15 = *(v0 + 8);
  if (!v10)
  {
    v14 = v12;
  }

  return v15(v14);
}

uint64_t sub_21CE0B970()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[14];
  v4 = v0[1];

  return v4();
}

uint64_t sub_21CE0B9D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v53 = a2;
  v50 = a4;
  v46 = sub_21CE6B560();
  v45 = *(v46 - 8);
  v5 = v45[8];
  MEMORY[0x28223BE20](v46);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_21CE6B960();
  v41 = *(v49 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21CE6BA60();
  v9 = *(v52 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v52);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v42 = &v40 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v17 = *a1;
  sub_21CE6B630();
  sub_21CE6B5A0();

  v47 = v17;
  sub_21CE6B630();
  sub_21CE6B5A0();

  if (v55 == v51[2] && v56 == v51[3])
  {

    v18 = v53;
  }

  else
  {
    v19 = sub_21CE6D400();

    v18 = v53;
    if ((v19 & 1) == 0)
    {
LABEL_6:
      (*(v9 + 8))(v16, v52);
      v20 = type metadata accessor for SettingsNavigationEventRecord();
      return (*(*(v20 - 8) + 56))(v50, 1, 1, v20);
    }
  }

  if (sub_21CE38FC0(v16, *v18))
  {
    goto LABEL_6;
  }

  v22 = v43;
  v23 = v52;
  (*(v9 + 16))(v43, v16, v52);
  v24 = v42;
  sub_21CE4756C(v42, v22);
  v25 = *(v9 + 8);
  v25(v24, v23);
  v25(v16, v23);
  sub_21CE6B630();
  v53 = v63;
  v52 = v64;
  v51 = v66;
  if (qword_281211F60 != -1)
  {
    swift_once();
  }

  v26 = v44;
  sub_21CE6B5A0();
  v27 = sub_21CE6B540();
  v29 = v28;
  (v45[1])(v26, v46);
  sub_21CDE5974(&qword_2812132C8, MEMORY[0x277CC9130]);
  v30 = v69;
  sub_21CE6B800();

  if (v30)
  {
    return sub_21CDF32E8(v27, v29);
  }

  sub_21CDF32E8(v27, v29);
  sub_21CE6B630();
  v57 = v63;
  v58 = v64;
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v31 = SettingsNavigationLocationEntity.localizedNavigationPathComponents.getter();
  v69 = 0;
  v53 = v31;

  sub_21CE6B630();
  sub_21CE6B5A0();

  sub_21CE6B5A0();
  LODWORD(v52) = v55;
  sub_21CE6B5A0();

  v51 = v57;
  v46 = v58;
  v32 = v49;
  v33 = type metadata accessor for SettingsNavigationEventRecord();
  v34 = v41;
  v35 = v50;
  (*(v41 + 16))(v50 + v33[5], v48, v32);
  sub_21CE6B630();
  v45 = v57;
  v36 = v35 + v33[7];
  sub_21CE6B5A0();

  sub_21CE6B630();
  sub_21CE6B5A0();
  (*(v34 + 8))(v48, v49);

  v37 = v54;
  v38 = v33[8];
  v39 = v46;
  *v35 = v51;
  *(v35 + 8) = v39;
  *(v35 + 16) = v52;
  *(v35 + v33[6]) = v53;
  *(v35 + v38) = v37;
  return (*(*(v33 - 1) + 56))(v35, 0, 1, v33);
}

uint64_t sub_21CE0C2E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsNavigationEventRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE0C34C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t sub_21CE0C388()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_21CE0C3C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CDE7A00;

  return sub_21CDE5D3C(a1, v4, v5, v6);
}

uint64_t Binding.settingsUndoableBinding(actionName:systemSettingsAnchor:settingsUndoProxy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v34 - v14;
  v16 = sub_21CE6BA60();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE294EC(a2, a3, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v34 = a5;
    sub_21CDE5494(v15, &unk_27CE40310, &qword_21CE71470);
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    v21 = v6;
    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v22 = sub_21CE6BDA0();
    __swift_project_value_buffer(v22, qword_27CE412C0);
    v23 = sub_21CE6BD80();
    v24 = sub_21CE6CF10();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136446978;
      v27 = sub_21CE6D2B0();
      v29 = sub_21CDF2CC8(v27, v28, &v35);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2048;
      *(v25 + 14) = 15;
      *(v25 + 22) = 2082;
      v30 = sub_21CE6D2B0();
      v32 = sub_21CDF2CC8(v30, v31, &v35);

      *(v25 + 24) = v32;
      *(v25 + 32) = 2082;
      *(v25 + 34) = sub_21CDF2CC8(0xD000000000000013, 0x800000021CE76580, &v35);
      _os_log_impl(&dword_21CDE1000, v23, v24, "%{public}s:%ld %{public}s %{public}s", v25, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v26, -1, -1);
      MEMORY[0x21CF1BD50](v25, -1, -1);
    }

    return (*(*(v34 - 8) + 16))(a6, v21);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    Binding.settingsUndoableBinding(actionName:deepLink:settingsUndoProxy:)(a1, v20, v34, a5, a6);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t Binding.settingsUndoableBinding(actionName:deepLink:settingsUndoProxy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v42 = a1;
  v43 = a2;
  v47 = a5;
  v48 = sub_21CE6BA60();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v48);
  v44 = v11;
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_21CE6B960();
  v45 = *(v50 - 8);
  v13 = *(v45 + 64);
  v14 = MEMORY[0x28223BE20](v50);
  v41 = v15;
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v49 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  sub_21CE0D2FC(a3, &v51);
  if (v52)
  {
    sub_21CDE4CD8(&v51, v53);
    v37 = v9;
    v22 = a4;
    v46 = v12;
    v23 = *(v17 + 16);
    v23(v21, v6, a4);
    v24 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v36 = v16;
    v35 = v24 + v18;
    v39 = v24;
    v25 = swift_allocObject();
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    v40 = *(a4 + 16);
    *(v25 + 4) = v40;
    v38 = *(v17 + 32);
    v38(&v25[v24], v21, a4);
    v23(v49, v6, a4);
    sub_21CDE4CF4(v53, &v51);
    v26 = v45;
    (*(v45 + 16))(v16, v42, v50);
    v27 = v37;
    (*(v37 + 16))(v46, v43, v48);
    v28 = (v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + *(v26 + 80) + 40) & ~*(v26 + 80);
    v30 = v27;
    v31 = (v41 + *(v27 + 80) + v29) & ~*(v27 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    *(v32 + 4) = v40;
    v38(&v32[v39], v49, v22);
    sub_21CDE4CD8(&v51, &v32[v28]);
    (*(v26 + 32))(&v32[v29], v36, v50);
    (*(v30 + 32))(&v32[v31], v46, v48);
    sub_21CE6CA80();
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {
    sub_21CDE5494(&v51, &qword_27CE400A8, &qword_21CE716C0);
    return (*(v17 + 16))(v47, v6, a4);
  }
}

uint64_t sub_21CE0CCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t), uint64_t a8)
{
  v72 = a6;
  v73 = a7;
  v75 = a1;
  v77 = a8;
  v11 = sub_21CE6CA90();
  v80 = *(v11 - 8);
  v74 = *(v80 + 64);
  MEMORY[0x28223BE20](v11);
  v79 = &v57 - v12;
  v13 = sub_21CE6BA60();
  v82 = *(v13 - 8);
  v83 = v13;
  v14 = *(v82 + 64);
  MEMORY[0x28223BE20](v13);
  v81 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21CE6B960();
  v58 = v16;
  v63 = *(v16 - 8);
  v17 = v63;
  v18 = *(v63 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v71 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  v60 = &v57 - v21;
  v23 = type metadata accessor for SettingsUndoAction();
  v24 = *(v23 - 8);
  v70 = v23 - 8;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8);
  v64 = (&v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = *(a8 - 8);
  v28 = *(v78 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v76 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v57 - v30;
  v65 = &v57 - v30;
  v66 = a4;
  MEMORY[0x21CF1AA30](v11);
  v32 = a5[3];
  v68 = a5[4];
  v69 = v32;
  v67 = __swift_project_boxed_opaque_existential_1(a5, v32);
  v59 = *(v17 + 16);
  v59(v22, v72, v16);
  v61 = *(v82 + 16);
  v61(v81, v73, v83);
  v33 = v80;
  v34 = *(v80 + 16);
  v62 = v11;
  v34(v79, a4, v11);
  v35 = v78;
  v36 = *(v78 + 16);
  v72 = v78 + 16;
  v73 = v36;
  v37 = v76;
  v38 = v31;
  v39 = v77;
  v36(v76, v38, v77);
  v40 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v41 = v35;
  v42 = (v74 + *(v35 + 80) + v40) & ~*(v35 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v39;
  (*(v80 + 32))(v43 + v40, v79, v11);
  (*(v41 + 32))(v43 + v42, v37, v39);
  v44 = v60;
  v45 = v58;
  v59(v71, v60, v58);
  v46 = sub_21CE6CC70();
  v48 = v47;
  v49 = v70;
  v50 = v64;
  v51 = v81;
  v52 = v83;
  v61(v64 + *(v70 + 28), v81, v83);
  v53 = v50 + *(v49 + 32);
  sub_21CE6B4A0();
  (*(v82 + 8))(v51, v52);
  (*(v63 + 8))(v44, v45);
  *v50 = v46;
  v50[1] = v48;
  v54 = (v50 + *(v49 + 36));
  *v54 = sub_21CE0D534;
  v54[1] = v43;
  (*(v68 + 8))(v50, v69);
  sub_21CE0D5FC(v50);
  v55 = v77;
  v73(v76, v75, v77);
  sub_21CE6CA60();
  return (*(v78 + 8))(v65, v55);
}

uint64_t sub_21CE0D234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CE6CA90();
  return sub_21CE6CA60();
}

uint64_t sub_21CE0D2FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE400A8, &qword_21CE716C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE0D36C()
{
  v1 = *(v0 + 32);
  v2 = *(*(sub_21CE6CA90() - 8) + 80);
  return MEMORY[0x21CF1AA30]();
}

uint64_t sub_21CE0D3D4(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(sub_21CE6CA90() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_21CE6B960() - 8);
  v8 = (v6 + *(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_21CE6BA60() - 8);
  v11 = v1[2];
  v12 = v1[3];
  v13 = (v1 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)));

  return sub_21CE0CCB0(a1, v11, v12, v1 + v5, (v1 + v6), v1 + v8, v13, v3);
}

uint64_t sub_21CE0D534()
{
  v1 = *(v0 + 16);
  v2 = *(sub_21CE6CA90() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_21CE0D234(v0 + v3, v4, v1);
}

uint64_t sub_21CE0D5FC(uint64_t a1)
{
  v2 = type metadata accessor for SettingsUndoAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CloudSyncPlatform.description.getter()
{
  v1 = *v0;
  v2 = 6512973;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 2)
  {
    v3 = 1684099177;
  }

  if (v1 != 4)
  {
    v2 = v3;
  }

  if (v1 == 1)
  {
    return 0x656E6F685069;
  }

  else
  {
    return v2;
  }
}

BOOL sub_21CE0D73C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21CE0D76C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21CE0D798@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_21CE0D870@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21CE0D8CC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_21CE0D9E4(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  swift_beginAccess();
  sub_21CE0F080(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_21CE0D98C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  swift_beginAccess();
  return sub_21CE0D9E4(v1 + v3, a1);
}

uint64_t sub_21CE0D9E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE0DA54(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_21CE0DAC8(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_21CE0DB1C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

void sub_21CE0DB74(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32[-v6];
  v8 = (v2 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_storeIdentifier);
  swift_beginAccess();
  if (v8[1])
  {
    v9 = *v8;

    v10 = sub_21CE6CC20();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_21CE6CC20();
  [a1 encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  v12 = (v2 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_displayName);
  swift_beginAccess();
  if (v12[1])
  {
    v13 = *v12;

    v14 = sub_21CE6CC20();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_21CE6CC20();
  [a1 encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();

  v16 = (v2 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_message);
  swift_beginAccess();
  if (v16[1])
  {
    v17 = *v16;

    v18 = sub_21CE6CC20();
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_21CE6CC20();
  [a1 encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();

  v20 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  swift_beginAccess();
  sub_21CE0D9E4(v2 + v20, v7);
  v21 = sub_21CE6BA60();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v7, 1, v21) != 1)
  {
    v23 = sub_21CE6B9B0();
    (*(v22 + 8))(v7, v21);
  }

  v24 = sub_21CE6CC20();
  [a1 encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  v25 = (v2 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectTitle);
  swift_beginAccess();
  if (v25[1])
  {
    v26 = *v25;

    v27 = sub_21CE6CC20();
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_21CE6CC20();
  [a1 encodeObject:v27 forKey:v28];
  swift_unknownObjectRelease();

  v29 = (v2 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms);
  swift_beginAccess();
  if ((v29[1] & 1) == 0)
  {
    v30 = *v29;
    v31 = sub_21CE6CC20();
    [a1 encodeInteger:v30 forKey:v31];
  }
}

id CloudSyncConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE0E644(a1);

  return v4;
}

id CloudSyncConfiguration.init(coder:)(void *a1)
{
  v2 = sub_21CE0E644(a1);

  return v2;
}

id CloudSyncConfiguration.__allocating_init(storeIdentifier:displayName:message:redirectURL:redirectTitle:platforms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v13 = objc_allocWithZone(v10);
  v30 = *a10;
  v29 = *(a10 + 8);
  v14 = &v13[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_storeIdentifier];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v13[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_displayName];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_message];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  v18 = sub_21CE6BA60();
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  v19 = &v13[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectTitle];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v13[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms];
  *v20 = 0;
  v20[8] = 1;
  swift_beginAccess();
  *v14 = a1;
  *(v14 + 1) = a2;
  swift_beginAccess();
  *v15 = a3;
  *(v15 + 1) = a4;
  swift_beginAccess();
  *v16 = a5;
  *(v16 + 1) = a6;
  swift_beginAccess();
  sub_21CE0EA88(a7, &v13[v17]);
  swift_endAccess();
  swift_beginAccess();
  v21 = *(v19 + 1);
  *v19 = a8;
  *(v19 + 1) = a9;

  swift_beginAccess();
  *v20 = v30;
  v20[8] = v29;
  v33.receiver = v13;
  v33.super_class = v32;
  v22 = objc_msgSendSuper2(&v33, sel_init);
  sub_21CE0EAF8(a7);
  return v22;
}

id CloudSyncConfiguration.init(storeIdentifier:displayName:message:redirectURL:redirectTitle:platforms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v31 = *a10;
  v30 = *(a10 + 8);
  v13 = &v10[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_storeIdentifier];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v10[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_displayName];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v10[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_message];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  v17 = sub_21CE6BA60();
  (*(*(v17 - 8) + 56))(&v10[v16], 1, 1, v17);
  v18 = &v10[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectTitle];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v10[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms];
  *v19 = 0;
  v19[8] = 1;
  swift_beginAccess();
  *v13 = a1;
  *(v13 + 1) = a2;
  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;
  swift_beginAccess();
  v20 = *(v15 + 1);
  *v15 = a5;
  *(v15 + 1) = a6;

  swift_beginAccess();
  sub_21CE0EA88(a7, &v10[v16]);
  swift_endAccess();
  swift_beginAccess();
  v21 = *(v18 + 1);
  *v18 = a8;
  *(v18 + 1) = a9;

  swift_beginAccess();
  *v19 = v31;
  v19[8] = v30;
  v32.receiver = v10;
  v32.super_class = type metadata accessor for CloudSyncConfiguration();
  v22 = objc_msgSendSuper2(&v32, sel_init);
  sub_21CE0EAF8(a7);
  return v22;
}

id CloudSyncConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudSyncConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21CE0E644(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v50 - v6;
  v7 = &v2[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_storeIdentifier];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_displayName];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_message];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  v11 = sub_21CE6BA60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v52 = v11;
  v53 = v10;
  v51 = v13;
  v50 = v12 + 56;
  (v13)(&v2[v10], 1, 1);
  v14 = &v2[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectTitle];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v2[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms];
  *v15 = 0;
  v55 = v15;
  v15[8] = 1;
  sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
  v16 = sub_21CE6D0F0();
  if (v16)
  {
    v17 = v16;
    v18 = sub_21CE6CC50();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  swift_beginAccess();
  v21 = v7[1];
  *v7 = v18;
  v7[1] = v20;

  v22 = sub_21CE6D0F0();
  if (v22)
  {
    v23 = v22;
    v24 = sub_21CE6CC50();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  swift_beginAccess();
  v27 = v8[1];
  *v8 = v24;
  v8[1] = v26;

  v28 = sub_21CE6D0F0();
  if (v28)
  {
    v29 = v28;
    v30 = sub_21CE6CC50();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = v54;
  v34 = 1;
  swift_beginAccess();
  v35 = v9[1];
  *v9 = v30;
  v9[1] = v32;

  sub_21CDE40C8(0, &qword_27CE40118, 0x277CBEBC0);
  v36 = sub_21CE6D0F0();
  if (v36)
  {
    v37 = v36;
    sub_21CE6B9F0();

    v34 = 0;
  }

  v51(v33, v34, 1, v52);
  v38 = v53;
  swift_beginAccess();
  sub_21CE0F080(v33, &v2[v38]);
  swift_endAccess();
  v39 = sub_21CE6D0F0();
  if (v39)
  {
    v40 = v39;
    v41 = sub_21CE6CC50();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  swift_beginAccess();
  v44 = v14[1];
  *v14 = v41;
  v14[1] = v43;

  v45 = sub_21CE6CC20();
  v46 = [a1 decodeIntegerForKey_];

  v47 = v55;
  swift_beginAccess();
  *v47 = v46;
  v47[8] = 0;
  v48 = type metadata accessor for CloudSyncConfiguration();
  v56.receiver = v2;
  v56.super_class = v48;
  return objc_msgSendSuper2(&v56, sel_init);
}

uint64_t sub_21CE0EA88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE0EAF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CloudSyncConfiguration()
{
  result = qword_27CE400F8;
  if (!qword_27CE400F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21CE0EBB0()
{
  result = qword_27CE400D0;
  if (!qword_27CE400D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE400D0);
  }

  return result;
}

unint64_t sub_21CE0EC08()
{
  result = qword_27CE400D8;
  if (!qword_27CE400D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE400D8);
  }

  return result;
}

unint64_t sub_21CE0EC60()
{
  result = qword_27CE400E0;
  if (!qword_27CE400E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE400E0);
  }

  return result;
}

unint64_t sub_21CE0ECB8()
{
  result = qword_27CE400E8;
  if (!qword_27CE400E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE400E8);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t getEnumTagSinglePayload for CloudSyncPlatform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CloudSyncPlatform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_21CE0EDC0()
{
  sub_21CE0F028();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21CE0F028()
{
  if (!qword_27CE40108)
  {
    sub_21CE6BA60();
    v0 = sub_21CE6D150();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE40108);
    }
  }
}

uint64_t sub_21CE0F080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_21CE0F0F4()
{
  qword_27CE401A0 = 0;
  result = 0.0;
  xmmword_27CE40180 = 0u;
  *algn_27CE40190 = 0u;
  return result;
}

uint64_t sub_21CE0F10C@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27CE3F9C8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_21CE0D2FC(&xmmword_27CE40180, v2);
}

void NSUndoManager.registerUndoAction(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SettingsUndoAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  __swift_project_value_buffer(v8, qword_27CE412C0);
  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CEF0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29[0] = v28;
    *v11 = 136315906;
    v12 = sub_21CE6D2B0();
    v14 = a1;
    v15 = v2;
    v16 = sub_21CDF2CC8(v12, v13, v29);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 18;
    *(v11 + 22) = 2080;
    v17 = sub_21CE6D2B0();
    v19 = sub_21CDF2CC8(v17, v18, v29);
    v2 = v15;
    a1 = v14;
    v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v11 + 24) = v19;
    *(v11 + 32) = 2080;
    *(v11 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v29);
    _os_log_impl(&dword_21CDE1000, v9, v10, "%s:%ld %s %s", v11, 0x2Au);
    v20 = v28;
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v20, -1, -1);
    MEMORY[0x21CF1BD50](v11, -1, -1);
  }

  v29[3] = &type metadata for SettingsFrameworkFeatureFlags;
  v29[4] = sub_21CE0F8AC();
  v21 = sub_21CE6BC00();
  __swift_destroy_boxed_opaque_existential_1(v29);
  if (v21)
  {
    sub_21CE0F900(a1, v7);
    v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v23 = swift_allocObject();
    sub_21CE0F964(v7, v23 + v22);
    sub_21CE0FA34();
    sub_21CE6CEE0();

    v24 = *a1;
    v25 = a1[1];
    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = *a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      v27 = sub_21CE6CC20();
      [v2 setActionName_];
    }
  }
}

Swift::Void __swiftcall NSUndoManager.removeAllUndoActions()()
{
  v1 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_27CE412C0);
  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CEF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315906;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 31;
    *(v5 + 22) = 2080;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, v14);

    *(v5 + 24) = v12;
    *(v5 + 32) = 2080;
    *(v5 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v14);
    _os_log_impl(&dword_21CDE1000, v3, v4, "%s:%ld %s %s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v6, -1, -1);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  v14[3] = &type metadata for SettingsFrameworkFeatureFlags;
  v14[4] = sub_21CE0F8AC();
  v13 = sub_21CE6BC00();
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v13)
  {
    [v1 removeAllActions];
  }
}

unint64_t EnvironmentValues.settingsUndoProxy.getter@<X0>(unint64_t *a1@<X8>)
{
  sub_21CE0FA80();
  v2 = sub_21CE6C2B0();
  if (v7)
  {
    return sub_21CDE4CD8(&v6, a1);
  }

  result = MEMORY[0x21CF1A110](v2);
  v4 = result;
  if (result)
  {
    result = sub_21CE0FA34();
    v5 = &protocol witness table for NSUndoManager;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  if (v7)
  {
    return sub_21CE0FAD4(&v6);
  }

  return result;
}

uint64_t sub_21CE0F84C(uint64_t a1)
{
  sub_21CE0D2FC(a1, v3);
  sub_21CE0D2FC(v3, &v2);
  sub_21CE0FA80();
  sub_21CE6C2C0();
  return sub_21CE0FAD4(v3);
}

unint64_t sub_21CE0F8AC()
{
  result = qword_27CE401A8;
  if (!qword_27CE401A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE401A8);
  }

  return result;
}

uint64_t sub_21CE0F900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsUndoAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE0F964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsUndoAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE0F9C8()
{
  v1 = type metadata accessor for SettingsUndoAction();
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_21CE0FA34()
{
  result = qword_27CE401B0;
  if (!qword_27CE401B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE401B0);
  }

  return result;
}

unint64_t sub_21CE0FA80()
{
  result = qword_27CE401B8;
  if (!qword_27CE401B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE401B8);
  }

  return result;
}

uint64_t sub_21CE0FAD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE400A8, &qword_21CE716C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static ExtensionsObserver.extensionsQuery.getter()
{
  v0 = objc_opt_self();
  v1 = sub_21CE6CC20();
  v2 = [v0 extensionPointIdentifierQuery_];

  return v2;
}

uint64_t (*sub_21CE0FC10(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21CE6BEB0();
  return sub_21CE0FCB4;
}

uint64_t sub_21CE0FCB8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401D0, &qword_21CE717B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401C8, &qword_21CE717A8);
  sub_21CE6BEA0();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}