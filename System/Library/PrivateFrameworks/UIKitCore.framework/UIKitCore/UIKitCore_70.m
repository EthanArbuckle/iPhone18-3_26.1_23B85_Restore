uint64_t sub_1891B4448@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1891B42D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1891B4474(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *AGGraphGetValue();

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v5)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v6 = *AGGraphGetValue();

    if (v6 != 1)
    {
LABEL_15:
      v16 = 0;
      return v16 & 1;
    }
  }

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = *AGGraphGetValue();

  if (v8 == 1.0)
  {
    v9 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v9)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v10 = *AGGraphGetValue();

    if (v10 != 1)
    {
      goto LABEL_15;
    }
  }

  v11 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = *AGGraphGetValue();

  if (v12 != 1)
  {
LABEL_16:
    v17 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v17)
    {
      v18 = *AGGraphGetValue();

      v16 = v18 ^ 1;
      return v16 & 1;
    }

    goto LABEL_25;
  }

  v13 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v13)
  {
    v14 = *(AGGraphGetValue() + 8);

    if (v14 >> 62)
    {
      v15 = sub_18A4A7F68();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1891B46A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891B4474(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891B46D4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v2)
  {
    v4 = *AGGraphGetValue();

    if (v4 != 1)
    {
      return 1;
    }

    v5 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v5)
    {
      v6 = *AGGraphGetValue();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B4794@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891B46D4(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891B47C4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = *AGGraphGetValue();

  result = 0;
  if (v4)
  {
    return result;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
    goto LABEL_14;
  }

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 16);
  v10 = *(Value + 24);

  v45.origin.x = v7;
  v45.origin.y = v8;
  v45.size.width = v9;
  v45.size.height = v10;
  MidX = CGRectGetMidX(v45);
  v40 = v8;
  v41 = v7;
  v46.origin.x = v7;
  v46.origin.y = v8;
  v46.size.width = v9;
  v46.size.height = v10;
  MidY = CGRectGetMidY(v46);
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v36 = *&t1.c;
  v38 = *&t1.a;
  tx = t1.tx;
  ty = t1.ty;
  v15 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  type metadata accessor for CGAffineTransform(0);
  v16 = AGGraphGetValue();
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  v34 = *(v16 + 16);
  v35 = *v16;

  *&t1.a = v38;
  *&t1.c = v36;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v35;
  *&t2.c = v34;
  t2.tx = v17;
  t2.ty = v18;
  CGAffineTransformConcat(&v42, &t1, &t2);
  v19 = v42.tx;
  v20 = v42.ty;
  v37 = *&v42.c;
  v39 = *&v42.a;
  CGAffineTransformMakeTranslation(&t1, MidX, MidY);
  v21 = *&t1.a;
  v22 = *&t1.c;
  v23 = *&t1.tx;
  *&t1.a = v39;
  *&t1.c = v37;
  t1.tx = v19;
  t1.ty = v20;
  *&t2.a = v21;
  *&t2.c = v22;
  *&t2.tx = v23;
  CGAffineTransformConcat(&v42, &t1, &t2);
  t1 = v42;
  v47.origin.y = v40;
  v47.origin.x = v41;
  v47.size.width = v9;
  v47.size.height = v10;
  v48 = CGRectApplyAffineTransform(v47, &t1);
  MinY = CGRectGetMinY(v48);
  v25 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v25)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
  v26 = *AGGraphGetValue();
  v27 = v26;

  v28 = 0.0;
  if (v26)
  {
    v29 = [v27 window];

    if (v29)
    {
      v30 = [v29 windowScene];

      if (v30)
      {
        v31 = [v30 statusBarManager];

        if (v31)
        {
          [v31 defaultStatusBarHeight];
          v33 = v32;

          v28 = v33 * 0.5;
        }
      }
    }
  }

  return MinY <= v28;
}

uint64_t sub_1891B4AC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891B47C4(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891B4AF0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = *AGGraphGetValue();

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v4 != 1)
  {
    if (!v5)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v18 = *AGGraphGetValue();

    if (v18)
    {
      goto LABEL_21;
    }

    return 1;
  }

  if (!v5)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = *AGGraphGetValue();

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v6 == 1)
  {
    if (!v7)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    type metadata accessor for CGPoint(0);
    v8 = *(AGGraphGetValue() + 8);

    v9 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v9)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    type metadata accessor for CGRect(0);
    Value = AGGraphGetValue();
    v11 = *Value;
    v12 = *(Value + 8);
    v13 = *(Value + 16);
    v14 = *(Value + 24);

    v39.origin.x = v11;
    v39.origin.y = v12;
    v39.size.width = v13;
    v39.size.height = v14;
    Height = CGRectGetHeight(v39);
    v16 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v16)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    type metadata accessor for UIEdgeInsets(0);
    v17 = *(AGGraphGetValue() + 16);

    if (Height - v17 > v8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!v7)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    type metadata accessor for CGPoint(0);
    v19 = *(AGGraphGetValue() + 8);

    v20 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v20)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    type metadata accessor for UIEdgeInsets(0);
    v21 = *AGGraphGetValue();

    if (v19 > v21)
    {
      goto LABEL_21;
    }
  }

  v22 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v22)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  type metadata accessor for CGRect(0);
  v23 = AGGraphGetValue();
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = *(v23 + 16);
  v27 = *(v23 + 24);

  v40.origin.x = v24;
  v40.origin.y = v25;
  v40.size.width = v26;
  v40.size.height = v27;
  Width = CGRectGetWidth(v40);
  v29 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v29)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = AGGraphGetValue();
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  v34 = *(v30 + 24);

  v41.origin.x = v31;
  v41.origin.y = v32;
  v41.size.width = v33;
  v41.size.height = v34;
  if (Width == CGRectGetWidth(v41))
  {
    return 1;
  }

  v35 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v35)
  {
    v36 = *AGGraphGetValue();

    if (v36 == 1)
    {
LABEL_21:
      v37 = *(a1 + 16);
      result = swift_unownedRetainStrong();
      if (v37)
      {
        v38 = *AGGraphGetValue();

        return v38;
      }

      goto LABEL_26;
    }

    return 1;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1891B4E70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891B4AF0(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891B4EA0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(AGGraphGetValue() + 32);

  if (v4 == sub_18A4A2388())
  {
    v5 = 1;
  }

  else
  {
    v6 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v6)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v7 = *(AGGraphGetValue() + 16);

    v5 = v4 < v7;
  }

  v8 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v8)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v9 = *AGGraphGetValue();

  if (v9)
  {
    v10 = *AGGraphGetValue();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = *AGGraphGetValue();

  v13 = 0;
  if (!(v10 & 1 | (((v12 | v5) & 1) == 0)))
  {
    return v13;
  }

  v14 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v14)
  {
    v13 = *AGGraphGetValue();

    return v13;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1891B5068@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891B4EA0(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891B5098@<X0>(BOOL *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    v6 = *AGGraphGetValue();

    *a1 = v6 > 0.0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1891B5120()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);

  AGGraphGetValue();
  if (swift_weakLoadStrong())
  {
    do
    {

      AGGraphGetValue();
      Strong = swift_weakLoadStrong();
    }

    while (Strong);
  }

  v1 = *AGGraphGetValue();

  return v1;
}

uint64_t sub_1891B51F8()
{

  return swift_deallocClassInstance();
}

id sub_1891B57A8(char *a1)
{
  v2 = OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext_attributes;
  swift_beginAccess();
  v3 = *&a1[v2];
  result = swift_unownedRetainStrong();
  if (v3)
  {
    sub_188A34624(0, &qword_1ED490410);
    v5 = a1;
    v6 = *AGGraphGetValue();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1891B586C(char *a1, uint64_t a2, void (*a3)(void))
{
  v5 = OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext_attributes;
  swift_beginAccess();
  v6 = *&a1[v5];
  result = swift_unownedRetainStrong();
  if (v6)
  {
    v8 = a1;
    a3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1891B6164(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  AGGraphGetValue();

  return AGGraphSetOutputValue();
}

uint64_t sub_1891B6240(uint64_t *a1)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A29D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  v7 = *(v6 + 16);
  swift_unownedRetainStrong();
  if (!v7)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);

  AGGraphGetValue();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    Value = AGGraphGetValue();
    v10 = *Value;
    v11 = Value[1];
  }

  else
  {
    sub_18A4A29C8();
    v10 = sub_18A4A2988();
    v11 = v12;

    (*(v3 + 8))(v5, v2);
  }

  v14[0] = v10;
  v14[1] = v11;
  AGGraphSetOutputValue();
}

uint64_t sub_1891B641C()
{

  sub_1891B3958(v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  AGGraphSetOutputValue();
  return swift_unknownObjectRelease();
}

uint64_t sub_1891B64B4(uint64_t a1, uint64_t a2)
{

  return sub_1891B98B8(a1, a2, sub_1891B4EA0);
}

uint64_t sub_1891B6520(uint64_t a1, uint64_t a2)
{

  return sub_1891B98B8(a1, a2, sub_1891B4AF0);
}

uint64_t sub_1891B658C(uint64_t a1, uint64_t a2)
{

  return sub_1891B98B8(a1, a2, sub_1891B47C4);
}

uint64_t sub_1891B65F8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  v3 = *AGGraphGetValue();

  if (v3 != 1)
  {
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    AGGraphGetValue();

LABEL_5:

    return AGGraphSetOutputValue();
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B6708(uint64_t a1, uint64_t a2)
{

  return sub_1891B98B8(a1, a2, sub_1891B4474);
}

uint64_t sub_1891B6774(uint64_t a1, uint64_t a2)
{

  return sub_1891B8B7C(a1, a2, sub_1891B36B0);
}

uint64_t sub_1891B67E0(uint64_t a1, uint64_t a2)
{

  return sub_1891B8B7C(a1, a2, sub_1891B34BC);
}

uint64_t sub_1891B684C(uint64_t a1, uint64_t a2)
{

  return sub_1891B8B7C(a1, a2, sub_1891B32C8);
}

uint64_t sub_1891B68B8()
{

  sub_1891B2CF0(v0);

  return AGGraphSetOutputValue();
}

uint64_t sub_1891B6958(uint64_t a1, uint64_t a2)
{

  return sub_1891B8B7C(a1, a2, sub_1891B29A0);
}

uint64_t sub_1891B69C4(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *AGGraphGetValue();

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v3 == 1)
  {
    if (v4)
    {
LABEL_6:
      AGGraphGetValue();

      v6 = *(v1 + 16);
      swift_unownedRetainStrong();
      if (v6)
      {
        v7 = *(v1 + 16);
        swift_unownedRetainStrong();
        if (v7)
        {
          type metadata accessor for UIEdgeInsets(0);
          AGGraphGetValue();

          sub_1891BC0AC(&v8);

          type metadata accessor for CGAffineTransform(0);
          return AGGraphSetOutputValue();
        }

LABEL_11:
        __break(1u);
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B6B48(uint64_t a1, uint64_t a2)
{

  return sub_1891B8344(a1, a2, sub_1891B24B4);
}

uint64_t sub_1891B6BB4(uint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v3)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  type metadata accessor for CGPoint(0);

  AGGraphGetValue();

  v4 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v4)
  {
    goto LABEL_7;
  }

  type metadata accessor for UIEdgeInsets(0);
  AGGraphGetValue();

  sub_1891BC0AC(&v6);

  type metadata accessor for CGAffineTransform(0);
  return AGGraphSetOutputValue();
}

uint64_t sub_1891B6CF8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  v3 = *AGGraphGetValue();

  if (v3 == 1)
  {

    signpost_c2_entryLock_start(1.79769313e308, 1.79769313e308);
LABEL_6:
    type metadata accessor for UIRectCornerRadii(0);
    return AGGraphSetOutputValue();
  }

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    type metadata accessor for UIRectCornerRadii(0);
    AGGraphGetValue();

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B6E60(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  type metadata accessor for CGRect(0);

  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);

  v11.origin.x = v4;
  v11.origin.y = v5;
  v11.size.width = v6;
  v11.size.height = v7;
  Height = CGRectGetHeight(v11);

  v9 = _UIUnlerp(Height, 150.0, 76.0);
  _UIClamp_2(v9);
  return AGGraphSetOutputValue();
}

uint64_t sub_1891B6F80(uint64_t a1, uint64_t a2)
{

  return sub_1891B9208(a1, a2, sub_1891B15C8, type metadata accessor for UIRectCornerRadii);
}

uint64_t sub_1891B7000(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  type metadata accessor for CGRect(0);

  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);

  v8 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = AGGraphGetValue();
  v10 = *v9;
  rect = *(v9 + 8);
  v12 = *(v9 + 16);
  v11 = *(v9 + 24);

  v15.origin.x = v4;
  v15.origin.y = v5;
  v15.size.width = v6;
  v15.size.height = v7;
  CGRectGetMinY(v15);
  v16.origin.x = v10;
  v16.origin.y = rect;
  v16.size.width = v12;
  v16.size.height = v11;
  CGRectGetMinY(v16);
  v17.origin.x = v4;
  v17.origin.y = v5;
  v17.size.width = v6;
  v17.size.height = v7;
  CGRectGetMinX(v17);
  v18.origin.x = v10;
  v18.origin.y = rect;
  v18.size.width = v12;
  v18.size.height = v11;
  CGRectGetMinX(v18);
  v19.origin.x = v10;
  v19.origin.y = rect;
  v19.size.width = v12;
  v19.size.height = v11;
  CGRectGetMaxY(v19);
  v20.origin.x = v4;
  v20.origin.y = v5;
  v20.size.width = v6;
  v20.size.height = v7;
  CGRectGetMaxY(v20);
  v21.origin.x = v10;
  v21.origin.y = rect;
  v21.size.width = v12;
  v21.size.height = v11;
  CGRectGetMaxX(v21);
  v22.origin.x = v4;
  v22.origin.y = v5;
  v22.size.width = v6;
  v22.size.height = v7;
  CGRectGetMaxX(v22);

  type metadata accessor for UIEdgeInsets(0);
  return AGGraphSetOutputValue();
}

uint64_t sub_1891B722C(uint64_t a1, uint64_t a2)
{

  return sub_1891B8344(a1, a2, sub_1891B0D1C);
}

uint64_t sub_1891B7298(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  v3 = *AGGraphGetValue();

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v3 == 1)
  {
    if (v4)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  else if (v4)
  {
LABEL_6:
    type metadata accessor for CGRect(0);
    AGGraphGetValue();

    return AGGraphSetOutputValue();
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B73C4(uint64_t a1, uint64_t a2)
{

  return sub_1891B8344(a1, a2, sub_1891B04D8);
}

uint64_t sub_1891B7430(uint64_t a1, uint64_t a2)
{

  return sub_1891B8B7C(a1, a2, sub_1891B01DC);
}

uint64_t sub_1891B749C(uint64_t a1, uint64_t a2)
{

  return sub_1891B8B7C(a1, a2, sub_1891AFEE0);
}

uint64_t sub_1891B7508()
{

  sub_1891AFD48(v0);

  return AGGraphSetOutputValue();
}

uint64_t sub_1891B7588()
{

  sub_1891AFC10(v0);

  type metadata accessor for _UISheetGrabberAction(0);
  return AGGraphSetOutputValue();
}

uint64_t sub_1891B760C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = *(AGGraphGetValue() + 56);

  v4 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = *(AGGraphGetValue() + 16);

  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v3)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (v8 == 0x8000000000000000 && v3 == -1)
  {
    goto LABEL_14;
  }

  return AGGraphSetOutputValue();
}

uint64_t sub_1891B7748()
{
  v4 = *MEMORY[0x1E69E9840];

  sub_1891AE4B4(v0, v2);

  AGGraphSetOutputValue();
  v3[0] = v2[0];
  v3[1] = v2[1];
  v3[2] = v2[2];
  v3[3] = v2[3];
  return sub_1891BC82C(v3);
}

uint64_t sub_1891B77DC(uint64_t a1, uint64_t a2)
{

  return sub_1891B98B8(a1, a2, sub_1891AE328);
}

uint64_t sub_1891B7848(uint64_t a1, uint64_t a2)
{

  return sub_1891B98B8(a1, a2, sub_1891AE1F4);
}

uint64_t sub_1891B78B4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  type metadata accessor for CGPoint(0);

  v3 = *(AGGraphGetValue() + 8);

  v4 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v4)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v5 = *AGGraphGetValue();

  v6 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(AGGraphGetValue() + 48);

  v8 = _UIUnlerp(v3, v5, v7);
  _UIClamp_2(v8);
  return AGGraphSetOutputValue();
}

uint64_t sub_1891B7A14(uint64_t a1, uint64_t a2)
{

  return sub_1891B8B7C(a1, a2, sub_1891ADE00);
}

uint64_t sub_1891B7A80(uint64_t a1, uint64_t a2)
{

  return sub_1891B8B7C(a1, a2, sub_1891AD918);
}

uint64_t sub_1891B7AEC(uint64_t a1, uint64_t a2)
{

  return sub_1891B98B8(a1, a2, sub_1891AD764);
}

uint64_t sub_1891B7B58(uint64_t a1, uint64_t a2)
{

  return sub_1891B9060(a1, a2, sub_1891AD5C0, type metadata accessor for CGPoint);
}

uint64_t sub_1891B7BD8(uint64_t a1, uint64_t a2)
{

  return sub_1891B9060(a1, a2, sub_1891AD250, type metadata accessor for CGPoint);
}

uint64_t sub_1891B7C58(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = *(AGGraphGetValue() + 8);

  v4 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *(AGGraphGetValue() + 16);

  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = sub_188E4B080(v5, v3);
    goto LABEL_7;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v6 = *(v3 + 8 * v5 + 32);
LABEL_7:
  v7 = v6;

  [v7 _value];

  return AGGraphSetOutputValue();
}

void sub_1891B7DCC()
{

  v1 = sub_1891ACEE0(v0);

  sub_188A34624(0, &qword_1EA930A70);
  AGGraphSetOutputValue();
}

uint64_t sub_1891B7E68(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  type metadata accessor for CGRect(0);

  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];

  v8 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v8)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];

  v14 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *AGGraphGetValue();

  _UISheetDismissOffset(v15, v4, v5, v6, v7, v10, v11, v13, v12);

  return AGGraphSetOutputValue();
}

uint64_t sub_1891B7FF4(uint64_t a1, uint64_t a2)
{

  return sub_1891B8344(a1, a2, sub_1891ACC08);
}

uint64_t sub_1891B8060(uint64_t a1, uint64_t a2)
{

  return sub_1891B8344(a1, a2, sub_1891AC908);
}

uint64_t sub_1891B80CC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);

  v3 = *AGGraphGetValue();

  if (!v3)
  {

    return AGGraphSetOutputValue();
  }

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    type metadata accessor for CGRect(0);
    Value = AGGraphGetValue();
    v7 = *Value;
    v8 = *(Value + 8);
    v9 = *(Value + 16);
    v10 = *(Value + 24);

    v11 = AGGraphGetValue();
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v1 + 16);
    result = swift_unownedRetainStrong();
    if (v16)
    {
      v17 = *(v16 + 48);

      v18.origin.x = v7;
      v18.origin.y = v8;
      v18.size.width = v9;
      v18.size.height = v10;
      v19.origin.x = v12;
      v19.origin.y = v13;
      v19.size.width = v14;
      v19.size.height = v15;
      if (!CGRectEqualToRect(v18, v19))
      {
        [v17 alwaysStacksWithChild];
      }

      return AGGraphSetOutputValue();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B82D8(uint64_t a1, uint64_t a2)
{

  return sub_1891B8344(a1, a2, sub_1891ABFA4);
}

uint64_t sub_1891B8344(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  type metadata accessor for CGRect(0);
  return AGGraphSetOutputValue();
}

uint64_t sub_1891B83F0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  v3 = *AGGraphGetValue();

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v3 == 1)
  {
    if (v4)
    {
LABEL_8:
      type metadata accessor for CGRect(0);
      AGGraphGetValue();

      return AGGraphSetOutputValue();
    }

    __break(1u);
    goto LABEL_11;
  }

  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v6 = *AGGraphGetValue();

  if (v6)
  {
    goto LABEL_8;
  }

  v7 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1891B857C(uint64_t a1, uint64_t a2)
{

  return sub_1891B8B7C(a1, a2, sub_1891ABCC0);
}

uint64_t sub_1891B85E8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *AGGraphGetValue();

  if (v3)
  {
LABEL_5:
    v6 = *(v1 + 16);
    swift_unownedRetainStrong();
    if (v6)
    {
      AGGraphGetValue();

      return AGGraphSetOutputValue();
    }

LABEL_8:
    __break(1u);
  }

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    AGGraphGetValue();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B8734(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  v3 = *AGGraphGetValue();

  if (v3 != 1)
  {

    return AGGraphSetOutputValue();
  }

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    AGGraphGetValue();

    return AGGraphSetOutputValue();
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B8854(uint64_t a1, uint64_t a2)
{

  return sub_1891B98B8(a1, a2, sub_1891AB718);
}

uint64_t sub_1891B88C0(uint64_t a1, uint64_t a2)
{

  return sub_1891B98B8(a1, a2, sub_1891AAFEC);
}

uint64_t sub_1891B892C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  v3 = *AGGraphGetValue();

  if (v3)
  {
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    AGGraphGetValue();

LABEL_5:

    return AGGraphSetOutputValue();
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B8A38(uint64_t a1, uint64_t a2)
{

  return sub_1891B98B8(a1, a2, sub_1891ABA20);
}

uint64_t sub_1891B8AA4(uint64_t a1, uint64_t a2)
{

  return sub_1891B8B7C(a1, a2, sub_1891AAC7C);
}

uint64_t sub_1891B8B10(uint64_t a1, uint64_t a2)
{

  return sub_1891B8B7C(a1, a2, sub_1891AA98C);
}

uint64_t sub_1891B8B7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  return AGGraphSetOutputValue();
}

uint64_t sub_1891B8C0C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);

  v3 = *AGGraphGetValue();

  if (v3)
  {
    AGGraphGetValue();
    AGGraphGetValue();
  }

  return AGGraphSetOutputValue();
}

uint64_t sub_1891B8D5C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  v3 = *AGGraphGetValue();

  if (v3 != 1)
  {
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    AGGraphGetValue();

LABEL_5:

    return AGGraphSetOutputValue();
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B8E68()
{

  sub_1891AA29C(v0);

  return AGGraphSetOutputValue();
}

uint64_t sub_1891B8EF4(uint64_t a1, uint64_t a2)
{

  return sub_1891B9208(a1, a2, sub_1891A98A0, type metadata accessor for UIEdgeInsets);
}

uint64_t sub_1891B8F74(uint64_t a1, uint64_t a2)
{

  return sub_1891B98B8(a1, a2, sub_1891AB37C);
}

uint64_t sub_1891B8FE0(uint64_t a1, uint64_t a2)
{

  return sub_1891B9060(a1, a2, sub_1891A9DEC, type metadata accessor for CGSize);
}

uint64_t sub_1891B9060(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(void))
{

  a3(v6);

  a4(0);
  return AGGraphSetOutputValue();
}

uint64_t sub_1891B9108(uint64_t a1, uint64_t a2)
{

  return sub_1891B9208(a1, a2, sub_1891A946C, type metadata accessor for UIEdgeInsets);
}

uint64_t sub_1891B9188(uint64_t a1, uint64_t a2)
{

  return sub_1891B9208(a1, a2, sub_1891A91D0, type metadata accessor for UIEdgeInsets);
}

uint64_t sub_1891B9208(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(void))
{

  a3(v6);

  a4(0);
  return AGGraphSetOutputValue();
}

uint64_t sub_1891B92C4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  v3 = *AGGraphGetValue();

  if (v3 == 1)
  {
    goto LABEL_7;
  }

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *AGGraphGetValue();

  if ((v6 & 1) == 0)
  {
LABEL_7:

    return AGGraphSetOutputValue();
  }

  v7 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v7)
  {
    AGGraphGetValue();

    return AGGraphSetOutputValue();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1891B9434(uint64_t *a1)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B0);

  v3 = *AGGraphGetValue();

  v18[4] = v1;
  v4 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v4)
  {
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B8);
  v5 = *AGGraphGetValue();

  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  do
  {
    if (v8)
    {
      v12 = v11;
      goto LABEL_12;
    }

    do
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
      }

      if (v12 >= v9)
      {
        v16 = 0;
        goto LABEL_15;
      }

      v8 = *(v5 + 56 + 8 * v12);
      ++v11;
    }

    while (!v8);
    v11 = v12;
LABEL_12:
    v13 = (*(v5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
    v14 = v13[1];
    v8 &= v8 - 1;
    v19[0] = *v13;
    v19[1] = v14;
    MEMORY[0x1EEE9AC00](v10);
    v18[2] = v19;

    v15 = sub_18919A34C(sub_1891BC894, v18, v3);
  }

  while ((v15 & 1) == 0);
  v16 = 1;
LABEL_15:

  LOBYTE(v19[0]) = v16;
  return AGGraphSetOutputValue();
}

uint64_t sub_1891B96AC(uint64_t a1, uint64_t a2)
{

  return sub_1891B97A4(a1, a2, sub_1891A8C90, &qword_1EA93F3B8);
}

uint64_t sub_1891B9728(uint64_t a1, uint64_t a2)
{

  return sub_1891B97A4(a1, a2, sub_1891A8AC0, &qword_1EA93F3B0);
}

uint64_t sub_1891B97A4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t *a4)
{

  a3(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  AGGraphSetOutputValue();
}

uint64_t sub_1891B984C(uint64_t a1, uint64_t a2)
{

  return sub_1891B98B8(a1, a2, sub_1891A898C);
}

uint64_t sub_1891B98B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  return AGGraphSetOutputValue();
}

uint64_t sub_1891B9944(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  v3 = *AGGraphGetValue();

  if (v3 != 1)
  {

    return AGGraphSetOutputValue();
  }

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    AGGraphGetValue();

    return AGGraphSetOutputValue();
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B9A64(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
  }

  v3 = *AGGraphGetValue();

  if (v3 != 1)
  {
    goto LABEL_5;
  }

  v4 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v4)
  {
    v6 = *AGGraphGetValue();

    if (v6)
    {
LABEL_5:

      return AGGraphSetOutputValue();
    }

    v7 = *(v1 + 16);
    result = swift_unownedRetainStrong();
    if (v7)
    {
      AGGraphGetValue();

      return AGGraphSetOutputValue();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B9BBC(uint64_t *a1)
{
  v1 = *a1;

  if (!_UISolariumEnabled())
  {

    return AGGraphSetOutputValue();
  }

  swift_beginAccess();
  v2 = *(v1 + 16);
  result = swift_unownedRetainStrong();
  if (v2)
  {
    sub_188A34624(0, &qword_1ED490410);
    v4 = *AGGraphGetValue();

    [v4 userInterfaceIdiom];

    return AGGraphSetOutputValue();
  }

  __break(1u);
  return result;
}

uint64_t sub_1891B9CF8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_18A4A86C8() & 1;
  }
}

double sub_1891B9D50(void *a1)
{
  [a1 safeAreaInsets];
  v3 = v2;
  v4 = [a1 traitCollection];
  v5 = _UIFallbackSheetMetrics();
  v6 = [v4 horizontalSizeClass];
  v7 = [v4 verticalSizeClass];
  if (v7 == 1)
  {
    [v5 topOffsetInCompactHeight];
    v9 = v8;
  }

  else
  {
    v10 = v6 == 2 && v7 == 2;
    if (v10 || (v11 = objc_opt_self(), v12 = [v11 currentDevice], v13 = objc_msgSend(v12, sel_userInterfaceIdiom), v12, v13) || (v17 = objc_msgSend(v11, sel__hasHomeButton), v6 != 1) || v17)
    {
      [v5 topOffset];
      v15 = v14;

      v9 = v15 + v15;
    }

    else
    {
      [v5 topOffset];
      v9 = v18;
    }
  }

  return v3 + v9;
}

CGAffineTransform *sub_1891B9F04@<X0>(id a1@<X2>, uint64_t a2@<X0>, char a3@<W1>, __int128 *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, CGFloat a9@<D4>, CGFloat a10@<D5>, CGFloat a11@<D6>, CGFloat a12@<D7>, uint64_t a13, double a14)
{
  result = [a1 exclusivelyUsesZPositionForTransform];
  if (result)
  {
    v27 = xmmword_18A64B720;
    v28 = xmmword_18A64B730;
    v29 = 0uLL;
  }

  else
  {
    rect = a10;
    v30 = objc_opt_self();
    v62 = a6;
    v72.origin.x = a5;
    v72.origin.y = a6;
    v64 = a7;
    v72.size.width = a7;
    v72.size.height = a8;
    [v30 _horizontalContentMarginForView_ofWidth_];
    v59 = v31;
    [a1 maximumSheetDepthLevel];
    v33 = v32 + -1.0;
    if (v33 >= a14)
    {
      v33 = a14;
    }

    v34 = exp2(-v33);
    v35 = 1.0;
    v36 = 1.0 - v34 + 1.0 - v34;
    v73.origin.x = a9;
    v73.origin.y = rect;
    v73.size.width = a11;
    v68 = a12;
    v73.size.height = a12;
    if (CGRectGetWidth(v73) != 0.0)
    {
      v74.origin.x = a9;
      v74.origin.y = rect;
      v74.size.width = a11;
      v74.size.height = a12;
      v35 = 1.0 - (v59 + v59) * v36 / CGRectGetWidth(v74);
    }

    v60 = v36;
    if (a3)
    {
      v38 = v62;
      v37 = v64;
      v39 = a5;
    }

    else
    {
      [a1 topOffset];
      v41 = v40;
      v75.origin.x = a9;
      v75.origin.y = rect;
      v75.size.width = a11;
      v75.size.height = v68;
      Height = CGRectGetHeight(v75);
      v43 = 1.0;
      v39 = a5;
      v38 = v62;
      if (Height != 0.0)
      {
        v76.origin.x = a9;
        v76.origin.y = rect;
        v76.size.width = a11;
        v76.size.height = v68;
        v43 = 1.0 - v60 * (v41 + v41) / CGRectGetHeight(v76);
      }

      if (v35 <= v43)
      {
        v35 = v43;
      }

      v37 = v64;
    }

    CGAffineTransformMakeScale(&t1, v35, v35);
    v65 = *&t1.c;
    v66 = *&t1.a;
    tx = t1.tx;
    ty = t1.ty;
    v77.origin.x = v39;
    v77.origin.y = v38;
    v77.size.width = v37;
    v77.size.height = a8;
    v45 = CGRectGetHeight(v77);
    if (a3)
    {
      v61 = tx;
      v46 = v35 * v45;
      v78.origin.x = v39;
      v78.origin.y = v38;
      v78.size.width = v37;
      v78.size.height = a8;
      v58 = (CGRectGetHeight(v78) - v46) * 0.5;
      v79.origin.x = v39;
      v79.origin.y = v38;
      v79.size.width = v37;
      v79.size.height = a8;
      MinY = CGRectGetMinY(v79);
      v80.origin.x = a9;
      v80.origin.y = rect;
      v80.size.width = a11;
      v80.size.height = v68;
      v48 = (1.0 - v35) * (MinY - CGRectGetMinY(v80));
      [a1 topOffset];
      v50 = v60 * v49;
      [a1 maximumSheetDepthLevel];
      v52 = v50 * _UIClamp_2(v51 - a14);
      v81.origin.x = a9;
      v81.origin.y = rect;
      v81.size.width = a11;
      v81.size.height = v68;
      v53 = CGRectGetMinY(v81) - *&a13;
      tx = v61;
      v54 = _UIClamp_2(a14);
      v55 = v58;
      v56 = v53 * v54;
    }

    else
    {
      v82.origin.x = v39;
      v82.origin.y = v38;
      v82.size.width = v37;
      v82.size.height = a8;
      MidY = CGRectGetMidY(v82);
      v83.origin.x = a9;
      v83.origin.y = rect;
      v83.size.height = v68;
      v83.size.width = a11;
      v48 = (1.0 - v35) * (MidY - CGRectGetMidY(v83));
      v56 = 0.0;
      v52 = 0.0;
      v55 = 0.0;
    }

    CGAffineTransformMakeTranslation(&t1, 0.0, -(v56 + v52 + v48 + v55) / v35);
    *&t2.a = v66;
    *&t2.c = v65;
    t2.tx = tx;
    t2.ty = ty;
    result = CGAffineTransformConcat(&v69, &t1, &t2);
    v28 = *&v69.a;
    v27 = *&v69.c;
    v29 = *&v69.tx;
  }

  *a4 = v28;
  a4[1] = v27;
  a4[2] = v29;
  return result;
}

id sub_1891BA2F4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph_subgraph;
  if (qword_1EA931FC0 != -1)
  {
    swift_once();
  }

  *&v2[v5] = AGSubgraphCreate();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__indexOfCurrentActiveOrDismissDetentWasInvalidated];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMinimumOffsetWasInvalidated];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMaximumOffsetWasInvalidated];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = *&v2[v5];
  AGGraphClearUpdate();
  v10 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  type metadata accessor for SheetLayoutAttributes();
  swift_allocObject();
  v11 = sub_1891A5A08(a1);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  *&v2[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph_attributes] = v11;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_1891BA484()
{
  v1[1] = *MEMORY[0x1E69E9840];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3F0);
  v0 = AGGraphSetValue();
  sub_188A3F5FC(v1, &qword_1EA93F3F0);
  if (v0)
  {
    sub_18919AC04(0);
  }
}

void sub_1891BA554()
{
  v1[1] = *MEMORY[0x1E69E9840];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3F0);
  v0 = AGGraphSetValue();
  sub_188A3F5FC(v1, &qword_1EA93F3F0);
  if (v0)
  {
    sub_18919AC04(0);
  }
}

void sub_1891BA624(void *a1)
{
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (v3 == 1)
  {
    AGGraphClearUpdate();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
    v4 = *AGGraphGetValue();
    v5 = v4;
    AGGraphSetUpdate();
    if (v4)
    {
      [v5 _removeBoundingPathChangeObserver_];
    }

    if (a1)
    {
      [a1 _addBoundingPathChangeObserver_];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

void sub_1891BA774()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F390);
  if (AGGraphSetValue())
  {
    if (AGGraphSetValue())
    {
      sub_18919AC04(0);
    }

    sub_18919AC04(0);
  }
}

void sub_1891BA838(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v5 = sub_1891BA94C;
  }

  else
  {
    v5 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3E0);
  sub_188A52E38(a1);
  v6 = AGGraphSetValue();
  sub_188A55B8C(v5);
  if (v6)
  {
    sub_18919AC04(0);
  }
}

unint64_t sub_1891BA9B4()
{
  result = qword_1EA93F408;
  if (!qword_1EA93F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F408);
  }

  return result;
}

unint64_t sub_1891BAA08()
{
  result = qword_1EA93F410;
  if (!qword_1EA93F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F410);
  }

  return result;
}

unint64_t sub_1891BAA5C()
{
  result = qword_1EA93F418;
  if (!qword_1EA93F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F418);
  }

  return result;
}

unint64_t sub_1891BAAB0()
{
  result = qword_1EA93F420;
  if (!qword_1EA93F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F420);
  }

  return result;
}

unint64_t sub_1891BAB04()
{
  result = qword_1EA93F428;
  if (!qword_1EA93F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F428);
  }

  return result;
}

unint64_t sub_1891BAB58()
{
  result = qword_1EA93F430;
  if (!qword_1EA93F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F430);
  }

  return result;
}

unint64_t sub_1891BABAC()
{
  result = qword_1EA93F438;
  if (!qword_1EA93F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F438);
  }

  return result;
}

unint64_t sub_1891BAC00()
{
  result = qword_1EA93F440;
  if (!qword_1EA93F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F440);
  }

  return result;
}

unint64_t sub_1891BAC54()
{
  result = qword_1EA93F448;
  if (!qword_1EA93F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F448);
  }

  return result;
}

unint64_t sub_1891BACA8()
{
  result = qword_1EA93F450;
  if (!qword_1EA93F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F450);
  }

  return result;
}

unint64_t sub_1891BACFC()
{
  result = qword_1EA93F458;
  if (!qword_1EA93F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F458);
  }

  return result;
}

unint64_t sub_1891BAD50()
{
  result = qword_1EA93F460;
  if (!qword_1EA93F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F460);
  }

  return result;
}

unint64_t sub_1891BADA4()
{
  result = qword_1EA93F468;
  if (!qword_1EA93F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F468);
  }

  return result;
}

unint64_t sub_1891BADF8()
{
  result = qword_1EA93F470;
  if (!qword_1EA93F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F470);
  }

  return result;
}

unint64_t sub_1891BAE4C()
{
  result = qword_1EA93F478;
  if (!qword_1EA93F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F478);
  }

  return result;
}

unint64_t sub_1891BAEA0()
{
  result = qword_1EA93F480;
  if (!qword_1EA93F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F480);
  }

  return result;
}

unint64_t sub_1891BAEF4()
{
  result = qword_1EA93F488;
  if (!qword_1EA93F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F488);
  }

  return result;
}

unint64_t sub_1891BAF48()
{
  result = qword_1EA93F490;
  if (!qword_1EA93F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F490);
  }

  return result;
}

unint64_t sub_1891BAF9C()
{
  result = qword_1EA93F498;
  if (!qword_1EA93F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F498);
  }

  return result;
}

unint64_t sub_1891BAFF0()
{
  result = qword_1EA93F4A0;
  if (!qword_1EA93F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F4A0);
  }

  return result;
}

unint64_t sub_1891BB044()
{
  result = qword_1EA93F4A8;
  if (!qword_1EA93F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F4A8);
  }

  return result;
}

unint64_t sub_1891BB098()
{
  result = qword_1EA93F4B0;
  if (!qword_1EA93F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F4B0);
  }

  return result;
}

unint64_t sub_1891BB0EC()
{
  result = qword_1EA93F4B8;
  if (!qword_1EA93F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F4B8);
  }

  return result;
}

unint64_t sub_1891BB140()
{
  result = qword_1EA93F4C0;
  if (!qword_1EA93F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F4C0);
  }

  return result;
}

unint64_t sub_1891BB194()
{
  result = qword_1EA93F4C8;
  if (!qword_1EA93F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F4C8);
  }

  return result;
}

unint64_t sub_1891BB1E8()
{
  result = qword_1EA93F4D0;
  if (!qword_1EA93F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F4D0);
  }

  return result;
}

unint64_t sub_1891BB23C()
{
  result = qword_1EA93F4D8;
  if (!qword_1EA93F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F4D8);
  }

  return result;
}

unint64_t sub_1891BB290()
{
  result = qword_1EA93F4E0;
  if (!qword_1EA93F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F4E0);
  }

  return result;
}

unint64_t sub_1891BB2E4()
{
  result = qword_1EA93F4E8;
  if (!qword_1EA93F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F4E8);
  }

  return result;
}

unint64_t sub_1891BB338()
{
  result = qword_1EA93F4F0;
  if (!qword_1EA93F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F4F0);
  }

  return result;
}

unint64_t sub_1891BB38C()
{
  result = qword_1EA93F4F8;
  if (!qword_1EA93F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F4F8);
  }

  return result;
}

unint64_t sub_1891BB3E0()
{
  result = qword_1EA93F500;
  if (!qword_1EA93F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F500);
  }

  return result;
}

unint64_t sub_1891BB434()
{
  result = qword_1EA93F508;
  if (!qword_1EA93F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F508);
  }

  return result;
}

unint64_t sub_1891BB488()
{
  result = qword_1EA93F510;
  if (!qword_1EA93F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F510);
  }

  return result;
}

unint64_t sub_1891BB4DC()
{
  result = qword_1EA93F518;
  if (!qword_1EA93F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F518);
  }

  return result;
}

unint64_t sub_1891BB530()
{
  result = qword_1EA93F520;
  if (!qword_1EA93F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F520);
  }

  return result;
}

unint64_t sub_1891BB584()
{
  result = qword_1EA93F528;
  if (!qword_1EA93F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F528);
  }

  return result;
}

unint64_t sub_1891BB5D8()
{
  result = qword_1EA93F530;
  if (!qword_1EA93F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F530);
  }

  return result;
}

unint64_t sub_1891BB62C()
{
  result = qword_1EA93F538;
  if (!qword_1EA93F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F538);
  }

  return result;
}

unint64_t sub_1891BB680()
{
  result = qword_1EA93F540;
  if (!qword_1EA93F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F540);
  }

  return result;
}

unint64_t sub_1891BB6D4()
{
  result = qword_1EA93F548;
  if (!qword_1EA93F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F548);
  }

  return result;
}

unint64_t sub_1891BB728()
{
  result = qword_1EA93F550;
  if (!qword_1EA93F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F550);
  }

  return result;
}

unint64_t sub_1891BB77C()
{
  result = qword_1EA93F558;
  if (!qword_1EA93F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F558);
  }

  return result;
}

unint64_t sub_1891BB7D0()
{
  result = qword_1EA93F560;
  if (!qword_1EA93F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F560);
  }

  return result;
}

unint64_t sub_1891BB824()
{
  result = qword_1EA93F568;
  if (!qword_1EA93F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F568);
  }

  return result;
}

unint64_t sub_1891BB878()
{
  result = qword_1EA93F570;
  if (!qword_1EA93F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F570);
  }

  return result;
}

unint64_t sub_1891BB8CC()
{
  result = qword_1EA93F578;
  if (!qword_1EA93F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F578);
  }

  return result;
}

unint64_t sub_1891BB920()
{
  result = qword_1EA93F580;
  if (!qword_1EA93F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F580);
  }

  return result;
}

unint64_t sub_1891BB974()
{
  result = qword_1EA93F588;
  if (!qword_1EA93F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F588);
  }

  return result;
}

unint64_t sub_1891BB9C8()
{
  result = qword_1EA93F590;
  if (!qword_1EA93F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F590);
  }

  return result;
}

unint64_t sub_1891BBA1C()
{
  result = qword_1EA93F598;
  if (!qword_1EA93F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F598);
  }

  return result;
}

unint64_t sub_1891BBA70()
{
  result = qword_1EA93F5A0;
  if (!qword_1EA93F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F5A0);
  }

  return result;
}

unint64_t sub_1891BBAC4()
{
  result = qword_1EA93F5A8;
  if (!qword_1EA93F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F5A8);
  }

  return result;
}

unint64_t sub_1891BBB18()
{
  result = qword_1EA93F5B0;
  if (!qword_1EA93F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F5B0);
  }

  return result;
}

unint64_t sub_1891BBB6C()
{
  result = qword_1EA93F5B8;
  if (!qword_1EA93F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F5B8);
  }

  return result;
}

unint64_t sub_1891BBBC0()
{
  result = qword_1EA93F5C0;
  if (!qword_1EA93F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F5C0);
  }

  return result;
}

unint64_t sub_1891BBC14()
{
  result = qword_1EA93F5C8;
  if (!qword_1EA93F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F5C8);
  }

  return result;
}

unint64_t sub_1891BBC68()
{
  result = qword_1EA93F5D0;
  if (!qword_1EA93F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F5D0);
  }

  return result;
}

unint64_t sub_1891BBCBC()
{
  result = qword_1EA93F5D8;
  if (!qword_1EA93F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F5D8);
  }

  return result;
}

unint64_t sub_1891BBD10()
{
  result = qword_1EA93F5E0;
  if (!qword_1EA93F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F5E0);
  }

  return result;
}

unint64_t sub_1891BBD64()
{
  result = qword_1EA93F5E8;
  if (!qword_1EA93F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F5E8);
  }

  return result;
}

unint64_t sub_1891BBDB8()
{
  result = qword_1EA93F5F0;
  if (!qword_1EA93F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F5F0);
  }

  return result;
}

unint64_t sub_1891BBE0C()
{
  result = qword_1EA93F5F8;
  if (!qword_1EA93F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F5F8);
  }

  return result;
}

unint64_t sub_1891BBE60()
{
  result = qword_1EA93F600;
  if (!qword_1EA93F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F600);
  }

  return result;
}

unint64_t sub_1891BBEB4()
{
  result = qword_1EA93F608;
  if (!qword_1EA93F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F608);
  }

  return result;
}

unint64_t sub_1891BBF08()
{
  result = qword_1EA93F610;
  if (!qword_1EA93F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F610);
  }

  return result;
}

unint64_t sub_1891BBF5C()
{
  result = qword_1EA93F618;
  if (!qword_1EA93F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F618);
  }

  return result;
}

unint64_t sub_1891BBFB0()
{
  result = qword_1EA93F620;
  if (!qword_1EA93F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F620);
  }

  return result;
}

unint64_t sub_1891BC004()
{
  result = qword_1EA93F628;
  if (!qword_1EA93F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F628);
  }

  return result;
}

unint64_t sub_1891BC058()
{
  result = qword_1EA93F630;
  if (!qword_1EA93F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F630);
  }

  return result;
}

double *sub_1891BC0AC@<X0>(uint64_t a1@<X8>)
{
  if (*AGGraphGetValue() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
    if (!*AGGraphGetValue())
    {
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3F0);
  AGGraphGetValue();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = [Strong view];

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = *(Value + 8);
  v9 = *(Value + 16);
  v8 = *(Value + 24);
  v10 = AGGraphGetValue();
  v12 = *v10;
  v11 = *(v10 + 8);
  v68 = *(v10 + 16);
  rect = *(v10 + 24);
  v75 = *AGGraphGetValue();
  MinY = CGRectGetMinY(v75);
  v67 = *AGGraphGetValue();
  if (*AGGraphGetValue())
  {
    v14 = 1;
  }

  else
  {
    v14 = *AGGraphGetValue();
  }

  v15 = *(v1 + 48);
  if ([v15 exclusivelyUsesZPositionForTransform])
  {

LABEL_8:
    recta = xmmword_18A64B720;
    v69 = xmmword_18A64B730;
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_23;
  }

  v62 = MinY;
  v18 = objc_opt_self();
  v76.origin.x = v6;
  v76.origin.y = v7;
  v76.size.width = v9;
  v76.size.height = v8;
  [v18 _horizontalContentMarginForView_ofWidth_];
  v20 = v19;
  [v15 maximumSheetDepthLevel];
  v22 = v21 + -1.0;
  if (v22 >= v67)
  {
    v22 = v67;
  }

  v23 = exp2(-v22);
  v24 = 1.0;
  v66 = 1.0 - v23 + 1.0 - v23;
  v77.origin.x = v12;
  v77.origin.y = v11;
  v77.size.width = v68;
  v77.size.height = rect;
  if (CGRectGetWidth(v77) == 0.0)
  {
    v25 = &selRef_automaticallyPlacesContentView;
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_15:
    [v15 v25[411]];
    v27 = v26;
    v79.origin.x = v12;
    v79.origin.y = v11;
    v79.size.width = v68;
    v79.size.height = rect;
    Height = CGRectGetHeight(v79);
    v29 = 1.0;
    if (Height != 0.0)
    {
      v80.origin.x = v12;
      v80.origin.y = v11;
      v80.size.width = v68;
      v80.size.height = rect;
      v29 = 1.0 - v66 * (v27 + v27) / CGRectGetHeight(v80);
    }

    if (v24 <= v29)
    {
      v24 = v29;
    }

    goto LABEL_19;
  }

  v78.origin.x = v12;
  v78.origin.y = v11;
  v78.size.width = v68;
  v78.size.height = rect;
  v24 = 1.0 - (v20 + v20) * v66 / CGRectGetWidth(v78);
  v25 = &selRef_automaticallyPlacesContentView;
  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  CGAffineTransformMakeScale(&t1, v24, v24);
  v64 = *&t1.c;
  v65 = *&t1.a;
  tx = t1.tx;
  ty = t1.ty;
  v81.origin.x = v6;
  v81.origin.y = v7;
  v81.size.width = v9;
  v81.size.height = v8;
  v31 = CGRectGetHeight(v81);
  if (v14)
  {
    v61 = tx;
    v32 = v24 * v31;
    v82.origin.x = v6;
    v82.origin.y = v7;
    v82.size.width = v9;
    v82.size.height = v8;
    v60 = (CGRectGetHeight(v82) - v32) * 0.5;
    v83.origin.x = v6;
    v83.origin.y = v7;
    v83.size.width = v9;
    v83.size.height = v8;
    v33 = CGRectGetMinY(v83);
    v84.origin.x = v12;
    v84.origin.y = v11;
    v84.size.width = v68;
    v84.size.height = rect;
    v34 = (1.0 - v24) * (v33 - CGRectGetMinY(v84));
    [v15 v25[411]];
    v36 = v66 * v35;
    [v15 maximumSheetDepthLevel];
    v38 = v36 * _UIClamp_2(v37 - v67);
    v85.origin.x = v12;
    v85.origin.y = v11;
    v85.size.width = v68;
    v85.size.height = rect;
    v39 = CGRectGetMinY(v85) - v62;
    tx = v61;
    v40 = _UIClamp_2(v67);
    v41 = v60;
    v42 = v39 * v40;
  }

  else
  {
    v86.origin.x = v6;
    v86.origin.y = v7;
    v86.size.width = v9;
    v86.size.height = v8;
    MidY = CGRectGetMidY(v86);
    v87.origin.x = v12;
    v87.origin.y = v11;
    v87.size.width = v68;
    v87.size.height = rect;
    v34 = (1.0 - v24) * (MidY - CGRectGetMidY(v87));
    v42 = 0.0;
    v38 = 0.0;
    v41 = 0.0;
  }

  CGAffineTransformMakeTranslation(&t1, 0.0, -(v42 + v38 + v34 + v41) / v24);
  *&t2.a = v65;
  *&t2.c = v64;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v72, &t1, &t2);
  v69 = *&v72.a;
  recta = *&v72.c;
  v16 = v72.tx;
  v17 = v72.ty;

LABEL_23:
  type metadata accessor for CGRect(0);
  v88 = *AGGraphGetValue();
  Width = CGRectGetWidth(v88);
  v89 = *AGGraphGetValue();
  if (Width == CGRectGetWidth(v89))
  {
    v90 = *AGGraphGetValue();
    v45 = CGRectGetWidth(v90) > 0.0;
  }

  else
  {
    v45 = 0;
  }

  result = AGGraphGetValue();
  if (*result == 1 && (result = AGGraphGetValue(), *result == 0.0) && v45 && (result = AGGraphGetValue(), (*result & 1) == 0))
  {
    v91 = *AGGraphGetValue();
    v49 = CGRectGetWidth(v91);
    v92 = *AGGraphGetValue();
    v50 = 16.0 / CGRectGetWidth(v92);
    if (*AGGraphGetValue() <= 0.0)
    {
      v51 = 1.0 - *(AGGraphGetValue() + 8);
      v52 = 0.0;
      v53 = v50;
    }

    else
    {
      v51 = *AGGraphGetValue();
      v52 = v50;
      v53 = 56.0 / v49;
    }

    v54 = _UILerp_1(v51, v52, v53);
    v55 = _UIClamp_2(1.0 - v54);
    v93 = *AGGraphGetValue();
    v56 = CGRectGetWidth(v93);
    v94 = *AGGraphGetValue();
    v57 = CGRectGetHeight(v94);
    v58 = *AGGraphGetValue() == 0;
    v59 = -0.0;
    *&t1.a = v69;
    *&t1.c = recta;
    if (!v58)
    {
      v59 = (v54 * v56 - v54 * v57) * -0.5;
    }

    t1.tx = v16;
    t1.ty = v17;
    CGAffineTransformTranslate(&t2, &t1, 0.0, v59);
    t1 = t2;
    result = CGAffineTransformScale(&t2, &t1, v55, v55);
    v48 = *&t2.a;
    v47 = *&t2.c;
    v16 = t2.tx;
    v17 = t2.ty;
  }

  else
  {
    v48 = v69;
    v47 = recta;
  }

  *a1 = v48;
  *(a1 + 16) = v47;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  return result;
}

uint64_t sub_1891BC8B0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_18A4A86C8() & 1;
  }
}

uint64_t sub_1891BCEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static UISceneConnectionOptionDefinition.definitionID.getter(v19);
  v5 = v19[1];
  v17 = v19[0];
  v6 = v19[2];
  v7 = v19[3];
  v8 = sub_1891BF300();
  if (v3)
  {
  }

  else
  {
    v11 = v8;
    v12 = v9;
    v13 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
    v19[0] = &type metadata for _UISceneConnectionOptionCoder._MarkerSetting;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D80);
    sub_18A4A7308();
    v16 = a3;
    v14 = sub_18A4A7258();

    v15 = MEMORY[0x18CFE4050](v14);

    [v13 setFlag:1 forSetting:v15];
    sub_188DBEE28(v17, v5, v6, v7);

    sub_188DBF7D8(v11, v12);
    sub_188DBF67C(v11, v12);
    sub_188DC0F30(v11, v12);
    sub_188EBA734(a2, v16);
    [v13 copy];
    sub_18A4A7DE8();
    sub_188DC0F30(v11, v12);

    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930800);
    swift_dynamicCast();
    return v19[5];
  }
}

uint64_t sub_1891BD0CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88);
  MEMORY[0x1EEE9AC00](v1);
  *&v8 = &type metadata for _UISceneConnectionOptionCoder._TargetContentIdentifierSetting;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D90);
  sub_18A4A7308();
  v2 = sub_18A4A7258();

  v3 = MEMORY[0x18CFE4050](v2);

  if ([v0 objectForSetting_])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    type metadata accessor for _BoxedCodableValue();
    if (swift_dynamicCast())
    {
      v4 = v7;
      v5 = sub_1891BD560();

      return v5;
    }
  }

  else
  {
    sub_188A3F5FC(v10, &qword_1EA934050);
  }

  return 0;
}

uint64_t sub_1891BD560()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  v5 = OBJC_IVAR____TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox_contents;
  swift_beginAccess();
  sub_188DC7F98(v2 + v5, v15);
  if (v16 == 1)
  {
    sub_188A55538(v15, &v11);
    sub_188A55598(&v11, v10);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v11);
      return v14[0];
    }

    else
    {
      sub_189095BC0();
      swift_allocError();
      *v7 = 0;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(&v11);
    }
  }

  else
  {
    v6 = v15[0];
    (*(ObjectType + 160))(v14, *&v15[0], *(&v15[0] + 1), v4, v4);
    if (v1)
    {
      sub_188DC0F30(v6, *(&v6 + 1));
    }

    else
    {
      v12 = v4;
      ObjectType = v14[0];
      v8 = v14[1];

      sub_188DC0F30(v6, *(&v6 + 1));
      *&v11 = ObjectType;
      *(&v11 + 1) = v8;
      v13 = 1;
      swift_beginAccess();
      sub_188DCCB38(&v11, v2 + v5);
      swift_endAccess();
    }
  }

  return ObjectType;
}

BOOL sub_1891BD724(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      return *a1 == v2;
    }

    return 0;
  }

  return !v2;
}

uint64_t getEnumTagSinglePayload for _UISceneConnectionOptionDefinitionRegistry._DefinitionLookupResult(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for _UISceneConnectionOptionDefinitionRegistry._DefinitionLookupResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1891BD7F8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1891BD818(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v15 - v9;
  v11 = (*(v4 + 56))(v5, v4, v8);
  v11(v1);

  v12 = *(a1 + 40);
  v13 = *(v1 + *(a1 + 36));
  (*(v4 + 64))(v10, *(v2 + *(a1 + 36)), v2 + v12, v5, v4);
  sub_188DCE10C(*(v2 + *(a1 + 44)), v2 + v12, v13, v5, v4);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_1891BD998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v11 = type metadata accessor for _UISceneConnectionOptionDelegateInvocation();
  *(a5 + v11[9]) = a2;
  v12 = v11[10];
  v13 = swift_getAssociatedTypeWitness();
  result = (*(*(v13 - 8) + 32))(a5 + v12, a3, v13);
  *(a5 + v11[11]) = a4;
  return result;
}

uint64_t sub_1891BDABC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = *(type metadata accessor for ErrorInfo() + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a4 + v8, 1, 1, AssociatedTypeWitness);
  sub_1891BFE98();
  v10 = swift_allocError();
  *v11 = v7;
  *a4 = v10;
  a4[1] = a2;
  v12 = sub_18A4A7D38();
  v13 = *(*(v12 - 8) + 40);

  return v13(a4 + v8, a3, v12);
}

uint64_t sub_1891BDBE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for ErrorInfo();
  swift_getWitnessTable();
  v9 = sub_18A4A8938();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(*(v8 - 8) + 16))(&v15 - v12, a2, v8, v11);
  swift_storeEnumTagMultiPayload();
  sub_1891BE834(a1, v13, a3, a4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1891BDDB4(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_18A4A76C8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, v1, a1);
  v10 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = *(a1 + 16);
  (*(v3 + 32))(v11 + v10, v5, a1);
  sub_1891BEC10(0, 0, v8, &unk_18A671D50, v11);

  return sub_188A3F5FC(v8, &qword_1EA934728);
}

uint64_t sub_1891BDF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = swift_getAssociatedTypeWitness();
  sub_18A4A7D38();
  v6[6] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for ErrorInfo();
  swift_getWitnessTable();
  v7 = sub_18A4A8938();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1891BE140, 0, 0);
}

uint64_t sub_1891BE140()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_0(v1, *(v1 + 3));
  v3 = type metadata accessor for _UISceneConnectionOptionAsyncDelegateInvocation();
  *(v0 + 80) = v3;
  v4 = *(v3 + 40);
  *(v0 + 136) = v4;
  *(v0 + 88) = *(v1 + 5);
  v7 = (*(v2 + 16) + **(v2 + 16));
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1891BE2B8;

  return v7(&v1[v4]);
}

uint64_t sub_1891BE2B8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1891BE45C;
  }

  else
  {
    v2 = sub_1891BE3CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1891BE3CC()
{
  sub_188DCE10C(*(*(v0 + 16) + *(*(v0 + 80) + 44)), *(v0 + 16) + *(v0 + 136), *(v0 + 88), *(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1891BE45C()
{
  v1 = v0[13];
  v0[14] = *(v0[2] + *(v0[10] + 44));
  sub_18A4A76A8();
  v2 = v1;
  v0[15] = sub_18A4A7698();
  v4 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_1891BE510, v4, v3);
}

uint64_t sub_1891BE510()
{
  v1 = *(v0 + 88);

  *(v0 + 128) = [v1 session];

  return MEMORY[0x1EEE6DFA0](sub_1891BE598, 0, 0);
}

uint64_t sub_1891BE598()
{
  v1 = *(v0 + 104);
  v12 = *(v0 + 128);
  v13 = *(v0 + 112);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 24);
  v9 = *(v6 - 8);
  (*(v9 + 16))(v5, *(v0 + 16) + *(v0 + 136), v6);
  (*(v9 + 56))(v5, 0, 1, v6);
  sub_1891BE728(v1, v12, v5, v2);
  swift_storeEnumTagMultiPayload();
  sub_1891BE834(v13, v2, v8, v7);

  (*(v3 + 8))(v2, v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1891BE728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for ErrorInfo() + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(&a4[v8], 1, 1, AssociatedTypeWitness);
  *a4 = a1;
  *(a4 + 1) = a2;
  v10 = sub_18A4A7D38();
  v11 = *(*(v10 - 8) + 40);

  return v11(&a4[v8], a3, v10);
}

void sub_1891BE834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v7 = type metadata accessor for ErrorInfo();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v30 - v11;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  v14 = sub_18A4A8938();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v30 - v16);
  (*(v18 + 16))(&v30 - v16, a2, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v31;
    (*(v31 + 32))(v9, v17, v7);
    v20 = *v9;
    v21 = *(v9 + 1);
    v22 = *(v7 + 40);
    v23 = *(a4 + 80);
    v24 = *v9;
    v23(v20, v21, &v9[v22], a3, a4);
    v25 = sub_18A4A27C8();

    v26 = [objc_opt_self() responseForError_];
    (*(v19 + 8))(v9, v7);
  }

  else
  {
    v27 = *v17;
    v28 = v30;
    (*(v30 + 32))(v12, v17 + *(TupleTypeMetadata2 + 48), AssociatedTypeWitness);
    (*(a4 + 72))(v12, v27, a3, a4);
    v26 = [objc_allocWithZone(MEMORY[0x1E698E600]) init];

    (*(v28 + 8))(v12, AssociatedTypeWitness);
  }

  v29 = v32;
  if ([v32 canSendResponse])
  {
    [v29 sendResponse_];
  }
}

uint64_t sub_1891BEC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_188A3F29C(a3, v25 - v10, &qword_1EA934728);
  v12 = sub_18A4A76C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_188A3F5FC(v11, &qword_1EA934728);
  }

  else
  {
    sub_18A4A76B8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_18A4A7678();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_18A4A7318() + 32;
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

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

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

uint64_t sub_1891BEED0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_188A5EBAC(a1, a5);
  *(a5 + 40) = a2;
  v9 = type metadata accessor for _UISceneConnectionOptionAsyncDelegateInvocation();
  v10 = *(v9 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a5 + v10, a3, AssociatedTypeWitness);
  *(a5 + *(v9 + 44)) = a4;
  return result;
}

uint64_t sub_1891BEFA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = [a1 session];

  return sub_1891BF038(v10, a2, a3, a4, a5);
}

uint64_t sub_1891BF038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for _UISceneConnectionOptionFailureInvocation();
  v10 = v9[9];
  swift_getAssociatedTypeWitness();
  v11 = sub_18A4A7D38();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  *&a5[v9[10]] = a3;
  *&a5[v9[11]] = a4;
  return result;
}

uint64_t sub_1891BF110(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v19 = type metadata accessor for ErrorInfo();
  v9 = *(v19 - 8);
  v10 = MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - v11;
  v18 = *(v1 + *(a1 + 44));
  v13 = *(a1 + 36);
  v14 = *(v1 + *(a1 + 40));
  v15 = *v1;
  (*(v6 + 16))(v8, v1 + v13, v5, v10);
  v16 = v14;
  sub_1891BE728(v14, v15, v8, v12);
  sub_1891BDBE8(v18, v12, v4, v3);
  return (*(v9 + 8))(v12, v19);
}

uint64_t sub_1891BF300()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_18A4A79B8();
  if (v0)
  {
  }

  else
  {

    v3 = [v1 encodedData];
    v4 = sub_18A4A2928();

    return v4;
  }
}

void sub_1891BF42C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v71 = a2;
  v69 = a4;
  v70 = a1;
  v65 = a7;
  v66 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = &v59 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v62 = sub_18A4A7D38();
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v14 = &v59 - v13;
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  v68 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59 - v25;
  v27 = v71;
  v71 = a6;
  v28 = v72;
  sub_188DCD0B8(v70, v27, &v59 - v25);
  if (!v28)
  {
    v59 = v20;
    v29 = v67;
    v60 = v17;
    v61 = v23;
    v72 = AssociatedTypeWitness;
    v70 = 0;
    swift_getAssociatedTypeWitness();
    v30 = v69;
    v31 = swift_dynamicCastUnknownClass();
    if (v31)
    {
      v32 = v31;
      v33 = v30;
      sub_1891BFAD4(v32, a5, v71, v14);
      if ((*(v29 + 48))(v14, 1, v12) == 1)
      {
        (*(v63 + 8))(v14, v62);
        v69 = v32;
        v34 = [v32 delegate];
        if (v34)
        {
          v77 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E318);
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93F690);
          v35 = swift_dynamicCast();
          v36 = v65;
          v37 = v66;
          v38 = v72;
          v39 = v68;
          v40 = v64;
          if (v35)
          {
            if (*(&v74 + 1))
            {
              sub_188A5EBAC(&v73, v76);
              sub_188A5EBAC(v76, &v73);
              v41 = v61;
              (*(v39 + 32))(v61, v26, v38);
              v36[3] = type metadata accessor for _UISceneConnectionOptionAsyncDelegateInvocation();
              v36[4] = &off_1EFAF1B40;
              boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
              sub_1891BEED0(&v73, v69, v41, v37, boxed_opaque_existential_0);
              v43 = v37;
              return;
            }
          }

          else
          {
            v75 = 0;
            v73 = 0u;
            v74 = 0u;
          }
        }

        else
        {
          v75 = 0;
          v73 = 0u;
          v74 = 0u;
          v36 = v65;
          v37 = v66;
          v38 = v72;
          v39 = v68;
          v40 = v64;
        }

        sub_188A3F5FC(&v73, &unk_1EA93F680);
        (*(v39 + 16))(v40, v26, v38);
        (*(v39 + 56))(v40, 0, 1, v38);
        sub_1891BFE98();
        v55 = swift_allocError();
        *v56 = 4;
        v36[3] = type metadata accessor for _UISceneConnectionOptionFailureInvocation();
        v36[4] = &off_1EFAF1B50;
        v57 = __swift_allocate_boxed_opaque_existential_0(v36);
        v58 = v37;
        sub_1891BEFA0(v69, v40, v55, v58, v57);
        (*(v39 + 8))(v26, v38);
      }

      else
      {
        v45 = *(v29 + 32);
        v46 = v59;
        v45(v59, v14, v12);
        v47 = v60;
        v45(v60, v46, v12);
        v48 = v61;
        (*(v68 + 32))(v61, v26, v72);
        v49 = type metadata accessor for _UISceneConnectionOptionDelegateInvocation();
        v50 = v65;
        v65[3] = v49;
        v50[4] = &off_1EFAF1B30;
        v51 = __swift_allocate_boxed_opaque_existential_0(v50);
        v52 = v48;
        v53 = v66;
        sub_1891BD998(v47, v32, v52, v66, v51);
        v54 = v53;
      }
    }

    else
    {
      sub_1891BFE98();
      swift_allocError();
      *v44 = 5;
      swift_willThrow();
      (*(v68 + 8))(v26, v72);
    }
  }
}

uint64_t sub_1891BFAD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 delegate];
  if (v7)
  {
    v8 = v7;
    v12[3] = swift_getObjectType();
    v12[0] = v8;
    sub_1891BFBD4(v12, a2, a3, a4);
    return __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = *(*(AssociatedTypeWitness - 8) + 56);

    return v11(a4, 1, 1, AssociatedTypeWitness);
  }
}

double sub_1891BFBC4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18A6719F0;
  return result;
}

uint64_t sub_1891BFBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_18A4A7D38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  sub_188A55598(a1, v27);
  v11 = swift_dynamicCast();
  v12 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v11)
  {
    v13 = *(AssociatedTypeWitness - 8);
    v12(v10, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(a4, v10, AssociatedTypeWitness);
    v14 = a4;
    v15 = 0;
  }

  else
  {
    v12(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v10, v7);
    sub_188A55598(a1, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93F690);
    if (swift_dynamicCast())
    {
      sub_188A5EBAC(&v23, v27);
      v16 = v28;
      v17 = v29;
      __swift_project_boxed_opaque_existential_0(v27, v28);
      v18 = (*(v17 + 8))(v16, v17);
      if (v18)
      {
        v19 = v18;
        *(&v24 + 1) = swift_getObjectType();
        *&v23 = v19;
        sub_1891BFBD4(&v23, v21, v22);
        __swift_destroy_boxed_opaque_existential_0Tm(&v23);
        return __swift_destroy_boxed_opaque_existential_0Tm(v27);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    else
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      sub_188A3F5FC(&v23, &unk_1EA93F680);
    }

    v14 = a4;
    v15 = 1;
  }

  return (v12)(v14, v15, 1, AssociatedTypeWitness);
}

unint64_t sub_1891BFE98()
{
  result = qword_1EA93F640;
  if (!qword_1EA93F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F640);
  }

  return result;
}

uint64_t sub_1891BFEEC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_188DBF498(a1, a2);
  }

  return a1;
}

uint64_t sub_1891BFF54()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v3 <= 0x3F)
      {
        result = sub_188A34624(319, &qword_1ED48FD98);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1891C006C(int *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v5 + 64);
  v10 = *(v8 + 80);
  if (v6 <= *(v8 + 84))
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((*(*(v7 - 8) + 64) + ((v10 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v12 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    return v12 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = *(a1 + v13);
    if (v18)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v6 == v12)
  {
    v22 = *(v5 + 48);

    return v22(a1, v6, AssociatedTypeWitness);
  }

  else
  {
    v23 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v11 & 0x80000000) != 0)
    {
      v25 = *(v8 + 48);

      return v25((v23 + v10 + 8) & ~v10);
    }

    else
    {
      v24 = *v23;
      if (*v23 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }
}

void sub_1891C0330(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v7 + 64);
  v11 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((*(v9 + 64) + ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v17 = 0;
    v18 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v9 + 64) + ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a3 - v13 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v8 == v13)
      {
        v21 = *(v7 + 56);

        v21(a1, a2, v8, AssociatedTypeWitness);
      }

      else
      {
        v22 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v24 = *(v9 + 56);

          v24((v22 + v11 + 8) & ~v11, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v23 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v23 = (a2 - 1);
          }

          *v22 = v23;
        }
      }

      return;
    }
  }

  if (((*(v9 + 64) + ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(v9 + 64) + ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v13 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

uint64_t sub_1891C0630()
{
  result = sub_1891C101C(319, qword_1EA92E920);
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v3 <= 0x3F)
      {
        result = sub_188A34624(319, &qword_1ED48FD98);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1891C0740(uint64_t a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v7 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if ((v6 & 0x80000000) != 0)
    {
      v19 = *(v5 + 48);

      return v19((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
    }

    else
    {
      v18 = *(a1 + 24);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

double sub_1891C08E0(char *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v6 + 84);
  v9 = *(v6 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = ((*(v6 + 64) + ((v9 + 48) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((*(v6 + 64) + ((v9 + 48) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v14)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v8 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);

        v18((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result = 0.0;
        *(a1 + 8) = 0u;
        *(a1 + 24) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 3) = (a2 - 1);
      }

      return result;
    }
  }

  if (((*(v6 + 64) + ((v9 + 48) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((*(v6 + 64) + ((v9 + 48) & ~v9) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&a1[v11] = v16;
    }

    else
    {
      *&a1[v11] = v16;
    }
  }

  else if (v14)
  {
    a1[v11] = v16;
  }

  return result;
}

uint64_t sub_1891C0AE8()
{
  result = sub_188A34624(319, &qword_1EA92EFF8);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_18A4A7D38();
    if (v2 <= 0x3F)
    {
      result = sub_1891C101C(319, &qword_1EA92EEE0);
      if (v3 <= 0x3F)
      {
        result = sub_188A34624(319, &qword_1ED48FD98);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1891C0BEC(uint64_t *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = 7;
  if (!v6)
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((((v11 + v10 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v8 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v12)) == 0)
  {
LABEL_33:
    if ((v7 & 0x80000000) != 0)
    {
      v21 = (*(v5 + 48))((a1 + v9 + 8) & ~v9);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v8 + (v13 | v19) + 1;
}

void sub_1891C0D98(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = ((((v12 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 < a3)
  {
    if (((((v12 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a3 - v11 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 > v11)
  {
    if (((((v12 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v11;
    }

    else
    {
      v16 = 1;
    }

    if (((((v12 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v11 + a2;
      bzero(a1, ((((v12 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v17;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(a1 + v13) = v16;
      }

      else
      {
        *(a1 + v13) = v16;
      }
    }

    else if (v6)
    {
      *(a1 + v13) = v16;
    }

    return;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v13) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if ((v9 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 8) & ~v10);
    if (v9 >= a2)
    {
      v23 = *(v7 + 56);

      v23(v19, a2 + 1);
    }

    else
    {
      if (v12 <= 3)
      {
        v20 = ~(-1 << (8 * v12));
      }

      else
      {
        v20 = -1;
      }

      if (v12)
      {
        v21 = v20 & (~v9 + a2);
        if (v12 <= 3)
        {
          v22 = v12;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v12);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v18 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v18 = a2 - 1;
    }

    *a1 = v18;
  }
}

uint64_t sub_1891C101C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1891C1078(uint64_t *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v7 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if ((v6 & 0x80000000) != 0)
    {
      v19 = *(v5 + 48);

      return v19((a1 + v8 + 8) & ~v8);
    }

    else
    {
      v18 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1891C1210(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((*(v6 + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v13 = 0;
    v14 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((*(v6 + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = a3 - v9 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v13)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);

        v18((a1 + v8 + 8) & ~v8, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v17 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v17 = (a2 - 1);
        }

        *a1 = v17;
      }

      return;
    }
  }

  if (((*(v6 + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(v6 + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v9 + a2;
    bzero(a1, v10);
    *a1 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v10) = v15;
    }

    else
    {
      *(a1 + v10) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v10) = v15;
  }
}

uint64_t sub_1891C1428(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for _UISceneConnectionOptionAsyncDelegateInvocation() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_188C482B4;

  return sub_1891BDF9C(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_1891C1534(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_188C482B4;

  return sub_188C48048(a1, v4);
}

uint64_t sub_1891C15EC()
{
  result = sub_1891C101C(319, &qword_1EA92EEE0);
  if (v1 <= 0x3F)
  {
    result = sub_188A34624(319, &qword_1EA92EFF8);
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_18A4A7D38();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1891C16C8(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_31;
  }

  v11 = v10 + ((v9 + 16) & ~v9);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = (*(v5 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void sub_1891C18AC(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = ((v10 + 16) & ~v10) + v12;
  if (a3 <= v11)
  {
    goto LABEL_20;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v11 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v6 = 4;
      if (v11 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_20:
    if (v11 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v6 = 1;
  if (v11 >= a2)
  {
LABEL_30:
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if ((v9 & 0x80000000) != 0)
      {
        v20 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10);
        if (v9 >= a2)
        {
          v24 = *(v7 + 56);

          v24(v20, a2 + 1);
        }

        else
        {
          if (v12 <= 3)
          {
            v21 = ~(-1 << (8 * v12));
          }

          else
          {
            v21 = -1;
          }

          if (v12)
          {
            v22 = v21 & (~v9 + a2);
            if (v12 <= 3)
            {
              v23 = v12;
            }

            else
            {
              v23 = 4;
            }

            bzero(v20, v12);
            if (v23 > 2)
            {
              if (v23 == 3)
              {
                *v20 = v22;
                v20[2] = BYTE2(v22);
              }

              else
              {
                *v20 = v22;
              }
            }

            else if (v23 == 1)
            {
              *v20 = v22;
            }

            else
            {
              *v20 = v22;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *a1 = v19;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v16 = ~v11 + a2;
  if (v13 >= 4)
  {
    bzero(a1, ((v10 + 16) & ~v10) + v12);
    *a1 = v16;
    v17 = 1;
    if (v6 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_59:
    if (v6 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_59;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v6 > 1)
    {
LABEL_63:
      if (v6 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v6)
  {
    a1[v13] = v17;
  }
}

void sub_1891C1C24(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_18A4A7288();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_1891C1CBC()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_1EA92EC48 = result;
  return result;
}

uint64_t static UITraitListEnvironment.affectsColorAppearance.getter()
{
  if (qword_1EA92EC40 != -1)
  {
    swift_once();
  }

  return byte_1EA92EC48;
}

uint64_t sub_1891C1DA0()
{
  if (qword_1EA92EC40 != -1)
  {
    swift_once();
  }

  return byte_1EA92EC48;
}

uint64_t UIMutableTraits.listEnvironment.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_1891C1E6C();
  v4(&v7, &type metadata for UITraitListEnvironment, &type metadata for UITraitListEnvironment, &protocol witness table for UITraitListEnvironment, v5, a1, a2);
  return v7;
}

unint64_t sub_1891C1E6C()
{
  result = qword_1EA92E828;
  if (!qword_1EA92E828)
  {
    type metadata accessor for UIListEnvironment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92E828);
  }

  return result;
}

uint64_t UIMutableTraits.listEnvironment.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_1891C1E6C();
  return v5(&v8, &type metadata for UITraitListEnvironment, &type metadata for UITraitListEnvironment, &protocol witness table for UITraitListEnvironment, v6, a2, a3);
}

void (*UIMutableTraits.listEnvironment.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_1891C1E6C();
  v8(&type metadata for UITraitListEnvironment, &type metadata for UITraitListEnvironment, &protocol witness table for UITraitListEnvironment, v9, a2, a3);
  return sub_1891C2008;
}

void sub_1891C2008(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_1891C1E6C();
  v4(v1, &type metadata for UITraitListEnvironment, &type metadata for UITraitListEnvironment, &protocol witness table for UITraitListEnvironment, v5, v3, v2);

  free(v1);
}

id sub_1891C20A4(void *a1, uint64_t a2, char a3, void *a4)
{
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  v9 = v8;
  if (a1)
  {
    v10 = a1;
    if ((a3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v17 = a1;
    v7 = [v7 tertiaryLabelColor];
    v18 = [v7 resolvedColorWithTraitCollection_];
    goto LABEL_10;
  }

  v10 = v8;
  if ((a3 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v11 = a1;
  if ((a3 & 0x10) != 0)
  {
    v21 = [a4 userInterfaceStyle];
    v22 = [v10 resolvedColorWithTraitCollection_];
    v7 = v22;
    if (v21 != 1)
    {
      v25 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
      v19 = [v7 _colorBlendedWithColor_];

      if (v19)
      {
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_20;
    }

    v18 = [v22 colorWithAlphaComponent_];
LABEL_10:
    v19 = v18;
    goto LABEL_11;
  }

  if (a3)
  {
    v23 = [a4 userInterfaceStyle];
    v24 = [v10 resolvedColorWithTraitCollection_];
    v7 = v24;
    if (v23 == 1)
    {
      v18 = [v24 colorWithAlphaComponent_];
      goto LABEL_10;
    }

LABEL_20:
    v26 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.1];
    v19 = [v7 _colorBlendedWithColor_];

    if (!v19)
    {
      __break(1u);
      goto LABEL_22;
    }

LABEL_11:

    v9 = v10;
    v10 = v19;
LABEL_12:

    v9 = v7;
    goto LABEL_13;
  }

  if ((a3 & 4) != 0)
  {

    v12 = [v7 tintColor];
    v13 = [v12 CGColor];

    UISColorLuminance();
    v15 = v14;

    if (1.05 / (v15 + 0.05) > 2.0)
    {
      v16 = [v7 whiteColor];
LABEL_23:
      v7 = v10;
      v10 = v16;
      goto LABEL_12;
    }

LABEL_22:
    v16 = [v7 blackColor];
    goto LABEL_23;
  }

LABEL_13:

  return v10;
}

id sub_1891C23A4(uint64_t a1, char a2)
{
  v3 = objc_opt_self();
  v4 = &selRef_clearColor;
  if ((a2 & 4) != 0)
  {
    v4 = &selRef_tintColor;
  }

  v5 = [v3 *v4];

  return v5;
}

id sub_1891C2404(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v9 = a4;
  v10 = v7(a2, a3, v9);

  return v10;
}

id sub_1891C24A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  v11 = a5;
  v12 = v9(a2, a3, a4, v11);

  return v12;
}

id sub_1891C2544()
{
  result = sub_1891C2564();
  qword_1EA92F758 = result;
  return result;
}

id sub_1891C2564()
{
  v0 = [objc_allocWithZone(_UIButtonConfigurationStyleBehaviors) initWithStyle_];
  v1 = sub_18A4A7258();
  [v0 setStyleDescription_];

  v2 = [objc_opt_self() grayBehaviors];
  if (_UISolariumEnabled())
  {
    v3 = [v2 calculateForegroundColor];
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      v13 = sub_1891C417C;
      v14 = v4;
      v9 = MEMORY[0x1E69E9820];
      v10 = 1107296256;
      v11 = sub_188BE17C0;
      v12 = &block_descriptor_103_6;
      v3 = _Block_copy(&v9);
    }

    [v0 setCalculateForegroundColor_];
    _Block_release(v3);
    v13 = sub_1891C41A0;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_1891C2404;
    v12 = &block_descriptor_90_7;
    v5 = _Block_copy(&v9);
    [v0 setCalculateBackgroundColor_];
    _Block_release(v5);
    v13 = sub_1891C2864;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_1891C24A0;
    v12 = &block_descriptor_93_1;
    v6 = _Block_copy(&v9);
    [v0 setCalculateMaterial_];
    _Block_release(v6);
    [v0 setCornerStyle_];
    v13 = sub_1891C41A4;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_188BE1F70;
    v12 = &block_descriptor_96_3;
    v7 = _Block_copy(&v9);
    [v0 setCalculateMonochromaticTreatment_];
    _Block_release(v7);
  }

  else
  {

    return v2;
  }

  return v0;
}

id sub_1891C286C()
{
  result = sub_1891C288C();
  qword_1EA93F7A0 = result;
  return result;
}

id sub_1891C288C()
{
  v0 = [objc_allocWithZone(_UIButtonConfigurationStyleBehaviors) initWithStyle_];
  v1 = sub_18A4A7258();
  [v0 setStyleDescription_];

  v2 = [objc_opt_self() grayBehaviors];
  if (_UISolariumEnabled())
  {
    v3 = [v2 calculateForegroundColor];
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      v15 = sub_1891C417C;
      v16 = v4;
      v11 = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_188BE17C0;
      v14 = &block_descriptor_87_0;
      v3 = _Block_copy(&v11);
    }

    [v0 setCalculateForegroundColor_];
    _Block_release(v3);
    v15 = sub_1891C41A0;
    v16 = 0;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1891C2404;
    v14 = &block_descriptor_71_2;
    v5 = _Block_copy(&v11);
    [v0 setCalculateBackgroundColor_];
    _Block_release(v5);
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v15 = sub_1891C415C;
    v16 = v6;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1891C24A0;
    v14 = &block_descriptor_77_3;
    v7 = _Block_copy(&v11);
    v8 = v2;

    [v0 setCalculateMaterial_];
    _Block_release(v7);
    [v0 setCornerStyle_];
    v15 = sub_1891C41A4;
    v16 = 0;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_188BE1F70;
    v14 = &block_descriptor_80_4;
    v9 = _Block_copy(&v11);
    [v0 setCalculateMonochromaticTreatment_];
    _Block_release(v9);
  }

  else
  {

    return v2;
  }

  return v0;
}

void *sub_1891C2BB8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, void *a5)
{
  v10 = 3;
  v11 = 4;
  if ((a2 & 0x10) == 0)
  {
    v11 = (a2 >> 1) & 2;
  }

  if ((a2 & 1) == 0)
  {
    v10 = v11;
  }

  if ((a2 & 2) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10;
  }

  v13 = [objc_allocWithZone(_UIViewGlass) initWithVariant:1 state:v12];
  v14 = v13;
  if ((a3 & 1) == 0)
  {
    [v13 setAdaptive_];
  }

  [v14 setFlexible_];
  v15 = [a5 effectiveBackgroundColorFromBaseColor:a1 state:a2 traitCollection:a4];
  [v14 setTintColor_];

  return v14;
}

id sub_1891C2CB8(void *a1, void *a2, char a3, uint64_t a4)
{
  if (a2)
  {
    v8 = a2;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = objc_opt_self();
    v13 = a2;
    v10 = [v12 _legibleForegroundColorForBackgroundColor_traitCollection_];
    if ((a3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = objc_opt_self();
    v15 = a1;
    v16 = [v14 tertiaryLabelColor];
    v17 = [v16 resolvedColorWithTraitCollection_];

    v8 = v16;
    v10 = v17;
    goto LABEL_8;
  }

  v8 = [objc_opt_self() tintColor];
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = a2;
  v10 = a1;
  if ((a3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = a1;
LABEL_8:

  return v10;
}

void *sub_1891C2DDC(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  v6 = a2;
  v8 = 3;
  v9 = 4;
  if ((a2 & 0x10) == 0)
  {
    v9 = (a2 >> 1) & 2;
  }

  if ((a2 & 1) == 0)
  {
    v8 = v9;
  }

  if ((a2 & 2) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8;
  }

  v11 = [objc_allocWithZone(_UIViewGlass) initWithVariant:0 state:v10];
  v12 = v11;
  if ((a3 & 1) == 0)
  {
    [v11 setAdaptive_];
  }

  [v12 setFlexible_];
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = [objc_opt_self() tintColor];
  }

  v14 = a1;
  v15 = [v13 resolvedColorWithTraitCollection_];

  if ((v6 & 2) != 0)
  {
    v16 = objc_opt_self();
    v17 = [(UIColor *)v16 _disabledColorForColor:v15];
    [v12 setTintColor_];
  }

  else
  {
    [v12 setTintColor_];
  }

  return v12;
}

id sub_1891C2F48()
{
  result = sub_1891C2F68();
  qword_1EA93F7B0 = result;
  return result;
}

id sub_1891C2F68()
{
  v0 = [objc_allocWithZone(_UIButtonConfigurationStyleBehaviors) initWithStyle_];
  v1 = sub_18A4A7258();
  [v0 setStyleDescription_];

  v2 = [objc_opt_self() grayBehaviors];
  if (_UISolariumEnabled())
  {
    v3 = [v2 calculateForegroundColor];
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      v13 = sub_1891C417C;
      v14 = v4;
      v9 = MEMORY[0x1E69E9820];
      v10 = 1107296256;
      v11 = sub_188BE17C0;
      v12 = &block_descriptor_59_1;
      v3 = _Block_copy(&v9);
    }

    [v0 setCalculateForegroundColor_];
    _Block_release(v3);
    v13 = sub_1891C41A0;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_1891C2404;
    v12 = &block_descriptor_46_2;
    v5 = _Block_copy(&v9);
    [v0 setCalculateBackgroundColor_];
    _Block_release(v5);
    v13 = sub_1891C3270;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_1891C24A0;
    v12 = &block_descriptor_49_4;
    v6 = _Block_copy(&v9);
    [v0 setCalculateMaterial_];
    _Block_release(v6);
    [v0 setCornerStyle_];
    v13 = sub_1891C41A4;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_188BE1F70;
    v12 = &block_descriptor_52_2;
    v7 = _Block_copy(&v9);
    [v0 setCalculateMonochromaticTreatment_];
    _Block_release(v7);
  }

  else
  {

    return v2;
  }

  return v0;
}

id sub_1891C3278()
{
  result = sub_1891C3298();
  qword_1EA92E768 = result;
  return result;
}

id sub_1891C3298()
{
  v0 = [objc_allocWithZone(_UIButtonConfigurationStyleBehaviors) initWithStyle_];
  v1 = sub_18A4A7258();
  [v0 setStyleDescription_];

  v2 = [objc_opt_self() grayBehaviors];
  if (_UISolariumEnabled())
  {
    v3 = [v2 calculateForegroundColor];
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      v13 = sub_1891C417C;
      v14 = v4;
      v9 = MEMORY[0x1E69E9820];
      v10 = 1107296256;
      v11 = sub_188BE17C0;
      v12 = &block_descriptor_43_2;
      v3 = _Block_copy(&v9);
    }

    [v0 setCalculateForegroundColor_];
    _Block_release(v3);
    v13 = sub_1891C41A0;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_1891C2404;
    v12 = &block_descriptor_30_3;
    v5 = _Block_copy(&v9);
    [v0 setCalculateBackgroundColor_];
    _Block_release(v5);
    v13 = sub_1891C3598;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_1891C24A0;
    v12 = &block_descriptor_33_7;
    v6 = _Block_copy(&v9);
    [v0 setCalculateMaterial_];
    _Block_release(v6);
    [v0 setCornerStyle_];
    v13 = sub_1891C41A4;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_188BE1F70;
    v12 = &block_descriptor_36_1;
    v7 = _Block_copy(&v9);
    [v0 setCalculateMonochromaticTreatment_];
    _Block_release(v7);
  }

  else
  {

    return v2;
  }

  return v0;
}

id sub_1891C35BC()
{
  result = sub_1891C35DC();
  qword_1EA92E750 = result;
  return result;
}

id sub_1891C35DC()
{
  v0 = [objc_allocWithZone(_UIButtonConfigurationStyleBehaviors) initWithStyle_];
  v1 = sub_18A4A7258();
  [v0 setStyleDescription_];

  v2 = [objc_opt_self() grayBehaviors];
  if (_UISolariumEnabled())
  {
    v3 = [v2 calculateForegroundColor];
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      v13 = sub_188BE18FC;
      v14 = v4;
      v9 = MEMORY[0x1E69E9820];
      v10 = 1107296256;
      v11 = sub_188BE17C0;
      v12 = &block_descriptor_27_2;
      v3 = _Block_copy(&v9);
    }

    [v0 setCalculateForegroundColor_];
    _Block_release(v3);
    v13 = sub_1891C41A0;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_1891C2404;
    v12 = &block_descriptor_15_4;
    v5 = _Block_copy(&v9);
    [v0 setCalculateBackgroundColor_];
    _Block_release(v5);
    v13 = sub_1891C38DC;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_1891C24A0;
    v12 = &block_descriptor_18_7;
    v6 = _Block_copy(&v9);
    [v0 setCalculateMaterial_];
    _Block_release(v6);
    [v0 setCornerStyle_];
    v13 = sub_1891C41A4;
    v14 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_188BE1F70;
    v12 = &block_descriptor_21_2;
    v7 = _Block_copy(&v9);
    [v0 setCalculateMonochromaticTreatment_];
    _Block_release(v7);
  }

  else
  {

    return v2;
  }

  return v0;
}

void *sub_1891C3900(uint64_t a1, unint64_t a2, char a3)
{
  v4 = 3;
  v5 = 4;
  if ((a2 & 0x10) == 0)
  {
    v5 = (a2 >> 1) & 2;
  }

  if ((a2 & 1) == 0)
  {
    v4 = v5;
  }

  if ((a2 & 2) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  v7 = [objc_allocWithZone(_UIViewGlass) initWithVariant:1 state:v6];
  v8 = v7;
  if ((a3 & 1) == 0)
  {
    [v7 setAdaptive_];
  }

  [v8 setFlexible_];
  v9 = sub_18A4A7258();
  [v8 setSubvariant_];

  return v8;
}

id sub_1891C39D8()
{
  result = sub_1891C39F8();
  qword_1EA93F7B8 = result;
  return result;
}

id sub_1891C39F8()
{
  v0 = [objc_allocWithZone(_UIButtonConfigurationStyleBehaviors) initWithStyle_];
  v1 = sub_18A4A7258();
  [v0 setStyleDescription_];

  v2 = [objc_opt_self() grayBehaviors];
  if (_UISolariumEnabled())
  {
    v12 = sub_1891C3CAC;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_188BE17C0;
    v11 = &block_descriptor_142;
    v3 = _Block_copy(&v8);
    [v0 setCalculateForegroundColor_];
    _Block_release(v3);
    v12 = sub_1891C41A0;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1891C2404;
    v11 = &block_descriptor_3_6;
    v4 = _Block_copy(&v8);
    [v0 setCalculateBackgroundColor_];
    _Block_release(v4);
    v12 = sub_1891C3FD0;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1891C24A0;
    v11 = &block_descriptor_6_11;
    v5 = _Block_copy(&v8);
    [v0 setCalculateMaterial_];
    _Block_release(v5);
    [v0 setCornerStyle_];
    v12 = sub_1891C41A4;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_188BE1F70;
    v11 = &block_descriptor_9_4;
    v6 = _Block_copy(&v8);
    [v0 setCalculateMonochromaticTreatment_];
    _Block_release(v6);
  }

  else
  {

    return v2;
  }

  return v0;
}

void sub_1891C3CAC(void *a1, uint64_t a2, char a3, void *a4)
{
  v7 = 0x1E70E9000;
  v8 = [objc_opt_self() labelColor];
  v9 = v8;
  v10 = a1;
  if (!a1)
  {
    v10 = v8;
  }

  v11 = a1;
  v12 = a4;
  v13 = v12;
  if ((a3 & 2) != 0)
  {
    v20 = [objc_opt_self() tertiaryLabelColor];
    [v20 resolvedColorWithTraitCollection_];

    v21 = v10;
    v13 = v20;
    goto LABEL_19;
  }

  if ((a3 & 0x10) != 0)
  {
    v22 = [v12 userInterfaceStyle];
    v23 = [v10 resolvedColorWithTraitCollection_];
    v24 = v23;
    if (v22 == 1)
    {
      v25 = [v23 colorWithAlphaComponent_];
LABEL_14:
      v25;
LABEL_18:

      v21 = v10;
      v13 = v9;
      v9 = v24;
      goto LABEL_19;
    }

    v7 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
    v28 = [v24 _colorBlendedWithColor_];

    if (v28)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      if ((a3 & 4) == 0)
      {
LABEL_20:

        return;
      }

      v14 = objc_opt_self();

      v15 = [v14 tintColor];
      v16 = [v15 CGColor];

      UISColorLuminance();
      v18 = v17;

      if (1.05 / (v18 + 0.05) <= 2.0)
      {
        v19 = [v14 blackColor];
      }

      else
      {
        v19 = [v14 whiteColor];
      }

      v31 = v19;
      v21 = v9;
      v9 = v10;
LABEL_19:

      goto LABEL_20;
    }

    v26 = [v12 userInterfaceStyle];
    v27 = [v10 resolvedColorWithTraitCollection_];
    v24 = v27;
    if (v26 == 1)
    {
      v25 = [v27 colorWithAlphaComponent_];
      goto LABEL_14;
    }
  }

  v29 = [objc_allocWithZone(v7[217]) initWithWhite:1.0 alpha:0.1];
  v30 = [v24 _colorBlendedWithColor_];

  if (v30)
  {
    goto LABEL_18;
  }

  __break(1u);
}

void *sub_1891C3FD8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = 3;
  v7 = 4;
  if ((a2 & 0x10) == 0)
  {
    v7 = (a2 >> 1) & 2;
  }

  if ((a2 & 1) == 0)
  {
    v6 = v7;
  }

  if ((a2 & 2) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  v9 = [objc_allocWithZone(_UIViewGlass) initWithVariant:a5 state:v8];
  v10 = v9;
  if ((a3 & 1) == 0)
  {
    [v9 setAdaptive_];
  }

  [v10 setFlexible_];
  return v10;
}

id sub_1891C41A8(__int128 *a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__shape);
  swift_beginAccess();
  v5 = v4[1];
  v11 = *v4;
  v12 = v5;
  v13[0] = v4[2];
  v6 = v13[0];
  *(v13 + 9) = *(v4 + 41);
  v14[0] = v11;
  v14[1] = v5;
  v15[0] = v6;
  *(v15 + 9) = *(v13 + 9);
  v7 = a1[1];
  *v4 = *a1;
  v4[1] = v7;
  *(v4 + 41) = *(a1 + 41);
  v4[2] = a1[2];
  sub_188A3F29C(&v11, v9, &qword_1EA934C40);
  sub_188A3F5FC(v14, &qword_1EA934C40);
  v9[0] = v11;
  v9[1] = v12;
  v10[0] = v13[0];
  *(v10 + 9) = *(v13 + 9);
  sub_188E83D28(v9);
  sub_188A3F5FC(&v11, &qword_1EA934C40);
  swift_endAccess();
  result = *(v2 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_pointerInteraction);
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

void sub_1891C42CC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_pointerInteraction);
  if (v2)
  {
    sub_188A3F29C(a1, v12, &unk_1EA93F7F0);
    if (v12[8] == 255)
    {
      v4 = v2;
      sub_188A3F5FC(v12, &unk_1EA93F7F0);
    }

    else
    {
      sub_188CAFD94(v12, v11);
      if (v11[8])
      {
        v3 = v2;
        sub_188CB083C(v11);
        sub_188CB083C(v12);
      }

      else
      {
        sub_188CB0D7C(v11, v9);
        Strong = swift_unknownObjectWeakLoadStrong();
        v6 = v2;
        sub_188A3F5FC(v9, &qword_1EA939220);
        sub_188CB083C(v12);
        if (Strong)
        {
          [Strong removeInteraction_];
        }
      }
    }

    v7 = v1 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_host;
    swift_beginAccess();
    if (*(v7 + 8) != 255)
    {
      sub_188CAFD94(v7, v11);
      sub_188CAFD94(v11, v9);
      if (v9[8])
      {

        sub_188CB083C(v11);
        sub_188CB083C(v9);
        return;
      }

      sub_188CB0D7C(v9, v10);
      v8 = swift_unknownObjectWeakLoadStrong();
      sub_188A3F5FC(v10, &qword_1EA939220);
      sub_188CB083C(v11);
      if (v8)
      {
        [v8 addInteraction_];
      }
    }
  }
}

uint64_t sub_1891C45D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__effect;
  swift_beginAccess();
  sub_188CAFD38(v3 + v4, v6);
  sub_188A53994(v6, a1);
  return sub_188CB0B9C(v6);
}

uint64_t sub_1891C4644(uint64_t a1)
{
  v3 = *v1;
  sub_188A53994(a1, v6);
  v4 = v3 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__effect;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  sub_188A5EBAC(v6, v4);
  *(v4 + 40) = 0;
  swift_endAccess();
  swift_unknownObjectRelease();
  sub_188CAFA64();
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1891C46D8@<X0>(__int128 *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__shape);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *&v11[9] = *(v3 + 41);
  v10[1] = v5;
  *v11 = v6;
  v10[0] = v4;
  v7 = v3[1];
  *a1 = *v3;
  a1[1] = v7;
  a1[2] = v3[2];
  *(a1 + 41) = *(v3 + 41);
  return sub_188A3F29C(v10, v9, &qword_1EA934C40);
}

uint64_t sub_1891C4794@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_host;
  swift_beginAccess();
  return sub_188A3F29C(v3 + v4, a1, &unk_1EA93F7F0);
}

uint64_t sub_1891C4800(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_host;
  swift_beginAccess();
  sub_188A3F29C(v3 + v4, v6, &unk_1EA93F7F0);
  swift_beginAccess();
  sub_188CAF9D0(a1, v3 + v4);
  swift_endAccess();
  sub_1891C42CC(v6);
  sub_188A3F5FC(a1, &unk_1EA93F7F0);
  return sub_188A3F5FC(v6, &unk_1EA93F7F0);
}

id sub_1891C48E0(id result)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_isEnabled) = result;
  v3 = *(v2 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_pointerInteraction);
  if (v3)
  {
    return [v3 setEnabled_];
  }

  return result;
}

id sub_1891C493C()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_host;
  swift_beginAccess();
  if (*(v1 + 8) == 255)
  {
    return 0;
  }

  sub_188CAFD94(v1, v16);
  sub_188CAFD94(v16, v13);
  if (BYTE8(v13[0]))
  {
    sub_188CB083C(v16);
    sub_188CB083C(v13);
    return 0;
  }

  sub_188CB0D7C(v13, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_188A3F5FC(v12, &qword_1EA939220);
  sub_188CB083C(v16);
  if (!Strong)
  {
    return 0;
  }

  v3 = [Strong window];
  if (v3)
  {

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;

      return v5;
    }

    else
    {
      sub_1891C4B2C();
      v7 = OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__effect;
      swift_beginAccess();
      sub_188CAFD38(v0 + v7, v16);
      sub_188A53994(v16, v15);
      sub_188CB0B9C(v16);
      v8 = (v0 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__shape);
      swift_beginAccess();
      v9 = v8[1];
      v16[0] = *v8;
      v16[1] = v9;
      v11 = *v8;
      v10 = v8[1];
      v17[0] = v8[2];
      *(v17 + 9) = *(v8 + 41);
      v13[0] = v11;
      v13[1] = v10;
      v14[0] = v8[2];
      *(v14 + 9) = *(v8 + 41);
      sub_188A3F29C(v16, v12, &qword_1EA934C40);
      return sub_1891EEE28(v15, v13, Strong, 1);
    }
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1891C4B2C()
{
  result = qword_1EA93F800;
  if (!qword_1EA93F800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93F800);
  }

  return result;
}

float64_t sub_1891C4B78(float64x2_t *a1)
{
  v2 = vdivq_f64(vabdq_f64(*v1, *a1), vdupq_n_s64(0x3F50624DD2F1A9FCuLL));
  if (v2.f64[0] <= v2.f64[1])
  {
    v2.f64[0] = v2.f64[1];
  }

  return v2.f64[0];
}

uint64_t sub_1891C4BAC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  sub_188C26A94(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for CoreListMetricsFont(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreListMetricsFont(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreListMetricsColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CoreListMetricsColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1891C4D90(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1891C4DAC(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1891C4DD0(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x18CFE3810](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x18CFE3810](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x18CFE3810](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x18CFE3810](*&v9);
}

BOOL sub_1891C4E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1891C504C(v5, v7);
}

uint64_t sub_1891C4E9C()
{
  sub_18A4A8888();
  sub_188C276E4();
  return sub_18A4A88E8();
}

uint64_t sub_1891C4EE0()
{
  sub_18A4A8888();
  sub_188C276E4();
  return sub_18A4A88E8();
}

unint64_t sub_1891C4F20()
{
  result = qword_1EA93F810;
  if (!qword_1EA93F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F810);
  }

  return result;
}

uint64_t sub_1891C4F74()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_18A4A8888();
  sub_1891C4DD0(v1, v2, v3, v4);
  return sub_18A4A88E8();
}

uint64_t sub_1891C4FE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_18A4A8888();
  sub_1891C4DD0(v1, v2, v3, v4);
  return sub_18A4A88E8();
}

BOOL sub_1891C504C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if ((*(a1 + 32) & 1) == 0)
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    if (v2 == *a2 && v3 == *(a2 + 8) && v5 == *(a2 + 16))
    {
      return v4 == *(a2 + 24);
    }

    return 0;
  }

  if (!(*&v5 | *&v3 | *&v2 | *&v4))
  {
    if (*(a2 + 32))
    {
      return (*(a2 + 16) | *(a2 + 8) | *a2 | *(a2 + 24)) == 0;
    }

    return 0;
  }

  v6 = *&v5 | *&v3 | *&v4;
  if (*&v2 == 1 && v6 == 0)
  {
    if (*(a2 + 32))
    {
      v16 = *(a2 + 24);
      v17 = *(a2 + 16) | *(a2 + 8);
      if (v17 | *a2 | v16)
      {
        if (*a2 == 1 && !(v17 | v16))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 2 && v6 == 0)
  {
    if (*(a2 + 32))
    {
      v18 = *(a2 + 24);
      v19 = *a2;
      v20 = *(a2 + 16) | *(a2 + 8);
      if (v20 | *a2 | v18)
      {
        v21 = v20 | v18;
        if ((*&v19 != 1 || v21) && *&v19 == 2 && !v21)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 3 && !v6)
  {
    if (*(a2 + 32))
    {
      v9 = *(a2 + 24);
      v10 = *a2;
      v11 = *(a2 + 16) | *(a2 + 8);
      if (v11 | *a2 | v9)
      {
        v12 = v11 | v9;
        if (((*&v10 - 1) > 1 || v12) && *&v10 == 3 && !v12)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 4 && !v6)
  {
    if (*(a2 + 32))
    {
      v22 = *(a2 + 24);
      v23 = *a2;
      v24 = *(a2 + 16) | *(a2 + 8);
      if (v24 | *a2 | v22)
      {
        v25 = v24 | v22;
        if (((*&v23 - 1) > 2 || v25) && *&v23 == 4 && !v25)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 5 && !v6)
  {
    if (*(a2 + 32))
    {
      v26 = *(a2 + 24);
      v27 = *a2;
      v28 = *(a2 + 16) | *(a2 + 8);
      if (v28 | *a2 | v26)
      {
        v29 = v28 | v26;
        if (((*&v27 - 1) > 3 || v29) && *&v27 == 5 && !v29)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 6 && !v6)
  {
    if (*(a2 + 32))
    {
      v30 = *(a2 + 24);
      v31 = *a2;
      v32 = *(a2 + 16) | *(a2 + 8);
      if (v32 | *a2 | v30)
      {
        v33 = v32 | v30;
        if (((*&v31 - 1) > 4 || v33) && *&v31 == 6 && !v33)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 7 && !v6)
  {
    if (*(a2 + 32))
    {
      v34 = *(a2 + 24);
      v35 = *a2;
      v36 = *(a2 + 16) | *(a2 + 8);
      if (v36 | *a2 | v34)
      {
        v37 = v36 | v34;
        if (((*&v35 - 1) > 5 || v37) && *&v35 == 7 && !v37)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 8 && !v6)
  {
    if (*(a2 + 32))
    {
      v38 = *(a2 + 24);
      v39 = *a2;
      v40 = *(a2 + 16) | *(a2 + 8);
      if (v40 | *a2 | v38)
      {
        v41 = v40 | v38;
        if (((*&v39 - 1) > 6 || v41) && *&v39 == 8 && !v41)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 9 && !v6)
  {
    if (*(a2 + 32))
    {
      v42 = *(a2 + 24);
      v43 = *a2;
      v44 = *(a2 + 16) | *(a2 + 8);
      if (v44 | *a2 | v42)
      {
        v45 = v44 | v42;
        if (((*&v43 - 1) > 7 || v45) && *&v43 == 9 && !v45)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 10 && !v6)
  {
    if (*(a2 + 32))
    {
      v46 = *(a2 + 24);
      v47 = *a2;
      v48 = *(a2 + 16) | *(a2 + 8);
      if (v48 | *a2 | v46)
      {
        v49 = v48 | v46;
        if (((*&v47 - 1) > 8 || v49) && *&v47 == 10 && !v49)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 11 && !v6)
  {
    if (*(a2 + 32))
    {
      v50 = *(a2 + 24);
      v51 = *a2;
      v52 = *(a2 + 16) | *(a2 + 8);
      if (v52 | *a2 | v50)
      {
        v53 = v52 | v50;
        if (((*&v51 - 1) > 9 || v53) && *&v51 == 11 && !v53)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 12 && !v6)
  {
    if (*(a2 + 32))
    {
      v54 = *(a2 + 24);
      v55 = *a2;
      v56 = *(a2 + 16) | *(a2 + 8);
      if (v56 | *a2 | v54)
      {
        v57 = v56 | v54;
        if (((*&v55 - 1) > 0xA || v57) && *&v55 == 12 && !v57)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 13 && !v6)
  {
    if (*(a2 + 32))
    {
      v58 = *(a2 + 24);
      v59 = *a2;
      v60 = *(a2 + 16) | *(a2 + 8);
      if (v60 | *a2 | v58)
      {
        v61 = v60 | v58;
        if (((*&v59 - 1) > 0xB || v61) && *&v59 == 13 && !v61)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 14 && !v6)
  {
    if (*(a2 + 32))
    {
      v62 = *(a2 + 24);
      v63 = *a2;
      v64 = *(a2 + 16) | *(a2 + 8);
      if (v64 | *a2 | v62)
      {
        v65 = v64 | v62;
        if (((*&v63 - 1) > 0xC || v65) && *&v63 == 14 && !v65)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 15 && !v6)
  {
    if (*(a2 + 32))
    {
      v66 = *(a2 + 24);
      v67 = *a2;
      v68 = *(a2 + 16) | *(a2 + 8);
      if (v68 | *a2 | v66)
      {
        v69 = v68 | v66;
        if (((*&v67 - 1) > 0xD || v69) && *&v67 == 15 && !v69)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 16 && !v6)
  {
    if (*(a2 + 32))
    {
      v70 = *(a2 + 24);
      v71 = *a2;
      v72 = *(a2 + 16) | *(a2 + 8);
      if (v72 | *a2 | v70)
      {
        v73 = v72 | v70;
        if (((*&v71 - 1) > 0xE || v73) && *&v71 == 16 && !v73)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 17 && !v6)
  {
    if (*(a2 + 32))
    {
      v74 = *(a2 + 24);
      v75 = *a2;
      v76 = *(a2 + 16) | *(a2 + 8);
      if (v76 | *a2 | v74)
      {
        v77 = v76 | v74;
        if (((*&v75 - 1) > 0xF || v77) && *&v75 == 17 && !v77)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 18 && !v6)
  {
    if (*(a2 + 32))
    {
      v78 = *(a2 + 24);
      v79 = *a2;
      v80 = *(a2 + 16) | *(a2 + 8);
      if (v80 | *a2 | v78)
      {
        v81 = v80 | v78;
        if (((*&v79 - 1) > 0x10 || v81) && *&v79 == 18 && !v81)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 19 && !v6)
  {
    if (*(a2 + 32))
    {
      v82 = *(a2 + 24);
      v83 = *a2;
      v84 = *(a2 + 16) | *(a2 + 8);
      if (v84 | *a2 | v82)
      {
        v85 = v84 | v82;
        if (((*&v83 - 1) > 0x11 || v85) && *&v83 == 19 && !v85)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 20 && !v6)
  {
    if (*(a2 + 32))
    {
      v86 = *(a2 + 24);
      v87 = *a2;
      v88 = *(a2 + 16) | *(a2 + 8);
      if (v88 | *a2 | v86)
      {
        v89 = v88 | v86;
        if (((*&v87 - 1) > 0x12 || v89) && *&v87 == 20 && !v89)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 21 && !v6)
  {
    if (*(a2 + 32))
    {
      v90 = *(a2 + 24);
      v91 = *a2;
      v92 = *(a2 + 16) | *(a2 + 8);
      if (v92 | *a2 | v90)
      {
        v93 = v92 | v90;
        if (((*&v91 - 1) > 0x13 || v93) && *&v91 == 21 && !v93)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 22 && !v6)
  {
    if (*(a2 + 32))
    {
      v94 = *(a2 + 24);
      v95 = *a2;
      v96 = *(a2 + 16) | *(a2 + 8);
      if (v96 | *a2 | v94)
      {
        v97 = v96 | v94;
        if (((*&v95 - 1) > 0x14 || v97) && *&v95 == 22 && !v97)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 == 23 && !v6)
  {
    if (*(a2 + 32))
    {
      v98 = *(a2 + 24);
      v99 = *a2;
      v100 = *(a2 + 16) | *(a2 + 8);
      if (v100 | *a2 | v98)
      {
        v101 = v100 | v98;
        if ((*&v99 - 1) > 0x15 || v101)
        {
          return *&v99 == 23 && v101 == 0;
        }
      }
    }

    return 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  v103 = *(a2 + 24);
  v104 = *a2;
  v105 = *(a2 + 16) | *(a2 + 8);
  if (!(v105 | *a2 | v103))
  {
    return 0;
  }

  v106 = v105 | v103;
  if ((*&v104 - 1) <= 0x15 && !v106)
  {
    return 0;
  }

  return *&v104 != 23 || v106 != 0;
}

unint64_t sub_1891C58C4()
{
  result = qword_1EA93F818;
  if (!qword_1EA93F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F818);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreListMetricsAccessoryStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreListMetricsAccessoryStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1891C5B3C()
{
  result = qword_1EA93F820;
  if (!qword_1EA93F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F820);
  }

  return result;
}

unint64_t sub_1891C5B90()
{
  result = qword_1EA93F828;
  if (!qword_1EA93F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F828);
  }

  return result;
}

unint64_t sub_1891C5BE8()
{
  result = qword_1EA93F830;
  if (!qword_1EA93F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F830);
  }

  return result;
}

unint64_t sub_1891C5C40()
{
  result = qword_1EA93F838;
  if (!qword_1EA93F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F838);
  }

  return result;
}

unint64_t sub_1891C5C98()
{
  result = qword_1EA93F840;
  if (!qword_1EA93F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F840);
  }

  return result;
}

unint64_t sub_1891C5CF0()
{
  result = qword_1EA93F848;
  if (!qword_1EA93F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F848);
  }

  return result;
}

unint64_t sub_1891C5D48()
{
  result = qword_1EA93F850;
  if (!qword_1EA93F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F850);
  }

  return result;
}

unint64_t sub_1891C5DA0()
{
  result = qword_1EA93F858;
  if (!qword_1EA93F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F858);
  }

  return result;
}

unint64_t sub_1891C5DF8()
{
  result = qword_1EA93F860;
  if (!qword_1EA93F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F860);
  }

  return result;
}

unint64_t sub_1891C5E50()
{
  result = qword_1EA93F868;
  if (!qword_1EA93F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F868);
  }

  return result;
}

unint64_t sub_1891C5EA8()
{
  result = qword_1EA93F870;
  if (!qword_1EA93F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F870);
  }

  return result;
}

unint64_t sub_1891C5F00()
{
  result = qword_1EA93F878;
  if (!qword_1EA93F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F878);
  }

  return result;
}

unint64_t sub_1891C5F58()
{
  result = qword_1EA93F880;
  if (!qword_1EA93F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F880);
  }

  return result;
}

unint64_t sub_1891C5FAC()
{
  result = qword_1EA93F888;
  if (!qword_1EA93F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F888);
  }

  return result;
}

unint64_t sub_1891C6004()
{
  result = qword_1EA93F890;
  if (!qword_1EA93F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F890);
  }

  return result;
}

unint64_t sub_1891C605C()
{
  result = qword_1EA93F898;
  if (!qword_1EA93F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F898);
  }

  return result;
}

unint64_t sub_1891C60B4()
{
  result = qword_1EA93F8A0;
  if (!qword_1EA93F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F8A0);
  }

  return result;
}

unint64_t sub_1891C610C()
{
  result = qword_1EA93F8A8;
  if (!qword_1EA93F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F8A8);
  }

  return result;
}

unint64_t sub_1891C6164()
{
  result = qword_1EA93F8B0;
  if (!qword_1EA93F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F8B0);
  }

  return result;
}

unint64_t sub_1891C61BC()
{
  result = qword_1EA93F8B8;
  if (!qword_1EA93F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F8B8);
  }

  return result;
}

id UIPropertyAnchor.bounds.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ([(UIView *)*v1 __swiftAnimationInfo]&& (v4 = sub_188FF73A4(0, 0x73646E756F62, 0xE600000000000000), , v4))
  {
    v5 = [v4 value];
    sub_18A4A7DE8();

    swift_unknownObjectRelease();
    type metadata accessor for CGRect(0);
    result = swift_dynamicCast();
    v7 = v11;
    v8 = v12;
  }

  else
  {
    result = [v3 bounds];
    *(&v7 + 1) = v9;
    *(&v8 + 1) = v10;
  }

  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 2;
  return result;
}

id UIPropertyAnchor.center.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ([(UIView *)*v1 __swiftAnimationInfo]&& (v4 = sub_188FF73A4(0, 0x6E6F697469736F70, 0xE800000000000000), , v4))
  {
    v5 = [v4 value];
    sub_18A4A7DE8();

    swift_unknownObjectRelease();
    type metadata accessor for CGPoint(0);
    result = swift_dynamicCast();
    v7 = v9;
  }

  else
  {
    result = [v3 center];
    *(&v7 + 1) = v8;
  }

  *a1 = v7;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  return result;
}

id UIPropertyAnchor.alpha.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ([(UIView *)*v1 __swiftAnimationInfo]&& (v4 = sub_188FF73A4(0, 0x7974696361706FLL, 0xE700000000000000), , v4))
  {
    v5 = [v4 value];
    sub_18A4A7DE8();

    swift_unknownObjectRelease();
    result = swift_dynamicCast();
    v7 = v8;
  }

  else
  {
    result = [v3 alpha];
  }

  *a1 = v7;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  return result;
}

double UIPropertyAnchor.transform.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ([(UIView *)*v1 __swiftAnimationInfo]&& (v4 = sub_188FF73A4(0, 0x726F66736E617274, 0xE90000000000006DLL), , v4))
  {
    v5 = [v4 value];
    sub_18A4A7DE8();

    swift_unknownObjectRelease();
    type metadata accessor for CGAffineTransform(0);
    swift_dynamicCast();
  }

  else
  {
    [v3 transform];
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  return result;
}

char *UITextView.selectedRanges.getter()
{
  v1 = [v0 selectedRanges];
  sub_188A34624(0, &qword_1ED48EC30);
  v2 = sub_18A4A7548();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    v4 = 0;
    v18 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = v2;
    while (1)
    {
      if (v18)
      {
        v8 = sub_188E49AE4(v4, v2);
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v11 = [v8 rangeValue];
      v13 = v12;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_188E4B6C0(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = sub_188E4B6C0((v14 > 1), v15 + 1, 1, v6);
      }

      *(v6 + 2) = v15 + 1;
      v16 = &v6[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      ++v4;
      v2 = v7;
      if (v10 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v6;
}

void UITextView.selectedRanges.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_18A4A8208();
    v4 = objc_opt_self();
    v5 = (a1 + 40);
    do
    {
      v6 = [v4 valueWithRange_];
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  sub_188A34624(0, &qword_1ED48EC30);
  v7 = sub_18A4A7518();

  [v1 setSelectedRanges_];
}

void (*UITextView.selectedRanges.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = UITextView.selectedRanges.getter();
  return sub_1891C6A20;
}

void sub_1891C6A20(uint64_t *a1, char a2)
{
  if (a2)
  {

    UITextView.selectedRanges.setter(v2);
  }

  else
  {
    UITextView.selectedRanges.setter(*a1);
  }
}

uint64_t sub_1891C6B40@<X0>(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v6)
  {
    result = sub_188A553EC(v5);
    goto LABEL_5;
  }

  sub_188A34624(0, &qword_1EA93F8C0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

uint64_t sub_1891C6BDC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_188A34624(0, &qword_1EA93F8C0);
  v4 = v2;
  v5 = v3;
  return sub_18A4A2428();
}

uint64_t sub_1891C6C68(void **a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = *a1;
  v5 = *a4;
  sub_188A34624(0, &qword_1EA93F8C0);
  v6 = v4;
  v7 = v5;
  return sub_18A4A2428();
}

uint64_t sub_1891C6D84(double a1)
{
  v2 = sub_18A4A8668();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x1E69E7038];
  v8 = *(v3 + 104);
  v8(v6, v7, v2, v4);
  sub_188B26620(v6, a1);
  sub_188B26620(v6, a1);
  v9 = *(v3 + 8);
  v9(v6, v2);
  (v8)(v6, v7, v2);
  sub_188B26620(v6, a1);
  sub_188B26620(v6, a1);
  v9(v6, v2);
  (v8)(v6, v7, v2);
  sub_188B26620(v6, a1);
  sub_188B26620(v6, a1);
  v9(v6, v2);
  (v8)(v6, v7, v2);
  sub_188B26620(v6, a1);
  sub_188B26620(v6, a1);
  return (v9)(v6, v2);
}

uint64_t sub_1891C6F90(double a1)
{
  v2 = v1;
  v4 = sub_18A4A8668();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.origin.x = *v1;
  v8 = v1 + 1;
  v22.origin.y = v1[1];
  v22.size.width = v1[2];
  v9 = v1 + 2;
  v19[0] = v1 + 2;
  v22.size.height = v1[3];
  v10 = v1 + 3;
  v19[1] = v10;
  v23 = CGRectStandardize(v22);
  y = v23.origin.y;
  *v8 = v23.origin.y;
  *v9 = v23.size.width;
  *v10 = v23.size.height;
  v12 = v23.origin.x + v23.size.width;
  v13 = v23.origin.y + v23.size.height;
  v20 = v23.origin.y + v23.size.height;
  v21 = v23.origin.x + v23.size.width;
  v2->f64[0] = a1 * 0.5 + v23.origin.x;
  v14 = *MEMORY[0x1E69E7048];
  v15 = *(v5 + 104);
  v15(v7, v14, v4);
  sub_188B26620(v7, a1);
  v16 = *(v5 + 8);
  v16(v7, v4);
  *v8 = a1 * 0.5 + y;
  v15(v7, v14, v4);
  sub_188B26620(v7, a1);
  v16(v7, v4);
  v21 = a1 * 0.5 + v12;
  v15(v7, v14, v4);
  sub_188B26620(v7, a1);
  v16(v7, v4);
  v20 = a1 * 0.5 + v13;
  v15(v7, v14, v4);
  sub_188B26620(v7, a1);
  v16(v7, v4);
  v17.f64[0] = v21;
  v17.f64[1] = v20;
  *v19[0] = vsubq_f64(v17, *v2);
  v15(v7, *MEMORY[0x1E69E7038], v4);
  sub_188B26620(v7, a1);
  sub_188B26620(v7, a1);
  return (v16)(v7, v4);
}

id sub_1891C7680()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for _UITabBarAnimationSettings();
  objc_msgSendSuper2(&v9, sel_setDefaultValues);
  v1 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseIntermediateSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseIntermediateSpring] setDampingRatio_];
  [*&v0[v1] setResponse_];
  v2 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseFinalSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseFinalSpring] setDampingRatio_];
  [*&v0[v2] setResponse_];
  *&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseFinalSpringDelay] = 0x3FA999999999999ALL;
  v3 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandIntermediateSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandIntermediateSpring] setDampingRatio_];
  [*&v0[v3] setResponse_];
  v4 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandFinalSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandFinalSpring] setDampingRatio_];
  [*&v0[v4] setResponse_];
  *&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandFinalSpringDelay] = 0x3FA999999999999ALL;
  v5 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayHintResetSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayHintResetSpring] setDampingRatio_];
  [*&v0[v5] setResponse_];
  v6 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayProgressSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayProgressSpring] setDampingRatio_];
  [*&v0[v6] setResponse_];
  v7 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayTrackingProgressSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayTrackingProgressSpring] setDampingRatio_];
  result = [*&v0[v7] setResponse_];
  *&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayProgressMultiplier] = 0x3FA999999999999ALL;
  return result;
}

id sub_1891C78CC()
{
  v1 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseIntermediateSpring;
  *&v0[v1] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v2 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseFinalSpring;
  *&v0[v2] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  *&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseFinalSpringDelay] = 0;
  v3 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandIntermediateSpring;
  *&v0[v3] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v4 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandFinalSpring;
  *&v0[v4] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  *&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandFinalSpringDelay] = 0;
  v5 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayHintResetSpring;
  *&v0[v5] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v6 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayProgressSpring;
  *&v0[v6] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v7 = OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayTrackingProgressSpring;
  *&v0[v7] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  *&v0[OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayProgressMultiplier] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for _UITabBarAnimationSettings();
  return objc_msgSendSuper2(&v9, sel_initWithDefaultValues);
}

id sub_1891C7A3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1891C7B34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64C6E0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64D660;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 childSettingsKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = sub_188A34624(0, &qword_1EA934BA8);
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 childSettingsKeyPath:v8];

  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v10 = sub_18A4A7258();
  v11 = sub_18A4A7258();
  v55 = objc_opt_self();
  v12 = [v55 rowWithTitle:v10 valueKeyPath:v11];

  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = objc_opt_self();
  v54 = sub_188A34624(0, &qword_1EA934B90);
  *(v1 + 120) = v54;
  *(v1 + 96) = v12;
  v14 = sub_18A4A7518();

  v15 = sub_18A4A7258();
  v16 = [v13 sectionWithRows:v14 title:v15];

  if (!v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v56 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v56;
  *(v0 + 32) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18A64D660;
  v18 = sub_18A4A7258();
  v19 = sub_18A4A7258();
  v20 = [v4 rowWithTitle:v18 childSettingsKeyPath:v19];

  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v17 + 56) = v6;
  *(v17 + 32) = v20;
  v21 = sub_18A4A7258();
  v22 = sub_18A4A7258();
  v23 = [v4 rowWithTitle:v21 childSettingsKeyPath:v22];

  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v17 + 88) = v6;
  *(v17 + 64) = v23;
  v24 = sub_18A4A7258();
  v25 = sub_18A4A7258();
  v26 = [v55 rowWithTitle:v24 valueKeyPath:v25];

  if (!v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v17 + 120) = v54;
  *(v17 + 96) = v26;
  v27 = sub_18A4A7518();

  v28 = sub_18A4A7258();
  v29 = [v13 sectionWithRows:v27 title:v28];

  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v0 + 88) = v56;
  *(v0 + 64) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_18A64C6E0;
  v31 = sub_18A4A7258();
  v32 = sub_18A4A7258();
  v33 = [v4 rowWithTitle:v31 childSettingsKeyPath:v32];

  if (!v33)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v30 + 56) = v6;
  *(v30 + 32) = v33;
  v34 = sub_18A4A7258();
  v35 = sub_18A4A7258();
  v36 = [v4 rowWithTitle:v34 childSettingsKeyPath:v35];

  if (!v36)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v30 + 88) = v6;
  *(v30 + 64) = v36;
  v37 = sub_18A4A7258();
  v38 = sub_18A4A7258();
  v39 = [v4 rowWithTitle:v37 childSettingsKeyPath:v38];

  if (!v39)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v30 + 120) = v6;
  *(v30 + 96) = v39;
  v40 = sub_18A4A7258();
  v41 = sub_18A4A7258();
  v42 = [v55 rowWithTitle:v40 valueKeyPath:v41];

  if (!v42)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v30 + 152) = v54;
  *(v30 + 128) = v42;
  v43 = sub_18A4A7518();

  v44 = sub_18A4A7258();
  v45 = [v13 sectionWithRows:v43 title:v44];

  if (!v45)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v0 + 120) = v56;
  *(v0 + 96) = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_18A64BFB0;
  v47 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v48 = sub_18A4A7258();
  v49 = [objc_opt_self() rowWithTitle:v48 action:v47];

  if (!v49)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v46 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v46 + 32) = v49;
  v50 = sub_18A4A7518();

  v51 = [v13 sectionWithRows_];

  if (v51)
  {
    *(v0 + 152) = v56;
    *(v0 + 128) = v51;
    v52 = sub_18A4A7258();
    v53 = sub_18A4A7518();

    [v13 moduleWithTitle:v52 contents:v53];

    return;
  }

LABEL_31:
  __break(1u);
}

unint64_t sub_1891C84B0()
{
  result = qword_1EA93F928;
  if (!qword_1EA93F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F928);
  }

  return result;
}

uint64_t sub_1891C8504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = sub_18A4A3D58();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v8 = sub_18A4A34E8();
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();
  v9 = sub_18A4A3D68();
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();
  v10 = sub_18A4A3ED8();
  v6[29] = v10;
  v6[30] = *(v10 - 8);
  v6[31] = swift_task_alloc();
  v11 = sub_18A4A3DD8();
  v6[32] = v11;
  v6[33] = *(v11 - 8);
  v6[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1891C873C, 0, 0);
}

uint64_t sub_1891C873C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[27];
  sub_18A4A3DC8();

  sub_18A4A3D98();
  (*(v2 + 104))(v1, *MEMORY[0x1E69DBCE0], v3);
  v5 = sub_18A4A3EA8();
  (*(v2 + 8))(v1, v3);
  v6 = *(v4 + 104);
  if (v5)
  {
    v6(v0[28], *MEMORY[0x1E69DBC78], v0[26]);
    v7 = sub_18A4A3DA8();
    sub_18A4A3D78();
    v7(v0 + 10, 0);
    if (v0[19])
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_18A4A3DE8();
    goto LABEL_6;
  }

  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[24];
  v6(v0[28], *MEMORY[0x1E69DBC70], v0[26]);
  v11 = sub_18A4A3DA8();
  sub_18A4A3D78();
  v11(v0 + 2, 0);
  (*(v10 + 104))(v8, *MEMORY[0x1E69DB9D0], v9);
  v12 = sub_18A4A3DA8();
  sub_18A4A3D88();
  v12(v0 + 6, 0);
  if (!v0[19])
  {
    goto LABEL_5;
  }

LABEL_6:

  sub_18A4A3D38();

  sub_18A4A3D28();
  v14 = v0[33];
  v13 = v0[34];
  v15 = v0[32];
  v16 = v0[14];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v14 + 8))(v13, v15);
  v17 = sub_18A4A3528();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1891C8AD0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_18A4A3ED8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_188C482B4;

  return sub_1891C8504(a1, v10, v1 + v6, v9, v11, v12);
}

uint64_t objectdestroy_3Tm()
{
  v1 = sub_18A4A42B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

id sub_1891C8D10(void *a1, float a2)
{
  v2 = a1;
  result = [a1 behavior];
  if (result)
  {
    v5 = result;
    v6 = [v2 ticks];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935580);
    v7 = sub_18A4A7548();

    if (v7 >> 62)
    {
      v17 = sub_18A4A7F68();
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_54;
      }

      __break(1u);
      goto LABEL_45;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v9 = 0;
        v10 = 0;
        v11 = v7 & 0xC000000000000001;
        v31 = v7 + 32;
        v32 = v5;
        v12 = 1;
        v13 = 2.0;
        do
        {
          if (v11)
          {
            v14 = sub_188E49B28(v10, v7);
          }

          else
          {
            v14 = *(v7 + 8 * v10 + 32);
            swift_unknownObjectRetain();
          }

          v5 = (v10 + 1);
          [v14 position];
          v16 = v15;
          v17 = swift_unknownObjectRelease();
          v18 = vabds_f32(v16, a2);
          v19 = v18 >= v13;
          if (v18 < v13)
          {
            v13 = v18;
            v9 = v10;
          }

          v12 &= v19;
          ++v10;
        }

        while (v8 != v5);
        if (v12)
        {
          goto LABEL_12;
        }

        if (v11)
        {
          v20 = sub_188E49B28(v9, v7);
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }

          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v20 = *(v31 + 8 * v9);
          swift_unknownObjectRetain();
        }

        [v20 position];
        a2 = v21;
        swift_unknownObjectRelease();
        if (v32 != 1)
        {

          v17 = [v2 snappingDistance];
          if (v13 >= v23)
          {
            return 0;
          }

          if ((a2 - v23) <= (a2 + v23))
          {
            v24 = LODWORD(a2);
            v25 = COERCE_UNSIGNED_INT(a2 - v23);
            return (v24 | (v25 << 32));
          }

          goto LABEL_50;
        }

        v17 = v9 - 1;
        if (__OFSUB__(v9, 1))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v22 = a2;
        if ((v17 & 0x8000000000000000) == 0)
        {
          if (v11)
          {
            v2 = sub_188E49B28(v17, v7);
          }

          else
          {
            if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v2 = *(v31 + 8 * v17);
            swift_unknownObjectRetain();
          }

          [v2 position];
          v27 = v26;
          swift_unknownObjectRelease();
          v22 = (a2 + v27) * 0.5;
        }

        v17 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_46;
        }

        if (v17 >= v8)
        {

          v28 = a2;
LABEL_40:
          if (v22 <= v28)
          {
            v24 = LODWORD(a2);
            v25 = LODWORD(v22);
            return (v24 | (v25 << 32));
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v11)
        {
          break;
        }

        if ((v17 & 0x8000000000000000) == 0)
        {
          if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v2 = *(v31 + 8 * v17);
          swift_unknownObjectRetain();
          goto LABEL_39;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        v8 = v17;
        if (!v17)
        {
          goto LABEL_12;
        }
      }

      v2 = sub_188E49B28(v17, v7);
LABEL_39:

      [v2 position];
      v30 = v29;
      v17 = swift_unknownObjectRelease();
      v28 = (a2 + v30) * 0.5;
      goto LABEL_40;
    }

LABEL_12:

    return 0;
  }

  return result;
}