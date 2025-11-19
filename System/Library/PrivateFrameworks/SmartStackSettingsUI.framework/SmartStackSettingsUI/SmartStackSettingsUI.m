id NHSSSmartStackSuggestionDefaults.widgetSuggestionsEnabled(widgetDescriptor:)(void *a1)
{
  v2 = v1;
  v4 = [a1 extensionIdentity];
  v5 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BCD8, &qword_26A0AF038);
  if (!(*(*(v6 - 8) + 48))(&v4[v5], 1, v6))
  {
    sub_26A0AE904();
  }

  swift_endAccess();

  v7 = sub_26A0AE914();

  v8 = [a1 extensionBundleIdentifier];
  if (!v8)
  {
    sub_26A0AE924();
    v8 = sub_26A0AE914();
  }

  v9 = [a1 kind];
  if (!v9)
  {
    sub_26A0AE924();
    v9 = sub_26A0AE914();
  }

  v10 = [v2 widgetSuggestionsEnabledForContainerBundleIdentifier:v7 extensionBundleIdentifier:v8 kind:v9];

  return v10;
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

id NHSSSmartStackSuggestionDefaults.controlSuggestionsEnabled(controlDescriptor:)(void *a1)
{
  v2 = v1;
  v4 = [a1 extensionIdentity];
  v5 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BCD8, &qword_26A0AF038);
  if (!(*(*(v6 - 8) + 48))(&v4[v5], 1, v6))
  {
    sub_26A0AE904();
  }

  swift_endAccess();

  v7 = sub_26A0AE914();

  v8 = sub_26A0AE914();
  v9 = [a1 kind];
  if (!v9)
  {
    sub_26A0AE924();
    v9 = sub_26A0AE914();
  }

  v10 = [v2 widgetSuggestionsEnabledForContainerBundleIdentifier:v7 extensionBundleIdentifier:v8 kind:v9];

  return v10;
}

uint64_t sub_26A0AAB9C()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BCE8, &qword_26A0AF0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v10 - v1;
  v3 = type metadata accessor for SmartStackSuggestionSettingsWidgetProvider();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v4[14] = [objc_opt_self() weakObjectsHashTable];
  v4[15] = 0;
  v10.receiver = v4;
  v10.super_class = v3;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = sub_26A0AE9E4();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v8 = v5;
  sub_26A0AB2EC(0, 0, v2, &unk_26A0AF1D0, v7);

  qword_28036BCE0 = v8;
  return result;
}

id sub_26A0AAD08()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BCE8, &qword_26A0AF0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v10 - v2;
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v4[14] = [objc_opt_self() weakObjectsHashTable];
  v4[15] = 0;
  v10.receiver = v4;
  v10.super_class = v0;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = sub_26A0AE9E4();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v8 = v5;
  sub_26A0AB2EC(0, 0, v3, &unk_26A0AF170, v7);

  return v8;
}

uint64_t static SmartStackSuggestionSettingsWidgetProvider.shared.getter()
{
  if (qword_28036BCD0 != -1)
  {
    swift_once();
  }
}

id sub_26A0AAEC8()
{
  ObjectType = swift_getObjectType();
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BCE8, &qword_26A0AF0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v10 - v3;
  swift_defaultActor_initialize();
  v0[14] = [objc_opt_self() weakObjectsHashTable];
  v0[15] = 0;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = sub_26A0AE9E4();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v8 = v5;
  sub_26A0AB2EC(0, 0, v4, &unk_26A0AF180, v7);

  return v8;
}

uint64_t sub_26A0AB028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26A0AB0B8;

  return sub_26A0AB1AC();
}

uint64_t sub_26A0AB0B8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26A0AB1CC()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x277CFA390]) initIncludingRelevanceBacked_];
  v3 = [objc_opt_self() visible];
  v4 = [objc_allocWithZone(MEMORY[0x277CFA3C0]) initWithWidgetsPredicate:v2 controlsPredicate:v3 includeIntents:1];

  v5 = [objc_allocWithZone(MEMORY[0x277CFA3B8]) initWithOptions_];
  v6 = *(v1 + 120);
  *(v1 + 120) = v5;

  v7 = *(v1 + 120);
  if (v7)
  {
    [v7 registerObserver_];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26A0AB2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BCE8, &qword_26A0AF0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_26A0AE628(a3, v26 - v10);
  v12 = sub_26A0AE9E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26A0AE698(v11);
  }

  else
  {
    sub_26A0AE9D4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26A0AE9A4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26A0AE934() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_26A0AE698(a3);

      return v24;
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

  sub_26A0AE698(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_26A0AB5D0()
{
  v1 = [*(v0 + 112) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BDA8, &qword_26A0AF1C8);
  v2 = sub_26A0AE964();

  if (v2 >> 62)
  {
    v3 = sub_26A0AEA74();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D65A7B0](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v5 widgetProviderDidUpdateWithProvider_];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

unint64_t sub_26A0AB6F0()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = [v1 containers];
    sub_26A0AEA14();
    sub_26A0AE2C8();
    v3 = sub_26A0AE9F4();

    v4 = sub_26A0AB9AC(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BD80, &qword_26A0AF190);
    v5 = sub_26A0AEA84();
    v6 = v5;
    v7 = 0;
    v8 = v4 + 64;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 64);
    v12 = (v9 + 63) >> 6;
    v32 = v5 + 64;
    for (i = v4; v11; v6[2] = v25)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_11:
      v16 = v13 | (v7 << 6);
      v17 = (*(i + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(i + 56) + 8 * v16);
      v34 = *v17;
      if (v19 >> 62)
      {
        v26 = sub_26A0AEA74();
        if (v26)
        {
          v31 = v26;
          v20 = sub_26A0ACF7C(v26, 0);
          swift_bridgeObjectRetain_n();

          sub_26A0AE320(v20 + 32, v31, v19);
          v30 = v27;

          if (v30 != v31)
          {
            goto LABEL_27;
          }

          goto LABEL_14;
        }

        v20 = MEMORY[0x277D84F90];
      }

      else
      {
        v20 = v19 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_14:
      v35 = v20;
      sub_26A0AD004(&v35);

      *(v32 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v21 = (v6[6] + 16 * v16);
      v22 = v35;
      *v21 = v34;
      v21[1] = v18;
      *(v6[7] + 8 * v16) = v22;
      v23 = v6[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_26;
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        return v6;
      }

      v15 = *(v8 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);

    __break(1u);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];

    return sub_26A0AE4C4(v29);
  }

  return result;
}

uint64_t sub_26A0AB9AC(uint64_t a1)
{
  v1 = a1;
  v47 = MEMORY[0x277D84F98];
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_26A0AEA24();
    sub_26A0AEA14();
    sub_26A0AE2C8();
    sub_26A0AEA04();
    v1 = v42;
    v2 = v43;
    v3 = v44;
    v4 = v45;
    v5 = v46;
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
  }

  v38 = v3;
  v9 = (v3 + 64) >> 6;
  v10 = MEMORY[0x277D84F98];
  v39 = v1;
  while (v1 < 0)
  {
    if (!sub_26A0AEA34() || (sub_26A0AEA14(), swift_dynamicCast(), v17 = v41, v15 = v4, v16 = v5, !v41))
    {
LABEL_34:
      sub_26A0AE620();
      return v10;
    }

LABEL_21:
    v40 = v16;
    v18 = [v17 containerBundleIdentifier];
    v19 = sub_26A0AE924();
    v21 = v20;

    v22 = v19 == 0xD00000000000001FLL && 0x800000026A0AF320 == v21;
    if (v22 || (sub_26A0AEAD4() & 1) != 0)
    {

      v19 = 0xD000000000000016;
      v21 = 0x800000026A0AF340;
    }

    v24 = sub_26A0ACAA0(v19, v21);
    v25 = v10[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_36;
    }

    v28 = v23;
    if (v10[3] < v27)
    {
      sub_26A0ACB18(v27, 1);
      v10 = v47;
      v29 = sub_26A0ACAA0(v19, v21);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_38;
      }

      v24 = v29;
    }

    if (v28)
    {

      v12 = (v10[7] + 8 * v24);
      MEMORY[0x26D65A6C0](v11);
      if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_26A0AE974();
      }

      sub_26A0AE994();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BD98, &qword_26A0AF1A0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_26A0AF0B0;
      *(v31 + 32) = v17;
      v10[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v10[6] + 16 * v24);
      *v32 = v19;
      v32[1] = v21;
      *(v10[7] + 8 * v24) = v31;
      v33 = v10[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_37;
      }

      v10[2] = v35;
    }

    v4 = v15;
    v5 = v40;
    v1 = v39;
  }

  v13 = v4;
  v14 = v5;
  v15 = v4;
  if (v5)
  {
LABEL_17:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_34;
    }

    v14 = *(v2 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_26A0AEAE4();
  __break(1u);
  return result;
}

uint64_t SmartStackSuggestionSettingsWidgetProvider.extensionsDidChange(provider:)()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BCE8, &qword_26A0AF0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v7 - v2;
  v4 = sub_26A0AE9E4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_26A0AB2EC(0, 0, v3, &unk_26A0AF0D0, v5);
}

uint64_t sub_26A0ABEA4()
{
  sub_26A0AE9C4();
  *(v0 + 24) = sub_26A0AE9B4();
  v2 = sub_26A0AE9A4();

  return MEMORY[0x2822009F8](sub_26A0ABF38, v2, v1);
}

uint64_t sub_26A0ABF38()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_26A0AB5D0();
  v3 = v0[1];

  return v3();
}

uint64_t sub_26A0ABFA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A0AE8FC;

  return sub_26A0ABE84(a1, v4, v5, v6);
}

unint64_t SmartStackSuggestionSettingsWidgetProvider.orderedWidgetDescriptors()()
{
  result = sub_26A0AB6F0();
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = MEMORY[0x277D84F90];
  v31 = (v4 + 63) >> 6;
  v32 = result + 64;
  v33 = result;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v8 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v8 >= v31)
        {
          goto LABEL_40;
        }

        v6 = *(v3 + 8 * v8);
        ++v2;
        if (v6)
        {
          v2 = v8;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

LABEL_10:
    v9 = *(*(v1 + 56) + ((v2 << 9) | (8 * __clz(__rbit64(v6)))));

    v11 = sub_26A0AC490(v10);

    v12 = v11 >> 62;
    v13 = v11 >> 62 ? sub_26A0AEA74() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v7 >> 62;
    if (v7 >> 62)
    {
      break;
    }

    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_39;
    }

LABEL_14:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v14)
      {
LABEL_21:
        sub_26A0AEA74();
      }

      else
      {
        v17 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
        v18 = *(v17 + 16);
      }

      result = sub_26A0AEA54();
      v34 = result;
      v17 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v14)
    {
      goto LABEL_21;
    }

    v17 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

    v34 = v7;
LABEL_23:
    v35 = v13;
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v12)
    {
      result = sub_26A0AEA74();
      v21 = result;
    }

    else
    {
      v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 &= v6 - 1;
    if (v21)
    {
      if (((v20 >> 1) - v19) < v35)
      {
        goto LABEL_43;
      }

      v22 = v17 + 8 * v19 + 32;
      if (v12)
      {
        if (v21 < 1)
        {
          goto LABEL_45;
        }

        sub_26A0AE5C8(&unk_28036BD00, &qword_28036BCF8, &qword_26A0AF0D8);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BCF8, &qword_26A0AF0D8);
          v24 = sub_26A0AE00C(v36, i, v11);
          v26 = *v25;
          (v24)(v36, 0);
          *(v22 + 8 * i) = v26;
        }
      }

      else
      {
        sub_26A0AE280(0, &qword_28036BCF0, 0x277CFA378);
        swift_arrayInitWithCopy();
      }

      v7 = v34;
      v3 = v32;
      v1 = v33;
      if (v35 > 0)
      {
        v27 = *(v17 + 16);
        v28 = __OFADD__(v27, v35);
        v29 = v27 + v35;
        if (v28)
        {
          goto LABEL_44;
        }

        *(v17 + 16) = v29;
      }
    }

    else
    {

      v7 = v34;
      if (v35 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  v30 = sub_26A0AEA74();
  v16 = v30 + v13;
  if (!__OFADD__(v30, v13))
  {
    goto LABEL_14;
  }

LABEL_39:
  __break(1u);
LABEL_40:

  return v7;
}

uint64_t sub_26A0AC490(unint64_t a1)
{
  v34 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v1)
  {
LABEL_3:
    v2 = 0;
    v27 = a1 & 0xC000000000000001;
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = a1;
    v23 = a1 + 32;
    v3 = MEMORY[0x277D84F90];
    v26 = v1;
    while (1)
    {
      if (v27)
      {
        a1 = MEMORY[0x26D65A7B0](v2, v25);
      }

      else
      {
        if (v2 >= *(v24 + 16))
        {
          goto LABEL_45;
        }

        a1 = *(v23 + 8 * v2);
      }

      v4 = a1;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        goto LABEL_44;
      }

      v7 = [a1 localExtensions];
      sub_26A0AE280(0, &qword_28036BD70, 0x277CFA3A8);
      v8 = sub_26A0AE964();

      v9 = v8;
      if (v8 >> 62)
      {
        break;
      }

      a1 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v4;
      v29 = v6;
      if (a1)
      {
        goto LABEL_12;
      }

LABEL_4:

      v2 = v29;
      if (v29 == v26)
      {
        return v3;
      }
    }

    a1 = sub_26A0AEA74();
    v9 = v8;
    v28 = v4;
    v29 = v6;
    if (!a1)
    {
      goto LABEL_4;
    }

LABEL_12:
    v10 = 0;
    v33 = v9 & 0xC000000000000001;
    v30 = v9 + 32;
    v31 = v9 & 0xFFFFFFFFFFFFFF8;
    v32 = a1;
    while (1)
    {
      if (v33)
      {
        a1 = MEMORY[0x26D65A7B0](v10);
      }

      else
      {
        if (v10 >= *(v31 + 16))
        {
          goto LABEL_43;
        }

        a1 = *(v30 + 8 * v10);
      }

      v11 = a1;
      v5 = __OFADD__(v10++, 1);
      if (v5)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v21 = a1;
        v1 = sub_26A0AEA74();
        a1 = v21;
        if (!v1)
        {
          return MEMORY[0x277D84F90];
        }

        goto LABEL_3;
      }

      a1 = [a1 orderedWidgetDescriptors];
      if (a1)
      {
        v12 = a1;
        sub_26A0AE280(0, &qword_28036BCF0, 0x277CFA378);
        v13 = sub_26A0AE964();
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

      if (v13 >> 62)
      {
        a1 = sub_26A0AEA74();
        v14 = a1;
        if (!a1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_13;
        }
      }

      if (v14 < 1)
      {
        goto LABEL_42;
      }

      for (i = 0; i != v14; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x26D65A7B0](i, v13);
        }

        else
        {
          v16 = *(v13 + 8 * i + 32);
        }

        v17 = v16;
        if (([v16 supportedFamilies] & 0x800) != 0)
        {
          v18 = [v17 associatedKind];
          if (v18)
          {
            v19 = v18;
          }

          else
          {
            v20 = v17;
            MEMORY[0x26D65A6C0]();
            if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26A0AE974();
            }

            sub_26A0AE994();

            v3 = v34;
          }
        }

        else
        {
        }
      }

LABEL_13:

      if (v10 == v32)
      {
        goto LABEL_4;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t SmartStackSuggestionSettingsWidgetProvider.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26A0AC8B0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26A0AC9A8;

  return v7(a1);
}

uint64_t sub_26A0AC9A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_26A0ACAA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26A0AEAF4();
  sub_26A0AE944();
  v6 = sub_26A0AEB04();

  return sub_26A0ACDC0(a1, a2, v6);
}

uint64_t sub_26A0ACB18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BD80, &qword_26A0AF190);
  v38 = a2;
  result = sub_26A0AEA94();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26A0AEAF4();
      sub_26A0AE944();
      result = sub_26A0AEB04();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_26A0ACDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26A0AEAD4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_26A0ACE78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BDA0, &qword_26A0AF1A8);
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

void *sub_26A0ACF7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BD98, &qword_26A0AF1A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_26A0AD004(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26A0AE4B0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_26A0AD080(v6);
  return sub_26A0AEA64();
}

uint64_t sub_26A0AD080(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_26A0AEAC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26A0AEA14();
        v6 = sub_26A0AE984();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_26A0AD300(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_26A0AD184(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26A0AD184(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 containerBundleIdentifier];
      v11 = sub_26A0AE924();
      v13 = v12;

      v14 = [v9 containerBundleIdentifier];
      v15 = sub_26A0AE924();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_26A0AEAD4();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_26A0AD300(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_26A0ADB00((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_26A0ADF78(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_26A0ADEEC(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_26A0ADF78(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 containerBundleIdentifier];
      v16 = sub_26A0AE924();
      v18 = v17;

      v19 = [v14 containerBundleIdentifier];
      v20 = sub_26A0AE924();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_26A0AEAD4();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 containerBundleIdentifier];
          v5 = sub_26A0AE924();
          v29 = v28;

          v30 = [v26 containerBundleIdentifier];
          v31 = sub_26A0AE924();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_26A0AEAD4();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_26A0ACE78(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_26A0ACE78((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_26A0ADB00((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_26A0ADF78(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_26A0ADEEC(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 containerBundleIdentifier];
    v5 = sub_26A0AE924();
    v51 = v50;

    v52 = [v48 containerBundleIdentifier];
    v53 = sub_26A0AE924();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_26A0AEAD4();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

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
}

uint64_t sub_26A0ADB00(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 containerBundleIdentifier];
        v38 = sub_26A0AE924();
        v40 = v39;

        v41 = [v36 containerBundleIdentifier];
        v42 = sub_26A0AE924();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = sub_26A0AEAD4();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 containerBundleIdentifier];
        v18 = sub_26A0AE924();
        v20 = v19;

        v21 = [v16 containerBundleIdentifier];
        v22 = sub_26A0AE924();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_26A0AEAD4();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

uint64_t sub_26A0ADEEC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26A0ADF78(v3);
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

uint64_t (*sub_26A0ADF8C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D65A7B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26A0AE900;
  }

  __break(1u);
  return result;
}

void (*sub_26A0AE00C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D65A7B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26A0AE08C;
  }

  __break(1u);
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

uint64_t sub_26A0AE118()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26A0AE8FC;

  return sub_26A0AB028();
}

uint64_t sub_26A0AE1CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A0AB0B8;

  return sub_26A0ABE84(a1, v4, v5, v6);
}

uint64_t sub_26A0AE280(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26A0AE2C8()
{
  result = qword_28036BD78;
  if (!qword_28036BD78)
  {
    sub_26A0AEA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036BD78);
  }

  return result;
}

uint64_t sub_26A0AE320(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26A0AEA74();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26A0AEA74();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26A0AE5C8(&qword_28036BD90, &qword_28036BD88, &qword_26A0AF198);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BD88, &qword_26A0AF198);
            v9 = sub_26A0ADF8C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_26A0AEA14();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26A0AE4C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BD80, &qword_26A0AF190);
    v3 = sub_26A0AEAA4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26A0ACAA0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_26A0AE5C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26A0AE628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BCE8, &qword_26A0AF0C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A0AE698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BCE8, &qword_26A0AF0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A0AE700()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26A0AE738(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26A0AE8FC;

  return sub_26A0AC8B0(a1, v5);
}

uint64_t sub_26A0AE7F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26A0AB0B8;

  return sub_26A0AC8B0(a1, v5);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}