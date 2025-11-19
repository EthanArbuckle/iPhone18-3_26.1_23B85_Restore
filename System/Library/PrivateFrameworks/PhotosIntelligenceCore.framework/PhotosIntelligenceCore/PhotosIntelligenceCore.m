uint64_t sub_25E5F1D68(uint64_t a1, int a2)
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

uint64_t sub_25E5F1D88(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_25E635F20();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_25E5F1F5C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_1(a1) groupByDifferentOrientation];
  *v1 = result;
  return result;
}

id sub_25E5F1FA0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_1(a1) groupBySharedLibraryParticipationState];
  *v1 = result;
  return result;
}

id sub_25E5F1FE4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_1(a1) comparableCurationScoreThreshold];
  *v1 = v3;
  return result;
}

id sub_25E5F2028(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_1(a1) distanceThreshold];
  *v1 = result;
  return result;
}

id sub_25E5F206C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_1(a1) distanceFromFirstThreshold];
  *v1 = result;
  return result;
}

id sub_25E5F20B0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_1(a1) distanceIfAdjustedDiffersThreshold];
  *v1 = result;
  return result;
}

uint64_t sub_25E5F20F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25E5F210C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E635710();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_25E5F21BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E635710();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25E5F2268()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8F90, &qword_25E63ABC0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_25E5F2298()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8F98, &qword_25E63ABC8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_25E5F22C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_25E635570();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_25E5F231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_25E635570();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_25E5F2414()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25E5F26E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E5F2680();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25E5F27D0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF94A8, &qword_25E63C210);
  }

  else
  {
    return OUTLINED_FUNCTION_55_0(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_25E5F27FC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF94B0, &qword_25E63C218);
  }

  else
  {
    return OUTLINED_FUNCTION_55_0(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_25E5F2828()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF94B8, &qword_25E63C220);
  }

  else
  {
    return OUTLINED_FUNCTION_55_0(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_25E5F2854()
{
  v3 = OUTLINED_FUNCTION_75();
  v4 = OUTLINED_FUNCTION_68(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_32_0(*(v2 + 24));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_25E5F28DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_22_0();
  v8 = sub_25E6355A0();
  result = OUTLINED_FUNCTION_68(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_19_0();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 24) + 8) = (v4 - 1);
  }

  return result;
}

uint64_t sub_25E5F2970()
{
  v3 = OUTLINED_FUNCTION_75();
  v4 = OUTLINED_FUNCTION_68(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_32_0(*(v2 + 20));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_25E5F29F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_22_0();
  v8 = sub_25E6355A0();
  result = OUTLINED_FUNCTION_68(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_19_0();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }

  return result;
}

uint64_t sub_25E5F2A8C()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = type metadata accessor for RootEventRecorder.EventState(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_25E5F2ACC()
{
  v0 = OUTLINED_FUNCTION_22_0();
  type metadata accessor for RootEventRecorder.EventState(v0);
  v1 = OUTLINED_FUNCTION_19_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void *sub_25E5F2BAC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_25E5F2BEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_25E620F70();
  *a2 = result;
  return result;
}

__n128 sub_25E5F2C20(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_25E5F2C2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_25E621004();
  *a2 = result;
  return result;
}

uint64_t sub_25E5F2DD4(uint64_t result, int a2, int a3)
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

uint64_t static LocalizedString.localizedString(forKey:arguments:)()
{
  static LocalizedString.localizedString(forKey:)();

  v0 = sub_25E6357F0();

  return v0;
}

uint64_t static LocalizedString.localizedString(forKey:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_25E6357C0();
  v3 = sub_25E6357C0();
  v4 = sub_25E6357C0();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_25E6357D0();
  return v6;
}

void static LocalizedString.localizedSynonyms(forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = static LocalizedString.localizedString(forKey:)() == a1 && v3 == a2;
  if (!v4 && (sub_25E636070() & 1) == 0)
  {
    sub_25E5F3214();
    v5 = sub_25E635C10();

    v6 = *(v5 + 16);
    if (v6)
    {
      v32 = MEMORY[0x277D84F90];
      sub_25E5F3468();
      v7 = v32;
      v8 = (v5 + 56);
      do
      {
        v9 = *(v8 - 3);
        v10 = *(v8 - 2);
        v11 = *(v8 - 1);
        v12 = *v8;

        v13 = MEMORY[0x25F8B9500](v9, v10, v11, v12);
        v15 = v14;

        v16 = *(v32 + 16);
        if (v16 >= *(v32 + 24) >> 1)
        {
          sub_25E5F3468();
        }

        *(v32 + 16) = v16 + 1;
        v17 = v32 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v15;
        v8 += 4;
        --v6;
      }

      while (v6);
    }

    else
    {

      v7 = MEMORY[0x277D84F90];
    }

    v18 = 0;
    v19 = *(v7 + 16);
    v20 = v7 + 40;
    v21 = MEMORY[0x277D84F90];
LABEL_15:
    v22 = (v20 + 16 * v18);
    while (v19 != v18)
    {
      if (v18 >= *(v7 + 16))
      {
        __break(1u);
        return;
      }

      v23 = *(v22 - 1);
      v24 = *v22;
      if (v23 != 1280070990 || v24 != 0xE400000000000000)
      {
        v26 = *(v22 - 1);
        v27 = *v22;
        if ((sub_25E636070() & 1) == 0)
        {

          v31 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = *(v21 + 16);
            sub_25E5F3468();
          }

          v29 = *(v21 + 16);
          if (v29 >= *(v21 + 24) >> 1)
          {
            sub_25E5F3468();
          }

          ++v18;
          *(v21 + 16) = v29 + 1;
          v30 = v21 + 16 * v29;
          *(v30 + 32) = v23;
          *(v30 + 40) = v24;
          v20 = v31;
          goto LABEL_15;
        }
      }

      v22 += 2;
      ++v18;
    }
  }
}

unint64_t sub_25E5F3214()
{
  result = qword_280CB2818;
  if (!qword_280CB2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB2818);
  }

  return result;
}

id LocalizedString.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocalizedString.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalizedString();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LocalizedString.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LocalizedString.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocalizedString();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LocalizedString.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalizedString();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25E5F3400(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_25E5F3434();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_25E5F343C@<X0>(uint64_t *a1@<X8>)
{
  result = CGPointMake(*v1);
  *a1 = result;
  return result;
}

void sub_25E5F3468()
{
  v1 = *v0;
  sub_25E60B100();
  *v0 = v2;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_25E5F34E4()
{
  v1 = *v0;
  sub_25E60B1D4();
  *v0 = v2;
}

void sub_25E5F3504()
{
  v1 = *v0;
  sub_25E60B2A8();
  *v0 = v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E5F3530(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E5F3550(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_25E5F35C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t static PNKeyPickerProcessor.keyPick(from:options:)(uint64_t a1, void *a2)
{
  v2 = a2;

  v7 = sub_25E5F4DBC(v3);
  sub_25E5F3A48(&v7, v2);
  v4 = v7;
  if (!sub_25E5F1D88(v7))
  {

    return 0;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F8B9AD0](0, v4);
    goto LABEL_5;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);
    swift_unknownObjectRetain();
LABEL_5:

    return v5;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_25E5F36EC(id *a1, void **a2, void *a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = [*a1 favorite];
  if (v6 != [v5 favorite])
  {
    return [v4 favorite];
  }

  [v4 curationScore];
  v9 = v8;
  [v5 curationScore];
  v11 = vabdd_f64(v9, v10);
  [a3 comparableCurationScoreThreshold];
  if (v12 <= v11)
  {
    [v4 curationScore];
    v27 = v26;
    [v5 curationScore];
    return (v28 < v27);
  }

  [v4 overallAestheticScore];
  v14 = v13;
  [v5 overallAestheticScore];
  if (v14 != v15)
  {
    [v4 overallAestheticScore];
    v31 = v30;
    [v5 overallAestheticScore];
    return (v32 < v31);
  }

  v16 = [v4 identifier];
  v17 = sub_25E6357D0();
  v19 = v18;

  v20 = [v5 identifier];
  v21 = sub_25E6357D0();
  v23 = v22;

  if (v17 == v21 && v19 == v23)
  {

    return 0;
  }

  else
  {
    v25 = sub_25E636070();

    return (v25 & 1);
  }
}

PNKeyPickerProcessor __swiftcall PNKeyPickerProcessor.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_25E5F39E0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8D78, &qword_25E63A3D0);
      result = sub_25E635A40();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_25E5F3A48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_25E60EB50(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_25E5F3B18(v8, v7);
  sub_25E635E50();
}

unint64_t sub_25E5F3AF4(unint64_t result, char a2, uint64_t a3)
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

void sub_25E5F3B18(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2;
  v6 = sub_25E636030();
  if (v6 < v4)
  {
    v7 = v6;
    v8 = sub_25E5F39E0(v4 / 2);
    v10[0] = v9;
    v10[1] = (v4 / 2);
    v5 = v5;
    sub_25E5F3F1C(v10, v11, a1, v7, v5);
    if (v2)
    {
      if (v4 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v4 < -1)
    {
LABEL_13:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4)
  {
    sub_25E5F3C38(0, v4, 1, a1, v5);
  }

  else
  {
  }
}

void sub_25E5F3C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v5 = a5;
  if (a3 == a2)
  {
    goto LABEL_2;
  }

  v6 = *a4;
  v7 = *a4 + 8 * a3 - 8;
  v8 = a1 - a3;
  v9 = &unk_279A28000;
  v10 = &unk_279A28000;
  v47 = *a4;
  while (2)
  {
    v45 = v7;
    v46 = a3;
    v11 = *(v6 + 8 * a3);
    v44 = v8;
    while (1)
    {
      v12 = *v7;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v13 = [v11 v9[79]];
      if (v13 == [v12 v9[79]])
      {
        break;
      }

      v14 = [v11 v9[79]];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v14 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_19:
      if (!v6)
      {
        __break(1u);
        return;
      }

      v41 = *v7;
      v11 = *(v7 + 8);
      *v7 = v11;
      *(v7 + 8) = v41;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_22;
      }
    }

    [v11 v10[80]];
    v16 = v15;
    [v12 v10[80]];
    v18 = vabdd_f64(v16, v17);
    [v5 comparableCurationScoreThreshold];
    if (v19 <= v18)
    {
      [v11 v10[80]];
      v34 = v33;
      [v12 v10[80]];
      v36 = v35;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v36 >= v34)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    [v11 overallAestheticScore];
    v21 = v20;
    [v12 overallAestheticScore];
    if (v21 != v22)
    {
      [v11 overallAestheticScore];
      v38 = v37;
      [v12 overallAestheticScore];
      v40 = v39;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v40 >= v38)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    v23 = [v11 identifier];
    v24 = sub_25E6357D0();
    v26 = v25;

    v27 = [v12 identifier];
    v28 = sub_25E6357D0();
    v30 = v29;

    if (v24 != v28 || v26 != v30)
    {
      v32 = sub_25E636070();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v5 = a5;
      v6 = v47;
      v9 = &unk_279A28000;
      v10 = &unk_279A28000;
      if ((v32 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v5 = a5;
    v6 = v47;
    v9 = &unk_279A28000;
    v10 = &unk_279A28000;
LABEL_22:
    a3 = v46 + 1;
    v7 = v45 + 8;
    v8 = v44 - 1;
    if (v46 + 1 != a2)
    {
      continue;
    }

    break;
  }

LABEL_2:
}

void sub_25E5F3F1C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = a3[1];
  v170 = a5;
  if (v6 >= 1)
  {
    v149 = a4;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v9 = &unk_279A28000;
    v10 = &unk_279A28000;
    v11 = &unk_279A28000;
    while (1)
    {
      v12 = v7 + 1;
      v166 = v8;
      if (v7 + 1 >= v6)
      {
        v18 = v7 + 1;
      }

      else
      {
        v162 = v6;
        v13 = v7;
        v14 = *a3;
        v172 = *(*a3 + 8 * v12);
        v171 = *(v14 + 8 * v13);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v157 = sub_25E5F36EC(&v172, &v171, v170);
        if (v169)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
LABEL_133:

          return;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v150 = v13;
        v15 = 8 * v13;
        v16 = (v14 + 8 * v13 + 16);
        v9 = &unk_279A28000;
        while (1)
        {
          v17 = v12++;
          v18 = v162;
          if (v12 >= v162)
          {
            break;
          }

          v19 = *(v16 - 1);
          v20 = *v16;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v21 = [v20 v9[79]];
          if (v21 == [v19 v9[79]])
          {
            [v20 curationScore];
            v24 = v23;
            [v19 curationScore];
            v26 = vabdd_f64(v24, v25);
            [v170 comparableCurationScoreThreshold];
            if (v27 <= v26)
            {
              [v20 curationScore];
              v41 = v40;
              [v19 curationScore];
              v43 = v42;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if ((v157 & 1) == v43 >= v41)
              {
                goto LABEL_25;
              }
            }

            else
            {
              [v20 overallAestheticScore];
              v29 = v28;
              [v19 overallAestheticScore];
              if (v29 == v30)
              {
                v31 = [v20 identifier];
                v156 = sub_25E6357D0();
                v33 = v32;

                v34 = [v19 identifier];
                v35 = sub_25E6357D0();
                v37 = v36;

                if (v156 == v35 && v33 == v37)
                {
                  v39 = 0;
                }

                else
                {
                  v39 = sub_25E636070();
                }

                v8 = v166;

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v9 = &unk_279A28000;
                if ((v157 ^ v39))
                {
LABEL_25:
                  v18 = v12;
                  break;
                }
              }

              else
              {
                [v20 overallAestheticScore];
                v45 = v44;
                [v19 overallAestheticScore];
                v47 = v46;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if (((v157 ^ (v47 >= v45)) & 1) == 0)
                {
                  goto LABEL_25;
                }
              }
            }
          }

          else
          {
            v22 = [v20 v9[79]];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if ((v157 ^ v22))
            {
              v18 = v17 + 1;
              break;
            }
          }

          ++v16;
        }

        v7 = v150;
        if (v157)
        {
          if (v18 < v150)
          {
            goto LABEL_158;
          }

          v10 = &unk_279A28000;
          if (v150 < v18)
          {
            v48 = 8 * v18 - 8;
            v49 = v18;
            v50 = v150;
            do
            {
              if (v50 != --v49)
              {
                v51 = *a3;
                if (!*a3)
                {
                  goto LABEL_163;
                }

                v52 = *(v51 + v15);
                *(v51 + v15) = *(v51 + v48);
                *(v51 + v48) = v52;
              }

              ++v50;
              v48 -= 8;
              v15 += 8;
            }

            while (v50 < v49);
          }
        }

        else
        {
          v10 = &unk_279A28000;
        }

        v11 = &unk_279A28000;
      }

      v53 = a3[1];
      if (v18 < v53)
      {
        if (__OFSUB__(v18, v7))
        {
          goto LABEL_155;
        }

        if (v18 - v7 < v149)
        {
          if (__OFADD__(v7, v149))
          {
            goto LABEL_156;
          }

          if (v7 + v149 < v53)
          {
            v53 = v7 + v149;
          }

          if (v53 >= v7)
          {
            if (v18 == v53)
            {
              goto LABEL_67;
            }

            v153 = v53;
            v54 = *a3;
            v55 = *a3 + 8 * v18 - 8;
            v151 = v7;
            v56 = (v7 - v18);
            v158 = *a3;
LABEL_46:
            v163 = v18;
            v57 = *(v54 + 8 * v18);
            v155 = v56;
            v156 = v55;
            v58 = v55;
            while (1)
            {
              v59 = *v58;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v60 = [v57 v9[79]];
              if (v60 == [v59 v9[79]])
              {
                [v57 v10[80]];
                v63 = v62;
                [v59 v10[80]];
                v65 = vabdd_f64(v63, v64);
                [v170 comparableCurationScoreThreshold];
                if (v66 <= v65)
                {
                  [v57 v10[80]];
                  v81 = v80;
                  [v59 v10[80]];
                  v83 = v82;
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  if (v83 >= v81)
                  {
                    goto LABEL_64;
                  }
                }

                else
                {
                  [v57 v11[82]];
                  v68 = v67;
                  [v59 v11[82]];
                  if (v68 == v69)
                  {
                    v70 = [v57 identifier];
                    v71 = sub_25E6357D0();
                    v73 = v72;

                    v74 = [v59 identifier];
                    v75 = sub_25E6357D0();
                    v77 = v76;

                    if (v71 == v75 && v73 == v77)
                    {
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();

                      v9 = &unk_279A28000;
                      v10 = &unk_279A28000;
                      v11 = &unk_279A28000;
                      v54 = v158;
LABEL_64:
                      v18 = v163 + 1;
                      v55 = v156 + 8;
                      v56 = v155 - 1;
                      if (v163 + 1 == v153)
                      {
                        v8 = v166;
                        v7 = v151;
                        v18 = v153;
                        goto LABEL_67;
                      }

                      goto LABEL_46;
                    }

                    v79 = sub_25E636070();
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();

                    v9 = &unk_279A28000;
                    v10 = &unk_279A28000;
                    v11 = &unk_279A28000;
                    v54 = v158;
                    if ((v79 & 1) == 0)
                    {
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    [v57 v11[82]];
                    v85 = v84;
                    [v59 v11[82]];
                    v87 = v86;
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    if (v87 >= v85)
                    {
                      goto LABEL_64;
                    }
                  }
                }
              }

              else
              {
                v61 = [v57 v9[79]];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if ((v61 & 1) == 0)
                {
                  goto LABEL_64;
                }
              }

              if (!v54)
              {
                break;
              }

              v88 = *v58;
              v57 = *(v58 + 8);
              *v58 = v57;
              *(v58 + 8) = v88;
              v58 -= 8;
              if (__CFADD__(v56++, 1))
              {
                goto LABEL_64;
              }
            }

            __break(1u);
LABEL_161:

            __break(1u);
LABEL_162:

            __break(1u);
LABEL_163:

            __break(1u);
LABEL_164:

            __break(1u);
            goto LABEL_165;
          }

LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          v8 = sub_25E60D384(v8);
LABEL_123:
          v140 = v8 + 16;
          v139 = *(v8 + 2);
          for (i = v8; ; v8 = i)
          {
            if (v139 < 2)
            {

              return;
            }

            v141 = *a3;
            if (!*a3)
            {
              goto LABEL_162;
            }

            v142 = &v8[16 * v139];
            v143 = *v142;
            v144 = v140;
            v8 = &v140[16 * v139];
            v145 = *(v8 + 1);
            v165 = (v141 + 8 * *v142);
            v160 = (v141 + 8 * *v8);
            v146 = (v141 + 8 * v145);
            v147 = v156;
            sub_25E5F4A58(v165, v160, v146, v155, v147);
            if (v169)
            {
              break;
            }

            if (v145 < v143)
            {
              goto LABEL_150;
            }

            if (v139 - 2 >= *v144)
            {
              goto LABEL_151;
            }

            v140 = v144;
            *v142 = v143;
            *(v142 + 1) = v145;
            v148 = *v144 - v139;
            if (*v144 < v139)
            {
              goto LABEL_152;
            }

            v139 = *v144 - 1;
            sub_25E60D398(v8 + 16, v148, v8);
            *v144 = v139;
          }

          goto LABEL_133;
        }
      }

LABEL_67:
      if (v18 < v7)
      {
        goto LABEL_154;
      }

      v154 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v136 = *(v8 + 2);
        sub_25E60A3B4();
        v8 = v137;
      }

      v90 = *(v8 + 2);
      v91 = v90 + 1;
      if (v90 >= *(v8 + 3) >> 1)
      {
        sub_25E60A3B4();
        v8 = v138;
      }

      *(v8 + 2) = v91;
      v92 = v8 + 32;
      v93 = &v8[16 * v90 + 32];
      *v93 = v7;
      *(v93 + 1) = v154;
      v164 = *a1;
      if (!*a1)
      {
        goto LABEL_164;
      }

      if (v90)
      {
        break;
      }

LABEL_117:
      v6 = a3[1];
      v7 = v154;
      if (v154 >= v6)
      {
        goto LABEL_121;
      }
    }

    v159 = v8 + 32;
    v167 = v8;
    while (1)
    {
      v94 = v91 - 1;
      v95 = &v92[16 * v91 - 16];
      v96 = &v8[16 * v91];
      if (v91 >= 4)
      {
        break;
      }

      if (v91 == 3)
      {
        v97 = *(v8 + 4);
        v98 = *(v8 + 5);
        v107 = __OFSUB__(v98, v97);
        v99 = v98 - v97;
        v100 = v107;
LABEL_88:
        if (v100)
        {
          goto LABEL_141;
        }

        v112 = *v96;
        v111 = *(v96 + 1);
        v113 = __OFSUB__(v111, v112);
        v114 = v111 - v112;
        v115 = v113;
        if (v113)
        {
          goto LABEL_144;
        }

        v116 = *(v95 + 1);
        v117 = v116 - *v95;
        if (__OFSUB__(v116, *v95))
        {
          goto LABEL_147;
        }

        if (__OFADD__(v114, v117))
        {
          goto LABEL_149;
        }

        if (v114 + v117 >= v99)
        {
          if (v99 < v117)
          {
            v94 = v91 - 2;
          }

          goto LABEL_110;
        }

        goto LABEL_103;
      }

      if (v91 < 2)
      {
        goto LABEL_143;
      }

      v119 = *v96;
      v118 = *(v96 + 1);
      v107 = __OFSUB__(v118, v119);
      v114 = v118 - v119;
      v115 = v107;
LABEL_103:
      if (v115)
      {
        goto LABEL_146;
      }

      v121 = *v95;
      v120 = *(v95 + 1);
      v107 = __OFSUB__(v120, v121);
      v122 = v120 - v121;
      if (v107)
      {
        goto LABEL_148;
      }

      if (v122 < v114)
      {
        goto LABEL_117;
      }

LABEL_110:
      if (v94 - 1 >= v91)
      {
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
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
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
        goto LABEL_157;
      }

      v126 = *a3;
      if (!*a3)
      {
        goto LABEL_161;
      }

      v127 = &v92[16 * v94 - 16];
      v8 = *v127;
      v128 = v94;
      v129 = &v92[16 * v94];
      v130 = *(v129 + 1);
      v131 = (v126 + 8 * *v127);
      v132 = (v126 + 8 * *v129);
      v133 = (v126 + 8 * v130);
      v134 = v170;
      sub_25E5F4A58(v131, v132, v133, v164, v134);
      if (v169)
      {

        goto LABEL_133;
      }

      v10 = &unk_279A28000;
      v11 = &unk_279A28000;
      if (v130 < v8)
      {
        goto LABEL_136;
      }

      v135 = *(v167 + 2);
      if (v128 > v135)
      {
        goto LABEL_137;
      }

      *v127 = v8;
      *(v127 + 1) = v130;
      if (v128 >= v135)
      {
        goto LABEL_138;
      }

      v91 = v135 - 1;
      sub_25E60D398(v129 + 16, v135 - 1 - v128, v129);
      v8 = v167;
      *(v167 + 2) = v135 - 1;
      v9 = &unk_279A28000;
      v92 = v159;
      if (v135 <= 2)
      {
        goto LABEL_117;
      }
    }

    v101 = &v92[16 * v91];
    v102 = *(v101 - 8);
    v103 = *(v101 - 7);
    v107 = __OFSUB__(v103, v102);
    v104 = v103 - v102;
    if (v107)
    {
      goto LABEL_139;
    }

    v106 = *(v101 - 6);
    v105 = *(v101 - 5);
    v107 = __OFSUB__(v105, v106);
    v99 = v105 - v106;
    v100 = v107;
    if (v107)
    {
      goto LABEL_140;
    }

    v108 = *(v96 + 1);
    v109 = v108 - *v96;
    if (__OFSUB__(v108, *v96))
    {
      goto LABEL_142;
    }

    v107 = __OFADD__(v99, v109);
    v110 = v99 + v109;
    if (v107)
    {
      goto LABEL_145;
    }

    if (v110 >= v104)
    {
      v124 = *v95;
      v123 = *(v95 + 1);
      v107 = __OFSUB__(v123, v124);
      v125 = v123 - v124;
      if (v107)
      {
        goto LABEL_153;
      }

      if (v99 < v125)
      {
        v94 = v91 - 2;
      }

      goto LABEL_110;
    }

    goto LABEL_88;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_121:
  v155 = *a1;
  if (*a1)
  {
    v156 = v170;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_123;
    }

    goto LABEL_159;
  }

LABEL_165:

  __break(1u);
}

uint64_t sub_25E5F4A58(char *a1, char *a2, id *a3, char *a4, void *a5)
{
  v6 = v5;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = (a2 - a1) / 8;
  v12 = (a3 - a2) / 8;
  if (v11 < v12)
  {
    sub_25E60AD54(a1, (a2 - a1) / 8, a4);
    for (i = &v7[v11]; ; i = v15)
    {
      if (v7 >= i || v9 >= v8)
      {
        v9 = v10;
        goto LABEL_30;
      }

      v15 = i;
      v16 = v10;
      v53 = *v9;
      v52 = *v7;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v17 = sub_25E5F36EC(&v53, &v52, a5);
      if (v5)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v42 = v15 - v7;
        v41 = v10;
        if (v10 < v7 || v10 >= &v7[v42])
        {
          memmove(v10, v7, 8 * v42);
          v39 = a5;
        }

        else
        {
          v39 = a5;
          if (v10 != v7)
          {
            v40 = 8 * v42;
LABEL_52:
            v45 = v7;
LABEL_55:
            memmove(v41, v45, v40);
          }
        }

        goto LABEL_56;
      }

      v18 = v17;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v9;
      v20 = v16;
      v21 = v16 == v9++;
      if (!v21)
      {
        goto LABEL_13;
      }

LABEL_14:
      v10 = v20 + 1;
    }

    v19 = v7;
    v20 = v16;
    v21 = v16 == v7++;
    if (v21)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v20 = *v19;
    goto LABEL_14;
  }

  sub_25E60AD54(a2, (a3 - a2) / 8, a4);
  i = &v7[v12];
  v50 = v7;
  v22 = -v7;
  v48 = -v7;
LABEL_16:
  v23 = v9 - 1;
  v24 = v8 - 1;
  v25 = i + v22;
  v49 = v9;
  while (1)
  {
    if (i <= v50 || v9 <= v10)
    {
      v7 = v50;
LABEL_30:
      v37 = i - v7;
      if (v9 >= v7 && v9 < &v7[v37])
      {
        v39 = a5;
        if (v9 != v7)
        {
          v40 = 8 * v37;
          v41 = v9;
          goto LABEL_52;
        }

        goto LABEL_56;
      }

      memmove(v9, v7, 8 * v37);

      return 1;
    }

    v27 = v24;
    v28 = v10;
    v29 = v6;
    v30 = i;
    v31 = *--i;
    v53 = v31;
    v32 = v23;
    v52 = *v23;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v33 = sub_25E5F36EC(&v53, &v52, a5);
    if (v29)
    {
      break;
    }

    v34 = v33;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v35 = v27 + 1;
    if (v34)
    {
      v21 = v35 == v49;
      v36 = v32;
      v8 = v27;
      v9 = v36;
      v10 = v28;
      v22 = v48;
      i = v30;
      v6 = 0;
      if (!v21)
      {
        *v8 = *v36;
        v22 = v48;
        v9 = v36;
      }

      goto LABEL_16;
    }

    v23 = v32;
    if (v30 != v35)
    {
      *v27 = *i;
    }

    v24 = v27 - 1;
    v25 -= 8;
    v10 = v28;
    v9 = v49;
    v6 = 0;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v44 = v25 / 8;
  v41 = v49;
  v45 = v50;
  if (v49 < v50 || v49 >= &v50[v25 / 8])
  {
    memmove(v49, v50, 8 * v44);
    v39 = a5;
  }

  else
  {
    v39 = a5;
    if (v49 != v50)
    {
      v40 = 8 * v44;
      goto LABEL_55;
    }
  }

LABEL_56:

  return 1;
}

uint64_t sub_25E5F4DBC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_25E635F20();
    if (v4)
    {
      v5 = v4;
      v2 = sub_25E60AA6C(v4, 0);
      sub_25E5F4E50((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_25E5F4E50(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_25E635F20();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_25E5F1D88(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8D78, &qword_25E63A3D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_25E5F50E0();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8D80, &qword_25E63A3D8);
          v9 = sub_25E5F4FC0(v12, i, a3);
          v11 = *v10;
          swift_unknownObjectRetain();
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_25E5F4FC0(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = sub_25E5F3AE8(a3);
  sub_25E5F3AF4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
    v8 = swift_unknownObjectRetain();
  }

  else
  {
    v8 = MEMORY[0x25F8B9AD0](a2, a3);
  }

  *a1 = v8;
  return sub_25E5F504C;
}

unint64_t type metadata accessor for PNKeyPickerProcessor()
{
  result = qword_27FCF8D70;
  if (!qword_27FCF8D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCF8D70);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25E5F50E0()
{
  result = qword_27FCF8D88;
  if (!qword_27FCF8D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF8D80, &qword_25E63A3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF8D88);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t BridgeableError.errorUserInfo.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8D90, &qword_25E63A3F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E63A3E0;
  v4 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_25E6357D0();
  *(inited + 40) = v5;
  v6 = *(a2 + 16);
  v7 = sub_25E636040();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  return sub_25E635740();
}

uint64_t sub_25E5F5250()
{
  sub_25E636110();
  MEMORY[0x25F8B9DE0](0);
  return sub_25E636130();
}

uint64_t sub_25E5F52A0(char a1)
{
  sub_25E636110();
  sub_25E5F5EEC(a1);
  sub_25E635860();

  return sub_25E636130();
}

uint64_t sub_25E5F5370(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_25E636110();
  a2(v5, a1);
  return sub_25E636130();
}

uint64_t sub_25E5F53DC()
{
  sub_25E635860();
}

uint64_t sub_25E5F54A0(uint64_t a1, char a2)
{
  v2 = *&aSpring_1[8 * a2];
  sub_25E635860();
}

uint64_t sub_25E5F54E0(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1();
  }

  sub_25E635860();
}

uint64_t sub_25E5F5568()
{
  sub_25E635860();
}

uint64_t sub_25E5F55C4()
{
  sub_25E635860();
}

uint64_t sub_25E5F56A4()
{
  sub_25E635860();
}

uint64_t sub_25E5F5748()
{
  sub_25E635860();
}

uint64_t sub_25E5F5814(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_25E635860();
}

uint64_t sub_25E5F58A4(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_0();
  }

  sub_25E635860();
}

uint64_t sub_25E5F5918()
{
  sub_25E635860();
}

uint64_t sub_25E5F5974()
{
  OUTLINED_FUNCTION_4();
  sub_25E635860();

  return sub_25E636130();
}

uint64_t sub_25E5F59E0()
{
  OUTLINED_FUNCTION_4();
  if (!v0)
  {
    OUTLINED_FUNCTION_0();
  }

  sub_25E635860();

  return sub_25E636130();
}

uint64_t sub_25E5F5A60()
{
  OUTLINED_FUNCTION_4();
  if (!v0)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_25E635860();

  return sub_25E636130();
}

uint64_t sub_25E5F5B14()
{
  sub_25E636110();
  sub_25E635860();

  return sub_25E636130();
}

uint64_t sub_25E5F5BCC()
{
  sub_25E636110();
  MEMORY[0x25F8B9DE0](0);
  return sub_25E636130();
}

uint64_t sub_25E5F5C0C(uint64_t a1, char a2)
{
  sub_25E636110();
  sub_25E5F5EEC(a2);
  sub_25E635860();

  return sub_25E636130();
}

uint64_t sub_25E5F5C6C()
{
  OUTLINED_FUNCTION_4();
  sub_25E635860();

  return sub_25E636130();
}

uint64_t sub_25E5F5CD4()
{
  OUTLINED_FUNCTION_4();
  if (!v0)
  {
    OUTLINED_FUNCTION_1();
  }

  sub_25E635860();

  return sub_25E636130();
}

uint64_t sub_25E5F5D98(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_25E636110();
  a3(v6, a2);
  return sub_25E636130();
}

uint64_t sub_25E5F5DE4()
{
  v0 = sub_25E635F30();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25E5F5E30(char a1)
{
  if (!a1)
  {
    return 0xD00000000000001BLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0x6E6974617265706FLL;
}

uint64_t sub_25E5F5EA0()
{
  v0 = sub_25E635F30();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25E5F5EEC(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x6C6C616D73;
      break;
    case 2:
      result = 0x6D756964656DLL;
      break;
    case 3:
      result = 0x656772616CLL;
      break;
    case 4:
      result = 0x656772616C78;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_25E5F5F70@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25E5F523C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25E5F5FCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25E5F5DE4();
  *a2 = result;
  return result;
}

uint64_t sub_25E5F5FFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E5F5E30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E5F604C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25E5F5EA0();
  *a2 = result;
  return result;
}

uint64_t sub_25E5F607C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E5F5EEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E5F60A8(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 25) = a3;
  *(v4 + 32) = a4;
  return v4;
}

uint64_t sub_25E5F60C0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for PartOfDay(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_25E5F61B0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SummaryItemRequirementEvaluationResult(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_25E5F6310(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RootEventRecorder.Error(unsigned int *a1, int a2)
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

_BYTE *sub_25E5F643C(_BYTE *result, int a2, int a3)
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

unint64_t sub_25E5F64F0()
{
  result = qword_27FCF8D98;
  if (!qword_27FCF8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF8D98);
  }

  return result;
}

unint64_t sub_25E5F6548()
{
  result = qword_27FCF8DA0;
  if (!qword_27FCF8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF8DA0);
  }

  return result;
}

unint64_t sub_25E5F65A0()
{
  result = qword_27FCF8DA8;
  if (!qword_27FCF8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF8DA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4()
{

  return sub_25E636110();
}

Swift::Bool __swiftcall PartOfDay.rangeContains(hour:)(Swift::Int hour)
{
  v3 = *(&off_279A27E28 + *v1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = (v3 + 40);
    do
    {
      v7 = v5;
      v8 = *(v6 - 1) > hour || *v6 < hour;
      v9 = !v8;
      if (!v8)
      {
        break;
      }

      --v5;
      v6 += 2;
    }

    while (v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t static PartOfDay.matches(hour:)(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *(&off_279A27E50 + *(&unk_28704A198 + v2 + 32));
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(&unk_28704A198 + v2 + 32);
      v7 = (v4 + 40);
      while (*(v7 - 1) > a1 || *v7 < a1)
      {
        v7 += 2;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = *(v3 + 16);
        sub_25E5F34E4();
      }

      v11 = *(v3 + 16);
      if (v11 >= *(v3 + 24) >> 1)
      {
        sub_25E5F34E4();
      }

      *(v3 + 16) = v11 + 1;
      *(v3 + v11 + 32) = v6;
    }

    else
    {
LABEL_10:
    }

    ++v2;
  }

  while (v2 != 5);

  return sub_25E5F6814(v3);
}

uint64_t sub_25E5F6814(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25E5F83E0();
  v4 = MEMORY[0x25F8B9840](v2, &type metadata for PartOfDay, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_25E6030E0(&v9, *(a1 + v6++));
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

uint64_t sub_25E5F68AC(uint64_t a1)
{
  result = MEMORY[0x25F8B9840](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_25E603328(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_25E5F696C(uint64_t a1)
{
  v2 = MEMORY[0x25F8B9840](*(a1 + 16), MEMORY[0x277D84D38], MEMORY[0x277D84D48]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_25E603574(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

Swift::String __swiftcall PartOfDay.localizedText()()
{
  *v0;
  type metadata accessor for LocalizedString();
  v1 = static LocalizedString.localizedString(forKey:)();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t PartOfDay.localizedSynonyms()()
{
  OUTLINED_FUNCTION_4_0();
  v2 = "PNPartOfDayNoonText";
  switch(*v0)
  {
    case 1:
      v2 = "PNPartOfDayAfternoonText";
      v1 -= 3;
      break;
    case 2:
      v2 = "PNPartOfDayEveningText";
      v1 += 2;
      break;
    case 3:
      v2 = "PNPartOfDayNightText";
      break;
    case 4:
      v2 = "detectorSceneIdentifiers";
      v1 -= 2;
      break;
    default:
      break;
  }

  v7 = v1;
  v8 = v2 | 0x8000000000000000;

  v3 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v3, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(v7, v8);
  v5 = v4;

  return v5;
}

uint64_t static PartOfDay.from(localizedText:)@<X0>(_BYTE *a1@<X8>)
{
  v1 = sub_25E635830();
  v3 = v2;
  v4 = type metadata accessor for LocalizedString();
  v5 = 0;
  v34 = v1;
  while (1)
  {
    v6 = *(&unk_28704A198 + v5 + 32);
    v7 = v5 + 1;
    static LocalizedString.localizedString(forKey:)();

    v8 = sub_25E635830();
    v10 = v9;

    if (v8 == v1 && v10 == v3)
    {
      break;
    }

    v12 = sub_25E636070();

    if (v12)
    {
      goto LABEL_24;
    }

    v13 = "PNPartOfDayNoonText";
    v35 = v7;
    v36 = v6;
    v14 = 0xD000000000000016;
    switch(v6)
    {
      case 1:
        v14 = 0xD000000000000013;
        v13 = "PNPartOfDayAfternoonText";
        break;
      case 2:
        v14 = 0xD000000000000018;
        v13 = "PNPartOfDayEveningText";
        break;
      case 3:
        v13 = "PNPartOfDayNightText";
        break;
      case 4:
        v14 = 0xD000000000000014;
        v13 = "detectorSceneIdentifiers";
        break;
      default:
        break;
    }

    v37 = v14;
    v39 = v13 | 0x8000000000000000;

    v15 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v15, 0xE800000000000000);

    v16 = v4;
    static LocalizedString.localizedSynonyms(forKey:)(v37, v39);
    v18 = v17;

    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v3;
      v38 = MEMORY[0x277D84F90];
      sub_25E5F3468();
      v21 = v38;
      v22 = (v18 + 40);
      do
      {
        v23 = *(v22 - 1);
        v24 = *v22;
        v25 = sub_25E635830();
        v27 = v26;
        v28 = *(v38 + 16);
        if (v28 >= *(v38 + 24) >> 1)
        {
          sub_25E5F3468();
        }

        *(v38 + 16) = v28 + 1;
        v29 = v38 + 16 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v27;
        v22 += 2;
        --v19;
      }

      while (v19);

      v3 = v20;
      v1 = v34;
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v30 = sub_25E5F68AC(v21);
    v31 = sub_25E5F6F28(v1, v3, v30);

    LOBYTE(v6) = v36;
    if (v31)
    {
      goto LABEL_24;
    }

    v4 = v16;
    v5 = v35;
    if (v35 == 5)
    {
      LOBYTE(v6) = 5;
      goto LABEL_24;
    }
  }

LABEL_24:

  *a1 = v6;
  return result;
}

BOOL sub_25E5F6F28(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  v9 = a3[5];
  sub_25E636110();
  sub_25E635860();
  sub_25E636130();
  OUTLINED_FUNCTION_2_0();
  do
  {
    v11 = v10 & v4;
    v12 = (v5 << (v10 & v4)) & *(v3 + (((v10 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    v14 = (a3[6] + 16 * v11);
    if (*v14 == a1 && v14[1] == a2)
    {
      break;
    }

    v16 = sub_25E636070();
    v10 = v11 + 1;
  }

  while ((v16 & 1) == 0);
  return v13;
}

uint64_t sub_25E5F7000(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v5 = a2[5];
    sub_25E636100();
    OUTLINED_FUNCTION_3_0();
    do
    {
      OUTLINED_FUNCTION_1_0(v6);
      if (!v8)
      {
        break;
      }

      v6 = v7 + 1;
    }

    while (*(a2[6] + 8 * v7) != a1);
  }

  return v2;
}

BOOL sub_25E5F7060(uint64_t a1, void *a2)
{
  if (!a2[2])
  {
    return 0;
  }

  v7 = a2[5];
  sub_25E635D80();
  OUTLINED_FUNCTION_2_0();
  do
  {
    v9 = v8 & v3;
    v10 = (v4 << (v8 & v3)) & *(v2 + (((v8 & v3) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    sub_25E5F82CC(a2[6] + 40 * v9, v14);
    v12 = MEMORY[0x25F8B9A50](v14, a1);
    sub_25E5F8328(v14);
    v8 = v9 + 1;
  }

  while ((v12 & 1) == 0);
  return v11;
}

uint64_t sub_25E5F7120(unsigned __int8 a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = a1;
    v5 = a2[5];
    sub_25E636110();
    MEMORY[0x25F8B9DE0](v4);
    sub_25E636130();
    OUTLINED_FUNCTION_3_0();
    do
    {
      OUTLINED_FUNCTION_1_0(v6);
      if (!v8)
      {
        break;
      }

      v6 = v7 + 1;
    }

    while (*(a2[6] + v7) != v4);
  }

  return v2;
}

PhotosIntelligenceCore::PartOfDay_optional __swiftcall PartOfDay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PartOfDay.rawValue.getter()
{
  result = 0x676E696E726F6DLL;
  switch(*v0)
  {
    case 1:
      result = 1852796782;
      break;
    case 2:
      result = 0x6F6F6E7265746661;
      break;
    case 3:
      result = 0x676E696E657665;
      break;
    case 4:
      result = 0x746867696ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25E5F72BC@<X0>(uint64_t *a1@<X8>)
{
  result = PartOfDay.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E5F73A4()
{
  v0 = sub_25E6355B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E6355F0();
  __swift_allocate_value_buffer(v5, qword_280CB21B8);
  __swift_project_value_buffer(v5, qword_280CB21B8);
  (*(v1 + 104))(v4, *MEMORY[0x277CC9830], v0);
  sub_25E6355C0();
  return (*(v1 + 8))(v4, v0);
}

void sub_25E5F74C4(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8DB0, "HF");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  v8 = sub_25E635610();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E635530();
  v14 = *(v13 - 1);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CB21B0 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v18 = sub_25E6355F0();
    __swift_project_value_buffer(v18, qword_280CB21B8);
    sub_25E635600();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      __break(1u);
LABEL_24:
      JUMPOUT(0);
    }

    (*(v9 + 32))(v12, v7, v8);
    sub_25E6355D0();
    (*(v9 + 8))(v12, v8);
    v19 = sub_25E635520();
    v21 = v20;
    v22 = v14[1];
    ++v14;
    v22(v17, v13);
    if (v21)
    {
      break;
    }

    v23 = static PartOfDay.matches(hour:)(v19);
    v12 = 0;
    v8 = v23 + 56;
    v24 = *(v23 + 56);
    v44 = v23;
    v25 = 1 << *(v23 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v9 = v26 & v24;
    v7 = ((v25 + 63) >> 6);
    v13 = "PNPartOfDayNoonText";
    v41 = "PNPartOfDayAfternoonText";
    v42 = a3 + 2;
    v39 = "PNPartOfDayNightText";
    v40 = "PNPartOfDayEveningText";
    v38 = "detectorSceneIdentifiers";
    v43 = a3;
    if ((v26 & v24) != 0)
    {
LABEL_12:
      while (2)
      {
        v28 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v29 = v28 | (v12 << 6);
        v30 = *(v44 + 48);
        v31 = *(v30 + v29);
        *(v30 + v29);
        type metadata accessor for LocalizedString();
        v45 = static LocalizedString.localizedString(forKey:)();
        v17 = v32;

        v33 = 0xD000000000000016;
        v34 = "PNPartOfDayNoonText";
        switch(v31)
        {
          case 0:
            goto LABEL_17;
          case 1:
            v33 = 0xD000000000000013;
            v34 = v41;
            goto LABEL_17;
          case 2:
            v33 = 0xD000000000000018;
            v34 = v40;
            goto LABEL_17;
          case 3:
            v34 = v39;
            goto LABEL_17;
          case 4:
            v33 = 0xD000000000000014;
            v34 = v38;
LABEL_17:
            v46 = v33;
            v47 = v34 | 0x8000000000000000;

            MEMORY[0x25F8B9540](0x736D796E6F6E7953, 0xE800000000000000);

            static LocalizedString.localizedSynonyms(forKey:)(v46, v47);
            v36 = v35;

            sub_25E5F68AC(v36);
            v37 = sub_25E6357C0();
            v14 = sub_25E635B30();
            a3 = v43;
            (v43)[2](v43, v37, v14);

            if (!v9)
            {
              break;
            }

            continue;
          default:
            goto LABEL_24;
        }

        break;
      }
    }

    while (1)
    {
      v27 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v27 >= v7)
      {

        goto LABEL_20;
      }

      v9 = *(v8 + 8 * v27);
      ++v12;
      if (v9)
      {
        v12 = v27;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  a3[2](a3, 0, 0);
LABEL_20:
  _Block_release(a3);
}

uint64_t static PNPartOfDayCalculator.partOfDayLocalizedStrings(for:result:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *), uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8DB0, "HF") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v5 = &v42 - v4;
  v6 = sub_25E635610();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E635530();
  v15 = OUTLINED_FUNCTION_5(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CB21B0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v22 = sub_25E6355F0();
    __swift_project_value_buffer(v22, qword_280CB21B8);
    sub_25E635600();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      __break(1u);
LABEL_25:
      JUMPOUT(0);
    }

    (*(v9 + 32))(v13, v5, v6);
    sub_25E6355D0();
    (*(v9 + 8))(v13, v6);
    v23 = sub_25E635520();
    v25 = v24;
    (*(v17 + 1))(v21, v14);
    if (v25)
    {
      return v48(0, 0, 0);
    }

    v27 = static PartOfDay.matches(hour:)(v23);
    v28 = 0;
    v6 = v27 + 56;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v5 = v30 & *(v27 + 56);
    v9 = (v29 + 63) >> 6;
    v17 = "PNPartOfDayNoonText";
    v45 = "PNPartOfDayAfternoonText";
    v46 = v27;
    v43 = "PNPartOfDayNightText";
    v44 = "PNPartOfDayEveningText";
    v42 = "detectorSceneIdentifiers";
    if (v5)
    {
LABEL_12:
      while (2)
      {
        v32 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v33 = v32 | (v28 << 6);
        v34 = *(v46 + 48);
        v35 = *(v34 + v33);
        v13 = "PNPartOfDayNoonText";
        switch(*(v34 + v33))
        {
          case 1:
          case 2:
          case 4:
            OUTLINED_FUNCTION_4_0();
            break;
          default:
            break;
        }

        type metadata accessor for LocalizedString();
        v49 = static LocalizedString.localizedString(forKey:)();
        v14 = v36;

        v37 = 0xD000000000000016;
        v38 = "PNPartOfDayNoonText";
        switch(v35)
        {
          case 0:
            goto LABEL_19;
          case 1:
            v37 = 0xD000000000000013;
            v38 = v45;
            goto LABEL_19;
          case 2:
            v37 = 0xD000000000000018;
            v38 = v44;
            goto LABEL_19;
          case 3:
            v38 = v43;
            goto LABEL_19;
          case 4:
            v37 = 0xD000000000000014;
            v38 = v42;
LABEL_19:
            v50 = v37;
            v51 = v38 | 0x8000000000000000;

            v39 = OUTLINED_FUNCTION_0_0();
            MEMORY[0x25F8B9540](v39, 0xE800000000000000);

            static LocalizedString.localizedSynonyms(forKey:)(v50, v51);
            v41 = v40;

            v21 = sub_25E5F68AC(v41);
            v48(v49, v14, v21);

            if (!v5)
            {
              break;
            }

            continue;
          default:
            goto LABEL_25;
        }

        break;
      }
    }

    while (1)
    {
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v31 >= v9)
      {
      }

      v5 = *(v6 + 8 * v31);
      ++v28;
      if (v5)
      {
        v28 = v31;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }
}

PNPartOfDayCalculator __swiftcall PNPartOfDayCalculator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25E5F809C()
{
  result = qword_280CB21D0;
  if (!qword_280CB21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB21D0);
  }

  return result;
}

unint64_t sub_25E5F80F4()
{
  result = qword_27FCF8DB8;
  if (!qword_27FCF8DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF8DC0, &qword_25E63A7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF8DB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PartOfDay(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t type metadata accessor for PNPartOfDayCalculator()
{
  result = qword_27FCF8DC8;
  if (!qword_27FCF8DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCF8DC8);
  }

  return result;
}

unint64_t sub_25E5F8278()
{
  result = qword_27FCF8DD0;
  if (!qword_27FCF8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF8DD0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_25E5F83E0()
{
  result = qword_280CB21D8[0];
  if (!qword_280CB21D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CB21D8);
  }

  return result;
}

uint64_t PNAssetGroupOptions.groupByDifferentOrientation.getter()
{
  v1 = OBJC_IVAR___PNAssetGroupOptions_groupByDifferentOrientation;
  OUTLINED_FUNCTION_0_1();
  return *(v0 + v1);
}

uint64_t PNAssetGroupOptions.groupByDifferentOrientation.setter(char a1)
{
  v3 = OBJC_IVAR___PNAssetGroupOptions_groupByDifferentOrientation;
  result = OUTLINED_FUNCTION_1_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PNAssetGroupOptions.groupBySharedLibraryParticipationState.getter()
{
  v1 = OBJC_IVAR___PNAssetGroupOptions_groupBySharedLibraryParticipationState;
  OUTLINED_FUNCTION_0_1();
  return *(v0 + v1);
}

uint64_t PNAssetGroupOptions.groupBySharedLibraryParticipationState.setter(char a1)
{
  v3 = OBJC_IVAR___PNAssetGroupOptions_groupBySharedLibraryParticipationState;
  result = OUTLINED_FUNCTION_1_1();
  *(v1 + v3) = a1;
  return result;
}

double PNAssetGroupOptions.comparableCurationScoreThreshold.getter()
{
  v1 = OBJC_IVAR___PNAssetGroupOptions_comparableCurationScoreThreshold;
  OUTLINED_FUNCTION_0_1();
  return *(v0 + v1);
}

uint64_t PNAssetGroupOptions.comparableCurationScoreThreshold.setter(double a1)
{
  v3 = OBJC_IVAR___PNAssetGroupOptions_comparableCurationScoreThreshold;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PNAssetGroupOptions.distanceThreshold.getter()
{
  v1 = OBJC_IVAR___PNAssetGroupOptions_distanceThreshold;
  OUTLINED_FUNCTION_0_1();
  return *(v0 + v1);
}

uint64_t PNAssetGroupOptions.distanceThreshold.setter(int a1)
{
  v3 = OBJC_IVAR___PNAssetGroupOptions_distanceThreshold;
  result = OUTLINED_FUNCTION_1_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PNAssetGroupOptions.distanceFromFirstThreshold.getter()
{
  v1 = OBJC_IVAR___PNAssetGroupOptions_distanceFromFirstThreshold;
  OUTLINED_FUNCTION_0_1();
  return *(v0 + v1);
}

uint64_t PNAssetGroupOptions.distanceFromFirstThreshold.setter(int a1)
{
  v3 = OBJC_IVAR___PNAssetGroupOptions_distanceFromFirstThreshold;
  result = OUTLINED_FUNCTION_1_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PNAssetGroupOptions.distanceIfAdjustedDiffersThreshold.getter()
{
  v1 = OBJC_IVAR___PNAssetGroupOptions_distanceIfAdjustedDiffersThreshold;
  OUTLINED_FUNCTION_0_1();
  return *(v0 + v1);
}

uint64_t PNAssetGroupOptions.distanceIfAdjustedDiffersThreshold.setter(int a1)
{
  v3 = OBJC_IVAR___PNAssetGroupOptions_distanceIfAdjustedDiffersThreshold;
  result = OUTLINED_FUNCTION_1_1();
  *(v1 + v3) = a1;
  return result;
}

void __swiftcall PNAssetGroupOptions.init()(PNAssetGroupOptions *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id PNAssetGroupOptions.init()()
{
  *(v0 + OBJC_IVAR___PNAssetGroupOptions_groupByDifferentOrientation) = 1;
  *(v0 + OBJC_IVAR___PNAssetGroupOptions_groupBySharedLibraryParticipationState) = 1;
  *(v0 + OBJC_IVAR___PNAssetGroupOptions_comparableCurationScoreThreshold) = 0x3FA999999999999ALL;
  *(v0 + OBJC_IVAR___PNAssetGroupOptions_distanceThreshold) = 150;
  *(v0 + OBJC_IVAR___PNAssetGroupOptions_distanceFromFirstThreshold) = -1;
  *(v0 + OBJC_IVAR___PNAssetGroupOptions_distanceIfAdjustedDiffersThreshold) = -1;
  v2.super_class = PNAssetGroupOptions;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for PNAssetGroupOptions()
{
  result = qword_27FCF8E08[0];
  if (!qword_27FCF8E08[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FCF8E08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_beginAccess();
}

uint64_t SingleClusterSummarizationElector.elect(from:eligibleItems:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v6 = sub_25E635AC0();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F8B95D0](&v15, v6, WitnessTable);
  sub_25E635F00();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25E635AC0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_25E635950();

  v9 = sub_25E635710();
  (*(*(v9 - 8) + 8))(a3, v9);
  v10 = type metadata accessor for ProgressReporter(0);
  v11 = *(a3 + *(v10 + 20) + 24);

  v12 = *(a3 + *(v10 + 24));

  return v8;
}

uint64_t sub_25E5F8D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v41 = a2;
  v44 = a5;
  v39 = a4;
  v40 = a3;
  v36 = a8;
  v11 = type metadata accessor for ProgressReporter(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a7;
  v14 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = swift_getTupleTypeMetadata2();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v36 - v24;
  (*(v26 + 16))(v21, a1, v17);
  v37 = *&v21[*(v17 + 48) + *(TupleTypeMetadata2 + 48)];
  (*(v22 + 32))(v25);
  v27 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v30 = *a1;
  result = sub_25E635A60();
  if (__OFADD__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    v32 = v38;
    ProgressReporter.child(from:to:)(v38, v30 / result, (v30 + 1) / result);
    v33 = v42;
    v34 = (*(v43 + 16))(v29, v37, v40, v32, v27);
    if (v33)
    {
      (*(v22 + 8))(v25, AssociatedTypeWitness);
    }

    else
    {
      v35 = v34;
      (*(v22 + 8))(v25, AssociatedTypeWitness);

      *v36 = v35;
    }
  }

  return result;
}

uint64_t SummarizationPlanner.__allocating_init(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  SummarizationPlanner.init(with:)(a1, a2);
  return v7;
}

uint64_t SummarizationPlanner.init(with:)(uint64_t a1, uint64_t a2)
{
  v5 = qword_27FCFD920;
  if (qword_27FCF8C18 != -1)
  {
    swift_once();
  }

  v6 = sub_25E635710();
  __swift_project_value_buffer(v6, qword_27FCFD930);
  OUTLINED_FUNCTION_16();
  (*(v7 + 16))(v2 + v5);
  v8 = qword_27FCFD928;
  if (qword_27FCF8C20 != -1)
  {
    swift_once();
  }

  v9 = sub_25E635690();
  __swift_project_value_buffer(v9, qword_27FCFD948);
  OUTLINED_FUNCTION_16();
  (*(v10 + 16))(v2 + v8);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = xmmword_25E63A880;
  *(v2 + 48) = 257;
  *(v2 + 56) = xmmword_25E63A890;
  return v2;
}

void sub_25E5F9328(double a1, double a2, double a3)
{
  if (a3 > 0.0)
  {
    atan(a3 / ((a2 + a2) / 3.14159265));
  }
}

double sub_25E5F936C()
{
  v1 = *(*v0 + 80);
  swift_getTupleTypeMetadata2();
  sub_25E635AC0();
  swift_getWitnessTable();
  sub_25E635930();
  return v3;
}

double sub_25E5F946C@<D0>(double *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>, double a7@<D0>)
{
  v23[3] = a5;
  v13 = *(*a3 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = v23 - v16;
  v18 = *a1;
  (*(v19 + 16))(v23 - v16, a2, TupleTypeMetadata2);
  v20 = *&v17[*(TupleTypeMetadata2 + 48)];
  (*(*(v13 - 8) + 8))(v17, v13);
  if (a3[48] == 1)
  {
    sub_25E5F9328(a4, a7, v20);
  }

  else
  {
    v21 = v20;
  }

  result = v18 + v21;
  *a6 = result;
  return result;
}

uint64_t sub_25E5F95FC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v11 = a1;
  v9[1] = *(v3 + 80);
  v10 = a2;
  v4 = sub_25E635AC0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  return sub_25E5FB6F4(sub_25E5FB500, v9, v4, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
}

uint64_t sub_25E5F96EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v8 = (*(a4 + 32))(a3, a4);
    v12[1] = v12;
    v12[2] = 0;
    v12[3] = v8;
    MEMORY[0x28223BE20](v8);
    swift_getAssociatedTypeWitness();
    sub_25E635AC0();
    swift_getWitnessTable();
    sub_25E635930();

    v9 = v12[5];
  }

  else
  {
    (*(a4 + 32))(a3, a4);
    swift_getAssociatedTypeWitness();
    v9 = sub_25E635A60();
  }

  v10 = *(swift_getTupleTypeMetadata2() + 48);
  result = (*(*(a3 - 8) + 16))(a5, a1, a3);
  *(a5 + v10) = v9;
  return result;
}

uint64_t sub_25E5F9900@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  result = sub_25E635BC0();
  if (__OFADD__(v3, result & 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + (result & 1);
  }

  return result;
}

uint64_t sub_25E5F99C8()
{
  v2 = *(*v0 + 80);
  swift_getTupleTypeMetadata2();
  sub_25E635AC0();
  swift_getWitnessTable();
  sub_25E635930();
  return v3;
}

uint64_t sub_25E5F9AAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = swift_getTupleTypeMetadata2();
  v7 = *(a2 + *(result + 48));
  if (v7 <= v5)
  {
    v7 = v5;
  }

  *a3 = v7;
  return result;
}

double sub_25E5F9B18(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 56);
  if (*(v2 + 48) == 1 && *(v2 + 49) == 1)
  {
    if (result >= a2 / a1)
    {
      result = a2 / a1;
    }

    if (result <= *(v2 + 64))
    {
      return *(v2 + 64);
    }
  }

  return result;
}

void SummarizationPlanner.adaptiveElection(with:targetNumberOfItems:eligibleItems:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v248 = a3;
  v252 = a1;
  v253 = a2;
  v247 = *v4;
  v258 = v4;
  v6 = *(v247 + 80);
  v240 = sub_25E635D30();
  v7 = OUTLINED_FUNCTION_5(v240);
  v239 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v245 = &v225 - v11;
  v242 = sub_25E6356A0();
  v12 = OUTLINED_FUNCTION_5(v242);
  v241 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v18);
  v233 = &v225 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v251 = sub_25E635D30();
  v21 = OUTLINED_FUNCTION_5(v251);
  v235 = v22;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v237 = &v225 - v26;
  v255 = TupleTypeMetadata2;
  v244 = *(TupleTypeMetadata2 - 8);
  v27 = *(v244 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v256 = &v225 - v29;
  v254 = v6;
  v243 = *(v6 - 1);
  v30 = *(v243 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v32);
  v257 = &v225 - v33;
  v34 = sub_25E635660();
  v35 = OUTLINED_FUNCTION_5(v34);
  v249 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7();
  v41 = (v39 - v40);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v225 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v225 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v225 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = (&v225 - v53);
  MEMORY[0x28223BE20](v52);
  v56 = &v225 - v55;
  ProgressReporter.start()();
  v250 = v57;
  if (v57)
  {
    v58 = sub_25E635710();
    OUTLINED_FUNCTION_0_2(v58);
    (*(v59 + 8))(a4);
    v60 = type metadata accessor for ProgressReporter(0);
    OUTLINED_FUNCTION_10(v60);
    v62 = *(a4 + v61 + 24);

    v63 = *(a4 + *(v51 + 6));

    return;
  }

  v230 = v54;
  v227 = v45;
  v228 = v41;
  v226 = v48;
  v225 = v51;
  v232 = a4;
  v64 = v249;
  v231 = v34;
  v65 = qword_27FCFD928;

  sub_25E635650();
  v229 = v65;
  v66 = sub_25E635680();
  v67 = sub_25E635D10();
  if (sub_25E635D20())
  {
    v68 = swift_slowAlloc();
    *v68 = 134218240;
    v69 = v254;
    *(v68 + 4) = sub_25E635A60();

    *(v68 + 12) = 2048;
    *(v68 + 14) = v253;
    v70 = sub_25E635640();
    _os_signpost_emit_with_name_impl(&dword_25E5F0000, v66, v67, v70, "Planner", "Starting to plan for %ld clusters, targeting %ld items", v68, 0x16u);
    OUTLINED_FUNCTION_9();
  }

  else
  {

    v69 = v254;
  }

  v71 = v248;
  v72 = v231;
  (*(v64 + 16))(v230, v56, v231);
  v73 = sub_25E6356D0();
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  swift_allocObject();
  v76 = sub_25E6356C0();
  v77 = v56;
  v78 = v76;
  v79 = *(v64 + 8);
  v249 = v64 + 8;
  v79(v77, v72);
  v80 = sub_25E635A60();
  v81 = v69;
  if (v80 < 2)
  {
    v263 = v252;
    sub_25E635AC0();
    OUTLINED_FUNCTION_3_1();
    swift_getWitnessTable();
    v121 = v245;
    sub_25E635C40();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v121, 1, v69);
    v123 = v232;
    if (EnumTagSinglePayload != 1)
    {
      v132 = v243;
      (*(v243 + 32))(v246, v121, v69);
      v133 = sub_25E635680();
      OUTLINED_FUNCTION_11(&v258);
      sub_25E6356B0();
      v134 = v78;
      v135 = sub_25E635D00();
      v136 = sub_25E635D20();
      v137 = v247;
      if (v136)
      {

        OUTLINED_FUNCTION_11(&v261);
        sub_25E6356E0();

        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_4_1();
        if (v138() == *MEMORY[0x277D85B00])
        {
          v139 = "[Error] Interval already ended";
        }

        else
        {
          v181 = OUTLINED_FUNCTION_8();
          v182(v181);
          v139 = "Finished planning, planned for %ld items";
        }

        v183 = swift_slowAlloc();
        v184 = OUTLINED_FUNCTION_12(v183);
        *(v184 + 4) = v253;
        v185 = v227;
        v186 = sub_25E635640();
        _os_signpost_emit_with_name_impl(&dword_25E5F0000, v133, v135, v186, "Planner", v139, v69, 0xCu);
        v81 = v185;
        OUTLINED_FUNCTION_9();
        v132 = v243;
        v137 = v247;
      }

      v79(v81, v72);
      v187 = v255;
      sub_25E636050();
      v188 = *(v244 + 72);
      v189 = *(v244 + 80);
      swift_allocObject();
      sub_25E635A00();
      v191 = v190;
      v192 = v246;
      v193 = v254;
      (*(v132 + 16))(v190, v246, v254);
      v194 = v132;
      (*(*(v137 + 88) + 32))(v193, *(v137 + 88));
      swift_getAssociatedTypeWitness();
      v195 = sub_25E635A60();

      v196 = v253;
      if (v195 < v253)
      {
        v196 = v195;
      }

      *(v191 + *(v187 + 48)) = v196;
      sub_25E5F9150();

      (*(v194 + 8))(v192, v193);
      v197 = sub_25E635710();
      OUTLINED_FUNCTION_0_2(v197);
      v199 = v232;
      (*(v198 + 8))(v232);
      v200 = type metadata accessor for ProgressReporter(0);
      OUTLINED_FUNCTION_10(v200);
      v202 = *(v199 + v201 + 24);

      v203 = *(v199 + *(v134 + 24));

      return;
    }

    (*(v239 + 8))(v121, v240);
    v124 = sub_25E6356F0();
    v125 = sub_25E635CE0();
    if (OUTLINED_FUNCTION_14(v125))
    {
      v81 = v78;
      *OUTLINED_FUNCTION_15() = 0;
      OUTLINED_FUNCTION_6(&dword_25E5F0000, v126, v127, "Planner found no clusters");
      OUTLINED_FUNCTION_9();
    }

    v128 = sub_25E635680();
    OUTLINED_FUNCTION_11(&v259);
    sub_25E6356B0();
    v129 = sub_25E635D00();
    if (sub_25E635D20())
    {
      v230 = v79;

      OUTLINED_FUNCTION_11(&v262);
      sub_25E6356E0();
      v239 = v78;

      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_1();
      if (v130() == *MEMORY[0x277D85B00])
      {
        v131 = "[Error] Interval already ended";
      }

      else
      {
        v170 = OUTLINED_FUNCTION_8();
        v171(v170);
        v131 = "Finished planning, planning for 0 items";
      }

      v172 = OUTLINED_FUNCTION_15();
      *v172 = 0;
      v173 = v228;
      v174 = sub_25E635640();
      _os_signpost_emit_with_name_impl(&dword_25E5F0000, v128, v129, v174, "Planner", v131, v172, 2u);
      v81 = v173;
      OUTLINED_FUNCTION_9();
      v79 = v230;
    }

    v79(v81, v72);
    sub_25E635A30();

    v175 = sub_25E635710();
    OUTLINED_FUNCTION_0_2(v175);
    (*(v176 + 8))(v123);
    v177 = type metadata accessor for ProgressReporter(0);
    OUTLINED_FUNCTION_10(v177);
    v179 = *(v123 + v178 + 24);

    v180 = *(v123 + *(v128 + 24));
LABEL_69:

    return;
  }

  v82 = v80;
  v239 = v78;
  v83 = sub_25E5F95FC(v252, v71);
  v84 = sub_25E5F99C8();
  v85 = v232;
  if (v84 < 1)
  {

    v140 = sub_25E6356F0();
    v141 = sub_25E635CE0();
    if (OUTLINED_FUNCTION_14(v141))
    {
      *OUTLINED_FUNCTION_15() = 0;
      OUTLINED_FUNCTION_6(&dword_25E5F0000, v142, v143, "Clusters have no eligible assets, bailing out");
      OUTLINED_FUNCTION_9();
    }

    sub_25E635A30();

LABEL_55:
    v144 = sub_25E635710();
    OUTLINED_FUNCTION_0_2(v144);
    (*(v145 + 8))(v85);
    v146 = type metadata accessor for ProgressReporter(0);
    OUTLINED_FUNCTION_10(v146);
    v148 = *(v85 + v147 + 24);

    v149 = *(v85 + *(v140 + 24));
    goto LABEL_69;
  }

  v86 = v84;
  v230 = v79;
  v87 = sub_25E5F9B18(v82, v84);
  v248 = v86;
  v88 = sub_25E5F936C();
  v263 = v83;
  v89 = sub_25E635AC0();
  swift_getWitnessTable();
  v90 = sub_25E635940();

  v260 = v90;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F8B9450](&v263, v89, WitnessTable);
  v260 = v263;
  v246 = v89;
  v238 = WitnessTable;
  sub_25E635F10();
  swift_getWitnessTable();
  v92 = sub_25E635AD0();
  v263 = sub_25E635720();
  v260 = v92;

  v93 = sub_25E635A60();
  v94 = 0;
  v95 = 0;
  v245 = (v243 + 32);
  v240 = v243 + 16;
  v96 = 0.0;
  v250 = (v243 + 8);
  v97 = 0.0;
  v252 = v92;
  v98 = v251;
  v244 = v92;
  while (v95 < v93)
  {
    ProgressReporter.report(progress:)(v97);
    if (v99)
    {

      v150 = sub_25E635710();
      OUTLINED_FUNCTION_0_2(v150);
      (*(v151 + 8))(v85);
      v152 = type metadata accessor for ProgressReporter(0);
      OUTLINED_FUNCTION_10(v152);
      v154 = *(v85 + v153 + 24);

      v155 = *(v85 + *(v94 + 24));

      return;
    }

    v100 = v85;
    v101 = v255;
    v102 = v256;
    sub_25E635AE0();
    v103 = *&v102[*(v101 + 48)];
    OUTLINED_FUNCTION_17(&v266);
    v104(v257, v102, v81);
    if (*(v258 + 48) == 1)
    {
      sub_25E5F9328(v248, v87, v103);
      v106 = v105;
    }

    else
    {
      v106 = v103;
    }

    v107 = v253;
    if (__OFSUB__(v253, v94))
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
      return;
    }

    v108 = v106 / (v88 - v96) * (v253 - v94);
    if (COERCE__INT64(fabs(v108)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_91;
    }

    if (v108 <= -9.22337204e18)
    {
      goto LABEL_92;
    }

    if (v108 >= 9.22337204e18)
    {
      goto LABEL_93;
    }

    if (v103 < v108)
    {
      v108 = v103;
    }

    v109 = v108 + 0.0000001;
    if ((*&v109 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_94;
    }

    if (v109 <= -9.22337204e18)
    {
      goto LABEL_95;
    }

    if (v109 >= 9.22337204e18)
    {
      goto LABEL_96;
    }

    v110 = v258[5];
    if (v110 >= v109)
    {
      v111 = v109;
    }

    else
    {
      v111 = v258[5];
    }

    if (v110 <= 0)
    {
      v112 = v109;
    }

    else
    {
      v112 = v111;
    }

    if (v112 >= v258[4])
    {
      v113 = v256;
      v114 = *(v255 + 48);
      OUTLINED_FUNCTION_17(&v264);
      v115(v113, v257, v254);
      *&v113[v114] = v112;
      sub_25E635A80();
      v116 = __OFADD__(v94, v112);
      v94 += v112;
      if (v116)
      {
        goto LABEL_97;
      }
    }

    v85 = v100;
    v81 = v254;
    v98 = v251;
    if (v94 <= v107)
    {
      ++v95;
      v96 = v96 + v106;
      if (v95 != v93)
      {
        goto LABEL_40;
      }

      if (sub_25E635A60())
      {
        v95 = v93;
LABEL_40:
        v92 = v244;
        goto LABEL_42;
      }
    }

    swift_getWitnessTable();
    v117 = v256;
    sub_25E635C70();
    v118 = *v250;
    (*v250)(v117, v81);
    sub_25E635AB0();
    if (v93 < 2)
    {
      v118(v257, v81);
      v94 = 0;
      v92 = v244;
      break;
    }

    --v93;
    v119 = v258;
    v92 = v244;
    if (*(v258 + 48) == 1)
    {
      v120 = sub_25E5F99C8();
      if (*(v119 + 49) == 1)
      {
        v87 = sub_25E5F9B18(v93, v120);
      }
    }

    else
    {
      v120 = v248;
    }

    v252 = v260;
    v248 = v120;
    v88 = sub_25E5F936C();
    v94 = 0;
    v95 = 0;
    v96 = 0.0;
LABEL_42:
    v97 = v97 + fmin((1.0 - v97) * 0.5, 0.1);
    (*v250)(v257, v81);
  }

  v259 = v263;
  OUTLINED_FUNCTION_3_1();
  swift_getWitnessTable();
  if (sub_25E635C50())
  {
    v259 = v92;
    v156 = v237;
    sub_25E635780();
    v157 = v255;
    if (__swift_getEnumTagSinglePayload(v156, 1, v255) == 1)
    {
      (*(v235 + 8))(v156, v98);

      v158 = sub_25E6356F0();
      v159 = sub_25E635CE0();
      if (OUTLINED_FUNCTION_14(v159))
      {
        *OUTLINED_FUNCTION_15() = 0;
        OUTLINED_FUNCTION_6(&dword_25E5F0000, v160, v161, "Planner found no eligible clusters");
        OUTLINED_FUNCTION_9();
      }

      v140 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_13(&v256);
      v162 = sub_25E635D00();
      v163 = sub_25E635D20();
      v164 = v230;
      if (v163)
      {

        v165 = v233;
        sub_25E6356E0();

        OUTLINED_FUNCTION_11(&v265);
        v167 = *(v166 + 88);
        OUTLINED_FUNCTION_4_1();
        if (v168() == *MEMORY[0x277D85B00])
        {
          v169 = "[Error] Interval already ended";
        }

        else
        {
          (*(v81 + 1))(v165, v164);
          v169 = "Finished planning, planning for 0 items";
        }

        v223 = OUTLINED_FUNCTION_15();
        *v223 = 0;
        v224 = sub_25E635640();
        _os_signpost_emit_with_name_impl(&dword_25E5F0000, v140, v162, v224, "Planner", v169, v223, 2u);
        OUTLINED_FUNCTION_9();
        v164 = v230;
      }

      v164(v92, v231);

      goto LABEL_55;
    }

    v94 = *(v156 + *(v157 + 48));
    OUTLINED_FUNCTION_17(&v266);
    v204 = v234;
    v205(v234);

    if (v94 >= v253)
    {
      v94 = v253;
    }

    v206 = *(v157 + 48);
    OUTLINED_FUNCTION_17(&v264);
    v207 = v256;
    v208(v256, v204, v81);
    *&v207[v206] = v94;
    sub_25E635A80();
    (*v250)(v204, v81);
  }

  else
  {
  }

  v209 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13(&v257);
  v210 = sub_25E635D00();
  v211 = sub_25E635D20();
  v212 = v231;
  if (v211)
  {

    v213 = v236;
    sub_25E6356E0();
    v214 = v213;

    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_4_1();
    if (v215() == *MEMORY[0x277D85B00])
    {
      v216 = "[Error] Interval already ended";
    }

    else
    {
      v217 = OUTLINED_FUNCTION_8();
      v218(v217);
      v216 = "Finished planning, planning for %ld items";
    }

    v219 = swift_slowAlloc();
    *(OUTLINED_FUNCTION_12(v219) + 4) = v94;
    v220 = v226;
    v221 = sub_25E635640();
    _os_signpost_emit_with_name_impl(&dword_25E5F0000, v209, v210, v221, "Planner", v216, v214, 0xCu);
    OUTLINED_FUNCTION_9();
    v92 = v220;
  }

  v230(v92, v212);
  ProgressReporter.complete()();

  if (v222)
  {
  }
}

uint64_t SummarizationPlanner.deinit()
{
  v1 = *(v0 + 24);

  v2 = qword_27FCFD920;
  v3 = sub_25E635710();
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = qword_27FCFD928;
  v6 = sub_25E635690();
  OUTLINED_FUNCTION_0_2(v6);
  (*(v7 + 8))(v0 + v5);
  return v0;
}

uint64_t SummarizationPlanner.__deallocating_deinit()
{
  SummarizationPlanner.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25E5FB348()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_25E5FB380()
{
  result = sub_25E635710();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_25E635690();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25E5FB4E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_25E5F9AAC(a1, a2, a3);
}

uint64_t sub_25E5FB524@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_25E5F9900(a1, a2);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_9()
{

  JUMPOUT(0x25F8BA800);
}

uint64_t OUTLINED_FUNCTION_12(uint64_t result)
{
  *result = 0;
  *(result + 1) = v1;
  *(result + 2) = 2048;
  return result;
}

uint64_t OUTLINED_FUNCTION_13@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 328);

  return sub_25E6356B0();
}

BOOL OUTLINED_FUNCTION_14(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18()
{
  v2 = *(v0 - 176) + *(v0 - 416);

  return sub_25E635680();
}

uint64_t sub_25E5FB6F4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v54 = a1;
  v55 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_2_3();
  v56 = v14 - v13;
  v16 = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = OUTLINED_FUNCTION_5(AssociatedTypeWitness);
  v58 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v43 - v22;
  v24 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_3();
  v52 = v26 - v25;
  v27 = swift_getAssociatedTypeWitness();
  v28 = OUTLINED_FUNCTION_5(v27);
  v46 = v29;
  v47 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v33 = &v43 - v32;
  v34 = sub_25E635C20();
  if (!v34)
  {
    return sub_25E635A30();
  }

  v57 = v34;
  v61 = sub_25E635E80();
  v48 = sub_25E635E90();
  sub_25E635E60();
  result = sub_25E635C00();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v43 = v11;
    v44 = a5;
    v36 = 0;
    v49 = (v58 + 16);
    v50 = v58 + 8;
    v51 = v8;
    while (!__OFADD__(v36, 1))
    {
      v58 = v36 + 1;
      v37 = sub_25E635C60();
      (*v49)(v23);
      v37(v60, 0);
      v38 = v59;
      v54(v23, v56);
      if (v38)
      {
        v41 = OUTLINED_FUNCTION_5_1();
        v42(v41);
        (*(v46 + 8))(v33, v47);

        return (*(v43 + 32))(v45, v56, v44);
      }

      v59 = 0;
      v39 = OUTLINED_FUNCTION_5_1();
      v40(v39);
      sub_25E635E70();
      result = sub_25E635C30();
      ++v36;
      if (v58 == v57)
      {
        (*(v46 + 8))(v33, v47);
        return v61;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25E5FBAD0()
{
  v0 = sub_25E635710();
  __swift_allocate_value_buffer(v0, qword_27FCFD930);
  __swift_project_value_buffer(v0, qword_27FCFD930);
  return sub_25E635700();
}

uint64_t sub_25E5FBB54()
{
  v0 = sub_25E635710();
  v1 = OUTLINED_FUNCTION_5(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_3();
  v8 = v7 - v6;
  v9 = sub_25E635690();
  __swift_allocate_value_buffer(v9, qword_27FCFD948);
  __swift_project_value_buffer(v9, qword_27FCFD948);
  if (qword_27FCF8C18 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  v10 = __swift_project_value_buffer(v0, qword_27FCFD930);
  (*(v3 + 16))(v8, v10, v0);
  return sub_25E635670();
}

uint64_t Summarizer.__allocating_init(clusterer:planner:elector:)(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  Summarizer.init(clusterer:planner:elector:)(a1, a2, a3);
  return v9;
}

uint64_t Summarizer.init(clusterer:planner:elector:)(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v7 = qword_27FCFD960;
  if (qword_27FCF8C18 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  v8 = sub_25E635710();
  __swift_project_value_buffer(v8, qword_27FCFD930);
  OUTLINED_FUNCTION_6_0();
  (*(v9 + 16))(v3 + v7);
  v10 = qword_27FCFD968;
  if (qword_27FCF8C20 != -1)
  {
    swift_once();
  }

  v11 = sub_25E635690();
  __swift_project_value_buffer(v11, qword_27FCFD948);
  OUTLINED_FUNCTION_6_0();
  (*(v12 + 16))(v3 + v10);
  sub_25E5F20F4(a1, v3 + 16);
  *(v3 + 56) = a2;
  sub_25E5F20F4(a3, v3 + 64);
  return v3;
}

uint64_t sub_25E5FBDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v141 = a3;
  v146 = a2;
  v7 = *v4;
  v8 = sub_25E6356A0();
  v9 = OUTLINED_FUNCTION_5(v8);
  v134 = v10;
  v135 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v133 = v14 - v13;
  v15 = type metadata accessor for ProgressReporter(0);
  v16 = OUTLINED_FUNCTION_1_2(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_0();
  v139 = v19;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_0();
  v140 = v21;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_0();
  v143 = v23;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_0();
  v150 = v25;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_0();
  v147 = v27;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v28);
  v142 = (&v132 - v29);
  v149 = sub_25E635660();
  v30 = OUTLINED_FUNCTION_5(v149);
  v151 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_0();
  v137 = v34;
  OUTLINED_FUNCTION_4_2();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v132 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v132 - v39;
  v41 = qword_27FCFD968;

  sub_25E635650();
  v145 = v4;
  v136 = v41;
  v42 = sub_25E635680();
  v43 = sub_25E635D10();
  v44 = sub_25E635D20();
  v138 = v7;
  v144 = a1;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = v7;
    v47 = v15;
    v48 = a4;
    v49 = v45;
    *v45 = 134218240;
    v51 = *(v46 + 80);
    v50 = *(v46 + 88);
    swift_getAssociatedTypeWitness();
    *(v49 + 1) = sub_25E635A60();

    *(v49 + 6) = 2048;
    *(v49 + 14) = v146;
    v52 = sub_25E635640();
    _os_signpost_emit_with_name_impl(&dword_25E5F0000, v42, v43, v52, "Summarizer", "Starting to summarize %ld items into %ld", v49, 0x16u);
    a4 = v48;
    v15 = v47;
    OUTLINED_FUNCTION_9();
  }

  else
  {
  }

  v53 = v151;
  v54 = v149;
  (*(v151 + 16))(v38, v40, v149);
  v55 = sub_25E6356D0();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v58 = sub_25E6356C0();
  v61 = *(v53 + 8);
  v59 = v53 + 8;
  v60 = v61;
  v61(v40, v54);
  ProgressReporter.start()();
  v62 = v150;
  if (v63)
  {

    v64 = sub_25E635710();
    OUTLINED_FUNCTION_1_2(v64);
    (*(v65 + 8))(a4);
    v66 = *(a4 + *(v15 + 20) + 24);

    v67 = *(a4 + *(v15 + 24));
LABEL_12:

    return v15;
  }

  v132 = v60;
  v148 = v58;
  v68 = v142;
  ProgressReporter.child(from:to:)(v142, 0.0, 0.4);
  v151 = 0;
  ProgressReporter.child(from:to:)(v147, 0.4, 0.6);
  ProgressReporter.child(from:to:)(v62, 0.6, 1.0);
  v69 = v145;
  v70 = v145[5];
  v71 = v145[6];
  __swift_project_boxed_opaque_existential_1(v145 + 2, v70);
  v72 = v68;
  v73 = v143;
  sub_25E5FCC60(v72, v143);
  v74 = v151;
  v75 = (*(v71 + 24))(v144, v73, v70, v71);
  if (v74)
  {

    v76 = sub_25E635710();
    OUTLINED_FUNCTION_1_2(v76);
    v78 = *(v77 + 8);
    v79 = v15;
    v15 = v77 + 8;
    v78(v62, v76);
    v80 = *(v62 + *(v79 + 20) + 24);

    v81 = *(v62 + *(v79 + 24));

    v82 = v147;
    v78(v147, v76);
    v83 = *(v82 + *(v79 + 20) + 24);

    v84 = *(v82 + *(v79 + 24));

    v78(a4, v76);
    v85 = *(a4 + *(v79 + 20) + 24);

    v86 = *(a4 + *(v79 + 24));
    goto LABEL_12;
  }

  v87 = v75;
  v151 = v59;
  v144 = v15;
  v88 = v69[7];
  v89 = v140;
  sub_25E5FCC60(v147, v140);
  v90 = v141;
  SummarizationPlanner.adaptiveElection(with:targetNumberOfItems:eligibleItems:progressReporter:)(v87, v146, v141, v89);
  v91 = v69;
  v93 = v92;

  swift_bridgeObjectRetain_n();
  v94 = sub_25E6356F0();
  v95 = sub_25E635CF0();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v146 = v96;
    v97 = swift_slowAlloc();
    v147 = v97;
    v153 = v97;
    *v96 = 136315138;
    v152 = v93;
    MEMORY[0x28223BE20](v97);
    v98 = *(v138 + 80);
    v99 = *(v138 + 88);
    *(&v132 - 2) = v98;
    *(&v132 - 1) = v99;
    KeyPath = swift_getKeyPath();
    LODWORD(v143) = v95;
    v142 = &v132;
    v101 = MEMORY[0x28223BE20](KeyPath);
    *(&v132 - 4) = v98;
    *(&v132 - 3) = v99;
    *(&v132 - 2) = v101;
    swift_getTupleTypeMetadata2();
    v102 = sub_25E635AC0();
    WitnessTable = swift_getWitnessTable();
    v91 = v145;
    v104 = MEMORY[0x277D83B88];
    v106 = sub_25E5FB6F4(sub_25E5FCCC4, (&v132 - 6), v102, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v105);

    v107 = MEMORY[0x25F8B96B0](v106, v104);
    v109 = v108;

    v110 = sub_25E6011D4(v107, v109, &v153);
    v90 = v141;

    v111 = v146;
    *(v146 + 1) = v110;
    _os_log_impl(&dword_25E5F0000, v94, v143, "Electing targetNumberOfItems per cluster: %s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v147);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_9();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v112 = v91[11];
  v113 = v91[12];
  __swift_project_boxed_opaque_existential_1(v91 + 8, v112);
  v114 = v139;
  sub_25E5FCC60(v150, v139);
  v15 = (*(v113 + 24))(v93, v90, v114, v112, v113);

  ProgressReporter.complete()();
  if (v116)
  {

    goto LABEL_12;
  }

  v117 = sub_25E635680();
  v118 = v137;
  sub_25E6356B0();
  v119 = sub_25E635D00();
  if (sub_25E635D20())
  {

    v120 = v133;
    sub_25E6356E0();

    v122 = v134;
    v121 = v135;
    v123 = (*(v134 + 88))(v120, v135);
    v124 = v132;
    if (v123 == *MEMORY[0x277D85B00])
    {
      v125 = 0;
      v126 = "[Error] Interval already ended";
    }

    else
    {
      (*(v122 + 8))(v120, v121);
      v126 = "Finished summarizing, elected %ld items";
      v125 = 1;
    }

    v127 = swift_slowAlloc();
    *v127 = 0;
    *(v127 + 1) = v125;
    *(v127 + 2) = 2048;
    v129 = *(v138 + 80);
    v128 = *(v138 + 88);
    swift_getAssociatedTypeWitness();
    *(v127 + 4) = sub_25E635A60();

    v130 = v137;
    v131 = sub_25E635640();
    _os_signpost_emit_with_name_impl(&dword_25E5F0000, v117, v119, v131, "Summarizer", v126, v127, 0xCu);
    OUTLINED_FUNCTION_9();

    v124(v130, v149);
  }

  else
  {

    v132(v118, v149);
  }

  return v15;
}

uint64_t sub_25E5FC990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(v6 + 16))(&v16 - v11, a1, TupleTypeMetadata2);
  v13 = *(TupleTypeMetadata2 + 48);
  v14 = *&v12[v13];
  (*(*(a3 - 8) + 32))(v10, v12, a3);
  *&v10[v13] = v14;
  swift_getAtKeyPath();
  return (*(v6 + 8))(v10, TupleTypeMetadata2);
}

uint64_t *Summarizer.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  v2 = qword_27FCFD960;
  v3 = sub_25E635710();
  OUTLINED_FUNCTION_1_2(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = qword_27FCFD968;
  v6 = sub_25E635690();
  OUTLINED_FUNCTION_1_2(v6);
  (*(v7 + 8))(v0 + v5);
  return v0;
}

uint64_t Summarizer.__deallocating_deinit()
{
  Summarizer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25E5FCC60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgressReporter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25E5FCD34()
{
  result = sub_25E635710();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_25E635690();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return swift_once();
}

uint64_t SummarizationDensityClusterer.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SummarizationDensityClusterer.init()();
  return v3;
}

uint64_t SummarizationDensityClusterer.init()()
{
  v1 = qword_27FCFD970;
  if (qword_27FCF8C18 != -1)
  {
    swift_once();
  }

  v2 = sub_25E635710();
  __swift_project_value_buffer(v2, qword_27FCFD930);
  OUTLINED_FUNCTION_3_3();
  (*(v3 + 16))(v0 + v1);
  v4 = qword_27FCFD978;
  if (qword_27FCF8C20 != -1)
  {
    swift_once();
  }

  v5 = sub_25E635690();
  __swift_project_value_buffer(v5, qword_27FCFD948);
  OUTLINED_FUNCTION_3_3();
  (*(v6 + 16))(v0 + v4);
  return v0;
}

uint64_t sub_25E5FD07C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v113 = a2;
  OUTLINED_FUNCTION_2_4();
  v6 = v5;
  v7 = sub_25E6356A0();
  v8 = OUTLINED_FUNCTION_5(v7);
  v102 = v9;
  v103 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v101 = v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for ProgressReporter(0);
  v13 = OUTLINED_FUNCTION_1_2(v110);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_0();
  v108 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v107 = v100 - v19;
  MEMORY[0x28223BE20](v18);
  v109 = v100 - v20;
  v112 = sub_25E635660();
  v21 = OUTLINED_FUNCTION_5(v112);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_0();
  v105 = v26;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v100 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v100 - v31;
  v33 = qword_27FCFD978;

  sub_25E635650();
  v104 = v33;
  v34 = sub_25E635680();
  v35 = sub_25E635D10();
  v36 = sub_25E635D20();
  v106 = v6;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = v6;
    v39 = v37;
    *v37 = 134217984;
    v41 = *(v38 + 80);
    v40 = *(v38 + 88);
    swift_getAssociatedTypeWitness();
    *(v39 + 1) = sub_25E635A60();

    v42 = sub_25E635640();
    _os_signpost_emit_with_name_impl(&dword_25E5F0000, v34, v35, v42, "Clusterer", "Starting to cluster %ld", v39, 0xCu);
    MEMORY[0x25F8BA800](v39, -1, -1);
  }

  else
  {
  }

  v43 = v23;
  v44 = v112;
  (*(v23 + 16))(v30, v32, v112);
  v45 = sub_25E6356D0();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = sub_25E6356C0();
  v51 = *(v43 + 8);
  v50 = v43 + 8;
  v49 = v51;
  v51(v32, v44);
  v52 = v113;
  ProgressReporter.start()();
  if (v53)
  {

    goto LABEL_7;
  }

  v100[1] = v50;
  v60 = (*v3)[16](a1);
  ProgressReporter.report(progress:)(0.1);
  if (v61)
  {

LABEL_7:
    v54 = sub_25E635710();
    (*(*(v54 - 8) + 8))(v52, v54);
LABEL_8:
    v55 = v110;
    v56 = *(v52 + *(v110 + 20) + 24);

    v57 = (v55 + 24);
LABEL_9:
    v58 = *(v52 + *v57);

    return v55;
  }

  ProgressReporter.child(from:to:)(v109, 0.1, 0.9);
  v62 = v106;
  v63 = *(v106 + 80);
  v118 = sub_25E635720();
  v64 = *(v62 + 88);
  v111 = v63;
  swift_getAssociatedTypeWitness();
  sub_25E635AC0();
  v65 = sub_25E635A60();
  v116 = v60;
  v66 = sub_25E635AC0();
  OUTLINED_FUNCTION_1_3();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F8B95D0](&v114, v66, WitnessTable);

  v116 = v114;
  sub_25E635F00();
  sub_25E635ED0();
  v52 = v113;
  v55 = sub_25E635EF0();
  v68 = v65;
  v69 = v107;
  while (1)
  {
    v70 = &v117;
    sub_25E635EE0();
    v71 = v115;
    if (!v115)
    {
      break;
    }

    if (__OFADD__(v114, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    ProgressReporter.child(from:to:)(v69, v114 / v68, (v114 + 1) / v68);
    v72 = v108;
    sub_25E5FCC60(v69, v108);
    v73 = ((*v3)[17])(v71, v72);

    v114 = v73;
    sub_25E635AC0();
    OUTLINED_FUNCTION_1_3();
    swift_getWitnessTable();
    sub_25E635A70();
  }

  ProgressReporter.report(progress:)(0.9);
  if (v74)
  {

    v55 = sub_25E635710();
    OUTLINED_FUNCTION_1_2(v55);
    v76 = *(v75 + 8);
    v77 = v109;
    v76(v109, v55);
    v78 = v110;
    v79 = *(v77 + *(v110 + 20) + 24);

    v57 = (v78 + 24);
    v80 = *(v77 + *(v78 + 24));

    v76(v52, v55);
    v81 = *(v52 + *(v78 + 20) + 24);

    goto LABEL_9;
  }

  v55 = (*v3)[18](v118);

  ProgressReporter.complete()();
  if (v82)
  {

    v83 = sub_25E635710();
    OUTLINED_FUNCTION_1_2(v83);
    v52 = v109;
    (*(v84 + 8))(v109, v85);
    goto LABEL_8;
  }

  v71 = sub_25E635680();
  v86 = v105;
  sub_25E6356B0();
  LOBYTE(v69) = sub_25E635D00();
  if ((sub_25E635D20() & 1) == 0)
  {

    v89 = v112;
    v90 = v109;
    goto LABEL_28;
  }

  v52 = v101;
  sub_25E6356E0();
  v113 = v48;

  v3 = v102;
  v70 = v103;
  if ((*(v102 + 88))(v52, v103) == *MEMORY[0x277D85B00])
  {
    v87 = 0;
    v88 = "[Error] Interval already ended";
    goto LABEL_27;
  }

LABEL_26:
  (v3[1])(v52, v70);
  v88 = "Finished clustering, found %ld clusters";
  v87 = 1;
LABEL_27:
  v91 = swift_slowAlloc();
  *v91 = 0;
  *(v91 + 1) = v87;
  *(v91 + 2) = 2048;
  *(v91 + 4) = sub_25E635A60();

  v92 = v105;
  v93 = sub_25E635640();
  _os_signpost_emit_with_name_impl(&dword_25E5F0000, v71, v69, v93, "Clusterer", v88, v91, 0xCu);
  v94 = v91;
  v86 = v92;
  MEMORY[0x25F8BA800](v94, -1, -1);

  v90 = v109;
  v89 = v112;
LABEL_28:
  v49(v86, v89);
  v95 = sub_25E635710();
  OUTLINED_FUNCTION_1_2(v95);
  (*(v96 + 8))(v90);
  v97 = v110;
  v98 = *(v90 + *(v110 + 20) + 24);

  v99 = *(v90 + *(v97 + 24));

  return v55;
}

uint64_t sub_25E5FDA18(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  sub_25E635AC0();
  sub_25E636050();
  swift_allocObject();
  v5 = sub_25E635A00();
  *v6 = a1;
  sub_25E5F9150();
  v7 = v5;

  return v7;
}

uint64_t SummarizationDensityClusterer.deinit()
{
  v1 = qword_27FCFD970;
  v2 = sub_25E635710();
  OUTLINED_FUNCTION_1_2(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = qword_27FCFD978;
  v5 = sub_25E635690();
  OUTLINED_FUNCTION_1_2(v5);
  (*(v6 + 8))(v0 + v4);
  return v0;
}

uint64_t SummarizationDensityClusterer.__deallocating_deinit()
{
  SummarizationDensityClusterer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25E5FDC98()
{
  result = sub_25E635710();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_25E635690();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void ProgressReporter.child(at:of:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_1(a3, a1, a2, (a1 + 1));
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProgressReporter.start()()
{
  v1 = sub_25E635710();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for ProgressReporter(0);
  v11 = v10;
  v12 = v0 + *(v10 + 36);
  if (*(v12 + 8) == 1 && !*v12)
  {
    *(v12 + 8) = 0;
    sub_25E5FED4C(0.0, 0.0);
    *v12 = 0;
    *(v12 + 8) = 0;
    v23 = *(v0 + v11[6]);
    OUTLINED_FUNCTION_3_4(*(v0 + v11[7]), *(v0 + v11[8]));
    sub_25E600088(v24, v25);
  }

  else
  {
    v13 = (v0 + *(v10 + 20));
    v26 = v13[1];
    v27 = *v13;
    v14 = v13[2];
    v15 = v13[3];
    (*(v4 + 16))(v9, v0, v1);

    v16 = sub_25E6356F0();
    v17 = sub_25E635CE0();

    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_7_1();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_1();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      v20 = MEMORY[0x25F8B9500](v27, v26, v14, v15);
      v22 = sub_25E6011D4(v20, v21, &v28);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_25E5F0000, v16, v17, "ProgressReporter 0x%s has already been started", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();

      (*(v4 + 8))(v9, v1);
    }

    else
    {

      (*(v4 + 8))(v9, v1);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProgressReporter.report(progress:)(Swift::Double progress)
{
  v5 = sub_25E635710();
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_15_0();
  v16 = type metadata accessor for ProgressReporter(v15);
  v17 = v16;
  v18 = v1 + *(v16 + 36);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v20 = (v1 + *(v16 + 20));
    v21 = *v20;
    v22 = v20[2];
    v23 = v20[3];
    v46[1] = v20[1];
    v46[2] = v22;
    v24 = *(v8 + 16);
    if (v19 == 0.0)
    {
      v24(v3, v1, v5);

      v34 = sub_25E6356F0();
      v35 = sub_25E635CE0();

      if (os_log_type_enabled(v34, v35))
      {
        OUTLINED_FUNCTION_7_1();
        v36 = swift_slowAlloc();
        OUTLINED_FUNCTION_6_1();
        v46[0] = swift_slowAlloc();
        v47 = v46[0];
        *v36 = 136315138;
        OUTLINED_FUNCTION_13_0();
        sub_25E6011D4(v37, v38, &v47);
        OUTLINED_FUNCTION_10_0();

        *(v36 + 4) = v21;
        _os_log_impl(&dword_25E5F0000, v34, v35, "ProgressReporter 0x%s has not been started", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v46[0]);
        v39 = OUTLINED_FUNCTION_0_3();
        MEMORY[0x25F8BA800](v39);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      (*(v8 + 8))(v3, v5);
    }

    else if (*&v19 == 1)
    {
      v24(v2, v1, v5);

      v25 = sub_25E6356F0();
      v26 = sub_25E635CE0();

      if (os_log_type_enabled(v25, v26))
      {
        OUTLINED_FUNCTION_7_1();
        v27 = swift_slowAlloc();
        OUTLINED_FUNCTION_6_1();
        v46[0] = swift_slowAlloc();
        v47 = v46[0];
        *v27 = 136315138;
        OUTLINED_FUNCTION_13_0();
        sub_25E6011D4(v28, v29, &v47);
        OUTLINED_FUNCTION_10_0();

        *(v27 + 4) = v21;
        _os_log_impl(&dword_25E5F0000, v25, v26, "ProgressReporter 0x%s has completed", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v46[0]);
        v30 = OUTLINED_FUNCTION_0_3();
        MEMORY[0x25F8BA800](v30);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      (*(v8 + 8))(v2, v5);
    }

    else
    {
      v24(v13, v1, v5);

      v40 = sub_25E6356F0();
      v41 = sub_25E635CE0();

      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_7_1();
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_6_1();
        v46[0] = swift_slowAlloc();
        v47 = v46[0];
        *v42 = 136315138;
        OUTLINED_FUNCTION_13_0();
        sub_25E6011D4(v43, v44, &v47);
        OUTLINED_FUNCTION_10_0();

        *(v42 + 4) = v21;
        _os_log_impl(&dword_25E5F0000, v40, v41, "ProgressReporter 0x%s is cancelled", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v46[0]);
        v45 = OUTLINED_FUNCTION_0_3();
        MEMORY[0x25F8BA800](v45);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      (*(v8 + 8))(v13, v5);
    }
  }

  else
  {
    sub_25E5FED4C(progress, *v18);
    *v18 = progress;
    *(v18 + 8) = 0;
    v31 = *(v1 + v17[6]);
    OUTLINED_FUNCTION_3_4(*(v1 + v17[7]), *(v1 + v17[8]));
    sub_25E600088(v32, v33);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProgressReporter.complete()()
{
  ProgressReporter.report(progress:)(1.0);
  if (v1)
  {
    v2 = sub_25E635710();
    OUTLINED_FUNCTION_1_2(v2);
    (*(v3 + 8))();
    v4 = type metadata accessor for ProgressReporter(0);
  }

  else
  {
    v4 = type metadata accessor for ProgressReporter(0);
    v5 = v0 + v4[9];
    *v5 = 1;
    *(v5 + 8) = 1;
    v6 = sub_25E635710();
    OUTLINED_FUNCTION_1_2(v6);
    (*(v7 + 8))();
  }

  v8 = *(v0 + v4[5] + 24);

  v9 = *(v0 + v4[6]);
}

void ProgressReporter.child(from:to:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = type metadata accessor for ProgressReporter(0);
  v8 = v7;
  if (*(v3 + *(v7 + 36) + 8) == 1)
  {
    v9 = (v3 + *(v7 + 20));
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];

    v14 = sub_25E6356F0();
    v15 = sub_25E635CE0();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_7_1();
      v28 = a1;
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_1();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      v18 = MEMORY[0x25F8B9500](v10, v11, v12, v13);
      v20 = v19;

      v21 = sub_25E6011D4(v18, v20, &v29);

      *(v16 + 4) = v21;
      OUTLINED_FUNCTION_17_0(&dword_25E5F0000, v14, v15, "ProgressReporter 0x%s is not in serial mode");
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
      a1 = v28;
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
    }

    else
    {
    }
  }

  v22 = *(v3 + v8[6]);
  v23 = *(v3 + v8[7]);
  v24 = *(v3 + v8[8]) - v23;
  v25 = v23 + v24 * a2;
  v26 = v23 + v24 * a3;

  sub_25E5FE960(v27, a1, v25, v26);
}

uint64_t sub_25E5FE814()
{
  v0 = sub_25E635710();
  __swift_allocate_value_buffer(v0, qword_280CB27E0);
  __swift_project_value_buffer(v0, qword_280CB27E0);
  return sub_25E635700();
}

double sub_25E5FE8C4()
{
  v1 = (v0 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_lastProgress);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_lastProgress));
  v2 = *(&v1->_os_unfair_lock_opaque + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8F98, &qword_25E63ABC8) + 28));
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t ProgressReporter.init(_:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return sub_25E5FECB4(a1, a2, a3, a4, 0, a5);
}

{
  return sub_25E5FECB4(a1, a2, a3, a4, 1, a5);
}

void sub_25E5FE960(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_25E6355A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CB27D8 != -1)
  {
    swift_once();
  }

  v13 = sub_25E635710();
  v14 = __swift_project_value_buffer(v13, qword_280CB27E0);
  (*(*(v13 - 8) + 16))(a2, v14, v13);
  v15 = type metadata accessor for ProgressReporter(0);
  v16 = (a2 + v15[5]);
  sub_25E635590();
  sub_25E635580();
  (*(v9 + 8))(v12, v8);
  v17 = sub_25E6144F0(8);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  *v16 = v17;
  v16[1] = v18;
  v16[2] = v20;
  v16[3] = v22;
  v24 = a2 + v15[9];
  *v24 = 0;
  *(v24 + 8) = 1;
  *(a2 + v15[6]) = a1;
  *(a2 + v15[7]) = a3;
  *(a2 + v15[8]) = a4;

  v25 = sub_25E6356F0();
  v26 = sub_25E635CF0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315394;
    v29 = MEMORY[0x25F8B9500](v17, v19, v21, v23);
    v31 = v30;

    v32 = sub_25E6011D4(v29, v31, &v37);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = *(a1 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname);
    v34 = *(a1 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8);

    v35 = sub_25E6011D4(v33, v34, &v37);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_25E5F0000, v25, v26, "ProgressReporter 0x%s created on session %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8BA800](v28, -1, -1);
    MEMORY[0x25F8BA800](v27, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_25E5FECB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_11_0();

  sub_25E5FF51C(a1, a2, a3, a4, a5);
  v12 = OUTLINED_FUNCTION_16_0();
  sub_25E5FE960(v13, a6, v12, v14);
}

void sub_25E5FED4C(double a1, double a2)
{
  v5 = type metadata accessor for ProgressReporter(0);
  if (a1 < a2)
  {
    v6 = (v2 + *(v5 + 20));
    v7 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    v9 = v6[3];

    oslog = sub_25E6356F0();
    if (a2 - a1 <= 0.001)
    {
      v11 = sub_25E635CF0();
    }

    else
    {
      v11 = sub_25E635CE0();
    }

    v12 = v11;
    if (os_log_type_enabled(oslog, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315650;
      v15 = MEMORY[0x25F8B9500](v7, v8, v10, v9);
      v17 = v16;

      v18 = sub_25E6011D4(v15, v17, &v20);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2048;
      *(v13 + 14) = a2;
      *(v13 + 22) = 2048;
      *(v13 + 24) = a1;
      _os_log_impl(&dword_25E5F0000, oslog, v12, "ProgressReporter 0x%s going backwards, from %f to %f", v13, 0x20u);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x25F8BA800](v14, -1, -1);
      MEMORY[0x25F8BA800](v13, -1, -1);
    }

    else
    {
    }
  }
}

Swift::Bool __swiftcall ProgressReporter.canProceed(progress:)(Swift::Double progress)
{
  v4 = v1;
  v6 = sub_25E635710();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_15_0();
  v17 = type metadata accessor for ProgressReporter(v16);
  v18 = v17;
  v19 = v4 + *(v17 + 36);
  v20 = *v19;
  if (*(v19 + 8) == 1)
  {
    v21 = (v4 + *(v17 + 20));
    v22 = v21[1];
    v56 = *v21;
    v24 = v21[2];
    v23 = v21[3];
    v25 = *(v9 + 16);
    if (v20 == 0.0)
    {
      v25(v3, v4, v6);

      v34 = sub_25E6356F0();
      v35 = sub_25E635CE0();

      if (os_log_type_enabled(v34, v35))
      {
        OUTLINED_FUNCTION_7_1();
        v36 = swift_slowAlloc();
        v55 = v24;
        v37 = v22;
        v38 = v36;
        OUTLINED_FUNCTION_6_1();
        v54 = swift_slowAlloc();
        v57 = v54;
        OUTLINED_FUNCTION_9_0(4.8149e-34);
        sub_25E6011D4(v39, v40, &v57);
        OUTLINED_FUNCTION_10_0();

        *(v38 + 4) = v37;
        OUTLINED_FUNCTION_17_0(&dword_25E5F0000, v34, v35, "ProgressReporter 0x%s has not been started");
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        v41 = OUTLINED_FUNCTION_0_3();
        MEMORY[0x25F8BA800](v41);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      (*(v9 + 8))(v3, v6);
    }

    else if (*&v20 == 1)
    {
      v25(v2, v4, v6);

      v26 = sub_25E6356F0();
      v27 = sub_25E635CE0();

      if (os_log_type_enabled(v26, v27))
      {
        OUTLINED_FUNCTION_7_1();
        v28 = swift_slowAlloc();
        v55 = v24;
        v29 = v22;
        v30 = v28;
        OUTLINED_FUNCTION_6_1();
        v54 = swift_slowAlloc();
        v57 = v54;
        OUTLINED_FUNCTION_9_0(4.8149e-34);
        sub_25E6011D4(v31, v32, &v57);
        OUTLINED_FUNCTION_10_0();

        *(v30 + 4) = v29;
        OUTLINED_FUNCTION_17_0(&dword_25E5F0000, v26, v27, "ProgressReporter 0x%s has already completed");
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        v33 = OUTLINED_FUNCTION_0_3();
        MEMORY[0x25F8BA800](v33);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      (*(v9 + 8))(v2, v6);
    }

    else
    {
      v25(v14, v4, v6);

      v42 = sub_25E6356F0();
      v43 = sub_25E635CE0();

      if (os_log_type_enabled(v42, v43))
      {
        OUTLINED_FUNCTION_7_1();
        v44 = swift_slowAlloc();
        v55 = v24;
        v45 = v22;
        v46 = v44;
        OUTLINED_FUNCTION_6_1();
        v54 = swift_slowAlloc();
        v57 = v54;
        OUTLINED_FUNCTION_9_0(4.8149e-34);
        sub_25E6011D4(v47, v48, &v57);
        OUTLINED_FUNCTION_10_0();

        *(v46 + 4) = v45;
        OUTLINED_FUNCTION_17_0(&dword_25E5F0000, v42, v43, "ProgressReporter 0x%s is cancelled");
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        v49 = OUTLINED_FUNCTION_0_3();
        MEMORY[0x25F8BA800](v49);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      (*(v9 + 8))(v14, v6);
    }
  }

  else
  {
    sub_25E5FED4C(progress, *v19);
    *v19 = progress;
    *(v19 + 8) = 0;
  }

  v50 = *(v4 + v18[6]);
  OUTLINED_FUNCTION_3_4(*(v4 + v18[7]), *(v4 + v18[8]));
  return sub_25E600628(v51, v52) & 1;
}

void ProgressReporter.concurrent(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + *(type metadata accessor for ProgressReporter(0) + 24));
  OUTLINED_FUNCTION_11_0();

  sub_25E5FF950(a1, a2, v7);
  v9 = OUTLINED_FUNCTION_16_0();

  sub_25E5FE960(v8, a3, v9, v10);
}

void static ProgressReporter.ignore.getter(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4_3();
  v3 = OUTLINED_FUNCTION_16_0();

  sub_25E5FE960(v2, a1, v3, v4);
}

void (*static ProgressReporter.ignore.read(uint64_t *a1))(uint64_t *a1)
{
  v2 = type metadata accessor for ProgressReporter(0);
  *a1 = v2;
  v3 = __swift_coroFrameAllocStub(*(*(v2 - 8) + 64));
  a1[1] = v3;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4_3();
  v4 = OUTLINED_FUNCTION_16_0();
  sub_25E5FE960(v5, v3, v4, v6);
  return sub_25E5FF49C;
}

void sub_25E5FF49C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_25E635710();
  OUTLINED_FUNCTION_1_2(v3);
  (*(v4 + 8))(v1);
  v5 = *&v1[*(v2 + 20) + 24];

  v6 = *&v1[*(v2 + 24)];

  free(v1);
}

uint64_t sub_25E5FF51C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v9 = sub_25E6355A0();
  v10 = OUTLINED_FUNCTION_5(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v17 = v16 - v15;
  Progress = type metadata accessor for ProgressReporter.Session.LastProgress(0);
  v19 = OUTLINED_FUNCTION_1_2(Progress);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_3();
  v24 = (v23 - v22);
  v25 = OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_logger;
  if (qword_280CB27D8 != -1)
  {
    swift_once();
  }

  v26 = sub_25E635710();
  v27 = __swift_project_value_buffer(v26, qword_280CB27E0);
  (*(*(v26 - 8) + 16))(v6 + v25, v27, v26);
  *(v6 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session__isCancelled) = 0;
  v28 = (v6 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_lastProgress);
  v29 = v24 + *(Progress + 20);
  sub_25E635560();
  *v24 = 0;
  *v28 = 0;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8F98, &qword_25E63ABC8) + 28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8FA0, &qword_25E63ACA8);
  bzero(v28 + v30, *(*(v31 - 8) + 64));
  sub_25E601EBC(v24, v28 + v30);
  sub_25E635590();
  sub_25E635580();
  (*(v12 + 8))(v17, v9);
  v32 = sub_25E6144F0(8);
  v33 = MEMORY[0x25F8B9500](v32);
  v35 = v34;

  v36 = (v6 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_uuid);
  *v36 = v33;
  v36[1] = v35;
  if (a2)
  {
    v37 = (v6 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_name);
    *v37 = a1;
    v37[1] = a2;
    v53 = a1;
    v54 = a2;
    swift_bridgeObjectRetain_n();

    MEMORY[0x25F8B9540](2016421920, 0xE400000000000000);
    MEMORY[0x25F8B9540](v33, v35);
    MEMORY[0x25F8B9540](41, 0xE100000000000000);
  }

  else
  {

    MEMORY[0x25F8B9540](v33, v35);
    v38 = (v6 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_name);
    *v38 = 30768;
    v38[1] = 0xE200000000000000;
    v53 = 30768;
    v54 = 0xE200000000000000;
    MEMORY[0x25F8B9540](v33, v35);
  }

  v39 = v54;
  v40 = (v6 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname);
  *v40 = v53;
  v40[1] = v39;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;

  v41 = sub_25E6356F0();
  v42 = sub_25E635CF0();

  if (os_log_type_enabled(v41, v42))
  {
    OUTLINED_FUNCTION_7_1();
    v43 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_1();
    v44 = swift_slowAlloc();
    v53 = v44;
    *v43 = 136315138;
    v45 = *(v6 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname);
    v46 = *(v6 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8);

    v47 = sub_25E6011D4(v45, v46, &v53);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_25E5F0000, v41, v42, "ProgressSession %s created", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x25F8BA800]();
    v48 = OUTLINED_FUNCTION_0_3();
    MEMORY[0x25F8BA800](v48);
  }

  return v6;
}

uint64_t sub_25E5FF950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a2;
  v7 = sub_25E6355A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Progress = type metadata accessor for ProgressReporter.Session.LastProgress(0);
  v13 = *(*(Progress - 8) + 64);
  MEMORY[0x28223BE20](Progress);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_logger;
  if (qword_280CB27D8 != -1)
  {
    swift_once();
  }

  v17 = sub_25E635710();
  v18 = __swift_project_value_buffer(v17, qword_280CB27E0);
  (*(*(v17 - 8) + 16))(v4 + v16, v18, v17);
  *(v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session__isCancelled) = 0;
  v19 = (v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_lastProgress);
  v20 = v15 + *(Progress + 20);
  sub_25E635560();
  *v15 = 0;
  *v19 = 0;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8F98, &qword_25E63ABC8) + 28);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8FA0, &qword_25E63ACA8);
  bzero(v19 + v21, *(*(v22 - 8) + 64));
  sub_25E601EBC(v15, v19 + v21);
  sub_25E635590();
  sub_25E635580();
  (*(v8 + 8))(v11, v7);
  v23 = sub_25E6144F0(8);
  v24 = MEMORY[0x25F8B9500](v23);
  v26 = v25;

  v27 = (v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_uuid);
  *v27 = v24;
  v27[1] = v26;
  v28 = *(a3 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_name + 8);
  v47 = *(a3 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_name);
  v48 = v28;

  MEMORY[0x25F8B9540](47, 0xE100000000000000);

  v29 = v46;
  MEMORY[0x25F8B9540](a1, v46);

  v30 = v48;
  v31 = (v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_name);
  *v31 = v47;
  v31[1] = v30;
  v47 = a1;
  v48 = v29;
  MEMORY[0x25F8B9540](2016421920, 0xE400000000000000);
  MEMORY[0x25F8B9540](v24, v26);

  MEMORY[0x25F8B9540](41, 0xE100000000000000);
  v32 = v48;
  v33 = (v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname);
  *v33 = v47;
  v33[1] = v32;
  *(v4 + 16) = a3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0x80;

  v34 = sub_25E6356F0();
  v35 = sub_25E635CF0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v47 = v37;
    *v36 = 136315394;
    v38 = *(v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname);
    v39 = *(v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8);

    v40 = sub_25E6011D4(v38, v39, &v47);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    v41 = *(a3 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname);
    v42 = *(a3 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8);

    v43 = sub_25E6011D4(v41, v42, &v47);

    *(v36 + 14) = v43;
    _os_log_impl(&dword_25E5F0000, v34, v35, "ProgressSession %s created on session %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8BA800](v37, -1, -1);
    MEMORY[0x25F8BA800](v36, -1, -1);
  }

  return v4;
}

uint64_t sub_25E5FFDE0()
{
  v1 = v0;
  v2 = sub_25E635710();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_logger, v2);

  v8 = sub_25E6356F0();
  v9 = sub_25E635CF0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_25E6011D4(*(v1 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname), *(v1 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8), &v20);
    _os_log_impl(&dword_25E5F0000, v8, v9, "ProgressSession %s destroyed", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x25F8BA800](v11, -1, -1);
    MEMORY[0x25F8BA800](v10, -1, -1);
  }

  v12 = *(v3 + 8);
  v12(v6, v2);
  sub_25E601E48(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  v12((v1 + v7), v2);
  v13 = *(v1 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_uuid + 8);

  v14 = *(v1 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_name + 8);

  v15 = *(v1 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8);

  v16 = v1 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_lastProgress;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8F98, &qword_25E63ABC8);
  sub_25E601E60(v16 + *(v17 + 28));
  return v1;
}

uint64_t sub_25E600034()
{
  v0 = sub_25E5FFDE0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_25E600088(uint64_t a1, char a2)
{
  v4 = v2;
  v7 = sub_25E635AF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E635B10();
  if (v3)
  {
    v12 = v3;
  }

  else
  {
    if ((*(v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session__isCancelled) & 1) == 0)
    {
      v13 = sub_25E6005A0(a1, a2 & 1);
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      v16 = *(v4 + 32);
      if (v16 < 0)
      {
        v22 = *(v4 + 16);

        sub_25E600088(0, 1);
      }

      else
      {
        v17 = v13;
        v18 = *(v4 + 16);
        v19 = *(v4 + 24);
        if (v16)
        {
          v20 = sub_25E601F30();
          if ((v15(v20, v17) & 1) == 0)
          {
            sub_25E601FA0();
            v21 = v14;
            v12 = swift_allocError();
            sub_25E635730();
            swift_willThrow();
            sub_25E601E48(v15, v21, v16);
            goto LABEL_11;
          }
        }

        else
        {
          v23 = sub_25E601F30();
          v15(v23, v17);
        }
      }

      sub_25E601E48(v15, v14, v16);
      return;
    }

    sub_25E601FA0();
    v12 = swift_allocError();
    sub_25E635730();
    swift_willThrow();
  }

LABEL_11:
  v39 = v12;
  v24 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8FA8, &qword_25E63ACB0);
  if (swift_dynamicCast())
  {

    v25 = sub_25E6356F0();
    v26 = sub_25E635CF0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_25E6011D4(*(v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname), *(v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8), &v38);
      _os_log_impl(&dword_25E5F0000, v25, v26, "ProgressSession %s cancelled", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x25F8BA800](v28, -1, -1);
      MEMORY[0x25F8BA800](v27, -1, -1);
    }

    *(v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session__isCancelled) = 1;
    sub_25E601FA0();
    swift_allocError();
    sub_25E635730();
    swift_willThrow();
    (*(v8 + 8))(v11, v7);
    v29 = v39;
  }

  else
  {

    v30 = v12;

    v31 = sub_25E6356F0();
    v32 = sub_25E635CE0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v33 = 136315394;
      *(v33 + 4) = sub_25E6011D4(*(v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname), *(v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8), &v39);
      *(v33 + 12) = 2112;
      v36 = v12;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      *v34 = v37;
      _os_log_impl(&dword_25E5F0000, v31, v32, "Unexpected error thrown from ProgressSession %s progress block: %@", v33, 0x16u);
      sub_25E601F38(v34);
      MEMORY[0x25F8BA800](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x25F8BA800](v35, -1, -1);
      MEMORY[0x25F8BA800](v33, -1, -1);
    }

    *(v4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session__isCancelled) = 1;
    sub_25E601FA0();
    swift_allocError();
    sub_25E635730();
    swift_willThrow();
    v29 = v12;
  }
}

double sub_25E6005A0(uint64_t a1, char a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_lastProgress);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_lastProgress));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8F98, &qword_25E63ABC8);
  sub_25E600C94((&v5->_os_unfair_lock_opaque + *(v6 + 28)), *&a1, a2 & 1, v2, &v8);
  os_unfair_lock_unlock(v5);
  return v8;
}

uint64_t sub_25E600628(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_25E635AF0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session__isCancelled;
  if ((*(v3 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session__isCancelled) & 1) == 0 && (sub_25E635B00() & 1) == 0)
  {
    v14 = sub_25E6005A0(a1, a2 & 1);
    v16 = *(v3 + 16);
    v15 = *(v3 + 24);
    v17 = *(v3 + 32);
    if (v17 < 0)
    {
      v23 = *(v3 + 16);

      if ((sub_25E600628(0, 1) & 1) == 0)
      {
LABEL_14:
        sub_25E601E48(v16, v15, v17);
        v13 = *(v3 + v8) ^ 1;
        return v13 & 1;
      }

      v24 = sub_25E6356F0();
      v25 = sub_25E635CF0();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v30 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_25E6011D4(*(v3 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname), *(v3 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8), &v30);
        _os_log_impl(&dword_25E5F0000, v24, v25, "ProgressSession %s cancelled", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x25F8BA800](v27, -1, -1);
        MEMORY[0x25F8BA800](v26, -1, -1);
      }

      v22 = 1;
    }

    else
    {
      v18 = v14;
      if ((v17 & 1) == 0)
      {
        sub_25E601F20(*(v3 + 16), *(v3 + 24), *(v3 + 32));
        v29 = sub_25E601F30();
        v16(v29, v18);
        sub_25E601E48(v16, v15, v17);
        goto LABEL_14;
      }

      v19 = *(v3 + 16);
      v20 = *(v3 + 24);
      v21 = sub_25E601F30();
      v22 = ((v16)(v21, v18) & 1) == 0;
    }

    *(v3 + v8) = v22;
    goto LABEL_14;
  }

  v9 = sub_25E6356F0();
  v10 = sub_25E635CF0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_25E6011D4(*(v3 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname), *(v3 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8), &v30);
    _os_log_impl(&dword_25E5F0000, v9, v10, "ProgressSession %s cancelled", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x25F8BA800](v12, -1, -1);
    MEMORY[0x25F8BA800](v11, -1, -1);
  }

  v13 = 0;
  *(v3 + v8) = 1;
  return v13 & 1;
}

uint64_t sub_25E600C94@<X0>(double *a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v6 = v5;
  v50 = a5;
  Progress = type metadata accessor for ProgressReporter.Session.LastProgress(0);
  v11 = *(*(Progress - 8) + 64);
  MEMORY[0x28223BE20](Progress);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E635570();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v19 = *a1;
    goto LABEL_11;
  }

  v19 = a2;
  v20 = *a1;
  if (*a1 > a2)
  {

    v21 = sub_25E6356F0();
    if (v20 - a2 <= 0.001)
    {
      v47 = a2;
      v29 = v21;
      v30 = sub_25E635CF0();

      LODWORD(v48) = v30;
      v31 = v30;
      v25 = v29;
      if (os_log_type_enabled(v29, v31))
      {
        v32 = swift_slowAlloc();
        v49 = v5;
        v27 = v32;
        v28 = swift_slowAlloc();
        v52 = v28;
        *v27 = 136315650;
        *(v27 + 4) = sub_25E6011D4(*(a4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname), *(a4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8), &v52);
        *(v27 + 12) = 2048;
        *(v27 + 14) = v20;
        *(v27 + 22) = 2048;
        *(v27 + 24) = v47;
        _os_log_impl(&dword_25E5F0000, v25, v48, "ProgressSession %s going backwards, from %f to %f", v27, 0x20u);
        goto LABEL_9;
      }
    }

    else
    {
      v22 = sub_25E635CE0();
      v48 = v21;
      v23 = v22;

      LODWORD(v47) = v23;
      v24 = v23;
      v25 = v48;
      if (os_log_type_enabled(v48, v24))
      {
        v26 = swift_slowAlloc();
        v49 = v5;
        v27 = v26;
        v46 = swift_slowAlloc();
        v52 = v46;
        *v27 = 136315650;
        *(v27 + 4) = sub_25E6011D4(*(a4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname), *(a4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8), &v52);
        *(v27 + 12) = 2048;
        *(v27 + 14) = v20;
        *(v27 + 22) = 2048;
        *(v27 + 24) = a2;
        _os_log_impl(&dword_25E5F0000, v25, LOBYTE(v47), "ProgressSession %s going backwards, from %f to %f", v27, 0x20u);
        v28 = v46;
LABEL_9:
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        MEMORY[0x25F8BA800](v28, -1, -1);
        v33 = v27;
        v6 = v49;
        MEMORY[0x25F8BA800](v33, -1, -1);
      }
    }
  }

LABEL_11:
  sub_25E635560();
  sub_25E601EBC(a1, v13);
  v34 = *(Progress + 20);
  sub_25E635540();
  v36 = v35;
  (*(v15 + 8))(&v13[v34], v14);

  v37 = sub_25E6356F0();
  if (v36 <= 1.0)
  {
    v38 = sub_25E635CD0();

    if (os_log_type_enabled(v37, v38))
    {
      v43 = swift_slowAlloc();
      v49 = v6;
      v40 = v43;
      v41 = swift_slowAlloc();
      v52 = v41;
      *v40 = 136315650;
      *(v40 + 4) = sub_25E6011D4(*(a4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname), *(a4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8), &v52);
      *(v40 + 12) = 2048;
      *(v40 + 14) = v19;
      *(v40 + 22) = 2048;
      *(v40 + 24) = v36;
      v42 = "ProgressSession %s (%f) was called after %f seconds";
      goto LABEL_16;
    }
  }

  else
  {
    v38 = sub_25E635CE0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v49 = v6;
      v40 = v39;
      v41 = swift_slowAlloc();
      v52 = v41;
      *v40 = 136315650;
      *(v40 + 4) = sub_25E6011D4(*(a4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname), *(a4 + OBJC_IVAR____TtCV22PhotosIntelligenceCore16ProgressReporterP33_DDF1C5FE670C29EEA961DE26D003667D7Session_fullname + 8), &v52);
      *(v40 + 12) = 2048;
      *(v40 + 14) = v19;
      *(v40 + 22) = 2048;
      *(v40 + 24) = v36;
      v42 = "ProgressSession %s (%f) wasn't called for %f seconds";
LABEL_16:
      _os_log_impl(&dword_25E5F0000, v37, v38, v42, v40, 0x20u);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x25F8BA800](v41, -1, -1);
      MEMORY[0x25F8BA800](v40, -1, -1);
    }
  }

  *a1 = v19;
  result = (*(v15 + 32))(a1 + *(Progress + 20), v18, v14);
  *v50 = v19;
  return result;
}

uint64_t sub_25E6011D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E601298(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_25E601FF8(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_25E601298(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25E601398(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_25E635E40();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25E601398(uint64_t a1, unint64_t a2)
{
  v4 = sub_25E6013E4(a1, a2);
  sub_25E6014FC(&unk_28704A358);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25E6013E4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_25E635890())
  {
    result = sub_25E60AE48(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_25E635DD0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_25E635E40();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25E6014FC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_25E6015E0(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_25E6015E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8FC0, &qword_25E63ACC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t destroy for ProgressReporter(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E635710();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20) + 24);

  v6 = *(a1 + *(a2 + 24));
}

uint64_t initializeWithTake for ProgressReporter(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25E635710();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  *(a1 + v8) = *(a2 + v8);
  v12 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[9];
  v14 = a1 + v13;
  v15 = a2 + v13;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  return a1;
}

uint64_t assignWithTake for ProgressReporter(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25E635710();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  v12 = *(v8 + 24);
  *(v8 + 16) = v11;
  *(v8 + 24) = v10;

  v13 = a3[6];
  v14 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);

  v15 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v15) = *(a2 + v15);
  v16 = a3[9];
  v17 = a1 + v16;
  v18 = a2 + v16;
  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);
  return a1;
}

uint64_t sub_25E601994()
{
  result = sub_25E635710();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_25E601A58()
{
  v0 = sub_25E635710();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_25E601B48();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_25E601B48()
{
  if (!qword_280CB27F8)
  {
    type metadata accessor for ProgressReporter.Session.LastProgress(255);
    v0 = sub_25E635630();
    if (!v1)
    {
      atomic_store(v0, &qword_280CB27F8);
    }
  }
}

uint64_t sub_25E601BC0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
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

uint64_t sub_25E601C24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 17))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t sub_25E601C6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_25E601D1C()
{
  result = sub_25E635570();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t getEnumTagSinglePayload for ProgressReporter.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ProgressReporter.State(uint64_t result, int a2, int a3)
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

uint64_t sub_25E601DFC(uint64_t a1)
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

uint64_t sub_25E601E18(uint64_t result, int a2)
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

uint64_t sub_25E601E48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    return sub_25E601E58();
  }
}

uint64_t sub_25E601E60(uint64_t a1)
{
  Progress = type metadata accessor for ProgressReporter.Session.LastProgress(0);
  (*(*(Progress - 8) + 8))(a1, Progress);
  return a1;
}

uint64_t sub_25E601EBC(uint64_t a1, uint64_t a2)
{
  Progress = type metadata accessor for ProgressReporter.Session.LastProgress(0);
  (*(*(Progress - 8) + 32))(a2, a1, Progress);
  return a2;
}

uint64_t sub_25E601F20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    return sub_25E601F30();
  }
}

uint64_t sub_25E601F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8FB0, &qword_25E63ACB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25E601FA0()
{
  result = qword_27FCF8FB8;
  if (!qword_27FCF8FB8)
  {
    sub_25E635AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF8FB8);
  }

  return result;
}

uint64_t sub_25E601FF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25E602058(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_25E602098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t OUTLINED_FUNCTION_4_3()
{

  return sub_25E5FF51C(0x65726F6E6749, 0xE600000000000000, CGPointMake, 0, 0);
}

void OUTLINED_FUNCTION_9_0(float a1)
{
  *v1 = a1;
  v5 = *(v2 - 120);
  v4 = *(v2 - 112);

  JUMPOUT(0x25F8B9500);
}

uint64_t OUTLINED_FUNCTION_11_0()
{
  v0 = type metadata accessor for ProgressReporter.Session(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_13_0()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  JUMPOUT(0x25F8B9500);
}

void OUTLINED_FUNCTION_17_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t SummaryItemRequirementEvaluationResult.hashValue.getter()
{
  v1 = *v0;
  sub_25E636110();
  MEMORY[0x25F8B9DE0](v1);
  return sub_25E636130();
}

uint64_t sub_25E6022DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000025E638D60 == a2;
  if (v3 || (sub_25E636070() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025E638D80 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_25E636070();

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

uint64_t sub_25E6023EC(char a1)
{
  sub_25E636110();
  MEMORY[0x25F8B9DE0](a1 & 1);
  return sub_25E636130();
}

unint64_t sub_25E602434(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_25E602474()
{
  v1 = *v0;
  sub_25E636110();
  MEMORY[0x25F8B9DE0](v1);
  return sub_25E636130();
}

uint64_t sub_25E6024D4()
{
  sub_25E636110();
  sub_25E6023C4(v2, *v0);
  return sub_25E636130();
}

uint64_t sub_25E60251C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E6022DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E60255C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25E6025B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SummaryItemRequirementCollection.init(necessaryRequirements:optionalRequirements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SummaryItemRequirementCollection.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v26 = *(a2 + 16);
  type metadata accessor for SummaryItemRequirementCollection.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_25E636010();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = *v2;
  v29 = v2[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25E636150();
  LOBYTE(v31[0]) = 0;
  v27 = v9;
  WitnessTable = v6;
  sub_25E635FB0();

  v31[0] = v26;
  OUTLINED_FUNCTION_3_5();
  swift_getExtendedExistentialTypeMetadata();
  v12 = sub_25E6359E0();
  for (v30[0] = v12; ; v12 = v30[0])
  {
    if (v12 == sub_25E635A60())
    {

      LOBYTE(v30[0]) = 1;
      sub_25E635FB0();
      v14 = v29;

      v15 = sub_25E6359E0();
      for (i = v15; ; v15 = i)
      {
        if (v15 == sub_25E635A60())
        {
          v19 = OUTLINED_FUNCTION_7_2();
          v20(v19);

          goto LABEL_14;
        }

        v16 = sub_25E635A50();
        OUTLINED_FUNCTION_14_1();
        sub_25E635A10();
        if ((v16 & 1) == 0)
        {
          goto LABEL_17;
        }

        sub_25E605AF0(v14 + 32 + 40 * v15, v30);
        sub_25E635AA0();
        __swift_project_boxed_opaque_existential_1(v30, v30[3]);
        __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
        OUTLINED_FUNCTION_5_2();
        sub_25E636060();
        if (v3)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v30);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      v21 = OUTLINED_FUNCTION_7_2();
      v22(v21);
LABEL_14:
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      return __swift_destroy_boxed_opaque_existential_0Tm(v33);
    }

    v13 = sub_25E635A50();
    OUTLINED_FUNCTION_14_1();
    sub_25E635A10();
    if ((v13 & 1) == 0)
    {
      break;
    }

    sub_25E605AF0(v10 + 32 + 40 * v12, v31);
    sub_25E635AA0();
    __swift_project_boxed_opaque_existential_1(v31, v32);
    __swift_mutable_project_boxed_opaque_existential_1(v33, v33[3]);
    OUTLINED_FUNCTION_5_2();
    sub_25E636060();
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      v17 = OUTLINED_FUNCTION_7_2();
      v18(v17);
      return __swift_destroy_boxed_opaque_existential_0Tm(v33);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v31);
  }

  sub_25E635E00();
  __break(1u);
LABEL_17:
  result = sub_25E635E00();
  __break(1u);
  return result;
}

uint64_t sub_25E6029D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[1];
  v22 = *v2;
  v5 = *(a1 + 24);
  v19 = *(a1 + 16);
  v6 = v19;
  v20 = v5;

  OUTLINED_FUNCTION_3_5();
  swift_getExtendedExistentialTypeMetadata();
  v7 = sub_25E635AC0();
  v21 = v19;
  OUTLINED_FUNCTION_0_4();
  swift_getExtendedExistentialTypeMetadata();
  OUTLINED_FUNCTION_2_6();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_25E5FB6F4(sub_25E605FE0, v18, v7, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v22 = v4;
  v16 = v6;
  v17 = v5;
  v12 = sub_25E5FB6F4(sub_25E605F60, v15, v7, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_25E602B18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_19();
  a2[3] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10_1();
  a2[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v5(v3, v4);
}

uint64_t SummaryItemRequirementEvaluationCollection.updateRequirements(with:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v23 = 0;
  v22 = *v2;
  v7 = *(a2 + 24);
  v17 = *(a2 + 16);
  v6 = v17;
  v18 = v7;
  v19 = &v23;
  v20 = a1;

  v21 = v17;
  OUTLINED_FUNCTION_0_4();
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  sub_25E635AC0();
  OUTLINED_FUNCTION_2_6();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_25E5FB6F4(sub_25E606004, v16, v3, ExtendedExistentialTypeMetadata, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);
  swift_bridgeObjectRelease_n();
  *v4 = v11;
  v22 = v4[1];
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = &v23;
  v15[5] = a1;

  v13 = sub_25E5FB6F4(sub_25E605ACC, v15, v3, ExtendedExistentialTypeMetadata, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);
  swift_bridgeObjectRelease_n();
  v4[1] = v13;
  return v23;
}

uint64_t sub_25E602D50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25E605AF0(a1, a4);
  if (*a2)
  {
    result = 1;
  }

  else
  {
    v8 = *(a4 + 24);
    v9 = *(a4 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a4, v8);
    result = (*(v9 + 40))(a3, v8, v9);
  }

  *a2 = result & 1;
  return result;
}

uint64_t SummaryItemRequirementEvaluationCollection.evaluationResults(of:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  v24 = MEMORY[0x277D84FA0];
  v6 = *(a2 + 16);

  v20[0] = v6;
  OUTLINED_FUNCTION_0_4();
  swift_getExtendedExistentialTypeMetadata();
  OUTLINED_FUNCTION_10_1();
  v7 = sub_25E6359E0();
  v23 = v7;
  OUTLINED_FUNCTION_10_1();
  if (v7 == sub_25E635A60())
  {
LABEL_4:

    v12 = sub_25E6359E0();
    v23 = v12;
    if (v12 == sub_25E635A60())
    {
LABEL_7:

      return v24;
    }

    while (1)
    {
      v13 = sub_25E635A50();
      OUTLINED_FUNCTION_14_1();
      sub_25E635A10();
      if ((v13 & 1) == 0)
      {
        break;
      }

      sub_25E605AF0(v4 + 32 + 40 * v12, v20);
      sub_25E635AA0();
      v14 = v21;
      v15 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      (*(v15 + 48))(&v18, a1, v14, v15);
      sub_25E603468(&v19, v18);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v16 = sub_25E635A60();
      v12 = v23;
      if (v23 == v16)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    while (1)
    {
      OUTLINED_FUNCTION_10_1();
      v8 = sub_25E635A50();
      OUTLINED_FUNCTION_14_1();
      sub_25E635A10();
      if ((v8 & 1) == 0)
      {
        break;
      }

      sub_25E605AF0(v5 + 32 + 40 * v7, v20);
      OUTLINED_FUNCTION_19();
      sub_25E635AA0();
      v9 = v21;
      v10 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      (*(v10 + 48))(&v18, a1, v9, v10);
      sub_25E603468(&v19, v18);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      OUTLINED_FUNCTION_10_1();
      v11 = sub_25E635A60();
      v7 = v23;
      if (v23 == v11)
      {
        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_19();
    sub_25E635E00();
    __break(1u);
  }

  result = sub_25E635E00();
  __break(1u);
  return result;
}

uint64_t SummaryItemRequirementEvaluationCollection.removeOptionalRequirementEvaluation()(uint64_t a1)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_0_4();
  swift_getExtendedExistentialTypeMetadata();
  v1 = sub_25E635AC0();
  WitnessTable = swift_getWitnessTable();
  v3 = swift_getWitnessTable();
  return MEMORY[0x25F8B9940](v1, WitnessTable, v3);
}

uint64_t sub_25E6030E0(char *a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_25E636110();
  sub_25E5F53DC();
  v7 = sub_25E636130();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = 0xE700000000000000;
      v12 = 0x676E696E726F6DLL;
      switch(*(*(v5 + 48) + v9))
      {
        case 1:
          v11 = 0xE400000000000000;
          v12 = 1852796782;
          break;
        case 2:
          v12 = 0x6F6F6E7265746661;
          v11 = 0xE90000000000006ELL;
          break;
        case 3:
          v12 = 0x676E696E657665;
          break;
        case 4:
          v11 = 0xE500000000000000;
          v12 = 0x746867696ELL;
          break;
        default:
          break;
      }

      v13 = 0xE700000000000000;
      v14 = 0x676E696E726F6DLL;
      switch(a2)
      {
        case 1:
          v13 = 0xE400000000000000;
          v14 = 1852796782;
          break;
        case 2:
          v14 = 0x6F6F6E7265746661;
          v13 = 0xE90000000000006ELL;
          break;
        case 3:
          v14 = 0x676E696E657665;
          break;
        case 4:
          v13 = 0xE500000000000000;
          v14 = 0x746867696ELL;
          break;
        default:
          break;
      }

      if (v12 == v14 && v11 == v13)
      {
        break;
      }

      v16 = sub_25E636070();

      if (v16)
      {
        goto LABEL_21;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    result = 0;
    a2 = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_19:
    v17 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_15_1();
    sub_25E60434C(a2, v9, v18);
    *v3 = v21;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_25E603328(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_25E636110();
  sub_25E635860();
  sub_25E636130();
  v11 = *(v9 + 32);
  OUTLINED_FUNCTION_17_1();
  while (1)
  {
    v13 = v12 & v4;
    v14 = (v5 << (v12 & v4)) & *(v9 + 56 + (((v12 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v9 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (sub_25E636070() & 1) != 0)
    {

      v17 = (*(v9 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v12 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_25E6045FC(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

BOOL sub_25E603468(unsigned __int8 *a1, unsigned __int8 a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_25E636110();
  MEMORY[0x25F8B9DE0](a2);
  v7 = sub_25E636130();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_25E604764(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_25E603590(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = *v4;
  v11 = *(v10 + 40);
  v12 = sub_25E636100();
  v13 = ~(-1 << *(v10 + 32));
  while (1)
  {
    v14 = v12 & v13;
    v15 = (1 << (v12 & v13)) & *(v10 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      break;
    }

    if (*(*(v10 + 48) + 8 * v14) == a2)
    {
      goto LABEL_6;
    }

    v12 = v14 + 1;
  }

  v16 = *v7;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_15_1();
  sub_25E6048AC(a2, v14, v17, a3, a4);
  *v7 = v19;
LABEL_6:
  result = v15 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_25E60367C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v7 = *v2;
  v8 = *(*v2 + 40);
  sub_25E635D80();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_17_1();
  while (1)
  {
    v11 = v10 & v3;
    v12 = (v4 << (v10 & v3)) & *(v7 + 56 + (((v10 & v3) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v14 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_25E5F82CC(a2, v20);
      v19 = *v5;
      sub_25E6049D0(v20, v11, isUniquelyReferenced_nonNull_native);
      *v5 = v19;
      v16 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v16;
      *(a1 + 32) = *(a2 + 32);
      return v12 == 0;
    }

    sub_25E5F82CC(*(v7 + 48) + 40 * v11, v20);
    v13 = MEMORY[0x25F8B9A50](v20, a2);
    sub_25E5F8328(v20);
    if (v13)
    {
      break;
    }

    v10 = v11 + 1;
  }

  sub_25E5F8328(a2);
  sub_25E5F82CC(*(v7 + 48) + 40 * v11, a1);
  return v12 == 0;
}

uint64_t sub_25E6037B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9178, &qword_25E63B128);
  result = sub_25E635DB0();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_25E604B30(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_25E636110();
    sub_25E635860();

    result = sub_25E636130();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25E603A8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9160, &qword_25E63B110);
  result = sub_25E635DB0();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_25E604B30(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_25E636110();
    sub_25E635860();
    result = sub_25E636130();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25E603CE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9170, &qword_25E63B120);
  result = sub_25E635DB0();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_25E604B30(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_25E636110();
    MEMORY[0x25F8B9DE0](v17);
    result = sub_25E636130();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_25E603F34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = OUTLINED_FUNCTION_6_2(a1, a2, a3);
  sub_25E635DB0();
  OUTLINED_FUNCTION_13_1();
  if (!v6)
  {
LABEL_27:

    *v3 = v5;
    return;
  }

  v7 = 0;
  v9 = (v4 + 56);
  v8 = *(v4 + 56);
  v10 = 1 << *(v4 + 32);
  v32 = v3;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = v5 + 7;
  if ((v11 & v8) == 0)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    if (v10 >= 64)
    {
      OUTLINED_FUNCTION_19();
      sub_25E604B30(v29, v30, v31);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v3 = v32;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = v5[5];
    v19 = sub_25E636100();
    OUTLINED_FUNCTION_12_0(v19);
    if (((-1 << v21) & ~v13[v20]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_11_1();
LABEL_21:
    OUTLINED_FUNCTION_16_1();
    *(v13 + v26) |= v27;
    *(v5[6] + 8 * v28) = v17;
    ++v5[2];
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_20();
  while (++v22 != v24 || (v23 & 1) == 0)
  {
    v25 = v22 == v24;
    if (v22 == v24)
    {
      v22 = 0;
    }

    v23 |= v25;
    if (v13[v22] != -1)
    {
      OUTLINED_FUNCTION_18_0();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_25E6040F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9158, &qword_25E63B108);
  result = sub_25E635DB0();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v29 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_25E604B30(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
    v30 = *v17;
    v31 = *(v17 + 16);
    v32 = *(v17 + 32);
    v18 = *(v6 + 40);
    result = sub_25E635D80();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v6 + 48) + 40 * v22;
    *v27 = v30;
    *(v27 + 16) = v31;
    *(v27 + 32) = v32;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_25E60434C(char a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_25E6037B0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_25E604CEC(&qword_27FCF9178, &qword_25E63B128);
      goto LABEL_26;
    }

    sub_25E604FD0(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_25E636110();
  sub_25E5F53DC();
  v11 = sub_25E636130();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = 0xE700000000000000;
      v15 = 0x676E696E726F6DLL;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v14 = 0xE400000000000000;
          v15 = 1852796782;
          break;
        case 2:
          v15 = 0x6F6F6E7265746661;
          v14 = 0xE90000000000006ELL;
          break;
        case 3:
          v15 = 0x676E696E657665;
          break;
        case 4:
          v14 = 0xE500000000000000;
          v15 = 0x746867696ELL;
          break;
        default:
          break;
      }

      v16 = 0xE700000000000000;
      v17 = 0x676E696E726F6DLL;
      switch(a1)
      {
        case 1:
          v16 = 0xE400000000000000;
          v17 = 1852796782;
          break;
        case 2:
          v17 = 0x6F6F6E7265746661;
          v16 = 0xE90000000000006ELL;
          break;
        case 3:
          v17 = 0x676E696E657665;
          break;
        case 4:
          v16 = 0xE500000000000000;
          v17 = 0x746867696ELL;
          break;
        default:
          break;
      }

      if (v15 == v17 && v14 == v16)
      {
        goto LABEL_29;
      }

      v19 = sub_25E636070();

      if (v19)
      {
        goto LABEL_30;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_26:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_29:

LABEL_30:
  sub_25E636090();
  __break(1u);
}

uint64_t sub_25E6045FC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_25E603A8C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_25E60527C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_25E636110();
      sub_25E635860();
      result = sub_25E636130();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_25E636070() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_25E604B94();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_25E636090();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_25E604764(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25E603CE8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_25E6054B0(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_25E636110();
      MEMORY[0x25F8B9DE0](v5);
      v14 = sub_25E636130();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_25E604CEC(&qword_27FCF9170, &qword_25E63B120);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_25E636090();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_25E6048AC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25E603F34(v8 + 1, a4, a5);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_25E6056CC(v8 + 1, a4, a5);
LABEL_10:
      v14 = *v5;
      v15 = *(*v5 + 40);
      v16 = sub_25E636100();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v14 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    sub_25E604DA4(a4, a5);
  }

LABEL_7:
  v10 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v10 + 48) + 8 * a2) = a1;
  v11 = *(v10 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_15:
    sub_25E636090();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v13;
  }
}

uint64_t sub_25E6049D0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25E6040F0(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_25E605854(v7 + 1);
LABEL_10:
      v15 = *v3;
      v16 = *(*v3 + 40);
      result = sub_25E635D80();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_25E5F82CC(*(v15 + 48) + 40 * a2, v19);
        v18 = MEMORY[0x25F8B9A50](v19, v6);
        sub_25E5F8328(v19);
        if (v18)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_25E604E5C();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = *(v6 + 16);
  *v10 = *v6;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(v6 + 32);
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = sub_25E636090();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v14;
  }

  return result;
}