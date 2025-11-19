uint64_t sub_2755D40D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D18, &qword_2755F3D00);
  v36 = a2;
  result = sub_2755ECC5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_275578D44(v25, v37);
      }

      else
      {
        sub_2755CDA88(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2755ECD7C();
      sub_2755EC9AC();
      result = sub_2755ECD9C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_275578D44(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_2755D4390(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2755750C0(a2, a3);
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
      sub_2755D454C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2755D40D8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2755750C0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2755ECD2C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_275578D44(a1, v23);
  }

  else
  {
    sub_2755D44E0(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_2755D44E0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_275578D44(a4, (a5[7] + 32 * a1));
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

void *sub_2755D454C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D18, &qword_2755F3D00);
  v2 = *v0;
  v3 = sub_2755ECC4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2755CDA88(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_275578D44(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_2755D46F0(void *a1, uint64_t a2, char a3)
{
  v7 = sub_2755EC82C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    v12 = &OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDismissedKey;
  }

  else
  {
    v13 = sub_2755ECD0C();

    v12 = &OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDisplayedKey;
    if (v13)
    {
      v12 = &OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDismissedKey;
    }
  }

  v14 = (v3 + *v12);
  v16 = *v14;
  v15 = v14[1];

  v17 = *(v3 + OBJC_IVAR___ICQBubbleBannerTracker_userDefaults);
  v47 = v16;
  v18 = sub_2755EC95C();
  v19 = [v17 dictionaryForKey_];

  if (v19)
  {
    v20 = sub_2755EC90C();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  v21 = [a1 aa_altDSID];
  if (v21)
  {
    v22 = v21;
    v23 = sub_2755EC98C();
    v25 = v24;

    v26 = sub_2755EC61C();
    v51 = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v50);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, a2, v26);
    sub_275578D44(&v50, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v20;
    sub_2755D4390(v49, v23, v25, isUniquelyReferenced_nonNull_native);

    v29 = sub_2755DEA84();
    (*(v8 + 16))(v11, v29, v7);

    v30 = sub_2755EC81C();
    v31 = sub_2755ECB0C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v50 = v44;
      *v32 = 136315394;

      v33 = sub_2755EC91C();
      v45 = v11;
      v46 = v7;
      v34 = v33;
      v35 = v8;
      v36 = v17;
      v38 = v37;

      v39 = sub_2755CC688(v34, v38, &v50);
      v17 = v36;

      *(v32 + 4) = v39;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_2755CC688(v47, v15, &v50);
      _os_log_impl(&dword_275572000, v30, v31, "Tracking event %s for key %s", v32, 0x16u);
      v40 = v44;
      swift_arrayDestroy();
      MEMORY[0x277C7DA70](v40, -1, -1);
      MEMORY[0x277C7DA70](v32, -1, -1);

      (*(v35 + 8))(v45, v46);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v41 = sub_2755EC8FC();

    v42 = sub_2755EC95C();

    [v17 setObject:v41 forKey:v42];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2755D4B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D78, &qword_2755F3850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2755D4BF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_2755D1564();
}

uint64_t sub_2755D4C00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2755EC61C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2755D4C48()
{
  result = qword_2809F9D90;
  if (!qword_2809F9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9D90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BubbleBannerEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BubbleBannerEventType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2755D4EFC()
{
  result = qword_2809F9D98;
  if (!qword_2809F9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9D98);
  }

  return result;
}

unint64_t sub_2755D4F50()
{
  result = qword_2809F9CA8;
  if (!qword_2809F9CA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809F9CA8);
  }

  return result;
}

unint64_t sub_2755D4F9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DB0, qword_2755F39B8);
    v3 = sub_2755ECC6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2755750C0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_2755D5134(uint64_t a1)
{
  sub_275578CDC(a1, v10, &qword_2809F9CF8, &qword_2755F3F10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_0(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_2755ECCFC();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2755EC95C();
  [v1 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

void sub_2755D52A4()
{
  v1 = *v0;
  v2 = sub_2755EC95C();
  [v1 removeObjectForKey_];
}

void sub_2755D533C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v23[1] = a5;
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DC0, &qword_2755F39E8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v23 - v13;
  sub_275578CDC(a3, v23 - v13, &qword_2809F9DC0, &qword_2755F39E8);
  v15 = sub_2755EC58C();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v17 = sub_2755EC53C();
    (*(v16 + 8))(v14, v15);
  }

  v24[0] = 0;
  v18 = [v6 URLForDirectory:a1 inDomain:a2 appropriateForURL:v17 create:a4 & 1 error:v24];

  v19 = v24[0];
  if (v18)
  {
    sub_2755EC54C();
    v20 = v19;
  }

  else
  {
    v21 = v24[0];
    sub_2755EC50C();

    swift_willThrow();
  }

  v22 = *MEMORY[0x277D85DE8];
}

id sub_2755D5550(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v12[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2755EC53C();
  if (a3)
  {
    type metadata accessor for FileAttributeKey();
    sub_2755DE854(&qword_2809F9E08, 255, type metadata accessor for FileAttributeKey);
    a3 = sub_2755EC8FC();
  }

  v12[0] = 0;
  v8 = [v4 createDirectoryAtURL:v7 withIntermediateDirectories:a2 & 1 attributes:a3 error:v12];

  if (v8)
  {
    result = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_2755EC50C();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2755D5698()
{
  v1 = *v0;
  v2 = sub_2755EC95C();
  v3 = [v1 fileExistsAtPath_];

  return v3;
}

uint64_t sub_2755D56E0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2755EC5BC();
}

uint64_t sub_2755D56FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2755D5798;

  return ICQLiftUIDataSource.data(for:)(a2);
}

uint64_t sub_2755D5798(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_2755D58F4, 0, 0);
  }
}

uint64_t sub_2755D58F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v1[1].i64[1] = MEMORY[0x277CC9318];
  v1[2].i64[0] = &off_288430AD8;
  *v1 = vextq_s8(v2, v2, 8uLL);
  return (*(v0 + 8))();
}

uint64_t sub_2755D5954(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2755D59F4;

  return ICQLiftUIDataSource.data(for:)(a2);
}

uint64_t sub_2755D59F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_2755DE8A0, 0, 0);
  }
}

uint64_t sub_2755D5B50()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v8 = sub_2755CDAE8(0, &qword_280C84E78, 0x277CBEBD0);
  v9 = &off_288430A90;
  *&v7 = v0;
  v1 = [objc_opt_self() defaultManager];
  v5 = sub_2755CDAE8(0, qword_280C84E80, 0x277CCAA00);
  v6 = &off_288430AB0;
  *&v4 = v1;
  type metadata accessor for LiftUICache();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_27557645C(&v7, v2 + 112);
  result = sub_27557645C(&v4, v2 + 152);
  qword_280C850D8 = v2;
  return result;
}

uint64_t *sub_2755D5C44()
{
  if (qword_280C850D0 != -1)
  {
    swift_once();
  }

  return &qword_280C850D8;
}

uint64_t static LiftUICache.shared.getter()
{
  if (qword_280C850D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2755D5CF0(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_27557645C(a1, v4 + 112);
  sub_27557645C(a2, v4 + 152);
  return v4;
}

uint64_t sub_2755D5D50(__int128 *a1, __int128 *a2)
{
  swift_defaultActor_initialize();
  sub_27557645C(a1, v2 + 112);
  sub_27557645C(a2, v2 + 152);
  return v2;
}

uint64_t sub_2755D5E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2755EC58C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_2755ECA9C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v7 + 32))(&v15[v14], &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *&v15[(v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8] = a1;

  sub_2755CEE70(0, 0, v12, &unk_2755F3D20, v15);
}

uint64_t sub_2755D6014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v8 = *(*a4 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_2755D6140;

  return v12(a5);
}

uint64_t sub_2755D6140()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2755D623C, 0, 0);
}

uint64_t sub_2755D623C()
{
  v1 = *(v0 + 16);
  MEMORY[0x277C7C7E0]();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2755D629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_275578CDC(a3, v27 - v11, &qword_2809F9CE8, &qword_2755F3690);
  v13 = sub_2755ECA9C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2755756C0(v12, &qword_2809F9CE8, &qword_2755F3690);
  }

  else
  {
    sub_2755ECA8C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2755ECA5C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2755EC99C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DF0, &unk_2755F3A30);
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

      sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);

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

  sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DF0, &unk_2755F3A30);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2755D66D4(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_2755EC82C();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2755D6794, v1, 0);
}

uint64_t sub_2755D6794()
{
  v1 = [objc_opt_self() defaultStore];
  v0[29] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_2755D68D8;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DB8, &unk_2755F39D0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2755D6F28;
    v0[13] = &block_descriptor_2;
    v0[14] = v3;
    [v2 aa:v0 + 10 primaryAppleAccountWithCompletion:?];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2755D68D8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 200);
  if (v3)
  {
    v5 = sub_2755D6DE4;
  }

  else
  {
    v5 = sub_2755D69F8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2755D69F8()
{
  v1 = v0[29];
  v2 = v0[23];
  v0[31] = v2;

  if (v2)
  {
    v3 = v0[25];
    v4 = type metadata accessor for ICQLiftUIDataSource();
    v5 = ICQLiftUIDataSource.__allocating_init(account:)(v2);
    v0[21] = v4;
    v0[22] = &off_288430AE8;
    v0[18] = v5;
    v6 = *(*v3 + 128);
    v25 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[32] = v8;
    *v8 = v0;
    v8[1] = sub_2755D6C64;
    v9 = v0[24];
    v10 = v0[25];

    return (v25)(v9, v0 + 18);
  }

  else
  {
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[26];
    v15 = sub_2755763AC();
    (*(v13 + 16))(v12, v15, v14);
    v16 = sub_2755EC81C();
    v17 = sub_2755ECB2C();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[27];
    v19 = v0[28];
    v21 = v0[26];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_275572000, v16, v17, "LiftUI cache failed to get primary account", v22, 2u);
      MEMORY[0x277C7DA70](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    v23 = v0[28];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_2755D6C64()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 200);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 144));

  return MEMORY[0x2822009F8](sub_2755D6D7C, v3, 0);
}

uint64_t sub_2755D6D7C()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2755D6DE4()
{
  v1 = v0[29];
  v2 = v0[30];
  swift_willThrow();

  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = sub_2755763AC();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_2755EC81C();
  v8 = sub_2755ECB2C();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[26];
  if (v9)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_275572000, v7, v8, "LiftUI cache failed to get primary account", v13, 2u);
    MEMORY[0x277C7DA70](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v14 = v0[28];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2755D6F28(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F9F90, &qword_2755F3A50);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2755D6FF8(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9F10, &qword_2755F39E0) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v5 = sub_2755EC46C();
  v3[28] = v5;
  v6 = *(v5 - 8);
  v3[29] = v6;
  v7 = *(v6 + 64) + 15;
  v3[30] = swift_task_alloc();
  v8 = sub_2755EC51C();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v10 = *(v9 + 64) + 15;
  v3[33] = swift_task_alloc();
  v11 = sub_2755EC64C();
  v3[34] = v11;
  v12 = *(v11 - 8);
  v3[35] = v12;
  v13 = *(v12 + 64) + 15;
  v3[36] = swift_task_alloc();
  v14 = sub_2755EC82C();
  v3[37] = v14;
  v15 = *(v14 - 8);
  v3[38] = v15;
  v16 = *(v15 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DC0, &qword_2755F39E8) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v18 = sub_2755EC58C();
  v3[47] = v18;
  v19 = *(v18 - 8);
  v3[48] = v19;
  v20 = *(v19 + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2755D7344, v2, 0);
}

uint64_t sub_2755D7344()
{
  v150 = v0;
  v1 = v0[26];
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v2);
  v4 = (*(v3 + 8))(0xD000000000000013, 0x80000002755FA570, v2, v3);
  if (v4)
  {
    v5 = sub_2755D9084(v4);

    if (v5)
    {
      v6 = v0[24];
      v148 = v5;
      v7 = sub_2755EC52C();
      if (*(v5 + 16))
      {
        v9 = sub_2755750C0(v7, v8);
        v11 = v10;

        if (v11)
        {
          v12 = v0[47];
          v13 = v0[48];
          v14 = v0[46];
          v15 = (*(v5 + 56) + 16 * v9);
          v16 = *v15;
          v17 = v15[1];

          sub_2755EC56C();

          if ((*(v13 + 48))(v14, 1, v12) == 1)
          {
            sub_2755756C0(v0[46], &qword_2809F9DC0, &qword_2755F39E8);
          }

          else
          {
            v86 = v0[26];
            (*(v0[48] + 32))(v0[57], v0[46], v0[47]);
            v87 = v86[23];
            __swift_project_boxed_opaque_existential_0(v86 + 19, v86[22]);
            v88 = sub_2755EC55C();
            v89 = (*(v87 + 24))(v88);

            if (v89)
            {
              v90 = v0[56];
              v91 = v0[47];
              v92 = v0[48];
              v93 = v0[44];
              v94 = v0[37];
              v95 = v0[38];
              v96 = v0[24];
              v97 = sub_2755763AC();
              (*(v95 + 16))(v93, v97, v94);
              (*(v92 + 16))(v90, v96, v91);
              v98 = sub_2755EC81C();
              v99 = sub_2755ECB0C();
              v100 = os_log_type_enabled(v98, v99);
              v101 = v0[56];
              v102 = v0[48];
              v146 = v0[47];
              v103 = v0[44];
              v105 = v0[37];
              v104 = v0[38];
              if (v100)
              {
                v141 = v0[37];
                v106 = swift_slowAlloc();
                v135 = v99;
                v107 = swift_slowAlloc();
                v149[0] = v107;
                *v106 = 136315138;
                v134 = sub_2755EC52C();
                v138 = v103;
                v109 = v108;
                v110 = v146;
                v147 = *(v102 + 8);
                v147(v101, v110);
                v111 = sub_2755CC688(v134, v109, v149);

                *(v106 + 4) = v111;
                _os_log_impl(&dword_275572000, v98, v135, "LiftUI cache exists for %s deleting", v106, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v107);
                MEMORY[0x277C7DA70](v107, -1, -1);
                MEMORY[0x277C7DA70](v106, -1, -1);

                (*(v104 + 8))(v138, v141);
              }

              else
              {

                v112 = v146;
                v147 = *(v102 + 8);
                v147(v101, v112);
                (*(v104 + 8))(v103, v105);
              }

              sub_2755DCCC4(v0[57]);
              v142 = v0[57];
              v113 = v0[47];
              v114 = v0[48];
              v115 = v0[24];
              v116 = sub_2755EC52C();
              sub_2755D92FC(0, 0, v116, v117);
              v118 = v1[17];
              v119 = v1[18];
              __swift_project_boxed_opaque_existential_0(v1 + 14, v118);
              v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DE8, &unk_2755F3A00);
              v0[16] = v148;
              v120 = *(v119 + 16);

              v120(v0 + 16, 0xD000000000000013, 0x80000002755FA570, v118, v119);
              v147(v142, v113);
              sub_2755756C0((v0 + 16), &qword_2809F9CF8, &qword_2755F3F10);
            }

            else
            {
              (*(v0[48] + 8))(v0[57], v0[47]);
            }
          }
        }
      }

      else
      {
      }
    }
  }

  v18 = v0[43];
  v19 = v0[37];
  v20 = v0[38];
  v21 = sub_2755763AC();
  v0[58] = v21;
  v22 = *(v20 + 16);
  v0[59] = v22;
  v0[60] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v133 = v21;
  v132 = v22;
  (v22)(v18);
  v23 = sub_2755EC81C();
  v24 = sub_2755ECB0C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_275572000, v23, v24, "LiftUI cache creating path URL", v25, 2u);
    MEMORY[0x277C7DA70](v25, -1, -1);
  }

  v26 = v0[48];
  v139 = v0[47];
  v143 = v0[55];
  v136 = v0[45];
  v27 = v0[43];
  v29 = v0[37];
  v28 = v0[38];
  v30 = v0[35];
  v31 = v0[36];
  v32 = v0[34];
  v33 = v0[26];

  v34 = *(v28 + 8);
  v0[61] = v34;
  v35 = v29;
  v36 = v34;
  v34(v27, v35);
  sub_2755EC63C();
  v131 = sub_2755EC62C();
  v38 = v37;
  (*(v30 + 8))(v31, v32);
  v39 = v33[22];
  v40 = v33[23];
  __swift_project_boxed_opaque_existential_0(v33 + 19, v39);
  (*(v26 + 56))(v136, 1, 1, v139);
  (*(v40 + 8))(9, 1, v136, 1, v39, v40);
  v137 = v33;
  v140 = v36;
  v41 = v0[55];
  v121 = v0[54];
  v144 = v0[48];
  v128 = v0[47];
  v129 = v0[52];
  v123 = v0[53];
  v124 = v0[42];
  v126 = v0[37];
  v42 = v0[32];
  v43 = v0[33];
  v44 = v0[31];
  sub_2755756C0(v0[45], &qword_2809F9DC0, &qword_2755F39E8);
  v0[20] = 0x2F69757466696CLL;
  v0[21] = 0xE700000000000000;
  v45 = *MEMORY[0x277CC91D8];
  v122 = *(v42 + 104);
  v122(v43, v45, v44);
  sub_2755DC500();
  sub_2755EC57C();
  v46 = *(v42 + 8);
  v46(v43, v44);
  v0[22] = v131;
  v0[23] = v38;
  v122(v43, v45, v44);
  sub_2755EC57C();
  v46(v43, v44);

  v132(v124, v133, v126);
  v47 = *(v144 + 16);
  v0[62] = v47;
  v0[63] = (v144 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47(v129, v123, v128);
  v48 = sub_2755EC81C();
  v49 = sub_2755ECB0C();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v0[52];
  v52 = v0[47];
  v53 = v0[48];
  v54 = v0[42];
  v55 = v0[37];
  v56 = v0[38];
  if (v50)
  {
    v130 = v0[37];
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v149[0] = v58;
    *v57 = 136315138;
    v59 = sub_2755EC52C();
    v127 = v54;
    v61 = v60;
    v125 = v49;
    v62 = *(v53 + 8);
    v62(v51, v52);
    v63 = sub_2755CC688(v59, v61, v149);

    *(v57 + 4) = v63;
    _os_log_impl(&dword_275572000, v48, v125, "LiftUI cache path url: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x277C7DA70](v58, -1, -1);
    MEMORY[0x277C7DA70](v57, -1, -1);

    v64 = v127;
    v65 = v130;
  }

  else
  {

    v62 = *(v53 + 8);
    v62(v51, v52);
    v64 = v54;
    v65 = v55;
  }

  v140(v64, v65);
  v0[64] = v62;
  v66 = v0[54];
  v67 = v137[22];
  v68 = v137[23];
  __swift_project_boxed_opaque_existential_0(v137 + 19, v67);
  (*(v68 + 16))(v66, 1, 0, v67, v68);
  v69 = v0[27];
  v71 = v0[24];
  v70 = v0[25];
  v72 = v70[3];
  v73 = v70[4];
  __swift_project_boxed_opaque_existential_0(v70, v72);
  (*(v73 + 8))(v71, v72, v73);
  v75 = v0[29];
  v74 = v0[30];
  v77 = v0[27];
  v76 = v0[28];
  v78 = v0[25];
  (*(v75 + 56))(v77, 0, 1, v76);
  (*(v75 + 32))(v74, v77, v76);
  v80 = v70[3];
  v79 = v70[4];
  __swift_project_boxed_opaque_existential_0(v78, v80);
  v81 = *(v79 + 16);
  v145 = (v81 + *v81);
  v82 = v81[1];
  v83 = swift_task_alloc();
  v0[65] = v83;
  *v83 = v0;
  v83[1] = sub_2755D8498;
  v84 = v0[30];

  return (v145)(v0 + 7, v84, v80, v79);
}

uint64_t sub_2755D8498()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {

    v6 = sub_2755D8C38;
  }

  else
  {
    v6 = sub_2755D85D0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2755D85D0()
{
  v89 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 424);
  sub_27557645C((v0 + 56), v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v3);
  (*(v4 + 8))(v2, 0, v3, v4);
  if (v1)
  {
    v5 = *(v0 + 512);
    v6 = *(v0 + 432);
    v7 = *(v0 + 440);
    v8 = *(v0 + 424);
    v9 = *(v0 + 376);
    v10 = *(v0 + 384);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v5(v8, v9);
    v5(v6, v9);
    v5(v7, v9);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v11 = *(v0 + 480);
    v13 = *(v0 + 384);
    v12 = *(v0 + 392);
    v14 = *(v0 + 376);
    v15 = *(v0 + 192);
    (*(v0 + 472))(*(v0 + 312), *(v0 + 464), *(v0 + 296));
    (*(v13 + 16))(v12, v15, v14);
    v16 = v1;
    v17 = sub_2755EC81C();
    v18 = sub_2755ECB1C();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 488);
    v22 = *(v0 + 384);
    v21 = *(v0 + 392);
    v23 = *(v0 + 376);
    v24 = *(v0 + 312);
    v86 = *(v0 + 304);
    v25 = *(v0 + 296);
    if (v19)
    {
      v83 = *(v0 + 312);
      v26 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v88 = v80;
      *v26 = 136315394;
      sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260]);
      v74 = v25;
      v77 = v20;
      v27 = sub_2755ECCDC();
      v29 = v28;
      (*(v22 + 8))(v21, v23);
      v30 = sub_2755CC688(v27, v29, &v88);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2112;
      v31 = v1;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v32;
      *v71 = v32;
      _os_log_impl(&dword_275572000, v17, v18, "Failed to save LiftUI content at %s with error: %@", v26, 0x16u);
      sub_2755756C0(v71, &qword_2809F9DD0, &qword_2755F39F0);
      MEMORY[0x277C7DA70](v71, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x277C7DA70](v80, -1, -1);
      MEMORY[0x277C7DA70](v26, -1, -1);

      v77(v83, v74);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
      v20(v24, v25);
    }
  }

  else
  {
    v33 = *(v0 + 208);
    v34 = v33[17];
    v35 = v33[18];
    __swift_project_boxed_opaque_existential_0(v33 + 14, v34);
    v36 = (*(v35 + 8))(0xD000000000000013, 0x80000002755FA570, v34, v35);
    if (!v36 || (v37 = sub_2755D9084(v36), , !v37))
    {
      v37 = sub_2755DCF5C(MEMORY[0x277D84F90]);
    }

    v84 = *(v0 + 440);
    v78 = *(v0 + 512);
    v81 = *(v0 + 432);
    v38 = *(v0 + 424);
    v39 = *(v0 + 376);
    v40 = *(v0 + 232);
    v72 = *(v0 + 240);
    v75 = *(v0 + 384);
    v67 = v38;
    v69 = *(v0 + 224);
    v41 = *(v0 + 208);
    v42 = *(v0 + 192);
    v43 = sub_2755EC52C();
    v45 = v44;
    v46 = sub_2755EC52C();
    v48 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v37;
    sub_2755DC9C4(v46, v48, v43, v45, isUniquelyReferenced_nonNull_native);

    v50 = v41[17];
    v51 = v41[18];
    __swift_project_boxed_opaque_existential_0(v41 + 14, v50);
    *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DE8, &unk_2755F3A00);
    *(v0 + 96) = v37;
    (*(v51 + 16))(v0 + 96, 0xD000000000000013, 0x80000002755FA570, v50, v51);
    (*(v40 + 8))(v72, v69);
    v78(v67, v39);
    v78(v81, v39);
    v78(v84, v39);
    sub_2755756C0(v0 + 96, &qword_2809F9CF8, &qword_2755F3F10);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  v53 = *(v0 + 448);
  v52 = *(v0 + 456);
  v54 = *(v0 + 432);
  v55 = *(v0 + 440);
  v57 = *(v0 + 416);
  v56 = *(v0 + 424);
  v59 = *(v0 + 400);
  v58 = *(v0 + 408);
  v60 = *(v0 + 392);
  v61 = *(v0 + 368);
  v64 = *(v0 + 360);
  v65 = *(v0 + 352);
  v66 = *(v0 + 344);
  v68 = *(v0 + 336);
  v70 = *(v0 + 328);
  v73 = *(v0 + 320);
  v76 = *(v0 + 312);
  v79 = *(v0 + 288);
  v82 = *(v0 + 264);
  v85 = *(v0 + 240);
  v87 = *(v0 + 216);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_2755D8C38()
{
  v63 = v0;
  *(v0 + 56) = 0u;
  loga = *(v0 + 496);
  v59 = *(v0 + 504);
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 408);
  v5 = *(v0 + 376);
  v6 = *(v0 + 328);
  v7 = *(v0 + 296);
  v8 = *(v0 + 192);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_2755756C0(v0 + 56, &qword_2809F9DE0, &qword_2755F39F8);
  v2(v6, v3, v7);
  (loga)(v4, v8, v5);
  v9 = sub_2755EC81C();
  v44 = sub_2755ECB1C();
  log = v9;
  v10 = os_log_type_enabled(v9, v44);
  v11 = *(v0 + 512);
  v60 = *(v0 + 488);
  v13 = *(v0 + 432);
  v12 = *(v0 + 440);
  v14 = *(v0 + 424);
  v15 = *(v0 + 408);
  v16 = *(v0 + 376);
  v17 = *(v0 + 384);
  v46 = *(v0 + 304);
  v48 = *(v0 + 296);
  v50 = *(v0 + 328);
  v18 = *(v0 + 232);
  v19 = *(v0 + 224);
  v52 = v19;
  v54 = *(v0 + 240);
  if (v10)
  {
    v20 = swift_slowAlloc();
    v42 = v12;
    v21 = swift_slowAlloc();
    v62 = v21;
    *v20 = 136315138;
    sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260]);
    v38 = v14;
    v40 = v13;
    v22 = sub_2755ECCDC();
    v24 = v23;
    v11(v15, v16);
    v25 = sub_2755CC688(v22, v24, &v62);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_275572000, log, v44, "Failed to fetch LiftUI content at %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x277C7DA70](v21, -1, -1);
    MEMORY[0x277C7DA70](v20, -1, -1);

    v60(v50, v48);
    (*(v18 + 8))(v54, v52);
    v11(v38, v16);
    v11(v40, v16);
    v11(v42, v16);
  }

  else
  {

    v11(v15, v16);
    v60(v50, v48);
    (*(v18 + 8))(v54, v52);
    v11(v14, v16);
    v11(v13, v16);
    v11(v12, v16);
  }

  v27 = *(v0 + 448);
  v26 = *(v0 + 456);
  v28 = *(v0 + 432);
  v29 = *(v0 + 440);
  v31 = *(v0 + 416);
  v30 = *(v0 + 424);
  v33 = *(v0 + 400);
  v32 = *(v0 + 408);
  v34 = *(v0 + 392);
  v35 = *(v0 + 368);
  v39 = *(v0 + 360);
  v41 = *(v0 + 352);
  v43 = *(v0 + 344);
  v45 = *(v0 + 336);
  v47 = *(v0 + 328);
  v49 = *(v0 + 320);
  v51 = *(v0 + 312);
  v53 = *(v0 + 288);
  v55 = *(v0 + 264);
  logb = *(v0 + 240);
  v61 = *(v0 + 216);

  v36 = *(v0 + 8);

  return v36();
}

unint64_t sub_2755D9084(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E20, &unk_2755F3D08);
    v2 = sub_2755ECC6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v16);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v6)) | (v16 << 6);
        v18 = (*(v1 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        sub_2755CDA88(*(v1 + 56) + 32 * v17, v32);
        *&v31 = v19;
        *(&v31 + 1) = v20;
        v29[2] = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v21 = v31;
        sub_275578D44(v30, v29);

        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_2755750C0(v21, *(&v21 + 1));
        if (v22)
        {
          v10 = v1;
          v11 = 16 * result;
          v12 = v2[6] + 16 * result;
          v13 = *(v12 + 8);
          *v12 = v21;

          v14 = (v2[7] + v11);
          v1 = v10;
          v15 = v14[1];
          *v14 = v27;
          v14[1] = v28;

          v9 = v16;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v21;
          v23 = (v2[7] + 16 * result);
          *v23 = v27;
          v23[1] = v28;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_24;
          }

          v2[2] = v26;
          v9 = v16;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v16 = v9;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2755D92FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_2755DC9C4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_2755750C0(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_2755DCB4C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_2755DC814(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_2755D9404(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_2755EC58C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2755D9504, 0, 0);
}

uint64_t sub_2755D9504()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = sub_2755ECA9C();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  (*(v3 + 16))(v1, v7, v5);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v9], v1, v5);

  v11 = sub_2755D629C(0, 0, v2, &unk_2755F3A28, v10);
  v0[11] = v11;
  v12 = *(MEMORY[0x277D857E0] + 4);
  v13 = swift_task_alloc();
  v0[12] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DF0, &unk_2755F3A30);
  *v13 = v0;
  v13[1] = sub_2755D96C0;

  return MEMORY[0x282200460](v0 + 2, v11, v14);
}

uint64_t sub_2755D96C0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2755D97D8, 0, 0);
}

uint64_t sub_2755D97D8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[2];
  v4 = v0[3];

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_2755D9854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = *(*a4 + 144);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_2755D9980;

  return v11(a5);
}

uint64_t sub_2755D9980(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v6 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x2822009F8](sub_2755D9A80, 0, 0);
}

uint64_t sub_2755D9C2C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_2755EC58C();
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  v3[6] = _Block_copy(a2);
  sub_2755EC54C();

  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_2755D9D58;

  return sub_2755D9404(v8);
}

uint64_t sub_2755D9D58(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  (*(v8 + 8))(v7, v9);
  if (a2 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_2755EC5AC();
    sub_2755DE450(a1, a2);
  }

  v13 = *(v5 + 48);
  (v13)[2](v13, v12);

  _Block_release(v13);

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_2755D9F38(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_2755EC58C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2755DA038, v1, 0);
}

uint64_t sub_2755DA038()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v8 = sub_2755ECA9C();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v4 + 16))(v2, v7, v6);
  v10 = sub_2755DE854(&qword_2809F9DF8, v9, type metadata accessor for LiftUICache);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v10;
  (*(v4 + 32))(v13 + v11, v2, v6);
  *(v13 + v12) = v5;
  swift_retain_n();
  v14 = sub_2755DB5A0(0, 0, v1, &unk_2755F3A48, v13);
  v0[11] = v14;
  v15 = *(MEMORY[0x277D857C8] + 4);
  v16 = swift_task_alloc();
  v0[12] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F9F90, &qword_2755F3A50);
  *v16 = v0;
  v16[1] = sub_2755DA254;
  v18 = MEMORY[0x277CC9318];
  v19 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v14, v18, v17, v19);
}

uint64_t sub_2755DA254()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  v5 = *(v2 + 88);
  v6 = *(v2 + 40);
  if (v0)
  {

    v7 = sub_2755DA42C;
  }

  else
  {

    v7 = sub_2755DA3B0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2755DA3B0()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];

  return v5(v2, v1);
}

uint64_t sub_2755DA42C()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];

  return v3(0, 0xF000000000000000);
}

uint64_t sub_2755DA49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DC0, &qword_2755F39E8) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v8 = sub_2755EC58C();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v11 = sub_2755EC82C();
  v5[18] = v11;
  v12 = *(v11 - 8);
  v5[19] = v12;
  v13 = *(v12 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2755DA664, a5, 0);
}

uint64_t sub_2755DA664()
{
  v172 = v0;
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[7];
  v154 = sub_2755763AC();
  v157 = *(v2 + 16);
  v157(v1);
  v160 = *(v6 + 16);
  v160(v4, v7, v5);
  v8 = sub_2755EC81C();
  v9 = sub_2755ECB0C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[24];
  v12 = v0[18];
  v13 = v0[19];
  v14 = v0[17];
  v16 = v0[10];
  v15 = v0[11];
  if (v10)
  {
    v150 = v9;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v171[0] = v18;
    *v17 = 136315138;
    sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260]);
    v144 = v12;
    v147 = v11;
    v19 = sub_2755ECCDC();
    v21 = v20;
    v153 = *(v15 + 8);
    v153(v14, v16);
    v22 = sub_2755CC688(v19, v21, v171);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_275572000, v8, v150, "Fetching LiftUI content at %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x277C7DA70](v18, -1, -1);
    MEMORY[0x277C7DA70](v17, -1, -1);

    v23 = *(v13 + 8);
    v23(v147, v144);
  }

  else
  {

    v153 = *(v15 + 8);
    v153(v14, v16);
    v23 = *(v13 + 8);
    v23(v11, v12);
  }

  v24 = v0[8];
  v25 = v24[17];
  v26 = v24[18];
  __swift_project_boxed_opaque_existential_0(v24 + 14, v25);
  v27 = (*(v26 + 8))(0xD000000000000013, 0x80000002755FA570, v25, v26);
  if (!v27 || (v28 = sub_2755D9084(v27), , !v28))
  {
LABEL_12:
    v41 = v0[13];
    v42 = v0[10];
    v43 = v0[7];
    (v157)(v0[21], v154, v0[18]);
    v160(v41, v43, v42);
    v44 = sub_2755EC81C();
    v45 = sub_2755ECB0C();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[21];
    v161 = v0[19];
    v166 = v0[18];
    v48 = v0[13];
    v50 = v0[10];
    v49 = v0[11];
    if (v46)
    {
      v51 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v171[0] = v158;
      *v51 = 136315138;
      sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260]);
      v148 = v23;
      v52 = sub_2755ECCDC();
      v155 = v47;
      v54 = v53;
      v153(v48, v50);
      v55 = sub_2755CC688(v52, v54, v171);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_275572000, v44, v45, "No cached LiftUI data for %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v158);
      MEMORY[0x277C7DA70](v158, -1, -1);
      MEMORY[0x277C7DA70](v51, -1, -1);

      v148(v155, v166);
    }

    else
    {

      v153(v48, v50);
      v23(v47, v166);
    }

    v56 = v24[17];
    v57 = v24[18];
    __swift_project_boxed_opaque_existential_0(v24 + 14, v56);
    v58 = (*(v57 + 8))(0xD000000000000013, 0x80000002755FA570, v56, v57);
    if (v58)
    {
      v59 = sub_2755D9084(v58);

      if (v59)
      {
        v60 = v0[7];
        v171[0] = v59;
        v61 = sub_2755EC52C();
        sub_2755D92FC(0, 0, v61, v62);
        v63 = v24[17];
        v64 = v24[18];
        __swift_project_boxed_opaque_existential_0(v24 + 14, v63);
        v65 = v171[0];
        v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DE8, &unk_2755F3A00);
        v0[2] = v65;
        (*(v64 + 16))(v0 + 2, 0xD000000000000013, 0x80000002755FA570, v63, v64);
        sub_2755756C0((v0 + 2), &qword_2809F9CF8, &qword_2755F3F10);
      }
    }

    sub_2755DE508();
    swift_allocError();
    swift_willThrow();
    v67 = v0[23];
    v66 = v0[24];
    v69 = v0[21];
    v68 = v0[22];
    v70 = v0[20];
    v72 = v0[16];
    v71 = v0[17];
    v74 = v0[14];
    v73 = v0[15];
    v75 = v0[13];
    v162 = v0[12];
    v167 = v0[9];

    v76 = v0[1];
    goto LABEL_19;
  }

  v29 = v0[7];
  v30 = sub_2755EC52C();
  if (!*(v28 + 16))
  {

    goto LABEL_11;
  }

  v32 = sub_2755750C0(v30, v31);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v35 = v0[10];
  v36 = v0[11];
  v37 = v0[9];
  v38 = (*(v28 + 56) + 16 * v32);
  v39 = *v38;
  v40 = v38[1];

  sub_2755EC56C();

  if ((*(v36 + 48))(v37, 1, v35) == 1)
  {
    sub_2755756C0(v0[9], &qword_2809F9DC0, &qword_2755F39E8);
    goto LABEL_12;
  }

  v149 = v23;
  v78 = v0[23];
  v79 = v0[18];
  v81 = v0[15];
  v80 = v0[16];
  v82 = v0[10];
  (*(v0[11] + 32))(v80, v0[9], v82);
  (v157)(v78, v154, v79);
  v160(v81, v80, v82);
  v83 = sub_2755EC81C();
  v84 = sub_2755ECB0C();
  v85 = os_log_type_enabled(v83, v84);
  v86 = v0[23];
  v87 = v0[18];
  v88 = v0[19];
  v89 = v0[15];
  v91 = v0[10];
  v90 = v0[11];
  if (v85)
  {
    v151 = v0[19];
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v171[0] = v93;
    *v92 = 136315138;
    sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260]);
    v142 = v87;
    v145 = v86;
    v94 = sub_2755ECCDC();
    v96 = v95;
    v97 = v153;
    v153(v89, v91);
    v98 = sub_2755CC688(v94, v96, v171);

    *(v92 + 4) = v98;
    _os_log_impl(&dword_275572000, v83, v84, "Cache file path: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x277C7DA70](v93, -1, -1);
    MEMORY[0x277C7DA70](v92, -1, -1);

    v100 = v142;
    v99 = v145;
  }

  else
  {

    v97 = v153;
    v153(v89, v91);
    v99 = v86;
    v100 = v87;
  }

  v149(v99, v100);
  v101 = v0[16];
  v102 = v0[8];
  v103 = v102[22];
  v104 = v102[23];
  __swift_project_boxed_opaque_existential_0(v102 + 19, v103);
  v105 = (*(v104 + 32))(v101, v103, v104);
  v107 = v106;
  v108 = v0[14];
  v109 = v0[10];
  v110 = v0[7];
  (v157)(v0[22], v154, v0[18]);
  v160(v108, v110, v109);
  sub_2755DE55C(v105, v107);
  v111 = sub_2755EC81C();
  v112 = sub_2755ECB0C();
  v143 = v105;
  v146 = v107;
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    result = swift_slowAlloc();
    v168 = result;
    v171[0] = result;
    *v113 = 134218242;
    v114 = v107 >> 62;
    if ((v107 >> 62) > 1)
    {
      if (v114 != 2)
      {
        v115 = 0;
        goto LABEL_37;
      }

      v122 = *(v105 + 16);
      v121 = *(v105 + 24);
      v123 = __OFSUB__(v121, v122);
      v115 = v121 - v122;
      if (!v123)
      {
        goto LABEL_37;
      }

      __break(1u);
    }

    else if (!v114)
    {
      v115 = BYTE6(v107);
LABEL_37:
      v152 = v0[19];
      v156 = v0[18];
      v159 = v0[22];
      v164 = v0[16];
      v124 = v0[14];
      v126 = v0[10];
      v125 = v0[11];
      *(v113 + 4) = v115;
      sub_2755DE464(v105, v107);
      *(v113 + 12) = 2080;
      sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260]);
      v127 = sub_2755ECCDC();
      v129 = v128;
      v153(v124, v126);
      v130 = sub_2755CC688(v127, v129, v171);

      *(v113 + 14) = v130;
      _os_log_impl(&dword_275572000, v111, v112, "Fetched LiftUI content (%ld bytes) at %s", v113, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v168);
      MEMORY[0x277C7DA70](v168, -1, -1);
      MEMORY[0x277C7DA70](v113, -1, -1);

      v149(v159, v156);
      v153(v164, v126);
      goto LABEL_38;
    }

    LODWORD(v115) = HIDWORD(v105) - v105;
    if (__OFSUB__(HIDWORD(v105), v105))
    {
      __break(1u);
      return result;
    }

    v115 = v115;
    goto LABEL_37;
  }

  v116 = v0[18];
  v117 = v0[19];
  v163 = v0[22];
  v169 = v0[16];
  v118 = v0[14];
  v120 = v0[10];
  v119 = v0[11];

  sub_2755DE464(v105, v107);
  v97(v118, v120);
  v149(v163, v116);
  v97(v169, v120);
LABEL_38:
  v132 = v0[23];
  v131 = v0[24];
  v134 = v0[21];
  v133 = v0[22];
  v135 = v0[20];
  v137 = v0[16];
  v136 = v0[17];
  v138 = v0[14];
  v139 = v0[15];
  v140 = v0[13];
  v165 = v0[12];
  v170 = v0[9];
  v141 = v0[6];
  *v141 = v143;
  v141[1] = v146;

  v76 = v0[1];
LABEL_19:

  return v76();
}

uint64_t sub_2755DB5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_275578CDC(a3, v24 - v10, &qword_2809F9CE8, &qword_2755F3690);
  v12 = sub_2755ECA9C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2755756C0(v11, &qword_2809F9CE8, &qword_2755F3690);
  }

  else
  {
    sub_2755ECA8C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2755ECA5C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2755EC99C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id sub_2755DB89C(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2755EC53C();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_2755EC58C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_2755EC50C();

    swift_willThrow();
    v9 = sub_2755EC58C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t LiftUICache.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t LiftUICache.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2755DBAA0()
{
  sub_2755ECD7C();
  MEMORY[0x277C7CE10](0);
  return sub_2755ECD9C();
}

uint64_t sub_2755DBAE4()
{
  sub_2755ECD7C();
  MEMORY[0x277C7CE10](0);
  return sub_2755ECD9C();
}

uint64_t sub_2755DBB34()
{
  v1 = *v0;
  v2 = sub_2755EC98C();
  v3 = MEMORY[0x277C7CA50](v2);

  return v3;
}

uint64_t sub_2755DBB70()
{
  v1 = *v0;
  sub_2755EC98C();
  sub_2755EC9AC();
}

uint64_t sub_2755DBBC4()
{
  v1 = *v0;
  sub_2755EC98C();
  sub_2755ECD7C();
  sub_2755EC9AC();
  v2 = sub_2755ECD9C();

  return v2;
}

uint64_t sub_2755DBC40(uint64_t a1, id *a2)
{
  result = sub_2755EC96C();
  *a2 = 0;
  return result;
}

uint64_t sub_2755DBCB8(uint64_t a1, id *a2)
{
  v3 = sub_2755EC97C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2755DBD38@<X0>(uint64_t *a1@<X8>)
{
  sub_2755EC98C();
  v2 = sub_2755EC95C();

  *a1 = v2;
  return result;
}

uint64_t sub_2755DBD7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2755EC98C();
  v6 = v5;
  if (v4 == sub_2755EC98C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2755ECD0C();
  }

  return v9 & 1;
}

uint64_t sub_2755DBE04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2755EC95C();

  *a2 = v5;
  return result;
}

uint64_t sub_2755DBE4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2755EC98C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2755DBE78(uint64_t a1)
{
  v2 = sub_2755DE854(&qword_2809F9E08, 255, type metadata accessor for FileAttributeKey);
  v3 = sub_2755DE854(&qword_2809F9E48, 255, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2755DBF3C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_275577558;

  return v7();
}

uint64_t sub_2755DC024(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_27557726C;

  return v8();
}

uint64_t sub_2755DC10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_275578CDC(a3, v25 - v11, &qword_2809F9CE8, &qword_2755F3690);
  v13 = sub_2755ECA9C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2755756C0(v12, &qword_2809F9CE8, &qword_2755F3690);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2755ECA8C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2755ECA5C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2755EC99C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);

    return v23;
  }

LABEL_8:
  sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2755DC408(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27557770C;

  return v7(a1);
}

unint64_t sub_2755DC500()
{
  result = qword_2809F9DD8;
  if (!qword_2809F9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9DD8);
  }

  return result;
}

uint64_t sub_2755DC554(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E20, &unk_2755F3D08);
  v40 = a2;
  result = sub_2755ECC5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_2755ECD7C();
      sub_2755EC9AC();
      result = sub_2755ECD9C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2755DC814(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2755ECBDC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2755ECD7C();

      sub_2755EC9AC();
      v13 = sub_2755ECD9C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2755DC9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2755750C0(a3, a4);
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
      sub_2755DC554(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_2755750C0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_2755ECD2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_2755DCB4C();
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

void *sub_2755DCB4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E20, &unk_2755F3D08);
  v2 = *v0;
  v3 = sub_2755ECC4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_2755DCCC4(uint64_t a1)
{
  v23[11] = *MEMORY[0x277D85DE8];
  v3 = sub_2755EC58C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755CDAE8(0, &qword_2809F9E18, 0x277CCA9F8);
  v8 = *(v4 + 16);
  v8(v7, a1, v3);
  v9 = sub_2755DB89C(v7);
  if (!v1)
  {
    v10 = v9;
    v11 = [v9 fileDescriptor];
    v23[0] = 66053;
    v12 = ffsctl(v11, 0xC0084A44uLL, v23, 0);
    if (v12)
    {
      v13 = *MEMORY[0x277CCA5B8];
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D08, &unk_2755F3CF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2755F3680;
      v16 = *MEMORY[0x277CCA760];
      *(inited + 32) = sub_2755EC98C();
      *(inited + 40) = v17;
      *(inited + 72) = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      v8(boxed_opaque_existential_0, a1, v3);
      v19 = v13;
      sub_275578BAC(inited);
      swift_setDeallocating();
      sub_2755756C0(inited + 32, &qword_2809F9D10, &qword_2755F3730);
      v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v21 = sub_2755EC8FC();

      [v20 initWithDomain:v19 code:v14 userInfo:v21];

      swift_willThrow();
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2755DCF5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E20, &unk_2755F3D08);
    v3 = sub_2755ECC6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2755750C0(v5, v6);
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

uint64_t sub_2755DD070(uint64_t a1)
{
  v4 = *(sub_2755EC58C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_275577558;

  return sub_2755D9854(a1, v7, v8, v6, v1 + v5);
}

uint64_t sub_2755DD178(uint64_t a1)
{
  v4 = *(sub_2755EC58C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27557726C;

  return sub_2755DA49C(a1, v7, v8, v1 + v5, v6);
}

uint64_t sub_2755DD284(uint64_t *a1)
{
  v2 = sub_2755EC82C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DC0, &qword_2755F39E8);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_2755EC58C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v54 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - v18;
  v21 = *a1;
  v20 = a1[1];
  sub_2755EC56C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2755756C0(v12, &qword_2809F9DC0, &qword_2755F39E8);
    v22 = sub_2755763AC();
    (*(v3 + 16))(v7, v22, v2);

    v23 = sub_2755EC81C();
    v24 = sub_2755ECB1C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = v3;
      v27 = swift_slowAlloc();
      v57 = v27;
      *v25 = 136315138;
      *(v25 + 4) = sub_2755CC688(v21, v20, &v57);
      _os_log_impl(&dword_275572000, v23, v24, "Invalid URL was stored in LiftUI cache: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x277C7DA70](v27, -1, -1);
      MEMORY[0x277C7DA70](v25, -1, -1);

      return (*(v26 + 8))(v7, v2);
    }

    else
    {

      return (*(v3 + 8))(v7, v2);
    }
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    v29 = v56;
    sub_2755DCCC4(v19);
    if (v29)
    {
      v30 = sub_2755763AC();
      v31 = *(v3 + 16);
      v32 = v55;
      v56 = v2;
      v31(v55, v30, v2);
      v33 = v54;
      (*(v14 + 16))(v54, v19, v13);
      v34 = v29;
      v35 = sub_2755EC81C();
      v36 = sub_2755ECB1C();

      v53 = v36;
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v52 = v19;
        v38 = v37;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v57 = v51;
        *v38 = 136315394;
        sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260]);
        v39 = sub_2755ECCDC();
        v41 = v40;
        v42 = *(v14 + 8);
        v42(v33, v13);
        v43 = sub_2755CC688(v39, v41, &v57);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2112;
        v44 = v29;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 14) = v45;
        v46 = v50;
        *v50 = v45;
        _os_log_impl(&dword_275572000, v35, v53, "Failed to mark LiftUI content at %s for purge with error: %@", v38, 0x16u);
        sub_2755756C0(v46, &qword_2809F9DD0, &qword_2755F39F0);
        MEMORY[0x277C7DA70](v46, -1, -1);
        v47 = v51;
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x277C7DA70](v47, -1, -1);
        MEMORY[0x277C7DA70](v38, -1, -1);

        (*(v3 + 8))(v55, v56);
        return (v42)(v52, v13);
      }

      else
      {

        v48 = *(v14 + 8);
        v48(v33, v13);
        (*(v3 + 8))(v32, v56);
        return (v48)(v19, v13);
      }
    }

    else
    {
      return (*(v14 + 8))(v19, v13);
    }
  }
}

unint64_t sub_2755DD8B0()
{
  result = qword_2809F9E00;
  if (!qword_2809F9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9E00);
  }

  return result;
}

uint64_t sub_2755DDA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_275577558;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LiftUICache.cacheResponse(from:)(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27557726C;

  return v8(a1);
}

uint64_t dispatch thunk of LiftUICache.fetchResponseForURLObjc(url:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2755DE89C;

  return v8(a1);
}

uint64_t dispatch thunk of LiftUICache.fetchResponse(for:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2755DDEEC;

  return v8(a1);
}

uint64_t sub_2755DDEEC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t getEnumTagSinglePayload for LiftUICacheError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LiftUICacheError(_WORD *result, int a2, int a3)
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

uint64_t sub_2755DE118()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_275577558;

  return sub_2755D9C2C(v2, v3, v4);
}

uint64_t sub_2755DE1CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_275577558;

  return sub_2755DBF3C(v2, v3, v5);
}

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2755DE2CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_275577558;

  return sub_2755DC024(a1, v4, v5, v7);
}

uint64_t sub_2755DE398(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_275577558;

  return sub_2755DC408(a1, v5);
}

uint64_t sub_2755DE450(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2755DE464(a1, a2);
  }

  return a1;
}

uint64_t sub_2755DE464(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_2809F9E28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2809F9E28);
    }
  }
}

unint64_t sub_2755DE508()
{
  result = qword_2809F9E10;
  if (!qword_2809F9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9E10);
  }

  return result;
}

uint64_t sub_2755DE55C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2755DE5B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_275577558;

  return sub_275576C48(a1, v5);
}

uint64_t sub_2755DE668()
{
  v2 = *(sub_2755EC58C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_275577558;

  return sub_2755D6014(v6, v7, v8, v4, v0 + v3, v5);
}

uint64_t sub_2755DE854(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2755DE914()
{
  result = qword_280C85020;
  if (!qword_280C85020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C85020);
  }

  return result;
}

uint64_t sub_2755DE9A0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2755EC82C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_2755DE914();
  sub_2755ECB9C();
  return sub_2755EC83C();
}

uint64_t sub_2755DEACC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2755EC82C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
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

void sub_2755DEBF4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2755EC95C();
  v2 = [v0 initWithSuiteName_];

  v3 = type metadata accessor for AppLaunchLinkTracker();
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  if (!v2)
  {
    v5 = [objc_opt_self() standardUserDefaults];
  }

  *&v4[OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults] = v5;
  v8.receiver = v4;
  v8.super_class = v3;
  v6 = v2;
  v7 = objc_msgSendSuper2(&v8, sel_init);

  qword_280C850C8 = v7;
}

id sub_2755DECDC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2755EC95C();
  v2 = [v0 initWithSuiteName_];

  return v2;
}

id sub_2755DED48(id a1)
{
  v3 = objc_allocWithZone(v1);
  if (!a1)
  {
    a1 = [objc_opt_self() standardUserDefaults];
  }

  *&v3[OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t *sub_2755DEDCC()
{
  if (qword_280C850C0 != -1)
  {
    swift_once();
  }

  return &qword_280C850C8;
}

id static AppLaunchLinkTracker.shared.getter()
{
  if (qword_280C850C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280C850C8;

  return v1;
}

id sub_2755DEED4(id a1)
{
  if (!a1)
  {
    a1 = [objc_opt_self() standardUserDefaults];
  }

  *&v1[OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppLaunchLinkTracker();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_2755DEF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E58, &qword_2755F3F08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = *(v3 + OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults);
  v12 = sub_2755EC95C();
  v13 = [v11 objectForKey_];

  if (v13)
  {
    sub_2755ECBAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (*(&v32 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E68, &qword_2755F3F18);
    if (swift_dynamicCast())
    {
      v14 = v30;
      if (v30)
      {
        if (*(v30 + 16))
        {
          v15 = sub_2755750C0(a1, a2);
          if (v16)
          {
            v17 = (*(v14 + 56) + 16 * v15);
            v18 = *v17;
            v19 = v17[1];
            sub_2755DE55C(*v17, v19);

            v20 = sub_2755EC4BC();
            v21 = *(v20 + 48);
            v22 = *(v20 + 52);
            swift_allocObject();
            sub_2755DE55C(v18, v19);
            sub_2755EC4AC();
            v23 = type metadata accessor for AppLaunchEvent();
            sub_2755E30EC(&qword_2809F9E60, type metadata accessor for AppLaunchEvent);
            sub_2755EC49C();
            sub_2755DE464(v18, v19);

            sub_2755DE464(v18, v19);
            (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
            v26 = *(v23 + 20);
            v27 = sub_2755EC61C();
            v28 = *(v27 - 8);
            (*(v28 + 16))(a3, &v10[v26], v27);
            sub_2755E2130(v10);
            return (*(v28 + 56))(a3, 0, 1, v27);
          }
        }
      }
    }
  }

  else
  {
    sub_2755756C0(v33, &qword_2809F9CF8, &qword_2755F3F10);
  }

  v24 = type metadata accessor for AppLaunchEvent();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  sub_2755756C0(v10, &qword_2809F9E58, &qword_2755F3F08);
  v25 = sub_2755EC61C();
  return (*(*(v25 - 8) + 56))(a3, 1, 1, v25);
}

uint64_t sub_2755DF34C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    v4 = type metadata accessor for AppLaunchEvent();
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a3;
    v8 = 1;
  }

  else
  {
    v11 = sub_2755EC4BC();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_2755DE55C(a1, a2);
    sub_2755EC4AC();
    v14 = type metadata accessor for AppLaunchEvent();
    sub_2755E30EC(&qword_2809F9E60, type metadata accessor for AppLaunchEvent);
    sub_2755EC49C();

    sub_2755DE450(a1, a2);
    v5 = *(*(v14 - 8) + 56);
    v7 = a3;
    v8 = 0;
    v6 = v14;
  }

  return v5(v7, v8, 1, v6);
}

uint64_t type metadata accessor for AppLaunchEvent()
{
  result = qword_2809FAD20;
  if (!qword_2809FAD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2755DF698(uint64_t a1, uint64_t a2)
{
  v5 = sub_2755EC6EC();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2755EC48C();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E58, &qword_2755F3F08);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v53 - v14;
  v16 = sub_2755EC61C();
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v53 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  v26 = *(v2 + OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults);
  v27 = sub_2755EC95C();
  v28 = [v26 objectForKey_];

  if (v28)
  {
    sub_2755ECBAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64[0] = v62;
  v64[1] = v63;
  if (!*(&v63 + 1))
  {
    sub_2755756C0(v64, &qword_2809F9CF8, &qword_2755F3F10);
LABEL_12:
    v39 = type metadata accessor for AppLaunchEvent();
    (*(*(v39 - 8) + 56))(v15, 1, 1, v39);
    sub_2755756C0(v15, &qword_2809F9E58, &qword_2755F3F08);
    return -1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E68, &qword_2755F3F18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v29 = v61;
  if (!v61)
  {
    goto LABEL_12;
  }

  if (!*(v61 + 16) || (v30 = sub_2755750C0(a1, a2), (v31 & 1) == 0))
  {

    goto LABEL_12;
  }

  v32 = (*(v29 + 56) + 16 * v30);
  v34 = *v32;
  v33 = v32[1];
  sub_2755DE55C(*v32, v33);

  v35 = sub_2755EC4BC();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_2755DE55C(v34, v33);
  sub_2755EC4AC();
  v38 = type metadata accessor for AppLaunchEvent();
  sub_2755E30EC(&qword_2809F9E60, type metadata accessor for AppLaunchEvent);
  v54 = v33;
  sub_2755EC49C();
  v41 = v54;
  sub_2755DE464(v34, v54);

  sub_2755DE464(v34, v41);
  (*(*(v38 - 8) + 56))(v15, 0, 1, v38);
  v42 = v60;
  (*(v60 + 16))(v23, &v15[*(v38 + 20)], v16);
  sub_2755E2130(v15);
  (*(v42 + 32))(v25, v23, v16);
  v43 = v55;
  sub_2755EC6CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E70, &qword_2755F3F20);
  v44 = sub_2755EC6DC();
  v45 = *(v44 - 8);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2755F3680;
  (*(v45 + 104))(v48 + v47, *MEMORY[0x277CC9968], v44);
  sub_2755E28A8(v48);
  swift_setDeallocating();
  (*(v45 + 8))(v48 + v47, v44);
  swift_deallocClassInstance();
  sub_2755EC5FC();
  sub_2755EC6AC();

  v49 = *(v60 + 8);
  v49(v20, v16);
  (*(v58 + 8))(v43, v59);
  v50 = sub_2755EC47C();
  v52 = v51;
  (*(v56 + 8))(v11, v57);
  v49(v25, v16);
  if (v52)
  {
    return 0;
  }

  else
  {
    return v50;
  }
}

uint64_t sub_2755DFDDC()
{
  v2 = *(v0 + OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults);
  v3 = sub_2755EC95C();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2755ECBAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (!*(&v30 + 1))
  {
    sub_2755756C0(v31, &qword_2809F9CF8, &qword_2755F3F10);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E68, &qword_2755F3F18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E78, &qword_2755F3F28);
  v5 = sub_2755ECC4C();
  v6 = v5;
  v7 = 0;
  v26 = v5;
  v8 = 1 << *(v28 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v28 + 64);
  v11 = (v8 + 63) >> 6;
  v25 = v5 + 64;
  if (v10)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v15 = v12 | (v7 << 6);
      v16 = (*(v28 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v31[0] = *(*(v28 + 56) + 16 * v15);
      v27 = v31[0];

      v1 = v27;
      sub_2755DE55C(v27, *(&v27 + 1));
      sub_2755E00B8(v31, &v29);
      sub_2755DE464(v27, *(&v27 + 1));
      v6 = v26;
      *(v25 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (v26[6] + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      *(v26[7] + 8 * v15) = v29;
      v20 = v26[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v26[2] = v22;
      if (!v10)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v24 = sub_2755E073C(v6);

        return v24;
      }

      v14 = *(v28 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);

  result = sub_2755DE464(v1, v6);
  __break(1u);
  return result;
}

uint64_t sub_2755E00B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E58, &qword_2755F3F08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D78, &qword_2755F3850);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = v44 - v9;
  v10 = sub_2755EC61C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v53 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = v44 - v15;
  v52 = sub_2755EC6EC();
  v50 = *(v52 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2755EC48C();
  v47 = *(v49 - 8);
  v19 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v21 = a1[1];
  v48 = v18;
  sub_2755EC6CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E70, &qword_2755F3F20);
  v23 = sub_2755EC6DC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2755F3680;
  (*(v24 + 104))(v27 + v26, *MEMORY[0x277CC9968], v23);
  v44[1] = sub_2755E28A8(v27);
  swift_setDeallocating();
  (*(v24 + 8))(v27 + v26, v23);
  swift_deallocClassInstance();
  v28 = sub_2755EC4BC();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_2755DE55C(v22, v21);
  sub_2755EC4AC();
  v31 = type metadata accessor for AppLaunchEvent();
  sub_2755E30EC(&qword_2809F9E60, type metadata accessor for AppLaunchEvent);
  v32 = v44[2];
  sub_2755EC49C();
  if (v32)
  {

    sub_2755DE464(v22, v21);
    (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    sub_2755756C0(v6, &qword_2809F9E58, &qword_2755F3F08);
    v33 = v51;
    (*(v11 + 56))(v51, 1, 1, v10);
    v34 = v45;
    sub_2755EC5FC();
    if ((*(v11 + 48))(v33, 1, v10) != 1)
    {
      sub_2755756C0(v33, &qword_2809F9D78, &qword_2755F3850);
    }
  }

  else
  {

    sub_2755DE464(v22, v21);
    (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
    v35 = v51;
    (*(v11 + 16))(v51, &v6[*(v31 + 20)], v10);
    sub_2755E2130(v6);
    (*(v11 + 56))(v35, 0, 1, v10);
    v34 = v45;
    (*(v11 + 32))(v45, v35, v10);
  }

  v36 = v53;
  sub_2755EC5FC();
  v37 = v46;
  v38 = v48;
  sub_2755EC6AC();

  v39 = *(v11 + 8);
  v39(v36, v10);
  v39(v34, v10);
  (*(v50 + 8))(v38, v52);
  v40 = sub_2755EC47C();
  LOBYTE(v38) = v41;
  result = (*(v47 + 8))(v37, v49);
  if (v38)
  {
    v43 = 0;
  }

  else
  {
    v43 = v40;
  }

  *v54 = v43;
  return result;
}

unint64_t sub_2755E073C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v50 = MEMORY[0x277D84F90];
  sub_2755E2448(0, v1, 0);
  v2 = v50;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = sub_2755ECBCC();
  v7 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D18, &qword_2755F3D00);
  v43 = v3;
  v9 = 0;
  v39 = v3 + 72;
  v40 = v1;
  v41 = v7;
  v42 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_28;
    }

    if (v7 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v44 = v9;
    v12 = (*(v3 + 48) + 16 * v6);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v3 + 56) + 8 * v6);
    v48[0] = 0x6449707061;
    v48[1] = 0xE500000000000000;
    v48[2] = v13;
    v48[3] = v14;
    v48[5] = MEMORY[0x277D837D0];
    v49[0] = 0xD000000000000015;
    v49[5] = MEMORY[0x277D83B88];
    v49[1] = 0x80000002755FA760;
    v49[2] = v15;
    v16 = sub_2755ECC6C();
    swift_bridgeObjectRetain_n();

    sub_2755E3070(v48, &v45);
    v18 = v45;
    v17 = v46;
    result = sub_2755750C0(v45, v46);
    if (v19)
    {
      goto LABEL_25;
    }

    *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v20 = (v16[6] + 16 * result);
    *v20 = v18;
    v20[1] = v17;
    result = sub_275578D44(v47, (v16[7] + 32 * result));
    v21 = v16[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_26;
    }

    v16[2] = v23;
    sub_2755E3070(v49, &v45);
    v24 = v45;
    v25 = v46;
    result = sub_2755750C0(v45, v46);
    if (v26)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v27 = (v16[6] + 16 * result);
    *v27 = v24;
    v27[1] = v25;
    result = sub_275578D44(v47, (v16[7] + 32 * result));
    v28 = v16[2];
    v22 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v22)
    {
      goto LABEL_26;
    }

    v16[2] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D10, &qword_2755F3730);
    swift_arrayDestroy();

    v50 = v2;
    v31 = *(v2 + 16);
    v30 = *(v2 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_2755E2448((v30 > 1), v31 + 1, 1);
      v2 = v50;
    }

    *(v2 + 16) = v31 + 1;
    *(v2 + 8 * v31 + 32) = v16;
    v3 = v43;
    v10 = 1 << *(v43 + 32);
    if (v6 >= v10)
    {
      goto LABEL_30;
    }

    v4 = v42;
    v32 = *(v42 + 8 * v11);
    if ((v32 & (1 << v6)) == 0)
    {
      goto LABEL_31;
    }

    LODWORD(v7) = v41;
    if (v41 != *(v43 + 36))
    {
      goto LABEL_32;
    }

    v33 = v32 & (-2 << (v6 & 0x3F));
    if (v33)
    {
      v10 = __clz(__rbit64(v33)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = v11 << 6;
      v35 = v11 + 1;
      v36 = (v39 + 8 * v11);
      while (v35 < (v10 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_2755E30E0(v6, v41, 0);
          v10 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_2755E30E0(v6, v41, 0);
    }

LABEL_4:
    v9 = v44 + 1;
    v6 = v10;
    if (v44 + 1 == v40)
    {
      return v2;
    }
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
LABEL_32:
  __break(1u);
  return result;
}

BOOL sub_2755E0BB8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E58, &qword_2755F3F08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v27 - v7);
  v9 = *(v2 + OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults);
  v10 = sub_2755EC95C();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_2755ECBAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {
    sub_2755756C0(v30, &qword_2809F9CF8, &qword_2755F3F10);
LABEL_12:
    v22 = type metadata accessor for AppLaunchEvent();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    sub_2755756C0(v8, &qword_2809F9E58, &qword_2755F3F08);
    v26 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E68, &qword_2755F3F18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = v27;
  if (!v27)
  {
    goto LABEL_12;
  }

  if (!*(v27 + 16) || (v13 = sub_2755750C0(a1, a2), (v14 & 1) == 0))
  {

    goto LABEL_12;
  }

  v15 = (*(v12 + 56) + 16 * v13);
  v16 = *v15;
  v17 = v15[1];
  sub_2755DE55C(*v15, v17);

  v18 = sub_2755EC4BC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_2755DE55C(v16, v17);
  sub_2755EC4AC();
  v21 = type metadata accessor for AppLaunchEvent();
  sub_2755E30EC(&qword_2809F9E60, type metadata accessor for AppLaunchEvent);
  sub_2755EC49C();
  sub_2755DE464(v16, v17);

  sub_2755DE464(v16, v17);
  (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
  v26 = *v8;
  sub_2755E2130(v8);
LABEL_13:
  v23 = [objc_opt_self() processInfo];
  [v23 operatingSystemVersion];
  v24 = *&v30[0];

  return v26 < v24;
}

void sub_2755E0F94(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v57 = a2;
  v5 = type metadata accessor for AppLaunchEvent();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2755EC61C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2755EC82C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2755763AC();
  v19 = *(v14 + 16);
  v56 = v13;
  v19(v17, v18, v13);
  v20 = *(v9 + 16);
  v61 = a1;
  v59 = v20;
  v20(v12, a1, v8);

  v21 = sub_2755EC81C();
  LODWORD(a1) = sub_2755ECB0C();

  v55 = a1;
  v22 = os_log_type_enabled(v21, a1);
  v60 = v8;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v54 = v9 + 16;
    v24 = v8;
    v25 = v23;
    v53 = swift_slowAlloc();
    *&v66[0] = v53;
    *v25 = 136315394;
    sub_2755E30EC(&qword_2809F9D88, MEMORY[0x277CC9578]);
    v52 = v21;
    v26 = sub_2755ECCDC();
    v27 = v5;
    v28 = a3;
    v30 = v29;
    (*(v9 + 8))(v12, v24);
    v31 = sub_2755CC688(v26, v30, v66);
    a3 = v28;
    v5 = v27;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v32 = v57;
    *(v25 + 14) = sub_2755CC688(v57, a3, v66);
    v33 = v52;
    _os_log_impl(&dword_275572000, v52, v55, "Saving last shown date %s for bundle: %s", v25, 0x16u);
    v34 = v53;
    swift_arrayDestroy();
    MEMORY[0x277C7DA70](v34, -1, -1);
    MEMORY[0x277C7DA70](v25, -1, -1);

    (*(v14 + 8))(v17, v56);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v17, v56);
    v32 = v57;
  }

  v35 = *(v58 + OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults);
  v36 = sub_2755EC95C();
  v37 = [v35 objectForKey_];

  v38 = v62;
  if (v37)
  {
    sub_2755ECBAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66[0] = v64;
  v66[1] = v65;
  if (!*(&v65 + 1))
  {
    sub_2755756C0(v66, &qword_2809F9CF8, &qword_2755F3F10);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E68, &qword_2755F3F18);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v39 = sub_2755E2BC8(MEMORY[0x277D84F90]);
    goto LABEL_12;
  }

  v39 = v63;
LABEL_12:
  v40 = [objc_opt_self() processInfo];
  [v40 operatingSystemVersion];
  v41 = *&v66[0];

  v59(&v38[*(v5 + 20)], v61, v60);
  *v38 = v41;
  v42 = sub_2755EC4EC();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  sub_2755EC4DC();
  sub_2755E30EC(&qword_2809F9E80, type metadata accessor for AppLaunchEvent);
  v45 = sub_2755EC4CC();
  v47 = v46;
  sub_2755E2130(v38);

  sub_2755DE55C(v45, v47);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v66[0] = v39;
  sub_2755E259C(v45, v47, v32, a3, isUniquelyReferenced_nonNull_native);
  sub_2755DE464(v45, v47);
  v49 = sub_2755EC8FC();

  v50 = sub_2755EC95C();
  [v35 setObject:v49 forKey:v50];
}

uint64_t sub_2755E1618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for AppLaunchEvent() + 20);
  v6 = sub_2755EC61C();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_2755E169C()
{
  v0 = sub_2755EC4EC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2755EC4DC();
  type metadata accessor for AppLaunchEvent();
  sub_2755E30EC(&qword_2809F9E80, type metadata accessor for AppLaunchEvent);
  v3 = sub_2755EC4CC();

  return v3;
}

id AppLaunchLinkTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppLaunchLinkTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppLaunchLinkTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2755E196C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppLaunchEvent() + 20);
  v4 = sub_2755EC61C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2755E1A00()
{
  v1 = *v0;
  sub_2755ECD7C();
  MEMORY[0x277C7CE10](v1);
  return sub_2755ECD9C();
}

uint64_t sub_2755E1A74()
{
  v1 = *v0;
  sub_2755ECD7C();
  MEMORY[0x277C7CE10](v1);
  return sub_2755ECD9C();
}

uint64_t sub_2755E1AB8()
{
  if (*v0)
  {
    result = 1702125924;
  }

  else
  {
    result = 0x6F6973726556736FLL;
  }

  *v0;
  return result;
}

uint64_t sub_2755E1AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_2755ECD0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2755ECD0C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2755E1BEC(uint64_t a1)
{
  v2 = sub_2755E2CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2755E1C28(uint64_t a1)
{
  v2 = sub_2755E2CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2755E1C64(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E88, &qword_2755F3F30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2755E2CE0();
  sub_2755ECDBC();
  v11 = *v3;
  v14[15] = 0;
  sub_2755ECCBC();
  if (!v2)
  {
    v12 = *(type metadata accessor for AppLaunchEvent() + 20);
    v14[14] = 1;
    sub_2755EC61C();
    sub_2755E30EC(&qword_2809F9E90, MEMORY[0x277CC9578]);
    sub_2755ECCCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2755E1E1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_2755EC61C();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E98, &qword_2755F3F38);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v19 - v8;
  v10 = type metadata accessor for AppLaunchEvent();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2755E2CE0();
  sub_2755ECDAC();
  if (!v2)
  {
    v21 = v10;
    v15 = v24;
    v16 = v25;
    v28 = 0;
    v17 = v26;
    *v13 = sub_2755ECC9C();
    v27 = 1;
    sub_2755E30EC(&qword_2809F9EA0, MEMORY[0x277CC9578]);
    v20 = v6;
    sub_2755ECCAC();
    (*(v15 + 8))(v9, v17);
    (*(v22 + 32))(v13 + *(v21 + 20), v20, v16);
    sub_2755E2D34(v13, v23);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2755E2130(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2755E218C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EB0, &qword_2755F40F8);
  v36 = a2;
  result = sub_2755ECC5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_2755DE55C(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_2755ECD7C();
      sub_2755EC9AC();
      result = sub_2755ECD9C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_2755E2448(void *a1, int64_t a2, char a3)
{
  result = sub_2755E2468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2755E2468(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EB8, &qword_2755F4100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EA8, &qword_2755F40F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2755E259C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2755750C0(a3, a4);
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
      sub_2755E218C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_2755750C0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_2755ECD2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_2755E2724();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_2755DE464(v26, v27);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

void *sub_2755E2724()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EB0, &qword_2755F40F8);
  v2 = *v0;
  v3 = sub_2755ECC4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_2755DE55C(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2755E28A8(uint64_t a1)
{
  v2 = sub_2755EC6DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EC0, &qword_2755F4108);
    v10 = sub_2755ECBEC();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2755E30EC(&qword_2809F9EC8, MEMORY[0x277CC99D0]);
      v18 = sub_2755EC92C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2755E30EC(&unk_2809F9ED0, MEMORY[0x277CC99D0]);
          v25 = sub_2755EC94C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2755E2BC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EB0, &qword_2755F40F8);
    v3 = sub_2755ECC6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_2755DE55C(v7, v8);
      result = sub_2755750C0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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

unint64_t sub_2755E2CE0()
{
  result = qword_2809FAC10[0];
  if (!qword_2809FAC10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809FAC10);
  }

  return result;
}

uint64_t sub_2755E2D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2755E2EDC()
{
  result = sub_2755EC61C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2755E2F6C()
{
  result = qword_2809FAE30[0];
  if (!qword_2809FAE30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809FAE30);
  }

  return result;
}

unint64_t sub_2755E2FC4()
{
  result = qword_2809FAF40;
  if (!qword_2809FAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FAF40);
  }

  return result;
}

unint64_t sub_2755E301C()
{
  result = qword_2809FAF48[0];
  if (!qword_2809FAF48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809FAF48);
  }

  return result;
}

uint64_t sub_2755E3070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D10, &qword_2755F3730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2755E30E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2755E30EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2755E3134()
{
  v1 = (v0 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource____lazy_storage___backupDeviceUUID);
  v2 = *(v0 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource____lazy_storage___backupDeviceUUID);
  v3 = *(v0 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource____lazy_storage___backupDeviceUUID + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account);
    v6 = objc_allocWithZone(MEMORY[0x277D28A40]);
    v20 = 0;
    v7 = v5;
    v8 = [v6 initWithAccount:v7 delegate:0 eventQueue:0 error:&v20];
    if (v8)
    {
      v9 = v8;
      v10 = v20;

      v11 = [v9 backupDeviceUUID];
      if (v11)
      {
        v12 = v11;
        v4 = sub_2755EC98C();
        v14 = v13;

LABEL_8:
        v17 = *v1;
        v18 = v1[1];
        *v1 = v4;
        v1[1] = v14;

        sub_2755E6980(v17, v18);
        goto LABEL_9;
      }
    }

    else
    {
      v15 = v20;
      v16 = sub_2755EC50C();

      swift_willThrow();
    }

    v4 = 0;
    v14 = 0;
    goto LABEL_8;
  }

LABEL_9:
  sub_2755E729C(v2, v3);
  return v4;
}

id ICQLiftUIDataSource.__allocating_init(account:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_2755F4110;
  *&v3[OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ICQLiftUIDataSource.init(account:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_2755F4110;
  *&v1[OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t ICQLiftUIDataSource.request(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2755EC72C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755EC71C();
  ICQLiftUIDataSource.request(for:timeZone:)(a1, v8, a2);
  return (*(v5 + 8))(v8, v4);
}

void ICQLiftUIDataSource.request(for:timeZone:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v42 = a2;
  v43 = a3;
  v7 = sub_2755EC58C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2755EC82C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2755763AC();
  v18 = *(v13 + 16);
  v40 = v12;
  v18(v16, v17, v12);
  v19 = *(v8 + 16);
  v41 = a1;
  v39 = v7;
  v19(v11, a1, v7);
  v20 = sub_2755EC81C();
  v21 = sub_2755ECB2C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v5;
    v23 = v22;
    v36 = swift_slowAlloc();
    v44 = v36;
    *v23 = 136315138;
    v24 = sub_2755EC52C();
    v38 = v4;
    v26 = v25;
    (*(v8 + 8))(v11, v39);
    v27 = sub_2755CC688(v24, v26, &v44);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_275572000, v20, v21, "Loading LiftUI for url: %s", v23, 0xCu);
    v28 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x277C7DA70](v28, -1, -1);
    v29 = v23;
    v5 = v37;
    MEMORY[0x277C7DA70](v29, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v39);
  }

  (*(v13 + 8))(v16, v40);
  v30 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v31 = sub_2755EC53C();
  v32 = [v30 initWithURL:v31 cachePolicy:1 timeoutInterval:30.0];

  v33 = *(v5 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account);
  v34 = sub_2755E3134();
  sub_2755E3818(v33, v34, v35);

  sub_2755EC45C();
}

void sub_2755E3818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = a3;
  v47 = a2;
  v6 = sub_2755EC66C();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2755EC69C();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2755EC61C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 aa_addMultiUserDeviceHeaderIfEnabled];
  [v3 aa:a1 addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
  [v3 aa_addClientInfoHeaders];
  [v3 aa_addDeviceIDHeader];
  v18 = sub_2755EC95C();
  [v3 aa:v18 addContentTypeHeaders:?];

  sub_2755EC60C();
  sub_2755EC6FC();
  v20 = v19;
  v21 = *(v14 + 8);
  v21(v17, v13);
  if (v20)
  {
    v22 = sub_2755EC95C();

    v23 = sub_2755EC95C();
    [v3 setValue:v22 forHTTPHeaderField:v23];
  }

  sub_2755EC60C();
  v24 = sub_2755EC70C();
  v21(v17, v13);
  if ((v24 * 1000) >> 64 == (1000 * v24) >> 63)
  {
    v54[0] = 1000 * v24;
    sub_2755ECCDC();
    v25 = sub_2755EC95C();

    v26 = sub_2755EC95C();
    [v4 setValue:v25 forHTTPHeaderField:v26];

    sub_2755EC68C();
    v27 = v50;
    sub_2755EC67C();
    (*(v48 + 8))(v12, v49);
    sub_2755EC65C();
    (*(v51 + 8))(v27, v52);
    v28 = sub_2755EC95C();

    v29 = sub_2755EC95C();
    [v4 setValue:v28 forHTTPHeaderField:v29];

    v30 = objc_opt_self();
    v31 = [v30 standardDateFormat_];
    if (!v31)
    {
      sub_2755EC98C();
      v31 = sub_2755EC95C();
    }

    v32 = sub_2755EC95C();
    [v4 &selRef:v31 startActivityWithDelaySecs:v32 completion:?];

    v33 = [v30 standardDateFormat_];
    if (!v33)
    {
      sub_2755EC98C();
      v33 = sub_2755EC95C();
    }

    v34 = sub_2755EC95C();
    [v4 &selRef:v33 startActivityWithDelaySecs:v34 completion:?];

    if (v53)
    {
      v35 = sub_2755EC95C();
      v36 = sub_2755EC95C();
      [v4 &selRef:v35 startActivityWithDelaySecs:v36 completion:?];
    }

    v37 = [objc_opt_self() ams_sharedAccountStore];
    v38 = [v37 ams_activeiTunesAccount];
    v39 = v38;
    if (v38)
    {
      v40 = [v38 ams_DSID];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 stringValue];
        if (!v42)
        {
          sub_2755EC98C();
          v42 = sub_2755EC95C();
        }

        v43 = sub_2755EC95C();
        [v4 &selRef:v42 startActivityWithDelaySecs:v43 completion:?];
      }
    }

    v54[3] = &type metadata for SwiftUIFeatures;
    v54[4] = sub_2755E6888();
    v44 = sub_2755EC73C();
    __swift_destroy_boxed_opaque_existential_0(v54);
    if (v44)
    {
      v45 = sub_2755EC95C();
      v46 = sub_2755EC95C();
      [v4 &selRef:v45 startActivityWithDelaySecs:v46 completion:?];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ICQLiftUIDataSource.data(for:)(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_2755EC72C();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();
  v6 = sub_2755EC46C();
  v2[34] = v6;
  v7 = *(v6 - 8);
  v2[35] = v7;
  v8 = *(v7 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v9 = sub_2755EC82C();
  v2[43] = v9;
  v10 = *(v9 - 8);
  v2[44] = v10;
  v11 = *(v10 + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2755E40DC, 0, 0);
}

uint64_t sub_2755E40DC()
{
  v39 = v0;
  v1 = v0[50];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[42];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[29];
  v8 = sub_2755763AC();
  v0[51] = v8;
  v9 = *(v3 + 16);
  v0[52] = v9;
  v0[53] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v2);
  v10 = *(v6 + 16);
  v0[54] = v10;
  v0[55] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4, v7, v5);
  v11 = sub_2755EC81C();
  v12 = sub_2755ECB0C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[50];
  v16 = v0[43];
  v15 = v0[44];
  v17 = v0[42];
  v19 = v0[34];
  v18 = v0[35];
  if (v13)
  {
    v37 = v0[43];
    v20 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v20 = 136315138;
    sub_2755E68DC();
    v21 = sub_2755ECCDC();
    v36 = v14;
    v23 = v22;
    v34 = v12;
    v24 = *(v18 + 8);
    v24(v17, v19);
    v25 = sub_2755CC688(v21, v23, &v38);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_275572000, v11, v34, "Fetching data for LiftUI request %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x277C7DA70](v35, -1, -1);
    MEMORY[0x277C7DA70](v20, -1, -1);

    v26 = *(v15 + 8);
    v26(v36, v37);
  }

  else
  {

    v24 = *(v18 + 8);
    v24(v17, v19);
    v26 = *(v15 + 8);
    v26(v14, v16);
  }

  v0[56] = v26;
  v0[57] = v24;
  v27 = v0[30];
  v28 = [objc_opt_self() defaultSessionConfiguration];
  v0[58] = v28;
  v29 = [objc_allocWithZone(MEMORY[0x277CF0188]) init];
  [v28 set:v29 appleIDContext:?];

  v0[59] = [objc_opt_self() sessionWithConfiguration:v28 delegate:v27 delegateQueue:0];
  v30 = *(MEMORY[0x277CC9D18] + 4);
  v31 = swift_task_alloc();
  v0[60] = v31;
  *v31 = v0;
  v31[1] = sub_2755E43F0;
  v32 = v0[29];

  return MEMORY[0x28211ECF8](v32, 0);
}

uint64_t sub_2755E43F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 480);
  v9 = *v4;
  v7[61] = a3;
  v7[62] = v3;

  if (v3)
  {
    v10 = sub_2755E5A00;
  }

  else
  {
    v7[63] = a2;
    v7[64] = a1;
    v10 = sub_2755E4524;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2755E4524()
{
  v89 = v0;
  *(v0 + 200) = *(v0 + 512);
  v1 = *(v0 + 488);
  *(v0 + 208) = *(v0 + 504);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 488);
    if ([v3 statusCode] == 401)
    {
      v6 = *(v0 + 432);
      v5 = *(v0 + 440);
      v7 = *(v0 + 424);
      v8 = *(v0 + 328);
      v9 = *(v0 + 272);
      v10 = *(v0 + 232);
      (*(v0 + 416))(*(v0 + 392), *(v0 + 408), *(v0 + 344));
      v6(v8, v10, v9);
      v11 = sub_2755EC81C();
      v81 = sub_2755ECB2C();
      v12 = os_log_type_enabled(v11, v81);
      v13 = *(v0 + 448);
      v84 = *(v0 + 456);
      v14 = *(v0 + 392);
      v15 = *(v0 + 344);
      v16 = *(v0 + 352);
      v17 = *(v0 + 328);
      v19 = *(v0 + 272);
      v18 = *(v0 + 280);
      if (v12)
      {
        v78 = *(v0 + 344);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v88 = v21;
        *v20 = 136315138;
        sub_2755E68DC();
        v72 = v14;
        v73 = v13;
        v22 = sub_2755ECCDC();
        v24 = v23;
        v84(v17, v19);
        v25 = sub_2755CC688(v22, v24, &v88);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_275572000, v11, v81, "LiftUI auth failure. Renewing credentials for request %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x277C7DA70](v21, -1, -1);
        MEMORY[0x277C7DA70](v20, -1, -1);

        v73(v72, v78);
        goto LABEL_16;
      }

LABEL_15:

      v84(v17, v19);
      (v13)(v14, v15);
LABEL_16:
      v31 = [objc_opt_self() defaultStore];
      *(v0 + 520) = v31;
      if (v31)
      {
        v45 = v31;
        v46 = *(*(v0 + 240) + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account);
        *(v0 + 528) = v46;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 216;
        *(v0 + 24) = sub_2755E4C1C;
        v47 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9F00, &unk_2755F4128);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_2755E5DAC;
        *(v0 + 104) = &block_descriptor_3;
        *(v0 + 112) = v47;
        [v45 renewCredentialsForAccount:v46 completion:v0 + 80];
        v31 = (v0 + 16);

        return MEMORY[0x282200938](v31);
      }

LABEL_28:
      __break(1u);
      return MEMORY[0x282200938](v31);
    }
  }

  v26 = *(v0 + 432);
  v19 = *(v0 + 440);
  v27 = *(v0 + 424);
  v28 = *(v0 + 288);
  v29 = *(v0 + 272);
  v14 = *(v0 + 232);
  (*(v0 + 416))(*(v0 + 360), *(v0 + 408), *(v0 + 344));
  v30 = *(v0 + 200);
  v15 = *(v0 + 208);
  v26(v28, v14, v29);
  sub_2755DE55C(v30, v15);
  v11 = sub_2755EC81C();
  v17 = sub_2755ECB0C();
  if (os_log_type_enabled(v11, v17))
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v82 = v31;
    v88 = v31;
    *v13 = 134218242;
    v32 = v15 >> 62;
    LODWORD(v84) = v17;
    if ((v15 >> 62) > 1)
    {
      if (v32 == 2)
      {
        v43 = *(v30 + 16);
        v42 = *(v30 + 24);
        v44 = __OFSUB__(v42, v43);
        v33 = v42 - v43;
        if (v44)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        v33 = 0;
      }
    }

    else if (v32)
    {
      LODWORD(v33) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        __break(1u);
        goto LABEL_28;
      }

      v33 = v33;
    }

    else
    {
      v33 = BYTE6(v15);
    }

    v48 = *(v0 + 448);
    v49 = *(v0 + 456);
    v74 = *(v0 + 352);
    v76 = *(v0 + 344);
    v79 = *(v0 + 360);
    v51 = *(v0 + 280);
    v50 = *(v0 + 288);
    v52 = *(v0 + 272);
    *(v13 + 4) = v33;
    sub_2755DE464(v30, v15);
    *(v13 + 12) = 2080;
    sub_2755E68DC();
    v53 = sub_2755ECCDC();
    v55 = v54;
    v49(v50, v52);
    v56 = sub_2755CC688(v53, v55, &v88);

    *(v13 + 14) = v56;
    _os_log_impl(&dword_275572000, v11, v84, "Finished fetching data (%ld bytes) for LiftUI request %s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x277C7DA70](v82, -1, -1);
    MEMORY[0x277C7DA70](v13, -1, -1);

    v48(v79, v76);
  }

  else
  {
    v34 = *(v0 + 456);
    v85 = *(v0 + 448);
    v35 = *(v0 + 352);
    v36 = *(v0 + 360);
    v37 = *(v0 + 344);
    v38 = v11;
    v39 = *(v0 + 280);
    v40 = *(v0 + 288);
    v41 = *(v0 + 272);

    sub_2755DE464(v30, v15);
    v34(v40, v41);
    v85(v36, v37);
  }

  v57 = *(v0 + 488);
  v59 = *(v0 + 464);
  v58 = *(v0 + 472);
  [v58 invalidateAndCancel];

  swift_beginAccess();
  v61 = *(v0 + 200);
  v60 = *(v0 + 208);
  sub_2755DE55C(v61, v60);
  sub_2755DE464(v61, v60);
  v63 = *(v0 + 392);
  v62 = *(v0 + 400);
  v65 = *(v0 + 376);
  v64 = *(v0 + 384);
  v67 = *(v0 + 360);
  v66 = *(v0 + 368);
  v69 = *(v0 + 328);
  v68 = *(v0 + 336);
  v75 = *(v0 + 320);
  v77 = *(v0 + 312);
  v80 = *(v0 + 304);
  v83 = *(v0 + 296);
  v86 = *(v0 + 288);
  v87 = *(v0 + 264);

  v70 = *(v0 + 8);

  return v70(v61, v60);
}

uint64_t sub_2755E4C1C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 536) = v2;
  if (v2)
  {
    v3 = sub_2755E5B24;
  }

  else
  {
    v3 = sub_2755E4D2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2755E4D2C()
{
  v110 = v0;
  v1 = *(v0 + 216);

  if (v1)
  {
    v3 = *(v0 + 432);
    v2 = *(v0 + 440);
    v4 = *(v0 + 424);
    v5 = *(v0 + 296);
    v6 = *(v0 + 272);
    v7 = *(v0 + 232);
    (*(v0 + 416))(*(v0 + 368), *(v0 + 408), *(v0 + 344));
    v3(v5, v7, v6);
    v8 = sub_2755EC81C();
    v9 = sub_2755ECB1C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 488);
    v98 = *(v0 + 472);
    v102 = *(v0 + 464);
    v12 = *(v0 + 448);
    v94 = *(v0 + 456);
    v13 = *(v0 + 368);
    v14 = *(v0 + 344);
    v106 = *(v0 + 352);
    v15 = *(v0 + 296);
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);
    if (v10)
    {
      log = v8;
      v18 = swift_slowAlloc();
      v90 = v13;
      v19 = swift_slowAlloc();
      v109 = v19;
      *v18 = 136315138;
      sub_2755E68DC();
      v85 = v14;
      v87 = v12;
      v20 = sub_2755ECCDC();
      v22 = v21;
      v94(v15, v17);
      v23 = sub_2755CC688(v20, v22, &v109);

      *(v18 + 4) = v23;
      v24 = "Failed to renew credentials for request %s";
LABEL_9:
      _os_log_impl(&dword_275572000, log, v9, v24, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x277C7DA70](v19, -1, -1);
      MEMORY[0x277C7DA70](v18, -1, -1);

      v87(v90, v85);
LABEL_11:
      v105 = *(v0 + 200);
      v108 = *(v0 + 208);
      v66 = *(v0 + 392);
      v65 = *(v0 + 400);
      v68 = *(v0 + 376);
      v67 = *(v0 + 384);
      v70 = *(v0 + 360);
      v69 = *(v0 + 368);
      v72 = *(v0 + 328);
      v71 = *(v0 + 336);
      v73 = *(v0 + 312);
      v74 = *(v0 + 320);
      v89 = *(v0 + 304);
      v93 = *(v0 + 296);
      v97 = *(v0 + 288);
      v101 = *(v0 + 264);

      v75 = *(v0 + 8);

      return v75(v105, v108);
    }

    goto LABEL_10;
  }

  v25 = *(v0 + 232);
  v26 = sub_2755EC44C();
  [v26 mutableCopy];

  sub_2755ECBAC();
  swift_unknownObjectRelease();
  sub_2755E6934();
  if (!swift_dynamicCast())
  {
    v54 = *(v0 + 432);
    v53 = *(v0 + 440);
    v55 = *(v0 + 424);
    v56 = *(v0 + 304);
    v57 = *(v0 + 272);
    v58 = *(v0 + 232);
    (*(v0 + 416))(*(v0 + 376), *(v0 + 408), *(v0 + 344));
    v54(v56, v58, v57);
    v8 = sub_2755EC81C();
    v9 = sub_2755ECB1C();
    v59 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 488);
    v98 = *(v0 + 472);
    v102 = *(v0 + 464);
    v12 = *(v0 + 448);
    v94 = *(v0 + 456);
    v13 = *(v0 + 376);
    v14 = *(v0 + 344);
    v107 = *(v0 + 352);
    v15 = *(v0 + 304);
    v17 = *(v0 + 272);
    v60 = *(v0 + 280);
    if (v59)
    {
      log = v8;
      v18 = swift_slowAlloc();
      v90 = v13;
      v19 = swift_slowAlloc();
      v109 = v19;
      *v18 = 136315138;
      sub_2755E68DC();
      v85 = v14;
      v87 = v12;
      v61 = sub_2755ECCDC();
      v63 = v62;
      v94(v15, v17);
      v64 = sub_2755CC688(v61, v63, &v109);

      *(v18 + 4) = v64;
      v24 = "Failed to renew credentials for request %s. Unable to rerun request.";
      goto LABEL_9;
    }

LABEL_10:

    v94(v15, v17);
    v12(v13, v14);
    goto LABEL_11;
  }

  v27 = *(v0 + 528);
  v99 = *(v0 + 432);
  v103 = *(v0 + 440);
  v91 = *(v0 + 416);
  v95 = *(v0 + 424);
  v28 = *(v0 + 384);
  v82 = *(v0 + 344);
  loga = *(v0 + 408);
  v29 = *(v0 + 264);
  v86 = *(v0 + 320);
  v88 = *(v0 + 272);
  v30 = *(v0 + 248);
  v31 = *(v0 + 256);
  v33 = *(v0 + 232);
  v32 = *(v0 + 240);
  *(v0 + 544) = *(v0 + 224);
  v34 = sub_2755E3134();
  v36 = v35;
  sub_2755EC71C();
  sub_2755E3818(v27, v34, v36);

  (*(v31 + 8))(v29, v30);
  v91(v28, loga, v82);
  v99(v86, v33, v88);
  v37 = sub_2755EC81C();
  v38 = sub_2755ECB2C();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 448);
  v104 = *(v0 + 456);
  v41 = *(v0 + 384);
  v42 = *(v0 + 344);
  v43 = *(v0 + 352);
  v44 = *(v0 + 320);
  v46 = *(v0 + 272);
  v45 = *(v0 + 280);
  if (v39)
  {
    v100 = *(v0 + 344);
    v47 = swift_slowAlloc();
    v96 = v40;
    v48 = swift_slowAlloc();
    v109 = v48;
    *v47 = 136315138;
    sub_2755E68DC();
    v92 = v41;
    v49 = sub_2755ECCDC();
    v51 = v50;
    v104(v44, v46);
    v52 = sub_2755CC688(v49, v51, &v109);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_275572000, v37, v38, "Renewing credentials succeeded for request %s, retrying", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x277C7DA70](v48, -1, -1);
    MEMORY[0x277C7DA70](v47, -1, -1);

    v96(v92, v100);
  }

  else
  {

    v104(v44, v46);
    v40(v41, v42);
  }

  v77 = *(v0 + 312);
  sub_2755EC45C();
  v78 = *(MEMORY[0x277CC9D18] + 4);
  v79 = swift_task_alloc();
  *(v0 + 552) = v79;
  *v79 = v0;
  v79[1] = sub_2755E5480;
  v80 = *(v0 + 472);
  v81 = *(v0 + 312);

  return MEMORY[0x28211ECF8](v81, 0);
}

uint64_t sub_2755E5480(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = *(*v4 + 552);
  v10 = *v4;
  v8[70] = v3;

  v11 = v8[57];
  v12 = v8[39];
  v13 = v8[35];
  v14 = v8[34];
  if (v3)
  {
    v11(v12, v14);
    v15 = sub_2755E5C6C;
  }

  else
  {
    v8[71] = a2;
    v8[72] = a1;
    v11(v12, v14);

    v15 = sub_2755E5634;
  }

  return MEMORY[0x2822009F8](v15, 0, 0);
}

uint64_t sub_2755E5634()
{
  v65 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 544);

  sub_2755DE464(*(v0 + 200), *(v0 + 208));
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 424);
  v7 = *(v0 + 288);
  v8 = *(v0 + 272);
  v9 = *(v0 + 232);
  (*(v0 + 416))(*(v0 + 360), *(v0 + 408), *(v0 + 344));
  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v5(v7, v9, v8);
  sub_2755DE55C(v10, v11);
  v12 = sub_2755EC81C();
  v13 = sub_2755ECB0C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    result = swift_slowAlloc();
    v58 = result;
    v64 = result;
    *v14 = 134218242;
    v16 = v11 >> 62;
    v61 = v13;
    if ((v11 >> 62) > 1)
    {
      if (v16 != 2)
      {
        v17 = 0;
        goto LABEL_13;
      }

      v26 = *(v10 + 16);
      v25 = *(v10 + 24);
      v27 = __OFSUB__(v25, v26);
      v17 = v25 - v26;
      if (!v27)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v17 = BYTE6(v11);
LABEL_13:
      v28 = *(v0 + 456);
      v54 = *(v0 + 360);
      v56 = *(v0 + 448);
      v50 = *(v0 + 352);
      v52 = *(v0 + 344);
      v30 = *(v0 + 280);
      v29 = *(v0 + 288);
      v31 = *(v0 + 272);
      *(v14 + 4) = v17;
      sub_2755DE464(v10, v11);
      *(v14 + 12) = 2080;
      sub_2755E68DC();
      v32 = sub_2755ECCDC();
      v34 = v33;
      v28(v29, v31);
      v35 = sub_2755CC688(v32, v34, &v64);

      *(v14 + 14) = v35;
      _os_log_impl(&dword_275572000, v12, v61, "Finished fetching data (%ld bytes) for LiftUI request %s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x277C7DA70](v58, -1, -1);
      MEMORY[0x277C7DA70](v14, -1, -1);

      v56(v54, v52);
      goto LABEL_14;
    }

    LODWORD(v17) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
      return result;
    }

    v17 = v17;
    goto LABEL_13;
  }

  v18 = *(v0 + 456);
  v59 = *(v0 + 360);
  v62 = *(v0 + 448);
  v19 = v12;
  v21 = *(v0 + 344);
  v20 = *(v0 + 352);
  v22 = *(v0 + 280);
  v23 = *(v0 + 288);
  v24 = *(v0 + 272);

  sub_2755DE464(v10, v11);
  v18(v23, v24);
  v62(v59, v21);
LABEL_14:
  v36 = *(v0 + 488);
  v38 = *(v0 + 464);
  v37 = *(v0 + 472);
  [v37 invalidateAndCancel];

  swift_beginAccess();
  v40 = *(v0 + 200);
  v39 = *(v0 + 208);
  sub_2755DE55C(v40, v39);
  sub_2755DE464(v40, v39);
  v42 = *(v0 + 392);
  v41 = *(v0 + 400);
  v44 = *(v0 + 376);
  v43 = *(v0 + 384);
  v46 = *(v0 + 360);
  v45 = *(v0 + 368);
  v48 = *(v0 + 328);
  v47 = *(v0 + 336);
  v51 = *(v0 + 320);
  v53 = *(v0 + 312);
  v55 = *(v0 + 304);
  v57 = *(v0 + 296);
  v60 = *(v0 + 288);
  v63 = *(v0 + 264);

  v49 = *(v0 + 8);

  return v49(v40, v39);
}

uint64_t sub_2755E5A00()
{
  v1 = *(v0 + 472);

  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v9 = *(v0 + 328);
  v8 = *(v0 + 336);
  v10 = *(v0 + 312);
  v11 = *(v0 + 320);
  v14 = *(v0 + 304);
  v15 = *(v0 + 296);
  v16 = *(v0 + 288);
  v17 = *(v0 + 264);
  v18 = *(v0 + 496);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2755E5B24()
{
  v1 = v0[67];
  v2 = v0[65];
  v3 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  swift_willThrow();

  sub_2755DE464(v0[25], v0[26]);
  v7 = v0[49];
  v6 = v0[50];
  v9 = v0[47];
  v8 = v0[48];
  v11 = v0[45];
  v10 = v0[46];
  v13 = v0[41];
  v12 = v0[42];
  v14 = v0[39];
  v15 = v0[40];
  v18 = v0[38];
  v19 = v0[37];
  v20 = v0[36];
  v21 = v0[33];
  v22 = v0[67];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2755E5C6C()
{
  v1 = v0[68];
  v2 = v0[61];
  v4 = v0[58];
  v3 = v0[59];

  sub_2755DE464(v0[25], v0[26]);
  v6 = v0[49];
  v5 = v0[50];
  v8 = v0[47];
  v7 = v0[48];
  v10 = v0[45];
  v9 = v0[46];
  v12 = v0[41];
  v11 = v0[42];
  v13 = v0[39];
  v14 = v0[40];
  v17 = v0[38];
  v18 = v0[37];
  v19 = v0[36];
  v20 = v0[33];
  v21 = v0[70];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2755E5DAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F9F90, &qword_2755F3A50);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

id ICQLiftUIDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICQLiftUIDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ICQLiftUIDataSource.urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v58 = a6;
  v59 = a5;
  v60 = a4;
  v57 = sub_2755EC46C();
  v61 = *(v57 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9F10, &qword_2755F39E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v51 - v10;
  v11 = sub_2755EC72C();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2755EC82C();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v55 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - v20;
  v22 = sub_2755763AC();
  v23 = v16[2];
  v23(v21, v22, v15);
  v24 = sub_2755EC81C();
  v25 = sub_2755ECB2C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_275572000, v24, v25, "ICQLiftUIDataSource handling redirect, re-adding headers", v26, 2u);
    MEMORY[0x277C7DA70](v26, -1, -1);
  }

  v27 = v16[1];
  v27(v21, v15);
  v28 = v60;
  v29 = sub_2755EC44C();
  [v29 mutableCopy];

  sub_2755ECBAC();
  swift_unknownObjectRelease();
  sub_2755E6934();
  if (swift_dynamicCast())
  {
    v30 = v62;
    v31 = *(v53 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account);
    v32 = sub_2755E3134();
    v34 = v33;
    sub_2755EC71C();
    sub_2755E3818(v31, v32, v34);

    (*(v51 + 8))(v14, v52);
    v35 = v56;
    sub_2755EC45C();
    (*(v61 + 56))(v35, 0, 1, v57);
    v59(v35);
  }

  else
  {
    v53 = v27;
    v23(v55, v22, v15);
    v36 = v61;
    v37 = v54;
    v38 = v57;
    v52 = *(v61 + 16);
    v52(v54, v28, v57);
    v39 = sub_2755EC81C();
    v40 = sub_2755ECB1C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v63 = v42;
      *v41 = 136315138;
      sub_2755E68DC();
      v43 = sub_2755ECCDC();
      v44 = v37;
      v46 = v45;
      (*(v61 + 8))(v44, v38);
      v47 = sub_2755CC688(v43, v46, &v63);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_275572000, v39, v40, "Failed to copy %s. Skipping adding headers", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      v48 = v42;
      v28 = v60;
      MEMORY[0x277C7DA70](v48, -1, -1);
      v49 = v41;
      v36 = v61;
      MEMORY[0x277C7DA70](v49, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v37, v38);
    }

    v53(v55, v15);
    v35 = v56;
    v52(v56, v28, v38);
    (*(v36 + 56))(v35, 0, 1, v38);
    v59(v35);
  }

  return sub_2755E6994(v35);
}

BOOL sub_2755E66E0()
{
  v0 = sub_2755ECC8C();

  return v0 != 0;
}

uint64_t sub_2755E6740()
{
  sub_2755ECD7C();
  sub_2755EC9AC();
  return sub_2755ECD9C();
}

uint64_t sub_2755E67AC()
{
  sub_2755ECD7C();
  sub_2755EC9AC();
  return sub_2755ECD9C();
}

uint64_t sub_2755E67FC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2755ECC8C();

  *a2 = v5 != 0;
  return result;
}

void *sub_2755E686C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_2755E6888()
{
  result = qword_2809F9EF0;
  if (!qword_2809F9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9EF0);
  }

  return result;
}

unint64_t sub_2755E68DC()
{
  result = qword_2809F9EF8;
  if (!qword_2809F9EF8)
  {
    sub_2755EC46C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9EF8);
  }

  return result;
}

unint64_t sub_2755E6934()
{
  result = qword_2809F9F08;
  if (!qword_2809F9F08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809F9F08);
  }

  return result;
}

uint64_t sub_2755E6980(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2755E6994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9F10, &qword_2755F39E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2755E6A00()
{
  result = qword_2809F9F18;
  if (!qword_2809F9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9F18);
  }

  return result;
}

void type metadata accessor for ACAccountCredentialRenewResult()
{
  if (!qword_2809F9F88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2809F9F88);
    }
  }
}

uint64_t sub_2755E6B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v78 = a1;
  v73 = a2;
  v3 = sub_2755EC46C();
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9F10, &qword_2755F39E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v75 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v76 = &v68 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v68 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v68 - v15;
  v17 = sub_2755EC72C();
  v71 = *(v17 - 8);
  v72 = v17;
  v18 = *(v71 + 8);
  MEMORY[0x28223BE20](v17);
  v70 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2755EC82C();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v68 - v26;
  v28 = sub_2755763AC();
  v68 = v21[2];
  v69 = v28;
  v68(v27);
  v29 = sub_2755EC81C();
  v30 = sub_2755ECB2C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v14;
    v32 = v25;
    v33 = v16;
    v34 = v20;
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_275572000, v29, v30, "ICQLiftUIDataSource handling redirect, re-adding headers", v35, 2u);
    v36 = v35;
    v20 = v34;
    v16 = v33;
    v25 = v32;
    v14 = v31;
    MEMORY[0x277C7DA70](v36, -1, -1);
  }

  v37 = v21[1];
  v37(v27, v20);
  v38 = v78;
  v39 = sub_2755EC44C();
  [v39 mutableCopy];

  sub_2755ECBAC();
  swift_unknownObjectRelease();
  sub_2755E6934();
  if (swift_dynamicCast())
  {
    v40 = v81;
    v41 = *(v73 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account);
    v42 = sub_2755E3134();
    v44 = v43;
    v45 = v70;
    sub_2755EC71C();
    sub_2755E3818(v41, v42, v44);

    (*(v71 + 1))(v45, v72);
    sub_2755EC45C();
    v47 = v79;
    v46 = v80;
    (*(v79 + 56))(v16, 0, 1, v80);
    sub_2755E722C(v16, v14);
    if ((*(v47 + 48))(v14, 1, v46) == 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = sub_2755EC44C();
      (*(v47 + 8))(v14, v46);
    }

    (*(v77 + 16))(v77, v48);
  }

  else
  {
    v71 = v37;
    v73 = v20;
    (v68)(v25, v69, v20);
    v50 = v79;
    v49 = v80;
    v51 = v74;
    v72 = *(v79 + 16);
    v72(v74, v38, v80);
    v52 = sub_2755EC81C();
    v53 = sub_2755ECB1C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v51;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v82 = v56;
      *v55 = 136315138;
      sub_2755E68DC();
      v57 = sub_2755ECCDC();
      v70 = v25;
      v58 = v57;
      v60 = v59;
      v61 = *(v79 + 8);
      v61(v54, v80);
      v62 = sub_2755CC688(v58, v60, &v82);
      v49 = v80;

      *(v55 + 4) = v62;
      _os_log_impl(&dword_275572000, v52, v53, "Failed to copy %s. Skipping adding headers", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      v63 = v56;
      v50 = v79;
      MEMORY[0x277C7DA70](v63, -1, -1);
      MEMORY[0x277C7DA70](v55, -1, -1);

      v64 = v70;
    }

    else
    {

      v61 = *(v50 + 8);
      v61(v51, v49);
      v64 = v25;
    }

    v71(v64, v73);
    v66 = v75;
    v65 = v76;
    v72(v76, v78, v49);
    (*(v50 + 56))(v65, 0, 1, v49);
    sub_2755E722C(v65, v66);
    if ((*(v50 + 48))(v66, 1, v49) == 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = sub_2755EC44C();
      v61(v66, v49);
    }

    (*(v77 + 16))(v77, v48);
    v16 = v65;
  }

  return sub_2755E6994(v16);
}

uint64_t sub_2755E722C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9F10, &qword_2755F39E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2755E729C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2755E72B0()
{
  _s13OptionalErrorOMa();
  swift_getWitnessTable();

  return swift_allocError();
}

uint64_t sub_2755E7330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v9, a2);
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v7, v10);
  }

  _s13OptionalErrorOMa();
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

uint64_t StorageSummaryModel.storageSummary.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  return v1;
}

uint64_t sub_2755E75D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  *a2 = v5;
  return result;
}

uint64_t sub_2755E7654(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_2755EC8AC();
}

uint64_t StorageSummaryModel.storageSummary.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2755EC8AC();
}

uint64_t (*StorageSummaryModel.storageSummary.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_2755EC88C();
  return sub_2755CA184;
}

uint64_t sub_2755E7818(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA070, &qword_2755F43E8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA068, &qword_2755F43E0);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t StorageSummaryModel.$storageSummary.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA070, &qword_2755F43E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA068, &qword_2755F43E0);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*StorageSummaryModel.$storageSummary.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA070, &qword_2755F43E8);
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

  v10 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__storageSummary;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA068, &qword_2755F43E0);
  sub_2755EC86C();
  swift_endAccess();
  return sub_2755CA58C;
}

uint64_t StorageSummaryModel.didError.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  return v1;
}

uint64_t sub_2755E7CB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  *a2 = v5;
  return result;
}

uint64_t sub_2755E7D38(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2755EC8AC();
}

uint64_t StorageSummaryModel.didError.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2755EC8AC();
}

uint64_t (*StorageSummaryModel.didError.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_2755EC88C();
  return sub_2755CDDE0;
}

uint64_t sub_2755E7EF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_2755EC86C();
  return swift_endAccess();
}

uint64_t sub_2755E7F74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C68, &qword_2755F34E0);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t StorageSummaryModel.$didError.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C68, &qword_2755F34E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*StorageSummaryModel.$didError.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C68, &qword_2755F34E0);
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

  v10 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__didError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  sub_2755EC86C();
  swift_endAccess();
  return sub_2755CDDE4;
}

id sub_2755E83B0()
{
  v1 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel____lazy_storage___dataController;
  v2 = *(v0 + OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel____lazy_storage___dataController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel____lazy_storage___dataController);
  }

  else
  {
    v4 = [objc_allocWithZone(ICQCloudStorageDataController) initWithAccount_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *StorageSummaryModel.__allocating_init(account:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_2755E8BE4(a1);

  return v5;
}

char *StorageSummaryModel.init(account:)(void *a1)
{
  v2 = sub_2755E8BE4(a1);

  return v2;
}

void *StorageSummaryModel.deinit()
{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for DarwinRegistrar();
  sub_2755CE05C(v0);
  v3 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__storageSummary;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA068, &qword_2755F43E0);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__didError;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  (*(*(v6 - 8) + 8))(v1 + v5, v6);

  return v1;
}

uint64_t StorageSummaryModel.__deallocating_deinit()
{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for DarwinRegistrar();
  sub_2755CE05C(v0);
  v3 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__storageSummary;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA068, &qword_2755F43E0);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__didError;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  (*(*(v6 - 8) + 8))(v1 + v5, v6);

  v7 = *(*v1 + 48);
  v8 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall StorageSummaryModel.fetchCloudStorageSummary(shouldIgnoreCache:)(Swift::Bool shouldIgnoreCache)
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v8[0]) = 0;

  sub_2755EC8AC();
  v3 = sub_2755E83B0();
  [v3 setShouldIgnoreCache_];

  v4 = *(v1 + OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel____lazy_storage___dataController);
  v5 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_2755E8EB0;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2755CBC80;
  v8[3] = &block_descriptor_4;
  v6 = _Block_copy(v8);
  v7 = v4;

  [v7 fetchStorageSummaryWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_2755E8884(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_2755EC8CC();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2755EC8EC();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755CDAE8(0, &qword_2809F9CC8, 0x277D85C78);
  v14 = sub_2755ECB3C();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a1;
  v15[4] = a3;
  aBlock[4] = sub_2755E91DC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275578EB8;
  aBlock[3] = &block_descriptor_14;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  v18 = a1;

  sub_2755EC8DC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2755CDD08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CD8, &unk_2755F44F0);
  sub_2755CDD60();
  sub_2755ECBBC();
  MEMORY[0x277C7CBD0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_2755E8B3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    StorageSummaryModel.fetchCloudStorageSummary(shouldIgnoreCache:)(1);
  }

  return result;
}

uint64_t sub_2755E8B88@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2755EC84C();
  *a1 = result;
  return result;
}

char *sub_2755E8BE4(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA068, &qword_2755F43E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__storageSummary;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA060, &qword_2755F4390);
  sub_2755EC85C();
  (*(v11 + 32))(&v2[v15], v14, v10);
  v16 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__didError;
  LOBYTE(v25) = 0;
  sub_2755EC85C();
  (*(v6 + 32))(&v2[v16], v9, v5);
  *&v2[OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel____lazy_storage___dataController] = 0;
  *&v2[OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel_account] = a1;
  v17 = a1;
  v18 = sub_2755E83B0();
  v19 = [v18 cachedStorageSummary];

  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v19;

  sub_2755EC8AC();
  type metadata accessor for DarwinRegistrar();
  v20 = sub_2755CDDE8();
  v21 = *v20;
  v22 = v20[1];

  sub_2755CDE10(v2, v21, v22, sub_2755E8B3C);

  return v2;
}

uint64_t _s11iCloudQuota19StorageSummaryModelC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  if (v9 && (sub_2755CDAE8(0, &unk_2809FA080, off_27A650D48), v4 = sub_2755ECB7C(), v9, v9, (v4 & 1) == 0))
  {
    v7 = 0;
  }

  else
  {
    sub_2755CDAE8(0, &qword_2809F9CA8, 0x277D82BB8);
    v5 = *(a1 + OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel_account);
    v6 = *(a2 + OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel_account);
    v7 = sub_2755ECB7C();
  }

  return v7 & 1;
}

uint64_t type metadata accessor for StorageSummaryModel()
{
  result = qword_2809FB590;
  if (!qword_2809FB590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2755E9068()
{
  sub_2755E9178();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2755CD9E4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2755E9178()
{
  if (!qword_2809FA078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FA060, &qword_2755F4390);
    v0 = sub_2755EC8BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FA078);
    }
  }
}

uint64_t sub_2755E91DC()
{
  v1 = v0[3];
  v2 = v0[4];
  if (v0[2])
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (v3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_2755EC8AC();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v1;
    return sub_2755EC8AC();
  }

  return result;
}

void _ICQActionForString_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "_ICQActionFromString - illegal action %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void ICQUsedDiskSpaceForVolume_cold_1(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "UInt64 ICQUsedDiskSpaceForVolume(NSString *__strong _Nonnull)";
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "Error in %s: %d", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void ___handlePushReceivedDarwinNotification_block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_4(&dword_275572000, a2, a3, "darwin notification %@ is not handled", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void _ICQServerDictionaryForBundleIdentifier_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_275572000, v0, OS_LOG_TYPE_DEBUG, "appId array: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}