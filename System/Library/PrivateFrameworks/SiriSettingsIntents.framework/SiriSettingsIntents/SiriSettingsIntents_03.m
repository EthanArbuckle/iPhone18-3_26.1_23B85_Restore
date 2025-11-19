void *sub_268D29010(void *a1)
{
  v1 = a1[1];

  v2 = a1[3];

  v3 = a1[5];

  v4 = a1[7];

  v5 = a1[10];

  v6 = a1[12];

  return a1;
}

unint64_t sub_268D29078()
{
  v2 = qword_2802DC0C8;
  if (!qword_2802DC0C8)
  {
    type metadata accessor for INSetBinarySettingIntentResponseCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC0C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D290F8()
{
  v2 = qword_2802DC0D0;
  if (!qword_2802DC0D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D29170()
{
  v2 = qword_280FE27A0;
  if (!qword_280FE27A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE27A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D291D4()
{
  v2 = qword_280FE27D0;
  if (!qword_280FE27D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE27D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D29238()
{
  v2 = qword_2802DC0D8;
  if (!qword_2802DC0D8)
  {
    sub_268D291D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D292B8()
{
  v2 = qword_2802DCAD0;
  if (!qword_2802DCAD0)
  {
    type metadata accessor for INBinarySettingValue();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCAD0);
    return WitnessTable;
  }

  return v2;
}

void *sub_268D29338(const void *a1, void *a2)
{
  v6 = sub_268F990E4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0E0, qword_268F9DA30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D29460(uint64_t a1)
{
  v3 = sub_268F990E4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_268D29508()
{
  v2 = qword_2802DC0E8[0];
  if (!qword_2802DC0E8[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2802DC0E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D29584(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  return swift_allocateGenericClassMetadata();
}

uint64_t sub_268D295B4()
{
  v4 = sub_268F9AB24();
  inited = v4;
  if (v0 <= 0x3F)
  {
    v6 = *(v4 - 8) + 64;
    v3 = sub_268F99214();
    inited = v3;
    if (v1 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      inited = swift_initClassMetadata2();
      if (!inited)
      {
        return 0;
      }
    }
  }

  return inited;
}

uint64_t sub_268D297D4(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_268D29860(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268D29978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_268D29B88(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF6)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 9) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 246;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 10;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268D29CF0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF6)
  {
    v5 = ((a3 + 9) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF6)
  {
    v4 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

unint64_t sub_268D29F28()
{
  v2 = qword_2802DC1F0;
  if (!qword_2802DC1F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC1F0);
    return WitnessTable;
  }

  return v2;
}

void *sub_268D29FC8(const void *a1, void *a2)
{
  v7 = sub_268F9A9C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

void *sub_268D2A1F0(const void *a1, void *a2)
{
  v6 = sub_268F9A9C4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D2A318(uint64_t a1)
{
  v9 = type metadata accessor for SFSymbolStructSpeakableString();
  if (!(*(*(v9 - 8) + 48))(a1, 1))
  {
    v5 = sub_268F9A9C4();
    v4 = *(v5 - 8);
    v3 = *(v4 + 8);
    v3(a1);
    v6 = a1 + *(v9 + 20);
    v7 = *(v4 + 48);
    if (!v7())
    {
      (v3)(v6, v5);
    }

    v2 = a1 + *(v9 + 24);
    if (!v7())
    {
      (v3)(v2, v5);
    }
  }

  return a1;
}

uint64_t sub_268D2A4A0(uint64_t a1, uint64_t a2)
{
  v10 = sub_268F9A9C4();
  v9 = *(v10 - 8);
  v8 = *(v9 + 32);
  (v8)(a2, a1);
  v12 = type metadata accessor for SFSymbolStructSpeakableString();
  v13 = *(v12 + 20);
  v14 = *(v9 + 48);
  if ((v14)(a1 + v13, 1, v10))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v13), (a1 + v13), *(*(v2 - 8) + 64));
  }

  else
  {
    v8();
    (*(v9 + 56))(a2 + v13, 0, 1, v10);
  }

  __dst = (a2 + *(v12 + 24));
  __src = (a1 + *(v12 + 24));
  if (v14())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (v8)(__dst, __src, v10);
    (*(v9 + 56))(__dst, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_268D2A724(uint64_t a1)
{
  v5 = sub_268F9A9C4();
  v4 = *(v5 - 8);
  v3 = *(v4 + 8);
  v3(a1);
  v7 = type metadata accessor for SFSymbolStructSpeakableString();
  v8 = *(v7 + 20);
  v9 = *(v4 + 48);
  if (!(v9)(a1 + v8, 1, v5))
  {
    (v3)(a1 + v8, v5);
  }

  v2 = a1 + *(v7 + 24);
  if (!v9())
  {
    (v3)(v2, v5);
  }

  return a1;
}

uint64_t sub_268D2A8D4()
{
  v7 = sub_268F9AEF4();
  v8 = v0;
  v1 = sub_268D2A940();
  result = sub_268F39F28(v1, v2, v7, v8);
  qword_2802F0760 = result;
  qword_2802F0768 = v4;
  qword_2802F0770 = v5;
  qword_2802F0778 = v6;
  return result;
}

uint64_t *sub_268D2A970()
{
  if (qword_2802DAF48 != -1)
  {
    swift_once();
  }

  return &qword_2802F0760;
}

uint64_t sub_268D2A9D0()
{
  v0 = sub_268D2A970();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  return v2;
}

uint64_t sub_268D2AB04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268D2AA5C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_268D2AB54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268D2AA9C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_268D2ABB8()
{
  v2 = qword_2802DC200;
  if (!qword_2802DC200)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC200);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D2AC64(uint64_t a1)
{
  v4 = a1;
  v13 = 0;
  v12 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC230, &unk_268F9DDE0);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v13 = MEMORY[0x28223BE20](v4);
  v12 = v1;
  v6 = v13[3];
  v7 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v6);
  sub_268D2ABB8();
  sub_268F9B844();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_268D2AD8C(uint64_t *a1)
{
  swift_allocObject();
  v5 = sub_268D2AE18(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268D2AE74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268D2AD8C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_268D2AF28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_268D2AA30() & 1;
}

unint64_t sub_268D2AF88(void *a1)
{
  a1[1] = sub_268D2AFCC();
  a1[2] = sub_268D2B04C();
  result = sub_268D2B0CC();
  a1[3] = result;
  return result;
}

unint64_t sub_268D2AFCC()
{
  v2 = qword_2802DC208;
  if (!qword_2802DC208)
  {
    type metadata accessor for LaunchEnvPicker();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2B04C()
{
  v2 = qword_2802DC210;
  if (!qword_2802DC210)
  {
    type metadata accessor for LaunchEnvPicker();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2B0CC()
{
  v2 = qword_2802DC218;
  if (!qword_2802DC218)
  {
    type metadata accessor for LaunchEnvPicker();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2B164()
{
  v2 = qword_2802DC220;
  if (!qword_2802DC220)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2B1F8()
{
  v2 = qword_2802DC228;
  if (!qword_2802DC228)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D2B274()
{
  type metadata accessor for BargeInStateProvider();
  sub_268F99C44();
  result = sub_268D2B2E8(v1);
  qword_280FE81D8 = result;
  return result;
}

uint64_t *sub_268D2B334()
{
  if (qword_280FE50E0 != -1)
  {
    swift_once();
  }

  return &qword_280FE81D8;
}

uint64_t sub_268D2B394()
{
  v1 = *sub_268D2B334();

  return v1;
}

uint64_t sub_268D2B3E4(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_268CDE730(a1, v5);
  sub_268CDF978(v5, (v1 + 16));
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_268D2B440()
{
  v68 = 0;
  v42 = 0;
  v30 = sub_268F9A784();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v34 = &v10[-v33];
  v35 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10[-v33]);
  v36 = &v10[-v35];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC238, &qword_268F9DDF0);
  v38 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v39 = &v10[-v38];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC240, &qword_268F9DDF8);
  v40 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v41 = &v10[-v40];
  v43 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC248, &qword_268F9DE00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v42);
  v44 = &v10[-v43];
  v45 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v46 = &v10[-v45];
  v47 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v48 = &v10[-v47];
  v57 = sub_268F9A794();
  v53 = *(v57 - 8);
  v54 = v57 - 8;
  v49 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v55 = &v10[-v49];
  v50 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10[-v49]);
  v56 = &v10[-v50];
  v68 = v0;
  v60 = v65;
  sub_268CDE730(v0 + 16, v65);
  v52 = v66;
  v51 = v67;
  __swift_project_boxed_opaque_existential_1(v60, v66);
  sub_268F99794();
  (*(v53 + 104))(v55, *MEMORY[0x277D61C78], v57);
  sub_268D2BDDC();
  v61 = sub_268F9B754();
  v59 = *(v53 + 8);
  v58 = v53 + 8;
  v59(v55, v57);
  v59(v56, v57);
  __swift_destroy_boxed_opaque_existential_0(v60);
  if ((v61 & 1) == 0)
  {
    v22 = &v62;
    sub_268CDE730(v29 + 16, &v62);
    v24 = v63;
    v23 = v64;
    __swift_project_boxed_opaque_existential_1(v22, v63);
    sub_268F997A4();
    v25 = sub_268F9A7D4();
    v26 = *(v25 - 8);
    v27 = v25 - 8;
    if ((*(v26 + 48))(v41, 1) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(&v62);
      sub_268D2BE5C(v41);
      (*(v31 + 56))(v48, 1, 1, v30);
    }

    else
    {
      sub_268F9A7C4();
      (*(v26 + 8))(v41, v25);
      (*(v31 + 56))(v48, 0, 1, v30);
      __swift_destroy_boxed_opaque_existential_0(&v62);
    }

    sub_268F9A774();
    v8 = *(v31 + 56);
    v19 = 1;
    v8(v46, 0);
    v18 = &v39[*(v37 + 48)];
    sub_268D2BF04(v48, v39);
    sub_268D2BF04(v46, v18);
    v20 = *(v31 + 48);
    v21 = v31 + 48;
    if (v20(v39, v19, v30) == 1)
    {
      if (v20(v18, 1, v30) != 1)
      {
        goto LABEL_12;
      }

      sub_268D2C158(v39);
      v17 = 1;
    }

    else
    {
      sub_268D2BF04(v39, v44);
      if (v20(v18, 1, v30) == 1)
      {
        (*(v31 + 8))(v44, v30);
LABEL_12:
        sub_268D2C02C(v39);
        v17 = 0;
        goto LABEL_11;
      }

      v13 = *(v31 + 32);
      v12 = v31 + 32;
      v13(v36, v44, v30);
      v13(v34, v18, v30);
      sub_268D2C200();
      v16 = sub_268F9AE04();
      v15 = *(v31 + 8);
      v14 = v31 + 8;
      v15(v34, v30);
      v15(v36, v30);
      sub_268D2C158(v39);
      v17 = v16;
    }

LABEL_11:
    v11 = v17;
    sub_268D2C158(v46);
    sub_268D2C158(v48);
    v28 = v11;
    return v28 & 1;
  }

  v28 = 1;
  return v28 & 1;
}

unint64_t sub_268D2BDDC()
{
  v2 = qword_280FE66B0;
  if (!qword_280FE66B0)
  {
    sub_268F9A794();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE66B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D2BE5C(uint64_t a1)
{
  v3 = sub_268F9A7D4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268D2BF04(const void *a1, void *a2)
{
  v6 = sub_268F9A784();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC248, &qword_268F9DE00);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D2C02C(uint64_t a1)
{
  v4 = sub_268F9A784();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC238, &qword_268F9DDF0) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

uint64_t sub_268D2C158(uint64_t a1)
{
  v3 = sub_268F9A784();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_268D2C200()
{
  v2 = qword_280FE66B8;
  if (!qword_280FE66B8)
  {
    sub_268F9A784();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE66B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D2C2F4()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802DC250 = result;
  return result;
}

uint64_t *sub_268D2C374()
{
  if (qword_2802DAF58 != -1)
  {
    swift_once();
  }

  return &qword_2802DC250;
}

uint64_t sub_268D2C3D4()
{
  v7 = sub_268F9AEF4();
  v8 = v0;
  v1 = sub_268D2A940();
  result = sub_268F39F28(v1, v2, v7, v8);
  qword_2802F0780 = result;
  qword_2802F0788 = v4;
  qword_2802F0790 = v5;
  qword_2802F0798 = v6;
  return result;
}

uint64_t *sub_268D2C440()
{
  if (qword_2802DAF60 != -1)
  {
    swift_once();
  }

  return &qword_2802F0780;
}

uint64_t sub_268D2C4A0()
{
  v1 = sub_268D2C440();
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  swift_endAccess();
  return v2;
}

uint64_t sub_268D2C524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_268D2C440();

  swift_beginAccess();
  v4 = v8[1];
  v9 = v8[3];
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;

  swift_endAccess();
}

uint64_t sub_268D2C5DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t sub_268D2C614()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t sub_268D2C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4[2] = a1;
  v4[3] = a2;

  v4[4] = a3;
  v4[5] = a4;

  return v10;
}

uint64_t sub_268D2C758(void *a1, void *a2)
{
  v9 = a1[2];
  v12 = a1[3];

  v10 = a2[2];
  v11 = a2[3];

  v15 = MEMORY[0x26D62DB50](v9, v12, v10, v11);

  if (v15)
  {
    v3 = a1[4];
    v6 = a1[5];

    v4 = a2[4];
    v5 = a2[5];

    v7 = MEMORY[0x26D62DB50](v3, v6, v4, v5);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_268D2C8A0(uint64_t a1, uint64_t a2)
{
  sub_268E4F23C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v9 = v2;
  *v2 = sub_268E4F2C8();
  v9[1] = v3;
  sub_268CD4334();
  v9[5] = MEMORY[0x277D83B88];
  v9[2] = v4;
  v9[6] = sub_268E4F2C8();
  v9[7] = v5;

  v9[11] = MEMORY[0x277D837D0];
  v9[8] = a1;
  v9[9] = a2;
  sub_268CD0F7C();
  sub_268F9ADA4();
  return sub_268F99BF4();
}

uint64_t sub_268D2C9E8(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;

  v12[0] = sub_268F9AEF4();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x26D62DB50](v12[0], v2, a1, a2);
  sub_268CD9D30(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  v11[0] = sub_268F9AEF4();
  v11[1] = v3;
  v6 = MEMORY[0x26D62DB50](v11[0], v3, a1, a2);
  sub_268CD9D30(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268D2CD2C()
{
  v2 = qword_2802DC260;
  if (!qword_2802DC260)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC260);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D2CEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268D2C9E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268D2CF34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268D2CB8C();
  *a1 = result;
  return result;
}

unint64_t sub_268D2CF90()
{
  v2 = qword_2802DC268;
  if (!qword_2802DC268)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC268);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D2D03C()
{
  sub_268CD9D30(v0 + 16);
  sub_268CD9D30(v0 + 32);
  return v2;
}

uint64_t sub_268D2D0BC(uint64_t a1)
{
  v7 = a1;
  v24 = 0;
  v23 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2A8, &qword_268F9E0B0);
  v8 = *(v18 - 8);
  v9 = v18 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v5 - v10;
  v24 = MEMORY[0x28223BE20](v7);
  v23 = v1;
  v11 = v24[3];
  v12 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v11);
  sub_268D2CF90();
  sub_268F9B844();
  v2 = v15;
  v16 = v14[2];
  v17 = v14[3];

  v22 = 0;
  sub_268F9B6A4();
  v19 = v2;
  v20 = v2;
  if (v2)
  {
    v5[1] = v20;

    return (*(v8 + 8))(v13, v18);
  }

  else
  {

    v3 = v19;
    v5[3] = v14[4];
    v5[4] = v14[5];

    v21 = 1;
    sub_268F9B6A4();
    v5[5] = v3;
    v6 = v3;
    if (v3)
    {
      v5[0] = v6;
    }

    return (*(v8 + 8))(v13, v18);
  }
}

uint64_t sub_268D2D340(uint64_t *a1)
{
  swift_allocObject();
  v5 = sub_268D2D3CC(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268D2D3CC(uint64_t *a1)
{
  v28 = a1;
  v42 = 0;
  v41 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2A0, &qword_268F9E0A8);
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = v14 - v32;
  v42 = MEMORY[0x28223BE20](v28);
  v41 = v1;
  v35 = v42[3];
  v36 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v35);
  sub_268D2CF90();
  v2 = v34;
  sub_268F9B834();
  v37 = v2;
  v38 = v2;
  if (v2)
  {
    v17 = v38;
    v18 = 0;
    v15 = 0;
    v16 = v38;
    v14[2] = v27;
    v14[1] = v27;
    type metadata accessor for UndoBinarySetting();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(v28);
    return v14[0];
  }

  else
  {
    v40 = 0;
    v3 = sub_268F9B614();
    v23 = 0;
    v24 = v3;
    v25 = v4;
    v26 = 0;
    v5 = v27;
    *(v27 + 16) = v3;
    *(v5 + 24) = v4;
    v39 = 1;
    v6 = sub_268F9B614();
    v19 = 0;
    v20 = v6;
    v21 = v7;
    v22 = 0;
    v8 = v27;
    v9 = v29;
    v10 = v33;
    v11 = v30;
    v12 = v21;
    *(v27 + 32) = v20;
    *(v8 + 40) = v12;
    (*(v11 + 8))(v10, v9);
    __swift_destroy_boxed_opaque_existential_0(v28);
    return v27;
  }
}

uint64_t sub_268D2D734@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268D2D340(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_268D2D834(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268D2D99C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_268D2DBC8(void *a1)
{
  a1[1] = sub_268D2DC0C();
  a1[2] = sub_268D2DC8C();
  result = sub_268D2DD0C();
  a1[3] = result;
  return result;
}

unint64_t sub_268D2DC0C()
{
  v2 = qword_2802DC270;
  if (!qword_2802DC270)
  {
    type metadata accessor for UndoBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC270);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2DC8C()
{
  v2 = qword_2802DC278;
  if (!qword_2802DC278)
  {
    type metadata accessor for UndoBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC278);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2DD0C()
{
  v2 = qword_2802DC280;
  if (!qword_2802DC280)
  {
    type metadata accessor for UndoBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2DDA4()
{
  v2 = qword_2802DC288;
  if (!qword_2802DC288)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2DE38()
{
  v2 = qword_2802DC290;
  if (!qword_2802DC290)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2DECC()
{
  v2 = qword_2802DC298;
  if (!qword_2802DC298)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D2DF48()
{
  v2 = qword_280FE2720;
  if (!qword_280FE2720)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2720);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268D2DFAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3);
  result = sub_268D350FC(18, 0, 0);
  if (result)
  {
    v5 = a1[4];
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_268D2E0CC()
{
  v0 = sub_268DDE5B4();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_280FE7FC8 = v2;
  return result;
}

uint64_t *sub_268D2E10C()
{
  if (qword_280FE2AE8 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FC8;
}

uint64_t sub_268D2E16C()
{
  v0 = sub_268D2E10C();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268D2E1C4()
{
  v2 = *(v0 + 96);

  return v2;
}

uint64_t sub_268D2E1F0()
{
  v2 = *(v0 + 104);

  return v2;
}

uint64_t sub_268D2E21C()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t sub_268D2E288()
{
  v2 = *(v0 + 200);

  return v2;
}

uint64_t sub_268D2E338(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = v8;

  v8[14] = a5;

  v8[12] = a3;

  v8[13] = a4;
  sub_268CDE730(a1, v22);
  sub_268CDF978(v22, v8 + 2);
  sub_268CDE730(a2, v21);
  sub_268CDF978(v21, v8 + 7);
  sub_268CDE730(a6, v20);
  sub_268CDF978(v20, v8 + 15);
  sub_268CDE730(a7, v19);
  sub_268CDF978(v19, v8 + 20);

  v8[25] = a8;

  __swift_destroy_boxed_opaque_existential_0(a7);
  __swift_destroy_boxed_opaque_existential_0(a6);

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

uint64_t sub_268D2E4C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_268F9B284();
  v2 = sub_268DC7C68();
  v6 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v6);

  v3 = sub_268D2E10C();
  MEMORY[0x277D82BE0](*v3);
  MEMORY[0x277D82BE0](a1);
  sub_268D2E630();
  sub_268F99694();
  v4 = sub_268F996A4();
  return (*(*(v4 - 8) + 56))(a2, 0, 1);
}

unint64_t sub_268D2E630()
{
  v2 = qword_280FE27C8;
  if (!qword_280FE27C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE27C8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268D2E694(uint64_t a1, uint64_t a2)
{
  *(v3 + 2248) = v2;
  *(v3 + 2240) = a2;
  *(v3 + 2232) = a1;
  *(v3 + 2152) = v3;
  *(v3 + 2160) = 0;
  *(v3 + 2168) = 0;
  *(v3 + 2640) = 0;
  *(v3 + 2184) = 0;
  *(v3 + 2200) = 0;
  *(v3 + 2208) = 0;
  *(v3 + 2216) = 0;
  *(v3 + 2224) = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15;
  *(v3 + 2256) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  *(v3 + 2264) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 2272) = swift_task_alloc();
  v7 = sub_268F999F4();
  *(v3 + 2280) = v7;
  v13 = *(v7 - 8);
  *(v3 + 2288) = v13;
  v8 = *(v13 + 64) + 15;
  *(v3 + 2296) = swift_task_alloc();
  v9 = *(*(sub_268F99834() - 8) + 64) + 15;
  *(v3 + 2304) = swift_task_alloc();
  v10 = sub_268F99BC4();
  *(v3 + 2312) = v10;
  v14 = *(v10 - 8);
  *(v3 + 2320) = v14;
  v15 = *(v14 + 64);
  *(v3 + 2328) = swift_task_alloc();
  *(v3 + 2336) = swift_task_alloc();
  *(v3 + 2160) = a2;
  *(v3 + 2168) = v2;
  v11 = *(v3 + 2152);

  return MEMORY[0x2822009F8](sub_268D2E904, 0);
}

uint64_t sub_268D2E904()
{
  v33 = *(v0 + 2248);
  v30 = *(v0 + 2240);
  *(v0 + 2152) = v0;
  sub_268F9B284();
  v1 = sub_268DC7C68();
  v29 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v29);
  type metadata accessor for AuthenticationHandler();
  sub_268CDE730(v33 + 16, v0 + 1632);
  v2 = sub_268CDC590();
  sub_268E4C814((v0 + 1632), v2);
  *(v0 + 2344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v31 = sub_268F99B44();
  v32 = sub_268E4CA7C(v31);
  *(v0 + 161) = v32 & 1;
  MEMORY[0x277D82BD8](v31);

  *(v0 + 2640) = v32 & 1;
  sub_268CDE730(v33 + 120, v0 + 1672);
  v35 = *(v0 + 1696);
  v34 = *(v0 + 1704);
  __swift_project_boxed_opaque_existential_1((v0 + 1672), v35);
  v36 = (*(v34 + 56))(v35);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1672));
  if (v36)
  {
    v21 = v28[292];
    v22 = v28[288];
    v24 = v28[281];
    v3 = v28[280];
    sub_268F9B284();
    v4 = sub_268DC7CC8();
    v20 = *v4;
    MEMORY[0x277D82BE0](*v4);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v20);
    sub_268F99804();

    v23 = swift_task_alloc();
    *(v23 + 16) = v24;
    *(v23 + 24) = v3;
    sub_268F99B94();

    v28[294] = *(v24 + 112);

    v27 = sub_268F99B34();
    v28[295] = v27;
    v25 = sub_268F99B44();
    v28[296] = v25;
    v26 = sub_268F99B24();
    v28[297] = v26;
    v5 = swift_task_alloc();
    v28[298] = v5;
    *v5 = v28[269];
    v5[1] = sub_268D2EFE8;

    return sub_268F0A0DC(v27, v25, v26);
  }

  sub_268CDE730(v28[281] + 120, (v28 + 214));
  v19 = v28[217];
  v18 = v28[218];
  __swift_project_boxed_opaque_existential_1(v28 + 214, v19);
  if (((*(v18 + 16))(v19) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v28 + 214);
LABEL_12:
    v10 = v28[280];
    v28[325] = *(v28[281] + 112);

    v11 = sub_268F99B34();
    v28[326] = v11;
    v12 = sub_268F99B44();
    v28[327] = v12;
    v13 = sub_268F99B24();
    v28[328] = v13;
    v8 = swift_task_alloc();
    v28[329] = v8;
    *v8 = v28[269];
    v8[1] = sub_268D30B78;
    v9 = v28[284];

    return sub_268EED844(v9, v11, v12, v13);
  }

  __swift_destroy_boxed_opaque_existential_0(v28 + 214);
  if (v32)
  {
    goto LABEL_12;
  }

  v14 = v28[280];
  v28[316] = *(v28[281] + 112);

  v17 = sub_268F99B34();
  v28[317] = v17;
  v15 = sub_268F99B44();
  v28[318] = v15;
  v16 = sub_268F99B24();
  v28[319] = v16;
  v7 = swift_task_alloc();
  v28[320] = v7;
  *v7 = v28[269];
  v7[1] = sub_268D30540;

  return sub_268EF3DEC(v17, v15, v16);
}

uint64_t sub_268D2EFE8(uint64_t a1)
{
  v14 = *v2;
  v12 = *v2 + 16;
  v13 = v14 + 269;
  v4 = *(*v2 + 2384);
  v14[269] = *v2;
  v14[299] = a1;
  v14[300] = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268D312B8;
  }

  else
  {
    v9 = *(v12 + 2352);
    v10 = *(v12 + 2344);
    v11 = *(v12 + 2336);

    v5 = *v13;
    v6 = sub_268D2F1AC;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D2F1AC()
{
  v1 = v0[299];
  v6 = v0[293];
  v2 = v0[281];
  v5 = v0[280];
  v0[269] = v0;
  v0[277] = v1;
  v0[301] = *(v2 + 112);

  v8 = sub_268F99B34();
  v0[302] = v8;
  v9 = sub_268F99B44();
  v0[303] = v9;
  v10 = sub_268F99B24();
  v0[304] = v10;
  v3 = swift_task_alloc();
  *(v7 + 2440) = v3;
  *v3 = *(v7 + 2152);
  v3[1] = sub_268D2F2F4;

  return sub_268F04F2C(v7 + 1952, v8, v9, v10);
}

uint64_t sub_268D2F2F4()
{
  v12 = *v1;
  v10 = *v1 + 16;
  v11 = (v12 + 2152);
  v2 = *(*v1 + 2440);
  *(v12 + 2152) = *v1;
  *(v12 + 2448) = v0;

  if (v0)
  {
    v5 = *v11;
    v4 = sub_268D314B0;
  }

  else
  {
    v7 = *(v10 + 2408);
    v8 = *(v10 + 2400);
    v9 = *(v10 + 2392);

    v3 = *v11;
    v4 = sub_268D2F4B0;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268D2F4B0()
{
  v37 = v0;
  *(v0 + 2152) = v0;
  if (*(v0 + 1976))
  {
    sub_268CDF978(v32 + 244, v32 + 239);
    sub_268CDE730((v32 + 239), (v32 + 249));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2D8, &qword_268F9E0E0);
    if (swift_dynamicCast())
    {
      memcpy(v36, v32 + 162, sizeof(v36));
      memcpy(v35, v36, sizeof(v35));
      memcpy(v32 + 148, v35, 0x70uLL);
    }

    else
    {
      memset(v33, 0, sizeof(v33));
      memcpy(v32 + 148, v33, 0x70uLL);
    }

    memcpy(v32 + 176, v32 + 148, 0x70uLL);
    if (v32[177])
    {
      v29 = v32[299];
      v32[278] = v32 + 176;
      sub_268F999C4();
      v32[307] = sub_268F999B4();
      sub_268D28EFC((v32 + 176), (v32 + 190));
      memcpy(v32 + 21, v32 + 176, 0x70uLL);
      sub_268D34FC0((v32 + 21));
      v32[267] = &type metadata for SnippetModels;
      v32[268] = sub_268D34E18();
      v1 = swift_allocObject();
      v32[264] = v1;
      memcpy((v1 + 16), v32 + 21, 0x91uLL);
      sub_268D29170();
      v30 = sub_268F9B734();
      v28 = v2;
      MEMORY[0x277D82BE0](v29);
      *v28 = v29;
      sub_268CD0F7C();
      v32[308] = v30;
      v31 = (MEMORY[0x277D5BD38] + *MEMORY[0x277D5BD38]);
      v3 = *(MEMORY[0x277D5BD38] + 4);
      v4 = swift_task_alloc();
      v5 = v32 + 264;
      v6 = v30;
      v7 = v31;
      v32[309] = v4;
      *v4 = v32[269];
      v4[1] = sub_268D2FCC8;
      v8 = v32[292];
      v9 = v32[279];
    }

    else
    {
      sub_268CDE730((v32 + 239), (v32 + 254));
      if (swift_dynamicCast())
      {
        memcpy(__dst, v32 + 58, sizeof(__dst));
        memcpy(v32 + 130, __dst, 0x90uLL);
        nullsub_1(v32 + 130);
        memcpy(v32 + 40, v32 + 130, 0x90uLL);
      }

      else
      {
        sub_268D34B74(v32 + 76);
        memcpy(v32 + 40, v32 + 76, 0x90uLL);
      }

      memcpy(v32 + 94, v32 + 40, 0x90uLL);
      if (sub_268D34BC0((v32 + 94)) == 1)
      {
        __swift_destroy_boxed_opaque_existential_0(v32 + 239);
        goto LABEL_18;
      }

      v25 = v32[299];
      sub_268F999C4();
      v32[310] = sub_268F999B4();
      sub_268D34CD8(v32 + 94, v32 + 112);
      memcpy(v32 + 2, v32 + 94, 0x90uLL);
      sub_268D34E04((v32 + 2));
      v32[262] = &type metadata for SnippetModels;
      v32[263] = sub_268D34E18();
      v11 = swift_allocObject();
      v32[259] = v11;
      memcpy((v11 + 16), v32 + 2, 0x91uLL);
      sub_268D29170();
      v26 = sub_268F9B734();
      v24 = v12;
      MEMORY[0x277D82BE0](v25);
      *v24 = v25;
      sub_268CD0F7C();
      v32[311] = v26;
      v27 = (MEMORY[0x277D5BD38] + *MEMORY[0x277D5BD38]);
      v13 = *(MEMORY[0x277D5BD38] + 4);
      v14 = swift_task_alloc();
      v5 = v32 + 259;
      v6 = v26;
      v7 = v27;
      v32[312] = v14;
      *v14 = v32[269];
      v14[1] = sub_268D2FFB0;
      v8 = v32[292];
      v9 = v32[279];
    }

    return v7(v9, v5, v6, v8);
  }

  sub_268D28414(v32 + 244);
LABEL_18:
  v21 = v32[299];
  sub_268F999C4();
  v32[313] = sub_268F999B4();
  sub_268D29170();
  v22 = sub_268F9B734();
  v20 = v15;
  MEMORY[0x277D82BE0](v21);
  *v20 = v21;
  sub_268CD0F7C();
  v32[314] = v22;
  v23 = (MEMORY[0x277D5BD50] + *MEMORY[0x277D5BD50]);
  v16 = *(MEMORY[0x277D5BD50] + 4);
  v17 = swift_task_alloc();
  v32[315] = v17;
  *v17 = v32[269];
  v17[1] = sub_268D3028C;
  v18 = v32[292];
  v19 = v32[279];

  return v23(v19, v22, v18);
}

uint64_t sub_268D2FCC8()
{
  v7 = *v0;
  v5 = (*v0 + 2112);
  v1 = *(*v0 + 2472);
  v4 = *(*v0 + 2464);
  v6 = *(*v0 + 2456);
  *(v7 + 2152) = *v0;

  __swift_destroy_boxed_opaque_existential_0(v5);

  v2 = *(v7 + 2152);

  return MEMORY[0x2822009F8](sub_268D2FE38, 0);
}

uint64_t sub_268D2FE38()
{
  v5 = v0[299];
  v7 = v0[292];
  v6 = v0[290];
  v8 = v0[289];
  v0[269] = v0;
  sub_268D29010(v0 + 176);
  __swift_destroy_boxed_opaque_existential_0(v0 + 239);
  MEMORY[0x277D82BD8](v5);
  (*(v6 + 8))(v7, v8);
  v1 = v0[292];
  v9 = v0[291];
  v10 = v0[288];
  v11 = v0[287];
  v12 = v0[284];
  v13 = v0[282];

  v2 = *(v0[269] + 8);
  v3 = v0[269];

  return v2();
}

uint64_t sub_268D2FFB0()
{
  v7 = *v0;
  v5 = (*v0 + 2072);
  v1 = *(*v0 + 2496);
  v4 = *(*v0 + 2488);
  v6 = *(*v0 + 2480);
  *(v7 + 2152) = *v0;

  __swift_destroy_boxed_opaque_existential_0(v5);

  v2 = *(v7 + 2152);

  return MEMORY[0x2822009F8](sub_268D30120, 0);
}

uint64_t sub_268D30120()
{
  v5 = v0[299];
  v7 = v0[292];
  v6 = v0[290];
  v8 = v0[289];
  v0[269] = v0;
  sub_268D34F58(v0 + 94);
  __swift_destroy_boxed_opaque_existential_0(v0 + 239);
  MEMORY[0x277D82BD8](v5);
  (*(v6 + 8))(v7, v8);
  v1 = v0[292];
  v9 = v0[291];
  v10 = v0[288];
  v11 = v0[287];
  v12 = v0[284];
  v13 = v0[282];

  v2 = *(v0[269] + 8);
  v3 = v0[269];

  return v2();
}

uint64_t sub_268D3028C()
{
  v6 = *v0;
  v1 = *(*v0 + 2520);
  v4 = *(*v0 + 2512);
  v5 = *(*v0 + 2504);
  *(v6 + 2152) = *v0;

  v2 = *(v6 + 2152);

  return MEMORY[0x2822009F8](sub_268D303EC, 0);
}

uint64_t sub_268D303EC()
{
  v1 = v0[299];
  v7 = v0[292];
  v6 = v0[290];
  v8 = v0[289];
  v0[269] = v0;
  MEMORY[0x277D82BD8](v1);
  (*(v6 + 8))(v7, v8);
  v2 = v0[292];
  v9 = v0[291];
  v10 = v0[288];
  v11 = v0[287];
  v12 = v0[284];
  v13 = v0[282];

  v3 = *(v0[269] + 8);
  v4 = v0[269];

  return v3();
}

uint64_t sub_268D30540(uint64_t a1)
{
  v14 = *v2;
  v12 = *v2 + 16;
  v13 = v14 + 269;
  v4 = *(*v2 + 2560);
  v14[269] = *v2;
  v14[321] = a1;
  v14[322] = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268D316C4;
  }

  else
  {
    v9 = *(v12 + 2528);
    v10 = *(v12 + 2520);
    v11 = *(v12 + 2512);

    v5 = *v13;
    v6 = sub_268D30704;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D30704()
{
  v1 = v0[321];
  v9 = v0[291];
  v10 = v0[288];
  v12 = v0[281];
  v8 = v0[280];
  v0[269] = v0;
  v0[275] = v1;
  sub_268F99804();

  v11 = swift_task_alloc();
  *(v11 + 16) = v12;
  *(v11 + 24) = v8;
  sub_268F99B94();

  sub_268CDE730(v12 + 160, (v0 + 234));
  v14 = v0[237];
  v15 = v0[238];
  __swift_project_boxed_opaque_existential_1(v0 + 234, v14);
  v2 = *(MEMORY[0x277D5BE50] + 4);
  v3 = swift_task_alloc();
  v13[323] = v3;
  *v3 = v13[269];
  v3[1] = sub_268D3089C;
  v4 = v13[321];
  v5 = v13[291];
  v6 = v13[279];

  return MEMORY[0x2821BB480](v6, v4, v5, v14, v15);
}

uint64_t sub_268D3089C()
{
  v8 = *v1;
  v7 = (v8 + 2152);
  v2 = *(*v1 + 2584);
  *(v8 + 2152) = *v1;
  *(v8 + 2592) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_268D31814;
  }

  else
  {
    v3 = *v7;
    v4 = sub_268D30A14;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268D30A14()
{
  v8 = v0[321];
  v6 = v0[291];
  v5 = v0[290];
  v7 = v0[289];
  v0[269] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 234);
  (*(v5 + 8))(v6, v7);
  MEMORY[0x277D82BD8](v8);
  v1 = v0[292];
  v9 = v0[291];
  v10 = v0[288];
  v11 = v0[287];
  v12 = v0[284];
  v13 = v0[282];

  v2 = *(v0[269] + 8);
  v3 = v0[269];

  return v2();
}

uint64_t sub_268D30B78()
{
  v8 = *v0;
  v1 = *(*v0 + 2632);
  v4 = *(*v0 + 2624);
  v5 = *(*v0 + 2616);
  v6 = *(*v0 + 2608);
  v7 = *(*v0 + 2600);
  *(v8 + 2152) = *v0;

  v2 = *(v8 + 2152);

  return MEMORY[0x2822009F8](sub_268D30D18, 0);
}

uint64_t sub_268D30D18()
{
  v1 = v0[287];
  v2 = v0[284];
  v3 = v0[283];
  v0[269] = v0;
  sub_268D2DFAC(v3, (v0 + 272), v1);
  if (*(v28 + 161))
  {
    sub_268D34954();
    v27 = sub_268F9B734();
  }

  else
  {
    v22 = *(v28 + 2344);
    v23 = *(v28 + 2248);
    v21 = *(v28 + 2240);
    v25 = sub_268F99B44();
    v24 = sub_268F99B24();
    v26 = sub_268D32EF4(v25, v24);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    v27 = v26;
  }

  v19 = *(v28 + 2248);
  *(v28 + 2184) = v27;
  sub_268CDE730(v19 + 16, v28 + 1752);
  sub_268CDE730(v19 + 16, v28 + 1792);
  v20 = *(v28 + 1824);
  __swift_project_boxed_opaque_existential_1((v28 + 1792), *(v28 + 1816));
  sub_268F997C4();
  *(v28 + 2192) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
  sub_268D34954();
  sub_268D349B8();
  sub_268F9AF84();
  v12 = *(v28 + 2296);
  v13 = *(v28 + 2280);
  v10 = *(v28 + 2256);
  v9 = *(v28 + 2232);
  v11 = *(v28 + 2288);
  v4 = sub_268F999A4();
  (*(*(v4 - 8) + 56))(v10, 1);
  *(v28 + 1832) = 0;
  *(v28 + 1840) = 0;
  *(v28 + 1848) = 0;
  *(v28 + 1856) = 0;
  *(v28 + 1864) = 0;
  sub_268CDD6D4();
  _swift_stdlib_has_malloc_size();
  sub_268D31B10();
  v9[3] = sub_268F99C74();
  v9[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_268F998D4();

  sub_268D28414((v28 + 1832));
  sub_268D34AC0(v10);

  __swift_destroy_boxed_opaque_existential_0((v28 + 1792));
  __swift_destroy_boxed_opaque_existential_0((v28 + 1752));

  (*(v11 + 8))(v12, v13);
  v5 = *(v28 + 2336);
  v14 = *(v28 + 2328);
  v15 = *(v28 + 2304);
  v16 = *(v28 + 2296);
  v17 = *(v28 + 2272);
  v18 = *(v28 + 2256);

  v6 = *(*(v28 + 2152) + 8);
  v7 = *(v28 + 2152);

  return v6();
}

uint64_t sub_268D312B8()
{
  v1 = v0[297];
  v7 = v0[296];
  v8 = v0[295];
  v9 = v0[294];
  v11 = v0[292];
  v10 = v0[290];
  v12 = v0[289];
  v0[269] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  (*(v10 + 8))(v11, v12);
  v13 = v0[300];
  v2 = v13;
  v0[276] = v13;
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v3 = v0[292];
  v14 = v0[291];
  v15 = v0[288];
  v16 = v0[287];
  v17 = v0[284];
  v18 = v0[282];

  v4 = *(v0[269] + 8);
  v5 = v0[269];

  return v4();
}

uint64_t sub_268D314B0()
{
  v1 = v0[304];
  v7 = v0[303];
  v8 = v0[302];
  v9 = v0[301];
  v10 = v0[299];
  v12 = v0[292];
  v11 = v0[290];
  v13 = v0[289];
  v0[269] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  MEMORY[0x277D82BD8](v10);
  (*(v11 + 8))(v12, v13);
  v14 = v0[306];
  v2 = v14;
  v0[276] = v14;
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v3 = v0[292];
  v15 = v0[291];
  v16 = v0[288];
  v17 = v0[287];
  v18 = v0[284];
  v19 = v0[282];

  v4 = *(v0[269] + 8);
  v5 = v0[269];

  return v4();
}

uint64_t sub_268D316C4()
{
  v1 = v0[319];
  v7 = v0[318];
  v8 = v0[317];
  v9 = v0[316];
  v0[269] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  v2 = v0[322];
  v3 = v0[292];
  v10 = v0[291];
  v11 = v0[288];
  v12 = v0[287];
  v13 = v0[284];
  v14 = v0[282];

  v4 = *(v0[269] + 8);
  v5 = v0[269];

  return v4();
}

uint64_t sub_268D31814()
{
  v9 = v0[321];
  v7 = v0[291];
  v6 = v0[290];
  v8 = v0[289];
  v0[269] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 234);
  (*(v6 + 8))(v7, v8);
  MEMORY[0x277D82BD8](v9);
  v1 = v0[324];
  v2 = v0[292];
  v10 = v0[291];
  v11 = v0[288];
  v12 = v0[287];
  v13 = v0[284];
  v14 = v0[282];

  v3 = *(v0[269] + 8);
  v4 = v0[269];

  return v3();
}

uint64_t sub_268D31978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v6 = a2;
  v8 = a3;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v6 - v7;
  v17 = MEMORY[0x28223BE20](v10);
  v16 = v4;
  v15 = a3;
  v13 = *(v4 + 200);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v12 = sub_268F99B44();
  v11 = sub_268F99B24();
  sub_268D59EE4(v12, v11, v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  return sub_268F99BA4();
}

uint64_t sub_268D31AC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = MEMORY[0x277D82BE0]();
  *a2 = v4;
  return result;
}

uint64_t sub_268D31B2C(uint64_t a1, uint64_t a2)
{
  v3[37] = v2;
  v3[36] = a2;
  v3[35] = a1;
  v3[27] = v3;
  v3[28] = 0;
  v3[29] = 0;
  v3[32] = 0;
  v3[34] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[39] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v7 = sub_268F999F4();
  v3[41] = v7;
  v14 = *(v7 - 8);
  v3[42] = v14;
  v8 = *(v14 + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = *(*(sub_268F99834() - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v10 = sub_268F99BC4();
  v3[45] = v10;
  v15 = *(v10 - 8);
  v3[46] = v15;
  v11 = *(v15 + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[28] = a2;
  v3[29] = v2;
  v12 = v3[27];

  return MEMORY[0x2822009F8](sub_268D31D6C, 0);
}

uint64_t sub_268D31D6C()
{
  v1 = *(v0 + 288);
  *(v0 + 216) = v0;
  sub_268F9B284();
  v2 = sub_268DC7C68();
  v54 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v55 = sub_268F99B24();
  v56 = [v55 errorDetail];
  if (v56)
  {
    v49 = sub_268F9AE24();
    v50 = v3;
    MEMORY[0x277D82BD8](v56);
    v51 = v49;
    v52 = v50;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v47 = v53[37];
  v4 = v53[36];
  MEMORY[0x277D82BD8](v55);
  v44 = sub_268F99B44();
  v53[30] = v44;
  v5 = sub_268D2E630();
  v45 = SettingIntent.settingIdentifier.getter(v5, &protocol witness table for INGetSettingIntent);
  v46 = v6;
  MEMORY[0x277D82BD8](v44);
  v48 = sub_268E07564(v51, v52, v45, v46);

  if ((v48 & 1) == 0)
  {
    v8 = v53[37];

    goto LABEL_11;
  }

  sub_268CDE730(v53[37] + 120, (v53 + 22));
  v42 = v53[25];
  v41 = v53[26];
  __swift_project_boxed_opaque_existential_1(v53 + 22, v42);
  v43 = (*(v41 + 16))(v42);
  __swift_destroy_boxed_opaque_existential_0(v53 + 22);
  v7 = v53[37];

  if ((v43 & 1) == 0)
  {
LABEL_11:
    v35 = v53[43];
    v31 = v53[40];
    v36 = v53[39];
    v30 = v53[36];
    v34 = *(v53[37] + 112);

    sub_268F99B34();
    v33 = sub_268F99B44();
    v32 = sub_268F99B24();
    sub_268EF11E8(v33, v32, v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);

    sub_268D2DFAC(v36, (v53 + 31), v35);
    v27 = v53[37];
    v24 = v53[36];
    v26 = sub_268F99B44();
    v25 = sub_268F99B24();
    v29 = sub_268D32EF4(v26, v25);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    v53[32] = v29;
    sub_268CDE730(v27 + 16, (v53 + 2));
    sub_268CDE730(v27 + 16, (v53 + 7));
    v28 = v53[11];
    __swift_project_boxed_opaque_existential_1(v53 + 7, v53[10]);
    sub_268F997C4();
    v53[33] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
    sub_268D34954();
    sub_268D349B8();
    sub_268F9AF84();
    v18 = v53[43];
    v19 = v53[41];
    v16 = v53[38];
    v15 = v53[35];
    v17 = v53[42];
    v11 = sub_268F999A4();
    (*(*(v11 - 8) + 56))(v16, 1);
    v53[12] = 0;
    v53[13] = 0;
    v53[14] = 0;
    v53[15] = 0;
    v53[16] = 0;
    sub_268CDD6D4();
    _swift_stdlib_has_malloc_size();
    sub_268D31B10();
    v15[3] = sub_268F99C74();
    v15[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v15);
    sub_268F998D4();

    sub_268D28414(v53 + 12);
    sub_268D34AC0(v16);

    __swift_destroy_boxed_opaque_existential_0(v53 + 7);
    __swift_destroy_boxed_opaque_existential_0(v53 + 2);

    (*(v17 + 8))(v18, v19);
    v12 = v53[47];
    v20 = v53[44];
    v21 = v53[43];
    v22 = v53[40];
    v23 = v53[38];

    v13 = *(v53[27] + 8);
    v14 = v53[27];

    return v13();
  }

  v37 = v53[36];
  v53[48] = *(v53[37] + 112);

  v40 = sub_268F99B34();
  v53[49] = v40;
  v38 = sub_268F99B44();
  v53[50] = v38;
  v39 = sub_268F99B24();
  v53[51] = v39;
  v9 = swift_task_alloc();
  v53[52] = v9;
  *v9 = v53[27];
  v9[1] = sub_268D326D0;

  return sub_268EFA4A4(v40, v38, v39);
}

uint64_t sub_268D326D0(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 416);
  *(v12 + 216) = *v2;
  v13 = (v12 + 216);
  *(v12 + 424) = a1;
  *(v12 + 432) = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268D32C88;
  }

  else
  {
    v9 = *(v12 + 400);
    v10 = *(v12 + 392);
    v11 = *(v12 + 384);

    v5 = *v13;
    v6 = sub_268D32884;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D32884()
{
  v1 = v0[53];
  v9 = v0[47];
  v8 = v0[44];
  v10 = v0[37];
  v0[27] = v0;
  v0[34] = v1;
  sub_268F99804();
  sub_268D18250();

  sub_268F99B94();

  sub_268CDE730(v10 + 160, (v0 + 17));
  v12 = v0[20];
  v13 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v12);
  v2 = *(MEMORY[0x277D5BE50] + 4);
  v3 = swift_task_alloc();
  v11[55] = v3;
  *v3 = v11[27];
  v3[1] = sub_268D329E0;
  v4 = v11[53];
  v5 = v11[47];
  v6 = v11[35];

  return MEMORY[0x2821BB480](v6, v4, v5, v12, v13);
}

uint64_t sub_268D329E0()
{
  v7 = *v1;
  v2 = *(*v1 + 440);
  *(v7 + 216) = *v1;
  v8 = (v7 + 216);
  *(v7 + 448) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_268D32DB4;
  }

  else
  {
    v3 = *v8;
    v4 = sub_268D32B48;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268D32B48()
{
  v8 = v0[53];
  v6 = v0[47];
  v5 = v0[46];
  v7 = v0[45];
  v0[27] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  (*(v5 + 8))(v6, v7);
  MEMORY[0x277D82BD8](v8);
  v1 = v0[47];
  v9 = v0[44];
  v10 = v0[43];
  v11 = v0[40];
  v12 = v0[38];

  v2 = *(v0[27] + 8);
  v3 = v0[27];

  return v2();
}

uint64_t sub_268D32C88()
{
  v1 = v0[51];
  v7 = v0[50];
  v8 = v0[49];
  v9 = v0[48];
  v0[27] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  v2 = v0[54];
  v3 = v0[47];
  v10 = v0[44];
  v11 = v0[43];
  v12 = v0[40];
  v13 = v0[38];

  v4 = *(v0[27] + 8);
  v5 = v0[27];

  return v4();
}

uint64_t sub_268D32DB4()
{
  v9 = v0[53];
  v7 = v0[47];
  v6 = v0[46];
  v8 = v0[45];
  v0[27] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  (*(v6 + 8))(v7, v8);
  MEMORY[0x277D82BD8](v9);
  v1 = v0[56];
  v2 = v0[47];
  v10 = v0[44];
  v11 = v0[43];
  v12 = v0[40];
  v13 = v0[38];

  v3 = *(v0[27] + 8);
  v4 = v0[27];

  return v3();
}

uint64_t sub_268D32EF4(void *a1, void *a2)
{
  v118[1] = 0;
  v111 = 0;
  v108 = 0;
  v104 = 0;
  v100 = 0;
  v92 = 0;
  v84 = 0;
  v118[3] = a1;
  v118[2] = a2;
  sub_268D34954();
  v118[0] = sub_268F9B734();
  v78 = [a2 errorDetail];
  if (v78)
  {
    v71 = sub_268F9AE24();
    v72 = v2;
    MEMORY[0x277D82BD8](v78);
    v73 = v71;
    v74 = v72;
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v70 = sub_268E078D0(v73, v74);

  if (v70)
  {
    v67 = v76[13];

    v68 = v76[14];

    v69 = [a1 settingMetadata];
    if (v69)
    {
      v62 = [v69 settingId];
      v63 = sub_268F9AE24();
      v64 = v3;
      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v62);
      v65 = v63;
      v66 = v64;
    }

    else
    {
      v65 = 0;
      v66 = 0;
    }

    v61 = sub_268F36E44(v68, v65, v66);

    if (v61)
    {
      v84 = v61;
      v60 = sub_268F9B284();
      v4 = sub_268DC7D28();
      oslog = *v4;
      MEMORY[0x277D82BE0](*v4);
      MEMORY[0x277D82BE0](v61);
      v53 = swift_allocObject();
      *(v53 + 16) = v61;
      v55 = swift_allocObject();
      *(v55 + 16) = 32;
      v56 = swift_allocObject();
      *(v56 + 16) = 8;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_268D350F4;
      *(v54 + 24) = v53;
      v57 = swift_allocObject();
      *(v57 + 16) = sub_268CD7608;
      *(v57 + 24) = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      sub_268F9B734();
      v58 = v5;

      *v58 = sub_268CD7600;
      v58[1] = v55;

      v58[2] = sub_268CD7600;
      v58[3] = v56;

      v58[4] = sub_268CD7614;
      v58[5] = v57;
      sub_268CD0F7C();

      if (os_log_type_enabled(oslog, v60))
      {
        buf = sub_268F9B3A4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v51 = sub_268CD5448(0);
        v52 = sub_268CD5448(1);
        v83[0] = buf;
        v82 = v51;
        v81 = v52;
        sub_268CD549C(2, v83);
        sub_268CD549C(1, v83);
        v79 = sub_268CD7600;
        v80 = v55;
        sub_268CD54B0(&v79, v83, &v82, &v81);
        v79 = sub_268CD7600;
        v80 = v56;
        sub_268CD54B0(&v79, v83, &v82, &v81);
        v79 = sub_268CD7614;
        v80 = v57;
        sub_268CD54B0(&v79, v83, &v82, &v81);
        _os_log_impl(&dword_268CBE000, oslog, v60, "GetSettingHandleIntentFlowStrategy: rendered punchout button: %s", buf, 0xCu);
        sub_268CD54FC(v51);
        sub_268CD54FC(v52);
        sub_268F9B384();
      }

      else
      {
      }

      MEMORY[0x277D82BD8](oslog);
      MEMORY[0x277D82BE0](v61);
      v83[1] = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
      sub_268F9B064();
      MEMORY[0x277D82BD8](v61);
    }

    else
    {
      sub_268F9B284();
      v6 = sub_268DC7D28();
      v49 = *v6;
      MEMORY[0x277D82BE0](*v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v49);
    }
  }

  v48 = [a1 settingMetadata];
  if (v48)
  {
    v45 = [v48 settingId];
    v46._countAndFlagsBits = sub_268F9AE24();
    v46._object = v7;
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v45);
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v115 = v47;
  if (v47._object)
  {
    v116 = v115;
  }

  else
  {
    v116._countAndFlagsBits = sub_268F9AEF4();
    v116._object = v8;
    if (v115._object)
    {
      sub_268CD9D30(&v115);
    }
  }

  BinarySettingIdentifier.init(rawValue:)(v116);
  v44 = v117;
  if (v117 == 65)
  {
    goto LABEL_42;
  }

  v100 = v117;
  v42 = v76[12];

  v99 = v44;
  v43 = sub_268E57758(&v99);

  if (!v43)
  {
    goto LABEL_42;
  }

  v40 = v76[12];

  v98 = v44;
  v41 = [a2 settingResponseDatas];
  if (v41)
  {
    sub_268CDD140();
    v38 = sub_268F9B014();
    MEMORY[0x277D82BD8](v41);
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v97 = v39;
  if (v39)
  {
    v36 = v97;

    sub_268CD7930(&v97);
    v86 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2E8, qword_268F9E0F0);
    sub_268D3506C();
    sub_268F9B234();
    v37 = v85;

    if (v37)
    {
      v33 = [v37 binaryValue];
      MEMORY[0x277D82BD8](v37);
      v34 = v33;
      v35 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    sub_268CD7930(&v97);
  }

  v34 = 0;
  v35 = 1;
LABEL_33:
  v93 = v34;
  v94 = v35 & 1;
  v95 = 1;
  v96 = 0;
  if ((v35 & 1) == 0)
  {
    v89 = v34;
    v90 = v35 & 1;
    v88 = v89;
    v87 = v95;
    type metadata accessor for INBinarySettingValue();
    sub_268D292B8();
    sub_268F9AE04();
  }

  sub_268D34FD4();
  v32 = sub_268F9B314();
  v31 = sub_268E57258(&v98, v32);
  MEMORY[0x277D82BD8](v32);

  if (v31)
  {
    v92 = v31;
    MEMORY[0x277D82BE0](v31);
    v91 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
    sub_268F9B064();
    MEMORY[0x277D82BD8](v31);
    goto LABEL_76;
  }

LABEL_42:
  v30 = [a1 settingMetadata];
  if (v30)
  {
    v27 = [v30 settingId];
    v28._countAndFlagsBits = sub_268F9AE24();
    v28._object = v9;
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v27);
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v112 = v29;
  if (v29._object)
  {
    v113 = v112;
  }

  else
  {
    v113._countAndFlagsBits = sub_268F9AEF4();
    v113._object = v10;
    if (v112._object)
    {
      sub_268CD9D30(&v112);
    }
  }

  NumericSettingIdentifier.init(rawValue:)(v113);
  v26 = v114;
  if (v114 != 13)
  {
    v111 = v114;
    v24 = v76[12];

    v110 = v26;
    v25 = sub_268E5787C(&v110);

    if (v25)
    {
      v23 = [a2 settingResponseDatas];
      if (v23)
      {
        sub_268CDD140();
        v21 = sub_268F9B014();
        MEMORY[0x277D82BD8](v23);
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v109 = v22;
      if (v22)
      {
        v19 = v109;

        sub_268CD7930(&v109);
        v102 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2E8, qword_268F9E0F0);
        sub_268D3506C();
        sub_268F9B234();
        v20 = v101;

        if (v20)
        {
          v17 = [v20 numericValue];
          MEMORY[0x277D82BD8](v20);
          v18 = v17;
          goto LABEL_61;
        }
      }

      else
      {
        sub_268CD7930(&v109);
      }

      v18 = 0;
LABEL_61:
      if (v18)
      {
        v108 = v18;
        v16 = v76[12];

        v107 = v26;
        v11 = [v18 value];
        v105 = v11;
        if (v11)
        {
          v106 = v105;
        }

        else
        {
          sub_268D34FD4();
          v106 = sub_268F9B314();
          if (v105)
          {
            sub_268D35038(&v105);
          }
        }

        v14 = v106;
        v15 = sub_268E574DC(&v107);
        MEMORY[0x277D82BD8](v14);

        if (v15)
        {
          v104 = v15;
          MEMORY[0x277D82BE0](v15);
          v103 = v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
          sub_268F9B064();
          MEMORY[0x277D82BD8](v15);
        }

        MEMORY[0x277D82BD8](v18);
      }
    }
  }

LABEL_76:
  v13 = v118[0];

  sub_268CD7930(v118);
  return v13;
}

uint64_t sub_268D34040(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_268D34954();
  sub_268D35350();
  return sub_268F9AE74();
}

uint64_t sub_268D3409C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  v4 = v0[25];

  return v6;
}

uint64_t sub_268D34164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3C8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C68](a1, a2, SettingHandleIntentFlowStrategy, a4);
}

uint64_t sub_268D34238()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t sub_268D343C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3D0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C70](a1, a2, SettingHandleIntentFlowStrategy, a4);
}

uint64_t sub_268D34498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3B0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C48](a1, a2, SettingHandleIntentFlowStrategy, a4);
}

uint64_t sub_268D3456C(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268D2E694(a1, a2);
}

uint64_t sub_268D3462C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3C0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C60](a1, a2, SettingHandleIntentFlowStrategy, a4);
}

uint64_t sub_268D34700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3B8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C58](a1, a2, SettingHandleIntentFlowStrategy, a4);
}

uint64_t sub_268D347D4(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268D31B2C(a1, a2);
}

uint64_t sub_268D348AC(uint64_t a1, uint64_t a2)
{
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  v2 = sub_268D3520C();
  v3 = sub_268E04070(a1, a2, SettingHandleIntentFlowStrategy, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268D34954()
{
  v2 = qword_2802DC2C8;
  if (!qword_2802DC2C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC2C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D349B8()
{
  v2 = qword_2802DC2D0;
  if (!qword_2802DC2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC2C0, &qword_268F9FFF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC2D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t sub_268D34AC0(uint64_t a1)
{
  v3 = sub_268F999A4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268D34B74(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  result[16] = 0;
  result[17] = 0;
  return result;
}

uint64_t sub_268D34BC0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = -1;
  if (!HIDWORD(v3))
  {
    v1 = *(a1 + 8);
    v4 = v3;
  }

  return (v4 + 1);
}

void *sub_268D34CD8(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];

  a2[3] = v4;
  a2[4] = a1[4];
  v5 = a1[5];

  a2[5] = v5;
  a2[6] = a1[6];
  v6 = a1[7];

  a2[7] = v6;
  a2[8] = a1[8];
  v7 = a1[9];

  a2[9] = v7;
  a2[10] = a1[10];
  a2[11] = a1[11];
  a2[12] = a1[12];
  a2[13] = a1[13];
  a2[14] = a1[14];
  a2[15] = a1[15];
  v9 = a1[16];

  result = a2;
  a2[16] = v9;
  a2[17] = a1[17];
  return result;
}

unint64_t sub_268D34E18()
{
  v2 = qword_2802DC2E0;
  if (!qword_2802DC2E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC2E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D34E90()
{
}

void *sub_268D34F58(void *a1)
{
  v1 = a1[1];

  v2 = a1[3];

  v3 = a1[5];

  v4 = a1[7];

  v5 = a1[9];

  v6 = a1[16];

  return a1;
}

unint64_t sub_268D34FD4()
{
  v2 = qword_280FE2730;
  if (!qword_280FE2730)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2730);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D3506C()
{
  v2 = qword_2802DC2F0;
  if (!qword_2802DC2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC2E8, qword_268F9E0F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC2F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D35134(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    sub_268D353D0();
    v1 = sub_268F9B044();

    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_268D3520C()
{
  v2 = qword_280FE2AD0;
  if (!qword_280FE2AD0)
  {
    type metadata accessor for GetSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2AD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D352A4()
{
  v2 = qword_280FE2AE0;
  if (!qword_280FE2AE0)
  {
    type metadata accessor for GetSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2AE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D35324(uint64_t a1)
{
  result = sub_268D352A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268D35350()
{
  v2 = qword_2802DC2F8;
  if (!qword_2802DC2F8)
  {
    sub_268D34954();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC2F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D353D0()
{
  v2 = qword_2802DC300;
  if (!qword_2802DC300)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC300);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_268D35434()
{
  if (qword_280FE6EF0 != -1)
  {
    swift_once();
  }

  return &qword_280FE6EF8;
}

uint64_t sub_268D35494()
{
  type metadata accessor for SettingsNativeApiClient();
  memset(v2, 0, sizeof(v2));
  memset(v1, 0, sizeof(v1));
  result = SettingsNativeApiClient.__allocating_init(aceServiceInvoker:aceServiceInvokerAsync:)(v2, v1);
  qword_280FE6EF8 = result;
  return result;
}

uint64_t static SettingsNativeApiClient.shared.getter()
{
  v1 = *sub_268D35434();

  return v1;
}

uint64_t sub_268D355CC()
{
  v1 = objc_opt_self();
  sub_268CDD000();
  v2 = sub_268F9B2C4();
  [v1 setSharedInstanceQueue_];
  return MEMORY[0x277D82BD8](v2);
}

uint64_t sub_268D35638()
{
  if (qword_280FE6F08 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_268D356AC()
{
  result = sub_268F9AEF4();
  qword_2802DC308 = result;
  qword_2802DC310 = v1;
  return result;
}

uint64_t *sub_268D356F0()
{
  if (qword_2802DAF70 != -1)
  {
    swift_once();
  }

  return &qword_2802DC308;
}

uint64_t sub_268D35750()
{
  v0 = sub_268D356F0();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268D3578C()
{
  result = sub_268F9AEF4();
  qword_2802DC318 = result;
  qword_2802DC320 = v1;
  return result;
}

uint64_t *sub_268D357D0()
{
  if (qword_2802DAF78 != -1)
  {
    swift_once();
  }

  return &qword_2802DC318;
}

uint64_t sub_268D35830()
{
  v0 = sub_268D357D0();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268D358CC()
{
  swift_beginAccess();
  v4 = *(v0 + 96);
  swift_endAccess();
  if (v4 == 2)
  {
    swift_beginAccess();
    *(v3 + 96) = 1;
    swift_endAccess();
    v2 = 1;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

uint64_t sub_268D35994(char a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
  return swift_endAccess();
}

uint64_t (*sub_268D359FC(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_268D358CC() & 1;
  return sub_268D35A60;
}

uint64_t sub_268D35AC0()
{
  swift_beginAccess();
  v4 = *(v0 + 97);
  swift_endAccess();
  if (v4 == 2)
  {
    swift_beginAccess();
    *(v3 + 97) = 0;
    swift_endAccess();
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

uint64_t sub_268D35B84(char a1)
{
  swift_beginAccess();
  *(v1 + 97) = a1;
  return swift_endAccess();
}

uint64_t (*sub_268D35BEC(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_268D35AC0() & 1;
  return sub_268D35C50;
}

uint64_t SettingsNativeApiClient.init(aceServiceInvoker:aceServiceInvokerAsync:)(uint64_t *a1, uint64_t *a2)
{
  v11 = a1;
  v10 = a2;
  v9 = v2;
  v2[96] = 2;
  v2[97] = 2;
  sub_268D35D60(a1, v8);
  memcpy(v2 + 16, v8, 0x28uLL);
  sub_268D35D60(a2, v7);
  memcpy(v2 + 56, v7, 0x28uLL);
  sub_268D35638();
  sub_268D28414(a2);
  sub_268D28414(a1);
  return v6;
}

void *sub_268D35D60(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

BOOL sub_268D35DF4(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_268D360B4()
{
  v2 = qword_2802DC328;
  if (!qword_2802DC328)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC328);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D3618C(void (*a1)(void))
{

  a1(0);
}

uint64_t sub_268D36220()
{
  sub_268F9A764();
  if (sub_268F9A744())
  {
    sub_268F9A734();

    v2 = sub_268F9AB64();

    v3 = v2 & 1;
  }

  else
  {
    v3 = 2;
  }

  if (v3 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = v3;
  }

  return v1 & 1;
}

double sub_268D36314(char a1)
{
  sub_268D3638C();
  v3 = sub_268CF0C44();
  [v3 setEnabled_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

unint64_t sub_268D3638C()
{
  v2 = qword_2802DC330;
  if (!qword_2802DC330)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC330);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268D363F0()
{
  v7 = *MEMORY[0x277D85DE8];
  memset(__b, 0, sizeof(__b));
  sub_268D3638C();
  v2 = sub_268CF0C44();
  memset(v5, 0, sizeof(v5));
  memcpy(__dst, v5, sizeof(__dst));
  memcpy(v6, __dst, sizeof(v6));
  memcpy(__b, v6, sizeof(__b));
  [v2 getBlueLightStatus_];
  v1 = __b[1];
  MEMORY[0x277D82BD8](v2);
  *MEMORY[0x277D85DE8];
  return v1 & 1;
}

uint64_t sub_268D36508()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

void *sub_268D367F8(const void *a1, void *a2)
{
  v6 = sub_268F99144();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D369F4()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D36E0C()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D371CC()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D37544()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D37870()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D37B60()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D37E50()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D38140()
{
  sub_268D383B8();
  v13 = sub_268CF0C44();
  v14 = [v13 serviceCurrentRadioAccessTechnology];
  if (v14)
  {
    v11 = sub_268F9AD84();
    MEMORY[0x277D82BD8](v14);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v0 = MEMORY[0x26D62DA00]();
  if (v0)
  {

LABEL_10:
    MEMORY[0x277D82BD8](v13);
    v10 = 0;
    return v10 & 1;
  }

  sub_268F9B284();
  v1 = sub_268DC7D88();
  v9 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v8 = v2;
  v5 = MEMORY[0x277D837D0];
  v6 = sub_268F9AD94();
  v7 = v3;
  v8[3] = v5;
  v8[4] = sub_268CDD224();
  *v8 = v6;
  v8[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v13);
  v10 = 1;
  return v10 & 1;
}

unint64_t sub_268D383B8()
{
  v2 = qword_2802DC338;
  if (!qword_2802DC338)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC338);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268D3841C()
{
  v38 = *MEMORY[0x277D85DE8];
  v34[2] = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30[0] = 0;
  v30[1] = 0;
  sub_268D38A5C();
  sub_268CDD000();
  v0 = sub_268F9B2C4();
  v27 = sub_268D38AC0(v0);
  v34[1] = v27;
  v37 = 0;
  v34[0] = 0;
  v29 = [v27 getSubscriptionInfoWithError_];
  v28 = v34[0];
  MEMORY[0x277D82BE0](v34[0]);
  v1 = v37;
  v37 = v28;
  MEMORY[0x277D82BD8](v1);
  if (v29)
  {
    v32 = v29;
    v26 = [v29 subscriptions];
    if (v26)
    {
      sub_268D38B88();
      v24 = sub_268F9B014();
      MEMORY[0x277D82BD8](v26);
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      v31 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC348, &qword_268F9E288);
      sub_268D38B00();
      sub_268F9B254();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC358, &unk_268F9E290);
        sub_268F9B564();
        v23 = v36;
        if (!v36)
        {
          break;
        }

        v21 = v36;
        v22 = [v36 phoneNumber];
        if (v22)
        {
          v17 = sub_268F9AE24();
          v18 = v2;
          MEMORY[0x277D82BD8](v22);
          v19 = v17;
          v20 = v18;
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }

        v35[0] = v19;
        v35[1] = v20;
        sub_268CD9D30(v35);
        if (v20)
        {
          MEMORY[0x277D82BD8](v21);
          sub_268CD7930(v30);

          MEMORY[0x277D82BD8](v29);
          MEMORY[0x277D82BD8](v27);
          v16 = 1;
          goto LABEL_16;
        }

        MEMORY[0x277D82BD8](v23);
      }

      sub_268CD7930(v30);

      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v27);
      v16 = 0;
    }

    else
    {
      sub_268F9B294();
      v3 = sub_268DC7D88();
      v15 = *v3;
      MEMORY[0x277D82BE0](*v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v27);
      v16 = 0;
    }
  }

  else
  {
    v9 = v37;
    v14 = sub_268F990F4();
    MEMORY[0x277D82BD8](v9);
    swift_willThrow();
    v5 = v14;
    v33 = v14;
    sub_268F9B294();
    v6 = sub_268DC7D88();
    v13 = *v6;
    MEMORY[0x277D82BE0](*v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v12 = v7;
    swift_getErrorValue();
    sub_268F9B7C4();
    v10 = sub_268F9AEC4();
    v11 = v8;
    v12[3] = MEMORY[0x277D837D0];
    v12[4] = sub_268CDD224();
    *v12 = v10;
    v12[1] = v11;

    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v13);

    MEMORY[0x277D82BD8](v27);
    v16 = 0;
  }

LABEL_16:
  *MEMORY[0x277D85DE8];
  return v16 & 1;
}

unint64_t sub_268D38A5C()
{
  v2 = qword_2802DC340;
  if (!qword_2802DC340)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC340);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D38B00()
{
  v2 = qword_2802DC350;
  if (!qword_2802DC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC348, &qword_268F9E288);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D38B88()
{
  v2 = qword_2802DC360;
  if (!qword_2802DC360)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC360);
    return ObjCClassMetadata;
  }

  return v2;
}

const void *sub_268D38BEC(const void *a1)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    sub_268F9B584();
    __break(1u);
  }

  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](v4);
  v3 = CFGetTypeID(v4);
  swift_unknownObjectRelease();
  if (v3 == CFStringGetTypeID())
  {
    return v4;
  }

  MEMORY[0x277D82BD8](v4);
  return 0;
}

uint64_t sub_268D38D64()
{
  v2 = [objc_opt_self() isEnabled];

  if (v2)
  {
    v1 = sub_268D36960() ^ 1;
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t sub_268D38E00()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D391DC()
{
  v1 = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  WiFiManagerClientCreate();
  MEMORY[0x277D82BD8](v1);
  sub_268F9AEF4();
  v2 = sub_268F9AE14();
  WiFiManagerClientSetInCarState();
  MEMORY[0x277D82BD8](v2);
}

uint64_t sub_268D39294()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D395C4()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D39948()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D39C38()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D39F28()
{
  result = BKSDisplayBrightnessIsBrightnessLevelControlAvailable();
  if (result)
  {
    return BKSDisplayBrightnessSetAutoBrightnessEnabled();
  }

  return result;
}

id sub_268D3A018()
{
  [objc_opt_self() beginBrightnessAdjustmentTransaction];
  v1 = objc_opt_self();
  [v1 setValue_];
  return [objc_opt_self() endBrightnessAdjustmentTransaction];
}

uint64_t sub_268D3A0B4()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

uint64_t sub_268D3A3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __dst[6] = 0;
  __dst[9] = a1;
  __dst[10] = a2;
  __dst[7] = a3;
  __dst[8] = a4;
  sub_268D3A570();
  v9 = sub_268CF0C44();
  __dst[5] = v9;

  v10 = sub_268F9AE14();

  [v9 setSettingKey_];
  MEMORY[0x277D82BD8](v10);
  sub_268D35D60((v8 + 16), v11);
  if (v12)
  {
    sub_268CDF978(v11, __dst);
  }

  else
  {
    sub_268F99764();
    if (v12)
    {
      sub_268D28414(v11);
    }
  }

  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);

  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  sub_268D353D0();
  sub_268F99A24();

  __swift_destroy_boxed_opaque_existential_0(__dst);
  return MEMORY[0x277D82BD8](v9);
}

unint64_t sub_268D3A570()
{
  v2 = qword_2802DC368;
  if (!qword_2802DC368)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC368);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_268D3A5D4(void *a1, void (*a2)(id), uint64_t a3)
{
  v114 = a1;
  v112 = a2;
  v113 = a3;
  v100 = "Failed to read float setting.";
  v101 = "Setting (%@) read successfully: %@.";
  v102 = "Reading setting failed: %@";
  v103 = "Exception while getting response: %@";
  v133 = 0;
  v131 = 0;
  v132 = 0;
  v104 = 0;
  v129 = 0;
  v127 = 0;
  v125 = 0;
  v124 = 0;
  v105 = sub_268F99A44();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105);
  v109 = &v48 - v108;
  v110 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v48 - v108);
  v111 = &v48 - v110;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  v116 = *(*(v119 - 1) + 64);
  v115 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v114);
  v117 = &v48 - v115;
  v118 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v120 = (&v48 - v118);
  v133 = v5;
  v131 = v6;
  v132 = v7;
  sub_268D570CC(v5, (&v48 - v118));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v106 + 8))(v120, v105);
    v97 = sub_268F9B284();
    v99 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v98 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v99);
    return;
  }

  v8 = v104;
  v9 = v117;
  sub_268D571A8(v120);
  sub_268D570CC(v114, v9);
  sub_268D2DFAC(v119, v111, &v130);
  if (v8)
  {
    v49 = *(v106 + 32);
    v48 = v106 + 32;
    v49(v109, v111, v105);
    sub_268D5724C();
    v59 = swift_allocError();
    v49(v37, v109, v105);
    v38 = v59;
    v129 = v59;
    v56 = sub_268F9B284();
    v58 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v58);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v55 = sub_268F9B734();
    v53 = v39;
    v40 = v59;
    v50 = &v128;
    v128 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v51 = sub_268F9AE64();
    v52 = v41;
    v53[3] = MEMORY[0x277D837D0];
    v42 = sub_268CDD224();
    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v42;
    v47 = v55;
    v53[4] = v46;
    *v45 = v43;
    v45[1] = v44;
    sub_268CD0F7C();
    v57 = v47;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v58);
  }

  else
  {
    v95 = v130;
    v127 = v130;
    MEMORY[0x277D82BE0](v130);
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v96 = v10;
    if (v10)
    {
      v94 = v96;
    }

    else
    {
      MEMORY[0x277D82BD8](v95);
      v94 = 0;
    }

    v93 = v94;
    if (v94)
    {
      v92 = v93;
      v90 = v93;
      v125 = v93;
      MEMORY[0x277D82BE0](v93);
      v91 = [v90 setting];
      MEMORY[0x277D82BD8](v90);
      if (v91)
      {
        v89 = v91;
        v86 = v91;
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        v87 = v11;
        if (v11)
        {
          v85 = v87;
        }

        else
        {
          MEMORY[0x277D82BD8](v86);
          v85 = 0;
        }

        v88 = v85;
      }

      else
      {
        v88 = 0;
      }

      v84 = v88;
      if (v88)
      {
        v83 = v84;
        v82 = v84;
        v124 = v84;
        v78 = sub_268F9B284();
        v80 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v80);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v76 = sub_268F9B734();
        v75 = v12;
        v70 = *MEMORY[0x277D48950];
        MEMORY[0x277D82BE0](v70);
        v122 = sub_268F9AE24();
        v123 = v13;
        v73 = MEMORY[0x277D837D0];
        v71 = sub_268F9AE84();
        v72 = v14;
        MEMORY[0x277D82BD8](v70);
        v75[3] = v73;
        v15 = sub_268CDD224();
        v16 = v71;
        v17 = v72;
        v18 = v75;
        v19 = v15;
        v20 = v82;
        v74 = v19;
        v75[4] = v19;
        *v18 = v16;
        v18[1] = v17;
        v81 = 0x1FAF97000uLL;
        [v20 0x1FAF97178];
        v121 = v21;
        v22 = sub_268F9AE84();
        v23 = v74;
        v24 = v75;
        v25 = v22;
        v26 = v76;
        v75[8] = v73;
        v24[9] = v23;
        v24[5] = v25;
        v24[6] = v27;
        sub_268CD0F7C();
        v79 = v26;
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v80);

        v28 = [v82 (v81 + 376)];
        v112(v28);

        MEMORY[0x277D82BD8](v82);
        MEMORY[0x277D82BD8](v90);
        MEMORY[0x277D82BD8](v95);
        return;
      }

      MEMORY[0x277D82BD8](v90);
    }

    v67 = sub_268F9B284();
    v69 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v69);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v66 = sub_268F9B734();
    v64 = v29;
    MEMORY[0x277D82BE0](v95);
    v61 = &v126;
    v126 = v95;
    v60 = sub_268D353D0();
    sub_268D55698();
    v62 = sub_268F9AE74();
    v63 = v30;
    v64[3] = MEMORY[0x277D837D0];
    v31 = sub_268CDD224();
    v32 = v62;
    v33 = v63;
    v34 = v64;
    v35 = v31;
    v36 = v66;
    v64[4] = v35;
    *v34 = v32;
    v34[1] = v33;
    sub_268CD0F7C();
    v68 = v36;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v95);
  }
}

uint64_t sub_268D3B1B0(uint64_t a1, uint64_t a2, float a3)
{
  __dst[6] = 0;
  v13 = a1;
  v14 = a2;
  v12 = a3;
  sub_268D3B3E0();
  v8 = sub_268CF0C44();
  __dst[5] = v8;

  v6 = sub_268F9AE14();

  [v8 setSettingKey_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v8);
  [v8 setDryRun_];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BE0](v8);
  [v8 setFailOnSiriDisconnectWarnings_];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BE0](v8);
  *&v3 = a3;
  [v8 setValue_];
  MEMORY[0x277D82BD8](v8);
  sub_268D35D60((v5 + 16), v9);
  if (v10)
  {
    sub_268CDF978(v9, __dst);
  }

  else
  {
    sub_268F99764();
    if (v10)
    {
      sub_268D28414(v9);
    }
  }

  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  sub_268D353D0();
  sub_268F99A24();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  return MEMORY[0x277D82BD8](v8);
}

unint64_t sub_268D3B3E0()
{
  v2 = qword_2802DC370;
  if (!qword_2802DC370)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC370);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_268D3B444(void *a1)
{
  v73 = a1;
  v61 = "Failed to set float setting.";
  v62 = "Setting set successfully.";
  v63 = "Setting setting failed with wrong type: %@";
  v64 = "Exception while getting response: %@";
  v85 = 0;
  v65 = 0;
  v83 = 0;
  v81 = 0;
  v79 = 0;
  v66 = sub_268F99A44();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66);
  v70 = v27 - v69;
  v71 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27 - v69);
  v72 = v27 - v71;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  v74 = (*(*(v77 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v73);
  v75 = v27 - v74;
  v76 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v78 = (v27 - v76);
  v85 = v4;
  sub_268D570CC(v4, (v27 - v76));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v67 + 8))(v78, v66);
    v58 = sub_268F9B284();
    v60 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v59 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v60);
  }

  else
  {
    v5 = v65;
    v6 = v75;
    sub_268D571A8(v78);
    sub_268D570CC(v73, v6);
    sub_268D2DFAC(v77, v72, &v84);
    if (v5)
    {
      v28 = *(v67 + 32);
      v27[1] = v67 + 32;
      v28(v70, v72, v66);
      sub_268D5724C();
      v38 = swift_allocError();
      v28(v16, v70, v66);
      v17 = v38;
      v83 = v38;
      v35 = sub_268F9B284();
      v37 = *sub_268DC7AE8();
      MEMORY[0x277D82BE0](v37);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v34 = sub_268F9B734();
      v32 = v18;
      v19 = v38;
      v29 = &v82;
      v82 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
      v30 = sub_268F9AE64();
      v31 = v20;
      v32[3] = MEMORY[0x277D837D0];
      v21 = sub_268CDD224();
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v25 = v21;
      v26 = v34;
      v32[4] = v25;
      *v24 = v22;
      v24[1] = v23;
      sub_268CD0F7C();
      v36 = v26;
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v37);
    }

    else
    {
      v56 = v84;
      v81 = v84;
      MEMORY[0x277D82BE0](v84);
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      v57 = v7;
      if (v7)
      {
        v55 = v57;
      }

      else
      {
        MEMORY[0x277D82BD8](v56);
        v55 = 0;
      }

      v54 = v55;
      if (v55)
      {
        v53 = v54;
        v52 = v54;
        v79 = v54;
        v49 = sub_268F9B284();
        v51 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v50 = sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v51);
        MEMORY[0x277D82BD8](v52);
      }

      else
      {
        v46 = sub_268F9B284();
        v48 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v48);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v45 = sub_268F9B734();
        v43 = v8;
        MEMORY[0x277D82BE0](v56);
        v40 = &v80;
        v80 = v56;
        v39 = sub_268D353D0();
        sub_268D55698();
        v41 = sub_268F9AE74();
        v42 = v9;
        v43[3] = MEMORY[0x277D837D0];
        v10 = sub_268CDD224();
        v11 = v41;
        v12 = v42;
        v13 = v43;
        v14 = v10;
        v15 = v45;
        v43[4] = v14;
        *v13 = v11;
        v13[1] = v12;
        sub_268CD0F7C();
        v47 = v15;
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v48);
      }

      MEMORY[0x277D82BD8](v56);
    }
  }
}

float sub_268D3BC60()
{
  v47[10] = *MEMORY[0x277D85DE8];
  v30 = 0;
  v29 = 0.0;
  type metadata accessor for NativeApiClientUtils();
  sub_268E69624(v40);
  v21 = v41;
  v28 = v42;
  v22 = v43;
  v27 = v44;
  v25 = v46;
  v47[0] = v40[0];
  v47[1] = v40[1];
  v47[2] = v40[2];
  v47[3] = v40[3];
  v47[4] = v41;
  v47[5] = v42;
  v47[6] = v43;
  v47[7] = v44;
  v47[8] = v45;
  v47[9] = v46;
  sub_268D3C3AC();
  v23 = sub_268CF0C44();
  sub_268D3C410(v47, v39);
  v24 = sub_268F9AE14();

  sub_268D3C410(v47, v38);
  v26 = sub_268F9AE14();

  sub_268D3C410(v47, v37);
  if (v28)
  {
    v19 = sub_268F9AE14();

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  sub_268D3C410(v47, v36);
  if (v27)
  {
    v17 = sub_268F9AE14();

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  sub_268D3C410(v47, v35);
  if (v25)
  {
    v15 = sub_268F9AE14();

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v14 = [v23 getVolume:&v29 category:v24 mode:v26 route:v20 deviceIdentifier:v18 routeSubtype:v16];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v23);
  if (v14 == sub_268F9AD04())
  {
    sub_268F9B274();
    v0 = sub_268DC7AE8();
    v11 = *v0;
    MEMORY[0x277D82BE0](*v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v12 = v1;
    sub_268D3C410(v47, v34);
    *&v33 = v21;
    *(&v33 + 1) = v28;
    *(v12 + 24) = MEMORY[0x277D837D0];
    v13 = sub_268CDD224();
    *(v12 + 32) = v13;
    if (*(&v33 + 1))
    {
      *v12 = v33;
    }

    else
    {
      *v12 = sub_268F9AEF4();
      *(v12 + 8) = v2;
      if (*(&v33 + 1))
      {
        sub_268CD9D30(&v33);
      }
    }

    sub_268D3C410(v47, v32);
    *&v31 = v22;
    *(&v31 + 1) = v27;
    *(v12 + 64) = MEMORY[0x277D837D0];
    *(v12 + 72) = v13;
    if (*(&v31 + 1))
    {
      *(v12 + 40) = v31;
    }

    else
    {
      *(v12 + 40) = sub_268F9AEF4();
      *(v12 + 48) = v3;
      if (*(&v31 + 1))
      {
        sub_268CD9D30(&v31);
      }
    }

    v4 = v29;
    *(v12 + 104) = MEMORY[0x277D83A90];
    *(v12 + 112) = MEMORY[0x277D83B08];
    *(v12 + 80) = v4;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v11);
    v9 = v29;
    sub_268D3C4E4(v47);
    v10 = v9;
  }

  else
  {
    sub_268F9B294();
    v5 = sub_268DC7AE8();
    v8 = *v5;
    MEMORY[0x277D82BE0](*v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    *(v6 + 24) = MEMORY[0x277D849A8];
    *(v6 + 32) = MEMORY[0x277D84A20];
    *v6 = v14;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v8);
    sub_268D3C4E4(v47);
    v10 = -1.0;
  }

  *MEMORY[0x277D85DE8];
  return v10;
}

unint64_t sub_268D3C3AC()
{
  v2 = qword_2802DC378;
  if (!qword_2802DC378)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC378);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_268D3C410(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];

  a2[3] = v4;
  a2[4] = a1[4];
  v5 = a1[5];

  a2[5] = v5;
  a2[6] = a1[6];
  v7 = a1[7];

  a2[7] = v7;
  a2[8] = a1[8];
  v9 = a1[9];

  result = a2;
  a2[9] = v9;
  return result;
}

void *sub_268D3C4E4(void *a1)
{
  v1 = a1[1];

  v2 = a1[3];

  v3 = a1[5];

  v4 = a1[7];

  v5 = a1[9];

  return a1;
}

void *sub_268D3C540(float a1)
{
  v47 = 0;
  v34 = 0;
  v48 = a1;
  type metadata accessor for NativeApiClientUtils();
  sub_268E69624(v40);
  v22 = v41;
  v29 = v42;
  v23 = v43;
  v28 = v44;
  v26 = v46;
  v49[0] = v40[0];
  v49[1] = v40[1];
  v49[2] = v40[2];
  v49[3] = v40[3];
  v49[4] = v41;
  v49[5] = v42;
  v49[6] = v43;
  v49[7] = v44;
  v49[8] = v45;
  v49[9] = v46;
  sub_268D3C3AC();
  v24 = sub_268CF0C44();
  sub_268D3C410(v49, v39);
  v25 = sub_268F9AE14();

  sub_268D3C410(v49, v38);
  v27 = sub_268F9AE14();

  sub_268D3C410(v49, v37);
  if (v29)
  {
    v19 = sub_268F9AE14();

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  sub_268D3C410(v49, v36);
  if (v28)
  {
    v17 = sub_268F9AE14();

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  sub_268D3C410(v49, v35);
  if (v26)
  {
    v15 = sub_268F9AE14();

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *&v1 = a1;
  LODWORD(v2) = 0;
  v14 = [v24 setVolume:v25 category:v27 mode:v20 route:v18 deviceIdentifier:v16 routeSubtype:v1 rampUpDuration:v2 rampDownDuration:?];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v24);
  v34 = v14;
  if (v14 == sub_268F9AD04())
  {
    sub_268F9B274();
    v3 = sub_268DC7AE8();
    v11 = *v3;
    MEMORY[0x277D82BE0](*v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v12 = v4;
    *(v4 + 24) = MEMORY[0x277D83A90];
    *(v4 + 32) = MEMORY[0x277D83B08];
    *v4 = a1;
    sub_268D3C410(v49, v33);
    *&v32 = v22;
    *(&v32 + 1) = v29;
    *(v12 + 64) = MEMORY[0x277D837D0];
    v13 = sub_268CDD224();
    *(v12 + 72) = v13;
    if (*(&v32 + 1))
    {
      *(v12 + 40) = v32;
    }

    else
    {
      *(v12 + 40) = sub_268F9AEF4();
      *(v12 + 48) = v5;
      if (*(&v32 + 1))
      {
        sub_268CD9D30(&v32);
      }
    }

    sub_268D3C410(v49, v31);
    *&v30 = v23;
    *(&v30 + 1) = v28;
    *(v12 + 104) = MEMORY[0x277D837D0];
    *(v12 + 112) = v13;
    if (*(&v30 + 1))
    {
      *(v12 + 80) = v30;
    }

    else
    {
      *(v12 + 80) = sub_268F9AEF4();
      *(v12 + 88) = v6;
      if (*(&v30 + 1))
      {
        sub_268CD9D30(&v30);
      }
    }

    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v11);
    return sub_268D3C4E4(v49);
  }

  else
  {
    sub_268F9B294();
    v8 = sub_268DC7AE8();
    v10 = *v8;
    MEMORY[0x277D82BE0](*v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    *(v9 + 24) = MEMORY[0x277D849A8];
    *(v9 + 32) = MEMORY[0x277D84A20];
    *v9 = v14;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v10);
    return sub_268D3C4E4(v49);
  }
}

uint64_t sub_268D3CC50()
{
  v4 = [objc_opt_self() sharedConnection];
  if (v4)
  {
    v2 = [v4 isLockScreenControlCenterAllowed];
    MEMORY[0x277D82BD8](v4);
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (v3 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = v3;
  }

  return v1 & 1;
}

uint64_t sub_268D3CD44()
{
  v4 = [objc_opt_self() sharedConnection];
  if (v4)
  {
    v2 = [v4 isWiFiPowerModificationAllowed];
    MEMORY[0x277D82BD8](v4);
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (v3 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = v3;
  }

  return v1 & 1;
}

uint64_t *sub_268D3CE38(char *a1, void (*a2)(void), uint64_t a3)
{
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v14 = *a1;
  v20 = v14;
  v18 = a2;
  v19 = a3;
  v16[2] = v14;
  if (sub_268E7C304())
  {
    type metadata accessor for NativeApiClientUtils();
    v16[0] = v14;
    sub_268D35D60((v13 + 16), v15);
    sub_268E6A218(v16, v15, a2, a3);
    return sub_268D28414(v15);
  }

  else
  {
    sub_268F9B284();
    v4 = sub_268DC7AE8();
    v10 = *v4;
    MEMORY[0x277D82BE0](*v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v9 = v5;
    v7 = BinarySettingIdentifier.rawValue.getter();
    v8 = v6;
    v9[3] = MEMORY[0x277D837D0];
    v9[4] = sub_268CDD224();
    *v9 = v7;
    v9[1] = v8;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v10);

    a2(2);
  }
}

uint64_t sub_268D3D01C(unsigned __int8 *a1)
{
  v5 = *a1;
  sub_268F9B284();
  v1 = sub_268DC7AE8();
  v9 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v8 = v2;
  v6 = BinarySettingIdentifier.rawValue.getter();
  v7 = v3;
  v8[3] = MEMORY[0x277D837D0];
  v8[4] = sub_268CDD224();
  *v8 = v6;
  v8[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC14();

  return MEMORY[0x277D82BD8](v9);
}

uint64_t sub_268D3D164()
{
  v22 = 0;
  v12 = sub_268F99144();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v5 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = &v5 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v17);
  v20 = &v5 - v19;
  v22 = v0;
  v21 = [objc_opt_self() preferencesURL];
  if (v21)
  {
    v11 = v21;
    v10 = v21;
    sub_268F99124();
    (*(v13 + 32))(v18, v16, v12);
    (*(v13 + 56))(v18, 0, 1, v12);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  sub_268D367F8(v18, v20);
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    sub_268CDC480(v20);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = sub_268F99104();
    v7 = v3;
    (*(v13 + 8))(v20, v12);
    v8 = v6;
    v9 = v7;
  }

  return v8;
}

void sub_268D3D470(int a1)
{
  v16 = a1;
  v23 = 0;
  v18 = 0;
  v24 = a1;
  v17 = [objc_opt_self() sharedInstance];
  if (v17)
  {
    v14 = v17;
    v13 = v17;
    v18 = v17;
    if ([v17 available])
    {
      [v13 setEnabled_];
      sub_268D35994(0);

      return;
    }
  }

  v5 = sub_268F9B284();
  v7 = *sub_268DC7AE8();
  v1 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v10 = 0;
  v6 = sub_268F9B734();
  sub_268F9AC14();

  v8 = [objc_opt_self() defaultCenter];

  v9 = sel_bluetoothManagerAvailabilityChanged;
  v11 = *MEMORY[0x277CF3168];
  v2 = v11;
  v12 = v11;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v4 = 0;
  v3 = 0;
  [v8 addObserver:v15 selector:sel_bluetoothManagerAvailabilityChanged name:v11 object:?];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_268D35994(1);
}

void sub_268D3D7A8()
{
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v18 = [objc_opt_self() sharedInstance];
  if (v18)
  {
    v16 = v18;
    v14 = v18;
    v24 = v18;
    v15 = [v18 available];

    if (v15)
    {
      v13 = sub_268D358CC();
    }

    else
    {
      v13 = 0;
    }

    v12 = v13;

    if (v13)
    {
      v5 = sub_268F9B284();
      v7 = *sub_268DC7AE8();
      v0 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v9 = 0;
      v6 = sub_268F9B734();
      sub_268F9AC14();

      v1 = [v14 enabled];
      v23 = v1;
      [v14 setEnabled_];
      sub_268D35994(0);
      v8 = [objc_opt_self() defaultCenter];

      v10 = *MEMORY[0x277CF3168];
      v2 = v10;
      v11 = v10;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v4 = 0;
      v3 = 0;
      [v8 removeObserver:v17 name:v10 object:?];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_268D3DD54(uint64_t a1, char a2)
{
  v5 = *sub_268F849D8();

  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  v3 = sub_268F85234(v4);

  return v3 & 1;
}

uint64_t sub_268D3DE34()
{
  type metadata accessor for SettingsNativeApiClient.SettingsFlashlight();
  if ([objc_opt_self() hasFlashlight])
  {
    sub_268D54AA8();
    v1 = sub_268CF0C44();
  }

  else
  {
    v1 = 0;
  }

  return sub_268D3DEC0(v1);
}

uint64_t sub_268D3DF0C()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0]();
  return v2;
}

uint64_t sub_268D3DF40(uint64_t a1)
{
  MEMORY[0x277D82BE0]();
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_268D3DFD8()
{
  v5 = *(v0 + 16);
  MEMORY[0x277D82BE0](v5);
  if (v5)
  {
    v3 = [v5 isOverheated];
    MEMORY[0x277D82BD8](v5);
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (v4 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

uint64_t sub_268D3E0C4()
{
  v5 = *(v0 + 16);
  MEMORY[0x277D82BE0](v5);
  if (v5)
  {
    v3 = [v5 isAvailable];
    MEMORY[0x277D82BD8](v5);
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (v4 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

float sub_268D3E1B0()
{
  v7 = *(v0 + 16);
  MEMORY[0x277D82BE0](v7);
  if (v7)
  {
    [v7 flashlightLevel];
    v4 = v1;
    MEMORY[0x277D82BD8](v7);
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v5 = 0.0;
    v6 = 1;
  }

  if (v6)
  {
    return 0.0;
  }

  else
  {
    return v5;
  }
}

id sub_268D3E2B0()
{
  v0 = AFGetFlashlightLevel();

  return v0;
}

uint64_t sub_268D3E2EC(float a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = v1;
  v14 = 0;
  v10 = *(v1 + 16);
  MEMORY[0x277D82BE0](v10);
  if (!v10)
  {
    result = &v14;
    sub_268D35038(&v14);
    goto LABEL_3;
  }

  *&v2 = a1;
  v11 = v14;
  v8 = [v10 setFlashlightLevel:&v11 withError:v2];
  v7 = v11;
  MEMORY[0x277D82BE0](v11);
  v3 = v14;
  v14 = v7;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v10);
  result = v8;
  if (v8)
  {
LABEL_3:
    v5 = __OFSUB__(*MEMORY[0x277D85DE8], v15);
    return result;
  }

  v6 = v14;
  sub_268F990F4();
  MEMORY[0x277D82BD8](v6);
  result = swift_willThrow();
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268D3EDF4()
{
  _AXSMotionCuesMode();
  type metadata accessor for AXSMotionCuesMode();
  sub_268D54B0C();
  return sub_268F9B754() & 1;
}

BOOL sub_268D3EFDC(char a1)
{
  if (a1)
  {
    return _AXSCommandAndControlCarPlayEnabled() != 0;
  }

  else
  {
    return _AXSCommandAndControlEnabled() != 0;
  }
}

uint64_t sub_268D3F048(uint64_t a1, char a2)
{
  if (a2)
  {
    return _AXSCommandAndControlCarPlaySetEnabled();
  }

  else
  {
    return _AXSCommandAndControlSetEnabled();
  }
}

uint64_t sub_268D3F1D4()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 callAudioRoutingAutoAnswerEnabled];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

double sub_268D3F244(char a1)
{
  v3 = [objc_opt_self() sharedInstance];
  [v3 setCallAudioRoutingAutoAnswerEnabled_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_268D3F344(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v72 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  v60 = "Searching for all notification sources (apps)";
  v61 = "Successfully mutated announce notification setting for app.";
  v62 = "Could not obtain a mutable copy of notification settings object.";
  v63 = "Disabling announce notifications for app temporarily";
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  memset(__b, 0, sizeof(__b));
  v82 = 0;
  v79 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0);
  v64 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v78 = v18 - v64;
  v77 = sub_268F99214();
  v74 = *(v77 - 8);
  v75 = v77 - 8;
  v69 = *(v74 + 64);
  v68 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v70 = v18 - v68;
  v71 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v73 = v18 - v71;
  v91 = v18 - v71;
  v89 = v72;
  v90 = v7;
  v76 = 1;
  v88 = v8 & 1;
  v87 = v9;
  v86 = v4;
  sub_268D54B8C(v9, v10);
  if ((*(v74 + 48))(v78, v76, v77) == 1)
  {
    sub_268D54CB4(v78);
  }

  else
  {
    (*(v74 + 32))(v73, v78, v77);
    if ((v66 & 1) == 0)
    {
      v11 = v70;
      v52 = sub_268F9B284();
      v54 = *sub_268DC7AE8();
      MEMORY[0x277D82BE0](v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v53 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v54);
      v57 = [objc_opt_self() sharedPreferences];

      v56 = sub_268F9AE14();

      (*(v74 + 16))(v11, v73, v77);
      v55 = sub_268F991D4();
      v59 = *(v74 + 8);
      v58 = v74 + 8;
      v59(v70, v77);
      [v57 setSpokenNotificationTemporarilyDisabledForApp:v56 until:v55];
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v56);
      v12 = MEMORY[0x277D82BD8](v57);
      (v59)(v73, v77, v12);
      return result;
    }

    (*(v74 + 8))(v73, v77);
  }

  v47 = [objc_opt_self() currentNotificationSettingsCenter];
  v85 = v47;
  v50 = [v47 allNotificationSources];
  v48 = sub_268D54D5C();
  v49 = sub_268D54DC0();
  sub_268F9B184();
  v51 = &v92;
  sub_268F9B1A4();
  MEMORY[0x277D82BD8](v50);
  memcpy(__b, v51, sizeof(__b));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC3A8, &qword_268F9E2A0);
    sub_268F9B1B4();
    v46 = v83;
    if (!v83)
    {
      sub_268D54E40(__b);
      *&result = MEMORY[0x277D82BD8](v47).n128_u64[0];
      return result;
    }

    v45 = v46;
    v42 = v46;
    v82 = v46;
    v41 = [v46 sourceIdentifier];
    v14 = sub_268F9AE24();
    v40 = v15;
    v43 = MEMORY[0x26D62DB50](v14);

    MEMORY[0x277D82BD8](v41);
    v44 = v42;
    if (v43)
    {
      break;
    }

    MEMORY[0x277D82BD8](v42);
  }

  v34 = v44;
  v31 = sub_268F9B284();
  v33 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v33);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v38 = 0;
  v32 = sub_268F9B734();
  sub_268F9AC14();

  *&v16 = MEMORY[0x277D82BD8](v33).n128_u64[0];
  v35 = [v34 sourceSettings];
  v36 = [v35 notificationSettings];
  *&v17 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  v37 = [v36 mutableCopy];
  MEMORY[0x277D82BD8](v36);
  v39 = &v81;
  sub_268F9B404();
  sub_268D54EC4();
  if (swift_dynamicCast())
  {
    v29 = v80;
  }

  else
  {
    v29 = 0;
  }

  v28 = v29;
  if (v29)
  {
    v27 = v28;
    v26 = v28;
    v79 = v28;
    swift_unknownObjectRelease();
    if (v66)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    [v26 setAnnouncementSetting_];

    v21 = sub_268F9AE14();

    [v47 replaceNotificationSettings:v26 forNotificationSourceIdentifier:v21];
    MEMORY[0x277D82BD8](v21);
    v22 = sub_268F9B284();
    v24 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v24);
    v23 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v34);
    sub_268D54E40(__b);
    *&result = MEMORY[0x277D82BD8](v47).n128_u64[0];
  }

  else
  {
    swift_unknownObjectRelease();
    v18[1] = sub_268F9B284();
    v20 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v20);
    v19 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v34);
    sub_268D54E40(__b);
    *&result = MEMORY[0x277D82BD8](v47).n128_u64[0];
  }

  return result;
}

uint64_t sub_268D3FEE8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  memset(__b, 0, sizeof(__b));
  v32 = a1;
  v33 = a2;
  v30 = a3;
  v31 = a4;
  v29 = v4;
  v25 = [objc_opt_self() currentNotificationSettingsCenter];
  v26 = [v25 allNotificationSources];
  MEMORY[0x277D82BD8](v25);
  sub_268D54D5C();
  sub_268D54DC0();
  sub_268F9B184();
  sub_268F9B1A4();
  MEMORY[0x277D82BD8](v26);
  memcpy(__b, v34, sizeof(__b));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC3A8, &qword_268F9E2A0);
    sub_268F9B1B4();
    if (!v27)
    {
      break;
    }

    v19 = [v27 sourceIdentifier];
    v5 = sub_268F9AE24();
    v20 = MEMORY[0x26D62DB50](v5);

    MEMORY[0x277D82BD8](v19);
    if (v20)
    {
      sub_268F9B284();
      v6 = sub_268DC7AE8();
      v16 = *v6;
      MEMORY[0x277D82BE0](*v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v15 = v7;
      v11 = [v27 0x1FB7FFAC5];
      v12 = [v11 0x1FA9640DCLL];
      MEMORY[0x277D82BD8](v11);
      [v12 0x1FABE8DF8];
      MEMORY[0x277D82BD8](v12);
      sub_268CD4334();
      v13 = sub_268F9AE74();
      v14 = v8;
      v15[3] = MEMORY[0x277D837D0];
      v15[4] = sub_268CDD224();
      *v15 = v13;
      v15[1] = v14;
      sub_268CD0F7C();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v16);

      v17 = [v27 0x1FB7FFAC5];
      v18 = [v17 0x1FA9640DCLL];
      MEMORY[0x277D82BD8](v17);
      [v18 0x1FABE8DF8];
      MEMORY[0x277D82BD8](v18);
      type metadata accessor for UNNotificationSetting();
      sub_268D54F28();
      v9 = sub_268F9B754();
      a3(v9 & 1);
    }

    (MEMORY[0x277D82BD8])();
  }

  sub_268D54E40(__b);

  a3(0);
}

uint64_t sub_268D40380(uint64_t a1, uint64_t a2)
{
  memset(__b, 0, sizeof(__b));
  v27 = a1;
  v28 = a2;
  v26 = v2;
  v22 = [objc_opt_self() currentNotificationSettingsCenter];
  v23 = [v22 allNotificationSources];
  MEMORY[0x277D82BD8](v22);
  sub_268D54D5C();
  sub_268D54DC0();
  sub_268F9B184();
  sub_268F9B1A4();
  MEMORY[0x277D82BD8](v23);
  memcpy(__b, v29, sizeof(__b));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC3A8, &qword_268F9E2A0);
    sub_268F9B1B4();
    if (!v24)
    {
      break;
    }

    v18 = [v24 sourceIdentifier];
    v3 = sub_268F9AE24();
    v19 = MEMORY[0x26D62DB50](v3);

    MEMORY[0x277D82BD8](v18);
    if (v19)
    {
      sub_268F9B284();
      v4 = sub_268DC7AE8();
      v13 = *v4;
      MEMORY[0x277D82BE0](*v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v12 = v5;
      v8 = [v24 0x1FB7FFAC5];
      v9 = [v8 0x1FA9640DCLL];
      MEMORY[0x277D82BD8](v8);
      [v9 0x1FABE8DF8];
      MEMORY[0x277D82BD8](v9);
      sub_268CD4334();
      v10 = sub_268F9AE74();
      v11 = v6;
      v12[3] = MEMORY[0x277D837D0];
      v12[4] = sub_268CDD224();
      *v12 = v10;
      v12[1] = v11;
      sub_268CD0F7C();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v13);
      v14 = [v24 0x1FB7FFAC5];
      v15 = [v14 0x1FA9640DCLL];
      MEMORY[0x277D82BD8](v14);
      [v15 0x1FABE8DF8];
      MEMORY[0x277D82BD8](v15);
      type metadata accessor for UNNotificationSetting();
      sub_268D54F28();
      v16 = sub_268F9B754();
      (MEMORY[0x277D82BD8])();
      sub_268D54E40(__b);
      v17 = v16;
      return v17 & 1;
    }

    (MEMORY[0x277D82BD8])();
  }

  sub_268D54E40(__b);
  v17 = 0;
  return v17 & 1;
}

double sub_268D407F4(char a1)
{
  v3 = [objc_opt_self() sharedPreferences];
  [v3 setAnnounceNotificationsInCarPlayTemporarilyDisabled_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_268D40874(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = a1;
  v16 = a2;
  v6 = [objc_opt_self() sharedPreferences];

  v12 = a1;
  v13 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = 0;
  v10 = sub_268D40978;
  v11 = &block_descriptor_0;
  v5 = _Block_copy(&aBlock);

  [v6 getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion_];
  _Block_release(v5);
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

uint64_t sub_268D40978(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  v4(a2);
}

double sub_268D409D0()
{
  v1 = [objc_opt_self() sharedPreferences];
  [v1 setAnnounceNotificationsInCarPlayType_];
  *&result = MEMORY[0x277D82BD8](v1).n128_u64[0];
  return result;
}

double sub_268D40A3C(const void *a1)
{
  v8 = a1;
  v15 = 0;
  v14 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v10 = &v4 - v7;
  v15 = v2;
  v14 = v1;
  v9 = [objc_opt_self() sharedPreferences];
  sub_268D54B8C(v8, v10);
  v11 = sub_268F99214();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  if ((*(v12 + 48))(v10, 1) == 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = sub_268F991D4();
    (*(v12 + 8))(v10, v11);
    v6 = v5;
  }

  [v9 setSpokenNotificationTemporarilyDisabledUntil_];
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v9).n128_u64[0];
  return result;
}

double sub_268D40BF4(unsigned int a1)
{
  v11 = a1;
  v20 = 0;
  v19 = 0;
  v12 = sub_268F99214();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v16 = v6 - v15;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v18 = v6 - v17;
  v20 = v4 & 1;
  v19 = v1;
  if (v4)
  {
    v10 = [objc_opt_self() sharedPreferences];
    [v10 clearSpokenNotificationTemporarilyDisabledStatus];
    *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  }

  else
  {
    v9 = [objc_opt_self() sharedPreferences];
    sub_268F99204();
    sub_268F991C4();
    v7 = *(v13 + 8);
    v6[1] = v13 + 8;
    v7(v16, v12);
    v8 = sub_268F991D4();
    v7(v18, v12);
    [v9 setSpokenNotificationTemporarilyDisabledUntil_];
    MEMORY[0x277D82BD8](v8);
    *&result = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  return result;
}

uint64_t sub_268D40DFC(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = a1;
  v19 = a2;
  v8 = swift_allocObject();
  v16 = v8 + 16;
  *(v8 + 16) = sub_268F9B734();
  sub_268D5500C();
  v7 = sub_268D40FAC(1);

  v2 = swift_allocObject();
  v2[2] = v8;
  v2[3] = a1;
  v2[4] = a2;
  v14 = sub_268D55070;
  v15 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = 0;
  v12 = sub_268D4138C;
  v13 = &block_descriptor_9;
  v6 = _Block_copy(&aBlock);

  [v7 fetchEligibleAnnouncementRequestTypesWithCompletion_];
  _Block_release(v6);
  MEMORY[0x277D82BD8](v7);
}

uint64_t sub_268D40FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v22 = a2 + 16;
  v20 = a3;
  v21 = a4;
  v19 = a1;
  v18 = 1;
  type metadata accessor for AFAnnouncementRequestTypes();
  sub_268CDA184();
  if (sub_268F9B8A4())
  {
    sub_268F9AEF4();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    sub_268F9B064();
    swift_endAccess();
  }

  sub_268D5500C();
  v7 = sub_268D40FAC(2);

  v4 = swift_allocObject();
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
  v16 = sub_268D57800;
  v17 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = 0;
  v14 = sub_268D4138C;
  v15 = &block_descriptor_113;
  v6 = _Block_copy(&aBlock);

  [v7 fetchEligibleAnnouncementRequestTypesWithCompletion_];
  _Block_release(v6);
  return MEMORY[0x277D82BD8](v7);
}

uint64_t sub_268D41214(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  type metadata accessor for AFAnnouncementRequestTypes();
  sub_268CDA184();
  if (sub_268F9B8A4())
  {
    sub_268F9AEF4();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    sub_268F9B064();
    swift_endAccess();
  }

  swift_beginAccess();
  v4 = *(a2 + 16);

  swift_endAccess();
  a3(v4);
}

uint64_t sub_268D4138C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_268D413E4(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = a1;
  v17 = a2;
  v7 = [objc_opt_self() sharedPreferences];

  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v13 = sub_268D550E4;
  v14 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = 0;
  v11 = sub_268D40978;
  v12 = &block_descriptor_15;
  v6 = _Block_copy(&aBlock);

  [v7 getSpokenNotificationTemporarilyDisabledStatusWithCompletion_];
  _Block_release(v6);
  return MEMORY[0x277D82BD8](v7);
}

uint64_t sub_268D4152C(unsigned __int8 a1, void (*a2)(void))
{

  a2((a1 ^ 1) & 1);
}

uint64_t sub_268D415B8()
{
  v1 = [objc_opt_self() currentNotificationSettingsCenter];
  v2 = [v1 notificationSystemSettings];
  MEMORY[0x277D82BD8](v1);
  [v2 announcementSetting];
  MEMORY[0x277D82BD8](v2);
  type metadata accessor for UNNotificationSetting();
  sub_268D54F28();
  return sub_268F9B754() & 1;
}

double sub_268D416A4(char a1)
{
  v6 = [objc_opt_self() currentNotificationSettingsCenter];
  v7 = [v6 notificationSystemSettings];
  [v7 mutableCopy];
  MEMORY[0x277D82BD8](v7);
  sub_268F9B404();
  sub_268D55158();
  if (swift_dynamicCast())
  {
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    swift_unknownObjectRelease();
    if (a1)
    {
      [v4 setAnnouncementSetting_];
    }

    else
    {
      [v4 setAnnouncementSetting_];
    }

    [v6 setNotificationSystemSettings_];
    if ((a1 & 1) == 0)
    {
      v2 = [objc_opt_self() 0x1FA9E61E0];
      [v2 clearAnnounceNotificationsInCarPlayType];
      MEMORY[0x277D82BD8](v2);
      v3 = [objc_opt_self() 0x1FA9E61E0];
      [v3 clearAnnounceNotificationsInCarPlayTemporarilyDisabled];
      MEMORY[0x277D82BD8](v3);
    }

    MEMORY[0x277D82BD8](v4);
    *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  else
  {
    swift_unknownObjectRelease();
    *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  return result;
}

uint64_t sub_268D41900(char a1)
{
  if (sub_268D2CBA4(a1 & 1, 0))
  {
    v6 = [objc_opt_self() currentNotificationSettingsCenter];
    v7 = [v6 notificationSystemSettings];
    [v7 announcementCarPlaySetting];
    MEMORY[0x277D82BD8](v7);
    type metadata accessor for UNNotificationAnnouncementCarPlaySetting();
    sub_268D551BC();
    if (sub_268F9B754())
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_268F9B754();
    }

    v4 = v5;
  }

  else if (sub_268D2CBA4(a1 & 1, 1))
  {
    v2 = [objc_opt_self() currentNotificationSettingsCenter];
    v3 = [v2 notificationSystemSettings];
    [v3 announcementHeadphonesSetting];
    MEMORY[0x277D82BD8](v3);
    type metadata accessor for UNNotificationSetting();
    sub_268D54F28();
    v4 = sub_268F9B754();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

double sub_268D41B68(char a1, char a2)
{
  v6 = [objc_opt_self() currentNotificationSettingsCenter];
  v7 = [v6 notificationSystemSettings];
  [v7 mutableCopy];
  MEMORY[0x277D82BD8](v7);
  sub_268F9B404();
  sub_268D55158();
  if (swift_dynamicCast())
  {
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    swift_unknownObjectRelease();
    if (sub_268D2CBA4(a2 & 1, 0))
    {
      if (a1)
      {
        [v3 setAnnouncementCarPlaySetting_];
      }

      else
      {
        [v3 setAnnouncementCarPlaySetting_];
      }
    }

    else if (sub_268D2CBA4(a2 & 1, 1))
    {
      if (a1)
      {
        [v3 setAnnouncementHeadphonesSetting_];
      }

      else
      {
        [v3 setAnnouncementHeadphonesSetting_];
      }
    }

    [v6 setNotificationSystemSettings_];
    MEMORY[0x277D82BD8](v3);
    *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  else
  {
    swift_unknownObjectRelease();
    *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  return result;
}

uint64_t sub_268D41EA4(char a1, uint64_t a2, uint64_t a3)
{
  *&v21[1] = 0;
  v20 = 0;
  v24 = a1 & 1;
  v22 = a2;
  v23 = a3;
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v14 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v13 = v4;
  *v21 = a1 & 1;
  v11 = sub_268F9AE64();
  v12 = v5;
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_268CDD224();
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v14);
  sub_268D552B8();
  v16 = sub_268CF0C44();
  v20 = v16;
  sub_268D35D60((v15 + 16), v17);
  if (v18)
  {
    sub_268CDF978(v17, __dst);
  }

  else
  {
    sub_268F99764();
    if (v18)
    {
      sub_268D28414(v17);
    }
  }

  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a1 & 1;
  sub_268D353D0();
  sub_268F99A24();

  __swift_destroy_boxed_opaque_existential_0(__dst);
  return MEMORY[0x277D82BD8](v16);
}

void sub_268D42148(void *a1, void (*a2)(void), uint64_t a3, int a4)
{
  v208 = a1;
  v205 = a2;
  v206 = a3;
  v207 = a4;
  v195 = "Failed to get appearance. Error: %@";
  v196 = "Appearance: %@ in the rsponse %@ and appearance ace setting %@";
  v197 = "Failed to get appearance. Result is of unexpected type: %@";
  v198 = "Failed to get appearance. Result entity is of unexpected type: %@";
  v239 = 0;
  v238 = 0;
  v236 = 0;
  v237 = 0;
  v235 = 0;
  v199 = 0;
  v233 = 0;
  v231 = 0;
  v229 = 0;
  v221 = 0;
  v222 = 0;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  v200 = (*(*(v219 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v219);
  v201 = (&v83 - v200);
  v202 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v83 - v200);
  v203 = &v83 - v202;
  v204 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v83 - v202);
  v220 = (&v83 - v204);
  v209 = sub_268F99A44();
  v210 = *(v209 - 8);
  v211 = v209 - 8;
  v215 = *(v210 + 64);
  v212 = (v215 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v208);
  v213 = &v83 - v212;
  v214 = (v215 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v216 = &v83 - v214;
  v217 = (v215 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v218 = &v83 - v217;
  v239 = &v83 - v217;
  v238 = v8;
  v236 = v9;
  v237 = v10;
  v235 = v11 & 1;
  sub_268D570CC(v8, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v210 + 32))(v218, v220, v209);
    v191 = sub_268F9B294();
    v193 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v193);
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v190 = sub_268F9B734();
    v188 = v15;
    (*(v210 + 16))(v213, v218, v209);
    sub_268D5769C();
    v186 = sub_268F9AE74();
    v187 = v16;
    v188[3] = MEMORY[0x277D837D0];
    v17 = sub_268CDD224();
    v18 = v186;
    v19 = v187;
    v20 = v188;
    v21 = v17;
    v22 = v190;
    v188[4] = v21;
    *v20 = v18;
    v20[1] = v19;
    sub_268CD0F7C();
    v192 = v22;
    v194 = 2;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v193);

    v205(v194);

    (*(v210 + 8))(v218, v209);
  }

  else
  {
    v13 = v199;
    v14 = v203;
    sub_268D571A8(v220);
    sub_268D570CC(v208, v14);
    sub_268D2DFAC(v219, v216, &v234);
    if (v13)
    {
      v84 = *(v210 + 32);
      v83 = v210 + 32;
      v84(v213, v216, v209);
      sub_268D5724C();
      v95 = swift_allocError();
      v84(v72, v213, v209);
      v73 = v95;
      v233 = v95;
      v91 = sub_268F9B294();
      v93 = *sub_268DC7AE8();
      MEMORY[0x277D82BE0](v93);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v90 = sub_268F9B734();
      v88 = v74;
      v75 = v95;
      v85 = &v232;
      v232 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
      v86 = sub_268F9AE64();
      v87 = v76;
      v88[3] = MEMORY[0x277D837D0];
      v77 = sub_268CDD224();
      v78 = v86;
      v79 = v87;
      v80 = v88;
      v81 = v77;
      v82 = v90;
      v88[4] = v81;
      *v80 = v78;
      v80[1] = v79;
      sub_268CD0F7C();
      v92 = v82;
      v94 = 2;
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v93);

      v205(v94);
    }

    else
    {
      v184 = v234;
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      v185 = v23;
      if (v23)
      {
        v183 = v185;
      }

      else
      {
        MEMORY[0x277D82BD8](v184);
        v183 = 0;
      }

      v182 = v183;
      if (v183)
      {
        v181 = v182;
        v179 = v182;
        v231 = v182;
        MEMORY[0x277D82BE0](v182);
        v180 = [v179 setting];
        MEMORY[0x277D82BD8](v179);
        if (v180)
        {
          v178 = v180;
          v175 = v180;
          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          v176 = v24;
          if (v24)
          {
            v174 = v176;
          }

          else
          {
            MEMORY[0x277D82BD8](v175);
            v174 = 0;
          }

          v177 = v174;
        }

        else
        {
          v177 = 0;
        }

        v173 = v177;
        if (v177)
        {
          v172 = v173;
          v168 = v173;
          v229 = v173;
          v165 = sub_268F9B284();
          v166 = *sub_268DC7AE8();
          MEMORY[0x277D82BE0](v166);
          v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
          v169 = sub_268F9B734();
          v170 = v25;
          v171 = [v168 value];
          if (v171)
          {
            v164 = v171;
            v159 = v171;
            v160 = sub_268F9AE24();
            v161 = v26;
            MEMORY[0x277D82BD8](v159);
            v162 = v160;
            v163 = v161;
          }

          else
          {
            v162 = 0;
            v163 = 0;
          }

          v149 = v228;
          v228[0] = v162;
          v228[1] = v163;
          v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
          v151 = sub_268F9AE64();
          v152 = v27;
          v155 = MEMORY[0x277D837D0];
          v170[3] = MEMORY[0x277D837D0];
          v28 = sub_268CDD224();
          v29 = v151;
          v30 = v152;
          v31 = v170;
          v32 = v28;
          v33 = v179;
          v156 = v32;
          v170[4] = v32;
          *v31 = v29;
          v31[1] = v30;
          MEMORY[0x277D82BE0](v33);
          v154 = &v227;
          v227 = v179;
          v153 = sub_268D5771C();
          sub_268D57780();
          v34 = sub_268F9AE74();
          v35 = v156;
          v36 = v170;
          v170[8] = v155;
          v36[9] = v35;
          v36[5] = v34;
          v36[6] = v37;
          v225 = sub_268D436F0();
          v226 = v38;
          v39 = sub_268F9AE84();
          v40 = v156;
          v41 = v170;
          v42 = v39;
          v43 = v169;
          v170[13] = v155;
          v41[14] = v40;
          v41[10] = v42;
          v41[11] = v44;
          sub_268CD0F7C();
          v157 = v43;
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v166);
          v158 = [v168 value];
          if (v158)
          {
            v148 = v158;
            v143 = v158;
            v144 = sub_268F9AE24();
            v145 = v45;
            MEMORY[0x277D82BD8](v143);
            v146 = v144;
            v147 = v145;
          }

          else
          {
            v146 = 0;
            v147 = 0;
          }

          v141 = v147;
          v142 = v146;
          if (v147)
          {
            v139 = v142;
            v140 = v141;
            v137 = v142;
            v138 = v141;
          }

          else
          {
            v137 = 0;
            v138 = 0;
          }

          v135 = v138;
          v136 = v137;
          if (v138)
          {
            v133 = v136;
            v134 = v135;
            v126 = v135;
            v123 = v136;
            v221 = v136;
            v222 = v135;

            v47 = sub_268D436F0();
            v124 = v48;
            v125 = MEMORY[0x26D62DB50](v123, v126, v47);

            v205(v125 & 1);

            MEMORY[0x277D82BD8](v168);
            MEMORY[0x277D82BD8](v179);
          }

          else
          {
            v128 = sub_268F9B294();
            v129 = *sub_268DC7AE8();
            MEMORY[0x277D82BE0](v129);
            v130 = sub_268F9B734();
            v131 = v46;
            v132 = [v168 value];
            if (v132)
            {
              v127 = v132;
              v118 = v132;
              v119 = sub_268F9AE24();
              v120 = v49;
              MEMORY[0x277D82BD8](v118);
              v121 = v119;
              v122 = v120;
            }

            else
            {
              v121 = 0;
              v122 = 0;
            }

            v223 = v121;
            v224 = v122;
            v50 = sub_268F9AE64();
            v51 = v156;
            v52 = v131;
            v53 = v50;
            v54 = v130;
            v131[3] = MEMORY[0x277D837D0];
            v52[4] = v51;
            *v52 = v53;
            v52[1] = v55;
            sub_268CD0F7C();
            v116 = v54;
            v117 = 2;
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v129);

            v205(v117);

            MEMORY[0x277D82BD8](v168);
            MEMORY[0x277D82BD8](v179);
          }
        }

        else
        {
          v112 = sub_268F9B294();
          v114 = *sub_268DC7AE8();
          MEMORY[0x277D82BE0](v114);
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
          v111 = sub_268F9B734();
          v109 = v56;
          MEMORY[0x277D82BE0](v179);
          v105 = [v179 setting];
          MEMORY[0x277D82BD8](v179);
          v106 = &v230;
          v230 = v105;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC548, &unk_268F9E7F0);
          v107 = sub_268F9AE64();
          v108 = v57;
          v109[3] = MEMORY[0x277D837D0];
          v58 = sub_268CDD224();
          v59 = v107;
          v60 = v108;
          v61 = v109;
          v62 = v58;
          v63 = v111;
          v109[4] = v62;
          *v61 = v59;
          v61[1] = v60;
          sub_268CD0F7C();
          v113 = v63;
          v115 = 2;
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v114);

          v205(v115);

          MEMORY[0x277D82BD8](v179);
        }
      }

      else
      {
        v101 = sub_268F9B294();
        v103 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v103);
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v100 = sub_268F9B734();
        v98 = v64;
        sub_268D570CC(v208, v201);
        v96 = sub_268F9AE64();
        v97 = v65;
        v98[3] = MEMORY[0x277D837D0];
        v66 = sub_268CDD224();
        v67 = v96;
        v68 = v97;
        v69 = v98;
        v70 = v66;
        v71 = v100;
        v98[4] = v70;
        *v69 = v67;
        v69[1] = v68;
        sub_268CD0F7C();
        v102 = v71;
        v104 = 2;
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v103);

        v205(v104);
      }
    }
  }
}

uint64_t sub_268D4377C(char a1)
{
  __dst[6] = 0;
  v8 = a1 & 1;
  sub_268D55330();
  v4 = sub_268CF0C44();
  __dst[5] = v4;
  sub_268D436F0();
  v3 = sub_268F9AE14();

  [v4 setAppearance_];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BE0](v4);
  [v4 setDryRun_];
  MEMORY[0x277D82BD8](v4);
  sub_268D35D60((v2 + 16), v5);
  if (v6)
  {
    sub_268CDF978(v5, __dst);
  }

  else
  {
    sub_268F99764();
    if (v6)
    {
      sub_268D28414(v5);
    }
  }

  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  sub_268D353D0();
  sub_268F99A24();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  return MEMORY[0x277D82BD8](v4);
}

void *sub_268D43920(uint64_t a1)
{
  v24 = a1;
  v22 = "Failed to set appearance. Error: %@";
  v35 = 0;
  v34 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  v23 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v33 = (&v14 - v23);
  v25 = sub_268F99A44();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v24);
  v29 = &v14 - v28;
  v30 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v1);
  v31 = &v14 - v30;
  v35 = &v14 - v30;
  v34 = v3;
  sub_268D570CC(v3, v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_268D571A8(v33);
  }

  (*(v26 + 32))(v31, v33, v25);
  v19 = sub_268F9B294();
  v21 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v21);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v18 = sub_268F9B734();
  v16 = v6;
  (*(v26 + 16))(v29, v31, v25);
  sub_268D5769C();
  v14 = sub_268F9AE74();
  v15 = v7;
  v16[3] = MEMORY[0x277D837D0];
  v8 = sub_268CDD224();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v8;
  v13 = v18;
  v16[4] = v12;
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  v20 = v13;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v21);
  return (*(v26 + 8))(v31, v25);
}

BOOL sub_268D43C24(char a1)
{
  sub_268D55394();
  v4 = sub_268D43D08();
  v5 = [v4 modeValue];
  MEMORY[0x277D82BD8](v4);
  if (v5 == 1)
  {
    return sub_268D2CBA4(a1 & 1, 1);
  }

  else
  {
    return v5 == 2 && sub_268D2CBA4(a1 & 1, 0);
  }
}

BOOL sub_268D43D48(char a1)
{
  sub_268D55394();
  v4 = sub_268D43D08();
  v5 = [v4 override];
  MEMORY[0x277D82BD8](v4);
  if (v5 == 1)
  {
    return sub_268D2CBA4(a1 & 1, 1);
  }

  else
  {
    return v5 == 2 && sub_268D2CBA4(a1 & 1, 0);
  }
}

uint64_t sub_268D43E38()
{
  sub_268D55394();
  v1 = sub_268D43D08();
  [v1 modeValue];
  MEMORY[0x277D82BD8](v1);
  return UISUserInterfaceStyleModeValueIsAutomatic();
}

double sub_268D43EAC(char a1)
{
  sub_268D55394();
  v3 = sub_268D43D08();
  if (sub_268D2CBA4(a1 & 1, 1))
  {
    [v3 setModeValue_];
  }

  else
  {
    [v3 setModeValue_];
  }

  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_268D43F68(char a1)
{
  sub_268D55394();
  v3 = sub_268D43D08();
  [v3 override];
  if (sub_268D2CBA4(a1 & 1, 1))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  [v3 setOverride_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_268D44174()
{
  v6 = [objc_opt_self() sharedPreferences];
  if (v6)
  {
    v5 = v6;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 1997;
    LODWORD(v3) = 0;
    sub_268F9B584();
    __break(1u);
  }

  v4 = [v5 smartSiriVolumeContextAwareEnabled];
  MEMORY[0x277D82BD8](v5);
  return v4;
}

double sub_268D44270()
{
  v3 = [objc_opt_self() sharedPreferences];
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_268F9B584();
    __break(1u);
  }

  sub_268D34FD4();
  v1 = sub_268F9B304();
  [v2 disableAdaptiveSiriVolume_];
  MEMORY[0x277D82BD8](v1);
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

uint64_t sub_268D443B4()
{
  v6 = [objc_opt_self() sharedPreferences];
  if (v6)
  {
    v5 = v6;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 2005;
    LODWORD(v3) = 0;
    sub_268F9B584();
    __break(1u);
  }

  v4 = [v5 isAdaptiveSiriVolumeTemporaryIntentValid];
  MEMORY[0x277D82BD8](v5);
  return v4;
}

uint64_t sub_268D444B0(char a1, uint64_t a2, uint64_t a3)
{
  sub_268D554F0();
  v7 = sub_268CF0C44();
  MEMORY[0x277D82BE0](v7);
  [v7 setValue_];
  MEMORY[0x277D82BD8](v7);
  sub_268D53F60(v7, a2, a3);
  return MEMORY[0x277D82BD8](v7);
}

uint64_t sub_268D44584(uint64_t a1, uint64_t a2)
{
  __dst[5] = 0;
  __dst[6] = a1;
  __dst[7] = a2;
  sub_268D35D60((v2 + 16), v8);
  if (v9)
  {
    sub_268CDF978(v8, __dst);
  }

  else
  {
    sub_268F99764();
    if (v9)
    {
      sub_268D28414(v8);
    }
  }

  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  sub_268D55554();
  v5 = sub_268CF0C44();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_268D353D0();
  sub_268F99A24();

  MEMORY[0x277D82BD8](v5);
  return __swift_destroy_boxed_opaque_existential_0(__dst);
}

void sub_268D446EC(void *a1, void (*a2)(id), uint64_t a3)
{
  v106 = a1;
  v104 = a2;
  v105 = a3;
  v92 = "Failed to get BOOLean value using SASettingGetMidnightMode";
  v93 = "Get BOOLean value using SASettingGetMidnightMode successfully. Value is %@";
  v94 = "Get BOOLean value using SASettingGetMidnightMode failed with result: %@";
  v95 = "Get BOOLean value using SASettingGetMidnightMode Exception while getting response: %@";
  v123 = 0;
  v121 = 0;
  v122 = 0;
  v96 = 0;
  v119 = 0;
  v117 = 0;
  v115 = 0;
  v114 = 0;
  v97 = sub_268F99A44();
  v98 = *(v97 - 8);
  v99 = v97 - 8;
  v100 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97);
  v101 = &v40 - v100;
  v102 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v40 - v100);
  v103 = &v40 - v102;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  v108 = *(*(v111 - 1) + 64);
  v107 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v106);
  v109 = &v40 - v107;
  v110 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v112 = (&v40 - v110);
  v123 = v5;
  v121 = v6;
  v122 = v7;
  sub_268D570CC(v5, (&v40 - v110));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v98 + 8))(v112, v97);
    v88 = sub_268F9B284();
    v90 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v89 = sub_268F9B734();
    v91 = 2;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v90);

    v104(v91);

    return;
  }

  v8 = v96;
  v9 = v109;
  sub_268D571A8(v112);
  sub_268D570CC(v106, v9);
  sub_268D2DFAC(v111, v103, &v120);
  if (v8)
  {
    v41 = *(v98 + 32);
    v40 = v98 + 32;
    v41(v101, v103, v97);
    sub_268D5724C();
    v52 = swift_allocError();
    v41(v29, v101, v97);
    v30 = v52;
    v119 = v52;
    v48 = sub_268F9B284();
    v50 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v50);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v47 = sub_268F9B734();
    v45 = v31;
    v32 = v52;
    v42 = &v118;
    v118 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v43 = sub_268F9AE64();
    v44 = v33;
    v45[3] = MEMORY[0x277D837D0];
    v34 = sub_268CDD224();
    v35 = v43;
    v36 = v44;
    v37 = v45;
    v38 = v34;
    v39 = v47;
    v45[4] = v38;
    *v37 = v35;
    v37[1] = v36;
    sub_268CD0F7C();
    v49 = v39;
    v51 = 2;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v50);

    v104(v51);
  }

  else
  {
    v86 = v120;
    v117 = v120;
    MEMORY[0x277D82BE0](v120);
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v87 = v10;
    if (v10)
    {
      v85 = v87;
    }

    else
    {
      MEMORY[0x277D82BD8](v86);
      v85 = 0;
    }

    v84 = v85;
    if (v85)
    {
      v83 = v84;
      v81 = v84;
      v115 = v84;
      MEMORY[0x277D82BE0](v84);
      v82 = [v81 setting];
      MEMORY[0x277D82BD8](v81);
      if (v82)
      {
        v80 = v82;
        v77 = v82;
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        v78 = v11;
        if (v11)
        {
          v76 = v78;
        }

        else
        {
          MEMORY[0x277D82BD8](v77);
          v76 = 0;
        }

        v79 = v76;
      }

      else
      {
        v79 = 0;
      }

      v75 = v79;
      if (v79)
      {
        v74 = v75;
        v73 = v75;
        v114 = v75;
        v69 = sub_268F9B284();
        v71 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v71);
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v68 = sub_268F9B734();
        v66 = v12;
        v72 = 0x1FAF97000uLL;
        v113 = [v73 0x1FAF97178];
        v64 = sub_268F9AE74();
        v65 = v13;
        v66[3] = MEMORY[0x277D837D0];
        v14 = sub_268CDD224();
        v15 = v64;
        v16 = v65;
        v17 = v66;
        v18 = v14;
        v19 = v68;
        v66[4] = v18;
        *v17 = v15;
        v17[1] = v16;
        sub_268CD0F7C();
        v70 = v19;
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v71);

        v20 = [v73 (v72 + 376)];
        v104(v20);

        MEMORY[0x277D82BD8](v73);
        MEMORY[0x277D82BD8](v81);
        MEMORY[0x277D82BD8](v86);
        return;
      }

      MEMORY[0x277D82BD8](v81);
    }

    v60 = sub_268F9B284();
    v62 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v62);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v59 = sub_268F9B734();
    v57 = v21;
    MEMORY[0x277D82BE0](v86);
    v54 = &v116;
    v116 = v86;
    v53 = sub_268D353D0();
    sub_268D55698();
    v55 = sub_268F9AE74();
    v56 = v22;
    v57[3] = MEMORY[0x277D837D0];
    v23 = sub_268CDD224();
    v24 = v55;
    v25 = v56;
    v26 = v57;
    v27 = v23;
    v28 = v59;
    v57[4] = v27;
    *v26 = v24;
    v26[1] = v25;
    sub_268CD0F7C();
    v61 = v28;
    v63 = 2;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v62);

    v104(v63);

    MEMORY[0x277D82BD8](v86);
  }
}

uint64_t sub_268D45284(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v29 = 0;
  v33 = a1;
  v32 = a2;
  v30 = a3;
  v31 = a4;
  v27 = sub_268F9AEF4();
  v28 = v4;
  if (a1)
  {
    v18 = *MEMORY[0x277D48AE0];
    MEMORY[0x277D82BE0](*MEMORY[0x277D48AE0]);
    v19 = sub_268F9AE24();
    v20 = v5;

    v27 = v19;
    v28 = v20;

    MEMORY[0x277D82BD8](v18);
    v21 = v19;
    v22 = v20;
  }

  else
  {
    if (a2 == 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = a2;
    }

    if (v17)
    {
      v12 = *MEMORY[0x277D48AD8];
      MEMORY[0x277D82BE0](*MEMORY[0x277D48AD8]);
      v13 = sub_268F9AE24();
      v14 = v6;

      v27 = v13;
      v28 = v14;

      MEMORY[0x277D82BD8](v12);
      v15 = v13;
      v16 = v14;
    }

    else
    {
      v9 = *MEMORY[0x277D48AC0];
      MEMORY[0x277D82BE0](*MEMORY[0x277D48AC0]);
      v10 = sub_268F9AE24();
      v11 = v7;

      v27 = v10;
      v28 = v11;

      MEMORY[0x277D82BD8](v9);
      v15 = v10;
      v16 = v11;
    }

    v21 = v15;
    v22 = v16;
  }

  sub_268D46270(v21, v22, a1, a3, a4);

  return sub_268CD9D30(&v27);
}

uint64_t sub_268D455CC(uint64_t a1, char a2)
{
  *(v3 + 72) = v2;
  *(v3 + 105) = a2;
  *(v3 + 64) = a1;
  *(v3 + 32) = v3;
  *(v3 + 40) = 0;
  *(v3 + 104) = 0;
  *(v3 + 48) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 40) = a1;
  *(v3 + 104) = a2;
  *(v3 + 48) = v2;
  v4 = *(v3 + 32);
  return MEMORY[0x2822009F8](sub_268D45638, 0);
}

uint64_t sub_268D45638()
{
  v35 = v0[8];
  v0[4] = v0;
  v0[2] = sub_268F9AEF4();
  v0[3] = v1;
  if (v35)
  {
    v29 = *MEMORY[0x277D48AE0];
    MEMORY[0x277D82BE0](*MEMORY[0x277D48AE0]);
    v30 = sub_268F9AE24();
    v31 = v2;

    v3 = *(v34 + 24);
    *(v34 + 16) = v30;
    *(v34 + 24) = v31;

    MEMORY[0x277D82BD8](v29);
    v32 = v30;
    v33 = v31;
  }

  else
  {
    if (*(v34 + 105) == 2 || (*(v34 + 105) & 1) == 0)
    {
      v21 = *MEMORY[0x277D48AC0];
      MEMORY[0x277D82BE0](*MEMORY[0x277D48AC0]);
      v22 = sub_268F9AE24();
      v23 = v6;

      v7 = *(v34 + 24);
      *(v34 + 16) = v22;
      *(v34 + 24) = v23;

      MEMORY[0x277D82BD8](v21);
      v27 = v22;
      v28 = v23;
    }

    else
    {
      v24 = *MEMORY[0x277D48AD8];
      MEMORY[0x277D82BE0](*MEMORY[0x277D48AD8]);
      v25 = sub_268F9AE24();
      v26 = v4;

      v5 = *(v34 + 24);
      *(v34 + 16) = v25;
      *(v34 + 24) = v26;

      MEMORY[0x277D82BD8](v24);
      v27 = v25;
      v28 = v26;
    }

    v32 = v27;
    v33 = v28;
  }

  *(v34 + 80) = v33;
  v16 = *(v34 + 64);
  sub_268F9B284();
  v8 = sub_268DC7AE8();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v19 = v9;

  v17 = MEMORY[0x277D837D0];
  v19[3] = MEMORY[0x277D837D0];
  v18 = sub_268CDD224();
  v19[4] = v18;
  *v19 = v32;
  v19[1] = v33;
  MEMORY[0x277D82BE0](v16);
  *(v34 + 56) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC410, &qword_268F9E2B0);
  v10 = sub_268F9AE64();
  v19[8] = v17;
  v19[9] = v18;
  v19[5] = v10;
  v19[6] = v11;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v20);
  v12 = swift_task_alloc();
  *(v34 + 88) = v12;
  *v12 = *(v34 + 32);
  v12[1] = sub_268D45BF8;
  v13 = *(v34 + 72);
  v14 = *(v34 + 64);

  return sub_268D46378(v32, v33, v14);
}

uint64_t sub_268D45BF8(uint64_t a1)
{
  v7 = *v1;
  v3 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  *(v7 + 32) = *v1;
  *(v7 + 96) = a1;

  v4 = *(v7 + 32);

  return MEMORY[0x2822009F8](sub_268D45D34, 0);
}

uint64_t sub_268D45D34()
{
  *(v0 + 32) = v0;
  sub_268CD9D30(v0 + 16);
  v1 = *(*(v5 + 32) + 8);
  v2 = *(v5 + 32);
  v3 = *(v5 + 96);

  return v1(v3);
}

uint64_t sub_268D45DD4(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v9 = *MEMORY[0x277D48AD0];
    MEMORY[0x277D82BE0](*MEMORY[0x277D48AD0]);
    v10 = sub_268F9AE24();
    v11 = v3;
    MEMORY[0x277D82BD8](v9);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v6 = *MEMORY[0x277D48AC8];
    MEMORY[0x277D82BE0](*MEMORY[0x277D48AC8]);
    v7 = sub_268F9AE24();
    v8 = v4;
    MEMORY[0x277D82BD8](v6);
    v12 = v7;
    v13 = v8;
  }

  sub_268D46270(v12, v13, 0, a2, a3);
}

uint64_t sub_268D45F04(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 57) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 56) = 0;
  *(v2 + 24) = 0;
  *(v2 + 56) = a1 & 1;
  *(v2 + 24) = v1;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268D45F64, 0);
}

uint64_t sub_268D45F64()
{
  v1 = *(v0 + 57);
  *(v0 + 16) = v0;
  if (v1)
  {
    v10 = *MEMORY[0x277D48AD0];
    MEMORY[0x277D82BE0](*MEMORY[0x277D48AD0]);
    v11 = sub_268F9AE24();
    v12 = v2;
    MEMORY[0x277D82BD8](v10);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v7 = *MEMORY[0x277D48AC8];
    MEMORY[0x277D82BE0](*MEMORY[0x277D48AC8]);
    v8 = sub_268F9AE24();
    v9 = v3;
    MEMORY[0x277D82BD8](v7);
    v13 = v8;
    v14 = v9;
  }

  v15[5] = v14;
  v4 = swift_task_alloc();
  v15[6] = v4;
  *v4 = v15[2];
  v4[1] = sub_268D46108;
  v5 = v15[4];

  return sub_268D46378(v13, v14, 0);
}

uint64_t sub_268D46108(uint64_t a1)
{
  v6 = *v1;
  v2 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(v6 + 16) = *v1;

  v3 = *(*(v6 + 16) + 8);

  return v3(a1);
}

uint64_t sub_268D46270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_268D555C4();
  v10 = sub_268CF0C44();
  [v10 setVolumeValue_];

  v7 = sub_268F9AE14();

  [v10 setActionType_];
  MEMORY[0x277D82BD8](v7);
  sub_268D53F60(v10, a4, a5);
  return MEMORY[0x277D82BD8](v10);
}

uint64_t sub_268D46378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = v3;
  v4[11] = a3;
  v4[10] = a2;
  v4[9] = a1;
  v4[4] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v5 = v4[4];
  return MEMORY[0x2822009F8](sub_268D463EC, 0);
}

uint64_t sub_268D463EC()
{
  v4 = v0[11];
  v6 = v0[10];
  v5 = v0[9];
  v0[4] = v0;
  sub_268D555C4();
  v9 = sub_268CF0C44();
  v0[13] = v9;
  v0[7] = v9;
  [v9 setVolumeValue_];

  v7 = sub_268F9AE14();

  [v9 setActionType_];
  MEMORY[0x277D82BD8](v7);
  v1 = swift_task_alloc();
  v8[14] = v1;
  *v1 = v8[4];
  v1[1] = sub_268D46548;
  v2 = v8[12];

  return sub_268D54438(v9);
}

uint64_t sub_268D46548()
{
  v7 = *v1;
  v2 = *(*v1 + 112);
  *(v7 + 32) = *v1;
  v8 = (v7 + 32);
  *(v7 + 120) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_268D46764;
  }

  else
  {
    v3 = *v8;
    v4 = sub_268D466B0;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268D466B0()
{
  v1 = *(v0 + 104);
  *(v0 + 32) = v0;
  MEMORY[0x277D82BD8](v1);
  v2 = *(*(v0 + 32) + 8);
  v3 = *(v0 + 32);

  return v2(0);
}

uint64_t sub_268D46764()
{
  v6 = v0[15];
  v5 = v0[13];
  v0[4] = v0;
  v1 = v6;
  v0[8] = v6;

  MEMORY[0x277D82BD8](v5);
  v2 = *(v0[4] + 8);
  v3 = v0[4];

  return v2(v6);
}

uint64_t sub_268D46844(uint64_t a1, uint64_t a2)
{
  __dst[6] = 0;
  __dst[7] = a1;
  __dst[8] = a2;
  sub_268D55628();
  v7 = sub_268CF0C44();
  __dst[5] = v7;
  sub_268D35D60((v6 + 16), v8);
  if (v9)
  {
    sub_268CDF978(v8, __dst);
  }

  else
  {
    sub_268F99764();
    if (v9)
    {
      sub_268D28414(v8);
    }
  }

  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);

  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_268D353D0();
  sub_268F99A24();

  __swift_destroy_boxed_opaque_existential_0(__dst);
  return MEMORY[0x277D82BD8](v7);
}

uint64_t sub_268D469AC(void *a1, void (*a2)(void), uint64_t a3)
{
  v34 = a1;
  v32 = a2;
  v33 = a3;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v24 = 0;
  v42 = 0;
  v41 = 0;
  v25 = sub_268F99A44();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v29 = v14 - v28;
  v30 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v28);
  v31 = v14 - v30;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  v36 = *(*(v39 - 1) + 64);
  v35 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v34);
  v37 = v14 - v35;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v40 = (v14 - v38);
  v46 = v5;
  v44 = v6;
  v45 = v7;
  sub_268D570CC(v5, (v14 - v38));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v26 + 8))(v40, v25);

    (v32)(0);
  }

  v8 = v24;
  v9 = v37;
  sub_268D571A8(v40);
  sub_268D570CC(v34, v9);
  sub_268D2DFAC(v39, v31, &v43);
  if (v8)
  {
    v15 = *(v26 + 32);
    v14[1] = v26 + 32;
    v15(v29, v31, v25);
    sub_268D5724C();
    v16 = swift_allocError();
    v15(v12, v29, v25);
    v13 = v16;
    v42 = v16;
  }

  else
  {
    v22 = v43;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    v23 = v11;
    if (v11)
    {
      v21 = v23;
    }

    else
    {
      MEMORY[0x277D82BD8](v22);
      v21 = 0;
    }

    v20 = v21;
    if (v21)
    {
      v19 = v20;
      v18 = v20;
      v41 = v20;

      v17 = [v18 volumeLevel];
      v32();
      MEMORY[0x277D82BD8](v17);

      return MEMORY[0x277D82BD8](v18);
    }
  }

  (v32)(0);
}

uint64_t sub_268D46DDC()
{
  v1[20] = v0;
  v1[12] = v1;
  v1[13] = 0;
  v1[14] = 0;
  v1[15] = 0;
  v1[17] = 0;
  v1[19] = 0;
  v1[13] = v0;
  v2 = v1[12];
  return MEMORY[0x2822009F8](sub_268D46E28, 0);
}

uint64_t sub_268D46E28()
{
  v8 = v0[20];
  v0[12] = v0;
  sub_268D55628();
  v9 = sub_268CF0C44();
  v0[21] = v9;
  v0[14] = v9;
  sub_268D35D60((v8 + 56), v0 + 7);
  if (v0[10])
  {
    sub_268CDF978(v7 + 7, v7 + 2);
  }

  else
  {
    sub_268F99754();
    if (v7[10])
    {
      sub_268D28414(v7 + 7);
    }
  }

  v6 = v7[5];
  v5 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v6);
  v1 = *(MEMORY[0x277D5BFB8] + 4);
  v2 = swift_task_alloc();
  v7[22] = v2;
  v3 = sub_268D353D0();
  v7[23] = v3;
  *v2 = v7[12];
  v2[1] = sub_268D46FE4;

  return MEMORY[0x2821BB6A0](v9, v6, v3, v5);
}

uint64_t sub_268D46FE4(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 176);
  v9[12] = *v2;
  v10 = v9 + 12;
  v9[24] = a1;
  v9[25] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268D474D4;
  }

  else
  {
    v5 = *v10;
    v6 = sub_268D47154;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D47154()
{
  v1 = v0[24];
  v0[12] = v0;
  v0[17] = v1;
  MEMORY[0x277D82BE0](v1);
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v19 = v21;
  }

  else
  {
    MEMORY[0x277D82BD8](v20[24]);
    v19 = 0;
  }

  if (v19)
  {
    v15 = v20[24];
    v16 = v20[21];
    v20[19] = v19;
    v17 = [v19 volumeLevel];
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v15);
    __swift_destroy_boxed_opaque_existential_0(v20 + 2);
    MEMORY[0x277D82BD8](v16);
    v18 = v17;
  }

  else
  {
    v13 = v20[24];
    v8 = v20[23];
    v14 = v20[21];
    sub_268F9B294();
    v2 = sub_268DC7AE8();
    v12 = *v2;
    MEMORY[0x277D82BE0](*v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v11 = v3;
    MEMORY[0x277D82BE0](v13);
    v20[18] = v13;
    sub_268D55698();
    v9 = sub_268F9AE74();
    v10 = v4;
    v11[3] = MEMORY[0x277D837D0];
    v11[4] = sub_268CDD224();
    *v11 = v9;
    v11[1] = v10;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    __swift_destroy_boxed_opaque_existential_0(v20 + 2);
    MEMORY[0x277D82BD8](v14);
    v18 = 0;
  }

  v5 = *(v20[12] + 8);
  v6 = v20[12];

  return v5(v18);
}

uint64_t sub_268D474D4()
{
  v13 = v0[25];
  v14 = v0[21];
  v0[12] = v0;
  v1 = v13;
  v0[15] = v13;
  sub_268F9B294();
  v2 = sub_268DC7AE8();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v3;
  v4 = v13;
  v0[16] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v9 = sub_268F9AE64();
  v10 = v5;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v12);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  MEMORY[0x277D82BD8](v14);
  v6 = *(v0[12] + 8);
  v7 = v0[12];

  return v6(0);
}

uint64_t sub_268D477AC()
{
  sub_268D55794();
  v0 = sub_268D356F0();
  v8 = *v0;
  v9 = v0[1];

  v10 = sub_268D478D8(v8, v9);
  if (v10)
  {
    v1 = sub_268D357D0();
    v3 = *v1;
    v4 = v1[1];

    v5 = sub_268F9AE14();

    v6 = [v10 BOOLForKey_];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v10);
    return (v6 ^ 1) & 1;
  }

  else
  {
    return 2;
  }
}

double sub_268D47920()
{
  sub_268D55794();
  v0 = sub_268D356F0();
  v7 = *v0;
  v8 = v0[1];

  v9 = sub_268D478D8(v7, v8);
  MEMORY[0x277D82BE0](v9);
  if (v9)
  {
    v6 = sub_268F9B0A4();
    v1 = sub_268D357D0();
    v3 = *v1;
    v4 = v1[1];

    v5 = sub_268F9AE14();

    [v9 setValue:v6 forKey:v5];
    MEMORY[0x277D82BD8](v5);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v9);
  }

  *&result = MEMORY[0x277D82BD8](v9).n128_u64[0];
  return result;
}

uint64_t sub_268D47A68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC438, &unk_268F9E2E0);
  sub_268F9B734();
  *v0 = 2;
  v0[1] = 9;
  v0[2] = 3;
  v0[3] = 3;
  v0[4] = 1;
  v0[5] = 8;
  v0[6] = 4;
  v0[7] = 10;
  v0[8] = 5;
  v0[9] = 11;
  v0[10] = 6;
  v0[11] = 12;
  v0[12] = 7;
  v0[13] = 14;
  v0[14] = 9;
  v0[15] = 13;
  sub_268CD0F7C();
  type metadata accessor for BCBatteryDeviceAccessoryCategory();
  type metadata accessor for INDeviceCategory();
  sub_268D557F8();
  result = sub_268F9ADA4();
  qword_2802F07A0 = result;
  return result;
}

uint64_t *sub_268D47B78()
{
  if (qword_2802DAF80 != -1)
  {
    swift_once();
  }

  return &qword_2802F07A0;
}

uint64_t sub_268D47BD8()
{
  v1 = *sub_268D47B78();

  return v1;
}

id sub_268D47C08(uint64_t a1, char a2)
{
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v64 = 0;
  v63[0] = 0;
  v63[1] = 0;
  v73 = a1;
  v74 = a2 & 1;
  sub_268D55878();
  v59 = sub_268CF0C44();
  v60 = [v59 connectedDevices];
  if (v60)
  {
    sub_268D559EC();
    v55 = sub_268F9B014();
    MEMORY[0x277D82BD8](v60);
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  v71 = v56;
  MEMORY[0x277D82BD8](v59);

  if (v56)
  {
    v70 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA40, &unk_268F9C870);
    v2 = sub_268F9B734();
    *v3 = 1;
    *(v3 + 8) = 0;
    *(v3 + 16) = 2;
    *(v3 + 24) = 0;
    sub_268CD0F7C();
    v69 = v2;
    v67 = a1;
    v68 = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA50, &qword_268F9E2F0);
    sub_268CD7684();
    sub_268CD7780();
    v54 = sub_268F9AFC4();
    sub_268CD7930(&v69);
    if (v54)
    {
      sub_268F9B284();
      v28 = sub_268DC7AE8();
      v34 = *v28;
      MEMORY[0x277D82BE0](*v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v34);
      v66 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC448, &qword_268F9E2F8);
      sub_268D558DC();
      sub_268F9B234();
      if (v65)
      {
        v32 = [v65 percentCharge];
        MEMORY[0x277D82BD8](v65);
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      return v33;
    }

    else if (a2)
    {
      sub_268F9B284();
      v27 = sub_268DC7AE8();
      v35 = *v27;
      MEMORY[0x277D82BE0](*v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v35);

      return 0;
    }

    else
    {
      v64 = a1;
      sub_268F9B284();
      v4 = sub_268DC7AE8();
      v53 = *v4;
      MEMORY[0x277D82BE0](*v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v52 = v5;
      sub_268CD4334();
      v63[3] = v6;
      v48 = sub_268F9AE74();
      v49 = v7;
      v50 = MEMORY[0x277D837D0];
      v52[3] = MEMORY[0x277D837D0];
      v51 = sub_268CDD224();
      v52[4] = v51;
      *v52 = v48;
      v52[1] = v49;

      v63[2] = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC448, &qword_268F9E2F8);
      sub_268D55964();
      v8 = sub_268F9AE74();
      v52[8] = v50;
      v52[9] = v51;
      v52[5] = v8;
      v52[6] = v9;
      sub_268CD0F7C();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v53);

      sub_268D558DC();
      sub_268F9B254();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC458, &unk_268F9E300);
        sub_268F9B564();
        if (!v62)
        {
          break;
        }

        v47 = [v62 modelNumber];
        if (v47)
        {
          sub_268F9AE24();
          *&v10 = MEMORY[0x277D82BD8](v47).n128_u64[0];
        }

        v46 = [v62 name];
        if (v46)
        {
          sub_268F9AE24();
          MEMORY[0x277D82BD8](v46);
        }

        sub_268F9B284();
        v11 = sub_268DC7AE8();
        v44 = *v11;
        MEMORY[0x277D82BE0](*v11);
        sub_268F9B734();
        v43 = v12;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
        v13 = sub_268F9AE64();
        v42 = MEMORY[0x277D837D0];
        v43[3] = MEMORY[0x277D837D0];
        v43[4] = v51;
        *v43 = v13;
        v43[1] = v14;

        v15 = sub_268F9AE64();
        v43[8] = v42;
        v43[9] = v51;
        v43[5] = v15;
        v43[6] = v16;
        [v62 percentCharge];
        v17 = sub_268F9AE74();
        v43[13] = v42;
        v43[14] = v51;
        v43[10] = v17;
        v43[11] = v18;
        [v62 0x1FB748ED0];
        type metadata accessor for BCBatteryDeviceAccessoryCategory();
        sub_268F9AE64();
        v19 = sub_268F9AF74();
        v43[18] = v42;
        v43[19] = v51;
        v43[15] = v19;
        v43[16] = v20;
        sub_268CD0F7C();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v44);
        v45 = *sub_268D47B78();

        [v62 0x1FB748ED0];
        type metadata accessor for INDeviceCategory();
        sub_268D557F8();
        sub_268F9ADC4();

        if (v61)
        {
          v41 = 0;
        }

        else
        {
          sub_268CD7818();
          v41 = sub_268F9AE04();
        }

        if (v41)
        {
          sub_268F9B284();
          v21 = sub_268DC7AE8();
          v38 = *v21;
          MEMORY[0x277D82BE0](*v21);
          sub_268F9B734();
          v37 = v22;
          [v62 0x1FAAD6D8BLL];
          v23 = sub_268F9AE74();
          v36 = MEMORY[0x277D837D0];
          v37[3] = MEMORY[0x277D837D0];
          v37[4] = v51;
          *v37 = v23;
          v37[1] = v24;
          v25 = sub_268F9AE64();
          v37[8] = v36;
          v37[9] = v51;
          v37[5] = v25;
          v37[6] = v26;
          sub_268CD0F7C();
          sub_268F9AC14();

          v39 = [v62 0x1FAAD6D8BLL];

          (MEMORY[0x277D82BD8])();
          sub_268CD7930(v63);

          return v39;
        }

        (MEMORY[0x277D82BD8])();
      }

      sub_268CD7930(v63);

      return 0;
    }
  }

  else
  {
    sub_268F9B294();
    v29 = sub_268DC7AE8();
    v31 = *v29;
    MEMORY[0x277D82BE0](*v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v31);

    return 0;
  }
}

uint64_t sub_268D48AD4(uint64_t a1, uint64_t a2)
{
  memset(__b, 0, sizeof(__b));
  v15 = a1;
  v16 = a2;
  v14 = v2;
  v10 = [objc_opt_self() currentNotificationSettingsCenter];
  v11 = [v10 allNotificationSources];
  MEMORY[0x277D82BD8](v10);
  sub_268D54D5C();
  sub_268D54DC0();
  sub_268F9B184();
  sub_268F9B1A4();
  MEMORY[0x277D82BD8](v11);
  memcpy(__b, v17, sizeof(__b));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC3A8, &qword_268F9E2A0);
    sub_268F9B1B4();
    if (!v12)
    {
      break;
    }

    v6 = [v12 sourceIdentifier];
    v3 = sub_268F9AE24();
    v7 = MEMORY[0x26D62DB50](v3);

    MEMORY[0x277D82BD8](v6);
    if (v7)
    {
      (MEMORY[0x277D82BD8])();
      sub_268D54E40(__b);
      v5 = 1;
      return v5 & 1;
    }

    (MEMORY[0x277D82BD8])();
  }

  sub_268D54E40(__b);
  v5 = 0;
  return v5 & 1;
}

double sub_268D48CFC(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v38 = 0;
  v36 = 0;
  v34 = 0;
  v41 = a1;
  v39 = a2;
  v40 = a3;
  sub_268D55A50();
  v28 = sub_268CF0C44();
  v37 = v28;
  [v28 setShouldRunHandleIntent_];
  v30 = sub_268F2736C(a1);
  if (v30)
  {
    v36 = v30;
    v3 = sub_268DC7AE8();
    v21 = *v3;
    MEMORY[0x277D82BE0](*v3);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v20 = v4;
    MEMORY[0x277D82BE0](v30);
    v35 = v30;
    sub_268D55AB4();
    sub_268D55B18();
    v18 = sub_268F9AE74();
    v19 = v5;
    v20[3] = MEMORY[0x277D837D0];
    v20[4] = sub_268CDD224();
    *v20 = v18;
    v20[1] = v19;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v21);
    sub_268D55B98();
    v22 = sub_268CF0C44();
    v34 = v22;
    v23 = [v30 backingStore];
    v24 = [v23 data];
    if (v24)
    {
      v14 = sub_268F99184();
      v15 = v6;
      MEMORY[0x277D82BD8](v24);
      v16 = v14;
      v17 = v15;
    }

    else
    {
      v16 = 0;
      v17 = 0xF000000000000000;
    }

    if ((v17 & 0xF000000000000000) == 0xF000000000000000)
    {
      v13 = 0;
    }

    else
    {
      v12 = sub_268F99164();
      sub_268D55C74(v16, v17);
      v13 = v12;
    }

    [v22 setData_];
    v10 = [v30 typeName];
    sub_268F9AE24();
    v11 = sub_268F9AE14();

    [v22 setTypeName_];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BE0](v22);
    [v28 setIntent_];
    MEMORY[0x277D82BD8](v22);
    sub_268D35D60((v27 + 16), v31);
    if (v32)
    {
      sub_268CDF978(v31, __dst);
    }

    else
    {
      sub_268F99764();
      if (v32)
      {
        sub_268D28414(v31);
      }
    }

    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);

    MEMORY[0x277D82BE0](a1);
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = v27;
    v9[5] = a1;
    sub_268D55C10();
    sub_268F99A24();

    __swift_destroy_boxed_opaque_existential_0(__dst);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v30);
    *&result = MEMORY[0x277D82BD8](v28).n128_u64[0];
  }

  else
  {

    v8 = sub_268E419BC(6);
    a2(v8, -1);
    MEMORY[0x277D82BD8](v8);

    *&result = MEMORY[0x277D82BD8](v28).n128_u64[0];
  }

  return result;
}

void sub_268D492A4(void *a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v209 = v250;
  v230 = a1;
  v226 = a2;
  v227 = a3;
  v228 = a4;
  v229 = a5;
  v210 = "Intent execution was not successful: %@";
  v211 = &dword_268CBE000;
  v212 = "Error: %@";
  v213 = "Last attempted step: Handle";
  v214 = "RESPONSE CODE: %@";
  v215 = "Last attempted step: Confirm";
  v216 = "Last attempted step: Resolve";
  v217 = "Caught error %@.";
  v303 = 0;
  v301 = 0;
  v302 = 0;
  v300 = 0;
  v299 = 0;
  v218 = 0;
  v297 = 0;
  v295 = 0;
  v271 = 0;
  v272 = 0;
  v270 = 0;
  v266 = 0;
  v267 = 0;
  v262 = 0;
  v263 = 0;
  v219 = sub_268F99A44();
  v220 = *(v219 - 8);
  v221 = v219 - 8;
  v222 = (*(v220 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v219);
  v223 = &v70 - v222;
  v224 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v70 - v222);
  v225 = &v70 - v224;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC538, &qword_268F9E7E8);
  v234 = *(*(v237 - 1) + 64);
  v231 = (v234 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v230);
  v232 = (&v70 - v231);
  v233 = (v234 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v235 = &v70 - v233;
  v236 = (v234 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v238 = (&v70 - v236);
  v303 = v8;
  v301 = v9;
  v302 = v10;
  v300 = v11;
  v299 = v12;
  sub_268D5751C(v8, (&v70 - v236));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_268D575F8(v238);
    v90 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v90);
    v88 = sub_268F9B284();
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v87 = sub_268F9B734();
    v85 = v51;
    sub_268D5751C(v230, v232);
    v83 = sub_268F9AE64();
    v84 = v52;
    v85[3] = MEMORY[0x277D837D0];
    v53 = sub_268CDD224();
    v54 = v83;
    v55 = v84;
    v56 = v85;
    v57 = v53;
    v58 = v87;
    v85[4] = v57;
    *v56 = v54;
    v56[1] = v55;
    sub_268CD0F7C();
    v89 = v58;
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v90);

    v91 = sub_268E419BC(6);
    v226(v91, -1);
    MEMORY[0x277D82BD8](v91);
  }

  else
  {
    v13 = v218;
    v14 = v235;
    MEMORY[0x277D82BD8](*v238);
    sub_268D5751C(v230, v14);
    sub_268D2DFAC(v237, v225, &v298);
    if (!v13)
    {
      v207 = v298;
      v295 = v298;
      v208 = [v298 lastAttemptedStep];
      if (v208)
      {
        v206 = v208;
        v201 = v208;
        v202 = sub_268F9AE24();
        v203 = v15;
        MEMORY[0x277D82BD8](v201);
        v204 = v202;
        v205 = v203;
      }

      else
      {
        v204 = 0;
        v205 = 0;
      }

      v198 = v205;
      v197 = v204;

      v196 = *MEMORY[0x277D484A0];
      MEMORY[0x277D82BE0](v196);
      v199 = sub_268F9AE24();
      v200 = v16;

      v294[0] = v197;
      v294[1] = v198;
      v290 = v199;
      v291 = v200;
      sub_268D28874(v294, &v292);
      if (v291)
      {
        sub_268D28874(&v290, v240);
        if (v293)
        {
          v17 = v209[26];
          v192 = &v239;
          v239 = v17;
          v193 = v240;
          v194 = MEMORY[0x26D62DB50](v240[0], v240[1], v17, *(&v17 + 1));
          sub_268CD9D30(v192);
          sub_268CD9D30(v193);
          sub_268CD9D30(&v290);
          v195 = v194;
          goto LABEL_12;
        }

        sub_268CD9D30(v240);
      }

      else if (!v293)
      {
        sub_268CD9D30(&v290);
        v195 = 1;
LABEL_12:
        v191 = v195;

        MEMORY[0x277D82BD8](v196);
        if (v191)
        {

          v189 = *sub_268DC7AE8();
          MEMORY[0x277D82BE0](v189);
          v187 = sub_268F9B284();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
          v188 = sub_268F9B734();
          sub_268F9AC04();

          MEMORY[0x277D82BD8](v189);

          v190 = sub_268E419BC(6);
          v226(v190, -1);
          MEMORY[0x277D82BD8](v190);

          goto LABEL_82;
        }

        v184 = *MEMORY[0x277D48490];
        MEMORY[0x277D82BE0](v184);
        v185 = sub_268F9AE24();
        v186 = v18;

        v289[0] = v197;
        v289[1] = v198;
        v285 = v185;
        v286 = v186;
        sub_268D28874(v289, &v287);
        if (v286)
        {
          sub_268D28874(&v285, v242);
          if (v288)
          {
            v19 = v209[23];
            v180 = &v241;
            v241 = v19;
            v181 = v242;
            v182 = MEMORY[0x26D62DB50](v242[0], v242[1], v19, *(&v19 + 1));
            sub_268CD9D30(v180);
            sub_268CD9D30(v181);
            sub_268CD9D30(&v285);
            v183 = v182;
LABEL_23:
            v179 = v183;

            MEMORY[0x277D82BD8](v184);
            if ((v179 & 1) == 0)
            {

              v172 = *MEMORY[0x277D48498];
              MEMORY[0x277D82BE0](v172);
              v173 = sub_268F9AE24();
              v174 = v20;

              v284[0] = v197;
              v284[1] = v198;
              v280 = v173;
              v281 = v174;
              sub_268D28874(v284, &v282);
              if (v281)
              {
                sub_268D28874(&v280, v244);
                if (v283)
                {
                  v21 = v209[20];
                  v168 = &v243;
                  v243 = v21;
                  v169 = v244;
                  v170 = MEMORY[0x26D62DB50](v244[0], v244[1], v21, *(&v21 + 1));
                  sub_268CD9D30(v168);
                  sub_268CD9D30(v169);
                  sub_268CD9D30(&v280);
                  v171 = v170;
                  goto LABEL_34;
                }

                sub_268CD9D30(v244);
              }

              else if (!v283)
              {
                sub_268CD9D30(&v280);
                v171 = 1;
LABEL_34:
                v167 = v171;

                MEMORY[0x277D82BD8](v172);
                if (v167)
                {

                  v163 = *sub_268DC7AE8();
                  MEMORY[0x277D82BE0](v163);
                  v161 = sub_268F9B284();
                  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
                  v162 = sub_268F9B734();
                  sub_268F9AC04();

                  MEMORY[0x277D82BD8](v163);
                  v164 = sub_268D4A9E0();
                  v165 = v22;
                  v166 = sub_268D4D4C8(v207, v164, v22);

                  v270 = v166;
                  MEMORY[0x277D82BE0](v166);
                  if (v166)
                  {
                    v159 = v166;
                    v157 = v166;
                    sub_268F9AEF4();
                    v155 = v23;
                    v156 = sub_268F9AE14();

                    v158 = [v157 valueForKey_];
                    MEMORY[0x277D82BD8](v156);
                    MEMORY[0x277D82BD8](v157);
                    if (v158)
                    {
                      v154 = v158;
                      v153 = v158;
                      v152 = &v245;
                      sub_268F9B404();
                      sub_268D55CF0(v152, &v246);
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v246 = 0uLL;
                      v247 = 0uLL;
                    }

                    v268 = v246;
                    v269 = v247;
                  }

                  else
                  {
                    v268 = 0uLL;
                    v269 = 0uLL;
                  }

                  if (*(&v269 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      v148 = v248;
                      v149 = 0;
                    }

                    else
                    {
                      v148 = 0;
                      v149 = 1;
                    }

                    v150 = v148;
                    v151 = v149;
                  }

                  else
                  {
                    sub_268D28414(&v268);
                    v150 = 0;
                    v151 = 1;
                  }

                  v146 = v151;
                  v147 = v150;
                  v266 = v150;
                  v267 = v151 & 1;
                  MEMORY[0x277D82BE0](v166);
                  if (v166)
                  {
                    v145 = v166;
                    v143 = v166;
                    sub_268F9AEF4();
                    v141 = v24;
                    v142 = sub_268F9AE14();

                    v144 = [v143 valueForKey_];
                    MEMORY[0x277D82BD8](v142);
                    MEMORY[0x277D82BD8](v143);
                    if (v144)
                    {
                      v140 = v144;
                      v139 = v144;
                      v138 = &v249;
                      sub_268F9B404();
                      sub_268D55CF0(v138, v250);
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      memset(v250, 0, sizeof(v250));
                    }

                    v264 = *v209;
                    v265 = v209[1];
                  }

                  else
                  {
                    v264 = 0uLL;
                    v265 = 0uLL;
                  }

                  if (*(&v265 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      v134 = v251;
                      v135 = 0;
                    }

                    else
                    {
                      v134 = 0;
                      v135 = 1;
                    }

                    v136 = v134;
                    v137 = v135;
                  }

                  else
                  {
                    sub_268D28414(&v264);
                    v136 = 0;
                    v137 = 1;
                  }

                  v122 = v137;
                  v121 = v136;
                  v262 = v136;
                  v132 = 1;
                  v263 = v137 & 1;
                  v130 = *sub_268DC7AE8();
                  MEMORY[0x277D82BE0](v130);
                  v128 = sub_268F9B284();
                  v131 = 1;
                  v127 = sub_268F9B734();
                  v126 = v25;
                  v123 = &v260;
                  v260 = v121;
                  v261 = v122 & 1 & v132;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC488, &qword_268F9E318);
                  v124 = sub_268F9AE64();
                  v125 = v26;
                  v126[3] = MEMORY[0x277D837D0];
                  v27 = sub_268CDD224();
                  v28 = v124;
                  v29 = v125;
                  v30 = v126;
                  v31 = v27;
                  v32 = v127;
                  v126[4] = v31;
                  *v30 = v28;
                  v30[1] = v29;
                  sub_268CD0F7C();
                  v129 = v32;
                  sub_268F9AC04();

                  MEMORY[0x277D82BD8](v130);

                  v133 = [v229 settingMetadata];
                  v256 = v147;
                  v257 = v146 & 1 & v132;
                  v258 = v131;
                  v259 = 0;
                  if (v257)
                  {
                    v120 = 0;
                  }

                  else
                  {
                    v252 = v147;
                    v253 = v146 & 1;
                    v120 = v147 == v258;
                  }

                  if (v120)
                  {
                    v119 = 1;
                  }

                  else
                  {
                    v119 = 2;
                  }

                  v117 = v119;
                  v33 = sub_268D4AA1C();
                  v118 = sub_268E41A08(v133, 0, v33, v117, 0, 0);
                  v34 = MEMORY[0x277D82BD8](v133);
                  v254 = v121;
                  v255 = v122 & 1;
                  if (v122)
                  {
                    v116 = -1;
                  }

                  else
                  {
                    v116 = v254;
                  }

                  (v226)(v118, v116, v34);
                  MEMORY[0x277D82BD8](v118);

                  MEMORY[0x277D82BD8](v166);
                }

                else
                {

                  v113 = 32;
                  v278 = sub_268F9B724();
                  v279 = v35;
                  v36 = sub_268F9AEF4();
                  v114 = v37;
                  MEMORY[0x26D62E360](v36);

                  v38 = [v207 lastAttemptedStep];
                  v115 = v38;
                  if (v38)
                  {
                    v112 = v115;
                    v107 = v115;
                    v108 = sub_268F9AE24();
                    v109 = v39;
                    MEMORY[0x277D82BD8](v107);
                    v110 = v108;
                    v111 = v109;
                  }

                  else
                  {
                    v110 = 0;
                    v111 = 0;
                  }

                  v274 = v110;
                  v275 = v111;
                  if (v111)
                  {
                    v276 = v274;
                    v277 = v275;
                  }

                  else
                  {
                    v276 = sub_268F9AEF4();
                    v277 = v40;
                    if (v275)
                    {
                      sub_268CD9D30(&v274);
                    }
                  }

                  v92 = v273;
                  v273[0] = v276;
                  v273[1] = v277;
                  v97 = MEMORY[0x277D837D0];
                  v94 = &v278;
                  sub_268F9B704();
                  sub_268CD9D30(v92);
                  v41 = sub_268F9AEF4();
                  v93 = v42;
                  MEMORY[0x26D62E360](v41);

                  v96 = v278;
                  v95 = v279;

                  sub_268CD9D30(v94);
                  v98 = sub_268F9AED4();
                  v106 = v43;
                  v271 = v98;
                  v272 = v43;
                  v104 = *sub_268DC7AE8();
                  MEMORY[0x277D82BE0](v104);
                  v102 = sub_268F9B284();
                  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
                  v101 = sub_268F9B734();
                  v99 = v44;

                  v99[3] = v97;
                  v45 = sub_268CDD224();
                  v46 = v98;
                  v47 = v99;
                  v48 = v106;
                  v49 = v45;
                  v50 = v101;
                  v99[4] = v49;
                  *v47 = v46;
                  v47[1] = v48;
                  sub_268CD0F7C();
                  v103 = v50;
                  sub_268F9AC04();

                  MEMORY[0x277D82BD8](v104);

                  v105 = sub_268E419BC(6);
                  v226(v105, -1);
                  MEMORY[0x277D82BD8](v105);
                }

                goto LABEL_82;
              }

              sub_268D28550(&v280);
              v171 = 0;
              goto LABEL_34;
            }

            v177 = *sub_268DC7AE8();
            MEMORY[0x277D82BE0](v177);
            v175 = sub_268F9B284();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
            v176 = sub_268F9B734();
            sub_268F9AC04();

            MEMORY[0x277D82BD8](v177);

            v178 = sub_268E419BC(6);
            v226(v178, -1);
            MEMORY[0x277D82BD8](v178);

LABEL_82:
            MEMORY[0x277D82BD8](v207);
            return;
          }

          sub_268CD9D30(v242);
        }

        else if (!v288)
        {
          sub_268CD9D30(&v285);
          v183 = 1;
          goto LABEL_23;
        }

        sub_268D28550(&v285);
        v183 = 0;
        goto LABEL_23;
      }

      sub_268D28550(&v290);
      v195 = 0;
      goto LABEL_12;
    }

    v71 = *(v220 + 32);
    v70 = v220 + 32;
    v71(v223, v225, v219);
    sub_268D5724C();
    v81 = swift_allocError();
    v71(v59, v223, v219);
    v60 = v81;
    v297 = v81;
    v80 = *sub_268DC7B48();
    MEMORY[0x277D82BE0](v80);
    v78 = sub_268F9B284();
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v77 = sub_268F9B734();
    v75 = v61;
    v62 = v81;
    v72 = &v296;
    v296 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v73 = sub_268F9AE64();
    v74 = v63;
    v75[3] = MEMORY[0x277D837D0];
    v64 = sub_268CDD224();
    v65 = v73;
    v66 = v74;
    v67 = v75;
    v68 = v64;
    v69 = v77;
    v75[4] = v68;
    *v67 = v65;
    v67[1] = v66;
    sub_268CD0F7C();
    v79 = v69;
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v80);

    v82 = sub_268E419BC(6);
    v226(v82, -1);
    MEMORY[0x277D82BD8](v82);
  }
}