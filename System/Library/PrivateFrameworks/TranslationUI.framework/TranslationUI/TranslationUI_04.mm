char *sub_26F403C8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0128, &qword_26F4A6658);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26F403D98(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_26F403F74(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26F446268(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s13TranslationUI13LanguageModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_26F4A0458(), result = 0, (v7 & 1) != 0))
  {
    if (v4)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    if (v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5;
    }

    if (!v2)
    {
      v9 = v10;
    }

    if (v3)
    {
      return v9;
    }

    else
    {
      return v5 ^ 1;
    }
  }

  return result;
}

uint64_t sub_26F4040F0(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26F4A00A8())
  {
    v4 = sub_26F404B4C();
    v5 = sub_26F404B98(&qword_2806DEF70, sub_26F404B4C);
    result = MEMORY[0x274390B50](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x274390F80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_26F484950(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_26F4A00A8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26F404250(uint64_t a1)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_26F404B98(&qword_2806DFC18, MEMORY[0x277CC9788]);
  result = MEMORY[0x274390B50](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_26F484B68(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_26F4043EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x274390B50](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26F484E48(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26F404484(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26F3E1C44();
  result = MEMORY[0x274390B50](v2, &type metadata for LanguageModel, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v9[0] = *v5;
      v9[1] = v6;
      v9[2] = v5[2];
      sub_26F3E2CA4(v9, v7);
      sub_26F484F98(v7, v9);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26F40452C(uint64_t a1)
{
  v2 = sub_26F49D968();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_26F404B98(&qword_280F663A8, MEMORY[0x277CC95F0]);
  result = MEMORY[0x274390B50](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_26F485190(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_26F4046CC()
{
  result = qword_2806E0108;
  if (!qword_2806E0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0108);
  }

  return result;
}

unint64_t sub_26F40472C()
{
  result = qword_280F65DF8;
  if (!qword_280F65DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65DF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranslationTaskHint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslationTaskHint(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26F4048F8()
{
  result = sub_26F49DAB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for LanguageState(uint64_t result, int a2, int a3)
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

uint64_t sub_26F404994(uint64_t a1)
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

uint64_t sub_26F4049B0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26F4049F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26F404A3C(uint64_t result, int a2, int a3)
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

unint64_t sub_26F404AAC()
{
  result = qword_2806E0110;
  if (!qword_2806E0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0110);
  }

  return result;
}

uint64_t sub_26F404B00()
{
  v0 = sub_26F4A02A8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26F404B4C()
{
  result = qword_2806DEF68;
  if (!qword_2806DEF68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806DEF68);
  }

  return result;
}

uint64_t sub_26F404B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LanguagesProgressView.init(progress:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

__n128 LanguagesProgressView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0178, &qword_26F4A66D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = *v1;
  v9 = *(v1 + 1);
  v8 = *(v1 + 2);
  *v6 = sub_26F49E7F8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0180, &qword_26F4A66D8);
  sub_26F404D58(v9, v8, &v6[*(v10 + 44)], v7);
  sub_26F49F5A8();
  sub_26F49E3D8();
  sub_26F3A5374(v6, a1);
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0188, &qword_26F4A66E0) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_26F404D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_26F49DAB8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_26F49F888();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01A0, &qword_26F4A6778);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v28[-v17];
  *v18 = sub_26F49E6D8();
  *(v18 + 1) = 0x4020000000000000;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01A8, &qword_26F4A6780);
  sub_26F405024(&v18[*(v19 + 44)], a4);
  sub_26F49F878();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v22 = sub_26F49F928();
  v24 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a1;
  *(v25 + 32) = a2;
  sub_26F3A5420(v18, v15);
  sub_26F3A5420(v15, a3);
  v26 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01B0, &qword_26F4A6788) + 48));
  *v26 = v22;
  v26[1] = v24;
  v26[2] = sub_26F40568C;
  v26[3] = v25;

  sub_26F3A5490(v18);

  return sub_26F3A5490(v15);
}

uint64_t sub_26F405024@<X0>(char *a1@<X8>, double a2@<D0>)
{
  v46 = a1;
  v3 = sub_26F49E758();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_26F49EB18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1C8, &qword_26F4A6790);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01B8, &qword_26F4A6798);
  v43 = *(v45 - 8);
  v15 = v43;
  v16 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  sub_26F49E058();
  sub_26F49EB08();
  sub_26F3B18CC(&qword_2806DF1E8, &qword_2806DF1C8, &qword_26F4A6790);
  sub_26F4056B4();
  sub_26F49EF18();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  sub_26F49E748();
  sub_26F49E738();
  v48 = a2 * 100.0;
  sub_26F49E708();
  sub_26F49E738();
  sub_26F49E778();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_26F49EEC8();
  v25 = v24;
  LOBYTE(v10) = v26;
  v47 = sub_26F49EA28();
  v27 = sub_26F49EE78();
  v29 = v28;
  LOBYTE(v6) = v30;
  v32 = v31;
  sub_26F3B8D40(v23, v25, v10 & 1);

  v33 = *(v15 + 16);
  v34 = v44;
  v35 = v20;
  v36 = v20;
  v37 = v45;
  v33(v44, v36, v45);
  v38 = v46;
  v33(v46, v34, v37);
  v39 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01C8, &unk_26F4A67A0) + 48)];
  *v39 = v27;
  *(v39 + 1) = v29;
  LOBYTE(v6) = v6 & 1;
  v39[16] = v6;
  *(v39 + 3) = v32;
  sub_26F3B0EE4(v27, v29, v6);
  v40 = *(v43 + 8);

  v40(v35, v37);
  sub_26F3B8D40(v27, v29, v6);

  return (v40)(v34, v37);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26F40553C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26F405584(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26F4055D4()
{
  result = qword_2806E0190;
  if (!qword_2806E0190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0188, &qword_26F4A66E0);
    sub_26F3B18CC(&qword_2806E0198, &qword_2806E0178, &qword_26F4A66D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0190);
  }

  return result;
}

uint64_t sub_26F40568C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

unint64_t sub_26F4056B4()
{
  result = qword_2806E01C0;
  if (!qword_2806E01C0)
  {
    sub_26F49EB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E01C0);
  }

  return result;
}

uint64_t sub_26F40570C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26F40E5D4(a3, v27 - v11);
  v13 = sub_26F49FC08();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26F3B6B4C(v12, &unk_2806E0710, &qword_26F4A60A0);
  }

  else
  {
    sub_26F49FBF8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26F49FB68();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26F49F958() + 32;
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

      sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);

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

  sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);
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

uint64_t sub_26F4059FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26F40E5D4(a3, v27 - v11);
  v13 = sub_26F49FC08();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26F3B6B4C(v12, &unk_2806E0710, &qword_26F4A60A0);
  }

  else
  {
    sub_26F49FBF8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26F49FB68();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26F49F958() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0278, &qword_26F4A6A98);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);

      return v24;
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

  sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0278, &qword_26F4A6A98);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_26F405D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26F40E5D4(a3, v27 - v11);
  v13 = sub_26F49FC08();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26F3B6B4C(v12, &unk_2806E0710, &qword_26F4A60A0);
  }

  else
  {
    sub_26F49FBF8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26F49FB68();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26F49F958() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0238, &qword_26F4A6A08);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);

      return v24;
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

  sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0238, &qword_26F4A6A08);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_26F406004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26F40E5D4(a3, v27 - v11);
  v13 = sub_26F49FC08();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26F3B6B4C(v12, &unk_2806E0710, &qword_26F4A60A0);
  }

  else
  {
    sub_26F49FBF8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26F49FB68();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26F49F958() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0240, &qword_26F4A6A28);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);

      return v24;
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

  sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0240, &qword_26F4A6A28);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t LanguagesService.__allocating_init(task:)(unsigned __int8 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  LanguagesService.init(task:)(a1);
  return v5;
}

uint64_t LanguagesService.models.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

uint64_t LanguagesService.airplaneModeEnabled.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

Swift::Void __swiftcall LanguagesService.download(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v9 = sub_26F49DCA8();
  __swift_project_value_buffer(v9, qword_280F67EB8);

  v10 = sub_26F49DC88();
  v11 = sub_26F49FDF8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136446210;
    v14 = MEMORY[0x274390900](a1._rawValue, &type metadata for LanguageModel);
    v26 = v2;
    v16 = sub_26F3B38D0(v14, v15, &v27);
    v2 = v26;

    *(v12 + 4) = v16;
    _os_log_impl(&dword_26F39E000, v10, v11, "Requested download of: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x274391F70](v13, -1, -1);
    MEMORY[0x274391F70](v12, -1, -1);
  }

  v17 = *(a1._rawValue + 2);
  if (v17)
  {
    v27 = MEMORY[0x277D84F90];
    sub_26F40333C(0, v17, 0);
    v18 = v27;
    v19 = (a1._rawValue + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;

      sub_26F49D978();
      v27 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_26F40333C(v22 > 1, v23 + 1, 1);
        v18 = v27;
      }

      *(v18 + 16) = v23 + 1;
      (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v8, v4);
      v19 += 6;
      --v17;
    }

    while (v17);
  }

  v24 = objc_opt_self();
  v25 = sub_26F49FAD8();

  [v24 addLanguages:v25 useCellular:*(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_useCellular)];
}

Swift::Void __swiftcall LanguagesService.deleteAll()()
{
  v0 = sub_26F49DAB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v5 = sub_26F49DCA8();
  __swift_project_value_buffer(v5, qword_280F67EB8);
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26F39E000, v6, v7, "Requested delete of all languages.", v8, 2u);
    MEMORY[0x274391F70](v8, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v9 = v20;
  v10 = *(v20 + 16);
  if (v10)
  {
    v20 = MEMORY[0x277D84F90];
    sub_26F40333C(0, v10, 0);
    v11 = v20;
    v12 = (v9 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      sub_26F49D978();
      v20 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_26F40333C(v15 > 1, v16 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v16 + 1;
      (*(v1 + 32))(v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v16, v4, v0);
      v12 += 6;
      --v10;
    }

    while (v10);
  }

  v17 = objc_opt_self();
  v18 = sub_26F49FAD8();

  [v17 removeLanguages_];
}

uint64_t sub_26F406A18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v5;
  return result;
}

uint64_t sub_26F406A98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t LanguagesService.models.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t (*LanguagesService.models.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_26F49DD98();
  return sub_26F40EB7C;
}

uint64_t sub_26F406C44(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D8, &qword_26F4A6848);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D0, &qword_26F4A6840);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t LanguagesService.$models.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D8, &qword_26F4A6848);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D0, &qword_26F4A6840);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LanguagesService.$models.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D8, &qword_26F4A6848);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__models;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D0, &qword_26F4A6840);
  sub_26F49DD78();
  swift_endAccess();
  return sub_26F40EB80;
}

uint64_t LanguagesService.localeModalities.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

uint64_t sub_26F40715C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v5;
  return result;
}

uint64_t sub_26F4071DC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_26F49DDB8();
}

uint64_t LanguagesService.localeModalities.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t (*LanguagesService.localeModalities.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_26F49DD98();
  return sub_26F407368;
}

uint64_t sub_26F407388(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E8, &qword_26F4A68A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E0, &qword_26F4A6898);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t LanguagesService.$localeModalities.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E8, &qword_26F4A68A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E0, &qword_26F4A6898);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LanguagesService.$localeModalities.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E8, &qword_26F4A68A0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__localeModalities;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E0, &qword_26F4A6898);
  sub_26F49DD78();
  swift_endAccess();
  return sub_26F4077B4;
}

void *LanguagesService.asrUnsupportedModels.getter()
{
  v32 = sub_26F49DAB8();
  v0 = *(v32 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v33 = v35;
  if (!v35)
  {
    return MEMORY[0x277D84FA0];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  result = v35;
  v4 = v35[2];
  if (v4)
  {
    v5 = 0;
    v29 = (v0 + 8);
    v6 = v35 + 9;
    v7 = MEMORY[0x277D84F90];
    v26 = v35 + 9;
    v27 = v4;
    v30 = v35;
    do
    {
      v28 = v7;
      v8 = v4 - v5;
      v9 = &v6[6 * v5];
      while (1)
      {
        if (v5 >= result[2])
        {
          __break(1u);
          return result;
        }

        v34 = v8;
        v10 = *(v9 - 5);
        v11 = *(v9 - 4);
        v12 = *(v9 - 3);
        v13 = *(v9 - 16);
        v15 = *(v9 - 1);
        v14 = *v9;
        swift_bridgeObjectRetain_n();

        v16 = v31;
        sub_26F49D978();
        v17 = sub_26F49D9F8();
        (*v29)(v16, v32);
        LOBYTE(v16) = [v33 locale:v17 supportsModality:1];

        if ((v16 & 1) == 0)
        {
          break;
        }

        v9 += 6;
        ++v5;
        v8 = v34 - 1;
        result = v30;
        if (v34 == 1)
        {
          v7 = v28;
          goto LABEL_17;
        }
      }

      v25 = v13;
      v7 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26F4032B0(0, *(v7 + 16) + 1, 1);
        v7 = v35;
      }

      v19 = v25;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26F4032B0((v20 > 1), v21 + 1, 1);
        v19 = v25;
        v7 = v35;
      }

      ++v5;
      *(v7 + 16) = v21 + 1;
      v22 = v7 + 48 * v21;
      *(v22 + 32) = v10;
      *(v22 + 40) = v11;
      *(v22 + 48) = v12;
      *(v22 + 56) = v19;
      *(v22 + 64) = v15;
      *(v22 + 72) = v14;
      result = v30;
      v6 = v26;
      v4 = v27;
    }

    while (v34 != 1);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_17:

  v23 = sub_26F404484(v7);

  return v23;
}

uint64_t sub_26F407AF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v5;
  return result;
}

uint64_t sub_26F407B74(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t LanguagesService.airplaneModeEnabled.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t (*LanguagesService.airplaneModeEnabled.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_26F49DD98();
  return sub_26F40EB7C;
}

void sub_26F407CFC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_26F407D80(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_26F49DD78();
  return swift_endAccess();
}

uint64_t sub_26F407DF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_26F49DD78();
  return swift_endAccess();
}

uint64_t sub_26F407E74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t LanguagesService.$airplaneModeEnabled.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LanguagesService.$airplaneModeEnabled.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__airplaneModeEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD78();
  swift_endAccess();
  return sub_26F40EB80;
}

void sub_26F4082A0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_26F49DD88();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_26F49DD88();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t LanguagesService.init(task:)(unsigned __int8 *a1)
{
  v2 = v1;
  v51 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01F0, &qword_26F4A68A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v42[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01F8, &unk_26F4A68B0);
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v42[-v9];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v44);
  v13 = &v42[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E0, &qword_26F4A6898);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D0, &qword_26F4A6840);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v42[-v22];
  v43 = *a1;
  v24 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__models;
  *&address.sa_len = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  sub_26F49DD68();
  (*(v20 + 32))(v2 + v24, v23, v19);
  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_autoDetectSpeechUnsupportedPairs) = MEMORY[0x277D84FA0];
  v25 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__localeModalities;
  *&address.sa_len = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0200, &qword_26F4A68C0);
  sub_26F49DD68();
  (*(v15 + 32))(v2 + v25, v18, v14);
  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_useCellular) = 0;
  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_askedUser) = 0;
  v26 = OBJC_IVAR____TtC13TranslationUI16LanguagesService_airplaneModeConfiguration;
  *(v2 + v26) = [objc_allocWithZone(type metadata accessor for AirplaneModeConfiguration()) init];
  v27 = sub_26F3B21E4();
  if (v27 == 2)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277CEC5D0]) init];
    v29 = [v28 airplaneMode];

    v27 = v29;
  }

  v30 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__airplaneModeEnabled;
  address.sa_len = v27 & 1;
  sub_26F49DD68();
  (*(v10 + 32))(v2 + v30, v13, v44);
  *&address.sa_data[6] = 0;
  *address.sa_data = 0;
  *&address.sa_len = 528;
  v31 = SCNetworkReachabilityCreateWithAddress(0, &address);
  if (v31)
  {
    v32 = v31;
    type metadata accessor for Reachability();
    swift_allocObject();
    v31 = Reachability.init(networkReachability:)(v32);
  }

  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_reachability) = v31;
  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_subscriptions) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_handle) = 0;
  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_task) = v43;
  LanguagesService.refresh()();
  v33 = *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_airplaneModeConfiguration);
  v34 = sub_26F3B158C();

  *&address.sa_len = v34;
  sub_26F3B0C24(0, &qword_280F65680, 0x277D85C78);
  v35 = sub_26F49FE58();
  v49 = v35;
  v36 = sub_26F49FE38();
  v37 = v45;
  (*(*(v36 - 8) + 56))(v45, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0210, &qword_26F4A68C8);
  sub_26F3B18CC(&qword_280F657A0, &qword_2806E0210, &qword_26F4A68C8);
  sub_26F40DBE8();
  v38 = v46;
  sub_26F49DE08();
  sub_26F3B6B4C(v37, &qword_2806E01F0, &qword_26F4A68A8);

  swift_allocObject();
  swift_weakInit();
  sub_26F3B18CC(&qword_280F657A8, &qword_2806E01F8, &unk_26F4A68B0);
  v39 = v48;
  sub_26F49DE38();

  (*(v47 + 8))(v38, v39);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0218, &unk_26F4A68D0);
  sub_26F3B18CC(&unk_280F656D0, &qword_2806E0218, &unk_26F4A68D0);
  sub_26F49DD38();
  swift_endAccess();

  v40 = *MEMORY[0x277D85DE8];
  return v2;
}

Swift::Void __swiftcall LanguagesService.refresh()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = aBlock - v3;
  v5 = qword_26F4A6AB0[*(v0 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_task)];
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = objc_allocWithZone(MEMORY[0x277CE1B20]);
  aBlock[4] = sub_26F40DC58;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F3F71F8;
  aBlock[3] = &block_descriptor_4;
  v8 = _Block_copy(aBlock);

  v9 = [v7 initWithTaskHint:v5 useDedicatedMachPort:0 observations:v8];
  _Block_release(v8);

  v10 = *(v0 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_handle);
  *(v0 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_handle) = v9;

  v11 = sub_26F49FC08();
  v12 = *(*(v11 - 8) + 56);
  v12(v4, 1, 1, v11);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v0;

  sub_26F40570C(0, 0, v4, &unk_26F4A68E8, v13);

  v12(v4, 1, 1, v11);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v0;

  sub_26F40570C(0, 0, v4, &unk_26F4A68F8, v14);
}

uint64_t sub_26F408DBC(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_26F49DDB8();
  }

  return result;
}

uint64_t LanguagesService.deinit()
{
  v1 = OBJC_IVAR____TtC13TranslationUI16LanguagesService_handle;
  v2 = *(v0 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_handle);
  if (v2)
  {
    [v2 cancel];
  }

  v3 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__models;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D0, &qword_26F4A6840);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_autoDetectSpeechUnsupportedPairs);

  v6 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__localeModalities;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E0, &qword_26F4A6898);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__airplaneModeEnabled;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_reachability);

  v11 = *(v0 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_subscriptions);

  return v0;
}

uint64_t LanguagesService.__deallocating_deinit()
{
  LanguagesService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26F409010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_26F49FBD8();
  v5[5] = sub_26F49FBC8();
  v7 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F4090A8, v7, v6);
}

uint64_t sub_26F4090A8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;

  v4 = v2;
  sub_26F49DDB8();
  v5 = v0[1];

  return v5();
}

void sub_26F409164(unint64_t a1, uint64_t a2)
{
  v90 = a2;
  v3 = sub_26F49F698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F49F6C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v91 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_26F49DAB8();
  v12 = *(v97 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v97);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v98 = &v84 - v17;
  MEMORY[0x28223BE20](v18);
  v99 = &v84 - v19;
  MEMORY[0x28223BE20](v20);
  v103 = &v84 - v21;
  if (a1)
  {
    v85 = v9;
    v86 = v7;
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v22 = sub_26F49DCA8();
    __swift_project_value_buffer(v22, qword_280F67EB8);

    v23 = sub_26F49DC88();
    v24 = sub_26F49FDB8();

    v25 = os_log_type_enabled(v23, v24);
    v92 = v15;
    v89 = v3;
    v88 = v4;
    v87 = v8;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136315138;
      v28 = objc_opt_self();
      sub_26F3B0C24(0, &qword_2806E00B0, 0x277CE1B28);
      v29 = sub_26F49FAD8();
      v30 = [v28 describeObservations_];

      v31 = sub_26F49F8C8();
      v33 = v32;

      v34 = sub_26F3B38D0(v31, v33, &aBlock);

      *(v26 + 4) = v34;
      _os_log_impl(&dword_26F39E000, v23, v24, "Obsv publsh [%s]", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x274391F70](v27, -1, -1);
      MEMORY[0x274391F70](v26, -1, -1);
    }

    v35 = v98;
    if (a1 >> 62)
    {
      v36 = sub_26F4A00A8();
    }

    else
    {
      v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = MEMORY[0x277D84F90];
    if (v36)
    {
      v115 = MEMORY[0x277D84F90];
      sub_26F4032B0(0, v36 & ~(v36 >> 63), 0);
      if (v36 < 0)
      {
        __break(1u);

        __break(1u);
        return;
      }

      v38 = 0;
      v39 = v115;
      v40 = a1;
      v94 = a1 & 0xC000000000000001;
      v41 = v12 + 1;
      v96 = a1;
      v95 = v36;
      v93 = v12 + 1;
      do
      {
        if (v94)
        {
          v42 = MEMORY[0x274390F80](v38, v40);
        }

        else
        {
          v42 = *(v40 + 8 * v38 + 32);
        }

        v43 = v42;
        v44 = [v42 status];
        [v43 progress];
        v101 = v38;
        v102 = v39;
        if (v44 == 2)
        {
          LODWORD(v104) = 1;
          v46 = 0;
        }

        else if (v44 == 1)
        {
          v46 = v45;
          LODWORD(v104) = 0;
        }

        else
        {
          LODWORD(v104) = 1;
          v46 = 1;
        }

        v100 = v43;
        v47 = [v43 locale];
        sub_26F49DA18();

        aBlock = sub_26F49D988();
        v106 = v48;
        v113 = 45;
        v114 = 0xE100000000000000;
        v111 = 95;
        v112 = 0xE100000000000000;
        sub_26F3BDC0C();
        v49 = sub_26F49FFF8();
        v51 = v50;

        aBlock = v49;
        v106 = v51;
        v113 = 45;
        v114 = 0xE100000000000000;
        v111 = 95;
        v112 = 0xE100000000000000;
        v52 = sub_26F49FFF8();
        v54 = v53;

        LOBYTE(aBlock) = v104;

        v55 = v99;
        v104 = v52;
        sub_26F49D978();
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        v56 = sub_26F49D9F8();
        v57 = sub_26F49D9F8();
        v58 = [v56 lt:0 displayNameForContext:v57 inTargetLocale:?];

        if (v58)
        {
          v59 = sub_26F49F8C8();
          v61 = v60;

          v62 = *v41;
          v63 = v97;
          v62(v35, v97);
          v62(v55, v63);
          v64 = v101;
        }

        else
        {
          v62 = *v41;
          v65 = v35;
          v66 = v97;
          v62(v65, v97);
          v67 = v92;
          _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
          v68 = sub_26F49D9F8();
          v69 = sub_26F49D9F8();
          v70 = [v68 lt:0 displaySubnameForContext:v69 inTargetLocale:?];

          v64 = v101;
          if (v70)
          {
            v59 = sub_26F49F8C8();
            v61 = v71;

            v62(v67, v66);
            v62(v99, v66);
          }

          else
          {
            v62(v67, v66);
            v62(v99, v66);

            v59 = v104;
            v61 = v54;
          }

          v63 = v66;
        }

        v72 = aBlock;
        v62(v103, v63);
        v39 = v102;
        v115 = v102;
        v74 = *(v102 + 16);
        v73 = *(v102 + 24);
        v75 = v95;
        if (v74 >= v73 >> 1)
        {
          sub_26F4032B0((v73 > 1), v74 + 1, 1);
          v39 = v115;
        }

        v38 = v64 + 1;
        *(v39 + 16) = v74 + 1;
        v76 = v39 + 48 * v74;
        *(v76 + 32) = v104;
        *(v76 + 40) = v54;
        *(v76 + 48) = v46;
        *(v76 + 56) = v72;
        *(v76 + 64) = v59;
        *(v76 + 72) = v61;
        v40 = v96;
        v35 = v98;
        v41 = v93;
      }

      while (v75 != v38);
      v37 = MEMORY[0x277D84F90];
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    aBlock = v39;

    sub_26F40C594(&aBlock);

    v77 = aBlock;
    sub_26F3B0C24(0, &qword_280F65680, 0x277D85C78);
    v78 = sub_26F49FE58();
    v79 = swift_allocObject();
    *(v79 + 16) = v90;
    *(v79 + 24) = v77;
    v109 = sub_26F40E9EC;
    v110 = v79;
    aBlock = MEMORY[0x277D85DD0];
    v106 = 1107296256;
    v107 = sub_26F3B3308;
    v108 = &block_descriptor_89;
    v80 = _Block_copy(&aBlock);

    v81 = v91;
    sub_26F49F6B8();
    aBlock = v37;
    sub_26F40E9F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0720, &unk_26F4A7E70);
    sub_26F3B18CC(&qword_280F656C8, &unk_2806E0720, &unk_26F4A7E70);
    v82 = v86;
    v83 = v89;
    sub_26F4A0058();
    MEMORY[0x274390C60](0, v81, v82, v80);
    _Block_release(v80);

    (*(v88 + 8))(v82, v83);
    (*(v85 + 8))(v81, v87);
  }
}

uint64_t sub_26F409BD8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_26F49DDB8();
  }

  return result;
}

uint64_t sub_26F409C90()
{
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v1 = sub_26F49DCA8();
  __swift_project_value_buffer(v1, qword_280F67EB8);
  v2 = sub_26F49DC88();
  v3 = sub_26F49FDB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26F39E000, v2, v3, "Bootstrapping language service speech auto-detect unsupported pairs", v4, 2u);
    MEMORY[0x274391F70](v4, -1, -1);
  }

  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0260, &unk_26F4A6A70);
  *v6 = v0;
  v6[1] = sub_26F409E34;

  return MEMORY[0x2822007B8](v0 + 40, 0, 0, 0xD000000000000022, 0x800000026F4ADDC0, sub_26F4118FC, 0, v7);
}

uint64_t sub_26F409E34()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F409F30, 0, 0);
}

uint64_t sub_26F409F30()
{
  v0[8] = v0[5];
  sub_26F49FBD8();
  v0[9] = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F409FCC, v2, v1);
}

uint64_t sub_26F409FCC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];

  v4 = OBJC_IVAR____TtC13TranslationUI16LanguagesService_autoDetectSpeechUnsupportedPairs;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  v6 = v0[1];

  return v6();
}

uint64_t sub_26F40A060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0) - 8) + 64) + 15;
  *(v4 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F40A0FC, 0, 0);
}

uint64_t sub_26F40A0FC()
{
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v1 = sub_26F49DCA8();
  __swift_project_value_buffer(v1, qword_280F67EB8);
  v2 = sub_26F49DC88();
  v3 = sub_26F49FDB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26F39E000, v2, v3, "Bootstrapping locale modalities", v4, 2u);
    MEMORY[0x274391F70](v4, -1, -1);
  }

  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  v7 = sub_26F3B0C24(0, &unk_280F65658, 0x277CE1B30);
  *v6 = v0;
  v6[1] = sub_26F40A2A4;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000012, 0x800000026F4ADDA0, sub_26F411C04, 0, v7);
}

uint64_t sub_26F40A2A4()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F40A3A0, 0, 0);
}

uint64_t sub_26F40A3A0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_26F49FC08();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_26F49FBD8();

  v5 = v3;
  v6 = sub_26F49FBC8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v2;
  v7[5] = v5;
  sub_26F40570C(0, 0, v1, &unk_26F4A6A50, v7);

  v9 = v0[1];

  return v9();
}

Swift::Void __swiftcall LanguagesService.cancelDownloads()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  v5 = sub_26F49FC08();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_26F40570C(0, 0, v4, &unk_26F4A6908, v6);
}

uint64_t sub_26F40A5F8()
{
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v1 = sub_26F49DCA8();
  __swift_project_value_buffer(v1, qword_280F67EB8);
  v2 = sub_26F49DC88();
  v3 = sub_26F49FDB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26F39E000, v2, v3, "Requested cancelling downloads", v4, 2u);
    MEMORY[0x274391F70](v4, -1, -1);
  }

  sub_26F49FBD8();
  *(v0 + 32) = sub_26F49FBC8();
  v6 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F40A748, v6, v5);
}

uint64_t sub_26F40A748()
{
  v2 = v0[3];
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v0[5] = v0[2];

  return MEMORY[0x2822009F8](sub_26F40A804, 0, 0);
}

uint64_t sub_26F40A804()
{
  v1 = Array<A>.downloading.getter(*(v0 + 40));

  _s13TranslationUI16LanguagesServiceC6deleteyySayAA13LanguageModelVGF_0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26F40A884@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26F49DD48();
  *a1 = result;
  return result;
}

uint64_t sub_26F40A974(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_26F40AA48(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

void sub_26F40AA9C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 models];
  sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
  v4 = sub_26F49FAF8();

  *a2 = v4;
}

void sub_26F40AB10(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
  v4 = sub_26F49FAD8();
  [v3 setModels_];
}

id LanguagesServiceBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LanguagesServiceBridge.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = OBJC_IVAR____TtC13TranslationUI22LanguagesServiceBridge_service;
  v19 = 0;
  v8 = type metadata accessor for LanguagesService();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  LanguagesService.init(task:)(&v19);
  *&v1[v7] = v11;
  v12 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC13TranslationUI22LanguagesServiceBridge_subscriptions] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC13TranslationUI22LanguagesServiceBridge_models] = v12;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  sub_26F40AD9C();
  v14 = sub_26F49FC08();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  sub_26F40570C(0, 0, v6, &unk_26F4A6918, v15);

  return v13;
}

uint64_t sub_26F40AD9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01F0, &qword_26F4A68A8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D8, &qword_26F4A6848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0248, &qword_26F4A6A40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC13TranslationUI22LanguagesServiceBridge_service);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D0, &qword_26F4A6840);
  sub_26F49DD78();
  swift_endAccess();
  sub_26F3B0C24(0, &qword_280F65680, 0x277D85C78);
  v16 = sub_26F49FE58();
  v19[1] = v16;
  v17 = sub_26F49FE38();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_26F3B18CC(&qword_2806E0250, &qword_2806E01D8, &qword_26F4A6848);
  sub_26F40DBE8();
  sub_26F49DE08();
  sub_26F3B6B4C(v4, &qword_2806E01F0, &qword_26F4A68A8);

  (*(v6 + 8))(v9, v5);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26F3B18CC(&qword_2806E0258, &qword_2806E0248, &qword_26F4A6A40);
  sub_26F49DE38();

  (*(v11 + 8))(v14, v10);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0218, &unk_26F4A68D0);
  sub_26F3B18CC(&unk_280F656D0, &qword_2806E0218, &unk_26F4A68D0);
  sub_26F49DD38();
  swift_endAccess();
}

uint64_t sub_26F40B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26F49DAB8();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_26F40B2C8;

  return sub_26F412818();
}

uint64_t sub_26F40B2C8(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_26F40B3C8, 0, 0);
}

void sub_26F40B3C8()
{
  v1 = 0;
  v2 = v0[7];
  v3 = *(v2 + 16);
  v4 = v2 + 24;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = v4 + 48 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = (v7 + 48);
    ++v1;
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = v10 == 1 && v9 == 0;
    v7 += 48;
    if (!v11)
    {
      v31 = *(v8 - 5);
      v32 = *(v8 - 4);
      v12 = *v8;
      v33 = *(v8 - 1);

      v34 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26F4032B0(0, v6[2] + 1, 1);
      }

      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_26F4032B0((v13 > 1), v14 + 1, 1);
      }

      v6[2] = v14 + 1;
      v15 = &v6[6 * v14];
      v15[4] = v31;
      v15[5] = v32;
      v15[6] = v9;
      *(v15 + 56) = v10;
      v15[8] = v33;
      v15[9] = v12;
      v4 = v34;
      goto LABEL_2;
    }
  }

  v16 = v0[7];

  v17 = v6[2];
  if (v17)
  {
    v18 = v0[4];
    sub_26F40333C(0, v17, 0);
    v19._rawValue = v5;
    v20 = v6 + 5;
    do
    {
      v21 = v0[5];
      v22 = *(v20 - 1);
      v23 = *v20;

      sub_26F49D978();
      v25 = *(v19._rawValue + 2);
      v24 = *(v19._rawValue + 3);
      if (v25 >= v24 >> 1)
      {
        sub_26F40333C(v24 > 1, v25 + 1, 1);
      }

      v26 = v0[5];
      v27 = v0[3];
      *(v19._rawValue + 2) = v25 + 1;
      (*(v18 + 32))(v19._rawValue + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v25, v26, v27);
      v20 += 6;
      --v17;
    }

    while (v17);
  }

  else
  {

    v19._rawValue = MEMORY[0x277D84F90];
  }

  v28 = v0[5];
  v29 = v0[2];
  LanguagesServiceBridge.download(locales:)(v19);

  v30 = v0[1];

  v30();
}

Swift::Void __swiftcall LanguagesServiceBridge.download(locales:)(Swift::OpaquePointer locales)
{
  v62 = sub_26F49DAB8();
  v3 = *(v62 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v62);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  MEMORY[0x28223BE20](v12);
  v65 = &v53 - v15;
  v16 = *(locales._rawValue + 2);
  v17._rawValue = MEMORY[0x277D84F90];
  if (v16)
  {
    v60 = v14;
    v53 = v1;
    v54 = v13;
    v73 = MEMORY[0x277D84F90];
    sub_26F4032B0(0, v16, 0);
    v17._rawValue = v73;
    v19 = *(v3 + 16);
    v18 = v3 + 16;
    v20 = locales._rawValue + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v56 = (v18 - 8);
    v57 = v19;
    v55 = *(v18 + 56);
    v21 = v62;
    v58 = v11;
    v59 = v8;
    v61 = v18;
    do
    {
      rawValue = v17._rawValue;
      v64 = v16;
      v22 = v65;
      v23 = v57;
      v57(v65, v20, v21);
      v23(v11, v22, v21);
      v71 = sub_26F49D988();
      v72 = v24;
      v69 = 45;
      v70 = 0xE100000000000000;
      v67 = 95;
      v68 = 0xE100000000000000;
      sub_26F3BDC0C();
      v25 = sub_26F49FFF8();
      v27 = v26;

      v71 = v25;
      v72 = v27;
      v69 = 45;
      v70 = 0xE100000000000000;
      v67 = 95;
      v68 = 0xE100000000000000;
      v28 = sub_26F49FFF8();
      v30 = v29;

      LOBYTE(v71) = 1;

      v66 = v28;
      sub_26F49D978();
      v31 = v60;
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v32 = sub_26F49D9F8();
      v33 = sub_26F49D9F8();
      v34 = [v32 lt:0 displayNameForContext:v33 inTargetLocale:?];

      v35 = v56;
      if (v34)
      {
        v36 = sub_26F49F8C8();
        v37 = v31;
        v39 = v38;

        v40 = *v35;
        v41 = v62;
        v40(v37, v62);
        v40(v8, v41);
        v21 = v41;
      }

      else
      {
        v40 = *v56;
        (*v56)(v31, v62);
        v42 = v54;
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        v43 = sub_26F49D9F8();
        v44 = sub_26F49D9F8();
        v45 = [v43 lt:0 displaySubnameForContext:v44 inTargetLocale:?];

        if (v45)
        {
          v36 = sub_26F49F8C8();
          v46 = v42;
          v39 = v47;

          v21 = v62;
          v40(v46, v62);
          v40(v8, v21);
        }

        else
        {
          v21 = v62;
          v40(v42, v62);
          v40(v8, v21);

          v36 = v66;
          v39 = v30;
        }
      }

      v48 = v71;
      v11 = v58;
      v40(v58, v21);
      v40(v65, v21);
      v17._rawValue = rawValue;
      v73 = rawValue;
      v50 = rawValue[2];
      v49 = rawValue[3];
      if (v50 >= v49 >> 1)
      {
        sub_26F4032B0((v49 > 1), v50 + 1, 1);
        v21 = v62;
        v17._rawValue = v73;
      }

      *(v17._rawValue + 2) = v50 + 1;
      v51 = v17._rawValue + 48 * v50;
      *(v51 + 4) = v66;
      *(v51 + 5) = v30;
      *(v51 + 6) = 1;
      v51[56] = v48;
      *(v51 + 8) = v36;
      *(v51 + 9) = v39;
      v20 += v55;
      v16 = v64 - 1;
      v8 = v59;
    }

    while (v64 != 1);
    v1 = v53;
  }

  v52 = *(v1 + OBJC_IVAR____TtC13TranslationUI22LanguagesServiceBridge_service);
  LanguagesService.download(_:)(v17);
}

void sub_26F40BBA4(uint64_t *a1)
{
  v28 = sub_26F49DAB8();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(v6 + 16);
    if (v8)
    {
      v26 = Strong;
      v29 = MEMORY[0x277D84F90];
      sub_26F4A01F8();
      v27 = (v2 + 8);
      v9 = (v6 + 40);
      do
      {
        v15 = *(v9 - 1);
        v16 = *v9;
        v17 = v9[1];
        v18 = *(v9 + 16);
        v19 = *(v9 + 4);
        v20 = objc_opt_self();
        swift_bridgeObjectRetain_n();

        v21 = sub_26F49F898();
        if (v18 == 1)
        {
          if (v17 == 0.0)
          {
            v22 = [v20 discreteProgressWithIdentifier:v21 offlineState:2];
          }

          else
          {
            v22 = [v20 discreteProgressWithIdentifier:v21 offlineState:0];
          }

          v10 = v22;
        }

        else
        {
          v10 = [v20 discreteProgressWithIdentifier:v21 offlineState:1];

          if (v17 > 0.001)
          {
            v11 = v17;
          }

          else
          {
            v11 = 0.001;
          }

          [v10 updatePercentComplete_];
        }

        sub_26F49D978();
        v12 = objc_allocWithZone(MEMORY[0x277CE1B00]);
        v13 = sub_26F49D9F8();
        [v12 initWithLocale:v13 progress:v10];

        (*v27)(v5, v28);

        sub_26F4A01D8();
        v14 = *(v29 + 16);
        sub_26F4A0208();
        sub_26F4A0218();
        sub_26F4A01E8();
        v9 += 6;
        --v8;
      }

      while (v8);
      sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
      v23 = sub_26F49FAD8();

      v24 = v26;
      [v26 setModels_];

      Strong = v23;
    }
  }
}

void *LanguagesServiceBridge.model(locale:)(uint64_t a1)
{
  v3 = [v1 models];
  sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
  v4 = sub_26F49FAF8();

  v7[2] = a1;
  v5 = sub_26F4007E4(sub_26F40DFD4, v7, v4);

  return v5;
}

uint64_t sub_26F40BF4C(id *a1)
{
  v1 = [*a1 ltIdentifier];
  v2 = sub_26F49F8C8();
  v4 = v3;

  sub_26F49D988();
  sub_26F3BDC0C();
  v5 = 1;
  v6 = sub_26F49FFF8();
  v8 = v7;

  if (v2 != v6 || v4 != v8)
  {
    v5 = sub_26F4A0458();
  }

  return v5 & 1;
}

id LanguagesServiceBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F40C3A4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F40C49C;

  return v7(a1);
}

uint64_t sub_26F40C49C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26F40C594(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26F40D6A4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26F40C600(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26F40C600(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26F4A0418();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26F49FB28();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26F40C848(v7, v8, a1, v4);
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
    return sub_26F40C6F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26F40C6F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    sub_26F40EA4C();
    v8 = v7 + 48 * v4 - 48;
    v9 = v6 - v4;
LABEL_5:
    v10 = (v7 + 48 * v4);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = *(v10 + 24);
    v15 = v10[4];
    v16 = v10[5];
    v17 = v9;
    v18 = v8;
    while (1)
    {
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 24);
      v30 = *(v18 + 32);
      v31 = *(v18 + 40);
      result = sub_26F49F858();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v8 += 48;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v19 = *(v18 + 48);
      v20 = *(v18 + 56);
      v21 = *(v18 + 64);
      v22 = *(v18 + 72);
      v23 = *(v18 + 80);
      v24 = *(v18 + 88);
      v25 = *(v18 + 16);
      *(v18 + 48) = *v18;
      *(v18 + 64) = v25;
      *(v18 + 80) = *(v18 + 32);
      *v18 = v19;
      *(v18 + 8) = v20;
      *(v18 + 16) = v21;
      *(v18 + 24) = v22;
      *(v18 + 32) = v23;
      *(v18 + 40) = v24;
      v18 -= 48;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26F40C848(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v109 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_89:
    v7 = *v109;
    if (!*v109)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26F40D35C(v9);
      v9 = result;
    }

    v102 = v5;
    v103 = *(v9 + 2);
    if (v103 >= 2)
    {
      while (1)
      {
        v104 = *v6;
        if (!*v6)
        {
          goto LABEL_126;
        }

        v6 = (v103 - 1);
        v105 = *&v9[16 * v103];
        v5 = *&v9[16 * v103 + 24];
        sub_26F40CF90((v104 + 48 * v105), (v104 + 48 * *&v9[16 * v103 + 16]), v104 + 48 * v5, v7);
        if (v102)
        {
        }

        if (v5 < v105)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26F40D35C(v9);
        }

        if (v103 - 2 >= *(v9 + 2))
        {
          goto LABEL_116;
        }

        v106 = &v9[16 * v103];
        *v106 = v105;
        *(v106 + 1) = v5;
        result = sub_26F40D2D0(v6);
        v103 = *(v9 + 2);
        v6 = a3;
        if (v103 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v11 >= v7)
    {
      v7 = v11;
    }

    else
    {
      v12 = *v6 + 48 * v11;
      v111 = 48 * v10;
      v13 = *v6 + 48 * v10;
      v129 = *v12;
      v131 = *(v12 + 16);
      v133 = *(v12 + 24);
      v135 = *(v12 + 32);
      v137 = *(v12 + 40);
      v114 = *v13;
      v117 = *(v13 + 16);
      v120 = *(v13 + 24);
      v123 = *(v13 + 32);
      v126 = *(v13 + 40);
      sub_26F40EA4C();
      result = sub_26F49F858();
      v14 = v10;
      v15 = result;
      v16 = v14;
      v17 = v14 + 2;
      v18 = (v13 + 136);
      while (v7 != v17)
      {
        v130 = *(v18 - 5);
        v132 = *(v18 - 3);
        v134 = *(v18 - 16);
        v136 = *(v18 - 1);
        v138 = *v18;
        v115 = *(v18 - 11);
        v118 = *(v18 - 9);
        v121 = *(v18 - 64);
        v124 = *(v18 - 7);
        v127 = *(v18 - 6);
        result = sub_26F49F858();
        ++v17;
        v18 += 6;
        if ((v15 & 1) != (result & 1))
        {
          v7 = v17 - 1;
          break;
        }
      }

      v6 = a3;
      if (v15)
      {
        if (v7 < v16)
        {
          goto LABEL_119;
        }

        v10 = v16;
        if (v16 < v7)
        {
          v19 = 48 * v7 - 24;
          v20 = v111 + 40;
          v21 = v7;
          v22 = v16;
          do
          {
            if (v22 != --v21)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v23 = (v32 + v20);
              v24 = *(v32 + v20 - 40);
              v25 = v32 + v19;
              v26 = *(v23 - 3);
              v27 = *(v23 - 16);
              v28 = *(v23 - 1);
              v29 = *v23;
              v30 = *(v25 + 8);
              v31 = *(v25 - 8);
              *(v23 - 5) = *(v25 - 24);
              *(v23 - 3) = v31;
              *(v23 - 1) = v30;
              *(v25 - 24) = v24;
              *(v25 - 8) = v26;
              *v25 = v27;
              *(v25 + 8) = v28;
              *(v25 + 16) = v29;
            }

            ++v22;
            v19 -= 48;
            v20 += 48;
          }

          while (v22 < v21);
        }
      }

      else
      {
        v10 = v16;
      }
    }

    v33 = v6[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_118;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_120;
        }

        if (v10 + a4 < v33)
        {
          v33 = v10 + a4;
        }

        if (v33 < v10)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

    v34 = v7;
LABEL_29:
    v7 = 48;
    if (v34 < v10)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26F40D370(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v36 = *(v9 + 2);
    v35 = *(v9 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_26F40D370((v35 > 1), v36 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v37;
    v38 = &v9[16 * v36];
    *(v38 + 4) = v10;
    *(v38 + 5) = v34;
    v39 = *v109;
    if (!*v109)
    {
      goto LABEL_127;
    }

    v112 = v34;
    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v9 + 4);
          v42 = *(v9 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_49:
          if (v44)
          {
            goto LABEL_106;
          }

          v57 = &v9[16 * v37];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_109;
          }

          v63 = &v9[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_113;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v67 = &v9[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_63:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = &v9[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_111;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_70:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v6)
        {
          goto LABEL_124;
        }

        v79 = *&v9[16 * v78 + 32];
        v80 = *&v9[16 * v40 + 40];
        sub_26F40CF90((*v6 + 48 * v79), (*v6 + 48 * *&v9[16 * v40 + 32]), *v6 + 48 * v80, v39);
        if (v5)
        {
        }

        if (v80 < v79)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26F40D35C(v9);
        }

        if (v78 >= *(v9 + 2))
        {
          goto LABEL_103;
        }

        v81 = &v9[16 * v78];
        *(v81 + 4) = v79;
        *(v81 + 5) = v80;
        result = sub_26F40D2D0(v40);
        v37 = *(v9 + 2);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v9[16 * v37 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_104;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_105;
      }

      v52 = &v9[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_107;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_110;
      }

      if (v56 >= v48)
      {
        v74 = &v9[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_114;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v112;
    if (v112 >= v7)
    {
      goto LABEL_89;
    }
  }

  v113 = v33;
  v107 = v5;
  v82 = *v6;
  sub_26F40EA4C();
  v83 = v82 + 48 * v7 - 48;
  v84 = v10 - v7;
LABEL_81:
  v85 = (v82 + 48 * v7);
  v86 = *v85;
  v87 = v85[1];
  v88 = v85[2];
  v89 = *(v85 + 24);
  v90 = v85[4];
  v91 = v85[5];
  v92 = v84;
  v93 = v83;
  while (1)
  {
    v116 = *v93;
    v119 = *(v93 + 16);
    v122 = *(v93 + 24);
    v125 = *(v93 + 32);
    v128 = *(v93 + 40);
    result = sub_26F49F858();
    if ((result & 1) == 0)
    {
LABEL_80:
      ++v7;
      v83 += 48;
      --v84;
      if (v7 != v113)
      {
        goto LABEL_81;
      }

      v5 = v107;
      v6 = a3;
      v34 = v113;
      goto LABEL_29;
    }

    if (!v82)
    {
      break;
    }

    v94 = *(v93 + 48);
    v95 = *(v93 + 56);
    v96 = *(v93 + 64);
    v97 = *(v93 + 72);
    v98 = *(v93 + 80);
    v99 = *(v93 + 88);
    v100 = *(v93 + 16);
    *(v93 + 48) = *v93;
    *(v93 + 64) = v100;
    *(v93 + 80) = *(v93 + 32);
    *v93 = v94;
    *(v93 + 8) = v95;
    *(v93 + 16) = v96;
    *(v93 + 24) = v97;
    *(v93 + 32) = v98;
    *(v93 + 40) = v99;
    v93 -= 48;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_80;
    }
  }

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
  return result;
}

uint64_t sub_26F40CF90(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 48;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 48;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[48 * v11] <= a4)
    {
      memmove(a4, a2, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 < 48 || v6 <= v7)
    {
      v17 = v6;
    }

    else
    {
      v51 = v4;
      sub_26F40EA4C();
LABEL_23:
      v31 = v5;
      v18 = 0;
      v19 = v12;
      v30 = v6 - 48;
      do
      {
        v20 = v19;
        v12 = &v19[v18];
        v21 = &v19[v18 - 48];
        v22 = (v31 + v18);
        v23 = (v31 + v18 - 48);
        v44 = *&v19[v18 - 32];
        v46 = v19[v18 - 24];
        v48 = *&v19[v18 - 16];
        v50 = *&v19[v18 - 8];
        v33 = *(v6 - 3);
        v35 = *(v6 - 4);
        v37 = *(v6 - 24);
        v39 = *(v6 - 2);
        v41 = *(v6 - 1);
        if (sub_26F49F858())
        {
          v17 = v6 - 48;
          if (v22 != v6)
          {
            v26 = *v30;
            v27 = *(v6 - 1);
            *(v31 + v18 - 32) = *(v6 - 2);
            *(v31 + v18 - 16) = v27;
            *v23 = v26;
          }

          if (v12 <= v51 || (v5 = v31 + v18 - 48, v6 -= 48, v30 <= v7))
          {
            v12 = &v20[v18];
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        if (v22 != v12)
        {
          v24 = *v21;
          v25 = *(v21 + 2);
          *(v31 + v18 - 32) = *(v21 + 1);
          *(v31 + v18 - 16) = v25;
          *v23 = v24;
        }

        v18 -= 48;
        v19 = v20;
        v12 = &v20[v18];
      }

      while (&v20[v18] > v51);
      v17 = v6;
LABEL_35:
      v4 = v51;
    }
  }

  else
  {
    if (a4 != __src || &__src[48 * v9] <= a4)
    {
      memmove(a4, __src, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      sub_26F40EA4C();
      while (1)
      {
        v42 = *v6;
        v43 = *(v6 + 2);
        v45 = v6[24];
        v47 = *(v6 + 4);
        v49 = *(v6 + 5);
        v32 = *v4;
        v34 = *(v4 + 2);
        v36 = v4[24];
        v38 = *(v4 + 4);
        v40 = *(v4 + 5);
        if ((sub_26F49F858() & 1) == 0)
        {
          break;
        }

        v13 = v6;
        v14 = v7 == v6;
        v6 += 48;
        if (!v14)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 += 48;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_16;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (v14)
      {
        goto LABEL_14;
      }

LABEL_13:
      v15 = *v13;
      v16 = *(v13 + 2);
      *(v7 + 1) = *(v13 + 1);
      *(v7 + 2) = v16;
      *v7 = v15;
      goto LABEL_14;
    }

LABEL_16:
    v17 = v7;
  }

  v28 = (v12 - v4) / 48;
  if (v17 != v4 || v17 >= &v4[48 * v28])
  {
    memmove(v17, v4, 48 * v28);
  }

  return 1;
}

uint64_t sub_26F40D2D0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26F40D35C(v3);
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

char *sub_26F40D370(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0270, &qword_26F4A6A80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_26F40D474(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26F40D568;

  return v6(v2 + 32);
}

uint64_t sub_26F40D568()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_26F40D6B8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_26F40D7AC;

  return v6(v2 + 16);
}

uint64_t sub_26F40D7AC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

void _s13TranslationUI16LanguagesServiceC6deleteyySayAA13LanguageModelVGF_0(uint64_t a1)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v7 = sub_26F49DCA8();
  __swift_project_value_buffer(v7, qword_280F67EB8);

  v8 = sub_26F49DC88();
  v9 = sub_26F49FDF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 134349314;
    *(v10 + 4) = *(a1 + 16);

    *(v10 + 12) = 2082;
    v12 = MEMORY[0x274390900](a1, &type metadata for LanguageModel);
    v14 = sub_26F3B38D0(v12, v13, &v25);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_26F39E000, v8, v9, "Requested delete of %{public}ld languages: %{public}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x274391F70](v11, -1, -1);
    MEMORY[0x274391F70](v10, -1, -1);
  }

  else
  {
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v25 = MEMORY[0x277D84F90];
    sub_26F40333C(0, v15, 0);
    v16 = v25;
    v17 = (a1 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      sub_26F49D978();
      v25 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26F40333C(v20 > 1, v21 + 1, 1);
        v16 = v25;
      }

      *(v16 + 16) = v21 + 1;
      (*(v3 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v6, v2);
      v17 += 6;
      --v15;
    }

    while (v15);
  }

  v22 = objc_opt_self();
  v23 = sub_26F49FAD8();

  [v22 removeLanguages_];
}

unint64_t sub_26F40DBE8()
{
  result = qword_280F65688;
  if (!qword_280F65688)
  {
    sub_26F3B0C24(255, &qword_280F65680, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65688);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F40DC78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F409C70(a1, v4, v5, v6);
}

uint64_t sub_26F40DD2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F40A060(a1, v4, v5, v6);
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_26F40DE20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CEEAC;

  return sub_26F40A5D8(a1, v4, v5, v6);
}

uint64_t type metadata accessor for LanguagesService()
{
  result = qword_280F65BE0;
  if (!qword_280F65BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F40DF20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F40B1C8(a1, v4, v5, v6);
}

uint64_t _s13TranslationUI22LanguagesServiceBridgeC6delete6localey10Foundation6LocaleV_tF_0(uint64_t a1)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = v3[2];
  v43 = v17;
  v16(&v40 - v14, a1, v13);
  v42 = v15;
  v48 = sub_26F49D988();
  v49 = v18;
  v46 = 45;
  v47 = 0xE100000000000000;
  v44 = 95;
  v45 = 0xE100000000000000;
  sub_26F3BDC0C();
  v19 = sub_26F49FFF8();
  v21 = v20;

  v48 = v19;
  v49 = v21;
  v46 = 45;
  v47 = 0xE100000000000000;
  v44 = 95;
  v45 = 0xE100000000000000;
  v22 = sub_26F49FFF8();
  v24 = v23;

  LOBYTE(v48) = 1;

  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v25 = sub_26F49D9F8();
  v26 = sub_26F49D9F8();
  v27 = [v25 lt:0 displayNameForContext:v26 inTargetLocale:?];

  if (v27)
  {
    v28 = sub_26F49F8C8();
    v30 = v29;

    v31 = v3[1];
    v32 = v43;
    v31(v8, v43);
  }

  else
  {
    v31 = v3[1];
    v32 = v43;
    v31(v8, v43);
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v33 = sub_26F49D9F8();
    v34 = sub_26F49D9F8();
    v35 = [v33 lt:0 displaySubnameForContext:v34 inTargetLocale:?];

    if (!v35)
    {
      v31(v41, v32);
      v31(v11, v32);

      v28 = v22;
      v30 = v24;
      goto LABEL_6;
    }

    v28 = sub_26F49F8C8();
    v30 = v36;

    v31(v41, v32);
  }

  v31(v11, v32);
LABEL_6:
  v37 = v48;
  v31(v42, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0100, &unk_26F4A6690);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26F4A3150;
  *(v38 + 32) = v22;
  *(v38 + 40) = v24;
  *(v38 + 48) = 1;
  *(v38 + 56) = v37;
  *(v38 + 64) = v28;
  *(v38 + 72) = v30;
  _s13TranslationUI16LanguagesServiceC6deleteyySayAA13LanguageModelVGF_0(v38);
}

void sub_26F40E410()
{
  sub_26F3ED5D4(319, &qword_280F65780, &qword_2806DF750, &unk_26F4A4BB0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26F3ED5D4(319, &qword_280F65770, &qword_2806E0200, &qword_26F4A68C0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26F3B2A20();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_26F40E5D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F40E644(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F3CF3AC;

  return sub_26F40D6B8(a1, v5);
}

uint64_t sub_26F40E6FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F3CEEAC;

  return sub_26F40D6B8(a1, v5);
}

uint64_t sub_26F40E7B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F3CF3AC;

  return sub_26F40D474(a1, v5);
}

uint64_t sub_26F40E874(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26F3CF3AC;

  return sub_26F409010(a1, v4, v5, v7, v6);
}

uint64_t sub_26F40E934(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F3CF3AC;

  return sub_26F40C3A4(a1, v5);
}

uint64_t sub_26F40E9EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_26F409BD8();
}

unint64_t sub_26F40E9F4()
{
  result = qword_280F65710;
  if (!qword_280F65710)
  {
    sub_26F49F698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65710);
  }

  return result;
}

unint64_t sub_26F40EA4C()
{
  result = qword_2806E0268;
  if (!qword_2806E0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0268);
  }

  return result;
}

uint64_t sub_26F40EAA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F3CF3AC;

  return sub_26F40D474(a1, v5);
}

uint64_t static LanguagesStatusService.autoDetectSpeechUnsupportedPairs()()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0260, &unk_26F4A6A70);
  *v2 = v0;
  v2[1] = sub_26F40EC6C;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000022, 0x800000026F4ADDC0, sub_26F4118FC, 0, v3);
}

uint64_t sub_26F40EC6C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F416F8C, 0, 0);
}

uint64_t static LanguagesStatusService.localeModalities()()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = sub_26F3B0C24(0, &unk_280F65658, 0x277CE1B30);
  *v2 = v0;
  v2[1] = sub_26F40EE54;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000012, 0x800000026F4ADDA0, sub_26F411C04, 0, v3);
}

uint64_t sub_26F40EE54()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F40EF50, 0, 0);
}

uint64_t static LanguagesStatusService.selected()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26F416F80;

  return sub_26F412818();
}

void sub_26F40F008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = objc_opt_self();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_26F416CC8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F40F7DC;
  aBlock[3] = &block_descriptor_34;
  v12 = _Block_copy(aBlock);

  [v9 languageAssetsWithOptions:a2 completion:v12];
  _Block_release(v12);
}

char *sub_26F40F1CC(unint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D8, &unk_26F4A6C80);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v62 - v21;
  if (a2)
  {
    v80 = a2;
    v23 = a2;
LABEL_29:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    return sub_26F49FCD8();
  }

  v73 = v16;
  v67 = v13;
  if (!a1)
  {
LABEL_28:
    v80 = 0;
    goto LABEL_29;
  }

  v65 = v20;
  if (a1 >> 62)
  {
    v24 = sub_26F4A00A8();
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x277D84F90];
  if (!v24)
  {
LABEL_27:
    v80 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    sub_26F49FCC8();
    (*(v18 + 8))(v22, v65);
    goto LABEL_28;
  }

  v62 = v22;
  v66 = v10;
  v63 = v18;
  v64 = a3;
  v82 = MEMORY[0x277D84F90];
  result = sub_26F4032B0(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v25 = v82;
    v28 = a1;
    v68 = a1 & 0xC000000000000001;
    v69 = v24;
    v71 = a1;
    v72 = (v7 + 8);
    v70 = v6;
    v29 = v67;
    do
    {
      v75 = v25;
      v30 = v73;
      if (v68)
      {
        v31 = MEMORY[0x274390F80](v27, v28);
      }

      else
      {
        v31 = *(v28 + 8 * v27 + 32);
      }

      v32 = v31;
      v33 = [v31 state];
      if (v33 == 2)
      {
        v37 = 1;
        v36 = 0;
      }

      else if (v33 == 1)
      {
        v34 = [v32 progress];
        [v34 fractionCompleted];
        v36 = v35;

        v37 = 0;
      }

      else
      {
        v37 = 1;
        v36 = 1;
      }

      v74 = v32;
      v38 = [v32 ltIdentifier];
      v39 = sub_26F49F8C8();
      v41 = v40;

      v80 = v39;
      v81 = v41;
      v78 = 45;
      v79 = 0xE100000000000000;
      v76 = 95;
      v77 = 0xE100000000000000;
      sub_26F3BDC0C();
      v42 = sub_26F49FFF8();
      v44 = v43;

      LOBYTE(v80) = v37;

      sub_26F49D978();
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v45 = sub_26F49D9F8();
      v46 = sub_26F49D9F8();
      v47 = [v45 lt:0 displayNameForContext:v46 inTargetLocale:?];

      if (v47)
      {
        v48 = sub_26F49F8C8();
        v50 = v49;

        v51 = *v72;
        (*v72)(v29, v6);
        v51(v30, v6);
      }

      else
      {
        v52 = *v72;
        (*v72)(v29, v6);
        v53 = v66;
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        v54 = sub_26F49D9F8();
        v55 = sub_26F49D9F8();
        v56 = [v54 lt:0 displaySubnameForContext:v55 inTargetLocale:?];

        if (v56)
        {
          v48 = sub_26F49F8C8();
          v50 = v57;

          v52(v53, v6);
          v52(v73, v6);
        }

        else
        {
          v52(v53, v6);
          v52(v73, v6);

          v48 = v42;
          v50 = v44;
        }

        v29 = v67;
      }

      v58 = v80;
      v25 = v75;
      v82 = v75;
      v60 = v75[2];
      v59 = v75[3];
      if (v60 >= v59 >> 1)
      {
        sub_26F4032B0((v59 > 1), v60 + 1, 1);
        v25 = v82;
      }

      ++v27;
      v25[2] = v60 + 1;
      v61 = &v25[6 * v60];
      v61[4] = v42;
      v61[5] = v44;
      v61[6] = v36;
      *(v61 + 56) = v58;
      v61[8] = v48;
      v61[9] = v50;
      v6 = v70;
      v28 = v71;
    }

    while (v69 != v27);
    v18 = v63;
    v22 = v62;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_26F40F7DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
    v4 = sub_26F49FAF8();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t static LanguagesStatusService.available(task:)()
{
  v1 = sub_26F49DAB8();
  v0[25] = v1;
  v2 = *(v1 - 8);
  v0[26] = v2;
  v3 = *(v2 + 64) + 15;
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F40F954, 0, 0);
}

uint64_t sub_26F40F954()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_26F40FA80;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0280, &qword_26F4A6B00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F4100EC;
  v0[13] = &block_descriptor_5;
  v0[14] = v2;
  [v1 languageAssetsWithOptions:16 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F40FA80()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_26F41005C;
  }

  else
  {
    v3 = sub_26F40FB90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

char *sub_26F40FB90()
{
  v53 = v0[24];
  if (v53 >> 62)
  {
    v1 = sub_26F4A00A8();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_23:

    v4 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v1 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_23;
  }

LABEL_3:
  v58 = MEMORY[0x277D84F90];
  result = sub_26F4032B0(0, v1 & ~(v1 >> 63), 0);
  if (v1 < 0)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = v58;
  v51 = (v0[26] + 8);
  v52 = v1;
  do
  {
    if ((v53 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x274390F80](v3, v53);
    }

    else
    {
      v5 = *(v53 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 state];
    v57 = v4;
    if (v7 == 2)
    {
      v55 = 1;
      v10 = 0;
    }

    else if (v7 == 1)
    {
      v8 = [v6 progress];
      [v8 fractionCompleted];
      v10 = v9;

      v55 = 0;
    }

    else
    {
      v55 = 1;
      v10 = 1;
    }

    v11 = v0[28];
    v12 = v0[29];
    v56 = v6;
    v13 = [v6 ltIdentifier];
    v14 = sub_26F49F8C8();
    v16 = v15;

    v0[18] = v14;
    v0[19] = v16;
    v0[20] = 45;
    v0[21] = 0xE100000000000000;
    v0[22] = 95;
    v0[23] = 0xE100000000000000;
    v49 = sub_26F3BDC0C();
    v48 = MEMORY[0x277D837D0];
    v17 = sub_26F49FFF8();
    v19 = v18;

    v54 = v17;
    sub_26F49D978();
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v20 = sub_26F49D9F8();
    v21 = sub_26F49D9F8();
    v22 = [v20 lt:0 displayNameForContext:v21 inTargetLocale:{v48, v49, v49, v49}];

    v24 = v0[28];
    v23 = v0[29];
    if (v22)
    {
      v25 = v0[25];
      v26 = sub_26F49F8C8();
      v28 = v27;

      v29 = *v51;
      (*v51)(v24, v25);
      v29(v23, v25);
      v30 = v54;
    }

    else
    {
      v31 = v0[27];
      v32 = *v51;
      (*v51)(v0[28], v0[25]);
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v33 = sub_26F49D9F8();
      v34 = sub_26F49D9F8();
      v35 = [v33 lt:0 displaySubnameForContext:v34 inTargetLocale:?];

      v36 = v0[29];
      v37 = v0[27];
      v38 = v0[25];
      if (v35)
      {
        v26 = sub_26F49F8C8();
        v50 = v36;
        v39 = v32;
        v28 = v40;

        v39(v37, v38);
        v39(v50, v38);
        v30 = v54;
      }

      else
      {
        v32(v0[27], v0[25]);
        v32(v36, v38);

        v30 = v54;
        v26 = v54;
        v28 = v19;
      }
    }

    v4 = v57;
    v42 = *(v57 + 16);
    v41 = *(v57 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_26F4032B0((v41 > 1), v42 + 1, 1);
      v4 = v57;
    }

    ++v3;
    *(v4 + 16) = v42 + 1;
    v43 = v4 + 48 * v42;
    *(v43 + 32) = v30;
    *(v43 + 40) = v19;
    *(v43 + 48) = v10;
    *(v43 + 56) = v55;
    *(v43 + 64) = v26;
    *(v43 + 72) = v28;
  }

  while (v52 != v3);

LABEL_24:
  v45 = v0[28];
  v44 = v0[29];
  v46 = v0[27];

  v47 = v0[1];

  return v47(v4);
}

uint64_t sub_26F41005C()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[30];

  return v5();
}

uint64_t sub_26F4100EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02A0, &qword_26F4A9B60);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
    **(*(v4 + 64) + 40) = sub_26F49FAF8();

    return swift_continuation_throwingResume();
  }
}

uint64_t static LanguagesStatusService.offline()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26F41027C;

  return sub_26F412B40();
}

uint64_t sub_26F41027C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t static LanguagesStatusService.status(task:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26F410420;

  return sub_26F4133B0();
}

uint64_t sub_26F410420(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t static LanguagesStatusService.refresh(task:useCellular:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C0, &unk_26F4A61B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - v3;
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v5 = sub_26F49DCA8();
  __swift_project_value_buffer(v5, qword_280F67EB8);
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26F39E000, v6, v7, "Requested refresh of language asset query", v8, 2u);
    MEMORY[0x274391F70](v8, -1, -1);
  }

  MEMORY[0x28223BE20](v9);
  *(&v12 - 2) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  (*(v1 + 104))(v4, *MEMORY[0x277D858A0], v0);
  return sub_26F49FD08();
}

uint64_t static LanguagesStatusService.isInstalled(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F41027C;

  return sub_26F413C9C(a1);
}

uint64_t static LanguagesStatusService.languagePairState(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  v3 = type metadata accessor for LocalePair();
  *(v2 + 224) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  v5 = sub_26F49DAB8();
  *(v2 + 240) = v5;
  v6 = *(v5 - 8);
  *(v2 + 248) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 344) = 1;
  v8 = swift_task_alloc();
  *(v2 + 320) = v8;
  *v8 = v2;
  v8[1] = sub_26F410970;

  return sub_26F4133B0();
}

uint64_t sub_26F410970(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v7 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v5 = sub_26F4115A0;
  }

  else
  {
    v5 = sub_26F410A84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26F410A84()
{
  v124 = v0;
  v1 = v0[38];
  v117 = (v0[31] + 16);
  v112 = v0[37];
  v114 = *v117;
  (*v117)(v0[39], v0[27], v0[30]);
  v0[2] = sub_26F49D988();
  v0[3] = v2;
  v0[4] = 45;
  v0[5] = 0xE100000000000000;
  v0[6] = 95;
  v0[7] = 0xE100000000000000;
  v3 = sub_26F3BDC0C();
  v4 = MEMORY[0x277D837D0];
  v5 = sub_26F49FFF8();
  v7 = v6;

  v0[8] = v5;
  v0[10] = 45;
  v0[9] = v7;
  v0[11] = 0xE100000000000000;
  v0[12] = 95;
  v0[13] = 0xE100000000000000;
  v8 = sub_26F49FFF8();
  v10 = v9;

  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v11 = sub_26F49D9F8();
  v12 = sub_26F49D9F8();
  v13 = [v11 lt:0 displayNameForContext:v12 inTargetLocale:{v4, v3, v3, v3}];

  v15 = v0[37];
  v14 = v0[38];
  v113 = v0;
  if (v13)
  {
    v16 = v0[31];
    v17 = v113[30];
    sub_26F49F8C8();

    v18 = *(v16 + 8);
    v18(v15, v17);
    v109 = v18;
    v18(v14, v17);
    v0 = v113;
  }

  else
  {
    v19 = v0[33];
    v109 = *(v0[31] + 8);
    v109(v15, v0[30]);
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v20 = sub_26F49D9F8();
    v21 = sub_26F49D9F8();
    v22 = [v20 lt:0 displaySubnameForContext:v21 inTargetLocale:?];

    v23 = v0[38];
    v24 = v0[33];
    v25 = v0[30];
    if (v22)
    {
      sub_26F49F8C8();

      v109(v24, v25);
      v109(v23, v25);
    }

    else
    {
      v109(v0[33], v0[30]);
      v109(v23, v25);
    }
  }

  v26 = v0[39];
  v27 = v0[36];
  v104 = v0[35];
  v106 = v0[34];
  v28 = v0[30];
  v29 = v0[28];
  v30 = v113[27];
  v109(v26, v28);
  v102 = v29;
  v114(v27, v30 + *(v29 + 20), v28);
  v113[14] = sub_26F49D988();
  v113[15] = v31;
  v113[16] = 45;
  v113[17] = 0xE100000000000000;
  v113[18] = 95;
  v113[19] = 0xE100000000000000;
  v32 = MEMORY[0x277D837D0];
  v33 = sub_26F49FFF8();
  v35 = v34;

  v113[20] = v33;
  v113[21] = v35;
  v113[22] = 45;
  v113[23] = 0xE100000000000000;
  v113[24] = 95;
  v113[25] = 0xE100000000000000;
  v36 = sub_26F49FFF8();
  v38 = v37;

  v115 = v36;
  v118 = v38;
  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v39 = sub_26F49D9F8();
  v40 = sub_26F49D9F8();
  v41 = [v39 lt:0 displayNameForContext:v40 inTargetLocale:{v32, v3, v3, v3}];

  v43 = v113[34];
  v42 = v113[35];
  if (v41)
  {
    v44 = v113[30];
    sub_26F49F8C8();

    v109(v43, v44);
    v109(v42, v44);
  }

  else
  {
    v45 = v113[32];
    v109(v113[34], v113[30]);
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v46 = sub_26F49D9F8();
    v47 = sub_26F49D9F8();
    v48 = [v46 lt:0 displaySubnameForContext:v47 inTargetLocale:?];

    v49 = v113[35];
    v50 = v113[32];
    v51 = v113[30];
    if (v48)
    {
      sub_26F49F8C8();

      v109(v50, v51);
      v109(v49, v51);
    }

    else
    {
      v109(v113[32], v113[30]);
      v109(v49, v51);
    }
  }

  v52 = v113[41];
  v109(v113[36], v113[30]);
  v53 = v52 + 40;
  v110 = *(v52 + 16);
  v54 = v110 + 1;
  while (--v54)
  {
    v55 = *(v53 + 8);
    v56 = *(v53 + 16);
    v57 = *(v53 + 32);
    if (*(v53 - 8) != v8 || *v53 != v10)
    {
      v53 += 48;
      if ((sub_26F4A0458() & 1) == 0)
      {
        continue;
      }
    }

    v59 = (v52 + 56);
    v60 = -1;
    v62 = v115;
    v61 = v118;
    while (1)
    {
      if (v60 - v110 == -1)
      {
        v60 = v113;
        v72 = v113[41];

        goto LABEL_28;
      }

      if (++v60 >= *(v52 + 16))
      {
        break;
      }

      v63 = *(v59 - 1);
      v64 = *v59;
      if (*(v59 - 3) != v62 || *(v59 - 2) != v61)
      {
        v59 += 48;
        v66 = sub_26F4A0458();
        v62 = v115;
        v61 = v118;
        if ((v66 & 1) == 0)
        {
          continue;
        }
      }

      v67 = v113[41];
      v101 = v113[39];
      v103 = v113[38];
      v105 = v113[37];
      v107 = v113[36];
      v108 = v113[35];
      v111 = v113[34];
      v116 = v113[33];
      v119 = v113[32];
      v68 = v113[29];
      v69 = v113[26];

      v120 = v55;
      v121 = v56;
      v122 = v63;
      LOBYTE(v123) = v64;
      LanguageState.combine(_:)(&v122, v69);

      v70 = v113[1];
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_38;
  }

  v60 = v113;
  v71 = v113[41];

LABEL_28:

  if (qword_280F66C10 != -1)
  {
LABEL_38:
    swift_once();
  }

  v73 = *(v60 + 232);
  v74 = *(v60 + 216);
  v75 = sub_26F49DCA8();
  __swift_project_value_buffer(v75, qword_280F67EB8);
  sub_26F3FFF24(v74, v73);
  v76 = sub_26F49DC88();
  v77 = sub_26F49FDD8();
  v78 = os_log_type_enabled(v76, v77);
  v79 = *(v60 + 232);
  if (v78)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v120 = v82;
    *v80 = 136446466;
    sub_26F4A0178();

    v122 = 0x203A656372756F73;
    v123 = 0xE800000000000000;
    v83 = sub_26F49D988();
    MEMORY[0x2743907E0](v83);

    MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
    v84 = v79 + *(v102 + 20);
    v85 = sub_26F49D988();
    MEMORY[0x2743907E0](v85);

    sub_26F416C48(v79, type metadata accessor for LocalePair);
    v86 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v120);

    *(v80 + 4) = v86;
    *(v80 + 12) = 2112;
    sub_26F4148E4();
    v87 = swift_allocError();
    *v88 = 0;
    v89 = sub_26F49D7E8();

    *(v80 + 14) = v89;
    *v81 = v89;
    _os_log_impl(&dword_26F39E000, v76, v77, "Failed to read pair state for pair %{public}s: %@", v80, 0x16u);
    sub_26F3CC31C(v81);
    MEMORY[0x274391F70](v81, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x274391F70](v82, -1, -1);
    MEMORY[0x274391F70](v80, -1, -1);
  }

  else
  {

    sub_26F416C48(v79, type metadata accessor for LocalePair);
  }

  sub_26F4148E4();
  swift_allocError();
  *v90 = 0;
  swift_willThrow();
  v92 = *(v60 + 304);
  v91 = *(v60 + 312);
  v94 = *(v60 + 288);
  v93 = *(v60 + 296);
  v96 = *(v60 + 272);
  v95 = *(v60 + 280);
  v98 = *(v60 + 256);
  v97 = *(v60 + 264);
  v99 = *(v60 + 232);

  v70 = *(v60 + 8);
LABEL_33:

  return v70();
}

uint64_t sub_26F4115A0()
{
  v1 = v0[42];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[29];

  v11 = v0[1];

  return v11();
}

uint64_t static LanguagesStatusService.languagePairPath(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F41027C;

  return sub_26F4151B0(a1);
}

uint64_t static LanguagesStatusService.isReady(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F4117C8;

  return sub_26F4151B0(a1);
}

uint64_t sub_26F4117C8(unsigned __int8 a1)
{
  v3 = a1;
  v4 = *(*v1 + 16);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5((v3 > 5) | (6u >> a1) & 1);
}

void sub_26F4118FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02B0, &qword_26F4A6C98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_26F416E18;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F425AB4;
  aBlock[3] = &block_descriptor_56;
  v10 = _Block_copy(aBlock);

  [v7 autoDetectSpeechUnsupportedPairsWithCompletion_];
  _Block_release(v10);
}

unint64_t sub_26F411AB8(unint64_t result)
{
  v1 = result;
  v12 = MEMORY[0x277D84FA0];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:
    v10 = MEMORY[0x277D84FA0];
LABEL_12:
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02B0, &qword_26F4A6C98);
    return sub_26F49FB88();
  }

  result = sub_26F4A00A8();
  v2 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x274390F80](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6 = [v4 canonicalIdentifier];
      v7 = sub_26F49F8C8();
      v9 = v8;

      sub_26F484E48(&v11, v7, v9);
    }

    while (v2 != v3);
    v10 = v12;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_26F411C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02A8, &qword_26F4A6C90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_26F416D6C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F411E10;
  aBlock[3] = &block_descriptor_50;
  v10 = _Block_copy(aBlock);

  [v7 modalitiesPerLocaleWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_26F411DC0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02A8, &qword_26F4A6C90);
  return sub_26F49FB88();
}

void sub_26F411E10(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_26F411E7C(unsigned __int8 a1)
{
  v1 = 0x6F72687473736170;
  v2 = 0xD000000000000017;
  v3 = 0xD000000000000017;
  if (a1 != 4)
  {
    v3 = 0xD000000000000012;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6563697665446E6FLL;
  if (a1 != 1)
  {
    v4 = 0x6B726F7774656ELL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26F411F4C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = LanguagePairPath.description.getter(*a1);
  v5 = v4;
  if (v3 == LanguagePairPath.description.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26F4A0458();
  }

  return v8 & 1;
}

uint64_t sub_26F411FD4()
{
  v1 = *v0;
  sub_26F4A0528();
  LanguagePairPath.description.getter(v1);
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F412038()
{
  LanguagePairPath.description.getter(*v0);
  sub_26F49F9A8();
}

uint64_t sub_26F41208C()
{
  v1 = *v0;
  sub_26F4A0528();
  LanguagePairPath.description.getter(v1);
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F4120EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s13TranslationUI16LanguagePairPathO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_26F41211C@<X0>(uint64_t *a1@<X8>)
{
  result = LanguagePairPath.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26F412150(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6B726F7774656ELL;
  }

  else
  {
    v4 = 0x6563697665446E6FLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x6B726F7774656ELL;
  }

  else
  {
    v6 = 0x6563697665446E6FLL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26F4A0458();
  }

  return v9 & 1;
}

uint64_t sub_26F4121F8()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F41227C()
{
  *v0;
  sub_26F49F9A8();
}

uint64_t sub_26F4122EC()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F41236C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26F4A02A8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26F4123CC(uint64_t *a1@<X8>)
{
  v2 = 0x6563697665446E6FLL;
  if (*v1)
  {
    v2 = 0x6B726F7774656ELL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26F41240C()
{
  if (*v0)
  {
    result = 0x6B726F7774656ELL;
  }

  else
  {
    result = 0x6563697665446E6FLL;
  }

  *v0;
  return result;
}

uint64_t sub_26F412448(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 24);
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  return _s13TranslationUI13LanguageModelV2eeoiySbAC_ACtFZ_0(&v17, &v12) & 1;
}

uint64_t sub_26F4124C4()
{
  v0 = sub_26F49F958();
  v1 = getenv((v0 + 32));

  if (v1)
  {
    v2 = sub_26F49F9F8();
    v4 = sub_26F3CBEC4(v2, v3);

    if (v4)
    {
      sub_26F4A00F8();
      if (*(v4 + 16) && (v5 = sub_26F45FD44(v21), (v6 & 1) != 0))
      {
        sub_26F3B2DBC(*(v4 + 56) + 32 * v5, v22);
        sub_26F3B2D68(v21);

        if (swift_dynamicCast())
        {
          v7 = sub_26F4A02A8();

          if (v7 <= 1)
          {
            if (qword_280F657C0 != -1)
            {
              swift_once();
            }

            v8 = sub_26F49DCA8();
            __swift_project_value_buffer(v8, qword_280F67DF8);
            v9 = sub_26F49DC88();
            v10 = sub_26F49FDB8();
            if (!os_log_type_enabled(v9, v10))
            {

              return v7;
            }

            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v21[0] = v12;
            *v11 = 136315138;
            if (v7)
            {
              v13 = 0x6B726F7774656ELL;
            }

            else
            {
              v13 = 0x6563697665446E6FLL;
            }

            if (v7)
            {
              v14 = 0xE700000000000000;
            }

            else
            {
              v14 = 0xE800000000000000;
            }

            v15 = sub_26F3B38D0(v13, v14, v21);

            *(v11 + 4) = v15;
            _os_log_impl(&dword_26F39E000, v9, v10, "Model path fixture found %s", v11, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v12);
            MEMORY[0x274391F70](v12, -1, -1);
            v16 = v11;
            goto LABEL_22;
          }
        }
      }

      else
      {

        sub_26F3B2D68(v21);
      }
    }
  }

  if (qword_280F657C0 != -1)
  {
    swift_once();
  }

  v17 = sub_26F49DCA8();
  __swift_project_value_buffer(v17, qword_280F67DF8);
  v9 = sub_26F49DC88();
  v18 = sub_26F49FDB8();
  if (!os_log_type_enabled(v9, v18))
  {

    return 2;
  }

  v7 = 2;
  v19 = swift_slowAlloc();
  *v19 = 0;
  _os_log_impl(&dword_26F39E000, v9, v18, "Model path fixture not found", v19, 2u);
  v16 = v19;
LABEL_22:
  MEMORY[0x274391F70](v16, -1, -1);

  return v7;
}

uint64_t sub_26F412818()
{
  v1 = sub_26F49DAB8();
  v0[25] = v1;
  v2 = *(v1 - 8);
  v0[26] = v2;
  v3 = *(v2 + 64) + 15;
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4128EC, 0, 0);
}

uint64_t sub_26F4128EC()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_26F412A18;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0280, &qword_26F4A6B00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F4100EC;
  v0[13] = &block_descriptor_44;
  v0[14] = v2;
  [v1 languageAssetsWithOptions:32 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F412A18()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_26F416F5C;
  }

  else
  {
    v3 = sub_26F416F58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F412B40()
{
  v1 = sub_26F49DAB8();
  v0[25] = v1;
  v2 = *(v1 - 8);
  v0[26] = v2;
  v3 = *(v2 + 64) + 15;
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F412C14, 0, 0);
}

uint64_t sub_26F412C14()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_26F412D40;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0280, &qword_26F4A6B00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F4100EC;
  v0[13] = &block_descriptor_41;
  v0[14] = v2;
  [v1 languageAssetsWithOptions:64 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F412D40()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_26F413318;
  }

  else
  {
    v3 = sub_26F412E50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

char *sub_26F412E50()
{
  v53 = v0[24];
  if (v53 >> 62)
  {
    v1 = sub_26F4A00A8();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_23:

    v4 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v1 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_23;
  }

LABEL_3:
  v58 = MEMORY[0x277D84F90];
  result = sub_26F4032B0(0, v1 & ~(v1 >> 63), 0);
  if (v1 < 0)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = v58;
  v51 = (v0[26] + 8);
  v52 = v1;
  do
  {
    if ((v53 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x274390F80](v3, v53);
    }

    else
    {
      v5 = *(v53 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 state];
    v57 = v4;
    if (v7 == 2)
    {
      v55 = 1;
      v10 = 0;
    }

    else if (v7 == 1)
    {
      v8 = [v6 progress];
      [v8 fractionCompleted];
      v10 = v9;

      v55 = 0;
    }

    else
    {
      v55 = 1;
      v10 = 1;
    }

    v11 = v0[28];
    v12 = v0[29];
    v56 = v6;
    v13 = [v6 ltIdentifier];
    v14 = sub_26F49F8C8();
    v16 = v15;

    v0[18] = v14;
    v0[19] = v16;
    v0[20] = 45;
    v0[21] = 0xE100000000000000;
    v0[22] = 95;
    v0[23] = 0xE100000000000000;
    v49 = sub_26F3BDC0C();
    v48 = MEMORY[0x277D837D0];
    v17 = sub_26F49FFF8();
    v19 = v18;

    v54 = v17;
    sub_26F49D978();
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v20 = sub_26F49D9F8();
    v21 = sub_26F49D9F8();
    v22 = [v20 lt:0 displayNameForContext:v21 inTargetLocale:{v48, v49, v49, v49}];

    v24 = v0[28];
    v23 = v0[29];
    if (v22)
    {
      v25 = v0[25];
      v26 = sub_26F49F8C8();
      v28 = v27;

      v29 = *v51;
      (*v51)(v24, v25);
      v29(v23, v25);
      v30 = v54;
    }

    else
    {
      v31 = v0[27];
      v32 = *v51;
      (*v51)(v0[28], v0[25]);
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v33 = sub_26F49D9F8();
      v34 = sub_26F49D9F8();
      v35 = [v33 lt:0 displaySubnameForContext:v34 inTargetLocale:?];

      v36 = v0[29];
      v37 = v0[27];
      v38 = v0[25];
      if (v35)
      {
        v26 = sub_26F49F8C8();
        v50 = v36;
        v39 = v32;
        v28 = v40;

        v39(v37, v38);
        v39(v50, v38);
        v30 = v54;
      }

      else
      {
        v32(v0[27], v0[25]);
        v32(v36, v38);

        v30 = v54;
        v26 = v54;
        v28 = v19;
      }
    }

    v4 = v57;
    v42 = *(v57 + 16);
    v41 = *(v57 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_26F4032B0((v41 > 1), v42 + 1, 1);
      v4 = v57;
    }

    ++v3;
    *(v4 + 16) = v42 + 1;
    v43 = v4 + 48 * v42;
    *(v43 + 32) = v30;
    *(v43 + 40) = v19;
    *(v43 + 48) = v10;
    *(v43 + 56) = v55;
    *(v43 + 64) = v26;
    *(v43 + 72) = v28;
  }

  while (v52 != v3);

LABEL_24:
  v45 = v0[28];
  v44 = v0[29];
  v46 = v0[27];

  v47 = v0[1];

  return v47(v4);
}

uint64_t sub_26F413318()
{
  v1 = v0[30];
  swift_willThrow();

  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];

  v5 = v0[1];
  v6 = MEMORY[0x277D84F90];

  return v5(v6);
}

uint64_t sub_26F4133B0()
{
  v1 = sub_26F49DAB8();
  v0[31] = v1;
  v2 = *(v1 - 8);
  v0[32] = v2;
  v3 = *(v2 + 64) + 15;
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F413490, 0, 0);
}

uint64_t sub_26F413490()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_26F4135BC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0280, &qword_26F4A6B00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F4100EC;
  v0[13] = &block_descriptor_37;
  v0[14] = v2;
  [v1 languageAssetsWithOptions:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F4135BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_26F413BF8;
  }

  else
  {
    v3 = sub_26F4136CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

char *sub_26F4136CC()
{
  v1 = v0[30];
  if (v1 >> 62)
  {
    v48 = v0[30];
    v2 = sub_26F4A00A8();
    v1 = v48;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:

    v6 = MEMORY[0x277D84F90];
LABEL_23:
    v50 = v0[35];
    v49 = v0[36];
    v52 = v0[33];
    v51 = v0[34];

    v53 = v0[1];

    return v53(v6);
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = v1;
  v65 = MEMORY[0x277D84F90];
  result = sub_26F4032B0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v65;
    v7 = v3;
    v55 = v3 & 0xC000000000000001;
    v64 = (v0[32] + 8);
    v56 = v2;
    v57 = v3;
    while (1)
    {
      if (v55)
      {
        v8 = MEMORY[0x274390F80](v5, v7);
      }

      else
      {
        v8 = *(v7 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = v0[36];
      v11 = [v8 locale];
      sub_26F49DA18();

      v12 = [v9 state];
      v63 = v6;
      v62 = v9;
      if (v12 == 1)
      {
        v61 = 0;
        v60 = 0;
      }

      else
      {
        v61 = v12 != 2;
        v60 = 1;
      }

      v14 = v0[35];
      v13 = v0[36];
      v15 = v0[34];
      v0[18] = sub_26F49D988();
      v0[19] = v16;
      v0[20] = 45;
      v0[21] = 0xE100000000000000;
      v0[22] = 95;
      v0[23] = 0xE100000000000000;
      v17 = sub_26F3BDC0C();
      v18 = MEMORY[0x277D837D0];
      v19 = sub_26F49FFF8();
      v21 = v20;

      v0[24] = v19;
      v0[25] = v21;
      v0[26] = 45;
      v0[27] = 0xE100000000000000;
      v0[28] = 95;
      v0[29] = 0xE100000000000000;
      v22 = sub_26F49FFF8();
      v24 = v23;

      v59 = v24;
      sub_26F49D978();
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v25 = sub_26F49D9F8();
      v26 = sub_26F49D9F8();
      v27 = [v25 lt:0 displayNameForContext:v26 inTargetLocale:{v18, v17, v17, v17}];

      v29 = v0[34];
      v28 = v0[35];
      if (v27)
      {
        v30 = v0[31];
        v58 = sub_26F49F8C8();
        v32 = v31;

        v33 = *v64;
        (*v64)(v29, v30);
        v33(v28, v30);
      }

      else
      {
        v34 = v0[33];
        v33 = *v64;
        (*v64)(v0[34], v0[31]);
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        v35 = sub_26F49D9F8();
        v36 = sub_26F49D9F8();
        v37 = [v35 lt:0 displaySubnameForContext:v36 inTargetLocale:?];

        v38 = v0[35];
        v39 = v0[33];
        v40 = v0[31];
        if (!v37)
        {
          v33(v0[33], v0[31]);
          v33(v38, v40);
          v42 = v59;

          v58 = v22;
          v32 = v59;
          goto LABEL_16;
        }

        v58 = sub_26F49F8C8();
        v54 = v38;
        v32 = v41;

        v33(v39, v40);
        v33(v54, v40);
      }

      v42 = v59;
LABEL_16:
      v43 = v0[36];
      v44 = v0[31];

      v33(v43, v44);
      v6 = v63;
      v46 = *(v63 + 16);
      v45 = *(v63 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_26F4032B0((v45 > 1), v46 + 1, 1);
        v6 = v63;
      }

      ++v5;
      *(v6 + 16) = v46 + 1;
      v47 = v6 + 48 * v46;
      *(v47 + 32) = v22;
      *(v47 + 40) = v42;
      *(v47 + 48) = v61;
      *(v47 + 56) = v60;
      v7 = v57;
      *(v47 + 64) = v58;
      *(v47 + 72) = v32;
      if (v56 == v5)
      {

        goto LABEL_23;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26F413BF8()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[37];

  return v6();
}

uint64_t sub_26F413C9C(uint64_t a1)
{
  v1[38] = a1;
  v2 = sub_26F49DAB8();
  v1[39] = v2;
  v3 = *(v2 - 8);
  v1[40] = v3;
  v4 = *(v3 + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v5 = type metadata accessor for LocalePair();
  v1[49] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F413DE0, 0, 0);
}

uint64_t sub_26F413DE0()
{
  v18 = v0;
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = v0[38];
  v3 = sub_26F49DCA8();
  __swift_project_value_buffer(v3, qword_280F67EB8);
  sub_26F3FFF24(v2, v1);
  v4 = sub_26F49DC88();
  v5 = sub_26F49FDC8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[50];
  if (v6)
  {
    v8 = v0[49];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136446210;
    sub_26F4A0178();

    v17[1] = 0x203A656372756F73;
    v17[2] = 0xE800000000000000;
    v11 = sub_26F49D988();
    MEMORY[0x2743907E0](v11);

    MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
    v12 = v7 + *(v8 + 20);
    v13 = sub_26F49D988();
    MEMORY[0x2743907E0](v13);

    sub_26F416C48(v7, type metadata accessor for LocalePair);
    v14 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_26F39E000, v4, v5, "Querying whether locale pair is installed: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x274391F70](v10, -1, -1);
    MEMORY[0x274391F70](v9, -1, -1);
  }

  else
  {

    sub_26F416C48(v7, type metadata accessor for LocalePair);
  }

  v15 = swift_task_alloc();
  v0[51] = v15;
  *v15 = v0;
  v15[1] = sub_26F41409C;

  return sub_26F412B40();
}

uint64_t sub_26F41409C(uint64_t a1)
{
  v2 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = a1;

  return MEMORY[0x2822009F8](sub_26F41419C, 0, 0);
}

uint64_t sub_26F41419C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 368);
  v82 = *(*(v0 + 320) + 16);
  v82(*(v0 + 384), *(v0 + 304), *(v0 + 312));
  *(v0 + 112) = sub_26F49D988();
  *(v0 + 120) = v3;
  *(v0 + 128) = 45;
  *(v0 + 136) = 0xE100000000000000;
  *(v0 + 144) = 95;
  *(v0 + 152) = 0xE100000000000000;
  v4 = sub_26F3BDC0C();
  v5 = MEMORY[0x277D837D0];
  v6 = sub_26F49FFF8();
  v8 = v7;

  *(v0 + 160) = v6;
  *(v0 + 176) = 45;
  *(v0 + 168) = v8;
  *(v0 + 184) = 0xE100000000000000;
  *(v0 + 192) = 95;
  *(v0 + 200) = 0xE100000000000000;
  v76 = v5;
  v9 = sub_26F49FFF8();
  v11 = v10;

  v88 = v11;
  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v12 = sub_26F49D9F8();
  v13 = sub_26F49D9F8();
  v14 = [v12 lt:0 displayNameForContext:v13 inTargetLocale:{v76, v4, v4, v4}];

  v16 = *(v0 + 368);
  v15 = *(v0 + 376);
  v87 = v9;
  if (v14)
  {
    v17 = *(v0 + 312);
    v18 = *(v0 + 320);
    v85 = sub_26F49F8C8();
    v86 = v19;

    v20 = *(v18 + 8);
    v20(v16, v17);
    v20(v15, v17);
  }

  else
  {
    v21 = *(v0 + 336);
    v89 = *(*(v0 + 320) + 8);
    v89(v16, *(v0 + 312));
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v22 = sub_26F49D9F8();
    v23 = sub_26F49D9F8();
    v24 = [v22 lt:0 displaySubnameForContext:v23 inTargetLocale:?];

    v25 = *(v0 + 376);
    v26 = *(v0 + 336);
    v27 = *(v0 + 312);
    if (v24)
    {
      v85 = sub_26F49F8C8();
      v86 = v28;

      v20 = v89;
      v89(v26, v27);
      v89(v25, v27);
    }

    else
    {
      v89(*(v0 + 336), *(v0 + 312));
      v89(v25, v27);
      v85 = v9;

      v20 = v89;
    }
  }

  v29 = *(v0 + 392);
  v30 = *(v0 + 360);
  v80 = *(v0 + 352);
  v81 = *(v0 + 344);
  v32 = *(v0 + 304);
  v31 = *(v0 + 312);
  v20(*(v0 + 384), v31);
  v82(v30, v32 + *(v29 + 20), v31);
  *(v0 + 208) = sub_26F49D988();
  *(v0 + 216) = v33;
  *(v0 + 224) = 45;
  *(v0 + 232) = 0xE100000000000000;
  *(v0 + 240) = 95;
  *(v0 + 248) = 0xE100000000000000;
  v34 = MEMORY[0x277D837D0];
  v35 = sub_26F49FFF8();
  v37 = v36;

  *(v0 + 256) = v35;
  *(v0 + 264) = v37;
  *(v0 + 272) = 45;
  *(v0 + 280) = 0xE100000000000000;
  *(v0 + 288) = 95;
  *(v0 + 296) = 0xE100000000000000;
  v78 = v4;
  v79 = v4;
  v77 = v4;
  v38 = sub_26F49FFF8();
  v40 = v39;

  v84 = v38;
  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v41 = sub_26F49D9F8();
  v42 = sub_26F49D9F8();
  v43 = [v41 lt:0 displayNameForContext:v42 inTargetLocale:{v34, v77, v78, v79}];

  v44 = *(v0 + 344);
  v45 = *(v0 + 352);
  if (v43)
  {
    v46 = *(v0 + 312);
    v83 = sub_26F49F8C8();
    v48 = v47;

    v20(v44, v46);
    v20(v45, v46);
    v49 = v87;
  }

  else
  {
    v50 = *(v0 + 328);
    v20(*(v0 + 344), *(v0 + 312));
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v51 = sub_26F49D9F8();
    v52 = sub_26F49D9F8();
    v53 = [v51 lt:0 displaySubnameForContext:v52 inTargetLocale:?];

    v54 = *(v0 + 352);
    v55 = *(v0 + 328);
    v56 = *(v0 + 312);
    if (v53)
    {
      v83 = sub_26F49F8C8();
      v48 = v57;

      v20(v55, v56);
      v20(v54, v56);
    }

    else
    {
      v20(*(v0 + 328), *(v0 + 312));
      v20(v54, v56);

      v83 = v84;
      v48 = v40;
    }

    v49 = v87;
  }

  v58 = *(v0 + 416);
  v20(*(v0 + 360), *(v0 + 312));
  *(v0 + 16) = v49;
  *(v0 + 24) = v88;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = v85;
  *(v0 + 56) = v86;
  v59 = swift_task_alloc();
  *(v59 + 16) = v0 + 16;
  v60 = sub_26F4010D4(sub_26F416CA8, v59, v58);

  v61 = *(v0 + 416);
  if (v60)
  {
    *(v0 + 64) = v84;
    *(v0 + 72) = v40;
    *(v0 + 80) = 0;
    *(v0 + 88) = 1;
    *(v0 + 96) = v83;
    *(v0 + 104) = v48;
    v62 = swift_task_alloc();
    *(v62 + 16) = v0 + 64;
    v63 = sub_26F4010D4(sub_26F416F64, v62, v61);
  }

  else
  {
    v64 = *(v0 + 416);

    v63 = 0;
  }

  v65 = *(v0 + 400);
  v67 = *(v0 + 376);
  v66 = *(v0 + 384);
  v69 = *(v0 + 360);
  v68 = *(v0 + 368);
  v71 = *(v0 + 344);
  v70 = *(v0 + 352);
  v73 = *(v0 + 328);
  v72 = *(v0 + 336);

  v74 = *(v0 + 8);

  return v74(v63 & 1);
}

unint64_t sub_26F4148E4()
{
  result = qword_2806E0288;
  if (!qword_2806E0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0288);
  }

  return result;
}

uint64_t _s13TranslationUI22LanguagesStatusServiceO25languagePairIsPassthroughySbAA06LocaleG0VFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for LocalePair();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v9 = type metadata accessor for Signpost();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F43762C(11, 0, v12);
  v46 = v2;
  v13 = *(v2 + 20);
  v14 = objc_allocWithZone(MEMORY[0x277CE1B38]);
  v15 = sub_26F49D9F8();
  v16 = sub_26F49D9F8();
  v17 = [v14 initWithSourceLocale:v15 targetLocale:v16];

  LOBYTE(v16) = [v17 isVariantPair];
  if (v16)
  {
    goto LABEL_3;
  }

  v18 = objc_allocWithZone(MEMORY[0x277CE1B38]);
  v19 = sub_26F49D9F8();
  v20 = sub_26F49D9F8();
  v21 = [v18 initWithSourceLocale:v19 targetLocale:v20];

  LODWORD(v20) = [v21 isPassthrough];
  if (v20)
  {
LABEL_3:
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v22 = sub_26F49DCA8();
    __swift_project_value_buffer(v22, qword_280F67EB8);
    sub_26F3FFF24(a1, v8);
    v23 = sub_26F49DC88();
    v24 = sub_26F49FDC8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 136446210;
      v47 = 0;
      v48 = 0xE000000000000000;
      v49 = v26;
      sub_26F4A0178();

      v47 = 0x203A656372756F73;
      v48 = 0xE800000000000000;
      v27 = sub_26F49D988();
      MEMORY[0x2743907E0](v27);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v28 = &v8[*(v46 + 20)];
      v29 = sub_26F49D988();
      MEMORY[0x2743907E0](v29);

      v30 = v47;
      v31 = v48;
      sub_26F416C48(v8, type metadata accessor for LocalePair);
      v32 = sub_26F3B38D0(v30, v31, &v49);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_26F39E000, v23, v24, "Pair %{public}s is passthrough", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x274391F70](v26, -1, -1);
      MEMORY[0x274391F70](v25, -1, -1);
    }

    else
    {

      sub_26F416C48(v8, type metadata accessor for LocalePair);
    }

    v33 = 1;
  }

  else
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v34 = sub_26F49DCA8();
    __swift_project_value_buffer(v34, qword_280F67EB8);
    sub_26F3FFF24(a1, v5);
    v35 = sub_26F49DC88();
    v36 = sub_26F49FDC8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 136446210;
      v47 = 0;
      v48 = 0xE000000000000000;
      v49 = v38;
      sub_26F4A0178();

      v47 = 0x203A656372756F73;
      v48 = 0xE800000000000000;
      v39 = sub_26F49D988();
      MEMORY[0x2743907E0](v39);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v40 = &v5[*(v46 + 20)];
      v41 = sub_26F49D988();
      MEMORY[0x2743907E0](v41);

      v42 = v47;
      v43 = v48;
      sub_26F416C48(v5, type metadata accessor for LocalePair);
      v44 = sub_26F3B38D0(v42, v43, &v49);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_26F39E000, v35, v36, "Pair %{public}s is not passthrough", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x274391F70](v38, -1, -1);
      MEMORY[0x274391F70](v37, -1, -1);
    }

    else
    {

      sub_26F416C48(v5, type metadata accessor for LocalePair);
    }

    v33 = 0;
  }

  sub_26F437948(v33);
  sub_26F437AD0();
  sub_26F416C48(v12, type metadata accessor for Signpost);
  return v33;
}

uint64_t sub_26F414F40()
{
  v1 = sub_26F3B2204();
  if (v1 == 2)
  {
    v2 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_26F4150B0;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0298, &unk_26F4A6C70);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26F48828C;
    v0[13] = &block_descriptor_28;
    v0[14] = v3;
    [v2 onDeviceModeEnabledWithDedicatedMachPort:1 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v4 = v0[1];
    v5 = v1 & 1;

    return v4(v5);
  }
}

uint64_t sub_26F4150B0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F415190, 0, 0);
}

uint64_t sub_26F4151B0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for LocalePair();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = *(*(type metadata accessor for Signpost() - 8) + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4152B8, 0, 0);
}

uint64_t sub_26F4152B8()
{
  v28 = v0;
  v1 = v0[2];
  sub_26F43762C(10, 0, v0[11]);
  if (_s13TranslationUI22LanguagesStatusServiceO25languagePairIsPassthroughySbAA06LocaleG0VFZ_0(v1))
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v2 = v0[4];
    v3 = v0[2];
    v4 = sub_26F49DCA8();
    __swift_project_value_buffer(v4, qword_280F67EB8);
    sub_26F3FFF24(v3, v2);
    v5 = sub_26F49DC88();
    v6 = sub_26F49FDB8();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[4];
    if (v7)
    {
      v9 = v0[3];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27[0] = v11;
      *v10 = 136446210;
      sub_26F4A0178();

      v27[1] = 0x203A656372756F73;
      v27[2] = 0xE800000000000000;
      v12 = sub_26F49D988();
      MEMORY[0x2743907E0](v12);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v13 = v8 + *(v9 + 20);
      v14 = sub_26F49D988();
      MEMORY[0x2743907E0](v14);

      sub_26F416C48(v8, type metadata accessor for LocalePair);
      v15 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, v27);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_26F39E000, v5, v6, "Pair %{public}s is passthrough", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x274391F70](v11, -1, -1);
      MEMORY[0x274391F70](v10, -1, -1);
    }

    else
    {

      sub_26F416C48(v8, type metadata accessor for LocalePair);
    }

    v18 = v0[10];
    v19 = v0[11];
    v21 = v0[8];
    v20 = v0[9];
    v23 = v0[6];
    v22 = v0[7];
    v25 = v0[4];
    v24 = v0[5];
    sub_26F437948(1);
    sub_26F437AD0();
    sub_26F416C48(v19, type metadata accessor for Signpost);

    v26 = v0[1];

    return v26(0);
  }

  else
  {
    v16 = swift_task_alloc();
    v0[12] = v16;
    *v16 = v0;
    v16[1] = sub_26F415654;

    return sub_26F414F24();
  }
}

uint64_t sub_26F415654(char a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_26F415754, 0, 0);
}

uint64_t sub_26F415754()
{
  if (*(v0 + 128))
  {
    v1 = sub_26F4A0458();

    if ((v1 & 1) == 0)
    {
      v2 = swift_task_alloc();
      *(v0 + 104) = v2;
      *v2 = v0;
      v2[1] = sub_26F4158B4;

      return static NetworkPathService.isDisconnected()();
    }
  }

  else
  {
  }

  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_26F41658C;
  v5 = *(v0 + 16);

  return sub_26F413C9C(v5);
}

uint64_t sub_26F4158B4(char a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 129) = a1;

  return MEMORY[0x2822009F8](sub_26F4159B4, 0, 0);
}

uint64_t sub_26F4159B4()
{
  v28 = v0;
  if (*(v0 + 129))
  {
    v1 = swift_task_alloc();
    *(v0 + 112) = v1;
    *v1 = v0;
    v1[1] = sub_26F415D3C;
    v2 = *(v0 + 16);

    return sub_26F413C9C(v2);
  }

  else
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 80);
    v5 = *(v0 + 16);
    v6 = sub_26F49DCA8();
    __swift_project_value_buffer(v6, qword_280F67EB8);
    sub_26F3FFF24(v5, v4);
    v7 = sub_26F49DC88();
    v8 = sub_26F49FDB8();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 80);
    if (v9)
    {
      v11 = *(v0 + 24);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27[0] = v13;
      *v12 = 136446210;
      sub_26F4A0178();

      v27[1] = 0x203A656372756F73;
      v27[2] = 0xE800000000000000;
      v14 = sub_26F49D988();
      MEMORY[0x2743907E0](v14);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v15 = v10 + *(v11 + 20);
      v16 = sub_26F49D988();
      MEMORY[0x2743907E0](v16);

      sub_26F416C48(v10, type metadata accessor for LocalePair);
      v17 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, v27);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26F39E000, v7, v8, "Pair %{public}s is available to use via network", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x274391F70](v13, -1, -1);
      MEMORY[0x274391F70](v12, -1, -1);
    }

    else
    {

      sub_26F416C48(v10, type metadata accessor for LocalePair);
    }

    v18 = *(v0 + 80);
    v19 = *(v0 + 88);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v25 = *(v0 + 32);
    v24 = *(v0 + 40);
    sub_26F437948(0);
    sub_26F437AD0();
    sub_26F416C48(v19, type metadata accessor for Signpost);

    v26 = *(v0 + 8);

    return v26(2);
  }
}

uint64_t sub_26F415D3C(char a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 130) = a1;

  return MEMORY[0x2822009F8](sub_26F415E3C, 0, 0);
}

uint64_t sub_26F415E3C()
{
  v61 = v0;
  if ((*(v0 + 130) & 1) == 0)
  {
    v15 = sub_26F3B21E4();
    if (v15 == 2)
    {
      v16 = [objc_allocWithZone(MEMORY[0x277CEC5D0]) init];
      v17 = [v16 airplaneMode];

      if ((v17 & 1) == 0)
      {
LABEL_8:
        if (qword_280F66C10 != -1)
        {
          swift_once();
        }

        v18 = *(v0 + 72);
        v19 = *(v0 + 16);
        v20 = sub_26F49DCA8();
        __swift_project_value_buffer(v20, qword_280F67EB8);
        sub_26F3FFF24(v19, v18);
        v21 = sub_26F49DC88();
        v22 = sub_26F49FDB8();
        v23 = os_log_type_enabled(v21, v22);
        v24 = *(v0 + 72);
        if (v23)
        {
          v25 = *(v0 + 24);
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v58 = v27;
          *v26 = 136446210;
          sub_26F4A0178();

          v59 = 0x203A656372756F73;
          v60 = 0xE800000000000000;
          v28 = sub_26F49D988();
          MEMORY[0x2743907E0](v28);

          MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
          v29 = v24 + *(v25 + 20);
          v30 = sub_26F49D988();
          MEMORY[0x2743907E0](v30);

          sub_26F416C48(v24, type metadata accessor for LocalePair);
          v31 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v58);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_26F39E000, v21, v22, "Pair %{public}s isn't available due to no network", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x274391F70](v27, -1, -1);
          MEMORY[0x274391F70](v26, -1, -1);
        }

        else
        {

          sub_26F416C48(v24, type metadata accessor for LocalePair);
        }

        v33 = 5;
LABEL_23:
        v32 = 1;
        goto LABEL_24;
      }
    }

    else if ((v15 & 1) == 0)
    {
      goto LABEL_8;
    }

    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 64);
    v35 = *(v0 + 16);
    v36 = sub_26F49DCA8();
    __swift_project_value_buffer(v36, qword_280F67EB8);
    sub_26F3FFF24(v35, v34);
    v37 = sub_26F49DC88();
    v38 = sub_26F49FDB8();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 64);
    if (v39)
    {
      v41 = *(v0 + 24);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58 = v43;
      *v42 = 136446210;
      sub_26F4A0178();

      v59 = 0x203A656372756F73;
      v60 = 0xE800000000000000;
      v44 = sub_26F49D988();
      MEMORY[0x2743907E0](v44);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v45 = v40 + *(v41 + 20);
      v46 = sub_26F49D988();
      MEMORY[0x2743907E0](v46);

      sub_26F416C48(v40, type metadata accessor for LocalePair);
      v47 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v58);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_26F39E000, v37, v38, "Pair %{public}s is not available due to airplane mode", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x274391F70](v43, -1, -1);
      MEMORY[0x274391F70](v42, -1, -1);
    }

    else
    {

      sub_26F416C48(v40, type metadata accessor for LocalePair);
    }

    v33 = 4;
    goto LABEL_23;
  }

  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = sub_26F49DCA8();
  __swift_project_value_buffer(v3, qword_280F67EB8);
  sub_26F3FFF24(v2, v1);
  v4 = sub_26F49DC88();
  v5 = sub_26F49FDB8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v58 = v10;
    *v9 = 136446210;
    sub_26F4A0178();

    v59 = 0x203A656372756F73;
    v60 = 0xE800000000000000;
    v11 = sub_26F49D988();
    MEMORY[0x2743907E0](v11);

    MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
    v12 = v7 + *(v8 + 20);
    v13 = sub_26F49D988();
    MEMORY[0x2743907E0](v13);

    sub_26F416C48(v7, type metadata accessor for LocalePair);
    v14 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v58);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_26F39E000, v4, v5, "Pair %{public}s is available on-device", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x274391F70](v10, -1, -1);
    MEMORY[0x274391F70](v9, -1, -1);
  }

  else
  {

    sub_26F416C48(v7, type metadata accessor for LocalePair);
  }

  v32 = 0;
  v33 = 1;
LABEL_24:
  v49 = *(v0 + 80);
  v48 = *(v0 + 88);
  v51 = *(v0 + 64);
  v50 = *(v0 + 72);
  v53 = *(v0 + 48);
  v52 = *(v0 + 56);
  v55 = *(v0 + 32);
  v54 = *(v0 + 40);
  sub_26F437948(v32);
  sub_26F437AD0();
  sub_26F416C48(v48, type metadata accessor for Signpost);

  v56 = *(v0 + 8);

  return v56(v33);
}

uint64_t sub_26F41658C(char a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 131) = a1;

  return MEMORY[0x2822009F8](sub_26F41668C, 0, 0);
}

uint64_t sub_26F41668C()
{
  v44 = v0;
  if (*(v0 + 131))
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 40);
    v2 = *(v0 + 16);
    v3 = sub_26F49DCA8();
    __swift_project_value_buffer(v3, qword_280F67EB8);
    sub_26F3FFF24(v2, v1);
    v4 = sub_26F49DC88();
    v5 = sub_26F49FDB8();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 40);
    if (v6)
    {
      v8 = *(v0 + 24);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v41 = v10;
      *v9 = 136446210;
      sub_26F4A0178();

      v42 = 0x203A656372756F73;
      v43 = 0xE800000000000000;
      v11 = sub_26F49D988();
      MEMORY[0x2743907E0](v11);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v12 = v7 + *(v8 + 20);
      v13 = sub_26F49D988();
      MEMORY[0x2743907E0](v13);

      sub_26F416C48(v7, type metadata accessor for LocalePair);
      v14 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v41);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_26F39E000, v4, v5, "Pair %{public}s is ready to use on-device", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x274391F70](v10, -1, -1);
      MEMORY[0x274391F70](v9, -1, -1);
    }

    else
    {

      sub_26F416C48(v7, type metadata accessor for LocalePair);
    }

    v29 = 0;
    v30 = 1;
  }

  else
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 48);
    v16 = *(v0 + 16);
    v17 = sub_26F49DCA8();
    __swift_project_value_buffer(v17, qword_280F67EB8);
    sub_26F3FFF24(v16, v15);
    v18 = sub_26F49DC88();
    v19 = sub_26F49FDB8();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 48);
    if (v20)
    {
      v22 = *(v0 + 24);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *v23 = 136446210;
      sub_26F4A0178();

      v42 = 0x203A656372756F73;
      v43 = 0xE800000000000000;
      v25 = sub_26F49D988();
      MEMORY[0x2743907E0](v25);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v26 = v21 + *(v22 + 20);
      v27 = sub_26F49D988();
      MEMORY[0x2743907E0](v27);

      sub_26F416C48(v21, type metadata accessor for LocalePair);
      v28 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v41);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_26F39E000, v18, v19, "Pair %{public}s is not available on-device", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x274391F70](v24, -1, -1);
      MEMORY[0x274391F70](v23, -1, -1);
    }

    else
    {

      sub_26F416C48(v21, type metadata accessor for LocalePair);
    }

    v30 = 3;
    v29 = 1;
  }

  v32 = *(v0 + 80);
  v31 = *(v0 + 88);
  v34 = *(v0 + 64);
  v33 = *(v0 + 72);
  v36 = *(v0 + 48);
  v35 = *(v0 + 56);
  v38 = *(v0 + 32);
  v37 = *(v0 + 40);
  sub_26F437948(v29);
  sub_26F437AD0();
  sub_26F416C48(v31, type metadata accessor for Signpost);

  v39 = *(v0 + 8);

  return v39(v30);
}

uint64_t _s13TranslationUI16LanguagePairPathO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_26F4A02A8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26F416BD4()
{
  result = qword_2806E0290;
  if (!qword_2806E0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0290);
  }

  return result;
}

uint64_t sub_26F416C48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_26F416CC8(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F40F1CC(a1, a2, v6);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_8(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_26F416E40(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

unint64_t sub_26F416EDC()
{
  result = qword_2806E02B8;
  if (!qword_2806E02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E02B8);
  }

  return result;
}

uint64_t sub_26F416F90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49D988();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26F416FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F49E678();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_26F3B8DD4(v2, &v16 - v11, &qword_2806DF740, &qword_26F4A4BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F3BBAEC(v12, a1, &qword_2806DF820, &qword_26F4A4D48);
  }

  v14 = *v12;
  sub_26F49FDE8();
  v15 = sub_26F49EC18();
  sub_26F49DBC8();

  sub_26F49E668();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26F41719C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LanguagesView(0);
  sub_26F3B8DD4(v1 + *(v12 + 36), v11, &qword_2806DFB68, &unk_26F4A6DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26F49E1B8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_26F49FDE8();
    v16 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_26F4173A4()
{
  v4 = 0;
  v0 = type metadata accessor for LanguagesService();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return LanguagesService.init(task:)(&v4);
}

uint64_t LanguagesView.init(sourceLocale:targetLocale:selection:showsManageLanguages:requiresOnDeviceAvailability:suggestedLocales:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = a6;
  v14 = type metadata accessor for LanguagesView(0);
  v16 = v14[6];
  v15 = v14[7];
  *(a9 + v15) = 1;
  v17 = v14[9];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  swift_storeEnumTagMultiPayload();
  v18 = a9 + v14[10];
  *v18 = sub_26F4173A4;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  sub_26F3BBAEC(a1, a9, &qword_2806DFB70, &qword_26F4A5238);
  result = sub_26F3BBAEC(a2, a9 + v14[5], &qword_2806DFB70, &qword_26F4A5238);
  v20 = (a9 + v14[11]);
  *v20 = a3;
  v20[1] = a4;
  v20[2] = a5;
  *(a9 + v16) = a8;
  *(a9 + v14[8]) = a7;
  if (v21 != 2)
  {
    *(a9 + v15) = a6 & 1;
  }

  return result;
}

uint64_t sub_26F417560(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26F49DAB8();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = &v44 - v12;
  v13 = type metadata accessor for LanguagesView(0);
  v14 = (v1 + v13[10]);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  type metadata accessor for LanguagesService();
  sub_26F41BF2C(&qword_2806DF810, type metadata accessor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v18 = v49;
  v44 = a1;
  *&v49 = sub_26F49D988();
  *(&v49 + 1) = v19;
  v53[0] = 45;
  v53[1] = 0xE100000000000000;
  v51 = 95;
  v52 = 0xE100000000000000;
  sub_26F3BDC0C();
  v20 = sub_26F49FFF8();
  v22 = v21;

  v23 = (v18 + 56);
  v24 = *(v18 + 16) + 1;
  while (--v24)
  {
    v25 = *(v23 - 1);
    v26 = *v23;
    if (*(v23 - 3) != v20 || *(v23 - 2) != v22)
    {
      v23 += 48;
      if ((sub_26F4A0458() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  v26 = 0;
  v25 = 0;
LABEL_10:

  if (v25)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  if (*(v2 + v13[8]) == 1 && (v28 & 1) == 0)
  {
    return 0;
  }

  v30 = (v2 + v13[11]);
  v31 = *v30;
  v32 = *(v30 + 2);
  v49 = v31;
  v50 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF180, &qword_26F4A70B0);
  MEMORY[0x274390240](v53, v33);
  if (!v53[0])
  {
    v36 = v13[5];
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  v35 = v46;
  MEMORY[0x274390240](v34);
  v37 = v47;
  sub_26F3B8DD4(v35, v10, &qword_2806DEFD8, &qword_26F4A3670);
  v38 = v48;
  if ((*(v37 + 48))(v10, 1, v48) == 1)
  {
    sub_26F3B6B4C(v35, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B6B4C(v10, &qword_2806DEFD8, &qword_26F4A3670);
    return 1;
  }

  else
  {
    v39 = v45;
    (*(v37 + 32))(v45, v10, v38);
    v40 = objc_allocWithZone(MEMORY[0x277CE1B38]);
    v41 = sub_26F49D9F8();
    v42 = sub_26F49D9F8();
    v43 = [v40 initWithSourceLocale:v41 targetLocale:v42];

    LODWORD(v42) = [v43 isVariantPair];
    (*(v37 + 8))(v39, v38);
    sub_26F3B6B4C(v35, &qword_2806DEFD8, &qword_26F4A3670);
    return v42 ^ 1;
  }
}

uint64_t sub_26F417A28()
{
  v1 = (v0 + *(type metadata accessor for LanguagesView(0) + 40));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for LanguagesService();
  sub_26F41BF2C(&qword_2806DF810, type metadata accessor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  if ((v11 & 1) == 0)
  {
    _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
    v6 = v5;
    v7 = sub_26F49F898();
    [v6 BOOLForKey_];

    v8 = [objc_opt_self() sharedConnection];
    if (v8)
    {
      v9 = v8;
      [v8 isOnDeviceOnlyTranslationForced];
    }
  }

  return sub_26F49E768();
}

uint64_t sub_26F417BF4()
{
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  MEMORY[0x28223BE20](v8);
  v60 = &v50 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v13 = type metadata accessor for LanguagesView(0);
  v14 = *(v13 + 24);
  v15 = MEMORY[0x277D84F90];
  if (*(v0 + v14))
  {
    v16 = *(v0 + v14);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v59 = sub_26F404250(v16);

  v17 = (v0 + *(v13 + 40));
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v17 + 16);
  type metadata accessor for LanguagesService();
  sub_26F41BF2C(&qword_2806DF810, type metadata accessor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v21 = v61;
  v22 = *(v61 + 16);
  if (v22)
  {
    v61 = v15;
    sub_26F40333C(0, v22, 0);
    v23 = v61;
    v58 = v21;
    v24 = (v21 + 40);
    v25 = v2;
    do
    {
      v26 = v23;
      v27 = *(v24 - 1);
      v28 = *v24;

      v23 = v26;
      sub_26F49D978();
      v61 = v26;
      v29 = *(v26 + 16);
      v30 = *(v23 + 24);
      if (v29 >= v30 >> 1)
      {
        sub_26F40333C(v30 > 1, v29 + 1, 1);
        v23 = v61;
      }

      *(v23 + 16) = v29 + 1;
      (*(v25 + 32))(v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v29, v12, v1);
      v24 += 6;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    v25 = v2;
  }

  v52 = *(v23 + 16);
  if (v52)
  {
    v32 = 0;
    v57 = v59 + 7;
    v58 = v25 + 16;
    v33 = (v25 + 8);
    v34 = MEMORY[0x277D84F90];
    v53 = (v25 + 32);
    v50 = v25;
    v51 = v23;
    while (v32 < *(v23 + 16))
    {
      v55 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v56 = v34;
      v35 = v25;
      v36 = *(v25 + 72);
      v37 = *(v35 + 16);
      v37(v60, v23 + v55 + v36 * v32, v1);
      if (v59[2] && (v38 = v59, v39 = v59[5], sub_26F41BF2C(&qword_2806DFC18, MEMORY[0x277CC9788]), v40 = sub_26F49F818(), v41 = -1 << *(v38 + 32), v42 = v40 & ~v41, ((*(v57 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
      {
        v43 = ~v41;
        while (1)
        {
          v37(v7, v59[6] + v42 * v36, v1);
          sub_26F41BF2C(qword_2806E07F0, MEMORY[0x277CC9788]);
          v44 = sub_26F49F868();
          v45 = *v33;
          (*v33)(v7, v1);
          if (v44)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          if (((*(v57 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        result = (v45)(v60, v1);
        v23 = v51;
        v34 = v56;
      }

      else
      {
LABEL_21:
        v46 = *v53;
        (*v53)(v54, v60, v1);
        v34 = v56;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26F40333C(0, *(v34 + 16) + 1, 1);
          v34 = v61;
        }

        v49 = *(v34 + 16);
        v48 = *(v34 + 24);
        v23 = v51;
        if (v49 >= v48 >> 1)
        {
          sub_26F40333C(v48 > 1, v49 + 1, 1);
          v23 = v51;
          v34 = v61;
        }

        *(v34 + 16) = v49 + 1;
        result = (v46)(v34 + v55 + v49 * v36, v54, v1);
      }

      ++v32;
      v25 = v50;
      if (v32 == v52)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
LABEL_27:

    return v34;
  }

  return result;
}

uint64_t sub_26F4181BC@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v2 = type metadata accessor for LanguagesView(0);
  v105 = *(v2 - 8);
  v3 = *(v105 + 64);
  MEMORY[0x28223BE20](v2);
  v106 = v4;
  v107 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03A0, &qword_26F4A6FF8);
  v5 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v109 = &v94 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03A8, &qword_26F4A7000);
  v117 = *(v7 - 8);
  v118 = v7;
  v8 = *(v117 + 64);
  MEMORY[0x28223BE20](v7);
  v104 = &v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03B0, &qword_26F4A7008);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v120 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v119 = &v94 - v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03B8, &qword_26F4A7010);
  v15 = *(v113 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v113);
  v18 = &v94 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03C0, &qword_26F4A7018);
  v19 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v21 = &v94 - v20;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03C8, &qword_26F4A7020);
  v22 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v103 = &v94 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03D0, &qword_26F4A7028);
  v102 = *(v24 - 8);
  v25 = *(v102 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v94 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v94 - v32;
  MEMORY[0x28223BE20](v34);
  v110 = &v94 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03D8, &qword_26F4A7030);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v116 = &v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v114 = v2;
  v115 = &v94 - v41;
  v42 = *(v1 + *(v2 + 24));
  if (v42 && *(v42 + 16))
  {
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v99 = ObjCClassFromMetadata;
    v98 = objc_opt_self();
    v44 = [v98 bundleForClass_];
    v101 = v1;
    v45 = v44;
    v46 = sub_26F49D7D8();
    v100 = v33;
    v48 = v47;

    v122 = v46;
    v123 = v48;
    v96 = sub_26F3BDC0C();
    v49 = sub_26F49EED8();
    v94 = &v94;
    v122 = v49;
    v123 = v50;
    v124 = v51 & 1;
    v125 = v52;
    MEMORY[0x28223BE20](v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9B0, &qword_26F4A5060);
    v97 = v27;
    v95 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0448, &qword_26F4A7070);
    sub_26F41BDD4(&qword_2806DF9B8, &qword_2806DF9B0, &qword_26F4A5060);
    sub_26F41C318(&qword_2806E0450, &qword_2806E0448, &qword_26F4A7070);
    v53 = v110;
    sub_26F49F4D8();
    v54 = [v98 bundleForClass_];
    v55 = sub_26F49D7D8();
    v57 = v56;

    v122 = v55;
    v123 = v57;
    v122 = sub_26F49EED8();
    v123 = v58;
    v124 = v59 & 1;
    v125 = v60;
    MEMORY[0x28223BE20](v122);
    v61 = v100;
    sub_26F49F4D8();
    v62 = v102;
    v63 = *(v102 + 16);
    v64 = v95;
    v63(v95, v53, v24);
    v65 = v97;
    v63(v97, v61, v24);
    v66 = v103;
    v63(v103, v64, v24);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0458, &qword_26F4A7078);
    v63((v66 + *(v67 + 48)), v65, v24);
    v68 = *(v62 + 8);
    v68(v65, v24);
    v68(v64, v24);
    sub_26F3B8DD4(v66, v21, &qword_2806E03C8, &qword_26F4A7020);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806E0408, &qword_2806E03C8, &qword_26F4A7020);
    sub_26F41BF74();
    v69 = v115;
    sub_26F49E928();
    sub_26F3B6B4C(v66, &qword_2806E03C8, &qword_26F4A7020);
    v68(v61, v24);
    v70 = v24;
    v71 = v69;
    v68(v110, v70);
    v72 = v101;
  }

  else
  {
    MEMORY[0x28223BE20](v40);
    v72 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03E0, &qword_26F4A7038);
    sub_26F41C318(&qword_2806E03E8, &qword_2806E03E0, &qword_26F4A7038);
    sub_26F49F4F8();
    v73 = v113;
    (*(v15 + 16))(v21, v18, v113);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806E0408, &qword_2806E03C8, &qword_26F4A7020);
    sub_26F41BF74();
    v71 = v115;
    sub_26F49E928();
    (*(v15 + 8))(v18, v73);
  }

  if (*(v72 + *(v114 + 28)) == 1)
  {
    sub_26F417A28();
    type metadata accessor for _BundleObject();
    v74 = swift_getObjCClassFromMetadata();
    v75 = [objc_opt_self() bundleForClass_];
    v122 = sub_26F49EEC8();
    v123 = v76;
    LOBYTE(v124) = v77 & 1;
    v125 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0420, &qword_26F4A7058);
    sub_26F3B18CC(&qword_2806E0428, &qword_2806E0420, &qword_26F4A7058);
    v79 = v109;
    sub_26F49F508();
    v80 = v107;
    *(v79 + *(v108 + 36)) = 0;
    sub_26F41C01C(v72, v80, type metadata accessor for LanguagesView);
    v81 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v82 = swift_allocObject();
    sub_26F41C084(v80, v82 + v81, type metadata accessor for LanguagesView);
    sub_26F41C194();
    v83 = v104;
    sub_26F49EF98();

    sub_26F3B6B4C(v79, &qword_2806E03A0, &qword_26F4A6FF8);
    v84 = v117;
    v85 = v119;
    v86 = v83;
    v87 = v118;
    (*(v117 + 32))(v119, v86, v118);
    v88 = 0;
  }

  else
  {
    v88 = 1;
    v87 = v118;
    v85 = v119;
    v84 = v117;
  }

  (*(v84 + 56))(v85, v88, 1, v87);
  v89 = v116;
  sub_26F3B8DD4(v71, v116, &qword_2806E03D8, &qword_26F4A7030);
  v90 = v120;
  sub_26F3B8DD4(v85, v120, &qword_2806E03B0, &qword_26F4A7008);
  v91 = v121;
  sub_26F3B8DD4(v89, v121, &qword_2806E03D8, &qword_26F4A7030);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0418, &qword_26F4A7050);
  sub_26F3B8DD4(v90, v91 + *(v92 + 48), &qword_2806E03B0, &qword_26F4A7008);
  sub_26F3B6B4C(v85, &qword_2806E03B0, &qword_26F4A7008);
  sub_26F3B6B4C(v71, &qword_2806E03D8, &qword_26F4A7030);
  sub_26F3B6B4C(v90, &qword_2806E03B0, &qword_26F4A7008);
  return sub_26F3B6B4C(v89, &qword_2806E03D8, &qword_26F4A7030);
}

uint64_t sub_26F418F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguagesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  swift_getKeyPath();
  sub_26F41C01C(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguagesView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_26F41C084(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LanguagesView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDD0, &qword_26F4A3100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03F8, &unk_26F4A7040);
  sub_26F3B18CC(&qword_2806DFBF0, &qword_2806DEDD0, &qword_26F4A3100);
  sub_26F41BE44();
  return sub_26F49F4B8();
}

uint64_t sub_26F41912C(uint64_t a1)
{
  v2 = type metadata accessor for LanguagesView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_26F417BF4();
  swift_getKeyPath();
  sub_26F41C01C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguagesView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26F41C084(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for LanguagesView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDD0, &qword_26F4A3100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03F8, &unk_26F4A7040);
  sub_26F3B18CC(&qword_2806DFBF0, &qword_2806DEDD0, &qword_26F4A3100);
  sub_26F41BE44();
  return sub_26F49F4B8();
}

uint64_t sub_26F419300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v39 = a4;
  v37[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v37 - v9;
  v11 = sub_26F49DAB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LanguageListButton(0);
  v17 = *(*(v16 - 1) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v12 + 16);
  v37[0] = a1;
  v21(v15, a1, v11, v18);
  v22 = type metadata accessor for LanguagesView(0);
  v23 = a2 + *(v22 + 44);
  v24 = *v23;
  v25 = *(v23 + 16);
  v41 = v24;
  v42 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF180, &qword_26F4A70B0);
  MEMORY[0x274390240](&v40, v26);
  v27 = a2;
  if (v40)
  {
    v27 = a2 + *(v22 + 20);
  }

  sub_26F3B8DD4(v27, v10, &qword_2806DFB70, &qword_26F4A5238);
  KeyPath = swift_getKeyPath();
  *&v20[v16[7]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  swift_storeEnumTagMultiPayload();
  (*(v12 + 32))(v20, v15, v11);
  sub_26F3BBAEC(v10, &v20[v16[5]], &qword_2806DFB70, &qword_26F4A5238);
  v29 = &v20[v16[6]];
  *v29 = KeyPath;
  v29[8] = 0;
  v30 = sub_26F417560(v37[0]);
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = (v30 & 1) == 0;
  v33 = v38;
  sub_26F41C084(v20, v38, type metadata accessor for LanguageListButton);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03F8, &unk_26F4A7040);
  v35 = (v33 + *(result + 36));
  v36 = v39;
  *v35 = v31;
  v35[1] = v36;
  v35[2] = v32;
  return result;
}

uint64_t sub_26F419618(uint64_t a1)
{
  v2 = type metadata accessor for LanguagesView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = a1 + *(v5 + 48);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  type metadata accessor for LanguagesService();
  sub_26F41BF2C(&qword_2806DF810, type metadata accessor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  sub_26F41C01C(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguagesView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_26F41C084(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LanguagesView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03F8, &unk_26F4A7040);
  sub_26F3B18CC(&qword_280F656F0, &qword_2806DF750, &unk_26F4A4BB0);
  sub_26F41BE44();
  sub_26F41C734();
  return sub_26F49F4C8();
}

uint64_t sub_26F4198A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v37 - v7;
  v39 = sub_26F49DAB8();
  v8 = *(v39 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v39);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for LanguageListButton(0);
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v19 = a1[1];

  v37 = v20;
  sub_26F49D978();
  v21 = type metadata accessor for LanguagesView(0);
  v22 = a2 + *(v21 + 44);
  v23 = *v22;
  v24 = *(v22 + 16);
  v42 = v23;
  v43 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF180, &qword_26F4A70B0);
  MEMORY[0x274390240](&v41, v25);
  if (v41)
  {
    a2 += *(v21 + 20);
  }

  v26 = a2;
  v27 = v38;
  sub_26F3B8DD4(v26, v38, &qword_2806DFB70, &qword_26F4A5238);
  KeyPath = swift_getKeyPath();
  *&v18[v15[7]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  swift_storeEnumTagMultiPayload();
  v29 = v39;
  (*(v8 + 32))(v18, v14, v39);
  sub_26F3BBAEC(v27, &v18[v15[5]], &qword_2806DFB70, &qword_26F4A5238);
  v30 = &v18[v15[6]];
  *v30 = KeyPath;
  v30[8] = 0;

  sub_26F49D978();
  v31 = sub_26F417560(v11);
  (*(v8 + 8))(v11, v29);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = (v31 & 1) == 0;
  v34 = v40;
  sub_26F41C084(v18, v40, type metadata accessor for LanguageListButton);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03F8, &unk_26F4A7040);
  v36 = (v34 + *(result + 36));
  *v36 = v32;
  v36[1] = sub_26F41C788;
  v36[2] = v33;
  return result;
}

__n128 sub_26F419C24@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26F49E6D8();
  sub_26F419C94(&v8);
  v3 = v9;
  v4 = v10;
  v5 = v11;
  v6 = v12;
  result = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_26F419C94@<X0>(uint64_t a1@<X8>)
{
  sub_26F49E768();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_26F49EEC8();
  v6 = v5;
  *a1 = v4;
  *(a1 + 8) = v5;
  v8 = v7 & 1;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_26F3B0EE4(v4, v5, v7 & 1);

  sub_26F3B8D40(v4, v6, v8);
}

uint64_t sub_26F419DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_26F49D878();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26F49E1B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F41719C(v13);
  sub_26F49D868();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    sub_26F49E188();
    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t LanguagesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v47 = sub_26F49E9D8();
  v1 = *(v47 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v47);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02C0, &qword_26F4A6DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02C8, &qword_26F4A6DC8);
  v42 = *(v48 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v48);
  v12 = &v41 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02D0, &qword_26F4A6DD0);
  v44 = *(v49 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x28223BE20](v49);
  v43 = &v41 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02D8, &qword_26F4A6DD8);
  v15 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02E0, &qword_26F4A6DE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  v54 = &type metadata for TranslateFeatures;
  v55 = sub_26F3D3D60();
  LOBYTE(v51) = 4;
  v22 = sub_26F49DB58();
  v23 = __swift_destroy_boxed_opaque_existential_0(&v51);
  if (v22)
  {
    sub_26F4181BC(v21);
    sub_26F3B8DD4(v21, v17, &qword_2806E02E0, &qword_26F4A6DE0);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806E02E8, &qword_2806E02E0, &qword_26F4A6DE0);
    v24 = sub_26F3B18CC(&qword_2806E02F0, &qword_2806E02C0, &qword_26F4A6DC0);
    v51 = v5;
    v52 = v47;
    v53 = v24;
    v54 = MEMORY[0x277CDE0D0];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v51 = v48;
    v52 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_26F49E928();
    return sub_26F3B6B4C(v21, &qword_2806E02E0, &qword_26F4A6DE0);
  }

  else
  {
    MEMORY[0x28223BE20](v23);
    v45 = sub_26F3B18CC(&qword_2806E02E8, &qword_2806E02E0, &qword_26F4A6DE0);
    v41 = v18;
    sub_26F49EDB8();
    sub_26F49E9C8();
    v27 = sub_26F3B18CC(&qword_2806E02F0, &qword_2806E02C0, &qword_26F4A6DC0);
    v28 = v47;
    sub_26F49F198();
    (*(v1 + 8))(v4, v28);
    (*(v6 + 8))(v9, v5);
    sub_26F49E768();
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    v31 = sub_26F49EEC8();
    v33 = v32;
    v35 = v34;
    v51 = v5;
    v52 = v28;
    v53 = v27;
    v54 = MEMORY[0x277CDE0D0];
    v36 = swift_getOpaqueTypeConformance2();
    v37 = v43;
    v38 = v48;
    sub_26F49F008();
    sub_26F3B8D40(v31, v33, v35 & 1);

    (*(v42 + 8))(v12, v38);
    v39 = v44;
    v40 = v49;
    (*(v44 + 16))(v17, v37, v49);
    swift_storeEnumTagMultiPayload();
    v51 = v38;
    v52 = v36;
    swift_getOpaqueTypeConformance2();
    sub_26F49E928();
    return (*(v39 + 8))(v37, v40);
  }
}

uint64_t sub_26F41A73C()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for LanguageListButton(0) + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_26F49FDE8();
    v8 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_26F41A894(uint64_t a1)
{
  v2 = sub_26F49E378();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF820, &qword_26F4A4D48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = sub_26F49DAB8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = type metadata accessor for LanguageListButton(0);
  v18 = *(v17 + 20);
  sub_26F3B8DD4(v14, v11, &qword_2806DEFD8, &qword_26F4A3670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  sub_26F49F458();
  sub_26F3B6B4C(v14, &qword_2806DEFD8, &qword_26F4A3670);
  v19 = a1 + *(v17 + 28);
  sub_26F416FBC(v7);
  MEMORY[0x274390240](v4);
  sub_26F49E368();
  sub_26F49F458();
  return sub_26F3B6B4C(v7, &qword_2806DF820, &qword_26F4A4D48);
}

uint64_t sub_26F41AB04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0350, &unk_26F4A6F50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8[-v5];
  v10 = a1;
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9B0, &qword_26F4A5060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0368, &qword_26F4A6F60);
  sub_26F41BDD4(&qword_2806DF9B8, &qword_2806DF9B0, &qword_26F4A5060);
  sub_26F41BDD4(&qword_2806E0370, &qword_2806E0368, &qword_26F4A6F60);
  sub_26F49F308();
  sub_26F3B18CC(&qword_2806E0358, &qword_2806E0350, &unk_26F4A6F50);
  sub_26F41BD70();
  sub_26F49EF38();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26F41AD0C@<X0>(void *a1@<X8>)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v7 = sub_26F49D9F8();
  v8 = sub_26F49D9F8();
  v9 = [v7 lt:0 displayNameForContext:v8 inTargetLocale:?];

  if (v9)
  {
    v10 = sub_26F49F8C8();
    v12 = v11;

    (*(v3 + 8))(v6, v2);
    v30[2] = v10;
    v30[3] = v12;
    v30[0] = v12;
    sub_26F3BDC0C();

    v13 = sub_26F49EED8();
    v15 = v14;
    v17 = v16;
    v18 = sub_26F41A73C();
    v19 = objc_opt_self();
    v20 = &selRef_labelColor;
    if ((v18 & 1) == 0)
    {
      v20 = &selRef_secondaryLabelColor;
    }

    v21 = [v19 *v20];
    sub_26F49F218();
    v9 = sub_26F49EE68();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    sub_26F3B8D40(v13, v15, v17 & 1);

    v29 = v25 & 1;
  }

  else
  {
    result = (*(v3 + 8))(v6, v2);
    v23 = 0;
    v29 = 0;
    v27 = 0;
  }

  *a1 = v9;
  a1[1] = v23;
  a1[2] = v29;
  a1[3] = v27;
  return result;
}

uint64_t sub_26F41AF50@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = *(type metadata accessor for LanguageListButton(0) + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  MEMORY[0x274390240](v12);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_26F3B6B4C(v10, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F49D988();
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_26F3B6B4C(v10, &qword_2806DEFD8, &qword_26F4A3670);
    v14 = sub_26F49D988();
    v16 = v15;
    (*(v3 + 8))(v6, v2);
    v17 = sub_26F49D988();
    if (v16)
    {
      if (v14 == v17 && v16 == v18)
      {
      }

      else
      {
        v20 = sub_26F4A0458();

        if ((v20 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      result = sub_26F49F2B8();
      goto LABEL_5;
    }
  }

LABEL_4:
  result = 0;
LABEL_5:
  *a1 = result;
  return result;
}

uint64_t sub_26F41B1B8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_26F41C01C(v1, &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LanguageListButton);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_26F41C084(&v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for LanguageListButton);
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0348, &qword_26F4A6F48);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0350, &unk_26F4A6F50);
  v7 = sub_26F3B18CC(&qword_2806E0358, &qword_2806E0350, &unk_26F4A6F50);
  v8 = sub_26F41BD70();
  v12 = v6;
  v13 = &type metadata for ListLabelStyle;
  v14 = v7;
  v15 = v8;
  swift_getOpaqueTypeConformance2();
  return sub_26F49F398();
}

uint64_t ListLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26F49E6D8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02F8, &qword_26F4A6DE8);
  return sub_26F41B3F0(a1 + *(v2 + 44));
}

uint64_t sub_26F41B3F0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0378, &qword_26F4A6F68);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0380, &qword_26F4A6F70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  *v16 = sub_26F49E808();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0388, &qword_26F4A6F78) + 44)];
  sub_26F49EA78();
  sub_26F49EA68();
  sub_26F49ECA8();
  sub_26F49ED08();
  v18 = sub_26F49ED58();

  KeyPath = swift_getKeyPath();
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0390, &unk_26F4A6FB0) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = &v9[*(v3 + 44)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCA0, &qword_26F4A55E8) + 28);
  v23 = *MEMORY[0x277CE1058];
  v24 = sub_26F49F2E8();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  sub_26F3B8DD4(v16, v13, &qword_2806E0380, &qword_26F4A6F70);
  sub_26F3B8DD4(v9, v6, &qword_2806E0378, &qword_26F4A6F68);
  sub_26F3B8DD4(v13, a1, &qword_2806E0380, &qword_26F4A6F70);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0398, &qword_26F4A6FF0);
  v26 = a1 + *(v25 + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_26F3B8DD4(v6, a1 + *(v25 + 64), &qword_2806E0378, &qword_26F4A6F68);
  sub_26F3B6B4C(v9, &qword_2806E0378, &qword_26F4A6F68);
  sub_26F3B6B4C(v16, &qword_2806E0380, &qword_26F4A6F70);
  sub_26F3B6B4C(v6, &qword_2806E0378, &qword_26F4A6F68);
  return sub_26F3B6B4C(v13, &qword_2806E0380, &qword_26F4A6F70);
}

uint64_t sub_26F41B728@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26F49E6D8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02F8, &qword_26F4A6DE8);
  return sub_26F41B3F0(a1 + *(v2 + 44));
}

void sub_26F41B7A8()
{
  sub_26F41BCBC(319, &qword_2806DFBA8, &qword_2806DEFD8, &qword_26F4A3670, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_26F41BCBC(319, &qword_280F65708, &qword_2806DEDD0, &qword_26F4A3100, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26F41B900();
      if (v2 <= 0x3F)
      {
        sub_26F3E1700();
        if (v3 <= 0x3F)
        {
          sub_26F41BC6C(319, &qword_2806E0310, MEMORY[0x277D83B88], MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26F41B900()
{
  if (!qword_2806DFBB0)
  {
    sub_26F49E1B8();
    v0 = sub_26F49DFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2806DFBB0);
    }
  }
}

unint64_t sub_26F41B968()
{
  result = qword_2806E0318;
  if (!qword_2806E0318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0320, &qword_26F4A6EB8);
    sub_26F3B18CC(&qword_2806E02E8, &qword_2806E02E0, &qword_26F4A6DE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E02C8, &qword_26F4A6DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E02C0, &qword_26F4A6DC0);
    sub_26F49E9D8();
    sub_26F3B18CC(&qword_2806E02F0, &qword_2806E02C0, &qword_26F4A6DC0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0318);
  }

  return result;
}

void sub_26F41BB3C()
{
  sub_26F49DAB8();
  if (v0 <= 0x3F)
  {
    sub_26F41BCBC(319, &qword_2806DFBA8, &qword_2806DEFD8, &qword_26F4A3670, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_26F41BC6C(319, &qword_2806DF870, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26F41BCBC(319, &qword_2806DF818, &qword_2806DF820, &qword_26F4A4D48, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26F41BC6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26F41BCBC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_26F41BD70()
{
  result = qword_2806E0360;
  if (!qword_2806E0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0360);
  }

  return result;
}

uint64_t sub_26F41BDD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26F41BE44()
{
  result = qword_2806E03F0;
  if (!qword_2806E03F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E03F8, &unk_26F4A7040);
    sub_26F41BF2C(&qword_2806E0400, type metadata accessor for LanguageListButton);
    sub_26F3B18CC(&qword_280F65728, &qword_2806DFA50, &qword_26F4A50D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E03F0);
  }

  return result;
}

uint64_t sub_26F41BF2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26F41BF74()
{
  result = qword_2806E0410;
  if (!qword_2806E0410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E03B8, &qword_26F4A7010);
    sub_26F41C318(&qword_2806E03E8, &qword_2806E03E0, &qword_26F4A7038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0410);
  }

  return result;
}

uint64_t sub_26F41C01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F41C084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F41C118(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_26F41C194()
{
  result = qword_2806E0430;
  if (!qword_2806E0430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E03A0, &qword_26F4A6FF8);
    sub_26F41C24C();
    sub_26F3B18CC(&qword_2806DF148, &qword_2806DF150, &qword_26F4A3968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0430);
  }

  return result;
}

unint64_t sub_26F41C24C()
{
  result = qword_2806E0438;
  if (!qword_2806E0438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0440, &unk_26F4A7060);
    sub_26F3B18CC(&qword_2806E0428, &qword_2806E0420, &qword_26F4A7058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0438);
  }

  return result;
}

uint64_t sub_26F41C318(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_26F41BE44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for LanguagesView(0);
  v26 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v3 = *v2;

  v4 = *(v2 + 1);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  v6 = *(v5 + 32);
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(&v2[v6], 1, v7))
  {
    (*(v8 + 8))(&v2[v6], v7);
  }

  v10 = &v2[v1[5]];
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(v5 + 32);
  if (!v9(&v10[v13], 1, v7))
  {
    (*(v8 + 8))(&v10[v13], v7);
  }

  v14 = *&v2[v1[6]];

  v15 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_26F49E1B8();
    (*(*(v16 - 8) + 8))(&v2[v15], v16);
  }

  else
  {
    v17 = *&v2[v15];
  }

  v18 = &v2[v1[10]];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = v18[16];
  sub_26F3E2088();
  v22 = &v2[v1[11]];
  v23 = *v22;

  v24 = *(v22 + 1);

  return swift_deallocObject();
}

uint64_t sub_26F41C6B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LanguagesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F4198A0(a1, v6, a2);
}

unint64_t sub_26F41C734()
{
  result = qword_2806E0460;
  if (!qword_2806E0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0460);
  }

  return result;
}

uint64_t sub_26F41C78C()
{
  v1 = v0 + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}