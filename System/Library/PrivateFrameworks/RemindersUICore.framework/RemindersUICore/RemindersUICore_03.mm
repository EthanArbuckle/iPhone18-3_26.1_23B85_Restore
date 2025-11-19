unint64_t sub_21D112874()
{
  result = qword_280D17790;
  if (!qword_280D17790)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D17790);
  }

  return result;
}

id sub_21D112914(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = [objc_opt_self() _currentTraitCollection];
  if (result)
  {
    v9 = result;
    v10 = [objc_opt_self() formatForTraitCollection_];

    v11 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v10 format:{a3, a4}];
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_21D112BC8;
    *(v13 + 24) = v12;
    v16[4] = sub_21D112B4C;
    v16[5] = v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_21D112B7C;
    v16[3] = &block_descriptor_41;
    v14 = _Block_copy(v16);

    v15 = [v11 imageWithActions_];

    _Block_release(v14);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return v15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21D112B7C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_21D112BC8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 CGContext];
  v2();
}

id sub_21D112C2C()
{
  v1 = *(v0 + 24);
  [**(v0 + 16) drawAtPoint_];
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);

  return [v2 drawWithRect:2 options:0 context:{v3, v4, v5, v6}];
}

void sub_21D112D3C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView;
  v5 = [*(v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView) image];
  v6 = v5;
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!v5 || (sub_21D0D8CF0(0, &qword_280D17688), v15 = a1, v7 = sub_21DBFB63C(), v15, v6, (v7 & 1) == 0))
  {
    v8 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView;
    v9 = *(v2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v2 + v8);
      *(v2 + v8) = 0;
    }

    sub_21D112EB0();
    v11 = (v2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji);
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[1];
    *v11 = 0;
    v11[1] = 0;
    sub_21D1136D0(v12, v13);

LABEL_12:
    v14 = *(v2 + v4);
    [v14 setImage_];

    return;
  }
}

void sub_21D112EB0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView;
  if (!*&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView])
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v0 addSubview_];
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = &v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset];
    swift_beginAccess();
    [v2 setFrame_];
    v12 = *&v0[v1];
    *&v0[v1] = v2;
    v13 = v2;

    sub_21D113134();
    v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
    [v0 setNeedsLayout];
    sub_21D113250();
  }
}

double sub_21D112FD8(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  MinX = CGRectGetMinX(v17);
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  v14 = CGRectGetMinX(v18) + a2;
  if (MinX > v14)
  {
    v14 = MinX;
  }

  v16 = v14;
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  CGRectGetMinY(v19);
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  CGRectGetMinY(v20);
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  CGRectGetWidth(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  CGRectGetWidth(v22);
  v23.origin.x = a5;
  v23.origin.y = a6;
  v23.size.width = a7;
  v23.size.height = a8;
  CGRectGetHeight(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  CGRectGetHeight(v24);
  return v16;
}

void sub_21D113134()
{
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView];
  if (v1)
  {
    v2 = &v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams];
    swift_beginAccess();
    v3 = *v2;
    v4 = v1;
    [v4 setTintColor_];
    v5 = v4;
    v6 = [v5 layer];
    v7 = *(v2 + 2);
    if (v7)
    {
      v8 = sub_21D6E3724(v7);
    }

    else
    {
      v8 = 0;
    }

    [v6 setCompositingFilter_];

    if (v2[12])
    {
      v9 = 4;
    }

    else
    {
      v9 = 1;
    }

    [v5 setContentMode_];

    v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
    [v0 setNeedsLayout];
  }
}

void sub_21D113250()
{
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer] + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape;
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 16);
  v29[0] = *v1;
  v29[1] = v4;
  v30 = v2;
  v31 = v3;
  v5 = [v0 layer];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_21D11350C(v29, [v0 effectiveUserInterfaceLayoutDirection], v7, v9, v11, v13);
  if (v14)
  {
    v15 = v14;
    v16 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView];
    if (!v16 || (v17 = [v16 layer]) == 0)
    {
      v18 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView];
      if (!v18 || (v17 = [v18 layer]) == 0)
      {
        v27 = v15;
LABEL_19:

        return;
      }
    }

    v28 = v17;
    v19 = [v28 mask];
    if (v19)
    {
      v20 = v19;
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = v21;
        v23 = v20;
LABEL_17:
        [v22 setFillRule_];
        [v22 setPath_];
        [v0 bounds];
        [v22 setFrame_];

        goto LABEL_18;
      }
    }

    v22 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
    [v28 setMask_];
    goto LABEL_17;
  }

  v24 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView];
  if (v24)
  {
    v25 = [v24 layer];
    [v25 setMask_];
  }

  v26 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView];
  if (v26)
  {
    v28 = [v26 layer];
    [v28 setMask_];
LABEL_18:
    v27 = v28;
    goto LABEL_19;
  }
}

void sub_21D11350C(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (*(a1 + 40) == 1)
  {
    v7 = *(a1 + 24);
    v23 = *(a1 + 16);
    v8 = *(a1 + 8);
    v13 = CGPathCreateWithRect(*&a3, 0);
    v14 = v7 + v7 + v8;
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    v15 = v7 + v8;
    v16 = CGRectGetMaxX(v24) - (v7 + v8);
    v25.origin.x = a3;
    v25.origin.y = a4;
    v25.size.width = a5;
    v25.size.height = a6;
    v17 = CGRectGetMaxY(v25) - v15;
    v26.origin.x = a3;
    v26.origin.y = a4;
    v26.size.width = a5;
    v26.size.height = a6;
    Width = CGRectGetWidth(v26);
    if (!a2)
    {
LABEL_5:
      TTR_CGPathAddRoundRect(v13, 1, v16, v17, v14, v14, v7 + v23);
      return;
    }

    if (a2 == 1)
    {
      v19 = Width;
      v27.origin.x = v16;
      v27.origin.y = v17;
      v27.size.width = v14;
      v27.size.height = v14;
      v20 = v19 - CGRectGetMinX(v27);
      v28.origin.x = v16;
      v28.origin.y = v17;
      v28.size.width = v14;
      v28.size.height = v14;
      v16 = v20 - CGRectGetWidth(v28);
      goto LABEL_5;
    }

    if (qword_27CE56F38 != -1)
    {
      swift_once();
    }

    v21 = sub_21DBF84BC();
    __swift_project_value_buffer(v21, qword_27CE64930);
    v22 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v22);
    sub_21DAEAB00("unknown language direction", 26, 2);
    __break(1u);
  }
}

void sub_21D1136D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji);
  swift_beginAccess();
  v6 = v5[1];
  if (!a2)
  {
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!v6)
  {
LABEL_14:
    v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView);
    if (v12)
    {
      v13 = v12;
      sub_21DBF8E0C();
      v14 = sub_21DBFA12C();

      [v13 setText_];
    }

    sub_21D10EC98();
    return;
  }

  v7 = *v5 == a1 && v6 == a2;
  if (!v7 && (sub_21DBFC64C() & 1) == 0)
  {
LABEL_10:
    v8 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView;
    v9 = *(v2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v2 + v8);
      *(v2 + v8) = 0;
    }

    sub_21DB375DC();
    v11 = [*(v2 + v8) image];
    if (v11)
    {

      [*(v2 + v8) setImage_];
    }

    goto LABEL_14;
  }
}

void sub_21D113874(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer];
  v9 = *(a1 + 40);
  v10 = *&v8[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape + 32];
  v11 = v8[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape + 40];
  v12 = *&v8[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape + 16];
  v18 = *&v8[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape];
  v19 = v12;
  v20 = v10;
  v21 = v11;
  *v16 = v3;
  *&v16[1] = v4;
  v16[2] = v5;
  v16[3] = v6;
  v16[4] = v7;
  v17 = v9;
  if (!_s15RemindersUICore16TTRListBadgeViewC5ShapeO2eeoiySbAE_AEtFZ_0(&v18, v16))
  {
    v18.f64[0] = v3;
    v18.f64[1] = v4;
    *&v19 = v5;
    *(&v19 + 1) = v6;
    v20 = v7;
    v21 = v9;
    v13 = v8;
    sub_21D113AC0(&v18);

    v14 = *&v2[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectedLayer];
    if (v14)
    {
      v15 = v14 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape;
      *v15 = v3;
      *(v15 + 8) = v4;
      *(v15 + 16) = v5;
      *(v15 + 24) = v6;
      *(v15 + 32) = v7;
      *(v15 + 40) = v9;
      [v2 setNeedsLayout];
    }

    sub_21D113BE8();

    sub_21D113250();
  }
}

uint64_t sub_21D1139A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

BOOL _s15RemindersUICore16TTRListBadgeViewC5ShapeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 8);
    v7 = *(a2 + 24);
    v8 = *(a2 + 8);
    if (*(a1 + 40) == 1)
    {
      if (v4 == 1 && v2 == v3)
      {
        return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, v8), vceqq_f64(v5, v7)))) & 1;
      }

      return 0;
    }

    if (*&v6.f64[1] | *&v6.f64[0] | *&v2 | *&v5.f64[0] | *&v5.f64[1])
    {
      v10 = vorrq_s8(v8, v7);
      v11 = vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
      if (v4 != 2 || *&v3 != 1 || *&v11 != 0)
      {
        return 0;
      }
    }

    else
    {
      v14 = vorrq_s8(v8, v7);
      v15 = *&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *&v3;
      if (v4 != 2 || v15 != 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return !*(a2 + 40) && v2 == v3;
}

float64x2_t *sub_21D113AC0(float64x2_t *result)
{
  v2 = result[2].f64[0];
  v3 = LOBYTE(result[2].f64[1]);
  v4 = &v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape];
  v6 = *result;
  v5 = result[1];
  v8 = *&v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape];
  v7 = *&v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape + 16];
  v9 = *&v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape + 32];
  v10 = v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape + 40];
  *v4 = *result;
  v4[1] = v5;
  v4[2].f64[0] = v2;
  LOBYTE(v4[2].f64[1]) = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      if (v10 == 1 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, v8), vceqq_f64(v5, v7)))) & 1) != 0 && v2 == v9)
      {
        return result;
      }

      goto LABEL_22;
    }

    if (*&v5.f64[0] | *&v6.f64[0] | *&v6.f64[1] | *&v5.f64[1] | *&v2)
    {
      v12 = *&v7.f64[0] | *&v8.f64[1] | *&v7.f64[1] | *&v9;
      v13 = v10 == 2 && *&v8.f64[0] == 1;
    }

    else
    {
      v14 = vorrq_s8(v8, v7);
      v12 = *&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *&v9;
      v13 = v10 == 2;
    }

    if (!v13 || v12 != 0)
    {
LABEL_22:
      sub_21D10F428();

      return [v1 setNeedsLayout];
    }
  }

  else
  {
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v6.f64[0] == v8.f64[0];
    }

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  return result;
}

void sub_21D113BE8()
{
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer] + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape;
  if (*(v1 + 40))
  {
    v2 = *(v1 + 40) == 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v7 = &v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_customSmartListActionViews];
    if (!*&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_customSmartListActionViews])
    {
      v8 = *(v1 + 8);
      v9 = *(v1 + 16);
      v10 = *(v1 + 32);
      v21 = v8;
      v11 = v8;
      v22 = v9;
      v23 = v10;
      v12 = sub_21DB37790(&v21);
      v14 = v13;
      v15 = *v7;
      v16 = *(v7 + 1);
      *v7 = v12;
      *(v7 + 1) = v13;
      v17 = v12;
      v18 = v14;
      sub_21D0D9834(v15, v16);
      v19 = v17;
      v20 = v18;
      [v19 setFrame_];
      [v20 setFrame_];
      [v0 addSubview_];
      [v0 setNeedsLayout];
      v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
      [v0 setNeedsLayout];
    }
  }

  else
  {
    v3 = &v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_customSmartListActionViews];
    if (*v3)
    {
      v4 = *v3;
      [v4 removeFromSuperview];

      v5 = *v3;
      v6 = *(v3 + 1);
      *v3 = 0;
      *(v3 + 1) = 0;

      sub_21D0D9834(v5, v6);
    }
  }
}

void sub_21D113E3C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo];
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v11 = *(v7 + 3);
  v12 = *(v7 + 4);
  v13 = *(v7 + 5);
  v14 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v14;
  *(v7 + 4) = v4;
  *(v7 + 5) = v5;
  v15 = v7[48];
  v7[48] = v6;
  sub_21D113F88(v8, v9, v10, v11, v12, v13, v15);
  v16 = *v7;
  v17 = v7[48];
  if (v17 < 0)
  {
    LOBYTE(v24) = *v7;
    v23 = TTRListType.PredefinedSmartListType.color.getter();
    [v2 setTintColor_];
  }

  else
  {
    v19 = *(v7 + 4);
    v18 = *(v7 + 5);
    v21 = *(v7 + 2);
    v20 = *(v7 + 3);
    v22 = *(v7 + 1);
    v25 = *v7;
    LOBYTE(v26) = v17 & 1;
    sub_21D0FB960(v16, v22, v21, v20, v19, v18, v17 & 1);
    v23 = TTRListColors.Color.nativeColor.getter();
    [v2 setTintColor_];
    sub_21D113F88(v16, v22, v21, v20, v19, v18, v17);
  }
}

void sub_21D113F88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 0x80) == 0)
  {
    sub_21D1078C0(a1, a2, a3, a4, a5, a6, a7 & 1);
  }
}

id TTRListType.PredefinedSmartListType.color.getter()
{
  v1 = **(&unk_27832F608 + *v0);
  v2 = REMSmartListType.color.getter();

  if (v2)
  {
    return v2;
  }

  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return TTRListColors.Color.nativeColor.getter();
}

id REMSmartListType.color.getter()
{
  v0 = sub_21DBFA16C();
  v2 = v1;
  if (v0 == sub_21DBFA16C() && v2 == v3)
  {

    goto LABEL_15;
  }

  v5 = sub_21DBFC64C();

  if (v5)
  {
LABEL_15:
    if (qword_280D16918 != -1)
    {
      swift_once();
    }

    v16 = qword_280D16920;
    goto LABEL_18;
  }

  v6 = sub_21DBFA16C();
  v8 = v7;
  if (v6 == sub_21DBFA16C() && v8 == v9)
  {

    goto LABEL_21;
  }

  v11 = sub_21DBFC64C();

  if (v11)
  {
LABEL_21:
    if (qword_280D16960 != -1)
    {
      swift_once();
    }

    v16 = qword_280D16968;
    goto LABEL_18;
  }

  v12 = sub_21DBFA16C();
  v14 = v13;
  if (v12 == sub_21DBFA16C() && v14 == v15)
  {

LABEL_25:
    if (qword_280D16978 != -1)
    {
      swift_once();
    }

    v16 = qword_280D16980;
    goto LABEL_18;
  }

  v19 = sub_21DBFC64C();

  if (v19)
  {
    goto LABEL_25;
  }

  v20 = sub_21DBFA16C();
  v22 = v21;
  if (v20 == sub_21DBFA16C() && v22 == v23)
  {

LABEL_32:
    if (qword_280D16948 != -1)
    {
      swift_once();
    }

    v16 = qword_280D16950;
    goto LABEL_18;
  }

  v24 = sub_21DBFC64C();

  if (v24)
  {
    goto LABEL_32;
  }

  v25 = sub_21DBFA16C();
  v27 = v26;
  if (v25 == sub_21DBFA16C() && v27 == v28)
  {
  }

  else
  {
    v29 = sub_21DBFC64C();

    if ((v29 & 1) == 0)
    {
      v30 = sub_21DBFA16C();
      v32 = v31;
      if (v30 == sub_21DBFA16C() && v32 == v33)
      {
      }

      else
      {
        v34 = sub_21DBFC64C();

        if ((v34 & 1) == 0)
        {
          v35 = sub_21DBFA16C();
          v37 = v36;
          if (v35 == sub_21DBFA16C() && v37 == v38)
          {
          }

          else
          {
            v39 = sub_21DBFC64C();

            if ((v39 & 1) == 0)
            {
              return 0;
            }
          }

          if (qword_280D16900 != -1)
          {
            swift_once();
          }

          v16 = qword_280D16908;
          goto LABEL_18;
        }
      }

      return [objc_opt_self() ttr_systemPurpleColor];
    }
  }

  if (qword_280D16930 != -1)
  {
    swift_once();
  }

  v16 = qword_280D16938;
LABEL_18:
  v17 = v16;
  return v16;
}

id sub_21D11456C(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_21D1145B4(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for TTRListBadgeView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  v5[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
  [v5 setNeedsLayout];
}

void sub_21D114670(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = [objc_opt_self() whiteColor];
  }

  v5 = v2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v6 = *(v5 + 8);
  v7 = *(v5 + 12);
  v8 = *v5;
  *v5 = v4;
  *(v5 + 12) = v7;
  v9 = a1;
  v10 = *(v5 + 8);
  v11 = *(v5 + 12);
  sub_21D0D8CF0(0, &qword_280D17680);
  v12 = v4;
  if ((sub_21DBFB63C() & 1) == 0)
  {

LABEL_9:
    sub_21D113134();
    goto LABEL_10;
  }

  if (v10 != v6 || ((v7 ^ v11) & 1) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
}

void TTRPinnedListBackgroundView.fillColor.setter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillView);
  v4 = OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_fillColor;
  v5 = *&v3[OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_fillColor];
  *&v3[OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_fillColor] = a1;
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!v5)
  {
    v8 = a1;
    v9 = a1;
LABEL_11:
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v11 = objc_allocWithZone(MEMORY[0x277D75348]);
    aBlock[4] = sub_21D114B88;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D114B20;
    aBlock[3] = &block_descriptor_4;
    v12 = _Block_copy(aBlock);
    v13 = v9;
    v14 = [v11 initWithDynamicProvider_];
    _Block_release(v12);

LABEL_13:
    [v3 setBackgroundColor_];

    return;
  }

  sub_21D114D24();
  v6 = a1;
  v15 = v5;
  v7 = sub_21DBFB63C();

  if ((v7 & 1) == 0)
  {
    v9 = *&v3[v4];
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }
}

uint64_t sub_21D11495C()
{

  return swift_deallocObject();
}

void sub_21D114994(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_fillColor;
  v5 = *&v2[OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_fillColor];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    sub_21D114D24();
    v6 = v5;
    v7 = a1;
    v8 = sub_21DBFB63C();

    if (v8)
    {
      return;
    }

    v5 = *&v2[v4];
    if (!v5)
    {
LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = objc_allocWithZone(MEMORY[0x277D75348]);
  v14[4] = sub_21D1E1A68;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21D114B20;
  v14[3] = &block_descriptor_42;
  v11 = _Block_copy(v14);
  v12 = v5;
  v13 = [v10 initWithDynamicProvider_];
  _Block_release(v11);

LABEL_8:
  [v2 setBackgroundColor_];
}

id sub_21D114B20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_21D114B90(uint64_t a1, void *a2)
{
  v3 = sub_21DBFB24C();
  v4 = [a2 resolvedColorWithTraitCollection_];

  return v4;
}

uint64_t sub_21D114BFC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return a2(1, v3, v4);
}

void TTRPinnedListBackgroundView.isSelected.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_isSelected;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    v6 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_borderView];
    if (a1)
    {
      if (v6)
      {
        v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_borderView];
      }

      else
      {
        v7 = sub_21D1E1408(v1);
        v6 = 0;
      }

      v8 = v6;
      [v7 setHidden_];
    }

    else if (v6)
    {
      [v6 setHidden_];
    }
  }
}

unint64_t sub_21D114D24()
{
  result = qword_280D1B8F0;
  if (!qword_280D1B8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D1B8F0);
  }

  return result;
}

id sub_21D114DAC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView) image];

  return v1;
}

Swift::Void __swiftcall NUIContainerView.setArrangedSubviewsIfChanged(_:)(Swift::OpaquePointer a1)
{
  v3 = [v1 arrangedSubviews];
  if (!v3 || (v4 = v3, sub_21D114EC8(), v5 = sub_21DBFA5EC(), v4, LOBYTE(v4) = sub_21D114F14(v5, a1._rawValue), , (v4 & 1) == 0))
  {
    sub_21D114EC8();
    v6 = sub_21DBFA5DC();
    [v1 setArrangedSubviews_];
  }
}

unint64_t sub_21D114EC8()
{
  result = qword_280D176A0;
  if (!qword_280D176A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D176A0);
  }

  return result;
}

uint64_t sub_21D114F28(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_21D0D8CF0(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x223D44740](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x223D44740](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_21DBFB63C();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_21DBFB63C();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_21DBFBD7C();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_21DBFBD7C();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t TTRAccountsListsViewModel.PinnedList.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0FE734(v2, v9, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v9 + 11);
    v27 = *(v9 + 10);
    v28 = v10;
    v29[0] = *(v9 + 12);
    *(v29 + 10) = *(v9 + 202);
    v11 = *(v9 + 7);
    v23 = *(v9 + 6);
    v24 = v11;
    v12 = *(v9 + 9);
    v25 = *(v9 + 8);
    v26 = v12;
    v13 = *(v9 + 3);
    v19 = *(v9 + 2);
    v20 = v13;
    v14 = *(v9 + 5);
    v21 = *(v9 + 4);
    v22 = v14;
    v15 = [*v9 uuid];
    sub_21DBF568C();

    return sub_21D1077D8(v18);
  }

  else
  {
    sub_21D100E28(v9, v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    v17 = sub_21DBF56BC();
    (*(*(v17 - 8) + 16))(a1, v6, v17);
    return sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
  }
}

void *TTRListType.PredefinedSmartListType.glyph.getter()
{
  v1 = **(&unk_27832F608 + *v0);
  v2 = REMSmartListType.glyph.getter();

  return v2;
}

void *REMSmartListType.glyph.getter()
{
  v0 = sub_21DBFA16C();
  v2 = v1;
  if (v0 == sub_21DBFA16C() && v2 == v3)
  {

    goto LABEL_15;
  }

  v5 = sub_21DBFC64C();

  if (v5)
  {
LABEL_15:
    if (qword_280D1AC90 != -1)
    {
      swift_once();
    }

    v16 = qword_280D1AC98;
    goto LABEL_18;
  }

  v6 = sub_21DBFA16C();
  v8 = v7;
  if (v6 == sub_21DBFA16C() && v8 == v9)
  {

    goto LABEL_21;
  }

  v11 = sub_21DBFC64C();

  if (v11)
  {
LABEL_21:
    if (qword_280D1AC28 != -1)
    {
      swift_once();
    }

    v16 = qword_280D1AC30;
    goto LABEL_18;
  }

  v12 = sub_21DBFA16C();
  v14 = v13;
  if (v12 != sub_21DBFA16C() || v14 != v15)
  {
    v19 = sub_21DBFC64C();

    if (v19)
    {
      goto LABEL_25;
    }

    v20 = sub_21DBFA16C();
    v22 = v21;
    if (v20 == sub_21DBFA16C() && v22 == v23)
    {

LABEL_32:
      if (qword_280D1AC70 != -1)
      {
        swift_once();
      }

      v16 = qword_280D1AC78;
      goto LABEL_18;
    }

    v24 = sub_21DBFC64C();

    if (v24)
    {
      goto LABEL_32;
    }

    v25 = sub_21DBFA16C();
    v27 = v26;
    if (v25 == sub_21DBFA16C() && v27 == v28)
    {

LABEL_39:
      if (qword_280D168A8 != -1)
      {
        swift_once();
      }

      v16 = qword_280D168B0;
      goto LABEL_18;
    }

    v29 = sub_21DBFC64C();

    if (v29)
    {
      goto LABEL_39;
    }

    v30 = sub_21DBFA16C();
    v32 = v31;
    if (v30 == sub_21DBFA16C() && v32 == v33)
    {
    }

    else
    {
      v34 = sub_21DBFC64C();

      if ((v34 & 1) == 0)
      {
        v35 = sub_21DBFA16C();
        v37 = v36;
        if (v35 == sub_21DBFA16C() && v37 == v38)
        {
        }

        else
        {
          v39 = sub_21DBFC64C();

          if ((v39 & 1) == 0)
          {
            return 0;
          }
        }

        if (qword_280D16878 != -1)
        {
          swift_once();
        }

        v16 = qword_280D16880;
        goto LABEL_18;
      }
    }

    return 0;
  }

LABEL_25:
  if (qword_280D1ACA0 != -1)
  {
    swift_once();
  }

  v16 = qword_280D1ACA8;
LABEL_18:
  v17 = v16;
  return v16;
}

void sub_21D1158AC()
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21C98;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  qword_280D1AC30 = v4;
}

void sub_21D1159C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v5 = qword_280D21C98;
  v6 = sub_21DBFA12C();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v7);
  v9 = v8;

  *a4 = v9;
}

void sub_21D115A8C()
{
  if (qword_280D173D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21CE0;
  v1 = sub_21DBFA12C();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v3)
  {
    v3 = [v2 magentaColor];
  }

  qword_280D16980 = v3;
}

void sub_21D115B80()
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21C98;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  qword_280D1AC78 = v4;
}

void sub_21D115C6C()
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21C98;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  qword_280D16880 = v4;
}

void sub_21D115D40()
{
  if (qword_280D173D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21CE0;
  v1 = sub_21DBFA12C();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v3)
  {
    v3 = [v2 magentaColor];
  }

  qword_280D16908 = v3;
}

uint64_t TTRAccountsListsPresenterCapability.loadSharingContactsDataIfNeeded(for:contactsDidLoad:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a3;
  v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    v40 = MEMORY[0x277D84F90];
    v41 = v12;
    v42 = v6;
    do
    {
      sub_21D0FE6CC(v11, v9, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13 = v9[11];
        v55 = v9[10];
        v56 = v13;
        v57[0] = v9[12];
        *(v57 + 10) = *(v9 + 202);
        v14 = v9[7];
        v51 = v9[6];
        v52 = v14;
        v15 = v9[9];
        v53 = v9[8];
        v54 = v15;
        v16 = v9[3];
        v47 = v9[2];
        v48 = v16;
        v17 = v9[5];
        v49 = v9[4];
        v50 = v17;
        v18 = v9[1];
        v45 = *v9;
        v46 = v18;
        v19 = v56;
        if (v56)
        {
          v20 = v45;
          swift_beginAccess();
          v21 = *(v4[4] + 16);
          sub_21DBF8E0C();
          if (v21 && (sub_21D17E07C(v20), (v22 & 1) != 0))
          {
            swift_endAccess();
            sub_21DBF8E0C();

            sub_21D1077D8(&v45);
          }

          else
          {
            swift_endAccess();
            v43[0] = v19;
            sub_21D7EB0E8(v43);
            v24 = v23;

            sub_21D7EAC70(v20, v24, v4);

            sub_21D0D8CF0(0, &qword_280D1B900);
            v25 = sub_21DBFB12C();
            v26 = swift_allocObject();
            v27 = v56;
            *(v26 + 184) = v55;
            *(v26 + 200) = v27;
            *(v26 + 216) = v57[0];
            *(v26 + 226) = *(v57 + 10);
            v28 = v52;
            *(v26 + 120) = v51;
            *(v26 + 136) = v28;
            v29 = v54;
            *(v26 + 152) = v53;
            *(v26 + 168) = v29;
            v30 = v48;
            *(v26 + 56) = v47;
            *(v26 + 72) = v30;
            v31 = v50;
            *(v26 + 88) = v49;
            *(v26 + 104) = v31;
            v32 = v46;
            *(v26 + 24) = v45;
            *(v26 + 16) = v4;
            *(v26 + 40) = v32;

            sub_21D567868(&v45, v43);
            sub_21DBF820C();

            MEMORY[0x223D42D80](v33);
            if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();
            sub_21D1077D8(&v45);

            v40 = v44;
          }

          v12 = v41;
        }

        else
        {
          sub_21D1077D8(&v45);
        }
      }

      else
      {
        sub_21D101390(v9, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v34 = v40;
  if (v40 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_18;
    }
  }

  else if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C98);
    v43[0] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CA0);
    sub_21D0D0F1C(&qword_27CE61CA8, &qword_27CE61CA0);
    sub_21DBF819C();

    sub_21D0D8CF0(0, &qword_280D1B900);
    v35 = sub_21DBFB12C();
    v36 = swift_allocObject();
    *(v36 + 16) = v38;
    *(v36 + 24) = v39;

    sub_21DBF825C();
  }
}

uint64_t sub_21D116360()
{

  return swift_deallocObject();
}

uint64_t sub_21D116398()
{

  sub_21D1078C0(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  sub_21D0FB9F4(*(v0 + 152), *(v0 + 160), *(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_21D116438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v7 = *(v2 - 8);
  v3 = *(v7 + 80);
  v4 = a1 + v3 + 1;
  result = (*(v7 + 48))(v4 & ~v3, 1, v2);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(v4 & ~v3, v2);
  }

  return result;
}

void sub_21D116520(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_21DBF85DC() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t TTRAccountsListsViewModel.Item.account.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(v2, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v8 = *v6;
    v9 = v6[1];
  }

  else
  {
    result = sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v8;
  a1[1] = v9;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

id sub_21D1168E4(void *a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithDesign_];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v5;
  }

  else
  {

    return v7;
  }
}

uint64_t TTRAccountsListsViewModel.Account.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRICollectionViewManagedCellAccessory.updateIfNeeded(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v160 = a2;
  v171 = a1;
  v176 = sub_21DBF853C();
  v136 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v175 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v174 = &v135 - v9;
  v10 = sub_21DBF85DC();
  v11 = *(v10 - 8);
  v180 = v10;
  v181 = v11;
  MEMORY[0x28223BE20](v10);
  v148 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v149 = &v135 - v14;
  MEMORY[0x28223BE20](v15);
  v157 = &v135 - v16;
  MEMORY[0x28223BE20](v17);
  v158 = &v135 - v18;
  MEMORY[0x28223BE20](v19);
  v177 = &v135 - v20;
  MEMORY[0x28223BE20](v21);
  v137 = &v135 - v22;
  MEMORY[0x28223BE20](v23);
  v178 = &v135 - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v172 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v147 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v143 = &v135 - v28;
  v29 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v140 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v163 = &v135 - v30;
  v31 = type metadata accessor for TTRICollectionViewAccessoryState();
  v173 = sub_21DBFBA8C();
  v32 = *(v173 - 1);
  MEMORY[0x28223BE20](v173);
  v142 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v156 = &v135 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v135 - v37;
  v146 = *(v29 - 8);
  v179 = v146;
  MEMORY[0x28223BE20](v39);
  v151 = &v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v164 = &v135 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v135 - v44;
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v135 - v48;
  (*(a4 + 56))(v171, a3, a4, v47);
  v50 = *(a4 + 32);
  v169 = v4;
  v165 = a3;
  v166 = a4;
  v51 = a3;
  v52 = v172;
  v161 = a4 + 32;
  v155 = v50;
  v50(v51, a4);
  v141 = *(v31 - 8);
  v53 = *(v141 + 48);
  v54 = 1;
  v171 = v31;
  v154 = (v141 + 48);
  v153 = v53;
  if (!(v53)(v38, 1, v31))
  {
    (*(v52 + 16))(v45, &v38[*(v171 + 28)], AssociatedTypeWitness);
    v54 = 0;
  }

  v55 = *(v32 + 8);
  v162 = v32 + 8;
  v152 = v55;
  v55(v38, v173);
  (*(v52 + 56))(v45, v54, 1, AssociatedTypeWitness);
  v56 = *(TupleTypeMetadata2 + 48);
  v57 = v179 + 2;
  v58 = v179[2];
  v59 = v163;
  v167 = v49;
  v58(v163, v49, v29);
  v58(&v59[v56], v45, v29);
  v60 = *(v52 + 48);
  v61 = v60(v59, 1, AssociatedTypeWitness);
  v168 = v29;
  v159 = AssociatedTypeWitness;
  v150 = v58;
  v144 = v52 + 48;
  if (v61 == 1)
  {
    v62 = v179[1];
    v62(v45, v29);
    v63 = v60(&v59[v56], 1, AssociatedTypeWitness);
    v64 = v59;
    if (v63 == 1)
    {
      v62(v59, v29);
      return (v62)(v167, v29);
    }

    v138 = v60;
    v139 = v62;
    v67 = v180;
    goto LABEL_9;
  }

  v58(v164, v59, v29);
  v138 = v60;
  v65 = v60(&v59[v56], 1, AssociatedTypeWitness);
  v66 = v59;
  if (v65 == 1)
  {
    v64 = v59;
    v139 = v179[1];
    v139(v45, v29);
    (*(v52 + 8))(v164, AssociatedTypeWitness);
    v67 = v180;
LABEL_9:
    (*(v140 + 8))(v64, TupleTypeMetadata2);
    v69 = v165;
    v68 = v166;
    goto LABEL_10;
  }

  v145 = v57;
  v78 = v143;
  (*(v52 + 32))(v143, &v59[v56], AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v79 = v164;
  v80 = sub_21DBFA10C();
  v81 = *(v52 + 8);
  v81(v78, AssociatedTypeWitness);
  v82 = v179[1];
  v82(v45, v168);
  v81(v79, AssociatedTypeWitness);
  v29 = v168;
  v139 = v82;
  v82(v66, v168);
  if (v80)
  {
    v62 = v139;
    return (v62)(v167, v29);
  }

  v69 = v165;
  v68 = v166;
  v67 = v180;
  v57 = v145;
LABEL_10:
  v70 = v173;
  v145 = v57;
  v71 = sub_21DBFB4CC();
  v72 = v156;
  v73 = v69;
  v155(v69, v68);
  if ((v153)(v72, 1, v171))
  {
    v152(v72, v70);
    v74 = v167;
    v75 = v150;
    v76 = v69;
    v77 = v151;
    goto LABEL_30;
  }

  v84 = v72;
  v85 = v181;
  v86 = *(v181 + 16);
  v87 = v137;
  v161 = v181 + 16;
  v173 = v86;
  (v86)(v137, v84, v67);
  v152(v84, v70);
  v88 = *(v85 + 32);
  v89 = v178;
  v90 = v88(v178, v87, v67);
  v153 = &v135;
  MEMORY[0x28223BE20](v90);
  *(&v135 - 2) = v89;
  v91 = 0;
  result = sub_21D3F7514(sub_21D5056EC, (&v135 - 4), v71);
  if (v92)
  {
    v93 = *(v71 + 16);
    v94 = v93;
    v76 = v73;
    v77 = v151;
    goto LABEL_22;
  }

  TupleTypeMetadata2 = result;
  v93 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v96 = (v71 + 16);
    v95 = *(v71 + 16);
    if (v93 != v95)
    {
      v156 = (v136 + 8);
      v155 = (v181 + 8);
      v154 = (v181 + 40);
      while (v93 < v95)
      {
        v91 = v181;
        v118 = (*(v91 + 80) + 32) & ~*(v91 + 80);
        v179 = v71;
        v163 = v118;
        v119 = *(v181 + 72);
        v162 = v119 * v93;
        v164 = (v71 + v118);
        v120 = v177;
        (v173)(v177, v71 + v118 + v119 * v93, v67);
        v121 = v174;
        sub_21DBF855C();
        v122 = v175;
        sub_21DBF855C();
        v123 = MEMORY[0x223D40CE0](v121, v122);
        v124 = *v156;
        v125 = v122;
        v126 = v176;
        (*v156)(v125, v176);
        v124(v121, v126);
        v67 = v180;
        result = (*(v91 + 1))(v120, v180);
        if (v123)
        {
          v71 = v179;
        }

        else
        {
          v127 = TupleTypeMetadata2;
          v128 = v154;
          if (v93 == TupleTypeMetadata2)
          {
            v71 = v179;
          }

          else
          {
            v71 = v179;
            if (TupleTypeMetadata2 < 0)
            {
              goto LABEL_53;
            }

            v129 = *v96;
            if (TupleTypeMetadata2 >= *v96)
            {
              goto LABEL_54;
            }

            v130 = v119 * TupleTypeMetadata2;
            v131 = v164;
            v91 = v173;
            (v173)(v158, &v164[v130], v67);
            if (v93 >= v129)
            {
              goto LABEL_55;
            }

            v132 = v162;
            v91(v157, &v131[v162], v67);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = sub_21D256D08(v71);
            }

            v133 = &v163[v71];
            v134 = *v128;
            (*v128)(&v163[v71 + v130], v157, v67);
            if (v93 >= *(v71 + 16))
            {
              goto LABEL_56;
            }

            result = (v134)(&v133[v132], v158, v67);
            v127 = TupleTypeMetadata2;
          }

          TupleTypeMetadata2 = v127 + 1;
        }

        ++v93;
        v96 = (v71 + 16);
        v95 = *(v71 + 16);
        if (v93 == v95)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_20:
    v94 = TupleTypeMetadata2;
    v76 = v165;
    v68 = v166;
    if (v93 < TupleTypeMetadata2)
    {
      __break(1u);
    }

    else
    {
      v77 = v151;
      if ((TupleTypeMetadata2 & 0x8000000000000000) == 0)
      {
LABEL_22:
        v97 = v94;
        v98 = v94 - v93;
        v99 = v93 + v98;
        if (!__OFADD__(v93, v98))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v182 = v71;
          if (!isUniquelyReferenced_nonNull_native || v99 > *(v71 + 24) >> 1)
          {
            if (v93 <= v99)
            {
              v101 = v99;
            }

            else
            {
              v101 = v93;
            }

            v71 = sub_21D117DDC(isUniquelyReferenced_nonNull_native, v101, 1, v71);
            v182 = v71;
          }

          sub_21D118C54(v97, v93, 0, MEMORY[0x277D74AE0]);
          v102 = v142;
          (*(v141 + 56))(v142, 1, 1, v171);
          (*(v68 + 40))(v102, v76, v68);
          (*(v181 + 8))(v178, v67);
          v74 = v167;
          v75 = v150;
LABEL_30:
          v103 = v168;
          v75(v77, v74, v168);
          v104 = v159;
          if (v138(v77, 1, v159) == 1)
          {
            v105 = v139;
            v139(v77, v103);
LABEL_36:
            sub_21DBFB4DC();
            return v105(v74, v103);
          }

          v106 = v147;
          (*(v172 + 32))(v147, v77, v104);
          v107 = v149;
          (*(v68 + 64))(v106, v76, v68);
          v91 = *(v181 + 16);
          v91(v148, v107, v67);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_33:
            v109 = *(v71 + 16);
            v108 = *(v71 + 24);
            if (v109 >= v108 >> 1)
            {
              v71 = sub_21D117DDC(v108 > 1, v109 + 1, 1, v71);
            }

            *(v71 + 16) = v109 + 1;
            v110 = v181;
            (*(v181 + 32))(v71 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v109, v148, v67);
            v111 = v177;
            v112 = v149;
            v91(v177, v149, v67);
            v113 = v172;
            v114 = v143;
            v115 = v147;
            v116 = v159;
            (*(v172 + 16))(v143, v147, v159);
            v117 = v142;
            TTRICollectionViewAccessoryState.init(accessory:configuration:)(v111, v114, v116, v142);
            (*(v141 + 56))(v117, 0, 1, v171);
            (*(v166 + 40))(v117, v165);
            (*(v110 + 8))(v112, v67);
            (*(v113 + 8))(v115, v116);
            v74 = v167;
            v103 = v168;
            v105 = v139;
            goto LABEL_36;
          }

LABEL_57:
          v71 = sub_21D117DDC(0, *(v71 + 16) + 1, 1, v71);
          goto LABEL_33;
        }

        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D117B9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21DBF85DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

uint64_t TTRICollectionViewAccessoryState.init(accessory:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21DBF85DC();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for TTRICollectionViewAccessoryState();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 28);

  return v10(v11, a2, a3);
}

uint64_t sub_21D117EE0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

BOOL TTRICollectionViewManagedCellAccessory.isInstalled.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for TTRICollectionViewAccessoryState();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(a2 + 32))(a1, a2, v7);
  v10 = (*(*(v4 - 8) + 48))(v9, 1, v4) != 1;
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t storeEnumTagSinglePayload for TTRAccountsListsViewModel.List(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 218) = 1;
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

    *(result + 218) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall UICollectionViewListCell.setUnmanagedAccessories(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return;
  }

  v10 = sub_21DBFB4CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D4B8);
  sub_21DBF853C();
  sub_21D1182A8();
  sub_21D11830C(&qword_280D0C790);
  v1 = sub_21DBFA49C();
  v2 = sub_21D11837C(&v10, v1);
  v3 = v10;
  v4 = v10[2];
  if (v2 > v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v2;
  if (v2 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v2;
  if (__OFADD__(v4, v2 - v4))
  {
LABEL_15:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > v3[3] >> 1)
  {
    if (v4 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v3 = sub_21D117DDC(isUniquelyReferenced_nonNull_native, v8, 1, v3);
    v10 = v3;
  }

  sub_21D118C54(v5, v4, 0, MEMORY[0x277D74AE0]);

  v10 = v3;
  v9 = sub_21DBF8E0C();
  sub_21D118DA0(v9);
  sub_21DBFB4DC();
}

unint64_t sub_21D1182A8()
{
  result = qword_280D0C3B0;
  if (!qword_280D0C3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5D4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C3B0);
  }

  return result;
}

uint64_t sub_21D11830C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21DBF853C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D11837C(void **a1, uint64_t a2)
{
  v4 = sub_21DBF853C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v55 - v9;
  v11 = sub_21DBF85DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v59 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = v55 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v55 - v17;
  v58 = a1;
  v19 = *a1;
  v20 = v77;
  result = sub_21D11892C(v19, a2);
  if (!v20)
  {
    v69 = v18;
    v71 = result;
    if (v22)
    {
      return v19[2];
    }

    else
    {
      v23 = v71 + 1;
      if (!__OFADD__(v71, 1))
      {
        v55[1] = 0;
        v68 = v12 + 16;
        v74 = v5 + 16;
        v76 = a2 + 56;
        v77 = (v5 + 8);
        v62 = (v12 + 8);
        v57 = (v12 + 40);
        v24 = v69;
        v56 = v5;
        v75 = v7;
        v78 = v4;
        v79 = v10;
        v67 = v11;
        v61 = v12;
        while (1)
        {
          v27 = v19[2];
          if (v23 == v27)
          {
            return v71;
          }

          if (v23 >= v27)
          {
            break;
          }

          v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
          v72 = v19;
          v73 = v23;
          v63 = v28;
          v29 = v19 + v28;
          v64 = *(v12 + 72);
          v30 = v64 * v23;
          v31 = *(v12 + 16);
          v70 = v30;
          v65 = v31;
          v66 = v29;
          v31(v24, &v29[v30], v11);
          sub_21DBF855C();
          if (*(a2 + 16) && (sub_21D11830C(&qword_280D0C790), v32 = sub_21DBF9FFC(), v33 = -1 << *(a2 + 32), v34 = v32 & ~v33, ((*(v76 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
          {
            v35 = ~v33;
            v36 = *(v56 + 72);
            v37 = *(v56 + 16);
            while (1)
            {
              v38 = a2;
              v39 = v75;
              v40 = v78;
              v37(v75, *(a2 + 48) + v36 * v34, v78);
              sub_21D11830C(&qword_280D0C788);
              v41 = sub_21DBFA10C();
              v42 = *v77;
              (*v77)(v39, v40);
              if (v41)
              {
                break;
              }

              v34 = (v34 + 1) & v35;
              a2 = v38;
              if (((*(v76 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            v42(v79, v78);
            v24 = v69;
            v11 = v67;
            result = (*v62)(v69, v67);
            a2 = v38;
            v19 = v72;
            v25 = v73;
          }

          else
          {
LABEL_15:
            (*v77)(v79, v78);
            v24 = v69;
            v11 = v67;
            result = (*v62)(v69, v67);
            v43 = v71;
            v25 = v73;
            if (v71 == v73)
            {
              v19 = v72;
            }

            else
            {
              if ((v71 & 0x8000000000000000) != 0)
              {
                goto LABEL_31;
              }

              v44 = v72[2];
              if (v71 >= v44)
              {
                goto LABEL_32;
              }

              v45 = v65;
              v46 = v64 * v71;
              v47 = v66;
              v48 = v60;
              result = (v65)(v60, &v66[v64 * v71], v11);
              if (v73 >= v44)
              {
                goto LABEL_33;
              }

              v49 = &v47[v70];
              v50 = v59;
              v45(v59, v49, v11);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v72 = sub_21D256D08(v72);
              }

              v51 = v72 + v63;
              v52 = *v57;
              v53 = v72 + v63 + v46;
              v19 = v72;
              v11 = v67;
              result = (*v57)(v53, v50, v67);
              if (v73 >= v19[2])
              {
                goto LABEL_34;
              }

              result = v52(&v51[v70], v48, v11);
              v25 = v73;
              *v58 = v19;
              v43 = v71;
              v24 = v69;
            }

            v26 = __OFADD__(v43, 1);
            v54 = v43 + 1;
            if (v26)
            {
              goto LABEL_30;
            }

            v71 = v54;
          }

          v26 = __OFADD__(v25, 1);
          v23 = v25 + 1;
          v12 = v61;
          if (v26)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
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

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D11892C(uint64_t a1, uint64_t a2)
{
  v5 = sub_21DBF853C();
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = *(a1 + 16);
  v13 = v12 == 0;
  v29 = v12;
  if (!v12)
  {
    return 0;
  }

  v27 = v2;
  v28 = v9;
  v35 = v9 + 16;
  v36 = a2 + 56;
  v14 = (v9 + 8);
  v15 = sub_21DBF85DC();
  v16 = 0;
  v17 = *(v15 - 8);
  v32 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v31 = *(v17 + 72);
  v37 = v11;
  while (1)
  {
    v30 = v13;
    v33 = v16;
    sub_21DBF855C();
    if (*(a2 + 16))
    {
      sub_21D11830C(&qword_280D0C790);
      v18 = sub_21DBF9FFC();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if ((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        break;
      }
    }

LABEL_3:
    (*v14)(v37, v5);
    v16 = v33 + 1;
    v13 = v33 + 1 == v29;
    if (v33 + 1 == v29)
    {
      return 0;
    }
  }

  v34 = ~v19;
  v21 = *(v28 + 72);
  v22 = *(v28 + 16);
  while (1)
  {
    v23 = a2;
    v22(v7, *(a2 + 48) + v21 * v20, v5);
    sub_21D11830C(&qword_280D0C788);
    v24 = sub_21DBFA10C();
    v25 = *v14;
    (*v14)(v7, v5);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v34;
    a2 = v23;
    if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v25(v37, v5);
  return v33;
}

unint64_t sub_21D118C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21D118DCC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

double TTRAccountsListsViewModel.Item.listOrCustomSmartList.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0FE734(v2, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 5u:
    case 6u:
      v16 = v6[217];
      v17 = v6[216];
      v18 = v6[148];
      v19 = v6[147];
      v20 = v6[146];
      v21 = v6[145];
      v22 = v6[144];
      v24 = *(v6 + 5);
      v23 = *(v6 + 6);
      v25 = *(v6 + 2);
      v26 = *v6;
      v29 = v6[120];
      v28[0] = v22;
      v30 = v26;
      *v31 = v25;
      *&v31[8] = *(v6 + 24);
      *&v31[24] = v24;
      *v32 = v23;
      *&v32[8] = *(v6 + 56);
      *&v32[24] = *(v6 + 72);
      *&v32[40] = *(v6 + 88);
      *&v32[56] = *(v6 + 104);
      v32[72] = v29;
      v33 = *(v6 + 8);
      v34[0] = v22;
      v34[1] = v21;
      v34[2] = v20;
      v34[3] = v19;
      v34[4] = v18;
      *&v34[8] = *(v6 + 152);
      *&v34[24] = *(v6 + 168);
      *&v34[40] = *(v6 + 184);
      *&v34[56] = *(v6 + 200);
      v34[72] = v17;
      v34[73] = v16;
      nullsub_1(&v30, v7, v8);
      goto LABEL_4;
    case 0xFu:
    case 0x10u:
      goto LABEL_3;
    default:
      v27 = sub_21DBF56BC();
      (*(*(v27 - 8) + 8))(v6, v27);
LABEL_3:
      sub_21D7F4008(&v30);
LABEL_4:
      v9 = *&v34[32];
      a1[10] = *&v34[16];
      a1[11] = v9;
      a1[12] = *&v34[48];
      *(a1 + 202) = *&v34[58];
      v10 = *&v32[64];
      a1[6] = *&v32[48];
      a1[7] = v10;
      v11 = *v34;
      a1[8] = v33;
      a1[9] = v11;
      v12 = *v32;
      a1[2] = *&v31[16];
      a1[3] = v12;
      v13 = *&v32[32];
      a1[4] = *&v32[16];
      a1[5] = v13;
      result = *&v30;
      v15 = *v31;
      *a1 = v30;
      a1[1] = v15;
      return result;
  }
}

uint64_t getEnumTagSinglePayload for TTRAccountsListsViewModel.List(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 218))
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

uint64_t initializeWithCopy for TTRAccountsListsViewModel.List(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  v11 = *(a2 + 96);
  v12 = *(a2 + 104);
  v22 = *(a2 + 112);
  v21 = *(a2 + 120);
  v13 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D0FB960(v8, v9, v10, v11, v12, v22, v21);
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;
  *(a1 + 104) = v12;
  *(a1 + 112) = v22;
  *(a1 + 120) = v21;
  v14 = *(a2 + 128);
  v15 = *(a2 + 136);
  LOBYTE(v7) = *(a2 + 144);
  sub_21D0FB9BC(v14, v15, v7);
  *(a1 + 128) = v14;
  *(a1 + 136) = v15;
  *(a1 + 144) = v7;
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 152) = *(a2 + 152);
  v16 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v16;
  v17 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v17;
  v18 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v18;
  *(a1 + 216) = *(a2 + 216);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v19 = v17;
  sub_21DBF8E0C();
  return a1;
}

__n128 __swift_memcpy218_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 202) = *(a2 + 202);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t TTRAccountsListsViewModel.List.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAccountsListsViewModel.List.sharingStatusText.getter()
{
  v1 = *(v0 + 160);
  sub_21DBF8E0C();
  return v1;
}

id TTRAccountsListsViewModel.List.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_21D0FB9BC(v2, v3, v4);
}

id TTRAccountsListsViewModel.List.badgeColor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return sub_21D0FB960(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t TTRAccountsListsViewModel.List.badgeName.getter()
{
  v1 = *(v0 + 56);
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D119490(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D0FB9BC(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t initializeWithCopy for TTRListDetailBadgeViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_21DBF8E0C();
  sub_21D0FB960(v5, v6, v7, v8, v9, v10, v11);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  LOBYTE(v7) = *(a2 + 88);
  sub_21D0FB9BC(v12, v13, v7);
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v7;
  *(a1 + 89) = *(a2 + 89);
  return a1;
}

__n128 TTRListDetailBadgeViewModel.init(badgeName:badgeColor:badge:badgeDisplayStyle:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a3 + 48);
  v7 = a4[1].n128_u8[0];
  v8 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  v9 = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = v9;
  *(a6 + 48) = *(a3 + 32);
  *(a6 + 64) = v6;
  result = *a4;
  *(a6 + 72) = *a4;
  *(a6 + 88) = v7;
  *(a6 + 89) = v8;
  return result;
}

void destroy for TTRReminderDetailViewModel.BadgeViewModel(uint64_t a1)
{

  sub_21D1078C0(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);

  sub_21D0FB9F4(v2, v3, v4);
}

uint64_t sub_21D119630(void *a1, double a2, double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21D11983C;
  *(v8 + 24) = v7;
  v13[4] = sub_21D119838;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_21D112B7C;
  v13[3] = &block_descriptor_23_4;
  v9 = _Block_copy(v13);
  v10 = a1;

  v11 = [v6 imageWithActions_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D1197D0()
{

  return swift_deallocObject();
}

id sub_21D11983C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  [*(v1 + 16) setFill];

  return [a1 fillRect_];
}

id sub_21D1198C0()
{
  v1 = [*v0 badge];

  return v1;
}

id sub_21D11991C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t))
{
  v7 = a3;
  v8 = a1;
  if (a3)
  {
    sub_21D114EC8();
    sub_21DBFA5EC();
    v8[*a4] = 0;
    v7 = sub_21DBFA5DC();
  }

  else
  {
    *(a1 + *a4) = 0;
  }

  v11.receiver = v8;
  v11.super_class = a5(a1);
  v9 = objc_msgSendSuper2(&v11, sel_initWithArrangedSubviews_, v7);

  return v9;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t TTRListBadgeView.configure(with:customSmartListShape:)(uint64_t *a1, void (*a2)(__int128 *__return_ptr))
{
  v3 = v2;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  v30 = a1[7];
  v29 = *(a1 + 64);
  v27 = a1[9];
  v28 = a1[10];
  v11 = *(a1 + 88);
  if (*(a1 + 89))
  {
    a2(&v31);
    v36[0] = v31;
    v36[1] = v32;
    v37 = v33;
    v38 = v34;
    v12 = v36;
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    LOBYTE(v34) = 2;
    v12 = &v31;
  }

  sub_21D113874(v12);
  if (v11)
  {
    v13 = (v2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji);
    swift_beginAccess();
    v26 = v10;
    v14 = v8;
    v15 = v4;
    v16 = v9;
    v17 = v7;
    v18 = v6;
    v19 = v5;
    v20 = *v13;
    v21 = v13[1];
    *v13 = v27;
    v13[1] = v28;
    sub_21DBF8E0C();
    sub_21D1136D0(v20, v21);
    v5 = v19;
    v6 = v18;
    v7 = v17;
    v9 = v16;
    v4 = v15;
    v8 = v14;
    v10 = v26;
  }

  else
  {
    v22 = REMListBadgeEmblem.image.getter(v27);
    sub_21D112D3C(v22);
    sub_21D0FB9F4(v27, v28, 0);
  }

  *&v31 = v6;
  *(&v31 + 1) = v7;
  *&v32 = v9;
  *(&v32 + 1) = v8;
  v33 = v10;
  v34 = v30;
  v35 = v29;
  sub_21D0FB960(v6, v7, v9, v8, v10, v30, v29);
  sub_21D113E3C(&v31);
  v23 = (v3 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName);
  swift_beginAccess();
  *v23 = v5;
  v23[1] = v4;
  sub_21DBF8E0C();

  LOBYTE(v23) = v4 == 0;
  v24 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName;
  result = swift_beginAccess();
  *(v3 + v24) = v23;
  return result;
}

id REMListBadgeEmblem.image.getter(void *a1)
{
  sub_21D119E98();
  type metadata accessor for RemindersUICoreBundleLookupObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21DBFA12C();

  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3 compatibleWithTraitCollection:0];

  if (v5)
  {
    return v5;
  }

  if (qword_27CE56B38 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE5F670);
  v8 = a1;
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAEBC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315138;
    v13 = sub_21D119E98();
    v15 = sub_21D0CDFB4(v13, v14, v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_21D0C9000, v9, v10, "unable to load badge emblem image named %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  if (qword_27CE56E80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = qword_27CE63E58;

  return v16;
}

unint64_t sub_21D119E98()
{
  v0 = sub_21DBFA16C();
  v2 = v1;
  if (v0 == sub_21DBFA16C() && v2 == v3)
  {
    goto LABEL_14;
  }

  v5 = sub_21DBFC64C();

  if (v5)
  {
    return 0xD000000000000013;
  }

  v6 = sub_21DBFA16C();
  v8 = v7;
  if (v6 == sub_21DBFA16C() && v8 == v9)
  {

    return 0xD000000000000013;
  }

  v11 = sub_21DBFC64C();

  if (v11)
  {
    return 0xD000000000000013;
  }

  v12 = sub_21DBFA16C();
  v14 = v13;
  if (v12 == sub_21DBFA16C() && v14 == v15)
  {
    goto LABEL_13;
  }

  v17 = sub_21DBFC64C();

  if (v17)
  {
    return 0xD000000000000015;
  }

  v18 = sub_21DBFA16C();
  v20 = v19;
  if (v18 == sub_21DBFA16C() && v20 == v21)
  {
LABEL_13:

    return 0xD000000000000015;
  }

  v22 = sub_21DBFC64C();

  if (v22)
  {
    return 0xD000000000000015;
  }

  v23 = sub_21DBFA16C();
  v25 = v24;
  if (v23 == sub_21DBFA16C() && v25 == v26)
  {
    goto LABEL_65;
  }

  v27 = sub_21DBFC64C();

  if (v27)
  {
    return 0xD000000000000011;
  }

  v28 = sub_21DBFA16C();
  v30 = v29;
  if (v28 == sub_21DBFA16C() && v30 == v31)
  {
    goto LABEL_65;
  }

  v32 = sub_21DBFC64C();

  if (v32)
  {
    return 0xD000000000000011;
  }

  v33 = sub_21DBFA16C();
  v35 = v34;
  if (v33 == sub_21DBFA16C() && v35 == v36)
  {
    goto LABEL_65;
  }

  v37 = sub_21DBFC64C();

  if (v37)
  {
    return 0xD000000000000011;
  }

  v38 = sub_21DBFA16C();
  v40 = v39;
  if (v38 == sub_21DBFA16C() && v40 == v41)
  {

    return 0xD000000000000010;
  }

  v42 = sub_21DBFC64C();

  if (v42)
  {
    return 0xD000000000000010;
  }

  v43 = sub_21DBFA16C();
  v45 = v44;
  if (v43 == sub_21DBFA16C() && v45 == v46)
  {
    goto LABEL_14;
  }

  v47 = sub_21DBFC64C();

  if (v47)
  {
    return 0xD000000000000013;
  }

  v48 = sub_21DBFA16C();
  v50 = v49;
  if (v48 == sub_21DBFA16C() && v50 == v51)
  {
    goto LABEL_14;
  }

  v52 = sub_21DBFC64C();

  if (v52)
  {
    return 0xD000000000000013;
  }

  v53 = sub_21DBFA16C();
  v55 = v54;
  if (v53 == sub_21DBFA16C() && v55 == v56)
  {
    goto LABEL_14;
  }

  v57 = sub_21DBFC64C();

  if (v57)
  {
    return 0xD000000000000013;
  }

  v58 = sub_21DBFA16C();
  v60 = v59;
  if (v58 == sub_21DBFA16C() && v60 == v61)
  {
    goto LABEL_14;
  }

  v62 = sub_21DBFC64C();

  if (v62)
  {
    return 0xD000000000000013;
  }

  v63 = sub_21DBFA16C();
  v65 = v64;
  if (v63 == sub_21DBFA16C() && v65 == v66)
  {
    goto LABEL_14;
  }

  v67 = sub_21DBFC64C();

  if (v67)
  {
    return 0xD000000000000013;
  }

  v68 = sub_21DBFA16C();
  v70 = v69;
  if (v68 == sub_21DBFA16C() && v70 == v71)
  {
    goto LABEL_65;
  }

  v72 = sub_21DBFC64C();

  if (v72)
  {
    return 0xD000000000000011;
  }

  v73 = sub_21DBFA16C();
  v75 = v74;
  if (v73 == sub_21DBFA16C() && v75 == v76)
  {
    goto LABEL_65;
  }

  v77 = sub_21DBFC64C();

  if (v77)
  {
    return 0xD000000000000011;
  }

  v78 = sub_21DBFA16C();
  v80 = v79;
  if (v78 == sub_21DBFA16C() && v80 == v81)
  {
LABEL_65:

    return 0xD000000000000011;
  }

  v82 = sub_21DBFC64C();

  if (v82)
  {
    return 0xD000000000000011;
  }

  v83 = sub_21DBFA16C();
  v85 = v84;
  if (v83 == sub_21DBFA16C() && v85 == v86)
  {

    return 0xD000000000000010;
  }

  v87 = sub_21DBFC64C();

  if (v87)
  {
    return 0xD000000000000010;
  }

  v88 = sub_21DBFA16C();
  v90 = v89;
  if (v88 == sub_21DBFA16C() && v90 == v91)
  {
LABEL_74:

    return 0x676461427473694CLL;
  }

  v92 = sub_21DBFC64C();

  if (v92)
  {
    return 0x676461427473694CLL;
  }

  v93 = sub_21DBFA16C();
  v95 = v94;
  if (v93 == sub_21DBFA16C() && v95 == v96)
  {

    return 0xD000000000000010;
  }

  v97 = sub_21DBFC64C();

  if (v97)
  {
    return 0xD000000000000010;
  }

  v98 = sub_21DBFA16C();
  v100 = v99;
  if (v98 == sub_21DBFA16C() && v100 == v101)
  {

    return 0xD000000000000010;
  }

  v102 = sub_21DBFC64C();

  if (v102)
  {
    return 0xD000000000000010;
  }

  v103 = sub_21DBFA16C();
  v105 = v104;
  if (v103 == sub_21DBFA16C() && v105 == v106)
  {
    goto LABEL_14;
  }

  v107 = sub_21DBFC64C();

  if (v107)
  {
    return 0xD000000000000013;
  }

  v108 = sub_21DBFA16C();
  v110 = v109;
  if (v108 == sub_21DBFA16C() && v110 == v111)
  {
LABEL_14:

    return 0xD000000000000013;
  }

  v112 = sub_21DBFC64C();

  if (v112)
  {
    return 0xD000000000000013;
  }

  v113 = sub_21DBFA16C();
  v115 = v114;
  if (v113 == sub_21DBFA16C() && v115 == v116)
  {
    goto LABEL_103;
  }

  v117 = sub_21DBFC64C();

  if (v117)
  {
    return 0xD000000000000012;
  }

  v118 = sub_21DBFA16C();
  v120 = v119;
  if (v118 == sub_21DBFA16C() && v120 == v121)
  {
    goto LABEL_103;
  }

  v122 = sub_21DBFC64C();

  if (v122)
  {
    return 0xD000000000000012;
  }

  v123 = sub_21DBFA16C();
  v125 = v124;
  if (v123 == sub_21DBFA16C() && v125 == v126)
  {
LABEL_103:

    return 0xD000000000000012;
  }

  v127 = sub_21DBFC64C();

  if (v127)
  {
    return 0xD000000000000012;
  }

  v128 = sub_21DBFA16C();
  v130 = v129;
  if (v128 == sub_21DBFA16C() && v130 == v131)
  {
    goto LABEL_74;
  }

  v132 = sub_21DBFC64C();

  if (v132)
  {
    return 0x676461427473694CLL;
  }

  v133 = sub_21DBFA16C();
  v135 = v134;
  if (v133 == sub_21DBFA16C() && v135 == v136)
  {
    goto LABEL_74;
  }

  v137 = sub_21DBFC64C();

  if (v137)
  {
    return 0x676461427473694CLL;
  }

  v138 = sub_21DBFA16C();
  v140 = v139;
  if (v138 == sub_21DBFA16C() && v140 == v141)
  {
    goto LABEL_74;
  }

  v142 = sub_21DBFC64C();

  if (v142)
  {
    return 0x676461427473694CLL;
  }

  v143 = sub_21DBFA16C();
  v145 = v144;
  if (v143 == sub_21DBFA16C() && v145 == v146)
  {
    goto LABEL_74;
  }

  v147 = sub_21DBFC64C();

  if (v147)
  {
    return 0x676461427473694CLL;
  }

  v148 = sub_21DBFA16C();
  v150 = v149;
  if (v148 == sub_21DBFA16C() && v150 == v151)
  {
    goto LABEL_74;
  }

  v152 = sub_21DBFC64C();

  if (v152)
  {
    return 0x676461427473694CLL;
  }

  v153 = sub_21DBFA16C();
  v155 = v154;
  if (v153 == sub_21DBFA16C() && v155 == v156)
  {
    goto LABEL_203;
  }

  v157 = sub_21DBFC64C();

  if (v157)
  {
    return 0xD000000000000010;
  }

  v158 = sub_21DBFA16C();
  v160 = v159;
  if (v158 == sub_21DBFA16C() && v160 == v161)
  {
    goto LABEL_203;
  }

  v162 = sub_21DBFC64C();

  if (v162)
  {
    return 0xD000000000000010;
  }

  v163 = sub_21DBFA16C();
  v165 = v164;
  if (v163 == sub_21DBFA16C() && v165 == v166)
  {
    goto LABEL_203;
  }

  v167 = sub_21DBFC64C();

  if (v167)
  {
    return 0xD000000000000010;
  }

  v168 = sub_21DBFA16C();
  v170 = v169;
  if (v168 == sub_21DBFA16C() && v170 == v171)
  {
    goto LABEL_203;
  }

  v172 = sub_21DBFC64C();

  if (v172)
  {
    return 0xD000000000000010;
  }

  v173 = sub_21DBFA16C();
  v175 = v174;
  if (v173 == sub_21DBFA16C() && v175 == v176)
  {
    goto LABEL_203;
  }

  v177 = sub_21DBFC64C();

  if (v177)
  {
    return 0xD000000000000010;
  }

  v178 = sub_21DBFA16C();
  v180 = v179;
  if (v178 == sub_21DBFA16C() && v180 == v181)
  {
    goto LABEL_74;
  }

  v182 = sub_21DBFC64C();

  if (v182)
  {
    return 0x676461427473694CLL;
  }

  v183 = sub_21DBFA16C();
  v185 = v184;
  if (v183 == sub_21DBFA16C() && v185 == v186)
  {
    goto LABEL_74;
  }

  v187 = sub_21DBFC64C();

  if (v187)
  {
    return 0x676461427473694CLL;
  }

  v188 = sub_21DBFA16C();
  v190 = v189;
  if (v188 == sub_21DBFA16C() && v190 == v191)
  {
    goto LABEL_74;
  }

  v192 = sub_21DBFC64C();

  if (v192)
  {
    return 0x676461427473694CLL;
  }

  v193 = sub_21DBFA16C();
  v195 = v194;
  if (v193 == sub_21DBFA16C() && v195 == v196)
  {
    goto LABEL_159;
  }

  v197 = sub_21DBFC64C();

  if (v197)
  {
    return 0xD000000000000012;
  }

  v198 = sub_21DBFA16C();
  v200 = v199;
  if (v198 == sub_21DBFA16C() && v200 == v201)
  {
    goto LABEL_159;
  }

  v202 = sub_21DBFC64C();

  if (v202)
  {
    return 0xD000000000000012;
  }

  v203 = sub_21DBFA16C();
  v205 = v204;
  if (v203 == sub_21DBFA16C() && v205 == v206)
  {
    goto LABEL_159;
  }

  v207 = sub_21DBFC64C();

  if (v207)
  {
    return 0xD000000000000012;
  }

  v208 = sub_21DBFA16C();
  v210 = v209;
  if (v208 == sub_21DBFA16C() && v210 == v211)
  {
LABEL_159:

    return 0xD000000000000012;
  }

  v212 = sub_21DBFC64C();

  if (v212)
  {
    return 0xD000000000000012;
  }

  v213 = sub_21DBFA16C();
  v215 = v214;
  if (v213 == sub_21DBFA16C() && v215 == v216)
  {
    goto LABEL_74;
  }

  v217 = sub_21DBFC64C();

  if (v217)
  {
    return 0x676461427473694CLL;
  }

  v218 = sub_21DBFA16C();
  v220 = v219;
  if (v218 == sub_21DBFA16C() && v220 == v221)
  {
    goto LABEL_74;
  }

  v222 = sub_21DBFC64C();

  if (v222)
  {
    return 0x676461427473694CLL;
  }

  v223 = sub_21DBFA16C();
  v225 = v224;
  if (v223 == sub_21DBFA16C() && v225 == v226)
  {
    goto LABEL_74;
  }

  v227 = sub_21DBFC64C();

  if (v227)
  {
    return 0x676461427473694CLL;
  }

  v228 = sub_21DBFA16C();
  v230 = v229;
  if (v228 == sub_21DBFA16C() && v230 == v231)
  {
    goto LABEL_74;
  }

  v232 = sub_21DBFC64C();

  if (v232)
  {
    return 0x676461427473694CLL;
  }

  v233 = sub_21DBFA16C();
  v235 = v234;
  if (v233 == sub_21DBFA16C() && v235 == v236)
  {
    goto LABEL_74;
  }

  v237 = sub_21DBFC64C();

  if (v237)
  {
    return 0x676461427473694CLL;
  }

  v238 = sub_21DBFA16C();
  v240 = v239;
  if (v238 == sub_21DBFA16C() && v240 == v241)
  {
    goto LABEL_74;
  }

  v242 = sub_21DBFC64C();

  if (v242)
  {
    return 0x676461427473694CLL;
  }

  v243 = sub_21DBFA16C();
  v245 = v244;
  if (v243 == sub_21DBFA16C() && v245 == v246)
  {
    goto LABEL_203;
  }

  v247 = sub_21DBFC64C();

  if (v247)
  {
    return 0xD000000000000010;
  }

  v248 = sub_21DBFA16C();
  v250 = v249;
  if (v248 == sub_21DBFA16C() && v250 == v251)
  {
    goto LABEL_203;
  }

  v252 = sub_21DBFC64C();

  if (v252)
  {
    return 0xD000000000000010;
  }

  v253 = sub_21DBFA16C();
  v255 = v254;
  if (v253 == sub_21DBFA16C() && v255 == v256)
  {
    goto LABEL_203;
  }

  v257 = sub_21DBFC64C();

  if (v257)
  {
    return 0xD000000000000010;
  }

  v258 = sub_21DBFA16C();
  v260 = v259;
  if (v258 == sub_21DBFA16C() && v260 == v261)
  {
    goto LABEL_203;
  }

  v262 = sub_21DBFC64C();

  if (v262)
  {
    return 0xD000000000000010;
  }

  v263 = sub_21DBFA16C();
  v265 = v264;
  if (v263 == sub_21DBFA16C() && v265 == v266)
  {
    goto LABEL_203;
  }

  v267 = sub_21DBFC64C();

  if (v267)
  {
    return 0xD000000000000010;
  }

  v268 = sub_21DBFA16C();
  v270 = v269;
  if (v268 == sub_21DBFA16C() && v270 == v271)
  {
    goto LABEL_203;
  }

  v272 = sub_21DBFC64C();

  if (v272)
  {
    return 0xD000000000000010;
  }

  v273 = sub_21DBFA16C();
  v275 = v274;
  if (v273 == sub_21DBFA16C() && v275 == v276)
  {
LABEL_203:

    return 0xD000000000000010;
  }

  v277 = sub_21DBFC64C();

  if (v277)
  {
    return 0xD000000000000010;
  }

  v278 = sub_21DBFA16C();
  v280 = v279;
  if (v278 == sub_21DBFA16C() && v280 == v281)
  {
    goto LABEL_218;
  }

  v282 = sub_21DBFC64C();

  if (v282)
  {
    return 0xD000000000000013;
  }

  v283 = sub_21DBFA16C();
  v285 = v284;
  if (v283 == sub_21DBFA16C() && v285 == v286)
  {
    goto LABEL_218;
  }

  v287 = sub_21DBFC64C();

  if (v287)
  {
    return 0xD000000000000013;
  }

  v288 = sub_21DBFA16C();
  v290 = v289;
  if (v288 == sub_21DBFA16C() && v290 == v291)
  {
    goto LABEL_218;
  }

  v292 = sub_21DBFC64C();

  if (v292)
  {
    return 0xD000000000000013;
  }

  v293 = sub_21DBFA16C();
  v295 = v294;
  if (v293 == sub_21DBFA16C() && v295 == v296)
  {
LABEL_218:

    return 0xD000000000000013;
  }

  v297 = sub_21DBFC64C();

  if (v297)
  {
    return 0xD000000000000013;
  }

  v298 = sub_21DBFA16C();
  v300 = v299;
  if (v298 == sub_21DBFA16C() && v300 == v301)
  {
    goto LABEL_240;
  }

  v302 = sub_21DBFC64C();

  if (v302)
  {
    return 0xD000000000000011;
  }

  v303 = sub_21DBFA16C();
  v305 = v304;
  if (v303 == sub_21DBFA16C() && v305 == v306)
  {
    goto LABEL_240;
  }

  v307 = sub_21DBFC64C();

  if (v307)
  {
    return 0xD000000000000011;
  }

  v308 = sub_21DBFA16C();
  v310 = v309;
  if (v308 == sub_21DBFA16C() && v310 == v311)
  {
    goto LABEL_240;
  }

  v312 = sub_21DBFC64C();

  if (v312)
  {
    return 0xD000000000000011;
  }

  v313 = sub_21DBFA16C();
  v315 = v314;
  if (v313 == sub_21DBFA16C() && v315 == v316)
  {
    goto LABEL_240;
  }

  v317 = sub_21DBFC64C();

  if (v317)
  {
    return 0xD000000000000011;
  }

  v318 = sub_21DBFA16C();
  v320 = v319;
  if (v318 == sub_21DBFA16C() && v320 == v321)
  {
    goto LABEL_240;
  }

  v322 = sub_21DBFC64C();

  if (v322)
  {
    return 0xD000000000000011;
  }

  v323 = sub_21DBFA16C();
  v325 = v324;
  if (v323 == sub_21DBFA16C() && v325 == v326)
  {
LABEL_240:

    return 0xD000000000000011;
  }

  v327 = sub_21DBFC64C();

  if (v327)
  {
    return 0xD000000000000011;
  }

  v328 = sub_21DBFA16C();
  v330 = v329;
  if (v328 == sub_21DBFA16C() && v330 == v331)
  {
    goto LABEL_74;
  }

  v332 = sub_21DBFC64C();

  if (v332)
  {
    return 0x676461427473694CLL;
  }

  v333 = sub_21DBFA16C();
  v335 = v334;
  if (v333 == sub_21DBFA16C() && v335 == v336)
  {
    goto LABEL_74;
  }

  v337 = sub_21DBFC64C();

  if (v337)
  {
    return 0x676461427473694CLL;
  }

  v338 = sub_21DBFA16C();
  v340 = v339;
  if (v338 == sub_21DBFA16C() && v340 == v341)
  {
    goto LABEL_74;
  }

  v342 = sub_21DBFC64C();

  if (v342)
  {
    return 0x676461427473694CLL;
  }

  v343 = sub_21DBFA16C();
  v345 = v344;
  if (v343 == sub_21DBFA16C() && v345 == v346)
  {
    goto LABEL_74;
  }

  v347 = sub_21DBFC64C();

  if (v347)
  {
    return 0x676461427473694CLL;
  }

  v348 = sub_21DBFA16C();
  v350 = v349;
  if (v348 == sub_21DBFA16C() && v350 == v351)
  {
    goto LABEL_74;
  }

  v352 = sub_21DBFC64C();

  if (v352)
  {
    return 0x676461427473694CLL;
  }

  v353 = sub_21DBFA16C();
  v355 = v354;
  if (v353 == sub_21DBFA16C() && v355 == v356)
  {

    return 0x676461427473694CLL;
  }

  else
  {
    v357 = sub_21DBFC64C();

    if (v357)
    {
      return 0x676461427473694CLL;
    }

    else
    {
      return 0;
    }
  }
}

id TTRListColors.Color.nativeColor.getter()
{
  if (*(v0 + 48))
  {
    v1 = *v0;
    [*v0 red];
    v3 = v2;
    [v1 green];
    v5 = v4;
    [v1 blue];
    v7 = v6;
    [v1 alpha];
    v9 = v8;
    v10 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v10 initWithRed:v3 green:v5 blue:v7 alpha:v9];
  }

  else
  {
    type metadata accessor for RemindersUICoreBundleLookupObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_21DBFA12C();
    v15 = objc_opt_self();
    v16 = [v15 colorNamed:v14 inBundle:v13 compatibleWithTraitCollection:0];

    if (v16)
    {
      return v16;
    }

    else
    {
      v17 = [v15 redColor];

      return v17;
    }
  }
}

id TTRListDetailBadgeViewModel.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_21D0FB9BC(v2, v3, v4);
}

uint64_t sub_21D11C51C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t TTRAccountsListsViewModel.List.countText.getter()
{
  v1 = *(v0 + 40);
  sub_21DBF8E0C();
  return v1;
}

uint64_t UIView.setAssociatedAppEntity<A>(entityType:identifier:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE60510);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_21DBF604C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D44DB0], v9, v11);
  v14 = sub_21DBF603C();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    (*(v3 + 16))(v5, v18, AssociatedTypeWitness);
    sub_21DBF4B2C();
    v16 = sub_21DBF4B3C();
    (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    return sub_21DBFB59C();
  }

  return result;
}

id sub_21D11C878()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore30TTRNoAnimationContainerBoxView_areImplicitAnimationsEnabled;
  swift_beginAccess();
  v2 = v0[v1];
  v8 = v0;
  if (v2)
  {
    v9.receiver = v0;
    v9.super_class = type metadata accessor for TTRNoAnimationContainerBoxView();
    return objc_msgSendSuper2(&v9, sel_layoutSubviews);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_21D11CA6C;
    *(v5 + 24) = &v7;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_14_4;
    v6 = _Block_copy(aBlock);

    [v4 performWithoutAnimation_];
    _Block_release(v6);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_21D11CA28(uint64_t (*a1)(void))
{
  v3.receiver = *(v1 + 16);
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_layoutSubviews);
}

void sub_21D11CB2C()
{
  v1 = v0;
  v2 = [v0 layer];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset];
  swift_beginAccess();
  v12 = sub_21D112FD8(*v11, v11[1], v11[2], v11[3], v4, v6, v8, v10);
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView];
  if (v20)
  {
    [v20 setFrame_];
  }

  v21 = *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView];
  if (v21)
  {
    [v21 setFrame_];
  }

  [*&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer] setFrame_];
  v22 = *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer];
  if (v22)
  {
    [v22 setFrame_];
  }

  v23 = *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectedLayer];
  if (v23)
  {
    v24 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams];
    swift_beginAccess();
    v26 = v24[1];
    v25 = v24[2];
    v27 = v23;
    sub_21DB39388(v4, v6, v8, v10, v25, v26);
  }

  sub_21D113250();
  v28 = *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_customSmartListActionViews];
  if (v28)
  {
    v29 = v28;
    [v29 frame];
    v31 = v30;
    v33 = v32;
    v43.origin.x = v4;
    v43.origin.y = v6;
    v43.size.width = v8;
    v43.size.height = v10;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = v4;
    v44.origin.y = v6;
    v44.size.width = v8;
    v44.size.height = v10;
    v35 = MaxX - v31;
    v36 = CGRectGetMaxY(v44) - v33;
    v37 = [v1 effectiveUserInterfaceLayoutDirection];
    v45.origin.x = v4;
    v45.origin.y = v6;
    v45.size.width = v8;
    v45.size.height = v10;
    Width = CGRectGetWidth(v45);
    if (!v37)
    {
LABEL_13:
      [v29 setFrame_];

      return;
    }

    if (v37 == 1)
    {
      v39 = Width;
      v46.origin.x = v35;
      v46.origin.y = v36;
      v46.size.width = v31;
      v46.size.height = v33;
      v40 = v39 - CGRectGetMinX(v46);
      v47.origin.x = v35;
      v47.origin.y = v36;
      v47.size.width = v31;
      v47.size.height = v33;
      v35 = v40 - CGRectGetWidth(v47);
      goto LABEL_13;
    }

    if (qword_27CE56F38 != -1)
    {
      swift_once();
    }

    v41 = sub_21DBF84BC();
    __swift_project_value_buffer(v41, qword_27CE64930);
    v42 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v42);
    sub_21DAEAB00("unknown language direction", 26, 2);
    __break(1u);
  }
}

void sub_21D11CE70()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer;
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer];
  v4 = [v0 tintColor];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v0 traitCollection];
  if ([v6 accessibilityContrast] == 1)
  {
    v7 = sub_21DBFB24C();

    v6 = v7;
  }

  v8 = [v5 resolvedColorWithTraitCollection_];

  v9 = [v8 CGColor];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong setBackgroundColor_];
  }

  v12 = *&v1[v2];
  v13 = [v1 tintColor];
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  v16 = v15;
  if (v13)
  {
    if (v15)
    {
      sub_21D0D8CF0(0, &qword_280D1B8F0);
      v17 = sub_21DBFB63C();
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    if (!v15)
    {
      v17 = 1;
      goto LABEL_13;
    }

    v17 = 0;
    v13 = v15;
  }

LABEL_13:
  [v12 setHidden_];

  v18 = *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer];
  if (v18)
  {
    v19 = v18;
    v20 = [v1 traitCollection];
    v21 = [v20 userInterfaceStyle];

    if (v21 == 2)
    {
      v22 = [v14 blackColor];
    }

    else
    {
      v22 = [v1 tintColor];
    }

    v23 = v22;
    v24 = v19;
    if (v23)
    {
      v25 = [v23 CGColor];
    }

    else
    {
      v25 = 0;
    }

    [v24 setShadowColor_];
  }

  v26 = *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectedLayer];
  if (v26)
  {
    v27 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams;
    swift_beginAccess();
    v28 = *&v1[v27];
    v29 = v26;
    v30 = [v28 CGColor];
    [v29 setBorderColor_];
  }

  v31 = *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_customSmartListActionViews];
  if (v31)
  {
    v32 = *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_customSmartListActionViews + 8];
    v33 = v31;
    v34 = v32;
    v35 = [v1 tintColor];
    [v33 setBackgroundColor_];

    v36 = *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView];
    if (v36 && (v37 = [v36 image]) != 0)
    {

      v38 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
      swift_beginAccess();
      v39 = *&v1[v38];
    }

    else
    {
      v39 = [v14 whiteColor];
    }

    v40 = v39;
    [v34 setTintColor_];
  }
}

void sub_21D11D2E0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [v0 bounds];
    [v2 setFrame_];
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame_];
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v0 bounds];
    [v6 setFrame_];
  }

  v7 = &v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape];
  if (v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape + 40] && v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape + 40] != 1)
  {
    if (*(v7 + 3) | *(v7 + 4) | *&v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape] | *(v7 + 2) | *(v7 + 1))
    {
      v9 = MEMORY[0x277CDA138];
      v8 = 0.0;
    }

    else
    {
      [v0 frame];
      v8 = CGRectGetWidth(v28) * 0.5;
      v9 = MEMORY[0x277CDA130];
    }
  }

  else
  {
    v8 = *&v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape];
    v9 = MEMORY[0x277CDA138];
  }

  [v0 setCornerRadius_];
  [v0 setCornerCurve_];
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v0 bounds];
    [v11 setFrame_];
    [v0 cornerRadius];
    [v11 setCornerRadius_];
    v12 = [v0 cornerCurve];
    [v11 setCornerCurve_];
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = *(v7 + 4);
    v16 = v7[40];
    v17 = *(v7 + 1);
    v24[0] = *v7;
    v24[1] = v17;
    v25 = v15;
    v26 = v16;
    [v0 bounds];
    sub_21D11350C(v24, *&v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_userInterfaceLayoutDirection], v18, v19, v20, v21);
    v23 = v22;
    [v14 setPath_];
  }
}

void sub_21D11D5A0(void *a1, uint64_t a2, void (*a3)(id))
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  v5 = objc_msgSendSuper2(&v6, sel_layoutSubviews);
  a3(v5);
}

void sub_21D11D604()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillViewCornerRadius;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_selectionBorderWidth;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v0[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_needsUpdateRadius] == 1)
  {
    v0[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_needsUpdateRadius] = 0;
    [*&v0[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillView] _setContinuousCornerRadius_];
    v5 = *&v0[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_borderView];
    if (v5)
    {
      [v5 _setContinuousCornerRadius_];
    }
  }

  v6 = *&v0[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillView];
  [v0 bounds];
  [v6 setFrame_];
  v7 = *&v0[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_borderView];
  if (v7)
  {
    v8 = v7;
    [v0 bounds];
    v10 = CGRectInset(v9, -v4, -v4);
    [v8 setFrame_];
  }
}

void sub_21D11D74C()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC0BFD0;
  v10 = *&v0[OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_gradientLayer];
  *(inited + 32) = v10;
  v11 = *&v0[OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_desaturationLayer];
  *(inited + 40) = v11;
  v12 = *&v0[OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_glowLayer];
  *(inited + 48) = v12;
  v13 = inited & 0xC000000000000001;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  if ((inited & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x223D44740](0, inited);
  }

  else
  {
    v17 = v14;
  }

  v18 = v17;
  [v17 setFrame_];

  if (v13)
  {
    v19 = MEMORY[0x223D44740](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_21;
    }

    v19 = *(inited + 40);
  }

  v20 = v19;
  [v19 setFrame_];

  if (v13)
  {
    v21 = MEMORY[0x223D44740](2, inited);
    goto LABEL_11;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v21 = *(inited + 48);
LABEL_11:
  v22 = v21;

  [v22 setFrame_];

  v31.origin.x = v2;
  v31.origin.y = v4;
  v31.size.width = v6;
  v31.size.height = v8;
  v23 = CGRectGetWidth(v31) * 0.55;
  v24 = [v0 traitCollection];
  [v24 displayScale];
  v26 = v25;

  if (v26 == 0.0 || v26 == 1.0)
  {
    v27 = ceil(v23);
  }

  else
  {
    v27 = ceil(v23 * v26) / v26;
  }

  v32.origin.x = v2;
  v32.origin.y = v4;
  v32.size.width = v6;
  v32.size.height = v8;
  Height = CGRectGetHeight(v32);
  v29 = &v0[OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_glowRect];
  if (v29[32] == 1 || (v33.origin.x = 0.0, v33.origin.y = 0.0, v33.size.width = v27, v33.size.height = Height, !CGRectEqualToRect(v33, *v29)))
  {
    *v29 = 0;
    *(v29 + 1) = 0;
    *(v29 + 2) = v27;
    *(v29 + 3) = Height;
    v29[32] = 0;
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = v27;
    v34.size.height = Height;
    v30 = CGPathCreateWithRect(v34, 0);
    [v16 setShadowPath_];
  }
}

uint64_t *sub_21D11DAE4@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result[1];
  if (v2)
  {
    v4 = result[2];
    v3 = result[3];
    v5 = *result;
    *a2 = *result;
    a2[1] = v2;
    a2[2] = v4;
    a2[3] = v3;
    v7[0] = v5;
    v7[1] = v2;
    v7[2] = v4;
    v7[3] = v3;
    return sub_21D11DA88(v7, &v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D11DB30(char a1, uint64_t a2)
{
  v4 = sub_21DBF9D2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 48);
  v14 = *(a2 + 49);
  v15 = *(a2 + 50);
  v16 = *(a2 + 51);
  *(a2 + 48) = 1;
  *(a2 + 49) = 257;
  if ((v14 & 1) != 0 || !v16)
  {
    goto LABEL_21;
  }

  v53 = v10;
  v54 = v5;
  v59 = v16;
  v55 = v9;
  v17 = *(a2 + 56);
  v57 = *(a2 + 64);
  v58 = v17;
  *(a2 + 64) = 0;

  v56 = TTRModuleState.description.getter();
  v19 = v18;
  if (a1 != 2)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (qword_280D17ED8 != -1)
    {
      swift_once();
    }

    v50 = v15;
    v52 = v13;
    v30 = sub_21DBF84BC();
    __swift_project_value_buffer(v30, qword_280D0F240);
    sub_21DBF8E0C();
    v31 = sub_21DBF84AC();
    v32 = sub_21DBFAE9C();

    v33 = os_log_type_enabled(v31, v32);
    v51 = v14;
    v49 = v4;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      v36 = v56;
      *(v34 + 4) = sub_21D0CDFB4(v56, v19, aBlock);
      _os_log_impl(&dword_21D0C9000, v31, v32, "%s scheduling resolve", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223D46520](v35, -1, -1);
      MEMORY[0x223D46520](v34, -1, -1);
    }

    else
    {

      v36 = v56;
    }

    sub_21D0CE468();
    v56 = sub_21DBFB12C();
    v38 = swift_allocObject();
    v38[2] = v36;
    v38[3] = v19;
    v39 = v57;
    v38[4] = v58;
    v38[5] = v39;
    aBlock[4] = sub_21D12348C;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_147;
    v40 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21D122DFC(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
    v41 = v49;
    sub_21DBFBCBC();
    v42 = v56;
    MEMORY[0x223D438F0](0, v12, v7, v40);
    _Block_release(v40);

    (*(v54 + 8))(v7, v41);
    (*(v53 + 8))(v12, v55);
    v14 = v51;
    v13 = v52;
    v15 = v50;
    goto LABEL_20;
  }

  swift_beginAccess();
  if (*(a2 + 32))
  {
    goto LABEL_10;
  }

LABEL_5:
  if (qword_280D17ED8 != -1)
  {
    swift_once();
  }

  v20 = sub_21DBF84BC();
  __swift_project_value_buffer(v20, qword_280D0F240);
  sub_21DBF8E0C();
  v21 = sub_21DBF84AC();
  v22 = sub_21DBFAE9C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v14;
    v24 = swift_slowAlloc();
    v25 = v15;
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v24 = 136315138;
    v27 = sub_21D0CDFB4(v56, v19, aBlock);

    *(v24 + 4) = v27;
    _os_log_impl(&dword_21D0C9000, v21, v22, "%s resolve", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v28 = v26;
    v15 = v25;
    MEMORY[0x223D46520](v28, -1, -1);
    v29 = v24;
    v14 = v23;
    MEMORY[0x223D46520](v29, -1, -1);
  }

  else
  {
  }

  v37 = v57;
  sub_21DBF5FCC();
  if (v37)
  {

    sub_21DBF5FCC();
  }

LABEL_20:
  v16 = v59;
LABEL_21:
  if (v16)
  {
    v43 = 0x1000000;
  }

  else
  {
    v43 = 0;
  }

  if (v15)
  {
    v44 = 0x10000;
  }

  else
  {
    v44 = 0;
  }

  if (v14)
  {
    v45 = 256;
  }

  else
  {
    v45 = 0;
  }

  v46 = v45 | v13;
  v47 = v44 | v43;
  sub_21D0EF69C(v45 | v13 | v44 | v43);
  return sub_21DAE0620(v46 | v47);
}

uint64_t sub_21D11E1B0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F240);
  v1 = __swift_project_value_buffer(v0, qword_280D0F240);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRModuleState.description.getter()
{
  sub_21DBFBEEC();
  MEMORY[0x223D42AA0](0x6C75646F4D525454, 0xEF28657461745365);
  MEMORY[0x223D42AA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x223D42AA0](0xD000000000000010, 0x800000021DC77400);
  if (*(v0 + 49))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 49))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x223D42AA0](v1, v2);

  MEMORY[0x223D42AA0](0xD000000000000010, 0x800000021DC77420);
  if (*(v0 + 51))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 51))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x223D42AA0](v3, v4);

  MEMORY[0x223D42AA0](125, 0xE100000000000000);
  return 0;
}

uint64_t TTRAccountsListsViewModel.deinit()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsHeaderItem, &qword_27CE5A490);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, &qword_27CE5A490);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_permissionMainItem, &qword_27CE5A490);

  return v0;
}

uint64_t TTRAccountsListsViewModel.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsHeaderItem, &qword_27CE5A490);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, &qword_27CE5A490);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_permissionMainItem, &qword_27CE5A490);

  return swift_deallocClassInstance();
}

uint64_t TTRMutableTreeStorage.__deallocating_deinit()
{
  TTRMutableTreeStorage.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRMutableTreeStorage.deinit()
{

  return v0;
}

void sub_21D11E5E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_21D11E650(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_280D17230 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D17238);
    v4 = a1;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
      v10 = sub_21DBFA1AC();
      v12 = sub_21D0CDFB4(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, v5, v6, "AppDelegate: sync failed {error: %s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC10PinnedListO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE593A8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v44 - v14;
  v17 = (v44 + *(v16 + 56) - v14);
  sub_21D0FE734(a1, v44 - v14, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  sub_21D0FE734(a2, v17, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D0FE734(v15, v9, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v18 = v9[11];
    v60[10] = v9[10];
    v60[11] = v18;
    v61[0] = v9[12];
    *(v61 + 10) = *(v9 + 202);
    v19 = v9[7];
    v60[6] = v9[6];
    v60[7] = v19;
    v20 = v9[9];
    v60[8] = v9[8];
    v60[9] = v20;
    v21 = v9[3];
    v60[2] = v9[2];
    v60[3] = v21;
    v22 = v9[5];
    v60[4] = v9[4];
    v60[5] = v22;
    v23 = v9[1];
    v60[0] = *v9;
    v60[1] = v23;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v17[11];
      v25 = v17[9];
      v57 = v17[10];
      v58 = v24;
      v26 = v17[11];
      v59[0] = v17[12];
      *(v59 + 10) = *(v17 + 202);
      v27 = v17[7];
      v28 = v17[5];
      v53 = v17[6];
      v54 = v27;
      v29 = v17[7];
      v30 = v17[9];
      v55 = v17[8];
      v56 = v30;
      v31 = v17[3];
      v32 = v17[1];
      v49 = v17[2];
      v50 = v31;
      v33 = v17[3];
      v34 = v17[5];
      v51 = v17[4];
      v52 = v34;
      v35 = v17[1];
      v48[0] = *v17;
      v48[1] = v35;
      v36 = v9[11];
      v46[10] = v9[10];
      v46[11] = v36;
      v47[0] = v9[12];
      *(v47 + 10) = *(v9 + 202);
      v37 = v9[7];
      v46[6] = v9[6];
      v46[7] = v37;
      v38 = v9[9];
      v46[8] = v9[8];
      v46[9] = v38;
      v39 = v9[3];
      v46[2] = v9[2];
      v46[3] = v39;
      v40 = v9[5];
      v46[4] = v9[4];
      v46[5] = v40;
      v41 = v9[1];
      v46[0] = *v9;
      v46[1] = v41;
      v44[10] = v57;
      v44[11] = v26;
      v45[0] = v17[12];
      *(v45 + 10) = *(v17 + 202);
      v44[6] = v53;
      v44[7] = v29;
      v44[8] = v55;
      v44[9] = v25;
      v44[2] = v49;
      v44[3] = v33;
      v44[4] = v51;
      v44[5] = v28;
      v44[0] = v48[0];
      v44[1] = v32;
      v42 = _s15RemindersUICore25TTRAccountsListsViewModelC4ListV2eeoiySbAE_AEtFZ_0(v46, v44);
      sub_21D1077D8(v48);
      sub_21D1077D8(v60);
LABEL_9:
      sub_21D101450(v15, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      return v42 & 1;
    }

    sub_21D1077D8(v60);
  }

  else
  {
    sub_21D0FE734(v15, v12, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D100E28(v17, v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      v42 = _s15RemindersUICore25TTRAccountsListsViewModelC9SmartListV2eeoiySbAE_AEtFZ_0(v12, v6);
      sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      goto LABEL_9;
    }

    sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.SmartList);
  }

  sub_21D0CF7E0(v15, &qword_27CE593A8);
  v42 = 0;
  return v42 & 1;
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC9SmartListV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  if ((sub_21D11ED58(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_21DBFC64C() & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]) || (sub_21D11EF64(*(a1 + v4[9]), *(a2 + v4[9])) & 1) == 0)
  {
    return 0;
  }

  v10 = v4[10];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v14)
  {
    return 0;
  }

  if (*v11 == *v13 && v12 == v14)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v16 = sub_21DBFC64C();
    sub_21DBF8E0C();
    if ((v16 & 1) == 0)
    {

      return 0;
    }
  }

LABEL_20:

  return 1;
}

uint64_t sub_21D11ED58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7961646F74;
  v3 = a1;
  v4 = 0xE500000000000000;
  v5 = 0x6E756F4669726973;
  v6 = 0xEF737070416E4964;
  if (a1 != 5)
  {
    v5 = 0x6574656C706D6F63;
    v6 = 0xE900000000000064;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64656767616C66;
  if (a1 != 3)
  {
    v8 = 0x64656E6769737361;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x656C756465686373;
  v10 = 0xE900000000000064;
  if (a1 != 1)
  {
    v9 = 7105633;
    v10 = 0xE300000000000000;
  }

  if (a1)
  {
    v4 = v10;
  }

  else
  {
    v9 = 0x7961646F74;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v13 = 0xE500000000000000;
      goto LABEL_32;
    }

    if (a2 != 1)
    {
      v13 = 0xE300000000000000;
      v2 = 7105633;
      goto LABEL_32;
    }

    v2 = 0x656C756465686373;
    goto LABEL_31;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0x6E756F4669726973;
      v13 = 0xEF737070416E4964;
      goto LABEL_32;
    }

    v2 = 0x6574656C706D6F63;
LABEL_31:
    v13 = 0xE900000000000064;
    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v13 = 0xE700000000000000;
    v2 = 0x64656767616C66;
  }

  else
  {
    v13 = 0xE800000000000000;
    v2 = 0x64656E6769737361;
  }

LABEL_32:
  if (v11 == v2 && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21DBFC64C();
  }

  return v14 & 1;
}

uint64_t sub_21D11EF64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E6564646968;
    }

    else
    {
      v5 = 0x6D6F74737563;
    }

    v6 = 0xE600000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x656C6269736976;
    }

    else
    {
      v5 = 0x656E696665646E75;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6E6564646968;
  if (a2 != 2)
  {
    v7 = 0x6D6F74737563;
  }

  if (a2)
  {
    v3 = 0x656C6269736976;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21DBFC64C();
  }

  return v10 & 1;
}

BOOL sub_21D11F0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-1] - v11;
  (*(a5 + 24))(v19, a3, a5);
  v13 = v20;
  v14 = v21;
  v15 = __swift_project_boxed_opaque_existential_1(v19, v20);
  item_rdar101056925<A, B>(in:withID:)(v15, a1, AssociatedTypeWitness, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(v19);
  v16 = (*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) == 1;
  (*(v10 + 8))(v12, v9);
  return v16;
}

uint64_t sub_21D11F23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_21DBFAB6C();
  return sub_21D10BD6C(a1, a2, v6 & 1, a3);
}

uint64_t TTRObservableViewModel<A>.update(with:forcePublish:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = a1;
  v49 = *v3;
  v7 = *(v49 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v48 = &v39 - v9;
  v10 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = *(v10 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v20 = &v39 - v19;
  if (a2)
  {
    return TTRObservableViewModel.updateAndPublish(_:)(v6);
  }

  v42 = v17;
  v43 = v16;
  v41 = a3;
  v47 = v18;
  v21 = *(v49 + 88);
  v22 = v15;
  swift_beginAccess();
  v23 = *(v8 + 16);
  v46 = v6;
  v23(v20, v6, v7);
  (*(v8 + 56))(v20, 0, 1, v7);
  v44 = v22;
  v24 = v8;
  v25 = *(v22 + 48);
  v26 = v13;
  v27 = *(v13 + 16);
  v28 = v3 + v21;
  v29 = v47;
  v27(v47, v28, v10);
  v49 = v25;
  v27(&v29[v25], v20, v10);
  v45 = v24;
  v30 = *(v24 + 48);
  if (v30(v29, 1, v7) == 1)
  {
    v31 = *(v26 + 8);
    v31(v20, v10);
    if (v30(&v29[v49], 1, v7) == 1)
    {
      return (v31)(v29, v10);
    }

    goto LABEL_7;
  }

  v40 = v26;
  v33 = v42;
  v27(v42, v29, v10);
  v34 = v49;
  if (v30(&v29[v49], 1, v7) == 1)
  {
    (*(v40 + 8))(v20, v10);
    (*(v45 + 8))(v33, v7);
LABEL_7:
    (*(v43 + 8))(v29, v44);
    v6 = v46;
    return TTRObservableViewModel.updateAndPublish(_:)(v6);
  }

  v35 = v45;
  v36 = v48;
  (*(v45 + 32))(v48, &v29[v34], v7);
  LODWORD(v49) = sub_21DBFA10C();
  v37 = *(v35 + 8);
  v37(v36, v7);
  v38 = *(v40 + 8);
  v38(v20, v10);
  v37(v33, v7);
  result = (v38)(v29, v10);
  v6 = v46;
  if ((v49 & 1) == 0)
  {
    return TTRObservableViewModel.updateAndPublish(_:)(v6);
  }

  return result;
}

uint64_t static TTRCollectionViewItemObservedViewModel.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for TTRCollectionViewItemObservedViewModel();
  return sub_21DBFA10C() & 1;
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC4ItemO2eeoiySbAE_AEtFZ_0(uint64_t a1, __int128 *a2)
{
  v194 = a1;
  v195 = a2;
  v174 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
  MEMORY[0x28223BE20](v174);
  v181 = &v172 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0);
  MEMORY[0x28223BE20](v3 - 8);
  v180 = &v172 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.TipSection(0);
  MEMORY[0x28223BE20](v5 - 8);
  v179 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.PermissionsSection(0);
  MEMORY[0x28223BE20](v7 - 8);
  v178 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v9 - 8);
  v176 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
  MEMORY[0x28223BE20](v173);
  v177 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection(0);
  MEMORY[0x28223BE20](v12 - 8);
  v175 = &v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF56BC();
  v190 = *(v14 - 8);
  v191 = v14;
  MEMORY[0x28223BE20](v14);
  v172 = &v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v16);
  v185 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v189 = &v172 - v19;
  MEMORY[0x28223BE20](v20);
  v187 = &v172 - v21;
  MEMORY[0x28223BE20](v22);
  v182 = (&v172 - v23);
  MEMORY[0x28223BE20](v24);
  v186 = &v172 - v25;
  MEMORY[0x28223BE20](v26);
  v188 = (&v172 - v27);
  MEMORY[0x28223BE20](v28);
  v183 = &v172 - v29;
  MEMORY[0x28223BE20](v30);
  v184 = (&v172 - v31);
  MEMORY[0x28223BE20](v32);
  v193 = (&v172 - v33);
  MEMORY[0x28223BE20](v34);
  v192 = (&v172 - v35);
  MEMORY[0x28223BE20](v36);
  v38 = (&v172 - v37);
  MEMORY[0x28223BE20](v39);
  v41 = &v172 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v172 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v172 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v172 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64CE8);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v172 - v52;
  v55 = &v172 + *(v54 + 56) - v52;
  sub_21D0FE734(v194, &v172 - v52, type metadata accessor for TTRAccountsListsViewModel.Item);
  v56 = v195;
  v195 = v55;
  sub_21D0FE734(v56, v55, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21D0FE734(v53, v47, type metadata accessor for TTRAccountsListsViewModel.Item);
      v120 = v195;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v121 = v175;
        sub_21D100E28(v120, v175, type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection);
        v82 = _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0();
        v106 = v53;
        v107 = type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection;
        sub_21D101450(v121, type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection);
        v108 = v47;
        goto LABEL_50;
      }

      v160 = type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection;
      v161 = v47;
      goto LABEL_66;
    case 2u:
      sub_21D0FE734(v53, v44, type metadata accessor for TTRAccountsListsViewModel.Item);
      v97 = v195;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v160 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists;
        v161 = v44;
        goto LABEL_66;
      }

      v98 = v53;
      v99 = v97;
      v100 = v177;
      sub_21D100E28(v99, v177, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
      if ((_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_21D121B0C(*&v44[*(v173 + 20)], *(v100 + *(v173 + 20))) & 1) == 0 || v44[*(v173 + 24)] != *(v100 + *(v173 + 24)))
      {
        v101 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists;
        sub_21D101450(v100, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
        v102 = v44;
        goto LABEL_42;
      }

      v170 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists;
      sub_21D101450(v100, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
      v171 = v44;
      goto LABEL_81;
    case 3u:
      sub_21D0FE734(v53, v41, type metadata accessor for TTRAccountsListsViewModel.Item);
      v104 = v195;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v105 = v176;
        sub_21D100E28(v104, v176, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        v82 = _s15RemindersUICore25TTRAccountsListsViewModelC9SmartListV2eeoiySbAE_AEtFZ_0(v41, v105);
        v106 = v53;
        v107 = type metadata accessor for TTRAccountsListsViewModel.SmartList;
        sub_21D101450(v105, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        v108 = v41;
        goto LABEL_50;
      }

      v162 = type metadata accessor for TTRAccountsListsViewModel.SmartList;
      goto LABEL_62;
    case 4u:
      sub_21D0FE734(v53, v38, type metadata accessor for TTRAccountsListsViewModel.Item);
      v77 = v38[1];
      v220 = *v38;
      v221 = v77;
      v78 = v195;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v79 = v78[1];
        v208 = *v78;
        v209 = v79;
        v80 = v38[1];
        v202 = *v38;
        v203 = v80;
        v81 = v78[1];
        v196 = *v78;
        v197 = v81;
        v82 = _s15RemindersUICore25TTRAccountsListsViewModelC7AccountV2eeoiySbAE_AEtFZ_0(&v202, &v196);
        sub_21D122250(&v208);
        sub_21D122250(&v220);
        goto LABEL_36;
      }

      sub_21D122250(&v220);
      goto LABEL_67;
    case 5u:
      v122 = v192;
      sub_21D0FE734(v53, v192, type metadata accessor for TTRAccountsListsViewModel.Item);
      v123 = v122[10];
      v230 = v122[11];
      v231[0] = v122[12];
      *(v231 + 10) = *(v122 + 202);
      v124 = v122[7];
      v225 = v122[6];
      v226 = v124;
      v125 = v122[9];
      v227 = v122[8];
      v228 = v125;
      v229 = v123;
      v126 = v122[3];
      v222 = v122[2];
      v223 = v126;
      v127 = v122[5];
      v224[0] = v122[4];
      v224[1] = v127;
      v128 = v122[1];
      v220 = *v122;
      v221 = v128;
      v129 = v195;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_35;
      }

      goto LABEL_44;
    case 6u:
      v122 = v193;
      sub_21D0FE734(v53, v193, type metadata accessor for TTRAccountsListsViewModel.Item);
      v151 = v122[10];
      v230 = v122[11];
      v231[0] = v122[12];
      *(v231 + 10) = *(v122 + 202);
      v152 = v122[7];
      v225 = v122[6];
      v226 = v152;
      v153 = v122[9];
      v227 = v122[8];
      v228 = v153;
      v229 = v151;
      v154 = v122[3];
      v222 = v122[2];
      v223 = v154;
      v155 = v122[5];
      v224[0] = v122[4];
      v224[1] = v155;
      v156 = v122[1];
      v220 = *v122;
      v221 = v156;
      v129 = v195;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
LABEL_35:
        v130 = v129[11];
        v131 = v129[9];
        v217 = v129[10];
        v218 = v130;
        v132 = v129[11];
        v219[0] = v129[12];
        *(v219 + 10) = *(v129 + 202);
        v133 = v129[7];
        v134 = v129[5];
        v213 = v129[6];
        v214 = v133;
        v135 = v129[7];
        v136 = v129[9];
        v215 = v129[8];
        v216 = v136;
        v137 = v129[3];
        v138 = v129[1];
        v210 = v129[2];
        v211 = v137;
        v139 = v129[3];
        v140 = v129[5];
        v212[0] = v129[4];
        v212[1] = v140;
        v141 = v129[1];
        v208 = *v129;
        v209 = v141;
        v142 = v122[11];
        v206[6] = v122[10];
        v206[7] = v142;
        v207[0] = v122[12];
        *(v207 + 10) = *(v122 + 202);
        v143 = v122[7];
        v206[2] = v122[6];
        v206[3] = v143;
        v144 = v122[9];
        v206[4] = v122[8];
        v206[5] = v144;
        v145 = v122[3];
        v204 = v122[2];
        v205 = v145;
        v146 = v122[5];
        v206[0] = v122[4];
        v206[1] = v146;
        v147 = v122[1];
        v202 = *v122;
        v203 = v147;
        v200[6] = v217;
        v200[7] = v132;
        v201[0] = v129[12];
        *(v201 + 10) = *(v129 + 202);
        v200[2] = v213;
        v200[3] = v135;
        v200[4] = v215;
        v200[5] = v131;
        v198 = v210;
        v199 = v139;
        v200[0] = v212[0];
        v200[1] = v134;
        v196 = v208;
        v197 = v138;
        v82 = _s15RemindersUICore25TTRAccountsListsViewModelC4ListV2eeoiySbAE_AEtFZ_0(&v202, &v196);
        sub_21D1077D8(&v208);
        sub_21D1077D8(&v220);
        goto LABEL_36;
      }

LABEL_44:
      sub_21D1077D8(&v220);
      goto LABEL_67;
    case 7u:
      v109 = v184;
      sub_21D0FE734(v53, v184, type metadata accessor for TTRAccountsListsViewModel.Item);
      v110 = v109[1];
      v220 = *v109;
      v221 = v110;
      v111 = v109[3];
      v222 = v109[2];
      v223 = v111;
      v112 = v195;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v113 = v112[1];
        v208 = *v112;
        v209 = v113;
        v114 = v112[3];
        v116 = *v112;
        v115 = v112[1];
        v210 = v112[2];
        v211 = v114;
        v117 = v109[1];
        v202 = *v109;
        v203 = v117;
        v118 = v109[3];
        v204 = v109[2];
        v205 = v118;
        v196 = v116;
        v197 = v115;
        v119 = v112[3];
        v198 = v112[2];
        v199 = v119;
        v82 = _s15RemindersUICore25TTRAccountsListsViewModelC5GroupV2eeoiySbAE_AEtFZ_0(&v202, &v196);
        sub_21D9F2BC4(&v208);
        sub_21D9F2BC4(&v220);
        goto LABEL_36;
      }

      sub_21D9F2BC4(&v220);
      goto LABEL_67;
    case 8u:
      v83 = v183;
      sub_21D0FE734(v53, v183, type metadata accessor for TTRAccountsListsViewModel.Item);
      v158 = v195;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v85 = v178;
        sub_21D100E28(v158, v178, type metadata accessor for TTRAccountsListsViewModel.PermissionsSection);
        v82 = _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0();
        v86 = type metadata accessor for TTRAccountsListsViewModel.PermissionsSection;
        goto LABEL_49;
      }

      v159 = type metadata accessor for TTRAccountsListsViewModel.PermissionsSection;
      goto LABEL_65;
    case 9u:
      v87 = v188;
      sub_21D0FE734(v53, v188, type metadata accessor for TTRAccountsListsViewModel.Item);
      v88 = v87[3];
      v222 = v87[2];
      v223 = v88;
      v224[0] = v87[4];
      *(v224 + 9) = *(v87 + 73);
      v89 = v87[1];
      v220 = *v87;
      v221 = v89;
      v90 = v195;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_21DA264B0(&v220);
        goto LABEL_67;
      }

      v91 = v90[3];
      v92 = v90[1];
      v210 = v90[2];
      v211 = v91;
      v93 = v90[3];
      v212[0] = v90[4];
      *(v212 + 9) = *(v90 + 73);
      v94 = v90[1];
      v208 = *v90;
      v209 = v94;
      v95 = v87[3];
      v204 = v87[2];
      v205 = v95;
      v206[0] = v87[4];
      *(v206 + 9) = *(v87 + 73);
      v96 = v87[1];
      v202 = *v87;
      v203 = v96;
      v198 = v210;
      v199 = v93;
      v200[0] = v90[4];
      *(v200 + 9) = *(v90 + 73);
      v196 = v208;
      v197 = v92;
      v82 = _s15RemindersUICore25TTRAccountsListsViewModelC17PermissionRequestO2eeoiySbAE_AEtFZ_0(&v202, &v196);
      sub_21DA264B0(&v208);
      sub_21DA264B0(&v220);
LABEL_36:
      sub_21D101450(v53, type metadata accessor for TTRAccountsListsViewModel.Item);
      return v82 & 1;
    case 0xAu:
      v83 = v186;
      sub_21D0FE734(v53, v186, type metadata accessor for TTRAccountsListsViewModel.Item);
      v157 = v195;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v85 = v179;
        sub_21D100E28(v157, v179, type metadata accessor for TTRAccountsListsViewModel.TipSection);
        v82 = _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0();
        v86 = type metadata accessor for TTRAccountsListsViewModel.TipSection;
        goto LABEL_49;
      }

      v159 = type metadata accessor for TTRAccountsListsViewModel.TipSection;
      goto LABEL_65;
    case 0xBu:
      v69 = v53;
      v70 = v53;
      v71 = v182;
      sub_21D0FE734(v70, v182, type metadata accessor for TTRAccountsListsViewModel.Item);
      v73 = *v71;
      v72 = v71[1];
      v74 = v195;
      if (swift_getEnumCaseMultiPayload() != 11)
      {

        v53 = v69;
        goto LABEL_67;
      }

      v75 = *v74;
      v76 = v74[1];
      if (v73 == v75 && v72 == v76)
      {

LABEL_73:
        v103 = v69;
        goto LABEL_82;
      }

      v168 = sub_21DBFC64C();

      if (v168)
      {
        goto LABEL_73;
      }

      sub_21D101450(v69, type metadata accessor for TTRAccountsListsViewModel.Item);
LABEL_68:
      v82 = 0;
      return v82 & 1;
    case 0xCu:
      v83 = v187;
      sub_21D0FE734(v53, v187, type metadata accessor for TTRAccountsListsViewModel.Item);
      v84 = v195;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v85 = v180;
        sub_21D100E28(v84, v180, type metadata accessor for TTRAccountsListsViewModel.HashtagsSection);
        v82 = _s15RemindersUICore25TTRAccountsListsViewModelC15HashtagsSectionV2eeoiySbAE_AEtFZ_0(v83, v85);
        v86 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection;
LABEL_49:
        v106 = v53;
        v107 = v86;
        sub_21D101450(v85, v86);
        v108 = v83;
LABEL_50:
        sub_21D101450(v108, v107);
        goto LABEL_51;
      }

      v159 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection;
LABEL_65:
      v160 = v159;
      v161 = v83;
      goto LABEL_66;
    case 0xDu:
      v41 = v189;
      sub_21D0FE734(v53, v189, type metadata accessor for TTRAccountsListsViewModel.Item);
      v148 = v195;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v162 = type metadata accessor for TTRAccountsListsViewModel.Hashtags;
LABEL_62:
        v160 = v162;
        v161 = v41;
LABEL_66:
        sub_21D101450(v161, v160);
        goto LABEL_67;
      }

      v98 = v53;
      v149 = v148;
      v150 = v181;
      sub_21D100E28(v149, v181, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
      if ((_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_21D1D57A4(*&v41[*(v174 + 20)], *(v150 + *(v174 + 20))) & 1) == 0 || v41[*(v174 + 24)] != *(v150 + *(v174 + 24)))
      {
        v101 = type metadata accessor for TTRAccountsListsViewModel.Hashtags;
        sub_21D101450(v150, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
        v102 = v41;
LABEL_42:
        sub_21D101450(v102, v101);
        sub_21D101450(v98, type metadata accessor for TTRAccountsListsViewModel.Item);
        goto LABEL_68;
      }

      v170 = type metadata accessor for TTRAccountsListsViewModel.Hashtags;
      sub_21D101450(v150, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
      v171 = v41;
LABEL_81:
      sub_21D101450(v171, v170);
      v103 = v98;
      goto LABEL_82;
    case 0xEu:
      v58 = v185;
      sub_21D0FE734(v53, v185, type metadata accessor for TTRAccountsListsViewModel.Item);
      v59 = *v58;
      v60 = *(v58 + 8);
      v61 = *(v58 + 16);
      v62 = *(v58 + 24);
      v63 = v195;
      if (swift_getEnumCaseMultiPayload() != 14)
      {

        goto LABEL_67;
      }

      v64 = v53;
      v65 = *v63;
      v66 = *(v63 + 1);
      v67 = v63;
      v68 = *(v63 + 2);
      v195 = *(v67 + 3);
      sub_21D0D8CF0(0, &qword_280D17680);
      if ((sub_21DBFB63C() & 1) == 0)
      {

        goto LABEL_77;
      }

      if (v60 == v66 && v61 == v68)
      {

        goto LABEL_75;
      }

      v169 = sub_21DBFC64C();

      if ((v169 & 1) == 0)
      {
LABEL_77:
        sub_21D101450(v64, type metadata accessor for TTRAccountsListsViewModel.Item);
        goto LABEL_68;
      }

LABEL_75:
      if (v62 != v195)
      {
        goto LABEL_77;
      }

      v103 = v64;
LABEL_82:
      sub_21D101450(v103, type metadata accessor for TTRAccountsListsViewModel.Item);
      v82 = 1;
      return v82 & 1;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_27;
      }

      goto LABEL_67;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_67;
      }

LABEL_27:
      v103 = v53;
      goto LABEL_82;
    default:
      sub_21D0FE734(v53, v50, type metadata accessor for TTRAccountsListsViewModel.Item);
      v57 = v195;
      if (!swift_getEnumCaseMultiPayload())
      {
        v165 = v190;
        v164 = v191;
        v166 = v172;
        (*(v190 + 32))(v172, v57, v191);
        v82 = _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0();
        v106 = v53;
        v167 = *(v165 + 8);
        v167(v166, v164);
        v167(v50, v164);
LABEL_51:
        sub_21D101450(v106, type metadata accessor for TTRAccountsListsViewModel.Item);
        return v82 & 1;
      }

      (*(v190 + 8))(v50, v191);
LABEL_67:
      sub_21D0CF7E0(v53, &qword_27CE64CE8);
      goto LABEL_68;
  }
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC4ListV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v75 = *(a1 + 32);
  v76 = *(a1 + 24);
  v73 = *(a1 + 48);
  v74 = *(a1 + 40);
  v56 = *(a1 + 56);
  v72 = *(a1 + 64);
  v70 = *(a1 + 72);
  v68 = *(a1 + 88);
  v69 = *(a1 + 80);
  v66 = *(a1 + 104);
  v67 = *(a1 + 96);
  v65 = *(a1 + 112);
  v64 = *(a1 + 120);
  v53 = *(a1 + 136);
  v54 = *(a1 + 128);
  v52 = *(a1 + 144);
  v48 = *(a1 + 145);
  v46 = *(a1 + 146);
  v44 = *(a1 + 147);
  v42 = *(a1 + 148);
  v40 = *(a1 + 152);
  v37 = *(a1 + 168);
  v34 = *(a1 + 160);
  v35 = *(a1 + 176);
  v32 = *(a1 + 184);
  v30 = *(a1 + 192);
  v24 = *(a1 + 200);
  v27 = *(a1 + 208);
  v26 = *(a1 + 216);
  v22 = *(a1 + 217);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v55 = *(a2 + 56);
  v71 = *(a2 + 64);
  v62 = *(a2 + 80);
  v63 = *(a2 + 72);
  v60 = *(a2 + 96);
  v61 = *(a2 + 88);
  v58 = *(a2 + 112);
  v59 = *(a2 + 104);
  v57 = *(a2 + 120);
  v50 = *(a2 + 136);
  v51 = *(a2 + 128);
  v49 = *(a2 + 144);
  v47 = *(a2 + 145);
  v45 = *(a2 + 146);
  v43 = *(a2 + 147);
  v41 = *(a2 + 148);
  v33 = *(a2 + 160);
  v36 = *(a2 + 168);
  v38 = *(a2 + 176);
  v39 = *(a2 + 152);
  v31 = *(a2 + 184);
  v23 = *(a2 + 200);
  v28 = *(a2 + 208);
  v29 = *(a2 + 192);
  v25 = *(a2 + 216);
  v21 = *(a2 + 217);
  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    result = 0;
  }

  else
  {
    v11 = sub_21DBFC64C();
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  if (v76 != v6 || v75 != v7)
  {
    return result;
  }

  if ((v74 != v8 || v73 != v9) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v72)
  {
    if (!v71 || (v56 != v55 || v72 != v71) && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v84 = v70;
  v85 = v69;
  v86 = v68;
  v87 = v67;
  v88 = v66;
  v89 = v65;
  v90 = v64;
  v77 = v63;
  v78 = v62;
  v79 = v61;
  v80 = v60;
  v81 = v59;
  v82 = v58;
  v83 = v57;
  sub_21D0FB960(v70, v69, v68, v67, v66, v65, v64);
  sub_21D0FB960(v63, v62, v61, v60, v59, v58, v57);
  v12 = _s15RemindersUICore24TTRCrossDeviceIdentifierO2eeoiySbAC_ACtFZ_0(&v84, &v77);
  sub_21D1078C0(v77, v78, v79, v80, v81, v82, v83);
  sub_21D1078C0(v84, v85, v86, v87, v88, v89, v90);
  if (!v12)
  {
    return 0;
  }

  v84 = v54;
  v85 = v53;
  LOBYTE(v86) = v52;
  v77 = v51;
  v78 = v50;
  LOBYTE(v79) = v49;
  sub_21D0FB9BC(v54, v53, v52);
  sub_21D0FB9BC(v51, v50, v49);
  v13 = _s15RemindersUICore27TTRListDetailViewModelBadgeO2eeoiySbAC_ACtFZ_0(&v84, &v77);
  sub_21D0FB9F4(v77, v78, v79);
  sub_21D0FB9F4(v84, v85, v86);
  result = 0;
  if (v13 & 1) == 0 || ((v48 ^ v47))
  {
    return result;
  }

  if (v46 == 2)
  {
    result = 0;
    if (v45 != 2)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v45 == 2 || ((v45 ^ v46) & 1) != 0)
    {
      return result;
    }
  }

  if (((v44 ^ v43) & 1) != 0 || ((v42 ^ v41) & 1) != 0 || v40 != v39)
  {
    return result;
  }

  if (v37)
  {
    v14 = v38;
    if (!v36 || (v34 != v33 || v37 != v36) && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v14 = v38;
    if (v36)
    {
      return 0;
    }
  }

  if (v35)
  {
    if (!v14)
    {
      goto LABEL_49;
    }

    swift_bridgeObjectRetain_n();
    sub_21DBF8E0C();
    v15 = sub_21D1D7464(v35, v14);
    swift_bridgeObjectRelease_n();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v14)
    {
      goto LABEL_49;
    }
  }

  if (v32)
  {
    if (v31)
    {
      swift_bridgeObjectRetain_n();
      sub_21DBF8E0C();
      v16 = sub_21D1D75A8(v32, v31);
      swift_bridgeObjectRelease_n();

      if ((v16 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_53;
    }

LABEL_49:
    sub_21DBF8E0C();

    return 0;
  }

  if (v31)
  {
    goto LABEL_49;
  }

LABEL_53:
  if (v30)
  {
    if (!v29)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17880);
    v17 = v29;
    v18 = v30;
    v19 = sub_21DBFB63C();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  if (!v27)
  {
    result = 0;
    if (v28)
    {
      return result;
    }

    goto LABEL_67;
  }

  if (!v28)
  {
    return 0;
  }

  if (v24 == v23 && v27 == v28)
  {
    if (v26 == v25)
    {
      return v22 ^ v21 ^ 1u;
    }

    return 0;
  }

  v20 = sub_21DBFC64C();
  result = 0;
  if (v20)
  {
LABEL_67:
    if (((v26 ^ v25) & 1) == 0)
    {
      return v22 ^ v21 ^ 1u;
    }
  }

  return result;
}

BOOL _s15RemindersUICore24TTRCrossDeviceIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v38 = *(a1 + 16);
  v39 = *(a1 + 8);
  v37 = *(a1 + 24);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      v34 = *(a2 + 8);
      sub_21D0D8CF0(0, &qword_280D17680);
      sub_21D0FB960(v7, v34, v8, v9, v10, v11, 1);
      sub_21D0FB960(v2, v39, v38, v37, v4, v3, 1);
      v13 = sub_21DBFB63C();
      sub_21D1078C0(v2, v39, v38, v37, v4, v3, 1);
      sub_21D1078C0(v7, v34, v8, v9, v10, v11, 1);
      return v13 & 1;
    }

    goto LABEL_5;
  }

  if (*(a2 + 48))
  {
LABEL_5:
    v35 = *(a2 + 8);
    sub_21D0FB960(*a2, v35, v8, v9, v10, v11, v12);
    sub_21D0FB960(v2, v39, v38, v37, v4, v3, v5);
    sub_21D1078C0(v2, v39, v38, v37, v4, v3, v5);
    v15 = v7;
    v16 = v11;
    v18 = v8;
    v17 = v35;
    v19 = v9;
    v20 = v10;
    v21 = v12;
LABEL_6:
    sub_21D1078C0(v15, v17, v18, v19, v20, v16, v21);
    return 0;
  }

  if ((v2 != v7 || v39 != v6) && (v22 = *(a2 + 8), v23 = sub_21DBFC64C(), v6 = v22, (v23 & 1) == 0) || (v38 != v8 || v37 != v9) && (v24 = v8, v25 = v6, v26 = sub_21DBFC64C(), v6 = v25, v8 = v24, (v26 & 1) == 0))
  {
    v36 = v6;
    sub_21D0FB960(v7, v6, v8, v9, v10, v11, 0);
    sub_21D0FB960(v2, v39, v38, v37, v4, v3, 0);
    sub_21D1078C0(v2, v39, v38, v37, v4, v3, 0);
    v15 = v7;
    v17 = v36;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v16 = v11;
    v21 = 0;
    goto LABEL_6;
  }

  if (v4 == v10 && v3 == v11)
  {
    v27 = v8;
    v28 = v8;
    v29 = v6;
    sub_21D0FB960(v7, v6, v28, v9, v4, v3, 0);
    sub_21D0FB960(v2, v39, v38, v37, v4, v3, 0);
    sub_21D1078C0(v2, v39, v38, v37, v4, v3, 0);
    sub_21D1078C0(v7, v29, v27, v9, v4, v3, 0);
    return 1;
  }

  else
  {
    v30 = v8;
    v33 = v8;
    v31 = v6;
    v32 = sub_21DBFC64C();
    sub_21D0FB960(v7, v31, v30, v9, v10, v11, 0);
    sub_21D0FB960(v2, v39, v38, v37, v4, v3, 0);
    sub_21D1078C0(v2, v39, v38, v37, v4, v3, 0);
    sub_21D1078C0(v7, v31, v33, v9, v10, v11, 0);
    return (v32 & 1) != 0;
  }
}

uint64_t _s15RemindersUICore27TTRListDetailViewModelBadgeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      if (v3 == v6 && v2 == v5)
      {
        v9 = 1;
        sub_21D0FB9BC(*a1, v2, 1);
        sub_21D0FB9BC(v3, v2, 1);
        sub_21D0FB9F4(v3, v2, 1);
        v10 = v3;
        v11 = v2;
      }

      else
      {
        v9 = sub_21DBFC64C();
        sub_21D0FB9BC(v3, v2, 1);
        sub_21D0FB9BC(v6, v5, 1);
        sub_21D0FB9F4(v3, v2, 1);
        v10 = v6;
        v11 = v5;
      }

      v17 = 1;
LABEL_19:
      sub_21D0FB9F4(v10, v11, v17);
      return v9 & 1;
    }
  }

  else if ((*(a2 + 16) & 1) == 0)
  {
    v12 = sub_21DBFA16C();
    v14 = v13;
    if (v12 == sub_21DBFA16C() && v14 == v15)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_21DBFC64C();
    }

    sub_21D0FB9BC(v6, v5, 0);
    sub_21D0FB9BC(v3, v2, 0);
    sub_21D0FB9BC(v3, v2, 0);
    sub_21D0FB9BC(v6, v5, 0);

    sub_21D0FB9F4(v3, v2, 0);
    sub_21D0FB9F4(v6, v5, 0);
    sub_21D0FB9F4(v6, v5, 0);
    v10 = v3;
    v11 = v2;
    v17 = 0;
    goto LABEL_19;
  }

  sub_21D0FB9BC(*a1, v2, v4);
  sub_21D0FB9BC(v6, v5, v7);
  sub_21D0FB9F4(v3, v2, v4);
  sub_21D0FB9F4(v6, v5, v7);
  v9 = 0;
  return v9 & 1;
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC7AccountV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 25);
  v3 = *(a1 + 26);
  v4 = *(a1 + 27);
  v20 = *(a1 + 29);
  v16 = *(a1 + 31);
  v5 = *(a2 + 25);
  v6 = *(a2 + 26);
  v7 = *(a2 + 27);
  v21 = *(a2 + 28);
  v22 = *(a1 + 28);
  v18 = *(a1 + 30);
  v19 = *(a2 + 29);
  v17 = *(a2 + 30);
  v15 = *(a2 + 31);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v8 = sub_21D1220B8();
  v10 = v9;
  v12 = v4 ^ v7;
  if (v8 == sub_21D1220B8() && v10 == v11)
  {

    result = 0;
    if ((v2 ^ v5 | v3 ^ v6 | v12))
    {
      return result;
    }
  }

  else
  {
    v14 = sub_21DBFC64C();

    result = 0;
    if ((v2 ^ v5) & 1 | ((v14 & 1) == 0) | ((v3 ^ v6) | v12) & 1)
    {
      return result;
    }
  }

  if (((v22 ^ v21) & 1) == 0 && ((v20 ^ v19) & 1) == 0 && ((v18 ^ v17) & 1) == 0)
  {
    return v16 ^ v15 ^ 1u;
  }

  return result;
}

uint64_t sub_21D121B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE593A8);
  MEMORY[0x28223BE20](v63);
  v7 = &v58 - v6;
  v62 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v62);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  MEMORY[0x28223BE20](v14);
  v18 = &v58 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  if (!v19 || a1 == a2)
  {
    return 1;
  }

  v59 = v16;
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v61 = *(v15 + 72);
  while (1)
  {
    sub_21D1221E8(v21, v18, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v64 = v22;
    v65 = v21;
    sub_21D1221E8(v22, v13, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v23 = &v7[*(v63 + 48)];
    sub_21D1221E8(v18, v7, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    sub_21D1221E8(v13, v23, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v49 = v19;
    v50 = v59;
    sub_21D1221E8(v7, v59, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21D1222E8(v50, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      goto LABEL_16;
    }

    v51 = v18;
    v52 = v7;
    v53 = v13;
    v54 = v60;
    sub_21D122284(v23, v60);
    v55 = _s15RemindersUICore25TTRAccountsListsViewModelC9SmartListV2eeoiySbAE_AEtFZ_0(v50, v54);
    v56 = v54;
    v13 = v53;
    v7 = v52;
    v18 = v51;
    sub_21D1222E8(v56, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    sub_21D1222E8(v50, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    sub_21D1222E8(v7, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v19 = v49;
    if ((v55 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_5:
    sub_21D1222E8(v13, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    sub_21D1222E8(v18, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v22 = v64 + v61;
    v21 = v65 + v61;
    if (!--v19)
    {
      return 1;
    }
  }

  sub_21D1221E8(v7, v9, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  v24 = v9[11];
  v82[10] = v9[10];
  v82[11] = v24;
  v83[0] = v9[12];
  *(v83 + 10) = *(v9 + 202);
  v25 = v9[7];
  v82[6] = v9[6];
  v82[7] = v25;
  v26 = v9[9];
  v82[8] = v9[8];
  v82[9] = v26;
  v27 = v9[3];
  v82[2] = v9[2];
  v82[3] = v27;
  v28 = v9[5];
  v82[4] = v9[4];
  v82[5] = v28;
  v29 = v9[1];
  v82[0] = *v9;
  v82[1] = v29;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *(v23 + 11);
    v31 = *(v23 + 9);
    v79 = *(v23 + 10);
    v80 = v30;
    v32 = *(v23 + 11);
    v81[0] = *(v23 + 12);
    *(v81 + 10) = *(v23 + 202);
    v33 = *(v23 + 7);
    v34 = *(v23 + 5);
    v75 = *(v23 + 6);
    v76 = v33;
    v35 = *(v23 + 7);
    v36 = *(v23 + 9);
    v77 = *(v23 + 8);
    v78 = v36;
    v37 = *(v23 + 3);
    v38 = *(v23 + 1);
    v71 = *(v23 + 2);
    v72 = v37;
    v39 = *(v23 + 3);
    v40 = *(v23 + 5);
    v73 = *(v23 + 4);
    v74 = v40;
    v41 = *(v23 + 1);
    v70[0] = *v23;
    v70[1] = v41;
    v42 = v9[11];
    v68[10] = v9[10];
    v68[11] = v42;
    v69[0] = v9[12];
    *(v69 + 10) = *(v9 + 202);
    v43 = v9[7];
    v68[6] = v9[6];
    v68[7] = v43;
    v44 = v9[9];
    v68[8] = v9[8];
    v68[9] = v44;
    v45 = v9[3];
    v68[2] = v9[2];
    v68[3] = v45;
    v46 = v9[5];
    v68[4] = v9[4];
    v68[5] = v46;
    v47 = v9[1];
    v68[0] = *v9;
    v68[1] = v47;
    v66[10] = v79;
    v66[11] = v32;
    v67[0] = *(v23 + 12);
    *(v67 + 10) = *(v23 + 202);
    v66[6] = v75;
    v66[7] = v35;
    v66[8] = v77;
    v66[9] = v31;
    v66[2] = v71;
    v66[3] = v39;
    v66[4] = v73;
    v66[5] = v34;
    v66[0] = v70[0];
    v66[1] = v38;
    v48 = _s15RemindersUICore25TTRAccountsListsViewModelC4ListV2eeoiySbAE_AEtFZ_0(v68, v66);
    sub_21D1077D8(v70);
    sub_21D1077D8(v82);
    sub_21D1222E8(v7, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    if ((v48 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  sub_21D1077D8(v82);
LABEL_16:
  sub_21D0CF7E0(v7, &qword_27CE593A8);
LABEL_17:
  sub_21D1222E8(v13, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  sub_21D1222E8(v18, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  return 0;
}

uint64_t sub_21D1220B8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      return 0x726F727265;
    }

    if (v1 == 5)
    {
      return 0x64656873696E6966;
    }
  }

  else
  {
    if (v1 == 2)
    {
      return 0x6C69617641746F6ELL;
    }

    if (v1 == 3)
    {
      return 0x6572676F72506E69;
    }
  }

  sub_21DBFBEEC();

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x223D42AA0](v3, v4);

  return 0xD000000000000024;
}

uint64_t sub_21D1221E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D122250(uint64_t a1)
{

  return a1;
}

uint64_t sub_21D122284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D1222E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall NSDiffableDataSourceSnapshot.setSectionIdentifiersWithDiff(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v3 = *(v1 + 16);
  v67 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](a1._rawValue);
  v58 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v60 = &v54 - v7;
  MEMORY[0x28223BE20](v6);
  v76 = &v54 - v8;
  v9 = sub_21DBF5F9C();
  v75 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = v11;
  MEMORY[0x28223BE20](v10);
  v74 = &v54 - v13;
  v73 = sub_21DBF5F4C();
  v14 = *(v73 - 1);
  MEMORY[0x28223BE20](v73);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF8AEC();
  v77 = a1._rawValue;
  v78 = v17;
  v18 = sub_21DBFA74C();
  swift_getWitnessTable();
  sub_21DBFAC7C();
  v56 = v17;
  v77 = rawValue;
  v78 = v17;
  v66 = v18;
  v19 = sub_21DBF5F2C();
  (*(v14 + 8))(v16, v73);
  v20 = v19;
  if (!sub_21DBFA6DC())
  {
LABEL_27:

    return;
  }

  v21 = 0;
  v73 = (v75 + 16);
  v70 = (v75 + 88);
  v71 = (v75 + 32);
  v69 = *MEMORY[0x277D44D80];
  v63 = *MEMORY[0x277D44D78];
  v59 = *MEMORY[0x277D44D68];
  v57 = *MEMORY[0x277D44D70];
  rawValue = (v75 + 96);
  v64 = (v67 + 8);
  v65 = v19;
  v61 = v67 + 16;
  v62 = v67 + 32;
  v68 = v12;
  while (1)
  {
    v22 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v22)
    {
      v23 = v74;
      (*(v75 + 16))(v74, v20 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v21, v9);
      v24 = v76;
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v51 = sub_21DBFBF7C();
      v24 = v76;
      v23 = v74;
      if (v55 != 8)
      {
        goto LABEL_30;
      }

      v78 = v51;
      (*v73)(v74, &v78, v9);
      swift_unknownObjectRelease();
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    (*v71)(v12, v23, v9);
    v26 = (*v70)(v12, v9);
    if (v26 == v69)
    {
      (*rawValue)(v12, v9);
      v27 = *v12;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v29 = v12;
      v30 = v67;
      (*(v67 + 32))(v24, v29 + *(TupleTypeMetadata2 + 48), v3);
      sub_21DBF8AEC();
      v31 = sub_21DBFA6DC();

      sub_21D23CE60(v3, v3);
      swift_allocObject();
      v32 = sub_21DBFA60C();
      (*(v30 + 16))(v33, v24, v3);
      v78 = v32;
      nullsub_1(v66, v34, v35);
      if (v27 >= v31)
      {
        sub_21DBF8A6C();

        (*v64)(v24, v3);
      }

      else
      {
        sub_21DBF8AEC();
        v36 = v60;
        sub_21DBFA78C();

        v20 = v65;
        sub_21DBF8A9C();

        v37 = *v64;
        (*v64)(v36, v3);
        v37(v76, v3);
      }

      v12 = v68;
      goto LABEL_5;
    }

    if (v26 == v63)
    {
      (*rawValue)(v12, v9);
      sub_21D23CE60(v3, v3);
      swift_allocObject();
      v38 = sub_21DBFA60C();
      sub_21DBF8AEC();
      v12 = v68;
      sub_21DBFA78C();

      v78 = v38;
      nullsub_1(v66, v39, v40);
      sub_21DBF8A7C();

      v20 = v65;
      goto LABEL_5;
    }

    if (v26 != v59)
    {
      if (v26 != v57)
      {
        goto LABEL_31;
      }

      (*rawValue)(v12, v9);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v47 = *(TupleTypeMetadata3 + 48);
      v48 = *v64;
      (*v64)(v12 + *(TupleTypeMetadata3 + 64), v3);
      v48(v12 + v47, v3);
      v20 = v65;
      goto LABEL_5;
    }

    (*rawValue)(v12, v9);
    v41 = v12[1];
    if (*v12 < v41 && __OFADD__(v41++, 1))
    {
      break;
    }

    sub_21DBF8AEC();
    v43 = v58;
    sub_21DBFA78C();

    sub_21DBF8AEC();
    v44 = sub_21DBFA6DC();

    sub_21DBF8AEC();
    if (v41 >= v44)
    {
      v45 = v60;
      v20 = v65;
      if (__OFSUB__(v41, 1))
      {
        goto LABEL_29;
      }

      sub_21DBFA78C();

      v43 = v58;
      sub_21DBF8A3C();
    }

    else
    {
      v45 = v60;
      sub_21DBFA78C();

      sub_21DBF8A4C();
      v20 = v65;
    }

    v49 = *v64;
    (*v64)(v45, v3);
    v49(v43, v3);
    v50 = swift_getTupleTypeMetadata3();
    v12 = v68;
    v49(v68 + *(v50 + 64), v3);
LABEL_5:
    ++v21;
    if (v25 == sub_21DBFA6DC())
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  if (qword_27CE565C0 != -1)
  {
    swift_once();
  }

  v52 = sub_21DBF84BC();
  __swift_project_value_buffer(v52, qword_27CE5A038);
  v53 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v53);
  sub_21DAEAB00("unknown patch element", 21, 2);
  __break(1u);
}

uint64_t sub_21D122DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D122DFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TTRPrivacyChecker.inlineRequestPresentationState(for:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 136) = *a2;
  sub_21DBFA84C();
  *(v5 + 72) = sub_21DBFA83C();
  v8 = sub_21DBFA7CC();
  *(v5 + 80) = v8;
  *(v5 + 88) = v7;

  return MEMORY[0x2822009F8](sub_21D122F68, v8, v7);
}

uint64_t sub_21D122F68()
{
  if (*(v0 + 136))
  {

    **(v0 + 16) = 0;

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v4 + 16);
    *(v0 + 96) = v5;
    *(v0 + 104) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0x6FE1000000000000;
    v6 = v5(v3);
    v8 = v7;
    *(v0 + 112) = v6;
    ObjectType = swift_getObjectType();
    v11 = (*(v8 + 24) + **(v8 + 24));
    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    *v10 = v0;
    v10[1] = sub_21D1238C0;

    return v11(ObjectType, v8);
  }
}

uint64_t sub_21D123164()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D1237C4;

  return TTRNotificationsAccessService.authorizationStatus()();
}

uint64_t sub_21D123210()
{
  v1 = *(v0[19] + 32);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21D12366C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21D123608;
  v0[13] = &block_descriptor_128;
  v0[14] = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t *TTRTreeStorageNode.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128));

  swift_weakDestroy();
  return v0;
}

uint64_t TTRTreeStorageNode.__deallocating_deinit()
{
  TTRTreeStorageNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D12349C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280D17ED8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_280D0F240);
  sub_21DBF8E0C();
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAE9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_21D0CDFB4(a1, a2, &v13);
    _os_log_impl(&dword_21D0C9000, v8, v9, "%s resolve", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223D46520](v11, -1, -1);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  result = sub_21DBF5FCC();
  if (a4)
  {
    return sub_21DBF5FCC();
  }

  return result;
}

uint64_t sub_21D123608(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_21D12366C()
{

  return MEMORY[0x2822009F8](sub_21D12374C, 0, 0);
}

uint64_t sub_21D12374C()
{
  v1 = *(v0 + 144);
  v2 = [v1 authorizationStatus];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_21D1237C4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21D1238C0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  swift_unknownObjectRelease();
  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_21D123A0C, v4, v3);
}

uint64_t sub_21D123A0C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);

  v2(v4, v3);
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 56))(ObjectType, v6);
  swift_unknownObjectRelease();
  if ((v1 - 2) < 3)
  {
LABEL_5:
    sub_21D0CF7E0(*(v0 + 64), &qword_27CE58D68);
    v16 = 0;
    goto LABEL_6;
  }

  if (v1 != 1)
  {
    if (!v1)
    {
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      (*(v0 + 96))(*(v0 + 24), *(v0 + 32));
      v11 = v10;
      v12 = swift_getObjectType();
      (*(v11 + 32))(v12, v11);
      swift_unknownObjectRelease();
      v13 = sub_21DBF563C();
      v14 = (*(*(v13 - 8) + 48))(v9, 1, v13) != 1;
      sub_21D0CF7E0(v9, &qword_27CE58D68);
      v15 = sub_21D393AC8(v14, v8, 168, 0);
      sub_21D0CF7E0(v8, &qword_27CE58D68);
      v16 = v15 & 1;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v19 = *(v0 + 64);
  v20 = *(v0 + 48);
  (*(v0 + 96))(*(v0 + 24), *(v0 + 32));
  v22 = v21;
  v23 = swift_getObjectType();
  (*(v22 + 32))(v23, v22);
  swift_unknownObjectRelease();
  v24 = sub_21DBF563C();
  v25 = (*(*(v24 - 8) + 48))(v20, 1, v24) != 1;
  sub_21D0CF7E0(v20, &qword_27CE58D68);
  v26 = sub_21D393AC8(v25, v19, 4320, 0);
  sub_21D0CF7E0(v19, &qword_27CE58D68);
  if (v26)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

LABEL_6:
  **(v0 + 16) = v16;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_21D123CE0()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

uint64_t sub_21D123D40@<X0>(SEL *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [v2 *a1];
  if (v4)
  {
    v5 = v4;
    sub_21DBF55FC();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_21DBF563C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t initializeBufferWithCopyOfBuffer for TTRReminderAndComputedProperties(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for TTRIStaticTableViewStandardCell.SideBySideTitleConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIStaticTableViewStandardCell.SideBySideTitleConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRRecurrenceDayOfWeekModel(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRRecurrenceDayOfWeekModel(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *sub_21D123F10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21D123F24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DBFA16C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_21D123F50(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21D123FBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21D123FE8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *sub_21D1240CC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_21D1240DC()
{

  return swift_deallocObject();
}

id sub_21D124144@<X0>(void *a1@<X8>)
{
  result = TTRProcessEnvironment.isolatedStoreContainerToken.getter();
  *a1 = result;
  return result;
}

void sub_21D124180(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21D181AF0(v1);
}

id sub_21D124208@<X0>(_BYTE *a1@<X8>)
{
  result = TTRProcessEnvironment.assertOnMainThreadFetches.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21D124248(_BYTE *a1)
{
  if (*a1)
  {
    v1 = 49;
  }

  else
  {
    v1 = 48;
  }

  return sub_21D17C564(v1, 0xE100000000000000, 0xD00000000000001CLL, 0x800000021DC44440);
}

void *_s15RemindersUICore21TTRProcessEnvironmentVwCP_0(void *a1, void *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D1242C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D124324(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D124388()
{

  return swift_deallocObject();
}

uint64_t sub_21D1243C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D12441C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_21D183E24(v2, v1);
}

id sub_21D124458@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21D1244C4()
{

  return swift_deallocObject();
}

uint64_t sub_21D12452C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1245C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D1245F8()
{

  sub_21D157478(*(v0 + 24), *(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return swift_deallocObject();
}

void **_s15RemindersUICore16TTREditingOptionOwCP_0(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

uint64_t sub_21D1246D0()
{

  return swift_deallocObject();
}

uint64_t sub_21D124730()
{

  return swift_deallocObject();
}

__n128 sub_21D1247A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D1247F8()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D124830()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for TTRIMenuItem() - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[12], v1);

  return swift_deallocObject();
}

uint64_t sub_21D124948()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D124980()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D1249B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D1249FC()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

void *_s15RemindersUICore24TTRLocationChangeMonitorC13FailureReasonOwCP_0(void *result, void **a2)
{
  v2 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v3 = result;
    v4 = v2;
    result = v3;
  }

  *result = v2;
  return result;
}

uint64_t sub_21D124A78()
{

  return swift_deallocObject();
}

uint64_t sub_21D124AB0()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D124AE8()
{

  return swift_deallocObject();
}

uint64_t sub_21D124BDC()
{

  return swift_deallocObject();
}

uint64_t sub_21D124C14@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27CE59198;
  *a1 = qword_27CE59190;
  a1[1] = v2;
  return sub_21DBF8E0C();
}

id sub_21D124C80()
{
  v1 = [*v0 objectID];

  return v1;
}

id sub_21D124CB8()
{
  v1 = [*v0 accountID];

  return v1;
}

uint64_t sub_21D124D14()
{

  return swift_deallocObject();
}

uint64_t sub_21D124D4C()
{

  return swift_deallocObject();
}

uint64_t sub_21D124D94()
{

  return swift_deallocObject();
}

uint64_t sub_21D124DD4()
{

  return swift_deallocObject();
}

uint64_t sub_21D124E14()
{

  return swift_deallocObject();
}

uint64_t sub_21D124E54()
{

  return swift_deallocObject();
}

uint64_t sub_21D124E8C()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D124ECC()
{

  return swift_deallocObject();
}

uint64_t sub_21D124F08()
{

  return swift_deallocObject();
}

uint64_t sub_21D124F60()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  return swift_deallocObject();
}

uint64_t sub_21D124FC0()
{

  return swift_deallocObject();
}

uint64_t sub_21D125008()
{

  return swift_deallocObject();
}

uint64_t sub_21D125160()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D125198()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

id sub_21D1251F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*(*a1 + OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillView) + OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_fillColor);
  *a2 = v2;
  return v2;
}

id sub_21D125244@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*(*a1 + OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillView) + OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_glowLayer) shadowRadius];
  *a2 = v4;
  return result;
}

uint64_t sub_21D1252EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_isSelected;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_21D12538C()
{
  v1 = [*(*(*v0 + 16) + 16) saveRequest];

  return v1;
}

uint64_t sub_21D1253D0()
{

  return swift_deallocObject();
}

uint64_t sub_21D125408()
{
  v1 = sub_21DBF806C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6, 1, v8))
  {
    (*(v9 + 8))(v0 + v6, v8);
  }

  v10 = (v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

uint64_t sub_21D1255DC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D12562C()
{

  return swift_deallocObject();
}

uint64_t sub_21D12566C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D1256B0()
{

  return swift_deallocObject();
}

uint64_t sub_21D1256F4()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D12572C()
{

  return swift_deallocObject();
}

uint64_t _s15RemindersUICore24TTRListOrCustomSmartListOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRSection(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t assignWithTake for TTRSection(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t _s15RemindersUICore41TTRRemindersListReminderInsertionPositionOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D227D78(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t _s15RemindersUICore43TTRRemindersListBatchReminderCreationParamsOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D22A85C(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

void *_s15RemindersUICore31TTRRemindersListDefaultListTypeOwCP_0(void *result, void **a2)
{
  v2 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v3 = result;
    v4 = v2;
    result = v3;
  }

  *result = v2;
  return result;
}

id sub_21D125950(id result, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 2u)
  {
    if (a5 != 2)
    {
      return result;
    }

    v7 = result;
    v6 = a2;
    sub_21DBF8E0C();
    result = v7;
  }

  return result;
}

uint64_t sub_21D1259E0()
{

  return swift_deallocObject();
}

uint64_t sub_21D125A20()
{

  return swift_deallocObject();
}

uint64_t sub_21D125A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D125AF4()
{

  return swift_deallocObject();
}

uint64_t sub_21D125B3C()
{

  return swift_deallocObject();
}

uint64_t sub_21D125B7C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_21D125BD4()
{

  return swift_deallocObject();
}

uint64_t sub_21D125C0C()
{

  return swift_deallocObject();
}

uint64_t sub_21D125C4C()
{

  return swift_deallocObject();
}

uint64_t sub_21D125C8C()
{

  return swift_deallocObject();
}

uint64_t sub_21D125CD4()
{

  sub_21D22D1B0(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_21D125DF4()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21D125E2C()
{

  return swift_deallocObject();
}

uint64_t sub_21D125E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D125F20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF54CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D126110()
{

  return swift_deallocObject();
}

uint64_t sub_21D126148()
{

  return swift_deallocObject();
}

uint64_t sub_21D126188()
{
  v1 = *(type metadata accessor for TTRICustomRecurrenceEditorModuleState() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for TTRRecurrenceRuleModel(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {
    v4 = type metadata accessor for TTRRecurrenceEndModel(0);
    if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4) && !swift_getEnumCaseMultiPayload())
    {
      v5 = sub_21DBF563C();
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21D12636C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D1263E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D126460@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_21D23C880;
  a2[1] = v5;
}

void *_s15RemindersUICore47TTRReminderDetailPendingMoveDynamicItemProviderVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_21D126500()
{

  return swift_deallocObject();
}

uint64_t sub_21D12653C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D1265B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D1266C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D126700()
{

  return swift_deallocObject();
}

uint64_t sub_21D126738@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D126788(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D1267E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D126830(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D126890()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_21D126908()
{

  return swift_deallocObject();
}

uint64_t sub_21D126950()
{

  return swift_deallocObject();
}

uint64_t sub_21D126988()
{

  return swift_deallocObject();
}

uint64_t sub_21D1269D0()
{

  return swift_deallocObject();
}

uint64_t sub_21D126A10()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D126A70()
{

  return swift_deallocObject();
}

uint64_t sub_21D126AB0()
{

  return swift_deallocObject();
}

uint64_t sub_21D126B3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A178);
  sub_21D24CA70();
  sub_21D24CB84();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21D126BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21D126C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D126D40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DBF962C();
  *a1 = result;
  return result;
}

uint64_t sub_21D126DD8()
{
  v1 = sub_21DBF54CC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D126E60()
{

  return swift_deallocObject();
}

uint64_t sub_21D126E9C()
{
  v1 = sub_21DBF54CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (v4 + 16 + ((*(v2 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v4;
  v3(v0 + v5, v1);

  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_21D126F6C()
{

  return swift_deallocObject();
}

uint64_t sub_21D126FB4()
{

  return swift_deallocObject();
}

uint64_t sub_21D126FEC()
{

  return swift_deallocObject();
}

uint64_t sub_21D12703C()
{

  return swift_deallocObject();
}

uint64_t sub_21D12707C()
{

  return swift_deallocObject();
}

uint64_t sub_21D1270C4()
{

  return swift_deallocObject();
}

uint64_t sub_21D127104()
{

  return swift_deallocObject();
}

__n128 sub_21D1271B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21D1271BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_21D127208()
{

  sub_21D0E01A0(v0);
}

uint64_t _s15RemindersUICore35TTRIQuickBarInputAccessoryViewModelVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D127290()
{

  return swift_deallocObject();
}

void *_s15RemindersUICore31TTRIStaticTableViewStandardCellC13RoundRectIconVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 16);
  a1[2] = v5;
  v6 = v3;
  v7 = v4;
  v8 = v5;
  return a1;
}

uint64_t sub_21D127320()
{

  return swift_deallocObject();
}

uint64_t sub_21D127358()
{

  return swift_deallocObject();
}

uint64_t sub_21D1273A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21D1274C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21D1275D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21D1276D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t _s15RemindersUICore29TTRRemindersListTreeViewModelC13AuxiliaryDataVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_21D127838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D1278A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D127914()
{

  return swift_deallocObject();
}

__n128 sub_21D12795C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_21D127968()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_2;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 4)
    {
      if (v9 <= 7)
      {
        if (v9 != 5 && v9 != 6)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      if (v9 != 8 && v9 != 9)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v9 > 2)
      {
        goto LABEL_41;
      }

      if (v9 != 1)
      {
        if (v9 != 2)
        {
LABEL_45:
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v20 = v3 + *(v19 + 20);
          if (*(v20 + 8))
          {

            sub_21D179EF0(*(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56), *(v20 + 64));
            v21 = *(v20 + 120);
            if (v21 != 255)
            {
              sub_21D1078C0(*(v20 + 72), *(v20 + 80), *(v20 + 88), *(v20 + 96), *(v20 + 104), *(v20 + 112), v21 & 1);
            }
          }

          goto LABEL_2;
        }

LABEL_41:
        v18 = sub_21DBF563C();
        (*(*(v18 - 8) + 8))(v0 + v2, v18);
        goto LABEL_45;
      }
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
LABEL_34:

      goto LABEL_2;
    }

LABEL_20:

    v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v11 - 8) + 48))(v3 + v10, 1, v11))
    {
      goto LABEL_2;
    }

    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 4)
    {
      if (v12 <= 7)
      {
        if (v12 != 5 && v12 != 6)
        {
          goto LABEL_2;
        }

LABEL_49:
        v22 = sub_21DBF563C();
        (*(*(v22 - 8) + 8))(v3 + v10, v22);
        goto LABEL_2;
      }

      if (v12 != 8 && v12 != 9)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v12 > 2)
      {
        goto LABEL_49;
      }

      if (v12 != 1)
      {
        if (v12 != 2)
        {
          goto LABEL_2;
        }

        goto LABEL_49;
      }
    }

    goto LABEL_2;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v16 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if (!(*(*(v16 - 8) + 48))(v0 + v2, 1, v16))
      {
        v17 = sub_21DBF563C();
        (*(*(v17 - 8) + 8))(v0 + v2, v17);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v8 = sub_21DBF8D7C();
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
    }

    goto LABEL_2;
  }

  v13 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v2, 1, v13))
  {

    v14 = *(v13 + 20);
    v15 = sub_21DBF6C1C();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  v3 += *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v3 + 8))
  {

    goto LABEL_34;
  }

LABEL_2:

  return swift_deallocObject();
}