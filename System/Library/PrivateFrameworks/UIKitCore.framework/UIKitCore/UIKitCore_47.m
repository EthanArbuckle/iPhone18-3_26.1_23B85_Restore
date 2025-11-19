void sub_188FB2D64(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC5UIKit15_UICloudChamber_configuration);
  swift_beginAccess();
  v4 = v3[3];
  v8[2] = v3[2];
  v9[0] = v4;
  *(v9 + 12) = *(v3 + 60);
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  v6 = a1[3];
  v3[2] = a1[2];
  v3[3] = v6;
  *(v3 + 60) = *(a1 + 60);
  v7 = a1[1];
  *v3 = *a1;
  v3[1] = v7;
  sub_188FB4034(v8);
  sub_188FB3530();
}

void (*sub_188FB2DF0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_188FB2E54;
}

void sub_188FB2E54(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_188FB3530();
  }
}

char *_UICloudChamber.init(frame:configuration:)(_OWORD *a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtC5UIKit15_UICloudChamber_emitterCell;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x1E6979360]) init];
  v12 = &v5[OBJC_IVAR____TtC5UIKit15_UICloudChamber_appliedSpriteHash];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v5[OBJC_IVAR____TtC5UIKit15_UICloudChamber_configuration];
  *(v13 + 60) = *(a1 + 60);
  v14 = a1[3];
  *(v13 + 2) = a1[2];
  *(v13 + 3) = v14;
  v15 = a1[1];
  *v13 = *a1;
  *(v13 + 1) = v15;
  v40.receiver = v5;
  v40.super_class = type metadata accessor for _UICloudChamber();
  v16 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a2, a3, a4, a5);
  v17 = *MEMORY[0x1E6979760];
  v18 = objc_allocWithZone(MEMORY[0x1E6979358]);
  v19 = v16;
  v20 = [v18 initWithType_];
  v21 = sub_18A4A7258();
  v22 = sub_18A4A7258();
  [v20 setValue:v21 forKey:v22];

  v23 = sub_18A4A7518();
  v24 = sub_18A4A7258();
  [v20 setValue:v23 forKey:v24];

  v25 = OBJC_IVAR____TtC5UIKit15_UICloudChamber_emitterCell;
  v26 = *&v19[OBJC_IVAR____TtC5UIKit15_UICloudChamber_emitterCell];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_18A64B710;
  *(v27 + 32) = v20;
  sub_188A34624(0, &unk_1EA92E830);
  v28 = v26;
  v29 = v20;
  v30 = sub_18A4A7518();

  [v28 setEmitterBehaviors_];

  v31 = [v19 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEmitterShape_];

  v32 = [v19 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEmitterMode_];

  v33 = [v19 layer];
  objc_opt_self();
  v34 = swift_dynamicCastObjCClassUnconditional();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_18A64B710;
  v36 = *&v19[v25];
  *(v35 + 32) = v36;
  sub_188A34624(0, &unk_1EA92E870);
  v37 = v36;
  v38 = sub_18A4A7518();

  [v34 setEmitterCells_];

  sub_188FB3530();
  return v19;
}

id sub_188FB331C()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for _UICloudChamber();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = [v0 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEmitterSize_];

  v6 = [v0 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEmitterPosition_];

  [v0 bounds];
  Width = CGRectGetWidth(v17);
  [v0 bounds];
  v8 = Width + CGRectGetHeight(v18) * 0.5;
  v9 = &v0[OBJC_IVAR____TtC5UIKit15_UICloudChamber_configuration];
  swift_beginAccess();
  v10 = v8 * v9[4];
  v11 = v9[8] + v9[8];
  v12 = [v0 traitCollection];
  [v12 displayScale];
  v14 = v13;

  return [*&v0[OBJC_IVAR____TtC5UIKit15_UICloudChamber_emitterCell] setContentsScale_];
}

void sub_188FB3530()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = &v0[OBJC_IVAR____TtC5UIKit15_UICloudChamber_configuration];
  swift_beginAccess();
  [v2 setSeed_];

  v4 = [v0 layer];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v6 = **(&unk_1E70F1B80 + *(v3 + 56));
  [v5 setRenderMode_];

  v7 = [v0 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setUpdateInterval_];

  v8 = *&v0[OBJC_IVAR____TtC5UIKit15_UICloudChamber_emitterCell];
  v9 = v3[2];
  *&v10 = *(v3 + 1) / v9;
  [v8 setBirthRate_];
  v11 = v3[2];
  *&v11 = v11;
  [v8 setLifetime_];
  v12 = v3[3] * v3[3];
  *&v12 = v12;
  [v8 setLifetimeRange_];
  [v8 setScaleSpeed_];
  [v8 setScaleRange_];
  sub_188FB3748();
}

void sub_188FB3748()
{
  sub_18A4A88F8();
  v27 = v0;
  v1 = &v0[OBJC_IVAR____TtC5UIKit15_UICloudChamber_configuration];
  swift_beginAccess();
  v2 = v1[8];
  v3 = 0;
  if (v2 != 0.0)
  {
    v3 = *(v1 + 8);
  }

  MEMORY[0x18CFE3810](v3);
  v4 = *v1;
  if (v4 >> 62)
  {
    v5 = sub_18A4A7F68();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    *&v34 = MEMORY[0x1E69E7CC0];

    sub_18A4A8208();
    if (v5 < 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
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
      v10 = [v27 traitCollection];
      v11 = [v9 resolvedColorWithTraitCollection_];

      sub_18A4A7C98();
      v12 = [v11 CGColor];

      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
    }

    while (v5 != v7);

    v6 = v34;
  }

  v36 = v31;
  v37 = v32;
  v38 = v33;
  v34 = v29;
  v35 = v30;
  v13 = sub_18A4A88D8();
  v14 = v13;
  v15 = &v27[OBJC_IVAR____TtC5UIKit15_UICloudChamber_appliedSpriteHash];
  if ((v27[OBJC_IVAR____TtC5UIKit15_UICloudChamber_appliedSpriteHash + 8] & 1) == 0 && *v15 == v13)
  {

    return;
  }

  v16 = v2 + v2;
  if (v6 >> 62)
  {
    v17 = sub_18A4A7F68();
  }

  else
  {
    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize_];
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = v2;
  *(v19 + 32) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_188FB43C8;
  *(v20 + 24) = v19;
  aBlock[4] = sub_188A86D18;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188DBDF04;
  aBlock[3] = &block_descriptor_57;
  v21 = _Block_copy(aBlock);

  v22 = [v18 imageWithActions_];

  _Block_release(v21);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_27;
  }

  v23 = [v22 CGImage];
  if (!v23)
  {

    return;
  }

  v24 = v23;
  v25 = *&v27[OBJC_IVAR____TtC5UIKit15_UICloudChamber_emitterCell];
  [v25 setContents_];
  [v25 setContentsRect_];
  if ((v17 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v17))
    {
      [v25 setContentsFramesPerRow_];
      [v25 setContentsFrameCount_];
      v26 = *MEMORY[0x1E6979780];
      [v25 setContentsFrameMode_];

      *v15 = v14;
      v15[8] = 0;

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_188FB3BF8(void *a1, unint64_t a2, CGFloat a3, double a4)
{
  if (!(a2 >> 62))
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }

    goto LABEL_3;
  }

  v20 = sub_18A4A7F68();
  if (v20 < 0)
  {
    __break(1u);
  }

  v8 = v20;
  if (v20)
  {
LABEL_3:
    v9 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = sub_188E49AF8(v9, a2);
      }

      else
      {
        v10 = *(a2 + 8 * v9 + 32);
      }

      v11 = v10;
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v10, 0.0);
      if (CopyWithAlpha)
      {
        v13 = CopyWithAlpha;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_18A64E3F0;
        *(v14 + 32) = v11;
        *(v14 + 40) = v13;
        type metadata accessor for CGColor(0);
        v15 = v11;
        v16 = v13;
        v17 = sub_18A4A7518();

        v18 = CGGradientCreateWithColors(0, v17, 0);

        if (v18)
        {
          v19 = [a1 CGContext];
          v21.x = v9 * a4 + a3;
          v21.y = a3;
          v22.x = v21.x;
          v22.y = a3;
          CGContextDrawRadialGradient(v19, v18, v21, 0.0, v22, a3, 0);
        }
      }

      ++v9;
    }

    while (v8 != v9);
  }
}

id _UICloudChamber.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id _UICloudChamber.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UICloudChamber();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s5UIKit15_UICloudChamberC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a2 + 8);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = sub_189014FCC(*a1, *a2);
  result = 0;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))))
  {
    v16 = v5 != v10 || v7 != v12;
    if (!v16 && v6 == v11)
    {
      v18 = v8 == v13;
      if (v4 != v9)
      {
        v18 = 0;
      }

      return (v14 & 1) != 0 && v18;
    }
  }

  return result;
}

unint64_t sub_188FB408C()
{
  result = qword_1EA9390B8;
  if (!qword_1EA9390B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9390B8);
  }

  return result;
}

__n128 __swift_memcpy76_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_188FB41CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
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

uint64_t sub_188FB4214(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14VisibleContentV10HostedViewV2IDOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14VisibleContentV10HostedViewV2IDOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_188FB43D4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &_s16AccessoryMetricsVN;
  a1[4] = &off_1EFAD3B78;
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = 13;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 1;
  *(result + 56) = 15;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 1;
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_188FB4480(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188FB44A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

void __swiftcall UIBarButtonItem.creatingOptionalGroup(customizationIdentifier:isInDefaultCustomization:)(UIBarButtonItemGroup *__return_ptr retstr, Swift::String customizationIdentifier, Swift::Bool isInDefaultCustomization)
{
  v5 = sub_18A4A7258();
  v6 = [v3 creatingOptionalGroupWithCustomizationIdentifier:v5 inDefaultCustomization:isInDefaultCustomization];
}

uint64_t sub_188FB454C()
{
  swift_getKeyPath();
  sub_188C61AF0();
  sub_18A4A2C08();

  return *(v0 + 16);
}

uint64_t sub_188FB45BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188C61AF0();
  sub_18A4A2C08();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_188FB4634(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188C61AF0();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_188FB4714()
{
  v1 = OBJC_IVAR____TtCE5UIKitCSo15UIBarButtonItem18ToolbarPreferences___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_188FB47DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v31[1] = a2;
  v32 = a6;
  v33 = a3;
  v9 = sub_18A4A6DD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v37 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v31 - v13;
  v15 = sub_18A4A6DF8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v31 - v20;
  v40 = a5;
  v41 = a1;
  v39 = a4;
  sub_18A4A6D48();
  sub_18A4A6DE8();
  v35 = *(v16 + 8);
  v36 = v15;
  v35(v21, v15);
  v22 = *(v10 + 88);
  LODWORD(a1) = v22(v14, v9);
  LODWORD(a4) = *MEMORY[0x1E6982218];
  v23 = *(v10 + 8);
  v38 = v9;
  v23(v14, v9);
  if (a1 == a4)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_18A4A6D48();
  v24 = v37;
  sub_18A4A6DE8();
  v35(v18, v36);
  v25 = v38;
  v26 = v22(v24, v38);
  v27 = *MEMORY[0x1E6982210];
  v23(v24, v25);
  if (v26 == v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = sub_18A4A6D58();
  if (v28)
  {
    v29 = v28;
    v30 = sub_18A4A6DA8();
    [v34 *v32];

    return;
  }

LABEL_7:
  __break(1u);
}

void UIBarButtonItem.removeAllSymbolEffects(options:animated:)(uint64_t a1, char a2)
{
  v4 = sub_18A4A6DA8();
  [v2 removeAllSymbolEffectsWithOptions:v4 animated:a2 & 1];
}

void UIBarButtonItem.setSymbolImage<A>(_:contentTransition:options:)(uint64_t a1)
{
  v3 = sub_18A4A6D68();
  if (v3)
  {
    v4 = v3;
    v5 = sub_18A4A6DA8();
    [v1 setSymbolImage:a1 withContentTransition:v4 options:v5];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_188FB4C04()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18A4A8888();
  sub_188C18FD0(v5, v1, v2, v3);
  return sub_18A4A88E8();
}

uint64_t sub_188FB4C6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18A4A8888();
  sub_188C18FD0(v5, v1, v2, v3);
  return sub_18A4A88E8();
}

uint64_t sub_188FB4CF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_188FB4D38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

id sub_188FB4DC4(void *a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a2 >= 3)
  {
    _s3__C6RegionOMa_0(0);
    result = sub_18A4A8768();
    __break(1u);
  }

  else
  {
    v6 = &v5[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config];
    *v6 = a2;
    *(v6 + 1) = a1;
    *(v6 + 2) = a4;
    *(v6 + 3) = a1;
    *(v6 + 4) = a5;
    *(v6 + 5) = a5 * 0.25;
    *(v6 + 6) = 0x3FA999999999999ALL;
    v6[56] = 2;
    *&v5[OBJC_IVAR____UIIntelligenceRimHighlightEffect_activationTransitionDirection] = a3;
    *&v5[OBJC_IVAR____UIIntelligenceRimHighlightEffect_deactivationTransitionDirection] = 0;
    v9.receiver = v5;
    v9.super_class = _UIIntelligenceRimHighlightEffect;
    v7 = a1;
    return objc_msgSendSuper2(&v9, sel_init);
  }

  return result;
}

uint64_t _UIIntelligenceRimHighlightEffect.init(coder:)(void *a1)
{
  type metadata accessor for _UIIntelligenceRimHighlightEffect();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t type metadata accessor for _UIIntelligenceRimHighlightEffect()
{
  result = qword_1EA9390F0;
  if (!qword_1EA9390F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9390F0);
  }

  return result;
}

uint64_t _UIIntelligenceRimHighlightEffect._needsUpdateForTransition(from:to:usage:)(uint64_t result, void *a2, uint64_t a3)
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
  v7.super_class = _UIIntelligenceRimHighlightEffect;
  return objc_msgSendSuper2(&v7, sel__needsUpdateForTransitionFromEnvironment_toEnvironment_usage_, v6, a2, a3);
}

BOOL _UIIntelligenceRimHighlightEffect.isEqual(_:)(uint64_t a1)
{
  sub_188C85D28(a1, v31);
  if (v32)
  {
    type metadata accessor for _UIIntelligenceRimHighlightEffect();
    if (swift_dynamicCast())
    {
      v2 = v30;
      v3 = *&v1[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 16];
      v22[0] = *&v1[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config];
      v22[1] = v3;
      v5 = *&v1[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config];
      v4 = *&v1[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 16];
      v23[0] = *&v1[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 32];
      *(v23 + 9) = *&v1[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 41];
      v19 = v5;
      v20 = v4;
      v21[0] = *&v1[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 32];
      *(v21 + 9) = *&v1[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 41];
      v6 = *&v30[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config];
      v7 = *&v30[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 16];
      v8 = *&v30[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 32];
      *(v25 + 9) = *&v30[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 41];
      v24[1] = v7;
      v25[0] = v8;
      v24[0] = v6;
      v9 = *&v30[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 16];
      v16 = *&v30[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config];
      v17 = v9;
      v18[0] = *&v30[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 32];
      *(v18 + 9) = *&v30[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 41];
      sub_188DF0BF8(v22, v15);
      sub_188DF0BF8(v24, v15);
      v10 = _s5UIKit27_UISoftOutlineConfigurationV2eeoiySbAC_ACtFZ_0(&v19, &v16);
      v26[0] = v16;
      v26[1] = v17;
      v27[0] = v18[0];
      *(v27 + 9) = *(v18 + 9);
      sub_188F52F24(v26);
      v28[0] = v19;
      v28[1] = v20;
      v29[0] = v21[0];
      *(v29 + 9) = *(v21 + 9);
      sub_188F52F24(v28);
      if (v10)
      {
        v11 = [v1 activationTransitionDirection];
        if (v11 == [v2 activationTransitionDirection])
        {
          v12 = [v1 deactivationTransitionDirection];
          v13 = [v2 deactivationTransitionDirection];

          return v12 == v13;
        }
      }
    }
  }

  else
  {
    sub_188A553EC(v31);
  }

  return 0;
}

void __swiftcall _UIIntelligenceRimHighlightEffect.init()(_UIIntelligenceRimHighlightEffect *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static UIVisualEffect.intelligenceRimHighlight(thickness:color:softRadius:region:activationDirection:deactivationDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = [objc_allocWithZone(_UIIntelligenceRimHighlightEffect) initWithThickness:a1 color:a2 softRadius:a3 region:a5 activationDirection:a6];
  [v7 setDeactivationTransitionDirection_];
  return v7;
}

uint64_t sub_188FB5520(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v8 + ((((v6 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_188FB5698(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80);
  v9 = ((v8 + ((((*(v5 + 64) + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8) & ~v8)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8) + *(v5 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v6 + 56);

  return v20();
}

uint64_t sub_188FB58D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = v21 - v10;
  if (v9 <= 0.0)
  {
    v19 = *(v7 + 16);
    v20 = v1 + *(v6 + 40);

    return v19(v8, v20, v2);
  }

  else
  {
    v12 = v9 * 1000.0;
    v13 = *(v1 + *(v6 + 44));
    v14 = v6;
    v22 = v8;
    v23 = v7;
    pow(v13, v12);
    v21[1] = *(*(*(v14 + 24) + 8) + 8);
    sub_18A4A83D8();
    v21[0] = *(v23 + 16);
    (v21[0])(v11, v4, v2);
    sub_18A4A4E98();
    v15 = *(v23 + 8);
    v23 += 8;
    v15(v4, v2);
    sub_18A4A83E8();
    v15(v11, v2);
    v16 = *(v14 + 40);
    sub_18A4A83D8();
    v17 = v21[0];
    (v21[0])(v11, v4, v2);
    sub_18A4A4E98();
    v15(v4, v2);
    sub_18A4A83E8();
    v15(v11, v2);
    return v17(v22, v1 + v16, v2);
  }
}

uint64_t sub_188FB5BB0(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  v11 = *(a1 + 40);
  (*(v4 + 24))(v5, v4, v8);
  LOBYTE(v2) = (*(v4 + 48))(v2 + v11, v10, v5, v4);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v2 & 1;
}

uint64_t sub_188FB5D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = _s14FrictionBounceVMa();
  v9 = *(a3 - 8);
  v10 = *(v9 + 16);
  v10(a4 + v8[10], a1, a3);
  v10(a4 + v8[13], a2, a3);
  v11 = *(v9 + 32);
  v11(a4, a2, a3);
  result = (v11)(a4 + v8[9], a1, a3);
  *(a4 + v8[11]) = 0x3FEFEF9DB22D0E56;
  *(a4 + v8[12]) = 0;
  return result;
}

uint64_t sub_188FB5E60(void *a1, void (*a2)(__int128 *, __int128 *))
{
  v5 = *(v2 + 11);
  v26 = sub_188FB7278();
  v25 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A6510E0;
  *&v27 = sub_18A4A7288();
  *(&v27 + 1) = v7;
  v8 = a1;
  a2(v2, &v23);
  sub_18A4A8048();
  v9 = v2[1];
  v23 = *v2;
  v24 = v9;
  type metadata accessor for CGRect(0);
  v11 = v10;
  *(inited + 96) = v10;
  v12 = swift_allocObject();
  *(inited + 72) = v12;
  v13 = v24;
  *(v12 + 16) = v23;
  *(v12 + 32) = v13;
  *&v27 = sub_18A4A7288();
  *(&v27 + 1) = v14;
  sub_18A4A8048();
  v15 = v2[3];
  v27 = v2[2];
  v28 = v15;
  *(inited + 168) = v11;
  v16 = swift_allocObject();
  *(inited + 144) = v16;
  v17 = v28;
  *(v16 + 16) = v27;
  *(v16 + 32) = v17;
  sub_18A4A7288();
  sub_18A4A8048();
  v18 = *(v2 + 8);
  *(inited + 240) = MEMORY[0x1E69E63B0];
  *(inited + 216) = v18;
  sub_18A4A7288();
  sub_18A4A8048();
  v19 = *(v2 + 9);
  type metadata accessor for AnimationCurve(0);
  *(inited + 312) = v20;
  *(inited + 288) = v19;
  sub_18A4A7288();
  sub_18A4A8048();
  v21 = *(v2 + 80);
  *(inited + 384) = MEMORY[0x1E69E6370];
  *(inited + 360) = v21;
  sub_188E8DA14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D78);
  swift_arrayDestroy();
  return sub_18A4A2428();
}

uint64_t sub_188FB60CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A2448();
  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = v4;
  sub_18A4A7288();
  sub_18A4A8048();
  if (!*(v5 + 16))
  {
    goto LABEL_29;
  }

  v6 = sub_188BBA050(&v38);
  if ((v7 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_188A55598(*(v5 + 56) + 32 * v6, &v40);
  sub_188BBA15C(&v38);

  if (!*(&v41 + 1))
  {
LABEL_30:
    v30 = sub_18A4A2458();
    (*(*(v30 - 8) + 8))(a1, v30);
LABEL_32:
    v32 = &v40;
LABEL_33:
    result = sub_188A553EC(v32);
    goto LABEL_34;
  }

  type metadata accessor for CGRect(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v36 = v39;
  v37 = v38;
  v8 = sub_18A4A2448();
  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = v8;
  sub_18A4A7288();
  sub_18A4A8048();
  if (!*(v9 + 16))
  {
    goto LABEL_29;
  }

  v10 = sub_188BBA050(&v38);
  if ((v11 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_188A55598(*(v9 + 56) + 32 * v10, &v40);
  sub_188BBA15C(&v38);

  if (!*(&v41 + 1))
  {
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v34 = v39;
  v35 = v38;
  v12 = sub_18A4A2448();
  if (!v12)
  {
LABEL_31:
    v31 = sub_18A4A2458();
    (*(*(v31 - 8) + 8))(a1, v31);
    v40 = 0u;
    v41 = 0u;
    goto LABEL_32;
  }

  v13 = v12;
  sub_18A4A7288();
  sub_18A4A8048();
  if (!*(v13 + 16))
  {
    goto LABEL_29;
  }

  v14 = sub_188BBA050(&v38);
  if ((v15 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_188A55598(*(v13 + 56) + 32 * v14, &v40);
  sub_188BBA15C(&v38);

  if (!*(&v41 + 1))
  {
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    v33 = sub_18A4A2458();
    result = (*(*(v33 - 8) + 8))(a1, v33);
    goto LABEL_34;
  }

  v16 = v38;
  v17 = sub_18A4A2448();
  if (!v17)
  {
    goto LABEL_31;
  }

  v18 = v17;
  sub_18A4A7288();
  sub_18A4A8048();
  if (!*(v18 + 16))
  {
    goto LABEL_29;
  }

  v19 = sub_188BBA050(&v38);
  if ((v20 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_188A55598(*(v18 + 56) + 32 * v19, &v40);
  sub_188BBA15C(&v38);

  if (!*(&v41 + 1))
  {
    goto LABEL_30;
  }

  type metadata accessor for AnimationCurve(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v21 = v38;
  v22 = sub_18A4A2448();
  if (!v22)
  {
    goto LABEL_31;
  }

  v23 = v22;
  sub_18A4A7288();
  sub_18A4A8048();
  if (!*(v23 + 16) || (v24 = sub_188BBA050(&v38), (v25 & 1) == 0))
  {
LABEL_29:

    sub_188BBA15C(&v38);
    v40 = 0u;
    v41 = 0u;
    goto LABEL_30;
  }

  sub_188A55598(*(v23 + 56) + 32 * v24, &v40);
  sub_188BBA15C(&v38);

  if (!*(&v41 + 1))
  {
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v26 = v38;
  sub_18A4A2438();
  v27 = sub_18A4A2458();
  (*(*(v27 - 8) + 8))(a1, v27);
  if (!*(&v39 + 1))
  {
    v32 = &v38;
    goto LABEL_33;
  }

  sub_188FB7278();
  result = swift_dynamicCast();
  if (result)
  {
    v29 = v40;
    *a2 = v37;
    *(a2 + 16) = v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v34;
    *(a2 + 64) = v16;
    *(a2 + 72) = v21;
    *(a2 + 80) = v26;
    *(a2 + 88) = v29;
    return result;
  }

LABEL_34:
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t _sSo11UIResponderC5UIKitE22KeyboardDidHideMessageV04makeF0yAESg10Foundation12NotificationVFZ_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A2458();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return sub_188FB60CC(v7, a2);
}

void UIResponder.KeyboardDidHideMessage.beginFrame.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void UIResponder.KeyboardDidHideMessage.endFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

uint64_t sub_188FB705C@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, double a12@<D7>, uint64_t a13)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a7;
  *(a4 + 24) = a8;
  *(a4 + 32) = a9;
  *(a4 + 40) = a10;
  *(a4 + 48) = a11;
  *(a4 + 56) = a12;
  *(a4 + 64) = a13;
  *(a4 + 72) = result;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_188FB71C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188FB7210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_188FB7278()
{
  result = qword_1ED48EE70;
  if (!qword_1ED48EE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48EE70);
  }

  return result;
}

uint64_t sub_188FB7560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 56))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[2] = a3;
  v10[3] = a4;
  v11 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_188F29A68(AssociatedTypeWitness, sub_188FB76E8, v10, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_188FB7728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939108);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_18A4A5FA8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939100);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_18A4A4A48();
  sub_18A4A4BB8();
  sub_18A4A5F78();
  sub_18A4A4BA8();
  sub_18A4A4B88();
  sub_18A4A4BD8();
  sub_18A4A4BC8();
  v7 = sub_18A4A4BE8();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  sub_18A4A4A38();
  sub_18A4A4B68();
  sub_18A4A5F78();
  sub_18A4A4AC8();
  sub_18A4A5F78();
  sub_18A4A4B58();
  sub_18A4A4B08();
  sub_18A4A5F78();
  sub_18A4A4B28();
  sub_18A4A4AE8();
  sub_18A4A5F78();
  sub_18A4A4B38();
  v9 = sub_18A4A4B78();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_18A4A4A18();
  sub_18A4A4BB8();
  sub_18A4A5F78();
  sub_18A4A4BA8();
  sub_18A4A4B88();
  sub_18A4A4BD8();
  sub_18A4A4BC8();
  v8(v6, 0, 1, v7);
  return sub_18A4A4A38();
}

void sub_188FB7A3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939100);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_18A4A5FA8();
  v21 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = sub_18A4A4A58();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedInstance];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 prototypeSettingsEnabled];

    if ((v17 & 1) == 0)
    {
      sub_18A4A44A8();
      (*(v12 + 16))(v14, a1, v11);
      sub_18A4A4498();
      sub_18A4A4A28();
      v18 = sub_18A4A4BE8();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v4, 1, v18) == 1)
      {
        sub_188FB7D44(v4);
      }

      else
      {
        sub_18A4A4B98();
        (*(v19 + 8))(v4, v18);
        v20 = v21;
        (*(v21 + 32))(v10, v7, v5);
        MEMORY[0x18CFE1BA0](v10, 0.0);
        sub_18A4A4488();
        (*(v20 + 8))(v10, v5);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_188FB7D44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_188FB7DAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939108);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_18A4A5FA8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939100);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_18A4A4A48();
  sub_18A4A4BB8();
  sub_18A4A5F78();
  sub_18A4A4BA8();
  v7 = sub_18A4A4BE8();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_18A4A4A38();
  sub_18A4A4B68();
  sub_18A4A4AA8();
  sub_18A4A5F78();
  sub_18A4A4AC8();
  sub_18A4A4B08();
  sub_18A4A5F78();
  sub_18A4A4B58();
  sub_18A4A4AE8();
  sub_18A4A5F78();
  sub_18A4A4B28();
  v8 = sub_18A4A4B78();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  return sub_18A4A4A18();
}

uint64_t UIWindowSceneProminentPlacement.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t sub_188FB80B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() prominentPlacement];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939110);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

id UIWindowSceneProminentPlacement._prefersLargeSize.setter(char a1)
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
    sub_188FB8228();
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939110);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 _setPrefersLargeSize_];
}

unint64_t sub_188FB8228()
{
  result = qword_1EA939118;
  if (!qword_1EA939118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA939118);
  }

  return result;
}

id (*UIWindowSceneProminentPlacement._prefersLargeSize.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) _prefersLargeSize];
  return sub_188FB82CC;
}

id static UIWindowScenePlacement<>._largeProminentPlacement()@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() prominentPlacement];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939110);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *a1 = v3;
  return UIWindowSceneProminentPlacement._prefersLargeSize.setter(1);
}

unint64_t sub_188FB8368(uint64_t a1)
{
  result = sub_188FB8390();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188FB8390()
{
  result = qword_1EA939120;
  if (!qword_1EA939120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939120);
  }

  return result;
}

unint64_t sub_188FB83E8()
{
  result = qword_1EA939128;
  if (!qword_1EA939128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939128);
  }

  return result;
}

unint64_t sub_188FB8440()
{
  result = qword_1EA939130;
  if (!qword_1EA939130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939130);
  }

  return result;
}

uint64_t _sSo8UIScreenC5UIKitE20ModeDidChangeMessageV04makeF0yAESg10Foundation12NotificationVFZ_0@<X0>(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v6)
  {
    result = sub_188A553EC(v5);
    goto LABEL_5;
  }

  sub_188FB7278();
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

uint64_t sub_188FB86AC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_188FB7278();
  v4 = v2;
  v5 = v3;
  return sub_18A4A2428();
}

uint64_t sub_188FB8728(void **a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = *a1;
  v5 = *a4;
  sub_188FB7278();
  v6 = v4;
  v7 = v5;
  return sub_18A4A2428();
}

uint64_t UIFontPickerViewControllerConfiguration.languageFilter.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 _swiftPredicate])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939138);
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_188A3F5FC(v9, &qword_1EA934050);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939138);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_188FB893C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939138);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939140);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_188FB8CEC(a1, &v17 - v12);
  v14 = *a2;
  sub_188FB8CEC(v13, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    v15 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    v15 = sub_18A4A8778();
    (*(v5 + 8))(v10, v4);
  }

  [v14 set:v15 swiftPredicate:?];
  swift_unknownObjectRelease();
  return sub_188A3F5FC(v13, &qword_1EA939140);
}

uint64_t UIFontPickerViewControllerConfiguration.languageFilter.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939138);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939140);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_188FB8CEC(a1, &v12 - v8);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    v10 = sub_18A4A8778();
    (*(v4 + 8))(v9, v3);
  }

  [v1 set:v10 swiftPredicate:?];
  swift_unknownObjectRelease();
  return sub_188A3F5FC(a1, &qword_1EA939140);
}

uint64_t sub_188FB8CEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*UIFontPickerViewControllerConfiguration.languageFilter.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939138);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939140) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v5[5] = malloc(v9);
    v5[6] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[7] = v10;
  UIFontPickerViewControllerConfiguration.languageFilter.getter(v10);
  return sub_188FB8EE8;
}

void sub_188FB8EE8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v4 = *(v2 + 40);
    v6 = *(v2 + 8);
    v7 = *(v2 + 16);
    sub_188FB8CEC(v3, v4);
    sub_188FB8CEC(v4, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      v8 = 0;
    }

    else
    {
      v13 = *(v2 + 32);
      v14 = *(v2 + 8);
      v15 = *(v2 + 16);
      (*(v15 + 16))(*(v2 + 24), v13, v14);
      v8 = sub_18A4A8778();
      (*(v15 + 8))(v13, v14);
    }

    v17 = *(v2 + 48);
    v16 = *(v2 + 56);
    v19 = *(v2 + 32);
    v18 = *(v2 + 40);
    v20 = *(v2 + 24);
    [*v2 set:v8 swiftPredicate:?];
    swift_unknownObjectRelease();
    sub_188A3F5FC(v18, &qword_1EA939140);
  }

  else
  {
    v9 = *(v2 + 48);
    v10 = *(v2 + 8);
    v11 = *(v2 + 16);
    sub_188FB8CEC(v3, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      v12 = 0;
    }

    else
    {
      v21 = *(v2 + 48);
      v22 = *(v2 + 16);
      v23 = *(v2 + 8);
      (*(v22 + 16))(*(v2 + 24), v21, v23);
      v12 = sub_18A4A8778();
      (*(v22 + 8))(v21, v23);
    }

    v17 = *(v2 + 48);
    v16 = *(v2 + 56);
    v19 = *(v2 + 32);
    v18 = *(v2 + 40);
    v20 = *(v2 + 24);
    [*v2 set:v12 swiftPredicate:?];
    swift_unknownObjectRelease();
  }

  sub_188A3F5FC(v16, &qword_1EA939140);
  free(v16);
  free(v17);
  free(v18);
  free(v19);
  free(v20);

  free(v2);
}

uint64_t sub_188FB9110(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939140);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939138);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  if (a1)
  {

    UIFontPickerViewControllerConfiguration.languageFilter.getter(v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_188A3F5FC(v5, &qword_1EA939140);
      v10 = [v1 _allowedLanguages];
      if (v10)
      {
        v11 = v10;
        v12 = sub_18A4A7548();

        if (*(v12 + 16))
        {
          v14 = (a1 + 40);
          v15 = *(a1 + 16) + 1;
          while (--v15)
          {
            v16 = v14 + 2;
            v17 = *v14;
            v21[0] = *(v14 - 1);
            v21[1] = v17;
            MEMORY[0x1EEE9AC00](v13);
            v20[-2] = v21;

            v18 = sub_18919A34C(sub_188FB9B7C, &v20[-4], v12);

            v14 = v16;
            if (v18)
            {

              LOBYTE(a1) = 1;
              return a1 & 1;
            }
          }
        }
      }

      LOBYTE(a1) = 0;
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v20[0] = a1;
      v21[0] = v20;
      LOBYTE(a1) = sub_18A4A2B78();
      (*(v7 + 8))(v9, v6);
    }
  }

  return a1 & 1;
}

uint64_t sub_188FB9458()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939140);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939138);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  UIFontPickerViewControllerConfiguration.languageFilter.getter(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_188A3F5FC(v2, &qword_1EA939140);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_18A4A2748();
    swift_allocObject();
    sub_18A4A2738();
    sub_18A4A2718();
    sub_188FB9B2C(&qword_1EA939158);
    v8 = sub_18A4A2728();
    (*(v4 + 8))(v6, v3);

    return v8;
  }
}

id sub_188FB970C(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939140);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939138);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16[-v13];
  if (a2 >> 60 != 15)
  {
    sub_18A4A2708();
    swift_allocObject();
    sub_188DBF7D8(a1, a2);
    sub_18A4A26F8();
    sub_188FB9A8C();
    sub_18A4A26E8();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v14, v7, v8);
      (*(v9 + 16))(v11, v14, v8);
      [v2 set:sub_18A4A8778() swiftPredicate:?];

      sub_188DBF840(a1, a2);
      swift_unknownObjectRelease();
      return (*(v9 + 8))(v14, v8);
    }

    sub_188DBF840(a1, a2);
    sub_188A3F5FC(v7, &qword_1EA939140);
  }

  return [v2 set:0 swiftPredicate:?];
}

unint64_t sub_188FB9A8C()
{
  result = qword_1EA939148;
  if (!qword_1EA939148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA939140);
    sub_188FB9B2C(&qword_1EA939150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939148);
  }

  return result;
}

uint64_t sub_188FB9B2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA939138);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_188FB9D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[OBJC_IVAR____UINavigationButtonBarWrapperView_animatesNextUpdate] = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v6 = objc_allocWithZone(type metadata accessor for NavigationButtonBar());
  *&v3[OBJC_IVAR____UINavigationButtonBarWrapperView_buttonBar] = sub_18907B050(a1, a2, v15);
  v7 = objc_allocWithZone(type metadata accessor for NavigationBarTransitionContainer());
  *&v3[OBJC_IVAR____UINavigationButtonBarWrapperView_transitionContainer] = sub_188AEA020(0);
  v14.receiver = v3;
  v14.super_class = _UINavigationButtonBarWrapperView;
  v8 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____UINavigationButtonBarWrapperView_buttonBar;
  v10 = *&v8[OBJC_IVAR____UINavigationButtonBarWrapperView_buttonBar];
  v11 = v8;
  v12 = v10;
  sub_188B32818(0);

  *(*&v8[v9] + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate + 8) = &off_1EFAD4670;
  swift_unknownObjectWeakAssign();
  [v11 addSubview_];

  return v11;
}

void _UINavigationButtonBarWrapperView.init(coder:)()
{
  *(v0 + OBJC_IVAR____UINavigationButtonBarWrapperView_animatesNextUpdate) = 0;
  sub_18A4A8398();
  __break(1u);
}

double sub_188FBA068()
{
  v1 = v0;
  v2 = [v0 buttonBar];
  [v1 bounds];
  Height = CGRectGetHeight(v19);
  v4 = [v1 _shouldReverseLayoutDirection];
  v5 = [v1 traitCollection];
  [v5 displayScale];
  v7 = v6;

  v8 = &v2[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics];
  *v8 = 0.0;
  v8[1] = Height;
  *(v8 + 16) = v4;
  *(v8 + 3) = v7;
  *(v8 + 2) = xmmword_18A658760;
  *(v8 + 3) = xmmword_18A64B7B0;
  __asm { FMOV            V1.2D, #8.0 }

  *(v8 + 4) = xmmword_18A658770;
  *(v8 + 5) = _Q1;
  *(v8 + 96) = 0;
  v8[13] = 8.0;
  *(v8 + 56) = 1;

  v14 = [v1 buttonBar];
  memset(v18, 0, sizeof(v18));
  sub_188B44CA0(v18, 10000000.0);
  v16 = v15;

  [v1 bounds];
  CGRectGetHeight(v20);
  return v16;
}

id sub_188FBA1E0()
{
  v1 = v0;
  v21.super_class = _UINavigationButtonBarWrapperView;
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  v2 = [v0 transitionContainer];
  [v1 bounds];
  [v2 setFrame_];

  v3 = [v1 buttonBar];
  [v1 bounds];
  Height = CGRectGetHeight(v23);
  v5 = [v1 _shouldReverseLayoutDirection];
  v6 = [v1 traitCollection];
  [v6 displayScale];
  v8 = v7;

  v9 = &v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics];
  *v9 = 0.0;
  v9[1] = Height;
  *(v9 + 16) = v5;
  *(v9 + 3) = v8;
  *(v9 + 2) = xmmword_18A658760;
  *(v9 + 3) = xmmword_18A64B7B0;
  __asm { FMOV            V1.2D, #8.0 }

  *(v9 + 4) = xmmword_18A658770;
  *(v9 + 5) = _Q1;
  *(v9 + 96) = 0;
  v9[13] = 8.0;
  *(v9 + 56) = 1;

  v15 = [v1 buttonBar];
  [v1 bounds];
  Width = CGRectGetWidth(v24);
  memset(v22, 0, sizeof(v22));
  v17 = sub_188B44CA0(v22, Width);

  v18 = [v1 transitionContainer];
  v19 = [v1 animatesNextUpdate];
  sub_188B44A2C(MEMORY[0x1E69E7CC0], v17, v19);

  return [v1 setAnimatesNextUpdate_];
}

void __swiftcall _UINavigationButtonBarWrapperView.init(frame:)(_UINavigationButtonBarWrapperView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id sub_188FBA550()
{
  [v0 invalidateIntrinsicContentSize];

  return [v0 setNeedsLayout];
}

unint64_t type metadata accessor for _UINavigationButtonBarWrapperView()
{
  result = qword_1EA939178;
  if (!qword_1EA939178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA939178);
  }

  return result;
}

void sub_188FBA60C()
{
  if (!qword_1ED48E8C8)
  {
    v0 = sub_18A4A7D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED48E8C8);
    }
  }
}

uint64_t sub_188FBA678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v62 = a2;
  v7 = *(a1 + 16);
  v61 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v50 - v10;
  v12 = sub_18A4A7D38();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v58 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v50 - v15;
  v56 = *(a1 + 24);
  v17 = *(*(v56 + 8) + 8);
  v64 = sub_18A4A49C8();
  v18 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v20 = v50 - v19;
  v21 = v17;
  v22 = sub_18A4A4DA8();
  v57 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v50 - v23;
  *v4 = *v4 + a3;
  v25 = a1;
  v26 = *(a1 + 56);
  v27 = *(v4 + v26);
  v65 = v16;
  v63 = v11;
  if (v27 <= 1)
  {
    if (v27)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    *v4 = 0.0;
    goto LABEL_8;
  }

  if (v27 == 2)
  {
    v28 = 3;
LABEL_8:
    v29 = v24;
    *(v4 + v26) = v28;
    goto LABEL_10;
  }

  v29 = v24;
LABEL_10:
  v55 = v25;
  v53 = *(v25 + 60);
  (*(v18 + 16))(v20, v4 + v53, v64);
  v30 = v21;
  sub_18A4A4D68();
  v52 = v20;
  v31 = v22;
  sub_188FBB4EC();
  v32 = v7;
  v33 = v63;
  v50[1] = *(v30 + 8);
  sub_18A4A83D8();
  v34 = v65;
  sub_18A4A6C68();
  v35 = v61;
  v36 = v33;
  v37 = v32;
  v50[0] = *(v61 + 8);
  (v50[0])(v36, v32);
  v38 = v52;
  v56 = v31;
  v54 = v29;
  sub_18A4A4D88();
  (*(v18 + 40))(v4 + v53, v38, v64);
  v39 = v35;
  v40 = v58;
  v41 = v59;
  v42 = v60;
  (*(v59 + 16))(v58, v34, v60);
  if ((*(v39 + 48))(v40, 1, v37) == 1)
  {
    v43 = *(v41 + 8);
    v43(v65, v42);
    (*(v57 + 8))(v54, v56);
    v43(v40, v42);
    v44 = v55;
    *(v4 + *(v55 + 52)) = 1;
    v45 = v4 + *(v44 + 48);
  }

  else
  {
    v46 = v51;
    (*(v39 + 32))(v51, v40, v37);
    v47 = v55;
    v48 = v63;
    sub_18A4A83C8();
    (v50[0])(v46, v37);
    (*(v41 + 8))(v65, v42);
    (*(v57 + 8))(v54, v56);
    v45 = v4 + *(v47 + 44);
    (*(v39 + 40))(v45, v48, v37);
  }

  return (*(v39 + 16))(v62, v45, v37);
}

uint64_t sub_188FBAC58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18A4A7D38();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v27 - v9;
  v33 = *(a1 + 24);
  v10 = *(*(v33 + 8) + 8);
  v11 = sub_18A4A49C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v15 = sub_18A4A4DA8();
  v16 = *(v15 - 8);
  v31 = v15;
  v32 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  v19 = *(v10 + 8);
  v29 = a2;
  v30 = v19;
  sub_18A4A8408();
  v20 = v35;
  (*(v12 + 16))(v14, v3 + *(a1 + 60), v11);
  sub_18A4A4D68();
  v21 = v31;
  sub_188FBB4EC();
  v22 = v36;
  sub_18A4A83D8();
  v23 = v34;
  sub_18A4A6C88();
  v24 = *(v20 + 8);
  v24(v22, v6);
  (*(v32 + 8))(v18, v21);
  if ((*(v20 + 48))(v23, 1, v6) == 1)
  {
    return (*(v27 + 8))(v23, v28);
  }

  v26 = v29;
  v24(v29, v6);
  return (*(v20 + 32))(v26, v23, v6);
}

uint64_t sub_188FBB008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  v12 = _s7SwiftUIVMa();
  *(a6 + v12[13]) = 0;
  *(a6 + v12[14]) = 0;
  sub_18A4A49B8();
  v13 = v12[16];
  a6[1] = a1;
  v14 = *(a5 - 8);
  (*(v14 + 16))(a6 + v12[10], a2, a5);
  v15 = *(v14 + 32);
  v15(a6 + v12[11], a2, a5);
  result = (v15)(a6 + v12[12], a3, a5);
  *(a6 + v13) = a4;
  return result;
}

uint64_t sub_188FBB134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a2;
  v39 = a1;
  v6 = *(a3 + 16);
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v9 + 24);
  v10 = sub_18A4A49C8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = sub_18A4A4DA8();
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = *(a3 + 60);
  v37 = v11;
  v38 = v10;
  v18 = *(v11 + 16);
  v32 = v17;
  v18(v13, &v4[v17], v10);
  v35 = v13;
  sub_18A4A4D68();
  v33 = v14;
  sub_188FBB4EC();
  sub_18A4A83D8();
  LOBYTE(v10) = sub_18A4A6C18();
  v19 = v31 + 8;
  (*(v31 + 8))(v8, v6);
  v20 = (v19 + 16);
  if (v10)
  {
    v21 = v39;

    *(v4 + 1) = v21;
    (*v20)(&v4[*(a3 + 48)], v36, v6);
    v22 = v35;
    v23 = v33;
    sub_18A4A4D88();
    v24 = v23;
  }

  else
  {
    v25 = *(a3 + 48);
    v26 = *(a3 + 40);
    v27 = *v20;
    (*v20)(&v4[v26], &v4[v25], v6);
    v27(&v4[*(a3 + 44)], &v4[v26], v6);
    v27(&v4[v25], v36, v6);
    v28 = v39;

    *v4 = 0;
    *(v4 + 1) = v28;
    v22 = v35;
    sub_18A4A49B8();
    v24 = v33;
  }

  (*(v34 + 8))(v16, v24);
  return (*(v37 + 40))(&v4[v32], v22, v38);
}

uint64_t sub_188FBB4EC()
{
  type metadata accessor for SpringFinishingDefinition();
  swift_getWitnessTable();

  return sub_18A4A4D98();
}

uint64_t sub_188FBB560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v33 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = &v31 - v6;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v34 = a3;
  v19 = *(a3 + 8);
  v39 = *(v19 + 8);
  v37 = sub_18A4A5808();
  sub_18A4A57E8();
  v36 = *(v7 + 16);
  v36(v15, v18, a2);
  v20 = *(v19 + 16);
  v20(v15, a2, v19);
  v21 = v7 + 8;
  v22 = *(v7 + 8);
  v35 = v21;
  v22(v15, a2);
  sub_18A4A57F8();
  v36(v15, v12, a2);
  v23 = v22;
  v20(v15, a2, v19);
  v24 = v40;
  v22(v15, a2);
  sub_18A4A83C8();
  if ((*(v19 + 24))(a2, v19))
  {
    v25 = 1;
  }

  else
  {
    sub_18A4A8408();
    v26 = v34;
    v27 = v31;
    (*(v34 + 32))(a2, v34);
    v28 = *(v26 + 48);
    v29 = v26;
    v23 = v22;
    v25 = v28(v15, v27, a2, v29);
    (*(v32 + 8))(v27, v33);
    v22(v15, a2);
  }

  v23(v24, a2);
  v23(v12, a2);
  v23(v18, a2);
  return v25 & 1;
}

uint64_t sub_188FBB978(unsigned __int8 a1)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  return sub_18A4A88E8();
}

uint64_t sub_188FBB9EC()
{
  sub_18A4A8888();
  sub_188FBB950(v2, *v0);
  return sub_18A4A88E8();
}

id sub_188FBBABC(id result)
{
  if (v1[OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView__lifted] != (result & 1))
  {
    v1[OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView__lifted] = result & 1;
    if (result)
    {
      v2 = [v1 window];
      if (v2)
      {
        v3 = v2;
        v4 = sub_188FBBEC4();
        [v3 addSubview_];
      }

      v5 = sub_188FBBEC4();
      [v5 setAlpha_];

      v6 = v1;
    }

    else
    {
      v7 = sub_188FBBEC4();
      [v7 removeFromSuperview];

      [v1 setAlpha_];
      v6 = *&v1[OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView____lazy_storage___portalView];
    }

    return [v6 setAlpha_];
  }

  return result;
}

uint64_t sub_188FBBBD0(uint64_t result, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView__lifted] == (result & 1))
  {
    return result;
  }

  v2[OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView__lifted] = result & 1;
  if ((result & 1) == 0)
  {
    sub_188AF7A44();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = v2;

    static UIView.animate(bridgedAnimation:animations:completion:)(a2, sub_188FBC15C, v10, sub_188FBC180, v11);

    goto LABEL_10;
  }

  v4 = sub_188FBBEC4();
  v5 = [v4 superview];

  if (v5)
  {
    goto LABEL_6;
  }

  v6 = OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView____lazy_storage___portalView;
  [*&v2[OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView____lazy_storage___portalView] setAlpha_];
  v7 = [v2 window];
  if (v7)
  {
    v5 = v7;
    [v7 addSubview_];
LABEL_6:
  }

  sub_188AF7A44();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  v9 = v2;
  static UIView.animate(bridgedAnimation:animations:completion:)(a2, sub_188FBC188, v8, signpost_c2_entryLock_start, 0);
LABEL_10:
}

void sub_188FBBDD0(void *a1, double a2, double a3)
{
  [a1 setAlpha_];
  v4 = sub_188FBBEC4();
  [v4 setAlpha_];
}

void sub_188FBBE38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView__lifted) & 1) == 0)
    {
      [Strong setAlpha_];
      v2 = sub_188FBBEC4();
      [v2 removeFromSuperview];
    }
  }
}

id sub_188FBBEC4()
{
  v1 = OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView____lazy_storage___portalView;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView____lazy_storage___portalView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView____lazy_storage___portalView);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
    [v4 setMatchesPosition_];
    [v4 setMatchesTransform_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_188FBBFFC(void *a1)
{
  v1[OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView__lifted] = 0;
  *&v1[OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView____lazy_storage___portalView] = 0;
  *&v1[OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView_contentView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LiftPortalView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_188FBC0B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiftPortalView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_188FBC210(double *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (qword_1EA931200 != -1)
  {
    swift_once();
  }

  return vabdd_f64(v3, v2) / *&qword_1EA994F30;
}

double sub_188FBC274@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

void sub_188FBC288(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    if (!a1)
    {
      goto LABEL_7;
    }

    if (v4 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 setPointerInteractionEnabled_];
LABEL_7:
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v7 = v5;
    if ([v5 isPointerInteractionEnabled])
    {
      v6 = 1;
    }

    else
    {
      v6 = *(v1 + 112);
    }

    [v7 setPointerInteractionEnabled_];
  }
}

uint64_t sub_188FBC364(uint64_t *a1)
{
  v2 = v1;
  __swift_assign_boxed_opaque_existential_1(v1, a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong isPointerInteractionEnabled])
    {
      v6 = 1;
    }

    else
    {
      v6 = *(v2 + 112);
    }

    [v5 setPointerInteractionEnabled_];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_188FBC3F0@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v7[0] = *(v1 + 40);
  v7[1] = v2;
  v8[0] = *(v1 + 72);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 81);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_188A3F29C(v7, &v6, &qword_1EA934C40);
}

void sub_188FBC450(_OWORD *a1)
{
  v3 = *(v1 + 56);
  v7[0] = *(v1 + 40);
  v7[1] = v3;
  v8[0] = *(v1 + 72);
  *(v8 + 9) = *(v1 + 81);
  sub_188A3F5FC(v7, &qword_1EA934C40);
  v4 = a1[1];
  *(v1 + 40) = *a1;
  *(v1 + 56) = v4;
  *(v1 + 72) = a1[2];
  *(v1 + 81) = *(a1 + 41);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = [Strong pointerInteraction];

  [v6 invalidate];
}

void sub_188FBC504(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();

    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = -1;
  }
}

void sub_188FBC56C(unsigned __int8 a1)
{
  *(v1 + 112) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setPointerInteractionEnabled_];
  }
}

UIEdgeInsets __swiftcall UICoreSafeAreaHelper.resolvedSafeAreaInsets(_safeAreaInsets:defaultSafeAreaInsets:)(UIEdgeInsets _safeAreaInsets, UIEdgeInsets defaultSafeAreaInsets)
{
  if (_safeAreaInsets.top == 1.79769313e308 && _safeAreaInsets.left == 1.79769313e308 && _safeAreaInsets.bottom == 1.79769313e308)
  {
    _safeAreaInsets.bottom = 1.79769313e308;
    if (_safeAreaInsets.right == 1.79769313e308)
    {
      _safeAreaInsets.top = defaultSafeAreaInsets.top;
    }

    else
    {
      _safeAreaInsets.top = 1.79769313e308;
    }

    if (_safeAreaInsets.right == 1.79769313e308)
    {
      _safeAreaInsets.left = defaultSafeAreaInsets.left;
    }

    else
    {
      _safeAreaInsets.left = 1.79769313e308;
    }

    if (_safeAreaInsets.right == 1.79769313e308)
    {
      _safeAreaInsets.bottom = defaultSafeAreaInsets.bottom;
      _safeAreaInsets.right = defaultSafeAreaInsets.right;
    }
  }

  return _safeAreaInsets;
}

Swift::Void __swiftcall UICoreSafeAreaHelper.updateSafeAreaInsets(_:_safeAreaInsets:containerView:shouldEagerlyUpdate:)(UIEdgeInsets_optional *_, UIEdgeInsets *_safeAreaInsets, UIView *containerView, Swift::Bool shouldEagerlyUpdate)
{
  v5 = *&_->value.top;
  v6 = *&_->value.bottom;
  v7 = (v4 + 16);
  if (*(v4 + 48))
  {
    if (_->is_nil)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!_->is_nil)
  {
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 16), v5), vceqq_f64(*(v4 + 32), v6)))))
    {
      return;
    }

LABEL_6:
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&_safeAreaInsets->top, v5), vceqq_f64(*&_safeAreaInsets->bottom, v6)))))
    {
      *v7 = 0u;
      *(v4 + 32) = 0u;
      *(v4 + 48) = 1;
      return;
    }
  }

  v8 = *&_->value.bottom;
  *v7 = *&_->value.top;
  *(v4 + 32) = v8;
  *(v4 + 48) = _->is_nil;
  v9 = [(UIView *)containerView superview];
  if (v9)
  {
    v10 = v9;
    v11 = [(UIView *)v9 layer];

    [(CALayer *)v11 setNeedsLayout];
  }
}

Swift::Void __swiftcall UICoreSafeAreaHelper.prepareForSafeAreaPropagation(_safeAreaInsets:containerView:shouldEagerlyUpdate:)(UIEdgeInsets *_safeAreaInsets, UIView *containerView, Swift::Bool shouldEagerlyUpdate)
{
  sub_188BA7E08(_safeAreaInsets, containerView, shouldEagerlyUpdate);
  if ((*(v3 + 48) & 1) == 0)
  {
    v5 = *(v3 + 32);
    *&_safeAreaInsets->top = *(v3 + 16);
    *&_safeAreaInsets->bottom = v5;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 1;
  }
}

uint64_t UIListSeparatorConfiguration.Visibility.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

unint64_t sub_188FBC834@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    sub_18A4A80E8();

    v2 = sub_18A4A8618();
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

id (*UIListSeparatorConfiguration.topSeparatorVisibility.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_188FBC834([*(*v1 + 16) topSeparatorVisibility], (a1 + 8));
  return sub_188FBC964;
}

id sub_188FBC97C@<X0>(SEL *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*v2 + 16) *a1];
  if (result >= 3)
  {
    sub_18A4A80E8();

    v5 = sub_18A4A8618();
    MEMORY[0x18CFE22D0](v5);

    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id (*UIListSeparatorConfiguration.bottomSeparatorVisibility.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_188FBC834([*(*v1 + 16) bottomSeparatorVisibility], (a1 + 8));
  return sub_188FBCAD0;
}

id sub_188FBCADC(uint64_t a1, uint64_t a2, const char **a3)
{
  v4 = *(a1 + 8);
  v5 = sub_188FBD7A8();
  v6 = *a3;

  return [v5 v6];
}

CGFloat sub_188FBCB28()
{
  result = UIListSeparatorAutomaticInsets.top;
  *ymmword_1EA92F248 = UIListSeparatorAutomaticInsets;
  return result;
}

double static UIListSeparatorConfiguration.automaticInsets.getter()
{
  if (qword_1EA92F240 != -1)
  {
    swift_once();
  }

  return *ymmword_1EA92F248;
}

void (*UIListSeparatorConfiguration.topSeparatorInsets.modify(uint64_t *a1))(double **a1, uint64_t a2)
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
  [*(*v1 + 16) topSeparatorInsets];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return sub_188FBCC34;
}

id UIListSeparatorConfiguration.color.getter()
{
  v1 = [*(*v0 + 16) color];

  return v1;
}

void (*UIListSeparatorConfiguration.color.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) color];
  return sub_188FBCD08;
}

id UIListSeparatorConfiguration.multipleSelectionColor.getter()
{
  v1 = [*(*v0 + 16) multipleSelectionColor];

  return v1;
}

void UIListSeparatorConfiguration.multipleSelectionColor.setter(void *a1)
{
  sub_188D0A72C(a1, &selRef_setMultipleSelectionColor_);
}

void (*UIListSeparatorConfiguration.multipleSelectionColor.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) multipleSelectionColor];
  return sub_188FBCDF0;
}

void sub_188FBCDFC(void **a1, char a2, SEL *a3)
{
  v4 = *a1;
  v6 = *a1;
  if (a2)
  {
    v5 = v4;
    sub_188D0A72C(v5, a3);
  }

  else
  {
    sub_188D0A72C(v4, a3);
  }
}

id UIListSeparatorConfiguration.visualEffect.getter()
{
  v1 = [*(*v0 + 16) visualEffect];

  return v1;
}

uint64_t (*UIListSeparatorConfiguration.visualEffect.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) visualEffect];
  return sub_188FBCF0C;
}

uint64_t UIListSeparatorConfiguration.init(listAppearance:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_allocWithZone(UIListSeparatorConfiguration) initWithListAppearance_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

uint64_t UIListSeparatorConfiguration.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t (*UIListSeparatorConfiguration._visualEffect.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) visualEffect];
  return sub_188FBDA3C;
}

void sub_188FBD07C(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_188CCC2EC(v4);

    v3 = v2;
  }

  else
  {
    sub_188CCC2EC(*a1);
    v3 = v4;
  }
}

uint64_t UIListSeparatorConfiguration.customMirror.getter()
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

uint64_t sub_188FBD2AC()
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

uint64_t static UIListSeparatorConfiguration._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  [a1 copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188CE625C();
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a2 = result;
  return result;
}

uint64_t static UIListSeparatorConfiguration._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  [a1 copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188CE625C();
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  *a2 = v4;
  return 1;
}

uint64_t sub_188FBD5D0()
{
  [*(*v0 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188CE625C();
  swift_dynamicCast();
  return v2;
}

uint64_t sub_188FBD648(void *a1, uint64_t *a2)
{

  [a1 copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188CE625C();
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a2 = result;
  return result;
}

uint64_t sub_188FBD6F4(void *a1, uint64_t *a2)
{

  [a1 copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188CE625C();
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  *a2 = v4;
  return 1;
}

uint64_t sub_188FBD7A8()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    return *(v2 + 16);
  }

  [*(v2 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188CE625C();
  swift_dynamicCast();
  v3 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
  v4 = swift_allocObject();
  *(v4 + 16) = v6;

  *v0 = v4;
  return v3;
}

unint64_t sub_188FBD878()
{
  result = qword_1EA939230;
  if (!qword_1EA939230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939230);
  }

  return result;
}

unint64_t sub_188FBD8D0()
{
  result = qword_1EA939238;
  if (!qword_1EA939238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939238);
  }

  return result;
}

unint64_t keypath_getTm_1@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  result = sub_188FBC834([*(*a1 + 16) *a2], &v5);
  *a3 = v5;
  return result;
}

id keypath_setTm_2(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  v6 = *a1;
  v7 = sub_188FBD7A8();
  v8 = *a5;

  return [v7 v8];
}

id keypath_get_7Tm@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*(*a1 + 16) *a2];
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

id keypath_get_15Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) visualEffect];
  *a2 = result;
  return result;
}

uint64_t sub_188FBDA40(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BridgedAnimation();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(v3 + 16))(v5, v1, a1, v7);
  (*(v3 + 32))(v9, v5, a1);
  swift_getWitnessTable();
  return sub_18A4A6C98();
}

uint64_t UIBridgedAnimationState.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  if (!*(v7 + 16))
  {
    return (*(a4 + 16))(a3, a4);
  }

  v8 = sub_188A403F4(a3);
  if ((v9 & 1) == 0)
  {
    return (*(a4 + 16))(a3, a4);
  }

  sub_188A55598(*(v7 + 56) + 32 * v8, v11);
  sub_188A55538(v11, v12);
  sub_188A55538(v12, v11);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t UIBridgedAnimationState.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_188FBF004(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*UIBridgedAnimationState.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  UIBridgedAnimationState.subscript.getter(v17, v18, a4, a5);
  return sub_188FBDE58;
}

void sub_188FBDE58(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);
    sub_188FBF004(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_188FBF004((*a1)[8], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_188FBDF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v40 = a4;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BridgedVector();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = sub_18A4A7D38();
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v34 = *(v9 + 16);
  v35 = v9 + 16;
  v34(v11, a1, a3, v16);
  v41 = v9;
  (*(v9 + 32))(v14, v11, a3);
  sub_18A4A4DA8();
  v38 = sub_18A4A4D78();
  v42 = a3;
  v19 = sub_18A4A49C8();
  sub_188FBE310(v19);
  v22 = a2 + 16;
  v21 = *(a2 + 16);
  v20 = *(v22 + 8);
  v23 = *(v20 + 16);
  WitnessTable = swift_getWitnessTable();
  v23(v14, v43, v12, WitnessTable, v21, v20, a5);
  v25 = v39;
  v26 = *(v39 + 8);
  v26(v14, v12);
  sub_188FBE38C();
  v38(v44, 0);
  if ((*(v25 + 48))(v18, 1, v12) == 1)
  {
    (*(v36 + 8))(v18, v37);
    v27 = 1;
    v28 = v42;
    v29 = v40;
  }

  else
  {
    v30 = v40;
    v31 = v42;
    (v34)(v40, v18, v42);
    v26(v18, v12);
    v27 = 0;
    v28 = v31;
    v29 = v30;
  }

  return (*(v41 + 56))(v29, v27, 1, v28);
}

uint64_t sub_188FBE310(uint64_t a1)
{
  v2 = type metadata accessor for BridgedStateKey();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9A0](v2, a1, v2, WitnessTable);
}

uint64_t sub_188FBE38C()
{
  type metadata accessor for BridgedStateKey();
  swift_getWitnessTable();
  return sub_18A4A49E8();
}

uint64_t sub_188FBE40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v40 = a3;
  v39 = a2;
  v41 = a1;
  v42 = a5;
  v38 = sub_18A4A49C8();
  v8 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v33 - v9;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BridgedVector();
  v37 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = sub_18A4A7D38();
  v35 = *(v18 - 8);
  v36 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  v34 = *(v11 + 16);
  v34(v14, v41, a4, v19);
  v41 = v11;
  (*(v11 + 32))(v17, v14, a4);
  sub_18A4A4DA8();
  sub_18A4A4D88();
  v22 = v38;
  sub_188FBE310(v38);
  (*(v8 + 8))(v10, v22);
  v24 = *(v40 + 16);
  v23 = *(v40 + 24);
  v25 = *(v23 + 32);
  WitnessTable = swift_getWitnessTable();
  v25(v17, &v43, v15, WitnessTable, v24, v23, a6);

  v27 = v37;
  v28 = *(v37 + 8);
  v28(v17, v15);
  if ((*(v27 + 48))(v21, 1, v15) == 1)
  {
    (*(v35 + 8))(v21, v36);
    v29 = 1;
    v30 = v42;
  }

  else
  {
    v31 = v42;
    (v34)(v42, v21, a4);
    v28(v21, v15);
    v29 = 0;
    v30 = v31;
  }

  return (*(v41 + 56))(v30, v29, 1, a4);
}

uint64_t sub_188FBE7FC(uint64_t a1, uint64_t a2, void (*a3)(char *, void), uint64_t a4, uint64_t a5, double a6)
{
  v48 = a3;
  v10 = *(a5 - 8);
  v44 = a2;
  v45 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v13;
  v14 = type metadata accessor for BridgedVector();
  v49 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v42 - v15;
  v16 = sub_18A4A7D38();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  v20 = *(a4 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18CFE1B80](v52, a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939240);
  v25 = swift_dynamicCast();
  v26 = *(v20 + 56);
  if (v25)
  {
    v26(v19, 0, 1, a4);
    v42 = v24;
    v43 = v20;
    (*(v20 + 32))(v24, v19, a4);
    v27 = *(a4 + 24);
    v53 = *(a4 + 16);
    v28 = v53;
    v54 = v27;
    v29 = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v52);
    (*(*(v28 - 8) + 16))(boxed_opaque_existential_0, v24, v28);
    v31 = v45;
    (*(v45 + 16))(v12, v44, a5);
    v32 = v46;
    (*(v31 + 32))(v46, v12, a5);
    sub_18A4A4DA8();
    v48 = sub_18A4A4D78();
    v45 = v33;
    v34 = sub_18A4A49C8();
    sub_188FBE310(v34);
    v35 = v29;
    v36 = v29;
    v37 = v49;
    v38 = *(v35 + 24);
    WitnessTable = swift_getWitnessTable();
    v40 = v38(v52, v32, v50, v14, WitnessTable, v28, v36, a6);
    (*(v37 + 8))(v32, v14);
    sub_188FBE38C();
    v48(v51, 0);
    (*(v43 + 8))(v42, a4);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
  }

  else
  {
    v26(v19, 1, 1, a4);
    (*(v17 + 8))(v19, v16);
    v40 = 0;
  }

  return v40 & 1;
}

uint64_t sub_188FBECA0()
{
  sub_18A4A8888();
  sub_18A4A71A8();
  return sub_18A4A88E8();
}

uint64_t sub_188FBED30()
{
  sub_18A4A8888();
  sub_188FBEC90();
  return sub_18A4A88E8();
}

unint64_t sub_188FBED74@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for BridgedVector();
  swift_getWitnessTable();
  result = sub_188E8EA88(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_188FBEDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v6);
  return (*(v5 + 32))(a3, v8, a2);
}

uint64_t sub_188FBEEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A8408();
  return (*(v4 + 32))(a2, v6, a1);
}

_OWORD *sub_188FBF004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  return sub_188F289F4(v9, a4);
}

uint64_t sub_188FBF0E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_188FBF1C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_188FBF308(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_188FBF52C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_188FBF578()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_18A64BFB0;
  *(v0 + 32) = &type metadata for _GlassBackgroundStyleTrait;
  *(v0 + 40) = &off_1ED48F0A8;
  qword_1EA994F40 = v0;
  return result;
}

void _UISceneHostingController.send<A>(_:for:responder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = static UISceneConnectionOptionDefinition.createAction(payload:responder:)(a1, a3);
  if (!v4)
  {
    v7 = v6;
    v8 = [(_UISceneHostingController *)v5 _fbScene];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64B710;
    *(inited + 32) = v7;
    v10 = v7;
    sub_188DBF8A0(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_188A34624(0, &qword_1ED48FD98);
    sub_188D06B5C();
    v11 = sub_18A4A7798();

    [v8 sendActions_];
  }
}

void sub_188FBF708(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_18A4A7F68())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A48);
      v3 = sub_18A4A8088();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_18A4A7F68();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_188E4983C(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_18A4A7C78();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_188A34624(0, &qword_1EA9342F0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_18A4A7C88();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_18A4A7C78();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_188A34624(0, &qword_1EA9342F0);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_18A4A7C88();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_188FBF9F8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_18A4A7F68())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AD0);
      v3 = sub_18A4A8088();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_18A4A7F68();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_188E49F28(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_18A4A7C78();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_188A34624(0, &qword_1ED48FC30);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_18A4A7C88();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_18A4A7C78();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_188A34624(0, &qword_1ED48FC30);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_18A4A7C88();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_188FBFCE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A38);
    v3 = sub_18A4A8088();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v10);
      result = sub_18A4A88E8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_188FBFE24(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_18A4A7F68())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349E8);
      v3 = sub_18A4A8088();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_18A4A7F68();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_188E49300(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_18A4A7C78();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_188A34624(0, &qword_1ED48F680);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_18A4A7C88();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_18A4A7C78();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_188A34624(0, &qword_1ED48F680);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_18A4A7C88();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_188FC0114(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_18A4A7F68())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A20);
      v3 = sub_18A4A8088();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_18A4A7F68();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_188E4ABC8(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_18A4A7C78();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_188A34624(0, &qword_1EA9310A8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_18A4A7C88();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_18A4A7C78();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_188A34624(0, &qword_1EA9310A8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_18A4A7C88();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_188FC042C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_18A4A8088();
    v5 = 0;
    v6 = v4 + 56;
    v26 = v2;
    v27 = a1 + 32;
    v7 = v2;
    while (1)
    {
      v8 = *(v27 + 8 * v5);
      sub_18A4A7288();
      sub_18A4A8888();
      v28 = v8;
      sub_18A4A7348();
      v9 = sub_18A4A88E8();

      v11 = -1 << *(v4 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v6 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = sub_18A4A7288();
        v19 = v18;
        if (v17 == sub_18A4A7288() && v19 == v20)
        {

LABEL_4:
          v7 = v26;
          goto LABEL_5;
        }

        v22 = sub_18A4A86C8();

        if (v22)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v6 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v7 = v26;
LABEL_15:
      *(v6 + 8 * v13) = v15 | v14;
      *(*(v4 + 48) + 8 * v12) = v28;
      v23 = *(v4 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        __break(1u);
        return result;
      }

      *(v4 + 16) = v25;
LABEL_5:
      if (++v5 == v7)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

char *sub_188FC0620(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = [UIWindowScene contextIdentifier]_0();
  v12 = type metadata accessor for _UISharedTextureViewport();
  v13 = objc_allocWithZone(v12);
  *&v5[OBJC_IVAR____TtC5UIKit38_UIIntelligenceInProcessNoisyLightView_lightView] = sub_188DF1E3C(v11, sub_188FC061C, 0, a1, a2, a3, a4);
  v14 = [UIWindowScene contextIdentifier]_0();
  v15 = objc_allocWithZone(v12);
  *&v5[OBJC_IVAR____TtC5UIKit38_UIIntelligenceInProcessNoisyLightView_noiseView] = sub_188DF1E3C(v14, sub_188FC0618, 0, a1, a2, a3, a4);
  v23.receiver = v5;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = *&v16[OBJC_IVAR____TtC5UIKit38_UIIntelligenceInProcessNoisyLightView_noiseView];
  v18 = v16;
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC5UIKit38_UIIntelligenceInProcessNoisyLightView_lightView;
  [v18 addSubview_];
  v20 = [*&v18[v19] layer];
  v21 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  [v20 setCompositingFilter_];

  [v18 setClipsToBounds_];
  return v18;
}

char *sub_188FC099C(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18A64B710;
  *(v8 + 32) = [objc_opt_self() whiteColor];
  *&v15 = v8;
  *(&v15 + 1) = 10;
  v16 = xmmword_18A659020;
  v17 = xmmword_18A659030;
  v18 = 0x3FD3333333333333;
  LOBYTE(v19) = 0;
  v20 = 0x4040000000000000;
  LODWORD(v21) = 0;
  v9 = objc_allocWithZone(type metadata accessor for _UICloudChamber());
  v10 = _UICloudChamber.init(frame:configuration:)(&v15, a1, a2, a3, a4);
  v11 = objc_allocWithZone(UIColor);
  v12 = v10;
  v13 = [v11 initWithWhite:1.0 alpha:{0.2, v15, *(&v15 + 1), v16, v17, v18, v19, v20, v21}];
  [v12 setBackgroundColor_];

  return v12;
}

void __swiftcall _UIDirectionalLightPalette.init(_:)(_UIDirectionalLightPalette *__return_ptr retstr, Swift::OpaquePointer a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_188A34624(0, qword_1ED4913C0);
  v3 = sub_18A4A7518();

  [v2 initWithColors_];
}

{
  v9 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v2 = *(a2._rawValue + 2);
  if (v2)
  {
    v3 = (a2._rawValue + 40);
    do
    {
      v4 = *v3;
      v5 = *(v3 - 1);
      MEMORY[0x18CFE2450]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      MEMORY[0x18CFE2450]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_188A34624(0, qword_1ED4913C0);
  v7 = sub_18A4A7518();

  sub_188A34624(0, &qword_1ED48FD80);
  v8 = sub_18A4A7518();

  [v6 initWithColors:v7 locations:v8];
}

id _UIDirectionalLightPalette.init(_:)()
{
  v1 = objc_allocWithZone(_UIColorPalette);
  sub_188A34624(0, qword_1ED4913C0);
  v2 = sub_18A4A7518();

  v3 = [v1 initWithColors_];

  *&v0[OBJC_IVAR____UIDirectionalLightPalette_colorPalette] = v3;
  v5.receiver = v0;
  v5.super_class = _UIDirectionalLightPalette;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_188FC0EB4(void *a1)
{
  v2 = [a1 locations];
  v3 = [a1 colors];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      sub_188A34624(0, qword_1ED4913C0);
      sub_18A4A7548();
      v4 = sub_18A4A7518();
    }

    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithColors:v4 locations:v2];
  }

  else
  {
    if (!v3)
    {
      sub_188A34624(0, qword_1ED4913C0);
      sub_18A4A7548();
      v4 = sub_18A4A7518();
    }

    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithColors_];
    v2 = v4;
  }

  return v5;
}

void __swiftcall _UIDirectionalLightPalette.init(__colors:locations:)(_UIDirectionalLightPalette *__return_ptr retstr, Swift::OpaquePointer __colors, Swift::OpaquePointer locations)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_188A34624(0, qword_1ED4913C0);
  v4 = sub_18A4A7518();

  sub_188A34624(0, &qword_1ED48FD80);
  v5 = sub_18A4A7518();

  [v3 initWithColors:v4 locations:v5];
}

id _UIDirectionalLightPalette.init(__colors:locations:)()
{
  v1 = objc_allocWithZone(_UIColorPalette);
  sub_188A34624(0, qword_1ED4913C0);
  v2 = sub_18A4A7518();

  sub_188A34624(0, &qword_1ED48FD80);
  v3 = sub_18A4A7518();

  v4 = [v1 initWithColors:v2 locations:v3 colorSpaceName:0];

  *&v0[OBJC_IVAR____UIDirectionalLightPalette_colorPalette] = v4;
  v6.receiver = v0;
  v6.super_class = _UIDirectionalLightPalette;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_188FC12E4(uint64_t a1, uint64_t a2, SEL *a3)
{
  type metadata accessor for _UIDirectionalLightPalette(a1);
  v4 = [objc_opt_self() *a3];
  v5 = sub_188FC0EB4(v4);

  return v5;
}

id sub_188FC133C(SEL *a1)
{
  type metadata accessor for _UIDirectionalLightPalette(a1);
  v2 = [objc_opt_self() *a1];
  return sub_188FC0EB4(v2);
}

id _UIDirectionalLightConfiguration.colorPalette.getter()
{
  v1 = OBJC_IVAR____UIDirectionalLightConfiguration_colorPalette;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void _UIDirectionalLightConfiguration.colorPalette.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____UIDirectionalLightConfiguration_colorPalette;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t _UIDirectionalLightConfiguration.direction.getter()
{
  v1 = OBJC_IVAR____UIDirectionalLightConfiguration_direction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t _UIDirectionalLightConfiguration.direction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____UIDirectionalLightConfiguration_direction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t _UIDirectionalLightConfiguration.reverse.getter()
{
  v1 = OBJC_IVAR____UIDirectionalLightConfiguration_reverse;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t _UIDirectionalLightConfiguration.reverse.setter(char a1)
{
  v3 = OBJC_IVAR____UIDirectionalLightConfiguration_reverse;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double _UIDirectionalLightConfiguration.duration.getter()
{
  v1 = OBJC_IVAR____UIDirectionalLightConfiguration_duration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t _UIDirectionalLightConfiguration.duration.setter(double a1)
{
  v3 = OBJC_IVAR____UIDirectionalLightConfiguration_duration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id _UIDirectionalLightConfiguration.init(__colorPalette:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____UIDirectionalLightConfiguration_colorPalette) = a1;
  *(v1 + OBJC_IVAR____UIDirectionalLightConfiguration_direction) = 0;
  *(v1 + OBJC_IVAR____UIDirectionalLightConfiguration_reverse) = 0;
  *(v1 + OBJC_IVAR____UIDirectionalLightConfiguration_duration) = 0x4014000000000000;
  v3.super_class = _UIDirectionalLightConfiguration;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t _UIDirectionalLightConfiguration.hash.getter()
{
  v0 = sub_188FC19FC();
  v1 = MEMORY[0x18CFE2340](v0);

  return v1;
}

uint64_t sub_188FC19FC()
{
  v1 = v0;
  v2 = [v0 colorPalette];
  v3 = [v2 hash];

  v8 = v3;
  v9 = sub_18A4A8618();
  v4 = 0xE100000000000000;
  MEMORY[0x18CFE22D0](45, 0xE100000000000000);
  v5 = [v1 direction];
  if (v5 <= 1)
  {
    if (!v5)
    {
      v6 = 104;
      goto LABEL_13;
    }

    if (v5 == 1)
    {
      v6 = 118;
      goto LABEL_13;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v4 = 0xE200000000000000;
        v6 = 24932;
        goto LABEL_13;
      case 3:
        v4 = 0xE200000000000000;
        v6 = 25700;
        goto LABEL_13;
      case 4:
        v6 = 97;
        goto LABEL_13;
    }
  }

  v6 = 63;
LABEL_13:
  MEMORY[0x18CFE22D0](v6, v4);

  if ([v1 reverse])
  {
    MEMORY[0x18CFE22D0](1986359853, 0xE400000000000000);
  }

  MEMORY[0x18CFE22D0](45, 0xE100000000000000);
  [v1 duration];
  sub_18A4A7718();
  MEMORY[0x18CFE22D0](0, 0xE000000000000000);

  return v9;
}

uint64_t _UIDirectionalLightConfiguration.isEqual(_:)(uint64_t a1)
{
  v1 = sub_188C85D28(a1, v9);
  if (!v10)
  {
    sub_188A553EC(v9);
    goto LABEL_7;
  }

  type metadata accessor for _UIDirectionalLightConfiguration(v1);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v6 = 0;
    return v6 & 1;
  }

  v2 = sub_188FC19FC();
  v4 = v3;
  if (v2 == sub_188FC19FC() && v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_18A4A86C8();
  }

  return v6 & 1;
}

id sub_188FC1D14(void *a1, SEL *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a2];

  return v3;
}

id _UIDirectionalLightConfiguration.init(__palette:)(char *a1)
{
  v3 = *&a1[OBJC_IVAR____UIDirectionalLightPalette_colorPalette];
  *(v1 + OBJC_IVAR____UIDirectionalLightConfiguration_colorPalette) = v3;
  *(v1 + OBJC_IVAR____UIDirectionalLightConfiguration_direction) = 0;
  *(v1 + OBJC_IVAR____UIDirectionalLightConfiguration_reverse) = 0;
  *(v1 + OBJC_IVAR____UIDirectionalLightConfiguration_duration) = 0x4014000000000000;
  v4 = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

_BYTE *sub_188FC1E90(void *a1, uint64_t a2, char a3, SEL *a4, double a5)
{
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a4];

  v10 = OBJC_IVAR____UIDirectionalLightConfiguration_direction;
  swift_beginAccess();
  *&v9[v10] = a2;
  v11 = OBJC_IVAR____UIDirectionalLightConfiguration_reverse;
  swift_beginAccess();
  v9[v11] = a3;
  v12 = OBJC_IVAR____UIDirectionalLightConfiguration_duration;
  swift_beginAccess();
  *&v9[v12] = a5;
  return v9;
}

void _UIDirectionalLightConfiguration.palette.setter(void *a1)
{
  v3 = [v1 palette];
  v4 = *&v3[OBJC_IVAR____UIDirectionalLightPalette_colorPalette];

  [v1 setColorPalette_];
}

BOOL sub_188FC21F8(double *a1, double *a2)
{
  v3 = *a2;
  if (vabdd_f64(*v2, *a1) > *a2)
  {
    return 0;
  }

  if (vabdd_f64(v2[1], a1[1]) > v3)
  {
    return 0;
  }

  if (vabdd_f64(v2[2], a1[2]) <= v3)
  {
    return vabdd_f64(v2[3], a1[3]) <= v3;
  }

  return 0;
}

double sub_188FC2268(float64x2_t *a1)
{
  v2 = vdivq_f64(vabdq_f64(*v1, *a1), vdupq_n_s64(0x3F50624DD2F1A9FCuLL));
  result = vabdd_f64(v1[1].f64[0], a1[1].f64[0]) / 0.001;
  v4 = vabdd_f64(v1[1].f64[1], a1[1].f64[1]) / 0.001;
  v5 = v2.f64[1];
  if (v2.f64[0] > v2.f64[1])
  {
    v5 = v2.f64[0];
  }

  if (v5 > result)
  {
    result = v5;
  }

  if (result <= v4)
  {
    return v4;
  }

  return result;
}

float64x2_t sub_188FC22F4(float64x2_t *a1)
{
  result = vmulq_f64(*a1, *v1);
  v3 = vmulq_f64(a1[1], v1[1]);
  *v1 = result;
  v1[1] = v3;
  return result;
}

float64x2_t sub_188FC2318@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vaddq_f64(*a1, *a2);
  v4 = vaddq_f64(a1[1], a2[1]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

unint64_t sub_188FC2344()
{
  result = qword_1EA92F2E8;
  if (!qword_1EA92F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F2E8);
  }

  return result;
}

unint64_t sub_188FC2398(uint64_t a1)
{
  result = sub_188F0D468();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188FC23C4()
{
  result = qword_1EA92F2E0;
  if (!qword_1EA92F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F2E0);
  }

  return result;
}

unint64_t sub_188FC2418(uint64_t a1)
{
  result = sub_188FC2440();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188FC2440()
{
  result = qword_1EA92F2D0;
  if (!qword_1EA92F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F2D0);
  }

  return result;
}

uint64_t sub_188FC2494()
{

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_188FC24E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_188FC2530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188FC2570(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64);
  v13 = *(v7 + 80);
  v14 = *(*(v6 - 8) + 64);
  if (!v10)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 < a2)
  {
    v15 = ((v14 + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v16 = a2 - v11;
    v17 = v15 & 0xFFFFFFFC;
    if ((v15 & 0xFFFFFFFC) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = v16 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v20)
    {
      v21 = *(a1 + v15);
      if (v21)
      {
LABEL_24:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          v23 = *a1;
        }

        else
        {
          v23 = 0;
        }

        return v11 + (v23 | v22) + 1;
      }
    }
  }

  if (v10 < 2)
  {
    return 0;
  }

  if (v5 >= v9)
  {
    v25 = (*(v4 + 48))(a1, v5);
  }

  else
  {
    v25 = (*(v8 + 48))((((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13, v9, v6);
  }

  if (v25 >= 2)
  {
    return v25 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_188FC2768(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + *(*(v8 - 8) + 64);
  v16 = 3;
  if (!v13)
  {
    v16 = 4;
  }

  v17 = ((v16 + v15) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v14 < a3)
  {
    v18 = a3 - v14;
    if (((v16 + v15) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (v17)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v14;
    }

    if (v17)
    {
      v22 = ~v14 + a2;
      v23 = a1;
      bzero(a1, v17);
      a1 = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v17) = v21;
      }

      else
      {
        *(a1 + v17) = v21;
      }
    }

    else if (v5)
    {
      *(a1 + v17) = v21;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v17) = 0;
  }

  else if (v5)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v13 >= 2)
  {
    if (a2 >= v13)
    {
      if (v15 <= 3)
      {
        v27 = ~(-1 << (8 * v15));
      }

      else
      {
        v27 = -1;
      }

      if (v15)
      {
        v28 = v27 & (a2 - v13);
        if (v15 <= 3)
        {
          v29 = v15;
        }

        else
        {
          v29 = 4;
        }

        v30 = a1;
        bzero(a1, v15);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v30 = v28;
            *(v30 + 2) = BYTE2(v28);
          }

          else
          {
            *v30 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v30 = v28;
        }

        else
        {
          *v30 = v28;
        }
      }
    }

    else if (v7 >= v10)
    {
      v31 = *(v6 + 56);

      v31();
    }

    else
    {
      v24 = *(v9 + 56);
      v25 = (((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
      v26 = a2 + 1;

      v24(v25, v26, v10, v8);
    }
  }
}

void sub_188FC2A54()
{
  sub_18A4A7D08();

  JUMPOUT(0x18CFE3100);
}

uint64_t sub_188FC2AE4()
{
  sub_188FC2A54();

  return swift_deallocClassInstance();
}

uint64_t sub_188FC2B14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t UIModifierTransitionComponent.inputModel(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t UIModifierTransitionComponent.outputModel(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t static UISplitViewControllerColumn._inspector.getter()
{
  if (qword_1EA930920 != -1)
  {
    swift_once();
  }

  return qword_1EA930928;
}

void sub_188FC2D3C(uint64_t a1, unint64_t a2)
{
  v4 = sub_18A4A4378();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A4368();

  v8 = sub_18A4A4358();
  v9 = sub_18A4A7988();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1891D69C0(a1, a2, &v17);
    _os_log_impl(&dword_188A29000, v8, v9, "%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x18CFEA5B0](v11, -1, -1);
    MEMORY[0x18CFEA5B0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = *MEMORY[0x1E695D940];
  v13 = objc_allocWithZone(MEMORY[0x1E695DF30]);
  v14 = sub_18A4A7258();
  v15 = [v13 initWithName:v12 reason:v14 userInfo:0];

  [v15 raise];
  __break(1u);
}

uint64_t sub_188FC31AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    MEMORY[0x18CFE37E0](v3);
    return sub_18A4A7C98();
  }

  else
  {
    MEMORY[0x18CFE37E0](a3 != 0);
    sub_18A4A7288();
    sub_18A4A7348();
  }
}

uint64_t sub_188FC3254()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  sub_188FC31AC(v4, v1, v2);
  return sub_18A4A88E8();
}

uint64_t sub_188FC32B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  sub_188FC31AC(v4, v1, v2);
  return sub_18A4A88E8();
}

uint64_t sub_188FC3314(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      sub_188FC2D3C(0xD000000000000067, 0x800000018A69AB30);
    }

    swift_beginAccess();
    v5 = sub_18903AC24(a1, v2[5]);
    swift_endAccess();
    if (!v5)
    {
      return 0;
    }

    return 1;
  }

  if (a2)
  {
    swift_beginAccess();
    if (!*(v2[4] + 16))
    {
      goto LABEL_13;
    }

    sub_188B00858(a1);
    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  swift_beginAccess();
  if (*(v2[3] + 16))
  {
    sub_188B00858(a1);
    if (v4)
    {
LABEL_11:
      swift_endAccess();
      return 1;
    }
  }

LABEL_13:
  swift_endAccess();
  return 0;
}

void *sub_188FC3424()
{
  [*(v0 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &unk_1EA931270);
  swift_dynamicCast();
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_beginAccess();
  v2 = *(v0 + 32);
  swift_beginAccess();
  v3 = *(v0 + 40);
  swift_beginAccess();
  v4 = *(v0 + 48);
  swift_beginAccess();
  v5 = *(v0 + 56);
  v6 = swift_allocObject();
  v6[2] = v8;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = v3;
  v6[6] = v4;
  v6[7] = v5;

  return v6;
}

uint64_t sub_188FC35AC(uint64_t a1)
{
  [(_UIKeyCommandPrioritySet *)v1[2] unionSet:?];
  swift_beginAccess();
  v3 = v1[3];
  swift_beginAccess();
  v4 = *(a1 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = v3;
  sub_188FCAB84(v4, sub_188FCDA50, 0, isUniquelyReferenced_nonNull_native, v22);

  v1[3] = v22[0];

  swift_beginAccess();
  v6 = v1[4];
  swift_beginAccess();
  v7 = *(a1 + 32);

  v8 = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v6;
  sub_188FCAE24(v7, sub_188FCDA50, 0, v8, v21);

  v1[4] = v21[0];

  swift_beginAccess();
  v9 = v1[5];
  swift_beginAccess();
  v20[0] = v9;

  sub_188FC9D68(v10, sub_188E1897C, 0, v20);
  v1[5] = v20[0];

  swift_beginAccess();
  v11 = v1[6];
  swift_beginAccess();
  v12 = *(a1 + 48);

  v13 = swift_isUniquelyReferenced_nonNull_native();
  v19[0] = v11;
  sub_188FCB36C(v12, sub_188FC9ED0, 0, v13, v19);

  v1[6] = v19[0];

  swift_beginAccess();
  v14 = v1[7];
  swift_beginAccess();
  v15 = *(a1 + 56);

  v16 = swift_isUniquelyReferenced_nonNull_native();
  v18 = v14;
  sub_188FCB610(v15, sub_188FC9E80, 0, v16, &v18);

  v1[7] = v18;
}

uint64_t sub_188FC38D8(uint64_t a1)
{
  [(_UIKeyCommandPrioritySet *)v1[2] minusSet:?];
  swift_beginAccess();

  sub_188FCB8DC(v3, sub_188FCAB7C, a1, sub_18914D928);
  v5 = v4;

  v1[3] = v5;

  swift_beginAccess();

  sub_188FCB8DC(v6, sub_188FCBA7C, a1, sub_18914D914);
  v8 = v7;

  v1[4] = v8;

  swift_beginAccess();

  v1[5] = sub_188FCA41C(v9, sub_188FCBBF0, a1);

  swift_beginAccess();

  v11 = sub_188FCBEF0(v10, sub_188FCBBF8, a1, sub_188FCBC00, sub_188FCBC00);

  v1[6] = v11;

  swift_beginAccess();

  v13 = sub_188FCBEF0(v12, sub_188FCBD68, a1, sub_188FCBD70, sub_188FCBD70);

  v1[7] = v13;
}

uint64_t sub_188FC3B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(*(a3 + 24) + 16))
  {
    sub_188B00858(a1);
    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  swift_endAccess();
  return v6 & 1;
}

uint64_t sub_188FC3BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(*(a3 + 32) + 16))
  {
    sub_188B00858(a1);
    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  swift_endAccess();
  return v6 & 1;
}

BOOL sub_188FC3C10(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = sub_18903AC24(a1, *(a3 + 40));
  swift_endAccess();
  if (v5)
  {
  }

  return v5 == 0;
}

uint64_t sub_188FC3C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(*(a3 + 48) + 16))
  {
    sub_188B00858(a1);
    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  swift_endAccess();
  return v6 & 1;
}

uint64_t sub_188FC3CE4(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(*(a4 + 56) + 16))
  {
    sub_188E8B480(a1, a2);
    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  swift_endAccess();
  return v8 & 1;
}

void *sub_188FC3D60(uint64_t a1)
{
  v3 = sub_188FC3424();
  v4 = [(_UIKeyCommandPrioritySet *)*(v1 + 16) intersection:?];
  v5 = v3[2];
  v3[2] = v4;

  swift_beginAccess();

  sub_188FCB8DC(v6, sub_188FCD764, a1, sub_18914D928);
  v8 = v7;

  swift_beginAccess();
  v3[3] = v8;

  swift_beginAccess();

  sub_188FCB8DC(v9, sub_188FCD76C, a1, sub_18914D914);
  v11 = v10;

  swift_beginAccess();
  v3[4] = v11;

  swift_beginAccess();

  v13 = sub_188FCA41C(v12, sub_188FCD774, a1);
  swift_beginAccess();
  v3[5] = v13;

  swift_beginAccess();

  v15 = sub_188FCBEF0(v14, sub_188FCD77C, a1, sub_188FCBC00, sub_188FCBC00);

  swift_beginAccess();
  v3[6] = v15;

  swift_beginAccess();

  v17 = sub_188FCBEF0(v16, sub_188FCD784, a1, sub_188FCBD70, sub_188FCBD70);

  swift_beginAccess();
  v3[7] = v17;

  return v3;
}

uint64_t sub_188FC404C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(*(a3 + 24) + 16))
  {
    sub_188B00858(a1);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6 & 1;
}

uint64_t sub_188FC40B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(*(a3 + 32) + 16))
  {
    sub_188B00858(a1);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6 & 1;
}

BOOL sub_188FC4124(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = sub_18903AC24(a1, *(a3 + 40));
  swift_endAccess();
  if (v5)
  {
  }

  return v5 != 0;
}

uint64_t sub_188FC418C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(*(a3 + 48) + 16))
  {
    sub_188B00858(a1);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6 & 1;
}

uint64_t sub_188FC41F8(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(*(a4 + 56) + 16))
  {
    sub_188E8B480(a1, a2);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8 & 1;
}

BOOL sub_188FC4274()
{
  if ([(_UIKeyCommandPrioritySet *)v0[2] count])
  {
    return 0;
  }

  swift_beginAccess();
  if (*(v0[3] + 16))
  {
    return 0;
  }

  swift_beginAccess();
  if (*(v0[4] + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v2 = v0[5];
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (!*(v2 + 16))
    {
      goto LABEL_9;
    }

    return 0;
  }

  v3 = sub_18A4A7F68();

  if (v3)
  {
    return 0;
  }

LABEL_9:
  swift_beginAccess();
  if (*(v0[6] + 16))
  {
    return 0;
  }

  swift_beginAccess();
  return *(v0[7] + 16) == 0;
}

uint64_t sub_188FC4390()
{

  return swift_deallocClassInstance();
}

uint64_t sub_188FC43FC(unint64_t a1, id a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v157 = &v156 - v7;
  if (a1 >> 62)
  {
    goto LABEL_127;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_128:

    return a3;
  }

LABEL_3:
  v9 = 0;
  v163 = a1 & 0xC000000000000001;
  v164 = a1;
  v158 = a1 + 32;
  v159 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = &selRef_chevronSymbolConfiguration;
  v160 = a2;
  v161 = a3;
  v162 = v8;
  while (1)
  {
    if (v163)
    {
      v13 = sub_188E49F28(v9, a1);
    }

    else
    {
      if (v9 >= *(v159 + 16))
      {
        goto LABEL_123;
      }

      v13 = *(v158 + 8 * v9);
    }

    v14 = v13;
    v15 = __OFADD__(v9++, 1);
    if (v15)
    {
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
      v8 = sub_18A4A7F68();
      if (!v8)
      {
        goto LABEL_128;
      }

      goto LABEL_3;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    v171 = v9;
    if (!v16)
    {
      break;
    }

    v17 = v16;
    v18 = [v16 identifier];
    swift_beginAccess();
    v19 = *(a3 + 24);
    if (*(v19 + 16))
    {
      v20 = sub_188B00858(v18);
      if (v21)
      {
        v148 = *(*(v19 + 56) + 8 * v20);
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9393C0);
        a3 = swift_allocObject();
        *(a3 + 16) = xmmword_18A64BFB0;
        *(a3 + 32) = v148;
        *(a3 + 40) = v17;
        *(a3 + 48) = 0;
        v149 = v148;

        return a3;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v22 = v18;
    v169 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v173 = *(a3 + 24);
    *(a3 + 24) = 0x8000000000000000;
    sub_188E9FCE4(v17, v22, isUniquelyReferenced_nonNull_native);

    *(a3 + 24) = v173;
    swift_endAccess();
    swift_beginAccess();
    v24 = v22;
    v25 = a2;
    sub_188F28AF8(a2, v22, 0);
    swift_endAccess();
    v26 = [v17 v10[33]];
    sub_188A34624(0, &qword_1ED48FC30);
    v27 = v10;
    v28 = sub_18A4A7548();

    v29 = v24;
    a3 = sub_188FC43FC(v28, v22, a3);
    v168 = v30;
    v170 = v31;
    v33 = v32;

    v167 = v29;

    if (v33)
    {

      return a3;
    }

    v166 = a3;
    v34 = [v17 identifier];
    v35 = [v17 v27 + 632];
    v36 = sub_18A4A7548();

    if (v36 >> 62)
    {
      a3 = sub_18A4A7F68();
    }

    else
    {
      a3 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v164;
    v165 = v34;
    if (a3)
    {
      v174 = MEMORY[0x1E69E7CC0];
      sub_188E6D324(0, a3 & ~(a3 >> 63), 0);
      if ((a3 & 0x8000000000000000) == 0)
      {
        v37 = 0;
        v38 = v174;
        while (1)
        {
          v39 = (v36 & 0xC000000000000001) != 0 ? sub_188E49F28(v37, v36) : *(v36 + 8 * v37 + 32);
          v40 = v39;
          objc_opt_self();
          v41 = swift_dynamicCastObjCClass();
          if (v41)
          {
            break;
          }

          objc_opt_self();
          v41 = swift_dynamicCastObjCClass();
          if (v41)
          {
            v42 = 1;
            goto LABEL_27;
          }

          objc_opt_self();
          v41 = swift_dynamicCastObjCClass();
          if (!v41)
          {
            v42 = 3;
            goto LABEL_29;
          }

          v42 = 2;
          v43 = &selRef__identifier;
LABEL_28:
          v44 = [v41 *v43];

          v40 = v44;
LABEL_29:
          v174 = v38;
          v46 = *(v38 + 16);
          v45 = *(v38 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_188E6D324((v45 > 1), v46 + 1, 1);
            v38 = v174;
          }

          ++v37;
          *(v38 + 16) = v46 + 1;
          v47 = v38 + 16 * v46;
          *(v47 + 32) = v40;
          *(v47 + 40) = v42;
          if (a3 == v37)
          {

            a2 = v160;
            a1 = v164;
            goto LABEL_4;
          }
        }

        v42 = 0;
LABEL_27:
        v43 = &selRef_identifier;
        goto LABEL_28;
      }

      goto LABEL_124;
    }

    v38 = MEMORY[0x1E69E7CC0];
LABEL_4:
    a3 = v161;
    swift_beginAccess();
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v173 = *(a3 + 48);
    *(a3 + 48) = 0x8000000000000000;
    v12 = v165;
    sub_188E9FA68(v38, v165, v11);

    *(a3 + 48) = v173;
    swift_endAccess();

    sub_188FCAB04(v166, v168, v170, 0);
    v8 = v162;
    v9 = v171;
    v10 = &selRef_chevronSymbolConfiguration;
LABEL_5:
    if (v9 == v8)
    {
      goto LABEL_128;
    }
  }

  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    v49 = v48;
    v50 = [v48 identifier];
    swift_beginAccess();
    v51 = *(a3 + 32);
    if (*(v51 + 16))
    {
      v52 = sub_188B00858(v50);
      if (v53)
      {
        v150 = *(*(v51 + 56) + 8 * v52);
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9393C0);
        a3 = swift_allocObject();
        *(a3 + 16) = xmmword_18A64BFB0;
        *(a3 + 32) = v150;
        *(a3 + 40) = v49;
        *(a3 + 48) = 1;
        v151 = v150;

        return a3;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v54 = v14;
    v55 = v50;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v173 = *(a3 + 32);
    v57 = v173;
    *(a3 + 32) = 0x8000000000000000;
    v58 = sub_188B00858(v55);
    v60 = v57[2];
    v61 = (v59 & 1) == 0;
    v15 = __OFADD__(v60, v61);
    v62 = v60 + v61;
    if (v15)
    {
      goto LABEL_125;
    }

    v63 = v59;
    if (v57[3] >= v62)
    {
      if ((v56 & 1) == 0)
      {
        v133 = v58;
        sub_188FA4758();
        v58 = v133;
      }
    }

    else
    {
      sub_1890BE214(v62, v56);
      v58 = sub_188B00858(v55);
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_137;
      }
    }

    v10 = &selRef_chevronSymbolConfiguration;
    v72 = v173;
    if (v63)
    {
      v73 = v173[7];
      v74 = *(v73 + 8 * v58);
      *(v73 + 8 * v58) = v49;
    }

    else
    {
      v173[(v58 >> 6) + 8] |= 1 << v58;
      *(v72[6] + 8 * v58) = v55;
      *(v72[7] + 8 * v58) = v49;
      v75 = v72[2];
      v15 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v15)
      {
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
        sub_188A34624(0, &qword_1EA931300);
        sub_18A4A87A8();
        __break(1u);
LABEL_136:
        sub_18A4A87A8();
        __break(1u);
LABEL_137:
        _s3__C10IdentifierVMa_0(0);
        result = sub_18A4A87A8();
        __break(1u);
        return result;
      }

      v72[2] = v76;
    }

    *(a3 + 32) = v72;
    swift_endAccess();
    swift_beginAccess();
    if (a2)
    {
      v77 = a2;
      v78 = v55;
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v80 = a3;
      a3 = v79;
      v173 = *(v80 + 56);
      v81 = v173;
      v82 = sub_188E8B480(v55, 1u);
      v84 = v81[2];
      v85 = (v83 & 1) == 0;
      v15 = __OFADD__(v84, v85);
      v86 = v84 + v85;
      if (v15)
      {
        goto LABEL_126;
      }

      v87 = v83;
      if (v81[3] >= v86)
      {
        if ((a3 & 1) == 0)
        {
          v134 = v82;
          sub_188FA48D0();
          v82 = v134;
        }
      }

      else
      {
        sub_1890BE4F0(v86, a3);
        v82 = sub_188E8B480(v55, 1u);
        if ((v87 & 1) != (v88 & 1))
        {
          goto LABEL_136;
        }
      }

      a3 = v161;
      v95 = v173;
      if (v87)
      {
        v96 = v173[7];
        v97 = *(v96 + 8 * v82);
        *(v96 + 8 * v82) = v77;
      }

      else
      {
        v173[(v82 >> 6) + 8] |= 1 << v82;
        v98 = v95[6] + 16 * v82;
        *v98 = v55;
        *(v98 + 8) = 1;
        *(v95[7] + 8 * v82) = v77;
        v99 = v95[2];
        v15 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v15)
        {
          goto LABEL_132;
        }

        v95[2] = v100;
      }

      *(a3 + 56) = v95;
      v10 = &selRef_chevronSymbolConfiguration;
    }

    else
    {
      v89 = v55;
      v90 = sub_188E8B480(v55, 1u);
      if (v91)
      {
        v92 = v90;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v94 = *(a3 + 56);
        v173 = v94;
        if ((v93 & 1) == 0)
        {
          sub_188FA48D0();
          v94 = v173;
        }

        sub_188F9E3EC(v92, v94);
        *(a3 + 56) = v94;
      }

      else
      {
      }
    }

    swift_endAccess();

    goto LABEL_113;
  }

  objc_opt_self();
  v65 = swift_dynamicCastObjCClass();
  if (!v65)
  {

    a2 = v160;
    goto LABEL_5;
  }

  v66 = v65;
  v67 = [v65 _identifier];
  swift_beginAccess();
  v68 = *(a3 + 40);
  if ((v68 & 0xC000000000000001) != 0)
  {
    v69 = v67;
    v70 = sub_18A4A8358();

    if (v70)
    {
      v172 = v70;
      sub_188A34624(0, &unk_1EA9393B0);
      swift_dynamicCast();
      v71 = v173;
      if (v173)
      {
        goto LABEL_119;
      }
    }

LABEL_77:
    swift_endAccess();
    objc_opt_self();
    v103 = swift_dynamicCastObjCClass();
    if (v103)
    {
      v104 = v103;
      v105 = v14;
      v106 = [v104 input];
      if (v106)
      {
      }

      else
      {
        v108 = v104;
        v109 = [v104 _keyCodes];
        if (!v109)
        {

          v153 = sub_18A4A2AD8();
          v154 = v157;
          (*(*(v153 - 8) + 56))(v157, 1, 1, v153);
          sub_188A3F5FC(v154, &qword_1EA9389E8);

          return 0x7475706E69;
        }

        v110 = v109;
        v111 = v157;
        sub_18A4A2AC8();

        v112 = sub_18A4A2AD8();
        (*(*(v112 - 8) + 56))(v111, 0, 1, v112);
        sub_188A3F5FC(v111, &qword_1EA9389E8);
        v104 = v108;
      }

      if (![v104 action])
      {

        return 0x6E6F69746361;
      }

      v107 = v104;
      v113 = [(_UIKeyCommandPrioritySet *)*(a3 + 16) member:v104];

      if (v113)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9393C0);
        a3 = swift_allocObject();
        *(a3 + 16) = xmmword_18A64BFB0;
        *(a3 + 32) = v113;
        *(a3 + 40) = v104;
        *(a3 + 48) = 3;

        goto LABEL_120;
      }
    }

    else
    {
      v107 = 0;
    }

    swift_beginAccess();
    v114 = *(a3 + 40);
    if ((v114 & 0xC000000000000001) != 0)
    {
      if (v114 < 0)
      {
        v115 = *(a3 + 40);
      }

      else
      {
        v115 = v114 & 0xFFFFFFFFFFFFFF8;
      }

      v116 = v14;
      v117 = v67;
      v118 = sub_18A4A7F68();
      if (__OFADD__(v118, 1))
      {
        goto LABEL_133;
      }

      *(a3 + 40) = sub_18907C09C(v115, v118 + 1);
    }

    else
    {
      v119 = v14;
      v120 = v67;
    }

    v121 = swift_isUniquelyReferenced_nonNull_native();
    v173 = *(a3 + 40);
    v122 = v173;
    *(a3 + 40) = 0x8000000000000000;
    v123 = sub_188E8B55C(v67);
    v125 = v122[2];
    v126 = (v124 & 1) == 0;
    v15 = __OFADD__(v125, v126);
    v127 = v125 + v126;
    if (v15)
    {
      goto LABEL_131;
    }

    v128 = v124;
    if (v122[3] >= v127)
    {
      if (v121)
      {
        goto LABEL_97;
      }

      v135 = v123;
      sub_188FA4744();
      v123 = v135;
      v130 = v173;
      if ((v128 & 1) == 0)
      {
        goto LABEL_101;
      }

LABEL_98:
      v131 = v130[7];
      v132 = *(v131 + 8 * v123);
      *(v131 + 8 * v123) = v66;
    }

    else
    {
      sub_1890BE200(v127, v121);
      v123 = sub_188E8B55C(v67);
      if ((v128 & 1) != (v129 & 1))
      {
        goto LABEL_135;
      }

LABEL_97:
      v130 = v173;
      if (v128)
      {
        goto LABEL_98;
      }

LABEL_101:
      v130[(v123 >> 6) + 8] |= 1 << v123;
      *(v130[6] + 8 * v123) = v67;
      *(v130[7] + 8 * v123) = v66;
      v136 = v130[2];
      v15 = __OFADD__(v136, 1);
      v137 = v136 + 1;
      if (v15)
      {
        goto LABEL_134;
      }

      v130[2] = v137;
    }

    *(a3 + 40) = v130;
    swift_endAccess();
    swift_beginAccess();
    a2 = v160;
    if (v160)
    {
      v138 = v160;
      v139 = v67;
      v140 = swift_isUniquelyReferenced_nonNull_native();
      v173 = *(a3 + 56);
      sub_188E9FBA0(v138, v67, 2, v140);

      *(a3 + 56) = v173;
    }

    else
    {
      v141 = v67;
      v142 = sub_188E8B480(v67, 2u);
      if (v143)
      {
        v144 = v142;
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v146 = *(a3 + 56);
        v173 = v146;
        if ((v145 & 1) == 0)
        {
          sub_188FA48D0();
          v146 = v173;
        }

        sub_188F9E3EC(v144, v146);
        *(a3 + 56) = v146;
      }

      else
      {
      }
    }

    swift_endAccess();
    if (v107)
    {
      v147 = *(a3 + 16);
      [(_UIKeyCommandPrioritySet *)v147 addKeyCommand:v107];
    }

    a1 = v164;
LABEL_113:
    v8 = v162;
    v9 = v171;
    goto LABEL_5;
  }

  if (!*(v68 + 16))
  {
    goto LABEL_77;
  }

  v101 = sub_188E8B55C(v67);
  if ((v102 & 1) == 0)
  {
    goto LABEL_77;
  }

  v71 = *(*(v68 + 56) + 8 * v101);
  if (!v71)
  {
    goto LABEL_77;
  }

LABEL_119:
  v152 = v71;
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9393C0);
  a3 = swift_allocObject();
  *(a3 + 16) = xmmword_18A64BFB0;
  *(a3 + 32) = v152;
  *(a3 + 40) = v66;
  *(a3 + 48) = 2;
LABEL_120:

  return a3;
}

uint64_t sub_188FC53E8()
{
  v1 = v0;
  v2 = OBJC_IVAR____UIMenuBuilder__currentBookkeeping;
  v3 = *&v0[OBJC_IVAR____UIMenuBuilder__currentBookkeeping];
  swift_beginAccess();
  if (*(*(v3 + 56) + 16))
  {

    sub_188E8B480(@"com.apple.menu.root", 0);
    if (v4)
    {
      swift_endAccess();

      goto LABEL_8;
    }
  }

  else
  {
  }

  swift_endAccess();

  v5 = [v0 menuForIdentifier_];
  if (v5)
  {
    v6 = v5;
    v28 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64B710;
    *(inited + 32) = v6;
    v8 = objc_allocWithZone(_UIKeyCommandPrioritySet);
    v9 = v6;
    v10 = [v8 init];
    v11 = MEMORY[0x1E69E7CC0];
    v12 = sub_188E8EBA4(MEMORY[0x1E69E7CC0]);
    v13 = sub_188E8EBB8(v11);
    v14 = sub_188E8EBCC(v11);
    v15 = sub_188E8EBF4(v11);
    v16 = sub_188E8ECEC(v11);
    _s8AnalysisO11BookkeepingCMa();
    v17 = swift_initStackObject();
    v17[2] = v10;
    v17[3] = v12;
    v17[4] = v13;
    v17[5] = v14;
    v17[6] = v15;
    v17[7] = v16;
    v18 = sub_188FC43FC(inited, 0, v17);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    LODWORD(v14) = v23;

    if (!v14)
    {
      v27 = *&v1[v28];

      v25 = sub_188FCA030(v18, v27);

      sub_188FCAB04(v18, v20, v22, 0);

      return v25 & 1;
    }

    sub_188FCAB04(v18, v20, v22, v24);
  }

LABEL_8:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_188FC56E0()
{
  v1 = OBJC_IVAR____UIMenuBuilder__cachedKeyboardShortcutLeaves;
  v2 = *&v0[OBJC_IVAR____UIMenuBuilder__cachedKeyboardShortcutLeaves];
  if (!v2)
  {
    v3 = [v0 menuForIdentifier_];
    if (v3)
    {
      v4 = v3;
      v10 = MEMORY[0x1E69E7CC0];
      sub_188FC5890(v3, &v10);

      *&v0[v1] = v10;

      v2 = *&v0[v1];
      if (v2)
      {
        goto LABEL_4;
      }

      __break(1u);
    }

    sub_188FC2D3C(0xD00000000000001DLL, 0x800000018A69AD70);
  }

LABEL_4:
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    sub_188A34624(0, &qword_1EA931248);

    v9 = sub_18A4A83B8();

    return v9;
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_18A4A8738();
    sub_188A34624(0, &qword_1EA931248);
    if (swift_dynamicCastMetatype() || (v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_6:
    }

    else
    {
      v8 = v5 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v8 += 8;
        if (!--v7)
        {
          goto LABEL_6;
        }
      }

      return v5 | 1;
    }

    return v2;
  }
}

void sub_188FC5890(void *a1, void *a2)
{
  v3 = [a1 children];
  sub_188A34624(0, &qword_1ED48FC30);
  v4 = sub_18A4A7548();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_18:

    goto LABEL_20;
  }

  v5 = sub_18A4A7F68();
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_188E49F28(i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        sub_188FC5890(v9, a2);
      }

      else
      {
        v10 = swift_dynamicCastObjCProtocolConditional();
        if (v10)
        {
          v11 = [v10 _keyboardShortcut];
          if (v11)
          {

            MEMORY[0x18CFE2450](v8);
            if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_18A4A7588();
            }

            sub_18A4A75F8();
          }
        }
      }
    }

LABEL_20:

    return;
  }

  __break(1u);
}

id sub_188FC5B40(void *a1, void *a2)
{
  if (!a2)
  {
    if (!a1)
    {
      sub_188FC2D3C(0x746E656469206F6ELL, 0xED00007265696669);
    }

    v14 = *(v2 + OBJC_IVAR____UIMenuBuilder__currentBookkeeping);
    swift_beginAccess();
    v15 = *(v14 + 56);
    v16 = *(v15 + 16);
    v17 = a1;
    v8 = v17;
    if (v16)
    {
      v18 = v17;

      v19 = sub_188E8B480(a1, 0);
      if (v20)
      {
        v12 = *(*(v15 + 56) + 8 * v19);

        goto LABEL_13;
      }

LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }

LABEL_9:

    goto LABEL_12;
  }

  v4 = *(v2 + OBJC_IVAR____UIMenuBuilder__currentBookkeeping);
  swift_beginAccess();
  v5 = *(v4 + 56);
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v7;
  if (!v6)
  {
    goto LABEL_9;
  }

  v9 = v7;

  v10 = sub_188E8B480(a2, 2u);
  if ((v11 & 1) == 0)
  {

    goto LABEL_12;
  }

  v12 = *(*(v5 + 56) + 8 * v10);

LABEL_13:
  swift_endAccess();

  return v12;
}

id sub_188FC5D3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v4 = *i;
    v5 = [v1 menuForIdentifier_];
    if (v5)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return v4;
}

id sub_188FC5E38(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____UIMenuBuilder__currentBookkeeping;
  v5 = *&v1[OBJC_IVAR____UIMenuBuilder__currentBookkeeping];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v6 + 16);

  if (!v7 || (v8 = sub_188B00858(a1), (v9 & 1) == 0))
  {
    swift_endAccess();
LABEL_19:

    return 0;
  }

  v10 = *(*(v6 + 56) + 8 * v8);
  swift_endAccess();
  v11 = v10;

  v12 = *&v2[v4];
  swift_beginAccess();
  v13 = *(v12 + 48);
  v14 = *(v13 + 16);

  if (!v14 || (v15 = sub_188B00858(a1), (v16 & 1) == 0))
  {
    swift_endAccess();

    goto LABEL_19;
  }

  v17 = *(*(v13 + 56) + 8 * v15);
  swift_endAccess();

  v18 = *(v17 + 16);
  if (v18)
  {
    sub_18A4A8208();
    v19 = 0;
    v20 = (v17 + 40);
    do
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
LABEL_22:
        sub_18A4A80E8();
        MEMORY[0x18CFE22D0](0xD000000000000024, 0x800000018A69AD40);
        sub_18A4A82D8();
        MEMORY[0x18CFE22D0](0xD00000000000001FLL, 0x800000018A69A1F0);

        sub_188FC2D3C(0, 0xE000000000000000);
      }

      v21 = *v20;
      v22 = *(v20 - 1);
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_7;
        }

        v23 = [v2 _commandFor_];
      }

      else if (v21)
      {
        v23 = [v2 actionForIdentifier_];
      }

      else
      {
        v23 = [v2 menuForIdentifier_];
      }

      if (!v23)
      {
        goto LABEL_22;
      }

LABEL_7:
      ++v19;
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v20 += 2;
    }

    while (v18 != v19);
  }

  sub_188A34624(0, &qword_1ED48FC30);
  v25 = sub_18A4A7518();

  v26 = [v11 menuByReplacingChildren_];

  return v26;
}

void *sub_188FC61F4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____UIMenuBuilder__currentBookkeeping);
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v4 + 16);

  if (v5 && (v6 = sub_188B00858(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v4 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();

  return v8;
}

id sub_188FC62EC(uint64_t a1, uint64_t a2)
{
  sub_188C85D28(a2, v14);
  v4 = v15;
  if (v15)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_18A4A86A8();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() identifierWithAction:a1 propertyList:v10];
  swift_unknownObjectRelease();
  v12 = [v2 _commandFor_];

  return v12;
}

void sub_188FC6520(void *a1, unsigned __int8 a2, unint64_t a3)
{
  v6 = v3;
  if (!a2)
  {
    v16 = sub_18A4A7288();
    v18 = v17;
    v20 = v16 == sub_18A4A7288() && v18 == v19;
    if (v20)
    {

      v3 = a3;
    }

    else
    {
      v4 = sub_18A4A86C8();

      v3 = a3;
      if ((v4 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    if (v3 >> 62)
    {
      goto LABEL_65;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_46;
    }

LABEL_66:
    sub_188FC2D3C(0xD00000000000003CLL, 0x800000018A69ABA0);
  }

LABEL_2:
  while (1)
  {
    v7 = [v6 _changeCountStorage];
    if (!__OFADD__(v7, 1))
    {
      break;
    }

    __break(1u);
LABEL_65:
    if (sub_18A4A7F68() != 1)
    {
      goto LABEL_66;
    }

LABEL_46:
    v79 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v80 = sub_188E49F28(0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_69;
      }

      v80 = *(v3 + 32);
    }

    v81 = v80;
    objc_opt_self();
    v82 = swift_dynamicCastObjCClass();

    if (!v82)
    {
      goto LABEL_66;
    }

    if (v79)
    {
      v83 = sub_188E49F28(0, a3);
    }

    else
    {
      v83 = *(a3 + 32);
    }

    v90 = v83;
    objc_opt_self();
    v3 = [swift_dynamicCastObjCClassUnconditional() identifier];

    v91 = sub_18A4A7288();
    v4 = v92;
    if (v91 == sub_18A4A7288() && v4 == v93)
    {
    }

    else
    {
      v94 = sub_18A4A86C8();

      if ((v94 & 1) == 0)
      {
        goto LABEL_66;
      }
    }
  }

  [v6 set:v7 + 1 changeCountStorage:?];
  v8 = OBJC_IVAR____UIMenuBuilder__currentBookkeeping;

  v9 = sub_188FC3314(a1, a2);

  if ((v9 & 1) == 0)
  {
    return;
  }

  v10 = *(v6 + v8);
  swift_beginAccess();
  v11 = *(v10 + 56);
  v12 = *(v11 + 16);

  v128 = v8;
  v129 = v6;
  if (v12 && (v13 = sub_188E8B480(a1, a2), (v14 & 1) != 0))
  {
    v131 = *(*(v11 + 56) + 8 * v13);
    v15 = v131;
  }

  else
  {
    v131 = 0;
  }

  swift_endAccess();

  v21 = objc_allocWithZone(_UIKeyCommandPrioritySet);
  v22 = v131;
  v23 = [v21 init];
  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_188E8EBA4(MEMORY[0x1E69E7CC0]);
  v26 = sub_188E8EBB8(v24);
  v27 = sub_188E8EBCC(v24);
  v28 = sub_188E8EBF4(v24);
  v29 = sub_188E8ECEC(v24);
  _s8AnalysisO11BookkeepingCMa();
  v30 = swift_allocObject();
  v30[2] = v23;
  v30[3] = v25;
  v30[4] = v26;
  v30[5] = v27;
  v30[6] = v28;
  v30[7] = v29;
  v31 = sub_188FC43FC(a3, v131, v30);
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LODWORD(v29) = v36;

  v126 = v22;

  if (v29)
  {
    v116 = sub_188FCD164(0xD000000000000027, 0x800000018A69ABE0, 0xD000000000000040, 0x800000018A69AC10, v31, v33, v35, v37);
    sub_188FC2D3C(v116, v117);
  }

  v38 = a2;
  v39 = v129;
  v127 = v31;
  if (a2)
  {

    goto LABEL_17;
  }

  v84 = sub_18A4A7288();
  v86 = v85;
  if (v84 == sub_18A4A7288() && v86 == v87)
  {
    v4 = v127;

LABEL_63:
    *&v129[v128] = v4;

    goto LABEL_97;
  }

  v95 = sub_18A4A86C8();
  v4 = v127;

  v38 = a2;
  if (v95)
  {
    goto LABEL_63;
  }

LABEL_17:
  v121 = v33;
  v122 = v35;

  v40 = sub_188FCAA5C(a1, v38, v129);

  if (!v40)
  {
LABEL_109:
    sub_18A4A80E8();
    v114 = "valid properties";
    v115 = 0xD000000000000027;
    goto LABEL_110;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64B710;
  *(inited + 32) = v40;
  v42 = objc_allocWithZone(_UIKeyCommandPrioritySet);
  v43 = v40;
  v124 = v22;
  v44 = v43;
  v45 = [v42 init];
  v6 = MEMORY[0x1E69E7CC0];
  v46 = sub_188E8EBA4(MEMORY[0x1E69E7CC0]);
  v47 = sub_188E8EBB8(v6);
  v48 = sub_188E8EBCC(v6);
  v49 = sub_188E8EBF4(v6);
  v50 = sub_188E8ECEC(v6);
  v51 = swift_initStackObject();
  v51[2] = v45;
  v51[3] = v46;
  v51[4] = v47;
  v51[5] = v48;
  v51[6] = v49;
  v51[7] = v50;
  v125 = sub_188FC43FC(inited, v131, v51);
  v53 = v52;
  v55 = v54;
  v57 = v56;
  LODWORD(v45) = v56;

  if (v45)
  {
    sub_188FCAB04(v125, v53, v55, v57);

    goto LABEL_109;
  }

  if (!v131)
  {
LABEL_106:
    sub_18A4A80E8();
    v114 = "ce was not consistent: ";
    v115 = 0xD000000000000029;
LABEL_110:
    MEMORY[0x18CFE22D0](v115, v114 | 0x8000000000000000);
LABEL_111:
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](0xD00000000000001FLL, 0x800000018A69A1F0);

    sub_188FC2D3C(0, 0xE000000000000000);
  }

  v120 = v53;
  v130 = v55;
  v58 = *&v129[v128];
  swift_beginAccess();
  v59 = *(v58 + 48);
  v60 = *(v59 + 16);
  v61 = v124;

  if (!v60 || (v62 = sub_188B00858(v61), (v63 & 1) == 0))
  {
    swift_endAccess();

    goto LABEL_106;
  }

  v123 = v61;
  v5 = *(*(v59 + 56) + 8 * v62);
  swift_endAccess();

  v64 = sub_188FC3424();

  sub_188FC38D8(v125);
  v4 = v127;
  v65 = sub_188FC3D60(v127);
  if (!sub_188FC4274())
  {

    v88 = sub_188FCC8B8(v64, v127, v65);
    MEMORY[0x18CFE22D0](v88);

    sub_188FCD52C(0xD000000000000036, 0x800000018A69ACC0);
    v89 = v123;

    sub_188FCAB04(v125, v120, v130, 0);

    v33 = v121;
    v35 = v122;
    goto LABEL_99;
  }

  v119 = v44;
  sub_188FC35AC(v127);
  *&v129[v128] = v64;
  v118 = v64;

  if (a3 >> 62)
  {
LABEL_69:
    v66 = sub_18A4A7F68();
    if (v66)
    {
      goto LABEL_25;
    }

LABEL_70:
    v77 = *(v6 + 16);
    goto LABEL_71;
  }

  v66 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v66)
  {
    goto LABEL_70;
  }

LABEL_25:
  sub_188E6D324(0, v66 & ~(v66 >> 63), 0);
  if (v66 < 0)
  {
LABEL_103:
    __break(1u);
LABEL_104:

    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000038, 0x800000018A69AD00);
    goto LABEL_111;
  }

  v67 = 0;
  v68 = a3;
  do
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v69 = sub_188E49F28(v67, v68);
    }

    else
    {
      v69 = *(v68 + 8 * v67 + 32);
    }

    v70 = v69;
    objc_opt_self();
    v71 = swift_dynamicCastObjCClass();
    if (v71)
    {
      v72 = 0;
LABEL_34:
      v73 = &selRef_identifier;
LABEL_35:
      v74 = [v71 *v73];

      v70 = v74;
      goto LABEL_36;
    }

    objc_opt_self();
    v71 = swift_dynamicCastObjCClass();
    if (v71)
    {
      v72 = 1;
      goto LABEL_34;
    }

    objc_opt_self();
    v71 = swift_dynamicCastObjCClass();
    if (v71)
    {
      v72 = 2;
      v73 = &selRef__identifier;
      goto LABEL_35;
    }

    v72 = 3;
LABEL_36:
    v76 = *(v6 + 16);
    v75 = *(v6 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      sub_188E6D324((v75 > 1), v76 + 1, 1);
      v68 = a3;
    }

    ++v67;
    *(v6 + 16) = v77;
    v78 = v6 + 16 * v76;
    *(v78 + 32) = v70;
    *(v78 + 40) = v72;
  }

  while (v66 != v67);
  v4 = v127;
LABEL_71:
  v20 = v77 == 1;
  v96 = a2;
  if (v20)
  {
    v97 = *(v6 + 32);
    v98 = *(v6 + 40);
    v99 = v97;
    LOBYTE(v97) = sub_188FC9F0C(a1, a2, v97, v98);

    if (v97)
    {

      sub_188FCAB04(v125, v120, v130, 0);

      v39 = v129;
      v33 = v121;
      v35 = v122;
      goto LABEL_97;
    }
  }

  v100 = *(v5 + 16);

  if (!v100)
  {
    goto LABEL_104;
  }

  v101 = 0;
  v102 = (v5 + 40);
  while (2)
  {
    if (v101 >= *(v5 + 16))
    {
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v105 = *(v102 - 1);
    if (*v102 > 1u)
    {
      if (*v102 == 2)
      {
        if (v96 == 2)
        {
          goto LABEL_77;
        }
      }

      else if (v96 == 3)
      {
LABEL_77:
        sub_188A34624(0, &qword_1ED490230);
        v103 = v105;
        v104 = sub_18A4A7C88();

        if (v104)
        {
          goto LABEL_96;
        }
      }

LABEL_78:
      ++v101;
      v102 += 16;
      if (v100 == v101)
      {
        goto LABEL_104;
      }

      continue;
    }

    break;
  }

  if (*v102)
  {
    if (v96 != 1)
    {
      goto LABEL_78;
    }
  }

  else if (v96)
  {
    goto LABEL_78;
  }

  v106 = sub_18A4A7288();
  v108 = v107;
  if (v106 != sub_18A4A7288() || v108 != v109)
  {
    v110 = sub_18A4A86C8();

    v96 = a2;
    if (v110)
    {
      goto LABEL_96;
    }

    goto LABEL_78;
  }

LABEL_96:

  sub_189014150(v101, v101, v6);

  v39 = v129;
  v111 = *&v129[v128];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v135 = *(v111 + 48);
  *(v111 + 48) = 0x8000000000000000;
  sub_188E9FA68(v5, v123, isUniquelyReferenced_nonNull_native);

  *(v111 + 48) = v135;
  swift_endAccess();

  sub_188FCAB04(v125, v120, v130, 0);

  v33 = v121;
  v35 = v122;
  v4 = v127;
LABEL_97:
  [v39 _setNeedsRecacheKeyboardShortcutLeaves];
  v113 = [v39 _actualChangeCountStorage];
  if (__OFADD__(v113, 1))
  {
    goto LABEL_102;
  }

  [v39 set:v113 + 1 actualChangeCountStorage:?];
  v89 = v126;
LABEL_99:
  sub_188FCAB04(v4, v33, v35, 0);
  sub_188FCAB04(v4, v33, v35, 0);
}

uint64_t sub_188FC747C(void *a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 a5)
{
  sub_188A34624(0, &qword_1ED48FC30);
  v8 = sub_18A4A7548();
  v9 = a3;
  v10 = a1;
  sub_188FC6520(a3, a5, v8);
}

void sub_188FC751C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_188C85D28(a2, v13);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_18A4A86A8();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() identifierWithAction:a1 propertyList:v11];
  swift_unknownObjectRelease();
  sub_188FC6520(v12, 2u, a3);
}

void sub_188FC776C(unint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = v4;
  if (a4 <= 1u)
  {
    sub_18A4A80E8();

    if (a4)
    {
      v12 = 0x7265746661;
    }

    else
    {
      v12 = 0x65726F666562;
    }

    if (a4)
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    MEMORY[0x18CFE22D0](v12, v13);

    MEMORY[0x18CFE22D0](0x6F6F722065687420, 0xEE00756E656D2074);
    v14 = 0x800000018A69A180;
    if (a3)
    {
      goto LABEL_14;
    }

    v15 = sub_18A4A7288();
    v6 = v16;
    v17 = sub_18A4A7288();
    v5 = v18;
    if (v15 == v17 && v6 == v18)
    {
    }

    else
    {
      v7 = sub_18A4A86C8();

      if ((v7 & 1) == 0)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    v66 = 0xD000000000000017;
LABEL_57:
    sub_188FC2D3C(v66, v14);
  }

LABEL_15:
  v20 = [v8 _changeCountStorage];
  if (__OFADD__(v20, 1))
  {
    __break(1u);
LABEL_49:
    v46 = sub_18A4A7F68();
    goto LABEL_24;
  }

  [v8 set:v20 + 1 changeCountStorage:?];
  v21 = OBJC_IVAR____UIMenuBuilder__currentBookkeeping;

  v22 = sub_188FC3314(a2, a3);

  if ((v22 & 1) == 0)
  {
    return;
  }

  v23 = sub_188FC83A8(a4, v8, a2, a3);
  if (!v23)
  {
    goto LABEL_53;
  }

  v5 = v23;
  v70 = a4;
  v72 = a2;
  LOBYTE(v73) = a3;
  v74 = v8;
  v75 = v21;
  v24 = *&v8[v21];
  swift_beginAccess();
  v25 = *(v24 + 48);
  v26 = *(v25 + 16);

  if (!v26 || (v27 = sub_188B00858(v5), (v28 & 1) == 0))
  {
LABEL_52:
    swift_endAccess();

    LOBYTE(a3) = v73;
    a2 = v72;
LABEL_53:
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD00000000000002CLL, 0x800000018A69A070);
    v79 = a2;
    v80 = a3;
    sub_18A4A82D8();
    v14 = 0xE000000000000000;

    v66 = 0;
    goto LABEL_57;
  }

  v79 = *(*(v25 + 56) + 8 * v27);
  swift_endAccess();

  v29 = objc_allocWithZone(_UIKeyCommandPrioritySet);
  v30 = v5;
  v31 = [v29 init];
  v32 = MEMORY[0x1E69E7CC0];
  v33 = sub_188E8EBA4(MEMORY[0x1E69E7CC0]);
  v34 = sub_188E8EBB8(v32);
  v35 = sub_188E8EBCC(v32);
  v36 = sub_188E8EBF4(v32);
  v37 = sub_188E8ECEC(v32);
  _s8AnalysisO11BookkeepingCMa();
  v38 = swift_allocObject();
  v38[2] = v31;
  v38[3] = v33;
  v38[4] = v34;
  v38[5] = v35;
  v39 = v30;
  v38[6] = v36;
  v38[7] = v37;
  v7 = sub_188FC43FC(a1, v5, v38);
  a3 = v40;
  v6 = v41;
  v43 = v42;
  LODWORD(v30) = v42;

  if (v30)
  {
    v67 = sub_188FCD164(0xD000000000000024, 0x800000018A69A0D0, 0xD00000000000003CLL, 0x800000018A69A100, v7, a3, v6, v43);
    sub_188FC2D3C(v67, v68);
  }

  v5 = v74;
  sub_188FCD4B4(v7, a3, v6, 0);

  v44 = sub_188FC3D60(v7);

  if (!sub_188FC4274())
  {

    v60 = sub_188FCC8B8(v59, v7, v44);
    MEMORY[0x18CFE22D0](v60);

    sub_188FCD52C(0xD000000000000033, 0x800000018A69A140);

    goto LABEL_46;
  }

  sub_188FC35AC(v7);

  v45 = v73;
  v73 = v39;
  v8 = sub_188FC8504(v70, &v79, v72, v45);
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  v46 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_24:
  v47 = MEMORY[0x1E69E7CC0];
  if (!v46)
  {
    goto LABEL_44;
  }

  v69 = v8;
  v71 = a3;
  v72 = v6;
  v78 = MEMORY[0x1E69E7CC0];
  sub_188E6D324(0, v46 & ~(v46 >> 63), 0);
  if (v46 < 0)
  {
    goto LABEL_51;
  }

  v48 = 0;
  v47 = v78;
  v49 = a1;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v50 = sub_188E49F28(v48, v49);
    }

    else
    {
      v50 = *(v49 + 8 * v48 + 32);
    }

    v51 = v50;
    objc_opt_self();
    v52 = swift_dynamicCastObjCClass();
    if (v52)
    {
      v53 = 0;
LABEL_34:
      v54 = &selRef_identifier;
LABEL_35:
      v55 = [v52 *v54];

      v51 = v55;
      goto LABEL_36;
    }

    objc_opt_self();
    v52 = swift_dynamicCastObjCClass();
    if (v52)
    {
      v53 = 1;
      goto LABEL_34;
    }

    objc_opt_self();
    v52 = swift_dynamicCastObjCClass();
    if (v52)
    {
      v53 = 2;
      v54 = &selRef__identifier;
      goto LABEL_35;
    }

    v53 = 3;
LABEL_36:
    v57 = *(v78 + 16);
    v56 = *(v78 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_188E6D324((v56 > 1), v57 + 1, 1);
      v49 = a1;
    }

    ++v48;
    *(v78 + 16) = v57 + 1;
    v58 = v78 + 16 * v57;
    *(v58 + 32) = v51;
    *(v58 + 40) = v53;
  }

  while (v46 != v48);
  v5 = v74;
  a3 = v71;
  v8 = v69;
LABEL_44:
  sub_189014150(v8, v8, v47);

  v61 = *&v5[v75];
  v62 = v79;
  swift_beginAccess();
  v63 = v73;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = *(v61 + 48);
  *(v61 + 48) = 0x8000000000000000;
  sub_188E9FA68(v62, v63, isUniquelyReferenced_nonNull_native);

  *(v61 + 48) = v77;
  swift_endAccess();

  [v5 _setNeedsRecacheKeyboardShortcutLeaves];
  v65 = [v5 _actualChangeCountStorage];
  if (__OFADD__(v65, 1))
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v5 set:v65 + 1 actualChangeCountStorage:?];

LABEL_46:
  sub_188FCAB04(v7, a3, v6, 0);
  sub_188FCAB04(v7, a3, v6, 0);
}

uint64_t sub_188FC7F64(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned __int8 a6)
{
  sub_188A34624(0, &qword_1ED48FC30);
  v10 = sub_18A4A7548();
  v11 = a4;
  v12 = a1;
  sub_188FC776C(v10, a4, a5, a6);
}

void sub_188FC8038(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_188C85D28(a3, v15);
  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_0(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_18A4A86A8();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_opt_self() identifierWithAction:a2 propertyList:v13];
  swift_unknownObjectRelease();
  sub_188FC776C(a1, v14, 2, a4);
}

uint64_t sub_188FC81C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  sub_188A34624(0, &qword_1ED48FC30);
  v10 = sub_18A4A7548();
  if (a5)
  {
    v11 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v12 = a1;
  }

  sub_188FC8038(v10, a4, v14, a6);

  return sub_188A3F5FC(v14, &qword_1EA934050);
}

uint64_t sub_188FC82BC(void *a1, uint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64B710;
  *(inited + 32) = a3;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  sub_188FC776C(inited, a4, 0, a5);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

id sub_188FC83A8(unsigned __int8 a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v5 = a3;
  if (a1 > 1u)
  {
    if (a4)
    {
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000032, 0x800000018A69AAF0);
      sub_18A4A82D8();

      sub_188FC2D3C(0, 0xE000000000000000);
    }

    v12 = a3;
  }

  else
  {
    v6 = *(a2 + OBJC_IVAR____UIMenuBuilder__currentBookkeeping);
    swift_beginAccess();
    v7 = *(v6 + 56);
    v8 = *(v7 + 16);

    if (v8 && (v9 = sub_188E8B480(v5, a4), (v10 & 1) != 0))
    {
      v11 = *(*(v7 + 56) + 8 * v9);
      swift_endAccess();
      v5 = v11;
    }

    else
    {
      swift_endAccess();

      return 0;
    }
  }

  return v5;
}

unint64_t sub_188FC8504(unsigned __int8 a1, uint64_t *a2, uint64_t a3, char a4)
{
  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      return 0;
    }

    else
    {
      return *(*a2 + 16);
    }
  }

  v5 = *a2;
  v6 = *(*a2 + 16);

  if (!v6)
  {
LABEL_31:

    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000023, 0x800000018A69A1A0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](0xD000000000000015, 0x800000018A69A1D0);
    _s3__C10IdentifierVMa_1(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](0xD00000000000001FLL, 0x800000018A69A1F0);

    sub_188FC2D3C(0, 0xE000000000000000);
  }

  v7 = 0;
  v8 = (v5 + 40);
  while (1)
  {
    if (v7 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    v11 = *(v8 - 1);
    if (*v8 <= 1u)
    {
      break;
    }

    if (*v8 == 2)
    {
      if (a4 == 2)
      {
        goto LABEL_4;
      }
    }

    else if (a4 == 3)
    {
LABEL_4:
      sub_188A34624(0, &qword_1ED490230);
      v9 = v11;
      v10 = sub_18A4A7C88();

      if (v10)
      {
        goto LABEL_26;
      }
    }

LABEL_5:
    ++v7;
    v8 += 16;
    if (v6 == v7)
    {
      goto LABEL_31;
    }
  }

  if (*v8)
  {
    if (a4 != 1)
    {
      goto LABEL_5;
    }
  }

  else if (a4)
  {
    goto LABEL_5;
  }

  v12 = sub_18A4A7288();
  v14 = v13;
  if (v12 != sub_18A4A7288() || v14 != v15)
  {
    v16 = sub_18A4A86C8();

    if (v16)
    {
      goto LABEL_26;
    }

    goto LABEL_5;
  }

LABEL_26:

  if (a1)
  {
    return v7 + 1;
  }

  else
  {
    return v7;
  }
}

void sub_188FC87DC(void *a1, unsigned __int8 a2)
{
  v3 = v2;
  if (!a2)
  {
    v5 = sub_18A4A7288();
    v7 = v6;
    if (v5 == sub_18A4A7288() && v7 == v8)
    {
    }

    else
    {
      v10 = sub_18A4A86C8();

      if ((v10 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_188FC2D3C(0xD000000000000026, 0x800000018A69A040);
  }

LABEL_7:
  v11 = [v2 _changeCountStorage];
  if (__OFADD__(v11, 1))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v2 set:v11 + 1 changeCountStorage:?];
  v12 = OBJC_IVAR____UIMenuBuilder__currentBookkeeping;

  v13 = sub_188FCAA5C(a1, a2, v2);

  if (!v13)
  {
    return;
  }

  v14 = *&v2[v12];
  swift_beginAccess();
  v15 = *(v14 + 56);
  v16 = *(v15 + 16);

  v83 = a2;
  if (!v16)
  {
    goto LABEL_52;
  }

  v17 = sub_188E8B480(a1, a2);
  if ((v18 & 1) == 0)
  {
    goto LABEL_52;
  }

  v19 = *(*(v15 + 56) + 8 * v17);
  swift_endAccess();
  v20 = v19;

  v80 = v12;
  v81 = v3;
  v21 = *&v3[v12];
  swift_beginAccess();
  v22 = *(v21 + 48);
  v23 = *(v22 + 16);

  if (!v23 || (v24 = sub_188B00858(v20), (v25 & 1) == 0))
  {
    swift_endAccess();

    goto LABEL_54;
  }

  v26 = *(*(v22 + 56) + 8 * v24);
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64B710;
  *(inited + 32) = v13;
  v28 = objc_allocWithZone(_UIKeyCommandPrioritySet);
  v29 = v13;
  v79 = v20;
  v30 = v29;
  v31 = [v28 init];
  v32 = MEMORY[0x1E69E7CC0];
  v33 = sub_188E8EBA4(MEMORY[0x1E69E7CC0]);
  v34 = sub_188E8EBB8(v32);
  v35 = sub_188E8EBCC(v32);
  v36 = sub_188E8EBF4(v32);
  v37 = sub_188E8ECEC(v32);
  _s8AnalysisO11BookkeepingCMa();
  v38 = swift_initStackObject();
  v38[2] = v31;
  v38[3] = v33;
  v38[4] = v34;
  v38[5] = v35;
  v38[6] = v36;
  v38[7] = v37;
  v39 = sub_188FC43FC(inited, v20, v38);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  LODWORD(v35) = v44;

  v78 = v30;

  if (v35)
  {
    sub_188FCAB04(v39, v41, v43, v45);
    sub_18A4A80E8();
    v74 = 0x800000018A69A0A0;
    v73 = 0xD000000000000026;
LABEL_56:
    MEMORY[0x18CFE22D0](v73, v74);
    sub_18A4A82D8();

    sub_188FC2D3C(0, 0xE000000000000000);
  }

  v76 = v41;
  v77 = v43;

  v75 = v39;
  sub_188FC38D8(v39);

  v46 = *(v26 + 16);
  if (!v46)
  {
    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v47 = 0;
  v48 = v26 + 40;
  v49 = MEMORY[0x1E69E7CC0];
  do
  {
    v82 = v49;
    v50 = (v48 + 16 * v47);
    v51 = v47;
    v52 = v83;
    while (1)
    {
      if (v51 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_50;
      }

      v54 = *(v50 - 1);
      v55 = *v50;
      if (v55 <= 1)
      {
        break;
      }

      if (v55 == 2)
      {
        if (v52 != 2)
        {
          goto LABEL_37;
        }
      }

      else if (v52 != 3)
      {
        goto LABEL_37;
      }

      sub_188A34624(0, &qword_1ED490230);
      v53 = v54;
      if ((sub_18A4A7C88() & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_19:

LABEL_20:
      ++v51;
      v50 += 16;
      if (v46 == v51)
      {
        v49 = v82;
        goto LABEL_46;
      }
    }

    if (!*v50)
    {
      if (v52)
      {
        goto LABEL_37;
      }

      v56 = sub_18A4A7288();
      v58 = v57;
      if (v56 == sub_18A4A7288() && v58 == v59)
      {
LABEL_34:

        v52 = v83;
        goto LABEL_20;
      }

      goto LABEL_35;
    }

    if (v52 == 1)
    {
      v60 = sub_18A4A7288();
      v62 = v61;
      if (v60 == sub_18A4A7288() && v62 == v63)
      {
        goto LABEL_34;
      }

LABEL_35:
      v64 = sub_18A4A86C8();
      v53 = v54;

      v52 = v83;
      if ((v64 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_19;
    }

LABEL_37:
    v65 = v54;
LABEL_38:
    v49 = v82;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_188E6D324(0, *(v82 + 16) + 1, 1);
      v49 = v82;
    }

    v67 = *(v49 + 16);
    v66 = *(v49 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_188E6D324((v66 > 1), v67 + 1, 1);
      v49 = v82;
    }

    v47 = v51 + 1;
    *(v49 + 16) = v67 + 1;
    v68 = v49 + 16 * v67;
    *(v68 + 32) = v54;
    *(v68 + 40) = v55;
    v48 = v26 + 40;
  }

  while (v46 - 1 != v51);
LABEL_46:

  v69 = *&v81[v80];
  swift_beginAccess();
  v70 = v79;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(v69 + 48);
  *(v69 + 48) = 0x8000000000000000;
  sub_188E9FA68(v49, v70, isUniquelyReferenced_nonNull_native);

  *(v69 + 48) = v85;
  swift_endAccess();

  [v81 _setNeedsRecacheKeyboardShortcutLeaves];
  v72 = [v81 _actualChangeCountStorage];
  if (__OFADD__(v72, 1))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    swift_endAccess();
LABEL_54:

    sub_18A4A80E8();
    v73 = 0xD00000000000002CLL;
    v74 = 0x800000018A69A070;
    goto LABEL_56;
  }

  [v81 set:v72 + 1 actualChangeCountStorage:?];
  sub_188FCAB04(v75, v76, v77, 0);
}

void sub_188FC8FFC(uint64_t a1, uint64_t a2)
{
  sub_188C85D28(a2, v11);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_18A4A86A8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() identifierWithAction:a1 propertyList:v9];
  swift_unknownObjectRelease();
  sub_188FC87DC(v10, 2u);
}

void __swiftcall _UIMenuBuilder.init()(_UIMenuBuilder *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id UIMenuBuilder.command(for:propertyList:)(uint64_t a1, uint64_t a2)
{
  sub_188C85D28(a2, v13);
  v4 = v14;
  if (v14)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_18A4A86A8();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 commandForAction:a1 propertyList:v10];
  swift_unknownObjectRelease();
  return v11;
}

void UIMenuBuilder.replace(command:propertyList:with:)(uint64_t a1, uint64_t a2)
{
  sub_188C85D28(a2, v12);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_18A4A86A8();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v10 = 0;
  }

  sub_188A34624(0, &qword_1ED48FC30);
  v11 = sub_18A4A7518();
  [v2 replaceCommandForAction:a1 propertyList:v10 withElements:v11];
  swift_unknownObjectRelease();
}

uint64_t UIMenuBuilder.remove(command:propertyList:)(uint64_t a1, uint64_t a2)
{
  sub_188C85D28(a2, v12);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_18A4A86A8();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v10 = 0;
  }

  [v2 removeCommandForAction:a1 propertyList:v10];
  return swift_unknownObjectRelease();
}