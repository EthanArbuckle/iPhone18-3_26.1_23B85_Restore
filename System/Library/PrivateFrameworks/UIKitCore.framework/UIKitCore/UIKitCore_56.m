uint64_t sub_18907B9CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D70);
    v2 = sub_18A4A8478();
    v19 = v2;
    sub_18A4A8338();
    v3 = sub_18A4A8378();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for _UITextViewAnimatedPlaceholderIdentifier(0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        _s17ActivePlaceholderCMa();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1890BCD40(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_18A4A7C78();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_18A4A8378();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_18907BC2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v8 = sub_18A4A8478();
    v25 = v8;
    sub_18A4A8338();
    v9 = sub_18A4A8378();
    if (v9)
    {
      v10 = v9;
      sub_188A34624(0, &qword_1ED48F680);
      v11 = v10;
      do
      {
        v23 = v11;
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v18 = *(v8 + 16);
        if (*(v8 + 24) <= v18)
        {
          a6(v18 + 1, 1);
        }

        v8 = v25;
        result = sub_18A4A7C78();
        v13 = v25 + 64;
        v14 = -1 << *(v25 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v25 + 48) + 8 * v17) = v24;
        *(*(v25 + 56) + 8 * v17) = v23;
        ++*(v25 + 16);
        v11 = sub_18A4A8378();
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v8;
}

uint64_t sub_18907BE68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E90);
    v2 = sub_18A4A8478();
    v19 = v2;
    sub_18A4A8338();
    v3 = sub_18A4A8378();
    if (v3)
    {
      v4 = v3;
      sub_188A34624(0, &qword_1EA9306B0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for _UITabButton();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1890BD764(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_18A4A7C78();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_18A4A8378();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_18907C09C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B420);
    v2 = sub_18A4A8478();
    v19 = v2;
    sub_18A4A8338();
    v3 = sub_18A4A8378();
    if (v3)
    {
      v4 = v3;
      sub_188A34624(0, &qword_1EA931300);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_188A34624(0, &unk_1EA9393B0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1890BE200(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_18A4A7C78();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_18A4A8378();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_18907C2E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B410);
    v2 = sub_18A4A8478();
    v19 = v2;
    sub_18A4A8338();
    v3 = sub_18A4A8378();
    if (v3)
    {
      v4 = v3;
      sub_188A34624(0, &qword_1ED48F680);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_188A34624(0, &qword_1EA934138);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_188C4FC64(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_18A4A7C78();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_18A4A8378();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_18907C534(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938CF0);
    v2 = sub_18A4A8478();
    v19 = v2;
    sub_18A4A8338();
    v3 = sub_18A4A8378();
    if (v3)
    {
      v4 = v3;
      sub_188A34624(0, &qword_1ED48F680);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1890BF8C4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_18A4A7C78();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_18A4A8378();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_18907C760(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938CC0);
    v2 = sub_18A4A8478();
    v19 = v2;
    sub_18A4A8338();
    v3 = sub_18A4A8378();
    if (v3)
    {
      v4 = v3;
      sub_188A34624(0, &unk_1EA92E790);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for UITextEffectView();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1890BFB44(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_18A4A7C78();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_18A4A8378();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_18907C994(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934DD0);
    v2 = sub_18A4A8478();
    v19 = v2;
    sub_18A4A8338();
    v3 = sub_18A4A8378();
    if (v3)
    {
      v4 = v3;
      sub_188A34624(0, &unk_1ED48DBD0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        _s11GroupLayoutCMa();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_188B48DD4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_18A4A7C78();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_18A4A8378();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

id sub_18907CBC8(void *a1)
{
  v3 = *(v1 + 16);
  result = [a1 isHidden];
  if ((result & 1) == 0)
  {
    result = [a1 _showInOverflow];
    if (result)
    {
      *v3 = 1;
    }
  }

  return result;
}

uint64_t sub_18907CC6C(void *a1, void *a2)
{
  result = [a1 isHidden];
  if ((result & 1) == 0)
  {
    result = [a1 _showInOverflow];
    if (result)
    {
      v5 = a1;
      MEMORY[0x18CFE2450]();
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      return sub_18A4A75F8();
    }
  }

  return result;
}

unint64_t sub_18907CD10()
{
  result = qword_1EA93B3C8;
  if (!qword_1EA93B3C8)
  {
    sub_188A34624(255, &unk_1ED48DBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B3C8);
  }

  return result;
}

void sub_18907CD78(uint64_t a1, _BYTE *a2)
{
  v3 = *(v2 + 24);
  **(v2 + 16) = 1;
  *a2 = 1;
  *v3 = 1;
}

uint64_t objectdestroy_43Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_18907CE10(void *a1)
{
  v2 = [a1 buttonGroup];
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupLayoutMap;
    swift_beginAccess();
    v5 = sub_188B5242C(v3, *(v1 + v4));
    if (v5)
    {
      v6 = v5;
      swift_endAccess();
      if ((v6[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty] & 1) == 0)
      {
        v6[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty] = 1;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v8 = Strong;
          sub_18907A694();
        }
      }

      v3 = v6;
    }

    else
    {
      swift_endAccess();
    }
  }
}

uint64_t sub_18907CEE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_18907CF2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18907CFE0()
{
  v1 = OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty;
  if (*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) == 1)
  {
    sub_188BB7274();
    *(v0 + v1) = 0;
  }

  v2 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC0];
  if (*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled))
  {
LABEL_7:
    v8 = *(v3 + 16);
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

  if ((*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact) & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_configuredItemLayouts);

    v8 = *(v3 + 16);
    if (v8)
    {
LABEL_8:
      sub_188BB8660(0, v8, 0);
      v9 = (v3 + 40);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        if (v11 < 0)
        {
          if (v11)
          {
            v12 = 0;
            v13 = 0;
            v14 = 0x80;
            v19 = xmmword_18A64C520;
            v20 = 0u;
          }

          else
          {
            [*(v9 - 1) _width];
            v12 = 0;
            v13 = 0;
            if (v15 <= 0.0)
            {
              v15 = 0.0;
            }

            v20 = 0u;
            v19 = *&v15;
            v14 = 0x80;
          }
        }

        else
        {

          sub_188BB8680(v21);
          v19 = v21[0];
          v20 = v21[1];
          v12 = v22;
          v13 = v23;
          v14 = v24;
          sub_188BB8460(v10, v11);
        }

        v17 = *(v2 + 16);
        v16 = *(v2 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_188BB8660((v16 > 1), v17 + 1, 1);
        }

        v9 += 16;
        *(v2 + 16) = v17 + 1;
        v18 = v2 + 56 * v17;
        *(v18 + 32) = v19;
        *(v18 + 48) = v20;
        *(v18 + 64) = v12;
        *(v18 + 72) = v13;
        *(v18 + 80) = v14;
        --v8;
      }

      while (v8);
    }

LABEL_21:

    return v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341B0);
  result = swift_allocObject();
  *(result + 16) = xmmword_18A64BFB0;
  v5 = (v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout);
  v6 = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout + 8);
  if (v6 <= 0xFD)
  {
    v3 = result;
    v7 = *v5;
    *(v3 + 32) = *v5;
    *(v3 + 40) = v6;
    sub_188BB803C(v7, v6);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_18907D248()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0x614C70756F72473CLL, 0xEE00203A74756F79);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A6A30B0);
  v1 = [*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group) description];
  v2 = sub_18A4A7288();
  v4 = v3;

  MEMORY[0x18CFE22D0](v2, v4);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

void sub_18907D394(void *a1, id a2)
{
  v3 = v2;
  [a2 _relinquishOwnership_];
  v5 = [a1 representativeItem];
  if (v5)
  {
    v6 = v5;
    [v5 _setViewOwner_];
  }

  if ((*(v3 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) & 1) == 0)
  {
    *(v3 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_18907A694();
    }
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_188CF5A10(a1);
  }
}

void sub_18907D650(void *a1)
{
  v2 = [a1 buttonGroup];
  if (v2)
  {

    if ((*(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) = 1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        sub_18907A694();
      }
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_18907A764();
  }
}

uint64_t sub_18907D8C0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, SEL *a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v11 view];
  if (v14)
  {
    v15 = v14;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      [v16 *a7];
      v17 = 0;
      v18 = v15;
      v19 = v11;
      v15 = v12;
      v11 = v13;
    }

    else
    {
      v17 = 1;
      v18 = v12;
      v19 = v13;
    }

    v12 = v19;
    v13 = v15;
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

void sub_18907DB40()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayout];
    v10 = *(v1 + 16);
    if (v10)
    {
      v9 = Strong;
      v12 = v1 + 32;

      v2 = 0;
      v11 = v1;
      while (v2 < *(v1 + 16))
      {
        v3 = *(v12 + 24 * v2);
        if (v3 >> 62)
        {
          v4 = sub_18A4A7F68();
        }

        else
        {
          v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v4)
        {
          v5 = 0;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v6 = sub_188E49D08(v5, v3);
            }

            else
            {
              if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v6 = *(v3 + 8 * v5 + 32);
            }

            v7 = v6;
            v8 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              break;
            }

            if ((v6[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled] & 1) != 0 || [*&v6[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group] _showInOverflow])
            {

              swift_unknownObjectWeakLoadStrong();

              return;
            }

            ++v5;
            if (v8 == v4)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
          break;
        }

LABEL_4:
        ++v2;

        v1 = v11;
        if (v2 == v10)
        {

          return;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_18907DDB4(id *a1, char a2)
{
  if (a2 < 0)
  {
    strcpy(v8, "Child.spacer(");
    HIWORD(v8[1]) = -4864;
    v2 = [a1 description];
  }

  else
  {
    strcpy(v8, "Child.item(");
    HIDWORD(v8[1]) = -352321536;
    v2 = [a1[2] description];
  }

  v3 = v2;
  v4 = sub_18A4A7288();
  v6 = v5;

  MEMORY[0x18CFE22D0](v4, v6);

  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  return v8[0];
}

void sub_18907E048(CGFloat a1, CGFloat a2, float a3, float a4)
{
  v23.width = 10000.0;
  v23.height = 10000.0;
  v9 = CGSizeEqualToSize(*&a1, v23);
  v24.width = 0.0;
  v24.height = 0.0;
  v22.width = a1;
  v22.height = a2;
  v10 = CGSizeEqualToSize(v22, v24);
  if (v9 || v10) && (a3 == 50.0 ? (v13 = a4 == 50.0) : (v13 = 0), v13 && ((v14 = [v4 subviews], sub_188A34624(0, &qword_1ED48F680), v15 = sub_18A4A7548(), v14, v15 >> 62) ? (v16 = sub_18A4A7F68()) : (v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v16 == 1) && (v17 = *&v4[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_contentView], (v18 = objc_msgSend(v17, sel_superview)) != 0) && (v19 = v18, v20 = v4, v21 = sub_18A4A7C88(), v20, v19, (v21) && -[UIView _wantsAutolayoutOrIsGuardingForEngineHosting](v17) && objc_msgSend(v17, sel__allowsFittingSizeCachingWithNilLayoutEngine))))
  {
    [(UIView *)v17 _systemLayoutSizeFittingSize:1 withHorizontalFittingPriority:a1 verticalFittingPriority:a2 hasIntentionallyCollapsedHeight:50.0 shouldExtendCacheUse:50.0];
  }

  else
  {
    *&v11 = a3;
    *&v12 = a4;
    [*&v4[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_contentView] systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:a2 verticalFittingPriority:{v11, v12}];
  }
}

id sub_18907E340(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_18A4A7258();

  return v5;
}

uint64_t sub_18907E3B0()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000026, 0x800000018A6A3010);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x69566D657469203BLL, 0xEC000000203A7765);
  v1 = [*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_contentView) description];
  v2 = sub_18A4A7288();
  v4 = v3;

  MEMORY[0x18CFE22D0](v2, v4);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_18907E4F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18907E548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

id sub_18907E5C0(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_contentView] = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 shouldWrapView_];
  if (v6)
  {
    v7 = [objc_allocWithZone(_UITAMICAdaptorView) initWithView_];
    [v7 setInvalidatesIntrinsicContentSizeOnSizeChange_];
    v8 = v7;
  }

  else
  {
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = 0;
    v8 = v5;
  }

  *&v1[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_tamicAdaptorView] = v7;
  v9 = v8;
  [v9 _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = 0.0;
  v11 = 0.0;
  if (v6)
  {
    [v5 systemLayoutSizeFittingSize_];
    v10 = v12;
    v11 = v13;
  }

  v43.receiver = v1;
  v43.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, v10, v11);
  [v14 _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges_];
  v15 = [v14 leadingAnchor];
  v16 = [v9 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  v18 = [v14 trailingAnchor];
  v19 = [v9 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  v21 = [v14 topAnchor];
  v22 = [v9 topAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  v24 = [v14 bottomAnchor];
  v25 = [v9 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  [v14 addSubview_];
  *&v35 = 0;
  BYTE8(v35) = 1;
  v36 = 0;
  v37 = 1;
  v38 = 0;
  v39 = 1;
  v40 = 0;
  v41 = 1;
  v42 = &unk_1EFAB8460;
  UIView.cornerConfiguration.setter(&v35);
  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18A64B810;
  *(v28 + 32) = v17;
  *(v28 + 40) = v20;
  *(v28 + 48) = v23;
  *(v28 + 56) = v26;
  sub_188A34624(0, &qword_1ED48CFF0);
  v29 = v17;
  v30 = v20;
  v31 = v23;
  v32 = v26;
  v33 = sub_18A4A7518();

  [v27 activateConstraints_];

  return v14;
}

void sub_18907E9C4(void *a1)
{
  v2 = sub_188C0D9A4(a1);
  if (v3 > 0xFDu)
  {
    return;
  }

  if ((v3 & 0x80) == 0)
  {
    v2[160] = 1;
    if ((*(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) & 1) == 0)
    {
      v4 = v2;
      v5 = v3;
      *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) = 1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        sub_18907A694();
        sub_188BB6A30(v4, v5);

        return;
      }

      v2 = v4;
      v3 = v5;
    }
  }

  sub_188BB6A30(v2, v3);
}

void sub_18907EAA8()
{
  if ((*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_18907A694();
    }
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_18907A764();
  }
}

__n128 __swift_memcpy194_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_18907EC80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 194))
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

uint64_t sub_18907ECC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 194) = 1;
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

    *(result + 194) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_18907ED78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 114))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18907EDCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void sub_18907EE40(id a1, char a2)
{
  if (a2)
  {
    if (*(v2 + 96))
    {
      goto LABEL_3;
    }

    v4 = [a1 customView];
    if (v4)
    {
      goto LABEL_4;
    }

    if (([a1 hasImage] & 1) == 0)
    {
LABEL_3:
      [a1 hidesSharedBackground];
      v4 = [a1 customView];
      if (v4)
      {
LABEL_4:

        return;
      }

      if (([a1 hasImage] & 1) == 0)
      {
        [a1 hasTitle];
      }
    }
  }
}

uint64_t sub_18907EF54()
{
  v40 = v0[8];
  v41 = v0[7];
  v1 = *v0;
  v2 = *(*&v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = *&v1;
    while (v4 < v2)
    {
      v6 = *&v1 + 32 + 56 * v4;
      v7 = *v6;
      v8 = *(v6 + 16);
      v9 = *(v6 + 24);
      v38 = *(v6 + 8);
      v39 = *(v6 + 32);
      v10 = *(v6 + 48);
      v11 = *(v6 + 40);
      v47 = v11;
      v12 = *(*v6 + 16);
      if (v12)
      {
        v36 = *(v6 + 24);
        v37 = *(v6 + 16);
        v13 = v10;
        swift_bridgeObjectRetain_n();
        v14 = v13;
        v15 = 0;
        v16 = v12 - 1;
        v17 = 96;
        v18 = v7;
        while (1)
        {
          v19 = *(v7 + v17 - 64);
          v20 = *(v7 + v17 - 56);
          v22 = *(v7 + v17 - 48);
          v21 = *(v7 + v17 - 40);
          v46 = *(v7 + v17 - 32);
          v43 = *(v7 + v17 - 8);
          v44 = *(v7 + v17 - 16);
          v42 = *(v7 + v17);
          v49.origin.x = v19;
          v49.origin.y = v20;
          v49.size.width = v22;
          v49.size.height = v21;
          MinX = CGRectGetMinX(v49);
          v50.origin.x = 0.0;
          v50.origin.y = 0.0;
          v50.size.width = v41;
          v50.size.height = v40;
          v24 = CGRectGetMinX(v50);
          v51.origin.x = 0.0;
          v51.origin.y = 0.0;
          v51.size.width = v41;
          v51.size.height = v40;
          MaxX = CGRectGetMaxX(v51);
          v52.origin.x = v19;
          v52.origin.y = v20;
          v52.size.width = v22;
          v52.size.height = v21;
          Width = CGRectGetWidth(v52);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_188C40B18(v18);
            v18 = result;
          }

          if (v15 >= *(v18 + 16))
          {
            break;
          }

          v27 = (v18 + v17);
          *(v27 - 8) = MaxX - (MinX - v24) - Width;
          *(v27 - 7) = v20;
          *(v27 - 6) = v22;
          *(v27 - 5) = v21;
          *(v27 - 2) = v46;
          *(v27 - 2) = v42;
          *(v27 - 1) = v43;
          *v27 = v44;
          if (v16 == v15)
          {

            v11 = v47;
            v9 = v36;
            v8 = v37;
            goto LABEL_13;
          }

          v17 += 72;
          ++v15;
        }

        __break(1u);
        break;
      }

      v28 = v10;
      swift_bridgeObjectRetain_n();
      v14 = v28;
      v18 = v7;
LABEL_13:
      v53.origin.x = v38;
      v53.origin.y = v8;
      v53.size.width = v9;
      v53.size.height = v39;
      v45 = CGRectGetMinX(v53);
      v54.origin.x = 0.0;
      v54.origin.y = 0.0;
      v54.size.width = v41;
      v54.size.height = v40;
      v29 = CGRectGetMinX(v54);
      v55.origin.x = 0.0;
      v55.origin.y = 0.0;
      v55.size.width = v41;
      v55.size.height = v40;
      v30 = CGRectGetMaxX(v55);
      v56.origin.x = v38;
      v56.origin.y = v8;
      v56.size.width = v9;
      v56.size.height = v39;
      v31 = CGRectGetWidth(v56);

      v32 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_189212B60(v5);
      }

      if (v4 >= *(v5 + 2))
      {
        goto LABEL_22;
      }

      v33 = &v5[56 * v4];
      v34 = *(v33 + 10);
      *(v33 + 4) = v18;
      *(v33 + 5) = v30 - (v45 - v29) - v31;
      *(v33 + 6) = v8;
      *(v33 + 7) = v9;
      *(v33 + 8) = v39;
      v33[72] = v11;
      *(v33 + 10) = v10;

      *v35 = v5;

      v2 = *(*&v1 + 16);
      if (++v4 == v2)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_17:
  }

  return result;
}

uint64_t sub_18907F2DC(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 56);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_18907F360(v12, v14) & 1;
}

uint64_t sub_18907F360(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && ((*(a1 + 96) ^ *(a2 + 96)) & 1) == 0 && *(a1 + 104) == *(a2 + 104) && ((*(a1 + 112) ^ *(a2 + 112)) & 1) == 0)
  {
    return (*(a1 + 113) ^ *(a2 + 113) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

id sub_18907F470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  if ((a7 & 0x80) == 0)
  {
    return a6;
  }

  return result;
}

uint64_t sub_18907F47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 0x80) == 0)
  {
    return MEMORY[0x1EEE66C40]();
  }

  return result;
}

uint64_t sub_18907F4F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18907F544(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18907F598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_18907F5F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_18907F678(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 2) & 0x3F80 | (*(a1 + 32) >> 1) | (*(a1 + 32) >> 3) & 0xFFFFC000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_18907F6DC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 49) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (4 * -a2) & 0xFE00 | (2 * (-a2 & 0x7FLL)) & 0xFFFFFFF80001FFFFLL | ((-a2 >> 14) << 17);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18907F75C(uint64_t result, char a2)
{
  v2 = *(result + 48) & 1 | (a2 << 7);
  *(result + 32) &= 0x10101uLL;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_18907F7AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_18A4A29D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_189081E90(&qword_1ED48CEF0, MEMORY[0x1E69695A8]), v7 = sub_18A4A7198(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_189081E90(&qword_1EA930B00, MEMORY[0x1E69695A8]);
      v15 = sub_18A4A7248();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_18907F9C4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_18A4A8888();
  MEMORY[0x18CFE3810](a1);
  v4 = sub_18A4A88E8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_18907FAB8(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_18A4A7FC8();
  }

  else if (*(a2 + 16) && (sub_188A34624(0, a3), v6 = sub_18A4A7C78(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = sub_18A4A7C88();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_18907FBC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_18A4A2B48();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_189081E90(&qword_1EA92F720, MEMORY[0x1E6969C28]), v7 = sub_18A4A7198(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_189081E90(&qword_1EA92F710, MEMORY[0x1E6969C28]);
      v15 = sub_18A4A7248();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_18907FDE0(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_18A4A8888();
  v4 = *a1;
  MEMORY[0x18CFE37E0](*a1);
  v5 = sub_18A4A88E8();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    sub_188E7DC94(*(a2 + 48) + 16 * v7, v11);
    v9 = v11[0];
    sub_188E7DD4C(v11);
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_18907FECC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UILayoutComponentResponse(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_188E8B838(v4, &protocol witness table for UILayoutComponentResponse), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    sub_189081E2C(a1, v6);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_188E4B7D0(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_188E4B7D0((v11 > 1), v12 + 1, 1, v10);
    }

    v21 = v4;
    v22 = &protocol witness table for UILayoutComponentResponse;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
    sub_189081E2C(v6, boxed_opaque_existential_0);
    v10[2] = v12 + 1;
    sub_188A8F66C(&v20, &v10[5 * v12 + 4]);
    sub_188E93B00(v6);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    v15 = v10;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934440);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18A64BFB0;
    *(v16 + 56) = v4;
    *(v16 + 64) = &protocol witness table for UILayoutComponentResponse;
    v17 = __swift_allocate_boxed_opaque_existential_0((v16 + 32));
    sub_189081E2C(a1, v17);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    v15 = v16;
  }

  sub_188E9E78C(v15, v4, &protocol witness table for UILayoutComponentResponse, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v23;
  return swift_endAccess();
}

uint64_t UIPhasedTransitionModifierComponentImpl.inputModel(forPhase:sourceInputModel:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t UIPhasedTransitionModifierComponentImpl.outputModel(forPhase:sourceOutputModel:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t UIPhasedModifierTransitionComponent.init(impl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a3;
  v17 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_18A4A8108();
  swift_getAssociatedConformanceWitness();
  sub_18A4A7898();
  (*(v9 + 8))(v11, v8);
  v12 = *(AssociatedTypeWitness - 8);
  result = (*(v12 + 48))(v7, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = type metadata accessor for UIPhasedModifierTransitionComponent();
    v15 = v16;
    (*(v12 + 32))(v16 + *(v14 + 36), v7, AssociatedTypeWitness);
    sub_18A4A29C8();
    return (*(*(a2 - 8) + 32))(v15, v17, a2);
  }

  return result;
}

uint64_t UIPhasedModifierTransitionComponent.receive(event:responder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = sub_18A4A29D8();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_18A4A7D38();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v35 - v11;
  v42 = AssociatedTypeWitness;
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v35 - v13;
  v14 = type metadata accessor for UILayoutComponentResponse(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = *(a1 + 8);
  v20 = *(a1 + 16);
  v48[0] = *a1;
  v48[1] = v18;
  v49 = v20;
  v43 = v8;
  v21 = *(*(*(v8 + 8) + 16) + 56);
  v45 = a2;
  v22 = v47;
  result = v21(v48, a2, v7, v15);
  if ((v20 & 1) == 0)
  {
    v24 = v22;
    v25 = *(a3 + 40);
    result = sub_18907F7AC(v24 + v25, v19);
    if (result)
    {
      if (v18)
      {
        (*(v44 + 16))(v17, v24 + v25, v46);
        swift_storeEnumTagMultiPayload();
        sub_18907FECC(v17);
        return sub_188E93B00(v17);
      }

      else
      {
        v35 = v25;
        v26 = *(a3 + 36);
        v28 = v42;
        v27 = v43;
        swift_getAssociatedConformanceWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v30 = v24;
        v31 = v40;
        sub_18908092C(v28, AssociatedConformanceWitness, v40);
        v32 = v41;
        if ((*(v41 + 48))(v31, 1, v28) == 1)
        {
          return (*(v37 + 8))(v31, v38);
        }

        else
        {
          v33 = v36;
          (*(v32 + 32))(v36, v31, v28);
          v34 = v39;
          sub_18A4A29C8();
          (*(v27 + 56))(v33, v34, v45, v7, v27);
          (*(v32 + 40))(v30 + v26, v33, v28);
          return (*(v44 + 40))(v30 + v35, v34, v46);
        }
      }
    }
  }

  return result;
}

uint64_t sub_18908092C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v31 = a2;
  v29 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v28 - v16;
  v17 = swift_checkMetadataState();
  v28 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v30 = a1;
  sub_18A4A8108();
  sub_18A4A78A8();
  result = (*(v8 + 48))(v7, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v32, v7, AssociatedTypeWitness);
    sub_18A4A7848();
    sub_18A4A7878();
    swift_getAssociatedConformanceWitness();
    v21 = sub_18A4A7248();
    v22 = *(v8 + 8);
    v22(v11, AssociatedTypeWitness);
    if (v21)
    {
      v22(v14, AssociatedTypeWitness);
      v22(v32, AssociatedTypeWitness);
      (*(v28 + 8))(v19, v17);
      v24 = v29;
      v23 = v30;
      v25 = *(v30 - 8);
      v26 = 1;
    }

    else
    {
      v27 = sub_18A4A78C8();
      v24 = v29;
      v23 = v30;
      v25 = *(v30 - 8);
      (*(v25 + 16))(v29);
      v27(v33, 0);
      v22(v14, AssociatedTypeWitness);
      v22(v32, AssociatedTypeWitness);
      (*(v28 + 8))(v19, v17);
      v26 = 0;
    }

    return (*(v25 + 56))(v24, v26, 1, v23);
  }

  return result;
}

uint64_t UIPhasedModifierTransitionComponent.updateInputModel(_:responder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v64 = a1;
  v59 = type metadata accessor for UILayoutComponentResponse(0);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v56 = &v53 - v8;
  v9 = sub_18A4A7D38();
  v70 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v63 = &v53 - v10;
  swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v62 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v14 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v53 - v22;
  v57 = v6;
  v24 = v5;
  v25 = *(*(*(v6 + 8) + 16) + 64);
  v26 = v66;
  v55 = v24;
  v25(v64, v67, v21);
  v27 = v69;
  (*(v69 + 16))(v23, v26 + *(v65 + 36), AssociatedTypeWitness);
  (*(v27 + 56))(v23, 0, 1, AssociatedTypeWitness);
  sub_18A4A8108();
  swift_getAssociatedConformanceWitness();
  sub_18A4A7898();
  (*(v62 + 1))(v13, v11);
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = *(v14 + 16);
  v30 = v63;
  v31 = v70;
  v29(v63, v23, v70);
  v64 = v28;
  v29(&v30[v28], v19, v31);
  v32 = *(v27 + 48);
  if (v32(v30, 1, AssociatedTypeWitness) != 1)
  {
    v54 = v19;
    v62 = v23;
    v36 = v14;
    v37 = v60;
    v35 = v30;
    v29(v60, v30, v70);
    v38 = v64;
    if (v32(&v30[v64], 1, AssociatedTypeWitness) != 1)
    {
      v42 = v69;
      v43 = v56;
      (*(v69 + 32))(v56, &v30[v38], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v44 = sub_18A4A7248();
      v45 = *(v42 + 8);
      v45(v43, AssociatedTypeWitness);
      v46 = *(v36 + 8);
      v47 = v70;
      v46(v54, v70);
      v46(v62, v47);
      v45(v37, AssociatedTypeWitness);
      result = (v46)(v35, v47);
      if ((v44 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    v39 = *(v36 + 8);
    v40 = v70;
    v39(v54, v70);
    v39(v62, v40);
    (*(v69 + 8))(v37, AssociatedTypeWitness);
    return (*(v61 + 8))(v35, TupleTypeMetadata2);
  }

  v33 = *(v14 + 8);
  v34 = v70;
  v33(v19, v70);
  v33(v23, v34);
  v35 = v30;
  if (v32(&v30[v64], 1, AssociatedTypeWitness) != 1)
  {
    return (*(v61 + 8))(v35, TupleTypeMetadata2);
  }

  v33(v30, v70);
LABEL_8:
  v48 = *(v65 + 40);
  v49 = sub_18A4A29D8();
  v50 = v66 + v48;
  v51 = v58;
  (*(*(v49 - 8) + 16))(v58, v50, v49);
  updated = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
  *(v51 + *(updated + 20)) = 0;
  (*(*(updated - 8) + 56))(v51, 0, 1, updated);
  swift_storeEnumTagMultiPayload();
  sub_18907FECC(v51);
  return sub_188E93B00(v51);
}

uint64_t sub_189081568(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_189081688()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      AssociatedTypeWitness = sub_18A4A29D8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_18908174C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_18A4A29D8();
  v12 = *(v11 - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v13;
  if (a2 > v16)
  {
    v18 = ((v14 + v15 + (v17 & ~v13)) & ~v15) + *(*(v11 - 8) + 64);
    v19 = 8 * v18;
    if (v18 <= 3)
    {
      v21 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v21))
      {
        v20 = *(a1 + v18);
        if (!v20)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 > 0xFF)
      {
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 < 2)
      {
LABEL_30:
        if (v16)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_30;
    }

LABEL_17:
    v22 = (v20 - 1) << v19;
    if (v18 > 3)
    {
      v22 = 0;
    }

    if (v18)
    {
      if (v18 <= 3)
      {
        v23 = v18;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v24 = *a1;
        }
      }

      else if (v23 == 1)
      {
        v24 = *a1;
      }

      else
      {
        v24 = *a1;
      }
    }

    else
    {
      v24 = 0;
    }

    return v16 + (v24 | v22) + 1;
  }

LABEL_31:
  if (v7 == v16)
  {
    v25 = *(v6 + 48);
    v26 = a1;
    v27 = v7;
    v28 = v5;
LABEL_36:

    return v25(v26, v27, v28);
  }

  v26 = ((a1 + v17) & ~v13);
  if (v9 == v16)
  {
    v25 = *(v8 + 48);
    v27 = v9;
    v28 = AssociatedTypeWitness;
    goto LABEL_36;
  }

  v30 = *(v12 + 48);
  v31 = (v26 + v14 + v15) & ~v15;

  return v30(v31);
}

void sub_189081A7C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(a4 + 16) - 8);
  v37 = v7;
  v38 = *(a4 + 16);
  v8 = *(v7 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_18A4A29D8() - 8);
  v13 = v12;
  v14 = *(v7 + 64);
  if (*(v12 + 84) <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v9 + 80);
  v17 = v14 + v16;
  v18 = (v14 + v16) & ~v16;
  v19 = *(v9 + 64);
  v20 = *(v12 + 80);
  v21 = ((v19 + v20 + v18) & ~v20) + *(v12 + 64);
  if (a3 <= v15)
  {
    v23 = 0;
    v22 = a1;
  }

  else
  {
    v22 = a1;
    if (v21 <= 3)
    {
      v26 = ((a3 - v15 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v15 < a2)
  {
    v24 = ~v15 + a2;
    if (v21 < 4)
    {
      v25 = (v24 >> (8 * v21)) + 1;
      if (v21)
      {
        v28 = v24 & ~(-1 << (8 * v21));
        bzero(v22, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *v22 = v28;
            if (v23 > 1)
            {
LABEL_52:
              if (v23 == 2)
              {
                *&v22[v21] = v25;
              }

              else
              {
                *&v22[v21] = v25;
              }

              return;
            }
          }

          else
          {
            *v22 = v24;
            if (v23 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v22 = v28;
        v22[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v22, v21);
      *v22 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v23)
    {
      v22[v21] = v25;
    }

    return;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      v22[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v23 == 2)
  {
    *&v22[v21] = 0;
    goto LABEL_33;
  }

  *&v22[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 == v15)
  {
    v29 = v38;
    v30 = *(v37 + 56);
    v31 = v22;
    v32 = a2;
    v33 = v8;
LABEL_38:

    v30(v31, v32, v33, v29);
    return;
  }

  v31 = (&v22[v17] & ~v16);
  if (v10 == v15)
  {
    v30 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v29 = AssociatedTypeWitness;
    goto LABEL_38;
  }

  v34 = *(v13 + 56);
  v35 = &v31[v19 + v20] & ~v20;

  v34(v35, a2);
}

uint64_t sub_189081E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UILayoutComponentResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_189081E90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_189081ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v2;
  v10 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7.origin = *a1;
  v7.size = v3;
  v4 = *(a2 + 48);
  v12 = *(a2 + 32);
  v13 = v4;
  v14 = *(a2 + 64);
  v5 = *(a2 + 16);
  v11.origin = *a2;
  v11.size = v5;
  return sub_1890844B4(&v7, &v11) & 1;
}

uint64_t sub_189081F34(void *a1, double a2, double a3)
{
  v4 = v3;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  sub_18A4A80E8();

  v8 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v8);

  MEMORY[0x18CFE22D0](8236, 0xE200000000000000);
  v9 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v9);

  MEMORY[0x18CFE22D0](0x78202D2029, 0xE500000000000000);
  v10 = type metadata accessor for _UIDebouncingAnimatableFloat();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v12 = 0;
  *(v12 + 1) = 0;
  v29.receiver = v11;
  v29.super_class = v10;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v29, sel_initWithView_, v13);
  v15 = &v14[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v15 = 0x2820786574726556;
  *(v15 + 1) = 0xE800000000000000;

  *(v4 + 32) = v14;
  sub_18A4A80E8();

  v16 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v16);

  MEMORY[0x18CFE22D0](8236, 0xE200000000000000);
  v17 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v17);

  MEMORY[0x18CFE22D0](0x79202D2029, 0xE500000000000000);
  v18 = objc_allocWithZone(v10);
  v19 = &v18[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v19 = 0;
  *(v19 + 1) = 0;
  v28.receiver = v18;
  v28.super_class = v10;
  v20 = objc_msgSendSuper2(&v28, sel_initWithView_, v13);

  v21 = &v20[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v21 = 0x2820786574726556;
  *(v21 + 1) = 0xE800000000000000;

  *(v4 + 40) = v20;
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  *(v23 + 24) = a2;
  *(v23 + 32) = a3;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_189084690;
  *(v24 + 24) = v23;
  v27[4] = sub_188E3FE50;
  v27[5] = v24;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_188A4A968;
  v27[3] = &block_descriptor_84_3;
  v25 = _Block_copy(v27);

  [v22 performWithoutAnimation_];

  _Block_release(v25);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_189082298()
{

  return swift_deallocClassInstance();
}

void sub_1890822D8(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  type metadata accessor for _UIMorphAnimationSettingsDomain();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v90.receiver = ObjCClassFromMetadata;
  v90.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
  v9 = objc_msgSendSuper2(&v90, sel_rootSettings);
  if (!v9)
  {
    goto LABEL_87;
  }

  v10 = v9;
  type metadata accessor for _UIMorphAnimationSettings();
  v11 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_genieSubdivisions);

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (a3)
  {
    v12 = v11;
  }

  else
  {
    v12 = a2;
  }

  if (v12 < 0)
  {
    goto LABEL_81;
  }

  v13 = 0;
  v14 = v12;
  v15 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v16 = _UILerp_1(v13 / v14, -0.25, 1.25);
    v17 = 0;
    while (1)
    {
      v18 = _UILerp_1(v17 / v14, -0.25, 1.25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_188E4BC84(0, *(v15 + 2) + 1, 1, v15);
      }

      v20 = *(v15 + 2);
      v19 = *(v15 + 3);
      if (v20 >= v19 >> 1)
      {
        v15 = sub_188E4BC84((v19 > 1), v20 + 1, 1, v15);
      }

      *(v15 + 2) = v20 + 1;
      v21 = &v15[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      if (v12 == v17)
      {
        break;
      }

      v22 = __OFADD__(v17++, 1);
      if (v22)
      {
        __break(1u);
LABEL_27:
        v27 = v17;
        ObjCClassFromMetadata = a1;
        goto LABEL_28;
      }
    }

    if (v13 != v12)
    {
      v22 = __OFADD__(v13++, 1);
      if (!v22)
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

  v71 = ObjCClassFromMetadata;
  v17 = MEMORY[0x1E69E7CC0];
  v5[3] = MEMORY[0x1E69E7CC0];

  v23 = *(v15 + 2);
  if (!v23)
  {
    goto LABEL_27;
  }

  aBlock = v17;
  sub_18A4A8208();
  v4 = type metadata accessor for _UIGenieAnimator.Vertex();
  v24 = (v15 + 40);
  ObjCClassFromMetadata = a1;
  do
  {
    v25 = *(v24 - 1);
    v26 = *v24;
    swift_allocObject();
    sub_189081F34(a1, v25, v26);
    sub_18A4A81D8();
    sub_18A4A8218();
    sub_18A4A8228();
    sub_18A4A81E8();
    v24 += 2;
    --v23;
  }

  while (v23);
  v27 = aBlock;
  v17 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v5[3] = v27;

  v5[4] = v17;

  v77 = v5;
  if (v12)
  {
    v28 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v79 = 0;
    v80 = 0;
    v29 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    v72 = v12 + 1;
    v73 = v12 + 1;
    v78 = v12 + 1;
    v31 = v12 + 1;
    while (1)
    {
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if ((v29 * v28) >> 64 != (v29 * v28) >> 63)
      {
        goto LABEL_76;
      }

      ObjCClassFromMetadata = v32 * v28;
      if ((v32 * v28) >> 64 != (v32 * v28) >> 63)
      {
        goto LABEL_77;
      }

      v33 = 0;
      v75 = v29 + 1;
      v76 = v29 + 1;
      do
      {
        if (&v80[v33] >> 32)
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        if (&v80[v33 + 1] >> 32)
        {
          goto LABEL_69;
        }

        v34 = v33 + 1;
        v4 = ObjCClassFromMetadata + v33 + 1;
        if (__OFADD__(ObjCClassFromMetadata, v33 + 1))
        {
          goto LABEL_70;
        }

        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        if (HIDWORD(v4))
        {
          goto LABEL_72;
        }

        if (v31 < 0)
        {
          goto LABEL_73;
        }

        if ((v31 + v33) >> 32)
        {
          goto LABEL_74;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5[4] = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_188E4B7F4(0, *(v30 + 2) + 1, 1, v30);
          v5[4] = v30;
        }

        v37 = *(v30 + 2);
        v36 = *(v30 + 3);
        if (v37 >= v36 >> 1)
        {
          v30 = sub_188E4B7F4((v36 > 1), v37 + 1, 1, v30);
        }

        *(v30 + 2) = v37 + 1;
        v38 = &v30[32 * v37];
        *(v38 + 8) = v79 + v33;
        *(v38 + 9) = v79 + v33 + 1;
        *(v38 + 10) = v4;
        *(v38 + 11) = v78 + v33;
        *(v38 + 6) = 0;
        *(v38 + 7) = 0;
        ++v33;
        v5 = v77;
        v77[4] = v30;
      }

      while (v12 != v34);
      v28 = v12 + 1;
      v31 += v73;
      v78 += v72;
      v80 += v73;
      v79 += v72;
      ObjCClassFromMetadata = a1;
      v29 = v76;
      if (v75 == v12)
      {
        goto LABEL_49;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_49:
  v89 = MEMORY[0x1E69E7CC0];
  v4 = v5[3];
  if (!(v4 >> 62))
  {
    v39 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v39)
    {
      goto LABEL_84;
    }

    goto LABEL_51;
  }

LABEL_83:
  v39 = sub_18A4A7F68();
  if (v39)
  {
LABEL_51:
    if (v39 >= 1)
    {

      for (i = 0; i != v39; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v41 = sub_188E494E8(i, v4);
        }

        else
        {
          v41 = *(v4 + 8 * i + 32);
        }

        v42 = *(v41 + 32);
        MEMORY[0x18CFE2450]();
        if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
        v43 = *(v41 + 40);
        MEMORY[0x18CFE2450]();
        if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
      }

      ObjCClassFromMetadata = a1;
      if (v89 >> 62)
      {
        goto LABEL_85;
      }

LABEL_62:

      sub_18A4A8738();
      sub_188BFDA00();
      goto LABEL_63;
    }

    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_84:
  if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
    goto LABEL_62;
  }

LABEL_85:
  sub_188BFDA00();

  sub_18A4A83B8();

LABEL_63:
  v81 = objc_opt_self();
  sub_188BFDA00();
  v44 = sub_18A4A7518();

  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = ObjCClassFromMetadata;
  v87 = sub_189084680;
  v88 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v84 = 1107296256;
  v85 = sub_188A4A8F0;
  v86 = &block_descriptor_58_2;
  v47 = _Block_copy(&aBlock);
  v48 = ObjCClassFromMetadata;

  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(v50 + 24) = v48;
  v87 = sub_189084688;
  v88 = v50;
  aBlock = MEMORY[0x1E69E9820];
  v84 = 1107296256;
  v85 = sub_188A4A8F0;
  v86 = &block_descriptor_65;
  v51 = _Block_copy(&aBlock);
  v52 = v48;

  [v81 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v51);
  _Block_release(v47);

  v82.receiver = v71;
  v82.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
  v53 = objc_msgSendSuper2(&v82, sel_rootSettings);
  if (!v53)
  {
LABEL_88:
    __break(1u);
    return;
  }

  v54 = v53;
  v55 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_showMeshes);

  if (v55 == 1)
  {
    [v52 bounds];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = sub_1890835C0(0);
    v65 = objc_allocWithZone(type metadata accessor for _UIGenieAnimator.DebugView());
    v66 = sub_189083848(v64, v57, v59, v61, v63);
    v67 = v77[6];
    v77[6] = v66;
    v68 = v66;

    [v52 addSubview_];
  }

  else
  {
  }

  v69 = v77[2];
  v77[2] = v52;
  v70 = v52;
}

void sub_189082C10(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = [a2 layer];
    v4 = [a2 traitCollection];
    [v4 displayScale];
    v6 = v5;

    [v3 setRasterizationScale_];
    v7 = [a2 layer];
    v8 = sub_1890835C0(0);
    [v7 setMeshTransform_];
  }
}

void sub_189082D24(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = sub_1890835C0(1);
    v4 = sub_18A4A7258();
    [a2 _setPresentationValue_forKey_];
  }
}

void sub_189082DE4(double *a1, void *a2)
{
  v71 = *a1;
  if (*a1)
  {
    v4 = 1.0;
    v70 = 1.0 - a1[1];
    v5 = a1[3];
    v62 = a1[5];
    v63 = a1[4];
    v61 = a1[6];
    v59 = a1[2];
    v60 = a1[7];
    if ((a1[8] & 1) == 0)
    {
      v6 = 0.0;
      v7 = 0.0;
      if ((*(a1 + 65) & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_11:
      v84.origin.x = v63;
      v84.origin.y = v62;
      v84.size.width = v61;
      v84.size.height = v60;
      MinY = CGRectGetMinY(v84);
      v85.origin.x = v63;
      v85.origin.y = v62;
      v85.size.width = v61;
      v85.size.height = v60;
      MaxY = CGRectGetMaxY(v85);
      if (MinY > MaxY)
      {
        goto LABEL_50;
      }

      v7 = (v5 - MinY) / (MaxY - MinY) + (v5 - MinY) / (MaxY - MinY) + -1.0;
      goto LABEL_13;
    }

LABEL_7:
    v82.origin.x = v63;
    v82.origin.y = v62;
    v82.size.width = v61;
    v82.size.height = v60;
    MinX = CGRectGetMinX(v82);
    v83.origin.x = v63;
    v83.origin.y = v62;
    v83.size.width = v61;
    v83.size.height = v60;
    MaxX = CGRectGetMaxX(v83);
    if (MinX > MaxX)
    {
      goto LABEL_49;
    }

    v6 = (v59 - MinX) / (MaxX - MinX) + (v59 - MinX) / (MaxX - MinX) + -1.0;
    v7 = 0.0;
    if ((*(a1 + 65) & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v5 = a1[3];
  v62 = a1[5];
  v63 = a1[4];
  v61 = a1[6];
  v59 = a1[2];
  v60 = a1[7];
  if (a1[8])
  {
    v70 = 0.0;
    v4 = -1.0;
    goto LABEL_7;
  }

  v4 = -1.0;
  v6 = 0.0;
  v70 = 0.0;
  v7 = 0.0;
  if (*(a1 + 65))
  {
    goto LABEL_11;
  }

LABEL_13:
  v12 = *(v73 + 24);
  if (v12 >> 62)
  {
    goto LABEL_47;
  }

  v72 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  do
  {
    if (!v72)
    {
      return;
    }

    v13 = 0;
    v68 = v4 * (v6 * v4);
    v69 = v4 * (v7 * v4);
    v14 = v6 * v4 * 0.5;
    v66 = 1.0 - v14;
    v67 = v14 + 1.0;
    v15 = v7 * v4 * 0.5;
    v64 = 1.0 - v15;
    v65 = v15 + 1.0;
    while (1)
    {
      v19 = *(v73 + 24);
      if ((v19 & 0xC000000000000001) == 0)
      {
        break;
      }

      v20 = sub_188E494E8(v13, v19);

LABEL_22:
      v4 = *(v20 + 16);
      v21 = *(v20 + 24);
      v22 = 0.5;
      v23 = v21;
      v24 = v4;
      if (v71)
      {
        v6 = v63;
        v86.origin.x = v63;
        v86.origin.y = v62;
        v86.size.width = v61;
        v86.size.height = v60;
        v7 = CGRectGetMinX(v86);
        v87.origin.x = v63;
        v87.origin.y = v62;
        v87.size.width = v61;
        v87.size.height = v60;
        v25 = CGRectGetMaxX(v87);
        if (v7 > v25)
        {
          goto LABEL_46;
        }

        v26 = v59 - v7;
        v27 = v25 - v7;
        v24 = *(v20 + 16);
        v23 = *(v20 + 24);
        v22 = v26 / v27;
      }

      v28 = (v21 + 0.25) / 1.5;
      v6 = v70;
      v29 = _UILerp_1(v70, v24, v22);
      v30 = _UILerp_1(v70, v23, 0.5);
      if (v69 >= 0.0)
      {
        v33 = fabs(sqrt(v28));
        if (v28 == -INFINITY)
        {
          v32 = INFINITY;
        }

        else
        {
          v32 = v33;
        }
      }

      else
      {
        v31 = 1.0 - fabs(sqrt(1.0 - v28));
        if (1.0 - v28 == -INFINITY)
        {
          v32 = -INFINITY;
        }

        else
        {
          v32 = v31;
        }
      }

      v34 = (v4 + 0.25) / 1.5;
      if (v68 >= 0.0)
      {
        v37 = fabs(sqrt(v34));
        if (v34 == -INFINITY)
        {
          v4 = INFINITY;
        }

        else
        {
          v4 = v37;
        }

        if (a2)
        {
LABEL_42:
          v75 = a2;
          [v75 dampingRatio];
          v39 = v38;
          [v75 dampingRatio];
          v41 = v40;
          [v75 response];
          v6 = v42;
          [v75 response];
          v44 = v43;
          v45 = _UILerp_1(v4, v67, v66);
          v46 = v45 * _UILerp_1(v32, v65, v64);
          v47 = v6 * v46;
          v7 = v44 * v46;
          v48 = objc_opt_self();
          v49 = [v48 behaviorWithDampingRatio:v39 response:v47];
          v74 = objc_opt_self();
          v50 = swift_allocObject();
          *(v50 + 16) = v20;
          *(v50 + 24) = v29;
          v80 = sub_189084568;
          v81 = v50;
          aBlock = MEMORY[0x1E69E9820];
          *&v4 = 1107296256;
          v77 = 1107296256;
          v78 = sub_188A4A8F0;
          v79 = &block_descriptor_94;
          v51 = _Block_copy(&aBlock);

          v52 = v49;

          v80 = signpost_c2_entryLock_start;
          v81 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v77 = 1107296256;
          v78 = sub_188C3DD6C;
          v79 = &block_descriptor_40_2;
          v53 = _Block_copy(&aBlock);
          [v74 _animateUsingSpringBehavior_tracking_animations_completion_];
          _Block_release(v53);
          _Block_release(v51);

          v54 = [v48 behaviorWithDampingRatio:v41 response:v7];
          v55 = swift_allocObject();
          *(v55 + 16) = v20;
          *(v55 + 24) = v30;
          v80 = sub_1890845F4;
          v81 = v55;
          aBlock = MEMORY[0x1E69E9820];
          v77 = 1107296256;
          v78 = sub_188A4A8F0;
          v79 = &block_descriptor_46;
          v56 = _Block_copy(&aBlock);

          v57 = v54;

          v80 = signpost_c2_entryLock_start;
          v81 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v77 = 1107296256;
          v78 = sub_188C3DD6C;
          v79 = &block_descriptor_49_2;
          v58 = _Block_copy(&aBlock);
          [v74 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v58);
          _Block_release(v56);

          goto LABEL_18;
        }
      }

      else
      {
        v35 = 1.0 - v34;
        v36 = 1.0 - fabs(sqrt(v35));
        if (v35 == -INFINITY)
        {
          v4 = -INFINITY;
        }

        else
        {
          v4 = v36;
        }

        if (a2)
        {
          goto LABEL_42;
        }
      }

      [*(v20 + 32) value];
      [*(v20 + 40) value];
      v17 = v16;
      [*(v20 + 32) setValue_];
      [*(v20 + 40) setValue_];
      [*(v20 + 32) value];
      v7 = v18;
      [*(v20 + 40) value];
      [*(v20 + 32) setValue_];
      [*(v20 + 40) setValue_];

LABEL_18:
      if (v72 == ++v13)
      {
        return;
      }
    }

    if (v13 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v19 + 8 * v13 + 32);

      goto LABEL_22;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v72 = sub_18A4A7F68();
  }

  while ((v72 & 0x8000000000000000) == 0);
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

char *sub_1890835C0(char a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (v4 >> 62)
  {
    v5 = sub_18A4A7F68();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_15:
    v20 = [objc_allocWithZone(MEMORY[0x1E69793D8]) initWithVertexCount:*(v6 + 16) vertices:v6 + 32 faceCount:*(*(v2 + 32) + 16) faces:*(v2 + 32) + 32 depthNormalization:*MEMORY[0x1E6979700]];

    return v20;
  }

  v21 = MEMORY[0x1E69E7CC0];

  result = sub_188E6D1FC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v21;
    if (a1)
    {
      v9 = &selRef_presentationValue;
    }

    else
    {
      v9 = &selRef_value;
    }

    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = sub_188E494E8(v8, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      [*(v10 + 32) *v9];
      v14 = v13;
      [*(v10 + 40) *v9];
      v16 = v15;

      v18 = *(v21 + 16);
      v17 = *(v21 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_188E6D1FC((v17 > 1), v18 + 1, 1);
      }

      ++v8;
      *(v21 + 16) = v18 + 1;
      v19 = (v21 + 40 * v18);
      v19[4] = v11;
      v19[5] = v12;
      v19[6] = v14;
      v19[7] = v16;
      v19[8] = 0;
    }

    while (v5 != v8);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1890837B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_189083848(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtCC5UIKit16_UIGenieAnimatorP33_A4B2A5C8E093A80E4BC9006C0C2789519DebugView_dots] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtCC5UIKit16_UIGenieAnimatorP33_A4B2A5C8E093A80E4BC9006C0C2789519DebugView_faces] = v11;
  *&v5[OBJC_IVAR____TtCC5UIKit16_UIGenieAnimatorP33_A4B2A5C8E093A80E4BC9006C0C2789519DebugView_mesh] = a1;
  v40.receiver = v5;
  v40.super_class = type metadata accessor for _UIGenieAnimator.DebugView();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a2, a3, a4, a5);
  [v13 setUserInteractionEnabled_];
  [v13 setAutoresizingMask_];

  result = [v12 faceCount];
  if (result < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  if (result)
  {
    v16 = objc_opt_self();
    v17 = OBJC_IVAR____TtCC5UIKit16_UIGenieAnimatorP33_A4B2A5C8E093A80E4BC9006C0C2789519DebugView_faces;
    do
    {
      v18 = [objc_allocWithZone(UIView) init];
      v19 = [v18 layer];
      v20 = [v16 yellowColor];
      v21 = [v20 CGColor];

      [v19 setBorderColor_];
      v22 = [v18 layer];
      [v22 setBorderWidth_];

      v23 = [v18 layer];
      [v23 setBorderOffset_];

      [v13 addSubview_];
      swift_beginAccess();
      v24 = v18;
      MEMORY[0x18CFE2450]();
      if (*((*(v13 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v13 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
      swift_endAccess();

      --v15;
    }

    while (v15);
  }

  result = [v12 vertexCount];
  if (result < 0)
  {
    goto LABEL_16;
  }

  v25 = result;
  if (result)
  {
    v26 = objc_opt_self();
    v27 = OBJC_IVAR____TtCC5UIKit16_UIGenieAnimatorP33_A4B2A5C8E093A80E4BC9006C0C2789519DebugView_dots;
    do
    {
      v28 = [objc_allocWithZone(UIView) initWithFrame_];
      [v28 bounds];
      [v28 _setCornerRadius_];
      v29 = [v26 whiteColor];
      [v28 setBackgroundColor_];

      v30 = [v28 layer];
      LODWORD(v31) = 1.5;
      [v30 setGain_];

      [v13 addSubview_];
      swift_beginAccess();
      v32 = v28;
      MEMORY[0x18CFE2450]();
      if (*((*(v13 + v27) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v13 + v27) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
      swift_endAccess();

      --v25;
    }

    while (v25);
  }

  v33 = objc_opt_self();
  v34 = swift_allocObject();
  *(v34 + 16) = v13;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_188D6F26C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_188A4B574;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_74_2;
  v36 = _Block_copy(aBlock);
  v37 = v13;

  [v33 performWithoutAnimation_];

  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v37;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_189083DC0()
{
  v43.receiver = v0;
  v43.super_class = type metadata accessor for _UIGenieAnimator.DebugView();
  objc_msgSendSuper2(&v43, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtCC5UIKit16_UIGenieAnimatorP33_A4B2A5C8E093A80E4BC9006C0C2789519DebugView_dots;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    goto LABEL_78;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = *&v0[OBJC_IVAR____TtCC5UIKit16_UIGenieAnimatorP33_A4B2A5C8E093A80E4BC9006C0C2789519DebugView_mesh];
  if (v3 == [v4 vertexCount])
  {
    v5 = OBJC_IVAR____TtCC5UIKit16_UIGenieAnimatorP33_A4B2A5C8E093A80E4BC9006C0C2789519DebugView_faces;
    swift_beginAccess();
    v6 = *&v0[v5];
    v7 = v6 >> 62 ? sub_18A4A7F68() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 == [v4 faceCount])
    {
      v8 = [v4 faceCount];
      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v9 = v8;
        if (v8)
        {
          v10 = 0;
          do
          {
            [v4 faceAtIndex_];
            [v4 vertexAtIndex_];
            v11 = v41;
            v12 = v42;
            [v4 vertexAtIndex_];
            v13 = v41;
            v14 = v42;
            [v0 bounds];
            if (v15 > 0.0)
            {
              v17 = (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
              v18 = v16 < 0.0 && ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
              if (v16 >= 0.0)
              {
                v17 = 0;
              }

              if ((*&v16 & 0x7FFFFFFFFFFFFFFFLL) == 0)
              {
                v17 = 1;
              }

              v19 = (*&v16 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v17;
              if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
              {
                v19 = 1;
              }

              if (*&v15 >> 52 <= 0x7FEuLL && ((v19 | v18) & 1) == 0)
              {
                v11 = v41 * v15;
                v12 = v42 * v16;
              }
            }

            [v0 bounds];
            if (v20 > 0.0)
            {
              v22 = (*&v21 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
              v23 = ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
              if (v21 >= 0.0)
              {
                v23 = 0;
                v22 = 0;
              }

              if ((*&v21 & 0x7FFFFFFFFFFFFFFFLL) == 0)
              {
                v22 = 1;
              }

              v24 = (*&v21 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v22;
              if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
              {
                v24 = 1;
              }

              if (*&v20 >> 52 <= 0x7FEuLL && ((v24 | v23) & 1) == 0)
              {
                v13 = v41 * v20;
                v14 = v42 * v21;
              }
            }

            v25 = *&v0[v5];
            if ((v25 & 0xC000000000000001) != 0)
            {

              v26 = sub_188E49300(v10, v25);
            }

            else
            {
              if (v10 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                v3 = sub_18A4A7F68();
                goto LABEL_3;
              }

              v26 = *(v25 + 8 * v10 + 32);
            }

            ++v10;
            if (v14 >= v11)
            {
              v27 = v11;
            }

            else
            {
              v27 = v14;
            }

            if (v14 >= v12)
            {
              v28 = v12;
            }

            else
            {
              v28 = v14;
            }

            [v26 setFrame_];
          }

          while (v9 != v10);
        }

        v29 = [v4 vertexCount];
        if ((v29 & 0x8000000000000000) == 0)
        {
          v30 = v29;
          if (v29)
          {
            v31 = 0;
            do
            {
              [v4 vertexAtIndex_];
              v32 = v41;
              v33 = v42;
              v34 = *&v0[v1];
              if ((v34 & 0xC000000000000001) != 0)
              {

                v35 = sub_188E49300(v31, v34);
              }

              else
              {
                if (v31 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_77;
                }

                v35 = *(v34 + 8 * v31 + 32);
              }

              [v0 bounds];
              if (v36 > 0.0)
              {
                v38 = (*&v37 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
                v39 = v37 < 0.0 && ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
                if (v37 >= 0.0)
                {
                  v38 = 0;
                }

                if ((*&v37 & 0x7FFFFFFFFFFFFFFFLL) == 0)
                {
                  v38 = 1;
                }

                v40 = (*&v37 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v38;
                if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
                {
                  v40 = 1;
                }

                if (*&v36 >> 52 <= 0x7FEuLL && ((v40 | v39) & 1) == 0)
                {
                  v32 = v41 * v36;
                  v33 = v42 * v37;
                }
              }

              ++v31;
              [v35 setCenter_];
            }

            while (v30 != v31);
          }

          return;
        }
      }

      __break(1u);
    }
  }
}

id sub_189084340()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIGenieAnimator.DebugView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1890843F8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[66])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18908444C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1890844B4(CGRect *a1, CGRect *a2)
{
  if (((LOBYTE(a1->origin.x) ^ LOBYTE(a2->origin.x)) & 1) != 0 || a1->origin.y != a2->origin.y || a1->size.width != a2->size.width || a1->size.height != a2->size.height)
  {
    return 0;
  }

  if (CGRectEqualToRect(a1[1], a2[1]) && ((LOBYTE(a1[2].origin.x) ^ LOBYTE(a2[2].origin.x)) & 1) == 0)
  {
    v4 = BYTE1(a1[2].origin.x) ^ BYTE1(a2[2].origin.x) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id sub_189084568()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  [v3 value];
  v4 = *(v1 + 40);
  [v4 value];
  v6 = v5;
  [v3 setValue_];

  return [v4 setValue_];
}

id sub_1890845F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  [v3 value];
  v5 = v4;
  v6 = *(v1 + 40);
  [v6 value];
  [v3 setValue_];

  return [v6 setValue_];
}

id sub_189084690()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  [*(v1 + 32) setValue_];
  v3 = *(v1 + 40);

  return [v3 setValue_];
}

double sub_189084718(uint64_t a1, uint64_t a2)
{
  v12 = &type metadata for _UIListMetrics.SectionProvider;
  v13 = &off_1EFAD6DE0;
  v11[0] = swift_allocObject();
  sub_188C2A1B4(a2, v11[0] + 16);
  v3 = __swift_project_boxed_opaque_existential_0(v11, &type metadata for _UIListMetrics.SectionProvider);
  __swift_project_boxed_opaque_existential_0(v3 + 6, v3[9]);
  swift_getAtKeyPath();
  v4 = __swift_project_boxed_opaque_existential_0(v11, v12);
  v5 = sub_188C2A668(v4, 12.0);
  v6 = __swift_project_boxed_opaque_existential_0(v11, v12);
  __swift_project_boxed_opaque_existential_0(v6 + 6, v6[9]);
  swift_getAtKeyPath();
  v7 = v10;
  if (v5 > v10)
  {
    v7 = v5;
  }

  v8 = v10 + v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v8;
}

uint64_t sub_189084828(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 144))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18908486C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 3;
    }
  }

  return result;
}

void sub_1890848E4()
{
  v3 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v5 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  v6 = *(v5 + 224);
  UIFloorToScale(*(v4 + 232), 6.0);
  v8 = v6 == *(v4 + 224) && v7 == *(v4 + 232);
  if (v8 && *(v4 + 40) == 1)
  {
    goto LABEL_19;
  }

  *(v4 + 224) = v6;
  *(v4 + 232) = v7;
  sub_188B38ED0(v6);
  swift_beginAccess();
  v9 = *(v4 + 344);
  v10 = v9;
  if (!v9)
  {
    v10 = *(v4 + 352);
    v11 = v10;
  }

  swift_beginAccess();
  v12 = *(v4 + 232);
  v13 = v9;

  sub_188B3A13C(v14, v10, v12);

  swift_beginAccess();
  v15 = *(v4 + 400);
  if (v15 >> 62)
  {
    v16 = sub_18A4A7F68();
    if (v16)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_11:
      if (v16 < 1)
      {
        goto LABEL_72;
      }

      v17 = 0;
      v18 = 0.0;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = sub_188E4A488(v17, v15);
        }

        else
        {
          v19 = *(v15 + 8 * v17 + 32);
        }

        ++v17;
        v20 = &v19[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
        *v20 = v18;
        *(v20 + 8) = 0;
        v21 = *&v19[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

        v18 = v18 + v21;
      }

      while (v16 != v17);
    }
  }

  *(v4 + 40) = 1;
  sub_188B386EC();

LABEL_19:
  sub_188FF48D8();
  v22 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView;
  v23 = *(v3 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView);
  if (v23)
  {
    v24 = v23;
    sub_188EBF07C();
  }

  v25 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView;
  v26 = *(v3 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView);
  if (v26)
  {
    [*(v26 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView) clearTransitionContext];
  }

  v27 = *(v3 + v22);
  if (v27)
  {
    v28 = v27;
    v29 = sub_188EBFB68();

    if (v29 != -1)
    {
      *(v4 + 264) = v29;
    }
  }

  v30 = *(v5 + 136);
  v2 = OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar;
  v31 = *(v3 + OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar);
  *(v3 + OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar) = v30;
  v32 = v30;

  v33 = *(v3 + v2);
  if (v33)
  {
    if ([v33 _isIntegratedIntoToolbarOrNavigationBarContent])
    {
      v33 = *(v3 + v2);
      if (v33)
      {
        v33 = [v33 _viewStackedInNavigationBar];
      }

      v34 = 1;
    }

    else
    {
      v34 = 0;
      v33 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v3 + OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningScopeBarContainer);
  *(v3 + OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningScopeBarContainer) = v33;

  v36 = *(v3 + v2);
  if (v36)
  {
    [v36 _prepareForTransitionToSearchLayoutState_];
  }

  if (*(v3 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle) != 1)
  {
LABEL_81:
    v70 = *(v4 + 56);
    if (!v70)
    {
      goto LABEL_84;
    }

    v71 = *(v5 + 56);
    if (v71)
    {
      type metadata accessor for NavigationBarContentView();
      v72 = v71;
      v73 = v70;
      v74 = sub_18A4A7C88();

      v75 = v73;
      if (v74)
      {
LABEL_84:
        if (!*(v5 + 160))
        {
LABEL_88:
          v76 = *(v4 + 160);
          if (v76)
          {
            [v76 setAlpha_];
          }
        }

LABEL_90:
        sub_188FF5DF4();
        v77 = *(v3 + v2);
        if (v77)
        {
          [v77 _setBarPosition_];
        }

        if (sub_189085028())
        {
          v78 = *(v3 + v2);
          if (v78)
          {
            v79 = v78;
            [v79 _freezeForAnimatedTransitionToSearchLayoutState_];
          }
        }

        return;
      }
    }

    else
    {
      v75 = v70;
    }

    [v75 setAlpha_];
    if (!*(v5 + 160))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  v37 = *(v3 + v25);
  v38 = *(v5 + 80);
  if (v37)
  {
    if (v38)
    {
      type metadata accessor for NavigationBarLargeTitleView();
      v39 = v38;
      v40 = v37;
      v41 = sub_18A4A7C88();

      if (v41)
      {
        goto LABEL_81;
      }
    }
  }

  else if (!v38)
  {
    goto LABEL_81;
  }

  swift_beginAccess();
  v1 = *(v4 + 344);
  if (v1 && *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
  {
    v42 = v1;
    v43 = sub_188B4C524();
    v45 = v44;
    v47 = v46;

LABEL_77:
    sub_188F643C0(v5, v4, v34);
    v64 = *(v3 + v25);
    if (v64)
    {
      [v64 setFrame_];
      v65 = *(v3 + v25);
      if (v65)
      {
        [v65 layoutIfNeeded];
        v66 = *(v3 + v25);
        if (v66)
        {
          v67 = type metadata accessor for NavigationBarLargeTitleView();
          v86.receiver = v66;
          v86.super_class = v67;
          v68 = v66;
          objc_msgSendSuper2(&v86, sel_setAlpha_, 0.0);
          v69 = *&v68[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
          v85.receiver = v68;
          v85.super_class = v67;
          objc_msgSendSuper2(&v85, sel_alpha);
          [v69 setAlpha_];
        }
      }
    }

    goto LABEL_81;
  }

  swift_beginAccess();
  v15 = *(v4 + 400);
  v84 = v25;
  v83 = v34;
  if (v15 >> 62)
  {
    goto LABEL_73;
  }

  v48 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v48)
  {
LABEL_74:
    v60 = v1;
    v53 = 0;
    goto LABEL_75;
  }

  while (1)
  {
    v49 = v15 & 0xC000000000000001;
    v81 = v5;
    v82 = (v15 + 32);
    v80 = v1;
    v50 = v1;

    if ((v15 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v51 = *v82;
      goto LABEL_49;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    v48 = sub_18A4A7F68();
    if (!v48)
    {
      goto LABEL_74;
    }
  }

  v51 = sub_188E4A488(0, v15);
LABEL_49:
  v52 = v51[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

  if (v52 > 6)
  {

    v53 = 0;
    v1 = v80;
LABEL_75:
    v25 = v84;
    v34 = v83;
LABEL_76:

    v43 = CGRectMake();
    v45 = v61;
    v47 = v62;
    goto LABEL_77;
  }

  if (v48 == 1)
  {
    v1 = 0;
    if (!v49)
    {
      goto LABEL_66;
    }

LABEL_98:
    v58 = sub_188E4A488(v1, v15);
LABEL_68:
    v59 = v58;
    v5 = v81;
    v25 = v84;
    v34 = v83;

    v53 = v59;
    sub_1891698A4();

    v1 = v80;
    goto LABEL_76;
  }

  v1 = 0;
  while (1)
  {
    v5 = v1 + 1;
    if (!v49)
    {
      break;
    }

    v54 = sub_188E4A488(v1 + 1, v15);
    v55 = __OFADD__(v5, 1);
    v56 = v1 + 2;
    if (v55)
    {
      goto LABEL_63;
    }

LABEL_58:
    v57 = v54[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v57 < 7)
    {
      ++v1;
      if (v56 != v48)
      {
        continue;
      }
    }

    goto LABEL_64;
  }

  if (v5 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_71;
  }

  v54 = *(v15 + 8 * v1 + 40);
  v55 = __OFADD__(v5, 1);
  v56 = v1 + 2;
  if (!v55)
  {
    goto LABEL_58;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  if (v49)
  {
    goto LABEL_98;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_98;
  }

LABEL_66:
  if (v1 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v58 = v82[v1];
    goto LABEL_68;
  }

  __break(1u);
}

uint64_t sub_189085028()
{
  v1 = OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar;
  result = *(v0 + OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar);
  if (result)
  {
    result = [result _searchController];
    if (result)
    {
      v3 = result;
      v4 = [result obscuresBackgroundDuringPresentation];

      if (!v4)
      {
        return 0;
      }

      result = *(v0 + v1);
      if (result)
      {
        result = [result _searchController];
        if (result)
        {
          v5 = result;
          v6 = [result _hidesNavigationBarDuringPresentationRespectingInlineSearch];

          if (v6)
          {
            v7 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
            if (!*(v7 + 136) || (sub_188CCAC84(), CGRectGetHeight(v8) == 0.0))
            {
              if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle) != 1 || *(v7 + 232) == *(*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout) + 232))
              {
                return 1;
              }
            }
          }

          return 0;
        }
      }
    }
  }

  return result;
}

void sub_189085148(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (a1)
  {
    if (a1 == a2)
    {
      return;
    }

    v15 = a2;
    v20 = a1;
    [v20 setAlpha_];
    [v20 setTransitioning_];
    [v20 setFrame_];

    a2 = v15;
    if (!v15)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  v21 = a2;
  [v21 setFrame_];
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = *&v10[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar];
  v24 = v23;
  if (v23)
  {
    v25 = v24;
    v26 = [v24 _canPreemptTransition];

    if (v26)
    {
      v27 = 71;
    }

    else
    {
      v27 = 69;
    }
  }

  else
  {
    v27 = 69;
  }

  v28 = objc_opt_self();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v10;
  v29[5] = 0xBFD6666666666666;
  v29[6] = sub_188F3660C;
  v29[7] = v22;
  v32[4] = sub_189086844;
  v32[5] = v29;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 1107296256;
  v32[2] = sub_188A4A8F0;
  v32[3] = &block_descriptor_140_1;
  v30 = _Block_copy(v32);
  v31 = v10;

  [v28 animateKeyframesWithDuration:v27 delay:v30 options:0 animations:0.0 completion:0.0];
  _Block_release(v30);
}

void sub_1890853B0()
{
  v5 = v0;
  v6 = *&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout];
  v7 = *&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundAlpha];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;
  if (v7 != v8)
  {
    sub_188B386EC();
  }

  sub_188B38ED0(*(v6 + 224));
  swift_beginAccess();
  v9 = *(v6 + 344);
  v10 = v9;
  if (!v9)
  {
    v10 = *(v6 + 352);
    v11 = v10;
  }

  swift_beginAccess();
  v12 = *(v6 + 232);
  v13 = v9;

  sub_188B3A13C(v14, v10, v12);

  swift_beginAccess();
  v15 = *(v6 + 400);
  if (v15 >> 62)
  {
    v16 = sub_18A4A7F68();
    if (v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_7:
      if (v16 < 1)
      {
        goto LABEL_62;
      }

      v17 = 0;
      v18 = 0.0;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = sub_188E4A488(v17, v15);
        }

        else
        {
          v19 = *(v15 + 8 * v17 + 32);
        }

        ++v17;
        v20 = &v19[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
        *v20 = v18;
        *(v20 + 8) = 0;
        v21 = *&v19[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

        v18 = v18 + v21;
      }

      while (v16 != v17);
    }
  }

  *(v6 + 40) = 1;
  sub_188B386EC();

  sub_188FF5164();
  v2 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar;
  v22 = *&v5[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar];
  v23 = v22;
  if (v22)
  {
    v24 = v23;
    [v23 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = *&v5[v2];
    v32 = *(v6 + 232);
    v33 = v31;
    if (v31)
    {
      v34 = v33;
      [v33 setFrame_];
    }
  }

  v35 = sub_189085028();
  if ((v35 & 1) == 0)
  {
    v36 = OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar;
    v37 = *&v5[OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar];
    if (v37)
    {
      if (([v37 _isIntegratedIntoToolbarOrNavigationBarContent] & 1) == 0)
      {
        v38 = *&v5[v36];
        if (v38)
        {
          v39 = v38;
          sub_188CCAC84();
          [v39 setFrame_];
        }
      }
    }
  }

  v106 = OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar;
  v40 = *&v5[OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar];
  if (v40)
  {
    [v40 _animateTransitionToSearchLayoutState_];
  }

  v41 = *&v5[OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningScopeBarContainer];
  v3 = &selRef_adjustAffinityOfPosition_isStart_;
  if (v41)
  {
    v42 = objc_opt_self();
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    v111 = sub_189086834;
    v112 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v108 = 1107296256;
    v109 = sub_188A4A8F0;
    v110 = &block_descriptor_124_2;
    v44 = _Block_copy(&aBlock);
    v45 = v41;
    v46 = v35;
    v47 = v45;

    [v42 animateKeyframesWithDuration:0 delay:v44 options:0 animations:0.0 completion:0.0];

    v35 = v46;
    _Block_release(v44);
  }

  v4 = *(v6 + 96);
  if (v4)
  {
    v48 = *(v6 + 208);
    v49 = -v48;
    v50 = *(v6 + 224);
    v51 = v48 + *(v6 + 232);
    v52 = v4;
    [v52 setFrame_];
    [v52 layoutIfNeeded];
  }

  v53 = swift_allocObject();
  v16 = v53;
  *(v53 + 16) = 0;
  if (v5[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle] != 1)
  {
    goto LABEL_68;
  }

  v1 = *(v6 + 80);
  *(v53 + 16) = v1;
  if (!v1)
  {
    goto LABEL_68;
  }

  v54 = *(v6 + 344);
  if (v54 && *(v54 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
  {
    v1 = v1;
    v55 = v54;
    v56 = sub_188B4C524();
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v63 = v62;
    v64 = v60;
    v65 = v58;
    v66 = v56;
    goto LABEL_66;
  }

  v104 = *(v6 + 344);
  v103 = v35;
  v15 = *(v6 + 400);
  if (v15 >> 62)
  {
    goto LABEL_63;
  }

  v67 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v67)
  {
LABEL_64:
    v78 = v104;
    v79 = v104;
    v80 = v1;
    v72 = 0;
    goto LABEL_65;
  }

  while (1)
  {
    v100 = v4;
    v101 = v2;
    v2 = v15 & 0xC000000000000001;
    v102 = (v15 + 32);
    v68 = v1;
    v69 = v104;

    v105 = v15 & 0xC000000000000001;
    if ((v15 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v70 = *v102;
      goto LABEL_38;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v67 = sub_18A4A7F68();
    if (!v67)
    {
      goto LABEL_64;
    }
  }

  v70 = sub_188E4A488(0, v15);
LABEL_38:
  v71 = v70[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

  if (v71 > 6)
  {

    v72 = 0;
    v2 = v101;
LABEL_58:
    v78 = v104;
LABEL_65:

    v66 = CGRectMake();
    v35 = v103;
LABEL_66:
    [v1 setFrame_];

    v81 = *(v16 + 16);
    if (v81)
    {
      [v81 layoutIfNeeded];
    }

LABEL_68:
    if (v5[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground] == 1)
    {
      v82 = *(v6 + 96);
      if (v82)
      {
        v83 = [v82 layout];
        if (v83)
        {
          v84 = v83;
          [v83 setBackgroundTransitionProgress_];
        }

        v85 = *(v6 + 96);
        if (v85)
        {
          v86 = [v85 layout];
          if (v86)
          {
            v87 = v86;
            [v86 setBackgroundAlpha_];
          }
        }
      }

      [*(v6 + 96) transitionBackgroundViews];
    }

    v88 = swift_allocObject();
    *(v88 + 16) = v5;
    *(v88 + 24) = v16;
    if (v35)
    {
      v89 = *&v5[v106];
      v90 = v5;

      if (v89)
      {
        [v89 setAlpha_];
      }

      sub_189085DB8(v5, v16);
    }

    else
    {
      v91 = *&v5[v2];
      v92 = v91;
      v93 = v5;

      if (v91)
      {
        v94 = [v92 _canPreemptTransition];

        if (v94)
        {
          v95 = 71;
        }

        else
        {
          v95 = 69;
        }
      }

      else
      {
        v95 = 69;
      }

      v96 = objc_opt_self();
      v97 = swift_allocObject();
      v97[2] = 0;
      v97[3] = 0;
      v97[4] = v93;
      v97[5] = 0xBFC3333333333333;
      v97[6] = sub_18908682C;
      v97[7] = v88;
      v111 = sub_188F64CC8;
      v112 = v97;
      aBlock = MEMORY[0x1E69E9820];
      v108 = 1107296256;
      v109 = sub_188A4A8F0;
      v110 = &block_descriptor_118_3;
      v98 = _Block_copy(&aBlock);
      v99 = v93;

      [v96 v3[489]];
      _Block_release(v98);
    }

    sub_188FF57E8();

    return;
  }

  if (v67 == 1)
  {
    v2 = 0;
    if (!v105)
    {
      goto LABEL_55;
    }

LABEL_89:
    v76 = sub_188E4A488(v2, v15);
LABEL_57:
    v77 = v76;
    v4 = v100;
    v2 = v101;
    v3 = &selRef_adjustAffinityOfPosition_isStart_;

    v72 = v77;
    sub_1891698A4();

    goto LABEL_58;
  }

  v2 = 0;
  while (1)
  {
    v3 = (v2 + 1);
    if (!v105)
    {
      break;
    }

    v73 = sub_188E4A488(v2 + 1, v15);
    v74 = __OFADD__(v3, 1);
    v75 = v2 + 2;
    if (v74)
    {
      goto LABEL_52;
    }

LABEL_47:
    v4 = v73[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v4 < 7)
    {
      ++v2;
      if (v75 != v67)
      {
        continue;
      }
    }

    goto LABEL_53;
  }

  if (v3 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_61;
  }

  v73 = *(v15 + 8 * v2 + 40);
  v74 = __OFADD__(v3, 1);
  v75 = v2 + 2;
  if (!v74)
  {
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  if (v105)
  {
    goto LABEL_89;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_89;
  }

LABEL_55:
  if (v2 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v76 = v102[v2];
    goto LABEL_57;
  }

  __break(1u);
}

void sub_189085CC0(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_188F8656C;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_188A4A8F0;
  v6[3] = &block_descriptor_130;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.3];
  _Block_release(v4);
}

void sub_189085DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v4 = v3[7];
  if (v4)
  {
    [v4 setAlpha_];
  }

  v5 = v3[6];
  if (v5)
  {
    [v5 setAlpha_];
  }

  v6 = v3[15];
  if (v6)
  {
    [v6 setAlpha_];
  }

  swift_beginAccess();
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = type metadata accessor for NavigationBarLargeTitleView();
    v12.receiver = v7;
    v12.super_class = v8;
    v9 = v7;
    objc_msgSendSuper2(&v12, sel_setAlpha_, 1.0);
    v10 = *&v9[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    v11.receiver = v9;
    v11.super_class = v8;
    objc_msgSendSuper2(&v11, sel_alpha);
    [v10 setAlpha_];
  }
}

uint64_t sub_189085EB4()
{
  v2 = v0;
  sub_188FF54E8();
  v3 = OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar;
  v4 = *&v0[OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar];
  v5 = &selRef_setAccessibility_;
  if (!v4 || ([v4 _completeTransitionToSearchLayoutState_], (v6 = *&v0[v3]) == 0) || (objc_msgSend(v6, sel__isIntegratedIntoToolbarOrNavigationBarContent) & 1) != 0)
  {
    if (*(*&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout] + 264) != 1)
    {
      goto LABEL_41;
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_189086824;
    *(v9 + 24) = v8;
    aBlock[4] = sub_188A4B574;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_95;
    v10 = _Block_copy(aBlock);
    v11 = v2;

    [v7 performWithoutAnimation_];
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v13 = *&v2[v3];
      if (v13)
      {
        [v13 _growToSearchFieldIfNecessary];
        v14 = sub_189086824;
        v15 = *&v2[v3];
        if (!v15)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v14 = sub_189086824;
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_48;
  }

  v1 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar;
  v16 = *&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar];
  v17 = v16;
  if (!v16)
  {
    v8 = *&v2[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout];
    v23 = (v8 + 224);
    v24 = (v8 + 232);
    goto LABEL_18;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;

  v8 = *&v2[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout];
  v23 = (v8 + 224);
  v24 = (v8 + 232);
  if (v20 != *(v8 + 224) || v22 != *(v8 + 232))
  {
    v26 = *&v2[v1];
    v27 = v26;
    if (v26)
    {
      v28 = v27;
      [v27 bounds];
      v30 = v29;
      v32 = v31;

      v33 = v32;
      goto LABEL_19;
    }

LABEL_18:
    v30 = 0.0;
    v33 = 0.0;
LABEL_19:
    UIFloorToScale(v33, 6.0);
    v35 = v30 == *(v8 + 224) && v34 == *(v8 + 232);
    if (v35 && *(v8 + 40) == 1)
    {
LABEL_37:
      v48 = *&v2[v1];
      v49 = v48;
      if (v48)
      {
        v50 = v49;
        [v49 setNeedsLayout];
      }

      goto LABEL_39;
    }

    *v23 = v30;
    *v24 = v34;
    sub_188B38ED0(v30);
    swift_beginAccess();
    v36 = *(v8 + 344);
    isEscapingClosureAtFileLocation = v36;
    if (!v36)
    {
      isEscapingClosureAtFileLocation = *(v8 + 352);
      v37 = isEscapingClosureAtFileLocation;
    }

    swift_beginAccess();
    v38 = *v24;
    v39 = v36;

    sub_188B3A13C(v40, isEscapingClosureAtFileLocation, v38);

    result = swift_beginAccess();
    v9 = *(v8 + 400);
    if (!(v9 >> 62))
    {
      v42 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v42)
      {
LABEL_36:
        *(v8 + 40) = 1;
        sub_188B386EC();

        goto LABEL_37;
      }

LABEL_29:
      if (v42 < 1)
      {
        __break(1u);
        return result;
      }

      v43 = 0;
      v44 = 0.0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v45 = sub_188E4A488(v43, v9);
        }

        else
        {
          v45 = *(v9 + 8 * v43 + 32);
        }

        ++v43;
        v46 = &v45[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
        *v46 = v44;
        *(v46 + 8) = 0;
        v47 = *&v45[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

        v44 = v44 + v47;
      }

      while (v42 != v43);

      v5 = &selRef_setAccessibility_;
      goto LABEL_36;
    }

LABEL_48:
    result = sub_18A4A7F68();
    v42 = result;
    if (!result)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

LABEL_39:
  v51 = *&v2[v3];
  if (!v51)
  {
    v14 = 0;
    goto LABEL_43;
  }

  v52 = v51;
  sub_188CCAC84();
  [v52 setFrame_];

LABEL_41:
  v14 = 0;
  v15 = *&v2[v3];
  if (v15)
  {
LABEL_42:
    [v15 v5[326]];
  }

LABEL_43:
  v53 = OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningScopeBarContainer;
  v54 = *&v2[OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningScopeBarContainer];
  if (v54)
  {
    [v54 v5[326]];
  }

  v55 = *&v2[v3];
  *&v2[v3] = 0;

  v56 = *&v2[v53];
  *&v2[v53] = 0;

  return sub_188A55B8C(v14);
}

void sub_1890863A0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar);
  v2 = v1;
  if (v1)
  {
    v3 = v2;
    [v2 layoutIfNeeded];
  }
}

void sub_189086410()
{
  sub_188FF55E4();
  v1 = OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar);
  if (v2)
  {
    [v2 _cancelTransitionToSearchLayoutState_];
    v3 = *(v0 + v1);
    if (v3)
    {
      [v3 setAlpha_];
    }
  }

  v4 = OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningScopeBarContainer;
  v5 = *(v0 + OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningScopeBarContainer);
  if (v5)
  {
    [v5 setAlpha_];
  }

  v6 = *(v0 + v1);
  *(v0 + v1) = 0;

  v7 = *(v0 + v4);
  *(v0 + v4) = 0;
}

id sub_1890864C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  *&v16[OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningSearchBar] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningScopeBarContainer] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPartAnimationBaseDuration] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPartAnimationOverlapDuration] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_clippingViews] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleTransitionType] = 0;
  v17 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_isPushOperation] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_compact] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_allowLargeTitles] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPart] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_apiVersion] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundAlpha] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_promptView] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_tabBarHostedView] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithLargeTitle] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithTransparencyAllowed] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithTransparencyAllowed] = 0;
  v18 = &v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_startingContentOffsetForObservedScrollView];
  *v18 = 0;
  v18[1] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_observedScrollViewOffsetIsApplicable] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_sharesContentViewLayouts] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transitionOverlayView] = 0;
  *&v16[v17] = a1;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transition] = a2;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_stack] = a3;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout] = a4;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout] = a5;
  v19 = &v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_completionHandler];
  *v19 = a6;
  v19[1] = a7;
  v22.receiver = v16;
  v22.super_class = type metadata accessor for NavigationBarTransitionContext();
  v20 = objc_msgSendSuper2(&v22, sel_init);

  return v20;
}

void sub_189086774()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextDismissSearch_transitioningScopeBarContainer);
}

void sub_189086860(double a1, double a2, double a3, double a4)
{
  if (([v4 isActive] & 1) == 0)
  {
    v9 = [v4 delegate];
    if (v9)
    {
      v10 = v9;
      if ([v9 dismissInteraction:v4 shouldBeginWithAxis:2 location:1 velocity:a1 proposal:{a2, a3, a4}])
      {
        *(v4 + OBJC_IVAR____UIDismissInteraction__isActive) = 1;
        [v10 dismissInteraction:v4 didBeginAtLocation:a1 withVelocity:{a2, a3, a4}];
        v11 = [v10 trackingViewForInteraction_];
        swift_unknownObjectRelease();
        swift_unknownObjectWeakAssign();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_189086A58(void *a1)
{
  if ([v1 isActive])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v4 = [v1 view];
      if (v4)
      {
        v5 = v4;
        v6 = [v14 _window];
        if (v6)
        {

          if ((v1[OBJC_IVAR____UIProxyDismissInteraction_trackingViewDidBecomeVisible] & 1) == 0)
          {
            v1[OBJC_IVAR____UIProxyDismissInteraction_trackingViewDidBecomeVisible] = 1;
            [v14 center];
            v7 = &v1[OBJC_IVAR____UIProxyDismissInteraction_originalTrackingViewPosition];
            *v7 = v8;
            *(v7 + 1) = v9;
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              v10 = [v14 superview];
              if (!v10)
              {
                __break(1u);
                return;
              }

              v11 = v10;
              [v10 convertPoint:v5 toCoordinateSpace:{*v7, *(v7 + 1)}];
            }
          }

          [a1 setOriginalTrackingViewPosition_];
          v12 = [v1 delegate];
          if (v12)
          {
            [v12 dismissInteraction:v1 didIssueUpdate:a1];
            swift_unknownObjectRelease();
          }

          v13 = v5;
        }

        else
        {
          v13 = v14;
          v14 = v5;
        }
      }
    }
  }
}

void __swiftcall _UIProxyDismissInteraction.init()(_UIProxyDismissInteraction *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id _UIProxyDismissInteraction.init()()
{
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____UIProxyDismissInteraction_trackingViewDidBecomeVisible] = 0;
  v1 = &v0[OBJC_IVAR____UIProxyDismissInteraction_originalTrackingViewPosition];
  *v1 = 0;
  v1[1] = 0;
  v3.receiver = v0;
  v3.super_class = _UIProxyDismissInteraction;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t type metadata accessor for _UIProxyDismissInteraction()
{
  result = qword_1EA93B658;
  if (!qword_1EA93B658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93B658);
  }

  return result;
}

id sub_189086F00(double a1, double a2)
{
  result = [v2 isActive];
  if (result)
  {
    result = [v2 delegate];
    if (result)
    {
      [result dismissInteraction:v2 didCancelWithVelocity:a1 originalPosition:{a2, *&v2[OBJC_IVAR____UIProxyDismissInteraction_originalTrackingViewPosition], *&v2[OBJC_IVAR____UIProxyDismissInteraction_originalTrackingViewPosition + 8]}];
      result = swift_unknownObjectRelease();
    }

    v2[OBJC_IVAR____UIDismissInteraction__isActive] = 0;
  }

  return result;
}

id sub_189086FA0(float a1, float a2, float a3)
{
  v4 = v3;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0x69746C754D626772, 0xEC0000002D796C70);
  sub_18A4A7778();
  MEMORY[0x18CFE22D0](0x754D6168706C612ELL, 0xEF2D796C7069746CLL);
  sub_18A4A7778();
  MEMORY[0x18CFE22D0](0x6F436168706C612ELL, 0xEF2D74736172746ELL);
  sub_18A4A7778();
  v8 = sub_18A4A7258();

  v9 = swift_allocObject();
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v13[4] = sub_189088224;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_188BC2240;
  v13[3] = &block_descriptor_26_7;
  v10 = _Block_copy(v13);

  v11 = [v4 descriptorWithModificationID:v8 modifier:v10];
  _Block_release(v10);

  return v11;
}

id sub_1890871A4(float a1)
{
  v2 = v1;
  MEMORY[0x18CFE22D0](0x2D6E696147726465, 0xE800000000000000);
  sub_18A4A7778();
  v4 = sub_18A4A7258();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v9[4] = sub_1890881F4;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188BC2240;
  v9[3] = &block_descriptor_20_0;
  v6 = _Block_copy(v9);

  v7 = [v2 descriptorWithModificationID:v4 modifier:v6];
  _Block_release(v6);

  return v7;
}

id sub_1890872F0(double a1)
{
  v2 = v1;
  v4 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v4);

  v5 = sub_18A4A7258();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v10[4] = sub_1890881BC;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188BC2240;
  v10[3] = &block_descriptor_14_5;
  v7 = _Block_copy(v10);

  v8 = [v2 descriptorWithModificationID:v5 modifier:v7];
  _Block_release(v7);

  return v8;
}

void *sub_189087428(void *a1, unint64_t a2)
{
  v4 = [a1 layer];
  sub_188BA9C08(a2);
  v5 = sub_18A4A7518();

  [v4 setFilters_];

  v6 = a1;
  return a1;
}

void *sub_1890874B8(void *a1, double a2, double a3, float a4)
{
  CAColorMatrixMakeMultiplyColor();
  v17[2] = v22;
  v17[3] = v23;
  v18 = v24;
  v17[0] = v20;
  v17[1] = v21;
  v5 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v19 = vmul_f32(__PAIR64__(1.0 - a4, v25), (LODWORD(a4) | 0x3F00000000000000));
  v6 = [objc_opt_self() valueWithCAColorMatrix_];
  [v5 setValue:v6 forKey:*MEMORY[0x1E6979AC0]];

  v7 = [a1 layer];
  v8 = [v7 filters];

  if (v8)
  {
    v9 = sub_18A4A7548();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  *(&v21 + 1) = sub_188A34624(0, &qword_1ED48EE50);
  *&v20 = v5;
  v10 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_188E4CA1C(0, *(v9 + 16) + 1, 1, v9);
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_188E4CA1C((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 16) = v12 + 1;
  sub_188A55538(&v20, (v9 + 32 * v12 + 32));
  v13 = [a1 layer];
  v14 = sub_18A4A7518();

  [v13 setFilters_];

  return a1;
}

void *sub_189087720(void *a1, float a2)
{
  if (a2 <= 1.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = [a1 layer];
  [v4 setWantsExtendedDynamicRangeContent_];

  v5 = [a1 layer];
  *&v6 = v3;
  [v5 setGain_];

  v7 = [a1 layer];
  [v7 setAllowsLimitedHeadroom_];

  v8 = [a1 layer];
  [v8 setContentsMaximumDesiredEDR_];

  return a1;
}

id sub_189087810(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v36 = a3;
  v33[6] = a2;
  v33[5] = a1;
  v7 = [objc_allocWithZone(_UIVisualEffectDescriptor) init];
  _UICoreMaterialUpdateBlurEffectDescriptor(a4, a5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A6510E0;
  *(inited + 32) = sub_18A4A7288();
  v35 = inited + 32;
  *(inited + 40) = v9;
  *(inited + 48) = sub_18A4A7288();
  *(inited + 56) = v10;
  *(inited + 64) = sub_18A4A7288();
  *(inited + 72) = v11;
  *(inited + 80) = sub_18A4A7288();
  *(inited + 88) = v12;
  *(inited + 96) = sub_18A4A7288();
  *(inited + 104) = v13;
  v39 = inited;
  v37 = v7;
  v14 = [v7 filterEntries];
  sub_188A34624(0, &qword_1EA934358);
  v15 = sub_18A4A7548();

  v46 = MEMORY[0x1E69E7CC0];
  if (!(v15 >> 62))
  {
    v38 = v15 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_20:
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v38 = v15 & 0xFFFFFFFFFFFFFF8;
  v16 = sub_18A4A7F68();
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_3:
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  do
  {
    v34 = v18;
    v19 = v17;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = sub_188E4AFA8(v19, v15);
      }

      else
      {
        if (v19 >= *(v38 + 16))
        {
          goto LABEL_18;
        }

        v20 = *(v15 + 8 * v19 + 32);
      }

      v21 = v20;
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v22 = [v20 filterType];
      v23 = sub_18A4A7288();
      v25 = v24;

      aBlock = v23;
      v41 = v25;
      MEMORY[0x1EEE9AC00](v26);
      v33[2] = &aBlock;
      LOBYTE(v23) = sub_18919A34C(sub_188FB9B7C, v33, v39);

      if (v23)
      {
        break;
      }

      ++v19;
      if (v17 == v16)
      {
        v18 = v34;
        goto LABEL_21;
      }
    }

    sub_1891EB208(1);

    MEMORY[0x18CFE2450]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    v18 = v46;
  }

  while (v17 != v16);
LABEL_21:

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v18 >> 62)
  {
    if (sub_18A4A7F68())
    {
      goto LABEL_23;
    }
  }

  else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    v27 = sub_18A4A7258();
    v28 = swift_allocObject();
    *(v28 + 16) = v18;
    v44 = sub_189087CD4;
    v45 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_188BC2240;
    v43 = &block_descriptor_96;
    v29 = _Block_copy(&aBlock);

    v30 = [v36 descriptorWithModificationID:v27 modifier:v29];
    _Block_release(v29);

    return v30;
  }

  v32 = v36;

  return v32;
}

id sub_189087CDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v39 = a3;
  v36[6] = a2;
  v36[5] = a1;
  v9 = [objc_allocWithZone(_UIVisualEffectDescriptor) init];
  v10 = sub_18A4A7258();
  _UICoreMaterialUpdateBlurEffectDescriptorForUnsanitizedMTMaterial(v10, a6, a7, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A6510E0;
  *(inited + 32) = sub_18A4A7288();
  v38 = inited + 32;
  *(inited + 40) = v12;
  *(inited + 48) = sub_18A4A7288();
  *(inited + 56) = v13;
  *(inited + 64) = sub_18A4A7288();
  *(inited + 72) = v14;
  *(inited + 80) = sub_18A4A7288();
  *(inited + 88) = v15;
  *(inited + 96) = sub_18A4A7288();
  *(inited + 104) = v16;
  v42 = inited;
  v40 = v9;
  v17 = [v9 filterEntries];
  sub_188A34624(0, &qword_1EA934358);
  v18 = sub_18A4A7548();

  v49 = MEMORY[0x1E69E7CC0];
  if (!(v18 >> 62))
  {
    v41 = v18 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_20:
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v41 = v18 & 0xFFFFFFFFFFFFFF8;
  v19 = sub_18A4A7F68();
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_3:
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  do
  {
    v37 = v21;
    v22 = v20;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = sub_188E4AFA8(v22, v18);
      }

      else
      {
        if (v22 >= *(v41 + 16))
        {
          goto LABEL_18;
        }

        v23 = *(v18 + 8 * v22 + 32);
      }

      v24 = v23;
      v20 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v25 = [v23 filterType];
      v26 = sub_18A4A7288();
      v28 = v27;

      aBlock = v26;
      v44 = v28;
      MEMORY[0x1EEE9AC00](v29);
      v36[2] = &aBlock;
      LOBYTE(v26) = sub_18919A34C(sub_189088264, v36, v42);

      if (v26)
      {
        break;
      }

      ++v22;
      if (v20 == v19)
      {
        v21 = v37;
        goto LABEL_21;
      }
    }

    sub_1891EB208(1);

    MEMORY[0x18CFE2450]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    v21 = v49;
  }

  while (v20 != v19);
LABEL_21:

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v21 >> 62)
  {
    if (sub_18A4A7F68())
    {
      goto LABEL_23;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    v30 = sub_18A4A7258();
    v31 = swift_allocObject();
    *(v31 + 16) = v21;
    v47 = sub_18908828C;
    v48 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_188BC2240;
    v46 = &block_descriptor_8_1;
    v32 = _Block_copy(&aBlock);

    v33 = [v39 descriptorWithModificationID:v30 modifier:v32];
    _Block_release(v32);

    return v33;
  }

  v35 = v39;

  return v35;
}

void *sub_1890881BC(void *a1)
{
  [a1 setAlpha_];
  v3 = a1;
  return a1;
}

void *sub_1890881F4(void *a1)
{
  v2 = sub_189087720(a1, *(v1 + 16));
  v3 = v2;
  return v2;
}

void *sub_189088224(void *a1, double a2, double a3)
{
  LODWORD(a2) = *(v3 + 16);
  LODWORD(a3) = *(v3 + 20);
  v4 = sub_1890874B8(a1, a2, a3, *(v3 + 24));
  v5 = v4;
  return v4;
}

void (*UIViewController.contentUnavailableConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UIViewController.contentUnavailableConfiguration.getter(v3);
  return sub_189088308;
}

void sub_189088308(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_188A3F29C(*a1, v2 + 40, &qword_1EA9374C8);
    UIViewController.contentUnavailableConfiguration.setter(v2 + 40);
    sub_188A3F5FC(v2, &qword_1EA9374C8);
  }

  else
  {
    UIViewController.contentUnavailableConfiguration.setter(*a1);
  }

  free(v2);
}

__n128 UIViewController.contentUnavailableConfigurationState.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_188C36830([v1 _contentUnavailableConfigurationState], &v7);
  v3 = v9;
  v4 = v11;
  result = v8;
  v6 = v10;
  *a1 = v7;
  *(a1 + 8) = result;
  *(a1 + 24) = v3;
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;
  return result;
}

uint64_t UIContentUnavailableView.supports(_:)(uint64_t a1)
{
  sub_188A53994(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t UIContentUnavailableView.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 configuration];
  a1[3] = &type metadata for UIContentUnavailableConfiguration;
  a1[4] = &protocol witness table for UIContentUnavailableConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_18908854C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 configuration];
  a2[3] = &type metadata for UIContentUnavailableConfiguration;
  a2[4] = &protocol witness table for UIContentUnavailableConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1890885C4(uint64_t a1, void **a2)
{
  sub_188A53994(a1, v7);
  v3 = *a2;
  sub_188A53994(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
  if (swift_dynamicCast())
  {
    [v3 setConfiguration_];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

void (*UIContentUnavailableView.configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 128) = v2;
  v6 = [v2 configuration];
  v5[3] = &type metadata for UIContentUnavailableConfiguration;
  v5[4] = &protocol witness table for UIContentUnavailableConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *v5 = v7;
  return sub_18908872C;
}

void sub_18908872C(uint64_t *a1, char a2)
{
  v3 = *a1;
  sub_188A53994(*a1, *a1 + 40);
  if (a2)
  {
    sub_188A53994(v3 + 40, v3 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
    if (swift_dynamicCast())
    {
      [*(v3 + 128) setConfiguration_];
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v3 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
    if (swift_dynamicCast())
    {
      [*(v3 + 128) setConfiguration_];
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v3);

  free(v3);
}

uint64_t sub_189088838@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 configuration];
  a1[3] = &type metadata for UIContentUnavailableConfiguration;
  a1[4] = &protocol witness table for UIContentUnavailableConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1890888B0(uint64_t a1)
{
  sub_188A53994(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
  if (swift_dynamicCast())
  {
    [v1 setConfiguration_];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t (*sub_189088944(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = UIContentUnavailableView.configuration.modify(v2);
  return sub_188E36B6C;
}

uint64_t sub_1890889B4(uint64_t a1)
{
  sub_188A53994(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

id UIContentUnavailableConfiguration.ImageProperties.preferredSymbolConfiguration.getter()
{
  v1 = [*(*v0 + 16) preferredSymbolConfiguration];

  return v1;
}

void UIContentUnavailableConfiguration.ImageProperties.preferredSymbolConfiguration.setter(void *a1)
{
  sub_18908E214(a1);
}

void (*UIContentUnavailableConfiguration.ImageProperties.preferredSymbolConfiguration.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) preferredSymbolConfiguration];
  return sub_189088AFC;
}

id UIContentUnavailableConfiguration.ImageProperties.tintColor.getter()
{
  v1 = [*(*v0 + 16) tintColor];

  return v1;
}

void UIContentUnavailableConfiguration.ImageProperties.tintColor.setter(void *a1)
{
  sub_18908E304(a1);
}

void (*UIContentUnavailableConfiguration.ImageProperties.tintColor.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) tintColor];
  return sub_189088BE8;
}

id UIContentUnavailableConfiguration.ImageProperties.cornerRadius.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E770);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B670);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setCornerRadius_];
}

id (*UIContentUnavailableConfiguration.ImageProperties.cornerRadius.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) cornerRadius];
  *a1 = v3;
  return sub_189088D64;
}

id UIContentUnavailableConfiguration.ImageProperties.maximumSize.setter(double a1, double a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E770);
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B670);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 setMaximumSize_];
}

id (*UIContentUnavailableConfiguration.ImageProperties.maximumSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  [*(*v1 + 16) maximumSize];
  *a1 = v3;
  a1[1] = v4;
  return sub_189088EF8;
}

id UIContentUnavailableConfiguration.ImageProperties.accessibilityIgnoresInvertColors.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E770);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B670);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAccessibilityIgnoresInvertColors_];
}

id (*UIContentUnavailableConfiguration.ImageProperties.accessibilityIgnoresInvertColors.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) accessibilityIgnoresInvertColors];
  return sub_189089090;
}

id UIContentUnavailableConfiguration.TextProperties.font.getter()
{
  v1 = [*(*v0 + 16) font];

  return v1;
}

void UIContentUnavailableConfiguration.TextProperties.font.setter(void *a1)
{
  sub_1890893B8(a1, &selRef_setFont_);
}

void (*UIContentUnavailableConfiguration.TextProperties.font.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) font];
  return sub_189089194;
}

id UIContentUnavailableConfiguration.TextProperties.color.getter()
{
  v1 = [*(*v0 + 16) color];

  return v1;
}

void UIContentUnavailableConfiguration.TextProperties.color.setter(void *a1)
{
  sub_1890893B8(a1, &selRef_setColor_);
}

void (*UIContentUnavailableConfiguration.TextProperties.color.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) color];
  return sub_18908927C;
}

void sub_189089288(void **a1, char a2, SEL *a3)
{
  v4 = *a1;
  v6 = *a1;
  if (a2)
  {
    v5 = v4;
    sub_1890893B8(v5, a3);
  }

  else
  {
    sub_1890893B8(v4, a3);
  }
}

id (*UIContentUnavailableConfiguration.TextProperties.lineBreakMode.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) lineBreakMode];
  return sub_189089374;
}

id sub_1890893B8(uint64_t a1, SEL *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA92E780);
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B678);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a2];
}

id (*UIContentUnavailableConfiguration.TextProperties.numberOfLines.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) numberOfLines];
  return sub_189089508;
}

id UIContentUnavailableConfiguration.TextProperties.adjustsFontSizeToFitWidth.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA92E780);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B678);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAdjustsFontSizeToFitWidth_];
}

id (*UIContentUnavailableConfiguration.TextProperties.adjustsFontSizeToFitWidth.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) adjustsFontSizeToFitWidth];
  return sub_18908969C;
}

id UIContentUnavailableConfiguration.TextProperties.minimumScaleFactor.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA92E780);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B678);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setMinimumScaleFactor_];
}

id (*UIContentUnavailableConfiguration.TextProperties.minimumScaleFactor.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) minimumScaleFactor];
  *a1 = v3;
  return sub_189089828;
}

id UIContentUnavailableConfiguration.TextProperties.allowsDefaultTighteningForTruncation.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA92E780);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B678);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAllowsDefaultTighteningForTruncation_];
}

id (*UIContentUnavailableConfiguration.TextProperties.allowsDefaultTighteningForTruncation.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) allowsDefaultTighteningForTruncation];
  return sub_1890899C0;
}

id UIContentUnavailableConfiguration.ButtonProperties.primaryAction.getter()
{
  v1 = [*(*v0 + 16) primaryAction];

  return v1;
}

void UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter(void *a1)
{
  sub_18908E3F4(a1);
}

void (*UIContentUnavailableConfiguration.ButtonProperties.primaryAction.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) primaryAction];
  return sub_189089B18;
}

id UIContentUnavailableConfiguration.ButtonProperties.menu.getter()
{
  v1 = [*(*v0 + 16) menu];

  return v1;
}

void UIContentUnavailableConfiguration.ButtonProperties.menu.setter(void *a1)
{
  sub_18908E4E4(a1);
}

void (*UIContentUnavailableConfiguration.ButtonProperties.menu.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) menu];
  return sub_189089C04;
}

id UIContentUnavailableConfiguration.ButtonProperties.isEnabled.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA92F760);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B680);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setEnabled_];
}

id (*UIContentUnavailableConfiguration.ButtonProperties.isEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) isEnabled];
  return sub_189089D8C;
}

id UIContentUnavailableConfiguration.ButtonProperties.role.setter(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA92F760);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B680);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setRole_];
}

id (*UIContentUnavailableConfiguration.ButtonProperties.role.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) role];
  return sub_189089F10;
}

uint64_t UIContentUnavailableConfiguration.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t UIContentUnavailableConfiguration.updated(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  v7 = v4;
  v8 = [v7 updatedConfigurationForState_];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
  result = swift_allocObject();
  *(result + 16) = v8;
  *a2 = result;
  return result;
}

id UIContentUnavailableConfiguration.image.getter()
{
  v1 = [*(*v0 + 16) image];

  return v1;
}

void UIContentUnavailableConfiguration.image.setter(void *a1)
{
  sub_18908E5D4(a1);
}

void (*UIContentUnavailableConfiguration.image.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) image];
  return sub_18908A19C;
}

uint64_t UIContentUnavailableConfiguration.imageProperties.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) imageProperties];
  [v3 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA92E770);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B670);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a1 = result;
  return result;
}

void (*UIContentUnavailableConfiguration.imageProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = [*(*v1 + 16) imageProperties];
  [v5 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v4[7] = sub_188A34624(0, &qword_1EA92E770);
  swift_dynamicCast();
  v6 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B670);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v4[4] = v7;
  return sub_18908A3CC;
}

void (*UIContentUnavailableConfiguration.text.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [*(*v1 + 16) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18A4A7288();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_18908A470;
}

id UIContentUnavailableConfiguration.attributedText.getter()
{
  v1 = [*(*v0 + 16) attributedText];

  return v1;
}

void UIContentUnavailableConfiguration.attributedText.setter(void *a1)
{
  sub_18908E6C4(a1);
}

void (*UIContentUnavailableConfiguration.attributedText.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) attributedText];
  return sub_18908A550;
}

uint64_t UIContentUnavailableConfiguration.textProperties.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) textProperties];
  [v3 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &unk_1EA92E780);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B678);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a1 = result;
  return result;
}

void (*UIContentUnavailableConfiguration.textProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = [*(*v1 + 16) textProperties];
  [v5 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v4[7] = sub_188A34624(0, &unk_1EA92E780);
  swift_dynamicCast();
  v6 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B678);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v4[4] = v7;
  return sub_18908A780;
}

void sub_18908A798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *(a1 + 8);
  v7 = sub_188C05E6C();
  v8 = v7;
  if (v6)
  {
    v9 = sub_18A4A7258();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v7 *a5];
}

void (*UIContentUnavailableConfiguration.secondaryText.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [*(*v1 + 16) secondaryText];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18A4A7288();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_18908A8BC;
}

void sub_18908A8C8(uint64_t a1, char a2, SEL *a3)
{
  v4 = *(a1 + 8);
  if (a2)
  {

    v5 = sub_188C05E6C();
    v8 = v5;
    if (v4)
    {
      v6 = sub_18A4A7258();

      v5 = v8;
    }

    else
    {
      v6 = 0;
    }

    [v5 *a3];
  }

  else
  {
    v8 = sub_188C05E6C();
    v7 = v8;
    if (v4)
    {
      v6 = sub_18A4A7258();
    }

    else
    {
      v6 = 0;
    }

    [v8 *a3];
  }
}

id UIContentUnavailableConfiguration.secondaryAttributedText.getter()
{
  v1 = [*(*v0 + 16) secondaryAttributedText];

  return v1;
}

void UIContentUnavailableConfiguration.secondaryAttributedText.setter(void *a1)
{
  sub_18908E7B4(a1);
}

void (*UIContentUnavailableConfiguration.secondaryAttributedText.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) secondaryAttributedText];
  return sub_18908AA88;
}

void sub_18908AAA0(id *a1, char a2, void (*a3)(id))
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    a3(v6);

    v5 = v4;
  }

  else
  {
    a3(*a1);
    v5 = v6;
  }
}

uint64_t UIContentUnavailableConfiguration.secondaryTextProperties.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) secondaryTextProperties];
  [v3 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &unk_1EA92E780);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B678);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a1 = result;
  return result;
}

void (*UIContentUnavailableConfiguration.secondaryTextProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = [*(*v1 + 16) secondaryTextProperties];
  [v5 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v4[7] = sub_188A34624(0, &unk_1EA92E780);
  swift_dynamicCast();
  v6 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B678);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v4[4] = v7;
  return sub_18908AD38;
}

void (*UIContentUnavailableConfiguration.button.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = [*(*v1 + 16) button];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v4 + 32) = v6;
  return sub_18908AE34;
}

uint64_t UIContentUnavailableConfiguration.buttonProperties.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) buttonProperties];
  [v3 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &unk_1EA92F760);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B680);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a1 = result;
  return result;
}

void (*UIContentUnavailableConfiguration.buttonProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = [*(*v1 + 16) buttonProperties];
  [v5 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v4[7] = sub_188A34624(0, &unk_1EA92F760);
  swift_dynamicCast();
  v6 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B680);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v4[4] = v7;
  return sub_18908B068;
}

void (*UIContentUnavailableConfiguration.secondaryButton.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = [*(*v1 + 16) secondaryButton];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v4 + 32) = v6;
  return sub_18908B164;
}

void sub_18908B180(uint64_t a1, char a2, unint64_t *a3, uint64_t a4, SEL *a5)
{
  v7 = *a1;
  v8 = *(*a1 + 32);
  if (a2)
  {

    v9 = sub_188C05E6C();
    v10 = *(v8 + 16);
    v11 = v9;
    v12 = v10;

    [v12 copy];

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, a3);
    swift_dynamicCast();
    v13 = v7[5];
    [v11 *a5];
  }

  else
  {
    v14 = sub_188C05E6C();
    v15 = *(v8 + 16);
    v16 = v14;
    v17 = v15;

    [v17 copy];

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, a3);
    swift_dynamicCast();
    v18 = v7[5];
    [v16 *a5];
  }

  free(v7);
}

uint64_t UIContentUnavailableConfiguration.secondaryButtonProperties.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) secondaryButtonProperties];
  [v3 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &unk_1EA92F760);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B680);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a1 = result;
  return result;
}

void (*UIContentUnavailableConfiguration.secondaryButtonProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = [*(*v1 + 16) secondaryButtonProperties];
  [v5 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v4[7] = sub_188A34624(0, &unk_1EA92F760);
  swift_dynamicCast();
  v6 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B680);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v4[4] = v7;
  return sub_18908B544;
}

void sub_18908B550(uint64_t a1, char a2, SEL *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  if (a2)
  {

    v6 = sub_188C05E6C();
    v7 = *(v5 + 16);
    v8 = v6;
    v9 = v7;

    [v9 copy];

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v10 = v4[5];
    [v8 *a3];
  }

  else
  {
    v11 = sub_188C05E6C();
    v12 = *(v5 + 16);
    v13 = v11;
    v14 = v12;

    [v14 copy];

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v15 = v4[5];
    [v13 *a3];
  }

  free(v4);
}

id UIContentUnavailableConfiguration.alignment.getter@<X0>(char *a1@<X8>)
{
  result = [*(*v1 + 16) alignment];
  if (!result)
  {
    v4 = 1;
LABEL_5:
    *a1 = v4;
    return result;
  }

  if (result == 1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
  type metadata accessor for __UIContentUnavailableAlignment(0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
  MEMORY[0x18CFE22D0](0x6E656D6E67696C41, 0xE900000000000074);
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

id UIContentUnavailableConfiguration.alignment.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA93B688);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAlignment_];
}

uint64_t sub_18908B8EC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    if (result == 1)
    {
      *a2 = 0;
    }

    else
    {
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
      type metadata accessor for __UIContentUnavailableAlignment(0);
      sub_18A4A82D8();
      MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
      MEMORY[0x18CFE22D0](0x6E656D6E67696C41, 0xE900000000000074);
      result = sub_18A4A8398();
      __break(1u);
    }
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

id (*UIContentUnavailableConfiguration.alignment.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_18908B8EC([*(*v1 + 16) alignment], (a1 + 8));
  return sub_18908BA60;
}

id sub_18908BA60(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_188C05E6C();

  return [v2 setAlignment_];
}

id UIContentUnavailableConfiguration.axesPreservingSuperviewLayoutMargins.setter(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA93B688);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAxesPreservingSuperviewLayoutMargins_];
}

id (*UIContentUnavailableConfiguration.axesPreservingSuperviewLayoutMargins.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) axesPreservingSuperviewLayoutMargins];
  return sub_18908BC04;
}

id UIContentUnavailableConfiguration.directionalLayoutMargins.setter(double a1, double a2, double a3, double a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    v11 = *(v10 + 16);
  }

  else
  {
    [*(v10 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA93B688);
    swift_dynamicCast();
    v11 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
    v12 = swift_allocObject();
    *(v12 + 16) = v14;

    *v4 = v12;
  }

  return [v11 setDirectionalLayoutMargins_];
}

void (*UIContentUnavailableConfiguration.directionalLayoutMargins.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
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
  [*(*v1 + 16) directionalLayoutMargins];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return sub_18908BDE0;
}

void sub_18908BDE0(double **a1)
{
  v1 = *a1;
  UIContentUnavailableConfiguration.directionalLayoutMargins.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

id UIContentUnavailableConfiguration.imageToTextPadding.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA93B688);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setImageToTextPadding_];
}

id (*UIContentUnavailableConfiguration.imageToTextPadding.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) imageToTextPadding];
  *a1 = v3;
  return sub_18908BF88;
}

id UIContentUnavailableConfiguration.textToSecondaryTextPadding.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA93B688);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setTextToSecondaryTextPadding_];
}

id (*UIContentUnavailableConfiguration.textToSecondaryTextPadding.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) textToSecondaryTextPadding];
  *a1 = v3;
  return sub_18908C114;
}

id UIContentUnavailableConfiguration.textToButtonPadding.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA93B688);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setTextToButtonPadding_];
}

id (*UIContentUnavailableConfiguration.textToButtonPadding.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) textToButtonPadding];
  *a1 = v3;
  return sub_18908C2A0;
}

id UIContentUnavailableConfiguration.buttonToSecondaryButtonPadding.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA93B688);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setButtonToSecondaryButtonPadding_];
}

id (*UIContentUnavailableConfiguration.buttonToSecondaryButtonPadding.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) buttonToSecondaryButtonPadding];
  *a1 = v3;
  return sub_18908C42C;
}

uint64_t sub_18908C470@<X0>(SEL *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [*(*v3 + 16) *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = swift_allocObject();
  *(result + 16) = v6;
  *a3 = result;
  return result;
}

uint64_t sub_18908C4E0@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*(*a1 + 16) *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = swift_allocObject();
  *(result + 16) = v6;
  *a4 = result;
  return result;
}

void (*UIContentUnavailableConfiguration.background.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = [*(*v1 + 16) background];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v4 + 32) = v6;
  return sub_18908C604;
}

uint64_t sub_18908C664@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  v7 = v4;
  v8 = [v7 updatedConfigurationForState_];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
  result = swift_allocObject();
  *(result + 16) = v8;
  *a2 = result;
  return result;
}

uint64_t sub_18908C750()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  v10[1] = *v0;
  v10[0] = MEMORY[0x1E69E7CC0];
  v8 = sub_18A4A8908();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

void sub_18908C920(void **a1, uint64_t a2)
{
  v3 = *a1;
  v6 = *a2;
  *a2 = *a1;
  sub_188A34624(0, &qword_1ED490410);
  v4 = v3;
  if (sub_18A4A7C88())
  {
  }

  else
  {
    v5 = *(a2 + 32);

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void UIContentUnavailableConfigurationState.traitCollection.setter(void *a1)
{
  v2 = v1;
  v6 = *v2;
  *v2 = a1;
  sub_188A34624(0, &qword_1ED490410);
  v4 = a1;
  if (sub_18A4A7C88())
  {
  }

  else
  {
    v5 = *(v2 + 32);

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }
}

void (*UIContentUnavailableConfigurationState.traitCollection.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return sub_18908CAE8;
}

void sub_18908CAE8(uint64_t a1, char a2)
{
  v4 = *a1;
  **(a1 + 8) = *a1;
  sub_188A34624(0, &qword_1ED490410);
  v5 = v4;
  if (a2)
  {
    v6 = v5;
    v7 = sub_18A4A7C88();
    v8 = *(a1 + 16);
    if (v7)
    {
    }

    else
    {
      v12 = *(a1 + 8);
      v13 = *(v12 + 32);

      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 48) = 1;
    }

    v11 = *a1;
  }

  else
  {
    v16 = v5;
    v9 = sub_18A4A7C88();
    v10 = *(a1 + 16);
    if ((v9 & 1) == 0)
    {
      v14 = *(a1 + 8);
      v15 = *(v14 + 32);

      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = 1;
      return;
    }

    v11 = v16;
  }
}

uint64_t UIContentUnavailableConfigurationState.searchText.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t UIContentUnavailableConfigurationState.searchText.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 8);
  v5 = *(v2 + 16);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  if (!v5)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!a2 || (result == a1 ? (v6 = v5 == a2) : (v6 = 0), !v6 && (sub_18A4A86C8() & 1) == 0))
  {
LABEL_12:

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
    return result;
  }
}

void (*UIContentUnavailableConfigurationState.searchText.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 8);
  *(v3 + 24) = v5;
  v6 = *(v1 + 16);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_18908CD50;
}

void sub_18908CD50(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (a2)
  {

    UIContentUnavailableConfigurationState.searchText.setter(v3, v4);
LABEL_3:

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = v2[2];
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  if (v5)
  {
    if (v4)
    {
      v7 = v2[3] == v3 && v2[4] == v4;
      if (v7 || (sub_18A4A86C8() & 1) != 0)
      {
        goto LABEL_3;
      }
    }
  }

  else if (!v4)
  {
    goto LABEL_14;
  }

  v8 = v2[2];
  v9 = *(v8 + 32);

  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 1;
LABEL_14:

  free(v2);
}

double UIContentUnavailableConfigurationState.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  if (*(v4 + 16) && (v5 = sub_188B00858(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 40 * v5;

    sub_188BBA230(v7, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18908CEEC(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  sub_188A3F29C(a1, v9, &unk_1EA937A80);
  v5 = *(a2 + 32);
  v6 = v4;

  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  sub_188A3F29C(v9, v8, &unk_1EA937A80);
  sub_188F284A0(v8, v6);
  return sub_188A3F5FC(v9, &unk_1EA937A80);
}

uint64_t UIContentUnavailableConfigurationState.subscript.setter(uint64_t a1, void *a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  sub_188A3F29C(a1, v6, &unk_1EA937A80);
  sub_188F284A0(v6, a2);
  return sub_188A3F5FC(a1, &unk_1EA937A80);
}

void (*UIContentUnavailableConfigurationState.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x88uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 120) = a2;
  *(v5 + 128) = v2;
  v7 = *(v2 + 24);
  if (*(v7 + 16) && (v8 = sub_188B00858(a2), (v9 & 1) != 0))
  {
    sub_188BBA230(*(v7 + 56) + 40 * v8, v6);
  }

  else
  {
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  return sub_18908D0DC;
}

void sub_18908D0DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 120);
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_188A3F29C(*a1, v2 + 40, &unk_1EA937A80);

    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 1;
    sub_188A3F29C(v2 + 40, v2 + 80, &unk_1EA937A80);
    sub_188F284A0(v2 + 80, v4);
    sub_188A3F5FC(v2 + 40, &unk_1EA937A80);
  }

  else
  {

    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 1;
    sub_188A3F29C(v2, v2 + 40, &unk_1EA937A80);
    sub_188F284A0(v2 + 40, v4);
  }

  sub_188A3F5FC(v2, &unk_1EA937A80);

  free(v2);
}

uint64_t UIContentUnavailableConfigurationState.init(traitCollection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC8];
  *(a2 + 16) = 0;
  *(a2 + 24) = v2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t UIContentUnavailableConfigurationState.hash(into:)(__int128 *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_18A4A7C98();
  sub_18A4A88A8();
  if (v4)
  {
    sub_18A4A7348();
  }

  return sub_18908DFB8(a1, v3);
}

uint64_t UIContentUnavailableConfigurationState.hashValue.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_18A4A8888();
  sub_18A4A7C98();
  sub_18A4A88A8();
  if (v2)
  {
    sub_18A4A7348();
  }

  sub_18908DFB8(v4, v1);
  return sub_18A4A88E8();
}

uint64_t sub_18908D33C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC8];
  *(a2 + 16) = 0;
  *(a2 + 24) = v2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

void sub_18908D35C(void *a1)
{
  v2 = v1;
  v6 = *v2;
  *v2 = a1;
  sub_188A34624(0, &qword_1ED490410);
  v4 = a1;
  if (sub_18A4A7C88())
  {
  }

  else
  {
    v5 = *(v2 + 32);

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
  }
}

uint64_t (*sub_18908D420(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = UIContentUnavailableConfigurationState.traitCollection.modify(v2);
  return sub_188E25B30;
}

uint64_t sub_18908D494(uint64_t a1, void *a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  sub_188A3F29C(a1, v6, &unk_1EA937A80);
  sub_188F284A0(v6, a2);
  return sub_188A3F5FC(a1, &unk_1EA937A80);
}

uint64_t (*sub_18908D528(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = UIContentUnavailableConfigurationState.subscript.modify(v4, a2);
  return sub_188E36B6C;
}

uint64_t sub_18908D5A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_18A4A8888();
  sub_18A4A7C98();
  sub_18A4A88A8();
  if (v2)
  {
    sub_18A4A7348();
  }

  sub_18908DFB8(v4, v1);
  return sub_18A4A88E8();
}

uint64_t sub_18908D634(__int128 *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_18A4A7C98();
  sub_18A4A88A8();
  if (v4)
  {
    sub_18A4A7348();
  }

  return sub_18908DFB8(a1, v3);
}

uint64_t sub_18908D6BC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_18A4A8888();
  sub_18A4A7C98();
  sub_18A4A88A8();
  if (v2)
  {
    sub_18A4A7348();
  }

  sub_18908DFB8(v4, v1);
  return sub_18A4A88E8();
}

double static UIContentUnavailableConfigurationState._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  sub_18908E8A4(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  sub_188C36830(a1, &v7);
  v4 = v9;
  v5 = v11;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 24) = v4;
  result = *&v10;
  *(a2 + 32) = v10;
  *(a2 + 48) = v5;
  return result;
}

uint64_t static UIContentUnavailableConfigurationState._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  sub_18908E8A4(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  sub_188C36830(a1, &v7);
  v4 = v9;
  v5 = v11;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 24) = v4;
  *(a2 + 32) = v10;
  *(a2 + 48) = v5;
  return 1;
}

double sub_18908D890(void *a1, uint64_t a2)
{
  sub_18908E8A4(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  sub_188C36830(a1, &v7);
  v4 = v9;
  v5 = v11;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 24) = v4;
  result = *&v10;
  *(a2 + 32) = v10;
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_18908D904(void *a1, uint64_t a2)
{
  sub_18908E8A4(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  sub_188C36830(a1, &v7);
  v4 = v9;
  v5 = v11;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 24) = v4;
  *(a2 + 32) = v10;
  *(a2 + 48) = v5;
  return 1;
}

uint64_t sub_18908D984()
{
  sub_188C36CC8();
  v1 = v0;
  v2 = [v0 description];

  v3 = sub_18A4A7288();
  return v3;
}

uint64_t UIContentUnavailableConfigurationState.customMirror.getter()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = *(v0 + 8);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 48);
  v19 = *v0;
  v9 = v19;
  v20 = v8;
  v21 = v10;
  v22 = v11;
  v17 = *(v0 + 32);
  v23 = v17;
  v24 = v12;
  v18 = MEMORY[0x1E69E7CC0];
  v13 = sub_18A4A8908();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  v14 = v17;
  v15 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

uint64_t sub_18908DC20()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = *(v0 + 8);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 48);
  v19 = *v0;
  v9 = v19;
  v20 = v8;
  v21 = v10;
  v22 = v11;
  v17 = *(v0 + 32);
  v23 = v17;
  v24 = v12;
  v18 = MEMORY[0x1E69E7CC0];
  v13 = sub_18A4A8908();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  v14 = v17;
  v15 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

id UIContentUnavailableConfiguration.ButtonProperties.minimumSize.setter(double a1, double a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA92F760);
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B680);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 setMinimumSize_];
}

id (*UIContentUnavailableConfiguration.ButtonProperties.minimumSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  [*(*v1 + 16) minimumSize];
  *a1 = v3;
  a1[1] = v4;
  return sub_18908DF90;
}

uint64_t sub_18908DFB8(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 8 * v13);
      sub_188BBA230(*(a2 + 56) + 40 * v13, &v22);
      v20 = v23;
      v21 = v22;
      v15 = v24;
      v16 = v14;
      if (!v14)
      {
        break;
      }

      v17 = v16;
      v7 &= v7 - 1;
      v27[0] = v21;
      v27[1] = v20;
      v28 = v15;
      v18 = a1[3];
      v24 = a1[2];
      v25 = v18;
      v26 = *(a1 + 8);
      v19 = a1[1];
      v22 = *a1;
      v23 = v19;
      sub_18A4A7288();
      sub_18A4A7348();

      sub_18A4A8038();
      sub_188BBA15C(v27);
      result = sub_18A4A88E8();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x18CFE37E0](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL _s5UIKit38UIContentUnavailableConfigurationStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v9 = *(a1 + 8) == *(a2 + 8) && v4 == v7;
    if (!v9 && (sub_18A4A86C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_188A34624(0, &qword_1ED490230);
  v10 = v3;
  v11 = v6;
  v12 = sub_18A4A7C88();

  return (v12 & 1) != 0 && (sub_188C7A41C(v5, v8) & 1) != 0;
}

id sub_18908E214(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E770);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B670);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setPreferredSymbolConfiguration_];
}

id sub_18908E304(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E770);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B670);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setTintColor_];
}

id sub_18908E3F4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA92F760);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B680);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setPrimaryAction_];
}

id sub_18908E4E4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA92F760);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B680);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setMenu_];
}

id sub_18908E5D4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA93B688);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setImage_];
}

id sub_18908E6C4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA93B688);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAttributedText_];
}

id sub_18908E7B4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA93B688);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B660);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setSecondaryAttributedText_];
}

void sub_18908E8A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

unint64_t sub_18908E908()
{
  result = qword_1EA93B690;
  if (!qword_1EA93B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B690);
  }

  return result;
}

unint64_t sub_18908E960()
{
  result = qword_1EA93B698;
  if (!qword_1EA93B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B698);
  }

  return result;
}

unint64_t sub_18908E9B8()
{
  result = qword_1EA93B6A0;
  if (!qword_1EA93B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B6A0);
  }

  return result;
}

unint64_t sub_18908EA10()
{
  result = qword_1EA93B6A8;
  if (!qword_1EA93B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B6A8);
  }

  return result;
}

unint64_t sub_18908EA68()
{
  result = qword_1EA93B6B0;
  if (!qword_1EA93B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B6B0);
  }

  return result;
}

unint64_t sub_18908EAC0()
{
  result = qword_1EA93B6B8;
  if (!qword_1EA93B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B6B8);
  }

  return result;
}

void *keypath_get_46Tm@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr)@<X3>, void *a3@<X8>)
{
  v5[1] = *a1;
  result = a2(v5);
  *a3 = v5[0];
  return result;
}

uint64_t keypath_set_47Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;

  return a5(&v7);
}

char *sub_18908EC34(void *a1)
{
  v2 = OBJC_IVAR____TtC5UIKit26_UILatencyEmitterViewEntry__cachedLatencyView;
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit26_UILatencyEmitterViewEntry__cachedLatencyView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC5UIKit26_UILatencyEmitterViewEntry__cachedLatencyView);
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [v6 whiteColor];
    v8 = [v7 colorWithAlphaComponent_];

    v9 = [v6 whiteColor];
    [a1 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    LOBYTE(v27) = 2;
    *(&v27 + 1) = v8;
    *&v28 = 0x4000000000000000;
    *(&v28 + 1) = v9;
    *v29 = xmmword_18A657940;
    *&v29[16] = 0;
    v29[24] = 1;
    v30 = v27;
    v31 = v28;
    *v32 = xmmword_18A657940;
    *&v32[9] = *&v29[9];
    v18 = *(v1 + OBJC_IVAR____TtC5UIKit26_UILatencyEmitterViewEntry_duration + 8);
    v25 = *(v1 + OBJC_IVAR____TtC5UIKit26_UILatencyEmitterViewEntry_duration);
    v26 = v18;
    objc_allocWithZone(type metadata accessor for _UILatencyLightView());
    sub_188DF0BF8(&v27, v24);
    v19 = v1;
    v20 = _UILatencyLightView.init(frame:configuration:duration:)(&v30, &v25, v11, v13, v15, v17);
    [v20 setTag_];
    [a1 bounds];
    [v20 setFrame_];
    [v20 setAutoresizingMask_];
    [v20 setAlpha_];

    LOBYTE(v30) = 2;
    *(&v30 + 1) = v8;
    *&v31 = 0x4000000000000000;
    *(&v31 + 1) = v9;
    *v32 = xmmword_18A657940;
    *&v32[16] = 0;
    v32[24] = 1;
    sub_188F52F24(&v30);
    v21 = *(v19 + v2);
    *(v19 + v2) = v20;
    v4 = v20;

    v3 = 0;
  }

  v22 = v3;
  return v4;
}

void sub_18908EE78(void *a1)
{
  v2 = sub_18908EC34(a1);
  [a1 addSubview_];

  [a1 setCompositingMode_];
  v3 = [a1 layer];
  [v3 setWantsExtendedDynamicRangeContent_];

  v4 = [a1 layer];
  [v4 setAllowsLimitedHeadroom_];

  v5 = [a1 layer];
  [v5 setContentsMaximumDesiredEDR_];
}

id sub_18908F0C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UILatencyEmitterViewEntry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18908F128(void *a1)
{
  [a1 setCompositingMode_];
  v2 = [a1 layer];
  [v2 setWantsExtendedDynamicRangeContent_];

  v3 = [a1 layer];
  [v3 setAllowsLimitedHeadroom_];

  v4 = [a1 layer];
  [v4 setContentsMaximumDesiredEDR_];

  v5 = [a1 subviews];
  sub_188AF7A44();
  v6 = sub_18A4A7548();

  if (v6 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_188E49300(v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 removeFromSuperview];

      ++v8;
      if (v11 == i)
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

id sub_18908F2F8(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (a3 == 1)
  {
    v4 = 0;
  }

  v5 = &a1[OBJC_IVAR___UIViewLayoutRegion_storage];
  *v5 = v4;
  v5[1] = a4;
  v7.receiver = a1;
  v7.super_class = UIViewLayoutRegion;
  return objc_msgSendSuper2(&v7, sel_init);
}

void __swiftcall UIViewLayoutRegion.init()(UIViewLayoutRegion *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for UIViewLayoutRegion()
{
  result = qword_1EA93B6D8;
  if (!qword_1EA93B6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93B6D8);
  }

  return result;
}

BOOL sub_18908F6E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_189090578(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_18908F708@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 32);
    v5 = *(v1 + 8);
    v14 = v5;
    v15 = v3;
    v12 = *(v1 + 36);
    sub_188A3F29C(&v15, v13, &qword_1EA936508);
    sub_188A3F29C(&v14, v13, &qword_1EA936510);
  }

  else
  {
    sub_18A4A7288();
    v12 = 0;
    v3 = &unk_1EFAB83D8;
    v4 = 0xFFFFFFFFLL;
    v5 = &unk_1EFAB8420;
  }

  v6 = v3[2];
  v7 = v5[2];
  v8 = objc_allocWithZone(MEMORY[0x1E69793F8]);
  v9 = sub_18A4A7258();

  v10 = [v8 initWithVertexCount:v6 vertices:v3 + 4 faceCount:v7 faces:v5 + 4 depthNormalization:v9];

  [v10 setSubdivisionSteps_];
  [v10 setReplicatesEdges_];
  result = sub_188A34624(0, &unk_1EA92E7D0);
  a1[3] = result;
  *a1 = v10;
  return result;
}

void sub_18908F89C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_188A55598(a1, &v19);
  sub_188A34624(0, &qword_1EA92E860);
  swift_dynamicCast();
  v4 = v20;
  v5 = *v2;
  if (*v2)
  {
    v6 = *(v2 + 36);
    v7 = *(v2 + 8);
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[1];
    v11 = *(v5 + 16);

    if (v11 == [v4 vertexCount])
    {
      v12 = v7 | (v6 << 32);
      *(a2 + 24) = &type metadata for UIAnimatableMeshTransform.MeshTransform;
      v13 = swift_allocObject();
      *a2 = v13;

      *(v13 + 16) = v5;
      *(v13 + 24) = v10;
      *(v13 + 32) = v9;
      *(v13 + 40) = v8;
      *(v13 + 48) = v12;
      *(v13 + 52) = BYTE4(v12) & 1;
    }

    else
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  else
  {
    [v20 mutableCopy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA92E7D0);
    swift_dynamicCast();
    v14 = v20;
    v15 = [v20 vertexCount];
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v16 = v15;
      if (v15)
      {
        v17 = 0;
        do
        {
          v18 = v17 + 1;
          [v14 replaceVertexAtIndex:0 withVertex:{0, 0, 0, 0}];
          v17 = v18;
        }

        while (v16 != v18);
      }

      [v14 copy];
      sub_18A4A7DE8();

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_18908FABC(uint64_t a1)
{
  if (!*v1 || !*a1)
  {
    v8 = 1;
    return v8 & 1;
  }

  if (*(*v1 + 16) != *(*a1 + 16) || *(*(v1 + 8) + 16) != *(*(a1 + 8) + 16))
  {
    goto LABEL_8;
  }

  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 36);
  v6 = *(a1 + 32);
  v7 = *(a1 + 36);
  if (v3 == *(a1 + 16) && v2 == *(a1 + 24))
  {
    if (v4 != v6)
    {
LABEL_8:
      v8 = 0;
      return v8 & 1;
    }

LABEL_13:
    v8 = v5 ^ v7 ^ 1;
    return v8 & 1;
  }

  v10 = sub_18A4A86C8();
  v8 = 0;
  if ((v10 & 1) != 0 && v4 == v6)
  {
    goto LABEL_13;
  }

  return v8 & 1;
}

void sub_18908FB80(double a1)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_189212B38(v2);
    }

    if (v3 > *(v2 + 2))
    {
      __break(1u);
    }

    else
    {
      v4 = (v2 + 48);
      do
      {
        v5 = vmulq_n_f64(*v4, a1);
        v4[-1] = vmulq_n_f64(v4[-1], a1);
        *v4 = v5;
        v4 = (v4 + 40);
        --v3;
      }

      while (v3);
      *v1 = v2;
    }
  }
}

uint64_t sub_18908FC10(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *result;
  v15 = v4;
  v5 = *(v4 + 16);
  if (v3 == v5)
  {
    if (v3)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_189212B38(v2);
        v2 = result;
      }

      if (v3 > *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v6 = (v4 + 48);
        v7 = (v2 + 48);
        do
        {
          v8 = vmulq_f64(*v6, *v7);
          v7[-1] = vmulq_f64(v6[-1], v7[-1]);
          *v7 = v8;
          v6 = (v6 + 40);
          v7 = (v7 + 40);
          --v3;
        }

        while (v3);
        *v1 = v2;
      }
    }
  }

  else if (v5 >= v3)
  {
    v9 = result;

    v14 = *(v9 + 8);
    v11 = *v9;
    v13 = *(v9 + 16);
    v10 = v13;
    *v1 = v11;
    *(v1 + 16) = v10;
    *(v1 + 29) = *(v9 + 29);
    sub_188A3F29C(&v15, v12, &qword_1EA936508);
    sub_188A3F29C(&v14, v12, &qword_1EA936510);
    return sub_189090BAC(&v13, v12);
  }

  return result;
}