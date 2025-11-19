void sub_18910005C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_widthFollowsPreferredContentSizeWhenEdgeAttached);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_widthFollowsPreferredContentSizeWhenEdgeAttached) = a1;
  if (v2 != (a1 & 1))
  {
    v3 = v1;
    if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 25))
    {
      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 25) = 0;
      sub_1890FCCC4();
      sub_1890FE48C();
      sub_1890FE854();
      sub_1890FBE4C();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        sub_1890FE854();
      }

      v6 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v6)
      {
        v7 = v6;
        sub_1890FE48C();
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          [v8 _sheetLayoutInfoDidInvalidateOutput_];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      sub_1890FC58C();
    }
  }
}

void sub_18910034C(_BYTE *a1, uint64_t a2, int a3, void *a4)
{
  v5 = a1[*a4];
  a1[*a4] = a3;
  if (v5 != a3)
  {
    v6 = a1;
    sub_1890FDB10();
  }
}

void sub_18910048C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDismissible);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDismissible) = a1;
  if (v2 != (a1 & 1) && (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 19) & 1) != 0)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 19) = 0;
    sub_1890FEBD0();
    sub_1890FC0A4();

    sub_1890FC154();
  }
}

void sub_189100534(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

LABEL_5:
    sub_1890FDF88();
    return;
  }

  if (v3)
  {
    goto LABEL_5;
  }
}

uint64_t sub_189100594(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *&a1[*a4];
  *&a1[*a4] = a3;
  swift_unknownObjectRetain_n();
  v7 = a1;
  sub_189100534(v6, a4);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_189100610(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_detents;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_detents);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_detents) = a1;

  v5 = sub_188C6F748(v4, a1);

  if (v5)
  {
    return;
  }

  v6 = *(v1 + v3);
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (!sub_18A4A7F68())
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_1890FC154();
  v7 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_latestUserChosenOffset);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_latestUserChosenOffset) = 0x7FEFFFFFFFFFFFFFLL;
  if (v7 != 1.79769313e308)
  {

    sub_1890FC154();
  }
}

void sub_18910082C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_selectedDetentIdentifier);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_selectedDetentIdentifier) = a1;
  if (!v2)
  {
    if (!a1)
    {
      return;
    }

    v13 = a1;
    v14 = 0;
    v11 = a1;
    goto LABEL_11;
  }

  v13 = a1;
  v14 = v2;
  if (!a1)
  {
LABEL_11:
    sub_1890FC154();
    v12 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_latestUserChosenOffset);
    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_latestUserChosenOffset) = 0x7FEFFFFFFFFFFFFFLL;
    if (v12 != 1.79769313e308)
    {
      sub_1890FC154();
    }

    v10 = v13;
    goto LABEL_14;
  }

  v3 = sub_18A4A7288();
  v5 = v4;
  if (v3 != sub_18A4A7288() || v5 != v6)
  {
    v8 = sub_18A4A86C8();
    v9 = v13;

    if (v8)
    {

      v10 = v14;
LABEL_14:

      return;
    }

    goto LABEL_11;
  }
}

void sub_189100A80(void *a1, void *a2)
{
  v3 = *(v2 + *a2);
  if (a1)
  {
    if (v3)
    {
      sub_188A34624(0, &qword_1EA930A70);
      v5 = v3;
      v6 = a1;
      v7 = sub_18A4A7C88();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  if (*(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 36) == 1)
  {
    *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 36) = 0;

    sub_1890FC154();
  }
}

void sub_189100B74(char *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *&a1[*a4];
  *&a1[*a4] = a3;
  v6 = a3;
  v7 = a1;
  sub_189100A80(v8, a4);
}

uint64_t sub_189100C18(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sheetID);
  result = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sheetID);
  v6 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sheetID + 8);
  *v4 = a1;
  v4[1] = a2;
  if (v6)
  {
    if (a2)
    {
      v7 = result == a1 && v6 == a2;
      if (v7 || (sub_18A4A86C8() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  sub_1890FE08C();
LABEL_11:
}

id sub_189100CAC(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_18A4A7258();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_189100D30(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_18A4A7288();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_189100DB8(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hiddenAncestorSheetID);
  result = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hiddenAncestorSheetID);
  v6 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hiddenAncestorSheetID + 8);
  *v4 = a1;
  v4[1] = a2;
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || (result == a1 ? (v7 = v6 == a2) : (v7 = 0), !v7 && (sub_18A4A86C8() & 1) == 0))
  {
LABEL_10:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_1890FE118();
    }
  }
}

uint64_t sub_189100EC0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shouldDismissWhenTappedOutside);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shouldDismissWhenTappedOutside) = result;
  if (v2 != (result & 1) && (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 63) & 1) != 0)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 63) = 0;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result _sheetLayoutInfoDidInvalidateOutput_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_189100FC4(uint64_t result, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = result;
  if (v3 != (result & 1) && (*(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 60) & 1) != 0)
  {
    *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 60) = 0;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result _sheetLayoutInfoDidInvalidateOutput_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1891010BC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_prefersScrollingResizesWhenDetentDirectionIsDown);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_prefersScrollingResizesWhenDetentDirectionIsDown) = result;
  if (v2 != (result & 1) && (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 61) & 1) != 0)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 61) = 0;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result _sheetLayoutInfoDidInvalidateOutput_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_189101254(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsGrabber);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsGrabber) = result;
  if (v2 != (result & 1) && (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 66) & 1) != 0)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 66) = 0;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result _sheetLayoutInfoDidInvalidateOutput_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_189101438(uint64_t result, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = result;
  if (v3 != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result _sheetLayoutInfoDidInvalidateOutput_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_189101518(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDragging);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDragging) = a1;
  if (v2 != (a1 & 1))
  {
    sub_1890FE1A4();
    if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 63))
    {
      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 63) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1891016E4(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_preferredShadowOpacity);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_preferredShadowOpacity) = a1;
  if (v2 != a1 && (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 58) & 1) != 0)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 58) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void *sub_1891017EC(void *result, double a2)
{
  v3 = *(v2 + *result);
  *(v2 + *result) = a2;
  if (v3 != a2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result _sheetLayoutInfoDidInvalidateOutput_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_189101894(char *a1, double a2, uint64_t a3, void *a4, void (*a5)(void))
{
  v6 = *&a1[*a4];
  *&a1[*a4] = a2;
  if (v6 != a2)
  {
    v8 = a1;
    a5();
  }
}

void sub_18910196C(char *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7, void (*a8)(void))
{
  v13 = &a1[*a7];
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v13[3];
  *v13 = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v18 = a1;
  v20.origin.x = v14;
  v20.origin.y = v15;
  v20.size.width = v16;
  v20.size.height = v17;
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  if (!CGRectEqualToRect(v20, v21))
  {
    a8();
  }
}

void sub_189101AA0(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_backgroundEffect);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_backgroundEffect) = a1;
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v7 = 0;
    a1 = a1;
    goto LABEL_7;
  }

  v7 = v3;
  if (!a1 || (sub_188A34624(0, &unk_1EA931120), a1 = a1, v4 = v7, v5 = sub_18A4A7C88(), v4, (v5 & 1) == 0))
  {
LABEL_7:
    sub_1890FDF88();

    v6 = v7;
    goto LABEL_8;
  }

  v6 = v4;
LABEL_8:
}

void sub_189101D6C(void *a1)
{
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v2 = swift_unknownObjectWeakLoadStrong();
  v3 = v2;
  if (Strong)
  {
    if (v2)
    {
      v4 = Strong;
      v5 = sub_18A4A7C88();

      if (v5)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  sub_1890FE5CC();
  v4 = Strong;
LABEL_8:

LABEL_9:
}

void sub_189101E88(id a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child) = a1;
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v7 = 0;
    a1 = a1;
    goto LABEL_7;
  }

  v7 = v3;
  if (!a1 || (a1 = a1, v4 = v7, v5 = sub_18A4A7C88(), v4, (v5 & 1) == 0))
  {
LABEL_7:
    sub_1890FE684();

    v6 = v7;
    goto LABEL_8;
  }

  v6 = v4;
LABEL_8:
}

void sub_189101F98(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    swift_getObjectType();
    v6 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    v6 = 0;
  }

  swift_unknownObjectRetain_n();
  v7 = a1;
  a4(v6);
  swift_unknownObjectRelease();
}

void sub_1891020A8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_disableSolariumInsets);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_disableSolariumInsets) = a1;
  if (v2 != (a1 & 1))
  {
    sub_1890FC58C();
    if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 50))
    {
      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 50) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_1891022D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  if (*v4)
  {
    v5 = v4[1];
    v8[4] = *v4;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_188A4A8F0;
    v8[3] = a4;
    v6 = _Block_copy(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1891024B0()
{
  v1 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented) == 1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
    }

    else
    {
      v2 = 0;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v2 & 1;
    *(v0 + v1) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented);
}

uint64_t sub_189102510()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 1) & 1) == 0)
  {
    v2 = 1;
    if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isTransitioning) & 1) == 0)
    {
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v3)
      {
        v4 = v3;
        v2 = sub_189102510();
      }

      else
      {
        v2 = 0;
      }
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isAnyDescendantTransitioning) = v2 & 1;
    *(v1 + 1) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isAnyDescendantTransitioning);
}

uint64_t sub_1891025BC()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 4))
  {
    return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isHidingUnderneathDescendant);
  }

  v17 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isHidingUnderneathDescendant;
  v18 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isHidingUnderneathDescendant) = 0;
  v19 = sub_18910F8A4();

  v1 = sub_18910F9D8();
  v2 = v1;
  v3 = v1 + 56;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 56);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_11:
    v11 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v6)))));
    v12 = v11[1];
    v6 &= v6 - 1;
    v20[0] = *v11;
    v20[1] = v12;
    MEMORY[0x1EEE9AC00](result);
    v16[2] = v20;

    v13 = sub_18919A34C(sub_188FB9B7C, v16, v19);

    if (v13)
    {
      v14 = 1;
LABEL_14:

      v15 = v18;
      *(v0 + v17) = v14;
      *(v15 + 4) = 1;
      return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isHidingUnderneathDescendant);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_189102778()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 26) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v2)
    {
      v3 = v2;
      v4 = sub_18910377C();
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v18.origin.x = sub_18910377C();
      v18.origin.y = v11;
      v18.size.width = v12;
      v18.size.height = v13;
      v14 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics);
      v17.origin.x = v4;
      v17.origin.y = v6;
      v17.size.width = v8;
      v17.size.height = v10;
      if (CGRectEqualToRect(v17, v18))
      {
        v15 = 1;
      }

      else
      {
        v15 = [v14 alwaysStacksWithChild];
      }

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___stacksWithChild) = v15;
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___stacksWithChild) = 0;
    }

    *(v1 + 26) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___stacksWithChild);
}

void sub_189102880()
{
  v2 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 12) & 1) == 0)
  {
    v3 = sub_18910377C();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = sub_189103BFC();
    v11 = sub_1891050DC();
    v12 = v3;
    v13 = v5;
    v14 = v7;
    v15 = v9;
    if (v11)
    {
      MaxY = CGRectGetMaxY(*&v12);
    }

    else
    {
      MaxY = CGRectGetMinY(*&v12);
    }

    v17 = MaxY;
    [*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) displayScale];
    v19 = v18;
    v20 = v10 & 0xC000000000000001;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v21 = sub_188E4B080(0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_24;
      }

      v21 = *(v10 + 32);
    }

    v22 = v21;
    v1 = &selRef__updateSingleLayerNoMaskFromLayerStack;
    [v21 _value];
    v24 = v23;

    UIRoundToScale(v24, v19);
    v26 = v25;
    UIRoundToScale(v17, v19);
    if (v26 > v27)
    {
      if ((v2[22] & 1) == 0)
      {
        v28 = sub_189105CC0();
        v29 = 1;
        if ((v28 & 1) == 0)
        {
          v29 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen);
        }

        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) = v29;
        v2[22] = 1;
      }

      if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) & 1) == 0)
      {

        v31 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentFullHeight);
        *v31 = 0;
        v31[1] = 0;
LABEL_40:
        v2[12] = 1;
        return;
      }
    }

    if (!(v10 >> 62))
    {
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
      {
LABEL_16:
        if (v20)
        {
          v30 = sub_188E4B080(1uLL, v10);
        }

        else
        {
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            __break(1u);
            goto LABEL_43;
          }

          v30 = *(v10 + 40);
        }

        v32 = v30;
        [v30 v1[466]];
        v34 = v33;

LABEL_28:
        sub_18910518C();
        v43 = _UIUnlerp(v42, v34, v17);
        v44 = _UIClamp_2(v43);
        sub_189103BFC();

        if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___numberOfActiveNonDismissDetents) < 2)
        {

          v46 = 1.0;
LABEL_39:
          v56 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentFullHeight);
          *v56 = v44;
          v56[1] = v46;
          goto LABEL_40;
        }

        if (v20)
        {
          v45 = sub_188E4B080(1uLL, v10);
          goto LABEL_34;
        }

        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
        {
          v45 = *(v10 + 40);
LABEL_34:
          v47 = v45;

          [v47 v1[466]];
          v49 = v48;

          UIRoundToScale(v49, v19);
          v51 = v50;
          UIRoundToScale(v17, v19);
          v53 = v52;
          sub_18910518C();
          if (v51 == v53)
          {
            v46 = 0.0;
            if (v54 <= v17)
            {
              v46 = 1.0;
            }
          }

          else
          {
            v55 = _UIUnlerp(v54, v49, v17);
            v46 = _UIClamp_2(v55);
          }

          goto LABEL_39;
        }

LABEL_43:
        __break(1u);
        return;
      }

LABEL_25:
      if ((v2[29] & 1) == 0)
      {
        v57 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
        v58 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
        v35 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
        v36 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
        v37 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame);
        v38 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 8);
        v39 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 16);
        v40 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 24);
        v41 = sub_1891050DC();
        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset) = _UISheetDismissOffset(v41 & 1, v58, v57, v35, v36, v37, v38, v39, v40);
        v2[29] = 1;
      }

      v34 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset);
      goto LABEL_28;
    }

LABEL_24:
    if (sub_18A4A7F68() >= 2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }
}

double sub_189102C14()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 6) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
    rect = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
    v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
    v5 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView;
    v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView);
    if (v6)
    {
      [v6 _rectTuckedAgainstBoundingPathEdge_withSize_cornerRadii_minimumPadding_];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
    }

    else
    {
      v8 = *MEMORY[0x1E695F050];
      v10 = *(MEMORY[0x1E695F050] + 8);
      v12 = *(MEMORY[0x1E695F050] + 16);
      v14 = *(MEMORY[0x1E695F050] + 24);
    }

    v32.origin.x = v8;
    v32.origin.y = v10;
    v32.size.width = v12;
    v32.size.height = v14;
    v15 = 0.0;
    if (!CGRectIsNull(v32))
    {
      v33.origin.x = v8;
      v33.origin.y = v10;
      v33.size.width = v12;
      v33.size.height = v14;
      MinX = CGRectGetMinX(v33);
      v34.origin.x = v2;
      v34.origin.y = rect;
      v34.size.width = v3;
      v34.size.height = v4;
      v15 = MinX - CGRectGetMinX(v34);
    }

    v17 = *(v0 + v5);
    if (v17)
    {
      [v17 _rectTuckedAgainstBoundingPathEdge_withSize_cornerRadii_minimumPadding_];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
    }

    else
    {
      v19 = *MEMORY[0x1E695F050];
      v21 = *(MEMORY[0x1E695F050] + 8);
      v23 = *(MEMORY[0x1E695F050] + 16);
      v25 = *(MEMORY[0x1E695F050] + 24);
    }

    v35.origin.x = v19;
    v35.origin.y = v21;
    v35.size.width = v23;
    v35.size.height = v25;
    IsNull = CGRectIsNull(v35);
    v27 = 0.0;
    if (!IsNull)
    {
      v36.origin.x = v2;
      v36.origin.y = rect;
      v36.size.width = v3;
      v36.size.height = v4;
      MaxX = CGRectGetMaxX(v36);
      v37.origin.x = v19;
      v37.origin.y = v21;
      v37.size.width = v23;
      v37.size.height = v25;
      v27 = MaxX - CGRectGetMaxX(v37);
    }

    v29 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___unsafeInsets;
    *v29 = 0;
    *(v29 + 8) = v15;
    *(v29 + 16) = 0;
    *(v29 + 24) = v27;
    *(v1 + 6) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___unsafeInsets);
}

double sub_189102E04()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7) & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 8);
    v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 16);
    v43 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 24);
    v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_marginInCompactHeight);
    v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_marginInRegularWidthRegularHeight);
    v7 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_tucksIntoUnsafeAreaInCompactHeight);
    v8 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection);
    v9 = sub_189102C14();
    v11 = v10;
    v13 = v12;
    v14 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_allowsAsymmetricVerticalMargins);
    v15 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics);
    v16 = [v8 horizontalSizeClass];
    v17 = [v8 verticalSizeClass];
    [v15 minimumSidePadding];
    v19 = v18;
    if (v3 > v4)
    {
      v20 = v3;
    }

    else
    {
      v20 = v4;
    }

    if (!v14)
    {
      v4 = v20;
      v3 = v20;
    }

    if (v17 == 1)
    {
      if (v2 > 0.0)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {

        v22 = 23.0;
        if (v13 == 0.0)
        {
          v23 = 23.0;
        }

        else
        {
          v23 = v43;
        }

        if (v11 == 0.0)
        {
          v24 = 23.0;
        }

        else
        {
          v24 = v2;
        }

        v25 = 23.0;
        goto LABEL_39;
      }

      [v15 topOffsetInCompactHeight];
      v34 = v33;

      if (v5 == 1.79769313e308)
      {
        v35 = v19;
      }

      else
      {
        v35 = v5;
      }

      if (v5 == 1.79769313e308)
      {
        v36 = v34;
      }

      else
      {
        v36 = v5;
      }
    }

    else
    {
      if (v16 != 2 || v17 != 2)
      {
        v27 = objc_opt_self();
        v28 = [v27 currentDevice];
        v29 = [v28 userInterfaceIdiom];

        if (v29 || (v41 = [v27 _hasHomeButton], v16 != 1) || v41)
        {
          [v15 topOffset];
          v31 = v30;

          v32 = v31 + v31;
        }

        else
        {
          [v15 topOffset];
          v32 = v42;
        }

        v22 = v3 + v32;
        v24 = v2 + v19;
        v25 = v4 + v32;
        v23 = v43 + v19;
        goto LABEL_39;
      }

      [v15 topOffset];
      v38 = v37;

      if (v6 == 1.79769313e308)
      {
        v35 = v19;
      }

      else
      {
        v35 = v6;
      }

      if (v6 == 1.79769313e308)
      {
        v36 = v38 + v38;
      }

      else
      {
        v36 = v6;
      }
    }

    v22 = v3 + v36;
    v24 = v2 + v35;
    v25 = v4 + v36;
    v23 = v43 + v35;
LABEL_39:
    v39 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___marginsWhenFloating);
    *v39 = v22;
    v39[1] = v24;
    v39[2] = v25;
    v39[3] = v23;
    *(v1 + 7) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___marginsWhenFloating);
}

double sub_1891030D8()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 8) & 1) == 0)
  {
    if ((*(v1 + 17) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
      *(v1 + 17) = 1;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) != 1)
    {
      v21 = sub_189102E04();
      v2 = v23;
      v4 = v24;
      goto LABEL_47;
    }

    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 8);
    v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 16);
    v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 24);
    v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_marginInCompactHeight);
    v7 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_marginInRegularWidthRegularHeight);
    v8 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_tucksIntoUnsafeAreaInCompactHeight);
    v9 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection);
    v10 = sub_189102C14();
    v12 = v11;
    v14 = v13;
    v15 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_allowsAsymmetricVerticalMargins);
    v16 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics);
    v17 = [v9 horizontalSizeClass];
    v18 = [v9 verticalSizeClass];
    if (v15)
    {
      if (v18 == 1)
      {
        if (v2 > 0.0)
        {
          v19 = v8;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {

          v20 = 23.0;
          if (v12 != 0.0)
          {
            if (v14 != 0.0)
            {
              v21 = 23.0;
              v22 = 23.0;
LABEL_47:
              v39 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___margins);
              *v39 = v21;
              v39[1] = v2;
              v39[2] = v22;
              v39[3] = v4;
              *(v1 + 8) = 1;
              return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___margins);
            }

LABEL_25:
            v21 = 23.0;
            v22 = 23.0;
            v4 = 23.0;
            goto LABEL_47;
          }

LABEL_23:
          if (v14 != 0.0)
          {
            v21 = 23.0;
            v2 = v20;
            v22 = 23.0;
            goto LABEL_47;
          }

          v2 = v20;
          goto LABEL_25;
        }

LABEL_33:
        [v16 topOffsetInCompactHeight];
        v35 = v34;

        if (v6 == 1.79769313e308)
        {
          v33 = 0.0;
        }

        else
        {
          v33 = v6;
        }

        if (v6 == 1.79769313e308)
        {
          v36 = v35;
        }

        else
        {
          v36 = v6;
        }

        goto LABEL_45;
      }
    }

    else if (v18 == 1)
    {
      if (v2 > 0.0)
      {
        v25 = v8;
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {

        if (v12 == 0.0)
        {
          v20 = 23.0;
        }

        else
        {
          v20 = v2;
        }

        goto LABEL_23;
      }

      goto LABEL_33;
    }

    if (v17 != 2 || v18 != 2)
    {
      v27 = objc_opt_self();
      v28 = [v27 currentDevice];
      v29 = [v28 userInterfaceIdiom];

      if (v29 || (v41 = [v27 _hasHomeButton], v17 != 1) || v41)
      {
        [v16 topOffset];
        v31 = v30;

        v32 = v31 + v31;
      }

      else
      {
        [v16 topOffset];
        v32 = v42;
      }

      v21 = v3 + v32;
      v33 = 0.0;
      v2 = v2 + 0.0;
      v22 = v5 + v32;
      goto LABEL_46;
    }

    [v16 topOffset];
    v38 = v37;

    if (v7 == 1.79769313e308)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v7;
    }

    if (v7 == 1.79769313e308)
    {
      v36 = v38 + v38;
    }

    else
    {
      v36 = v7;
    }

LABEL_45:
    v21 = v3 + v36;
    v2 = v2 + v33;
    v22 = v5 + v36;
LABEL_46:
    v4 = v4 + v33;
    goto LABEL_47;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___margins);
}

void sub_18910340C()
{
  v0 = objc_opt_self();
  v1 = @"UICTFontTextStyleBody";
  v2 = [v0 defaultFontForTextStyle_];

  v3 = __UIViewReadableWidthForFont(v2);
  qword_1EA9300B8 = *&v3;
}

void sub_189103490()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 11) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_mode);
    if (v2 == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
        v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
        v7 = swift_unknownObjectWeakLoadStrong();
        v8 = _UISheetContentContainerSize(v7, v4, v5, v6);
        v10 = v9;

        [v4 _formSheetSizeForWindowWithSize_screenSize_];
        v12 = v11;
        v14 = v13;

        v15 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___preferredSize);
        *v15 = v12;
        v15[1] = v14;
      }

      else
      {
        v28 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___preferredSize);
        *v28 = 0;
        v28[1] = 0;
      }
    }

    else
    {
      if (v2)
      {
        sub_18A4A80E8();
        MEMORY[0x18CFE22D0](0xD000000000000013, 0x800000018A6AA5C0);
        type metadata accessor for _UISheetMode(0);
        sub_18A4A82D8();
        sub_18A4A8398();
        __break(1u);
        return;
      }

      v16 = objc_opt_self();
      v17 = swift_unknownObjectWeakLoadStrong();
      v18 = [v17 view];

      if (qword_1EA9300B0 != -1)
      {
        swift_once();
      }

      [v16 _boundsWidthWithMinimumHorizontalContentMarginForView_preservingContentWidth_];
      v20 = v19;

      v21 = __UIViewReadableWidthForBodyFont();
      v22 = swift_unknownObjectWeakLoadStrong();
      v23 = [v22 view];

      [v16 _boundsWidthWithMinimumHorizontalContentMarginForView_preservingContentWidth_];
      v25 = v24;

      if (v20 <= v25)
      {
        v20 = v25;
      }

      Height = CGRectGetHeight(*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds));
      v27 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___preferredSize);
      *v27 = v20;
      v27[1] = Height;
    }

    *(v1 + 11) = 1;
  }
}

double sub_18910377C()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 25))
  {
    return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___stackAlignmentFrame);
  }

  v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
  v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
  v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
  v65 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_additionalMinimumTopInset);
  v6 = sub_1891030D8();
  v62 = v7;
  v64 = v6;
  v66 = v8;
  v61 = v9;
  v10 = sub_1891050DC();
  v11 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame);
  v12 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame + 8);
  v13 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame + 16);
  v67.origin.x = v11;
  v67.origin.y = v12;
  v67.size.width = v13;
  v67.size.height = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame + 24);
  if (CGRectIsNull(v67))
  {
    v14 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView);
    if (v14)
    {
      LODWORD(v14) = [v14 _shouldReverseLayoutDirection];
    }

    v15 = v66;
    v16 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_horizontalAlignment);
    if (v16 == 2)
    {
      if (!v14)
      {
LABEL_8:
        v68.origin.x = v3;
        v68.origin.y = v2;
        v68.size.width = v5;
        v68.size.height = v4;
        MaxX = CGRectGetMaxX(v68);
LABEL_13:
        Center = MaxX;
        v71.origin.x = v3;
        v71.origin.y = v2;
        v71.size.width = v5;
        v71.size.height = v4;
        MidY = CGRectGetMidY(v71);
        goto LABEL_14;
      }
    }

    else
    {
      if (v16 != 1)
      {
        v70.origin.x = v3;
        v70.origin.y = v2;
        v70.size.width = v5;
        v70.size.height = v4;
        MaxX = CGRectGetMidX(v70);
        goto LABEL_13;
      }

      if (v14)
      {
        goto LABEL_8;
      }
    }

    v69.origin.x = v3;
    v69.origin.y = v2;
    v69.size.width = v5;
    v69.size.height = v4;
    MaxX = CGRectGetMinX(v69);
    goto LABEL_13;
  }

  Center = UIRectGetCenter(v11, v12, v13);
  MidY = v19;
  v15 = v66;
LABEL_14:
  v72.origin.x = v3;
  v72.origin.y = v2;
  v72.size.width = v5;
  v72.size.height = v4;
  v21 = CGRectGetWidth(v72) - v15;
  if ((*(v1 + 17) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
    *(v1 + 17) = 1;
  }

  v22 = v21 - v62;
  v23 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) == 1)
  {
    v24 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_widthFollowsPreferredContentSizeWhenEdgeAttached);
    v25 = v23;
    v26 = v25;
    v27 = v21 - v62;
    if (v24 == 1)
    {
      if ([v25 horizontalSizeClass] != 1 || (v27 = v22, objc_msgSend(v26, sel_verticalSizeClass) != 2))
      {
        sub_189103490();
        v27 = v28;
      }
    }

    if (v22 >= v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = v22;
    }

    v30 = _UIClamp_0(v15 + (v22 - (v22 - v29)) * 0.5, Center, v15 + (v22 + v22 - v29) * 0.5);
    v31 = 0.0;
    if ((v10 & 1) == 0)
    {
      v31 = v65 + v64;
    }

    v32 = v61;
    if ((v10 & 1) == 0)
    {
      v32 = v65 + v64;
    }

    v33 = v30 - v29 * 0.5;
    v34 = v4 - v32;
  }

  else
  {
    v63 = MidY;
    v35 = [v23 userInterfaceIdiom];
    sub_189103490();
    v29 = v36;
    v34 = v37;
    if (v35 == 6)
    {
      v33 = Center - v36 * 0.5;
      v31 = v63 - v34 * 0.5;
    }

    else
    {
      v60 = Center;
      v38 = v4 - v64 - v61;
      v39 = v38 - v65;
      if (v22 < v29)
      {
        v29 = v22;
      }

      if (v39 >= v37)
      {
        v40 = v37;
      }

      else
      {
        v40 = v38 - v65;
      }

      if (v29 * 1.41421356 < v40 && *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_mode) == 0)
      {
        v34 = v29 * 1.41421356;
      }

      else
      {
        v34 = v40;
      }

      v73.origin.x = sub_189105E98();
      x = v73.origin.x;
      y = v73.origin.y;
      width = v73.size.width;
      height = v73.size.height;
      if (!CGRectIsNull(v73))
      {
        v74.origin.x = x;
        v74.origin.y = y;
        v74.size.width = width;
        v74.size.height = height;
        v46 = CGRectGetMinY(v74) * 0.5;
        v47 = v63;
        if (v46 < v63)
        {
          v47 = v46;
        }

        v63 = v47;
      }

      v48 = v22 - v29;
      v49 = v39 - v34;
      v50 = v66 + (v22 - (v22 - v29)) * 0.5;
      v51 = v65 + v64 + (v39 - (v39 - v34)) * 0.5;
      v75.origin.x = v50;
      v75.origin.y = v51;
      v75.size.width = v22 - v29;
      v75.size.height = v49;
      MinX = CGRectGetMinX(v75);
      v76.origin.x = v50;
      v76.origin.y = v51;
      v76.size.width = v22 - v29;
      v76.size.height = v49;
      v53 = CGRectGetMaxX(v76);
      v54 = _UIClamp_0(MinX, v60, v53);
      v77.origin.x = v50;
      v77.origin.y = v51;
      v77.size.width = v22 - v29;
      v77.size.height = v49;
      MinY = CGRectGetMinY(v77);
      v78.origin.x = v50;
      v78.origin.y = v51;
      v78.size.width = v48;
      v78.size.height = v49;
      MaxY = CGRectGetMaxY(v78);
      v57 = _UIClamp_0(MinY, v63, MaxY);
      v33 = v54 - v29 * 0.5;
      v31 = v57 - v34 * 0.5;
    }
  }

  v58 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___stackAlignmentFrame);
  *v58 = v33;
  v58[1] = v31;
  v58[2] = v29;
  v58[3] = v34;
  *(v1 + 25) = 1;
  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___stackAlignmentFrame);
}

uint64_t sub_189103BFC()
{
  v11 = v0;
  v12 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 30))
  {
LABEL_225:
    swift_beginAccess();
  }

  if (dyld_program_sdk_at_least() && (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_computing) & 1) != 0)
  {
    __break(1u);
LABEL_94:
    v74 = sub_18A4A7F68();
    if (v74 < 0)
    {
      __break(1u);
    }

    v33 = v74;
    v32 = v167;
    if (v74)
    {
      goto LABEL_23;
    }

    goto LABEL_97;
  }

  v161 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_computing;
  *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_computing) = 1;
  v4 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___detentValues;
  swift_beginAccess();
  v13 = MEMORY[0x1E69E7CC0];
  *(v11 + v4) = MEMORY[0x1E69E7CC0];

  v14 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___activeDetents;
  swift_beginAccess();
  *&v14[v11] = v13;

  v7 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
  v171 = (v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
  v8 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 16);
  v15 = sub_189105F9C();
  v168 = v16;
  v169 = v15;
  v9 = v17;
  v10 = v18;
  v19 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_detents);
  v2 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_selectedDetentIdentifier);
  v166 = v2;
  v167 = v19;

  v20 = sub_18910FB40();
  v176 = [v20 _largestUndimmedDetentIdentifier];
  v162 = v20;
  v177 = [v20 _smallestDimmedDetentIdentifier];
  v6 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_latestUserChosenOffset);
  if ((*(v12 + 17) & 1) == 0)
  {
    *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v11) & 1;
    *(v12 + 17) = 1;
  }

  v1 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached;
  v172 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached);
  v21 = sub_1891050DC();
  if (qword_1ED48F008 != -1)
  {
    swift_once();
  }

  v3 = &selRef_resetInputModeInMainThread;
  [qword_1ED48F150 resolvedValueInContext_];
  v23 = v22;
  v165 = v21;
  if (v21)
  {
    v178.origin.y = v168;
    v178.origin.x = v169;
    v178.size.width = v9;
    v178.size.height = v10;
    MinY = CGRectGetMinY(v178);
    v25 = 0.0;
    if (v172)
    {
      v25 = v7;
    }

    v26 = v23 + v25 + MinY;
  }

  else
  {
    v179.origin.y = v168;
    v179.origin.x = v169;
    v179.size.width = v9;
    v179.size.height = v10;
    MaxY = CGRectGetMaxY(v179);
    v28 = 0.0;
    if (v172)
    {
      v28 = v8;
    }

    v26 = MaxY - v28 - v23;
  }

  if ((*(v12 + 22) & 1) == 0)
  {
    v29 = sub_189105CC0();
    v30 = 1;
    if ((v29 & 1) == 0)
    {
      v30 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen);
    }

    *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) = v30;
    *(v12 + 22) = 1;
  }

  v174 = v2;
  v5 = &selRef__updateSingleLayerNoMaskFromLayerStack;
  if ((*(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) & 1) != 0 || (v31 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection, ![(UITraitCollection *)*(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) _hasSpecifiedEssentialTraits]))
  {
    sub_18A4A2D28();
    v70 = swift_beginAccess();
    MEMORY[0x18CFE2450](v70);
    if (*((*(v11 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    swift_endAccess();
    v71 = [objc_allocWithZone(_UISheetActiveDetent) initWithIdentifier:0 value:v26];
    v72 = swift_beginAccess();
    MEMORY[0x18CFE2450](v72);
    if (*((*&v14[v11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v14[v11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    v73 = &v14[v11];
    sub_18A4A75F8();
    swift_endAccess();
    *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveDetent) = 0;
    *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___adjustedIndexOfCurrentActiveDetentForContainedFirstResponder) = sub_18A4A2388();
    *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfActiveDimmingDetent) = 0;
    *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hasActiveFullDetent) = 0;
    goto LABEL_177;
  }

  v163 = v31;
  v175 = v14;
  v32 = v167;
  v173 = v12;
  v160 = v26;
  if (v167 >> 62)
  {
    goto LABEL_94;
  }

  v33 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v33)
  {
LABEL_23:
    v34 = 0;
    v170 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_includesSafeAreaInsetWhenInset;
    v5 = (v32 & 0xC000000000000001);
    v164 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___solariumInsetsAndCornerRadiusEnabled;
    do
    {
      if (v5)
      {
        v39 = sub_188E4B06C(v34, v32);
      }

      else
      {
        v39 = *(v32 + 8 * v34 + 32);
      }

      v40 = v39;
      [v39 v3[131]];
      v42 = v41;

      v2 = sub_18A4A2D28();
      v43 = swift_beginAccess();
      MEMORY[0x18CFE2450](v43);
      if (*((*(v11 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
        v3 = &selRef_resetInputModeInMainThread;
      }

      sub_18A4A75F8();
      swift_endAccess();
      if (v42 == 1.79769313e308)
      {
        goto LABEL_30;
      }

      if (v5)
      {
        v44 = sub_188E4B06C(v34, v32);
      }

      else
      {
        v44 = *(v32 + 8 * v34 + 32);
      }

      v45 = v44;
      v46 = [v44 identifier];

      v47 = sub_18A4A7288();
      v49 = v48;
      if (v47 == sub_18A4A7288() && v49 == v50)
      {
      }

      else
      {
        v51 = sub_18A4A86C8();

        if ((v51 & 1) == 0)
        {
          v184.origin.x = sub_189105F9C();
          Height = CGRectGetHeight(v184);
          if (*(v173 + 17))
          {
            goto LABEL_56;
          }

LABEL_55:
          *(v11 + v1) = sub_189105A94(v11) & 1;
          *(v173 + 17) = 1;
          goto LABEL_56;
        }
      }

      if ((*(v173 + 17) & 1) == 0)
      {
        *(v11 + v1) = sub_189105A94(v11) & 1;
        *(v173 + 17) = 1;
      }

      v52 = *(v11 + v1);
      v181.origin.x = sub_189105F9C();
      Height = CGRectGetHeight(v181);
      if (v52 == 1)
      {
        if ((*(v173 + 17) & 1) == 0)
        {
          *(v11 + v1) = sub_189105A94(v11) & 1;
          *(v173 + 17) = 1;
        }

        v54 = 0.0;
        if (*(v11 + v1) == 1)
        {
          v55 = sub_1891050DC();
          v56 = 2;
          if (v55)
          {
            v56 = 0;
          }

          v54 = v171[v56];
        }

        v57 = Height - v54;
        v182.origin.x = sub_189105F9C();
        v58 = v57 + CGRectGetMinY(v182) - *v171;
        goto LABEL_61;
      }

      if ((*(v173 + 17) & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_56:
      v59 = 0.0;
      if (*(v11 + v1) == 1)
      {
        v60 = sub_1891050DC();
        v61 = 2;
        if (v60)
        {
          v61 = 0;
        }

        v59 = v171[v61];
      }

      v58 = Height - v59;
LABEL_61:
      if (v58 >= v42)
      {
        v62 = v42;
      }

      else
      {
        v62 = v58;
      }

      if (*(v11 + v170))
      {
        if (v62 > 150.0)
        {
          goto LABEL_79;
        }

        if ((*(v173 + 9) & 1) == 0)
        {
          v63 = (_UISolariumEnabled() & 1) != 0 && [*(v11 + v163) userInterfaceIdiom] != 6;
          *(v11 + v164) = v63;
          *(v173 + 9) = 1;
        }

        if ((*(v11 + v164) & 1) == 0)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v183.origin.x = sub_189105F9C();
        v64 = CGRectGetHeight(v183);
        if ((*(v173 + 17) & 1) == 0)
        {
          *(v11 + v1) = sub_189105A94(v11) & 1;
          *(v173 + 17) = 1;
        }

        if (*(v11 + v1) == 1)
        {
          v65 = sub_1891050DC();
          v66 = 2;
          if (v65)
          {
            v66 = 0;
          }

          if (v62 == v64 - v171[v66])
          {
LABEL_79:
            v67 = 1.0;
            if ((v165 & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_85;
          }
        }

        else if (v62 == v64)
        {
          goto LABEL_79;
        }
      }

      v67 = 0.0;
      if ((v165 & 1) == 0)
      {
LABEL_24:
        v180.origin.y = v168;
        v180.origin.x = v169;
        v180.size.width = v9;
        v180.size.height = v10;
        v35 = CGRectGetMaxY(v180);
        v36 = v8 * v67;
        if (!v172)
        {
          v36 = 0.0;
        }

        v37 = v35 - v36 - v62;
        goto LABEL_27;
      }

LABEL_85:
      v185.origin.y = v168;
      v185.origin.x = v169;
      v185.size.width = v9;
      v185.size.height = v10;
      v68 = CGRectGetMinY(v185);
      v69 = v7 * v67;
      if (!v172)
      {
        v69 = 0.0;
      }

      v37 = v62 + v68 + v69;
LABEL_27:
      v2 = [objc_allocWithZone(_UISheetActiveDetent) initWithIdentifier:v46 value:v37];
      v38 = swift_beginAccess();
      MEMORY[0x18CFE2450](v38);
      if (*((*&v175[v11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v175[v11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
      swift_endAccess();

      v32 = v167;
      v3 = &selRef_resetInputModeInMainThread;
LABEL_30:
      ++v34;
    }

    while (v33 != v34);
  }

LABEL_97:
  v14 = v175;
  v75 = *&v175[v11];
  if (!(v75 >> 62))
  {
    v73 = v165;
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_99;
    }

LABEL_249:
    __break(1u);
    goto LABEL_250;
  }

  v73 = v165;
  if (!sub_18A4A7F68())
  {
    goto LABEL_249;
  }

LABEL_99:
  swift_beginAccess();
  sub_189107510(&v175[v11], v73 & 1);
  swift_endAccess();
  v76 = sub_18A4A2388();
  v163 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveDetent;
  *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveDetent) = v76;
  v5 = &selRef__updateSingleLayerNoMaskFromLayerStack;
  if (![v162 _prefersDimmingVisible])
  {
LABEL_104:
    v80 = sub_18A4A2388();
    goto LABEL_105;
  }

  v77 = *&v175[v11];
  if (!(v77 >> 62))
  {
    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v79 = __OFSUB__(v78, 1);
    v80 = v78 - 1;
    if (!v79)
    {
      goto LABEL_105;
    }

    goto LABEL_103;
  }

  v159 = sub_18A4A7F68();
  v79 = __OFSUB__(v159, 1);
  v80 = v159 - 1;
  if (v79)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

LABEL_105:
  v170 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfActiveDimmingDetent;
  *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfActiveDimmingDetent) = v80;
  v164 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hasActiveFullDetent;
  *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hasActiveFullDetent) = 0;
  v73 = *&v175[v11];
  if (v73 >> 62)
  {
LABEL_250:
    v71 = sub_18A4A7F68();
    goto LABEL_107;
  }

  v71 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_107:

  if (!v71)
  {
    goto LABEL_153;
  }

  v12 = 0;
  while ((v73 & 0xC000000000000001) != 0)
  {
    v14 = sub_188E4B080(v12, v73);
    v5 = v174;
    v81 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_152;
    }

LABEL_118:
    v82 = [v14 _identifier];
    if (v82)
    {
      if (!v5)
      {
        goto LABEL_130;
      }

      v83 = sub_18A4A7288();
      v85 = v84;
      v87 = sub_18A4A7288();
      v88 = v83;
      v2 = v86;
      if (v88 == v87 && v85 == v86)
      {
      }

      else
      {
        v90 = sub_18A4A86C8();

        if ((v90 & 1) == 0)
        {
          goto LABEL_130;
        }
      }
    }

    else if (v5)
    {
      goto LABEL_110;
    }

    *(v11 + v163) = v12;
    if (v6 == 1.79769313e308)
    {
      [v14 _value];
      v6 = v91;
    }

    if (!v82)
    {
LABEL_110:
      if (v176)
      {
        goto LABEL_111;
      }

      goto LABEL_135;
    }

LABEL_130:
    if (!v176)
    {
      goto LABEL_139;
    }

    v92 = sub_18A4A7288();
    v94 = v93;
    v95 = sub_18A4A7288();
    v2 = v96;
    if (v92 == v95 && v94 == v96)
    {
    }

    else
    {
      v97 = sub_18A4A86C8();

      if ((v97 & 1) == 0)
      {
        goto LABEL_139;
      }
    }

LABEL_135:
    if (v12)
    {
      v98 = v12 - 1;
    }

    else
    {
      v98 = sub_18A4A2388();
    }

    *(v11 + v170) = v98;
    if (!v82)
    {
LABEL_111:
      if (!v177)
      {
        *(v11 + v170) = v12;
      }

      goto LABEL_114;
    }

LABEL_139:
    if (v177)
    {
      v99 = sub_18A4A7288();
      v101 = v100;
      if (v99 == sub_18A4A7288() && v101 == v102)
      {

LABEL_144:
        *(v11 + v170) = v12;
        goto LABEL_145;
      }

      v103 = sub_18A4A86C8();

      if (v103)
      {
        goto LABEL_144;
      }
    }

LABEL_145:
    v104 = sub_18A4A7288();
    v106 = v105;
    v108 = sub_18A4A7288();
    v109 = v104;
    v2 = v107;
    if (v109 == v108 && v106 == v107)
    {

LABEL_149:
      *(v11 + v164) = 1;
      goto LABEL_114;
    }

    v110 = sub_18A4A86C8();

    if (v110)
    {
      goto LABEL_149;
    }

LABEL_114:
    v14 = v175;
    v5 = &selRef__updateSingleLayerNoMaskFromLayerStack;
    ++v12;
    if (v81 == v71)
    {
      goto LABEL_153;
    }
  }

  v5 = v174;
  if (v12 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_227;
  }

  v14 = *(v73 + 8 * v12 + 32);
  v81 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_118;
  }

LABEL_152:
  __break(1u);
LABEL_153:

  if (*(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) == 1)
  {
    v12 = v173;
    if (*(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_remoteContainsFirstResponder))
    {
      v111 = &OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_remoteFirstResponderRequiresKeyboard;
      goto LABEL_158;
    }

LABEL_159:
    v71 = 0;
  }

  else
  {
    v12 = v173;
    if (*(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containsFirstResponder) != 1)
    {
      goto LABEL_159;
    }

    v111 = &OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_firstResponderRequiresKeyboard;
LABEL_158:
    v71 = *(v11 + *v111);
  }

  v73 = v11;
  v186.origin.x = sub_189105E98();
  v189.origin.y = v168;
  v189.origin.x = v169;
  v189.size.width = v9;
  v189.size.height = v10;
  v187 = CGRectIntersection(v186, v189);
  if (!v71 || (x = v187.origin.x, y = v187.origin.y, width = v187.size.width, v115 = v187.size.height, ((CGRectIsEmpty(v187) | v165) & 1) != 0) || *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shouldAdjustDetentsToAvoidKeyboard) != 1)
  {
    *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___adjustedIndexOfCurrentActiveDetentForContainedFirstResponder) = sub_18A4A2388();
    goto LABEL_177;
  }

  v73 = *&v14[v11];
  if (!(v73 >> 62))
  {
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_165;
    }

LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  if (!sub_18A4A7F68())
  {
    goto LABEL_255;
  }

LABEL_165:
  if ((v73 & 0xC000000000000001) != 0)
  {
LABEL_256:

    v71 = sub_188E4B080(0, v73);

LABEL_168:
    [v71 v5[466]];
    v117 = v116;

    v118 = v160;
    if (v160 < v117)
    {
      v188.origin.x = x;
      v188.origin.y = y;
      v188.size.width = width;
      v188.size.height = v115;
      v119 = v117 - CGRectGetHeight(v188);
      if (v119 > v160)
      {
        v118 = v119;
      }

      v71 = [objc_allocWithZone(_UISheetActiveDetent) initWithIdentifier:0 value:v118];
      swift_beginAccess();
      if (*&v14[v11] >> 62)
      {
        goto LABEL_258;
      }

      goto LABEL_172;
    }

LABEL_175:
    *(v11 + v163) = 0;
    *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___adjustedIndexOfCurrentActiveDetentForContainedFirstResponder) = 0;
LABEL_177:
    v123 = *&v14[v11];
    if (v123 >> 62)
    {
      goto LABEL_228;
    }

    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_179;
    }

LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    v139 = sub_18A4A7F68();
    v71 = v139;
    if (!v139)
    {
      goto LABEL_233;
    }

LABEL_207:

    v139 = v71 - 1;
    if (__OFSUB__(v71, 1))
    {
LABEL_234:
      __break(1u);
LABEL_235:
      v140 = sub_188E4B080(v139, v73);
LABEL_212:
      v141 = v140;

      [v141 v5[466]];
      v143 = v142;

      *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___smallestNonDismissDetentOffset) = v143;
      v144 = *&v14[v11];
      if (!(v144 >> 62))
      {
        v145 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_214:
        v146 = v176;
        *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___numberOfActiveNonDismissDetents) = v145;
        if ((*(v12 + 19) & 1) == 0)
        {
          if (*(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDismissible))
          {
            v147 = sub_189105BF0();
            v146 = v176;
            v148 = v147 ^ 1;
          }

          else
          {
            v148 = 0;
          }

          *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectiveDismissible) = v148 & 1;
          *(v12 + 19) = 1;
        }

        if (*(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectiveDismissible))
        {
          if ((*(v12 + 29) & 1) == 0)
          {
            v149 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
            v150 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
            v151 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
            v152 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
            v153 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame);
            v154 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 8);
            v155 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 16);
            v156 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 24);
            v157 = sub_1891050DC();
            *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset) = _UISheetDismissOffset(v157 & 1, v149, v150, v151, v152, v153, v154, v155, v156);
            *(v12 + 29) = 1;
          }

          [objc_allocWithZone(_UISheetActiveDetent) initWithIdentifier:0 value:*(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset)];
          v158 = swift_beginAccess();
          MEMORY[0x18CFE2450](v158);
          if (*((*&v14[v11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v14[v11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_247:
            sub_18A4A7588();
          }

          sub_18A4A75F8();
          swift_endAccess();
          v146 = v176;
        }

        *(v11 + v161) = 0;
        *(v12 + 30) = 1;
        goto LABEL_225;
      }

LABEL_237:
      v145 = sub_18A4A7F68();
      goto LABEL_214;
    }

    if ((v73 & 0xC000000000000001) != 0)
    {
      goto LABEL_235;
    }

    if ((v139 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_237;
    }

    if (v139 < *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v140 = *(v73 + 8 * v139 + 32);
      goto LABEL_212;
    }

    __break(1u);
LABEL_239:
    v124 = sub_18A4A7F68();
    if (!v124)
    {
      goto LABEL_240;
    }

LABEL_182:
    v71 = v124 - 1;
    if (__OFSUB__(v124, 1))
    {
LABEL_241:
      __break(1u);
LABEL_242:

      v125 = sub_188E4B080(v71, v73);

LABEL_187:
      [v125 v5[466]];
      v6 = v126;

      goto LABEL_188;
    }

    if ((v73 & 0xC000000000000001) != 0)
    {
      goto LABEL_242;
    }

    if ((v71 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v71 < *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v125 = *(v73 + 8 * v71 + 32);
      goto LABEL_187;
    }

    __break(1u);
LABEL_245:
    v71 = sub_18A4A7F68();
    v129 = sub_18A4A2388();
    if ((v71 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_247;
    }

    while (1)
    {
      v73 = v129;
      v130 = v12;
      if (!v71)
      {
LABEL_203:
        *&v2[v11] = v73;
        v12 = v130;
LABEL_204:
        v139 = sub_18A4A2388();
        if (v73 == v139)
        {
          goto LABEL_231;
        }

        v73 = *&v14[v11];
        if (!(v73 >> 62))
        {
          v71 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v71)
          {
            goto LABEL_207;
          }

LABEL_233:
          __break(1u);
          goto LABEL_234;
        }

        goto LABEL_232;
      }

      v12 = 0;
      v131 = 1.79769313e308;
      while (1)
      {
        swift_beginAccess();
        v132 = *&v14[v11];
        if ((v132 & 0xC000000000000001) != 0)
        {
          v133 = sub_188E4B080(v12, v132);
          goto LABEL_197;
        }

        if (v12 >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v133 = *(v132 + 8 * v12 + 32);
LABEL_197:
        v134 = v133;
        v135 = v12 + 1;
        swift_endAccess();
        [v134 v5[466]];
        v137 = v136;

        v138 = vabdd_f64(v137, v6);
        if (v138 < v131)
        {
          v73 = v12;
          v131 = v138;
        }

        ++v12;
        if (v71 == v135)
        {
          goto LABEL_203;
        }
      }

      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      if (!sub_18A4A7F68())
      {
        goto LABEL_229;
      }

LABEL_179:
      if (v6 == 1.79769313e308)
      {
        v73 = *&v14[v11];
        if (!(v73 >> 62))
        {
          v124 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v124)
          {
            goto LABEL_182;
          }

LABEL_240:
          __break(1u);
          goto LABEL_241;
        }

        goto LABEL_239;
      }

LABEL_188:
      if (v6 == 1.79769313e308)
      {
        goto LABEL_230;
      }

      v2 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveDetent;
      v127 = *(v11 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveDetent);
      if (v127 != sub_18A4A2388())
      {
        v73 = *&v2[v11];
        goto LABEL_204;
      }

      v128 = *&v14[v11];
      if (v128 >> 62)
      {
        goto LABEL_245;
      }

      v71 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v129 = sub_18A4A2388();
    }
  }

  if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v71 = *(v73 + 32);
    goto LABEL_168;
  }

  __break(1u);
LABEL_258:
  result = sub_18A4A7F68();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_260;
  }

LABEL_172:
  sub_189014AC8(0, 0, v71);
  swift_endAccess();

  v71 = v170;
  v73 = *(v11 + v170);
  result = sub_18A4A2388();
  v121 = 0;
  if (v73 == result || (v122 = *(v11 + v170), v79 = __OFADD__(v122, 1), v121 = v122 + 1, !v79))
  {
    *(v11 + v170) = v121;
    goto LABEL_175;
  }

LABEL_260:
  __break(1u);
  return result;
}

uint64_t sub_1891050DC()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 20) & 1) == 0)
  {
    if (sub_1890FF470())
    {
      v2 = 0;
    }

    else
    {
      v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsInvertedWhenFloating);
    }

    if ((*(v1 + 17) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
      *(v1 + 17) = 1;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isInverted) = v2 & ~*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) & 1;
    *(v1 + 20) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isInverted);
}

double sub_18910518C()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 39) & 1) == 0)
  {
    v2 = sub_1891064EC();
    v3 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___currentOffset;
    *v3 = v2;
    *(v3 + 8) = v4;
    if ((*v1 & 1) == 0)
    {
      if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented))
      {
        v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
      }

      else
      {
        v5 = 0;
      }

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v5 & 1;
      *v1 = 1;
    }

    if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) & 1) == 0)
    {
      if ((v1[19] & 1) == 0)
      {
        if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDismissible))
        {
          v6 = sub_189105BF0() ^ 1;
        }

        else
        {
          v6 = 0;
        }

        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectiveDismissible) = v6 & 1;
        v1[19] = 1;
      }

      if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectiveDismissible) & 1) == 0)
      {
        if ((v1[29] & 1) == 0)
        {
          v7 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
          v8 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
          v9 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
          v10 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
          v11 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame);
          v12 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 8);
          v13 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 16);
          v14 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 24);
          v15 = sub_1891050DC();
          *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset) = _UISheetDismissOffset(v15 & 1, v7, v8, v9, v10, v11, v12, v13, v14);
          v1[29] = 1;
        }

        v16 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset);
        sub_18910640C();
        *(v3 + 8) = *(v3 + 8) + v16 - v17;
      }
    }

    v1[39] = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___currentOffset);
}

uint64_t sub_189105340()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 13) & 1) == 0)
  {
    if (sub_1891025BC())
    {
      if ((*(v1 + 17) & 1) == 0)
      {
        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
        *(v1 + 17) = 1;
      }

      v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached);
    }

    else
    {
      v2 = 0;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isHidingUnderneathDescendantForDepthLevel) = v2;
    *(v1 + 13) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isHidingUnderneathDescendantForDepthLevel);
}

double sub_1891053D4()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 14) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v2)
    {
      v3 = v0;
      v4 = v2;
      if (sub_189105340())
      {
        sub_1891053D4();
      }

      else
      {
        sub_189102880();
      }

      v6 = v5;

      v0 = v3;
    }

    else
    {
      v6 = 0;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___proposedDepthLevelIncrement) = v6;
    *(v1 + 14) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___proposedDepthLevelIncrement);
}

double sub_1891054B0()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 15) & 1) == 0)
  {
    v2 = 0.0;
    if (sub_1891055AC())
    {
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) == 1 && v3 == 0)
      {
        v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_remoteProposedDepthLevel);
      }

      else
      {
        v5 = v3;
        if (sub_189102778())
        {
          if (v3)
          {
            v6 = sub_1891054B0();
            v7 = 0.0;
            if ((sub_189105340() & 1) == 0)
            {
              v7 = sub_1891053D4();
            }

            v2 = v6 + v7;
          }
        }

        else
        {
        }
      }
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___proposedDepthLevel) = v2;
    *(v1 + 15) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___proposedDepthLevel);
}

BOOL sub_1891055AC()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 9) & 1) == 0)
  {
    v2 = (_UISolariumEnabled() & 1) != 0 && [*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) userInterfaceIdiom] != 6;
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___solariumInsetsAndCornerRadiusEnabled) = v2;
    *(v1 + 9) = 1;
  }

  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___solariumInsetsAndCornerRadiusEnabled))
  {
    if ((*(v1 + 22) & 1) == 0)
    {
      v3 = sub_189105CC0();
      v4 = 1;
      if ((v3 & 1) == 0)
      {
        v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen);
      }

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) = v4;
      *(v1 + 22) = 1;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen))
    {
      return 0;
    }
  }

  v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics);
  v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView);
  }

  else
  {
    v7 = [objc_allocWithZone(UIView) init];
    v6 = 0;
  }

  v8 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
  v9 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
  v10 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
  v11 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
  v12 = v6;
  v13 = [v5 shouldScaleDownBehindDescendantsForContainer:v7 withBounds:{v8, v9, v10, v11}];

  v14 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection;
  if ([*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) userInterfaceIdiom] == 6)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isReduceMotionEnabled);
  }

  result = 0;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shouldScaleDownBehindDescendants) == 1 && (v15 & 1) == 0)
  {
    if (v13 & 1) == 0 && (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen))
    {
      return 0;
    }

    return [*(v0 + v14) verticalSizeClass] != 1;
  }

  return result;
}

double sub_1891057D0()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 16) & 1) == 0)
  {
    if ((*v1 & 1) == 0)
    {
      if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented))
      {
        v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
      }

      else
      {
        v2 = 0;
      }

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v2 & 1;
      *v1 = 1;
    }

    v3 = 0.0;
    if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) & 1) == 0)
    {
      goto LABEL_19;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else if (CGRectIsNull(*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentStackAlignmentFrame)))
    {
      if ((v1[17] & 1) == 0)
      {
        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
        v1[17] = 1;
      }

      v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached);
      goto LABEL_15;
    }

    v5 = sub_189105958();
LABEL_15:
    sub_189102880();
    if (v6 == 0.0 && (v5 & 1) != 0 && (sub_189105340() & 1) == 0)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        [v8 _depthLevel];
        v11 = v10;

        v3 = v11;
      }

      else
      {
        v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentDepthLevel);
      }
    }

    else
    {
      v3 = sub_1891054B0();
    }

LABEL_19:
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___depthLevel) = v3;
    v1[16] = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___depthLevel);
}

uint64_t sub_189105958()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_18910377C();
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentStackAlignmentFrame);
    v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentStackAlignmentFrame + 8);
    v8 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentStackAlignmentFrame + 16);
    v10 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentStackAlignmentFrame + 24);
  }

  v17.origin.x = sub_18910377C();
  v17.origin.y = v11;
  v17.size.width = v12;
  v17.size.height = v13;
  v14 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  if (CGRectEqualToRect(v16, v17))
  {
    return 1;
  }

  else
  {
    return [v14 alwaysStacksWithChild];
  }
}

uint64_t sub_189105A94(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_alwaysAllowsEdgeAttached) & 1) != 0 || (result = [*(a1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics) supportsEdgeAttachedForTraitCollection_], result))
  {
    if ((*(a1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsEdgeAttached) & 1) == 0 && (*(a1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen) & 1) == 0)
    {
      sub_189102E04();
      v5 = CGRectGetWidth(*(a1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds)) - v3 - v4;
      sub_189103490();
      if (v5 >= v6)
      {
        v7 = *(a1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection);
        if ([v7 verticalSizeClass] == 1 && *(a1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFloatingInCompactHeight) == 1)
        {

          return 0;
        }

        if ([v7 horizontalSizeClass] == 1)
        {
        }

        else
        {
          v8 = [v7 verticalSizeClass];

          if (v8 != 1 || *(a1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFloatingInRegularWidthCompactHeight) == 1)
          {
            return 0;
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_189105BF0()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 18) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_horizontalAlignment);
    if (v2)
    {
      if ((*(v1 + 17) & 1) == 0)
      {
        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
        *(v1 + 17) = 1;
      }

      LOBYTE(v2) = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) ^ 1;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissesHorizontally) = v2 & 1;
    *(v1 + 18) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissesHorizontally);
}

uint64_t sub_189105CC0()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 21) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection);
    if ([v2 verticalSizeClass] == 1 && (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsEdgeAttachedInCompactHeight) & 1) == 0)
    {
      v5 = [v2 horizontalSizeClass];

      if (v5 == 1 || (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFloatingInRegularWidthCompactHeight) & 1) == 0)
      {
        v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFloatingInCompactHeight) ^ 1;
        goto LABEL_6;
      }
    }

    else
    {
    }

    v3 = 0;
LABEL_6:
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isForcedFullScreen) = v3 & 1;
    *(v1 + 21) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isForcedFullScreen);
}

double sub_189105DD8()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 23) & 1) == 0)
  {
    v2 = [*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics) exclusivelyUsesZPositionForTransform];
    v3 = sub_189105CC0();
    v4 = 1.0;
    if ((v3 & 1) == 0 && (v2 & 1) == 0)
    {
      v4 = 0.0;
      if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen) == 1)
      {
        v5 = sub_1891057D0();
        v4 = _UIClamp_2(1.0 - v5);
      }
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentFullScreen) = v4;
    *(v1 + 23) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentFullScreen);
}

double sub_189105E98()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 24) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) == 1)
    {
      v2 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_remoteKeyboardFrame;
    }

    else
    {
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v3)
      {
        v4 = v3;
        v14 = sub_189105E98();
        v15 = v5;
        v13 = v6;
        v16 = v7;

        *&v9 = v13;
        *&v8 = v14;
        *(&v8 + 1) = v15;
        *(&v9 + 1) = v16;
LABEL_8:
        v11 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveKeyboardFrame);
        *v11 = v8;
        v11[1] = v9;
        *(v1 + 24) = 1;
        return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveKeyboardFrame);
      }

      v2 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_keyboardFrame;
    }

    v10 = (v0 + v2);
    v8 = *v10;
    v9 = v10[1];
    goto LABEL_8;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveKeyboardFrame);
}

double sub_189105F9C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 27) & 1) == 0)
  {
    if ((*(v2 + 22) & 1) == 0)
    {
      v3 = sub_189105CC0();
      v4 = 1;
      if ((v3 & 1) == 0)
      {
        v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen);
      }

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) = v4;
      *(v2 + 22) = 1;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen))
    {
      v5 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___fullHeightUntransformedFrame);
      v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
      *v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
      v5[1] = v6;
    }

    else
    {
      v7 = sub_18910377C();
      v8 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___fullHeightUntransformedFrame;
      *v8 = v7;
      *(v8 + 8) = v9;
      *(v8 + 16) = v10;
      *(v8 + 24) = v11;
      if (sub_1890FF470())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          v14 = Strong + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
          if ((*(Strong + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 22) & 1) == 0)
          {
            v15 = sub_189105CC0();
            v16 = 1;
            if ((v15 & 1) == 0)
            {
              v16 = v13[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen];
            }

            v13[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen] = v16;
            *(v14 + 22) = 1;
          }

          if ((v13[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen] & 1) != 0 && !sub_1891055AC())
          {
            [*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics) topOffset];
            v18 = v17;

            *(v8 + 8) = *(v8 + 8) - v18;
            *(v8 + 24) = v18 + *(v8 + 24);
          }

          else
          {
          }
        }
      }
    }

    *(v2 + 27) = 1;
  }

  return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___fullHeightUntransformedFrame);
}

double sub_18910614C()
{
  v7.origin.x = sub_189105F9C();
  Height = CGRectGetHeight(v7);
  v2 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 17) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
    *(v2 + 17) = 1;
  }

  v3 = 0.0;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) == 1)
  {
    v4 = sub_1891050DC();
    v5 = 16;
    if (v4)
    {
      v5 = 0;
    }

    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + v5);
  }

  return Height - v3;
}

void sub_18910622C()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 17) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
    *(v1 + 17) = 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached);
  sub_18910614C();
  if (v2 == 1)
  {
    v3.origin.x = sub_189105F9C();
    CGRectGetMinY(v3);
  }
}

double sub_1891062C0()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 28) & 1) == 0)
  {
    if ((sub_189105958() & 1) == 0)
    {
      goto LABEL_9;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong _depthLevel];
      v6 = v5;
    }

    else
    {
      v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentDepthLevel);
    }

    if (v6 == sub_1891057D0())
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = sub_1891062C0();
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v16 = v15;
        v17 = v13;
        v18 = v11;
        v19 = v9;
      }

      else
      {
        v19 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentFullHeightUntransformedFrameForDepthLevel);
        v18 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentFullHeightUntransformedFrameForDepthLevel + 8);
        v17 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentFullHeightUntransformedFrameForDepthLevel + 16);
        v16 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentFullHeightUntransformedFrameForDepthLevel + 24);
      }
    }

    else
    {
LABEL_9:
      v19 = sub_189105F9C();
    }

    v20 = v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___fullHeightUntransformedFrameForDepthLevel;
    *v20 = v19;
    *(v20 + 8) = v18;
    *(v20 + 16) = v17;
    *(v20 + 24) = v16;
    *(v2 + 28) = 1;
  }

  return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___fullHeightUntransformedFrameForDepthLevel);
}

void sub_18910640C()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 37) & 1) == 0)
  {
    v2 = sub_189103BFC();
    sub_189103BFC();

    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveDetent);
    if ((v2 & 0xC000000000000001) == 0)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v2 + 8 * v3 + 32);
LABEL_6:
        v5 = v4;

        [v5 _value];
        v7 = v6;

        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___offsetForCurrentActiveDetent) = v7;
        *(v1 + 37) = 1;
        return;
      }

      __break(1u);
      return;
    }

    v4 = sub_188E4B080(v3, v2);
    goto LABEL_6;
  }
}

double sub_1891064EC()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 38) & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
    v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
    v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
    v6 = sub_189105F9C();
    v8 = v7;
    v33 = v9;
    v34 = v10;
    v11 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_currentOffsetGetter);
    if (v11)
    {

      v13 = v11(v12);
      v15 = v14;
      sub_188A55B8C(v11);
    }

    else
    {
      v16 = sub_1891050DC();
      v17 = v3;
      v18 = v2;
      v19 = v5;
      v20 = v4;
      if (v16)
      {
        MaxY = CGRectGetMaxY(*&v17);
      }

      else
      {
        MaxY = CGRectGetMinY(*&v17);
      }

      v15 = MaxY;
      v13 = 0.0;
    }

    v22 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___rawCurrentOffset);
    *v22 = v13;
    v22[1] = v15;
    if ((*v1 & 1) == 0)
    {
      if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented))
      {
        v23 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
      }

      else
      {
        v23 = 0;
      }

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v23 & 1;
      *v1 = 1;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) & 1) == 0 && (sub_189105BF0())
    {
      v24 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView);
      if (v24 && ([v24 _shouldReverseLayoutDirection] & 1) != 0)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      v26 = v3;
      v27 = v2;
      v28 = v5;
      v29 = v4;
      if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_horizontalAlignment) == v25)
      {
        MinX = CGRectGetMinX(*&v26);
        v35.origin.x = v6;
        v35.origin.y = v8;
        v35.size.width = v33;
        v35.size.height = v34;
        MaxX = CGRectGetMaxX(v35);
      }

      else
      {
        MinX = CGRectGetMaxX(*&v26);
        v36.origin.x = v6;
        v36.origin.y = v8;
        v36.size.width = v33;
        v36.size.height = v34;
        MaxX = CGRectGetMinX(v36);
      }

      *v22 = MinX - MaxX + *v22;
    }

    v1[38] = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___rawCurrentOffset);
}

uint64_t sub_18910673C()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 40) & 1) == 0)
  {
    sub_189103BFC();

    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hasActiveFullDetent) != 1)
    {
      goto LABEL_11;
    }

    if ((v1[17] & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
      v1[17] = 1;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) != 1)
    {
      goto LABEL_11;
    }

    if ((v1[22] & 1) == 0)
    {
      v2 = sub_189105CC0();
      v3 = 1;
      if ((v2 & 1) == 0)
      {
        v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen);
      }

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) = v3;
      v1[22] = 1;
    }

    if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) & 1) == 0)
    {
      sub_18910518C();
      v4 = v6 <= *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
    }

    else
    {
LABEL_11:
      v4 = 0;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isExpanded) = v4;
    v1[40] = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isExpanded);
}

double sub_189106844()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 41))
  {
    return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___nonFullHeightOffset);
  }

  v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
  v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
  v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
  sub_189102880();
  v8 = v7;
  v9 = sub_1891050DC();
  if ((*v2 & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented))
    {
      v10 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
    }

    else
    {
      v10 = 0;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v10 & 1;
    *v2 = 1;
  }

  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v8 == 0.0 || (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v15 = Strong, v16 = sub_1891025BC(), v15, (v16 & 1) != 0))
  {
    sub_18910518C();
    v12 = v11;
    if (v9)
    {
      if ((v2[19] & 1) == 0)
      {
        if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDismissible))
        {
          v13 = sub_189105BF0() ^ 1;
        }

        else
        {
          v13 = 0;
        }

        *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectiveDismissible) = v13 & 1;
        v2[19] = 1;
      }

      if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectiveDismissible))
      {
        sub_189103BFC();

        MaxY = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___smallestNonDismissDetentOffset);
      }

      else
      {
        MaxY = -INFINITY;
      }

      if (v12 > MaxY)
      {
        MaxY = v12;
      }
    }

    else
    {
      if ((v2[19] & 1) == 0)
      {
        if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDismissible))
        {
          v22 = sub_189105BF0() ^ 1;
        }

        else
        {
          v22 = 0;
        }

        *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectiveDismissible) = v22 & 1;
        v2[19] = 1;
      }

      if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectiveDismissible))
      {
        sub_189103BFC();

        MaxY = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___smallestNonDismissDetentOffset);
      }

      else
      {
        MaxY = INFINITY;
      }

      if (MaxY >= v12)
      {
        MaxY = v12;
      }
    }

    goto LABEL_38;
  }

  if (v8 < 1.0)
  {
    sub_189103BFC();

    MaxY = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___smallestNonDismissDetentOffset);
  }

  else
  {
LABEL_17:
    v18 = v4;
    v19 = v3;
    v20 = v6;
    v21 = v5;
    if (v9)
    {
      MaxY = CGRectGetMaxY(*&v18);
    }

    else
    {
      MaxY = CGRectGetMinY(*&v18);
    }
  }

LABEL_38:
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___nonFullHeightOffset) = MaxY;
  if (v8 != 1.0 || (sub_1891025BC() & 1) != 0)
  {
    v23 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v23)
    {
      v24 = v23;
      if ((v9 ^ sub_1891050DC()))
      {
      }

      else
      {
        v25 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___nonFullHeightOffset);
        v26 = sub_189106844();

        v27 = v25 <= v26;
        if (v9)
        {
          v27 = v26 < v25;
        }

        if (v27)
        {
          v28 = v26;
        }

        else
        {
          v28 = v25;
        }

        *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___nonFullHeightOffset) = v28;
      }
    }
  }

  v2[41] = 1;
  return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___nonFullHeightOffset);
}

double sub_189106B50()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 42) & 1) == 0)
  {
    v3 = sub_1891050DC();
    v4 = sub_1891025BC();
    if ((*v2 & 1) == 0)
    {
      if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented))
      {
        v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
      }

      else
      {
        v5 = 0;
      }

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v5 & 1;
      *v2 = 1;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented))
    {
      v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v6)
      {
        v7 = v6;
        if (((v3 ^ sub_1891050DC()) & 1) == 0)
        {
          v9 = 1.0;
          if ((v4 & 1) == 0)
          {
            sub_189102880();
            v9 = 1.0 - v10;
          }

          v11 = sub_189106844();
          sub_18910640C();
          v13 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___offsetAdjustment;
          *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___offsetAdjustment) = v9 * (v11 - v12);
          if (v4)
          {
            v14 = sub_189102510();

            if ((v14 & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          else
          {
          }

          v15 = *(v1 + v13);
          v16 = v15 >= 0.0;
          if (v3)
          {
            v16 = v15 < 0.0;
          }

          if (!v16)
          {
            v15 = 0.0;
          }

          *(v1 + v13) = v15;
          goto LABEL_12;
        }
      }
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___offsetAdjustment) = 0;
LABEL_12:
    v2[42] = 1;
  }

  return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___offsetAdjustment);
}

double sub_189106CDC()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 43) & 1) == 0)
  {
    sub_18910518C();
    v3 = v2;
    if ((*(v1 + 29) & 1) == 0)
    {
      v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
      v15 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
      v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
      v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
      v7 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame);
      v8 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 8);
      v10 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 16);
      v9 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 24);
      v11 = sub_1891050DC();
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset) = _UISheetDismissOffset(v11 & 1, v15, v4, v5, v6, v7, v8, v10, v9);
      *(v1 + 29) = 1;
    }

    v12 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset);
    sub_189103BFC();

    v13 = _UIUnlerp(v3, v12, *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___smallestNonDismissDetentOffset));
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentPresented) = _UIClamp_2(v13);
    *(v1 + 43) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentPresented);
}

uint64_t sub_189106E34()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 44) & 1) == 0)
  {
    v2 = 1;
    if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDragging) & 1) == 0)
    {
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v3)
      {
        v4 = v3;
        v2 = sub_189106E34();
      }

      else
      {
        v2 = 0;
      }
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isAnyDescendantDragging) = v2 & 1;
    *(v1 + 44) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isAnyDescendantDragging);
}

uint64_t sub_189106EE0()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 45) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen) != 1)
    {
      goto LABEL_10;
    }

    if ((*v1 & 1) == 0)
    {
      if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented))
      {
        v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
      }

      else
      {
        v2 = 0;
      }

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v2 & 1;
      *v1 = 1;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented))
    {
      v3 = 1;
    }

    else
    {
LABEL_10:
      v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v4)
      {
        v5 = v4;
        v3 = sub_189106EE0();
      }

      else
      {
        v3 = 0;
      }
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___anyDescendantWantsFullScreen) = v3 & 1;
    v1[45] = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___anyDescendantWantsFullScreen);
}

void sub_1891070D8(_BYTE *a1, uint64_t a2, int a3, void *a4, void (*a5)(void))
{
  v6 = a1[*a4];
  a1[*a4] = a3;
  if (v6 != a3)
  {
    v8 = a1;
    a5();
  }
}

double sub_18910717C()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_includesSafeAreaInsetWhenInset))
  {
    v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
    if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 53) & 1) == 0)
    {
      sub_189107CF8();
      Height = CGRectGetHeight(v6);
      v3 = _UIUnlerp(Height, 150.0, 76.0);
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentCapsular) = _UIClamp_2(v3);
      *(v1 + 53) = 1;
    }

    return 1.0 - *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentCapsular);
  }

  else
  {
    sub_189102880();
    return v5;
  }
}

double sub_189107218()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 53) & 1) == 0)
  {
    sub_189107CF8();
    Height = CGRectGetHeight(v5);
    v3 = _UIUnlerp(Height, 150.0, 76.0);
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentCapsular) = _UIClamp_2(v3);
    *(v1 + 53) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentCapsular);
}

void sub_1891072CC()
{
  sub_1891064EC();
  v1 = sub_189105F9C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 17) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
    v8[17] = 1;
  }

  v9 = sub_1891050DC();
  if ((v8[9] & 1) == 0)
  {
    v10 = (_UISolariumEnabled() & 1) != 0 && [*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) userInterfaceIdiom] != 6;
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___solariumInsetsAndCornerRadiusEnabled) = v10;
    v8[9] = 1;
  }

  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___solariumInsetsAndCornerRadiusEnabled))
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_includesSafeAreaInsetWhenInset) == 1)
    {
      if ((v8[53] & 1) == 0)
      {
        sub_189107CF8();
        Height = CGRectGetHeight(v17);
        v12 = _UIUnlerp(Height, 150.0, 76.0);
        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentCapsular) = _UIClamp_2(v12);
        v8[53] = 1;
      }
    }

    else
    {
      sub_189102880();
    }
  }

  v13 = v1;
  v14 = v3;
  v15 = v5;
  v16 = v7;
  if (v9)
  {
    CGRectGetMinY(*&v13);
  }

  else
  {
    CGRectGetMaxY(*&v13);
  }
}

void sub_189107510(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_188B8AD14(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v6[1] = v5;
  sub_18910DFB4(v6, a2 & 1);
  *a1 = v4;
}

uint64_t sub_189107608(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  sub_189103BFC();

  v5 = *&v4[*a3];

  return v5;
}

uint64_t sub_18910767C()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 31))
  {
    return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfActiveDetentForTappingGrabber);
  }

  sub_189103BFC();

  v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___numberOfActiveNonDismissDetents);
  sub_189103BFC();

  v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveDetent);
  v5 = __OFADD__(v4, v2);
  v6 = v4 + v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = __OFSUB__(v6, 1);
  v7 = v6 - 1;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 != 0x8000000000000000 || v2 != -1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfActiveDetentForTappingGrabber) = v7 % v2;
    *(v1 + 31) = 1;
    return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfActiveDetentForTappingGrabber);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_189107768()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 32) & 1) == 0)
  {
    sub_189103BFC();

    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___adjustedIndexOfCurrentActiveDetentForContainedFirstResponder);
    if (v2 == sub_18A4A2388())
    {
      v3 = sub_18910767C();
      sub_189103BFC();

      v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveDetent);
      v5 = v4 < v3;
      if (v4 == v3)
      {
        v6 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___grabberAction;
        v7 = 1;
      }

      else
      {
        v6 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___grabberAction;
        if (v5)
        {
          v7 = 2;
        }

        else
        {
          v7 = 3;
        }
      }

      *(v0 + v6) = v7;
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___grabberAction) = 0;
    }

    *(v1 + 32) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___grabberAction);
}

uint64_t sub_18910785C()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 33))
  {
    return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveOrDismissDetent);
  }

  if ((*v1 & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented))
    {
      v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
    }

    else
    {
      v2 = 0;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v2 & 1;
    *v1 = 1;
  }

  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) & 1) != 0 || (sub_189105BF0())
  {
    sub_189103BFC();

    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveDetent);
LABEL_13:
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveOrDismissDetent) = v3;
    v1[33] = 1;
    return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveOrDismissDetent);
  }

  v4 = sub_189103BFC();
  if (v4 >> 62)
  {
    v5 = sub_18A4A7F68();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v5 - 1;
  if (!__OFSUB__(v5, 1))
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1891079B0()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 34) & 1) == 0)
  {
    if (sub_1891050DC())
    {
      if (sub_189105BF0())
      {
        [*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics) topOffset];
LABEL_13:
        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___rubberBandExtentBeyondMinimumOffset) = v2;
        *(v1 + 34) = 1;
        return;
      }

      v12.origin.x = sub_189105F9C();
      v10 = CGRectGetHeight(v12) * 0.25;
      v11 = 200.0;
LABEL_12:
      v2 = _UIClamp_0(0.0, v10, v11);
      goto LABEL_13;
    }

    MinY = CGRectGetMinY(*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds));
    v4 = sub_189103BFC();
    v5 = v4;
    if (v4 >> 62)
    {
      if (sub_18A4A7F68())
      {
LABEL_7:
        if ((v5 & 0xC000000000000001) == 0)
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v6 = *(v5 + 32);
          goto LABEL_10;
        }

LABEL_17:
        v6 = sub_188E4B080(0, v5);
LABEL_10:
        v7 = v6;

        [v7 _value];
        v9 = v8;

        v10 = MinY + v9 - *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
        v11 = 100.0;
        goto LABEL_12;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_17;
  }
}

void sub_189107B64()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 35) & 1) == 0)
  {
    if ((sub_1891050DC() & 1) == 0)
    {
      if (sub_189105BF0())
      {
        [*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics) topOffset];
LABEL_13:
        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___rubberBandExtentBeyondMaximumOffset) = v11;
        *(v1 + 35) = 1;
        return;
      }

      v12.origin.x = sub_189105F9C();
      v9 = CGRectGetHeight(v12) * 0.25;
      v10 = 200.0;
LABEL_12:
      v11 = _UIClamp_0(0.0, v9, v10);
      goto LABEL_13;
    }

    MaxY = CGRectGetMaxY(*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds));
    v3 = sub_189103BFC();
    v4 = v3;
    if (v3 >> 62)
    {
      if (sub_18A4A7F68())
      {
LABEL_5:
        if ((v4 & 0xC000000000000001) == 0)
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v5 = *(v4 + 32);
          goto LABEL_8;
        }

LABEL_17:
        v5 = sub_188E4B080(0, v4);
LABEL_8:
        v6 = v5;

        [v6 _value];
        v8 = v7;

        v9 = MaxY - v8 - *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 16);
        v10 = 100.0;
        goto LABEL_12;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_17;
  }
}

void sub_189107CF8()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 46))
  {
    return;
  }

  v2 = sub_189105BF0();
  v3 = sub_189105F9C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v2)
  {
    v10 = sub_1891064EC();
  }

  else
  {
    v10 = sub_18910518C();
  }

  v12 = v10;
  v13 = v11;
  if ((v1[17] & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
    v1[17] = 1;
  }

  v14 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached);
  v15 = sub_1891050DC();
  v16 = sub_18910673C();
  v17 = sub_189106B50();
  v18 = sub_189103BFC();
  sub_189103BFC();

  v19 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___smallestNonDismissDetentOffset);
  [*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) displayScale];
  v61 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
  v62 = v12;
  v63 = v17;
  v65 = v13;
  if ((v2 & 1) == 0)
  {
    if (v15)
    {
      v60 = v19;
      if (v14)
      {
        v21 = v20;

        v23 = INFINITY;
LABEL_21:
        v22 = v17 + _UIClamp_0(v60, v13, v23);
        goto LABEL_22;
      }

      if (v18 >> 62)
      {
        v56 = v20;
        v57 = sub_18A4A7F68();
        v20 = v56;
        if (v57)
        {
LABEL_17:
          if ((v18 & 0xC000000000000001) == 0)
          {
            if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v21 = v20;
              v25 = *(v18 + 32);
LABEL_20:
              v26 = v25;

              [v26 _value];
              v23 = v27;

              goto LABEL_21;
            }

            __break(1u);
LABEL_57:
            __break(1u);
            return;
          }

LABEL_54:
          v21 = v20;
          v25 = sub_188E4B080(0, v18);
          goto LABEL_20;
        }
      }

      else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      if (v14)
      {
        v21 = v20;

        v24 = -INFINITY;
        goto LABEL_29;
      }

      v60 = v19;
      if (!(v18 >> 62))
      {
        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        goto LABEL_25;
      }
    }

    v58 = v20;
    v59 = sub_18A4A7F68();
    v20 = v58;
    if (!v59)
    {
      goto LABEL_53;
    }

LABEL_25:
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = v20;
      v29 = sub_188E4B080(0, v18);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v21 = v20;
      v29 = *(v18 + 32);
    }

    v30 = v29;

    [v30 _value];
    v32 = v31;

    v24 = v32;
    v19 = v60;
LABEL_29:
    v22 = v17 + _UIClamp_0(v24, v13, v19);
LABEL_30:
    v67.origin.x = v3;
    v67.origin.y = v5;
    v67.size.width = v7;
    v67.size.height = v9;
    v28 = v22 - CGRectGetMinY(v67);
    goto LABEL_31;
  }

  v21 = v20;

  v22 = v13 + v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_22:
  v66.origin.x = v3;
  v66.origin.y = v5;
  v66.size.width = v7;
  v66.size.height = v9;
  v28 = CGRectGetMaxY(v66) - v22;
LABEL_31:
  v33 = v9;
  v34 = v5;
  v35 = v3;
  if (v16)
  {
    v36 = v61;
  }

  else
  {
    v36 = 0.0;
  }

  v68.origin.x = v35;
  v68.origin.y = v34;
  v68.size.width = v7;
  v68.size.height = v33;
  Height = CGRectGetHeight(v68);
  UIRoundToScale(Height - v28, v21);
  v39 = v38;
  v69.origin.x = v35;
  v69.origin.y = v34;
  v69.size.width = v7;
  v69.size.height = v33;
  MinX = CGRectGetMinX(v69);
  if (v15)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0.0;
  }

  v42 = v62 + MinX;
  UIRoundToScale(v65 + v63 - v36 - v41, v21);
  v44 = v43;
  v64 = v33;
  v70.origin.x = v35;
  v70.origin.y = v34;
  v70.size.width = v7;
  v70.size.height = v33;
  Width = CGRectGetWidth(v70);
  v46 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___untransformedFrame;
  *v46 = v42;
  *(v46 + 8) = v44;
  *(v46 + 16) = Width;
  *(v46 + 24) = v36 + v39;
  v47 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame);
  v48 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 8);
  v49 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 16);
  v50 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 24);
  if ((*v1 & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented))
    {
      v51 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
    }

    else
    {
      v51 = 0;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v51 & 1;
    *v1 = 1;
  }

  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDragging) & 1) == 0)
  {
    v71.origin.x = v47;
    v71.origin.y = v48;
    v71.size.width = v49;
    v71.size.height = v50;
    if (!CGRectIsNull(v71))
    {
      v72.origin.x = v47;
      v72.origin.y = v48;
      v72.size.width = v49;
      v72.size.height = v50;
      v52 = CGRectGetMinX(v72);
      v73.size.height = v64;
      v73.origin.x = v35;
      v73.origin.y = v34;
      v73.size.width = v7;
      *v46 = *v46 + v52 - CGRectGetMinX(v73);
      v53 = sub_1891050DC();
      v54 = 0.0;
      if (v53)
      {
        v55 = CGRectGetHeight(*v46);
        v74.origin.x = v47;
        v74.origin.y = v48;
        v74.size.width = v49;
        v74.size.height = v50;
        v54 = v55 - CGRectGetHeight(v74);
      }

      *(v46 + 8) = v54 + *(v46 + 8);
      *(v46 + 16) = v49;
      *(v46 + 24) = v50;
    }
  }

  v1[46] = 1;
}

double sub_1891081FC()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 48) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) == 1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
      v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
      v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
    }

    else
    {
      sub_189107CF8();
    }

    v6 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame);
    *v6 = v2;
    v6[1] = v3;
    v6[2] = v4;
    v6[3] = v5;
    *(v1 + 48) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame);
}

void sub_1891082A8()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 49))
  {
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) == 1)
  {
    if ((v1[29] & 1) == 0)
    {
      v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
      v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
      v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
      v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame);
      v7 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 8);
      v8 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 16);
      v9 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 24);
      v10 = sub_1891050DC();
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset) = _UISheetDismissOffset(v10 & 1, v2, v3, v4, v5, v6, v7, v8, v9);
      v1[29] = 1;
    }

    v11 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset);
  }

  else
  {
    sub_18910640C();
    v11 = v12;
  }

  if ((v1[17] & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
    v1[17] = 1;
  }

  v13 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached);
  v14 = sub_189105BF0();
  v15 = sub_1891050DC();
  v16 = sub_18910673C();
  v17 = sub_189106B50();
  v18 = sub_189103BFC();
  sub_189103BFC();

  v19 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___smallestNonDismissDetentOffset);
  [*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) displayScale];
  v53 = v20;
  v21 = sub_189105F9C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
  v54 = v17;
  if ((v14 & 1) == 0)
  {
    if (v15)
    {
      v51 = v19;
      if (v13)
      {

        v30 = INFINITY;
LABEL_23:
        v29 = v17 + _UIClamp_0(v51, v11, v30);
        goto LABEL_24;
      }

      if (v18 >> 62)
      {
        if (sub_18A4A7F68())
        {
LABEL_19:
          if ((v18 & 0xC000000000000001) == 0)
          {
            if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v32 = *(v18 + 32);
LABEL_22:
              v33 = v32;

              [v33 _value];
              v30 = v34;

              goto LABEL_23;
            }

            __break(1u);
LABEL_48:
            __break(1u);
            return;
          }

LABEL_45:
          v32 = sub_188E4B080(0, v18);
          goto LABEL_22;
        }
      }

      else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    else
    {
      if (v13)
      {

        v31 = -INFINITY;
        goto LABEL_31;
      }

      if (!(v18 >> 62))
      {
        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        goto LABEL_27;
      }
    }

    if (!sub_18A4A7F68())
    {
      goto LABEL_44;
    }

LABEL_27:
    v52 = v19;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v36 = sub_188E4B080(0, v18);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v36 = *(v18 + 32);
    }

    v37 = v36;

    [v37 _value];
    v39 = v38;

    v31 = v39;
    v19 = v52;
LABEL_31:
    v29 = v17 + _UIClamp_0(v31, v11, v19);
LABEL_32:
    v56.origin.x = v21;
    v56.origin.y = v23;
    v56.size.width = v25;
    v56.size.height = v27;
    v35 = v29 - CGRectGetMinY(v56);
    goto LABEL_33;
  }

  v29 = v11 + v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  v55.origin.x = v21;
  v55.origin.y = v23;
  v55.size.width = v25;
  v55.size.height = v27;
  v35 = CGRectGetMaxY(v55) - v29;
LABEL_33:
  if (v16)
  {
    v40 = v28;
  }

  else
  {
    v40 = 0.0;
  }

  v57.origin.x = v21;
  v57.origin.y = v23;
  v57.size.width = v25;
  v57.size.height = v27;
  Height = CGRectGetHeight(v57);
  UIRoundToScale(Height - v35, v53);
  v43 = v42;
  v58.origin.x = v21;
  v58.origin.y = v23;
  v58.size.width = v25;
  v58.size.height = v27;
  MinX = CGRectGetMinX(v58);
  if (v15)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0.0;
  }

  v46 = MinX + 0.0;
  UIRoundToScale(v11 + v54 - v40 - v45, v53);
  v48 = v47;
  v59.origin.x = v21;
  v59.origin.y = v23;
  v59.size.width = v25;
  v59.size.height = v27;
  Width = CGRectGetWidth(v59);
  v50 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___frameOfPresentedViewInContainerView;
  *v50 = v46;
  *(v50 + 8) = v48;
  *(v50 + 16) = Width;
  *(v50 + 24) = v40 + v43;
  v1[49] = 1;
}

void sub_189108768()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 29) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
    v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
    v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
    v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame);
    v7 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 8);
    v8 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 16);
    v9 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 24);
    v10 = sub_1891050DC();
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset) = _UISheetDismissOffset(v10 & 1, v2, v3, v4, v5, v6, v7, v8, v9);
    *(v1 + 29) = 1;
  }

  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) != 1)
  {
    v49 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset);
    if ((*(v1 + 17) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
      *(v1 + 17) = 1;
    }

    v11 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached);
    v12 = sub_189105BF0();
    v13 = sub_1891050DC();
    v14 = sub_18910673C();
    v15 = sub_189106B50();
    v16 = sub_189103BFC();
    sub_189103BFC();

    v17 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___smallestNonDismissDetentOffset);
    [*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) displayScale];
    v19 = v18;
    v20 = sub_189105F9C();
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v28 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
    if (v12)
    {
      v29 = v19;

      v30 = v49 + v15;
      if ((v13 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_21:
      v50.origin.x = v24;
      v50.origin.y = v25;
      v50.size.width = v26;
      v50.size.height = v27;
      v38 = CGRectGetMaxY(v50) - v30;
LABEL_30:
      if ((v14 & 1) == 0)
      {
        v28 = 0.0;
      }

      v52.origin.x = v24;
      v52.origin.y = v25;
      v52.size.width = v26;
      v52.size.height = v27;
      Height = CGRectGetHeight(v52);
      UIRoundToScale(Height - v38, v29);
      v45 = v44;
      v53.origin.x = v24;
      v53.origin.y = v25;
      v53.size.width = v26;
      v53.size.height = v27;
      CGRectGetMinX(v53);
      if (v13)
      {
        v46 = v45;
      }

      else
      {
        v46 = 0.0;
      }

      UIRoundToScale(v49 + v15 - v28 - v46, v29);
      v54.origin.x = v24;
      v54.origin.y = v25;
      v54.size.width = v26;
      v54.size.height = v27;
      CGRectGetWidth(v54);
      return;
    }

    v48 = v17;
    if (v13)
    {
      v47 = v23;
      if (v11)
      {
        v29 = v19;
        v27 = v22;
        v31 = v21;
        v32 = v20;

        v33 = INFINITY;
LABEL_20:
        v30 = v15 + _UIClamp_0(v48, v49, v33);
        v24 = v32;
        v25 = v31;
        v26 = v27;
        v27 = v47;
        goto LABEL_21;
      }

      if (v16 >> 62)
      {
        if (sub_18A4A7F68())
        {
LABEL_16:
          v27 = v26;
          if ((v16 & 0xC000000000000001) == 0)
          {
            if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v31 = v25;
              v32 = v24;
              v35 = *(v16 + 32);
LABEL_19:
              v36 = v35;
              v29 = v19;

              [v36 _value];
              v33 = v37;

              goto LABEL_20;
            }

            __break(1u);
LABEL_43:
            __break(1u);
            return;
          }

LABEL_40:
          v31 = v25;
          v32 = v24;
          v35 = sub_188E4B080(0, v16);
          goto LABEL_19;
        }
      }

      else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else
    {
      if (v11)
      {
        v29 = v19;

        v34 = -INFINITY;
        goto LABEL_28;
      }

      if (!(v16 >> 62))
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        goto LABEL_24;
      }
    }

    if (!sub_18A4A7F68())
    {
      goto LABEL_39;
    }

LABEL_24:
    if ((v16 & 0xC000000000000001) != 0)
    {
      v29 = v19;
      v39 = sub_188E4B080(0, v16);
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v29 = v19;
      v39 = *(v16 + 32);
    }

    v40 = v39;

    [v40 _value];
    v42 = v41;

    v34 = v42;
LABEL_28:
    v30 = v15 + _UIClamp_0(v34, v49, v48);
LABEL_29:
    v51.origin.x = v24;
    v51.origin.y = v25;
    v51.size.width = v26;
    v51.size.height = v27;
    v38 = v30 - CGRectGetMinY(v51);
    goto LABEL_30;
  }
}

double sub_189108BCC()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 51) & 1) == 0)
  {
    sub_189107CF8();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    if ((*(v1 + 48) & 1) == 0)
    {
      if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting))
      {
        v10 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
        v11 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
        v12 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
        v13 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
      }

      else
      {
        sub_189107CF8();
      }

      v14 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame);
      *v14 = v10;
      v14[1] = v11;
      v14[2] = v12;
      v14[3] = v13;
      *(v1 + 48) = 1;
    }

    v15 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame);
    v16 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame + 8);
    v17 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame + 16);
    v18 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame + 24);
    v30.origin.x = v3;
    v30.origin.y = v5;
    v30.size.width = v7;
    v30.size.height = v9;
    v26 = v3;
    MinY = CGRectGetMinY(v30);
    v31.origin.x = v15;
    v31.origin.y = v16;
    v31.size.width = v17;
    v31.size.height = v18;
    v29 = MinY - CGRectGetMinY(v31);
    v32.origin.x = v3;
    v32.origin.y = v5;
    v32.size.width = v7;
    v32.size.height = v9;
    MinX = CGRectGetMinX(v32);
    v33.origin.x = v15;
    v33.origin.y = v16;
    v33.size.width = v17;
    v33.size.height = v18;
    v27 = MinX - CGRectGetMinX(v33);
    v34.origin.x = v15;
    v34.origin.y = v16;
    v34.size.width = v17;
    v34.size.height = v18;
    MaxY = CGRectGetMaxY(v34);
    v35.origin.x = v26;
    v35.origin.y = v5;
    v35.size.width = v7;
    v35.size.height = v9;
    v25 = MaxY - CGRectGetMaxY(v35);
    v36.origin.x = v15;
    v36.origin.y = v16;
    v36.size.width = v17;
    v36.size.height = v18;
    MaxX = CGRectGetMaxX(v36);
    v37.origin.x = v26;
    v37.origin.y = v5;
    v37.size.width = v7;
    v37.size.height = v9;
    v21 = CGRectGetMaxX(v37);
    v22 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___touchInsets);
    *v22 = v29;
    v22[1] = v27;
    v22[2] = v25;
    v22[3] = MaxX - v21;
    *(v1 + 51) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___touchInsets);
}

double sub_189108DF4()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 52) & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection);
      v5 = v3;
      v6 = v4;
      v7 = sub_18919A3F8(v6);
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E698E668]) initWithCornerRadius_];
    }

    v8 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics);
    [v8 cornerRadius];
    v10 = v9;
    [v8 cornerRadius];
    v103 = v11;
    sub_18910518C();
    v13 = v12;
    v14 = sub_1891030D8();
    v15 = sub_1891062C0();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = sub_189106B50();
    v105.origin.x = v15;
    v105.origin.y = v17;
    v105.size.width = v19;
    v105.size.height = v21;
    MaxY = CGRectGetMaxY(v105);
    v24 = 0.0;
    if (MaxY != 0.0)
    {
      v24 = _UIClamp_2((v13 + v22 - v14) / (MaxY - v14));
    }

    if ((v2[53] & 1) == 0)
    {
      sub_189107CF8();
      Height = CGRectGetHeight(v106);
      v26 = _UIUnlerp(Height, 150.0, 76.0);
      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentCapsular) = _UIClamp_2(v26);
      v2[53] = 1;
    }

    v27 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentCapsular);
    v28 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v28)
    {
      v29 = v28;
      v30 = sub_189108DF4();
      v97 = v31;
      v33 = v32;
      v35 = v34;
    }

    else
    {
      v30 = 0.0;
      v97 = 0.0;
      v33 = 0.0;
      v35 = 0.0;
    }

    v100 = v24;
    if (sub_1890FF470())
    {
      [v7 bottomLeft];
      v37 = v36;
      if ((v2[5] & 1) == 0)
      {
        v38 = sub_1891025BC();
        v39 = 1;
        if ((v38 & 1) == 0)
        {
          if (sub_189102778())
          {
            sub_189102880();
            v39 = v40 == 0.0;
          }

          else
          {
            v39 = 0;
          }
        }

        *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isCovered) = v39;
        v2[5] = 1;
      }

      if (!v28 || (v10 = v30, v42 = v97, (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isCovered) & 1) == 0))
      {
        if ((v2[17] & 1) == 0)
        {
          *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v1) & 1;
          v2[17] = 1;
        }

        v42 = fmax(v37 - v24 * 28.0 * 0.5, 20.0);
        if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) == 1)
        {
          v10 = _UILerp_1(v27, 38.0, v42);
        }

        else
        {
          v10 = v42;
          if (!*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_horizontalAlignment))
          {
            if (qword_1EA931EE8 != -1)
            {
              swift_once();
            }

            v10 = *&qword_1EA93D070;
            v42 = *&qword_1EA93D070;
          }
        }
      }

      v41 = v42;
      if (v42 != 1.79769313e308 && *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented) == 1)
      {
        sub_189107CF8();
        if (CGRectGetHeight(v107) <= v42 + v42)
        {
          sub_189107CF8();
          v41 = CGRectGetHeight(v108) * 0.5;
          v10 = v41;
        }
      }
    }

    else
    {
      v41 = v103;
    }

    if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_prefersSymmetricCorners))
    {
      v43 = v41;
    }

    else
    {
      v43 = v10;
    }

    v96 = sub_1891057D0();
    v104 = sub_189105DD8();
    v99 = sub_189106CDC();
    v44 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_preferredCornerRadius);
    if (v44 == 1.79769313e308)
    {
      v45 = v41;
    }

    else
    {
      v45 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_preferredCornerRadius);
    }

    if (v44 == 1.79769313e308)
    {
      v46 = v43;
    }

    else
    {
      v46 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_preferredCornerRadius);
    }

    v47 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissCornerRadius);
    if (v47 == 1.79769313e308)
    {
      v48 = v45;
    }

    else
    {
      v48 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissCornerRadius);
    }

    if (v47 == 1.79769313e308)
    {
      v47 = v46;
    }

    v101 = v48;
    v102 = v47;
    v95 = v45;
    if (v28)
    {
      [v7 topLeft];
      v50 = 1.79769313e308;
      if (v30 == 1.79769313e308)
      {
        v51 = v49;
      }

      else
      {
        v51 = v30;
      }

      v52 = v35;
      v53 = CGFloatMax(v43, v51);
      [v7 bottomLeft];
      v55 = v97;
      if (v97 == 1.79769313e308)
      {
        v55 = v54;
      }

      v56 = CGFloatMax(v41, v55);
      [v7 bottomRight];
      if (v33 == 1.79769313e308)
      {
        v58 = v57;
      }

      else
      {
        v58 = v33;
      }

      v59 = CGFloatMax(v41, v58);
      [v7 topRight];
      if (v52 == 1.79769313e308)
      {
        v61 = v60;
      }

      else
      {
        v61 = v52;
      }

      v62 = CGFloatMax(v43, v61);
    }

    else
    {
      v50 = 1.79769313e308;
      v53 = v46;
      v56 = v45;
      v59 = v45;
      v62 = v46;
    }

    v63 = _UILerp_1(0.5, v53, v43);
    v64 = _UILerp_1(0.5, v56, v41);
    v65 = _UILerp_1(0.5, v59, v41);
    v66 = _UILerp_1(0.5, v62, v43);
    v67 = _UIClamp_2(v96);
    v98 = _UILerp_1(v67, v46, v63);
    v68 = _UILerp_1(v67, v95, v64);
    v69 = _UILerp_1(v67, v95, v65);
    v70 = _UILerp_1(v67, v46, v66);
    sub_189107CF8();
    Width = CGRectGetWidth(v109);
    if (Width == CGRectGetWidth(*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds)))
    {
      v72 = 1.79769313e308;
    }

    else
    {
      v72 = 0.0;
    }

    if (v100 == 0.0 && v96 == 0.0)
    {
      v73 = v68;
      v74 = v70;
      if ((v2[17] & 1) == 0)
      {
        *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v1) & 1;
        v2[17] = 1;
      }

      v75 = v98;
      if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) == 1)
      {
        v76 = sub_1891050DC();
        if (v76)
        {
          v74 = v72;
        }

        else
        {
          v69 = v72;
        }

        if (v76)
        {
          v75 = v72;
        }

        else
        {
          v73 = v72;
        }
      }

      if (sub_18910673C())
      {
        v77 = sub_1891050DC();
        if (v77)
        {
          v69 = v72;
        }

        else
        {
          v74 = v72;
        }

        if (v77)
        {
          v73 = v72;
        }

        else
        {
          v75 = v72;
        }
      }
    }

    else
    {
      v73 = v68;
      v74 = v70;
      v75 = v98;
    }

    [v7 topLeft];
    v79 = v78;
    v80 = 1.79769313e308;
    if (v75 != 1.79769313e308)
    {
      v80 = 1.79769313e308;
      if (v104 != 1.0)
      {
        v80 = _UILerp_1(v104, v75, v78);
      }
    }

    if (v80 != 1.79769313e308 || (v81 = 1.79769313e308, v80 = v79, v99 != 1.0))
    {
      v81 = _UILerp_1(v99, v102, v80);
    }

    [v7 bottomLeft];
    v83 = v82;
    v84 = 1.79769313e308;
    if (v73 != 1.79769313e308)
    {
      v84 = 1.79769313e308;
      if (v104 != 1.0)
      {
        v84 = _UILerp_1(v104, v73, v82);
      }
    }

    if (v84 != 1.79769313e308 || (v85 = 1.79769313e308, v84 = v83, v99 != 1.0))
    {
      v85 = _UILerp_1(v99, v101, v84);
    }

    [v7 bottomRight];
    v87 = v86;
    v88 = 1.79769313e308;
    if (v69 != 1.79769313e308)
    {
      v88 = 1.79769313e308;
      if (v104 != 1.0)
      {
        v88 = _UILerp_1(v104, v69, v86);
      }
    }

    if (v88 != 1.79769313e308 || (v89 = 1.79769313e308, v88 = v87, v99 != 1.0))
    {
      v89 = _UILerp_1(v99, v101, v88);
    }

    [v7 topRight];
    v91 = v90;
    v92 = 1.79769313e308;
    if (v74 != 1.79769313e308)
    {
      v92 = 1.79769313e308;
      if (v104 != 1.0)
      {
        v92 = _UILerp_1(v104, v74, v90);
      }
    }

    if (v92 == 1.79769313e308 && (v92 = v91, v99 == 1.0))
    {
    }

    else
    {

      v50 = _UILerp_1(v99, v102, v92);
    }

    v93 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___cornerRadii);
    *v93 = v81;
    v93[1] = v85;
    v93[2] = v89;
    v93[3] = v50;
    v2[52] = 1;
  }

  return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___cornerRadii);
}

double sub_18910968C(void *a1, uint64_t a2, double (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  return v5;
}

double sub_1891096F0()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 54) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) == 1)
    {
      v2 = signpost_c2_entryLock_start(1.79769313e308, 1.79769313e308);
    }

    else
    {
      v2 = sub_189108DF4();
    }

    v6 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedCornerRadii;
    *v6 = v2;
    *(v6 + 8) = v3;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    *(v1 + 54) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedCornerRadii);
}

double sub_1891097A4(void *a1, uint64_t a2, double (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  return v5;
}

double sub_189109808()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 47) & 1) == 0)
  {
    sub_189107CF8();
    Center = UIRectGetCenter(v2, v3, v4);
    v25 = v5;
    sub_189107CF8();
    v22 = v7;
    v23 = v6;
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    if ((*(v1 + 55) & 1) == 0)
    {
      sub_18910518C();
      sub_1891030D8();
      sub_18910FC44(v27);
      v10 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform);
      v11 = v27[1];
      *v10 = v27[0];
      v10[1] = v11;
      v10[2] = v27[2];
      *(v1 + 55) = 1;
    }

    v13 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform + 8);
    v14 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform + 16);
    v15 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform + 24);
    v16 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform + 32);
    v17 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform + 40);
    v26.a = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform);
    a = v26.a;
    v26.b = v13;
    v26.c = v14;
    v26.d = v15;
    v26.tx = v16;
    v26.ty = v17;
    v28.x = v8;
    v28.y = v9;
    v18 = CGPointApplyAffineTransform(v28, &v26);
    v26.a = a;
    v26.b = v13;
    v26.c = v14;
    v26.d = v15;
    v26.tx = v16;
    v26.ty = v17;
    v29.height = v22;
    v29.width = v23;
    v19 = CGSizeApplyAffineTransform(v29, &v26);
    v20 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transformedFrame);
    v20->width = Center + v18.x - v19.width * 0.5;
    v20->height = v25 + v18.y - v19.height * 0.5;
    v20[1] = v19;
    *(v1 + 47) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transformedFrame);
}

__n128 sub_189109964@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 55) & 1) == 0)
  {
    sub_18910518C();
    sub_1891030D8();
    sub_18910FC44(v9);
    v4 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform);
    v5 = v9[1];
    *v4 = v9[0];
    v4[1] = v5;
    v4[2] = v9[2];
    *(v3 + 55) = 1;
  }

  v6 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform);
  v7 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform);
  *(a1 + 16) = v7;
  result = v6[2];
  *(a1 + 32) = result;
  return result;
}

__n128 sub_189109A0C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 50) & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) == 1)
    {
      if ((*(v3 + 29) & 1) == 0)
      {
        v4 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
        v5 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
        v6 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
        v7 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
        v8 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame);
        v9 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 8);
        v10 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 16);
        v11 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 24);
        v12 = sub_1891050DC();
        *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset) = _UISheetDismissOffset(v12 & 1, v4, v5, v6, v7, v8, v9, v10, v11);
        *(v3 + 29) = 1;
      }
    }

    else
    {
      sub_18910640C();
    }

    sub_1891030D8();
    sub_18910FC44(v18);
    v13 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transformOfPresentedViewInContainerView);
    v14 = v18[1];
    *v13 = v18[0];
    v13[1] = v14;
    v13[2] = v18[2];
    *(v3 + 50) = 1;
  }

  v15 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transformOfPresentedViewInContainerView);
  v16 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transformOfPresentedViewInContainerView + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transformOfPresentedViewInContainerView);
  *(a1 + 16) = v16;
  result = v15[2];
  *(a1 + 32) = result;
  return result;
}

double sub_189109B5C@<D0>(void *a1@<X0>, void (*a2)(_OWORD *__return_ptr)@<X2>, _OWORD *a3@<X8>)
{
  v5 = a1;
  a2(v9);

  result = *v9;
  v7 = v9[1];
  v8 = v9[2];
  *a3 = v9[0];
  a3[1] = v7;
  a3[2] = v8;
  return result;
}

void sub_189109BB8()
{
  v3 = v0;
  v4 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 56))
  {
    return;
  }

  sub_189103BFC();

  v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfActiveDimmingDetent);
  v6 = 0.0;
  v7 = 0.0;
  if (v5 != sub_18A4A2388())
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
    }

    else
    {
      v9 = sub_189103BFC();
      v0 = v9;
      v2 = v9 & 0xC000000000000001;
      if ((v9 & 0xC000000000000001) == 0)
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_19;
        }

        if (v5 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v10 = *(v9 + 8 * v5 + 32);
LABEL_8:
        v11 = v10;
        v1 = &selRef__updateSingleLayerNoMaskFromLayerStack;
        [v10 _value];
        v7 = v12;

        if (!(v0 >> 62))
        {
          if (v8 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_10;
          }

          goto LABEL_20;
        }

LABEL_19:
        if (v8 < sub_18A4A7F68())
        {
LABEL_10:
          if (v2)
          {
            v13 = sub_188E4B080(v8, v0);
LABEL_15:
            v14 = v13;

            [v14 v1[466]];
            v16 = v15;

LABEL_23:
            sub_18910518C();
            v25 = _UIUnlerp(v24, v16, v7);
            v7 = _UIClamp_2(v25);
            goto LABEL_24;
          }

          if ((v8 & 0x8000000000000000) == 0)
          {
            if (v8 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v13 = *(v0 + 8 * v8 + 32);
              goto LABEL_15;
            }

LABEL_33:
            __break(1u);
            return;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_20:

        if ((*(v4 + 29) & 1) == 0)
        {
          v29 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
          v30 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
          v17 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
          v18 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
          v19 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame);
          v20 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 8);
          v21 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 16);
          v22 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 24);
          v23 = sub_1891050DC();
          *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset) = _UISheetDismissOffset(v23 & 1, v30, v29, v17, v18, v19, v20, v21, v22);
          *(v4 + 29) = 1;
        }

        v16 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset);
        goto LABEL_23;
      }
    }

    v10 = sub_188E4B080(v5, v0);
    goto LABEL_8;
  }

LABEL_24:
  v26 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
  if (v26)
  {
    v27 = v26;
    v6 = sub_189109BB8();
  }

  if (sub_1891025BC() & 1 | (v7 <= v6))
  {
    v28 = v6;
  }

  else
  {
    v28 = v7;
  }

  *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentDimmedFromOffset) = v28;
  *(v4 + 56) = 1;
}

double sub_189109E94()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57))
  {
    return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentDimmed);
  }

  if (([*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics) wantsDimming] & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentDimmed) = 0;
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___confinedPercentDimmed) = 0;
    goto LABEL_38;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (!Strong)
  {
    sub_189109BB8();
    v8 = v15;
    v6 = 0.0;
    goto LABEL_20;
  }

  v5 = Strong;
  v6 = sub_189105DD8();

  sub_189109BB8();
  v8 = v7;
  v9 = v5;
  if ((sub_189102778() & 1) == 0)
  {

    if (v6 == 1.0)
    {
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentDimmed) = 0;
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___confinedPercentDimmed) = v8;
      v16 = 0.0;
      v6 = 1.0;
      if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) & 1) == 0)
      {
        v17 = sub_189105DD8() == 1.0;
        v16 = 0.0;
        if (!v17)
        {
          v16 = v8;
        }
      }

      goto LABEL_29;
    }

LABEL_20:
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentDimmed) = v8;
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___confinedPercentDimmed) = 0;
    v18 = 0.0;
    v19 = 0.0;
    if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) & 1) == 0)
    {
      v17 = sub_189105DD8() == 1.0;
      v19 = 0.0;
      if (!v17)
      {
        v19 = v8;
      }
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___magicShadowOpacity) = v19;
    if (!v4)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentDimmed) = 0;
  if (v6 != 1.0)
  {
    goto LABEL_46;
  }

  if ((*(v2 + 17) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
    *(v2 + 17) = 1;
  }

  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) == 1 && sub_1891055AC())
  {
LABEL_46:
    if ((sub_189102778() & 1) != 0 && (v10 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child)) != 0)
    {
      v11 = v10;
      sub_189109BB8();
      v13 = v12;

      v14 = v13 * 0.2;
    }

    else
    {

      v14 = 0.0;
    }

    v8 = v8 * 0.6 + v14;
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___confinedPercentDimmed) = v8;
  v16 = 0.0;
LABEL_29:
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___magicShadowOpacity) = v16;
LABEL_30:
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 traitCollection];

    if (v22)
    {
      if ([v22 userInterfaceStyle] == 2)
      {
        v23 = [v22 userInterfaceLevel];

        if (v23)
        {
          v18 = 0.0;
        }

        else
        {
          v18 = 1.0 - v6;
        }

        goto LABEL_39;
      }
    }
  }

LABEL_38:
  v18 = 0.0;
LABEL_39:
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___confinedPercentLightened) = v18;
  if (sub_1891102E0())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___magicShadowOpacity) = 0;
    }
  }

  *(v2 + 57) = 1;
  return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentDimmed);
}

double sub_18910A2F8()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 58) & 1) == 0)
  {
    sub_189109BB8();
    v3 = v2;
    if (sub_1891102E0())
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v4 = 0;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) == 1 || v4)
    {

      v5 = 0.0;
    }

    else
    {
      v7 = (1.0 - v3) * *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_preferredShadowOpacity);
      v5 = v7 * sub_189106CDC();
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___shadowOpacity) = v5;
    *(v1 + 58) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___shadowOpacity);
}

double sub_18910A420()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 59) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child;
    v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v4)
    {
      v5 = v4;
      v6 = sub_189106EE0();
    }

    else
    {
      v6 = 0;
    }

    v7 = [*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics) fadeOutIfAnyDescendantWantsFullScreen] & v6;
    v8 = *(v1 + v3);
    if (v8)
    {
      v9 = v8;
      if (([v9 _isTransitioning] & 1) == 0)
      {
        if (*(v2 + 5) == 1)
        {
        }

        else
        {
          if (sub_1891025BC())
          {

            v12 = 1;
          }

          else if (sub_189102778())
          {
            sub_189102880();
            v14 = v13;

            v12 = v14 == 0.0;
          }

          else
          {

            v12 = 0;
          }

          *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isCovered) = v12;
          *(v2 + 5) = 1;
        }

        v10 = 0.0;
        if ((v7 | *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isCovered)))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    v10 = 0.0;
    if (v7)
    {
LABEL_10:
      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___alpha) = v10;
      *(v2 + 59) = 1;
      return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___alpha);
    }

LABEL_9:
    v10 = 1.0;
    goto LABEL_10;
  }

  return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___alpha);
}

double sub_18910A5D0()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 66) & 1) == 0)
  {
    v3 = 0.0;
    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsGrabber) == 1 && (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) & 1) == 0)
    {
      v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v4)
      {
        v5 = v4;
        sub_189109BB8();
        v7 = v6;

        v3 = 1.0 - v7;
      }

      else
      {
        v3 = 1.0;
      }
    }

    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___grabberAlpha) = v3 * (1.0 - sub_189105DD8());
    *(v2 + 66) = 1;
  }

  return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___grabberAlpha);
}

id sub_18910A6A0()
{
  v0 = [objc_allocWithZone(_UIViewGlass) initWithVariant_];
  result = [v0 setFlexible_];
  qword_1EA930318 = v0;
  return result;
}

void sub_18910A6F4()
{
  v0 = [objc_allocWithZone(_UIViewGlass) initWithVariant_];
  [v0 setFlexible_];
  v1 = sub_18A4A7258();
  [v0 setSubvariant_];

  qword_1EA93D080 = v0;
}

id sub_18910A794(uint64_t a1, uint64_t a2, SEL *a3, void *a4)
{
  result = [objc_opt_self() *a3];
  *a4 = result;
  return result;
}

uint64_t sub_18910A850()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 60) & 1) == 0)
  {
    if ((*v1 & 1) == 0)
    {
      if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented))
      {
        v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
      }

      else
      {
        v2 = 0;
      }

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v2 & 1;
      *v1 = 1;
    }

    if (((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) & 1) != 0 || *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_presentsWithGesture) == 1) && (sub_189105DD8() != 1.0 || *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_allowsInteractiveDismissWhenFullScreen) == 1) && ((sub_189105BF0() & 1) == 0 || ((v3 = sub_189103BFC(), v3 >> 62) ? (v4 = sub_18A4A7F68()) : (v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v4 != 1)))
    {
      v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isZooming) ^ 1;
    }

    else
    {
      v5 = 0;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isInteractionEnabled) = v5 & 1;
    v1[60] = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isInteractionEnabled);
}

uint64_t sub_18910A9D4()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 61) & 1) == 0)
  {
    v2 = sub_1891050DC();
    v3 = 1;
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_prefersScrollingResizesWhenDetentDirectionIsDown);
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isScrollInteractionEnabled) = v3;
    *(v1 + 61) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isScrollInteractionEnabled);
}

uint64_t sub_18910AA74()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 62) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) == 1)
    {
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___shouldPresentedViewControllerControlStatusBarAppearance) = 0;
    }

    else
    {
      sub_189107CF8();
      x = v38.origin.x;
      y = v38.origin.y;
      width = v38.size.width;
      height = v38.size.height;
      MidX = CGRectGetMidX(v38);
      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.width = width;
      v39.size.height = height;
      MidY = CGRectGetMidY(v39);
      CGAffineTransformMakeTranslation(&v37, -MidX, -MidY);
      v8 = *&v37.a;
      v9 = *&v37.c;
      v10 = *&v37.tx;
      if ((*(v1 + 55) & 1) == 0)
      {
        v30 = *&v37.c;
        v32 = *&v37.a;
        v29 = *&v37.tx;
        sub_18910518C();
        sub_1891030D8();
        sub_18910FC44(&v37);
        v11 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform);
        v12 = *&v37.c;
        *v11 = *&v37.a;
        v11[1] = v12;
        v10 = v29;
        v9 = v30;
        v11[2] = *&v37.tx;
        v8 = v32;
        *(v1 + 55) = 1;
      }

      *&t1.a = v8;
      *&t1.c = v9;
      *&t1.tx = v10;
      v13 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform + 16);
      *&t2.a = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform);
      *&t2.c = v13;
      *&t2.tx = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform + 32);
      CGAffineTransformConcat(&v34, &t1, &t2);
      tx = v34.tx;
      ty = v34.ty;
      v31 = *&v34.c;
      v33 = *&v34.a;
      CGAffineTransformMakeTranslation(&t1, MidX, MidY);
      v16 = *&t1.a;
      v17 = *&t1.c;
      v18 = *&t1.tx;
      *&t1.a = v33;
      *&t1.c = v31;
      t1.tx = tx;
      t1.ty = ty;
      *&t2.a = v16;
      *&t2.c = v17;
      *&t2.tx = v18;
      CGAffineTransformConcat(&v34, &t1, &t2);
      t1 = v34;
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v41 = CGRectApplyAffineTransform(v40, &t1);
      MinY = CGRectGetMinY(v41);
      v20 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView);
      v21 = 0.0;
      if (v20)
      {
        v22 = [v20 window];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 windowScene];

          if (v24)
          {
            v25 = [v24 statusBarManager];

            if (v25)
            {
              [v25 defaultStatusBarHeight];
              v27 = v26;

              v21 = v27 * 0.5;
            }
          }
        }
      }

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___shouldPresentedViewControllerControlStatusBarAppearance) = MinY <= v21;
    }

    *(v1 + 62) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___shouldPresentedViewControllerControlStatusBarAppearance);
}

uint64_t sub_18910AD28()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 63) & 1) == 0)
  {
    if ((*(v1 + 17) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
      *(v1 + 17) = 1;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) != 1)
    {
      goto LABEL_10;
    }

    v2 = sub_1891050DC();
    sub_18910518C();
    v4 = v3;
    if (v2)
    {
      Height = CGRectGetHeight(*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds));
      sub_1891030D8();
      if (Height - v6 > v4)
      {
        goto LABEL_11;
      }
    }

    else if (v3 > sub_1891030D8())
    {
LABEL_11:
      v8 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDragging);
LABEL_13:
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___shouldDimmingIgnoreTouches) = v8;
      *(v1 + 63) = 1;
      return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___shouldDimmingIgnoreTouches);
    }

    v10.origin.x = sub_189105F9C();
    Width = CGRectGetWidth(v10);
    if (Width != CGRectGetWidth(*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds)))
    {
LABEL_10:
      if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shouldDismissWhenTappedOutside) == 1)
      {
        goto LABEL_11;
      }
    }

    v8 = 1;
    goto LABEL_13;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___shouldDimmingIgnoreTouches);
}

uint64_t sub_18910AE98()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 64) & 1) == 0)
  {
    sub_189103BFC();

    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfActiveDimmingDetent);
    if (v3 == sub_18A4A2388())
    {
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isModelDimmingEnabled) = 0;
    }

    else
    {
      sub_189103BFC();

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isModelDimmingEnabled) = v3 >= *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveDetent);
    }

    v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v4)
    {
      v5 = v4;
      v6 = sub_18910AE98();
    }

    else
    {
      v6 = 0;
    }

    if (sub_1891025BC())
    {
      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isModelDimmingEnabled) = v6 & 1;
      if ((v6 & 1) == 0)
      {
LABEL_10:
        v7 = 0;
LABEL_18:
        *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isModelDimmingEnabled) = v7;
        v2[64] = 1;
        return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isModelDimmingEnabled);
      }
    }

    else
    {
      v8 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isModelDimmingEnabled) | v6;
      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isModelDimmingEnabled) = v8 & 1;
      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    if ((*v2 & 1) == 0)
    {
      if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented))
      {
        v9 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
      }

      else
      {
        v9 = 0;
      }

      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v9 & 1;
      *v2 = 1;
    }

    v7 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented);
    goto LABEL_18;
  }

  return *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isModelDimmingEnabled);
}

uint64_t sub_18910B038()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 65) & 1) == 0)
  {
    sub_189109BB8();
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isDimmingEnabled) = v2 > 0.0;
    *(v1 + 65) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isDimmingEnabled);
}

void sub_18910B098()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child];
  v2 = v0;
  v3 = v2;
  if (v1)
  {
    do
    {
      v4 = v1;

      v1 = *&v4[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child];
      v3 = v4;
    }

    while (v1);
  }

  else
  {
    v4 = v2;
  }

  v15 = v4;
  v5 = v15;
  do
  {
    v6 = v5;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = v6;
      [v8 _sheetLayoutInfoPrelayout_];

      swift_unknownObjectRelease();
    }

    v5 = swift_unknownObjectWeakLoadStrong();
  }

  while (v5);
  for (i = v15; ; i = v14)
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = i;
      [v12 _sheetLayoutInfoLayout_];

      swift_unknownObjectRelease();
    }

    v14 = swift_unknownObjectWeakLoadStrong();

    if (!v14)
    {
      break;
    }
  }
}

id sub_18910B388()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
  v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
  v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
  v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
  v329 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
  v7 = sub_18A4A7258();

  v8 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
  v9 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 8);
  v10 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 16);
  v11 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 24);
  v12 = sub_18A4A7258();

  v13 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection);
  v14 = sub_18A4A7258();

  v15 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_additionalMinimumTopInset);
  v16 = sub_18A4A7258();

  *&v336[0] = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_mode);
  type metadata accessor for _UISheetMode(0);
  v17 = sub_18A4A8778();
  v18 = sub_18A4A7258();

  swift_unknownObjectRelease();
  v19 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame);
  v20 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame + 8);
  v21 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame + 16);
  v22 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame + 24);
  v23 = sub_18A4A7258();
  v24 = *MEMORY[0x1E695F050];
  v25 = *(MEMORY[0x1E695F050] + 16);
  v26 = *(MEMORY[0x1E695F050] + 24);
  v27 = v19;
  v28 = *(MEMORY[0x1E695F050] + 8);

  v29 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_horizontalAlignment);
  v30 = sub_18A4A7258();

  v31 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_marginInCompactHeight);
  v32 = sub_18A4A7258();

  v33 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_marginInRegularWidthRegularHeight);
  v34 = sub_18A4A7258();

  v35 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_tucksIntoUnsafeAreaInCompactHeight);
  v36 = sub_18A4A7258();

  v37 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_allowsAsymmetricVerticalMargins);
  v38 = sub_18A4A7258();

  v39 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_keyboardFrame);
  v40 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_keyboardFrame + 8);
  v42 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_keyboardFrame + 16);
  v41 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_keyboardFrame + 24);
  v43 = sub_18A4A7258();
  v331 = v24;
  v44 = v24;
  v45 = v28;

  v326 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen;
  v46 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen);
  v47 = sub_18A4A7258();

  v48 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsEdgeAttached);
  v49 = sub_18A4A7258();

  v50 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsEdgeAttachedInCompactHeight);
  v51 = sub_18A4A7258();

  v52 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_widthFollowsPreferredContentSizeWhenEdgeAttached);
  v53 = sub_18A4A7258();

  v327 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented;
  v54 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented);
  v55 = sub_18A4A7258();

  v56 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shouldScaleDownBehindDescendants);
  v57 = sub_18A4A7258();

  v58 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isReduceMotionEnabled);
  v59 = sub_18A4A7258();

  v328 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting;
  v60 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting);
  v61 = sub_18A4A7258();

  v62 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDismissible);
  v63 = sub_18A4A7258();

  sub_188A34624(0, &unk_1ED490400);

  v64 = sub_18A4A7518();

  v65 = sub_18A4A7258();

  v66 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_selectedDetentIdentifier);
  v67 = sub_18A4A7258();

  v68 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_standardAppearance);
  v69 = sub_18A4A7258();

  v70 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_edgeAttachedCompactHeightAppearance);
  v71 = sub_18A4A7258();

  v72 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_floatingAppearance);
  v73 = sub_18A4A7258();

  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sheetID + 8))
  {

    v74 = sub_18A4A7258();
  }

  else
  {
    v74 = 0;
  }

  v76 = sub_18A4A7258();
  [v2 appendString:v74 withName:v76 skipIfEmpty:1];

  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hiddenAncestorSheetID + 8))
  {

    v77 = sub_18A4A7258();
  }

  else
  {
    v77 = 0;
  }

  v78 = sub_18A4A7258();
  [v2 appendString:v77 withName:v78 skipIfEmpty:1];

  v79 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shouldDismissWhenTappedOutside);
  v80 = sub_18A4A7258();

  v81 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_allowsInteractiveDismissWhenFullScreen);
  v82 = sub_18A4A7258();

  v83 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_prefersScrollingResizesWhenDetentDirectionIsDown);
  v84 = sub_18A4A7258();

  v85 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge);
  v86 = sub_18A4A7258();

  v87 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_latestUserChosenOffset);
  v88 = sub_18A4A7258();

  v89 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsGrabber);
  v90 = sub_18A4A7258();

  v91 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_grabberSpacing);
  v92 = sub_18A4A7258();

  v93 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_insetsContentViewForGrabber);
  v94 = sub_18A4A7258();

  v95 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDragging);
  v96 = sub_18A4A7258();

  v97 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame);
  v98 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame);
  v99 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 8);
  v100 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 16);
  v101 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 24);
  v102 = sub_18A4A7258();

  v103 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissCornerRadius);
  v104 = sub_18A4A7258();

  v105 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_preferredCornerRadius);
  v106 = sub_18A4A7258();

  v107 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_preferredShadowOpacity);
  v108 = sub_18A4A7258();
  v109 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics);
  [v109 preferredShadowOpacity];

  v111 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shadowRadius);
  v112 = sub_18A4A7258();
  [v109 shadowRadius];

  sub_18910F8A4();

  sub_18905769C(v114);

  v115 = sub_18A4A7518();

  v116 = sub_18A4A7258();

  sub_18910F9D8();

  sub_18919A550(v117);

  v118 = sub_18A4A7798();

  v119 = sub_18A4A7258();

  LOBYTE(v118) = sub_1891025BC();
  v120 = sub_18A4A7258();

  v121 = sub_189102E04();
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v128 = sub_18A4A7258();

  v129 = sub_1891030D8();
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v136 = sub_18A4A7258();

  sub_189103490();
  v138 = v137;
  v140 = v139;
  v141 = sub_18A4A7258();

  sub_189102880();
  v143 = v142;
  v144 = sub_18A4A7258();

  sub_189102880();
  v146 = v145;
  v147 = sub_18A4A7258();

  LOBYTE(v147) = sub_189105340();
  v148 = sub_18A4A7258();

  v149 = sub_1891054B0();
  v150 = sub_18A4A7258();

  v151 = sub_1891057D0();
  v152 = sub_18A4A7258();

  LOBYTE(v152) = sub_1891055AC();
  v153 = sub_18A4A7258();

  v154 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 17) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
    v154[17] = 1;
  }

  v155 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached);
  v156 = sub_18A4A7258();

  LOBYTE(v155) = sub_189105CC0();
  v157 = sub_18A4A7258();

  if ((v154[22] & 1) == 0)
  {
    v158 = sub_189105CC0();
    v159 = 1;
    if ((v158 & 1) == 0)
    {
      v159 = *(v0 + v326);
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) = v159;
    v154[22] = 1;
  }

  v160 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen);
  v161 = sub_18A4A7258();

  v162 = sub_189105DD8();
  v163 = sub_18A4A7258();

  v164 = sub_189105E98();
  v166 = v165;
  v168 = v167;
  v170 = v169;
  v171 = sub_18A4A7258();

  v172 = sub_18910377C();
  v174 = v173;
  v176 = v175;
  v178 = v177;
  v179 = sub_18A4A7258();

  LOBYTE(v179) = sub_189102778();
  v180 = sub_18A4A7258();

  v181 = sub_189105F9C();
  v183 = v182;
  v185 = v184;
  v187 = v186;
  v188 = sub_18A4A7258();

  v189 = sub_1891062C0();
  v191 = v190;
  v193 = v192;
  v195 = v194;
  v196 = sub_18A4A7258();

  if ((v154[29] & 1) == 0)
  {
    v197 = *v329;
    v198 = v329[1];
    v199 = v329[2];
    v200 = v329[3];
    v201 = *v97;
    v202 = v97[1];
    v203 = v97[2];
    v204 = v97[3];
    v205 = sub_1891050DC();
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset) = _UISheetDismissOffset(v205 & 1, v197, v198, v199, v200, v201, v202, v203, v204);
    v154[29] = 1;
  }

  v206 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset);
  v207 = sub_18A4A7258();

  v208 = sub_18910FB40();
  v209 = sub_18A4A7258();

  sub_18910640C();
  v211 = v210;
  v212 = sub_18A4A7258();

  v213 = sub_18910518C();
  v215 = v214;
  v216 = sub_18A4A7258();

  v217 = sub_189106844();
  v218 = sub_18A4A7258();

  v219 = sub_189106B50();
  v220 = sub_18A4A7258();

  v221 = sub_189106CDC();
  v222 = sub_18A4A7258();

  if ((*v154 & 1) == 0)
  {
    if (*(v0 + v327))
    {
      v223 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
    }

    else
    {
      v223 = 0;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v223 & 1;
    *v154 = 1;
  }

  v224 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented);
  v225 = sub_18A4A7258();

  LOBYTE(v224) = sub_189106E34();
  v226 = sub_18A4A7258();

  LOBYTE(v224) = sub_189106EE0();
  v227 = sub_18A4A7258();

  sub_189103BFC();

  swift_beginAccess();
  sub_188A34624(0, &qword_1ED48FD80);

  v228 = sub_18A4A7518();

  v229 = sub_18A4A7258();

  sub_189103BFC();
  sub_188A34624(0, &unk_1ED48C6A0);
  v230 = sub_18A4A7518();

  v231 = sub_18A4A7258();

  sub_189103BFC();

  v232 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveDetent);
  v233 = sub_18A4A7258();

  sub_189103BFC();

  v234 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfActiveDimmingDetent);
  v235 = sub_18A4A7258();

  sub_189103BFC();

  v236 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___smallestNonDismissDetentOffset);
  v237 = sub_18A4A7258();

  sub_189103BFC();

  v238 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___numberOfActiveNonDismissDetents);
  v239 = sub_18A4A7258();

  v240 = sub_18910767C();
  v241 = sub_18A4A7258();

  *&v336[0] = sub_189107768();
  type metadata accessor for _UISheetGrabberAction(0);
  v242 = sub_18A4A8778();
  v243 = sub_18A4A7258();

  swift_unknownObjectRelease();
  v244 = sub_18910785C();
  v245 = sub_18A4A7258();

  sub_1891079B0();
  v247 = v246;
  v248 = sub_18A4A7258();

  sub_189107B64();
  v250 = v249;
  v251 = sub_18A4A7258();

  sub_189107CF8();
  v253 = v252;
  v255 = v254;
  v257 = v256;
  v259 = v258;
  v260 = sub_18A4A7258();

  if ((v154[48] & 1) == 0)
  {
    if (*(v0 + v328))
    {
      v261 = *v329;
      v262 = *(v329 + 1);
      v263 = *(v329 + 2);
      v264 = *(v329 + 3);
    }

    else
    {
      sub_189107CF8();
    }

    v265 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame);
    *v265 = v261;
    *(v265 + 1) = v262;
    *(v265 + 2) = v263;
    *(v265 + 3) = v264;
    v154[48] = 1;
  }

  v266 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame);
  v267 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame + 8);
  v268 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame + 16);
  v269 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame + 24);
  v270 = sub_18A4A7258();

  sub_1891082A8();
  v272 = v271;
  v274 = v273;
  v276 = v275;
  v278 = v277;
  v279 = sub_18A4A7258();

  v280 = sub_189108BCC();
  v282 = v281;
  v284 = v283;
  v286 = v285;
  v287 = sub_18A4A7258();

  v288 = sub_189108DF4();
  v290 = v289;
  v292 = v291;
  v294 = v293;
  v295 = sub_18A4A7258();

  if ((v154[55] & 1) == 0)
  {
    sub_18910518C();
    sub_1891030D8();
    sub_18910FC44(v336);
    v296 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform);
    v297 = v336[1];
    *v296 = v336[0];
    v296[1] = v297;
    v296[2] = v336[2];
    v154[55] = 1;
  }

  v298 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform + 32);
  v299 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform + 40);
  v330 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform + 16);
  v332 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform);
  v300 = sub_18A4A7258();
  v333[0] = v332;
  v333[1] = v330;
  v334 = v298;
  v335 = v299;

  sub_189109BB8();
  v302 = v301;
  v303 = sub_18A4A7258();

  v304 = sub_189109E94();
  v305 = sub_18A4A7258();

  sub_189109E94();
  v306 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___confinedPercentDimmed);
  v307 = sub_18A4A7258();

  sub_189109E94();
  v308 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___magicShadowOpacity);
  v309 = sub_18A4A7258();

  v310 = sub_18910A2F8();
  v311 = sub_18A4A7258();

  v312 = sub_18910A420();
  v313 = sub_18A4A7258();

  v314 = sub_18910A5D0();
  v315 = sub_18A4A7258();

  LOBYTE(v315) = sub_18910A850();
  v316 = sub_18A4A7258();

  LOBYTE(v315) = sub_18910AA74();
  v317 = sub_18A4A7258();

  LOBYTE(v315) = sub_18910AD28();
  v318 = sub_18A4A7258();

  if ((v154[65] & 1) == 0)
  {
    sub_189109BB8();
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isDimmingEnabled) = v319 > 0.0;
    v154[65] = 1;
  }

  v320 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isDimmingEnabled);
  v321 = sub_18A4A7258();

  v322 = sub_18910673C();
  v323 = sub_18A4A7258();

  result = [v2 build];
  if (result)
  {
    v325 = result;
    v75 = sub_18A4A7288();

    return v75;
  }

  __break(1u);
  return result;
}

id sub_18910DA60()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    do
    {
      v3 = Strong;

      Strong = swift_unknownObjectWeakLoadStrong();
      v1 = v3;
    }

    while (Strong);
  }

  else
  {
    v3 = v1;
  }

  v4 = sub_18910B388();
  v11 = v4;
  v5 = *&v3[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child];
  v6 = v5;

  if (!v5)
  {
    return v4;
  }

  do
  {
    v7 = v6;
    MEMORY[0x18CFE22D0](10, 0xE100000000000000);
    v8 = sub_18910B388();
    MEMORY[0x18CFE22D0](v8);

    v9 = *&v7[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child];
    v6 = v9;
  }

  while (v9);
  return v11;
}

id sub_18910DB78(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_18A4A7258();

  return v5;
}

__n128 __swift_memcpy69_1(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18910DEF4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[69])
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

uint64_t sub_18910DF48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_18910DFB4(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v5 = sub_18A4A85F8();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_188A34624(0, &unk_1ED48C6A0);
        v8 = sub_18A4A75D8();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_18910E1E8(v10, v11, a1, v6, a2 & 1);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_18910E0D4(0, v4, 1, a1, a2 & 1);
  }
}

void sub_18910E0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v11 = v9;
    v22 = v8;
    while (1)
    {
      v12 = *v8;
      v13 = v10;
      v14 = v12;
      [v13 _value];
      v16 = v15;
      [v14 _value];
      v18 = v17;

      if (a5)
      {
        if (v18 >= v16)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v18)
      {
        goto LABEL_4;
      }

      if (!v7)
      {
        break;
      }

      v19 = *v8;
      v10 = *(v8 + 8);
      *v8 = v10;
      *(v8 + 8) = v19;
      v8 -= 8;
      if (__CFADD__(v11++, 1))
      {
LABEL_4:
        ++v6;
        v8 = v22 + 8;
        --v9;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_18910E1E8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v99 = v6;
      v100 = *(v9 + 2);
      if (v100 >= 2)
      {
        while (*a3)
        {
          v6 = v100 - 1;
          v101 = *&v9[16 * v100];
          v102 = *&v9[16 * v100 + 24];
          sub_18910E8B8((*a3 + 8 * v101), (*a3 + 8 * *&v9[16 * v100 + 16]), (*a3 + 8 * v102), v8, a5 & 1);
          if (v99)
          {
            goto LABEL_108;
          }

          if (v102 < v101)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_18917EF5C(v9);
          }

          if (v100 - 2 >= *(v9 + 2))
          {
            goto LABEL_125;
          }

          v103 = &v9[16 * v100];
          *v103 = v101;
          *(v103 + 1) = v102;
          sub_18917EED0(v100 - 1);
          v100 = *(v9 + 2);
          if (v100 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_135;
      }

LABEL_108:

      return;
    }

LABEL_131:
    v9 = sub_18917EF5C(v9);
    goto LABEL_100;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v10 = v8;
  v8 = (v8 + 1);
  if (v8 < v7)
  {
    v11 = *a3;
    v12 = *(*a3 + 8 * v10);
    v13 = *(*a3 + 8 * v8);
    v14 = v12;
    [v13 _value];
    v16 = v15;
    [v14 _value];
    v18 = v17;

    if (a5)
    {
      v19 = v18 < v16;
    }

    else
    {
      v19 = v16 < v18;
    }

    v8 = (v10 + 2);
    if (v10 + 2 < v7)
    {
      v105 = v10;
      v20 = (v11 + 8 * v10 + 16);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = v21;
        [v22 _value];
        v25 = v24;
        [v23 _value];
        v27 = v26;

        if (a5)
        {
          if (((v19 ^ (v27 >= v25)) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else if (v19 == v25 >= v27)
        {
          goto LABEL_16;
        }

        ++v20;
        v8 = (v8 + 1);
      }

      while (v7 != v8);
      v8 = v7;
LABEL_16:
      v10 = v105;
    }

    if (v19)
    {
      if (v8 < v10)
      {
        goto LABEL_128;
      }

      if (v10 < v8)
      {
        v28 = 8 * v8 - 8;
        v29 = 8 * v10;
        v30 = v8;
        v31 = v10;
        do
        {
          v30 = (v30 - 1);
          if (v31 != v30)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_134;
            }

            v32 = *(v33 + v29);
            *(v33 + v29) = *(v33 + v28);
            *(v33 + v28) = v32;
          }

          v31 = (v31 + 1);
          v28 -= 8;
          v29 += 8;
        }

        while (v31 < v30);
      }
    }
  }

  v34 = a3[1];
  if (v8 >= v34)
  {
    goto LABEL_47;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_127;
  }

  if (v8 - v10 >= a4)
  {
    goto LABEL_47;
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_129;
  }

  if (v10 + a4 >= v34)
  {
    v35 = a3[1];
  }

  else
  {
    v35 = (v10 + a4);
  }

  if (v35 < v10)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v8 == v35)
  {
    goto LABEL_47;
  }

  v104 = v6;
  v36 = v10;
  v37 = *a3;
  v38 = *a3 + 8 * v8 - 8;
  v106 = v36;
  v39 = v36 - v8;
  v109 = v35;
LABEL_37:
  v110 = v8;
  v40 = *(v37 + 8 * v8);
  v41 = v39;
  v42 = v38;
  while (1)
  {
    v43 = *v42;
    v44 = v40;
    v45 = v43;
    [v44 _value];
    v47 = v46;
    [v45 _value];
    v49 = v48;

    if (a5)
    {
      if (v49 >= v47)
      {
        goto LABEL_36;
      }
    }

    else if (v47 >= v49)
    {
      goto LABEL_36;
    }

    if (!v37)
    {
      break;
    }

    v50 = *v42;
    v40 = *(v42 + 8);
    *v42 = v40;
    *(v42 + 8) = v50;
    v42 -= 8;
    if (__CFADD__(v41++, 1))
    {
LABEL_36:
      v8 = (v8 + 1);
      v38 += 8;
      --v39;
      if ((v110 + 1) != v109)
      {
        goto LABEL_37;
      }

      v8 = v109;
      v6 = v104;
      v10 = v106;
LABEL_47:
      if (v8 < v10)
      {
        goto LABEL_126;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_188E4B688(0, *(v9 + 2) + 1, 1, v9);
      }

      v53 = *(v9 + 2);
      v52 = *(v9 + 3);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v9 = sub_188E4B688((v52 > 1), v53 + 1, 1, v9);
      }

      *(v9 + 2) = v54;
      v55 = &v9[16 * v53];
      *(v55 + 4) = v10;
      *(v55 + 5) = v8;
      v56 = *a1;
      if (!*a1)
      {
        goto LABEL_136;
      }

      if (v53)
      {
        while (1)
        {
          v57 = v54 - 1;
          if (v54 >= 4)
          {
            break;
          }

          if (v54 == 3)
          {
            v58 = *(v9 + 4);
            v59 = *(v9 + 5);
            v68 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            v61 = v68;
LABEL_67:
            if (v61)
            {
              goto LABEL_115;
            }

            v74 = &v9[16 * v54];
            v76 = *v74;
            v75 = *(v74 + 1);
            v77 = __OFSUB__(v75, v76);
            v78 = v75 - v76;
            v79 = v77;
            if (v77)
            {
              goto LABEL_118;
            }

            v80 = &v9[16 * v57 + 32];
            v82 = *v80;
            v81 = *(v80 + 1);
            v68 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v68)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v78, v83))
            {
              goto LABEL_122;
            }

            if (v78 + v83 >= v60)
            {
              if (v60 < v83)
              {
                v57 = v54 - 2;
              }

              goto LABEL_88;
            }

            goto LABEL_81;
          }

          v84 = &v9[16 * v54];
          v86 = *v84;
          v85 = *(v84 + 1);
          v68 = __OFSUB__(v85, v86);
          v78 = v85 - v86;
          v79 = v68;
LABEL_81:
          if (v79)
          {
            goto LABEL_117;
          }

          v87 = &v9[16 * v57];
          v89 = *(v87 + 4);
          v88 = *(v87 + 5);
          v68 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v68)
          {
            goto LABEL_120;
          }

          if (v90 < v78)
          {
            goto LABEL_3;
          }

LABEL_88:
          v95 = v57 - 1;
          if (v57 - 1 >= v54)
          {
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
            goto LABEL_130;
          }

          if (!*a3)
          {
            goto LABEL_133;
          }

          v96 = *&v9[16 * v95 + 32];
          v97 = *&v9[16 * v57 + 40];
          sub_18910E8B8((*a3 + 8 * v96), (*a3 + 8 * *&v9[16 * v57 + 32]), (*a3 + 8 * v97), v56, a5 & 1);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v97 < v96)
          {
            goto LABEL_111;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_18917EF5C(v9);
          }

          if (v95 >= *(v9 + 2))
          {
            goto LABEL_112;
          }

          v98 = &v9[16 * v95];
          *(v98 + 4) = v96;
          *(v98 + 5) = v97;
          sub_18917EED0(v57);
          v54 = *(v9 + 2);
          if (v54 <= 1)
          {
            goto LABEL_3;
          }
        }

        v62 = &v9[16 * v54 + 32];
        v63 = *(v62 - 64);
        v64 = *(v62 - 56);
        v68 = __OFSUB__(v64, v63);
        v65 = v64 - v63;
        if (v68)
        {
          goto LABEL_113;
        }

        v67 = *(v62 - 48);
        v66 = *(v62 - 40);
        v68 = __OFSUB__(v66, v67);
        v60 = v66 - v67;
        v61 = v68;
        if (v68)
        {
          goto LABEL_114;
        }

        v69 = &v9[16 * v54];
        v71 = *v69;
        v70 = *(v69 + 1);
        v68 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v68)
        {
          goto LABEL_116;
        }

        v68 = __OFADD__(v60, v72);
        v73 = v60 + v72;
        if (v68)
        {
          goto LABEL_119;
        }

        if (v73 >= v65)
        {
          v91 = &v9[16 * v57 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v68 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v68)
          {
            goto LABEL_123;
          }

          if (v60 < v94)
          {
            v57 = v54 - 2;
          }

          goto LABEL_88;
        }

        goto LABEL_67;
      }

LABEL_3:
      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_98;
      }

      goto LABEL_4;
    }
  }

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
}

uint64_t sub_18910E8B8(void **__src, id *__dst, id *a3, void **a4, char a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __src || &__src[v11] <= a4)
    {
      memmove(a4, __src, 8 * v11);
    }

    v15 = &v5[v11];
    if (v9 < 8 || v7 >= v6)
    {
LABEL_40:
      v7 = v8;
      goto LABEL_42;
    }

    while (1)
    {
      v16 = *v5;
      v17 = *v7;
      v18 = v16;
      [v17 _value];
      v20 = v19;
      [v18 _value];
      v22 = v21;

      if (a5)
      {
        if (v22 >= v20)
        {
          goto LABEL_13;
        }
      }

      else if (v20 >= v22)
      {
LABEL_13:
        v23 = v5;
        v24 = v8 == v5++;
        if (v24)
        {
          goto LABEL_15;
        }

LABEL_14:
        *v8 = *v23;
        goto LABEL_15;
      }

      v23 = v7;
      v24 = v8 == v7++;
      if (!v24)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v8;
      if (v5 >= v15 || v7 >= v6)
      {
        goto LABEL_40;
      }
    }
  }

  if (a4 != __dst || &__dst[v14] <= a4)
  {
    memmove(a4, __dst, 8 * v14);
  }

  v15 = &v5[v14];
  if (v12 >= 8 && v7 > v8)
  {
LABEL_27:
    v36 = v7;
    v25 = v7 - 1;
    --v6;
    v26 = v15;
    while (1)
    {
      v27 = *--v26;
      v7 = v25;
      v28 = *v25;
      v29 = v27;
      v30 = v28;
      [v29 _value];
      v32 = v31;
      [v30 _value];
      v34 = v33;

      if (a5)
      {
        if (v34 < v32)
        {
          goto LABEL_35;
        }
      }

      else if (v32 < v34)
      {
LABEL_35:
        if (v6 + 1 != v36)
        {
          *v6 = *v7;
        }

        if (v15 <= v5 || v7 <= v8)
        {
          break;
        }

        goto LABEL_27;
      }

      v25 = v7;
      if (v6 + 1 != v15)
      {
        *v6 = *v26;
      }

      --v6;
      v15 = v26;
      if (v26 <= v5)
      {
        v15 = v26;
        v7 = v36;
        break;
      }
    }
  }

LABEL_42:
  if (v7 != v5 || v7 >= (v5 + ((v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v7, v5, 8 * (v15 - v5));
  }

  return 1;
}

id sub_18910EB9C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 61) = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_computing] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView] = 0;
  v5 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds];
  *v5 = 0u;
  v5[1] = 0u;
  v6 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_screenSize];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets];
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0;
  v8 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection;
  *&v1[v8] = [objc_allocWithZone(UITraitCollection) init];
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___solariumInsetsAndCornerRadiusEnabled] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveSolariumInsetsAndCornerRadiusEnabled] = 0;
  v9 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___backdropGroupName];
  *v9 = 0;
  v9[1] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_additionalMinimumTopInset] = 0;
  v10 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame];
  v11 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695F050] + 8);
  v13 = *(MEMORY[0x1E695F050] + 16);
  v14 = *(MEMORY[0x1E695F050] + 24);
  *v10 = *MEMORY[0x1E695F050];
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_horizontalAlignment] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_marginInCompactHeight] = 0x7FEFFFFFFFFFFFFFLL;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_marginInRegularWidthRegularHeight] = 0x7FEFFFFFFFFFFFFFLL;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_tucksIntoUnsafeAreaInCompactHeight] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_allowsAsymmetricVerticalMargins] = 0;
  v15 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_keyboardFrame];
  *v15 = v11;
  v15[1] = v12;
  v15[2] = v13;
  v15[3] = v14;
  v16 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_remoteKeyboardFrame];
  *v16 = v11;
  v16[1] = v12;
  v16[2] = v13;
  v16[3] = v14;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containsFirstResponder] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_firstResponderRequiresKeyboard] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_remoteContainsFirstResponder] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_remoteFirstResponderRequiresKeyboard] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shouldAdjustDetentsToAvoidKeyboard] = 1;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsEdgeAttached] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsEdgeAttachedInCompactHeight] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_alwaysAllowsEdgeAttached] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFloatingInRegularWidthCompactHeight] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFloatingInCompactHeight] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsInvertedWhenFloating] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_widthFollowsPreferredContentSizeWhenEdgeAttached] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isTransitioning] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isZooming] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_presentsWithGesture] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shouldScaleDownBehindDescendants] = 1;
  v17 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isReduceMotionEnabled;
  v1[v17] = UIAccessibilityIsReduceMotionEnabled();
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_peeksWhenFloating] = 1;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDismissible] = 1;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_largeBackground] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_nonLargeBackground] = 0;
  v18 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_detents;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18A64B710;
  *(v19 + 32) = [objc_opt_self() largeDetent];
  *&v1[v18] = v19;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_selectedDetentIdentifier] = 0;
  v20 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_standardAppearance;
  v21 = objc_opt_self();
  *&v1[v20] = [v21 appearancePreferringDimmingVisible_];
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_edgeAttachedCompactHeightAppearance] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_floatingAppearance] = 0;
  v22 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sheetID];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hiddenAncestorSheetID];
  *v23 = 0;
  v23[1] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shouldDismissWhenTappedOutside] = 1;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_allowsInteractiveDismissWhenFullScreen] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_prefersScrollingResizesWhenDetentDirectionIsDown] = 1;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge] = 1;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_latestUserChosenOffset] = 0x7FEFFFFFFFFFFFFFLL;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsGrabber] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_grabberSpacing] = 0x4014000000000000;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_insetsContentViewForGrabber] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isGrabberBlurEnabled] = 1;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isDragging] = 0;
  v24 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame];
  *v24 = v11;
  v24[1] = v12;
  v24[2] = v13;
  v24[3] = v14;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissCornerRadius] = 0x7FEFFFFFFFFFFFFFLL;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_preferredCornerRadius] = 0x7FEFFFFFFFFFFFFFLL;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_prefersSymmetricCorners] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_remoteProposedDepthLevel] = 0;
  v25 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentStackAlignmentFrame];
  *v25 = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  v26 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentFullHeightUntransformedFrameForDepthLevel];
  *v26 = v11;
  v26[1] = v12;
  v26[2] = v13;
  v26[3] = v14;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentDepthLevel] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_backgroundEffect] = 0;
  v27 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_currentOffsetGetter];
  *v27 = 0;
  v27[1] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_disableSolariumInsets] = 0;
  v28 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__indexOfCurrentActiveOrDismissDetentWasInvalidated];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated];
  *v30 = 0;
  v30[1] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isAnyDescendantTransitioning] = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___ancestorSheetIDs] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___descendantHiddenAncestorSheetIDs] = MEMORY[0x1E69E7CD0];
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isHidingUnderneathDescendant] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isCovered] = 0;
  v32 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___unsafeInsets];
  *v32 = 0;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = 0;
  v33 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___marginsWhenFloating];
  *v33 = 0;
  v33[1] = 0;
  v33[2] = 0;
  v33[3] = 0;
  v34 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___margins];
  *v34 = 0;
  v34[1] = 0;
  v34[2] = 0;
  v34[3] = 0;
  v35 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___preferredSize];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentFullHeight];
  *v36 = 0;
  v36[1] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isHidingUnderneathDescendantForDepthLevel] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___proposedDepthLevelIncrement] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___proposedDepthLevel] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___depthLevel] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissesHorizontally] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectiveDismissible] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isInverted] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isForcedFullScreen] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentFullScreen] = 0;
  v37 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveKeyboardFrame];
  *v37 = 0u;
  v37[1] = 0u;
  v38 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___stackAlignmentFrame];
  *v38 = 0u;
  v38[1] = 0u;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___stacksWithChild] = 0;
  v39 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___fullHeightUntransformedFrame];
  *v39 = 0u;
  v39[1] = 0u;
  v40 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___fullHeightUntransformedFrameForDepthLevel];
  *v40 = 0u;
  v40[1] = 0u;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___dismissOffset] = 0;
  v41 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveAppearance;
  *&v1[v41] = [v21 appearancePreferringDimmingVisible_];
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___offsetForCurrentActiveDetent] = 0;
  v42 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___rawCurrentOffset];
  *v42 = 0;
  v42[1] = 0;
  v43 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___currentOffset];
  *v43 = 0;
  v43[1] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isExpanded] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___nonFullHeightOffset] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___offsetAdjustment] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentPresented] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isAnyDescendantDragging] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___anyDescendantWantsFullScreen] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___detentValues] = v31;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_includesSafeAreaInsetWhenInset] = 1;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___activeDetents] = v31;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveDetent] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___adjustedIndexOfCurrentActiveDetentForContainedFirstResponder] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfActiveDimmingDetent] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hasActiveFullDetent] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___smallestNonDismissDetentOffset] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___numberOfActiveNonDismissDetents] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfActiveDetentForTappingGrabber] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___grabberAction] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___indexOfCurrentActiveOrDismissDetent] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___rubberBandExtentBeyondMinimumOffset] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___rubberBandExtentBeyondMaximumOffset] = 0;
  v44 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___untransformedFrame];
  *v44 = 0u;
  v44[1] = 0u;
  v45 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedUntransformedFrame];
  *v45 = 0u;
  v45[1] = 0u;
  v46 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___frameOfPresentedViewInContainerView];
  *v46 = 0u;
  v46[1] = 0u;
  v47 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedDismissFrame];
  *v47 = 0u;
  v47[1] = 0u;
  v48 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___touchInsets];
  *v48 = 0;
  v48[1] = 0;
  v48[2] = 0;
  v48[3] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentCapsular] = 0;
  v49 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___cornerRadii];
  *v49 = 0;
  v49[1] = 0;
  v49[2] = 0;
  v49[3] = 0;
  v50 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___hostedCornerRadii];
  *v50 = 0;
  v50[1] = 0;
  v50[2] = 0;
  v50[3] = 0;
  v51 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transformedFrame];
  *v51 = 0u;
  v51[1] = 0u;
  v52 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transformOfPresentedViewInContainerView];
  *v52 = 0x3FF0000000000000;
  v52[1] = 0;
  v52[2] = 0;
  v52[3] = 0x3FF0000000000000;
  v52[4] = 0;
  v52[5] = 0;
  v53 = &v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___transform];
  *v53 = 0x3FF0000000000000;
  v53[1] = 0;
  v53[2] = 0;
  v53[3] = 0x3FF0000000000000;
  v53[4] = 0;
  v53[5] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentDimmedFromOffset] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentDimmed] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___confinedPercentDimmed] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___confinedPercentLightened] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___magicShadowOpacity] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___shadowOpacity] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___alpha] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___grabberAlpha] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___background] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isInteractionEnabled] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isScrollInteractionEnabled] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___shouldPresentedViewControllerControlStatusBarAppearance] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___shouldDimmingIgnoreTouches] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isModelDimmingEnabled] = 0;
  v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isDimmingEnabled] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics] = a1;
  v54 = a1;
  v55 = [v54 defaultMode];
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_mode] = v55;
  [v54 preferredShadowOpacity];
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_preferredShadowOpacity] = v56;
  [v54 shadowRadius];
  *&v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shadowRadius] = v57;
  v59.receiver = v1;
  v59.super_class = ObjectType;
  return objc_msgSendSuper2(&v59, sel_init);
}

void sub_18910F620()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 6) == 1)
  {
    *(v1 + 6) = 0;
    if (*(v1 + 7) == 1)
    {
      *(v1 + 7) = 0;
      sub_1890FC8B4();
      sub_1890FBCCC();
    }

    sub_1890FC8B4();
  }
}

void sub_18910F680()
{
  v1 = v0;
  v2 = sub_18A4A29D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 68) & 1) == 0)
  {
    v8 = v4;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = sub_18910F680();
      v13 = v12;

      v14 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___backdropGroupName);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      sub_18A4A29C8();
      v15 = sub_18A4A2988();
      v17 = v16;
      (*(v3 + 8))(v6, v8);
      v18 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___backdropGroupName);
      *v18 = v15;
      v18[1] = v17;
    }

    *(v7 + 68) = 1;
  }

  if (!*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___backdropGroupName + 8))
  {
    __break(1u);
  }
}

void sub_18910F7F4(void *a1)
{
  v2 = v1;
  v5 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_standardAppearance);
  *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_standardAppearance) = a1;
  sub_188A34624(0, &qword_1EA930A70);
  v4 = a1;
  if (sub_18A4A7C88() & 1) == 0 && (*(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 36))
  {
    *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 36) = 0;
    sub_1890FC154();
  }
}

uint64_t sub_18910F8A4()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 2) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = sub_18910F8A4();
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sheetID + 8);
    if (v5)
    {
      v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sheetID);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_188C8D8B4(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_188C8D8B4((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 2) = v8 + 1;
      v9 = &v4[16 * v8];
      *(v9 + 4) = v6;
      *(v9 + 5) = v5;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___ancestorSheetIDs) = v4;

    *(v1 + 2) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___ancestorSheetIDs);
}

uint64_t sub_18910F9D8()
{
  v1 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  v2 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 3) & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (!v3)
    {
      goto LABEL_11;
    }

    if ((v3[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean] & 1) == 0)
    {
      if (v3[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented])
      {
        v4 = v3[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden] ^ 1;
      }

      else
      {
        v4 = 0;
      }

      v3[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented] = v4 & 1;
      v3[v1] = 1;
    }

    if (v3[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented])
    {
      v5 = v0;
      v6 = v3;
      v7 = sub_18910F9D8();
      v14 = v7;
      v8 = *&v6[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hiddenAncestorSheetID + 8];
      if (v8)
      {
        v9 = *&v6[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hiddenAncestorSheetID];

        sub_188E719F8(&v13, v9, v8);

        v10 = v14;
      }

      else
      {
        v11 = v7;

        v10 = v11;
      }

      v0 = v5;
      *(v5 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___descendantHiddenAncestorSheetIDs) = v10;
    }

    else
    {
LABEL_11:
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___descendantHiddenAncestorSheetIDs) = MEMORY[0x1E69E7CD0];
    }

    *(v2 + 3) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___descendantHiddenAncestorSheetIDs);
}

uint64_t sub_18910FB40()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 36) & 1) == 0)
  {
    v2 = *(v1 + 17);
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_standardAppearance);
    if ((v2 & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v0) & 1;
      *(v1 + 17) = 1;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) == 1)
    {
      if ([*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) verticalSizeClass] != 1)
      {
        goto LABEL_10;
      }

      v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_edgeAttachedCompactHeightAppearance);
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_floatingAppearance);
      if (!v4)
      {
LABEL_10:
        v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveAppearance);
        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveAppearance) = v3;

        *(v1 + 36) = 1;
        return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveAppearance);
      }
    }

    v5 = v4;

    v3 = v5;
    goto LABEL_10;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveAppearance);
}

__n128 sub_18910FC44@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) == 1 && !*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child))
  {
    goto LABEL_10;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = [Strong view];

  sub_189107CF8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v85.origin.x = sub_1891062C0();
  v14 = v13;
  v16 = v15;
  rect = v17;
  v91.origin.x = sub_18910377C();
  MinY = CGRectGetMinY(v91);
  v18 = sub_1891057D0();
  v19 = v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 17) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(v1) & 1;
    *(v19 + 17) = 1;
  }

  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached))
  {
    v20 = 1;
  }

  else
  {
    v20 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_peeksWhenFloating);
  }

  v21 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_metrics);
  if ([v21 exclusivelyUsesZPositionForTransform])
  {

LABEL_10:
    v85.origin = xmmword_18A64B720;
    recta = xmmword_18A64B730;
    v22 = 0.0;
    v23 = 0.0;
    goto LABEL_25;
  }

  v24 = objc_opt_self();
  v25 = v6;
  v92.origin.x = v6;
  v26 = v8;
  v92.origin.y = v8;
  v27 = v10;
  v92.size.width = v10;
  v28 = v12;
  v92.size.height = v12;
  [v24 _horizontalContentMarginForView_ofWidth_];
  v30 = v29;
  [v21 maximumSheetDepthLevel];
  v32 = v31 + -1.0;
  v76 = v18;
  if (v32 >= v18)
  {
    v32 = v18;
  }

  v33 = exp2(-v32);
  v34 = 1.0;
  v81 = 1.0 - v33 + 1.0 - v33;
  v93.origin.x = v85.origin.x;
  v93.origin.y = v14;
  v93.size.width = v16;
  v93.size.height = rect;
  if (CGRectGetWidth(v93) == 0.0)
  {
    v35 = &selRef_automaticallyPlacesContentView;
    if (v20)
    {
      goto LABEL_21;
    }

LABEL_17:
    [v21 v35[411]];
    v37 = v36;
    v95.origin.x = v85.origin.x;
    v95.origin.y = v14;
    v95.size.width = v16;
    v95.size.height = rect;
    Height = CGRectGetHeight(v95);
    v39 = 1.0;
    if (Height != 0.0)
    {
      v96.origin.x = v85.origin.x;
      v96.origin.y = v14;
      v96.size.width = v16;
      v96.size.height = rect;
      v39 = 1.0 - v81 * (v37 + v37) / CGRectGetHeight(v96);
    }

    if (v34 <= v39)
    {
      v34 = v39;
    }

    goto LABEL_21;
  }

  v94.origin.x = v85.origin.x;
  v94.origin.y = v14;
  v94.size.width = v16;
  v94.size.height = rect;
  v34 = 1.0 - (v30 + v30) * v81 / CGRectGetWidth(v94);
  v35 = &selRef_automaticallyPlacesContentView;
  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_21:
  CGAffineTransformMakeScale(&t1, v34, v34);
  v79 = *&t1.c;
  v80 = *&t1.a;
  ty = t1.ty;
  tx = t1.tx;
  v97.origin.x = v25;
  v97.origin.y = v26;
  v97.size.width = v27;
  v97.size.height = v28;
  v40 = CGRectGetHeight(v97);
  if (v20)
  {
    v41 = v28;
    v42 = v34 * v40;
    v98.origin.x = v25;
    v98.origin.y = v26;
    v98.size.width = v27;
    v98.size.height = v41;
    v75 = (CGRectGetHeight(v98) - v42) * 0.5;
    v99.origin.x = v25;
    v99.origin.y = v26;
    v99.size.width = v27;
    v99.size.height = v41;
    v43 = CGRectGetMinY(v99);
    v100.origin.x = v85.origin.x;
    v100.origin.y = v14;
    v100.size.width = v16;
    v100.size.height = rect;
    v44 = (1.0 - v34) * (v43 - CGRectGetMinY(v100));
    [v21 v35[411]];
    v46 = v81 * v45;
    [v21 maximumSheetDepthLevel];
    v48 = v46 * _UIClamp_2(v47 - v76);
    v101.origin.x = v85.origin.x;
    v101.origin.y = v14;
    v101.size.width = v16;
    v101.size.height = rect;
    v49 = CGRectGetMinY(v101) - MinY;
    v50 = _UIClamp_2(v76);
    v51 = v75;
    v52 = v49 * v50;
  }

  else
  {
    v102.origin.x = v25;
    v102.origin.y = v26;
    v102.size.width = v27;
    v102.size.height = v28;
    MidY = CGRectGetMidY(v102);
    v103.origin.x = v85.origin.x;
    v103.origin.y = v14;
    v103.size.width = v16;
    v103.size.height = rect;
    v44 = (1.0 - v34) * (MidY - CGRectGetMidY(v103));
    v52 = 0.0;
    v48 = 0.0;
    v51 = 0.0;
  }

  CGAffineTransformMakeTranslation(&t1, 0.0, -(v52 + v48 + v44 + v51) / v34);
  *&t2.a = v80;
  *&t2.c = v79;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v85.size, &t1, &t2);
  recta = v85.size;
  v85.origin = v86;
  v22 = v87;
  v23 = v88;

LABEL_25:
  sub_189107CF8();
  Width = CGRectGetWidth(v104);
  if (Width == CGRectGetWidth(*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds)))
  {
    v105.origin.x = sub_189105F9C();
    v55 = CGRectGetWidth(v105) > 0.0;
    if ((sub_1890FF470() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v55 = 0;
    if ((sub_1890FF470() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  if (sub_1891057D0() == 0.0 && v55 && (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_disableSolariumInsets) & 1) == 0)
  {
    v106.origin.x = sub_189105F9C();
    v56 = CGRectGetWidth(v106);
    v107.origin.x = sub_189105F9C();
    v57 = CGRectGetWidth(v107);
    v58 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
    if ((*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 53) & 1) == 0)
    {
      sub_189107CF8();
      v59 = CGRectGetHeight(v108);
      v60 = _UIUnlerp(v59, 150.0, 76.0);
      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentCapsular) = _UIClamp_2(v60);
      v58[53] = 1;
    }

    v61 = 16.0 / v57;
    v62 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___percentCapsular);
    if (v62 <= 0.0)
    {
      sub_189102880();
      v62 = 1.0 - v65;
      v64 = 0.0;
      v63 = v61;
    }

    else
    {
      v63 = 56.0 / v56;
      v64 = v61;
    }

    v66 = _UILerp_1(v62, v64, v63);
    v67 = _UIClamp_2(1.0 - v66);
    sub_189107CF8();
    v68 = v66 * CGRectGetWidth(v109);
    sub_189107CF8();
    v69 = v66 * CGRectGetHeight(v110);
    if ((*v58 & 1) == 0)
    {
      if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isPresented))
      {
        v70 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHidden) ^ 1;
      }

      else
      {
        v70 = 0;
      }

      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) = v70 & 1;
      *v58 = 1;
    }

    v71 = (v68 - v69) * -0.5;
    v72 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEffectivePresented) == 0;
    v73 = -0.0;
    *&t1.a = recta;
    *&t1.c = v85.origin;
    if (!v72)
    {
      v73 = v71;
    }

    t1.tx = v22;
    t1.ty = v23;
    CGAffineTransformTranslate(&t2, &t1, 0.0, v73);
    t1 = t2;
    CGAffineTransformScale(&t2, &t1, v67, v67);
    recta = *&t2.a;
    v85.origin = *&t2.c;
    v22 = t2.tx;
    v23 = t2.ty;
  }

LABEL_45:
  result = v85.origin;
  *a1 = recta;
  *(a1 + 16) = v85.origin;
  *(a1 + 32) = v22;
  *(a1 + 40) = v23;
  return result;
}

uint64_t sub_1891102E0()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  v2 = &qword_1EA93CF60[20];
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 67) & 1) == 0)
  {
    if ((*(v1 + 9) & 1) == 0)
    {
      v3 = (_UISolariumEnabled() & 1) != 0 && [*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) userInterfaceIdiom] != 6;
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___solariumInsetsAndCornerRadiusEnabled) = v3;
      *(v1 + 9) = 1;
    }

    if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___solariumInsetsAndCornerRadiusEnabled) & 1) == 0)
    {
      goto LABEL_29;
    }

    if ((*(v1 + 5) & 1) == 0)
    {
      v4 = sub_1891025BC();
      v5 = 1;
      if ((v4 & 1) == 0)
      {
        if (sub_189102778())
        {
          sub_189102880();
          v5 = v6 == 0.0;
        }

        else
        {
          v5 = 0;
        }
      }

      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isCovered) = v5;
      *(v1 + 5) = 1;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isCovered) & 1) == 0 || (v7 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child)) != 0 && (*(v7 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isTransitioning))
    {
      v8 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_backgroundEffect);
      v9 = v8;
      sub_18910518C();
      v11 = v10;
      v12 = sub_189103BFC();
      if (v12 >> 62)
      {
        goto LABEL_86;
      }

      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v12 = sub_18A4A2388();
      do
      {
        v14 = v12;
        if (!v13)
        {
LABEL_31:
          v22 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_detents;
          v23 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_detents);
          v48 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_detents;
          if (v23 >> 62)
          {
            goto LABEL_88;
          }

          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_33;
        }

        v15 = 0;
        v16 = 1.79769313e308;
        while (1)
        {
          v12 = sub_189103BFC();
          if ((v12 & 0xC000000000000001) != 0)
          {
            v17 = sub_188E4B080(v15, v12);
            goto LABEL_24;
          }

          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          v17 = *(v12 + 8 * v15 + 32);
LABEL_24:
          v2 = v17;
          v18 = v15 + 1;

          [v2 _value];
          v20 = v19;

          v21 = vabdd_f64(v20, v11);
          if (v21 < v16)
          {
            v14 = v15;
            v16 = v21;
          }

          ++v15;
          if (v13 == v18)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        v14 = v12;
        v13 = sub_18A4A7F68();

        v12 = sub_18A4A2388();
      }

      while ((v13 & 0x8000000000000000) == 0);
      __break(1u);
LABEL_88:
      v12 = sub_18A4A7F68();
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_90:
        swift_once();
LABEL_64:
        v39 = qword_1ED48EC18;
LABEL_75:
        v38 = v39;
        goto LABEL_76;
      }

      v24 = v12;
      v22 = v48;
LABEL_33:
      v49 = v8;
      v47 = v1;
      if (v24)
      {
        v8 = 4;
        while (1)
        {
          v26 = v8 - 4;
          v27 = *(v0 + v22);
          if ((v27 & 0xC000000000000001) != 0)
          {

            v28 = sub_188E4B06C(v8 - 4, v27);
          }

          else
          {
            if (v26 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_82;
            }

            v28 = *(v27 + 8 * v8);
          }

          v25 = [v28 identifier];

          v12 = sub_189103BFC();
          v2 = v12;
          if ((v12 & 0xC000000000000001) != 0)
          {
            v29 = sub_188E4B080(v14, v12);
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_83;
            }

            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v29 = *(v12 + 8 * v14 + 32);
          }

          v30 = v29;

          v2 = [v30 _identifier];

          if (!v2)
          {
            goto LABEL_36;
          }

          v31 = sub_18A4A7288();
          v33 = v32;
          if (v31 == sub_18A4A7288() && v33 == v34)
          {
          }

          else
          {
            v1 = sub_18A4A86C8();

            if ((v1 & 1) == 0)
            {
              v22 = v48;
              goto LABEL_37;
            }
          }

          v22 = v48;
          v35 = *(v0 + v48);
          if ((v35 & 0xC000000000000001) != 0)
          {

            v36 = sub_188E4B06C(v8 - 4, v35);
          }

          else
          {
            if (v26 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_85;
            }

            v36 = *(v35 + 8 * v8);
          }

          v2 = [v36 backgroundEffect];

          if (v2)
          {
            break;
          }

LABEL_37:
          ++v8;
          if (!--v24)
          {
            goto LABEL_59;
          }
        }

        v25 = v49;
        v49 = v2;
LABEL_36:

        goto LABEL_37;
      }

LABEL_59:
      if (v49)
      {
        v2 = &qword_1EA93CF60[20];
        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___background) = v49;
        swift_unknownObjectRelease();
        v1 = v47;
        goto LABEL_78;
      }

      sub_189102880();
      v1 = v47;
      v2 = &qword_1EA93CF60[20];
      if (v37 <= 0.5)
      {
        v38 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_nonLargeBackground);
        if (!v38)
        {
          v40 = [objc_opt_self() currentDevice];
          v41 = [v40 userInterfaceIdiom];

          if (v41)
          {
            if (qword_1EA930180 != -1)
            {
              swift_once();
            }

            v42 = &qword_1EA930318;
          }

          else
          {
            if (qword_1EA931EF8 != -1)
            {
              swift_once();
            }

            v42 = &qword_1EA93D080;
          }

          v39 = *v42;
          goto LABEL_75;
        }
      }

      else
      {
        v38 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_largeBackground);
        if (!v38)
        {
          if (qword_1ED48EC10 != -1)
          {
            goto LABEL_90;
          }

          goto LABEL_64;
        }
      }

LABEL_76:
      *(v0 + v2[173]) = v38;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        v44 = v43;
        sub_18910F680();

        v45 = sub_18A4A7258();

        [v44 setBackdropGroupName_];
        swift_unknownObjectRelease();

        goto LABEL_78;
      }
    }

    else
    {
LABEL_29:
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___background) = 0;
    }

    swift_unknownObjectRelease();
LABEL_78:
    *(v1 + 67) = 1;
  }

  return *(v0 + v2[173]);
}