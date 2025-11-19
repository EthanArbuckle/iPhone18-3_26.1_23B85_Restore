void *sub_26BA8BF2C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = sub_26BA9BCAC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

uint64_t sub_26BA8C164()
{
  v1 = v0;
  v32 = sub_26BA9AE2C();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804363F8);
  v6 = sub_26BA9BCBC();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_26BA8C8C8(&qword_2804363E8, MEMORY[0x277CC9AF8]);
      result = sub_26BA9B64C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_26BA8C480()
{
  v0 = sub_26BA9BE1C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for StickerKeyboardRecentCollectionViewController()
{
  result = qword_280437F30;
  if (!qword_280437F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BA8C578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BA8C5E0()
{
  result = qword_280435CB8;
  if (!qword_280435CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280435CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435CB8);
  }

  return result;
}

unint64_t sub_26BA8C648()
{
  result = qword_2804363E0;
  if (!qword_2804363E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804363E0);
  }

  return result;
}

uint64_t sub_26BA8C6A4()
{
  result = sub_26BA9AD5C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickersAnalyticsEffectType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StickersAnalyticsEffectType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26BA8C8C8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_26BA8C95C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double sub_26BA8C9BC(float a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetMidY(v13);
  return MidX - a1 * a4 * 0.5;
}

StickersUI::StickerRole_optional __swiftcall StickerRole.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26BA9BE1C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t StickerRole.rawValue.getter()
{
  if (*v0)
  {
    return 0x646574616D696E61;
  }

  else
  {
    return 0x6C6C697473;
  }
}

uint64_t sub_26BA8CAE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646574616D696E61;
  }

  else
  {
    v3 = 0x6C6C697473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x646574616D696E61;
  }

  else
  {
    v5 = 0x6C6C697473;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26BA9BE4C();
  }

  return v8 & 1;
}

uint64_t sub_26BA8CB8C()
{
  sub_26BA9BEEC();
  sub_26BA9B6EC();

  return sub_26BA9BF1C();
}

uint64_t sub_26BA8CC0C()
{
  sub_26BA9B6EC();
}

uint64_t sub_26BA8CC78()
{
  sub_26BA9BEEC();
  sub_26BA9B6EC();

  return sub_26BA9BF1C();
}

uint64_t sub_26BA8CCF4@<X0>(char *a1@<X8>)
{
  v2 = sub_26BA9BE1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_26BA8CD54(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C697473;
  if (*v1)
  {
    v2 = 0x646574616D696E61;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Void __swiftcall UIView.activateConstraintsFillingSuperview()()
{
  v1 = v0;
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    [v0 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26BA9E840;
    v6 = [v1 topAnchor];
    v7 = [v3 topAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    *(v5 + 32) = v8;
    v9 = [v1 leftAnchor];
    v10 = [v3 leftAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v5 + 40) = v11;
    v12 = [v1 rightAnchor];
    v13 = [v3 rightAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v5 + 48) = v14;
    v15 = [v1 bottomAnchor];
    v16 = [v3 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v5 + 56) = v17;
    sub_26BA8D020();
    v18 = sub_26BA9B7EC();

    [v4 activateConstraints_];
  }
}

unint64_t sub_26BA8D020()
{
  result = qword_280435B48;
  if (!qword_280435B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280435B48);
  }

  return result;
}

unint64_t sub_26BA8D070()
{
  result = qword_280436400;
  if (!qword_280436400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280436400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickersAnalyticsEditTiming(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StickersAnalyticsEditTiming(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_26BA8D220(double a1, double a2, double a3, double a4)
{
  v4 = a4 / a2;
  result = a3 / a1;
  if (a3 >= a4)
  {
    return v4;
  }

  return result;
}

void *sub_26BA8D234()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_26BA8D278(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void *sub_26BA8D310()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_26BA8D354(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_26BA8D420(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_26BA8D4E4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 33) = a1;
  return result;
}

uint64_t sub_26BA8D5B0(double a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_26BA8D67C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_26BA8D6DC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_26BA8D770;
}

void sub_26BA8D770(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_26BA8D82C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_26BA8D878(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_26BA8D908;
}

void sub_26BA8D908(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_26BA8D9BC(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_26BA8DA08(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_26BA8DA98;
}

void sub_26BA8DA98(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

double sub_26BA8DB14@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_26BA8DB28()
{
  v0 = sub_26BA9AF5C();
  __swift_allocate_value_buffer(v0, qword_2804380C8);
  __swift_project_value_buffer(v0, qword_2804380C8);
  return sub_26BA9AF4C();
}

uint64_t sub_26BA8DBA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_2804380C0 != -1)
  {
    swift_once();
  }

  v2 = sub_26BA9AF5C();
  v3 = __swift_project_value_buffer(v2, qword_2804380C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_26BA8DC50()
{
  v0 = swift_allocObject();
  *(v0 + 56) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_stickerIdentifier;
  v2 = sub_26BA9AD5C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_26BA9BD9C();
  __break(1u);
}

void sub_26BA8DD24()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0x3FF0000000000000;
  *(v0 + 56) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 1;
  v1 = OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_stickerIdentifier;
  v2 = sub_26BA9AD5C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_duration) = 0x3FE0000000000000;
  sub_26BA9BD9C();
  __break(1u);
}

uint64_t sub_26BA8DE20(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_26BA90E78(a1, a2, a3);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_26BA8DE88(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BA90E78(a1, a2, a3);

  swift_unknownObjectRelease();
  return v4;
}

void sub_26BA8DECC(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = a1;
    v6 = [v3 effect];
    v7 = [v6 type];

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      [v3 bounds];
      [v4 extraScaleToIncludeStrokeWithEffectType:v7 bounds:?];
    }
  }
}

void sub_26BA8E0A0(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(*v1 + 464);
    v6 = a1;
    v7 = v5(v4);
    [v6 frame];
    v12 = sub_26BA8C95C(v8, v9, v10, v11);
    v14 = v13;
    [v6 frame];
    sub_26BA8C944(v12, v14, v7 * v15);
  }

  else
  {
    [a1 frame];
  }
}

void sub_26BA8E2D4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_26BA9AD5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_isAnimating;
  if (*(v1 + OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_isAnimating) == 1 || (v9 = (*(*v1 + 224))(v9), (v9 & 1) == 0) || (v9 = (*(*v1 + 248))(), (v9 & 1) != 0))
  {
    if (((*(*v1 + 224))(v9) & 1) == 0 && (*(v1 + v12) & 1) == 0)
    {
      v13 = OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_stickerIdentifier;
      swift_beginAccess();
      sub_26BA3DF88(v2 + v13, v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_26BA3E6F8(v6, &qword_280435B08);
      }

      else
      {
        v14 = (*(v8 + 32))(v11, v6, v7);
        if ((*(*v2 + 296))(v14))
        {
          v16 = v15;
          ObjectType = swift_getObjectType();
          (*(v16 + 16))(v11, ObjectType, v16);
          swift_unknownObjectRelease();
        }

        (*(v8 + 8))(v11, v7);
      }

      (*(*v2 + 560))(a1);
    }
  }

  else
  {

    sub_26BA8E608(a1, 1);
  }
}

void sub_26BA8E608(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_26BA9B28C();
  v100 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v98 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_26BA9B2BC();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26BA9AF5C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v2 + 440))(v11);
  v14 = sub_26BA9AF3C();
  v15 = sub_26BA9B96C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a2 & 1;
    _os_log_impl(&dword_26BA33000, v14, v15, "Starting transition animation - transitionIntoEditor: %{BOOL}d", v16, 8u);
    MEMORY[0x26D68BFB0](v16, -1, -1);
  }

  v17 = (*(v10 + 8))(v13, v9);
  v18 = (*(*v3 + 200))(v17);
  if (v18)
  {
    v19 = v18;
    v20 = (*(*v3 + 176))();
    if (!v20)
    {

      return;
    }

    v21 = v20;
    v22 = [a1 frame];
    v95 = v6;
    if (a2)
    {
      v25 = [a1 frame];
      v27 = v26;
      v29 = v28;
      v30 = (*(*v3 + 344))(v25);
      if (!v30)
      {
LABEL_26:
        __break(1u);
        return;
      }

      v31 = v30;
      [v30 frame];
      v33 = v32;
      v35 = v34;

      if (v27 < v29)
      {
        v36 = v27 / v33;
      }

      else
      {
        v36 = v29 / v35;
      }

      v37 = v21;
    }

    else
    {
      v38 = v23;
      v39 = v24;
      if ((*(*v3 + 272))(v22) <= 1.0)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = v38 / v39;
      }

      v37 = v19;
    }

    v40 = v37;
    *(v3 + OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_isAnimating) = 1;
    v41 = *(*v3 + 232);
    v94 = v40;
    v41(0);
    v42 = objc_opt_self();
    [v42 begin];
    [v42 setDisableActions_];
    v43 = v21;
    [v43 setHidden_];
    v44 = v19;
    [v44 setHidden_];
    [v43 setAlpha_];

    [v44 setAlpha_];
    v45 = *(*v3 + 320);
    v46 = v45();
    if (v46)
    {
      v47 = v46;
      [v46 addSubview_];

      v48 = v45();
      if (v48)
      {
        v49 = v48;
        [v48 addSubview_];

        v50 = (*(*v3 + 344))([a1 setHidden_]);
        if (v50)
        {
          v51 = v50;
          [v50 setHidden_];

          [v42 commit];
          [a1 frame];
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v59 = v58;
          v60 = [a1 superview];
          if (v60)
          {
            v61 = v60;
            v62 = v45();
            [v61 convertRect:v62 toView:{v53, v55, v57, v59}];
            v64 = v63;
            v66 = v65;
            v68 = v67;
            v70 = v69;

            v71 = dispatch_group_create();
            dispatch_group_enter(v71);
            v72 = objc_opt_self();
            v73 = swift_allocObject();
            *(v73 + 16) = v44;
            *(v73 + 24) = v64;
            *(v73 + 32) = v66;
            *(v73 + 40) = v68;
            *(v73 + 48) = v70;
            *(v73 + 56) = v43;
            *(v73 + 64) = v36;
            v106 = sub_26BA91108;
            v107 = v73;
            aBlock = MEMORY[0x277D85DD0];
            v103 = 1107296256;
            v104 = sub_26BA3D478;
            v105 = &block_descriptor_7;
            v74 = _Block_copy(&aBlock);
            v93 = v43;
            v92 = v44;

            v75 = swift_allocObject();
            *(v75 + 16) = v71;
            v106 = sub_26BA91210;
            v107 = v75;
            aBlock = MEMORY[0x277D85DD0];
            v103 = 1107296256;
            v104 = sub_26BA8F080;
            v105 = &block_descriptor_24_0;
            v76 = _Block_copy(&aBlock);
            v77 = v71;

            [v72 animateWithDuration:0 delay:v74 usingSpringWithDamping:v76 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
            _Block_release(v76);
            _Block_release(v74);
            dispatch_group_enter(v77);
            v78 = swift_allocObject();
            v79 = v94;
            *(v78 + 16) = v94;
            v106 = sub_26BA91218;
            v107 = v78;
            aBlock = MEMORY[0x277D85DD0];
            v103 = 1107296256;
            v104 = sub_26BA3D478;
            v105 = &block_descriptor_30_0;
            v80 = _Block_copy(&aBlock);

            v81 = swift_allocObject();
            *(v81 + 16) = v77;
            v106 = sub_26BA912F8;
            v107 = v81;
            aBlock = MEMORY[0x277D85DD0];
            v103 = 1107296256;
            v104 = sub_26BA8F080;
            v105 = &block_descriptor_36_0;
            v82 = _Block_copy(&aBlock);
            v83 = v77;

            [v72 animateWithDuration:v80 animations:v82 completion:0.25];
            _Block_release(v82);
            _Block_release(v80);
            sub_26BA9122C();
            v84 = sub_26BA9BA0C();
            v85 = swift_allocObject();
            *(v85 + 16) = v3;
            *(v85 + 24) = a1;
            v106 = sub_26BA91278;
            v107 = v85;
            aBlock = MEMORY[0x277D85DD0];
            v103 = 1107296256;
            v104 = sub_26BA3D478;
            v105 = &block_descriptor_42_0;
            v86 = _Block_copy(&aBlock);

            v87 = a1;
            v88 = v96;
            sub_26BA9B2AC();
            v101 = MEMORY[0x277D84F90];
            sub_26BA91280();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
            sub_26BA3EEB8();
            v89 = v98;
            v90 = v95;
            sub_26BA9BC5C();
            sub_26BA9B9CC();
            _Block_release(v86);

            (*(v100 + 8))(v89, v90);
            (*(v97 + 8))(v88, v99);

            return;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }
}

uint64_t sub_26BA8F080(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void *sub_26BA8F0D4(uint64_t a1, void *a2)
{
  v4 = sub_26BA9AF5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - v10;
  v12 = (*(*a1 + 200))(v9);
  if (v12)
  {
    v13 = v12;
    [v12 setHidden_];
    result = (*(*a1 + 320))([v13 setAlpha_]);
    if (!result)
    {
      __break(1u);
      goto LABEL_15;
    }

    v15 = result;
    [result insertSubview:v13 atIndex:0];
  }

  else
  {
    (*(*a1 + 440))();
    v17 = sub_26BA9AF3C();
    v18 = sub_26BA9B92C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26BA33000, v17, v18, "Expected a transition preview view but none was found. This is very unusual.", v19, 2u);
      MEMORY[0x26D68BFB0](v19, -1, -1);
    }

    v16 = (*(v5 + 8))(v11, v4);
  }

  v20 = (*(*a1 + 176))(v16);
  if (!v20)
  {
    (*(*a1 + 440))();
    v23 = sub_26BA9AF3C();
    v24 = sub_26BA9B92C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26BA33000, v23, v24, "Expected a transition cell view but none was found. This is very unusual.", v25, 2u);
      MEMORY[0x26D68BFB0](v25, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    goto LABEL_13;
  }

  v21 = v20;
  [v20 setHidden_];
  result = (*(*a1 + 320))([v21 setAlpha_]);
  if (result)
  {
    v22 = result;
    [result insertSubview:v21 atIndex:0];

LABEL_13:
    [a2 setHidden_];
    *(a1 + OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_isAnimating) = 0;
    return (*(*a1 + 256))(0);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26BA8F500(uint64_t result)
{
  if ((*(v1 + OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_isAnimating) & 1) == 0)
  {
    v2 = result;
    result = (*(*v1 + 224))();
    if (result)
    {

      return sub_26BA8F578(v2);
    }
  }

  return result;
}

uint64_t sub_26BA8F578(void *a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_26BA9AF5C();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v47 - v8;
  MEMORY[0x28223BE20](v7);
  v48 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DA8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_26BA9AE2C();
  v50 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - v18;
  v20 = sub_26BA9AD5C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v53 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v1 + 248))(v22);
  if ((result & 1) == 0)
  {
    return result;
  }

  v25 = OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_stickerIdentifier;
  swift_beginAccess();
  sub_26BA3DF88(v2 + v25, v19);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    v31 = (*(v21 + 32))(v53, v19, v20);
    v32 = v49;
    result = (*((*MEMORY[0x277D85000] & *v49) + 0x380))(v31);
    if (result)
    {
      v33 = result;
      sub_26BA9B22C();

      v34 = v50;
      if ((*(v50 + 48))(v13, 1, v14) == 1)
      {
        v35 = sub_26BA3E6F8(v13, &qword_280435DA8);
        (*(*v2 + 440))(v35);
        v36 = sub_26BA9AF3C();
        v37 = sub_26BA9B94C();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_26BA33000, v36, v37, "Cannot begin animation: no index path found", v38, 2u);
          MEMORY[0x26D68BFB0](v38, -1, -1);
        }

        v39 = (*(v51 + 8))(v9, v52);
        (*(*v2 + 584))(v39);
        return (*(v21 + 8))(v53, v20);
      }

      (*(v34 + 32))(v16, v13, v14);
      result = [v32 collectionView];
      if (result)
      {
        v40 = result;
        v41 = sub_26BA9ADCC();
        v42 = [v40 cellForItemAtIndexPath_];

        if (v42)
        {
          sub_26BA8E608(v42, 0);
        }

        else
        {
          (*(*v2 + 440))();
          v43 = sub_26BA9AF3C();
          v44 = sub_26BA9B94C();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&dword_26BA33000, v43, v44, "Cannot begin animation: no cell found", v45, 2u);
            MEMORY[0x26D68BFB0](v45, -1, -1);
          }

          v46 = (*(v51 + 8))(v48, v52);
          (*(*v2 + 584))(v46);
        }

        (*(v50 + 8))(v16, v14);
        return (*(v21 + 8))(v53, v20);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v26 = sub_26BA3E6F8(v19, &qword_280435B08);
  (*(*v2 + 440))(v26);
  v27 = sub_26BA9AF3C();
  v28 = sub_26BA9B94C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26BA33000, v27, v28, "Cannot begin animation: no sticker identifier assigned", v29, 2u);
    MEMORY[0x26D68BFB0](v29, -1, -1);
  }

  v30 = (*(v51 + 8))(v6, v52);
  return (*(*v2 + 584))(v30);
}

void sub_26BA8FD40(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_26BA9AF5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v69 - v12;
  v14 = (*v2 + 320);
  v15 = *v14;
  v16 = (*v14)(v11);
  if (v16)
  {

    (*(*v2 + 576))();
    v17 = [a2 collectionView];
    if (v17)
    {
      v18 = v17;
      v71 = a2;
      v72 = v15;
      v19 = sub_26BA9ADCC();
      v20 = [v18 cellForItemAtIndexPath_];

      if (v20)
      {
        v70 = v13;
        type metadata accessor for StickerCollectionStickerCell();
        v21 = swift_dynamicCastClassUnconditional();
        v22 = (*(*v3 + 296))();
        v69[1] = a1;
        if (v22 && (v24 = v23, ObjectType = swift_getObjectType(), LOBYTE(v24) = (*(v24 + 8))(ObjectType, v24), swift_unknownObjectRelease(), (v24 & 1) != 0))
        {
          v26 = sub_26BA3763C();
        }

        else
        {
          v26 = sub_26BA37630();
        }

        v27 = sub_26BA9037C(v21, *v26);
        [*&v21[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView] frame];
        v29 = sub_26BA9037C(v21, v28);
        [v27 setHidden_];
        [v29 setHidden_];
        v30 = *(*v3 + 352);
        v31 = v20;
        v30(v21);
        v32 = [v21 frame];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v41 = (v72)(v32);
        [v21 convertRect:v41 toView:{v34, v36, v38, v40}];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;

        v50 = v71;
        *(v3 + 80) = v43;
        *(v3 + 88) = v45;
        *(v3 + 96) = v47;
        *(v3 + 104) = v49;
        *(v3 + 112) = 0;
        v51 = (*((*MEMORY[0x277D85000] & *v50) + 0x380))();
        if (v51)
        {
          v52 = v51;
          v53 = v70;
          sub_26BA9B1CC();
        }

        else
        {
          v57 = sub_26BA9AD5C();
          v53 = v70;
          (*(*(v57 - 8) + 56))(v70, 1, 1, v57);
        }

        v58 = OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_stickerIdentifier;
        swift_beginAccess();
        sub_26BA431E4(v53, v3 + v58);
        swift_endAccess();
        v59 = *(*v3 + 208);
        v60 = v27;
        v59(v27);
        v61 = *(*v3 + 184);
        v62 = v29;
        v63 = v61(v29);
        v64 = v72;
        v65 = (v72)(v63);
        if (v65)
        {
          v66 = v65;
          [v65 insertSubview:v60 atIndex:0];

          v67 = v64();
          if (v67)
          {
            v68 = v67;
            [v67 insertSubview:v62 atIndex:0];

            return;
          }

          goto LABEL_20;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  (*(*v2 + 440))();
  v54 = sub_26BA9AF3C();
  v55 = sub_26BA9B95C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_26BA33000, v54, v55, "Cannot inject transition views when the transition window is missing", v56, 2u);
    MEMORY[0x26D68BFB0](v56, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
}

id sub_26BA9037C(char *a1, double a2)
{
  v5 = (*(*v2 + 472))();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = [a1 superview];
  if (result)
  {
    v13 = result;
    v14 = (*(*v2 + 320))();
    [v13 convertRect:v14 toView:{v5, v7, v9, v11}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = *&a1[OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_stickerView];
    [v23 frame];
    v25 = v24 / a2;
    v26 = [v23 sticker];
    v27 = [objc_allocWithZone(STKMSStickerView) initWithFrame:v26 sticker:{0.0, 0.0, a2, a2}];

    CGAffineTransformMakeScale(&v32, v25, v25);
    v30 = *&v32.c;
    v31 = *&v32.a;
    v29 = *&v32.tx;
    v28 = v27;
    *&v32.a = v31;
    *&v32.c = v30;
    *&v32.tx = v29;
    [v28 setTransform_];
    [v28 setFrame_];
    [v28 setClipsToBounds_];
    [v28 setUserInteractionEnabled_];

    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26BA905A0()
{
  if (sub_26BA9B5DC() == -1)
  {
    return;
  }

  v1 = sub_26BA9B5DC();
  if (v1 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  v3 = (*(*v0 + 200))();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v4 sticker];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  STKAddEffectToSticker(v5, v2);

  v7 = [v4 sticker];
  if (!v7)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  [v4 setSticker_];

LABEL_7:
  v9 = (*(*v0 + 176))();
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = [v10 sticker];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  STKAddEffectToSticker(v11, v2);

  v13 = [v10 sticker];
  if (!v13)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v14 = v13;
  [v10 setSticker_];
}

void sub_26BA90750(void *a1)
{
  [a1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [a1 superview];
  if (!v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  v13 = (*v1 + 320);
  v14 = *v13;
  v15 = (*v13)();
  [v12 convertRect:v15 toView:{v4, v6, v8, v10}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = *(*v1 + 200);
  v25 = v24();
  if (!v25)
  {
    goto LABEL_9;
  }

  v26 = v25;
  v27 = [a1 frame];
  v29 = v28;
  v30 = (v24)(v27);
  if (!v30 || (v31 = v30, [v30 frame], v33 = v32, v31, v29 != v33))
  {
    v34 = [v26 sticker];
    v35 = [objc_allocWithZone(STKMSStickerView) initWithFrame:v34 sticker:{v17, v19, v21, v23}];

    v36 = v35;
    [v36 setHidden_];
    [v36 setUserInteractionEnabled_];

    v37 = *(*v1 + 208);
    v38 = v36;
    v39 = v37(v36);
    v40 = (v14)(v39);
    if (v40)
    {
      v41 = v40;
      [v40 insertSubview:v38 atIndex:0];

      [v26 removeFromSuperview];
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

  [v26 setFrame_];
LABEL_8:

LABEL_9:
  v42 = (*(*v1 + 176))();
  if (v42)
  {
    v43 = v42;
    [a1 frame];
    v45 = v44;
    CGAffineTransformMakeScale(&v51, 1.0, 1.0);
    v49 = *&v51.c;
    v50 = *&v51.a;
    v48 = *&v51.tx;
    v46 = v43;
    *&v51.a = v50;
    *&v51.c = v49;
    *&v51.tx = v48;
    [v46 setTransform_];
    [v46 frame];
    CGAffineTransformMakeScale(&v51, v45 / v47, v45 / v47);
    [v46 setTransform_];
    [v46 setFrame_];
  }
}

uint64_t sub_26BA90AC8(void *a1, double a2)
{
  (*(*v2 + 560))();
  v5 = *(*v2 + 352);
  v6 = a1;
  v7 = v5(a1);
  (*(*v2 + 280))(v7, a2);
  (*(*v2 + 232))(1);
  v8 = *(*v2 + 256);

  return v8(1);
}

uint64_t sub_26BA90C14()
{
  v1 = (*(*v0 + 200))();
  if (v1)
  {
    v2 = v1;
    [v1 removeFromSuperview];
  }

  v3 = (*(*v0 + 176))();
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];
  }

  (*(*v0 + 208))(0);
  v5 = *(*v0 + 184);

  return v5(0);
}

uint64_t sub_26BA90D08()
{
  (*(*v0 + 232))(0);
  v1 = *(*v0 + 576);

  return v1();
}

uint64_t sub_26BA90D7C()
{
  sub_26BA3A778(v0 + 48);
  MEMORY[0x26D68C070](v0 + 64);
  MEMORY[0x26D68C070](v0 + 72);
  sub_26BA3E6F8(v0 + OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_stickerIdentifier, &qword_280435B08);
  return v0;
}

uint64_t sub_26BA90DDC()
{
  sub_26BA3A778(v0 + 48);
  MEMORY[0x26D68C070](v0 + 64);
  MEMORY[0x26D68C070](v0 + 72);
  sub_26BA3E6F8(v0 + OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_stickerIdentifier, &qword_280435B08);

  return swift_deallocClassInstance();
}

uint64_t sub_26BA90E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0x3FF0000000000000;
  *(v3 + 56) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 1;
  v5 = OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_stickerIdentifier;
  v6 = sub_26BA9AD5C();
  (*(*(v6 - 8) + 56))(v3 + v5, 1, 1, v6);
  *(v3 + OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_isAnimating) = 0;
  *(v3 + OBJC_IVAR____TtC10StickersUI34StickerAddEffectTransitionAnimator_duration) = 0x3FE0000000000000;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v3 + 56) = a3;
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t type metadata accessor for StickerAddEffectTransitionAnimator()
{
  result = qword_2804380F8;
  if (!qword_2804380F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BA91028()
{
  sub_26BA52DC4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_26BA91108()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v0 + 7);
  v7 = v0[8];
  *&v9.a = 0x3FF0000000000000uLL;
  v9.c = 0.0;
  v9.d = 1.0;
  *&v9.tx = 0uLL;
  [v1 setTransform_];
  [v1 setFrame_];
  CGAffineTransformMakeScale(&v9, v7, v7);
  [v6 setTransform_];
  return [v6 setCenter_];
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BA9122C()
{
  result = qword_280435B58;
  if (!qword_280435B58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280435B58);
  }

  return result;
}

unint64_t sub_26BA91280()
{
  result = qword_280435E00;
  if (!qword_280435E00)
  {
    sub_26BA9B28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435E00);
  }

  return result;
}

uint64_t sub_26BA91350(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI17PoofAnimationView_puffs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_26BA91408()
{
  v1 = OBJC_IVAR____TtC10StickersUI17PoofAnimationView_count;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA9144C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI17PoofAnimationView_count;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26BA914FC()
{
  v1 = (v0 + OBJC_IVAR____TtC10StickersUI17PoofAnimationView_completionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_26BA80B9C(*v1);
  return v2;
}

uint64_t sub_26BA91558(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10StickersUI17PoofAnimationView_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_26BA36050(v6);
}

id sub_26BA91618(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC10StickersUI17PoofAnimationView_puffs] = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtC10StickersUI17PoofAnimationView_count;
  *&v11[OBJC_IVAR____TtC10StickersUI17PoofAnimationView_count] = 0;
  v13 = &v11[OBJC_IVAR____TtC10StickersUI17PoofAnimationView_completionHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  swift_beginAccess();
  *&v11[v12] = a1;
  v16.receiver = v11;
  v16.super_class = v5;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a2, a3, a4, a5);
  sub_26BA91A78();

  return v14;
}

id sub_26BA916F8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC10StickersUI17PoofAnimationView_puffs] = MEMORY[0x277D84F90];
  v11 = OBJC_IVAR____TtC10StickersUI17PoofAnimationView_count;
  *&v5[OBJC_IVAR____TtC10StickersUI17PoofAnimationView_count] = 0;
  v12 = &v5[OBJC_IVAR____TtC10StickersUI17PoofAnimationView_completionHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  swift_beginAccess();
  *&v5[v11] = a1;
  v15.receiver = v5;
  v15.super_class = type metadata accessor for PoofAnimationView();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
  sub_26BA91A78();

  return v13;
}

void sub_26BA917D0()
{
  *(v0 + OBJC_IVAR____TtC10StickersUI17PoofAnimationView_puffs) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC10StickersUI17PoofAnimationView_count) = 0;
  v1 = (v0 + OBJC_IVAR____TtC10StickersUI17PoofAnimationView_completionHandler);
  *v1 = 0;
  v1[1] = 0;
  sub_26BA9BD9C();
  __break(1u);
}

uint64_t sub_26BA918E8()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for PoofAnimationView();
  v1 = objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x68))(v1);
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26BA9BDBC())
  {
    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D68B2E0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v0 bounds];
      [v7 setBounds_];

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_26BA91A78()
{
  v1 = v0;
  v2 = [v0 subviews];
  sub_26BA3EF64(0, &qword_280435D70);
  v3 = sub_26BA9B7FC();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26BA9BDBC())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D68B2E0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(MEMORY[0x277D84F90]);
  v11 = *((*v9 & *v1) + 0x80);
  v12 = (v11)(v10);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = v12;
    if (v12)
    {
      v14 = 0;
      v15 = *((*v9 & *v1) + 0x78);
      do
      {
        v16 = v14 / v11() * 360.0;
        [v1 bounds];
        v18 = v17;
        v20 = v19;
        v21 = v1;
        v22 = sub_26BA94760(v14 == 0, v21, v18, v20, v16);
        [v21 addSubview_];
        v23 = v22;
        v24 = v15(v27);
        v26 = v25;
        MEMORY[0x26D68ADA0]();
        if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26BA9B81C();
        }

        ++v14;
        sub_26BA9B84C();
        v24(v27, 0);
      }

      while (v13 != v14);
    }
  }
}

uint64_t sub_26BA91D98(char a1, uint64_t a2, double a3, double a4, double a5)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_26BA94928(a1, v15, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v17;
}

uint64_t sub_26BA91EB8(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xA0);
  sub_26BA80B9C(a1);
  v7 = v6(a1, a2);
  v8 = (*((*v5 & *v2) + 0x68))(v7);
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26BA9BDBC())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D68B2E0](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      (*((*v5 & *v12) + 0x130))();

      ++v11;
      if (v14 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void (*sub_26BA92038(void *a1))(void)
{
  v2 = v1;
  [a1 removeFromSuperview];
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  v6 = a1;
  v7 = v5(v18);
  v9 = v8;
  v10 = sub_26BA94DA0(v8);

  if (!(*v9 >> 62))
  {
    v11 = *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v10)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    v17 = sub_26BA9BDBC();

    if (v17)
    {
      return result;
    }

    goto LABEL_5;
  }

  v11 = sub_26BA9BDBC();
  if (v11 < v10)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_26BA9512C(v10, v11);
  v12 = v7(v18, 0);
  v13 = (*((*v4 & *v2) + 0x68))(v12);
  if (v13 >> 62)
  {
    goto LABEL_10;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v14)
  {
    return result;
  }

LABEL_5:
  sub_26BA91A78();
  result = (*((*v4 & *v2) + 0x98))();
  if (result)
  {
    v16 = result;
    result();
    return sub_26BA36050(v16);
  }

  return result;
}

uint64_t sub_26BA92374(double a1, double a2)
{
  result = swift_beginAccess();
  qword_280436408 = *&a1;
  unk_280436410 = *&a2;
  return result;
}

uint64_t sub_26BA92470(double a1, double a2)
{
  result = swift_beginAccess();
  qword_280436418 = *&a1;
  unk_280436420 = *&a2;
  return result;
}

uint64_t sub_26BA9256C(double a1, double a2)
{
  result = swift_beginAccess();
  qword_280436428 = *&a1;
  unk_280436430 = *&a2;
  return result;
}

uint64_t sub_26BA92668(double a1)
{
  result = swift_beginAccess();
  qword_2804386A8 = *&a1;
  return result;
}

uint64_t sub_26BA92760(double a1, double a2)
{
  result = swift_beginAccess();
  qword_280436438 = *&a1;
  unk_280436440 = *&a2;
  return result;
}

uint64_t sub_26BA9285C(double a1, double a2)
{
  result = swift_beginAccess();
  qword_280436448 = *&a1;
  unk_280436450 = *&a2;
  return result;
}

uint64_t sub_26BA92958(double a1, double a2)
{
  result = swift_beginAccess();
  qword_280436458 = *&a1;
  unk_280436460 = *&a2;
  return result;
}

uint64_t sub_26BA92A54(double a1, double a2)
{
  result = swift_beginAccess();
  qword_280436468 = *&a1;
  unk_280436470 = *&a2;
  return result;
}

uint64_t sub_26BA92B50(double a1)
{
  result = swift_beginAccess();
  qword_280436478 = *&a1;
  return result;
}

double sub_26BA92C00()
{
  v1 = OBJC_IVAR____TtC10StickersUI8PuffView_angle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA92C44(double a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI8PuffView_angle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_26BA92CF4()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))() + 180.0;

  return fmod(v1, 360.0);
}

uint64_t sub_26BA92D68()
{
  v1 = OBJC_IVAR____TtC10StickersUI8PuffView_favorsCenter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA92DAC(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI8PuffView_favorsCenter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26BA92E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10StickersUI8PuffView_delegate;
  swift_beginAccess();
  return sub_26BA95204(v1 + v3, a1);
}

uint64_t sub_26BA92EB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI8PuffView_delegate;
  swift_beginAccess();
  sub_26BA95274(a1, v1 + v3);
  return swift_endAccess();
}

void sub_26BA92F74()
{
  [v0 bounds];
  CGRectGetWidth(v1);
  [v0 bounds];
  CGRectGetHeight(v2);
}

id sub_26BA92FC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickersUI8PuffView____lazy_storage___imageView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC10StickersUI8PuffView____lazy_storage___imageView);
  }

  else
  {
    v27 = OBJC_IVAR____TtC10StickersUI8PuffView____lazy_storage___imageView;
    (*((*MEMORY[0x277D85000] & *v0) + 0x118))();
    type metadata accessor for PoofAnimationView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_26BA9B68C();

    v6 = [objc_opt_self() imageNamed:v5 inBundle:v4 withConfiguration:0];

    v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    swift_beginAccess();
    [v7 setAlpha_];
    [v0 addSubview_];
    v8 = *(v0 + OBJC_IVAR____TtC10StickersUI8PuffView____lazy_storage___imageView);
    *(v0 + OBJC_IVAR____TtC10StickersUI8PuffView____lazy_storage___imageView) = v7;
    v9 = v7;

    v26 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26BA9E840;
    v11 = [v9 centerXAnchor];
    v12 = [v0 centerXAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v10 + 32) = v13;
    v14 = [v9 centerYAnchor];
    v15 = [v0 centerYAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v10 + 40) = v16;
    v17 = [v9 widthAnchor];
    v18 = *((*MEMORY[0x277D85000] & *v0) + 0xC0);
    v18();
    v19 = [v17 constraintEqualToConstant_];

    *(v10 + 48) = v19;
    v20 = [v9 heightAnchor];
    v18();
    v21 = [v20 constraintEqualToConstant_];

    *(v10 + 56) = v21;
    sub_26BA3EF64(0, &qword_280435B48);
    v22 = sub_26BA9B7EC();

    [v26 activateConstraints_];

    v23 = *(v0 + v27);
    *(v0 + v27) = v7;
    v2 = v9;

    v1 = 0;
  }

  v24 = v1;
  return v2;
}

uint64_t sub_26BA933B4(char a1, uint64_t a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtC10StickersUI8PuffView_angle;
  *&v5[OBJC_IVAR____TtC10StickersUI8PuffView_angle] = 0;
  v12 = OBJC_IVAR____TtC10StickersUI8PuffView_favorsCenter;
  v5[OBJC_IVAR____TtC10StickersUI8PuffView_favorsCenter] = 0;
  v13 = &v5[OBJC_IVAR____TtC10StickersUI8PuffView_delegate];
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  *&v5[OBJC_IVAR____TtC10StickersUI8PuffView____lazy_storage___imageView] = 0;
  result = swift_beginAccess();
  v16 = *&qword_280436468;
  v15 = unk_280436470;
  v17 = unk_280436470 - *&qword_280436468;
  if (COERCE__INT64(fabs(unk_280436470 - *&qword_280436468)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v18 = sub_26BA834DC(0x20000000000001uLL);
    v19 = v16 + v17 * vcvtd_n_f64_u64(v18, 0x35uLL);
    if (v18 == 0x20000000000000)
    {
      v19 = v15;
    }

    v20 = v19 + a5;
    swift_beginAccess();
    *&v5[v11] = v20;
    swift_beginAccess();
    v5[v12] = a1 & 1;
    sub_26BA52F80(a2, v23);
    swift_beginAccess();
    sub_26BA95274(v23, v13);
    swift_endAccess();
    v22.receiver = v5;
    v22.super_class = type metadata accessor for PuffView();
    v21 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, a3, a4);
    __swift_destroy_boxed_opaque_existential_0(a2);
    return v21;
  }

  return result;
}

unint64_t sub_26BA9357C(double *a1, double *a2)
{
  result = swift_beginAccess();
  if (COERCE__INT64(fabs(*a2 - *a1)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    return sub_26BA834DC(0x20000000000001uLL);
  }

  __break(1u);
  return result;
}

void sub_26BA93630()
{
  swift_beginAccess();
  if (COERCE__INT64(fabs(unk_280436440 - *&qword_280436438)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_26BA834DC(0x20000000000001uLL);
    (*((*MEMORY[0x277D85000] & *v0) + 0xC0))();
  }
}

void sub_26BA936FC()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x90))())
  {
    v2 = *((*v1 & *v0) + 0x108);

    v2();
  }

  else
  {
    swift_beginAccess();
    if (COERCE__INT64(fabs(unk_280436450 - *&qword_280436448)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      sub_26BA834DC(0x20000000000001uLL);
      (*((*v1 & *v0) + 0xC0))();
    }
  }
}

uint64_t sub_26BA9385C()
{
  sub_26BA834DC(4uLL);
  v0 = sub_26BA9BE2C();
  MEMORY[0x26D68ACC0](v0);

  return 0x64756F6C63;
}

unint64_t sub_26BA938D4()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x90))() & 1) == 0)
  {
    result = swift_beginAccess();
    v4 = 1.0 / *&qword_280436478;
    if (COERCE__INT64(fabs(1.0 / *&qword_280436478)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        result = v4;
        if ((v4 & 0x8000000000000000) == 0)
        {
          if (result)
          {
            if (sub_26BA834DC(result))
            {
              return (*((*v1 & *v0) + 0x70))();
            }

            else
            {
              return (*((*v1 & *v0) + 0x88))();
            }
          }

LABEL_18:
          __break(1u);
          return result;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }

  v2 = *((*v1 & *v0) + 0x88);

  return v2();
}

void sub_26BA93A60()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PuffView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = sub_26BA92FC8();
  v2 = [v1 layer];

  [v2 setCornerRadius_];
  v3 = *(v0 + OBJC_IVAR____TtC10StickersUI8PuffView____lazy_storage___imageView);
  [v0 center];
  [v3 setCenter_];
}

id sub_26BA93B98()
{
  v1 = sub_26BA92FC8();
  swift_beginAccess();
  [v1 setAlpha_];

  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x108))();
  v4 = (*((*v2 & *v0) + 0x70))();
  v5 = __sincos_stret(v4 * 3.14159265 / 180.0);
  components.scale.width = (*((*v2 & *v0) + 0x100))();
  components.scale.height = components.scale.width;
  components.horizontalShear = 0.0;
  components.rotation = 0.0;
  components.translation.dx = v3 * v5.__cosval;
  components.translation.dy = v3 * v5.__sinval;
  CGAffineTransformMakeWithComponents(&v8, &components);
  v6 = *(v0 + OBJC_IVAR____TtC10StickersUI8PuffView____lazy_storage___imageView);
  components = v8;
  return [v6 setTransform_];
}

uint64_t sub_26BA93D2C()
{
  v45 = sub_26BA9B28C();
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_26BA9B2BC();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v0) + 0x128))(v3);
  v7 = (*((*v5 & *v0) + 0xE8))(v6);
  v8 = (*((*v5 & *v0) + 0xF0))();
  v9 = (*((*v5 & *v0) + 0x110))();
  v10 = (*((*v5 & *v0) + 0x120))();
  v11 = __sincos_stret(v10 * 3.14159265 / 180.0);
  components.scale = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
  components.horizontalShear = 0.0;
  components.rotation = 0.0;
  components.translation.dx = v9 * v11.__cosval;
  components.translation.dy = v9 * v11.__sinval;
  CGAffineTransformMakeWithComponents(&v51, &components);
  v12 = dispatch_group_create();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v14 = objc_allocWithZone(MEMORY[0x277D75D40]);
  *&components.translation.dx = sub_26BA95308;
  *&components.translation.dy = v13;
  *&components.scale.width = MEMORY[0x277D85DD0];
  *&components.scale.height = 1107296256;
  *&components.horizontalShear = sub_26BA3D478;
  *&components.rotation = &block_descriptor_8;
  v15 = _Block_copy(&components);
  v16 = v0;

  v17 = [v14 initWithDuration:3 curve:v15 animations:0.03];
  _Block_release(v15);
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *&components.translation.dx = sub_26BA91210;
  *&components.translation.dy = v18;
  *&components.scale.width = MEMORY[0x277D85DD0];
  *&components.scale.height = 1107296256;
  *&components.horizontalShear = sub_26BA7F23C;
  *&components.rotation = &block_descriptor_13_0;
  v19 = _Block_copy(&components);
  v20 = v12;

  v41 = v17;
  [v17 addCompletion_];
  _Block_release(v19);
  v21 = sub_26BA834DC(0x20000000000001uLL);
  v22 = vcvtd_n_f64_u64(v21, 0x35uLL) * 200.0 + 200.0;
  if (v21 == 0x20000000000000)
  {
    v23 = 400.0;
  }

  else
  {
    v23 = v22;
  }

  v42 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:2.0 stiffness:v23 damping:50.0 initialVelocity:{0.0, 0.0}];
  v24 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v42 timingParameters:v8];
  v25 = swift_allocObject();
  *(v25 + 16) = v16;
  *(v25 + 24) = v20;
  *&components.translation.dx = sub_26BA953A8;
  *&components.translation.dy = v25;
  *&components.scale.width = MEMORY[0x277D85DD0];
  *&components.scale.height = 1107296256;
  *&components.horizontalShear = sub_26BA7F23C;
  *&components.rotation = &block_descriptor_19;
  v26 = _Block_copy(&components);
  v27 = v16;
  v28 = v20;

  [v24 addCompletion_];
  _Block_release(v26);
  v29 = swift_allocObject();
  v30 = *&v51.c;
  *(v29 + 24) = *&v51.a;
  *(v29 + 16) = v27;
  *(v29 + 40) = v30;
  *(v29 + 56) = *&v51.tx;
  *&components.translation.dx = sub_26BA953FC;
  *&components.translation.dy = v29;
  *&components.scale.width = MEMORY[0x277D85DD0];
  *&components.scale.height = 1107296256;
  *&components.horizontalShear = sub_26BA3D478;
  *&components.rotation = &block_descriptor_25;
  v31 = _Block_copy(&components);
  v32 = v27;

  [v24 addAnimations_];
  _Block_release(v31);
  dispatch_group_enter(v28);
  [v17 startAnimationAfterDelay_];
  dispatch_group_enter(v28);
  [v24 startAnimationAfterDelay_];
  sub_26BA3EF64(0, &qword_280435B58);
  v33 = sub_26BA9BA0C();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&components.translation.dx = sub_26BA95460;
  *&components.translation.dy = v34;
  *&components.scale.width = MEMORY[0x277D85DD0];
  *&components.scale.height = 1107296256;
  *&components.horizontalShear = sub_26BA3D478;
  *&components.rotation = &block_descriptor_31;
  v35 = _Block_copy(&components);

  v36 = v43;
  sub_26BA9B2AC();
  v49 = MEMORY[0x277D84F90];
  sub_26BA91280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
  sub_26BA3EEB8();
  v37 = v44;
  v38 = v45;
  sub_26BA9BC5C();
  sub_26BA9B9CC();
  _Block_release(v35);

  (*(v48 + 8))(v37, v38);
  (*(v46 + 8))(v36, v47);
}

void sub_26BA94534()
{
  *(v0 + OBJC_IVAR____TtC10StickersUI8PuffView_angle) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI8PuffView_favorsCenter) = 0;
  v1 = v0 + OBJC_IVAR____TtC10StickersUI8PuffView_delegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI8PuffView____lazy_storage___imageView) = 0;
  sub_26BA9BD9C();
  __break(1u);
}

id sub_26BA946DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26BA94760(char a1, uint64_t a2, double a3, double a4, double a5)
{
  v25[3] = type metadata accessor for PoofAnimationView();
  v25[4] = &off_287C70BC0;
  v25[0] = a2;
  v10 = type metadata accessor for PuffView();
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC10StickersUI8PuffView_angle;
  *&v11[OBJC_IVAR____TtC10StickersUI8PuffView_angle] = 0;
  v13 = OBJC_IVAR____TtC10StickersUI8PuffView_favorsCenter;
  v11[OBJC_IVAR____TtC10StickersUI8PuffView_favorsCenter] = 0;
  v14 = &v11[OBJC_IVAR____TtC10StickersUI8PuffView_delegate];
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  *&v11[OBJC_IVAR____TtC10StickersUI8PuffView____lazy_storage___imageView] = 0;
  result = swift_beginAccess();
  v17 = *&qword_280436468;
  v16 = unk_280436470;
  v18 = unk_280436470 - *&qword_280436468;
  if (COERCE__INT64(fabs(unk_280436470 - *&qword_280436468)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_26BA834DC(0x20000000000001uLL);
    v20 = v17 + v18 * vcvtd_n_f64_u64(v19, 0x35uLL);
    if (v19 == 0x20000000000000)
    {
      v20 = v16;
    }

    v21 = v20 + a5;
    swift_beginAccess();
    *&v11[v12] = v21;
    swift_beginAccess();
    v11[v13] = a1 & 1;
    sub_26BA52F80(v25, v24);
    swift_beginAccess();
    sub_26BA95274(v24, v14);
    swift_endAccess();
    v23.receiver = v11;
    v23.super_class = v10;
    v22 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, a3, a4);
    __swift_destroy_boxed_opaque_existential_0(v25);
    return v22;
  }

  return result;
}

uint64_t sub_26BA94928(char a1, uint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[3] = a7;
  v30[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a2, a7);
  v15 = type metadata accessor for PuffView();
  v16 = objc_allocWithZone(v15);
  v17 = OBJC_IVAR____TtC10StickersUI8PuffView_angle;
  *&v16[OBJC_IVAR____TtC10StickersUI8PuffView_angle] = 0;
  v18 = OBJC_IVAR____TtC10StickersUI8PuffView_favorsCenter;
  v16[OBJC_IVAR____TtC10StickersUI8PuffView_favorsCenter] = 0;
  v19 = &v16[OBJC_IVAR____TtC10StickersUI8PuffView_delegate];
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *&v16[OBJC_IVAR____TtC10StickersUI8PuffView____lazy_storage___imageView] = 0;
  result = swift_beginAccess();
  v22 = *&qword_280436468;
  v21 = unk_280436470;
  v23 = unk_280436470 - *&qword_280436468;
  if (COERCE__INT64(fabs(unk_280436470 - *&qword_280436468)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v24 = sub_26BA834DC(0x20000000000001uLL);
    v25 = v22 + v23 * vcvtd_n_f64_u64(v24, 0x35uLL);
    if (v24 == 0x20000000000000)
    {
      v25 = v21;
    }

    v26 = v25 + a5;
    swift_beginAccess();
    *&v16[v17] = v26;
    swift_beginAccess();
    v16[v18] = a1 & 1;
    sub_26BA52F80(v30, v29);
    swift_beginAccess();
    sub_26BA95274(v29, v19);
    swift_endAccess();
    v28.receiver = v16;
    v28.super_class = v15;
    v27 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, a3, a4);
    __swift_destroy_boxed_opaque_existential_0(v30);
    return v27;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_26BA94B6C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_26BA9BDBC();
    }

    result = sub_26BA9BD2C();
    *v1 = result;
  }

  return result;
}

uint64_t sub_26BA94C28(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26BA9BDBC();
  }

  return sub_26BA9BD2C();
}

unint64_t sub_26BA94C8C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_26BA9BDBC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D68B2E0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_26BA3EF64(0, &qword_280436240);
    v7 = sub_26BA9BAEC();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_26BA94DA0(unint64_t *a1)
{
  v3 = *a1;
  result = sub_26BA94C8C(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_26BA9BDBC();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_280436240;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_26BA9BDBC())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D68B2E0](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_26BA3EF64(0, v8);
    v12 = sub_26BA9BAEC();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x26D68B2E0](v6, v3);
          v14 = MEMORY[0x26D68B2E0](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_26BA94C28(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_26BA94C28(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
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
  __break(1u);
  return sub_26BA9BDBC();
}

uint64_t sub_26BA95030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for PuffView();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_26BA9BDBC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_26BA9BDBC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA9512C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_26BA9BDBC();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_26BA9BDBC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_26BA94B6C(result);

  return sub_26BA95030(v4, v2, 0);
}

uint64_t sub_26BA95204(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804364B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BA95274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804364B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26BA95308()
{
  v1 = *(v0 + 16);
  v2 = sub_26BA92FC8();
  (*((*MEMORY[0x277D85000] & *v1) + 0xF8))();
  [v2 setAlpha_];
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26BA953A8()
{
  v1 = *(v0 + 24);
  v2 = sub_26BA92FC8();
  [v2 setAlpha_];

  dispatch_group_leave(v1);
}

void sub_26BA953FC()
{
  v1 = v0;
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = sub_26BA92FC8();
  v5 = *(v1 + 40);
  v6[0] = *(v1 + 24);
  v6[1] = v5;
  v7 = v2;
  v8 = v3;
  [v4 setTransform_];
}

void *sub_26BA95460()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    (*((*MEMORY[0x277D85000] & *result) + 0xA8))(v7);
    if (v7[3])
    {
      sub_26BA52F80(v7, v4);
      sub_26BA95558(v7);
      v2 = v5;
      v3 = v6;
      __swift_project_boxed_opaque_existential_1(v4, v5);
      (*(v3 + 8))(v1, v2, v3);

      return __swift_destroy_boxed_opaque_existential_0(v4);
    }

    else
    {

      return sub_26BA95558(v7);
    }
  }

  return result;
}

uint64_t sub_26BA95558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804364B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BA955D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BA955F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void type metadata accessor for CGAffineTransform()
{
  if (!qword_2804364C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2804364C0);
    }
  }
}

StickersUI::StickersCancelState_optional __swiftcall StickersCancelState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26BA958B8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_26BA9592C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 17) = a1;
  return result;
}

void *sub_26BA959C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 184))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_26BA95A24(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 192))(&v4);
}

uint64_t sub_26BA95A7C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 18);
  return result;
}

uint64_t sub_26BA95AC0(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 18) = v2;
  return result;
}

uint64_t sub_26BA95BC4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 19) = a1;
  return result;
}

uint64_t sub_26BA95C88(char a1)
{
  result = swift_beginAccess();
  *(v1 + 20) = a1;
  return result;
}

_BYTE *(*sub_26BA95D34(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 21);
  return sub_26BA95D60;
}

uint64_t sub_26BA95D7C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_26BA95DC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_26BA95E1C()
{
  sub_26BA3EF64(0, &qword_280435DD8);
  v1 = *(*v0 + 136);
  v1();
  v18 = sub_26BA9BACC();
  (*(*v0 + 160))();
  v20 = sub_26BA9BACC();
  (*(*v0 + 184))(&v24);
  v2 = sub_26BA9BADC();
  (*(*v0 + 208))();
  v3 = sub_26BA9BACC();
  (*(*v0 + 216))();
  v4 = sub_26BA9BACC();
  v1();
  v5 = sub_26BA9BADC();
  (*(*v0 + 288))();
  v6 = sub_26BA9BACC();
  v19 = (v1)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804364C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BA9EEE0;
  strcpy((inited + 32), "addedModality");
  *(inited + 46) = -4864;
  *(inited + 48) = v5;
  *(inited + 56) = 0x68506576694C7369;
  *(inited + 64) = 0xEB000000006F746FLL;
  *(inited + 72) = v20;
  *(inited + 80) = 0x746174537473616CLL;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v2;
  *(inited + 104) = 0x746F685064657375;
  *(inited + 112) = 0xEF72656B6369506FLL;
  *(inited + 120) = v18;
  *(inited + 128) = 0xD00000000000001ELL;
  *(inited + 136) = 0x800000026BAA10F0;
  *(inited + 144) = v4;
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x800000026BAA1110;
  *(inited + 168) = v3;
  *(inited + 176) = 0x6B63697453736177;
  *(inited + 184) = 0xEF64656464417265;
  *(inited + 192) = v6;
  v22 = v5;
  v21 = v20;
  v8 = v2;
  v9 = v18;
  v10 = v4;
  v11 = v3;
  v12 = v6;
  sub_26BA97564(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804364D0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804364D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804364E0);
  swift_dynamicCast();
  if ((v19 & 1) != 0 && v24)
  {
    v13 = sub_26BA9BADC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v24;
    v24 = 0x8000000000000000;
    sub_26BA971C8(v13, 0x6369506F746F6870, 0xEB0000000072656BLL, isUniquelyReferenced_nonNull_native);
    v24 = v23;
  }

  v15 = sub_26BA9B68C();
  if (v24)
  {
    sub_26BA3EF64(0, &qword_280436240);

    v16 = sub_26BA9B62C();
  }

  else
  {
    v16 = 0;
  }

  AnalyticsSendEvent();
}

uint64_t StickersAnalyticsCreationEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_26BA96374()
{
  v0 = swift_allocObject();
  *&result = 0x2000000020000;
  *(v0 + 16) = 0x20000;
  *(v0 + 20) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return result;
}

double sub_26BA963A8()
{
  *&result = 0x2000000020000;
  *(v0 + 16) = 0x20000;
  *(v0 + 20) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return result;
}

StickersUI::StickersAnalyticsEffectType_optional __swiftcall StickersAnalyticsEffectType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

StickersUI::StickersAnalyticsEditTiming_optional __swiftcall StickersAnalyticsEditTiming.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_26BA96418@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_26BA96454()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_26BA964A0()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_26BA96504(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_26BA965B0()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_26BA965E8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 72);
  return result;
}

uint64_t sub_26BA9662C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 72) = v2;
  return result;
}

uint64_t sub_26BA966E0()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_26BA96744(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_26BA967F0()
{
  swift_beginAccess();
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_26BA9683C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_26BA968E0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 120);
  return result;
}

uint64_t sub_26BA96924(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 120) = v2;
  return result;
}

void sub_26BA969B4()
{
  v1 = v0;
  sub_26BA3EF64(0, &qword_280435DD8);
  (*(*v0 + 152))();
  v2 = sub_26BA9BACC();
  (*(*v0 + 176))(&v19);
  v3 = sub_26BA9BADC();
  (*(*v0 + 200))();
  v4 = sub_26BA9BACC();
  (*(*v0 + 248))(&v19);
  v17 = sub_26BA9BADC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804364C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BA9EEF0;
  v6 = v0[5];
  *(inited + 32) = v0[4];
  *(inited + 40) = v6;
  *(inited + 48) = v2;
  v7 = v0[8];
  *(inited + 56) = v1[7];
  *(inited + 64) = v7;
  *(inited + 72) = v3;
  v8 = v1[11];
  *(inited + 80) = v1[10];
  *(inited + 88) = v8;
  *(inited + 96) = v4;
  v9 = *(*v1 + 224);

  v18 = v2;

  v10 = v3;

  v11 = v4;
  *(inited + 104) = v9();
  *(inited + 112) = v12;
  *(inited + 120) = v17;
  v13 = v17;
  v14 = sub_26BA97564(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804364D0);
  swift_arrayDestroy();
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804364D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804364E0);
  swift_dynamicCast();
  v15 = sub_26BA9B68C();
  sub_26BA3EF64(0, &qword_280436240);
  v16 = sub_26BA9B62C();

  AnalyticsSendEvent();
}

uint64_t StickersAnalyticsEditingEvent.deinit()
{

  return v0;
}

uint64_t StickersAnalyticsEditingEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26BA96D48()
{
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000002BLL;
  *(result + 24) = 0x800000026BAA1130;
  *(result + 32) = 0xD000000000000012;
  *(result + 40) = 0x800000026BAA1160;
  *(result + 48) = 0;
  *(result + 56) = 0x7954746365666665;
  *(result + 64) = 0xEA00000000006570;
  *(result + 72) = 0;
  *(result + 80) = 0x6B63697453736177;
  *(result + 88) = 0xEF64657661537265;
  *(result + 96) = 0;
  *(result + 104) = 0x696D695474696465;
  *(result + 112) = 0xEA0000000000676ELL;
  *(result + 120) = 0;
  return result;
}

uint64_t sub_26BA96E08()
{
  result = v0;
  *(v0 + 16) = 0xD00000000000002BLL;
  *(v0 + 24) = 0x800000026BAA1130;
  *(v0 + 32) = 0xD000000000000012;
  *(v0 + 40) = 0x800000026BAA1160;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0x7954746365666665;
  *(v0 + 64) = 0xEA00000000006570;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0x6B63697453736177;
  *(v0 + 88) = 0xEF64657661537265;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0x696D695474696465;
  *(v0 + 112) = 0xEA0000000000676ELL;
  *(v0 + 120) = 0;
  return result;
}

unint64_t sub_26BA96EAC(uint64_t a1, uint64_t a2)
{
  sub_26BA9BEEC();
  sub_26BA9B6EC();
  v4 = sub_26BA9BF1C();

  return sub_26BA97340(a1, a2, v4);
}

uint64_t sub_26BA96F24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436500);
  v35 = a2;
  result = sub_26BA9BDDC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_26BA9BEEC();
      sub_26BA9B6EC();
      result = sub_26BA9BF1C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26BA971C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26BA96EAC(a2, a3);
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
      sub_26BA96F24(v16, a4 & 1);
      v11 = sub_26BA96EAC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26BA9BE7C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26BA973F8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_26BA97340(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26BA9BE4C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_26BA973F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436500);
  v2 = *v0;
  v3 = sub_26BA9BDCC();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

unint64_t sub_26BA97564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436508);
    v3 = sub_26BA9BDEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26BA96EAC(v5, v6);
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

unint64_t sub_26BA9766C()
{
  result = qword_2804364E8;
  if (!qword_2804364E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804364E8);
  }

  return result;
}

unint64_t sub_26BA976C4()
{
  result = qword_2804364F0;
  if (!qword_2804364F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804364F0);
  }

  return result;
}

unint64_t sub_26BA9771C()
{
  result = qword_2804364F8;
  if (!qword_2804364F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804364F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickersCancelState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StickersCancelState(uint64_t result, unsigned int a2, unsigned int a3)
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

unsigned __int8 *static TempStickerURIHelpers_Staging107211449.classify(uri:)@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v92 - v3;
  v5 = sub_26BA9AD5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804363A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v92 - v10;
  v12 = sub_26BA9ACCC();
  MEMORY[0x28223BE20](v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15;
  sub_26BA9ACAC();
  if ((*(v16 + 48))(v11, 1, v12) == 1)
  {
    sub_26BA3E6F8(v11, &qword_2804363A8);
LABEL_10:
    type metadata accessor for TempStickerURIHelpers_Staging107211449.URIType();
    return swift_storeEnumTagMultiPayload();
  }

  (*(v16 + 32))(v14, v11, v12);
  v17 = sub_26BA9AC9C();
  if (!v18)
  {
LABEL_9:
    (*(v16 + 8))(v14, v12);
    goto LABEL_10;
  }

  if (v17 == 0x72656B63697473 && v18 == 0xE700000000000000)
  {
  }

  else
  {
    v20 = sub_26BA9BE4C();

    if ((v20 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v97 = v16;
  v98 = a1;
  v22 = sub_26BA9AC3C();
  v23 = v22;
  v24 = v22[2];
  if ((v24 - 6) < 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_14;
  }

  v26 = v22[6];
  v25 = v22[7];
  v27 = v26 == 1919251317 && v25 == 0xE400000000000000;
  v28 = v27;
  v96 = v28;
  if (!v27 && (sub_26BA9BE4C() & 1) == 0 && (v26 != 0x746E65636572 || v25 != 0xE600000000000000) && (sub_26BA9BE4C() & 1) == 0)
  {
    if (v26 == 0x696A6F6D656DLL && v25 == 0xE600000000000000 || (sub_26BA9BE4C() & 1) != 0)
    {
      if (v24 == 4)
      {
        v39 = v23[8];
        v40 = v23[9];
        v42 = v23[10];
        v41 = v23[11];

        (*(v97 + 8))(v14, v12);
        v43 = v98;
        *v98 = v39;
        v43[1] = v40;
        v43[2] = v42;
        v43[3] = v41;
        type metadata accessor for TempStickerURIHelpers_Staging107211449.URIType();
        return swift_storeEnumTagMultiPayload();
      }
    }

    else if (v26 == 0x696A6F6D65 && v25 == 0xE500000000000000 || (sub_26BA9BE4C() & 1) != 0)
    {
      if (v24 == 4)
      {
        v58 = v23[8];
        v57 = v23[9];
        v60 = v23[10];
        v59 = v23[11];

        if (v58 == 0x696669746E656469 && v57 == 0xEA00000000007265)
        {

          v61 = v98;
        }

        else
        {
          v81 = sub_26BA9BE4C();

          v61 = v98;
          if ((v81 & 1) == 0)
          {
            (*(v97 + 8))(v14, v12);

            goto LABEL_10;
          }
        }

        v82 = sub_26BA9872C(v60, v59);
        v84 = v83;

        (*(v97 + 8))(v14, v12);
        if (v84)
        {
          *v61 = v82;
          v61[1] = v84;
          type metadata accessor for TempStickerURIHelpers_Staging107211449.URIType();
          return swift_storeEnumTagMultiPayload();
        }

        goto LABEL_10;
      }
    }

    else if (v26 == 0x61705F6472696874 && v25 == 0xEB00000000797472 || (sub_26BA9BE4C()) && v24 == 5)
    {
      v74 = v23[8];
      v75 = v23[9];
      v77 = v23[10];
      v76 = v23[11];
      v79 = v23[12];
      v78 = v23[13];

      (*(v97 + 8))(v14, v12);
      v80 = v98;
      *v98 = v74;
      v80[1] = v75;
      v80[2] = v77;
      v80[3] = v76;
      v80[4] = v79;
      v80[5] = v78;
      type metadata accessor for TempStickerURIHelpers_Staging107211449.URIType();
      return swift_storeEnumTagMultiPayload();
    }

LABEL_14:
    (*(v97 + 8))(v14, v12);
LABEL_31:

    type metadata accessor for TempStickerURIHelpers_Staging107211449.URIType();
    return swift_storeEnumTagMultiPayload();
  }

  if (v24 != 4)
  {
    v35 = *(v97 + 8);

    v35(v14, v12);

    goto LABEL_31;
  }

  v29 = v25;
  v30 = v23[8];
  v31 = v23[9];
  v32 = v23[10];
  v92 = v26;
  v93 = v32;
  v33 = v23[11];
  v95 = v29;

  v94 = v33;

  if (v30 == 0x696669746E656469 && v31 == 0xEA00000000007265)
  {

    v34 = v98;
LABEL_34:

    sub_26BA9AD0C();

    (*(v97 + 8))(v14, v12);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      v37 = *(v6 + 32);
      v37(v8, v4, v5);
      v37(v34, v8, v5);
      type metadata accessor for TempStickerURIHelpers_Staging107211449.URIType();
      return swift_storeEnumTagMultiPayload();
    }

    sub_26BA3E6F8(v4, &qword_280435B08);
    goto LABEL_10;
  }

  v36 = sub_26BA9BE4C();
  v34 = v98;
  if (v36)
  {

    goto LABEL_34;
  }

  if (v30 == 0x7865646E69 && v31 == 0xE500000000000000)
  {

    v38 = v94;
  }

  else
  {
    v44 = sub_26BA9BE4C();

    v38 = v94;
    if ((v44 & 1) == 0)
    {
      (*(v97 + 8))(v14, v12);

      goto LABEL_10;
    }
  }

  v45 = HIBYTE(v38) & 0xF;
  result = v93;
  v46 = v93 & 0xFFFFFFFFFFFFLL;
  if ((v38 & 0x2000000000000000) != 0)
  {
    v47 = HIBYTE(v38) & 0xF;
  }

  else
  {
    v47 = v93 & 0xFFFFFFFFFFFFLL;
  }

  v48 = v95;
  if (!v47)
  {

    goto LABEL_116;
  }

  if ((v38 & 0x1000000000000000) == 0)
  {
    if ((v38 & 0x2000000000000000) != 0)
    {
      v99[0] = v93;
      v99[1] = v38 & 0xFFFFFFFFFFFFFFLL;
      if (v93 == 43)
      {
        if (v45)
        {
          if (--v45)
          {
            v50 = 0;
            v65 = v99 + 1;
            while (1)
            {
              v66 = *v65 - 48;
              if (v66 > 9)
              {
                break;
              }

              v67 = 10 * v50;
              if ((v50 * 10) >> 64 != (10 * v50) >> 63)
              {
                break;
              }

              v50 = v67 + v66;
              if (__OFADD__(v67, v66))
              {
                break;
              }

              ++v65;
              if (!--v45)
              {
                goto LABEL_115;
              }
            }
          }

          goto LABEL_114;
        }

LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      if (v93 != 45)
      {
        if (v45)
        {
          v50 = 0;
          v70 = v99;
          while (1)
          {
            v71 = *v70 - 48;
            if (v71 > 9)
            {
              break;
            }

            v72 = 10 * v50;
            if ((v50 * 10) >> 64 != (10 * v50) >> 63)
            {
              break;
            }

            v50 = v72 + v71;
            if (__OFADD__(v72, v71))
            {
              break;
            }

            ++v70;
            if (!--v45)
            {
              goto LABEL_115;
            }
          }
        }

        goto LABEL_114;
      }

      if (v45)
      {
        if (--v45)
        {
          v50 = 0;
          v54 = v99 + 1;
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              break;
            }

            v56 = 10 * v50;
            if ((v50 * 10) >> 64 != (10 * v50) >> 63)
            {
              break;
            }

            v50 = v56 - v55;
            if (__OFSUB__(v56, v55))
            {
              break;
            }

            ++v54;
            if (!--v45)
            {
              goto LABEL_115;
            }
          }
        }

        goto LABEL_114;
      }
    }

    else
    {
      if ((v93 & 0x1000000000000000) != 0)
      {
        result = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_26BA9BD3C();
      }

      v49 = *result;
      if (v49 == 43)
      {
        if (v46 >= 1)
        {
          v45 = v46 - 1;
          if (v46 != 1)
          {
            v50 = 0;
            if (result)
            {
              v62 = result + 1;
              while (1)
              {
                v63 = *v62 - 48;
                if (v63 > 9)
                {
                  goto LABEL_114;
                }

                v64 = 10 * v50;
                if ((v50 * 10) >> 64 != (10 * v50) >> 63)
                {
                  goto LABEL_114;
                }

                v50 = v64 + v63;
                if (__OFADD__(v64, v63))
                {
                  goto LABEL_114;
                }

                ++v62;
                if (!--v45)
                {
                  goto LABEL_115;
                }
              }
            }

            goto LABEL_106;
          }

          goto LABEL_114;
        }

        goto LABEL_141;
      }

      if (v49 != 45)
      {
        if (v46)
        {
          v50 = 0;
          if (result)
          {
            while (1)
            {
              v68 = *result - 48;
              if (v68 > 9)
              {
                goto LABEL_114;
              }

              v69 = 10 * v50;
              if ((v50 * 10) >> 64 != (10 * v50) >> 63)
              {
                goto LABEL_114;
              }

              v50 = v69 + v68;
              if (__OFADD__(v69, v68))
              {
                goto LABEL_114;
              }

              ++result;
              if (!--v46)
              {
                goto LABEL_106;
              }
            }
          }

          goto LABEL_106;
        }

LABEL_114:
        v50 = 0;
        LOBYTE(v45) = 1;
LABEL_115:
        v100 = v45;
        v73 = v45;

        if (v73)
        {
LABEL_116:

          (*(v97 + 8))(v14, v12);
          goto LABEL_10;
        }

        goto LABEL_129;
      }

      if (v46 >= 1)
      {
        v45 = v46 - 1;
        if (v46 != 1)
        {
          v50 = 0;
          if (result)
          {
            v51 = result + 1;
            while (1)
            {
              v52 = *v51 - 48;
              if (v52 > 9)
              {
                goto LABEL_114;
              }

              v53 = 10 * v50;
              if ((v50 * 10) >> 64 != (10 * v50) >> 63)
              {
                goto LABEL_114;
              }

              v50 = v53 - v52;
              if (__OFSUB__(v53, v52))
              {
                goto LABEL_114;
              }

              ++v51;
              if (!--v45)
              {
                goto LABEL_115;
              }
            }
          }

LABEL_106:
          LOBYTE(v45) = 0;
          goto LABEL_115;
        }

        goto LABEL_114;
      }

      __break(1u);
    }

    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v50 = sub_26BA98A00(v93, v38, 10);
  v86 = v85;

  if (v86)
  {
    goto LABEL_116;
  }

LABEL_129:
  if (v96 & 1) != 0 || (sub_26BA9BE4C())
  {
    (*(v97 + 8))(v14, v12);

    v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436510) + 48);
    *v34 = v50;
    v88 = MEMORY[0x277D68198];
LABEL_137:
    v90 = *v88;
    v91 = sub_26BA9B42C();
    (*(*(v91 - 8) + 104))(v34 + v87, v90, v91);
    type metadata accessor for TempStickerURIHelpers_Staging107211449.URIType();
    return swift_storeEnumTagMultiPayload();
  }

  if (v92 == 0x746E65636572 && v48 == 0xE600000000000000)
  {

    (*(v97 + 8))(v14, v12);
LABEL_136:
    v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436510) + 48);
    *v34 = v50;
    v88 = MEMORY[0x277D681A0];
    goto LABEL_137;
  }

  v89 = sub_26BA9BE4C();

  result = (*(v97 + 8))(v14, v12);
  if (v89)
  {
    goto LABEL_136;
  }

LABEL_143:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TempStickerURIHelpers_Staging107211449.URIType()
{
  result = qword_280438590;
  if (!qword_280438590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BA9872C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_26BA9B76C();
  }

  else
  {
    return 0;
  }
}

unint64_t static TempStickerURIHelpers_Staging107211449.uri(identifier:)()
{
  v0 = sub_26BA9AD1C();
  MEMORY[0x26D68ACC0](v0);

  return 0xD00000000000001BLL;
}

uint64_t static TempStickerURIHelpers_Staging107211449.emoji(char:)()
{
  sub_26BA9BCFC();
  MEMORY[0x26D68ACC0](0xD00000000000001CLL, 0x800000026BAA1330);
  sub_26BA9B65C();
  return 0;
}

unint64_t static TempStickerURIHelpers_Staging107211449.memojiURI(avatarRecordIdentifier:stickerConfigurationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26BA9BCFC();

  MEMORY[0x26D68ACC0](a1, a2);
  MEMORY[0x26D68ACC0](47, 0xE100000000000000);
  MEMORY[0x26D68ACC0](a3, a4);
  return 0xD000000000000012;
}

unint64_t static TempStickerURIHelpers_Staging107211449.thirdPartyURI(teamIdentifier:bundleIdentifier:filename:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_26BA9BCFC();

  MEMORY[0x26D68ACC0](a1, a2);
  MEMORY[0x26D68ACC0](47, 0xE100000000000000);
  MEMORY[0x26D68ACC0](a3, a4);
  MEMORY[0x26D68ACC0](47, 0xE100000000000000);
  MEMORY[0x26D68ACC0](a5, a6);
  return 0xD000000000000017;
}

unsigned __int8 *sub_26BA98A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_26BA9B78C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26BA991F8();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26BA9BD3C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_26BA98FEC()
{
  sub_26BA9AD5C();
  if (v0 <= 0x3F)
  {
    sub_26BA9909C();
    if (v1 <= 0x3F)
    {
      sub_26BA99104();
      if (v2 <= 0x3F)
      {
        sub_26BA99164();
        if (v3 <= 0x3F)
        {
          sub_26BA99194();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26BA9909C()
{
  if (!qword_280436518)
  {
    sub_26BA9B42C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280436518);
    }
  }
}

void sub_26BA99104()
{
  if (!qword_280436520)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280436520);
    }
  }
}

uint64_t sub_26BA99164()
{
  result = qword_280436528;
  if (!qword_280436528)
  {
    result = MEMORY[0x277D835B0];
    atomic_store(MEMORY[0x277D835B0], &qword_280436528);
  }

  return result;
}

void sub_26BA99194()
{
  if (!qword_280436530)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280436530);
    }
  }
}

uint64_t sub_26BA991F8()
{
  v0 = sub_26BA9B79C();
  v4 = sub_26BA99278(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26BA99278(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_26BA9BC4C();
    if (!v9 || (v10 = v9, v11 = sub_26BA3E438(v9, 0), v12 = sub_26BA993D0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_26BA9B6DC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26BA9B6DC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_26BA9BD3C();
LABEL_4:

  return sub_26BA9B6DC();
}

unint64_t sub_26BA993D0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_26BA995F0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26BA9B73C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26BA9BD3C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_26BA995F0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_26BA9B71C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_26BA995F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26BA9B74C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D68ACF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_26BA99694()
{
  v1 = OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_canAddStickers;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_26BA996D8(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_canAddStickers;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return [*(v1 + OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_button) setEnabled_];
}

void (*sub_26BA99744(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_canAddStickers;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_26BA997CC;
}

void sub_26BA997CC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_button) setEnabled_];
  }

  free(v3);
}

uint64_t sub_26BA99834()
{
  v25 = sub_26BA9BBFC();
  v0 = *(v25 - 8);
  v1 = MEMORY[0x28223BE20](v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - v4;
  v6 = sub_26BA9AFCC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = sub_26BA9B68C();
  v14 = [objc_opt_self() systemImageNamed_];

  if (v14)
  {
    v15 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:34.0];
    v16 = [v14 imageByApplyingSymbolConfiguration_];
  }

  else
  {
    v16 = 0;
  }

  sub_26BA9AFBC();
  sub_26BA9AF9C();
  sub_26BA9BBEC();
  v17 = v16;
  sub_26BA9BBBC();
  v18 = objc_opt_self();
  v19 = [v18 quaternarySystemFillColor];
  sub_26BA9BB6C();
  v20 = [v18 secondaryLabelColor];
  sub_26BA9BB7C();
  (*(v7 + 16))(v10, v12, v6);
  sub_26BA9BB0C();
  sub_26BA9A78C();
  v21 = v25;
  (*(v0 + 16))(v3, v5, v25);
  v22 = sub_26BA9BC0C();

  (*(v0 + 8))(v5, v21);
  (*(v7 + 8))(v12, v6);
  return v22;
}

id sub_26BA99B64()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_button) menu];

  return v1;
}

void sub_26BA99BA4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_button);
  [v2 setShowsMenuAsPrimaryAction_];
  [v2 setMenu_];
}

void (*sub_26BA99C18(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_button);
  a1[1] = v3;
  *a1 = [v3 menu];
  return sub_26BA99C7C;
}

void sub_26BA99C7C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1 != 0;
    v4 = *a1;
    [v2 setShowsMenuAsPrimaryAction_];
    [v2 setMenu_];
  }

  else
  {
    v4 = *a1;
    [v2 setShowsMenuAsPrimaryAction_];
    [v2 setMenu_];
  }
}

uint64_t sub_26BA99D2C(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(0);
  v5 = *(v2 + OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_button);
  sub_26BA99EC4(a2, v13);
  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_26BA9BE3C();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  [v5 addTarget:v11 action:a1 forControlEvents:64];
  return swift_unknownObjectRelease();
}

uint64_t sub_26BA99EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804360D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_26BA99F34(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_canAddStickers] = 1;
  v9 = OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_button;
  *&v4[v9] = sub_26BA99834();
  v15.receiver = v4;
  v15.super_class = type metadata accessor for StickerCollectionAddButtonCell();
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor_];

  [v12 addSubview_];
  [v12 setClipsToBounds_];

  return v12;
}

id sub_26BA9A0B4(void *a1)
{
  *&v1[OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_canAddStickers] = 1;
  v3 = OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_button;
  *&v1[v3] = sub_26BA99834();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StickerCollectionAddButtonCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_26BA9A17C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerCollectionAddButtonCell();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  [v0 bounds];
  CGPointMake([v0 bounds]);
  return [*&v0[OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_button] setFrame_];
}

uint64_t sub_26BA9A2E8()
{
  v1 = sub_26BA9AF7C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for StickerCollectionAddButtonCell();
  v18.receiver = v0;
  v18.super_class = v5;
  v6 = objc_msgSendSuper2(&v18, sel__bridgedConfigurationState);
  sub_26BA9AF6C();

  v7 = &v0[OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    LOBYTE(v8) = (*(v8 + 8))(ObjectType, v8);
    swift_unknownObjectRelease();
    v10 = v8 & 1;
  }

  else
  {
    v10 = 2;
  }

  if (qword_2804385A0 != -1)
  {
    swift_once();
  }

  if (v10 == 2)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v11 = qword_2804385A8;
  }

  else
  {
    v14[15] = v10;
    v12 = qword_2804385A8;
    sub_26BA9BC9C();
  }

  sub_26BA9AF8C();
  return (*(v2 + 8))(v4, v1);
}

id sub_26BA9A59C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  ObjectType = swift_getObjectType();
  v5 = (*(a2 + 8))(ObjectType, a2);
  (*((*MEMORY[0x277D85000] & *v2) + 0x88))(v5 & 1);
  [*(v2 + OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_button) setHidden_];

  return [v2 setNeedsUpdateConfiguration];
}

id sub_26BA9A6AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerCollectionAddButtonCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BA9A72C()
{
  result = sub_26BA9B68C();
  qword_2804385A8 = result;
  return result;
}

unint64_t sub_26BA9A78C()
{
  result = qword_280435B68;
  if (!qword_280435B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280435B68);
  }

  return result;
}

id sub_26BA9A7E8()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2804385B8 = result;
  return result;
}

uint64_t sub_26BA9A974(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26BA9AECC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_2804385B0 != -1)
  {
    swift_once();
  }

  v4 = qword_2804385B8;
  return sub_26BA9AEBC();
}

uint64_t sub_26BA9AA38(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_26BA9AECC();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_26BA9AAB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26BA9AECC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}