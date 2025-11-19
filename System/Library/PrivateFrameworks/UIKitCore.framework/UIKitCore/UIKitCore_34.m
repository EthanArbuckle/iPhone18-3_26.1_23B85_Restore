uint64_t sub_188E9CA04(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setHighlighted_];
  }

  if (*(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging))
  {
    return 1;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  [a1 locationInView_];
  v8 = v7;
  v10 = v9;

  v11 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x438);
  v12.n128_u64[0] = v8;
  v13.n128_u64[0] = v10;

  return v11(v12, v13);
}

void sub_188E9CB10()
{
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_minimumThumbHitSize) = 0x4048000000000000;
  v1 = OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView;
  v2 = [objc_allocWithZone(_UILiquidLensView) init];
  if (qword_1EA930530 != -1)
  {
    swift_once();
  }

  [v2 setRestingShadowProperties_];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_thumbImageView) = 0;
  v3 = OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_defaultThumbTintColor;
  *(v0 + v3) = [objc_opt_self() whiteColor];
  sub_18A4A8398();
  __break(1u);
}

void sub_188E9CC28()
{
  v1 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_colorKnobView;
  type metadata accessor for _UISliderColorKnobView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_checkerboardView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_gradientView;
  *(v0 + v3) = [objc_allocWithZone(_UIGradientView) init];
  sub_18A4A8398();
  __break(1u);
}

id sub_188E9CD04()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_tickView);
  if (result)
  {
    v2 = 0.0;
    if (*(v0 + 24))
    {
      v2 = 1.0;
    }

    return [result setAlpha_];
  }

  return result;
}

unint64_t sub_188E9CD3C()
{
  result = qword_1EA935588;
  if (!qword_1EA935588)
  {
    sub_18A4A6D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935588);
  }

  return result;
}

uint64_t objectdestroy_388Tm()
{
  v1 = sub_18A4A6D88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 32) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

void *sub_188E9CE64(void *a1)
{
  v3 = *(sub_18A4A6D88() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_188E9C160(a1, v4, v5, v6);
}

void sub_188E9D07C()
{
  v1 = v0;
  sub_188DBE5BC();
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit19_UILatencyLightView_emitterMaskView);
  v3 = (v1 + OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_configuration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[2];
  v6 = v3[5];
  v7 = v3[4] * 2.8;
  if (!*(v3 + 56))
  {
    if (!*v3)
    {
      goto LABEL_11;
    }

    if (v4 != 2)
    {
LABEL_10:
      v5 = 0.0;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (*(v3 + 56) == 1)
  {
    if (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_10;
      }

LABEL_11:
      v8 = v7 + v6 + v5;
      goto LABEL_12;
    }

LABEL_8:
    v5 = v5 * 0.5;
    goto LABEL_11;
  }

  v8 = v5 + v7 + v6 + v7 + v6;
LABEL_12:
  *(v2 + OBJC_IVAR____TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView_radius) = v8 * 0.5;
  sub_188DBCCD8();
}

id sub_188E9D324(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _UIConcentricCornerMaskingSupport.__allocating_init(invalidationBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDescendantInvalidationBlocks;
  v7 = MEMORY[0x1E69E7CC0];
  *&v5[v6] = sub_188AFCBB8(MEMORY[0x1E69E7CC0]);
  *&v5[OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDependencyUnregistrationBlocks] = v7;
  v8 = &v5[OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_invalidationBlock];
  *v8 = a1;
  *(v8 + 1) = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

id _UIConcentricCornerMaskingSupport.init(invalidationBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDescendantInvalidationBlocks;
  v6 = MEMORY[0x1E69E7CC0];
  *&v2[v5] = sub_188AFCBB8(MEMORY[0x1E69E7CC0]);
  *&v2[OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDependencyUnregistrationBlocks] = v6;
  v7 = &v2[OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_invalidationBlock];
  *v7 = a1;
  *(v7 + 1) = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for _UIConcentricCornerMaskingSupport();
  return objc_msgSendSuper2(&v9, sel_init);
}

void (*sub_188E9D49C(void *a1, uint64_t a2, uint64_t a3))()
{
  v4 = v3;
  v8 = [a1 contextIdentifier];
  sub_18A4A8048();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDescendantInvalidationBlocks;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v10);
  *(v4 + v10) = 0x8000000000000000;
  sub_188BB9C50(sub_188A4A9DC, v9, v16, isUniquelyReferenced_nonNull_native);
  sub_188BBA15C(v16);
  *(v4 + v10) = v15;
  swift_endAccess();
  if ([a1 respondsToSelector_])
  {
    [a1 registerBoundingPathObserverForCornerMaskingConfigurationChanges_];
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v8;
  return sub_188CAC8A4;
}

void static _UIConcentricCornerMaskingSupport.resolvedConcentricRadius(containerRadius:containerCoordinateSpace:descendant:corner:)(void *a1, void *a2, uint64_t a3, CGFloat a4)
{
  swift_getObjectType();

  sub_188BE1190(a1, a2, a3, a4);
}

void sub_188E9D690(void *a1, void *a2, uint64_t a3, CGFloat a4)
{
  swift_getObjectType();

  sub_188BE1190(a1, a2, a3, a4);
}

uint64_t sub_188E9D6F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDependencyUnregistrationBlocks;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_188A32A24(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_188A32A24((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_188E5C7F8;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_188E9D800()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_invalidationBlock);
  if (v1)
  {
    return v1(v0);
  }

  return result;
}

id _UIConcentricCornerMaskingSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _UIConcentricCornerMaskingSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIConcentricCornerMaskingSupport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188E9D94C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188A403F4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA080C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890BA640(v14, a3 & 1);
    v9 = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    return sub_188A4B4F4(a1, v19[7] + 8 * v9, &qword_1EA936E70);
  }

  return sub_188F155E0(v9, a2, a1, v19);
}

uint64_t sub_188E9DA70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_188A86B54(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770);
      return sub_188A4B4F4(a1, v17 + *(*(v18 - 8) + 72) * v10, &unk_1EA935770);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_188FA0830();
    goto LABEL_7;
  }

  sub_1890BA664(v13, a3 & 1);
  v20 = sub_188A86B54(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_188F155F4(v10, a2, a1, v16);
}

id sub_188E9DBCC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188C3F684(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA0D3C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1890BA9C4(v13, a3 & 1);
    v8 = sub_188C3F684(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_188A34624(0, &qword_1ED48F680);
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(*(v18 + 56) + 8 * v8) = a1;
  }

  else
  {
    sub_188A3F9DC(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_188E9DD14(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188E906F4(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA0D64();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890BA9D8(v14, a3 & 1);
    v9 = sub_188E906F4(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_188F16A6C(v9, a2 & 1, a1, v19);
  }
}

unint64_t sub_188E9DE78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188B85570(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA0D8C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890BAA00(v14, a3 & 1);
    v9 = sub_188B85570(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_188A415E8(v9, a2, a1, v19);
  }
}

void sub_188E9DFDC(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), void (*a6)(unint64_t, _BYTE *, uint64_t, uint64_t))
{
  v10 = v6;
  v14 = *v6;
  v16 = sub_188C46540(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      a4();
      goto LABEL_7;
    }

    a5();
    v25 = sub_188C46540(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v10;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_188C46604(a2, v27);
      a6(v16, v27, a1, v22);
      return;
    }

LABEL_15:
    sub_18A4A87A8();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v10;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = *(v22 + 56);
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

id sub_188E9E140(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188E8B7E4(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA1210();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1890BAF68(v13, a3 & 1);
    v8 = sub_188E8B7E4(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      _s11PlatterViewCMa();
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 40 * v8;

    return sub_188E5C248(a1, v19);
  }

  else
  {
    sub_188F1575C(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_188E9E278(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_188B85570(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_188FA1534();
      result = v17;
      goto LABEL_8;
    }

    sub_1890BB4C0(v14, a3 & 1);
    result = sub_188B85570(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      type metadata accessor for Column(0);
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + (result << 8));
    v21 = a1[13];
    v20[12] = a1[12];
    v20[13] = v21;
    v20[14] = a1[14];
    *(v20 + 233) = *(a1 + 233);
    v22 = a1[9];
    v20[8] = a1[8];
    v20[9] = v22;
    v23 = a1[11];
    v20[10] = a1[10];
    v20[11] = v23;
    v24 = a1[5];
    v20[4] = a1[4];
    v20[5] = v24;
    v25 = a1[7];
    v20[6] = a1[6];
    v20[7] = v25;
    v26 = a1[1];
    *v20 = *a1;
    v20[1] = v26;
    v27 = a1[3];
    v20[2] = a1[2];
    v20[3] = v27;
  }

  else
  {

    return sub_188F157B4(result, a2, a1, v19);
  }

  return result;
}

uint64_t sub_188E9E3CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_188B85570(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_188FA1728();
      result = v17;
      goto LABEL_8;
    }

    sub_1890BB7D4(v14, a3 & 1);
    result = sub_188B85570(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      type metadata accessor for Column(0);
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 216 * result;
    v21 = *(a1 + 176);
    *(v20 + 160) = *(a1 + 160);
    *(v20 + 176) = v21;
    *(v20 + 192) = *(a1 + 192);
    *(v20 + 208) = *(a1 + 208);
    v22 = *(a1 + 112);
    *(v20 + 96) = *(a1 + 96);
    *(v20 + 112) = v22;
    v23 = *(a1 + 144);
    *(v20 + 128) = *(a1 + 128);
    *(v20 + 144) = v23;
    v24 = *(a1 + 48);
    *(v20 + 32) = *(a1 + 32);
    *(v20 + 48) = v24;
    v25 = *(a1 + 80);
    *(v20 + 64) = *(a1 + 64);
    *(v20 + 80) = v25;
    v26 = *(a1 + 16);
    *v20 = *a1;
    *(v20 + 16) = v26;
  }

  else
  {

    return sub_188F15840(result, a2, a1, v19);
  }

  return result;
}

uint64_t sub_188E9E51C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_188B85570(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_188FA190C();
      result = v17;
      goto LABEL_8;
    }

    sub_1890BBAE0(v14, a3 & 1);
    result = sub_188B85570(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      type metadata accessor for Column(0);
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 160 * result);
    v21 = a1[7];
    v20[6] = a1[6];
    v20[7] = v21;
    v22 = a1[9];
    v20[8] = a1[8];
    v20[9] = v22;
    v23 = a1[3];
    v20[2] = a1[2];
    v20[3] = v23;
    v24 = a1[5];
    v20[4] = a1[4];
    v20[5] = v24;
    v25 = a1[1];
    *v20 = *a1;
    v20[1] = v25;
  }

  else
  {

    return sub_188F158C8(result, a2, a1, v19);
  }

  return result;
}

id sub_188E9E654(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188B00858(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA1AB8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_188D0CC5C(v13, a3 & 1);
    v8 = sub_188B00858(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for UIConfigurationStateCustomKey(0);
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 40 * v8;

    return sub_188EA2468(a1, v19);
  }

  else
  {
    sub_188F1575C(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_188E9E78C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_188E8B838(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_188FA1F34();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1890BBDBC(v16, a4 & 1);
    v11 = sub_188E8B838(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {

    return sub_188B6DD84(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_188E9E8CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188A403F4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA2094();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890BC04C(v14, a3 & 1);
    v9 = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 16 * v9;

    return sub_188EA2354(a1, v20);
  }

  else
  {

    return sub_188F15938(v9, a2, a1, v19);
  }
}

uint64_t sub_188E9E9EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  ObjectType = swift_getObjectType();

  return sub_188D49CC0(a1, a3 & 1, a4, a5, a6, v6, ObjectType, a2);
}

unint64_t sub_188E9EA6C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_188E8B8AC(a2, a3 & 1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_188FA27D4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1890BC2C4(v16, a4 & 1);
    v11 = sub_188E8B8AC(a2, a3 & 1);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {

    return sub_188F159A0(v11, a2, a3 & 1, a1, v21);
  }
}

void sub_188E9EBAC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_188A403F4(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_188FA2CD8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_188BB6A44(v16, a4 & 1);
    v11 = sub_188A403F4(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;
    v23 = *v22;
    *v22 = a1;
    v24 = *(v22 + 8);
    *(v22 + 8) = a2;

    sub_188BB8460(v23, v24);
  }

  else
  {

    sub_188F159F0(v11, a3, a1, a2, v21);
  }
}

id sub_188E9ECEC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188E8B958(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA31B4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1890BC944(v13, a3 & 1);
    v8 = sub_188E8B958(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for _UITextViewAnimatedPlaceholderIdentifier(0);
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(*(v18 + 56) + 8 * v8) = a1;
  }

  else
  {
    sub_188A3F9DC(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_188E9EE24(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UITextEffectView.EffectID();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_188E8B92C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_188FA31C8();
      goto LABEL_7;
    }

    sub_1890BC958(v16, a3 & 1);
    v22 = sub_188E8B92C(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_188EA2588(a2, v10, type metadata accessor for UITextEffectView.EffectID);
      return sub_188F15A98(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 40 * v13;
  __swift_destroy_boxed_opaque_existential_0Tm(v20);

  return sub_188A5EBAC(a1, v20);
}

id sub_188E9EFD8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188E8B958(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA3414();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1890BCD40(v13, a3 & 1);
    v8 = sub_188E8B958(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for _UITextViewAnimatedPlaceholderIdentifier(0);
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(*(v18 + 56) + 8 * v8) = a1;
  }

  else
  {
    sub_188A3F9DC(v8, a2, a1, v18);

    return a2;
  }
}

id sub_188E9F150(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188E8B9AC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA3878();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1890BCFD0(v13, a3 & 1);
    v8 = sub_188E8B9AC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_188A34624(0, &unk_1EA92E790);
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(*(v18 + 56) + 8 * v8) = a1;
  }

  else
  {
    sub_188A3F9DC(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_188E9F2D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188C4585C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA39F4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890BD260(v14, a3 & 1);
    v9 = sub_188C4585C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_188A3F9DC(v9, a2, a1, v19);
  }
}

uint64_t sub_188E9F43C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188A403F4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA3E00();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890BD4E4(v14, a3 & 1);
    v9 = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * v9;

    return sub_188EA240C(a1, v20);
  }

  else
  {

    return sub_188F15B58(v9, a2, a1, v19);
  }
}

void sub_188E9F55C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188B851F4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA3F7C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1890BD764(v13, a3 & 1);
    v8 = sub_188B851F4(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_188A34624(0, &qword_1EA9306B0);
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_188A3F9DC(v8, a2, a1, v18);

    v21 = a2;
  }
}

uint64_t sub_188E9F6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_188DCCD6C(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_188FA4100();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1890BD778(v20, a6 & 1);
    v15 = sub_188DCCD6C(a2, a3, a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  else
  {
    sub_188F15BC4(v15, a2, a3, a4, a5, a1, v25);
  }
}

void sub_188E9F81C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188E8B63C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA4288();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890BDA48(v14, a3 & 1);
    v9 = sub_188E8B63C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {

    sub_188A415E8(v9, a2, a1, v19);
  }
}

_OWORD *sub_188E9F93C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188A403F4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA45C8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890BDF88(v14, a3 & 1);
    v9 = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (*(v19 + 56) + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    return sub_188A55538(a1, v20);
  }

  else
  {

    return sub_188B383B8(v9, a2, a1, v19);
  }
}

id sub_188E9FA68(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188B00858(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA476C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1890BE228(v13, a3 & 1);
    v8 = sub_188B00858(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      _s3__C10IdentifierVMa_1(0);
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    sub_188A415E8(v8, a2, a1, v18);

    return a2;
  }
}

void sub_188E9FBA0(uint64_t a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_188E8B480(a2, a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_188FA48D0();
      v10 = v18;
      goto LABEL_8;
    }

    sub_1890BE4F0(v15, a4 & 1);
    v10 = sub_188E8B480(a2, a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v10);
    *(v21 + 8 * v10) = a1;
  }

  else
  {
    sub_188BBA8F0(v10, a2, a3, a1, v20);

    v23 = a2;
  }
}

void sub_188E9FCE4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188B00858(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA4A44();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1890BE7F8(v13, a3 & 1);
    v8 = sub_188B00858(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      _s3__C10IdentifierVMa_1(0);
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_188A3F9DC(v8, a2, a1, v18);

    v21 = a2;
  }
}

uint64_t sub_188E9FE18(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188C4585C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA4BA8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890BEAC8(v14, a3 & 1);
    v9 = sub_188C4585C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;
    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    return sub_188A5EBAC(a1, v20);
  }

  else
  {

    return sub_188CB1D8C(v9, a2, a1, v19);
  }
}

unint64_t sub_188E9FF48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188B85570(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA4FD0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890BF124(v14, a3 & 1);
    v9 = sub_188B85570(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for _UIMenuLeafKeyboardShortcutEnumerationPriority(0);
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_188A415E8(v9, a2, a1, v19);
  }
}

void sub_188EA006C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188A86B54(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA52A0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890BF3B4(v14, a3 & 1);
    v9 = sub_188A86B54(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {

    sub_188F15CD0(v9, a2, a1, v19);
  }
}

uint64_t sub_188EA018C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188A403F4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA5400();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890BF64C(v14, a3 & 1);
    v9 = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 32 * v9;

    return sub_188EA23B0(a1, v20);
  }

  else
  {

    return sub_188F15D14(v9, a2, a1, v19);
  }
}

void sub_188EA02AC(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(unint64_t, void *, uint64_t, uint64_t))
{
  v10 = v6;
  v13 = *v6;
  v14 = sub_188C3F684(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = sub_188C3F684(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      sub_188A34624(0, &qword_1ED48F680);
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v10;
  if (v20)
  {
    v25 = *(v24 + 56);
    v26 = *(v25 + 8 * v14);
    *(v25 + 8 * v14) = a1;
  }

  else
  {
    a6(v14, a2, a1, v24);

    v27 = a2;
  }
}

unint64_t sub_188EA0454(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_188A403F4(a1);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a2 & 1) == 0)
  {
    if (v22 >= v20 && (a2 & 1) == 0)
    {
      v23 = result;
      sub_188FA55B8();
      result = v23;
      goto LABEL_8;
    }

    sub_1890BF8D8(v20, a2 & 1);
    result = sub_188A403F4(a1);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 32 * result);
    *v26 = a3;
    v26[1] = a4;
    v26[2] = a5;
    v26[3] = a6;
  }

  else
  {

    return sub_188F15D7C(result, a1, v25, a3, a4, a5, a6);
  }

  return result;
}

void sub_188EA0594(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188E8B9AC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA5710();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1890BFB44(v13, a3 & 1);
    v8 = sub_188E8B9AC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_188A34624(0, &unk_1EA92E790);
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_188A3F9DC(v8, a2, a1, v18);

    v21 = a2;
  }
}

uint64_t sub_188EA0718(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(unint64_t, char *, uint64_t, uint64_t))
{
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v7 = v6;
  v11 = sub_18A4A29D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_188E8B9FC(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v29();
      goto LABEL_9;
    }

    v30();
    v23 = sub_188E8B9FC(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = a1;
  v26 = *v7;
  if (v21)
  {
    *(*(v26 + 56) + 8 * v17) = v25;
  }

  else
  {
    (*(v12 + 16))(v14, a2, v11);
    return v31(v17, v14, v25, v26);
  }
}

uint64_t sub_188EA0908(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_188E8BC0C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for UITextEffectView.EffectID();
      return sub_188EA24C4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for UITextEffectView.EffectID);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_188FA5724();
    goto LABEL_7;
  }

  sub_1890BFB58(v15, a4 & 1);
  v22 = sub_188E8BC0C(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    type metadata accessor for _NSRange(0);
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_188F15E80(v12, a2, a3, a1, v18);
}

void sub_188EA0A6C(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = _s8CacheKeyVMa();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_188E8BC8C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_188FA5EEC();
      goto LABEL_7;
    }

    sub_1890C02B8(v16, a3 & 1);
    v22 = sub_188E8BC8C(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_188EA2588(a2, v10, _s8CacheKeyVMa);
      sub_188F15F2C(v13, v10, a1, v19);
      return;
    }

LABEL_15:
    sub_18A4A87A8();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = *(v20 + 8 * v13);
  *(v20 + 8 * v13) = a1;
}

void sub_188EA0C10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_188B0944C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_188FA6128();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1890C066C(v16, a4 & 1);
    v11 = sub_188B0944C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;
  }

  else
  {
    sub_188B6DD84(v11, a2, a3, a1, v21);
  }
}

void sub_188EA0D54(uint64_t a1, __int16 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188E8B6A8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA6574();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890C0B70(v14, a3 & 1);
    v9 = sub_188E8B6A8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {

    sub_188F15FE0(v9, a2, a1, v19);
  }
}

uint64_t sub_188EA0E74(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_188C4585C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_188FA66D0();
      result = v17;
      goto LABEL_8;
    }

    sub_1890C0E54(v14, a3 & 1);
    result = sub_188C4585C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = a1;
  }

  else
  {

    return sub_188F16024(result, a2, a1, v19);
  }

  return result;
}

void sub_188EA0F80(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188A403F4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA6C94();
      v9 = v17;
      goto LABEL_8;
    }

    sub_188C19934(v14, a3 & 1);
    v9 = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {

    sub_188A3F9DC(v9, a2, a1, v19);
  }
}

uint64_t sub_188EA10A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_188E8BEC0(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_188FA7190();
      goto LABEL_7;
    }

    sub_1890C1710(v16, a3 & 1);
    v22 = sub_188E8BEC0(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_188EA2588(a2, v10, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      return sub_188F16068(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 72 * v13;

  return sub_188EA252C(a1, v20);
}

uint64_t sub_188EA1248(__int16 a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_188E8BEC0(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 2 * v13);
      *v20 = a1 & 1;
      v20[1] = HIBYTE(a1) & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = sub_188FA73F8();
    goto LABEL_7;
  }

  sub_1890C1B38(result, a3 & 1);
  result = sub_188E8BEC0(a2);
  if ((v17 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

  v13 = result;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_188EA2588(a2, v10, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  return sub_188F16138(v13, v10, a1 & 0x101, v19);
}

uint64_t sub_188EA13D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_188E8BEC0(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *v5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 16 * v15);
      *v22 = a1;
      v22[1] = a2;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a4 & 1) == 0)
  {
    result = sub_188FA765C();
    goto LABEL_7;
  }

  sub_1890C1F10(result, a4 & 1);
  result = sub_188E8BEC0(a3);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_188EA2588(a3, v12, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  return sub_188F161FC(v15, v12, a1, a2, v21);
}

uint64_t sub_188EA1550(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_188E8BEC0(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
      return sub_188EA24C4(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_188FA789C();
    goto LABEL_7;
  }

  sub_1890C22E0(v16, a3 & 1);
  v23 = sub_188E8BEC0(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_188EA2588(a2, v10, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  return sub_188F162B8(v13, v10, a1, v19);
}

void sub_188EA16FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_188B0944C(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_188FA7B88();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1890C2778(v18, a5 & 1);
    v13 = sub_188B0944C(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *(v24 + 8);
    v26 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;
  }

  else
  {
    sub_188F163A4(v13, a3, a4, a1, a2, v23);
  }
}

void sub_188EA1864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_188B85570(a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_188FA7F80();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1890C2A3C(v20, a6 & 1);
    v15 = sub_188B85570(a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      type metadata accessor for NSRectAlignment(0);
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 32 * v15);
    v27 = v26[2];
    v29 = v26[1];
    v28 = v26[3];
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
    v26[3] = a4;
  }

  else
  {

    sub_188F163F4(v15, a5, a1, a2, a3, a4, v25);
  }
}

uint64_t sub_188EA1A1C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188E906F4(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA8290();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1890C2D04(v14, a3 & 1);
    v9 = sub_188E906F4(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_188F16A6C(v9, a2 & 1, a1, v19);
  }
}

uint64_t sub_188EA1B80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(unint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v32 = a6;
  v33 = a7;
  v31 = a5;
  v8 = v7;
  v34 = a2;
  v12 = sub_18A4A29D8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_188E8B9FC(a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      v31();
      goto LABEL_9;
    }

    v32();
    v24 = sub_188E8B9FC(a3);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v34;
  v27 = a1;
  v28 = *v8;
  if (v22)
  {
    v29 = (*(v28 + 56) + 16 * v18);
    *v29 = v27;
    v29[1] = v26;
  }

  else
  {
    (*(v13 + 16))(v15, a3, v12);
    return v33(v18, v15, v27, v26, v28);
  }
}

void sub_188EA1D80(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_188E906F4(a3 & 1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_188FA8684();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1890C338C(v16, a4 & 1);
    v11 = sub_188E906F4(a3 & 1);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;
    v23 = *v22;
    *v22 = a1;
    *(v22 + 8) = a2;
  }

  else
  {

    sub_188F16548(v11, a3 & 1, a1, a2, v21);
  }
}

void sub_188EA1ED0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_18A4A5448();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_188E8BFB4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_188FA8800();
      goto LABEL_7;
    }

    sub_1890C3628(v17, a3 & 1);
    v23 = sub_188E8BFB4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_188F16594(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_18A4A87A8();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_188EA209C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_188E8B718(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_188FA8A74();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1890C3A04(v16, a4 & 1);
    v11 = sub_188E8B718(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_188A55538(a1, v22);
  }

  else
  {
    sub_188B65D7C(v11, a2, a3, a1, v21);

    return sub_188E90558(a2, a3);
  }
}

uint64_t sub_188EA24C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_188EA2588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _UIIntelligenceEdgeLightEffect.init(coder:)(void *a1)
{
  type metadata accessor for _UIIntelligenceEdgeLightEffect(v1);
  swift_deallocPartialClassInstance();
  return 0;
}

void _UIIntelligenceEdgeLightEffect._update(_:for:usage:)(int a1, id a2, uint64_t a3)
{
  v4 = v3;
  v6 = [a2 traitCollection];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = sub_189086FA0(2.0, 1.0, 1.5);
  v9 = sub_1890871A4(2.0);

  v10 = sub_188DF1200(v7, [v4 activationTransitionDirection]);
  v11 = sub_188DF1FC4(v7, [v4 deactivationTransitionDirection]);
  if ((v10 & 0x100000000) != 0)
  {
    v12 = &type metadata for _UILightEffectAlphaTransition;
    v13 = sub_188DF1DD8();
    if ((v11 & 0x100000000) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = &type metadata for _UILightEffectDirectionalTransition;
    v13 = sub_188DF28B0();
    if ((v11 & 0x100000000) != 0)
    {
LABEL_4:
      v14 = &type metadata for _UILightEffectAlphaTransition;
      v15 = sub_188DF1DD8();
      goto LABEL_7;
    }
  }

  v14 = &type metadata for _UILightEffectDirectionalTransition;
  v15 = sub_188DF28B0();
LABEL_7:
  v30 = v9;
  v31 = v10;
  v32 = 0;
  v33 = v12;
  v34 = v13;
  v35 = v11;
  v36 = 0;
  v37 = v14;
  v38 = v15;
  v39 = 24;
  if (a3 == 2)
  {
    v29[3] = _s18_ContentProxyEntryCMa();
    v29[4] = &off_1EFAF4C00;
    sub_1891EB090(v29);
    v16 = *&v4[OBJC_IVAR____UIIntelligenceEdgeLightEffect_radius];
    v17 = *&v4[OBJC_IVAR____UIIntelligenceEdgeLightEffect_region];
    v28[0] = 2;
    v29[5] = v16;
    v29[6] = v17;
    v18 = sub_188DF12D4(&v30, 2);
    sub_188EA3108(v28, v27);
    v19 = OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_surfaces;
    swift_beginAccess();
    v20 = *&v18[v19];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v18[v19] = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_188DF116C(0, v20[2] + 1, 1, v20);
      *&v18[v19] = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_188DF116C((v22 > 1), v23 + 1, 1, v20);
    }

    v25 = &type metadata for _UILightEffectProxiedEdgeSurface;
    v26 = &off_1EFAE6388;
    *&v24 = swift_allocObject();
    sub_188EA3108(v27, v24 + 16);
    v20[2] = v23 + 1;
    sub_188A5EBAC(&v24, &v20[5 * v23 + 4]);
    *&v18[v19] = v20;
    swift_endAccess();

    sub_188EA3164(v28);
    sub_188DF0D5C(&v30);
    sub_188EA3164(v27);
  }

  else
  {
    sub_188EA2A90(2, *&v4[OBJC_IVAR____UIIntelligenceEdgeLightEffect_region], &v30, *&v4[OBJC_IVAR____UIIntelligenceEdgeLightEffect_radius]);

    sub_188DF0D5C(&v30);
  }
}

void sub_188EA2A90(char a1, uint64_t a2, void *a3, double a4)
{
  v7 = sub_188DF12D4(a3, a1);
  v8 = OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_surfaces;
  swift_beginAccess();
  v9 = *&v7[v8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v7[v8] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_188DF116C(0, v9[2] + 1, 1, v9);
    *&v7[v8] = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_188DF116C((v11 > 1), v12 + 1, 1, v9);
  }

  v15 = &type metadata for _UILightEffectContainerEdgeSurface;
  v16 = &off_1EFAE64B0;
  LOBYTE(v13) = a1;
  *(&v13 + 1) = a4;
  v14 = a2;
  v9[2] = v12 + 1;
  sub_188A5EBAC(&v13, &v9[5 * v12 + 4]);
  *&v7[v8] = v9;
  swift_endAccess();
}

uint64_t _UIIntelligenceEdgeLightEffect._needsUpdateForTransition(from:to:usage:)(uint64_t result, void *a2, uint64_t a3)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  result = [result reducedMotion];
  if (!a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (result != [a2 reducedMotion] && (objc_msgSend(v3, sel_activationTransitionDirection) || objc_msgSend(v3, sel_deactivationTransitionDirection)))
  {
    return 1;
  }

  v7.receiver = v3;
  v7.super_class = _UIIntelligenceEdgeLightEffect;
  return objc_msgSendSuper2(&v7, sel__needsUpdateForTransitionFromEnvironment_toEnvironment_usage_, v6, a2, a3);
}

BOOL _UIIntelligenceEdgeLightEffect.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, v11);
  if (v12)
  {
    type metadata accessor for _UIIntelligenceEdgeLightEffect(v2);
    if (swift_dynamicCast())
    {
      sub_188A34624(0, &qword_1ED490230);
      v3 = v1;
      v4 = *&v10[OBJC_IVAR____UIIntelligenceEdgeLightEffect_lightSource];
      v5 = sub_18A4A7C88();

      if ((v5 & 1) != 0 && *&v3[OBJC_IVAR____UIIntelligenceEdgeLightEffect_region] == *&v10[OBJC_IVAR____UIIntelligenceEdgeLightEffect_region] && *&v3[OBJC_IVAR____UIIntelligenceEdgeLightEffect_radius] == *&v10[OBJC_IVAR____UIIntelligenceEdgeLightEffect_radius])
      {
        v6 = [v3 activationTransitionDirection];
        if (v6 == [v10 activationTransitionDirection])
        {
          v7 = [v3 deactivationTransitionDirection];
          v8 = [v10 deactivationTransitionDirection];

          return v7 == v8;
        }
      }
    }
  }

  else
  {
    sub_188A553EC(v11);
  }

  return 0;
}

void __swiftcall _UIIntelligenceEdgeLightEffect.init()(_UIIntelligenceEdgeLightEffect *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static UIVisualEffect.intelligenceEdgeLight(source:radius:region:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = objc_allocWithZone(_UIIntelligenceEdgeLightEffect);

  return [v6 initWithLightSource:a1 radius:a2 region:a3];
}

id static UIVisualEffect.intelligenceEdgeLight(source:radius:region:activationDirection:deactivationDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = [objc_allocWithZone(_UIIntelligenceEdgeLightEffect) initWithLightSource:a1 radius:a2 region:a5];
  [v7 setActivationTransitionDirection_];
  [v7 setDeactivationTransitionDirection_];
  return v7;
}

uint64_t sub_188EA320C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_189212B10(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_188EA32C4(uint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(unint64_t))
{
  if (!(a1 >> 62))
  {
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v5 = a4;
    v24 = a2;
    v25 = a3;
    v26 = a1;
    v27 = sub_18A4A7F68();
    if (v27)
    {
      v28 = v27;
      v7 = v24(v27, 0);
      v25(v7 + 32, v28, v26);
      v30 = v29;

      a4 = v5;
      if (v30 != v28)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v7 = MEMORY[0x1E69E7CC0];
      a4 = v5;
LABEL_3:
      if ((v7 & 0x8000000000000000) == 0 && (v7 & 0x4000000000000000) == 0)
      {
        v8 = *(v7 + 16);
        v9 = v8 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      v31 = a4;
      a1 = sub_18A4A7F68();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v8 = a1;
    v9 = a1 / 2;
    a4 = v31;
LABEL_6:
    if (v8 + 1 < 3)
    {
      return v7;
    }

    v32 = a4;
    v11 = -v9;
    v12 = 4;
    while (1)
    {
      v13 = v8 - (v12 - 3);
      if (__OFSUB__(v8, v12 - 3))
      {
        break;
      }

      a1 = v12 - 4;
      if (v12 - 4 != v13)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v16 = v32();
          v17 = (v32)(v8 - (v12 - 3), v7);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v14)
          {
            goto LABEL_32;
          }

          if (v13 >= v14)
          {
            goto LABEL_33;
          }

          v15 = *(v7 + 8 * v13 + 32);
          v16 = *(v7 + 8 * v12);
          v17 = v15;
        }

        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = a5(v7);
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v7 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v12);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v12) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          a1 = a5(v7);
          v7 = a1;
          v20 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v13 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v13 >= *(v20 + 16))
        {
          goto LABEL_34;
        }

        v22 = v20 + 8 * v13;
        v23 = *(v22 + 32);
        *(v22 + 32) = v16;
      }

      ++v12;
      if (v11 + v12 == 4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_188EA35A4()
{
  v1 = [v0 layer];
  type metadata accessor for _UIOrbitalColorView.CogOrbitLayer();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = [*&v0[OBJC_IVAR____TtC5UIKit19_UIOrbitalColorView_palette] colors];
  sub_188EA580C();
  v4 = sub_18A4A7548();

  if (v4 >> 62)
  {
    v5 = sub_18A4A7F68();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:

    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_18A4A8208();
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = sub_188E48DA0(v7, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    v10 = [v8 CGColor];

    sub_18A4A81D8();
    sub_18A4A8218();
    sub_18A4A8228();
    sub_18A4A81E8();
  }

  while (v5 != v7);

  v11 = v15;
LABEL_12:
  *(v2 + OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_colors) = v11;

  sub_188EA4780(v12);

  v14 = sub_188EA32C4(v13, sub_188AF0A60, sub_189212DE0, sub_188E49AF8, sub_188B8AD14);
  sub_188EA4780(v14);
}

char *sub_188EA38E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_clockwiseCog;
  v3 = type metadata accessor for _UIOrbitalColorView.CogLayer();
  v4 = objc_allocWithZone(v3);
  v5 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_spokes] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_meshingOffset] = 0;
  *&v4[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_rootEdge] = 1;
  v21.receiver = v4;
  v21.super_class = v3;
  v6 = objc_msgSendSuper2(&v21, sel_init);
  sub_188EA4780(v5);

  *&v1[v2] = v6;
  v7 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_counterClockwiseCog;
  v8 = objc_allocWithZone(v3);
  *&v8[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_spokes] = v5;
  *&v8[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_meshingOffset] = 0x3FE0000000000000;
  *&v8[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_rootEdge] = 3;
  v20.receiver = v8;
  v20.super_class = v3;
  v9 = objc_msgSendSuper2(&v20, sel_init);
  sub_188EA4780(v5);

  *&v1[v7] = v9;
  v10 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_container;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  *&v1[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_colors] = v5;
  *&v1[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_period] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_relativeCogSpeed] = 0x4000000000000000;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for _UIOrbitalColorView.CogOrbitLayer();
  v11 = objc_msgSendSuper2(&v19, sel_init);
  v12 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_container;
  v13 = *&v11[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_container];
  v14 = v11;
  [v14 addSublayer_];
  [*&v11[v12] addSublayer_];
  [*&v11[v12] addSublayer_];

  sub_188EA4780(v15);

  v17 = sub_188EA32C4(v16, sub_188AF0A60, sub_189212DE0, sub_188E49AF8, sub_188B8AD14);
  sub_188EA4780(v17);

  sub_188EA4034();

  return v14;
}

uint64_t sub_188EA3B78(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_clockwiseCog;
  v5 = type metadata accessor for _UIOrbitalColorView.CogLayer();
  v6 = objc_allocWithZone(v5);
  v7 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_spokes] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_meshingOffset] = 0;
  *&v6[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_rootEdge] = 1;
  v25.receiver = v6;
  v25.super_class = v5;
  v8 = objc_msgSendSuper2(&v25, sel_init);
  sub_188EA4780(v7);

  *&v2[v4] = v8;
  v9 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_counterClockwiseCog;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_spokes] = v7;
  *&v10[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_meshingOffset] = 0x3FE0000000000000;
  *&v10[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_rootEdge] = 3;
  v24.receiver = v10;
  v24.super_class = v5;
  v11 = objc_msgSendSuper2(&v24, sel_init);
  sub_188EA4780(v7);

  *&v2[v9] = v11;
  v12 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_container;
  *&v2[v12] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v13 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_colors;
  *&v2[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_colors] = v7;
  v14 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_period;
  *&v2[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_period] = 0x4030000000000000;
  v15 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_relativeCogSpeed;
  *&v2[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_relativeCogSpeed] = 0x4000000000000000;
  sub_188A55598(a1, v23);
  v16 = type metadata accessor for _UIOrbitalColorView.CogOrbitLayer();
  if (swift_dynamicCast())
  {
    v17 = v22;
    *&v2[v13] = *&v22[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_colors];

    *&v2[v14] = *&v17[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_period];
    *&v2[v15] = *&v17[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_relativeCogSpeed];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v18 = sub_18A4A86A8();
    v21.receiver = v2;
    v21.super_class = v16;
    v19 = objc_msgSendSuper2(&v21, sel_initWithLayer_, v18);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v19;
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

id sub_188EA3E38()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for _UIOrbitalColorView.CogOrbitLayer();
  objc_msgSendSuper2(&v10, sel_layoutSublayers);
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  [v0 bounds];
  Height = CGRectGetHeight(v12);
  v3 = *&v0[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_container];
  [v3 setBounds_];
  [v0 bounds];
  MidX = CGRectGetMidX(v13);
  [v0 bounds];
  [v3 setPosition_];
  v5 = *&v0[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_clockwiseCog];
  [v5 setBounds_];
  [v0 bounds];
  v6 = CGRectGetMidX(v15);
  [v0 bounds];
  [v5 setPosition_];
  v7 = *&v0[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_counterClockwiseCog];
  [v7 setBounds_];
  [v0 bounds];
  v8 = CGRectGetMidX(v17);
  [v0 bounds];
  return [v7 setPosition_];
}

void sub_188EA4034()
{
  v1 = sub_18A4A7258();
  v2 = [objc_opt_self() animationWithKeyPath_];

  v3 = v2;
  [v3 setRemovedOnCompletion_];
  v4 = *MEMORY[0x1E697A078];
  v5 = objc_opt_self();
  v6 = v3;
  v7 = [v5 functionWithName_];
  [v6 setValueFunction_];

  v8 = sub_18A4A77F8();
  [v6 setFromValue_];

  v9 = sub_18A4A2D28();
  [v6 setToValue_];

  LODWORD(v10) = 2139095040;
  [v6 setRepeatCount_];
  sub_18A4A79D8();
  [v6 setPreferredFrameRateRange_];
  v11 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_period;
  [v6 setDuration_];
  v12 = *(v0 + OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_clockwiseCog);
  v13 = sub_18A4A7258();
  [v12 addAnimation:v6 forKey:v13];

  v14 = sub_18A4A2D28();
  [v6 setToValue_];

  v15 = *(v0 + OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_counterClockwiseCog);
  v16 = sub_18A4A7258();
  [v15 addAnimation:v6 forKey:v16];

  [v6 setDuration_];
  v17 = *(v0 + OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_container);
  v18 = sub_18A4A7258();
  [v17 addAnimation:v6 forKey:v18];
}

uint64_t sub_188EA43C8(void *a1)
{
  sub_188A55598(a1, v10);
  v3 = type metadata accessor for _UIOrbitalColorView.CogLayer();
  if (swift_dynamicCast())
  {
    v4 = v9;
    *&v1[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_spokes] = MEMORY[0x1E69E7CC0];
    *&v1[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_rootEdge] = *&v4[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_rootEdge];
    *&v1[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_meshingOffset] = *&v4[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_meshingOffset];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v5 = sub_18A4A86A8();
    v8.receiver = v1;
    v8.super_class = v3;
    v6 = objc_msgSendSuper2(&v8, sel_initWithLayer_, v5);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v6;
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_188EA4580()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for _UIOrbitalColorView.CogLayer();
  objc_msgSendSuper2(&v13, sel_layoutSublayers);
  [v0 bounds];
  Width = CGRectGetWidth(v14);
  [v0 bounds];
  Height = CGRectGetHeight(v15);
  [v0 bounds];
  MidX = CGRectGetMidX(v16);
  [v0 bounds];
  MidY = CGRectGetMidY(v17);
  v5 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_spokes;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_188E49B68(j, v6);
      }

      else
      {
        if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * j + 32);
      }

      v10 = v9;
      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v9 setBounds_];
      [v10 setPosition_];

      if (v11 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_188EA4780(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_spokes;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    goto LABEL_40;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

LABEL_3:
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {
    v50 = i;
    v51 = a1;
    v52 = v4;
    if (v6 == i)
    {
      if (v6 < 0)
      {
        goto LABEL_44;
      }

      if (v6)
      {
        v47 = a1 & 0xC000000000000001;
        v49 = *MEMORY[0x1E6979DB0];
        v8 = 4;
        do
        {
          v20 = *&v2[v4];
          if ((v20 & 0xC000000000000001) != 0)
          {

            v21 = sub_188E49B68(v8 - 4, v20);

            if (!v47)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if ((v8 - 4) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v21 = *(v20 + 8 * v8);
            if (!v47)
            {
LABEL_13:
              v9 = *(a1 + 8 * v8);
              goto LABEL_9;
            }
          }

          v9 = sub_188E49AF8(v8 - 4, a1);
LABEL_9:
          v10 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_color;
          v11 = *&v21[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_color];
          *&v21[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_color] = v9;
          v12 = v9;

          v13 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_gradientLayer;
          v14 = *&v21[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_gradientLayer];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_18A64BFA0;
          v16 = *&v21[v10];
          type metadata accessor for CGColor(0);
          *(v15 + 56) = v17;
          *(v15 + 32) = v16;
          CopyWithAlpha = CGColorCreateCopyWithAlpha(v16, 0.0);
          *(v15 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935958);
          *(v15 + 64) = CopyWithAlpha;
          v19 = sub_18A4A7518();

          [v14 setColors_];

          [*&v21[v13] setStartPoint_];
          [*&v21[v13] setEndPoint_];
          [*&v21[v13] setType_];

          ++v8;
          --v6;
          a1 = v51;
          v4 = v52;
        }

        while (v6);
      }
    }

    v22 = *&v2[v4];
    a1 = v22 >> 62 ? sub_18A4A7F68() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!a1)
    {
      break;
    }

    v23 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v24 = sub_188E49B68(v23, v22);
      }

      else
      {
        if (v23 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v24 = *(v22 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      [v24 removeFromSuperlayer];

      ++v23;
      if (v26 == a1)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v6 = sub_18A4A7F68();
    if (!(a1 >> 62))
    {
      goto LABEL_3;
    }

LABEL_41:
    ;
  }

LABEL_27:

  *&v2[v52] = MEMORY[0x1E69E7CC0];

  if (v50 < 0)
  {
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
    v27 = v51;
    if (v50)
    {
      v28 = 0;
      v48 = *MEMORY[0x1E6979DB0];
      do
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v29 = sub_188E49AF8(v28, v27);
        }

        else
        {
          v29 = *(v27 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = type metadata accessor for _UIOrbitalColorView.SpokeLayer();
        v32 = objc_allocWithZone(v31);
        *&v32[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_color] = v30;
        *&v32[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_normalizedRadius] = 0x3FE0000000000000;
        *&v32[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_normalizedOffset] = 0x3FF0000000000000;
        *&v32[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_offsetDirection] = 1;
        v33 = objc_allocWithZone(MEMORY[0x1E6979380]);
        v34 = v30;
        v35 = [v33 init];
        *&v32[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_gradientLayer] = v35;
        v53.receiver = v32;
        v53.super_class = v31;
        v36 = objc_msgSendSuper2(&v53, sel_init);
        v37 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_gradientLayer;
        v38 = *&v36[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_gradientLayer];
        v39 = v36;
        [v39 addSublayer_];
        v40 = *&v36[v37];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_18A64BFA0;
        v42 = *&v39[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_color];
        type metadata accessor for CGColor(0);
        *(v41 + 56) = v43;
        *(v41 + 32) = v42;
        v44 = CGColorCreateCopyWithAlpha(v42, 0.0);
        *(v41 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935958);
        *(v41 + 64) = v44;
        v45 = sub_18A4A7518();

        [v40 setColors_];

        [*&v36[v37] setStartPoint_];
        [*&v36[v37] setEndPoint_];
        [*&v36[v37] setType_];

        swift_beginAccess();
        v46 = v39;
        MEMORY[0x18CFE2450]();
        if (*((*&v2[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        ++v28;
        sub_18A4A75F8();
        swift_endAccess();
        [v2 addSublayer_];

        v27 = v51;
      }

      while (v50 != v28);
    }

    sub_188EA4DA0();
  }
}

void sub_188EA4DA0()
{
  v1 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_spokes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = *(v0 + OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_meshingOffset);
  if (v2 >> 62)
  {
    v5 = sub_18A4A7F68();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 6.28318531 / v3;
    v7 = v6 * v4;
    v8 = -v5;
    v9 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_rootEdge;
    for (i = 4; v8 + i != 4; ++i)
    {
      v11 = i - 4;
      v12 = *(v0 + v1);
      if ((v12 & 0xC000000000000001) != 0)
      {

        v13 = sub_188E49B68(i - 4, v12);
      }

      else
      {
        if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v3 = sub_18A4A7F68();
          v2 = *(v0 + v1);
          goto LABEL_3;
        }

        v13 = *(v12 + 8 * i);
      }

      CATransform3DMakeRotation(&v17, v7 + v6 * v11, 0.0, 0.0, 1.0);
      v16 = v17;
      [v13 setTransform_];

      v14 = *(v0 + v1);
      if ((v14 & 0xC000000000000001) != 0)
      {

        v15 = sub_188E49B68(i - 4, v14);
      }

      else
      {
        if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v15 = *(v14 + 8 * i);
      }

      *&v15[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_offsetDirection] = *(v0 + v9);
      [v15 setNeedsLayout];
    }
  }
}

uint64_t sub_188EA504C(void *a1)
{
  sub_188A55598(a1, v21);
  v3 = type metadata accessor for _UIOrbitalColorView.SpokeLayer();
  if (swift_dynamicCast())
  {
    v4 = v20;
    v5 = *&v20[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_color];
    *&v1[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_color] = v5;
    *&v1[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_normalizedRadius] = *&v4[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_normalizedRadius];
    *&v1[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_normalizedOffset] = *&v4[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_normalizedOffset];
    *&v1[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_offsetDirection] = *&v4[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_offsetDirection];
    v6 = objc_allocWithZone(MEMORY[0x1E6979380]);
    v7 = v5;
    v8 = [v6 init];
    *&v1[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_gradientLayer] = v8;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v9 = sub_18A4A86A8();
    v19.receiver = v1;
    v19.super_class = v3;
    v10 = objc_msgSendSuper2(&v19, sel_initWithLayer_, v9);
    swift_unknownObjectRelease();
    v11 = *&v10[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_gradientLayer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18A64BFA0;
    v13 = *&v10[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_color];
    type metadata accessor for CGColor(0);
    *(v12 + 56) = v14;
    *(v12 + 32) = v13;
    v15 = v10;
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v13, 0.0);
    *(v12 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935958);
    *(v12 + 64) = CopyWithAlpha;
    v17 = sub_18A4A7518();

    [v11 setColors_];

    [v11 setStartPoint_];
    [v11 setEndPoint_];
    [v11 setType_];

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v15;
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_188EA52F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  return a4(&v6);
}

id sub_188EA53B0()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for _UIOrbitalColorView.SpokeLayer();
  objc_msgSendSuper2(&v11, sel_layoutSublayers);
  [v0 bounds];
  Width = CGRectGetWidth(v12);
  [v0 bounds];
  v2 = (Width + CGRectGetHeight(v13)) * 0.5;
  v3 = *&v0[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_normalizedRadius];
  v4 = v2 * 0.5 * *&v0[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_normalizedOffset];
  [v0 bounds];
  MidX = CGRectGetMidX(v14);
  [v0 bounds];
  MidY = CGRectGetMidY(v15);
  v7 = MidY;
  v8 = *&v0[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_offsetDirection];
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      MidX = v4 + MidX;
      goto LABEL_10;
    }

    if (v8 == 3)
    {
      v7 = v4 + MidY;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v8)
    {
      MidX = MidX - v4;
LABEL_10:
      v9 = *&v0[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF10SpokeLayer_gradientLayer];
      [v9 setBounds_];
      return [v9 setPosition_];
    }

    if (v8 == 1)
    {
      v7 = MidY - v4;
      goto LABEL_10;
    }
  }

  type metadata accessor for CGRectEdge(0);
  result = sub_18A4A8768();
  __break(1u);
  return result;
}

id sub_188EA55D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_188EA5678()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_clockwiseCog;
  v3 = type metadata accessor for _UIOrbitalColorView.CogLayer();
  v4 = objc_allocWithZone(v3);
  v5 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_spokes] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_meshingOffset] = 0;
  *&v4[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_rootEdge] = 1;
  v12.receiver = v4;
  v12.super_class = v3;
  v6 = objc_msgSendSuper2(&v12, sel_init);
  sub_188EA4780(v5);

  *(v1 + v2) = v6;
  v7 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_counterClockwiseCog;
  v8 = objc_allocWithZone(v3);
  *&v8[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_spokes] = v5;
  *&v8[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_meshingOffset] = 0x3FE0000000000000;
  *&v8[OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF8CogLayer_rootEdge] = 3;
  v11.receiver = v8;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_188EA4780(v5);

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_container;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  *(v1 + OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_colors) = v5;
  *(v1 + OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_period) = 0x4030000000000000;
  *(v1 + OBJC_IVAR____TtCC5UIKit19_UIOrbitalColorViewP33_E7ADF61CB2C5BE84A3CEAD4215D687DF13CogOrbitLayer_relativeCogSpeed) = 0x4000000000000000;
  sub_18A4A8398();
  __break(1u);
}

unint64_t sub_188EA580C()
{
  result = qword_1ED4913C0[0];
  if (!qword_1ED4913C0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED4913C0);
  }

  return result;
}

uint64_t sub_188EA5858@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = objc_opt_self();
  v3 = *(MEMORY[0x1E69792E8] + 80);
  v27 = *(MEMORY[0x1E69792E8] + 64);
  v28 = v3;
  v4 = *(MEMORY[0x1E69792E8] + 112);
  v29 = *(MEMORY[0x1E69792E8] + 96);
  v30 = v4;
  v5 = *(MEMORY[0x1E69792E8] + 16);
  v23 = *MEMORY[0x1E69792E8];
  v24 = v5;
  v6 = *(MEMORY[0x1E69792E8] + 48);
  v25 = *(MEMORY[0x1E69792E8] + 32);
  v26 = v6;
  v7 = [v2 valueWithCATransform3D_];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  v8 = [v2 valueWithCATransform3D_];
  v22 = sub_188A34624(0, &qword_1ED48EC30);
  *&v21 = v8;
  v9 = sub_18A4A7258();
  v10 = v22;
  if (v22)
  {
    v11 = __swift_project_boxed_opaque_existential_0(&v21, v22);
    v12 = *(v10 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = v7;
    v17 = sub_18A4A86A8();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(&v21);
  }

  else
  {
    v18 = v7;
    v17 = 0;
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E6979410]) initWithKeyPath:v9 initialValue:v7 initialVelocity:v17 additive:1 preferredFrameRateRangeMaximum:120 group:0];

  swift_unknownObjectRelease();
  *(a1 + 8) = v19;
  *(a1 + 16) = 0;
  return swift_unknownObjectWeakInit();
}

double sub_188EA5BA8()
{
  v0 = sub_18A4A6E18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18A4A6E58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v92 = v5;
    v93 = v7;
    v94 = v4;
    v95 = v3;
    v10 = [Strong scaleX];
    [v10 presentationValue];
    v12 = v11;

    v13 = [v9 scaleY];
    [v13 presentationValue];
    v15 = v14;

    v16 = [v9 driftX];
    [v16 presentationValue];
    v18 = v17;

    v19 = [v9 driftY];
    [v19 presentationValue];
    v21 = v20;

    v22 = [v9 scaleX];
    [v22 velocity];
    v24 = v23;

    v25 = [v9 scaleY];
    [v25 velocity];
    v27 = v26;

    v28 = [v9 driftX];
    [v28 velocity];
    v30 = v29;

    v31 = [v9 driftY];
    [v31 velocity];
    v33 = v32;

    v34 = *&v9[OBJC_IVAR____UIFlexInteraction_animationContext];
    os_unfair_lock_lock((v34 + 48));
    v35 = *(v34 + 16);
    if (!v35)
    {
      goto LABEL_18;
    }

    v89 = v35;
    CATransform3DMakeScale(&v100, v12, v15, 1.0);
    CATransform3DTranslate(&v98, &v100, v18, v21, 0.0);
    memset(&v100, 0, 24);
    v100.m14 = v24;
    v100.m21 = v27;
    v100.m22 = 0.0;
    v100.m23 = v30;
    v100.m24 = v33;
    memset(&v100.m31, 0, 64);
    v101 = 0;
    sub_188AA9844(&v99);
    v36 = objc_opt_self();
    v97 = v99;
    v91 = [v36 valueWithCATransform3D_];
    if ((*(v34 + 33) & 1) != 0 || fabs(v12 + -1.0) > 0.001)
    {
      v37 = 0;
    }

    else
    {
      v37 = 0;
      if (fabs(v15 + -1.0) <= 0.001 && fabs(v18) <= 0.1)
      {
        v37 = fabs(v21) <= 0.1;
      }
    }

    v38 = swift_unknownObjectWeakLoadStrong();
    v39 = MEMORY[0x1E69E7CC0];
    v90 = v34;
    if (v38)
    {
      swift_unknownObjectRelease();
      sub_188A34624(0, &qword_1ED490540);
      v88 = sub_18A4A7A68();
      v40 = swift_allocObject();
      v41 = v37;
      LODWORD(v86) = v37;
      v42 = v1;
      v43 = v0;
      v44 = v40;
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = v12;
      *(v45 + 32) = v15;
      *(v45 + 40) = v18;
      *(v45 + 48) = v21;
      *(v45 + 56) = v41;
      *&v97.m21 = sub_188EA9AEC;
      *&v97.m22 = v45;
      *&v97.m11 = MEMORY[0x1E69E9820];
      *&v97.m12 = 1107296256;
      *&v97.m13 = sub_188A4A8F0;
      *&v97.m14 = &block_descriptor_203;
      v46 = _Block_copy(&v97);

      v47 = v93;
      sub_18A4A6E38();
      v96 = v39;
      sub_188D7609C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
      sub_188BA3728();
      v48 = v95;
      sub_18A4A7EB8();
      v49 = v88;
      MEMORY[0x18CFE29D0](0, v47, v48, v46);
      _Block_release(v46);

      v87 = v43;
      v88 = v42;
      v50 = v42;
      v51 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
      (*(v50 + 8))(v48, v43);
      v52 = v92;
      (*(v92 + 8))(v47, v94);

      if ((v86 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v54 = v1;
      if (!v37)
      {
        v75 = *(v34 + 24);
        v97 = v98;
        v76 = [v36 valueWithCATransform3D_];
        [v75 setValue:v76 velocity:v91];

        v77 = *(v34 + 32);
        v78 = v0;
        v79 = v54;
        v80 = v95;
        v81 = v93;
        if (v77)
        {
          goto LABEL_15;
        }

        sub_188A34624(0, &qword_1ED490540);
        v88 = sub_18A4A7A68();
        v82 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v97.m21 = sub_188EA9AD4;
        *&v97.m22 = v82;
        *&v97.m11 = MEMORY[0x1E69E9820];
        *&v97.m12 = 1107296256;
        *&v97.m13 = sub_188A4A8F0;
        *&v97.m14 = &block_descriptor_188;
        v83 = _Block_copy(&v97);

        sub_18A4A6E38();
        v96 = MEMORY[0x1E69E7CC0];
        sub_188D7609C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
        sub_188BA3728();
        sub_18A4A7EB8();
        v84 = v88;
        MEMORY[0x18CFE29D0](0, v81, v80, v83);
        _Block_release(v83);

        (*(v79 + 8))(v80, v78);
        (*(v92 + 8))(v81, v94);
LABEL_14:

LABEL_15:
        v34 = v90;
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          v68 = fabs(v30);
          v69 = fabs(v33);
          v70 = v89;
          [v89 bounds];
          v71 = fabs(v24) * CGRectGetWidth(v102) * 0.5;
          v72 = fabs(v27);
          [v70 bounds];
          Height = CGRectGetHeight(v103);

          v53 = sqrt((v68 + v71) * (v68 + v71) + (v69 + v72 * Height * 0.5) * (v69 + v72 * Height * 0.5));
LABEL_19:
          os_unfair_lock_unlock((v34 + 48));

          return v53;
        }

LABEL_18:
        v53 = 0.0;
        goto LABEL_19;
      }

      v55 = *(v34 + 32);
      v87 = v0;
      v88 = v1;
      v52 = v92;
      v47 = v93;
      v51 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
      if (v55)
      {
        sub_188A34624(0, &qword_1ED490540);
        v86 = sub_18A4A7A68();
        v56 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v97.m21 = sub_188EA9AE4;
        *&v97.m22 = v56;
        v85 = v56;
        *&v97.m11 = MEMORY[0x1E69E9820];
        *&v97.m12 = 1107296256;
        *&v97.m13 = sub_188A4A8F0;
        *&v97.m14 = &block_descriptor_196;
        v57 = _Block_copy(&v97);

        sub_18A4A6E38();
        v96 = MEMORY[0x1E69E7CC0];
        sub_188D7609C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
        sub_188BA3728();
        v58 = v95;
        v59 = v87;
        sub_18A4A7EB8();
        v60 = v86;
        MEMORY[0x18CFE29D0](0, v47, v58, v57);
        v61 = v57;
        v62 = v94;
        _Block_release(v61);

        (*(v88 + 8))(v58, v59);
        (*(v52 + 8))(v47, v62);
      }
    }

    sub_188A34624(0, &qword_1ED490540);
    v93 = sub_18A4A7A68();
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v97.m21 = sub_188EA9ADC;
    *&v97.m22 = v63;
    *&v97.m11 = MEMORY[0x1E69E9820];
    *&v97.m12 = v51[308];
    *&v97.m13 = sub_188A4A8F0;
    *&v97.m14 = &block_descriptor_192;
    v64 = _Block_copy(&v97);

    sub_18A4A6E38();
    v96 = MEMORY[0x1E69E7CC0];
    sub_188D7609C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
    sub_188BA3728();
    v65 = v95;
    v66 = v87;
    sub_18A4A7EB8();
    v67 = v93;
    MEMORY[0x18CFE29D0](0, v47, v65, v64);
    _Block_release(v64);

    (*(v88 + 8))(v65, v66);
    (*(v52 + 8))(v47, v94);
    goto LABEL_14;
  }

  return 0.0;
}

void sub_188EA677C(double a1, double a2, double a3, double a4, uint64_t a5, char a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [objc_allocWithZone(_UIFlexInteractionUpdate) init];
    [v13 setScale_];
    [v13 setTranslation_];
    [v13 setIsActive_];
    v14 = [v12 delegate];
    if (v14)
    {
      [v14 flexInteraction:v12 didIssueUpdate:v13];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void __swiftcall _UIFlexInteractionUpdate.init()(_UIFlexInteractionUpdate *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_188EA68DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____UIFlexInteraction_animationContext);

    os_unfair_lock_lock((v2 + 48));
    if (*(v2 + 32) == 1)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        [v3 removePresentationModifier_];
      }

      *(v2 + 32) = 0;
    }

    os_unfair_lock_unlock((v2 + 48));
  }
}

void sub_188EA6980()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____UIFlexInteraction_animationContext);

    os_unfair_lock_lock((v2 + 48));
    if ((*(v2 + 32) & 1) == 0)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        [v3 addPresentationModifier_];
      }

      *(v2 + 32) = 1;
    }

    os_unfair_lock_unlock((v2 + 48));
  }
}

char *sub_188EA6A24()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&result[OBJC_IVAR____UIFlexInteraction_settlingSignpost] = 0;
  }

  return result;
}

void sub_188EA6A88(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 window];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 _outermostLayer];
        if (!v9)
        {
          v9 = [v6 layer];
        }

        v10 = [v8 layer];
        if (([v4 shouldUsePresentationLayers] & 1) == 0)
        {
          [v4 setShouldUsePresentationLayers_];
        }

        if ([v4 shouldUsePresentationLayers])
        {
          v11 = [v9 presentationLayer];
          if (v11)
          {
            v12 = v11;
            v13 = [v10 presentationLayer];
            if (v13)
            {
              v14 = v13;

              v15 = v10;
              v10 = v14;
              v9 = v12;
            }

            else
            {
              v15 = v12;
            }
          }
        }

        v16 = [v4 velocityIntegrator];
        [v9 bounds];
        [v10 convertPoint:v9 fromLayer:{UIRectGetCenter(v17, v18, v19)}];
        v21 = v20;
        v23 = v22;
        [a2 modelTime];
        [v16 addSample:v21 withTimestamp:{v23, v24}];

        [v4 updateFlex];
        v6 = v9;
      }

      v4 = v6;
    }
  }
}

uint64_t sub_188EA6CD0(uint64_t a1)
{
  v3 = [v1 superlayer];
  if (v3)
  {
    v4 = v3;
    sub_188A34624(0, &qword_1ED490230);
    v5 = sub_18A4A7C88();
    v6 = [v1 hasBeenCommitted];
    v7 = v5 & v6;
    if (v5 & 1) == 0 && (v6)
    {
      v7 = sub_188EA6CD0(a1);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_188EA6D8C()
{
  v1 = v0;
  type metadata accessor for _UIFlexInteractionSettingsDomain();
  v22.receiver = swift_getObjCClassFromMetadata();
  v22.super_class = &OBJC_METACLASS____TtC5UIKit32_UIFlexInteractionSettingsDomain;
  v2 = objc_msgSendSuper2(&v22, sel_rootSettings);
  if (v2)
  {
    v3 = v2;
    type metadata accessor for _UIFlexInteractionSettings();
    v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_interactionSpec);

    v5 = [v1 preferredVariant];
    if (v5 > 2)
    {
      switch(v5)
      {
        case 3:
          v6 = &OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_loupe;
          goto LABEL_17;
        case 4:
          v7 = [v1 view];
          if (v7)
          {
            v8 = v7;
            [v7 bounds];
            v10 = v9;
            v12 = v11;
          }

          else
          {
            v10 = 0.0;
            v12 = 0.0;
          }

          v19 = sub_188F76FD0(v10, v12);
          goto LABEL_18;
        case 5:
          v6 = &OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_menu;
          goto LABEL_17;
      }
    }

    else
    {
      switch(v5)
      {
        case 0:
          v13 = [v1 view];
          if (v13)
          {
            v14 = v13;
            [v13 bounds];
            v16 = v15;
            v18 = v17;
          }

          else
          {
            v16 = 0.0;
            v18 = 0.0;
          }

          v19 = sub_188F76B80(v16, v18);
          goto LABEL_18;
        case 1:
          v6 = &OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_small;
LABEL_17:
          v19 = *&v4[*v6];
LABEL_18:
          v20 = v19;

          return v20;
        case 2:
          v6 = &OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_large;
          goto LABEL_17;
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t sub_188EA6FA8(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_188EA9A30;
  *(v2 + 24) = a1;
  v5[4] = sub_188E3FE50;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_188A4A968;
  v5[3] = &block_descriptor_163;
  v3 = _Block_copy(v5);

  UIFI_HFR(v3);
  _Block_release(v3);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_188EA70D0()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong translationY];

  v1 = swift_unknownObjectUnownedLoadStrong();
  [v1 translation];
  v3 = v2;

  [v4 setValue_];
}

void sub_188EA7170()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong translationY];

  [v1 setVelocity_];
}

void sub_188EA71E4()
{
  v1 = [v0 view];
  if (!v1)
  {
    return;
  }

  v9 = v1;
  if ((sub_188C8D150(v1) & 1) == 0)
  {
    goto LABEL_5;
  }

  v2 = *&v0[OBJC_IVAR____UIFlexInteraction_animationContext];
  os_unfair_lock_lock((v2 + 48));
  if (*(v2 + 33))
  {
    os_unfair_lock_unlock((v2 + 48));
LABEL_5:
    v3 = v9;
LABEL_6:

    return;
  }

  *(v2 + 33) = 1;
  os_unfair_lock_unlock((v2 + 48));
  _s8SignpostCMa();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v4 + 24) = 0;
  _UIFlexInteractionBeginSignpostInterval(v0);
  *&v0[OBJC_IVAR____UIFlexInteraction_interactionSignpost] = v4;

  v5 = [v0 updateLink];
  if (v5)
  {
    v6 = v5;
    [v5 setEnabled_];
  }

  v8 = [objc_allocWithZone(_UIFlexInteractionUpdate) init];
  [v8 setIsActive_];
  v7 = [v0 delegate];
  if (!v7)
  {

    v3 = v8;
    goto LABEL_6;
  }

  [v7 flexInteraction:v0 didIssueUpdate:v8];

  swift_unknownObjectRelease();
}

void sub_188EA73B4()
{
  v1 = *&v0[OBJC_IVAR____UIFlexInteraction_animationContext];
  os_unfair_lock_lock((v1 + 48));
  if (*(v1 + 33) == 1)
  {
    *(v1 + 33) = 0;
    os_unfair_lock_unlock((v1 + 48));
    *&v0[OBJC_IVAR____UIFlexInteraction_interactionSignpost] = 0;

    _s8SignpostCMa();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v2 + 24) = 1;
    _UIFlexInteractionBeginSignpostInterval(v0);
    *&v0[OBJC_IVAR____UIFlexInteraction_settlingSignpost] = v2;

    v3 = [v0 updateLink];
    if (v3)
    {
      v4 = v3;
      [v3 setEnabled_];
    }

    [v0 setShouldUsePresentationLayers_];
    v5 = [v0 velocityIntegrator];
    [v5 reset];

    [v0 updateFlex];
  }

  else
  {

    os_unfair_lock_unlock((v1 + 48));
  }
}

void sub_188EA7518()
{
  v1 = v0;
  if (qword_1ED48FD18 != -1)
  {
    swift_once();
  }

  if ((sub_188B0CAA4() & 1) == 0)
  {
    if ([v0 preferredVariant] == 5)
    {

      [v0 updateWithInteractionPulse];
      return;
    }

    v2 = [v0 view];
    if (!v2)
    {
      return;
    }

    v3 = v2;
    v4 = [v0 scaleX];
    [v4 value];
    v6 = v5;

    if (v6 == 0.0)
    {
      v7 = [v1 scaleY];
      [v7 value];
      v9 = v8;

      if (v9 == 0.0)
      {
        v10 = objc_opt_self();
        v11 = swift_allocObject();
        swift_unknownObjectUnownedInit();
        v108 = sub_188EA9BC8;
        v109 = v11;
        aBlock = MEMORY[0x1E69E9820];
        v105 = 1107296256;
        v106 = sub_188A4A8F0;
        v107 = &block_descriptor_131_0;
        v12 = _Block_copy(&aBlock);

        [v10 _performWithoutRetargetingAnimations_];
        _Block_release(v12);
      }
    }

    v13 = swift_allocObject();
    *(v13 + 16) = 0x3FF0000000000000;
    v14 = swift_allocObject();
    *(v14 + 16) = 0x3FF0000000000000;
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    [v3 bounds];
    Width = CGRectGetWidth(v111);
    [v3 bounds];
    Height = CGRectGetHeight(v112);
    v19 = sub_188EA6D8C();
    v20 = *&v1[OBJC_IVAR____UIFlexInteraction_animationContext];
    os_unfair_lock_lock((v20 + 48));
    v21 = *(v20 + 33);
    os_unfair_lock_unlock((v20 + 48));
    v97 = v21;
    if (v21 != 1 || Width <= 0.0 || Height <= 0.0)
    {
      goto LABEL_40;
    }

    v22 = 1.0;
    v23 = 0.0;
    if (([v1 preferredFlexSources] & 1) == 0)
    {
      v24 = 0.0;
      v25 = 1.0;
      goto LABEL_32;
    }

    if (Width > Height)
    {
      v26 = Width;
    }

    else
    {
      v26 = Height;
    }

    v98 = v19;
    v27 = *&v19[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_liftScalePoints];
    type metadata accessor for _UIFlexInteractionSettingsDomain();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v101.receiver = ObjCClassFromMetadata;
    v101.super_class = &OBJC_METACLASS____TtC5UIKit32_UIFlexInteractionSettingsDomain;
    v29 = objc_msgSendSuper2(&v101, sel_rootSettings);
    if (v29)
    {
      v30 = v29;
      type metadata accessor for _UIFlexInteractionSettings();
      v31 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_liftEnabled);

      if (v31 == 1)
      {
        v22 = (v26 + v27) / v26;
        *(v13 + 16) = v22;
        *(v14 + 16) = v22;
      }

      v100.receiver = ObjCClassFromMetadata;
      v100.super_class = &OBJC_METACLASS____TtC5UIKit32_UIFlexInteractionSettingsDomain;
      v32 = objc_msgSendSuper2(&v100, sel_rootSettings);
      if (v32)
      {
        v33 = v32;
        v34 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_flexEnabled);

        if (v34 == 1)
        {
          v19 = v98;
          v35 = *&v98[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleDistanceThreshold];
          [v1 translation];
          if (v36 == 0.0)
          {
            v24 = 0.0;
            v25 = v22;
          }

          else
          {
            [v1 translation];
            v38 = v37;
            [v1 internalTranslation];
            v40 = fabs(v39);
            v41 = v40 / (v35 * 4.0) + (fabs(v38) - v40) / v35;
            v42 = v22 - v41;
            *(v14 + 16) = v22 - v41;
            v25 = v22 + v41;
            *(v13 + 16) = v22 + v41;
            [v1 translation];
            v43.i64[0] = 1.0;
            v44.f64[0] = NAN;
            v44.f64[1] = NAN;
            v24 = Width * (v41 * *vbslq_s8(vnegq_f64(v44), v43, v45).i64) + 0.0;
            *(v15 + 16) = v24;
            v22 = v42;
          }

          [v1 translation];
          if (v46 != 0.0)
          {
            [v1 translation];
            v48 = v47;
            [v1 internalTranslation];
            v50 = fabs(v49);
            v51 = v50 / (v35 * 4.0) + (fabs(v48) - v50) / v35;
            v25 = v25 - v51;
            *(v13 + 16) = v25;
            v22 = v22 + v51;
            *(v14 + 16) = v22;
            [v1 translation];
            v52.i64[0] = 1.0;
            v53.f64[0] = NAN;
            v53.f64[1] = NAN;
            v23 = Height * (v51 * *vbslq_s8(vnegq_f64(v53), v52, v54).i64) + 0.0;
            *(v16 + 16) = v23;
          }
        }

        else
        {
          v24 = 0.0;
          v25 = v22;
          v19 = v98;
        }

LABEL_32:
        if (([v1 preferredFlexSources] & 2) != 0)
        {
          v55 = v19;
          type metadata accessor for _UIFlexInteractionSettingsDomain();
          v103.receiver = swift_getObjCClassFromMetadata();
          v103.super_class = &OBJC_METACLASS____TtC5UIKit32_UIFlexInteractionSettingsDomain;
          v56 = objc_msgSendSuper2(&v103, sel_rootSettings);
          if (v56)
          {
            v57 = v56;
            type metadata accessor for _UIFlexInteractionSettings();
            v58 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_flexEnabled);

            v59 = v58 == 1;
            v19 = v55;
            if (v59)
            {
              v96 = v24;
              v99 = v23;
              v60 = [v1 velocityIntegrator];
              [v60 acceleration];
              v62 = v61;
              v64 = v63;

              v65 = *&v55[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementNormalizationFactor];
              v66 = v62 / v65;
              v67 = v64 / v65;
              sub_188EA7FD4(1);
              v69 = v68;
              v71 = v70;
              sub_188EA7FD4(2);
              v73 = v72;
              v75 = v74;
              if (v66 != 0.0)
              {
                aBlock = _UILerp_0(v66, v71);
                sub_1891F05D0(v69, v71);
                v76 = aBlock;
                v77 = v25 + aBlock + -1.0;
                *(v13 + 16) = v77;
                v95 = v75;
                v78 = v73;
                v79 = v77;
                v80 = v67;
                v81 = v71;
                v82 = v69;
                v83 = (1.0 - v76) * 0.2;
                [v3 bounds];
                v84 = v83 * CGRectGetWidth(v113);
                v69 = v82;
                v71 = v81;
                v67 = v80;
                v25 = v79;
                v73 = v78;
                v75 = v95;
                *(v15 + 16) = v96 + v84;
                v102 = _UILerp_0(v66, v73);
                sub_1891F05D0(v73, v95);
                v22 = v22 + v102 + -1.0;
                *(v14 + 16) = v22;
              }

              if (v67 != 0.0)
              {
                aBlock = _UILerp_0(v67, v75);
                sub_1891F05D0(v73, v75);
                v85 = aBlock;
                *(v14 + 16) = v22 + aBlock + -1.0;
                v86 = (1.0 - v85) * 0.2;
                [v3 bounds];
                *(v16 + 16) = v99 + v86 * CGRectGetHeight(v114);
                v102 = _UILerp_0(v67, v69);
                sub_1891F05D0(v69, v71);
                *(v13 + 16) = v25 + v102 + -1.0;
              }
            }

            goto LABEL_40;
          }

LABEL_45:
          __break(1u);
          return;
        }

LABEL_40:
        v87 = swift_allocObject();
        swift_unknownObjectUnownedInit();
        v88 = swift_allocObject();
        v88[2] = v87;
        v88[3] = v13;
        v88[4] = v14;
        v88[5] = v15;
        v88[6] = v16;
        v89 = objc_opt_self();

        if ([v89 areAnimationsEnabled])
        {
          v90 = *&v19[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring];
          v108 = sub_188EA9998;
          v109 = v88;
          aBlock = MEMORY[0x1E69E9820];
          v105 = 1107296256;
          v106 = sub_188A4A8F0;
          v107 = &block_descriptor_127;
          v91 = _Block_copy(&aBlock);
          v92 = v90;

          [v89 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v91);
        }

        else
        {
          v108 = sub_188EA9998;
          v109 = v88;
          aBlock = MEMORY[0x1E69E9820];
          v105 = 1107296256;
          v106 = sub_188A4A8F0;
          v107 = &block_descriptor_124;
          v93 = v19;
          v94 = _Block_copy(&aBlock);

          [v89 _performWithoutRetargetingAnimations_];

          _Block_release(v94);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_45;
  }
}

void sub_188EA7FD4(uint64_t a1)
{
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = sub_188EA6D8C();
    [v4 bounds];
    if (a1 == 2)
    {
      Height = CGRectGetHeight(*&v6);
    }

    else
    {
      Height = CGRectGetWidth(*&v6);
    }

    v11 = Height;

    v12 = *&v5[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementScalePts];
    if (*&v5[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMinScale] > (v11 - v12) / v11)
    {
      v13 = *&v5[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMinScale];
    }

    else
    {
      v13 = (v11 - v12) / v11;
    }

    v14 = *&v5[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMaxScale];

    v15 = (v11 + v12) / v11;
    if (v15 >= v14)
    {
      v15 = v14;
    }

    if (v13 > v15)
    {
      __break(1u);
    }
  }
}

uint64_t sub_188EA80D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 + 16;
  v7 = a3 + 16;
  v8 = a4 + 16;
  v9 = a5 + 16;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  *(v10 + 48) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_188EA9BCC;
  *(v11 + 24) = v10;
  v14[4] = sub_188E3FE50;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_188A4A968;
  v14[3] = &block_descriptor_141;
  v12 = _Block_copy(v14);

  UIFI_HFR(v12);
  _Block_release(v12);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_188EA827C()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v92 = v2;
    v90 = [v2 window];
    if (v90)
    {
      v3 = [v0 scaleX];
      [v3 value];
      v5 = v4;

      v6 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
      if (v5 == 0.0)
      {
        v7 = [v0 scaleY];
        [v7 value];
        v9 = v8;

        if (v9 == 0.0)
        {
          v10 = objc_opt_self();
          v11 = swift_allocObject();
          swift_unknownObjectUnownedInit();
          v100 = sub_188EA9868;
          v101 = v11;
          aBlock = MEMORY[0x1E69E9820];
          v97 = 1107296256;
          v98 = sub_188A4A8F0;
          v99 = &block_descriptor_103_0;
          v12 = _Block_copy(&aBlock);

          [v10 _performWithoutRetargetingAnimations_];
          _Block_release(v12);
        }
      }

      v13 = swift_allocObject();
      *(v13 + 16) = 0x3FF0000000000000;
      v87 = (v13 + 16);
      v14 = swift_allocObject();
      *(v14 + 16) = 0x3FF0000000000000;
      v86 = (v14 + 16);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      [v92 bounds];
      Width = CGRectGetWidth(v103);
      [v92 bounds];
      Height = CGRectGetHeight(v104);
      v91 = sub_188EA6D8C();
      v19 = *&v1[OBJC_IVAR____UIFlexInteraction_animationContext];
      os_unfair_lock_lock((v19 + 48));
      v20 = *(v19 + 33);
      os_unfair_lock_unlock((v19 + 48));
      v89 = v20;
      if (v20 != 1 || Width <= 0.0 || Height <= 0.0)
      {
        goto LABEL_36;
      }

      v21 = 1.0;
      v22 = 0.0;
      if ([v1 preferredFlexSources])
      {
        v25 = v16;
        if (Width > Height)
        {
          v26 = Width;
        }

        else
        {
          v26 = Height;
        }

        v27 = *&v91[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_liftScalePoints];
        type metadata accessor for _UIFlexInteractionSettingsDomain();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v94.receiver = ObjCClassFromMetadata;
        v94.super_class = &OBJC_METACLASS____TtC5UIKit32_UIFlexInteractionSettingsDomain;
        v29 = objc_msgSendSuper2(&v94, sel_rootSettings);
        if (!v29)
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          return;
        }

        v30 = v29;
        type metadata accessor for _UIFlexInteractionSettings();
        v31 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_liftEnabled);

        v24 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
        if (v31 == 1)
        {
          v32 = [v1 panGesture];
          v33 = [v32 isCurrentlyActive];

          v34 = &selRef_resetInputModeInMainThread;
          if (v33)
          {
            v21 = (v26 + v27) / v26;
            *v87 = v21;
            *v86 = v21;
          }
        }

        else
        {
          v34 = &selRef_resetInputModeInMainThread;
        }

        v93.receiver = ObjCClassFromMetadata;
        v93.super_class = &OBJC_METACLASS____TtC5UIKit32_UIFlexInteractionSettingsDomain;
        v35 = objc_msgSendSuper2(&v93, v34[392]);
        if (!v35)
        {
          goto LABEL_40;
        }

        v36 = v35;
        v37 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_flexEnabled);

        v16 = v25;
        if (v37 == 1)
        {
          v38 = *&v91[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleDistanceThreshold];
          [v1 translation];
          v6 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
          if (v39 == 0.0)
          {
            v23 = v21;
          }

          else
          {
            [v1 translation];
            v41 = v40;
            [v1 internalTranslation];
            v42 = fabs(v41);
            v44 = fabs(v43);
            v45 = v42 - v44;
            [v92 bounds];
            v46 = (v45 + v44 / CGRectGetWidth(v105) * 40.0) / v38;
            *v86 = v21 - v46;
            v23 = v21 + v46;
            *v87 = v21 + v46;
            [v1 translation];
            v47.i64[0] = 1.0;
            v48.f64[0] = NAN;
            v48.f64[1] = NAN;
            *(v15 + 16) = Width * (v46 * *vbslq_s8(vnegq_f64(v48), v47, v49).i64) + 0.0;
            v21 = v21 - v46;
          }

          [v1 translation];
          if (v50 != 0.0)
          {
            [v1 translation];
            v52 = v51;
            [v1 internalTranslation];
            v53 = fabs(v52);
            v55 = fabs(v54);
            v56 = v53 - v55;
            [v92 bounds];
            v57 = (v56 + v55 / CGRectGetHeight(v106) * 40.0) / v38;
            v23 = v23 - v57;
            *v87 = v23;
            v21 = v21 + v57;
            *v86 = v21;
            [v1 translation];
            v58.i64[0] = 1.0;
            v59.f64[0] = NAN;
            v59.f64[1] = NAN;
            v22 = Height * (v57 * *vbslq_s8(vnegq_f64(v59), v58, v60).i64) + 0.0;
            *(v16 + 16) = v22;
          }
        }

        else
        {
          v23 = v21;
          v6 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
        }
      }

      else
      {
        v23 = 1.0;
        v24 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
      }

      type metadata accessor for _UIFlexInteractionSettingsDomain();
      v95.receiver = swift_getObjCClassFromMetadata();
      v95.super_class = &OBJC_METACLASS____TtC5UIKit32_UIFlexInteractionSettingsDomain;
      v61 = objc_msgSendSuper2(&v95, sel_rootSettings);
      if (v61)
      {
        v62 = v61;
        type metadata accessor for _UIFlexInteractionSettings();
        v63 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_flexEnabled);

        if (v63 == 1)
        {
          v64 = [v1 translationY];
          [v64 velocity];
          v66 = v65;

          [v92 v24[143]];
          [v92 convertPoint:v90 toCoordinateSpace:{UIRectGetCenter(v67, v68, v69)}];
          v71 = v70;
          [v90 v24[143]];
          v72 = v22;
          if (CGRectGetMidY(v107) > v71)
          {
            v73 = 1.0;
          }

          else
          {
            v73 = -1.0;
          }

          v74 = v66 * v73 / *&v91[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_interactionPulseNormalizationFactor];
          v75 = (Width - *&v91[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_interactionPulseScalePtsX]) / Width;
          v76 = (Height + *&v91[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_interactionPulseScalePtsY]) / Height;
          v77 = _UILerp_0(v74, v75);
          v78 = _UILerp_0(v74, v76);
          *v87 = v77 * v23;
          *v86 = v78 * v21;
          *(v16 + 16) = v72 - v73 * (Height * (1.0 - v78) * *&v91[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_interactionPulseDriftRatio]);
          sub_1891F05D0(0.9, 1.1);
          sub_1891F05D0(0.9, 1.1);
        }

LABEL_36:
        v88 = objc_opt_self();
        v79 = *&v91[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring];
        v80 = swift_allocObject();
        swift_unknownObjectUnownedInit();
        v81 = swift_allocObject();
        v81[2] = v80;
        v81[3] = v13;
        v81[4] = v14;
        v81[5] = v15;
        v81[6] = v16;
        v100 = sub_188EA9850;
        v101 = v81;
        aBlock = MEMORY[0x1E69E9820];
        v97 = v6[308];
        v82 = v97;
        v98 = sub_188A4A8F0;
        v99 = &block_descriptor_96;
        v83 = _Block_copy(&aBlock);
        v84 = v79;

        v100 = signpost_c2_entryLock_start;
        v101 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v97 = v82;
        v98 = sub_188C3DD6C;
        v99 = &block_descriptor_99;
        v85 = _Block_copy(&aBlock);
        [v88 _animateUsingSpringBehavior_tracking_animations_completion_];
        _Block_release(v85);
        _Block_release(v83);

        return;
      }

      __break(1u);
      goto LABEL_39;
    }
  }
}

void sub_188EA8C48(double a1, uint64_t a2, SEL *a3, SEL *a4, SEL *a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = [Strong *a3];

  [v10 setValue_];
  v11 = swift_unknownObjectUnownedLoadStrong();
  v12 = [v11 *a4];

  [v12 *a5];
}

uint64_t sub_188EA8D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 + 16;
  v7 = a3 + 16;
  v8 = a4 + 16;
  v9 = a5 + 16;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  *(v10 + 48) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_188EA98A0;
  *(v11 + 24) = v10;
  v14[4] = sub_188E3FE50;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_188A4A968;
  v14[3] = &block_descriptor_113;
  v12 = _Block_copy(v14);

  UIFI_HFR(v12);
  _Block_release(v12);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_188EA8E80(uint64_t a1, double *a2, double *a3, double *a4, double *a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = [Strong scaleX];

  swift_beginAccess();
  [v10 setValue_];

  v11 = swift_unknownObjectUnownedLoadStrong();
  v12 = [v11 scaleY];

  swift_beginAccess();
  [v12 setValue_];

  v13 = swift_unknownObjectUnownedLoadStrong();
  v14 = [v13 driftX];

  swift_beginAccess();
  [v14 setValue_];

  v15 = swift_unknownObjectUnownedLoadStrong();
  v16 = [v15 driftY];

  swift_beginAccess();
  [v16 setValue_];
}

id sub_188EA905C(uint64_t a1, uint64_t a2)
{
  [*(a1 + OBJC_IVAR____UIFlexInteractionGlowContainerView_bigGlow) setAlpha_];
  result = *(a1 + OBJC_IVAR____UIFlexInteractionGlowContainerView_littleGlow);
  if (result)
  {
    v5 = *(a2 + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowOpacity);

    return [result setAlpha_];
  }

  return result;
}

id sub_188EA910C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [a2 removeFromSuperview];
  }

  v4 = *(Strong + OBJC_IVAR____UIFlexInteraction_animationContext);
  v5 = Strong;

  os_unfair_lock_lock((v4 + 48));
  LOBYTE(v5) = *(v4 + 33);
  os_unfair_lock_unlock((v4 + 48));

  if ((v5 & 1) == 0)
  {
    return [a2 removeFromSuperview];
  }

  return result;
}

id sub_188EA91AC(void *a1)
{
  [a1 setAlpha_];
  CGAffineTransformMakeScale(&v3, 4.0, 4.0);
  return [a1 setTransform_];
}

id sub_188EA9218(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____UIFlexInteractionGlowContainerView_littleGlow;
  result = *(a1 + OBJC_IVAR____UIFlexInteractionGlowContainerView_littleGlow);
  if (result)
  {
    result = [result setAlpha_];
    v5 = *(a1 + v3);
    if (v5)
    {
      CGAffineTransformMakeScale(&v6, 2.0, 2.0);
      return [v5 setTransform_];
    }
  }

  return result;
}

void sub_188EA92B4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  if (!*a1)
  {
    *a1 = a2;
    if ((v4 & 1) == 0)
    {
      v9 = a2;
      return;
    }

    v8 = a2;
    if (!a2)
    {
      return;
    }

    v6 = v8;
LABEL_10:
    [v6 addPresentationModifier_];
    return;
  }

  [*a1 removePresentationModifier_];
  v6 = a2;

  *a1 = a2;
  if (a2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    goto LABEL_10;
  }
}

uint64_t sub_188EA9400()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    _UIFlexInteractionEndSignpostInterval(Strong);
  }

  MEMORY[0x18CFEA6E0](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_188EA945C()
{
  sub_188EA974C(v0 + OBJC_IVAR____TtCE5UIKitCSo18_UIFlexInteraction9GlassInfo_variant);

  return swift_deallocClassInstance();
}

id _UIFlexInteractionUpdate.init()()
{
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + OBJC_IVAR____UIFlexInteractionUpdate_scale) = _Q0;
  v6 = (v0 + OBJC_IVAR____UIFlexInteractionUpdate_translation);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____UIFlexInteractionUpdate_isActive) = 1;
  v8.super_class = _UIFlexInteractionUpdate;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t _s9GlassInfoCMa()
{
  result = qword_1ED48D328;
  if (!qword_1ED48D328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188EA9638()
{
  result = type metadata accessor for _Glass._GlassVariant(319);
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

uint64_t sub_188EA974C(uint64_t a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_188EA9808()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];

  return [v1 complete];
}

void UIFI_HFR(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __UIFI_HFR_block_invoke;
  v3[3] = &unk_1E70F0F78;
  v4 = a1;
  v1 = a1;
  [UIView _modifyAnimationsByDecomposingGeometricTypes:1 animations:v3];
  v2 = v4;
}

uint64_t objectdestroy_92Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_188EA9A38(void **a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = v3;

  *a1 = v3;
}

uint64_t sub_188EA9C18()
{
  v0 = sub_18A4A4378();
  __swift_allocate_value_buffer(v0, qword_1EA935AD0);
  __swift_project_value_buffer(v0, qword_1EA935AD0);
  return sub_18A4A4368();
}

void sub_188EA9CA0(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 hostScene];
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC5UIKit33_UISceneHostGeometryHostComponent_geometryDriver;
    swift_beginAccess();
    sub_188EAA3D8(&v2[v6], &v32);
    if (v33)
    {
      sub_188A5EBAC(&v32, v35);
      v7 = v37;
      __swift_project_boxed_opaque_existential_0(v35, v36);
      v8 = *(v7 + 16);
      v9 = v5;
      v8();

      __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    else
    {
      sub_188A3F5FC(&v32, &qword_1EA935AF0);
    }

    v10 = OBJC_IVAR____TtC5UIKit33_UISceneHostGeometryHostComponent_currentHandle;
    v11 = *&v2[OBJC_IVAR____TtC5UIKit33_UISceneHostGeometryHostComponent_currentHandle];
    if (v11)
    {
      *(v11 + 16) = 0;
    }

    *&v2[v10] = 0;

    sub_188EAA3D8(a1, &v32);
    if (v33)
    {
      sub_188A5EBAC(&v32, v35);
      type metadata accessor for _UISceneHostGeometryHandle();
      swift_allocObject();
      sub_188F5F630();
      v13 = v12;
      v14 = *(v12 + 152);
      *(v12 + 152) = v5;
      v15 = v5;

      v16 = v37;
      __swift_project_boxed_opaque_existential_0(v35, v36);
      v31 = a1;
      v17 = *(v16 + 8);
      v18 = v15;
      v17();
      a1 = v31;

      *&v2[v10] = v13;

      __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    else
    {

      sub_188A3F5FC(&v32, &qword_1EA935AF0);
    }
  }

  if (qword_1EA931CF8 != -1)
  {
    swift_once();
  }

  v19 = sub_18A4A4378();
  __swift_project_value_buffer(v19, qword_1EA935AD0);
  sub_188EAA3D8(a1, v35);
  v20 = v2;
  v21 = sub_18A4A4358();
  v22 = sub_18A4A7968();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    *v23 = 136315394;
    sub_188EAA3D8(v35, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935AF0);
    v26 = sub_18A4A72F8();
    v28 = v27;
    sub_188A3F5FC(v35, &qword_1EA935AF0);
    v29 = sub_1891D69C0(v26, v28, &v34);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2112;
    v30 = [v20 hostScene];
    *(v23 + 14) = v30;
    *v24 = v30;
    _os_log_impl(&dword_188A29000, v21, v22, "Using %s as geometry driver for scene %@", v23, 0x16u);
    sub_188A3F5FC(v24, &unk_1EA93B740);
    MEMORY[0x18CFEA5B0](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x18CFEA5B0](v25, -1, -1);
    MEMORY[0x18CFEA5B0](v23, -1, -1);
  }

  else
  {

    sub_188A3F5FC(v35, &qword_1EA935AF0);
  }
}

id FBScene.set(_:)(uint64_t a1)
{
  type metadata accessor for _UISceneHostGeometrySceneExtension();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for _UISceneHostGeometryHostComponent();
  result = [v1 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()];
  if (result)
  {
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      sub_188A53994(a1, v8);
      sub_188EA9CA0(v8);
      v7 = OBJC_IVAR____TtC5UIKit33_UISceneHostGeometryHostComponent_geometryDriver;
      swift_beginAccess();
      sub_188EAA368(v8, v6 + v7);
      swift_endAccess();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_188EAA368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935AF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_188EAA3D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935AF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_188EAA448(char a1)
{
  v3 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    if (qword_1EA930998 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA9309A0;
  }

  else
  {
    if (qword_1EA930D60 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA930D68;
  }

  v10 = __swift_project_value_buffer(v3, v9);
  sub_188AD8C44(v10, v5, type metadata accessor for _Glass._GlassVariant);
  _Glass.init(_:smoothness:)(v5, v8, 0.0);
  v14[3] = v6;
  v14[4] = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  sub_188AD8C44(v8, boxed_opaque_existential_0, type metadata accessor for _Glass);

  boxed_opaque_existential_0[1] = 0xD000000000000015;
  boxed_opaque_existential_0[2] = 0x800000018A68ED70;
  sub_188B7533C(v8);
  UIView._background.setter(v14);
  return [v1 setClipsToBounds_];
}

void sub_188EAA6FC(uint64_t a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    if (qword_1EA930D60 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_1EA930D68);
    sub_188AD8C44(v8, v4, type metadata accessor for _Glass._GlassVariant);
    _Glass.init(_:smoothness:)(v4, v7, 0.0);
    v11[3] = v5;
    v11[4] = &protocol witness table for _Glass;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
    sub_188AD8C44(v7, boxed_opaque_existential_0, type metadata accessor for _Glass);

    boxed_opaque_existential_0[1] = 0xD000000000000015;
    boxed_opaque_existential_0[2] = 0x800000018A68ED70;
    sub_188B7533C(v7);
    UIView._background.setter(v11);
  }
}

uint64_t UIConfigurationTextAttributesTransformer.transform.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_188EAA900(uint64_t a1, void (*a2)(void))
{
  v4 = sub_18A4A2668();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  if (qword_1ED48BE20 != -1)
  {
    swift_once();
  }

  type metadata accessor for AttributeScopes.UIKitAttributes();
  sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
  sub_18A4A70B8();
  a2();

  return sub_18A4A2688();
}

uint64_t UIButton.Configuration.updated(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [*(*v2 + 16) updatedConfigurationForButton_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t UIButton.Configuration.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) background];
  [v3 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1ED48BEA8);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a1 = result;
  return result;
}

uint64_t UIButton.Configuration.cornerStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = [*(*v1 + 16) cornerStyle];

  return sub_188EAAD34(v3, a1);
}

id sub_188EAACF0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_188BC666C();

  return [v2 setCornerStyle_];
}

uint64_t sub_188EAAD34@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result + 1) >= 6)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    type metadata accessor for __UIButtonConfigurationCornerStyle(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    v2 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v2);

    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a2 = result + 1;
  }

  return result;
}

id (*UIButton.Configuration.cornerStyle.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_188EAAD34([*(*v1 + 16) cornerStyle], (a1 + 8));
  return sub_188EAAEA0;
}

id sub_188EAAEA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_188BC666C();

  return [v2 setCornerStyle_];
}

unint64_t UIButton.Configuration.buttonSize.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = [*(*v1 + 16) buttonSize];

  return sub_188EAAF78(v3, a1);
}

id sub_188EAAF2C(char *a1)
{
  v1 = *a1;
  v2 = sub_188BC666C();
  v3 = qword_18A64F868[v1];

  return [v2 setButtonSize_];
}

unint64_t sub_188EAAF78@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    type metadata accessor for __UIButtonConfigurationSize(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    v2 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v2);

    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a2 = 0x3000102u >> (8 * result);
  }

  return result;
}

id (*UIButton.Configuration.buttonSize.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_188EAAF78([*(*v1 + 16) buttonSize], (a1 + 8));
  return sub_188EAB0F0;
}

id sub_188EAB0F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_188BC666C();
  v3 = qword_18A64F868[v1];

  return [v2 setButtonSize_];
}

id sub_188EAB1CC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_188BC666C();

  return [v2 setMacIdiomStyle_];
}

id (*UIButton.Configuration.macIdiomStyle.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_188EAD8B4([*(*v1 + 16) macIdiomStyle], type metadata accessor for __UIButtonConfigurationMacIdiomStyle, (a1 + 8));
  return sub_188EAB2A4;
}

id UIButton.Configuration.baseForegroundColor.getter()
{
  v1 = [*(*v0 + 16) baseForegroundColor];

  return v1;
}

void (*UIButton.Configuration.baseForegroundColor.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) baseForegroundColor];
  return sub_188EAB34C;
}

id UIButton.Configuration.baseBackgroundColor.getter()
{
  v1 = [*(*v0 + 16) baseBackgroundColor];

  return v1;
}

void (*UIButton.Configuration.baseBackgroundColor.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) baseBackgroundColor];
  return sub_188EAB3F4;
}

id UIButton.Configuration.image.getter()
{
  v1 = [*(*v0 + 16) image];

  return v1;
}

void (*UIButton.Configuration.image.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) image];
  return sub_188EAB49C;
}

void *UIButton.Configuration.imageColorTransformer.getter@<X0>(id (**a1)()@<X8>)
{
  result = [*(*v1 + 16) imageColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188EB0298;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

void *sub_188EAB520@<X0>(uint64_t a1@<X0>, id (**a2)()@<X8>)
{
  result = [*(*a1 + 16) imageColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188EB0968;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

id sub_188EAB598(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);

  return v2;
}

void (*UIButton.Configuration.imageColorTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) imageColorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188EB0968;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188EAB6A0;
}

id UIButton.Configuration.preferredSymbolConfigurationForImage.getter()
{
  v1 = [*(*v0 + 16) preferredSymbolConfigurationForImage];

  return v1;
}

void (*UIButton.Configuration.preferredSymbolConfigurationForImage.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) preferredSymbolConfigurationForImage];
  return sub_188EAB758;
}

id (*UIButton.Configuration.showsActivityIndicator.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) showsActivityIndicator];
  return sub_188EAB7F0;
}

void *UIButton.Configuration.activityIndicatorColorTransformer.getter@<X0>(id (**a1)()@<X8>)
{
  result = [*(*v1 + 16) activityIndicatorColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188EB0968;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

void *sub_188EAB890@<X0>(uint64_t a1@<X0>, id (**a2)()@<X8>)
{
  result = [*(*a1 + 16) activityIndicatorColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188EB0968;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void (*UIButton.Configuration.activityIndicatorColorTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) activityIndicatorColorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188EB0968;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188EAB9E4;
}

void (*UIButton.Configuration.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [*(*v1 + 16) title];
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
  return sub_188EABA98;
}

void (*UIButton.Configuration.attributedTitle.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  if ([*(*v1 + 16) attributedTitle])
  {
    if (qword_1ED48BE20 != -1)
    {
      swift_once();
    }

    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
    sub_18A4A25C8();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_18A4A2588();
  (*(*(v7 - 8) + 56))(v5, v6, 1, v7);
  return sub_188EABC74;
}

void *UIButton.Configuration.titleTextAttributesTransformer.getter@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  result = [*(*v1 + 16) titleTextAttributesTransformer];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_188EB02E0;
    result[3] = v5;
    v6 = sub_188EB02E8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void *sub_188EABD48@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t)@<X8>)
{
  result = [*(*a1 + 16) titleTextAttributesTransformer];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_188EB09FC;
    result[3] = v5;
    v6 = sub_188EB096C;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_188EABDF4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Key(0);
  sub_188BEB2A0(&qword_1ED48E360, type metadata accessor for Key);
  v3 = sub_18A4A7088();
  v4 = (*(a2 + 16))(a2, v3);

  v5 = sub_18A4A70A8();
  return v5;
}

void (*UIButton.Configuration.titleTextAttributesTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) titleTextAttributesTransformer];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v5 = swift_allocObject();
    v5[2] = sub_188EB09FC;
    v5[3] = v7;
    v8 = sub_188EB096C;
  }

  else
  {
    v8 = 0;
  }

  *(v4 + 48) = v8;
  *(v4 + 56) = v5;
  return sub_188EABFC4;
}

void sub_188EABFC4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    if (v3)
    {
      v4 = v2[7];
      sub_188A52E38(*(*a1 + 48));
      v5 = sub_188BC666C();
      v6 = swift_allocObject();
      *(v6 + 16) = v3;
      *(v6 + 24) = v4;
      v2[4] = sub_188EB09F8;
      v2[5] = v6;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_188CC2890;
      v2[3] = &block_descriptor_48_0;
      v7 = _Block_copy(v2);
      sub_188A52E38(v3);
      v8 = v5;

      [v8 setTitleTextAttributesTransformer_];
      _Block_release(v7);

      sub_188A55B8C(v3);
    }

    else
    {
      [sub_188BC666C() setTitleTextAttributesTransformer_];
    }

    v14 = v2[6];
    goto LABEL_8;
  }

  if (v3)
  {
    v9 = v2[7];
    v10 = sub_188BC666C();
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v9;
    v2[4] = sub_188EB09F8;
    v2[5] = v11;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_188CC2890;
    v2[3] = &block_descriptor_55;
    v12 = _Block_copy(v2);
    v13 = v10;
    sub_188A52E38(v3);

    [v13 setTitleTextAttributesTransformer_];
    _Block_release(v12);

    v14 = v3;
LABEL_8:
    sub_188A55B8C(v14);
    goto LABEL_9;
  }

  [sub_188BC666C() setTitleTextAttributesTransformer_];
LABEL_9:

  free(v2);
}

uint64_t sub_188EAC210(SEL *a1)
{
  v2 = [*(*v1 + 16) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_18A4A7288();

  return v4;
}

void sub_188EAC27C(uint64_t a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*(*a1 + 16) *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_18A4A7288();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_188EAC2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *(a1 + 8);
  v7 = sub_188BC666C();
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

void (*UIButton.Configuration.subtitle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [*(*v1 + 16) subtitle];
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
  return sub_188EAC3FC;
}

void sub_188EAC408(uint64_t a1, char a2, SEL *a3)
{
  v4 = *(a1 + 8);
  if (a2)
  {

    v5 = sub_188BC666C();
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
    v8 = sub_188BC666C();
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

uint64_t sub_188EAC500@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  if ([*(*v2 + 16) *a1])
  {
    if (qword_1ED48BE20 != -1)
    {
      swift_once();
    }

    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
    sub_18A4A25C8();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_18A4A2588();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t sub_188EAC644@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  if ([*(*a1 + 16) *a2])
  {
    if (qword_1ED48BE20 != -1)
    {
      swift_once();
    }

    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
    sub_18A4A25C8();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_18A4A2588();
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, v4, 1, v5);
}

void (*UIButton.Configuration.attributedSubtitle.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  if ([*(*v1 + 16) attributedSubtitle])
  {
    if (qword_1ED48BE20 != -1)
    {
      swift_once();
    }

    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
    sub_18A4A25C8();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_18A4A2588();
  (*(*(v7 - 8) + 56))(v5, v6, 1, v7);
  return sub_188EAC954;
}

void *UIButton.Configuration.subtitleTextAttributesTransformer.getter@<X0>(uint64_t (**a1)(uint64_t)@<X8>)
{
  result = [*(*v1 + 16) subtitleTextAttributesTransformer];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_188EB09FC;
    result[3] = v5;
    v6 = sub_188EB096C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void *sub_188EACA28@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t)@<X8>)
{
  result = [*(*a1 + 16) subtitleTextAttributesTransformer];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_188EB09FC;
    result[3] = v5;
    v6 = sub_188EB096C;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

void (*UIButton.Configuration.subtitleTextAttributesTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) subtitleTextAttributesTransformer];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v5 = swift_allocObject();
    v5[2] = sub_188EB09FC;
    v5[3] = v7;
    v8 = sub_188EB096C;
  }

  else
  {
    v8 = 0;
  }

  *(v4 + 48) = v8;
  *(v4 + 56) = v5;
  return sub_188EACBF8;
}

void sub_188EACBF8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    if (v3)
    {
      v4 = v2[7];
      sub_188A52E38(*(*a1 + 48));
      v5 = sub_188BC666C();
      v6 = swift_allocObject();
      *(v6 + 16) = v3;
      *(v6 + 24) = v4;
      v2[4] = sub_188EB09F8;
      v2[5] = v6;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_188CC2890;
      v2[3] = &block_descriptor_88;
      v7 = _Block_copy(v2);
      sub_188A52E38(v3);
      v8 = v5;

      [v8 setSubtitleTextAttributesTransformer_];
      _Block_release(v7);

      sub_188A55B8C(v3);
    }

    else
    {
      [sub_188BC666C() setSubtitleTextAttributesTransformer_];
    }

    v14 = v2[6];
    goto LABEL_8;
  }

  if (v3)
  {
    v9 = v2[7];
    v10 = sub_188BC666C();
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v9;
    v2[4] = sub_188EB09F8;
    v2[5] = v11;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_188CC2890;
    v2[3] = &block_descriptor_95;
    v12 = _Block_copy(v2);
    v13 = v10;
    sub_188A52E38(v3);

    [v13 setSubtitleTextAttributesTransformer_];
    _Block_release(v12);

    v14 = v3;
LABEL_8:
    sub_188A55B8C(v14);
    goto LABEL_9;
  }

  [sub_188BC666C() setSubtitleTextAttributesTransformer_];
LABEL_9:

  free(v2);
}

unint64_t sub_188EACE38@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    type metadata accessor for __UIButtonConfigurationIndicator(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    v2 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v2);

    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t (*UIButton.Configuration.indicator.modify(uint64_t a1))()
{
  *a1 = v1;
  sub_188EACE38([*(*v1 + 16) indicator], (a1 + 8));
  return sub_188EB09E8;
}

void *UIButton.Configuration.indicatorColorTransformer.getter@<X0>(id (**a1)()@<X8>)
{
  result = [*(*v1 + 16) indicatorColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188EB0968;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

void *sub_188EAD018@<X0>(uint64_t a1@<X0>, id (**a2)()@<X8>)
{
  result = [*(*a1 + 16) indicatorColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188EB0968;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void sub_188EAD090(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *a1;
  v9 = a1[1];
  sub_188A52E38(*a1);
  v10 = sub_188BC666C();
  v11 = v10;
  if (v8)
  {
    v15[4] = v8;
    v15[5] = v9;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_188BC2240;
    v15[3] = a5;
    v12 = _Block_copy(v15);
    v13 = v11;
  }

  else
  {
    v14 = v10;
    v12 = 0;
  }

  [v11 *a6];
  _Block_release(v12);
}

void (*UIButton.Configuration.indicatorColorTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) indicatorColorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188EB0968;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188EAD24C;
}

void sub_188EAD268(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    sub_188A52E38(*(*a1 + 48));
    v10 = sub_188BC666C();
    v11 = v10;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188BC2240;
      v6[3] = a5;
      v12 = _Block_copy(v6);
      v13 = v11;
    }

    else
    {
      v19 = v10;
      v12 = 0;
    }

    [v11 *a4];
    _Block_release(v12);

    sub_188A55B8C(v6[6]);
  }

  else
  {
    v15 = sub_188BC666C();
    v16 = v15;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188BC2240;
      v6[3] = a3;
      v17 = _Block_copy(v6);
      v18 = v16;
    }

    else
    {
      v20 = v15;
      v17 = 0;
    }

    [v16 *a4];
    _Block_release(v17);
  }

  free(v6);
}

id UIButton.Configuration.symbolContentTransition.getter()
{
  v1 = [*(*v0 + 16) symbolContentTransition];

  return v1;
}

void UIButton.Configuration.symbolContentTransition.setter(void *a1)
{
  v2 = *(*v1 + 16);
  [v2 setSymbolContentTransition_];
}

void (*UIButton.Configuration.symbolContentTransition.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  a1[1] = *v1;
  *a1 = [*(v2 + 16) symbolContentTransition];
  return sub_188EAD500;
}

void sub_188EAD500(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(a1 + 8) + 16);
  if (a2)
  {
    [v3 setSymbolContentTransition_];
    v4 = v2;
  }

  else
  {
    v5 = v3;
    [v5 setSymbolContentTransition_];

    v4 = v5;
  }
}

Swift::Void __swiftcall UIButton.Configuration.setDefaultContentInsets()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    [*(v2 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v3 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v4 = swift_allocObject();
    *(v4 + 16) = v5;

    *v0 = v4;
  }

  [v3 setDefaultContentInsets];
}

id (*UIButton.Configuration.imagePlacement.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) imagePlacement];
  return sub_188EAD6E0;
}

id (*UIButton.Configuration.imagePadding.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) imagePadding];
  *a1 = v3;
  return sub_188EAD770;
}

id (*UIButton.Configuration.titlePadding.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) titlePadding];
  *a1 = v3;
  return sub_188EAD810;
}

id sub_188EAD864(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_188BC666C();

  return [v2 setTitleAlignment_];
}

unint64_t sub_188EAD8B4@<X0>(unint64_t result@<X0>, void (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  if (result >= 4)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    a2(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    v4 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v4);

    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a3 = result;
  }

  return result;
}

id (*UIButton.Configuration.titleAlignment.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_188EAD8B4([*(*v1 + 16) titleAlignment], type metadata accessor for __UIButtonConfigurationTitleAlignment, (a1 + 8));
  return sub_188EADA4C;
}

id sub_188EADA8C(char a1, SEL *a2)
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
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a2];
}

id (*UIButton.Configuration.automaticallyUpdateForSelection.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) automaticallyUpdateForSelection];
  return sub_188EADBDC;
}

uint64_t UIButton.Configuration.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t _s5UIKit26UIListContentConfigurationV14TextPropertiesV9hashValueSivg_0()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t sub_188EADCEC()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

void *sub_188EADD30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 configuration];
  if (result)
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    result = swift_allocObject();
    result[2] = v4;
  }

  *a2 = result;
  return result;
}

void (*UIButton.configuration.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 configuration];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v3 = swift_allocObject();
    v3[2] = v4;
  }

  *a1 = v3;
  return sub_188EADE20;
}

void sub_188EADE20(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (v2)
    {
      v3 = *(v2 + 16);
    }

    else
    {
      v3 = 0;
    }

    [a1[1] setConfiguration_];
  }

  else
  {
    v4 = a1[1];
    if (v2)
    {
      v6 = *(v2 + 16);
      [v4 setConfiguration_];
    }

    else
    {
      v5 = a1[1];

      [v5 setConfiguration_];
    }
  }
}

id (*UIButton.Configuration.titleLineBreakMode.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) titleLineBreakMode];
  return sub_188EADF70;
}

id (*UIButton.Configuration.subtitleLineBreakMode.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) subtitleLineBreakMode];
  return sub_188EAE000;
}

id (*UIButton.Configuration.imageReservation.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) imageReservation];
  *a1 = v3;
  return sub_188EAE09C;
}

id sub_188EAE0C8@<X0>(_BYTE *a1@<X8>)
{
  result = [*(*v1 + 16) indicator];
  if (result >= 3)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    type metadata accessor for __UIButtonConfigurationIndicator(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    v4 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v4);

    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id (*UIButton.Configuration._dci_indicator.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_188EACE38([*(*v1 + 16) indicator], (a1 + 8));
  return sub_188EAE254;
}

id sub_188EAE260(uint64_t a1, uint64_t a2, const char **a3)
{
  v4 = *(a1 + 8);
  v5 = sub_188BC666C();
  v6 = *a3;

  return [v5 v6];
}

Swift::Void __swiftcall UIButton.Configuration._setUsePulldownIndicator()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    [*(v2 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v3 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v4 = swift_allocObject();
    *(v4 + 16) = v5;

    *v0 = v4;
  }

  [v3 setIndicator_];
}

void *sub_188EAE418@<X0>(SEL *a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() *a1];
  if (result)
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    result = swift_allocObject();
    result[2] = v4;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id UIButton.Configuration._symbolContentTransition.getter@<X0>(uint64_t a1@<X8>)
{
  result = [*(*v1 + 16) symbolContentTransition];
  if (result)
  {
    v4 = result;
    v5 = [result contentTransition];
    sub_18A4A7BB8();

    if (v7)
    {

      return sub_188A5EBAC(&v6, a1);
    }

    else
    {
      result = sub_188A3F5FC(&v6, &qword_1EA935C48);
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t UIButton.Configuration._symbolContentTransition.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_18A4A6DC8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  sub_188A3F29C(a1, &v23, &qword_1EA935C48);
  if (v24)
  {
    sub_188A5EBAC(&v23, v25);
    v12 = [sub_188BC666C() symbolContentTransition];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 options];
      sub_18A4A6D98();

      (*(v6 + 56))(v4, 0, 1, v5);
      (*(v6 + 32))(v11, v4, v5);
    }

    else
    {
      (*(v6 + 56))(v4, 1, 1, v5);
      sub_18A4A6DB8();
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        sub_188A3F5FC(v4, &qword_1EA935C50);
      }
    }

    v16 = sub_188BC666C();
    sub_188A53994(v25, &v23);
    (*(v6 + 16))(v8, v11, v5);
    __swift_project_boxed_opaque_existential_0(&v23, v24);
    v17 = v16;
    result = sub_18A4A6D68();
    if (result)
    {
      v18 = result;
      v19 = objc_opt_self();
      v20 = sub_18A4A6DA8();
      v21 = [v19 transitionWithContentTransition:v18 options:v20];

      v22 = *(v6 + 8);
      v22(v8, v5);
      __swift_destroy_boxed_opaque_existential_0Tm(&v23);
      [v17 setSymbolContentTransition_];

      sub_188A3F5FC(a1, &qword_1EA935C48);
      v22(v11, v5);
      return __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_188A3F5FC(&v23, &qword_1EA935C48);
    [sub_188BC666C() setSymbolContentTransition_];
    return sub_188A3F5FC(a1, &qword_1EA935C48);
  }

  return result;
}

void (*UIButton.Configuration._symbolContentTransition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = [*(*v1 + 16) symbolContentTransition];
  if (!v5)
  {
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    return sub_188EAEA24;
  }

  v6 = v5;
  v7 = [v5 contentTransition];
  sub_18A4A7BB8();

  if (*(v4 + 64))
  {

    sub_188A5EBAC((v4 + 40), v4);
    return sub_188EAEA24;
  }

  result = sub_188A3F5FC(v4 + 40, &qword_1EA935C48);
  __break(1u);
  return result;
}

void sub_188EAEA24(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_188A3F29C(*a1, v2 + 40, &qword_1EA935C48);
    UIButton.Configuration._symbolContentTransition.setter(v2 + 40);
    sub_188A3F5FC(v2, &qword_1EA935C48);
  }

  else
  {
    UIButton.Configuration._symbolContentTransition.setter(*a1);
  }

  free(v2);
}

uint64_t UIButton.Configuration._symbolContentTransitionOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) symbolContentTransition];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 options];
    sub_18A4A6D98();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_18A4A6DC8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

uint64_t sub_188EAEB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(*a1 + 16) symbolContentTransition];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 options];
    sub_18A4A6D98();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_18A4A6DC8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_188EAEC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_188A3F29C(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t UIButton.Configuration._symbolContentTransitionOptions.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_18A4A6DC8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    [*(v11 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v12 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;

    *v1 = v13;
  }

  v14 = [v12 symbolContentTransition];
  if (!v14)
  {
    return sub_188A3F5FC(a1, &qword_1EA935C50);
  }

  v15 = v14;
  v16 = sub_188BC666C();
  v17 = [v15 contentTransition];
  sub_18A4A7BB8();

  if (v25)
  {
    sub_188A5EBAC(&v24, v26);
    sub_188A3F29C(a1, v5, &qword_1EA935C50);
    v18 = *(v7 + 48);
    if (v18(v5, 1, v6) == 1)
    {
      sub_18A4A6DB8();
      if (v18(v5, 1, v6) != 1)
      {
        sub_188A3F5FC(v5, &qword_1EA935C50);
      }
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
    }

    __swift_project_boxed_opaque_existential_0(v26, v26[3]);
    result = sub_18A4A6D68();
    if (result)
    {
      v20 = result;
      v21 = objc_opt_self();
      v22 = sub_18A4A6DA8();
      v23 = [v21 transitionWithContentTransition:v20 options:v22];

      (*(v7 + 8))(v9, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      [v16 setSymbolContentTransition_];

      return sub_188A3F5FC(a1, &qword_1EA935C50);
    }
  }

  else
  {
    result = sub_188A3F5FC(&v24, &qword_1EA935C48);
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*UIButton.Configuration._symbolContentTransitionOptions.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C50) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = [*(*v1 + 16) symbolContentTransition];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 options];
    sub_18A4A6D98();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_18A4A6DC8();
  (*(*(v10 - 8) + 56))(v5, v9, 1, v10);
  return sub_188EAF1D0;
}

void sub_188EAF1F8(uint64_t a1, char a2, void (*a3)(void *), uint64_t *a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2)
  {
    sub_188A3F29C(v6, v5, a4);
    a3(v5);
    sub_188A3F5FC(v6, a4);
  }

  else
  {
    a3(v6);
  }

  free(v6);

  free(v5);
}

id UIButton.Configuration._attributedTitle.getter()
{
  v1 = [*(*v0 + 16) attributedTitle];

  return v1;
}

void UIButton.Configuration._attributedTitle.setter(void *a1)
{
  sub_188BC6788(a1, &selRef_setAttributedTitle_);
}

void (*UIButton.Configuration._attributedTitle.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) attributedTitle];
  return sub_188EAF370;
}

uint64_t (*UIButton.Configuration._titleTextAttributesTransformer.getter())(uint64_t)
{
  result = [*(*v0 + 16) titleTextAttributesTransformer];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_188EB09FC;
  }

  return result;
}

void *sub_188EAF3F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) titleTextAttributesTransformer];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_188EB09FC;
    result[3] = v5;
    v6 = sub_188EB0970;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_188EAF4A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188EB09EC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1);
  sub_188EB02F0(v4, v3, &block_descriptor_322, &selRef_setTitleTextAttributesTransformer_);

  return sub_188A55B8C(v4);
}

uint64_t UIButton.Configuration._titleTextAttributesTransformer.setter(uint64_t a1, uint64_t a2)
{
  sub_188EB02F0(a1, a2, &block_descriptor_322, &selRef_setTitleTextAttributesTransformer_);

  return sub_188A55B8C(a1);
}

void (*UIButton.Configuration._titleTextAttributesTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) titleTextAttributesTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188EB09FC;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188EAF674;
}

id UIButton.Configuration._attributedSubtitle.getter()
{
  v1 = [*(*v0 + 16) attributedSubtitle];

  return v1;
}

void UIButton.Configuration._attributedSubtitle.setter(void *a1)
{
  sub_188BC6788(a1, &selRef_setAttributedSubtitle_);
}

void (*UIButton.Configuration._attributedSubtitle.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) attributedSubtitle];
  return sub_188EAF76C;
}

void sub_188EAF778(uint64_t *a1, char a2, SEL *a3)
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    sub_188BC6788(v6, a3);

    v5 = v4;
  }

  else
  {
    sub_188BC6788(*a1, a3);
    v5 = v6;
  }
}

uint64_t (*UIButton.Configuration._subtitleTextAttributesTransformer.getter())(uint64_t)
{
  result = [*(*v0 + 16) subtitleTextAttributesTransformer];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_188EB09FC;
  }

  return result;
}

void *sub_188EAF870@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) subtitleTextAttributesTransformer];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_188EB09FC;
    result[3] = v5;
    v6 = sub_188EB08C4;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_188EAF91C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188EB08C0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1);
  sub_188EB02F0(v4, v3, &block_descriptor_319, &selRef_setSubtitleTextAttributesTransformer_);

  return sub_188A55B8C(v4);
}

uint64_t UIButton.Configuration._subtitleTextAttributesTransformer.setter(uint64_t a1, uint64_t a2)
{
  sub_188EB02F0(a1, a2, &block_descriptor_319, &selRef_setSubtitleTextAttributesTransformer_);

  return sub_188A55B8C(a1);
}

void (*UIButton.Configuration._subtitleTextAttributesTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) subtitleTextAttributesTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188EB09FC;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188EAFAF0;
}

void sub_188EAFB0C(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    sub_188A52E38(*(*a1 + 48));
    v10 = sub_188BC666C();
    v11 = v10;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188CC2890;
      v6[3] = a5;
      v12 = _Block_copy(v6);
      sub_188A52E38(v7);
      v13 = v11;
    }

    else
    {
      v19 = v10;
      v12 = 0;
    }

    [v11 *a4];
    _Block_release(v12);

    sub_188A55B8C(v7);
    v20 = v6[6];
  }

  else
  {
    v15 = sub_188BC666C();
    v16 = v15;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188CC2890;
      v6[3] = a3;
      v17 = _Block_copy(v6);
      v18 = v16;
      sub_188A52E38(v7);
    }

    else
    {
      v21 = v15;
      v17 = 0;
    }

    [v16 *a4];
    _Block_release(v17);

    v20 = v7;
  }

  sub_188A55B8C(v20);

  free(v6);
}

void __swiftcall UIButton.Configuration._bridgeToObjectiveC()(UIButtonConfiguration *__return_ptr retstr)
{
  [*(*v1 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA930A50);
  swift_dynamicCast();
}

uint64_t static UIButton.Configuration._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  [a1 copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA930A50);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a2 = result;
  return result;
}

uint64_t static UIButton.Configuration._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  [a1 copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA930A50);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  *a2 = v4;
  return 1;
}

void static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    [v3 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v4 = swift_allocObject();
    *(v4 + 16) = v7;

    *a2 = v4;
  }

  else
  {
    sub_18A4A80E8();

    sub_188A34624(0, &qword_1EA930A50);
    v5 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v5);

    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    v6 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v6);

    sub_18A4A8398();
    __break(1u);
  }
}

uint64_t sub_188EB0078()
{
  [*(*v0 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA930A50);
  swift_dynamicCast();
  return v2;
}

uint64_t sub_188EB0100(void *a1, uint64_t *a2)
{

  [a1 copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA930A50);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a2 = result;
  return result;
}

uint64_t sub_188EB01BC(void *a1, uint64_t *a2)
{

  [a1 copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA930A50);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  *a2 = v4;
  return 1;
}

id sub_188EB0298()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

void sub_188EB02F0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v8 = sub_188BC666C();
  v9 = v8;
  if (a1)
  {
    v13[4] = a1;
    v13[5] = a2;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_188CC2890;
    v13[3] = a3;
    v10 = _Block_copy(v13);
    v11 = v9;
    sub_188A52E38(a1);
  }

  else
  {
    v12 = v8;
    v10 = 0;
  }

  [v9 *a4];
  _Block_release(v10);
}

unint64_t sub_188EB03D4()
{
  result = qword_1EA935C58;
  if (!qword_1EA935C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935C58);
  }

  return result;
}

unint64_t sub_188EB042C()
{
  result = qword_1EA935C60;
  if (!qword_1EA935C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935C60);
  }

  return result;
}

unint64_t sub_188EB0484()
{
  result = qword_1EA935C68;
  if (!qword_1EA935C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935C68);
  }

  return result;
}

unint64_t sub_188EB04DC()
{
  result = qword_1EA935C70;
  if (!qword_1EA935C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935C70);
  }

  return result;
}

unint64_t sub_188EB0534()
{
  result = qword_1EA935C78;
  if (!qword_1EA935C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935C78);
  }

  return result;
}

unint64_t sub_188EB058C()
{
  result = qword_1EA935C80;
  if (!qword_1EA935C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935C80);
  }

  return result;
}

void *keypath_get_157Tm@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, void *(*a3)(uint64_t *__return_ptr, id)@<X4>, _BYTE *a4@<X8>)
{
  result = a3(&v6, [*(*a1 + 16) *a2]);
  *a4 = v6;
  return result;
}

unint64_t keypath_get_203Tm@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, _BYTE *a4@<X8>)
{
  result = sub_188EAD8B4([*(*a1 + 16) *a2], a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t keypath_set_182Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  sub_188A52E38(v8[0]);
  return a5(v8);
}

id keypath_set_190Tm(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_188BC666C();

  return [v2 setIndicator_];
}

id keypath_get_163Tm@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*(*a1 + 16) *a2];
  *a3 = result;
  return result;
}

uint64_t _s13ConfigurationV11CornerStyleOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13ConfigurationV11CornerStyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_188EB08C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_188EB08F8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_188EB0A00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (__currentViewAnimationState)
  {
    v12 = result;
    _s23InProcessAnimationStateCMa();
    result = swift_dynamicCastClass();
    if (result)
    {
      if (![(UIView *)v6 __swiftAnimationInfo])
      {
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v14 = v6;
        v15 = sub_188A5DF40(v14, sub_188ABE008, v13);

        [(UIView *)v14 set__swiftAnimationInfo:v15];
      }

      sub_188A6D6CC(0, v12, a2);
      v17 = v16;

      ObjectType = swift_getObjectType();
      v21 = a6;
      v22 = a5;
      v19 = swift_allocObject();
      *(v19 + 16) = a3;
      *(v19 + 24) = a4;
      v20 = *(v17 + 200);

      v20(&v22, &v21, 0, 0, sub_188EB2AC8, v19, 0, 0, ObjectType, v17);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_188EB0BCC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_18A4A6E18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18A4A6E58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_188A34624(0, &qword_1ED490540);
  v17 = sub_18A4A7A68();
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = v16;
  aBlock[4] = sub_188EB2AD0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A8F0;
  aBlock[3] = &block_descriptor_378;
  v19 = _Block_copy(aBlock);

  sub_18A4A6E38();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_188D7609C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
  sub_188BA3728();
  sub_18A4A7EB8();
  MEMORY[0x18CFE29D0](0, v15, v11, v19);
  _Block_release(v19);

  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  return 0.0;
}

uint64_t sub_188EB0F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(a2 + 184))(a1, a2, a4);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v10 + 8))(v12, v9);
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = AssociatedTypeWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v13 + 32))(boxed_opaque_existential_0, v12, AssociatedTypeWitness);
  }

  return result;
}

void sub_188EB12B8(void *a1, uint64_t a2)
{
  v3 = [a1 window];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 screen];

    if (v5)
    {
      v6 = sub_189214D38(v5, 1);
      if (v6)
      {
        v7 = v6 == a2;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      v9 = sub_18A4A7258();
      _inProcessAnimationManagerSoftAssert(v8, v9);
    }
  }
}

uint64_t sub_188EB13A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = sub_188E3FE50;
  }

  else
  {
    v9 = signpost_c2_entryLock_start;
    v8 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_188EB2CAC;
  *(v13 + 24) = v10;
  v24 = sub_188E5C7F8;
  v25 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_188A4A968;
  v23 = &block_descriptor_328;
  v18 = _Block_copy(&aBlock);
  sub_188A52E38(a1);

  sub_188A52E38(a3);

  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = 0;
  *(v14 + 32) = signpost_c2_entryLock_start;
  *(v14 + 40) = 0;
  v24 = sub_188EB2A80;
  v25 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_188A4A8F0;
  v23 = &block_descriptor_334;
  v15 = _Block_copy(&aBlock);

  v24 = sub_188E5C82C;
  v25 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_188ABD010;
  v23 = &block_descriptor_337_0;
  v16 = _Block_copy(&aBlock);

  [ObjCClassFromMetadata _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];

  _Block_release(v16);
  _Block_release(v15);
  _Block_release(v18);

  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188EB1A10(uint64_t a1, uint64_t a2)
{
  sub_188EB29EC();
  v30 = sub_18A4A6C98();
  v31 = 2;
  v32 = 2;
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v5 = sub_188A4B574;
  }

  else
  {
    v5 = signpost_c2_entryLock_start;
    v4 = 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  sub_188C3DF9C(&v30, v29);
  sub_188C3DF9C(&v30, v27);
  v7 = swift_allocObject();
  v8 = v27[3];
  *(v7 + 48) = v27[2];
  *(v7 + 64) = v8;
  *(v7 + 80) = v28[0];
  *(v7 + 89) = *(v28 + 9);
  v9 = v27[1];
  *(v7 + 16) = v27[0];
  *(v7 + 32) = v9;
  *(v7 + 112) = signpost_c2_entryLock_start;
  *(v7 + 120) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = signpost_c2_entryLock_start;
  v11[4] = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_188A6D638;
  *(v13 + 24) = v6;
  *&v24 = sub_188E5C7F8;
  *(&v24 + 1) = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_188A4A968;
  *(&v23 + 1) = &block_descriptor_92_0;
  v14 = _Block_copy(&aBlock);
  sub_188A52E38(a1);

  sub_188C3DFF8(v29, &aBlock);
  v15 = swift_allocObject();
  v16 = v25;
  *(v15 + 56) = v24;
  *(v15 + 72) = v16;
  *(v15 + 88) = v26[0];
  *(v15 + 97) = *(v26 + 9);
  v17 = v23;
  *(v15 + 24) = aBlock;
  *(v15 + 16) = v10;
  *(v15 + 40) = v17;
  *(v15 + 113) = 0;
  *(v15 + 120) = sub_188E5C7FC;
  *(v15 + 128) = v7;
  v21[4] = sub_188EB2CA0;
  v21[5] = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_188A4A8F0;
  v21[3] = &block_descriptor_99_0;
  v18 = _Block_copy(v21);

  *&v24 = sub_188E5C82C;
  *(&v24 + 1) = v11;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_188ABD010;
  *(&v23 + 1) = &block_descriptor_102;
  v19 = _Block_copy(&aBlock);

  [ObjCClassFromMetadata _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v19);
  _Block_release(v18);
  _Block_release(v14);

  sub_188C3E234(v29);
  sub_188AAFF20(&v30);

  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188EB1F6C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a1;
  v34 = a2;
  v35 = 2;
  sub_188C3DF9C(&v33, v32);
  sub_188C3DF9C(&v33, v30);
  v10 = swift_allocObject();
  v11 = v30[3];
  *(v10 + 48) = v30[2];
  *(v10 + 64) = v11;
  *(v10 + 80) = v31[0];
  *(v10 + 89) = *(v31 + 9);
  v12 = v30[1];
  *(v10 + 16) = v30[0];
  *(v10 + 32) = v12;
  *(v10 + 112) = signpost_c2_entryLock_start;
  *(v10 + 120) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a5;
  v14[4] = a6;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *&v27 = sub_188E5C7F8;
  *(&v27 + 1) = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v26 = sub_188A4A968;
  *(&v26 + 1) = &block_descriptor_37;
  v17 = _Block_copy(&aBlock);

  sub_188C3DFF8(v32, &aBlock);
  v18 = swift_allocObject();
  v19 = v28;
  *(v18 + 56) = v27;
  *(v18 + 72) = v19;
  *(v18 + 88) = v29[0];
  *(v18 + 97) = *(v29 + 9);
  v20 = v26;
  *(v18 + 24) = aBlock;
  *(v18 + 16) = v13;
  *(v18 + 40) = v20;
  *(v18 + 113) = 0;
  *(v18 + 120) = sub_188E5C7FC;
  *(v18 + 128) = v10;
  v24[4] = sub_188EB2CA0;
  v24[5] = v18;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_188A4A8F0;
  v24[3] = &block_descriptor_44;
  v21 = _Block_copy(v24);

  *&v27 = sub_188E5C82C;
  *(&v27 + 1) = v14;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v26 = sub_188ABD010;
  *(&v26 + 1) = &block_descriptor_47;
  v22 = _Block_copy(&aBlock);

  [ObjCClassFromMetadata _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v22);
  _Block_release(v21);
  _Block_release(v17);

  sub_188C3E234(v32);
  sub_188AAFF20(&v33);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t static UIView.animate<A>(bridgedAnimation:animations:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_188FBDA40(a6);
  static UIView.animate(bridgedAnimation:animations:completion:)(v10, a2, a3, a4, a5);
}

uint64_t sub_188EB23B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_188AA72A8(a2, &v7);
  if (v9 == 2)
  {
    v5 = v8;

    *(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_flushPresentationModifiersOverride) = v5;
  }

  else
  {
    sub_188AA7808(&v7);
  }

  return a3(a1);
}

void sub_188EB243C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    signpost_c2_entryLock_start(v11, v12);
    v13 = *(a1 + 16);
    os_unfair_lock_lock(v13 + 4);
    signpost_c2_entryLock_start(v14, v15);
    v16 = sub_188FF73A4(a2 & 1, a3, a4);
    if (v16)
    {
      v17 = v16;

      os_unfair_lock_unlock(v13 + 4);
      if (v17 == a5)
      {
        signpost_c2_entryLock_start(v18, v19);
        if (a2)
        {
          v20 = [(UIView *)v24 _backing_outermostLayer];
        }

        else
        {
          v20 = [v24 layer];
        }

        v21 = v20;
        [v21 addPresentationModifier_];

        signpost_c2_entryLock_start(v22, v23);
      }
    }

    else
    {
      os_unfair_lock_unlock(v13 + 4);
    }
  }
}