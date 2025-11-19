id sub_1CA320B2C()
{
  OUTLINED_FUNCTION_158_1();
  v1 = sub_1CA94C368();

  OUTLINED_FUNCTION_116();
  sub_1CA94C368();
  OUTLINED_FUNCTION_105_1();

  OUTLINED_FUNCTION_169_0();
  v4 = [v2 v3];

  return v4;
}

unint64_t sub_1CA320BA4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1CA94D918();
  sub_1CA94ADC8();
  sub_1CA323D64(&qword_1EC441D00, MEMORY[0x1E69DB0B8]);
  sub_1CA94C298();
  v4 = *(type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0) + 20);
  sub_1CA94B168();
  sub_1CA323D64(&qword_1EC443B20, MEMORY[0x1E69DB2F0]);
  sub_1CA94C298();
  v5 = sub_1CA94D968();

  return sub_1CA321340(a1, v5);
}

unint64_t sub_1CA320CB8(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_1CA94D918();
  v4 = *a1;
  v5 = a1[1];
  sub_1CA94C458();
  v6 = *(type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0) + 20);
  sub_1CA94B168();
  sub_1CA323D64(&qword_1EC443B20, MEMORY[0x1E69DB2F0]);
  sub_1CA94C298();
  v7 = sub_1CA94D968();

  return sub_1CA3214E4(a1, v7);
}

void sub_1CA320D84()
{
  v1 = *(v0 + 40);
  sub_1CA949328();
  sub_1CA323D64(&qword_1EC444408, MEMORY[0x1E69AC0E8]);
  sub_1CA94C288();
  sub_1CA321E1C();
}

unint64_t sub_1CA320E58()
{
  OUTLINED_FUNCTION_81_1();
  v1 = *(v0 + 40);
  sub_1CA94CFC8();
  v2 = OUTLINED_FUNCTION_5_3();

  return sub_1CA321698(v2, v3);
}

unint64_t sub_1CA320E94()
{
  v1 = *(v0 + 40);
  sub_1CA94D908();
  v2 = OUTLINED_FUNCTION_93();
  return sub_1CA321834(v2, v3);
}

unint64_t sub_1CA320ECC()
{
  OUTLINED_FUNCTION_81_1();
  v1 = *(v0 + 40);
  sub_1CA94D378();
  v2 = OUTLINED_FUNCTION_5_3();

  return sub_1CA321770(v2, v3);
}

void sub_1CA320F08()
{
  v1 = *(v0 + 40);
  sub_1CA94C3A8();
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D968();

  OUTLINED_FUNCTION_134();
  sub_1CA321D44();
}

void sub_1CA320F94()
{
  OUTLINED_FUNCTION_81_1();
  v1 = *(v0 + 40);
  sub_1CA948D28();
  sub_1CA323B30(&qword_1EDB9FA28, MEMORY[0x1EEE788F0]);
  OUTLINED_FUNCTION_163();
  sub_1CA94C288();
  OUTLINED_FUNCTION_154_1();
  sub_1CA321A5C();
}

unint64_t sub_1CA321028(unsigned __int8 *a1)
{
  v3 = *(v1 + 40);
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](*a1);
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_1CA94C298();
  sub_1CA94D968();
  v4 = OUTLINED_FUNCTION_186_0();
  return sub_1CA321894(v4, v5);
}

unint64_t sub_1CA3210B4()
{
  OUTLINED_FUNCTION_81_1();
  v1 = *(v0 + 40);
  sub_1CA94CFC8();
  v2 = OUTLINED_FUNCTION_5_3();

  return sub_1CA32199C(v2, v3);
}

void sub_1CA3210F0()
{
  OUTLINED_FUNCTION_81_1();
  v1 = *(v0 + 40);
  sub_1CA9492B8();
  sub_1CA323B30(&unk_1EC442CE0, MEMORY[0x1EEE78BA0]);
  OUTLINED_FUNCTION_163();
  sub_1CA94C288();
  OUTLINED_FUNCTION_154_1();
  sub_1CA321A5C();
}

unint64_t sub_1CA321184(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a1);
  v4 = sub_1CA94D968();

  return sub_1CA321BE0(a1, v4);
}

unint64_t sub_1CA3211F0(void *a1)
{
  v3 = *(v1 + 40);
  sub_1CA94D918();
  sub_1CA94D938();
  if (a1)
  {
    v4 = a1;
    sub_1CA94CFE8();
  }

  sub_1CA94D968();
  v5 = OUTLINED_FUNCTION_186_0();

  return sub_1CA321C40(v5, v6);
}

void sub_1CA32127C()
{
  OUTLINED_FUNCTION_81_1();
  v1 = *(v0 + 40);
  sub_1CA9486C8();
  sub_1CA323D64(&qword_1EC4443A8, MEMORY[0x1E6996C28]);
  OUTLINED_FUNCTION_163();
  sub_1CA94C288();
  OUTLINED_FUNCTION_154_1();
  sub_1CA321E1C();
}

unint64_t sub_1CA321340(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      v14 = *(v2 + 48);
      sub_1CA323CB4();
      if (sub_1CA94ADB8())
      {
        v15 = MEMORY[0x1CCA9FFB0](&v9[*(v5 + 20)], a1 + *(v5 + 20));
        sub_1CA323DA8(v9, type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey);
        if (v15)
        {
          return v11;
        }
      }

      else
      {
        sub_1CA323DA8(v9, type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1CA3214E4(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = a1[1];
    v15 = *(v7 + 72);
    while (1)
    {
      v16 = *(v2 + 48);
      sub_1CA323CB4();
      v17 = *v9 == v13 && v9[1] == v14;
      if (v17 || (sub_1CA94D7F8()) && (MEMORY[0x1CCA9FFB0](v9 + *(v5 + 20), a1 + *(v5 + 20)))
      {
        break;
      }

      sub_1CA323DA8(v9, type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey);
      v11 = (v11 + 1) & v12;
      if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

    sub_1CA323DA8(v9, type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey);
  }

  return v11;
}

unint64_t sub_1CA321698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1CA94CFD8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1CA321770(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1CA2F6AB4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1CCAA21E0](v8, a1);
    sub_1CA323ADC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1CA321834(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1CA321894(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v9 = a1[3];
    v8 = a1[4];
    v10 = *(v2 + 48);
    v11 = a1[1] >> 16;
    v12 = a1[2] >> 16;
    do
    {
      v13 = (v10 + 40 * v5);
      if (*v13 == v7)
      {
        v14 = v13[3] == v9 && v13[4] == v8;
        v15 = v14 && v13[1] >> 16 == v11;
        v16 = v15 && v13[2] >> 16 == v12;
        if (v16 || (sub_1CA94D788() & 1) != 0)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1CA32199C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for WFUserVisibleString();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1CA94CFD8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

void sub_1CA321A5C()
{
  OUTLINED_FUNCTION_37_0();
  v22 = v1;
  v23 = v2;
  v20 = v3;
  v21 = v4;
  v5 = v0;
  v19[1] = v6;
  v7 = v0 + 64;
  OUTLINED_FUNCTION_151_2();
  v9 = ~v8;
  for (i = v10 & ~v8; ((1 << i) & *(v7 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    v12 = v20(0);
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x1EEE9AC00](v12);
    v16 = v19 - v15;
    (*(v13 + 16))(v19 - v15, *(v5 + 48) + *(v17 + 72) * i, v12);
    sub_1CA323B30(v21, v22);
    v18 = sub_1CA94C358();
    (*(v13 + 8))(v16, v12);
    if (v18)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_36();
}

unint64_t sub_1CA321BE0(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1CA321C40(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          sub_1CA25B3D0(0, &qword_1EDB9F6D8, 0x1E69E0990);
          v10 = v9;
          v11 = a1;
          v12 = sub_1CA94CFD8();

          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1CA321D44()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_151_2();
  v4 = ~v3;
  for (i = v5 & ~v3; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v7 = *(*(v0 + 48) + 8 * i);
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_164_0();
    if (v2 == sub_1CA94C3A8() && v1 == v8)
    {

      break;
    }

    OUTLINED_FUNCTION_104();
    v2 = sub_1CA94D7F8();

    if (v2)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA321E1C()
{
  OUTLINED_FUNCTION_37_0();
  v23 = v1;
  v24 = v2;
  v22 = v3;
  v5 = v4;
  v20 = v6;
  v8 = v7(0);
  OUTLINED_FUNCTION_1_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  v25 = v0 + 64;
  v21 = v0;
  OUTLINED_FUNCTION_151_2();
  v17 = ~v16;
  for (i = v5 & ~v16; ((1 << i) & *(v25 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v17)
  {
    (*(v10 + 16))(v15, *(v21 + 48) + *(v10 + 72) * i, v8);
    sub_1CA323D64(v22, v23);
    v19 = sub_1CA94C358();
    (*(v10 + 8))(v15, v8);
    if (v19)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA321F8C()
{
  OUTLINED_FUNCTION_37_0();
  v3 = OUTLINED_FUNCTION_165_1();
  v4 = type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(v3);
  v5 = OUTLINED_FUNCTION_52(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  v8 = *v0;
  v9 = sub_1CA320BA4(v1);
  OUTLINED_FUNCTION_7_0(v9, v10);
  if (v12)
  {
    __break(1u);
LABEL_10:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444450, &qword_1CA9834F0);
  OUTLINED_FUNCTION_148_1();
  if (sub_1CA94D588())
  {
    v14 = *v2;
    sub_1CA320BA4(v1);
    if ((v13 & 1) != (v15 & 1))
    {
      goto LABEL_10;
    }
  }

  v16 = *v2;
  if (v13)
  {
    OUTLINED_FUNCTION_201_1();
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_163();
    sub_1CA323CB4();
    OUTLINED_FUNCTION_103_0();
    sub_1CA322F28(v18, v19, v20, v21);
    OUTLINED_FUNCTION_36();
  }
}

void sub_1CA3220E8()
{
  OUTLINED_FUNCTION_37_0();
  v3 = OUTLINED_FUNCTION_165_1();
  v4 = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(v3);
  v5 = OUTLINED_FUNCTION_52(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  v8 = *v0;
  v9 = sub_1CA320CB8(v1);
  OUTLINED_FUNCTION_7_0(v9, v10);
  if (v12)
  {
    __break(1u);
LABEL_10:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443B8, &qword_1CA983448);
  OUTLINED_FUNCTION_148_1();
  if (sub_1CA94D588())
  {
    v14 = *v2;
    sub_1CA320CB8(v1);
    if ((v13 & 1) != (v15 & 1))
    {
      goto LABEL_10;
    }
  }

  v16 = *v2;
  if (v13)
  {
    OUTLINED_FUNCTION_201_1();
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_163();
    sub_1CA323CB4();
    OUTLINED_FUNCTION_103_0();
    sub_1CA322F28(v18, v19, v20, v21);
    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_1CA322244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_77_1();
  v11 = v10;
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_36_3(v12, v13);
  v14 = sub_1CA271BF8();
  OUTLINED_FUNCTION_7_0(v14, v15);
  if (v18)
  {
    __break(1u);
LABEL_14:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444360, &qword_1CA983118);
  OUTLINED_FUNCTION_63_2();
  if (sub_1CA94D588())
  {
    v21 = *v10;
    OUTLINED_FUNCTION_69();
    sub_1CA271BF8();
    OUTLINED_FUNCTION_145_0();
    if (!v23)
    {
      goto LABEL_14;
    }

    v19 = v22;
  }

  if (v20)
  {
    v24 = *(*v11 + 56);
    v25 = sub_1CA94AC88();
    OUTLINED_FUNCTION_52(v25);
    v27 = *(v26 + 40);
    v28 = v24 + *(v26 + 72) * v19;
    OUTLINED_FUNCTION_76_0();

    return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_147_1();
    sub_1CA3230F8(v38, v39, v40, v41, v42);
    OUTLINED_FUNCTION_76_0();

    return sub_1CA94C218();
  }
}

unint64_t sub_1CA322384()
{
  result = qword_1EC444350;
  if (!qword_1EC444350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444350);
  }

  return result;
}

_OWORD *sub_1CA3223D8()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0;
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_36_3(v2, v3);
  v4 = sub_1CA271BF8();
  OUTLINED_FUNCTION_7_0(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443B0, &qword_1CA983438);
  OUTLINED_FUNCTION_63_2();
  if (sub_1CA94D588())
  {
    v11 = *v0;
    OUTLINED_FUNCTION_69();
    sub_1CA271BF8();
    OUTLINED_FUNCTION_35_3();
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v12;
  }

  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_0((*(*v1 + 56) + 32 * v9));
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_76_0();

    return sub_1CA2C0A20(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_147_1();
    sub_1CA323000(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_76_0();

    return sub_1CA94C218();
  }
}

_OWORD *sub_1CA3224DC(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1CA320F08();
  OUTLINED_FUNCTION_7_0(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for Key(0);
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443E0, &qword_1CA983488);
  if (sub_1CA94D588())
  {
    v13 = *v3;
    sub_1CA320F08();
    OUTLINED_FUNCTION_146_0();
    if (!v15)
    {
      goto LABEL_14;
    }

    v11 = v14;
  }

  v16 = *v3;
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0((*(v16 + 56) + 32 * v11));
    v17 = OUTLINED_FUNCTION_23();

    return sub_1CA2C0A20(v17, v18);
  }

  else
  {
    sub_1CA32306C(v11, a2, a1, v16);

    return a2;
  }
}

void sub_1CA3225FC()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_117_1(v2, v5);
  v6 = sub_1CA271BF8();
  OUTLINED_FUNCTION_7_0(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444388, &qword_1CA9833C0);
  OUTLINED_FUNCTION_63_2();
  if (sub_1CA94D588())
  {
    v13 = *v1;
    OUTLINED_FUNCTION_106();
    sub_1CA271BF8();
    OUTLINED_FUNCTION_35_3();
    if (!v15)
    {
      goto LABEL_14;
    }

    v11 = v14;
  }

  if (v12)
  {
    v16 = *(*v1 + 56);
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = v3;
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_187_0();
    sub_1CA3230B8(v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_76_0();

    sub_1CA94C218();
  }
}

void sub_1CA3226FC()
{
  OUTLINED_FUNCTION_77_1();
  v4 = v1;
  OUTLINED_FUNCTION_32_3(v5, v6);
  v7 = sub_1CA320E94();
  OUTLINED_FUNCTION_7_0(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D8, &qword_1CA983480);
  OUTLINED_FUNCTION_64_2();
  if (sub_1CA94D588())
  {
    v10 = *v1;
    sub_1CA320E94();
    OUTLINED_FUNCTION_35_3();
    if (!v12)
    {
      goto LABEL_12;
    }

    v2 = v11;
  }

  if (v3)
  {
    v13 = *(*v4 + 56);
    v14 = *(v13 + 8 * v2);
    *(v13 + 8 * v2) = v0;
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_188();
    sub_1CA323354(v16, v17, v0, v18);
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA3227D4()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0;
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_36_3(v2, v3);
  v4 = sub_1CA271BF8();
  OUTLINED_FUNCTION_7_0(v4, v5);
  if (v7)
  {
    __break(1u);
LABEL_11:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4455A0, &unk_1CA987640);
  OUTLINED_FUNCTION_63_2();
  if (sub_1CA94D588())
  {
    v9 = *v0;
    OUTLINED_FUNCTION_69();
    sub_1CA271BF8();
    OUTLINED_FUNCTION_145_0();
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  if (v8)
  {
    v11 = *(*v1 + 56);
    v12 = OUTLINED_FUNCTION_52_0();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    OUTLINED_FUNCTION_18_0(v14);
    v16 = *(v15 + 72);
    sub_1CA323B74();
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    OUTLINED_FUNCTION_147_1();
    sub_1CA32317C(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_76_0();

    sub_1CA94C218();
  }
}

void sub_1CA3228F4()
{
  OUTLINED_FUNCTION_77_1();
  v4 = v1;
  v7 = OUTLINED_FUNCTION_32_3(v5, v6);
  v8 = sub_1CA321028(v7);
  OUTLINED_FUNCTION_7_0(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D0, &qword_1CA983478);
    sub_1CA94D878();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443C8, &qword_1CA987650);
  OUTLINED_FUNCTION_64_2();
  if (sub_1CA94D588())
  {
    v11 = *v1;
    sub_1CA321028(v2);
    OUTLINED_FUNCTION_35_3();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  if (v3)
  {
    v13 = *(*v4 + 56);
    sub_1CA323B74();
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_188();
    sub_1CA32320C(v14, v15, v0, v16);
    v17 = *(v2 + 32);
    OUTLINED_FUNCTION_76_0();

    sub_1CA94C218();
  }
}

uint64_t sub_1CA3229F4()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_1CA271BF8();
  OUTLINED_FUNCTION_7_0(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443C0, &unk_1CA983460);
  OUTLINED_FUNCTION_148_1();
  if (sub_1CA94D588())
  {
    v18 = *v1;
    sub_1CA271BF8();
    OUTLINED_FUNCTION_145_0();
    if (!v20)
    {
      goto LABEL_14;
    }

    v16 = v19;
  }

  v21 = *v1;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = *v22;
    *v22 = v9;
    v22[1] = v7;
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1CA323274(v16, v5, v3, v9, v7, v21);
    OUTLINED_FUNCTION_36();

    return sub_1CA94C218();
  }
}

void sub_1CA322B14()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v1;
  OUTLINED_FUNCTION_32_3(v3, v4);
  sub_1CA3210F0();
  OUTLINED_FUNCTION_7_0(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_11:
    sub_1CA9492B8();
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481B0, &qword_1CA983428);
  OUTLINED_FUNCTION_64_2();
  if (sub_1CA94D588())
  {
    v12 = *v1;
    sub_1CA3210F0();
    OUTLINED_FUNCTION_35_3();
    if (!v14)
    {
      goto LABEL_11;
    }

    v10 = v13;
  }

  if (v11)
  {
    *(*(*v2 + 56) + 8 * v10) = v0;
  }

  else
  {
    v15 = sub_1CA9492B8();
    v16 = OUTLINED_FUNCTION_1_0(v15);
    v18 = *(v17 + 64);
    MEMORY[0x1EEE9AC00](v16);
    OUTLINED_FUNCTION_6_0();
    v20 = *(v19 + 16);
    v21 = OUTLINED_FUNCTION_188();
    v22(v21);
    OUTLINED_FUNCTION_103_0();
    sub_1CA3232C0(v23, v24, v25, v26);
  }

  OUTLINED_FUNCTION_76_0();
}

void sub_1CA322C54()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v1;
  OUTLINED_FUNCTION_32_3(v3, v4);
  v5 = sub_1CA320E94();
  OUTLINED_FUNCTION_7_0(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443A0, &qword_1CA983430);
  OUTLINED_FUNCTION_64_2();
  if (sub_1CA94D588())
  {
    v12 = *v1;
    sub_1CA320E94();
    OUTLINED_FUNCTION_146_0();
    if (!v14)
    {
      goto LABEL_12;
    }

    v10 = v13;
  }

  if (v11)
  {
    *(*(*v2 + 56) + 8 * v10) = v0;
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    OUTLINED_FUNCTION_76_0();

    sub_1CA323354(v15, v16, v17, v18);
  }
}

void sub_1CA322D2C()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = sub_1CA321184(v2);
  OUTLINED_FUNCTION_7_0(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4457C0, &qword_1CA983440);
  OUTLINED_FUNCTION_64_2();
  if (sub_1CA94D588())
  {
    v14 = *v1;
    sub_1CA321184(v3);
    OUTLINED_FUNCTION_146_0();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  if (v13)
  {
    v17 = *(*v1 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = v5;
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    OUTLINED_FUNCTION_76_0();

    sub_1CA32338C(v20, v21, v22, v23);
  }
}

uint64_t sub_1CA322E28()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_117_1(v2, v5);
  v6 = sub_1CA271BF8();
  OUTLINED_FUNCTION_7_0(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444398, &qword_1CA983420);
  OUTLINED_FUNCTION_63_2();
  if (sub_1CA94D588())
  {
    v13 = *v1;
    OUTLINED_FUNCTION_106();
    sub_1CA271BF8();
    OUTLINED_FUNCTION_35_3();
    if (!v15)
    {
      goto LABEL_14;
    }

    v11 = v14;
  }

  if (v12)
  {
    v16 = *(*v1 + 56);
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = v3;
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_187_0();
    sub_1CA3230B8(v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_76_0();

    return sub_1CA94C218();
  }
}

void sub_1CA322F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_158_1();
  v7 = v6;
  OUTLINED_FUNCTION_20_6(v6, v8, v9, v10);
  v12 = *(v11 + 48);
  v14 = v13(0);
  OUTLINED_FUNCTION_18_0(v14);
  v16 = *(v15 + 72);
  sub_1CA323D0C();
  *(*(a4 + 56) + 8 * v7) = v4;
  OUTLINED_FUNCTION_143_1();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v17;
  }
}

_OWORD *sub_1CA323000(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1CA2C0A20(a4, (a5[7] + 32 * a1));
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

void sub_1CA32306C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_20_6(a1, a2, a3, a4);
  *(*(v6 + 48) + 8 * v5) = v7;
  sub_1CA2C0A20(v8, (*(v6 + 56) + 32 * v5));
  OUTLINED_FUNCTION_143_1();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

unint64_t sub_1CA3230B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_26_5(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

void sub_1CA3230F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_5(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v11 = v10(0);
  OUTLINED_FUNCTION_52(v11);
  (*(v12 + 32))(v9 + *(v12 + 72) * a1, a4);
  OUTLINED_FUNCTION_143_1();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }
}

void sub_1CA32317C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_5(a1, a2, a3, a4, a5);
  v7 = *(v6 + 56);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 72);
  sub_1CA323BCC();
  OUTLINED_FUNCTION_143_1();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v11;
  }
}

void sub_1CA32320C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_20_6(a1, a2, a3, a4);
  v7 = *(v6 + 48) + 40 * v5;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  memcpy((*(v6 + 56) + 112 * v5), v10, 0x70uLL);
  OUTLINED_FUNCTION_143_1();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

unint64_t sub_1CA323274(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_1CA3232C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_20_6(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  v10 = sub_1CA9492B8();
  OUTLINED_FUNCTION_52(v10);
  (*(v11 + 32))(v9 + *(v11 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  OUTLINED_FUNCTION_143_1();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

void sub_1CA323354(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_20_6(a1, a2, a3, a4);
  *(v5[6] + 8 * v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_175_0(v5, v10);
  }
}

void sub_1CA32338C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_20_6(a1, a2, a3, a4);
  *(v5[6] + v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_175_0(v5, v10);
  }
}

uint64_t sub_1CA3233C8(void *a1)
{
  v1 = [a1 mangledTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA32342C()
{
  v0 = sub_1CA94C3A8();
  v2 = v1;
  if (v0 == sub_1CA94C3A8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_116();
    v5 = sub_1CA94D7F8();
  }

  return v5 & 1;
}

unint64_t sub_1CA3234B0()
{
  result = qword_1EC444380;
  if (!qword_1EC444380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444380);
  }

  return result;
}

uint64_t type metadata accessor for ToolInvocationBox()
{
  result = qword_1EC442828;
  if (!qword_1EC442828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA32358C()
{
  result = sub_1CA94A2F8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit17ToolInvocationBoxC5ErrorO(uint64_t a1)
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

uint64_t sub_1CA323674(uint64_t a1, unsigned int a2)
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

uint64_t sub_1CA3236B4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1CA3236F8(uint64_t result, unsigned int a2)
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

uint64_t sub_1CA323720()
{
  OUTLINED_FUNCTION_59_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v8[1] = sub_1CA2E9390;
  v10 = OUTLINED_FUNCTION_49_1();

  return v11(v10);
}

uint64_t sub_1CA3237E0()
{
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20(v6);
  *v7 = v8;
  v7[1] = sub_1CA2E9390;
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_217();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_1CA32388C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  v6[1] = sub_1CA2E9390;
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_9_2();

  __asm { BR              X4 }
}

uint64_t sub_1CA323934()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  v5[1] = sub_1CA2E9390;
  v7 = OUTLINED_FUNCTION_20_0();

  return v8(v7);
}

uint64_t sub_1CA3239DC()
{
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20(v6);
  *v7 = v8;
  v7[1] = sub_1CA2DF78C;
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_217();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t sub_1CA323A88()
{
  result = qword_1EC444390;
  if (!qword_1EC444390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444390);
  }

  return result;
}

uint64_t sub_1CA323B30(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA323B74()
{
  OUTLINED_FUNCTION_170_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_23();
  v7(v6);
  return v0;
}

uint64_t sub_1CA323BCC()
{
  OUTLINED_FUNCTION_170_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_52(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_23();
  v7(v6);
  return v0;
}

uint64_t sub_1CA323C24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_117_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA323C64(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_117_1(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_7_2(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1CA323CB4()
{
  OUTLINED_FUNCTION_170_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return v0;
}

uint64_t sub_1CA323D0C()
{
  OUTLINED_FUNCTION_170_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return v0;
}

uint64_t sub_1CA323D64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA323DA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_60_3()
{
  v1 = v0[64];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
}

void OUTLINED_FUNCTION_85_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_111_1()
{
  v3 = v0 + *(v1 + 24);

  return type metadata accessor for DatabaseContainerDefinitionProvider();
}

id OUTLINED_FUNCTION_112_1(void *a1)
{

  return [a1 v1];
}

uint64_t OUTLINED_FUNCTION_123_1(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *v9 = a1;

  return sub_1CA26B54C(v11, v10, va);
}

uint64_t OUTLINED_FUNCTION_127_0(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_135_1()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[28];
  result = v0[24];
  v6 = v0[22];
  v7 = *(v0[23] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_152_1()
{
  result = v0[35];
  v2 = v0[33];
  v3 = *(v0[34] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_166_0()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  result = v0[27];
  v5 = v0[28];
  v6 = v0[25];
  v7 = *(v0[26] + 8);
  return result;
}

id OUTLINED_FUNCTION_173_0()
{

  return [v0 (v1 + 632)];
}

uint64_t OUTLINED_FUNCTION_176_1()
{

  return sub_1CA94D7F8();
}

id OUTLINED_FUNCTION_179_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * v2 + 32);

  return v4;
}

uint64_t OUTLINED_FUNCTION_180_0()
{

  return sub_1CA323BCC();
}

uint64_t OUTLINED_FUNCTION_181_0()
{
  v2 = *(v0 + 304);

  return sub_1CA94AD08();
}

void OUTLINED_FUNCTION_182_0()
{
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[34];
  v5 = v0[35];

  JUMPOUT(0x1CCAA00A0);
}

uint64_t OUTLINED_FUNCTION_188_0(uint64_t result)
{
  v2[51] = result;
  v2[52] = v1;
  v2[50] = v1;
  v3 = v2[47];
  return result;
}

uint64_t OUTLINED_FUNCTION_197_0()
{
  v1 = v0[39];
  result = v0[32];
  v3 = v0[30];
  v4 = *(v0[31] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_201_1()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_205_0(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_1CA94C218();
}

uint64_t OUTLINED_FUNCTION_206_0()
{
}

uint64_t OUTLINED_FUNCTION_207_0()
{

  return sub_1CA94C408();
}

void OUTLINED_FUNCTION_208()
{
}

void OUTLINED_FUNCTION_209(uint64_t a1)
{
  *(v2 + 536) = a1;
}

uint64_t OUTLINED_FUNCTION_210()
{
}

uint64_t OUTLINED_FUNCTION_211()
{
}

uint64_t OUTLINED_FUNCTION_214()
{

  return sub_1CA94A2A8();
}

id sub_1CA3242F0()
{
  v118 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9A3730;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v123 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v124 = v12;
  v13 = v110 - v123;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v119 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v121 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v122 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v110 - v122;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v120 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v117 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v115 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v116 = v110;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v110 - v123;
  sub_1CA948D98();
  v33 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v110 - v122;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v115, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v120;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v117;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"Name";
  v38 = @"Name";
  v39 = sub_1CA94C438();
  v115 = v40;
  v116 = v39;
  v41 = sub_1CA94C438();
  v43 = v42;
  v117 = v110;
  MEMORY[0x1EEE9AC00](v41);
  v44 = v123;
  sub_1CA948D98();
  v45 = v119;
  v46 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = v110 - v122;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v116, v115, v41, v43, 0, 0, v110 - v44, v47);
  *(inited + 224) = v120;
  *(inited + 232) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1CA9813C0;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 1;
  *(v49 + 72) = v50;
  *(v49 + 80) = 0x614E74757074754FLL;
  *(v49 + 88) = 0xEA0000000000656DLL;
  v51 = @"Output";
  v52 = sub_1CA94C438();
  v115 = v53;
  v116 = v52;
  v54 = sub_1CA94C438();
  v114 = v55;
  v117 = v110;
  MEMORY[0x1EEE9AC00](v54);
  sub_1CA948D98();
  v56 = [v45 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v110 - v122;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 96) = sub_1CA2F9F14(v116, v115, v54, v114, 0, 0, v110 - v44, v57);
  *(v49 + 120) = v120;
  *(v49 + 128) = 0x7365707954;
  *(v49 + 136) = 0xE500000000000000;
  *(v49 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 144) = &unk_1F49F4128;
  v59 = MEMORY[0x1E69E6158];
  v60 = sub_1CA94C1E8();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v60;
  *(inited + 264) = v61;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v117 = swift_allocObject();
  *(v117 + 1) = xmmword_1CA9813B0;
  v116 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_1CA981400;
  *(v62 + 32) = @"AllowsMultipleValues";
  *(v62 + 40) = 1;
  v63 = MEMORY[0x1E69E6370];
  *(v62 + 64) = MEMORY[0x1E69E6370];
  *(v62 + 72) = @"AllowsTextEntry";
  *(v62 + 80) = 0;
  *(v62 + 104) = v63;
  *(v62 + 112) = @"Class";
  v64 = v63;
  *(v62 + 144) = v59;
  *(v62 + 120) = 0xD000000000000017;
  *(v62 + 128) = 0x80000001CA9A37F0;
  v65 = @"Parameters";
  v66 = @"AllowsMultipleValues";
  v67 = @"AllowsTextEntry";
  v68 = @"Class";
  *(v62 + 152) = sub_1CA94C368();
  *(v62 + 160) = 1;
  *(v62 + 184) = v64;
  *(v62 + 192) = @"Key";
  *(v62 + 200) = 0x6361746E6F434657;
  *(v62 + 208) = 0xE900000000000074;
  *(v62 + 224) = v59;
  *(v62 + 232) = @"Label";
  v69 = @"Key";
  v70 = @"Label";
  v71 = sub_1CA94C438();
  v112 = v72;
  v113 = v71;
  v73 = sub_1CA94C438();
  v111 = v74;
  v114 = v110;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v110 - v123;
  sub_1CA948D98();
  v76 = v119;
  v77 = [v119 bundleURL];
  v110[1] = v110;
  MEMORY[0x1EEE9AC00](v77);
  v115 = inited;
  v78 = v122;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 240) = sub_1CA2F9F14(v113, v112, v73, v111, 0, 0, v75, v110 - v78);
  v80 = v120;
  *(v62 + 264) = v120;
  *(v62 + 272) = @"Placeholder";
  v81 = @"Placeholder";
  v82 = sub_1CA94C438();
  v112 = v83;
  v113 = v82;
  v111 = sub_1CA94C438();
  v85 = v84;
  v114 = v110;
  MEMORY[0x1EEE9AC00](v111);
  v86 = v110 - v123;
  sub_1CA948D98();
  v87 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v113, v112, v111, v85, 0, 0, v86, v110 - v78);
  *(v62 + 304) = v80;
  *(v62 + 280) = v89;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v90 = sub_1CA2F864C();
  v91 = v117;
  v117[4] = v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v93 = v115;
  *(v115 + 280) = v91;
  *(v93 + 304) = v92;
  *(v93 + 312) = @"ParameterSummary";
  v94 = @"ParameterSummary";
  v95 = sub_1CA94C438();
  v97 = v96;
  v98 = sub_1CA94C438();
  v100 = v99;
  v120 = v110;
  MEMORY[0x1EEE9AC00](v98);
  v101 = v110 - v123;
  sub_1CA948D98();
  v102 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = v110 - v122;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v95, v97, v98, v100, 0, 0, v101, v103);
  v106 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v107 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v93 + 320) = v106;
  *(v93 + 344) = v107;
  *(v93 + 352) = @"ResidentCompatible";
  *(v93 + 384) = MEMORY[0x1E69E6370];
  *(v93 + 360) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v108 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3250FC()
{
  v133 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9A38B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v146 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v147 = v12;
  v13 = &v130 - v146;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v145 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v143 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v144 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v130 - v144;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v142 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v132 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v141 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v139 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v140 = &v130;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v130 - v146;
  sub_1CA948D98();
  v33 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v130 - v144;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v139, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v142;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v141;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"Discoverable";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 0;
  *(inited + 224) = v38;
  *(inited + 232) = @"Input";
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  *(v40 + 48) = 1;
  *(v40 + 72) = v39;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  strcpy((v40 + 96), "WFSlackInput");
  *(v40 + 109) = 0;
  *(v40 + 110) = -5120;
  *(v40 + 120) = MEMORY[0x1E69E6158];
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v39;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v138;
  *(v40 + 192) = &unk_1F49F41D8;
  v41 = @"Discoverable";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v43;
  *(inited + 264) = v44;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v45 = @"InputPassthrough";
  v46 = @"Name";
  v47 = sub_1CA94C438();
  v49 = v48;
  v50 = sub_1CA94C438();
  v52 = v51;
  v141 = &v130;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v130 - v146;
  sub_1CA948D98();
  v54 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v130 - v144;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  *(inited + 344) = v142;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v141 = swift_allocObject();
  *(v141 + 1) = xmmword_1CA981470;
  v140 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1CA981380;
  v58 = @"Parameters";
  *(v57 + 32) = sub_1CA94C368();
  strcpy((v57 + 40), "WFSlackAccount");
  *(v57 + 55) = -18;
  v59 = MEMORY[0x1E69E6158];
  *(v57 + 64) = MEMORY[0x1E69E6158];
  *(v57 + 72) = @"AlwaysShowsButton";
  *(v57 + 80) = 1;
  *(v57 + 104) = MEMORY[0x1E69E6370];
  *(v57 + 112) = @"Class";
  *(v57 + 120) = 0xD000000000000018;
  *(v57 + 128) = 0x80000001CA9A3950;
  *(v57 + 144) = v59;
  *(v57 + 152) = @"DisallowedVariableTypes";
  *(v57 + 160) = &unk_1F49F4218;
  *(v57 + 184) = v138;
  *(v57 + 192) = @"Key";
  *(v57 + 200) = 0x6E756F6363414657;
  *(v57 + 208) = 0xE900000000000074;
  *(v57 + 224) = v59;
  *(v57 + 232) = @"Label";
  v60 = @"Class";
  v61 = @"Key";
  v62 = @"Label";
  v63 = v60;
  v64 = v61;
  v65 = v62;
  v66 = @"AlwaysShowsButton";
  v138 = v63;
  v137 = v64;
  v136 = v65;
  v131 = v66;
  v67 = @"DisallowedVariableTypes";
  v68 = sub_1CA94C438();
  v134 = v69;
  v70 = sub_1CA94C438();
  v72 = v71;
  v135 = &v130;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v130 - v146;
  sub_1CA948D98();
  v74 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v130 - v144;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v68, v134, v70, v72, 0, 0, v73, v75);
  *(v57 + 264) = v142;
  *(v57 + 240) = v77;
  _s3__C3KeyVMa_0(0);
  v135 = v78;
  v134 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v141[4] = sub_1CA2F864C();
  v79 = swift_initStackObject();
  *(v79 + 16) = xmmword_1CA981370;
  *(v79 + 32) = sub_1CA94C368();
  *(v79 + 40) = 0x6E756F6363414657;
  *(v79 + 48) = 0xE900000000000074;
  v80 = MEMORY[0x1E69E6158];
  v81 = v131;
  *(v79 + 64) = MEMORY[0x1E69E6158];
  *(v79 + 72) = v81;
  *(v79 + 80) = 1;
  v82 = v138;
  *(v79 + 104) = MEMORY[0x1E69E6370];
  *(v79 + 112) = v82;
  *(v79 + 120) = 0xD00000000000001DLL;
  *(v79 + 128) = 0x80000001CA9A39B0;
  v83 = v137;
  *(v79 + 144) = v80;
  *(v79 + 152) = v83;
  strcpy((v79 + 160), "SlackChannel");
  *(v79 + 173) = 0;
  *(v79 + 174) = -5120;
  v84 = v136;
  *(v79 + 184) = v80;
  *(v79 + 192) = v84;
  v85 = sub_1CA94C438();
  v130 = v86;
  v87 = sub_1CA94C438();
  v89 = v88;
  v131 = &v130;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v130 - v146;
  sub_1CA948D98();
  v91 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v130 - v144;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v85, v130, v87, v89, 0, 0, v90, v92);
  *(v79 + 224) = v142;
  *(v79 + 200) = v94;
  sub_1CA94C1E8();
  v141[5] = sub_1CA2F864C();
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1CA9813C0;
  *(v95 + 32) = v138;
  *(v95 + 40) = 0xD000000000000019;
  *(v95 + 48) = 0x80000001CA99B030;
  v96 = MEMORY[0x1E69E6158];
  v97 = v137;
  *(v95 + 64) = MEMORY[0x1E69E6158];
  *(v95 + 72) = v97;
  strcpy((v95 + 80), "WFSlackInput");
  *(v95 + 93) = 0;
  *(v95 + 94) = -5120;
  v98 = v136;
  *(v95 + 104) = v96;
  *(v95 + 112) = v98;
  v99 = sub_1CA94C438();
  v138 = v100;
  v101 = sub_1CA94C438();
  v103 = v102;
  v139 = &v130;
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v130 - v146;
  sub_1CA948D98();
  v105 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v130 - v144;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v99, v138, v101, v103, 0, 0, v104, v106);
  *(v95 + 144) = v142;
  *(v95 + 120) = v108;
  sub_1CA94C1E8();
  v109 = sub_1CA2F864C();
  v110 = v141;
  v141[6] = v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v110;
  *(inited + 384) = v111;
  *(inited + 392) = @"ParameterSummary";
  v112 = @"ParameterSummary";
  v113 = sub_1CA94C438();
  v115 = v114;
  v116 = sub_1CA94C438();
  v118 = v117;
  v142 = &v130;
  MEMORY[0x1EEE9AC00](v116);
  v119 = &v130 - v146;
  sub_1CA948D98();
  v120 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v130 - v144;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v113, v115, v116, v118, 0, 0, v119, v121);
  v124 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v125 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v124;
  *(inited + 424) = v125;
  *(inited + 432) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_1CA97EDF0;
  *(v126 + 56) = MEMORY[0x1E69E6158];
  *(v126 + 32) = 0xD000000000000015;
  *(v126 + 40) = 0x80000001CA997230;
  v127 = @"RequiredResources";
  v128 = sub_1CA94C1E8();
  *(v126 + 88) = v132;
  *(v126 + 64) = v128;
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 440) = v126;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA326234()
{
  v30[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v23);
  *(inited + 184) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v25;
  v26 = sub_1CA94C368();
  v27 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 192) = v26;
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x80000001CA993900;
  v28 = sub_1CA94C368();
  *(inited + 264) = v27;
  *(inited + 232) = v28;
  *(inited + 240) = 1953720652;
  *(inited + 248) = 0xE400000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA326614()
{
  v154 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9A3AF0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v160 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v163 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v164 = v12;
  v13 = &v147 - v163;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v161 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v162 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v147 - v162;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v159 = v21;
  v22 = v160;
  v160[10] = v20;
  v22[13] = v21;
  v22[14] = @"Description";
  *&v157 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v155 = sub_1CA94C438();
  v153 = v26;
  v152 = sub_1CA94C438();
  v28 = v27;
  v156 = &v147;
  MEMORY[0x1EEE9AC00](v152);
  v29 = &v147 - v163;
  sub_1CA948D98();
  v158 = v14;
  v30 = [v14 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v162;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v155, v153, v152, v28, 0, 0, v29, &v147 - v31);
  v33 = v159;
  *(v23 + 64) = v159;
  *(v23 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v155 = sub_1CA94C438();
  v153 = v35;
  v36 = sub_1CA94C438();
  v152 = v37;
  v156 = &v147;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v147 - v163;
  sub_1CA948D98();
  v39 = [v14 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v41 = sub_1CA2F9F14(v155, v153, v36, v152, 0, 0, v38, &v147 - v31);
  *(v23 + 104) = v33;
  *(v23 + 80) = v41;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v42 = v157;
  v43 = sub_1CA6B3784();
  v44 = v160;
  v160[15] = v43;
  v44[18] = v42;
  v44[19] = @"IconColor";
  v44[20] = 0x6F6769646E49;
  v44[21] = 0xE600000000000000;
  v45 = MEMORY[0x1E69E6158];
  v44[23] = MEMORY[0x1E69E6158];
  v44[24] = @"IconSymbol";
  v44[25] = 0xD000000000000011;
  v44[26] = 0x80000001CA9A3B70;
  v44[28] = v45;
  v44[29] = @"Input";
  v46 = v45;
  v47 = v44;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v48 = swift_initStackObject();
  v157 = xmmword_1CA981350;
  *(v48 + 16) = xmmword_1CA981350;
  *(v48 + 32) = 0x656C7069746C754DLL;
  *(v48 + 40) = 0xE800000000000000;
  v49 = MEMORY[0x1E69E6370];
  *(v48 + 48) = 0;
  *(v48 + 72) = v49;
  strcpy((v48 + 80), "ParameterKey");
  *(v48 + 93) = 0;
  *(v48 + 94) = -5120;
  *(v48 + 96) = 0x7475706E494657;
  *(v48 + 104) = 0xE700000000000000;
  *(v48 + 120) = v46;
  *(v48 + 128) = 0x6465726975716552;
  *(v48 + 136) = 0xE800000000000000;
  *(v48 + 144) = 1;
  *(v48 + 168) = v49;
  *(v48 + 176) = 0x7365707954;
  *(v48 + 184) = 0xE500000000000000;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v48 + 216) = v156;
  *(v48 + 192) = &unk_1F49F42F8;
  v50 = @"IconColor";
  v51 = @"IconSymbol";
  v52 = @"Input";
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v155 = v54;
  v47[30] = v53;
  v47[33] = v54;
  v47[34] = @"Name";
  v55 = @"Name";
  v56 = sub_1CA94C438();
  v150 = v57;
  v151 = v56;
  v58 = sub_1CA94C438();
  v60 = v59;
  v152 = &v147;
  MEMORY[0x1EEE9AC00](v58);
  v61 = v163;
  sub_1CA948D98();
  v62 = v158;
  v63 = [v158 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v162;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v151, v150, v58, v60, 0, 0, &v147 - v61, &v147 - v64);
  v67 = v160;
  v160[35] = v66;
  v67[38] = v159;
  v67[39] = @"Output";
  v68 = swift_allocObject();
  *(v68 + 16) = v157;
  *(v68 + 32) = 0x75736F6C63736944;
  *(v68 + 40) = 0xEF6C6576654C6572;
  *(v68 + 48) = 0x63696C627550;
  *(v68 + 56) = 0xE600000000000000;
  *(v68 + 72) = MEMORY[0x1E69E6158];
  *(v68 + 80) = 0x656C7069746C754DLL;
  *(v68 + 88) = 0xE800000000000000;
  *(v68 + 96) = 0;
  *(v68 + 120) = MEMORY[0x1E69E6370];
  *(v68 + 128) = 0x614E74757074754FLL;
  *(v68 + 136) = 0xEA0000000000656DLL;
  v69 = @"Output";
  v70 = sub_1CA94C438();
  v151 = v71;
  v152 = v70;
  v72 = sub_1CA94C438();
  v74 = v73;
  v153 = &v147;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v147 - v61;
  sub_1CA948D98();
  v76 = [v62 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 144) = sub_1CA2F9F14(v152, v151, v72, v74, 0, 0, v75, &v147 - v64);
  *(v68 + 168) = v159;
  *(v68 + 176) = 0x7365707954;
  *(v68 + 216) = v156;
  *(v68 + 184) = 0xE500000000000000;
  *(v68 + 192) = &unk_1F49F4328;
  v78 = MEMORY[0x1E69E6158];
  v79 = sub_1CA94C1E8();
  v80 = v160;
  v160[40] = v79;
  v80[43] = v155;
  v80[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v156 = swift_allocObject();
  *(v156 + 1) = xmmword_1CA981360;
  v155 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v81 = swift_initStackObject();
  *(v81 + 16) = v157;
  *(v81 + 32) = @"Class";
  *(v81 + 40) = 0xD000000000000011;
  *(v81 + 48) = 0x80000001CA99E620;
  *(v81 + 64) = v78;
  *(v81 + 72) = @"Description";
  v152 = @"Class";
  v82 = @"Parameters";
  v83 = @"Description";
  v84 = sub_1CA94C438();
  v150 = v85;
  v86 = sub_1CA94C438();
  v88 = v87;
  v151 = &v147;
  MEMORY[0x1EEE9AC00](v86);
  v89 = v163;
  sub_1CA948D98();
  v90 = [v158 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v147 - v162;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 80) = sub_1CA2F9F14(v84, v150, v86, v88, 0, 0, &v147 - v89, v91);
  v93 = v159;
  *(v81 + 104) = v159;
  *(v81 + 112) = @"Key";
  *(v81 + 120) = 0xD000000000000012;
  *(v81 + 128) = 0x80000001CA9A3D70;
  *(v81 + 144) = MEMORY[0x1E69E6158];
  *(v81 + 152) = @"Label";
  v94 = @"Key";
  v95 = @"Label";
  v149 = v94;
  v148 = v95;
  v150 = sub_1CA94C438();
  v147 = v96;
  v97 = sub_1CA94C438();
  v99 = v98;
  v151 = &v147;
  MEMORY[0x1EEE9AC00](v97);
  sub_1CA948D98();
  v100 = [v158 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v147 - v162;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v150, v147, v97, v99, 0, 0, &v147 - v89, v101);
  *(v81 + 184) = v93;
  *(v81 + 160) = v103;
  _s3__C3KeyVMa_0(0);
  v151 = v104;
  v150 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v156[4] = sub_1CA2F864C();
  v105 = swift_allocObject();
  *(v105 + 16) = v157;
  *(v105 + 32) = v152;
  *(v105 + 40) = 0xD000000000000019;
  *(v105 + 48) = 0x80000001CA99B030;
  v106 = MEMORY[0x1E69E6158];
  v107 = v149;
  *(v105 + 64) = MEMORY[0x1E69E6158];
  *(v105 + 72) = v107;
  *(v105 + 80) = 0x7475706E494657;
  *(v105 + 88) = 0xE700000000000000;
  v108 = v148;
  *(v105 + 104) = v106;
  *(v105 + 112) = v108;
  v109 = sub_1CA94C438();
  v152 = v110;
  v153 = v109;
  v149 = sub_1CA94C438();
  v112 = v111;
  *&v157 = &v147;
  MEMORY[0x1EEE9AC00](v149);
  v113 = v163;
  sub_1CA948D98();
  v114 = v158;
  v115 = [v158 bundleURL];
  v148 = &v147;
  MEMORY[0x1EEE9AC00](v115);
  v116 = v162;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v105 + 120) = sub_1CA2F9F14(v153, v152, v149, v112, 0, 0, &v147 - v113, &v147 - v116);
  v118 = v159;
  *(v105 + 144) = v159;
  *(v105 + 152) = @"Placeholder";
  v119 = @"Placeholder";
  v120 = sub_1CA94C438();
  v152 = v121;
  v153 = v120;
  v149 = sub_1CA94C438();
  v123 = v122;
  *&v157 = &v147;
  MEMORY[0x1EEE9AC00](v149);
  sub_1CA948D98();
  v124 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v153, v152, v149, v123, 0, 0, &v147 - v113, &v147 - v116);
  *(v105 + 184) = v118;
  *(v105 + 160) = v126;
  sub_1CA94C1E8();
  v127 = sub_1CA2F864C();
  v128 = v156;
  v156[5] = v127;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v130 = v160;
  v160[45] = v128;
  v130[48] = v129;
  v130[49] = @"ParameterSummary";
  v131 = @"ParameterSummary";
  v132 = sub_1CA94C438();
  v134 = v133;
  v135 = sub_1CA94C438();
  v137 = v136;
  v159 = &v147;
  MEMORY[0x1EEE9AC00](v135);
  v138 = &v147 - v163;
  sub_1CA948D98();
  v139 = [v158 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v147 - v162;
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v142 = sub_1CA2F9F14(v132, v134, v135, v137, 0, 0, v138, v140);
  v143 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v144 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v130[50] = v143;
  v130[53] = v144;
  v130[54] = @"ResidentCompatible";
  v130[58] = MEMORY[0x1E69E6370];
  *(v130 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v145 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA327928()
{
  v140 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9A3E40;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v143 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v147 = v12;
  v149 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v129 - v149;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDB9F690;
  v144 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v146 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v148 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v129 - v148;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v145 = v21;
  v22 = v143;
  v143[10] = v20;
  v22[13] = v21;
  v22[14] = @"Description";
  v142 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438();
  *&v139 = v27;
  v28 = sub_1CA94C438();
  v30 = v29;
  v141 = &v129;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v129 - v149;
  sub_1CA948D98();
  v32 = [v14 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v129 - v148;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v139, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v145;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v142;
  v22[15] = sub_1CA6B3784();
  v22[18] = v36;
  v22[19] = @"IconName";
  v22[20] = 0x656C626169726156;
  v22[21] = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6158];
  v22[23] = MEMORY[0x1E69E6158];
  v22[24] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v139 = xmmword_1CA981370;
  *(v38 + 16) = xmmword_1CA981370;
  *(v38 + 32) = 0xD00000000000001DLL;
  *(v38 + 40) = 0x80000001CA9A3ED0;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  *(v38 + 80) = 0x656C7069746C754DLL;
  *(v38 + 88) = 0xE800000000000000;
  *(v38 + 96) = 1;
  *(v38 + 120) = v39;
  strcpy((v38 + 128), "ParameterKey");
  *(v38 + 141) = 0;
  *(v38 + 142) = -5120;
  *(v38 + 144) = 0x7475706E494657;
  *(v38 + 152) = 0xE700000000000000;
  *(v38 + 168) = v37;
  *(v38 + 176) = 0x6465726975716552;
  *(v38 + 184) = 0xE800000000000000;
  *(v38 + 192) = 1;
  *(v38 + 216) = v39;
  *(v38 + 224) = 0x7365707954;
  v40 = v39;
  *(v38 + 232) = 0xE500000000000000;
  *(v38 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 240) = &unk_1F49F4358;
  v41 = @"IconName";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v22[25] = v43;
  v22[28] = v44;
  v22[29] = @"InputPassthrough";
  *(v22 + 240) = 1;
  v22[33] = v40;
  v22[34] = @"Name";
  v45 = @"InputPassthrough";
  v46 = @"Name";
  v47 = sub_1CA94C438();
  v49 = v48;
  v50 = sub_1CA94C438();
  v52 = v51;
  v142 = &v129;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v129 - v149;
  sub_1CA948D98();
  v54 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v129 - v148;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  v58 = v143;
  v143[35] = v57;
  v58[38] = v145;
  v58[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v142 = swift_allocObject();
  *(v142 + 1) = xmmword_1CA981360;
  v141 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = @"Class";
  *(v59 + 40) = 0xD000000000000019;
  *(v59 + 48) = 0x80000001CA99B030;
  v60 = MEMORY[0x1E69E6158];
  *(v59 + 64) = MEMORY[0x1E69E6158];
  *(v59 + 72) = @"Key";
  *(v59 + 80) = 0x7475706E494657;
  *(v59 + 88) = 0xE700000000000000;
  *(v59 + 104) = v60;
  *(v59 + 112) = @"Label";
  v61 = @"Class";
  v62 = @"Key";
  v63 = @"Label";
  v136 = v61;
  v135 = v62;
  v137 = v63;
  v64 = @"Parameters";
  v65 = sub_1CA94C438();
  v132 = v66;
  v133 = v65;
  v67 = sub_1CA94C438();
  v69 = v68;
  v134 = &v129;
  MEMORY[0x1EEE9AC00](v67);
  v70 = v149;
  sub_1CA948D98();
  v71 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v129 - v148;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 120) = sub_1CA2F9F14(v133, v132, v67, v69, 0, 0, &v129 - v70, v72);
  v74 = v145;
  *(v59 + 144) = v145;
  *(v59 + 152) = @"Placeholder";
  v134 = @"Placeholder";
  v75 = sub_1CA94C438();
  v131 = v76;
  v132 = v75;
  v77 = sub_1CA94C438();
  v130 = v78;
  v133 = &v129;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v129 - v70;
  sub_1CA948D98();
  v80 = v144;
  v81 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v129 - v148;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v132, v131, v77, v130, 0, 0, v79, v82);
  *(v59 + 184) = v74;
  *(v59 + 160) = v84;
  _s3__C3KeyVMa_0(0);
  v133 = v85;
  v132 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v142[4] = sub_1CA2F864C();
  v86 = swift_allocObject();
  *(v86 + 16) = v139;
  *(v86 + 32) = v136;
  *(v86 + 40) = 0xD000000000000018;
  *(v86 + 48) = 0x80000001CA9A3F20;
  v87 = MEMORY[0x1E69E6158];
  v88 = v135;
  *(v86 + 64) = MEMORY[0x1E69E6158];
  *(v86 + 72) = v88;
  strcpy((v86 + 80), "WFVariableName");
  *(v86 + 95) = -18;
  v89 = v137;
  *(v86 + 104) = v87;
  *(v86 + 112) = v89;
  v90 = sub_1CA94C438();
  v137 = v91;
  v138 = v90;
  v92 = sub_1CA94C438();
  v136 = v93;
  *&v139 = &v129;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v129 - v149;
  sub_1CA948D98();
  v95 = v80;
  v96 = [v80 bundleURL];
  v135 = &v129;
  MEMORY[0x1EEE9AC00](v96);
  v97 = v148;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 120) = sub_1CA2F9F14(v138, v137, v92, v136, 0, 0, v94, &v129 - v97);
  v99 = v134;
  *(v86 + 144) = v145;
  *(v86 + 152) = v99;
  v100 = sub_1CA94C438();
  v137 = v101;
  v138 = v100;
  v102 = sub_1CA94C438();
  v104 = v103;
  *&v139 = &v129;
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v129 - v149;
  sub_1CA948D98();
  v106 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 160) = sub_1CA2F9F14(v138, v137, v102, v104, 0, 0, v105, &v129 - v97);
  *(v86 + 184) = v145;
  *(v86 + 192) = @"TextAlignment";
  *(v86 + 224) = MEMORY[0x1E69E6158];
  *(v86 + 200) = 0x7468676952;
  *(v86 + 208) = 0xE500000000000000;
  v108 = @"TextAlignment";
  sub_1CA94C1E8();
  v109 = sub_1CA2F864C();
  v110 = v142;
  v142[5] = v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v112 = v143;
  v143[40] = v110;
  v112[43] = v111;
  v112[44] = @"ParameterSummary";
  v113 = @"ParameterSummary";
  v114 = sub_1CA94C438();
  v116 = v115;
  v117 = sub_1CA94C438();
  v119 = v118;
  v145 = &v129;
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v129 - v149;
  sub_1CA948D98();
  v121 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v129 - v148;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v114, v116, v117, v119, 0, 0, v120, v122);
  v125 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v126 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v112[45] = v125;
  v112[48] = v126;
  v112[49] = @"ResidentCompatible";
  v112[53] = MEMORY[0x1E69E6370];
  *(v112 + 400) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v127 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA328928(void *a1)
{
  v1 = a1;
  v2 = LNCodableValueType.wf_displayRepresentation.getter();

  return v2;
}

id LNCodableValueType.wf_displayRepresentation.getter()
{
  v1 = sub_1CA949328();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA949338();
  v7 = [v0 identifier];
  sub_1CA94C3A8();

  sub_1CA949318();
  v8 = sub_1CA3118B4(v5, v6);

  (*(v2 + 8))(v5, v1);
  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 displayRepresentation];

  return v10;
}

__n128 UpdatableParameterState.init(_:subject:variableProvider:parameter:)@<Q0>(unint64_t a1@<X0>, void *a2@<X4>, __n128 *a3@<X8>)
{
  sub_1CA94C1E8();
  sub_1CA94C1A8();

  v6 = a2;
  swift_unknownObjectRetain();
  UpdatableParameterState.init(serializedRepresentation:variableProvider:parameter:)(a2, &v14);
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v13 = v14;
  if (v14.n128_u64[0] == 1)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = sub_1CA94C368();

    v11 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v7 = a1;
    v8 = v11;
  }

  result = v13;
  *a3 = v13;
  a3[1].n128_u64[0] = v7;
  a3[1].n128_u64[1] = v8;
  a3[2].n128_u8[0] = v9;
  return result;
}

uint64_t sub_1CA328CB0()
{
  OUTLINED_FUNCTION_33_4();
  sub_1CA94C458();
}

uint64_t sub_1CA328DA0()
{
  OUTLINED_FUNCTION_33_4();
  sub_1CA94C458();
}

uint64_t sub_1CA328E90()
{
  sub_1CA94C458();
}

uint64_t sub_1CA328F68()
{
  sub_1CA94C458();
}

WorkflowKit::PropertyUpdateOperator_optional __swiftcall PropertyUpdateOperator.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t UpdatableParameterState.value.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = swift_unknownObjectRelease();
  *(v1 + 16) = a1;
  return result;
}

void *UpdatableParameterState.subject.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t UpdatableParameterState.containedVariables.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444460, &qword_1CA983508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA97EDF0;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v38 = MEMORY[0x1E69E7CC0];
  v44[0] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectRetain();
  v4 = v1;
  for (i = 0; i != 2; ++i)
  {
    v6 = inited + 8 * i;
    if (*(v6 + 32))
    {
      v7 = *(v6 + 32);
      v8 = swift_unknownObjectRetain();
      MEMORY[0x1CCAA1490](v8);
      if (*((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v38 = v44[0];
    }
  }

  swift_setDeallocating();
  sub_1CA32E348(&qword_1EC444600, &qword_1CA983920);
  result = sub_1CA25B410();
  v10 = result;
  v11 = 0;
  v12 = v38 & 0xC000000000000001;
  v13 = MEMORY[0x1E69E7CC0];
  v39 = result;
  while (1)
  {
    if (v11 == v10)
    {

      return v13;
    }

    if (v12)
    {
      result = MEMORY[0x1CCAA22D0](v11, v38);
    }

    else
    {
      if (v11 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v14 = *(v38 + 32 + 8 * v11);
      result = swift_unknownObjectRetain();
    }

    v15 = __OFADD__(v11++, 1);
    if (v15)
    {
      break;
    }

    v16 = [swift_unknownObjectRetain() containedVariables];
    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    v17 = sub_1CA94C658();
    swift_unknownObjectRelease_n();

    if (v17 >> 62)
    {
      v18 = sub_1CA94D328();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v13 >> 62;
    if (v13 >> 62)
    {
      v37 = v18;
      result = sub_1CA94D328();
      v18 = v37;
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = result + v18;
    if (__OFADD__(result, v18))
    {
      goto LABEL_49;
    }

    v42 = v18;
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v19)
      {
LABEL_25:
        sub_1CA94D328();
      }

      else
      {
        v21 = v13 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
        v22 = *(v21 + 16);
      }

      result = sub_1CA94D488();
      v43 = result;
      v21 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_27;
    }

    if (v19)
    {
      goto LABEL_25;
    }

    v21 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v20 > *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_24;
    }

    v43 = v13;
LABEL_27:
    v23 = *(v21 + 16);
    v24 = (*(v21 + 24) >> 1) - v23;
    v25 = v21 + 8 * v23;
    v41 = v21;
    if (v17 >> 62)
    {
      v28 = sub_1CA94D328();
      if (v28)
      {
        v29 = v28;
        result = sub_1CA94D328();
        if (v24 < result)
        {
          goto LABEL_53;
        }

        if (v29 < 1)
        {
          goto LABEL_54;
        }

        v40 = result;
        v30 = v25 + 32;
        sub_1CA276B44(&qword_1EC447B50, &unk_1EC444470, &unk_1CA983510);
        for (j = 0; j != v29; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444470, &unk_1CA983510);
          v32 = sub_1CA276BDC(v44, j, v17);
          v34 = *v33;
          v32(v44, 0);
          *(v30 + 8 * j) = v34;
        }

        v12 = v38 & 0xC000000000000001;
        v10 = v39;
        v26 = v40;
        goto LABEL_37;
      }

LABEL_41:

      v13 = v43;
      if (v42 > 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_41;
      }

      if (v24 < v26)
      {
        goto LABEL_52;
      }

      v27 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      swift_arrayInitWithCopy();
LABEL_37:

      v13 = v43;
      if (v26 < v42)
      {
        goto LABEL_50;
      }

      if (v26 > 0)
      {
        v35 = *(v41 + 16);
        v15 = __OFADD__(v35, v26);
        v36 = v35 + v26;
        if (v15)
        {
          goto LABEL_51;
        }

        *(v41 + 16) = v36;
      }
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t UpdatableParameterState.serializedRepresentation.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v5 = sub_1CA94C1E8();
  v6 = [v4 serializedRepresentation];
  if (v6)
  {
    v7 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v5;
    swift_getObjectType();
    sub_1CA32EB34(v7, 0x63656A6275534657, 0xE900000000000074, isUniquelyReferenced_nonNull_native, &v26);
    v5 = v26;
  }

  else
  {
    v10 = sub_1CA271BF8();
    if (v11)
    {
      v12 = v10;
      swift_isUniquelyReferenced_nonNull_native();
      v26 = v5;
      v13 = v5[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      sub_1CA94D588();
      v14 = *(v5[6] + 16 * v12 + 8);

      v15 = *(v5[7] + 8 * v12);
      sub_1CA94D5A8();
      swift_unknownObjectRelease();
    }
  }

  v16 = sub_1CA94C988();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v5;
  sub_1CA32EA24(v16, 0x74617265704F4657, 0xEA0000000000726FLL, v17, &v26, sub_1CA66E3A4);
  v18 = v26;
  if (v3 <= 1)
  {
    if (v2 && [v2 serializedRepresentation])
    {
      OUTLINED_FUNCTION_34_5();
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v26 = v18;
      swift_getObjectType();
      sub_1CA32EB34(v2, 0x65756C61564657, 0xE700000000000000, v19, &v26);
    }

    else
    {
      sub_1CA271BF8();
      if (v20)
      {
        OUTLINED_FUNCTION_34_5();
        swift_isUniquelyReferenced_nonNull_native();
        v26 = v18;
        v21 = *(v18 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
        sub_1CA94D588();
        v22 = v26;
        v23 = *(v26[6] + 16 * v2 + 8);

        v24 = *(*(v22 + 56) + 8 * v2);
        sub_1CA94D5A8();
        swift_unknownObjectRelease();
      }
    }
  }

  v9 = sub_1CA94C1A8();

  return v9;
}

id UpdatableParameterState.init(serializedRepresentation:variableProvider:parameter:)@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  type metadata accessor for WFUpdatableParameter();
  v4 = swift_dynamicCastClass();
  if (!v4 || (v5 = v4 + OBJC_IVAR___WFUpdatableParameter_stateDataSource, swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {

LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    result = swift_unknownObjectRelease();
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    return result;
  }

  v7 = Strong;
  v8 = *(v5 + 8);
  v9 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (swift_dynamicCast())
  {

    if (sub_1CA323E28(0x74617265704F4657, 0xEA0000000000726FLL))
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v10 = sub_1CA94C978();
        swift_unknownObjectRelease();
        if (v10 >= 5)
        {
          LOBYTE(v10) = 0;
        }

        goto LABEL_19;
      }

      swift_unknownObjectRelease();
    }

    LOBYTE(v10) = 0;
LABEL_19:
    if (sub_1CA323E28(0x63656A6275534657, 0xE900000000000074))
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v40 = v10;
        v24 = v8;
        v42 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];
        v25 = sub_1CA323E28(0x65756C61564657, 0xE700000000000000);

        if (v25)
        {
          swift_getObjectType();
          v26 = sub_1CA94C3A8();
          v27 = (*(v24 + 40))(v26);

          swift_unknownObjectRelease();
          v8 = v24;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          v27 = 0;
          v8 = v24;
        }

        v28 = v42;
        LOBYTE(v10) = v40;
        goto LABEL_35;
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v27 = 0;
    v28 = 0;
LABEL_35:
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v27;
    *(a2 + 24) = v28;
    *(a2 + 32) = v10;
    return result;
  }

  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();

    goto LABEL_11;
  }

  v13 = v12;
  v39 = v8;
  v14 = v9;
  result = [v13 key];
  if (result)
  {
    v15 = result;
    v41 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

    ObjectType = swift_getObjectType();
    v17 = [v13 key];

    v18 = sub_1CA94C3A8();
    v20 = v19;

    v21 = (*(v39 + 64))(v18, v20, ObjectType);

    if (v21)
    {
      v22 = [v21 valueType];

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v22 = 0;
    }

    v29 = [objc_opt_self() BOOLValueType];
    v30 = v29;
    v37 = v14;
    if (v22)
    {
      sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
      v31 = sub_1CA94CFD8();

      v8 = v39;
      if (v31)
      {
        v32 = 1;
LABEL_32:
        v33 = OBJC_IVAR___WFUpdatableParameter_underlyingParameter;
        [*&v13[OBJC_IVAR___WFUpdatableParameter_underlyingParameter] stateClass];
        swift_getObjCClassMetadata();
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v10 = *&v13[v33];
        OUTLINED_FUNCTION_24_6();
        v27 = [v35 v36];

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v28 = v41;
        LOBYTE(v10) = v32;
        goto LABEL_35;
      }
    }

    else
    {

      v8 = v39;
    }

    v32 = 0;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA329E68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v1 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v2;
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v3 = qword_1EDB9F690;
  v4 = sub_1CA94C368();
  v5 = sub_1CA94C368();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_1CA94C3A8();
  v9 = v8;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  return sub_1CA94C1E8();
}

unint64_t sub_1CA329FCC(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1CA329FDC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA329FCC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA32A008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA2718A8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1CA32A094()
{
  sub_1CA32F4C0();
  sub_1CA32F514();
  sub_1CA29AADC();
  return sub_1CA94D888();
}

uint64_t UpdatableParameterState.process(context:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  v3 = *(v1 + 16);
  *(v2 + 160) = *v1;
  *(v2 + 176) = v3;
  *(v2 + 329) = *(v1 + 32);
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32A108()
{
  OUTLINED_FUNCTION_14();
  if (v0[23])
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = sub_1CA32A210;
    v2 = v0[19];

    return sub_1CA32B7E4(v2);
  }

  else
  {
    sub_1CA32EC44();
    OUTLINED_FUNCTION_127();
    *v4 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_5();

    return v5();
  }
}

uint64_t sub_1CA32A210()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *(v2 + 192);
  v11 = *v1;
  *(v3 + 200) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_5();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1CA32A334()
{
  v1 = *(v0 + 200);
  if (!v1 || (*(v0 + 144) = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444280, &qword_1CA983550), !swift_dynamicCast()))
  {
    sub_1CA32EC44();
    OUTLINED_FUNCTION_127();
    *v28 = 0;
LABEL_13:
    swift_willThrow();
    goto LABEL_14;
  }

  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  *(v0 + 208) = v3;
  *(v0 + 216) = v4;
  if (!v2 || (v5 = *(v0 + 168), ObjectType = swift_getObjectType(), v7 = (*(v5 + 64))(v3, v4, ObjectType, v5), (*(v0 + 224) = v7) == 0))
  {

    sub_1CA32EC44();
    OUTLINED_FUNCTION_127();
    *v29 = 2;
    goto LABEL_13;
  }

  v8 = v7;
  switch(*(v0 + 329))
  {
    case 2:
      swift_getObjectType();
      v38 = *(v5 + 72);
      OUTLINED_FUNCTION_35_2();
      v60 = v39 + *v39;
      v41 = *(v40 + 4);
      v42 = swift_task_alloc();
      *(v0 + 304) = v42;
      *v42 = v0;
      v42[1] = sub_1CA32AF64;
      v43 = *(v0 + 152);
      OUTLINED_FUNCTION_37_3();

      __asm { BRAA            X5, X16 }

      return result;
    case 3:

      v46 = objc_allocWithZone(MEMORY[0x1E69AC8E0]);
      v37 = OUTLINED_FUNCTION_14_9();
      v47 = 0;
      goto LABEL_25;
    case 4:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
      v32 = [v8 valueType];
      v33 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
      v35 = OUTLINED_FUNCTION_38_3(v33, v34);
      v36 = objc_allocWithZone(MEMORY[0x1E69AC8E0]);
      v37 = OUTLINED_FUNCTION_14_9();
      goto LABEL_24;
    default:
      if (!*(v0 + 176))
      {

        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
        v48 = [v8 valueType];
        v49 = objc_opt_self();
        v50 = [v49 BOOLValueType];
        v51 = sub_1CA94CFD8();

        if (v51)
        {
          v52 = [v49 BOOLValueType];
          v53 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
          v35 = OUTLINED_FUNCTION_38_3(v53, v54);
          objc_allocWithZone(MEMORY[0x1E69AC8E0]);
          v37 = 0x79747265706F7270;
LABEL_24:
          v47 = v35;
LABEL_25:
          sub_1CA32E17C(v37, 0xE800000000000000, v47);
        }

        else
        {
          v58 = [objc_allocWithZone(MEMORY[0x1E69AC8F0]) init];
          [v58 setForcesNeedsValue_];
          objc_allocWithZone(MEMORY[0x1E69AC8E0]);
          v59 = v58;
          sub_1CA32E1E0(0x79747265706F7270, 0xE800000000000000, 0, v58);

          v8 = v59;
        }

        OUTLINED_FUNCTION_1_3();
        OUTLINED_FUNCTION_37_3();

        __asm { BRAA            X2, X16 }
      }

      v9 = *(v0 + 152);
      v10 = *(v0 + 176);
      swift_unknownObjectRetain();
      v11 = [v9 parameter];
      type metadata accessor for WFUpdatableParameter();
      v12 = swift_dynamicCastClass();
      if (!v12)
      {

        sub_1CA32EC44();
        OUTLINED_FUNCTION_127();
        *v57 = 3;
        swift_willThrow();
        swift_unknownObjectRelease();

LABEL_14:
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_37_3();

        __asm { BRAA            X1, X16 }
      }

      v13 = *(v0 + 152);
      v14 = *(v12 + OBJC_IVAR___WFUpdatableParameter_underlyingParameter);
      *(v0 + 232) = v14;
      v15 = v14;

      v16 = [v13 variableSource];
      v17 = v15;
      v18 = [v13 isInputParameter];
      v19 = [v13 environment];
      v20 = [v13 contentAttributionTracker];
      v21 = [v13 widgetSizeClass];
      v22 = objc_allocWithZone(WFParameterStateProcessingContext);
      *(v0 + 240) = sub_1CA4710A8(v16, v17, v18, v19, v20, v21);
      swift_getObjectType();
      v23 = swift_task_alloc();
      *(v0 + 248) = v23;
      *v23 = v0;
      v23[1] = sub_1CA32A9B0;
      OUTLINED_FUNCTION_34_5();
      OUTLINED_FUNCTION_37_3();

      return WFParameterState.process(context:)(v24, v25);
  }
}

uint64_t sub_1CA32A9B0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *(v2 + 248);
  v10 = *v1;
  *(v3 + 256) = v5;
  *(v3 + 264) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA32AAB8()
{
  v1 = v0[32];
  if (v1)
  {
    v3 = v0[27];
    v2 = v0[28];
    v4 = v0[26];
    v6 = v0[20];
    v5 = v0[21];
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    *(inited + 72) = swift_getObjectType();
    *(inited + 48) = v1;
    swift_unknownObjectRetain();
    v9 = sub_1CA94C1E8();
    v0[34] = v9;
    v10 = *(v5 + 48);
    OUTLINED_FUNCTION_35_2();
    v25 = (v11 + *v11);
    v13 = *(v12 + 4);
    v14 = swift_task_alloc();
    v0[35] = v14;
    *v14 = v0;
    v14[1] = sub_1CA32ACFC;
    v15 = OUTLINED_FUNCTION_34_5();

    return v25(v15, v9, ObjectType, v5);
  }

  else
  {
    v17 = v0[27];

    v19 = v0[29];
    v18 = v0[30];
    v20 = v0[28];
    v21 = v0[22];
    sub_1CA32EC44();
    v22 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_30_4(v22, v23);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_5();

    return v24();
  }
}

uint64_t sub_1CA32ACFC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 280);
  *v4 = *v1;
  v3[36] = v7;
  v3[37] = v0;

  if (!v0)
  {
    v8 = v3[34];
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA32AE04()
{
  v1 = v0[36];
  v2 = v0[32];
  if (v1)
  {
    v4 = v0[29];
    v3 = v0[30];
    v5 = v0[28];
    v6 = v0[22];
    v7 = objc_allocWithZone(MEMORY[0x1E69AC8E0]);
    v8 = v1;
    v9 = OUTLINED_FUNCTION_14_9();
    sub_1CA32E17C(v9, 0xE800000000000000, v1);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v10 = OUTLINED_FUNCTION_1_3();

    return v11(v10);
  }

  else
  {
    v13 = v0[32];
    swift_unknownObjectRelease();
    v15 = v0[29];
    v14 = v0[30];
    v16 = v0[28];
    v17 = v0[22];
    sub_1CA32EC44();
    v18 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_30_4(v18, v19);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_5();

    return v20();
  }
}

uint64_t sub_1CA32AF64()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;
  v8 = *(v7 + 304);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v5[39] = v0;

  if (!v0)
  {
    v11 = v5[27];
    v5[40] = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1CA32B078()
{
  v19 = v0;
  v1 = *(v0 + 320);
  if (v1 && (v2 = [*(v0 + 320) value], sub_1CA94D258(), swift_unknownObjectRelease(), v3 = MEMORY[0x1E69E6370], (swift_dynamicCast() & 1) != 0))
  {
    v4 = *(v0 + 224);
    v5 = *(v0 + 328);
    v18[3] = v3;
    LOBYTE(v18[0]) = (v5 & 1) == 0;
    v6 = [objc_opt_self() BOOLValueType];
    v7 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v8 = sub_1CA320AB4(v18, v6);
    objc_allocWithZone(MEMORY[0x1E69AC8E0]);
    v9 = v8;
    v10 = OUTLINED_FUNCTION_14_9();
    sub_1CA32E17C(v10, 0xE800000000000000, v8);

    v11 = OUTLINED_FUNCTION_1_3();

    return v12(v11);
  }

  else
  {
    v14 = *(v0 + 224);
    sub_1CA32EC44();
    v15 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_30_4(v15, v16);

    OUTLINED_FUNCTION_5();

    return v17();
  }
}

uint64_t sub_1CA32B234()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[27];
  v2 = v0[28];

  v3 = v0[39];
  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA32B294()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 176);

  swift_unknownObjectRelease();

  v5 = *(v0 + 264);
  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA32B318()
{
  v1 = v0[34];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v6 = v0[22];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v7 = v0[37];
  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA32B3B4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32B3C8()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v4;
  v0[1] = sub_1CA32B490;
  v5 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1CA32B490()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA32B590(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32B5A4()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v4;
  v0[1] = sub_1CA32B66C;
  v5 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1CA32B66C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA32B788()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_5();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1CA32B7E4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1CA32B804, 0, 0);
}

uint64_t sub_1CA32B804()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v4;
  v0[1] = sub_1CA32B490;
  v5 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1CA32B8CC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32B8E0()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v4;
  v0[1] = sub_1CA32B490;
  v5 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1CA32B9A8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32B9BC()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v4;
  v0[1] = sub_1CA32B490;
  v5 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1CA32BA84(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32BA98()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v4;
  v0[1] = sub_1CA32B490;
  v5 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1CA32BB60(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32BB74()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v4;
  v0[1] = sub_1CA32B490;
  v5 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1CA32BC3C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32BC50()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v4;
  v0[1] = sub_1CA32B490;
  v5 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1CA32BD18(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32BD2C()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v4;
  v0[1] = sub_1CA32B490;
  v5 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1CA32BDF4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32BE08()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v4;
  v0[1] = sub_1CA32B490;
  v5 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1CA32BED0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32BEE4()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v4;
  v0[1] = sub_1CA32B490;
  v5 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t UpdatableParameterState.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (!v1)
  {
    sub_1CA94D938();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1CA94D938();
    return MEMORY[0x1CCAA2780](v3);
  }

  v4 = [v1 hash];
  sub_1CA94D938();
  MEMORY[0x1CCAA2780](v4);
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1CA94D938();
  v5 = v2;
  sub_1CA94CFE8();

  return MEMORY[0x1CCAA2780](v3);
}

id static UpdatableParameterState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (!v3)
  {
    if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = v4 == v7;
    }

    if (v12 && v2 != 0)
    {
      return [v2 isEqual_];
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
  v8 = v6;
  v9 = v3;
  v10 = sub_1CA94CFD8();

  result = 0;
  if ((v10 & 1) != 0 && v4 == v7 && v2)
  {
    return [v2 isEqual_];
  }

  return result;
}

uint64_t UpdatableParameterState.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1CA94D918();
  if (v1)
  {
    v4 = [v1 hash];
    sub_1CA94D938();
    MEMORY[0x1CCAA2780](v4);
  }

  else
  {
    sub_1CA94D938();
  }

  sub_1CA94D938();
  if (v2)
  {
    v5 = v2;
    sub_1CA94CFE8();
  }

  MEMORY[0x1CCAA2780](v3);
  return sub_1CA94D968();
}

uint64_t sub_1CA32C1F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA32C284;

  return UpdatableParameterState.process(context:)(a1);
}

uint64_t sub_1CA32C284()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1CA32C384()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1CA94D918();
  UpdatableParameterState.hash(into:)();
  return sub_1CA94D968();
}

uint64_t PropertyUpdateOperator.defaultLocalizedLabel.getter()
{
  *v0;
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = qword_1EDB9F690;
  v2 = sub_1CA94C368();
  v3 = sub_1CA94C368();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = sub_1CA94C3A8();
  return v5;
}

void sub_1CA32C50C(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v5 + 16);
  v9(&v16 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v24 = sub_1CA32F570;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E060;
  v23 = &block_descriptor_2;
  v17 = _Block_copy(&aBlock);

  v9(v8, v16, v4);
  v13 = swift_allocObject();
  v12(v13 + v10, v8, v4);
  v24 = sub_1CA32F58C;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E0FC;
  v23 = &block_descriptor_25;
  v14 = _Block_copy(&aBlock);

  v15 = v17;
  [v18 processWithContext:v19 userInputRequiredHandler:v17 valueHandler:v14];
  _Block_release(v14);
  _Block_release(v15);
}

void sub_1CA32C788(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v5 + 16);
  v9(&v16 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v24 = sub_1CA32F838;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E060;
  v23 = &block_descriptor_34;
  v17 = _Block_copy(&aBlock);

  v9(v8, v16, v4);
  v13 = swift_allocObject();
  v12(v13 + v10, v8, v4);
  v24 = sub_1CA32F8B0;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E0FC;
  v23 = &block_descriptor_41;
  v14 = _Block_copy(&aBlock);

  v15 = v17;
  [v18 processWithContext:v19 userInputRequiredHandler:v17 valueHandler:v14];
  _Block_release(v14);
  _Block_release(v15);
}

void sub_1CA32CA04(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v5 + 16);
  v9(&v16 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v24 = sub_1CA32F838;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E060;
  v23 = &block_descriptor_116;
  v17 = _Block_copy(&aBlock);

  v9(v8, v16, v4);
  v13 = swift_allocObject();
  v12(v13 + v10, v8, v4);
  v24 = sub_1CA32F8B0;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E0FC;
  v23 = &block_descriptor_123;
  v14 = _Block_copy(&aBlock);

  v15 = v17;
  [v18 processWithContext:v19 userInputRequiredHandler:v17 valueHandler:v14];
  _Block_release(v14);
  _Block_release(v15);
}

void sub_1CA32CC80(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v5 + 16);
  v9(&v16 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v24 = sub_1CA32F838;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E060;
  v23 = &block_descriptor_50;
  v17 = _Block_copy(&aBlock);

  v9(v8, v16, v4);
  v13 = swift_allocObject();
  v12(v13 + v10, v8, v4);
  v24 = sub_1CA32F8B0;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E0FC;
  v23 = &block_descriptor_57;
  v14 = _Block_copy(&aBlock);

  v15 = v17;
  [v18 processWithContext:v19 userInputRequiredHandler:v17 valueHandler:v14];
  _Block_release(v14);
  _Block_release(v15);
}

void sub_1CA32CEFC(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v5 + 16);
  v9(&v16 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v24 = sub_1CA32F838;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E060;
  v23 = &block_descriptor_66;
  v17 = _Block_copy(&aBlock);

  v9(v8, v16, v4);
  v13 = swift_allocObject();
  v12(v13 + v10, v8, v4);
  v24 = sub_1CA32F8B0;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E0FC;
  v23 = &block_descriptor_73;
  v14 = _Block_copy(&aBlock);

  v15 = v17;
  [v18 processWithContext:v19 userInputRequiredHandler:v17 valueHandler:v14];
  _Block_release(v14);
  _Block_release(v15);
}

void sub_1CA32D178(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v5 + 16);
  v9(&v16 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v24 = sub_1CA32F838;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E060;
  v23 = &block_descriptor_180;
  v17 = _Block_copy(&aBlock);

  v9(v8, v16, v4);
  v13 = swift_allocObject();
  v12(v13 + v10, v8, v4);
  v24 = sub_1CA32F8B0;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E0FC;
  v23 = &block_descriptor_187;
  v14 = _Block_copy(&aBlock);

  v15 = v17;
  [v18 processWithContext:v19 userInputRequiredHandler:v17 valueHandler:v14];
  _Block_release(v14);
  _Block_release(v15);
}

void sub_1CA32D3F4(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v5 + 16);
  v9(&v16 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v24 = sub_1CA32F838;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E060;
  v23 = &block_descriptor_132;
  v17 = _Block_copy(&aBlock);

  v9(v8, v16, v4);
  v13 = swift_allocObject();
  v12(v13 + v10, v8, v4);
  v24 = sub_1CA32F8B0;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E0FC;
  v23 = &block_descriptor_139;
  v14 = _Block_copy(&aBlock);

  v15 = v17;
  [v18 processWithContext:v19 userInputRequiredHandler:v17 valueHandler:v14];
  _Block_release(v14);
  _Block_release(v15);
}

void sub_1CA32D670(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v5 + 16);
  v9(&v16 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v24 = sub_1CA32F838;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E060;
  v23 = &block_descriptor_148;
  v17 = _Block_copy(&aBlock);

  v9(v8, v16, v4);
  v13 = swift_allocObject();
  v12(v13 + v10, v8, v4);
  v24 = sub_1CA32F8B0;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E0FC;
  v23 = &block_descriptor_155;
  v14 = _Block_copy(&aBlock);

  v15 = v17;
  [v18 processWithContext:v19 userInputRequiredHandler:v17 valueHandler:v14];
  _Block_release(v14);
  _Block_release(v15);
}

void sub_1CA32D8EC(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v5 + 16);
  v9(&v16 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v24 = sub_1CA32F838;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E060;
  v23 = &block_descriptor_164;
  v17 = _Block_copy(&aBlock);

  v9(v8, v16, v4);
  v13 = swift_allocObject();
  v12(v13 + v10, v8, v4);
  v24 = sub_1CA32F8B0;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E0FC;
  v23 = &block_descriptor_171;
  v14 = _Block_copy(&aBlock);

  v15 = v17;
  [v18 processWithContext:v19 userInputRequiredHandler:v17 valueHandler:v14];
  _Block_release(v14);
  _Block_release(v15);
}

void sub_1CA32DB68(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v5 + 16);
  v9(&v16 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v24 = sub_1CA32F838;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E060;
  v23 = &block_descriptor_84;
  v17 = _Block_copy(&aBlock);

  v9(v8, v16, v4);
  v13 = swift_allocObject();
  v12(v13 + v10, v8, v4);
  v24 = sub_1CA32F8B0;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E0FC;
  v23 = &block_descriptor_91;
  v14 = _Block_copy(&aBlock);

  v15 = v17;
  [v18 processWithContext:v19 userInputRequiredHandler:v17 valueHandler:v14];
  _Block_release(v14);
  _Block_release(v15);
}

void sub_1CA32DDE4(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v5 + 16);
  v9(&v16 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + v10, v8, v4);
  v24 = sub_1CA32F838;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E060;
  v23 = &block_descriptor_100;
  v17 = _Block_copy(&aBlock);

  v9(v8, v16, v4);
  v13 = swift_allocObject();
  v12(v13 + v10, v8, v4);
  v24 = sub_1CA32F8B0;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1CA32E0FC;
  v23 = &block_descriptor_107;
  v14 = _Block_copy(&aBlock);

  v15 = v17;
  [v18 processWithContext:v19 userInputRequiredHandler:v17 valueHandler:v14];
  _Block_release(v14);
  _Block_release(v15);
}

uint64_t sub_1CA32E060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1CA94C3A8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  swift_unknownObjectRetain();
  v5(v6, v8, a3);

  swift_unknownObjectRelease();
}

uint64_t sub_1CA32E0FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1CA32E17C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C368();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

id sub_1CA32E1E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1CA94C368();

  v8 = [v4 initWithIdentifier:v7 value:a3 configuration:a4];

  return v8;
}

uint64_t sub_1CA32E278()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080) - 8) + 80);
  OUTLINED_FUNCTION_40_2();
  v1 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1CA32E2F8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1CA32E348(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v4 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDC0](v4, v5, v6);
}

uint64_t sub_1CA32E390()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1CA32E3CC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1CA32E424(uint64_t (*a1)(void))
{
  v1 = *(*(a1(0) - 8) + 80);
  OUTLINED_FUNCTION_40_2();
  v2 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1CA32EA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = OUTLINED_FUNCTION_29_6(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_7_0(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
  if ((OUTLINED_FUNCTION_39_0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *a5;
  v19 = sub_1CA271BF8();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *a5;
  if (v17)
  {
    v22 = *(v21 + 56);
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = v6;
    OUTLINED_FUNCTION_36();

    return swift_unknownObjectRelease();
  }

  else
  {
    a6(v16, v7, a3, v6, v21);
    OUTLINED_FUNCTION_36();

    return sub_1CA94C218();
  }
}

uint64_t sub_1CA32EB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = OUTLINED_FUNCTION_29_6(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_7_0(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
  if ((OUTLINED_FUNCTION_39_0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *a5;
  v17 = sub_1CA271BF8();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *a5;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = v5;
    OUTLINED_FUNCTION_36();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA32F5C0(v14, v6, a3, v5, v19);
    OUTLINED_FUNCTION_36();

    return sub_1CA94C218();
  }
}

unint64_t sub_1CA32EC44()
{
  result = qword_1EC4444A0[0];
  if (!qword_1EC4444A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4444A0);
  }

  return result;
}

unint64_t sub_1CA32EC9C()
{
  result = qword_1EC4444B8;
  if (!qword_1EC4444B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4444B8);
  }

  return result;
}

unint64_t sub_1CA32ECF0(uint64_t a1)
{
  result = sub_1CA32ED18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA32ED18()
{
  result = qword_1EC4444C0;
  if (!qword_1EC4444C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4444C0);
  }

  return result;
}

unint64_t sub_1CA32ED70()
{
  result = qword_1EC4444C8;
  if (!qword_1EC4444C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4444C8);
  }

  return result;
}

unint64_t sub_1CA32EDC4(uint64_t a1)
{
  result = sub_1CA32EDEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA32EDEC()
{
  result = qword_1EC4444D8;
  if (!qword_1EC4444D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4444D8);
  }

  return result;
}

uint64_t dispatch thunk of UpdatableParameterStateDataSource.getValueForParameterData(_:ofProcessedParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  OUTLINED_FUNCTION_35_2();
  v15 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1CA32EFD0;

  return v15(a1, a2, a3, a4);
}

uint64_t sub_1CA32EFD0()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t dispatch thunk of UpdatableParameterStateDataSource.getEntityPropertyValue(for:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 72);
  OUTLINED_FUNCTION_35_2();
  v17 = (v12 + *v12);
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1CA32F844;

  return v17(a1, a2, a3, a4, a5);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CA32F244(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1CA32F298(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitValueTransformError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1CA32F388(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA32F46C()
{
  result = qword_1EC444540;
  if (!qword_1EC444540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444540);
  }

  return result;
}

unint64_t sub_1CA32F4C0()
{
  result = qword_1EC444548;
  if (!qword_1EC444548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444548);
  }

  return result;
}

unint64_t sub_1CA32F514()
{
  result = qword_1EC444550;
  if (!qword_1EC444550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444550);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1CA32F5C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1CA32F628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8) - 8) + 80);

  return sub_1CA3D4948(a1, a2, a3);
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA32F750(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8) - 8) + 80);

  return sub_1CA3D49DC(a1, a2);
}

uint64_t WFFeatureFlagResource.domain.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_domain);
  v2 = *(v0 + OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_domain + 8);
  sub_1CA94C218();
  return v1;
}

uint64_t WFFeatureFlagResource.feature.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_feature);
  v2 = *(v0 + OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_feature + 8);
  sub_1CA94C218();
  return v1;
}

void WFFeatureFlagResource.init(domain:feature:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = &v5[OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_domain];
  *v6 = a1;
  v6[1] = a2;
  v7 = &v5[OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_feature];
  *v7 = a3;
  v7[1] = a4;
  v5[OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_value] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443DB8, &unk_1CA983950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v20 = sub_1CA94C3A8();
  v21 = v9;
  sub_1CA94C218();
  sub_1CA94C218();
  v10 = MEMORY[0x1E69E6158];
  sub_1CA94D3A8();
  v11 = type metadata accessor for WFFeatureFlagResource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = NSStringFromClass(ObjCClassFromMetadata);
  v14 = sub_1CA94C3A8();
  v16 = v15;

  *(inited + 96) = v10;
  *(inited + 72) = v14;
  *(inited + 80) = v16;
  sub_1CA94C1E8();
  v17 = sub_1CA94C1A8();

  v19.receiver = v5;
  v19.super_class = v11;
  v18 = objc_msgSendSuper2(&v19, sel_initWithDefinition_, v17);

  if (v18)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1CA32FBE4()
{
  v1 = *&v0[OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_domain];
  v2 = *&v0[OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_domain + 8];
  v3 = *&v0[OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_feature];
  v4 = *&v0[OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_feature + 8];
  v5 = v0[OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_value];
  if (sub_1CA94B048())
  {

    [v0 updateAvailability:1 withError:0];
  }

  else
  {
    type metadata accessor for WFResourceError(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    v7 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1CA94C3A8();
    *(inited + 40) = v8;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD00000000000003ALL;
    *(inited + 56) = 0x80000001CA9A4180;
    sub_1CA94C1E8();
    sub_1CA32FD64();
    sub_1CA948AB8();
    v9 = sub_1CA948AC8();

    [v0 updateAvailability:0 withError:v9];
  }
}

unint64_t sub_1CA32FD64()
{
  result = qword_1EC443350;
  if (!qword_1EC443350)
  {
    type metadata accessor for WFResourceError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443350);
  }

  return result;
}

id WFFeatureFlagResource.__allocating_init(definition:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1CA94C1A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithDefinition_];

  return v3;
}

id WFFeatureFlagResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFFeatureFlagResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFFeatureFlagResource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA33004C()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  strcpy((inited + 120), "TVRemote_Power");
  *(inited + 135) = -18;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x80000001CA9A42A0;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA330280()
{
  v38 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"AppDefinition";
  v22 = @"AppDefinition";
  v23 = MEMORY[0x1E69E6158];
  v24 = sub_1CA94C1E8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = @"DisabledOnPlatforms";
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F4448;
  *(inited + 184) = v26;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x65676E61724FLL;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 224) = v23;
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x656E616C70726961;
  *(inited + 248) = 0xE800000000000000;
  *(inited + 264) = v23;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v27 = @"DisabledOnPlatforms";
  v28 = @"IconColor";
  v29 = @"IconSymbol";
  v30 = @"InputPassthrough";
  v31 = sub_1CA94C368();
  *(inited + 344) = v23;
  *(inited + 312) = v31;
  *(inited + 320) = 0xD000000000000057;
  *(inited + 328) = 0x80000001CA9A4300;
  *(inited + 352) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v32 = swift_initStackObject();
  v37 = xmmword_1CA981310;
  *(v32 + 16) = xmmword_1CA981310;
  *(v32 + 32) = 0x6574617473;
  *(v32 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v33 = swift_initStackObject();
  *(v33 + 16) = v37;
  *(v33 + 64) = v23;
  *(v33 + 32) = @"Key";
  *(v33 + 40) = 0x65756C61566E4FLL;
  *(v33 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v34 = @"Key";
  sub_1CA94C1E8();
  *(v32 + 48) = sub_1CA2F864C();
  v35 = sub_1CA94C1E8();
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 360) = v35;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA330858()
{
  v138 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9A4390;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v146 = v12;
  v147 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v130 - v147;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v145 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v143 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v144 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v130 - v144;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v142 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v141 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v140 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v137 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v139 = &v130;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v130 - v147;
  sub_1CA948D98();
  v33 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v130 - v144;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v137, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v142;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v140;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 224) = MEMORY[0x1E69E6370];
  v39 = v38;
  *(inited + 200) = 1;
  v40 = @"InputPassthrough";
  *(inited + 232) = sub_1CA94C368();
  *(inited + 240) = 0xD000000000000026;
  *(inited + 248) = 0x80000001CA9A4420;
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"LocallyProcessesData";
  *(inited + 280) = 1;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v45 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v140 = &v130;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v130 - v147;
  sub_1CA948D98();
  v50 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v130 - v144;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  *(inited + 344) = v142;
  *(inited + 352) = @"Output";
  v53 = @"Output";
  v54 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  v55 = v141;
  *(inited + 384) = v141;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v140 = swift_allocObject();
  *(v140 + 1) = xmmword_1CA981360;
  v139 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1CA981380;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD00000000000001ALL;
  *(v56 + 48) = 0x80000001CA99B690;
  *(v56 + 64) = v54;
  *(v56 + 72) = @"DefaultValue";
  v134 = @"Class";
  v57 = @"Parameters";
  v58 = @"DefaultValue";
  *(v56 + 80) = sub_1CA94C1E8();
  *(v56 + 104) = v55;
  *(v56 + 112) = @"Hidden";
  *(v56 + 144) = MEMORY[0x1E69E6370];
  *(v56 + 120) = 1;
  v59 = @"Hidden";
  *(v56 + 152) = sub_1CA94C368();
  *(v56 + 160) = 0xD000000000000013;
  *(v56 + 168) = 0x80000001CA9A4480;
  *(v56 + 184) = v54;
  *(v56 + 192) = @"Key";
  *(v56 + 200) = 0xD000000000000013;
  *(v56 + 208) = 0x80000001CA99B6D0;
  *(v56 + 224) = v54;
  *(v56 + 232) = @"Label";
  v60 = @"Key";
  v61 = @"Label";
  v132 = v60;
  v133 = v61;
  v62 = sub_1CA94C438();
  v136 = v63;
  v64 = sub_1CA94C438();
  v66 = v65;
  v137 = &v130;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v130 - v147;
  sub_1CA948D98();
  v68 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v130 - v144;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v71 = sub_1CA2F9F14(v62, v136, v64, v66, 0, 0, v67, v69);
  *(v56 + 264) = v142;
  *(v56 + 240) = v71;
  _s3__C3KeyVMa_0(0);
  v137 = v72;
  v136 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v140[4] = sub_1CA2F864C();
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1CA981300;
  *(v73 + 32) = v134;
  *(v73 + 40) = 0xD000000000000020;
  *(v73 + 48) = 0x80000001CA9A44A0;
  v74 = MEMORY[0x1E69E6158];
  *(v73 + 64) = MEMORY[0x1E69E6158];
  *(v73 + 72) = @"IntentSlotName";
  *(v73 + 80) = 0x6E6F697461727564;
  *(v73 + 88) = 0xE800000000000000;
  v75 = v132;
  *(v73 + 104) = v74;
  *(v73 + 112) = v75;
  *(v73 + 120) = 0x6974617275444657;
  *(v73 + 128) = 0xEA00000000006E6FLL;
  v76 = v133;
  *(v73 + 144) = v74;
  *(v73 + 152) = v76;
  v77 = @"IntentSlotName";
  v78 = sub_1CA94C438();
  v132 = v79;
  v133 = v78;
  v80 = sub_1CA94C438();
  v131 = v81;
  v134 = &v130;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v130 - v147;
  sub_1CA948D98();
  v83 = v145;
  v84 = [v145 bundleURL];
  v130 = &v130;
  v135 = inited;
  MEMORY[0x1EEE9AC00](v84);
  v85 = v144;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 160) = sub_1CA2F9F14(v133, v132, v80, v131, 0, 0, v82, &v130 - v85);
  *(v73 + 184) = v142;
  *(v73 + 192) = @"Placeholder";
  v87 = @"Placeholder";
  v88 = sub_1CA94C438();
  v132 = v89;
  v133 = v88;
  v90 = sub_1CA94C438();
  v131 = v91;
  v134 = &v130;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v130 - v147;
  sub_1CA948D98();
  v93 = [v83 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 200) = sub_1CA2F9F14(v133, v132, v90, v131, 0, 0, v92, &v130 - v85);
  v95 = v142;
  *(v73 + 224) = v142;
  *(v73 + 232) = @"PossibleUnits";
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v73 + 240) = &unk_1F49F4538;
  *(v73 + 264) = v96;
  *(v73 + 272) = @"Prompt";
  v97 = @"PossibleUnits";
  v98 = @"Prompt";
  v99 = sub_1CA94C438();
  v133 = v100;
  v101 = sub_1CA94C438();
  v103 = v102;
  v134 = &v130;
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v130 - v147;
  sub_1CA948D98();
  v105 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v130 - v144;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 280) = sub_1CA2F9F14(v99, v133, v101, v103, 0, 0, v104, v106);
  *(v73 + 304) = v95;
  *(v73 + 312) = @"TextAlignment";
  *(v73 + 344) = MEMORY[0x1E69E6158];
  *(v73 + 320) = 0x7468676952;
  *(v73 + 328) = 0xE500000000000000;
  v108 = @"TextAlignment";
  sub_1CA94C1E8();
  v109 = sub_1CA2F864C();
  v110 = v140;
  v140[5] = v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v112 = v135;
  *(v135 + 400) = v110;
  v112[53] = v111;
  v112[54] = @"ParameterSummary";
  v113 = @"ParameterSummary";
  v114 = sub_1CA94C438();
  v116 = v115;
  v117 = sub_1CA94C438();
  v119 = v118;
  v142 = &v130;
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v130 - v147;
  sub_1CA948D98();
  v121 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v130 - v144;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v114, v116, v117, v119, 0, 0, v120, v122);
  v125 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v126 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v112[55] = v125;
  v112[58] = v126;
  v112[59] = @"SessionConfiguration";
  v127 = @"SessionConfiguration";
  v128 = sub_1CA94C1E8();
  v112[63] = v141;
  v112[60] = v128;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA331900()
{
  v99 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9A45A0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v104 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = v12;
  v13 = v93 - v104;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v103 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v101 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v102 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v93 - v102;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v100 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v98 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  *&v96 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  *&v97 = v93;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v93 - v104;
  sub_1CA948D98();
  v33 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v93 - v102;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v96, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v100;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v98;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v96 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x7475706E494657;
  *(v38 + 104) = 0xE700000000000000;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 184) = 0xE500000000000000;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v94;
  *(v38 + 192) = &unk_1F49F4628;
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v46 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v98 = v93;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v93 - v104;
  sub_1CA948D98();
  v51 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v93 - v102;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 264) = v100;
  *(inited + 272) = @"Parameters";
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v95 = swift_allocObject();
  v97 = xmmword_1CA9813B0;
  *(v95 + 16) = xmmword_1CA9813B0;
  v93[1] = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v54 = swift_initStackObject();
  *(v54 + 16) = v96;
  *(v54 + 32) = @"Class";
  *(v54 + 40) = 0xD000000000000015;
  *(v54 + 48) = 0x80000001CA99B1E0;
  v55 = MEMORY[0x1E69E6158];
  *(v54 + 64) = MEMORY[0x1E69E6158];
  *(v54 + 72) = @"FilePickerSupportedTypes";
  *(v54 + 80) = &unk_1F49F4658;
  *(v54 + 104) = v94;
  *(v54 + 112) = @"Key";
  *(v54 + 120) = 0x7475706E494657;
  *(v54 + 128) = 0xE700000000000000;
  *(v54 + 144) = v55;
  *(v54 + 152) = @"Label";
  v56 = @"Parameters";
  v57 = @"Class";
  v58 = @"FilePickerSupportedTypes";
  v59 = @"Key";
  v60 = @"Label";
  v61 = sub_1CA94C438();
  v94 = v62;
  v63 = sub_1CA94C438();
  v65 = v64;
  *&v96 = v93;
  MEMORY[0x1EEE9AC00](v63);
  v66 = v93 - v104;
  sub_1CA948D98();
  v67 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = v93 - v102;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v61, v94, v63, v65, 0, 0, v66, v68);
  *(v54 + 184) = v100;
  *(v54 + 160) = v70;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v71 = sub_1CA2F864C();
  v72 = v95;
  *(v95 + 32) = v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v72;
  *(inited + 304) = v73;
  *(inited + 312) = @"ParameterSummary";
  v74 = @"ParameterSummary";
  v75 = sub_1CA94C438();
  v77 = v76;
  v78 = sub_1CA94C438();
  v80 = v79;
  v100 = v93;
  MEMORY[0x1EEE9AC00](v78);
  v81 = v93 - v104;
  sub_1CA948D98();
  v82 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = v93 - v102;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v75, v77, v78, v80, 0, 0, v81, v83);
  v86 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v87 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v86;
  *(inited + 344) = v87;
  *(inited + 352) = @"RequiredResources";
  v88 = swift_allocObject();
  *(v88 + 16) = v97;
  v106 = 2;
  v107 = 0;
  v89 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v90 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v106);
  *(v88 + 32) = v91;
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 360) = v88;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA332510()
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = OUTLINED_FUNCTION_40();
  type metadata accessor for Key(v2);
  OUTLINED_FUNCTION_4_16();
  sub_1CA334FE4(v3, v4);
  OUTLINED_FUNCTION_20_0();
  v5 = sub_1CA94C1A8();

  v6 = [v0 initWithDictionary_];

  return v6;
}

void *sub_1CA3325B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata);
  v2 = v1;
  return v1;
}

uint64_t sub_1CA3325E8()
{
  if (*(*(v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier) + 16) != 1)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier);
  v2 = sub_1CA94C218();
  v3 = sub_1CA2ECF24(v2);

  if (!v3)
  {
    return 0;
  }

  return v3;
}

void sub_1CA332664(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata) properties];
  sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
  v2 = sub_1CA94C658();

  v3 = sub_1CA25B410(v2);
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCAA22D0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v9 = sub_1CA52A3C0(v6);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v5 + 16);
        sub_1CA2E4EE0();
        v5 = v17;
      }

      v13 = *(v5 + 16);
      v14 = v13 + 1;
      if (v13 >= *(v5 + 24) >> 1)
      {
        sub_1CA2E4EE0();
        v14 = v13 + 1;
        v5 = v18;
      }

      *(v5 + 16) = v14;
      v15 = (v5 + 24 * v13);
      v15[4] = v11;
      v15[5] = v12;
      v15[6] = v7;
      v4 = v8;
    }

    else
    {

      ++v4;
    }
  }

  sub_1CA5F0754(v5);
}

uint64_t sub_1CA33283C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    sub_1CA94C218();
  }

  sub_1CA94C218();
  return v5;
}

void sub_1CA3328A4()
{
  v0 = sub_1CA332644();
  v1 = v0;
  v2 = v0 + 64;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1CA94C218();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v1 + 56) + ((v7 << 9) | (8 * v10)));
    v12 = sub_1CA52A3C0(v11);
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = v12;
    v15 = v13;
    v16 = [v11 title];
    if (v16)
    {
      v17 = v16;
      v25 = [v16 wf_localizedString];

      v18 = sub_1CA94C3A8();
      v26 = v19;
      v27 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = *(v8 + 16);
        sub_1CA2E4FA0();
        v8 = v23;
      }

      v20 = *(v8 + 16);
      if (v20 >= *(v8 + 24) >> 1)
      {
        sub_1CA2E4FA0();
        v8 = v24;
      }

      *(v8 + 16) = v20 + 1;
      v21 = (v8 + 32 * v20);
      v21[4] = v14;
      v21[5] = v15;
      v21[6] = v27;
      v21[7] = v26;
    }

    else
    {

LABEL_12:
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  sub_1CA5F077C(v8);
}

void WFTargetedEntityUpdaterAction.init(identifier:actionMetadata:entityMetadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_11_10();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  *(v22 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction____lazy_storage___propertyByIdentifier) = 0;
  *(v22 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction____lazy_storage____localizedNameForParameterKey) = 0;
  *(v22 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata) = v32;
  v33 = v32;
  v34 = WFEntityUpdatingAction.init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(v31, v29, v27, v25, v24, v23, v21, a21);
  v35 = v34;

  if (v34)
  {
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA332FE4()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v55 = MEMORY[0x1E69E7CC0];
  v2 = [v0 metadata];
  v3 = [v2 wf_parameterDefinitions];

  v46 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v4 = sub_1CA94C658();

  v5 = sub_1CA25B410(v4);
  if (v5)
  {
    v6 = v5;
    if (v5 >= 1)
    {
      v7 = 0;
      v8 = v4 & 0xC000000000000001;
      v47 = OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata;
      v41 = xmmword_1CA97EDF0;
      v42 = v5;
      v43 = v4;
      v44 = v1;
      v48 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v8)
        {
          v9 = MEMORY[0x1CCAA22D0](v7, v4);
        }

        else
        {
          v9 = *(v4 + 8 * v7 + 32);
        }

        v10 = v9;
        if ([v9 objectForKey_])
        {
          sub_1CA94D258();
          swift_unknownObjectRelease();
        }

        else
        {
          v51 = 0u;
          v52 = 0u;
        }

        v53 = v51;
        v54 = v52;
        if (*(&v52 + 1))
        {
          if (swift_dynamicCast())
          {
            v11 = v49 == 0x797469746E65 && v50 == 0xE600000000000000;
            if (!v11 && (sub_1CA94D7F8() & 1) == 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1CA9813C0;
              *(inited + 32) = @"Key";
              *(inited + 40) = v49;
              *(inited + 48) = v50;
              v26 = MEMORY[0x1E69E6158];
              *(inited + 64) = MEMORY[0x1E69E6158];
              *(inited + 72) = @"Class";
              *(inited + 80) = 0xD000000000000014;
              *(inited + 88) = 0x80000001CA9A4680;
              *(inited + 104) = v26;
              *(inited + 112) = @"ParameterValueParameterDefinition";
              v27 = swift_initStackObject();
              *(v27 + 16) = v41;
              *(v27 + 32) = @"Key";
              *(v27 + 40) = 0x65756C6176;
              *(v27 + 48) = 0xE500000000000000;
              *(v27 + 64) = v26;
              *(v27 + 72) = @"Label";
              v28 = @"Key";
              v29 = @"Class";
              v30 = @"ParameterValueParameterDefinition";
              if ([v10 objectForKey_])
              {
                sub_1CA94D258();
                swift_unknownObjectRelease();
              }

              else
              {
                v51 = 0u;
                v52 = 0u;
              }

              v53 = v51;
              v54 = v52;
              if (*(&v52 + 1))
              {
                if (swift_dynamicCast())
                {
                  v31 = v50;
                  *(v27 + 104) = v26;
                  if (v50)
                  {
                    *(v27 + 80) = v49;
LABEL_36:
                    *(v27 + 88) = v31;
                    _s3__C3KeyVMa_0(0);
                    OUTLINED_FUNCTION_3_13();
                    sub_1CA334FE4(&qword_1EDB9F780, v38);
                    sub_1CA94C1E8();
                    v39 = sub_1CA94C1A8();

                    v40 = [v10 definitionByAddingEntriesInDictionary_];

                    *(inited + 144) = v46;
                    *(inited + 120) = v40;
                    sub_1CA94C1E8();
                    sub_1CA2F864C();
                    MEMORY[0x1CCAA1490]();
                    OUTLINED_FUNCTION_10_7();
                    if (v24)
                    {
                      OUTLINED_FUNCTION_18_11();
                    }

                    OUTLINED_FUNCTION_20_0();
                    sub_1CA94C6E8();

                    v6 = v42;
                    v4 = v43;
                    v8 = v48;
                    v1 = v44;
                    goto LABEL_22;
                  }

                  v45 = (v27 + 80);
LABEL_33:
                  sub_1CA94C438();
                  if (qword_1EDB9F5F0 != -1)
                  {
                    OUTLINED_FUNCTION_0_17();
                    swift_once();
                  }

                  v32 = qword_1EDB9F690;
                  v33 = sub_1CA94C368();
                  v34 = sub_1CA94C368();

                  v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

                  v36 = sub_1CA94C3A8();
                  v31 = v37;

                  *v45 = v36;
                  goto LABEL_36;
                }
              }

              else
              {
                sub_1CA2C0A74(&v53);
              }

              v45 = (v27 + 80);
              *(v27 + 104) = v26;
              goto LABEL_33;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
            v12 = swift_initStackObject();
            *(v12 + 16) = xmmword_1CA981310;
            *(v12 + 32) = @"Label";
            v13 = *&v1[v47];
            v14 = @"Label";
            v15 = [v13 displayRepresentation];
            v16 = [v15 name];

            v17 = [v16 wf_localizedString];
            v18 = sub_1CA94C3A8();
            v20 = v19;

            *(v12 + 64) = MEMORY[0x1E69E6158];
            *(v12 + 40) = v18;
            *(v12 + 48) = v20;
            _s3__C3KeyVMa_0(0);
            OUTLINED_FUNCTION_3_13();
            sub_1CA334FE4(&qword_1EDB9F780, v21);
            sub_1CA94C1E8();
            v22 = sub_1CA94C1A8();

            v23 = [v10 definitionByAddingEntriesInDictionary_];

            MEMORY[0x1CCAA1490]();
            OUTLINED_FUNCTION_10_7();
            if (v24)
            {
              OUTLINED_FUNCTION_18_11();
            }

            OUTLINED_FUNCTION_20_0();
            sub_1CA94C6E8();

            v8 = v48;
          }

          else
          {
          }
        }

        else
        {

          sub_1CA2C0A74(&v53);
        }

LABEL_22:
        if (v6 == ++v7)
        {

          goto LABEL_41;
        }
      }
    }

    __break(1u);
  }

  else
  {

LABEL_41:
    OUTLINED_FUNCTION_36();
  }
}

void sub_1CA3336E0()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1CA3325E8();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 title];
    if (v6)
    {
      v7 = v6;
      v8 = [v3 locale];
      v9 = sub_1CA948E58();
      v10 = OUTLINED_FUNCTION_1_0(v9);
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](v10);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_17_3();

      sub_1CA948D48();
      v13 = OUTLINED_FUNCTION_13_9();
      v14(v13, v9);
      v15 = sub_1CA94C368();

      v16 = [v7 localizedStringForLocaleIdentifier_];

      sub_1CA94C3A8();
      goto LABEL_8;
    }
  }

  v17 = sub_1CA94C438();
  v49 = v18;
  v50 = v17;
  v19 = sub_1CA94C438();
  v46 = v20;
  v47 = &v45;
  v48 = sub_1CA948E58();
  v21 = OUTLINED_FUNCTION_1_0(v48);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v27 = [qword_1EDB9F690 bundleURL];
  v28 = sub_1CA948BA8();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  OUTLINED_FUNCTION_6_0();
  v32 = v31 - v30;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v50, v49, v19, v46, 0, 0, &v45 - v26, v32);
  v35 = [v3 localize_];

  sub_1CA94C3A8();
  v36 = [*(v1 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata) displayRepresentation];
  v37 = [v36 name];

  v38 = [v3 locale];
  MEMORY[0x1EEE9AC00](v38);
  sub_1CA948DA8();

  sub_1CA948D48();
  (*(v23 + 8))(&v45 - v26, v48);
  OUTLINED_FUNCTION_20_0();
  v39 = sub_1CA94C368();

  v40 = [v37 localizedStringForLocaleIdentifier_];

  v41 = sub_1CA94C3A8();
  v43 = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1CA981310;
  *(v44 + 56) = MEMORY[0x1E69E6158];
  *(v44 + 64) = sub_1CA282DB4();
  *(v44 + 32) = v41;
  *(v44 + 40) = v43;
  sub_1CA94C378();

LABEL_8:
  OUTLINED_FUNCTION_36();
}

void sub_1CA333BF0()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = sub_1CA3325E8();
  if (!v3)
  {
    v17 = [*(v0 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata) displayRepresentation];
    v18 = [v17 name];

    v19 = [v2 locale];
    OUTLINED_FUNCTION_40();
    v20 = sub_1CA948E58();
    v75 = v2;
    v21 = OUTLINED_FUNCTION_1_0(v20);
    v23 = v22;
    v25 = *(v24 + 64);
    MEMORY[0x1EEE9AC00](v21);
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_1CA948DA8();

    sub_1CA948D48();
    v27 = *(v23 + 8);
    v77 = v23 + 8;
    v78 = v20;
    v76 = v27;
    v27(&v71 - v26, v20);
    v28 = sub_1CA94C368();

    v29 = [v18 localizedStringForLocaleIdentifier_];

    v30 = sub_1CA94C3A8();
    v73 = v31;
    v74 = v30;

    v32 = sub_1CA94C438();
    v72 = v33;
    v34 = sub_1CA94C438();
    v36 = v35;
    MEMORY[0x1EEE9AC00](v34);
    v37 = &v71 - v26;
    sub_1CA948D98();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v38 = [qword_1EDB9F690 bundleURL];
    v39 = sub_1CA948BA8();
    v40 = *(*(v39 - 8) + 64);
    MEMORY[0x1EEE9AC00](v39 - 8);
    OUTLINED_FUNCTION_6_0();
    v43 = v42 - v41;
    sub_1CA948B68();

    v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
    v45 = sub_1CA2F9F14(v32, v72, v34, v36, 0, 0, v37, v43);
    v46 = v75;
    v47 = [v75 localize_];

    sub_1CA94C3A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1CA981310;
    *(v48 + 56) = MEMORY[0x1E69E6158];
    *(v48 + 64) = sub_1CA282DB4();
    v49 = v73;
    *(v48 + 32) = v74;
    *(v48 + 40) = v49;
    v50 = sub_1CA94C3C8();
    v52 = v51;

    v81 = v50;
    v82 = v52;
    v53 = sub_1CA33281C();
    v54 = sub_1CA3343AC(v53, sub_1CA2BC130);

    v55 = *(v54 + 16);
    if (!v55)
    {
LABEL_18:

      goto LABEL_19;
    }

    v74 = v54;
    v56 = (v54 + 40);
    while (1)
    {
      v58 = *(v56 - 1);
      v57 = *v56;
      sub_1CA94C218();
      v59 = sub_1CA332644();
      if (!*(v59 + 16))
      {
        break;
      }

      v60 = sub_1CA271BF8();
      v62 = v61;

      if ((v62 & 1) == 0)
      {
        goto LABEL_14;
      }

      v63 = *(*(v59 + 56) + 8 * v60);

      v64 = [v63 title];

      if (v64)
      {
        v65 = [v46 locale];
        MEMORY[0x1EEE9AC00](v65);
        sub_1CA948DA8();

        sub_1CA948D48();
        v76(&v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v78);
        v66 = sub_1CA94C368();

        v67 = [v64 localizedStringForLocaleIdentifier_];

        v68 = sub_1CA94C3A8();
        v70 = v69;

        v79 = 0x20A280E2200ALL;
        v80 = 0xA600000000000000;
        MEMORY[0x1CCAA1300](v68, v70);

        MEMORY[0x1CCAA1300](v79, v80);
LABEL_14:
      }

      v56 += 2;
      if (!--v55)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_14;
  }

  v4 = v3;
  v5 = [v3 descriptionMetadata];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 descriptionText];

    v8 = [v2 locale];
    v9 = sub_1CA948E58();
    v10 = OUTLINED_FUNCTION_1_0(v9);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_17_3();

    sub_1CA948D48();
    v13 = OUTLINED_FUNCTION_13_9();
    v14(v13, v9);
    v15 = sub_1CA94C368();

    v16 = [v7 localizedStringForLocaleIdentifier_];

    sub_1CA94C3A8();
  }

LABEL_19:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA3342DC(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 16);
  sub_1CA2E764C();
  OUTLINED_FUNCTION_8_6();
  sub_1CA2BAB3C();
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_6_14();
  sub_1CA28A224();
  if (v2 != v3)
  {
    __break(1u);
LABEL_4:
    v1 = MEMORY[0x1E69E7CC0];
  }

  v6[0] = v1;
  sub_1CA334EF0(v6);
  return v6[0];
}

uint64_t sub_1CA3343AC(uint64_t a1, void (*a2)(void))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = *(a1 + 16);
  sub_1CA2E764C();
  OUTLINED_FUNCTION_8_6();
  a2();
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_6_14();
  sub_1CA28A224();
  if (a2 != v3)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x1E69E7CC0];
  }

  v7[0] = v2;
  sub_1CA334EF0(v7);
  return v7[0];
}

uint64_t sub_1CA334484(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata) displayRepresentation];
  v4 = [v3 name];

  v5 = [a1 locale];
  OUTLINED_FUNCTION_40();
  v6 = sub_1CA948E58();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  sub_1CA948DA8();

  sub_1CA948D48();
  (*(v9 + 8))(v14, v6);
  v15 = sub_1CA94C368();

  v16 = [v4 localizedStringForLocaleIdentifier_];

  v17 = sub_1CA94C3A8();
  return v17;
}

id sub_1CA334620(void *a1)
{
  v2 = sub_1CA3325E8();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 descriptionMetadata];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 categoryName];

    if (v6)
    {
      v7 = [v6 title];

      v8 = [a1 locale];
      OUTLINED_FUNCTION_40();
      v9 = sub_1CA948E58();
      v10 = OUTLINED_FUNCTION_1_0(v9);
      v12 = v11;
      v14 = *(v13 + 64);
      MEMORY[0x1EEE9AC00](v10);
      OUTLINED_FUNCTION_6_0();
      v17 = v16 - v15;
      sub_1CA948DA8();

      sub_1CA948D48();
      (*(v12 + 8))(v17, v9);
      v18 = sub_1CA94C368();

      v19 = [v7 localizedStringForLocaleIdentifier_];

      v6 = sub_1CA94C3A8();
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

id sub_1CA33481C(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  a4(v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1CA94C368();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_1CA3348B0(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  if (!a1)
  {
    v3 = [v1 fullyQualifiedLinkActionIdentifier];
    v4 = [v3 bundleIdentifier];

    if (!v4)
    {
      sub_1CA94C3A8();
      v4 = sub_1CA94C368();
    }

    v5 = WFISEligibleForSettingsUpdaterAction(*&v1[OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata], v4);

    if (v5)
    {
      return 0;
    }

    v6 = *&v1[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier];
    v7 = *(v6 + 64);
    v8 = *(v6 + 32);
    OUTLINED_FUNCTION_5_5();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v14 = 0;
    while (v11)
    {
      v15 = v14;
LABEL_15:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      if (([*(*(v6 + 56) + ((v15 << 9) | (8 * v16))) visibleForUse_] & 1) == 0)
      {
        v2 = 0;
LABEL_18:

        return v2;
      }
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
        v2 = 1;
        goto LABEL_18;
      }

      v11 = *(v6 + 64 + 8 * v15);
      ++v14;
      if (v11)
      {
        v14 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

void sub_1CA334AF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_72();
  v23 = v22;
  v24 = [v22 fullyQualifiedLinkActionIdentifier];
  v25 = [v24 bundleIdentifier];

  if (!v25)
  {
    sub_1CA94C3A8();
    v25 = sub_1CA94C368();
  }

  v26 = WFISEligibleForSettingsUpdaterAction(*&v23[OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata], v25);

  if (v26)
  {
LABEL_13:
    OUTLINED_FUNCTION_70_2();
  }

  else
  {
    v27 = *&v23[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier];
    v29 = *(v27 + 64);
    v28 = v27 + 64;
    v30 = *(*&v23[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier] + 32);
    OUTLINED_FUNCTION_5_5();
    v33 = v32 & v31;
    v35 = (v34 + 63) >> 6;
    v47 = v23;
    v48 = v36;
    swift_bridgeObjectRetain_n();
    v37 = 0;
    while (v33)
    {
      v38 = v37;
LABEL_11:
      v39 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v40 = *(*(v48 + 56) + ((v38 << 9) | (8 * v39)));
      v41 = [v40 identifier];
      sub_1CA94C3A8();

      v42 = [v47 fullyQualifiedLinkActionIdentifier];
      v43 = [v42 bundleIdentifier];

      sub_1CA94C3A8();
      v44 = objc_allocWithZone(MEMORY[0x1E69AC860]);
      v45 = sub_1CA334F5C();
      v46 = [objc_opt_self() approvedForPublicDrawerToDisplayActionIdentifier_];

      if ((v46 & 1) == 0)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v35)
      {
        goto LABEL_12;
      }

      v33 = *(v28 + 8 * v38);
      ++v37;
      if (v33)
      {
        v37 = v38;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1CA334E10()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction____lazy_storage___propertyByIdentifier);

  v2 = *(v0 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction____lazy_storage____localizedNameForParameterKey);
}

id WFTargetedEntityUpdaterAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFTargetedEntityUpdaterAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA334EF0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA6277D4(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1CA335060(v6);
  *a1 = v2;
  return result;
}

id sub_1CA334F5C()
{
  v1 = sub_1CA94C368();

  v2 = sub_1CA94C368();

  v3 = [v0 initWithActionIdentifier:v1 bundleIdentifier:v2];

  return v3;
}

uint64_t sub_1CA334FE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA335060(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CA94D778();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1CA33521C(v7, v8, a1, v4);
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
    return sub_1CA335154(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CA335154(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1CA94D7F8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
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

void sub_1CA33521C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1CA94D7F8();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1CA94D7F8()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1CA94D7F8() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1CA2E49C0();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1CA2E49C0();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1CA335850((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1CA335724(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1CA335724(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1CA627610(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1CA335850((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1CA335850(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1CA26E4B4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1CA94D7F8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1CA26E4B4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1CA94D7F8() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

id sub_1CA335A38()
{
  v111 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9A4960;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v117 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v118 = v12;
  v13 = &v105 - v117;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v116 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v114 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v115 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v105 - v115;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v113 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v110 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v112 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v108 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v109 = &v105;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v105 - v117;
  sub_1CA948D98();
  v33 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v105 - v115;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v108, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v113;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v112;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v112 = v38;
  *(inited + 200) = &unk_1F49F46C8;
  *(inited + 224) = v38;
  *(inited + 232) = @"InputPassthrough";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 0;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"InputPassthrough";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v45 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v109 = &v105;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v105 - v117;
  sub_1CA948D98();
  v50 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v105 - v115;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  *(inited + 304) = v113;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1CA981350;
  *(v53 + 32) = 0x75736F6C63736944;
  *(v53 + 40) = 0xEF6C6576654C6572;
  *(v53 + 48) = 0x63696C627550;
  *(v53 + 56) = 0xE600000000000000;
  *(v53 + 72) = MEMORY[0x1E69E6158];
  *(v53 + 80) = 0x656C7069746C754DLL;
  *(v53 + 88) = 0xE800000000000000;
  *(v53 + 96) = 1;
  *(v53 + 120) = MEMORY[0x1E69E6370];
  *(v53 + 128) = 0x614E74757074754FLL;
  *(v53 + 136) = 0xEA0000000000656DLL;
  v54 = @"Output";
  v55 = sub_1CA94C438();
  v108 = v56;
  v57 = sub_1CA94C438();
  v59 = v58;
  v109 = &v105;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v105 - v117;
  sub_1CA948D98();
  v61 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v105 - v115;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 144) = sub_1CA2F9F14(v55, v108, v57, v59, 0, 0, v60, v62);
  v64 = v112;
  *(v53 + 168) = v113;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 216) = v64;
  *(v53 + 184) = 0xE500000000000000;
  *(v53 + 192) = &unk_1F49F46F8;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v66;
  *(inited + 344) = v67;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v109 = swift_allocObject();
  *(v109 + 1) = xmmword_1CA9813B0;
  v108 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1CA9813C0;
  *(v68 + 32) = @"Class";
  *(v68 + 40) = 0xD000000000000011;
  *(v68 + 48) = 0x80000001CA99E620;
  *(v68 + 64) = v65;
  *(v68 + 72) = @"Key";
  *(v68 + 80) = 0xD000000000000020;
  *(v68 + 88) = 0x80000001CA9A4A40;
  *(v68 + 104) = v65;
  *(v68 + 112) = @"Label";
  v69 = @"Parameters";
  v70 = @"Class";
  v71 = @"Key";
  v72 = @"Label";
  v73 = sub_1CA94C438();
  v106 = v74;
  v75 = sub_1CA94C438();
  v77 = v76;
  v107 = &v105;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v105 - v117;
  sub_1CA948D98();
  v79 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v105 - v115;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v73, v106, v75, v77, 0, 0, v78, v80);
  *(v68 + 144) = v113;
  *(v68 + 120) = v82;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v83 = sub_1CA2F864C();
  v84 = v109;
  v109[4] = v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v84;
  *(inited + 384) = v85;
  *(inited + 392) = @"ParameterSummary";
  v86 = @"ParameterSummary";
  v87 = sub_1CA94C438();
  v89 = v88;
  v90 = sub_1CA94C438();
  v92 = v91;
  v113 = &v105;
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v105 - v117;
  sub_1CA948D98();
  v94 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v105 - v115;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v87, v89, v90, v92, 0, 0, v93, v95);
  v98 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v99 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v98;
  *(inited + 424) = v99;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F49F4728;
  v100 = v112;
  *(inited + 464) = v112;
  *(inited + 472) = @"UserInterfaceClasses";
  v101 = @"RequiredResources";
  v102 = @"UserInterfaceClasses";
  *(inited + 480) = sub_1CA94C1E8();
  *(inited + 504) = v110;
  *(inited + 512) = @"UserInterfaces";
  *(inited + 544) = v100;
  *(inited + 520) = &unk_1F49F47C8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v103 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3367B0()
{
  v149 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9A4B10;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v160 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v161 = v12;
  v13 = &v140 - v160;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v159 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v157 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v158 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v140 - v158;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v156 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  *&v154 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v155 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v152 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v153 = &v140;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v140 - v160;
  sub_1CA948D98();
  v33 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v140 - v158;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v152, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v156;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v154;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  v148 = 0xD000000000000011;
  *(inited + 240) = 0xD000000000000011;
  *(inited + 248) = 0x80000001CA9A4B80;
  *(inited + 264) = v38;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  v39 = v38;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v154 = xmmword_1CA9813C0;
  *(v40 + 16) = xmmword_1CA9813C0;
  strcpy((v40 + 32), "ParameterKey");
  *(v40 + 45) = 0;
  *(v40 + 46) = -5120;
  *(v40 + 48) = 0x656C69464657;
  *(v40 + 56) = 0xE600000000000000;
  *(v40 + 72) = v39;
  *(v40 + 80) = 0x6465726975716552;
  *(v40 + 88) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 96) = 1;
  *(v40 + 120) = v41;
  *(v40 + 128) = 0x7365707954;
  *(v40 + 136) = 0xE500000000000000;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 168) = v152;
  *(v40 + 144) = &unk_1F49F4838;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"IconSymbolColor";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v151 = v47;
  *(inited + 320) = v46;
  *(inited + 344) = v47;
  *(inited + 352) = @"Name";
  v48 = @"Name";
  v147 = sub_1CA94C438();
  v50 = v49;
  v51 = sub_1CA94C438();
  v53 = v52;
  v150 = &v140;
  MEMORY[0x1EEE9AC00](v51);
  v54 = v160;
  sub_1CA948D98();
  v55 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v140 - v158;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v147, v50, v51, v53, 0, 0, &v140 - v54, v56);
  v58 = v156;
  *(inited + 384) = v156;
  *(inited + 392) = @"Output";
  v59 = swift_initStackObject();
  *(v59 + 16) = v154;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x614E74757074754FLL;
  *(v59 + 88) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438();
  v146 = v62;
  v147 = v61;
  v63 = sub_1CA94C438();
  v65 = v64;
  v150 = &v140;
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948D98();
  v66 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v140 - v158;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 96) = sub_1CA2F9F14(v147, v146, v63, v65, 0, 0, &v140 - v54, v67);
  *(v59 + 120) = v58;
  *(v59 + 128) = 0x7365707954;
  v69 = v152;
  *(v59 + 168) = v152;
  *(v59 + 136) = 0xE500000000000000;
  *(v59 + 144) = &unk_1F49F4868;
  v70 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v151;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_1CA981360;
  v150 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v71 = swift_allocObject();
  v144 = xmmword_1CA981350;
  *(v71 + 16) = xmmword_1CA981350;
  *(v71 + 32) = @"Class";
  *(v71 + 40) = 0xD000000000000015;
  *(v71 + 48) = 0x80000001CA99B1E0;
  *(v71 + 64) = v70;
  *(v71 + 72) = @"FilePickerSupportedTypes";
  *(v71 + 80) = &unk_1F49F4898;
  *(v71 + 104) = v69;
  *(v71 + 112) = @"Key";
  *(v71 + 120) = 0x656C69464657;
  *(v71 + 128) = 0xE600000000000000;
  *(v71 + 144) = v70;
  *(v71 + 152) = @"Label";
  v72 = @"Class";
  v73 = @"Key";
  v74 = @"Label";
  v142 = v72;
  v141 = v73;
  v143 = v74;
  v75 = @"Parameters";
  v76 = @"FilePickerSupportedTypes";
  v77 = sub_1CA94C438();
  v146 = v78;
  v79 = sub_1CA94C438();
  v81 = v80;
  v147 = &v140;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v140 - v160;
  sub_1CA948D98();
  v83 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v140 - v158;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v77, v146, v79, v81, 0, 0, v82, v84);
  *(v71 + 184) = v156;
  *(v71 + 160) = v86;
  _s3__C3KeyVMa_0(0);
  v147 = v87;
  v146 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v151 + 32) = sub_1CA2F864C();
  v88 = swift_allocObject();
  *(v88 + 16) = v144;
  *(v88 + 32) = v142;
  *(v88 + 40) = 0xD000000000000014;
  *(v88 + 48) = 0x80000001CA99B500;
  v89 = MEMORY[0x1E69E6158];
  v90 = v141;
  *(v88 + 64) = MEMORY[0x1E69E6158];
  *(v88 + 72) = v90;
  strcpy((v88 + 80), "WFNewFilename");
  *(v88 + 94) = -4864;
  v91 = v143;
  *(v88 + 104) = v89;
  *(v88 + 112) = v91;
  v92 = sub_1CA94C438();
  v142 = v93;
  v143 = v92;
  v94 = sub_1CA94C438();
  v141 = v95;
  *&v144 = &v140;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v140 - v160;
  sub_1CA948D98();
  v97 = v159;
  v98 = [v159 bundleURL];
  v140 = &v140;
  MEMORY[0x1EEE9AC00](v98);
  v145 = inited;
  v99 = v158;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 120) = sub_1CA2F9F14(v143, v142, v94, v141, 0, 0, v96, &v140 - v99);
  v101 = v156;
  *(v88 + 144) = v156;
  *(v88 + 152) = @"Placeholder";
  v102 = @"Placeholder";
  v103 = sub_1CA94C438();
  v142 = v104;
  v143 = v103;
  v105 = sub_1CA94C438();
  v107 = v106;
  *&v144 = &v140;
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v140 - v160;
  sub_1CA948D98();
  v109 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v143, v142, v105, v107, 0, 0, v108, &v140 - v99);
  *(v88 + 184) = v101;
  *(v88 + 160) = v111;
  sub_1CA94C1E8();
  v112 = sub_1CA2F864C();
  v113 = v151;
  *(v151 + 40) = v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v115 = v145;
  *(v145 + 440) = v113;
  v115[58] = v114;
  v115[59] = @"ParameterSummary";
  v116 = @"ParameterSummary";
  v117 = sub_1CA94C438();
  v119 = v118;
  v120 = sub_1CA94C438();
  v122 = v121;
  v156 = &v140;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v140 - v160;
  sub_1CA948D98();
  v124 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v140 - v158;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v117, v119, v120, v122, 0, 0, v123, v125);
  v128 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v129 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v115[60] = v128;
  v115[63] = v129;
  v115[64] = @"RemoteExecuteOnPlatforms";
  v115[68] = v152;
  v115[65] = &unk_1F49F48C8;
  v115[69] = @"RequiredResources";
  v130 = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v131 = swift_allocObject();
  *(v131 + 16) = v155;
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1CA97EDF0;
  *(v132 + 32) = v148;
  *(v132 + 40) = 0x80000001CA99B240;
  v133 = swift_allocObject();
  *(v133 + 16) = v155;
  v134 = swift_allocObject();
  *(v134 + 16) = v154;
  strcpy((v134 + 32), "WFParameterKey");
  *(v134 + 47) = -18;
  *(v134 + 48) = 0xD000000000000010;
  *(v134 + 56) = 0x80000001CA99B260;
  v135 = MEMORY[0x1E69E6158];
  *(v134 + 72) = MEMORY[0x1E69E6158];
  *(v134 + 80) = 0xD000000000000010;
  *(v134 + 88) = 0x80000001CA993570;
  *(v134 + 96) = 1;
  *(v134 + 120) = MEMORY[0x1E69E6370];
  *(v134 + 128) = 0x72756F7365524657;
  *(v134 + 168) = v135;
  *(v134 + 136) = 0xEF7373616C436563;
  *(v134 + 144) = 0xD00000000000001BLL;
  *(v134 + 152) = 0x80000001CA993590;
  v136 = @"RemoteExecuteOnPlatforms";
  v137 = @"RequiredResources";
  *(v133 + 32) = sub_1CA94C1E8();
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v132 + 48) = v133;
  *(v132 + 72) = v138;
  *(v132 + 80) = 0x72756F7365524657;
  *(v132 + 120) = v135;
  *(v132 + 88) = 0xEF7373616C436563;
  *(v132 + 96) = 0xD000000000000019;
  *(v132 + 104) = 0x80000001CA9932D0;
  *(v131 + 32) = sub_1CA94C1E8();
  v130[73] = v138;
  v130[70] = v131;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA337AF0()
{
  v173 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  v177 = xmmword_1CA9813E0;
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  v172 = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A4CA0;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v183 = inited;
  v185 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  v174 = xmmword_1CA981310;
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v189 = v17;
  v191 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v164 - v191;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v188 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v190 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v187 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v164 - v187;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v22);
  v186 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v186;
  *(v6 + 40) = v24;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v25 = v185;
  v26 = sub_1CA6B3784();
  v27 = v183;
  v183[15] = v26;
  v27[18] = v25;
  v27[19] = @"Input";
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v28 = swift_initStackObject();
  v179 = xmmword_1CA981350;
  *(v28 + 16) = xmmword_1CA981350;
  *(v28 + 32) = 0x656C7069746C754DLL;
  *(v28 + 40) = 0xE800000000000000;
  v29 = MEMORY[0x1E69E6370];
  *(v28 + 48) = 1;
  *(v28 + 72) = v29;
  strcpy((v28 + 80), "ParameterKey");
  *(v28 + 93) = 0;
  *(v28 + 94) = -5120;
  *(v28 + 96) = 0x7475706E494657;
  *(v28 + 104) = 0xE700000000000000;
  v30 = MEMORY[0x1E69E6158];
  *(v28 + 120) = MEMORY[0x1E69E6158];
  *(v28 + 128) = 0x6465726975716552;
  *(v28 + 136) = 0xE800000000000000;
  *(v28 + 144) = 1;
  *(v28 + 168) = v29;
  *(v28 + 176) = 0x7365707954;
  v31 = v29;
  *(v28 + 184) = 0xE500000000000000;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v28 + 216) = v176;
  *(v28 + 192) = &unk_1F49F4978;
  v32 = @"Input";
  v33 = sub_1CA94C1E8();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v27[20] = v33;
  v27[23] = v34;
  v27[24] = @"InputPassthrough";
  v27[28] = v31;
  *(v27 + 200) = 1;
  v35 = @"InputPassthrough";
  v27[29] = sub_1CA94C368();
  strcpy(v27 + 240, "THImportIntent");
  *(v27 + 255) = -18;
  v27[33] = v30;
  v27[34] = @"Name";
  v36 = @"Name";
  v37 = sub_1CA94C438();
  v39 = v38;
  v40 = sub_1CA94C438();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v164 - v191;
  sub_1CA948D98();
  v44 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v164 - v187;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v37, v39, v40, v42, 0, 0, v43, v45);
  v48 = v183;
  v183[35] = v47;
  v48[38] = v186;
  v48[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_1CA981570;
  v184 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v49 = swift_initStackObject();
  *(v49 + 16) = v179;
  *(v49 + 32) = @"Class";
  *(v49 + 40) = 0xD000000000000011;
  *(v49 + 48) = 0x80000001CA99E620;
  v50 = MEMORY[0x1E69E6158];
  *(v49 + 64) = MEMORY[0x1E69E6158];
  *(v49 + 72) = @"DefaultValue";
  *(v49 + 80) = 0;
  *(v49 + 104) = MEMORY[0x1E69E6370];
  *(v49 + 112) = @"Key";
  *(v49 + 120) = 0x657250796C707061;
  *(v49 + 128) = 0xEB00000000746573;
  *(v49 + 144) = v50;
  *(v49 + 152) = @"Label";
  v51 = @"Class";
  v52 = @"Key";
  v53 = @"Label";
  v54 = v51;
  v55 = v52;
  v56 = v53;
  v57 = @"DefaultValue";
  v170 = v54;
  v171 = v55;
  v175 = v56;
  v169 = v57;
  v58 = @"Parameters";
  v59 = sub_1CA94C438();
  v61 = v60;
  v62 = sub_1CA94C438();
  v64 = v63;
  v181 = &v164;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v164 - v191;
  sub_1CA948D98();
  v66 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v164 - v187;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v59, v61, v62, v64, 0, 0, v65, v67);
  *(v49 + 184) = v186;
  *(v49 + 160) = v69;
  _s3__C3KeyVMa_0(0);
  v181 = v70;
  v180 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v185 + 32) = sub_1CA2F864C();
  v71 = swift_allocObject();
  *(v71 + 16) = v177;
  *(v71 + 32) = @"AlwaysShowsButton";
  *(v71 + 40) = 1;
  v72 = MEMORY[0x1E69E6370];
  v73 = v170;
  *(v71 + 64) = MEMORY[0x1E69E6370];
  *(v71 + 72) = v73;
  *(v71 + 80) = 0xD000000000000016;
  *(v71 + 88) = 0x80000001CA99C4A0;
  v74 = MEMORY[0x1E69E6158];
  v75 = v169;
  *(v71 + 104) = MEMORY[0x1E69E6158];
  *(v71 + 112) = v75;
  *(v71 + 120) = 0x726F6C6F43;
  *(v71 + 128) = 0xE500000000000000;
  *(v71 + 144) = v74;
  *(v71 + 152) = @"DisallowedVariableTypes";
  v76 = v74;
  *(v71 + 160) = &unk_1F49F49A8;
  v77 = v176;
  *(v71 + 184) = v176;
  *(v71 + 192) = @"DoNotLocalizeValues";
  *(v71 + 200) = 1;
  *(v71 + 224) = v72;
  *(v71 + 232) = @"Items";
  *(v71 + 240) = &unk_1F49F49D8;
  v78 = v171;
  *(v71 + 264) = v77;
  *(v71 + 272) = v78;
  *(v71 + 280) = 0x7247746573657270;
  *(v71 + 288) = 0xEB0000000070756FLL;
  v79 = v175;
  *(v71 + 304) = v76;
  *(v71 + 312) = v79;
  v80 = @"AlwaysShowsButton";
  v81 = @"DoNotLocalizeValues";
  *&v177 = v73;
  v176 = v78;
  v175 = v79;
  v165 = v80;
  v167 = v81;
  v82 = @"DisallowedVariableTypes";
  v83 = @"Items";
  v84 = sub_1CA94C438();
  v86 = v85;
  v87 = sub_1CA94C438();
  v89 = v88;
  v171 = &v164;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v164 - v191;
  sub_1CA948D98();
  v91 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v164 - v187;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 320) = sub_1CA2F9F14(v84, v86, v87, v89, 0, 0, v90, v92);
  *(v71 + 344) = v186;
  *(v71 + 352) = @"RequiredResources";
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v94 = swift_allocObject();
  *(v94 + 16) = v174;
  v95 = swift_allocObject();
  v174 = xmmword_1CA9813C0;
  *(v95 + 16) = xmmword_1CA9813C0;
  strcpy((v95 + 32), "WFParameterKey");
  *(v95 + 47) = -18;
  *(v95 + 48) = 0x657250796C707061;
  *(v95 + 56) = 0xEB00000000746573;
  v168 = 0xD000000000000010;
  v169 = 0x80000001CA993570;
  v96 = MEMORY[0x1E69E6158];
  *(v95 + 72) = MEMORY[0x1E69E6158];
  *(v95 + 80) = 0xD000000000000010;
  *(v95 + 88) = 0x80000001CA993570;
  *(v95 + 96) = 1;
  v97 = MEMORY[0x1E69E6370];
  *(v95 + 120) = MEMORY[0x1E69E6370];
  *(v95 + 128) = 0x72756F7365524657;
  v166 = 0x80000001CA993590;
  *(v95 + 168) = v96;
  *(v95 + 136) = 0xEF7373616C436563;
  *(v95 + 144) = 0xD00000000000001BLL;
  *(v95 + 152) = 0x80000001CA993590;
  v164 = @"RequiredResources";
  *(v94 + 32) = sub_1CA94C1E8();
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v71 + 384) = v171;
  *(v71 + 360) = v94;
  sub_1CA94C1E8();
  *(v185 + 40) = sub_1CA2F864C();
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1CA981400;
  *(v98 + 32) = v165;
  *(v98 + 40) = 1;
  v99 = v177;
  *(v98 + 64) = v97;
  *(v98 + 72) = v99;
  *(v98 + 80) = 0xD000000000000020;
  *(v98 + 88) = 0x80000001CA9A4DB0;
  v100 = v167;
  *(v98 + 104) = v96;
  *(v98 + 112) = v100;
  *(v98 + 120) = 1;
  v101 = v176;
  *(v98 + 144) = v97;
  *(v98 + 152) = v101;
  *(v98 + 160) = 0x746573657270;
  *(v98 + 168) = 0xE600000000000000;
  v102 = v175;
  *(v98 + 184) = v96;
  *(v98 + 192) = v102;
  v103 = sub_1CA94C438();
  v105 = v104;
  v106 = sub_1CA94C438();
  v108 = v107;
  v167 = &v164;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v164 - v191;
  sub_1CA948D98();
  v110 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v164 - v187;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v103, v105, v106, v108, 0, 0, v109, v111);
  *(v98 + 224) = v186;
  *(v98 + 200) = v113;
  *(v98 + 232) = sub_1CA94C368();
  *(v98 + 240) = 0x7247746573657270;
  *(v98 + 248) = 0xEB0000000070756FLL;
  v114 = MEMORY[0x1E69E6158];
  v115 = v164;
  *(v98 + 264) = MEMORY[0x1E69E6158];
  *(v98 + 272) = v115;
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1CA97EDF0;
  v117 = swift_allocObject();
  *(v117 + 16) = v174;
  strcpy((v117 + 32), "WFParameterKey");
  *(v117 + 47) = -18;
  *(v117 + 48) = 0x657250796C707061;
  *(v117 + 56) = 0xEB00000000746573;
  v119 = v168;
  v118 = v169;
  *(v117 + 72) = v114;
  *(v117 + 80) = v119;
  *(v117 + 88) = v118;
  *(v117 + 96) = 1;
  *(v117 + 120) = MEMORY[0x1E69E6370];
  *(v117 + 128) = 0x72756F7365524657;
  *(v117 + 168) = v114;
  *(v117 + 136) = 0xEF7373616C436563;
  v120 = v166;
  *(v117 + 144) = 0xD00000000000001BLL;
  *(v117 + 152) = v120;
  *(v116 + 32) = sub_1CA94C1E8();
  v121 = swift_allocObject();
  *(v121 + 16) = v174;
  strcpy((v121 + 32), "WFParameterKey");
  *(v121 + 47) = -18;
  *(v121 + 48) = 0x7247746573657270;
  *(v121 + 56) = 0xEB0000000070756FLL;
  *(v121 + 72) = v114;
  *(v121 + 80) = 0xD000000000000013;
  *(v121 + 88) = 0x80000001CA9939F0;
  *(v121 + 96) = 16191;
  *(v121 + 104) = 0xE200000000000000;
  *(v121 + 120) = v114;
  *(v121 + 128) = 0x72756F7365524657;
  *(v121 + 168) = v114;
  *(v121 + 136) = 0xEF7373616C436563;
  *(v121 + 144) = 0xD00000000000001BLL;
  *(v121 + 152) = v120;
  *(v116 + 40) = sub_1CA94C1E8();
  *(v98 + 304) = v171;
  *(v98 + 280) = v116;
  sub_1CA94C1E8();
  *(v185 + 48) = sub_1CA2F864C();
  v122 = swift_allocObject();
  *(v122 + 16) = v179;
  v123 = v172;
  *(v122 + 32) = v177;
  *(v122 + 40) = v123;
  *(v122 + 48) = 0x80000001CA99B030;
  v124 = v176;
  *(v122 + 64) = v114;
  *(v122 + 72) = v124;
  *(v122 + 80) = 0x7475706E494657;
  *(v122 + 88) = 0xE700000000000000;
  v125 = v175;
  *(v122 + 104) = v114;
  *(v122 + 112) = v125;
  v126 = sub_1CA94C438();
  v178 = v127;
  *&v179 = v126;
  v128 = sub_1CA94C438();
  *&v177 = v129;
  v182 = &v164;
  MEMORY[0x1EEE9AC00](v128);
  v130 = &v164 - v191;
  sub_1CA948D98();
  v131 = v188;
  v132 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  v133 = v187;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v122 + 120) = sub_1CA2F9F14(v179, v178, v128, v177, 0, 0, v130, &v164 - v133);
  v135 = v186;
  *(v122 + 144) = v186;
  *(v122 + 152) = @"Placeholder";
  v136 = @"Placeholder";
  v137 = sub_1CA94C438();
  v178 = v138;
  *&v179 = v137;
  v139 = sub_1CA94C438();
  v141 = v140;
  v182 = &v164;
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v164 - v191;
  sub_1CA948D98();
  v143 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v179, v178, v139, v141, 0, 0, v142, &v164 - v133);
  *(v122 + 184) = v135;
  *(v122 + 160) = v145;
  sub_1CA94C1E8();
  v146 = sub_1CA2F864C();
  v147 = v185;
  *(v185 + 56) = v146;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v149 = v183;
  v183[40] = v147;
  v149[43] = v148;
  v149[44] = @"ParameterSummary";
  v150 = @"ParameterSummary";
  v151 = sub_1CA94C438();
  v153 = v152;
  v154 = sub_1CA94C438();
  v156 = v155;
  v186 = &v164;
  MEMORY[0x1EEE9AC00](v154);
  v157 = &v164 - v191;
  sub_1CA948D98();
  v158 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  v159 = &v164 - v187;
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v161 = sub_1CA2F9F14(v151, v153, v154, v156, 0, 0, v157, v159);
  v162 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v149[48] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v149[45] = v162;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id WFDictionaryParameterKeyValuePair.init(key:value:identity:)(void **a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = sub_1CA948D28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  sub_1CA339294(a3, &v19 - v13);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    sub_1CA339304(v14);
    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v5 value:a2];

    sub_1CA339304(a3);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v17 = sub_1CA948CD8();
    v15 = [v16 initWithKey:v5 value:a2 identity:v17];

    sub_1CA339304(a3);
    (*(v7 + 8))(v10, v6);
  }

  return v15;
}