uint64_t AppSupportQuery.intentID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppSupportQuery.allowedSiriAuthorizationStatus.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t AppSupportQuery.allowedExtensionPointIdentifiers.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

id sub_2661E1B08()
{
  v1 = [v0 bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() applicationWithBundleIdentifier_];

    v4 = [v3 isHidden];
  }

  else
  {
    if (qword_280FDA6F0 != -1)
    {
      swift_once();
    }

    v5 = sub_2661E62DC();
    __swift_project_value_buffer(v5, qword_280FDAE30);
    v6 = v0;
    v3 = sub_2661E62CC();
    v7 = sub_2661E655C();

    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&dword_2661CF000, v3, v7, "No app bundle id found for %@. Hidden app check is not applicable.", v8, 0xCu);
      sub_2661E4320(v9, &qword_280066BF8, &qword_2661E7188);
      MEMORY[0x26677E2B0](v9, -1, -1);
      MEMORY[0x26677E2B0](v8, -1, -1);
    }

    v4 = 0;
  }

  return v4;
}

id sub_2661E1CE4()
{
  v1 = [v0 containingBundle];
  if (v1 && (v2 = v1, v3 = [v1 bundleIdentifier], v2, v3))
  {
    v4 = [objc_opt_self() applicationWithBundleIdentifier_];

    v5 = [v4 isHidden];
  }

  else
  {
    if (qword_280FDA6F0 != -1)
    {
      swift_once();
    }

    v6 = sub_2661E62DC();
    __swift_project_value_buffer(v6, qword_280FDAE30);
    v7 = v0;
    v4 = sub_2661E62CC();
    v8 = sub_2661E655C();

    if (os_log_type_enabled(v4, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v7;
      *v10 = v7;
      v11 = v7;
      _os_log_impl(&dword_2661CF000, v4, v8, "No container app bundle id found for plugin proxy %@. Hidden app check is not applicable.", v9, 0xCu);
      sub_2661E4320(v10, &qword_280066BF8, &qword_2661E7188);
      MEMORY[0x26677E2B0](v10, -1, -1);
      MEMORY[0x26677E2B0](v9, -1, -1);
    }

    v5 = 0;
  }

  return v5;
}

id sub_2661E1EAC()
{
  result = [v0 containingBundle];
  if (result)
  {
    v2 = result;
    v3 = [result bundleIdentifier];

    if (v3)
    {
      sub_2661E640C();

      v4 = objc_opt_self();
      v5 = sub_2661E63FC();

      v6 = [v4 _siriAuthorizationStatusForAppID_];

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2661E1F88(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_2661E640C();

  return v6;
}

id sub_2661E2014(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  result = [*v4 *a3];
  if (result)
  {
    v7 = result;
    v8 = [result *a4];

    if (v8)
    {
      v9 = sub_2661E640C();

      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2661E20EC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2661D52DC;

  return sub_2661DF180(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t dispatch thunk of AppSupportService.findApps(matching:)(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2661D3294;

  return v8(a1);
}

uint64_t destroy for AppSupportQuery(void *a1)
{
  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];
}

void *initializeWithCopy for AppSupportQuery(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for AppSupportQuery(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a1[2];
  a1[2] = a2[2];

  v6 = a1[3];
  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for AppSupportQuery(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  v6 = a1[3];
  a1[3] = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for AppSupportQuery(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AppSupportQuery(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2661E2510(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2661E2560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t destroy for AppSupportService.DataSource(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);
}

uint64_t initializeWithCopy for AppSupportService.DataSource(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;

  return a1;
}

void *assignWithCopy for AppSupportService.DataSource(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v7 = a2[2];
  v6 = a2[3];
  v8 = a1[3];
  a1[2] = v7;
  a1[3] = v6;

  return a1;
}

uint64_t assignWithTake for AppSupportService.DataSource(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 24);
  *(a1 + 16) = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for AppSupportService.DataSource(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppSupportService.DataSource(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2661E278C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2661D52DC;

  return sub_2661DF814(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2661E28C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2661D4A14;

  return sub_2661DFC58(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2661E299C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_2661E666C();

    if (v8)
    {

      type metadata accessor for App();
      swift_dynamicCast();
      result = 0;
      *a1 = v28;
      return result;
    }

    result = sub_2661E665C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v12 = sub_2661E2C10(v7, result + 1);
    v13 = *(v12 + 16);
    if (*(v12 + 24) <= v13)
    {
      sub_2661E2E38(v13 + 1);
    }

    sub_2661E30D4(v14, v12);

    *v3 = v12;
  }

  else
  {
    v10 = *(v6 + 40);
    sub_2661E686C();
    if (*(a2 + 24))
    {
      v11 = *(a2 + 16);
      sub_2661E688C();
      sub_2661E643C();
    }

    else
    {
      sub_2661E688C();
    }

    v15 = sub_2661E689C();
    v16 = -1 << *(v6 + 32);
    v17 = v15 & ~v16;
    if ((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      v18 = ~v16;
      v19 = *(v6 + 48);
      v20 = *(a2 + 16);
      v21 = *(a2 + 24);
      do
      {
        v22 = *(v19 + 8 * v17);
        v23 = *(v22 + 24);
        if (v23)
        {
          if (v21)
          {
            v24 = *(v22 + 16) == v20 && v23 == v21;
            if (v24 || (sub_2661E67EC() & 1) != 0)
            {
LABEL_25:

              *a1 = *(*(v6 + 48) + 8 * v17);

              return 0;
            }
          }
        }

        else if (!v21)
        {
          goto LABEL_25;
        }

        v17 = (v17 + 1) & v18;
      }

      while (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
    }

    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v3;

    sub_2661E31AC(v27, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v29;
  }

  *a1 = a2;
  return 1;
}

uint64_t sub_2661E2C10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E30, &qword_2661E7A80);
    v2 = sub_2661E66BC();
    v17 = v2;
    sub_2661E664C();
    if (sub_2661E667C())
    {
      type metadata accessor for App();
      do
      {
        swift_dynamicCast();
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          sub_2661E2E38(v4 + 1);
        }

        v2 = v17;
        v5 = *(v17 + 40);
        sub_2661E686C();
        if (*(v16 + 24))
        {
          v6 = *(v16 + 16);
          sub_2661E688C();
          sub_2661E643C();
        }

        else
        {
          sub_2661E688C();
        }

        result = sub_2661E689C();
        v8 = v17 + 56;
        v9 = -1 << *(v17 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v17 + 56 + 8 * (v10 >> 6))) != 0)
        {
          v3 = __clz(__rbit64((-1 << v10) & ~*(v17 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v11 == v13;
            if (v11 == v13)
            {
              v11 = 0;
            }

            v12 |= v14;
            v15 = *(v8 + 8 * v11);
          }

          while (v15 == -1);
          v3 = __clz(__rbit64(~v15)) + (v11 << 6);
        }

        *(v8 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        *(*(v17 + 48) + 8 * v3) = v16;
        ++*(v17 + 16);
      }

      while (sub_2661E667C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2661E2E38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E30, &qword_2661E7A80);
  result = sub_2661E66AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + 8 * (v16 | (v7 << 6)));
      v20 = *(v6 + 40);
      sub_2661E686C();
      if (*(v19 + 24))
      {
        v21 = v6;
        v22 = v3;
        v23 = *(v19 + 16);
        sub_2661E688C();
        v3 = v22;
        v6 = v21;
        sub_2661E643C();
      }

      else
      {
        sub_2661E688C();
      }

      result = sub_2661E689C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v15 = v19;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v15 = v19;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v15;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2661E30D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2661E686C();
  if (*(a1 + 24))
  {
    v5 = *(a1 + 16);
    sub_2661E688C();
    sub_2661E643C();
  }

  else
  {
    sub_2661E688C();
  }

  sub_2661E689C();
  v6 = -1 << *(a2 + 32);
  result = sub_2661E663C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2661E31AC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    sub_2661E2E38(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_2661E3374();
      goto LABEL_23;
    }

    sub_2661E34C4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2661E686C();
  if (*(v5 + 24))
  {
    v10 = *(v5 + 16);
    sub_2661E688C();
    sub_2661E643C();
  }

  else
  {
    sub_2661E688C();
  }

  result = sub_2661E689C();
  v11 = v8 + 56;
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    result = type metadata accessor for App();
    v14 = *(v8 + 48);
    v15 = *(v5 + 16);
    v16 = *(v5 + 24);
    do
    {
      v17 = *(v14 + 8 * a2);
      v18 = *(v17 + 24);
      if (v18)
      {
        if (v16)
        {
          v19 = *(v17 + 16) == v15 && v18 == v16;
          if (v19 || (result = sub_2661E67EC(), (result & 1) != 0))
          {
LABEL_22:
            result = sub_2661E67FC();
            __break(1u);
            break;
          }
        }
      }

      else if (!v16)
      {
        goto LABEL_22;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v11 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_23:
  v20 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = v5;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
  }

  return result;
}

void *sub_2661E3374()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E30, &qword_2661E7A80);
  v2 = *v0;
  v3 = sub_2661E669C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2661E34C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E30, &qword_2661E7A80);
  result = sub_2661E66AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v7 = 0;
    v8 = v3 + 56;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2661E686C();
      if (*(v18 + 24))
      {
        v31 = v11;
        v20 = v6;
        v21 = v3;
        v22 = *(v18 + 16);
        sub_2661E688C();

        v3 = v21;
        v6 = v20;
        v11 = v31;
        sub_2661E643C();
      }

      else
      {
        sub_2661E688C();
      }

      result = sub_2661E689C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v30;
        goto LABEL_31;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2661E373C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_2661E37E8()
{
  result = qword_280FDA8A8;
  if (!qword_280FDA8A8)
  {
    type metadata accessor for App();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDA8A8);
  }

  return result;
}

void *sub_2661E3840(void *a1, int64_t a2, char a3)
{
  result = sub_2661E3860(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2661E3860(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E68, &unk_2661E7AD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E40, &qword_2661E7AA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2661E39A8(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();

  v5 = [v4 enumeratorWithOptions_];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v33 = sub_2661E4630;
  v34 = v6;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v31 = sub_2661E1088;
  v32 = &block_descriptor_37;
  v7 = _Block_copy(&aBlock);

  [v5 setFilter_];
  _Block_release(v7);
  v8 = [v5 nextObject];
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = v8;
    v11 = sub_2661D7F34(0, &qword_280066E70, 0x277CC1E70);
    v12 = v10;
    v13 = 0;
    v14 = (v9 + 4);
    while (1)
    {
      v28 = v11;
      v29 = &off_2877D4C08;
      *&v27 = v12;
      sub_2661D12C8(&v27, &aBlock);
      if (!v13)
      {
        v15 = v9[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E78, &qword_2661E7B90);
        v18 = swift_allocObject();
        v19 = (_swift_stdlib_malloc_size(v18) - 32) / 40;
        v18[2] = v17;
        v18[3] = 2 * v19;
        v20 = (v18 + 4);
        v21 = v9[3] >> 1;
        if (v9[2])
        {
          if (v18 != v9 || v20 >= &v9[5 * v21 + 4])
          {
            memmove(v18 + 4, v9 + 4, 40 * v21);
          }

          v9[2] = 0;
        }

        v14 = v20 + 40 * v21;
        v13 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

        v9 = v18;
      }

      v23 = __OFSUB__(v13--, 1);
      if (v23)
      {
        break;
      }

      sub_2661D12C8(&aBlock, v14);
      v14 += 40;
      v12 = [v5 nextObject];
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = 0;
LABEL_21:

  v24 = v9[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v23 = __OFSUB__(v25, v13);
    v26 = v25 - v13;
    if (v23)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v9[2] = v26;
  }
}

uint64_t sub_2661E3C68(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_2661E3D5C;

  return v6(v2 + 16);
}

uint64_t sub_2661E3D5C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2661E3E8C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2661D4A14;

  return sub_2661E3C68(a1, v5);
}

void *sub_2661E3F60(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E60, &unk_2661E7AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2661E7100;
  v5 = *MEMORY[0x277CD3828];
  *(inited + 32) = sub_2661E640C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v6;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_2661DDF44(inited);
  swift_setDeallocating();
  sub_2661E4320(inited + 32, &qword_280066DF8, &qword_2661E7870);
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v8 = sub_2661E62DC();
  __swift_project_value_buffer(v8, qword_280FDAE30);
  v9 = sub_2661E62CC();
  v10 = sub_2661E655C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25[0] = v12;
    *v11 = 136315138;

    v13 = sub_2661E63EC();
    v15 = v14;

    v16 = sub_2661D3710(v13, v15, v25);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2661CF000, v9, v10, "Enumerating plugins matching query: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26677E2B0](v12, -1, -1);
    MEMORY[0x26677E2B0](v11, -1, -1);
  }

  v17 = [objc_opt_self() defaultWorkspace];
  if (v17)
  {
    v18 = v17;

    v19 = sub_2661E63CC();

    v25[4] = sub_2661E4380;
    v25[5] = v7;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 1107296256;
    v25[2] = sub_2661E16E4;
    v25[3] = &block_descriptor_1;
    v20 = _Block_copy(v25);

    [v18 enumeratePluginsMatchingQuery:v19 withBlock:v20];
    _Block_release(v20);
  }

  swift_beginAccess();
  v21 = *(v7 + 16);

  v23 = sub_2661E1770(v22);

  return v23;
}

uint64_t sub_2661E42D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2661E4320(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2661E43A0()
{
  result = qword_280FDA890;
  if (!qword_280FDA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDA890);
  }

  return result;
}

void *assignWithCopy for AppSupportService.SystemAppRecordData(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *assignWithTake for AppSupportService.SystemAppRecordData(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppSupportService.SystemAppRecordData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for AppSupportService.SystemAppRecordData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2661E4510()
{
  result = qword_280FDA898;
  if (!qword_280FDA898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDA898);
  }

  return result;
}

uint64_t sub_2661E456C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2661E67EC() & 1;
  }
}

unint64_t sub_2661E4634(unint64_t result)
{
  if (!(result >> 62))
  {
    v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      return 0;
    }

    if (v1 == 1)
    {
      goto LABEL_4;
    }
  }

  v3 = result;
  result = sub_2661E665C();
  if (!result)
  {
    return result;
  }

  v4 = sub_2661E665C();
  result = v3;
  if (v4 != 1)
  {
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    return MEMORY[0x26677DCE0](0, result);
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(result + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DefaultAppSelector.__allocating_init(defaultAppBundles:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DefaultAppSelector.init(defaultAppBundles:)(a1);
  return v2;
}

uint64_t DefaultAppSelector.init(defaultAppBundles:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2661E674C();
    type metadata accessor for App();
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v6;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;

      sub_2661E672C();
      v9 = *(v12 + 16);
      sub_2661E675C();
      sub_2661E676C();
      sub_2661E673C();
      v5 += 2;
      --v4;
    }

    while (v4);

    v10 = v12;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  *(v2 + 16) = v10;
  if (v10 >> 62)
  {
    if (sub_2661E665C())
    {
      return v2;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v2;
  }

  if (qword_280FDA6F8 != -1)
  {
    swift_once();
  }

  sub_2661E657C();
  sub_2661E628C();
  return v2;
}

uint64_t DefaultAppSelector.__allocating_init(defaultApps:)(unint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  if (a1 >> 62)
  {
    v4 = result;
    v5 = sub_2661E665C();
    result = v4;
    if (v5)
    {
      return result;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  v3 = result;
  if (qword_280FDA6F8 != -1)
  {
    swift_once();
  }

  sub_2661E657C();
  sub_2661E628C();
  return v3;
}

uint64_t DefaultAppSelector.init(defaultApps:)(unint64_t a1)
{
  *(v1 + 16) = a1;
  if (a1 >> 62)
  {
    if (sub_2661E665C())
    {
      return v1;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v1;
  }

  if (qword_280FDA6F8 != -1)
  {
    swift_once();
  }

  sub_2661E657C();
  sub_2661E628C();
  return v1;
}

uint64_t DefaultAppSelector.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DefaultAppSelector.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2661E4B08(unint64_t a1, uint64_t a2, void (*a3)(unint64_t *, unint64_t))
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_30:
    v8 = MEMORY[0x277D84F98];
    goto LABEL_31;
  }

LABEL_29:
  v6 = sub_2661E665C();
  if (!v6)
  {
    goto LABEL_30;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  while (2)
  {
    v9 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26677DCE0](v9, a1);
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v9 >= *(v5 + 16))
        {
          goto LABEL_28;
        }

        v10 = *(a1 + 8 * v9 + 32);

        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      v11 = *(v10 + 24);
      if (v11)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_31;
      }
    }

    v46 = a2;
    v12 = *(v10 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v8;
    v48 = v12;
    v14 = sub_2661DCFFC(v12, v11);
    v15 = v8[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      __break(1u);
LABEL_62:
      swift_once();
LABEL_60:
      sub_2661E657C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066C88, &qword_2661E7270);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_2661E7100;
      *(v44 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E20, &qword_2661E78B0);
      *(v44 + 64) = sub_2661E569C();
      *(v44 + 32) = v7;

      sub_2661E628C();

      v50 = 0;
      LOWORD(v51) = 256;
      v45 = sub_2661DDF44(MEMORY[0x277D84F90]);
      a3(&v50, v45);
    }

    if (v8[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v23 = v13;
        sub_2661DDA94();
        if ((v23 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

LABEL_21:

      v8 = v50;
      v21 = *(v50 + 56);
      v22 = *(v21 + 8 * v14);
      *(v21 + 8 * v14) = v10;

      goto LABEL_25;
    }

    v18 = v13;
    sub_2661DD314(v17, isUniquelyReferenced_nonNull_native);
    v19 = sub_2661DCFFC(v48, v11);
    if ((v18 & 1) != (v20 & 1))
    {
      goto LABEL_64;
    }

    v14 = v19;
    if (v18)
    {
      goto LABEL_21;
    }

LABEL_23:
    v8 = v50;
    *(v50 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v24 = (v8[6] + 16 * v14);
    *v24 = v48;
    v24[1] = v11;
    *(v8[7] + 8 * v14) = v10;

    v25 = v8[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      v8[2] = v27;
LABEL_25:
      a2 = v46;
      if (v7 != v6)
      {
        continue;
      }

LABEL_31:
      v7 = *(a2 + 16);
      v50 = MEMORY[0x277D84F90];
      if (v7 >> 62)
      {
LABEL_53:
        v28 = sub_2661E665C();
        if (v28)
        {
LABEL_33:
          v29 = 0;
          v30 = MEMORY[0x277D84F90];
          do
          {
            v31 = v29;
            while (1)
            {
              if ((v7 & 0xC000000000000001) != 0)
              {
                v32 = MEMORY[0x26677DCE0](v31, v7);
                v29 = v31 + 1;
                if (__OFADD__(v31, 1))
                {
                  goto LABEL_51;
                }
              }

              else
              {
                if (v31 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_52;
                }

                v32 = *(v7 + 8 * v31 + 32);

                v29 = v31 + 1;
                if (__OFADD__(v31, 1))
                {
LABEL_51:
                  __break(1u);
LABEL_52:
                  __break(1u);
                  goto LABEL_53;
                }
              }

              if (v32[7])
              {
                goto LABEL_47;
              }

              v33 = v32[3];
              if (v33)
              {
                if (v8[2])
                {
                  v34 = sub_2661DCFFC(v32[2], v33);
                  if (v35)
                  {
                    break;
                  }
                }
              }

              ++v31;
              if (v29 == v28)
              {
                goto LABEL_55;
              }
            }

            v36 = *(v8[7] + 8 * v34);

LABEL_47:
            MEMORY[0x26677DA70]();
            if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v37 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2661E64CC();
            }

            sub_2661E64DC();
            v30 = v50;
          }

          while (v29 != v28);
LABEL_55:

          v38 = sub_2661E4634(v30);
          v40 = v39;

          if (!v40)
          {
            v53 = 0;
            v54 = v38;
            v55 = 2;
            v50 = v38;
            v51 = 0x2000000000000002;
            v52 = 0;

            v43 = sub_2661E5B4C();
            a3(&v54, v43);

            sub_2661DE8CC(v38, 0);
            return sub_2661DE8CC(v38, 0);
          }

          if (v40 == 1)
          {
            v53 = 0;
            v54 = v38;
            v55 = 1;
            v50 = v38;
            v51 = 0x2000000000000001;
            v52 = 0;

            v41 = sub_2661E5B4C();
            a3(&v54, v41);
            sub_2661DE8CC(v38, 1);

            return sub_2661DE8CC(v38, 1);
          }

          if (qword_280FDA6F8 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_62;
        }
      }

      else
      {
        v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_33;
        }
      }

      v30 = MEMORY[0x277D84F90];
      goto LABEL_55;
    }

    break;
  }

  __break(1u);
LABEL_64:

  result = sub_2661E680C();
  __break(1u);
  return result;
}

uint64_t sub_2661E50D8(unint64_t a1, uint64_t (*a2)(unint64_t *))
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_30:
    v7 = MEMORY[0x277D84F98];
    goto LABEL_31;
  }

LABEL_29:
  v5 = sub_2661E665C();
  if (!v5)
  {
    goto LABEL_30;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  while (2)
  {
    v8 = v6;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26677DCE0](v8, a1);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_28;
        }

        v9 = *(a1 + 8 * v8 + 32);

        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      v10 = *(v9 + 24);
      if (v10)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_31;
      }
    }

    v41 = v2;
    v11 = *(v9 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v7;
    v43 = v11;
    v13 = sub_2661DCFFC(v11, v10);
    v14 = v7[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      __break(1u);
LABEL_63:
      swift_once();
LABEL_61:
      sub_2661E657C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066C88, &qword_2661E7270);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_2661E7100;
      *(v40 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E20, &qword_2661E78B0);
      *(v40 + 64) = sub_2661E569C();
      *(v40 + 32) = v6;

      sub_2661E628C();

      v45 = 0;
      v46 = 256;
      return a2(&v45);
    }

    if (v7[3] >= v16)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v17 = v12;
      sub_2661DDA94();
    }

    else
    {
      v17 = v12;
      sub_2661DD314(v16, isUniquelyReferenced_nonNull_native);
      v18 = sub_2661DCFFC(v43, v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_65;
      }

      v13 = v18;
    }

    v12 = v17;
LABEL_20:
    if (v12)
    {

      v7 = v45;
      v20 = *(v45 + 56);
      v21 = *(v20 + 8 * v13);
      *(v20 + 8 * v13) = v9;

      goto LABEL_24;
    }

    v7 = v45;
    *(v45 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v22 = (v7[6] + 16 * v13);
    *v22 = v43;
    v22[1] = v10;
    *(v7[7] + 8 * v13) = v9;

    v23 = v7[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      v7[2] = v25;
LABEL_24:
      v2 = v41;
      if (v6 != v5)
      {
        continue;
      }

LABEL_31:
      v6 = *(v2 + 16);
      v45 = MEMORY[0x277D84F90];
      if (v6 >> 62)
      {
LABEL_53:
        v26 = sub_2661E665C();
        if (v26)
        {
LABEL_33:
          v27 = 0;
          v28 = MEMORY[0x277D84F90];
          do
          {
            v29 = v27;
            while (1)
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v30 = MEMORY[0x26677DCE0](v29, v6);
                v27 = v29 + 1;
                if (__OFADD__(v29, 1))
                {
                  goto LABEL_51;
                }
              }

              else
              {
                if (v29 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_52;
                }

                v30 = *(v6 + 8 * v29 + 32);

                v27 = v29 + 1;
                if (__OFADD__(v29, 1))
                {
LABEL_51:
                  __break(1u);
LABEL_52:
                  __break(1u);
                  goto LABEL_53;
                }
              }

              if (v30[7])
              {
                goto LABEL_47;
              }

              v31 = v30[3];
              if (v31)
              {
                if (v7[2])
                {
                  v32 = sub_2661DCFFC(v30[2], v31);
                  if (v33)
                  {
                    break;
                  }
                }
              }

              ++v29;
              if (v27 == v26)
              {
                goto LABEL_55;
              }
            }

            v34 = *(v7[7] + 8 * v32);

LABEL_47:
            MEMORY[0x26677DA70]();
            if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v35 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2661E64CC();
            }

            sub_2661E64DC();
            v28 = v45;
          }

          while (v27 != v26);
LABEL_55:

          v36 = sub_2661E4634(v28);
          v38 = v37;

          if (!v38)
          {
            v45 = v36;
            v46 = 2;

            a2(&v45);
            sub_2661DE8CC(v36, 0);
            return sub_2661E5690(v45, v46, SHIBYTE(v46));
          }

          if (v38 == 1)
          {
            v45 = v36;
            v46 = 1;
            a2(&v45);
            return sub_2661E5690(v45, v46, SHIBYTE(v46));
          }

          if (qword_280FDA6F8 == -1)
          {
            goto LABEL_61;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v26 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          goto LABEL_33;
        }
      }

      v28 = MEMORY[0x277D84F90];
      goto LABEL_55;
    }

    break;
  }

  __break(1u);
LABEL_65:
  result = sub_2661E680C();
  __break(1u);
  return result;
}

uint64_t sub_2661E5690(uint64_t a1, unsigned __int8 a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2661D84A8(a1, a2);
  }

  return a1;
}

unint64_t sub_2661E569C()
{
  result = qword_280066E80[0];
  if (!qword_280066E80[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280066E20, &qword_2661E78B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280066E80);
  }

  return result;
}

void *InstrumentedAppResolutionService.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 56) = sub_2661DB9FC;
  *(v0 + 64) = 0;
  return AppResolutionService.init()();
}

void *InstrumentedAppResolutionService.init()()
{
  *(v0 + 56) = sub_2661DB9FC;
  *(v0 + 64) = 0;
  return AppResolutionService.init()();
}

uint64_t InstrumentedAppResolutionService.resolveApp(intent:appResolutionState:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(*v4 + 152);

  v11 = a1;

  v10(v11, a2, sub_2661E590C, v9);
}

uint64_t sub_2661E5834(uint64_t *a1, uint64_t a2, uint64_t a3, id a4, uint64_t (*a5)(uint64_t *))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(a3 + 56);
  v10 = *(a3 + 64);
  v11 = [a4 typeName];
  v12 = sub_2661E640C();
  v14 = v13;

  v17 = v6;
  v18 = v7;
  v19 = v8;
  v9(v12, v14, &v17, a2);

  v17 = v6;
  v18 = v7;
  v19 = v8;
  return a5(&v17);
}

uint64_t sub_2661E5918(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  sub_2661D86E0(a2, sub_2661E5A28);
}

uint64_t sub_2661E59A8(uint64_t *a1, void (*a2)(uint64_t *, unint64_t))
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  v5 = sub_2661DDF44(MEMORY[0x277D84F90]);
  a2(&v7, v5);
}

uint64_t InstrumentedAppResolutionService.deinit()
{
  v0 = AppResolutionService.deinit();
  v1 = *(v0 + 64);

  return v0;
}

uint64_t InstrumentedAppResolutionService.__deallocating_deinit()
{
  v0 = AppResolutionService.deinit();
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

unint64_t sub_2661E5B4C()
{
  v1 = *v0;
  v2 = v0[1] >> 61;
  if (v2 <= 1)
  {
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E60, &unk_2661E7AC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2661E7C50;
      *(inited + 32) = 0x6C646E7542707061;
      *(inited + 40) = 0xEB00000000644965;
      v18 = sub_2661E6044();
      v19 = MEMORY[0x277D837D0];
      *(inited + 48) = v18;
      *(inited + 56) = v20;
      *(inited + 72) = v19;
      strcpy((inited + 80), "resolutionType");
      *(inited + 95) = -18;
      *(inited + 96) = 0x6465727265666E49;
      *(inited + 104) = 0xE800000000000000;
      *(inited + 120) = v19;
      *(inited + 128) = 0xD000000000000011;
      *(inited + 168) = v19;
      v15 = 0x80000002661E85C0;
      v16 = 0xD000000000000012;
      goto LABEL_11;
    }

    v9 = v0[2];
    v8 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E60, &unk_2661E7AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2661E7C50;
    *(inited + 32) = 0x6C646E7542707061;
    *(inited + 40) = 0xEB00000000644965;
    v10 = sub_2661E6044();
    v11 = MEMORY[0x277D837D0];
    *(inited + 48) = v10;
    *(inited + 56) = v12;
    *(inited + 72) = v11;
    strcpy((inited + 80), "resolutionType");
    *(inited + 95) = -18;
    *(inited + 96) = 0x6465727265666E49;
    *(inited + 104) = 0xE800000000000000;
    *(inited + 120) = v11;
    *(inited + 128) = 0xD000000000000011;
    *(inited + 168) = v11;
    *(inited + 136) = 0x80000002661E8580;
    *(inited + 144) = v9;
    *(inited + 152) = v8;
  }

  else
  {
    if (v2 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E60, &unk_2661E7AC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2661E7C50;
      *(inited + 32) = 0x6C646E7542707061;
      *(inited + 40) = 0xEB00000000644965;
      v13 = sub_2661E6044();
      v5 = MEMORY[0x277D837D0];
      *(inited + 48) = v13;
      *(inited + 56) = v14;
      *(inited + 72) = v5;
      strcpy((inited + 80), "resolutionType");
      *(inited + 95) = -18;
      *(inited + 96) = 0x7571655272657355;
      v7 = 0xED00006465747365;
      goto LABEL_8;
    }

    if (v2 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E60, &unk_2661E7AC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2661E7C50;
      *(inited + 32) = 0x6C646E7542707061;
      *(inited + 40) = 0xEB00000000644965;
      v4 = sub_2661E6044();
      v5 = MEMORY[0x277D837D0];
      *(inited + 48) = v4;
      *(inited + 56) = v6;
      *(inited + 72) = v5;
      strcpy((inited + 80), "resolutionType");
      *(inited + 95) = -18;
      *(inited + 96) = 0x6E61684372657355;
      v7 = 0xEB00000000646567;
LABEL_8:
      *(inited + 104) = v7;
      *(inited + 120) = v5;
      *(inited + 128) = 0xD000000000000011;
      *(inited + 168) = v5;
      v15 = 0x80000002661E85A0;
      v16 = 0xD000000000000014;
LABEL_11:
      *(inited + 136) = 0x80000002661E8580;
      *(inited + 144) = v16;
      *(inited + 152) = v15;
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E60, &unk_2661E7AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2661E7C50;
    *(inited + 32) = 0x6C646E7542707061;
    v17 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xEB00000000644965;
    *(inited + 48) = 0xD000000000000015;
    *(inited + 56) = 0x80000002661E8560;
    *(inited + 72) = v17;
    strcpy((inited + 80), "resolutionType");
    *(inited + 95) = -18;
    *(inited + 96) = 0x64656C696146;
    *(inited + 104) = 0xE600000000000000;
    *(inited + 120) = v17;
    *(inited + 128) = 0xD000000000000011;
    *(inited + 168) = v17;
    *(inited + 136) = 0x80000002661E8580;
    strcpy((inited + 144), "NotApplicable");
    *(inited + 158) = -4864;
  }

LABEL_12:
  v21 = sub_2661DDF44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066DF8, &qword_2661E7870);
  swift_arrayDestroy();
  return v21;
}

unint64_t sub_2661E6044()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) != 2)
    {
      return 0xD000000000000015;
    }
  }

  else if (*(v0 + 8))
  {
    return 0xD000000000000015;
  }

  if (!*(v1 + 24))
  {
    return 0xD000000000000012;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

unint64_t AppResolutionResult.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) != 2)
    {
      v6 = 0;
      sub_2661E66EC();
      MEMORY[0x26677DA30](0xD000000000000018, 0x80000002661E84E0);
      sub_2661E677C();
      goto LABEL_10;
    }

    sub_2661E66EC();

    v2 = 0xD000000000000010;
  }

  else
  {
    if (*(v0 + 8))
    {
      sub_2661E66EC();

      v6 = 0xD00000000000001CLL;
      v4 = type metadata accessor for App();
      v3 = MEMORY[0x26677DAA0](v1, v4);
      goto LABEL_8;
    }

    sub_2661E66EC();

    v2 = 0xD000000000000019;
  }

  v6 = v2;
  v3 = sub_2661D0988();
LABEL_8:
  MEMORY[0x26677DA30](v3);

LABEL_10:
  MEMORY[0x26677DA30](125, 0xE100000000000000);
  return v6;
}