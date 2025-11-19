_BYTE *storeEnumTagSinglePayload for SportsPortableScoreboardViewLayout.Variation(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3EB2394()
{
  v0 = sub_1E4203FB4();
  __swift_allocate_value_buffer(v0, qword_1ECF717B8);
  *__swift_project_value_buffer(v0, qword_1ECF717B8) = 60;
  OUTLINED_FUNCTION_37_1();
  v2 = *(v1 + 104);

  return v2();
}

uint64_t sub_1E3EB2484()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 384))();
  v5 = *((*v2 & *v0) + 0x300);
  v6 = v5();
  if (!v6)
  {
    v45 = 0u;
    v46 = 0u;
    goto LABEL_6;
  }

  LOBYTE(v44) = v4 & 1;
  (*(*v6 + 776))(&v45, &v44, &unk_1F5D5E4E8, &off_1F5D5CBD8);

  if (!*(&v46 + 1))
  {
LABEL_6:
    sub_1E325F7FC(&v45, &unk_1ECF296E0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (swift_dynamicCast())
  {
    v7 = v44;
    goto LABEL_8;
  }

LABEL_7:
  v7 = sub_1E4205CB4();
LABEL_8:
  sub_1E384EE08(44);
  v9 = v8;
  v11 = v10;
  *(&v46 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  *&v45 = v7;
  v12 = v5();
  v13 = sub_1E3A7CD30(v9, v11, &v45, v12);

  result = __swift_destroy_boxed_opaque_existential_1(&v45);
  if (v13)
  {
    OUTLINED_FUNCTION_18_1();
    v16 = *(v15 + 600);

    v18 = v16(v17);
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    v19 = *((*v2 & *v1) + 0x168);
    if (v19())
    {
      OUTLINED_FUNCTION_30();
      v21 = (*(v20 + 2008))();
    }

    else
    {
      v21 = 0;
    }

    type metadata accessor for UIFactory();
    sub_1E3280A90(0, &qword_1EE23B360);
    v22 = sub_1E393D92C(v13, v18, &v45, v21);

    sub_1E325F7FC(&v45, &qword_1ECF296C0);
    OUTLINED_FUNCTION_36_3();
    v24 = (*((*v2 & v23) + 0x260))(v22);
    v25 = v16(v24);
    if (v25)
    {

      type metadata accessor for GradientView();
      [v1 bounds];
      sub_1E3890DAC();
      OUTLINED_FUNCTION_36_3();
      v27 = (*((*v2 & v26) + 0x248))();
      if ((v19)(v27))
      {
        OUTLINED_FUNCTION_30();
        v29 = (*(v28 + 2032))();

        OUTLINED_FUNCTION_36_3();
        v31 = *((*v2 & v30) + 0x240);
        v32 = v31();
        if (v32)
        {
          v33 = v32;
          sub_1E396030C(v29);
        }

        v34 = v31();
        if (v34)
        {
          v35 = v34;
          v36 = sub_1E39600A8();

          if (v36)
          {
            v37 = *(*v29 + 552);

            v37(&v45, v38);

            v39 = 0.0;
            if ((v47 & 1) == 0)
            {
              v40 = OUTLINED_FUNCTION_6();
              v39 = sub_1E3952BE8(v40, v41, v42, v43);
            }

            [v36 setCornerRadius_];
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E3EB29E0()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isLockupSelected;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3EB2A34(uint64_t a1)
{
  OUTLINED_FUNCTION_56_2(a1);
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E3EB2A80()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 600))();
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isLockupSelectionHidden;
    OUTLINED_FUNCTION_40_0();
    [v3 setHidden_];
  }

  OUTLINED_FUNCTION_54_39();
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 576))();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isLockupSelectionHidden;
    OUTLINED_FUNCTION_5_0();
    [v7 setHidden_];
  }

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3EB2B6C()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isLockupSelectionHidden;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3EB2BC0(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = OUTLINED_FUNCTION_14_0();
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1E3EB2C0C(uint64_t a1)
{
  OUTLINED_FUNCTION_56_2(a1);
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void *sub_1E3EB2C70()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_progressView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3EB2CB8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3EB2D34()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_appImageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EB2D70()
{
  OUTLINED_FUNCTION_79_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_56_5();
  v4 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_appImageView;
  v5 = v3;
  OUTLINED_FUNCTION_10_4();
  v6 = *&v1[v4];
  if (v6)
  {
    [v6 setVuiUserInteractionEnabled_];
    v7 = *&v1[v4];
  }

  else
  {
    v7 = 0;
  }

  [v1 vui:v7 addSubview:v0 oldView:?];

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3EB2DFC()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3EB2E78(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E3EB2EF8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_logoImageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3EB2F40()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3EB2FF0()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_textLabel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3EB3088()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3EB3104()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_subtitleLabel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3EB314C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3EB31C8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_badgeView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EB3204()
{
  OUTLINED_FUNCTION_79_0();
  v2 = v1;
  v3 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_badgeView;
  OUTLINED_FUNCTION_3_102();
  v4 = *&v0[v3];
  *&v0[v3] = v2;
  v5 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_badgeView;
  v6 = v2;
  OUTLINED_FUNCTION_40_0();
  [v0 vui:*&v0[v5] addSubview:v4 oldView:?];

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3EB327C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3EB32F8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_selectionGradientView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EB3334()
{
  OUTLINED_FUNCTION_79_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_56_5();
  v4 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_selectionGradientView;
  v5 = v3;
  OUTLINED_FUNCTION_10_4();
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x258);
  v7 = *(v1 + v4);
  v8 = v6();
  OUTLINED_FUNCTION_60_30(v8, sel_vui_insertSubview_belowSubview_oldView_);

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3EB33F4()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3EB3470()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_selectionView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3EB34B8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3EB3534()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_textBadge;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3EB357C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3EB35F8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_protectionView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EB3634()
{
  OUTLINED_FUNCTION_79_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_56_5();
  v4 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_protectionView;
  v5 = v3;
  OUTLINED_FUNCTION_10_4();
  v6 = *&v1[v4];
  v7 = [v1 vuiSubviews];
  sub_1E3280A90(0, &qword_1EE23AE80);
  v8 = sub_1E42062B4();

  if (!sub_1E32AE9B0(v8))
  {
    v10 = 0;
    goto LABEL_7;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1E6911E60](0, v8);
    goto LABEL_5;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
LABEL_5:
    v10 = v9;
LABEL_7:

    [v1 vui:v6 insertSubview:v10 belowSubview:v0 oldView:?];

    OUTLINED_FUNCTION_78_8();
    return;
  }

  __break(1u);
}

uint64_t sub_1E3EB3750()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3EB37CC()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_unfocusedProtectionView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EB3808()
{
  OUTLINED_FUNCTION_79_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_56_5();
  v4 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_unfocusedProtectionView;
  v5 = v3;
  OUTLINED_FUNCTION_10_4();
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x288);
  v7 = *(v1 + v4);
  v8 = v6();
  OUTLINED_FUNCTION_60_30(v8, sel_vui_insertSubview_aboveSubview_oldView_);

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3EB38C8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3EB3944()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_scorecardView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3EB398C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3EB3A08()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_legacyScorecardView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EB3A44()
{
  OUTLINED_FUNCTION_79_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_56_5();
  v4 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_legacyScorecardView;
  v5 = v3;
  OUTLINED_FUNCTION_40_0();
  v6 = *&v1[v4];
  if (v6 && (v7 = objc_opt_self(), v8 = v6, v9 = [v7 clearColor], objc_msgSend(v8, sel_setVuiBackgroundColor_, v9), v9, v8, (v10 = *&v1[v4]) != 0))
  {
    [v10 setVuiAlpha_];
    v11 = *&v1[v4];
  }

  else
  {
    v11 = 0;
  }

  [v1 vui:v11 addSubview:v0 oldView:?];

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3EB3B30()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3EB3BAC()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 648))();
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_12_5();
    v5 = (*(v4 + 744))();
    (*((*v0 & *v3) + 0x1B0))(v5);
  }

  OUTLINED_FUNCTION_12_5();
  if ((*(v6 + 672))())
  {
    OUTLINED_FUNCTION_12_5();
    v9 = v8;
    (*(v7 + 744))();
    (*((*v0 & *v9) + 0x1B0))();
  }
}

double sub_1E3EB3D78()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_cornerRadius;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

void sub_1E3EB3DAC(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_cornerRadius;
  OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  sub_1E3EB3BAC();
}

uint64_t sub_1E3EB3DF4(uint64_t a1)
{
  OUTLINED_FUNCTION_56_2(a1);
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E3EB3E64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_selectionViewModel;
  OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;

  sub_1E3EB2484();
}

uint64_t sub_1E3EB3EC8(uint64_t a1)
{
  OUTLINED_FUNCTION_56_2(a1);
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E3EB3F2C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1E3EB3F70()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_logoSize;
  OUTLINED_FUNCTION_5_0();
  return *v1;
}

uint64_t sub_1E3EB3FB4(uint64_t a1, uint64_t a2, char a3)
{
  result = OUTLINED_FUNCTION_9_1();
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

void *sub_1E3EB4050()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_backgroundImageForMaterial;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EB408C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_backgroundImageForMaterial;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3EB4120()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_forcesProtectionOnFocus;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3EB4154(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_forcesProtectionOnFocus;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3EB41E0()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_wantsUnfocusedCornerBlur;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3EB4214(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_wantsUnfocusedCornerBlur;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E3EB42A0()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_scoreboardViewModel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EB42DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_scoreboardViewModel;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3EB43D4()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_backgroundImageHasChanged;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3EB4408(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_backgroundImageHasChanged;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E3EB4494()
{
  v1 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_scorecardViewBackgroundImage;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EB44D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_scorecardViewBackgroundImage;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3EB4570(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_1();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E3EB4614(void *a1)
{
  v2 = v1 + *a1;
  OUTLINED_FUNCTION_5_0();
  return *v2;
}

uint64_t sub_1E3EB4654(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_1();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

void sub_1E3EB46EC(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 816))();
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_1E3280A90(0, &qword_1EE23AE00);
      v11 = a1;
      v6 = sub_1E4206F64();

      if (v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  OUTLINED_FUNCTION_12_5();
  (*(v7 + 944))(1);
  OUTLINED_FUNCTION_36_3();
  v9 = *((*v2 & v8) + 0x338);
  v11 = a1;
  v9(a1);
  v10 = OUTLINED_FUNCTION_1_36();
  sub_1E3EB4874(0, v10);
LABEL_9:
}

void sub_1E3EB4874(int a1)
{
  v7 = v1;
  OUTLINED_FUNCTION_5_16();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_31();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v99 - v15;
  v17 = MEMORY[0x1E69E7D40];
  v18 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x330))(v14);
  if (v18)
  {
    v19 = v18;
    v104 = a1;
    v20 = sub_1E324FBDC();
    v21 = v11[2];
    v102 = v20;
    v103 = v11 + 2;
    v101 = v21;
    (v21)(v16);
    v22 = v1;
    v23 = sub_1E41FFC94();
    v24 = sub_1E42067E4();

    v25 = os_log_type_enabled(v23, v24);
    v105 = v2;
    v106 = v11;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v26 = 136315394;
      v27 = sub_1E41E1364(v7);
      v100 = v9;
      v29 = v7;
      v30 = v22;
      v31 = v19;
      v32 = sub_1E3270FC8(v27, v28, &v108);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      OUTLINED_FUNCTION_6_12();
      v33 = sub_1E4206E64();
      v35 = sub_1E3270FC8(v33, v34, &v108);
      v19 = v31;
      v22 = v30;
      v7 = v29;
      v17 = MEMORY[0x1E69E7D40];

      *(v26 + 14) = v35;
      v9 = v100;
      _os_log_impl(&dword_1E323F000, v23, v24, "Overlay:: updateBackgroundMaterialImages %s, size = %s", v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v36 = v106;
    }

    else
    {

      v36 = v11;
    }

    v37 = v36[1];
    v37(v16, v9);
    v38 = sub_1E3EB7F34();
    v39 = sub_1E3EB80C0();
    v40 = v39;
    if (v38 & 1) != 0 || (v39)
    {
      [v22 frame];
      if (OUTLINED_FUNCTION_61_24(v41, v42, v43, v44))
      {
        v45 = v105;
        v101(v105, v102, v9);
        v46 = v22;
        v47 = sub_1E41FFC94();
        v48 = sub_1E42067E4();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = v19;
          v51 = swift_slowAlloc();
          v108 = v51;
          *v49 = 136315138;
          v52 = sub_1E41E1364(v7);
          v54 = v9;
          v55 = sub_1E3270FC8(v52, v53, &v108);

          *(v49 + 4) = v55;
          _os_log_impl(&dword_1E323F000, v47, v48, "Overlay:: updateBackgroundMaterialImages %s frame is zero, ignore for now", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v51);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          v56 = v105;
          v57 = v54;
        }

        else
        {

          v56 = v45;
          v57 = v9;
        }

        v37(v56, v57);
        *(v46 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_shouldUpdateTextBadgeBackground) = 1;
      }

      else
      {
        *(v22 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_shouldUpdateTextBadgeBackground) = 0;
        v58 = v22;
        sub_1E3EB8230(1);
        v59 = objc_allocWithZone(VUIOverlayBackgroundMaterialImagesOperation);
        v105 = v19;
        v60 = [v59 initWithSourceBackgroundImage_];
        v61 = OUTLINED_FUNCTION_6_12();
        v64 = [v62 v63];
        v65 = MEMORY[0x1E69E7CC0];
        v108 = MEMORY[0x1E69E7CC0];
        v66 = *((*v17 & *v58) + 0x270);
        v106 = v58;
        v67 = v66(v64);
        if (v67)
        {
          v68 = v67;
          if (v38)
          {
            [v67 frame];
            OUTLINED_FUNCTION_3();
            sub_1E3280A90(0, &qword_1EE23AF28);
            [v106 frame];
            OUTLINED_FUNCTION_42_61();
            sub_1E378A374(v69, v70, v71, v72, v3, v4, v5, v6);
            MEMORY[0x1E6910BF0]();
            OUTLINED_FUNCTION_53_41();
            if (v73)
            {
              OUTLINED_FUNCTION_7_14();
            }

            sub_1E4206324();
            v65 = v108;
          }
        }

        if ((sub_1E39DFFE0() & 1) == 0)
        {
          v74 = (*((*v17 & *v106) + 0x2D0))();
          if (v74)
          {
            v75 = v74;
            if (v40)
            {
              sub_1E3280A90(0, &qword_1EE23AF28);
              sub_1E3AA9EB4();

              [v106 frame];
              OUTLINED_FUNCTION_3();
              [v75 frame];
              OUTLINED_FUNCTION_27_0();
              v76 = OUTLINED_FUNCTION_6();
              sub_1E378A374(v76, v77, v78, v79, v80, v81, v82, v83);
              MEMORY[0x1E6910BF0]();
              OUTLINED_FUNCTION_53_41();
              if (v73)
              {
                OUTLINED_FUNCTION_7_14();
              }

              sub_1E4206324();
              v65 = v108;
            }
          }
        }

        sub_1E378AAC8(v65, v60);
        if (v104)
        {
          [v60 start];
          sub_1E3EB82B8(v60);

          v84 = v105;
        }

        else
        {
          sub_1E3280A90(0, &qword_1EE23B2A0);
          OUTLINED_FUNCTION_4_0();
          v85 = swift_allocObject();
          v86 = v106;
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_2_4();
          v87 = swift_allocObject();
          *(v87 + 16) = v85;
          *(v87 + 24) = v60;
          v88 = v60;
          v89 = sub_1E378A448(sub_1E3EB963C, v87);
          v90 = v88;
          [v89 addDependency_];
          v91 = [objc_opt_self() mainQueue];
          [v91 addOperation_];

          [*sub_1E41DA684() addOperation_];
          v92 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_pendingOperation;
          v93 = *(v86 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_pendingOperation);
          *(v86 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_pendingOperation) = v90;
          v94 = v90;

          v107 = v94;
          swift_getKeyPath();
          OUTLINED_FUNCTION_4_0();
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v95 = OUTLINED_FUNCTION_45_58();

          v96 = *(v86 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isOperationCancelledObserver);
          *(v86 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isOperationCancelledObserver) = v95;

          v97 = *(v86 + v92);
          if (v97)
          {
            v107 = *(v86 + v92);
            swift_getKeyPath();
            OUTLINED_FUNCTION_4_0();
            swift_allocObject();
            swift_unknownObjectWeakInit();
            v98 = v97;
            v97 = OUTLINED_FUNCTION_45_58();

            v86 = v106;
          }

          else
          {
          }

          v84 = *(v86 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isOperationFinishedObserver);
          *(v86 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isOperationFinishedObserver) = v97;
        }
      }
    }

    else
    {
    }
  }
}

id sub_1E3EB5110()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_overlayLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isLockupSelected) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isLockupSelectionHidden) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_progressView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_appImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_logoImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_textLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_selectionGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_selectionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_textBadge) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_protectionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_unfocusedProtectionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_scorecardView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_legacyScorecardView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_selectionViewModel) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_logoSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_backgroundImageForMaterial) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_forcesProtectionOnFocus) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_wantsUnfocusedCornerBlur) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_scoreboardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_originalScoreboardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_backgroundImageHasChanged) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_scorecardViewBackgroundImage) = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_endingTimestamp;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_startingTimestamp;
  *v3 = 0;
  *(v3 + 8) = 1;
  OUTLINED_FUNCTION_37_65(&OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_shouldUpdateTextBadgeBackground);
  *(v0 + *v4) = 0;
  *(v0 + v4[6]) = 0x3FF2B851EB851EB8;
  v11 = type metadata accessor for UnifiedOverlayView();
  v5 = OUTLINED_FUNCTION_2_0();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, v11);
  if ([v8 vuiDebugUI])
  {
    v9 = [objc_opt_self() randomColor];
    [v8 setVuiBackgroundColor_];
  }

  return v8;
}

void sub_1E3EB5374()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_overlayLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isLockupSelected) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isLockupSelectionHidden) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_progressView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_appImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_logoImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_textLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_selectionGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_selectionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_textBadge) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_protectionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_unfocusedProtectionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_scorecardView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_legacyScorecardView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_selectionViewModel) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_logoSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_backgroundImageForMaterial) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_forcesProtectionOnFocus) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_wantsUnfocusedCornerBlur) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_scoreboardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_originalScoreboardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_backgroundImageHasChanged) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_scorecardViewBackgroundImage) = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_endingTimestamp;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_startingTimestamp;
  *v3 = 0;
  *(v3 + 8) = 1;
  OUTLINED_FUNCTION_37_65(&OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_shouldUpdateTextBadgeBackground);
  *(v0 + *v4) = 0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3EB5574(char a1, char a2, uint64_t a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for UnifiedOverlayView();
  return objc_msgSendSuper2(&v8, sel_vui_setSelected_animated_withAnimationCoordinator_, a1 & 1, a2 & 1, a3);
}

id sub_1E3EB5630(id result, char a2, uint64_t a3)
{
  if (a3)
  {
    v6 = result;
    v7.receiver = v3;
    v7.super_class = type metadata accessor for UnifiedOverlayView();
    return objc_msgSendSuper2(&v7, sel_setSelected_animated_withAnimationCoordinator_, v6 & 1, a2 & 1, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3EB56F4(uint64_t a1)
{
  v3 = [v1 window];
  v4.receiver = v1;
  v4.super_class = type metadata accessor for UnifiedOverlayView();
  objc_msgSendSuper2(&v4, sel_vui_willMoveToWindow_, v3);

  if (a1)
  {
    sub_1E4046298();
  }

  else
  {
    sub_1E4046124();
  }
}

id sub_1E3EB57D0()
{
  if (*&v0[OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_overlayUpdater])
  {

    sub_1E4204034();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedOverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3EB59F0(char a1)
{
  v4 = v1;
  OUTLINED_FUNCTION_5_16();
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v8 = (*(v7 + 360))();
  if (v8)
  {
    v9 = v8;
    if ((a1 & 1) != 0 || v3 == 0.0 && v2 == 0.0)
    {
LABEL_121:

      goto LABEL_122;
    }

    v10 = v279;
    (*(*v8 + 176))(v279);
    if (v280)
    {
      v10 = MEMORY[0x1E69DDCE0];
      v11 = *(MEMORY[0x1E69DDCE0] + 8);
      v12 = *(MEMORY[0x1E69DDCE0] + 16);
      v13 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v11 = *&v279[1];
      v12 = *&v279[2];
      v13 = *&v279[3];
    }

    v14 = *v10;
    v15 = objc_opt_self();
    v16 = [v15 isTV];
    v17 = [v15 isMac];
    v18 = [v4 bounds];
    v20 = v19;
    v255 = (*(*v9 + 2056))(v18);
    v21 = (*(*v9 + 1912))();
    v235 = (*(*v9 + 1936))();
    v273 = v13;
    v276 = v11;
    v22 = VUIRoundValue();
    v236 = v20;
    v24 = v20 - v23;
    v25 = 6.0;
    if (!v17)
    {
      v25 = v12;
    }

    v26 = v12;
    v27 = 0.0;
    v28 = 10.0;
    if (v16)
    {
      v25 = 10.0;
    }

    v268 = v25;
    v29 = 16.0;
    v261 = v26;
    if (!v16)
    {
      v29 = v26;
    }

    v264 = v29;
    v278 = *((*v6 & *v4) + 0x1B0);
    v30 = v278(v22);
    if (v30)
    {

      if ((v16 & 1) == 0)
      {
        OUTLINED_FUNCTION_0_276();
        v32 = (*(v31 + 456))();
        v28 = 2.0;
        if (v32)
        {

          v33 = 0.0;
          if (v21)
          {
            v34 = *(*v21 + 1696);

            *&v36 = COERCE_DOUBLE(v34(v35));
            v38 = v37;

            if ((v38 & 1) == 0)
            {
              v33 = *&v36;
            }
          }

          v24 = v24 - (v13 + v33);
        }
      }

      v39 = *(*v255 + 304);

      v41 = COERCE_DOUBLE(v39(v40));
      v43 = v42;

      if (v43)
      {
        v27 = v28;
      }

      else
      {
        v27 = v41;
      }

      VUIRoundValue();
      v253 = v24;
      v254 = v44;
      v45 = v276;
    }

    else
    {
      v45 = 0.0;
      v253 = 0.0;
      v254 = 0.0;
    }

    v252 = v45;
    OUTLINED_FUNCTION_0_276();
    v234 = *(v46 + 456);
    v47 = v234();
    v271 = v27;
    if (v47)
    {

      if (v21)
      {
        v48 = *(*v21 + 2296);

        v49 = OUTLINED_FUNCTION_6_12();
        v50 = v48(v49);
        v270 = v51;
      }

      else
      {
        v50 = 0.0;
        v270 = 0.0;
      }

      OUTLINED_FUNCTION_40_59();
      v59 = v58();
      if (v59)
      {
        v60 = v59;
        [v59 isHidden];
      }

      v247 = v236 - v50 - v13;
      sub_1E3EB6D10();
      v246 = v61;
      v249 = 0.0;
      v250 = 0.0;
      v260 = 0.0;
      v248 = v50;
      v251 = 0.0;
    }

    else
    {
      OUTLINED_FUNCTION_0_276();
      v53 = (*(v52 + 480))();
      if (!v53)
      {
        v249 = 0.0;
        v250 = 0.0;
        v260 = 0.0;
        v251 = 0.0;
        v247 = 0.0;
        v248 = 0.0;
        v270 = 0.0;
        v246 = 0.0;
        goto LABEL_43;
      }

      if (v235)
      {
        v54 = *(*v235 + 2296);

        v55 = OUTLINED_FUNCTION_6_12();
        v56 = v54(v55);
        v260 = v57;
      }

      else
      {
        v56 = 0.0;
        v260 = 0.0;
      }

      VUIRoundValue();
      v251 = v62;
      OUTLINED_FUNCTION_40_59();
      v64 = v63();
      if (v64)
      {
        v65 = v64;
        [v64 isHidden];
      }

      sub_1E3EB6D10();
      v249 = v66;
      v250 = v56;
      v247 = 0.0;
      v248 = 0.0;
      v270 = 0.0;
      v246 = 0.0;
    }

    VUIRoundValue();
    v24 = v67;
LABEL_43:
    OUTLINED_FUNCTION_0_276();
    v237 = *(v68 + 528);
    v69 = v237();
    v70 = 0.0;
    v274 = 0.0;
    if (v69)
    {
      v71 = v69;
      [v69 sizeThatFits_];
      v275 = v72;
      OUTLINED_FUNCTION_40_59();
      v74 = v73();
      if (v74)
      {

        v75 = v268;
      }

      else
      {
        v75 = 16.0;
      }

      [v71 bottomMarginWithBaselineMargin_];
      VUIRoundValue();
      v245 = v76;

      v244 = v24;
      v70 = v276;
    }

    else
    {
      v275 = 0.0;
      v244 = 0.0;
      v245 = 0.0;
    }

    v243 = v70;
    OUTLINED_FUNCTION_0_276();
    v77 += 63;
    v233 = *v77;
    v78 = (*v77)();
    v79 = 0.0;
    v80 = 0.0;
    v267 = 0.0;
    if (v78)
    {
      v81 = v78;
      v82 = [v78 sizeThatFits_];
      v274 = v83;
      if (v275 <= 0.0)
      {
        v86 = (v278)(v82, v275);
        v87 = v264;
        if (v86)
        {

          v87 = v268;
        }

        [v81 bottomMarginWithBaselineMargin_];
      }

      else
      {
        v84 = (v237)(v82, v275);
        if (v84)
        {
          v85 = v84;
          [v84 topMarginToLabel:v81 withBaselineMargin:24.0];
        }
      }

      VUIRoundValue();
      v267 = v88;

      v79 = v24;
      v80 = v276;
    }

    v241 = v80;
    v242 = v79;
    [v4 vuiIsRTL];
    v232 = *((*v6 & *v4) + 0x228);
    v89 = v232();
    v269 = 0.0;
    if (v89)
    {
      v90 = v89;
      v91 = (*v9 + 1984);
      v92 = *v91;
      (*v91)();
      v93 = OUTLINED_FUNCTION_1_36();
      v96 = sub_1E3C8B764(v94, v93, v95);
      v258 = v97;
      v259 = v96;

      (v92)(v98);
      OUTLINED_FUNCTION_30();
      (*(v99 + 152))(v281);
      v100 = *v281;
      v101 = *&v281[1];
      v103 = *&v281[2];
      v102 = *&v281[3];

      v265 = v14;
      v105 = v14;
      v106 = v276;
      v107 = v261;
      v108 = v273;
      if ((v282 & 1) == 0)
      {
        v105 = v100;
        v106 = v101;
        v107 = v103;
        v108 = v102;
      }

      v256 = v105;
      v257 = v106;
      v109 = (v92)(v104);
      v110 = (*(*v109 + 504))();

      v27 = v271;
      v111 = v276;
      switch(v110)
      {
        case 7:
        case 15:
          OUTLINED_FUNCTION_16_19();
          Width = CGRectGetWidth(v285);

          v257 = Width - v259 - v108;
          break;
        case 8:
        case 16:
          goto LABEL_65;
        case 9:
        case 17:
          OUTLINED_FUNCTION_16_19();
          v257 = CGRectGetWidth(v286) - v259 - v108;
LABEL_65:
          OUTLINED_FUNCTION_16_19();
          Height = CGRectGetHeight(v287);

          v256 = Height - v258 - v107;
          break;
        default:

          break;
      }

      v14 = v265;
    }

    else
    {
      v258 = 0.0;
      v259 = 0.0;
      v256 = 0.0;
      v257 = 0.0;
      v111 = v276;
    }

    OUTLINED_FUNCTION_0_276();
    v231 = *(v114 + 624);
    v231();
    v115 = 0.0;
    v117 = OUTLINED_FUNCTION_1_36();
    if (v116)
    {
      v119 = v116;
      [v116 vui:v117 sizeThatFits:?];
      v269 = v120;
      v115 = v121;

      v117 = v111;
      v118 = v14;
    }

    v238 = v118;
    v239 = v117;
    OUTLINED_FUNCTION_0_276();
    v230 = *(v122 + 600);
    v123 = v230();
    v124 = 0.0;
    v263 = 0.0;
    v266 = 0.0;
    v277 = 0.0;
    if (v123)
    {
      v125 = v123;
      (*(*v9 + 2008))();
      OUTLINED_FUNCTION_30();
      (*(v126 + 152))(v283);
      v127 = *&v283[1];
      v128 = *&v283[2];

      if (v284)
      {
        v129 = v111;
      }

      else
      {
        v129 = v127;
      }

      v277 = v129;
      if (v284)
      {
        v128 = v261;
      }

      v130 = OUTLINED_FUNCTION_1_36();
      [v125 v131];
      v266 = v132;
      v134 = v133;
      OUTLINED_FUNCTION_16_19();
      v136 = v135;

      v263 = v134;
      v124 = v136 - v134 - v128;
    }

    v262 = v124;
    OUTLINED_FUNCTION_0_276();
    v229 = *(v137 + 576);
    v138 = v229();
    if (v138)
    {

      OUTLINED_FUNCTION_16_19();
    }

    v240 = v115;
    if (sub_1E39DFFE0())
    {
      v139 = (*((*v6 & *v4) + 0x2B8))();
      if (!v139)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v139 = (*((*v6 & *v4) + 0x2D0))();
      if (!v139)
      {
LABEL_83:
        OUTLINED_FUNCTION_0_276();
        v145 = (*(v144 + 648))();
        if (v145)
        {
          v146 = v145;
          OUTLINED_FUNCTION_16_19();
          [v146 setFrame_];
        }

        OUTLINED_FUNCTION_0_276();
        v148 = v4;
        v149 = (*(v147 + 672))();
        if (v149)
        {
          v148 = v149;
          OUTLINED_FUNCTION_16_19();
          [v148 setFrame_];
        }

        if ([v4 vuiIsRTL])
        {
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v252 = v150;
          v253 = v151;
          v254 = v152;
          v272 = v153;
          OUTLINED_FUNCTION_7_198();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v243 = v154;
          v244 = v155;
          v245 = v156;
          v275 = v157;
          OUTLINED_FUNCTION_7_198();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v241 = v158;
          v242 = v159;
          v267 = v160;
          v274 = v161;
          OUTLINED_FUNCTION_7_198();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v246 = v163;
          v247 = v162;
          v248 = v164;
          v270 = v165;
          OUTLINED_FUNCTION_7_198();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v250 = v167;
          v251 = v166;
          v249 = v168;
          v260 = v169;
          OUTLINED_FUNCTION_7_198();
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          v256 = v171;
          v257 = v170;
          v258 = v173;
          v259 = v172;
          OUTLINED_FUNCTION_7_198();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v277 = v174;
          v262 = v175;
          v263 = v176;
          v266 = v177;
          OUTLINED_FUNCTION_7_198();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v238 = v179;
          v239 = v178;
          v269 = v180;
          v240 = v181;
          OUTLINED_FUNCTION_1_36();
          OUTLINED_FUNCTION_7_198();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          OUTLINED_FUNCTION_7_198();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          OUTLINED_FUNCTION_40_59();
          v183 = v182();
          if (v183)
          {
            v148 = v183;
            v184 = [v183 vuiLayer];

            if (v184)
            {
              [v184 setFlipsHorizontalAxis_];
            }
          }

          v27 = v272;
        }

        OUTLINED_FUNCTION_40_59();
        if (v185())
        {
          OUTLINED_FUNCTION_26_6();
          [v186 v187];
        }

        if (v237())
        {
          OUTLINED_FUNCTION_26_6();
          [v188 v189];
        }

        if (v233())
        {
          OUTLINED_FUNCTION_26_6();
          [v190 v191];
        }

        if (v234())
        {
          OUTLINED_FUNCTION_26_6();
          [v192 v193];
        }

        OUTLINED_FUNCTION_0_276();
        v194 += 60;
        v195 = *v194;
        if ((*v194)())
        {
          OUTLINED_FUNCTION_26_6();
          [v196 v197];
        }

        if (v232())
        {
          OUTLINED_FUNCTION_26_6();
          [v198 v199];
        }

        if (v230())
        {
          OUTLINED_FUNCTION_26_6();
          [v200 v201];
        }

        if (v229())
        {
          OUTLINED_FUNCTION_26_6();
          v202 = OUTLINED_FUNCTION_1_36();
          [v203 v204];
        }

        if ((v231)())
        {
          OUTLINED_FUNCTION_26_6();
          [v205 v206];
        }

        OUTLINED_FUNCTION_0_276();
        (*(v207 + 696))();
        OUTLINED_FUNCTION_26_6();
        OUTLINED_FUNCTION_59_31(v208, v209);

        if ((*((*v6 & *v4) + 0x2D0))())
        {
          OUTLINED_FUNCTION_26_6();
          OUTLINED_FUNCTION_59_31(v210, v211);
        }

        OUTLINED_FUNCTION_40_59();
        v213 = v212();
        if (!v213)
        {
          v222 = v233();
          if (v222)
          {
            v223 = v222;
            v224 = [v222 isHidden];

            if (!v224)
            {
              goto LABEL_114;
            }
          }

          v225 = v237();
          if (v225)
          {
            v226 = v225;
            v227 = [v225 isHidden];

            if (!v227)
            {
              goto LABEL_114;
            }
          }

          v213 = v195();
          if (!v213)
          {
            v213 = v234();
            if (!v213)
            {
              OUTLINED_FUNCTION_0_276();
              v214 = (*(v228 + 840))() ^ 1;
              goto LABEL_115;
            }
          }
        }

LABEL_114:
        v214 = 0;
LABEL_115:
        OUTLINED_FUNCTION_0_276();
        v216 = (*(v215 + 648))();
        if (v216)
        {
          v217 = v216;
          [v216 setHidden_];
        }

        v218 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_shouldUpdateTextBadgeBackground;
        if (*(v4 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_shouldUpdateTextBadgeBackground) == 1)
        {
          OUTLINED_FUNCTION_0_276();
          v220 = (*(v219 + 816))();
          if (v220)
          {
            v221 = v220;
            *(v4 + v218) = 0;
            [v220 size];
            sub_1E3EB4874(0);
          }
        }

        goto LABEL_121;
      }
    }

    v140 = v139;
    v141 = OUTLINED_FUNCTION_1_36();
    [v142 v143];
    OUTLINED_FUNCTION_16_19();

    goto LABEL_83;
  }

LABEL_122:
  OUTLINED_FUNCTION_6_12();
}

uint64_t sub_1E3EB6D10()
{
  OUTLINED_FUNCTION_21();
  v1 += 45;
  v2 = *v1;
  v3 = (*v1)();
  if (v3)
  {
    OUTLINED_FUNCTION_30();
    v5 = (*(v4 + 2056))();

    (*(*v5 + 304))(v6);
  }

  if ((v2)(v3))
  {
    OUTLINED_FUNCTION_30();
    (*(v7 + 176))(&v12);
  }

  OUTLINED_FUNCTION_12_5();
  v9 = (*(v8 + 456))();
  if (v9)
  {
  }

  if (v2())
  {
    OUTLINED_FUNCTION_30();
    (*(v10 + 176))(&v13);
  }

  [v0 bounds];
  CGRectGetHeight(v15);

  return VUIRoundValue();
}

uint64_t sub_1E3EB7348()
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {
  }

  else
  {
    FunctionReplacement = *((*MEMORY[0x1E69E7D40] & *v0) + 0x2B8);
  }

  return FunctionReplacement();
}

void sub_1E3EB73E4()
{
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 816))();
  if (v3)
  {
    v8 = v3;
    [v3 size];
    v6 = v5 == v1 && v4 == v0;
    if (!v6 || (OUTLINED_FUNCTION_21(), ((*(v7 + 936))() & 1) != 0))
    {
      OUTLINED_FUNCTION_6_12();
      sub_1E3EB4874(0);
    }
  }
}

uint64_t sub_1E3EB74D4()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_overlayUpdater))
  {

    sub_1E4204034();
  }

  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  v4 = (*(v3 + 456))();
  v5 = [v4 imageProxy];

  [v5 cancel];
  OUTLINED_FUNCTION_36_3();
  v7 = (*((*v2 & v6) + 0x1E0))();
  v8 = [v7 imageProxy];

  [v8 cancel];
  OUTLINED_FUNCTION_36_3();
  result = (*((*v2 & v9) + 0x3B0))(1);
  *(v1 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_shouldUpdateTextBadgeBackground) = 0;
  return result;
}

void sub_1E3EB7654()
{
  sub_1E4046298();

  sub_1E3EB767C();
}

void sub_1E3EB767C()
{
  v2 = v0;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  sub_1E41FE5C4();
  sub_1E41FE574();
  v5 = OUTLINED_FUNCTION_52_45();
  v6(v5);
  v7 = v1 * 1000.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_12_5();
  v9 = (*(v8 + 984))();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    OUTLINED_FUNCTION_12_5();
    v13 = (*(v12 + 1008))();
    if ((v14 & 1) == 0)
    {
      v15 = v13;
      if (v11 > v7 && v13 <= v7)
      {
        v17 = OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_overlayUpdater;
        if (!*(v2 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_overlayUpdater))
        {
          OUTLINED_FUNCTION_4_0();
          v18 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v19 = swift_allocObject();
          v19[2] = v15;
          v19[3] = v11;
          v19[4] = v18;
          OUTLINED_FUNCTION_2_12(v19);
          OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
          v23 = v20;
          v24 = &block_descriptor_129;
          _Block_copy(aBlock);
          sub_1E37E7A8C();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
          sub_1E378AD28();
          sub_1E42072E4();
          sub_1E4204054();
          swift_allocObject();
          v21 = sub_1E4204024();

          *(v2 + v17) = v21;

          sub_1E3EB8FF0();
        }
      }
    }
  }
}

void sub_1E3EB7988()
{
  sub_1E4046124();
  if (*(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_overlayUpdater))
  {

    sub_1E4204034();
  }
}

uint64_t sub_1E3EB7A74()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 744))();
}

uint64_t sub_1E3EB7AC8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 752))();
}

void (*sub_1E3EB7B1C())(void *)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 760))();
  return sub_1E37C4BF8;
}

uint64_t sub_1E3EB7BB4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 384))() & 1;
}

uint64_t sub_1E3EB7C0C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 392))();
}

void (*sub_1E3EB7C60())(void *)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 400))();
  return sub_1E37C55D4;
}

uint64_t sub_1E3EB7CF8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 408))() & 1;
}

uint64_t sub_1E3EB7D50()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 416))();
}

void (*sub_1E3EB7DA4())(void *)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 424))();
  return sub_1E37C55D4;
}

void sub_1E3EB7E9C(void *a1)
{
  v2 = a1;

  sub_1E3EB46EC(a1);
}

uint64_t sub_1E3EB7F34()
{
  if ((sub_1E3EB8948() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21();
  result = (*(v0 + 816))();
  if (result)
  {

    OUTLINED_FUNCTION_21();
    if (((*(v2 + 936))() & 1) == 0 && (OUTLINED_FUNCTION_21(), v3 += 78, v4 = *v3, (v5 = (*v3)()) != 0) && (v6 = v5, v7 = [v5 backgroundImage], v6, v7))
    {

      result = v4();
      if (result)
      {
        v8 = result;
        [result frame];
        OUTLINED_FUNCTION_3();

        v9 = v4();
        v10 = [v9 backgroundImage];

        v11 = OUTLINED_FUNCTION_6();
        LOBYTE(v9) = sub_1E3EB8738(v10, v11, v12, v13, v14);

        return v9 & 1;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1E3EB80C0()
{
  if ((sub_1E39DFFE0() & 1) != 0 || (sub_1E3EB87B4() & 1) == 0)
  {
    return 0;
  }

  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 816))();
  if (result)
  {

    OUTLINED_FUNCTION_21();
    if ((*(v4 + 936))())
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_21();
      result = (*(v5 + 720))();
      if (result)
      {
        v6 = result;
        [result frame];
        OUTLINED_FUNCTION_3();

        result = (*((*v1 & *v0) + 0x3C0))();
        if (result)
        {
          v7 = result;
          v8 = OUTLINED_FUNCTION_6();
          v13 = sub_1E3EB8738(v9, v8, v10, v11, v12);

          return v13 & 1;
        }
      }
    }
  }

  return result;
}

void sub_1E3EB8230(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isOperationCancelledObserver);
  *(v1 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isOperationCancelledObserver) = 0;

  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isOperationFinishedObserver);
  *(v1 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_isOperationFinishedObserver) = 0;

  if (a1)
  {
    [*(v1 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_pendingOperation) cancel];
  }

  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_pendingOperation);
  *(v1 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_pendingOperation) = 0;
}

void sub_1E3EB82B8(void *a1)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    v22 = [a1 resizedSourceBackgroundImage];
    if (v22)
    {
      v2 = v22;
      sub_1E3EB46EC(v22);
    }

    v3 = sub_1E378AA48(a1);
    if (v3)
    {
      v4 = v3;
      if (sub_1E39DFFE0() & 1) == 0 && (sub_1E3EB87B4())
      {
        v5 = sub_1E3AA9EB4();
        v6 = *v5;
        v7 = v5[1];

        v8 = sub_1E378A81C(v6, v7, v4);

        if (v8)
        {
          OUTLINED_FUNCTION_54_39();
          OUTLINED_FUNCTION_21();
          v10 = *(v9 + 968);
          v11 = v8;
          v10(v8);
          sub_1E3EB8884(0.2);
        }
      }

      v12 = OUTLINED_FUNCTION_42_61();
      v14 = sub_1E378A81C(v12, v13, v4);

      if ((sub_1E3EB8948() & 1) != 0 && v14)
      {
        OUTLINED_FUNCTION_54_39();
        OUTLINED_FUNCTION_21();
        v16 = *(v15 + 624);
        v14 = v14;
        v17 = v16();
        if (v17)
        {
          v18 = v17;
          [v17 setBackgroundImage_];
        }

        sub_1E3EB89D8(0.2);
      }

      OUTLINED_FUNCTION_54_39();
      (*((v21 & v20) + 0x3B0))(0);

      v19 = v14;
    }

    else
    {
      v19 = v22;
    }
  }
}

uint64_t sub_1E3EB84D8(void *a1)
{
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v16 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v17;
  OUTLINED_FUNCTION_2_12(v18);
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  aBlock[2] = v19;
  aBlock[3] = &block_descriptor_57_1;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v15, v8, v20);
  _Block_release(v20);

  (*(v4 + 8))(v8, v2);
  return (*(v11 + 8))(v15, v9);
}

uint64_t sub_1E3EB8738(void *a1, double a2, double a3, double a4, double a5)
{
  if (OUTLINED_FUNCTION_61_24(a2, a3, a4, a5))
  {
    return 0;
  }

  if (!a1)
  {
    return 1;
  }

  v7 = a1;
  [v7 size];
  v9.width = OUTLINED_FUNCTION_6_12();
  v8 = CGSizeEqualToSize(v9, v10);

  return !v8;
}

uint64_t sub_1E3EB87B4()
{
  if (sub_1E39DFFE0())
  {
    return 0;
  }

  OUTLINED_FUNCTION_21();
  v0 += 90;
  v1 = *v0;
  result = (*v0)();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result isHidden];

  if (v4)
  {
    return 0;
  }

  result = v1();
  if (result)
  {
    v5 = result;
    v6 = [result superview];

    if (v6)
    {

      return 1;
    }

    return 0;
  }

  return result;
}

void sub_1E3EB8884(double a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 720))();
  if (v3)
  {
    v5 = v3;
    v4 = sub_1E3280A90(0, &qword_1EE23B220);
    sub_1E3AAB920(v4, &off_1F5D6E2D0, a1);
  }
}

void *sub_1E3EB8948()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_textBadgeHasMaterial) != 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21();
  result = (*(v1 + 624))();
  if (result)
  {
    v3 = result;
    v4 = [result isHidden];

    return (v4 ^ 1);
  }

  return result;
}

void sub_1E3EB89D8(double a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 624))();
  if (v3)
  {
    v5 = v3;
    v4 = sub_1E3280A90(0, &unk_1EE23B210);
    sub_1E3AAB920(v4, &off_1F5D6E2E0, a1);
  }
}

void sub_1E3EB8A9C(void *a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (a1)
    {
      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_5_0();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_1E3EB8230(0);
    }

    return;
  }

  v10 = Strong;
  v11 = *(Strong + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_pendingOperation);
  v12 = v11;

  if (!a1)
  {
    if (v11)
    {
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (v11)
  {
    swift_unknownObjectRelease();
    if (v11 == a1)
    {
      goto LABEL_13;
    }
  }

LABEL_10:
  v13 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v13, v2);
  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1E323F000, v14, v15, "UnifiedOverlayView: Pending operation has been changed, ignoring clearing.", v16, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v8, v2);
}

uint64_t sub_1E3EB8C74()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 624))();
  if (result)
  {
    v4 = result;
    OUTLINED_FUNCTION_18_1();
    if (!(*(v5 + 360))() || (OUTLINED_FUNCTION_30(), v7 = (*(v6 + 1960))(), , !v7))
    {

      return 0;
    }

    OUTLINED_FUNCTION_18_1();
    v9 = (*(v8 + 624))();
    if (v9)
    {
      v10 = v9;
      OUTLINED_FUNCTION_18_1();
      if ((*(v11 + 360))())
      {
        OUTLINED_FUNCTION_30();
        (*(v12 + 176))(&v22);
      }

      v13 = v10;
      if (([v13 isHidden] & 1) == 0)
      {
        v14 = OUTLINED_FUNCTION_1_36();
        [v13 v15];
        v16.n128_f64[0] = OUTLINED_FUNCTION_6_12();
        nullsub_1(v16, v17);
      }

      [v1 bounds];
      [v1 vuiIsRTL];
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v13 setFrame_];
    }

    v18 = (*(*v7 + 1824))();
    if (OUTLINED_FUNCTION_13_30(v18) == 3)
    {
      *(v1 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_textBadgeHasMaterial) = 1;
      v4 = v4;
      [v4 vui_setNeedsLayout];
      [v4 layoutIfNeeded];
      if (sub_1E3EB7F34())
      {

        return 1;
      }

      [v4 vuiAlpha];
      v21 = v20;

      if (v21 != 1.0)
      {
        goto LABEL_18;
      }

      v19 = 0.5;
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_textBadgeHasMaterial) = 0;
      [v4 vui_setNeedsLayout];
      [v4 layoutIfNeeded];
      v19 = 0.2;
    }

    sub_1E3EB89D8(v19);
LABEL_18:

    return 0;
  }

  return result;
}

void sub_1E3EB8FF0()
{
  v2 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_31();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI18UnifiedOverlayView_overlayUpdater))
  {
    sub_1E3280A90(0, &qword_1EE23B1D0);

    v9 = sub_1E4206A04();
    sub_1E4204004();
    if (qword_1EE29FE90 != -1)
    {
      OUTLINED_FUNCTION_9_153();
    }

    v10 = sub_1E4203FB4();
    v11 = __swift_project_value_buffer(v10, qword_1ECF717B8);
    MEMORY[0x1E690E9C0](v1, v11);
    v12 = *(v4 + 8);
    v12(v1, v2);
    sub_1E4206994();

    v12(v8, v2);
  }
}

void sub_1E3EB916C(unint64_t a1, unint64_t a2)
{
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  sub_1E41FE5C4();
  sub_1E41FE574();
  v6 = OUTLINED_FUNCTION_52_45();
  v7(v6);
  v8 = v2 * 1000.0;
  if (COERCE__INT64(fabs(v2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v8 <= -1.0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v8 < a1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (a2 < a1)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v9 = (v8 - a1);
  v10 = (a2 - a1);
  sub_1E3F1E07C(a1, a2);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    OUTLINED_FUNCTION_5_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v16 = Strong, OUTLINED_FUNCTION_0_47(), v18 = (*(v17 + 504))(), v16, !v18))
    {

LABEL_24:
      OUTLINED_FUNCTION_5_0();
      v32 = swift_unknownObjectWeakLoadStrong();
      if (!v32)
      {
        goto LABEL_27;
      }

      v33 = v32;
      OUTLINED_FUNCTION_0_47();
      v31 = (*(v34 + 504))();

      if (!v31)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    OUTLINED_FUNCTION_5_0();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (!v19)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_21();
    v21 = (*(v20 + 360))();

    if (!v21)
    {

      v19 = 0;
      goto LABEL_23;
    }

    v19 = (*(*v21 + 1864))();

    if (v19)
    {
      v23 = (*(*v19 + 2408))(v22);

      v19 = sub_1E3C2A11C(v13, v14, v23);
    }

    else
    {
LABEL_21:
    }

LABEL_23:
    [v18 setVuiAttributedText_];

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_5_0();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    OUTLINED_FUNCTION_0_47();
    v27 = (*(v26 + 504))();

    if (v27)
    {
      [v27 removeFromSuperview];
    }
  }

  OUTLINED_FUNCTION_5_0();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    OUTLINED_FUNCTION_0_47();
    (*(v30 + 512))(0);
  }

  OUTLINED_FUNCTION_5_0();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
    goto LABEL_27;
  }

LABEL_26:
  [v31 vui_setNeedsLayout];

LABEL_27:
  v35 = v9 / v10;
  OUTLINED_FUNCTION_5_0();
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = v36;
    OUTLINED_FUNCTION_0_47();
    v39 = (*(v38 + 432))();

    if (v39)
    {
      OUTLINED_FUNCTION_21();
      (*(v40 + 400))(v35);
    }
  }

  if (v35 < 1.0)
  {
    OUTLINED_FUNCTION_5_0();
    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v42 = v41;
      sub_1E3EB8FF0();
    }
  }
}

void sub_1E3EB963C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E3EB82B8(v1);
  }
}

void sub_1E3EB9698(void **a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E3EB84D8(v1);
  }
}

id OUTLINED_FUNCTION_57_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  return a5;
}

uint64_t sub_1E3EB9764()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3EB97B0(char a1)
{
  if (!a1)
  {
    return 0x676E697070616E73;
  }

  if (a1 == 1)
  {
    return 0xD000000000000019;
  }

  return 0xD00000000000001CLL;
}

uint64_t sub_1E3EB9818(unsigned __int8 a1, char a2)
{
  v2 = 0x676E697070616E73;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000019;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001E4287DB0;
    }

    else
    {
      v5 = 0x80000001E4287DD0;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x676E697070616E73;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000019;
    }

    else
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a2 == 1)
    {
      v6 = 0x80000001E4287DB0;
    }

    else
    {
      v6 = 0x80000001E4287DD0;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3EB9920()
{
  sub_1E4206014();
}

uint64_t sub_1E3EB99B8()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3EB9A5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3EB9764();
  *a1 = result;
  return result;
}

uint64_t sub_1E3EB9A8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3EB97B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1E3EB9AB8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

uint64_t sub_1E3EB9AD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t sub_1E3EB9AEC()
{
  OUTLINED_FUNCTION_5_194();
  sub_1E42074B4();

  OUTLINED_FUNCTION_2_210();
  OUTLINED_FUNCTION_11_154();
  sub_1E4206E54();
  OUTLINED_FUNCTION_103_1();

  OUTLINED_FUNCTION_15_136();
  OUTLINED_FUNCTION_20_107(*(v0 + 40));
  sub_1E4206E54();
  OUTLINED_FUNCTION_22_84();

  return v2;
}

uint64_t sub_1E3EB9B7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  result = *(a2 + 40);
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = (*(a1 + 24) == *(a2 + 24)) & ~result;
    if (v5 == *(a2 + 32))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1E3EB9BB4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 41) = 513;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 2;
  *(a1 + 90) = 0;
}

uint64_t sub_1E3EB9C0C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, char a16, char a17)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 41) = a7;
  *(a9 + 42) = a8;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11 & 1;
  *(a9 + 64) = a12;
  *(a9 + 72) = a13 & 1;
  *(a9 + 80) = a14;
  *(a9 + 88) = a15;
  *(a9 + 89) = a16;
  *(a9 + 90) = a17;
  return result;
}

uint64_t sub_1E3EB9C90()
{
  OUTLINED_FUNCTION_5_194();
  sub_1E42074B4();

  OUTLINED_FUNCTION_11_154();
  sub_1E4206E54();
  OUTLINED_FUNCTION_103_1();

  MEMORY[0x1E69109E0](0xD000000000000019, 0x80000001E4287DF0);
  OUTLINED_FUNCTION_20_107(*(v0 + 56));
  sub_1E4206584();
  OUTLINED_FUNCTION_22_84();

  return 0x203A657A6973;
}

uint64_t sub_1E3EB9D48(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0 && *a1 == *a2 && *(a1 + 8) == *(a2 + 8))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v3 = *(a2 + 56);
  if ((*(a1 + 56) & 1) == 0)
  {
    return (*(a1 + 48) == *(a2 + 48)) & ~v3;
  }

  return v3;
}

void *sub_1E3EB9DAC@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, uint64_t a15, char a16, char a17, char a18)
{
  memcpy(__dst, __src, 0x5BuLL);
  result = memcpy(a9, __dst, 0x60uLL);
  *(a9 + 96) = a2;
  *(a9 + 104) = a3;
  *(a9 + 112) = a4 & 1;
  *(a9 + 120) = a5;
  *(a9 + 128) = a6;
  *(a9 + 136) = a7 & 1;
  *(a9 + 144) = a8;
  *(a9 + 152) = a10 & 1;
  *(a9 + 160) = a11;
  *(a9 + 168) = a12;
  *(a9 + 176) = a13;
  *(a9 + 177) = HIBYTE(a13) & 1;
  *(a9 + 178) = a14;
  *(a9 + 184) = a15;
  *(a9 + 192) = a16;
  *(a9 + 193) = a17;
  *(a9 + 194) = a18;
  return result;
}

uint64_t sub_1E3EB9EE4()
{
  OUTLINED_FUNCTION_5_194();
  sub_1E42074B4();

  OUTLINED_FUNCTION_2_210();
  sub_1E4206E54();
  OUTLINED_FUNCTION_103_1();

  OUTLINED_FUNCTION_15_136();
  OUTLINED_FUNCTION_20_107(*(v0 + 136));
  sub_1E4206E54();
  OUTLINED_FUNCTION_22_84();

  return v2;
}

uint64_t sub_1E3EB9F80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136))
  {
    if ((*(a2 + 136) & 1) == 0)
    {
LABEL_25:
      v4 = 0;
      return v4 & 1;
    }
  }

  else
  {
    if (*(a2 + 136))
    {
      goto LABEL_25;
    }

    if (*(a1 + 120) != *(a2 + 120) || *(a1 + 128) != *(a2 + 128))
    {
      goto LABEL_25;
    }
  }

  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      goto LABEL_25;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      goto LABEL_25;
    }
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    if (((*(a1 + 193) ^ *(a2 + 193)) & 1) == 0)
    {
      v4 = *(a1 + 192) ^ *(a2 + 192) ^ 1;
      return v4 & 1;
    }

    goto LABEL_25;
  }

  v4 = 0;
  if ((*(a2 + 56) & 1) == 0 && *(a1 + 48) == *(a2 + 48))
  {
    goto LABEL_24;
  }

  return v4 & 1;
}

void *sub_1E3EBA03C()
{
  memcpy(v16, &unk_1E42DAD30, 0xC3uLL);
  sub_1E375C1CC(v16, __dst);
  v0 = OUTLINED_FUNCTION_5_8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E4201B64();
  v8 = OUTLINED_FUNCTION_5_8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  memcpy(__dst, v16, 0xC3uLL);
  result = memcpy(&unk_1ECF717D0, __dst, 0xC8uLL);
  qword_1ECF71898 = 0;
  unk_1ECF718A0 = 0;
  byte_1ECF718A8 = 1;
  *algn_1ECF718A9 = 0;
  qword_1ECF718B0 = *&v0;
  unk_1ECF718B8 = v2;
  qword_1ECF718C0 = v4;
  unk_1ECF718C8 = v6;
  qword_1ECF718D0 = 0;
  byte_1ECF718D8 = 1;
  qword_1ECF718E0 = 0;
  byte_1ECF718E8 = 1;
  byte_1ECF718E9 = 0;
  qword_1ECF718F0 = v7;
  byte_1ECF718F8 = 0;
  qword_1ECF71900 = *&v8;
  unk_1ECF71908 = v10;
  qword_1ECF71910 = v12;
  unk_1ECF71918 = v14;
  return result;
}

void *sub_1E3EBA150@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, uint64_t a18, char a19, char a20, uint64_t a21, char a22)
{
  memcpy(__dst, __src, 0xC3uLL);
  result = memcpy(a9, __dst, 0xC8uLL);
  *(a9 + 200) = a2;
  *(a9 + 208) = a3;
  *(a9 + 216) = a4 & 1;
  *(a9 + 217) = a5;
  *(a9 + 218) = a6;
  *(a9 + 224) = a10;
  *(a9 + 232) = a11;
  *(a9 + 240) = a12;
  *(a9 + 248) = a13;
  *(a9 + 256) = a7;
  *(a9 + 264) = a8;
  *(a9 + 272) = a18;
  *(a9 + 280) = a19 & 1;
  *(a9 + 281) = a20;
  *(a9 + 288) = a21;
  *(a9 + 296) = a22;
  *(a9 + 304) = a14;
  *(a9 + 312) = a15;
  *(a9 + 320) = a16;
  *(a9 + 328) = a17;
  return result;
}

void *sub_1E3EBA288()
{
  if (qword_1EE2981F0 != -1)
  {
    OUTLINED_FUNCTION_1_246();
  }

  return &unk_1ECF717D0;
}

uint64_t sub_1E3EBA2C8(uint64_t result)
{
  *(v1 + 217) = result;
  *(v1 + 178) = result;
  return result;
}

uint64_t sub_1E3EBA2D4(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t sub_1E3EBA2EC()
{
  OUTLINED_FUNCTION_5_194();
  sub_1E42074B4();

  OUTLINED_FUNCTION_2_210();
  sub_1E4206E54();
  OUTLINED_FUNCTION_103_1();

  MEMORY[0x1E69109E0](0xD000000000000015, 0x80000001E4287E10);
  sub_1E3EB9EE4();
  OUTLINED_FUNCTION_22_84();

  return v1;
}

uint64_t sub_1E3EBA390(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 216))
  {
    if ((*(a2 + 216) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (*(a2 + 216))
    {
      goto LABEL_30;
    }

    if (*(a1 + 200) != *(a2 + 200) || *(a1 + 208) != *(a2 + 208))
    {
      goto LABEL_30;
    }
  }

  if (*(a1 + 136))
  {
    if ((*(a2 + 136) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (*(a2 + 136))
    {
      goto LABEL_30;
    }

    if (*(a1 + 120) != *(a2 + 120) || *(a1 + 128) != *(a2 + 128))
    {
      goto LABEL_30;
    }
  }

  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      goto LABEL_30;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      goto LABEL_30;
    }
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
LABEL_30:
      v5 = 0;
      return v5 & 1;
    }

    goto LABEL_34;
  }

  v5 = 0;
  if ((*(a2 + 56) & 1) == 0 && *(a1 + 48) == *(a2 + 48))
  {
LABEL_34:
    if ((*(a1 + 193) ^ *(a2 + 193)))
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a1 + 192) ^ *(a2 + 192) ^ 1;
    }
  }

  return v5 & 1;
}

void sub_1E3EBA478(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

uint64_t sub_1E3EBA4A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t sub_1E3EBA4E0()
{
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_1E42074B4();

  v8 = 0x656E6961746E6F63;
  v9 = 0xEB00000000203A72;
  OUTLINED_FUNCTION_11_154();
  v1 = sub_1E4206E54();
  MEMORY[0x1E69109E0](v1);

  MEMORY[0x1E69109E0](0x203A6D65746920, 0xE700000000000000);
  OUTLINED_FUNCTION_20_107(*(v0 + 40));
  v2 = sub_1E4206E54();
  MEMORY[0x1E69109E0](v2);

  MEMORY[0x1E69109E0](0xD000000000000016, 0x80000001E4287E30);
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  sub_1E3741F40(v0, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B5F0);
  v3 = sub_1E4205F84();
  MEMORY[0x1E69109E0](v3);

  return v8;
}

uint64_t sub_1E3EBA620(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0 && *a1 == *a2 && *(a1 + 8) == *(a2 + 8))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v3 = *(a2 + 40);
  if ((*(a1 + 40) & 1) == 0)
  {
    LODWORD(v3) = (*(a1 + 24) == *(a2 + 24)) & ~v3;
    if (*(a1 + 32) == *(a2 + 32))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

unint64_t sub_1E3EBA6C8()
{
  result = qword_1ECF3B5F8;
  if (!qword_1ECF3B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B5F8);
  }

  return result;
}

_BYTE *sub_1E3EBA71C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3EBA7F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return OUTLINED_FUNCTION_17_7(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_18();
  }
}

uint64_t sub_1E3EBA820(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 91))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_66_2();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v3);
}

uint64_t sub_1E3EBA86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 91) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 91) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_14_147(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3EBA8E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 195))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_66_2();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v3);
}

uint64_t sub_1E3EBA934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    result = OUTLINED_FUNCTION_17_125(result, 0);
    *(result + 194) = 0;
    *(result + 192) = 0;
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 195) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 195) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_14_147(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3EBA9B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 336))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_66_2();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v3);
}

uint64_t sub_1E3EBAA00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    result = OUTLINED_FUNCTION_17_125(result, 0);
    *(result + 312) = v3;
    *(result + 296) = v3;
    *(result + 280) = v3;
    *(result + 264) = v3;
    *result = v4;
    if (v5 >= 0x7FFFFFFF)
    {
      *(result + 336) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_14_147(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3EBAA98(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_66_2();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v3);
}

uint64_t sub_1E3EBAAE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1E3EBAB58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_17_7(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_18();
  }
}

uint64_t sub_1E3EBAB70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1E3EBABAC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 multiviewIdentifiers];

  v2 = sub_1E42062B4();
  return v2;
}

void *sub_1E3EBACE8()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 1696))(3);

  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 2056);

  v4(3, 0);

  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 1792);

  v6(10);

  OUTLINED_FUNCTION_36();
  v8 = *(v7 + 2032);

  v8(1);

  v9 = v1[13];

  v10 = *sub_1E3E5FD88();
  v11 = *(*v9 + 680);
  v12 = v10;
  v11(v10);

  sub_1E3952C58();
  __dst[0] = v13;
  __dst[1] = v14;
  __dst[2] = v15;
  __dst[3] = v16;
  LOBYTE(__dst[4]) = 0;
  v111 = 0u;
  v112 = 0u;
  v113 = 1;
  v108 = 0u;
  v109 = 0u;
  v110 = 1;
  v104 = 0u;
  v105 = 0u;
  v106 = 1;
  sub_1E3952C58();
  v99 = v17;
  v100 = v18;
  v101 = v19;
  v102 = v20;
  v103 = 0;
  v96 = xmmword_1E42A9D20;
  v97 = xmmword_1E42DB1E0;
  v98 = 0;
  type metadata accessor for UIEdgeInsets();
  v22 = v21;
  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v23 + 1600))(__dst, 0, v24 & 1, v22);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v25 + 2056))(2, 0);

  v26 = v1[14];

  v27 = sub_1E3E5FDEC();
  v28 = *v27;
  v29 = *(*v26 + 680);
  v30 = *v27;
  v29(v28);

  OUTLINED_FUNCTION_36();
  v32 = *(v31 + 1696);

  v32(17);

  OUTLINED_FUNCTION_36();
  v34 = *(v33 + 1792);

  v34(4);

  sub_1E3952C58();
  __src[0] = v35;
  __src[1] = v36;
  __src[2] = v37;
  __src[3] = v38;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v39 + 160))(__src);

  sub_1E374EA94();
  OUTLINED_FUNCTION_2_1();
  (*(v40 + 2056))(2, 0);

  v41 = *v27;
  OUTLINED_FUNCTION_8();
  v43 = *(v42 + 680);

  v44 = v41;
  v43(v41);

  OUTLINED_FUNCTION_36();
  v46 = *(v45 + 1696);

  v46(17);

  sub_1E3952C58();
  __dst[0] = v47;
  __dst[1] = v48;
  __dst[2] = v49;
  __dst[3] = v50;
  LOBYTE(__dst[4]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v51 + 160))(__dst);

  v52 = sub_1E38A86A4();
  v53 = [objc_opt_self() defaultMetrics];
  [v53 scaledValueForValue_];
  v55 = v54;

  (*(*v52 + 256))(v55, 0);

  OUTLINED_FUNCTION_8();
  v57 = *(v56 + 248);

  v57(v58);
  OUTLINED_FUNCTION_36();
  (*(v59 + 360))();

  OUTLINED_FUNCTION_36();
  v61 = *(v60 + 440);

  v61(0x3FF0000000000000, 0);

  OUTLINED_FUNCTION_36();
  v63 = *(v62 + 1808);

  v63(1);

  v64 = v1[16];

  v65.n128_u64[0] = 5.0;
  *&v111 = j__OUTLINED_FUNCTION_7_78(v65);
  *(&v111 + 1) = v66;
  *&v112 = v67;
  *(&v112 + 1) = v68;
  v113 = 0;
  (*(*v64 + 560))(&v111);

  v108 = xmmword_1E42A9D20;
  v109 = xmmword_1E42DB1F0;
  v110 = 0;
  OUTLINED_FUNCTION_8();
  v70 = *(v69 + 160);

  v70(&v108);

  type metadata accessor for RelationalLayout();
  v71 = sub_1E4177030();
  v72.n128_u64[0] = 2.0;
  v73.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v72);
  nullsub_1(v73, v74);
  sub_1E41776B0(v75, v76, v77, v78);
  v79.n128_u64[0] = 2.0;
  v80.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v79);
  nullsub_1(v80, v81);
  sub_1E41776B0(v82, v83, v84, v85);
  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  v87 = *(v86 + 1424);
  v88 = swift_retain_n();
  v87(v88);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v89 + 1424))(v71);

  v90 = sub_1E37BD068();
  sub_1E3C37CBC(v90, 23);

  v91 = sub_1E374EA2C();
  sub_1E3C37CBC(v91, 15);

  v92 = sub_1E374EA94();
  sub_1E3C37CBC(v92, 26);

  v93 = sub_1E38A86A4();
  sub_1E3C37CBC(v93, 39);

  return v1;
}

uint64_t sub_1E3EBB670()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    sub_1E3B7B1C8();
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 456);

    v4 = v2(v3);

    result = sub_1E32AE9B0(v4);
    v5 = result;
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        sub_1E3EBB800();
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      type metadata accessor for LibraryBarItem();
      v7 = OUTLINED_FUNCTION_24_92();
      MEMORY[0x1E6910BF0](v7);
      OUTLINED_FUNCTION_4_157();
      if (v9)
      {
        OUTLINED_FUNCTION_35(v8);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_123_1();
      result = sub_1E4206324();
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

void sub_1E3EBB800()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v157 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v157 - v17;
  if (*(&v0->Kind + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_cachedLibraryCategoriesLoaded) != 1 || (OUTLINED_FUNCTION_154(), v20 = *(v19 + 240), v165 = v19 + 240, !v20()) || (swift_unknownObjectRelease(), (*(&v0->Kind + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_stopped) & 1) != 0))
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v21(v11);

    v22 = sub_1E41FFC94();
    v23 = sub_1E4206814();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_6_21();
      v25 = OUTLINED_FUNCTION_100();
      v171[0] = v25;
      *v24 = 136315138;
      v26 = type metadata accessor for LibraryBarItem();
      v27 = MEMORY[0x1E6910C30](v4, v26);
      v29 = OUTLINED_FUNCTION_54_40(v27, v28);

      *(v24 + 4) = v29;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v30, v31, "LibrarySideBarManager:: received %s but don't update and wait for resume");
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v7 + 8))(v11, v5);
LABEL_7:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v161 = objc_opt_self();
  if (![v161 isLibraryOnlyCountryResolved])
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v42(v14);

    v43 = sub_1E41FFC94();
    v44 = sub_1E4206814();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_6_21();
      v46 = OUTLINED_FUNCTION_100();
      v171[0] = v46;
      *v45 = 136315138;
      v47 = type metadata accessor for LibraryBarItem();
      v48 = MEMORY[0x1E6910C30](v4, v47);
      v50 = OUTLINED_FUNCTION_54_40(v48, v49);

      *(v45 + 4) = v50;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v51, v52, "LibrarySideBarManager:: received %s but don't update and wait for library only country resolution");
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v7 + 8))(v14, v5);
    goto LABEL_7;
  }

  v163 = v20;
  v164 = v1;
  v160 = v18;
  v162 = v5;
  v166 = v4;

  v33 = sub_1E32AE9B0(v32);
  if (v33)
  {
    v34 = v33;
    if (v33 < 1)
    {
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
      goto LABEL_133;
    }

    v35 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1E6911E60](v35, v4);
      }

      else
      {
        v36 = *(v4 + 8 * v35 + 32);
      }

      v20 = v36;
      ++v35;
      v0 = *(v36 + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_menuItem);
      OUTLINED_FUNCTION_8();
      v38 = *(v37 + 208);

      v38(0, 0);
    }

    while (v34 != v35);
  }

  if (![objc_opt_self() isRemoteServerConnected] || (OUTLINED_FUNCTION_154(), v0 = v2, ((*(v39 + 264))() & 1) != 0))
  {
    if (sub_1E32AE9B0(v4) != 1)
    {
      OUTLINED_FUNCTION_20_12();
      if (!v40)
      {
        v41 = sub_1E3EBD0A0();
        if (!v41)
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }

LABEL_40:
      v55 = 0;
      goto LABEL_41;
    }

    sub_1E32AE9B0(v4);
    OUTLINED_FUNCTION_20_12();
    if (v53)
    {
      if ((v4 & 0xC000000000000001) == 0)
      {
        if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_28:
          v41 = *(v4 + 32);
LABEL_29:
          v0 = v41;
LABEL_30:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_1E4298880;
          *(v54 + 32) = v0;

          v166 = v54;
          v55 = 1;
LABEL_41:
          OUTLINED_FUNCTION_30_73();
          if (v59())
          {
            v61 = v60;
            ObjectType = swift_getObjectType();
            (*(v61 + 24))(v55, ObjectType, v61);
            swift_unknownObjectRelease();
          }

          OUTLINED_FUNCTION_154();
          v64 = (*(v63 + 496))();
          sub_1E3EC0EA8(v64);
          v66 = v65;

          sub_1E3EC0EA8(v67);
          sub_1E3EC0F94(v66, v68);
          v70 = v69;

          if ((v70 & 1) != 0 && (v71 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_forcedUpdate, *(&v2->Kind + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_forcedUpdate) != 1))
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_2_26();
            v98 = v162;
            v99(v20);
            v100 = v2;
            OUTLINED_FUNCTION_38();

            v101 = v66;
            v102 = sub_1E41FFC94();
            v103 = sub_1E4206814();

            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              v165 = OUTLINED_FUNCTION_100();
              v171[0] = v165;
              *v104 = 136315394;
              v105 = type metadata accessor for LibraryBarItem();
              v106 = MEMORY[0x1E6910C30](v4, v105);
              v108 = OUTLINED_FUNCTION_54_40(v106, v107);

              *(v104 + 4) = v108;
              *(v104 + 12) = 1024;
              v109 = *(&v2->Kind + v71);

              *(v104 + 14) = v109;
              _os_log_impl(&dword_1E323F000, v102, v103, "LibrarySideBarManager:: received %s, but ignore updating, forcedUpdate %{BOOL}d", v104, 0x12u);
              __swift_destroy_boxed_opaque_existential_1(v165);
              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_6_0();

              (*(v7 + 8))(v164, v162);
            }

            else
            {

              (*(v7 + 8))(v20, v98);
            }
          }

          else
          {
            OUTLINED_FUNCTION_30_73();
            if (v72())
            {
              v74 = v73;
              v75 = swift_getObjectType();
              v76 = *(v74 + 16);

              v76(v77, MEMORY[0x1E69E7CC0], v75, v74);

              swift_unknownObjectRelease();
              v78 = 0;
            }

            else
            {
              v78 = 1;
            }

            *(&v2->Kind + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_forcedUpdate) = v78;
            OUTLINED_FUNCTION_154();
            v80 = *(v79 + 504);

            v80(v81);
            sub_1E324FBDC();
            OUTLINED_FUNCTION_2_26();
            v82 = v160;
            v83 = v162;
            v84(v160);

            v85 = sub_1E41FFC94();
            v86 = sub_1E4206814();

            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              v171[0] = swift_slowAlloc();
              *v87 = 136315394;
              v88 = type metadata accessor for LibraryBarItem();
              v89 = MEMORY[0x1E6910C30](v4, v88);
              v91 = v82;
              v92 = OUTLINED_FUNCTION_54_40(v89, v90);

              *(v87 + 4) = v92;
              *(v87 + 12) = 2080;

              v94 = MEMORY[0x1E6910C30](v93, v88);
              v96 = v95;

              v97 = sub_1E3270FC8(v94, v96, v171);

              *(v87 + 14) = v97;
              _os_log_impl(&dword_1E323F000, v85, v86, "LibrarySideBarManager:: received %s, items to be shown %s", v87, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_7_7();
              OUTLINED_FUNCTION_6_0();

              (*(v7 + 8))(v91, v162);
            }

            else
            {

              (*(v7 + 8))(v82, v83);
            }
          }

          goto LABEL_7;
        }

        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

LABEL_133:

      MEMORY[0x1E6911E60](0, v4);
      OUTLINED_FUNCTION_38();

      goto LABEL_30;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_44_51();
  if ([v2 v56])
  {
    sub_1E32AE9B0(v4);
    OUTLINED_FUNCTION_20_12();
    if (v57)
    {
      if (sub_1E32AE9B0(v4) != 1)
      {
        goto LABEL_40;
      }

      if (sub_1E32AE9B0(v4))
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          goto LABEL_133;
        }

        if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        __break(1u);
      }

LABEL_38:
      v55 = 1;
      goto LABEL_41;
    }

    v128 = sub_1E3EBD2AC();

LABEL_78:
    v55 = 0;
    v166 = v128;
    goto LABEL_41;
  }

  [(ValueMetadata *)v2 userHasActiveAccount];
  OUTLINED_FUNCTION_20_12();
  if (v58)
  {
    goto LABEL_40;
  }

  v110 = sub_1E32AE9B0(v4);
  if (v110)
  {
    v111 = v110;
    v112 = 0;
    v161 = v4 & 0xFFFFFFFFFFFFFF8;
    v0 = &type metadata for LibMenuType;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v113 = MEMORY[0x1E6911E60](v112, v4);
      }

      else
      {
        if (v112 >= *(v161 + 16))
        {
          goto LABEL_128;
        }

        v113 = *(v4 + 8 * v112 + 32);
      }

      v114 = v113;
      OUTLINED_FUNCTION_31_70(v113);
      v115 = sub_1E37DA4B8();
      if (sub_1E4205E84())
      {

        goto LABEL_64;
      }

      OUTLINED_FUNCTION_18_114();
      v116 = v115;
      v117 = sub_1E4205E84();

      if ((v117 & 1) == 0)
      {
        break;
      }

LABEL_64:
      v118 = v112 + 1;
      v20 = v164;
      if (__OFADD__(v112, 1))
      {
        __break(1u);
        goto LABEL_127;
      }

      ++v112;
      if (v118 == v111)
      {
        goto LABEL_66;
      }
    }

    v157[1] = v116;
    v0 = (v112 + 1);
    v20 = v164;
    if (__OFADD__(v112, 1))
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    if (v0 != sub_1E32AE9B0(v4))
    {
      v134 = v112 + 5;
      v119 = v4;
      while (1)
      {
        v135 = v134 - 4;
        v161 = v134 - 4;
        v159 = v134;
        v158 = v119 & 0xC000000000000001;
        if ((v119 & 0xC000000000000001) != 0)
        {
          v136 = MEMORY[0x1E6911E60]();
        }

        else
        {
          if ((v135 & 0x8000000000000000) != 0)
          {
            goto LABEL_130;
          }

          if (v135 >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_131;
          }

          v136 = *(v119 + 8 * v134);
        }

        v20 = v136;
        OUTLINED_FUNCTION_31_70(v136);
        v137 = &type metadata for LibMenuType;
        if (sub_1E4205E84())
        {
        }

        else
        {
          OUTLINED_FUNCTION_18_114();
          v137 = sub_1E4205E84();

          if ((v137 & 1) == 0)
          {
            OUTLINED_FUNCTION_20_12();
            v138 = v159;
            OUTLINED_FUNCTION_44_51();
            goto LABEL_114;
          }
        }

        OUTLINED_FUNCTION_44_51();
        v20 = v164;
        v138 = v159;
        if (v137 != v112)
        {
          if (v158)
          {
            v139 = OUTLINED_FUNCTION_48_9();
            v140 = MEMORY[0x1E6911E60](v139);
            v141 = MEMORY[0x1E6911E60](v137, v119);
          }

          else
          {
            if ((v112 & 0x8000000000000000) != 0)
            {
              goto LABEL_143;
            }

            v142 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v112 >= v142)
            {
              goto LABEL_144;
            }

            v143 = *(v119 + 8 * v112 + 32);
            if ((v161 & 0x8000000000000000) != 0)
            {
              goto LABEL_145;
            }

            if (v161 >= v142)
            {
              goto LABEL_146;
            }

            v140 = v143;
            v141 = *(v119 + 8 * v138);
          }

          v137 = v141;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v158 = v140;
          if (!isUniquelyReferenced_nonNull_bridgeObject || (v119 & 0x8000000000000000) != 0 || (v119 & 0x4000000000000000) != 0)
          {
            v119 = sub_1E37EFA58(v119);
            v20 = ((v119 >> 62) & 1);
          }

          else
          {
            v20 = 0;
          }

          v145 = v119 & 0xFFFFFFFFFFFFFF8;
          v146 = *((v119 & 0xFFFFFFFFFFFFFF8) + 8 * v112 + 0x20);
          *((v119 & 0xFFFFFFFFFFFFFF8) + 8 * v112 + 0x20) = v137;

          if ((v119 & 0x8000000000000000) != 0 || v20)
          {
            v119 = sub_1E37EFA58(v119);
            v145 = v119 & 0xFFFFFFFFFFFFFF8;
          }

          OUTLINED_FUNCTION_44_51();
          OUTLINED_FUNCTION_20_12();
          if ((v137 & 0x8000000000000000) != 0)
          {
            goto LABEL_136;
          }

          if (v137 >= *(v145 + 16))
          {
            goto LABEL_137;
          }

          v147 = *(v145 + 8 * v138);
          *(v145 + 8 * v138) = v158;

          v166 = v119;
        }

        v123 = __OFADD__(v112++, 1);
        if (v123)
        {
          goto LABEL_135;
        }

LABEL_114:
        v123 = __OFADD__(v137, 1);
        v0 = (v137 + 1);
        if (v123)
        {
          goto LABEL_132;
        }

        if (v119 >> 62)
        {
          v148 = sub_1E4207384();
        }

        else
        {
          v148 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v134 = v138 + 1;
        if (v0 == v148)
        {
          goto LABEL_68;
        }
      }
    }
  }

  else
  {
LABEL_66:
    v112 = sub_1E32AE9B0(v4);
  }

  v119 = v4;
LABEL_68:
  v120 = sub_1E32AE9B0(v119);
  v121 = v120 - v112;
  if (v120 < v112)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if ((v112 & 0x8000000000000000) != 0)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v122 = v120;
  if (sub_1E32AE9B0(v119) < v120)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v123 = __OFSUB__(0, v121);
  v124 = -v121;
  if (v123)
  {
LABEL_141:
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
    goto LABEL_147;
  }

  v125 = sub_1E32AE9B0(v119);
  v123 = __OFADD__(v125, v124);
  v126 = v125 + v124;
  if (v123)
  {
    goto LABEL_142;
  }

  sub_1E3797CDC(v126);
  sub_1E3EC1FAC(v112, v122, 0);
  v127 = v166;

  if (![objc_opt_self() isPad] || (objc_msgSend(objc_opt_self(), sel_isLibraryOnlyCountry) & 1) != 0)
  {

    v128 = v127;
LABEL_76:
    swift_bridgeObjectRelease_n();
    goto LABEL_78;
  }

  v172 = v127;
  v161 = v127;

  v129 = *(**sub_1E3B7B1C8() + 672);

  v0 = v129(v130);

  v131 = 0;
  Kind = v0[1].Kind;
  v133 = &v0[2];
  v20 = &unk_1E429E310;
  while (1)
  {
    if (Kind == v131)
    {

      v128 = v161;
      OUTLINED_FUNCTION_20_12();
      goto LABEL_76;
    }

    if (v131 >= v0[1].Kind)
    {
      goto LABEL_129;
    }

    sub_1E327F454(v133, v169);
    sub_1E327F454(v169, &v168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v131;
    __swift_destroy_boxed_opaque_existential_1(v169);
    v133 += 40;
  }

  sub_1E37DADF4(v169, v170);
  sub_1E37DADF4(v170, v171);
  type metadata accessor for LibMenuItem();
  __swift_project_boxed_opaque_existential_1(v171, v171[3]);
  v149 = OUTLINED_FUNCTION_5_195();
  v150(v149);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14_148();
  sub_1E3A8A680();
  type metadata accessor for LibraryBarItem();

  v152 = sub_1E3D713E8(v151);
  v153 = v161;
  sub_1E37EFABC(0, v161);
  if (sub_1E32AE9B0(v153) < 0)
  {
    goto LABEL_148;
  }

  v154 = sub_1E32AE9B0(v153);
  v155 = v154 + 1;
  v20 = v164;
  if (!__OFADD__(v154, 1))
  {
    v156 = v152;
    sub_1E3797CDC(v155);
    sub_1E3EC1E68(0, 0, 1, v156);
    v128 = v172;

    __swift_destroy_boxed_opaque_existential_1(v171);
    goto LABEL_76;
  }

LABEL_149:
  __break(1u);
}

uint64_t sub_1E3EBC908(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_74();
  swift_unknownObjectWeakAssign();
  sub_1E3EBB670();
  return swift_unknownObjectRelease();
}

void (*sub_1E3EBC974(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_57();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3EBC9FC;
}

void sub_1E3EBC9FC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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
    sub_1E3EBB670();
  }

  free(v3);
}

uint64_t sub_1E3EBCA8C()
{
  v1 = *sub_1E3B7B1C8();
  v2 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_libraryOnly;
  OUTLINED_FUNCTION_5_0();
  v3 = *(v0 + v2);
  v4 = *(*v1 + 560);

  v4(v3);
}

uint64_t sub_1E3EBCB28()
{
  v1 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_libraryOnly;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3EBCB5C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_libraryOnly;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return sub_1E3EBCA8C();
}

uint64_t sub_1E3EBCBA0(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E3EBCBF0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E3EBCA8C();
  }

  return result;
}

char *sub_1E3EBCC24()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_libraryMenuDataSource) menuItems];
  v2 = [v1 mainMenuItemsWithDefaultItems];

  v3 = sub_1E42062B4();
  v4 = sub_1E3EBCEF8(v3);

  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 32);
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        v9 = *v6++;
        v8 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = OUTLINED_FUNCTION_27();
          v7 = sub_1E3EC12DC(v12, v13, v14, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v15 = OUTLINED_FUNCTION_35(v10);
          v7 = sub_1E3EC12DC(v15, v11 + 1, 1, v7);
        }

        *(v7 + 2) = v11 + 1;
        *&v7[8 * v11 + 32] = v8;
        --v5;
      }

      while (v5);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (*(v7 + 2))
  {
    v16 = *(sub_1E3EBD004() + 16);

    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = OUTLINED_FUNCTION_27();
        v7 = sub_1E3EC12DC(v20, v21, v22, v7);
      }

      v18 = *(v7 + 2);
      v17 = *(v7 + 3);
      if (v18 >= v17 >> 1)
      {
        v23 = OUTLINED_FUNCTION_35(v17);
        v7 = sub_1E3EC12DC(v23, v18 + 1, 1, v7);
      }

      *(v7 + 2) = v18 + 1;
      *&v7[8 * v18 + 32] = 10;
    }
  }

  return v7;
}

uint64_t sub_1E3EBCDE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1E377FD30(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1E328438C(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E377FD30((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1E3EBCEF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1E3897C68(0, v2, 0);
  v3 = v10;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1E328438C(v4, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E3897C68((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1E3EBD004()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_libraryMenuDataSource) menuItems];
  v2 = [v1 genreMenuItems];

  v3 = sub_1E42062B4();
  v4 = sub_1E3EBCDE4(v3);

  if (v4)
  {
    return v4;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1E3EBD0A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager____lazy_storage___downloadItem;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager____lazy_storage___downloadItem);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = *(**sub_1E3B7B1C8() + 672);

    v7 = v5(v6);

    v9 = 0;
    v10 = *(v7 + 16);
    for (i = v7 + 32; ; i += 40)
    {
      if (v10 == v9)
      {

        v4 = 0;
LABEL_9:
        v15 = *(v1 + v2);
        *(v1 + v2) = v4;
        v16 = v4;
        sub_1E329CC84(v15);
        goto LABEL_10;
      }

      if (v9 >= *(v7 + 16))
      {
        break;
      }

      sub_1E327F454(i, &v20);
      sub_1E327F454(&v20, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
      type metadata accessor for LibLocalSource();
      if (swift_dynamicCast())
      {

        sub_1E37DADF4(&v20, v19);
        sub_1E37DADF4(v19, &v20);
        type metadata accessor for LibMenuItem();
        v12 = v22;
        __swift_project_boxed_opaque_existential_1(&v20, v21);
        v13 = OUTLINED_FUNCTION_16_5();
        v14(v13, v12);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_46_51();
        sub_1E3A8A680();
        type metadata accessor for LibraryBarItem();
        v4 = OUTLINED_FUNCTION_24_92();
        __swift_destroy_boxed_opaque_existential_1(&v20);
        goto LABEL_9;
      }

      ++v9;
      result = __swift_destroy_boxed_opaque_existential_1(&v20);
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1E34AF5F4(v3);
    return v4;
  }

  return result;
}

uint64_t sub_1E3EBD2AC()
{
  v1 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager____lazy_storage___promptItems;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager____lazy_storage___promptItems))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager____lazy_storage___promptItems);
LABEL_17:

    return v2;
  }

  else
  {
    v3 = v0;
    v4 = sub_1E3B7B1C8();
    v5 = *v4;
    v6 = *(**v4 + 672);

    v8 = v5;
    v6(v7);
    OUTLINED_FUNCTION_38();

    v10 = 0;
    v11 = *(v5 + 16);
    for (i = v5 + 32; ; i += 40)
    {
      if (v11 == v10)
      {

        v2 = MEMORY[0x1E69E7CC0];
LABEL_16:
        *(v3 + v1) = v2;

        goto LABEL_17;
      }

      if (v10 >= *(v8 + 16))
      {
        break;
      }

      sub_1E327F454(i, v25);
      sub_1E327F454(v25, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
      type metadata accessor for LibLocalSource();
      if (swift_dynamicCast())
      {

        sub_1E37DADF4(v25, v26);
        sub_1E37DADF4(v26, v27);
        v2 = MEMORY[0x1E69E7CC0];
        *&v26[0] = MEMORY[0x1E69E7CC0];
        v13 = *(v3 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_promptMenuItemTypes);
        v14 = *(v13 + 16);
        if (v14)
        {
          type metadata accessor for LibMenuItem();
          type metadata accessor for LibraryBarItem();
          v15 = v13 + 32;
          do
          {
            v16 = v27[4];
            ++v15;
            __swift_project_boxed_opaque_existential_1(v27, v27[3]);
            v17 = OUTLINED_FUNCTION_16_5();
            v18(v17, v16);
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_46_51();
            sub_1E3A8A680();

            v20 = sub_1E3D713E8(v19);
            MEMORY[0x1E6910BF0]();
            OUTLINED_FUNCTION_4_157();
            if (v22)
            {
              OUTLINED_FUNCTION_35(v21);
              sub_1E42062F4();
            }

            OUTLINED_FUNCTION_123_1();
            sub_1E4206324();

            --v14;
          }

          while (v14);
          v2 = *&v26[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v27);
        goto LABEL_16;
      }

      ++v10;
      result = __swift_destroy_boxed_opaque_existential_1(v25);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E3EBD584(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_visibleBarItems;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

void sub_1E3EBD650(void *a1)
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3EBD69C(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_phoneRootViewHostingController;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

uint64_t sub_1E3EBD720()
{
  v1 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_rebaseFromLibraryViewController;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3EBD754(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_rebaseFromLibraryViewController;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3EBD7E0()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_categoryForRebase;
  OUTLINED_FUNCTION_5_0();
  return *v1;
}

uint64_t sub_1E3EBD824(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_categoryForRebase;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E3EBD908(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_menuItemForRebase;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

uint64_t sub_1E3EBD99C()
{
  v1 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_categorylessRebase;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3EBD9D0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_categorylessRebase;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E3EBDA5C()
{
  *&v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_libraryOnly] = 0;
  v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_initialFetchFinished] = 0;
  v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_cachedLibraryCategoriesLoaded] = 0;
  v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_stopped] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager____lazy_storage___downloadItem] = 1;
  *&v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_promptCategories] = &unk_1F5D8BA20;
  *&v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_promptMenuItemTypes] = &unk_1F5D8BA50;
  *&v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager____lazy_storage___promptItems] = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_menuDataSourceBarItems] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_visibleBarItems] = v1;
  v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_forcedUpdate] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_rebaseFromLibraryViewController] = 0;
  v2 = &v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_categoryForRebase];
  *v2 = 0;
  v2[8] = 1;
  *&v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_menuItemForRebase] = 0;
  v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_categorylessRebase] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_sidebarItemsUpdateCancellable] = 0;
  v3 = [objc_opt_self() defaultManager];
  v4 = [v3 deviceMediaLibrary];

  *&v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_deviceMediaLibrary] = v4;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 libraryMenuDataSourceForMediaLibrary_];
  *&v0[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_libraryMenuDataSource] = v7;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for LibrarySideBarManager();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_1E3B7B1C8();
  sub_1E3EC076C();
  sub_1E3EBE650();

  return v8;
}

id sub_1E3EBDC88()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LibrarySideBarManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E3EBDDF8()
{
  OUTLINED_FUNCTION_31_1();
  v23 = v1;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  *(v0 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_stopped) = 1;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v8(v0);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_160();
    *v11 = 67109120;
    *(v11 + 4) = v3 & 1;
    _os_log_impl(&dword_1E323F000, v9, v10, "LibrarySideBarManager:: stop, rebase = %{BOOL}d", v11, 8u);
    OUTLINED_FUNCTION_7_7();
  }

  (*(v6 + 8))(v0, v4);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_sidebarItemsUpdateCancellable))
  {

    sub_1E42004E4();
  }

  v12 = sub_1E3B7B1C8();
  v13 = *v12;
  v14 = *(**v12 + 672);

  v16 = v13;
  v14(v15);
  OUTLINED_FUNCTION_16_5();

  v17 = 0;
  v18 = *(v13 + 16);
  for (i = v13 + 32; ; i += 40)
  {
    if (v18 == v17)
    {

      goto LABEL_13;
    }

    if (v17 >= *(v16 + 16))
    {
      __break(1u);
      return;
    }

    sub_1E327F454(i, v26);
    sub_1E327F454(v26, &v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v17;
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v20 = OUTLINED_FUNCTION_49_52();
  sub_1E37DADF4(v20, v21);
  OUTLINED_FUNCTION_49_52();
  if (swift_dynamicCast())
  {
    v22 = v26[0];
    (*((*MEMORY[0x1E69E7D40] & *v26[0]) + 0x290))();
  }

LABEL_13:
  if (v3)
  {
    sub_1E3D4A52C(v23);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EBE0D8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  v5 = OUTLINED_FUNCTION_121();
  v6(v5);
  v7 = sub_1E41FFC94();
  v8 = sub_1E4206814();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_160();
    *v9 = 67109120;
    *(v9 + 4) = v3 & 1;
    _os_log_impl(&dword_1E323F000, v7, v8, "LibrarySideBarManager:: resume, rebase = %{BOOL}d", v9, 8u);
    OUTLINED_FUNCTION_6_0();
  }

  v43 = v3;

  v10 = OUTLINED_FUNCTION_57();
  v11(v10);
  v12 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x200))(v47);
  v13 = MEMORY[0x1E69E7CC0];
  *v14 = MEMORY[0x1E69E7CC0];

  v12(v47, 0);
  v15 = *(**sub_1E3B7B1C8() + 672);

  v17 = v15(v16);

  v18 = 0;
  v19 = *(v17 + 16);
  for (i = v17 + 32; ; i += 40)
  {
    if (v19 == v18)
    {

      goto LABEL_11;
    }

    if (v18 >= *(v17 + 16))
    {
      goto LABEL_30;
    }

    sub_1E327F454(i, v46);
    sub_1E327F454(v46, &v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v18;
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v21 = OUTLINED_FUNCTION_49_52();
  sub_1E37DADF4(v21, v22);
  OUTLINED_FUNCTION_49_52();
  if (swift_dynamicCast())
  {
    v23 = v46[0];
    v24 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v46[0]) + 0x290))();

    v25 = v43;
    goto LABEL_12;
  }

LABEL_11:
  v25 = v43;
  v24 = MEMORY[0x1E69E7D40];
LABEL_12:
  sub_1E3EBE650();
  *(v1 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_stopped) = 0;
  v26 = sub_1E3D4B638(v25 & 1);
  v27 = (*((*v24 & *v1) + 0x268))(v26);
  if (v27)
  {
    v28 = v27;
    if ((v25 & 1) != 0 && (*((*v24 & *v1) + 0xF0))())
    {
      v30 = v29;
      ObjectType = swift_getObjectType();
      v32 = *(v28 + 72);
      v33 = *(v28 + 80);
      v34 = *(v30 + 8);

      v34(v32, v33, ObjectType, v30);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_8();
  v36 = *(v35 + 456);

  v38 = v36(v37);

  v47[0] = v13;
  v39 = sub_1E32AE9B0(v38);
  for (j = 0; ; ++j)
  {
    if (v39 == j)
    {

      *(v1 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_forcedUpdate) = 1;
      sub_1E3EBB800();

      sub_1E3D4B638(0);
      OUTLINED_FUNCTION_25_2();
      return;
    }

    if ((v38 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](j, v38);
    }

    else
    {
      if (j >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    type metadata accessor for LibraryBarItem();
    OUTLINED_FUNCTION_24_92();
    MEMORY[0x1E6910BF0]();
    OUTLINED_FUNCTION_4_157();
    if (v42)
    {
      OUTLINED_FUNCTION_35(v41);
      sub_1E42062F4();
    }

    sub_1E4206324();
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1E3EBE650()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C70);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_41();
  v3 = OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_sidebarItemsUpdateCancellable;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_sidebarItemsUpdateCancellable))
  {

    sub_1E42004E4();
  }

  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_8();
  v5 = *(v4 + 480);

  v5(v6);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E3EC2478();
  sub_1E4200844();
  OUTLINED_FUNCTION_16_5();

  v7 = OUTLINED_FUNCTION_74();
  v8(v7);
  *(v0 + v3) = v1;
}

id sub_1E3EBE7DC()
{
  v2 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  if (*(v0 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_sidebarItemsUpdateCancellable))
  {

    sub_1E42004E4();
  }

  type metadata accessor for TVAppLauncher();
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 appWindow];

  if (v5)
  {
    [v5 bounds];
    v7 = v6;
    v9 = v8;

    sub_1E3CD9D88();
    OUTLINED_FUNCTION_8();
    v11 = *(v10 + 192);

    v11(v7, v9, 0);
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v12(v1);
    v13 = sub_1E41FFC94();
    v14 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v14))
    {
      v15 = OUTLINED_FUNCTION_125_0();
      *v15 = 0;
      _os_log_impl(&dword_1E323F000, v13, v14, "LibrarySideBarManager::makeTabBarLibraryViewController when there is no window", v15, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    v16 = OUTLINED_FUNCTION_74();
    v17(v16);
  }

  sub_1E3280A90(0, &qword_1EE23B0D0);
  sub_1E4205F14();
  v18 = sub_1E38A1F34();
  v19 = sub_1E37D5144(v18);
  v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x228);
  v21 = v19;
  v20(v19);

  return v19;
}

void *sub_1E3EBEA74(char *a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v11);
  type metadata accessor for TVAppLauncher();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [ObjCClassFromMetadata sharedInstance];
  v14 = [v13 appWindow];

  v53 = v9;
  if (v14)
  {
    [v14 bounds];

    sub_1E3CD9D88();
    OUTLINED_FUNCTION_8();
    v16 = *(v15 + 192);

    v17 = OUTLINED_FUNCTION_48_9();
    v16(v17);
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_48_4();
    v18 = OUTLINED_FUNCTION_121();
    v19(v18);
    v20 = sub_1E41FFC94();
    v21 = sub_1E42067F4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_125_0();
      *v22 = 0;
      _os_log_impl(&dword_1E323F000, v20, v21, "LibrarySideBarManager::makeLibraryNavigationControllerWith when there is no window", v22, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v23 = OUTLINED_FUNCTION_57();
    v24(v23);
  }

  v25 = *&a1[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_menuItem];
  v26 = [objc_allocWithZone(VUIDocumentDataSource) init];
  [v26 setDocumentRef_];
  sub_1E3280A90(0, &qword_1EE23B078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  sub_1E37FAFB0();

  sub_1E4207414();
  *(inited + 96) = type metadata accessor for LibMenuItem();
  *(inited + 72) = v25;

  sub_1E4205CB4();
  v28 = sub_1E37766C4();
  [v26 setContextData_];

  v29 = [objc_allocWithZone(VUIDocumentUIConfiguration) init];
  [v29 setIsRootViewController_];
  [v26 setUiConfiguration_];
  v30 = sub_1E37D5144(v26);

  if (v30)
  {
    v31 = objc_allocWithZone(VUIAppNavigationController);
    v32 = v30;
    v33 = [v31 initWithRootViewController_];
    v34 = v33;
    if (v33)
    {
      [v33 setMaxNavControllerStackDepth_];
      v35 = sub_1E4205ED4();
      [v34 setVuiViewControllerIdentifier_];
    }

    v36 = [ObjCClassFromMetadata sharedInstance];
    v37 = [v36 appWindow];

    if (v37)
    {
      [v37 bounds];
      v39 = v38;

      if (v34)
      {
        v40 = [v34 navigationBar];
        type metadata accessor for LayoutGrid();
        sub_1E3A258E4(v39);
        [v40 setLayoutMargins_];
      }
    }

    else
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_48_4();
      v41(v1);
      v42 = sub_1E41FFC94();
      v43 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_104(v43))
      {
        v44 = OUTLINED_FUNCTION_125_0();
        *v44 = 0;
        _os_log_impl(&dword_1E323F000, v42, v43, "LibrarySideBarManager::makeLibraryNavigationControllerWith set navbar margin but no window", v44, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v5 + 8))(v1, v3);
    }
  }

  else
  {
    v34 = 0;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v45(v53);
  v46 = a1;
  v47 = sub_1E41FFC94();
  v48 = sub_1E4206814();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_6_21();
    v50 = OUTLINED_FUNCTION_100();
    v54[0] = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_1E3270FC8(*&v46[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier], *&v46[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8], v54);
    _os_log_impl(&dword_1E323F000, v47, v48, "LibrarySideBarManager:: created library controller for %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();

    (*(v5 + 8))(v53, v3);
  }

  else
  {

    (*(v5 + 8))(v53, v3);
  }

  v51 = v34;
  sub_1E3D4B3B0(v34);

  return v34;
}

uint64_t sub_1E3EBF104(uint64_t a1)
{
  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 856);

  v3(a1);
}

void sub_1E3EBF17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  sub_1E3280A90(0, &qword_1EE23AD70);
  v35 = *&v20[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_libraryMenuDataSource];
  OUTLINED_FUNCTION_123_1();
  if (sub_1E4206F64())
  {
    v20[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_initialFetchFinished] = 1;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v36(v34);
    v37 = sub_1E41FFC94();
    v38 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v38))
    {
      v39 = OUTLINED_FUNCTION_125_0();
      *v39 = 0;
      _os_log_impl(&dword_1E323F000, v37, v38, "LibrarySideBarManager:: data source finished fetching, updating visible items", v39, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    (*(v27 + 8))(v34, v25);
    sub_1E3EBF420();
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v40(v31);
    v41 = v20;
    v42 = v24;
    v43 = sub_1E41FFC94();
    v44 = sub_1E42067F4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412546;
      *(v45 + 4) = v35;
      *(v45 + 12) = 2112;
      *(v45 + 14) = v42;
      *v46 = v35;
      v46[1] = v42;
      v47 = v42;
      v48 = v35;
      _os_log_impl(&dword_1E323F000, v43, v44, "LibrarySideBarManager::dataSourceDidFinishFetching for wrong data source. Expected %@, recieved %@", v45, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v27 + 8))(v31, v25);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EBF420()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v74 - v7;
  v87 = MEMORY[0x1E69E7CC0];
  v8 = sub_1E3EBCC24();
  v10 = v8;
  v11 = *(v8 + 2);
  v79 = v2;
  v76 = v1;
  v77 = v4;
  if (v11)
  {
    v75 = v0;
    v81 = (v4 + 8);
    v82 = (v4 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    v13 = 32;
    *&v9 = 134217984;
    v78 = v9;
    v14 = MEMORY[0x1E69E7CC0];
    v15 = v80;
    v84 = v8;
    while (1)
    {
      v16 = *&v10[v13];
      v17 = VUILibraryCategoryStringFromType(v16);
      if (!v17)
      {
        goto LABEL_8;
      }

      v18 = v17;
      v19 = sub_1E4205F14();
      v21 = v20;

      v22 = VUILibraryCategoryIdentifierFromType(v16);
      if (!v22)
      {
        break;
      }

      v23 = v22;
      v83 = v12;
      v24 = sub_1E4205F14();
      v26 = v25;

      v27 = VUILibraryCategoryImageNameFromType(v16);
      if (v27)
      {
        v28 = v27;
        v29 = sub_1E4205F14();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      type metadata accessor for LibraryBarItem();
      v36 = OUTLINED_FUNCTION_18();
      v37 = sub_1E3D7121C(v19, v21, v24, v26, v16, v36 & 1, v29, v31);
      MEMORY[0x1E6910BF0]();
      v38 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v38 >> 1)
      {
        OUTLINED_FUNCTION_35(v38);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v14 = v87;
      v2 = v79;
      v12 = v83;
      v10 = v84;
      if (v16 == 9)
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = OUTLINED_FUNCTION_27();
          v12 = sub_1E3997AA8(v41, v42, v43, v12);
        }

        isa = v12[2].isa;
        v39 = v12[3].isa;
        if (isa >= v39 >> 1)
        {
          v44 = OUTLINED_FUNCTION_35(v39);
          v12 = sub_1E3997AA8(v44, isa + 1, 1, v12);
        }

        v12[2].isa = (isa + 1);
        v12[isa + 4].isa = v16;
      }

      v15 = v80;
LABEL_22:
      v13 += 8;
      if (!--v11)
      {

        v1 = v76;
        v4 = v77;
        v0 = v75;
        goto LABEL_25;
      }
    }

    v10 = v84;
LABEL_8:
    v32 = sub_1E324FBDC();
    (*v82)(v15, v32, v2);
    v33 = sub_1E41FFC94();
    v34 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v34))
    {
      v35 = OUTLINED_FUNCTION_6_21();
      *v35 = v78;
      *(v35 + 4) = v16;
      _os_log_impl(&dword_1E323F000, v33, v34, "LibrarySideBarManager::makeLibrarySideBarItems can't get title and identifier for %ld", v35, 0xCu);
      v10 = v84;
      OUTLINED_FUNCTION_6_0();
    }

    (*v81)(v15, v2);
    goto LABEL_22;
  }

  v12 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
LABEL_25:
  if (v12[2].isa)
  {
    v45 = [objc_opt_self() standardUserDefaults];
    v46 = sub_1E42062A4();

    OUTLINED_FUNCTION_23();
    v47 = OUTLINED_FUNCTION_53_42();
    [v45 setValue:v46 forKey:v47];
  }

  else
  {

    v46 = [objc_opt_self() standardUserDefaults];
    OUTLINED_FUNCTION_23();
    v47 = OUTLINED_FUNCTION_53_42();
    [v46 removeObjectForKey_];
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v48(v1);
  v49 = v0;
  v50 = sub_1E41FFC94();
  v51 = sub_1E4206814();

  if (!os_log_type_enabled(v50, v51))
  {

    (*(v4 + 8))(v1, v2);
LABEL_42:
    *&v49[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_menuDataSourceBarItems] = v14;

    OUTLINED_FUNCTION_25_2();
    return;
  }

  LODWORD(v82) = v51;
  v84 = v14;
  v52 = OUTLINED_FUNCTION_6_21();
  v53 = OUTLINED_FUNCTION_100();
  v86 = v53;
  *v52 = 136315138;
  v54 = *&v49[OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_menuDataSourceBarItems];
  v55 = sub_1E32AE9B0(v54);
  v56 = MEMORY[0x1E69E7CC0];
  v83 = v50;
  v80 = v53;
  v81 = v52;
  if (!v55)
  {
    v14 = v84;
LABEL_41:
    v68 = MEMORY[0x1E6910C30](v56, MEMORY[0x1E69E6158]);
    v70 = v69;

    v71 = sub_1E3270FC8(v68, v70, &v86);

    v72 = v81;
    *(v81 + 1) = v71;
    v73 = v83;
    _os_log_impl(&dword_1E323F000, v83, v82, "LibrarySideBarManager:: menuDataSourceBarItems %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v80);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v4 + 8))(v1, v79);
    goto LABEL_42;
  }

  v57 = v55;
  v85 = MEMORY[0x1E69E7CC0];
  v58 = v55 & ~(v55 >> 63);

  sub_1E377FD30(0, v58, 0);
  if ((v57 & 0x8000000000000000) == 0)
  {
    *&v78 = v49;
    v59 = 0;
    v56 = v85;
    do
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x1E6911E60](v59, v54);
      }

      else
      {
        v60 = *(v54 + 8 * v59 + 32);
      }

      v61 = v60;
      v62 = *&v60[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_title];
      v63 = *&v60[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_title + 8];

      v85 = v56;
      v65 = *(v56 + 16);
      v64 = *(v56 + 24);
      if (v65 >= v64 >> 1)
      {
        v67 = OUTLINED_FUNCTION_35(v64);
        sub_1E377FD30(v67, v65 + 1, 1);
        v56 = v85;
      }

      ++v59;
      *(v56 + 16) = v65 + 1;
      v66 = v56 + 16 * v65;
      *(v66 + 32) = v62;
      *(v66 + 40) = v63;
    }

    while (v57 != v59);

    v1 = v76;
    v4 = v77;
    v14 = v84;
    v49 = v78;
    goto LABEL_41;
  }

  __break(1u);
}

uint64_t sub_1E3EBFB48(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return sub_1E3F0CD40(v1, v2);
}

uint64_t sub_1E3EBFB88()
{
  v0 = sub_1E3B7B1C8();
  v1 = *v0;
  v2 = *(**v0 + 672);

  v4 = v1;
  v2(v3);
  OUTLINED_FUNCTION_38();

  v6 = 0;
  v7 = *(v1 + 16);
  for (i = v1 + 32; ; i += 40)
  {
    if (v7 == v6)
    {

      return 1;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    sub_1E327F454(i, v18);
    sub_1E327F454(v18, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {

      sub_1E37DADF4(v18, v19);
      if (swift_dynamicCast())
      {
        v15 = *&v18[0];
        v9 = (*((*MEMORY[0x1E69E7D40] & **&v18[0]) + 0x288))();
        result = sub_1E32AE9B0(v9);
        v10 = result;
        for (j = 0; ; ++j)
        {
          if (v10 == j)
          {

            return 0;
          }

          if ((v9 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x1E6911E60](j, v9);
            v12 = result;
          }

          else
          {
            if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v12 = *(v9 + 8 * j + 32);
          }

          if (__OFADD__(j, 1))
          {
            goto LABEL_27;
          }

          v17[0] = *(v12 + 32);
          sub_1E37D4BA4();
          OUTLINED_FUNCTION_48_9();
          sub_1E4206254();
          OUTLINED_FUNCTION_48_9();
          sub_1E4206254();
          if (v19[0] == *&v18[0] && v19[1] == *(&v18[0] + 1))
          {
            break;
          }

          v14 = sub_1E42079A4();

          if (v14)
          {
            goto LABEL_23;
          }
        }

LABEL_23:
      }

      return 1;
    }

    ++v6;
    result = __swift_destroy_boxed_opaque_existential_1(v18);
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E3EBFE88()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_21_8();
  v8(v7);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_160();
    *v12 = 67109120;
    *(v12 + 4) = [objc_opt_self() isRemoteServerConnected];

    _os_log_impl(&dword_1E323F000, v10, v11, "LibrarySideBarManager:: network reachable changed to %{BOOL}d, updating visible items", v12, 8u);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v10 = v9;
  }

  return (*(v3 + 8))(v7, v1);
}

void sub_1E3EC000C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_21_8();
  v8(v7);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_160();
    *v12 = 67109120;
    *(v12 + 4) = [objc_opt_self() userHasActiveAccount];

    _os_log_impl(&dword_1E323F000, v10, v11, "LibrarySideBarManager:: accounts changed, has active account %{BOOL}d, updating visible items", v12, 8u);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v10 = v9;
  }

  (*(v3 + 8))(v7, v1);
  if (([objc_opt_self() userHasActiveAccount] & 1) == 0)
  {
    if ([*(&v9->isa + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_deviceMediaLibrary) isInitialUpdateInProgress])
    {
      v13 = [objc_opt_self() defaultCenter];
      [v13 addObserver:v9 selector:sel_deviceMediaLibraryUpdateStateDidChange name:@"VUIDeviceMediaLibraryUpdateStateDidChangeNotification" object:*(&v9->isa + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_deviceMediaLibrary)];
    }

    else
    {
      v14 = *(&v9->isa + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_libraryMenuDataSource);
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v15 = v14;
      }

      [v13 refetch];
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3EC0250(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FDEE4();
  v13 = a1;
  a4();

  return (*(v8 + 8))(v12, v6);
}

void sub_1E3EC0328()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_deviceMediaLibrary);
  v4 = [v3 isInitialUpdateInProgress];
  sub_1E324FBDC();
  v5 = OUTLINED_FUNCTION_121();
  v6(v5);
  v7 = sub_1E41FFC94();
  v8 = sub_1E4206814();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_160();
    *v9 = 67109120;
    *(v9 + 4) = v4;
    _os_log_impl(&dword_1E323F000, v7, v8, "LibrarySideBarManager:: deviceMediaLibraryUpdateStateDidChange, isInitialUpdateInProgress %{BOOL}d", v9, 8u);
    OUTLINED_FUNCTION_7_7();
  }

  v10 = OUTLINED_FUNCTION_57();
  v11(v10);
  if ([objc_opt_self() userHasActiveAccount] && (objc_msgSend(v3, sel_isInitialUpdateInProgress) & 1) == 0)
  {
    v12 = [objc_opt_self() defaultCenter];
    [v12 removeObserver:v1 name:@"VUIDeviceMediaLibraryUpdateStateDidChangeNotification" object:*(v1 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_deviceMediaLibrary)];

    v13 = *(v1 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_libraryMenuDataSource);
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v13;
    }

    [v14 refetch];
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3EC057C()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v5 = sub_1E324FBDC();
  (*(v3 + 16))(v0, v5, v1);
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_125_0();
    *v8 = 0;
    _os_log_impl(&dword_1E323F000, v6, v7, "LibrarySideBarManager:: isLibraryOnlyCountry changed, updating visible items", v8, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  return (*(v3 + 8))(v0, v1);
}

void sub_1E3EC076C()
{
  OUTLINED_FUNCTION_31_1();
  v56 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v6 = sub_1E3B7B1C8();
  v7 = *v6;
  v8 = *(**v6 + 672);

  v10 = v7;
  v8(v9);
  OUTLINED_FUNCTION_16_5();

  v11 = 0;
  v12 = *(v7 + 16);
  for (i = v7 + 32; ; i += 40)
  {
    if (v12 == v11)
    {

      goto LABEL_46;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    sub_1E327F454(i, &v64);
    sub_1E327F454(&v64, &v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {
      v55 = v4;

      sub_1E37DADF4(&v64, &v62);
      sub_1E37DADF4(&v62, &v64);
      v59 = MEMORY[0x1E69E7CC0];
      v14 = objc_opt_self();
      v15 = [v14 standardUserDefaults];
      v16 = OUTLINED_FUNCTION_53_42();
      v17 = [v15 valueForKey_];

      if (v17)
      {
        sub_1E4207264();
        swift_unknownObjectRelease();
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
      }

      v62 = v60;
      v63 = v61;
      if (*(&v61 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32EC0);
        if (OUTLINED_FUNCTION_33_71())
        {
          v18 = [v14 standardUserDefaults];
          v19 = OUTLINED_FUNCTION_53_42();
          [v18 removeObjectForKey_];

          v20 = *(v57 + 16);
          if (v20)
          {
            v21 = MEMORY[0x1E69E7CC0];
            v22 = 32;
            do
            {
              if (sub_1E3A8CC1C(*(v57 + v22)) != 15)
              {
                type metadata accessor for LibMenuItem();
                __swift_project_boxed_opaque_existential_1(&v64, v65);
                v23 = OUTLINED_FUNCTION_5_195();
                v24(v23);
                OUTLINED_FUNCTION_18();
                OUTLINED_FUNCTION_14_148();
                sub_1E3A8A680();
                type metadata accessor for LibraryBarItem();
                OUTLINED_FUNCTION_16_5();

                v26 = sub_1E3D713E8(v25);
                MEMORY[0x1E6910BF0]();
                OUTLINED_FUNCTION_39_58();
                if (v28)
                {
                  OUTLINED_FUNCTION_35(v27);
                  sub_1E42062F4();
                }

                sub_1E4206324();

                v21 = v59;
              }

              v22 += 8;
              --v20;
            }

            while (v20);
          }

          else
          {

            v21 = MEMORY[0x1E69E7CC0];
          }

          v4 = v55;
          v32 = v56;
          goto LABEL_40;
        }
      }

      else
      {
        sub_1E329505C(&v62);
      }

      v29 = [v14 standardUserDefaults];
      v30 = sub_1E4205ED4();
      v31 = [v29 valueForKey_];

      if (v31)
      {
        sub_1E4207264();
        swift_unknownObjectRelease();
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
      }

      v62 = v60;
      v63 = v61;
      if (*(&v61 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
        if (OUTLINED_FUNCTION_33_71())
        {
          v32 = v56;
          v33 = *(v57 + 16);
          if (v33)
          {
            v34 = v57 + 40;
            v21 = MEMORY[0x1E69E7CC0];
            do
            {

              if (sub_1E3A8CD64() != 15)
              {
                type metadata accessor for LibMenuItem();
                __swift_project_boxed_opaque_existential_1(&v64, v65);
                v35 = OUTLINED_FUNCTION_5_195();
                v36(v35);
                OUTLINED_FUNCTION_18();
                OUTLINED_FUNCTION_14_148();
                sub_1E3A8A680();
                type metadata accessor for LibraryBarItem();
                OUTLINED_FUNCTION_16_5();

                v38 = sub_1E3D713E8(v37);
                MEMORY[0x1E6910BF0]();
                OUTLINED_FUNCTION_39_58();
                if (v28)
                {
                  OUTLINED_FUNCTION_35(v39);
                  sub_1E42062F4();
                }

                sub_1E4206324();

                v21 = v59;
              }

              v34 += 16;
              --v33;
            }

            while (v33);
          }

          else
          {

            v21 = MEMORY[0x1E69E7CC0];
          }

          v4 = v55;
LABEL_40:
          *(v32 + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_cachedLibraryCategoriesLoaded) = 1;
          if (sub_1E32AE9B0(v21))
          {
            v40 = sub_1E324FBDC();
            (*(v4 + 16))(v1, v40, v2);
            v41 = sub_1E41FFC94();
            v42 = sub_1E4206814();
            if (OUTLINED_FUNCTION_104(v42))
            {
              v43 = OUTLINED_FUNCTION_6_21();
              v44 = OUTLINED_FUNCTION_100();
              *&v62 = v44;
              *v43 = 136315138;
              v45 = type metadata accessor for LibraryBarItem();

              v47 = MEMORY[0x1E6910C30](v46, v45);
              v48 = v2;
              v49 = v4;
              v51 = v50;

              v52 = sub_1E3270FC8(v47, v51, &v62);

              *(v43 + 4) = v52;
              _os_log_impl(&dword_1E323F000, v41, v42, "LibrarySideBarManager:: update from cache with items %s", v43, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v44);
              OUTLINED_FUNCTION_7_7();
              OUTLINED_FUNCTION_21_0();

              (*(v49 + 8))(v1, v48);
            }

            else
            {

              v53 = OUTLINED_FUNCTION_74();
              v54(v53);
            }

            sub_1E3EBB800();
          }

          __swift_destroy_boxed_opaque_existential_1(&v64);
LABEL_46:
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      else
      {
        sub_1E329505C(&v62);
      }

      v21 = MEMORY[0x1E69E7CC0];
      v32 = v56;
      goto LABEL_40;
    }

    ++v11;
    __swift_destroy_boxed_opaque_existential_1(&v64);
  }

  __break(1u);
}

void sub_1E3EC0EA8(unint64_t a1)
{
  v2 = sub_1E32AE9B0(a1);
  v3 = type metadata accessor for LibraryBarItem();
  v4 = sub_1E3EC20A8();
  v8[1] = MEMORY[0x1E6910FA0](v2, v3, v4);
  v5 = sub_1E32AE9B0(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3EC13DC(v8, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1E3EC0F94(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (a2 < 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_42:
      MEMORY[0x1EEE6A200](v6, v5);
      return;
    }

    v7 = v5;
    v8 = a2;
    goto LABEL_18;
  }

  if (v4)
  {
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a1;
LABEL_18:

    sub_1E3EC11DC(v7, v8);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v23 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(a1 + 56);
    v6 = type metadata accessor for LibraryBarItem();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v24 = v13;
    if (v11)
    {
      while (2)
      {
        v14 = __clz(__rbit64(v11));
        v25 = (v11 - 1) & v11;
LABEL_33:
        v17 = *(*(a1 + 48) + 8 * (v14 | (v12 << 6)));
        v18 = sub_1E4206F54();
        v19 = ~(-1 << *(a2 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(a2 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return;
          }

          v21 = *(*(a2 + 48) + 8 * v20);
          v22 = sub_1E4206F64();

          v18 = v20 + 1;
        }

        while ((v22 & 1) == 0);

        v13 = v24;
        v11 = v25;
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        return;
      }

      v16 = *(v23 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v25 = (v16 - 1) & v16;
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_42;
  }
}

void sub_1E3EC11DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1E4207384())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1E42073D4();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

char *sub_1E3EC12DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B6B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1E3EC13DC(void *a1, void *a2)
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

    v8 = a2;

    v9 = sub_1E4207394();

    if (v9)
    {

      type metadata accessor for LibraryBarItem();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = sub_1E4207384();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_1E3EC15E0(v7, result + 1);
        if (*(v16 + 24) <= *(v16 + 16))
        {
          sub_1E3EC179C();
        }

        v17 = v8;
        sub_1E3B0CE7C(v17, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v17;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for LibraryBarItem();
    v11 = sub_1E4206F54();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v3;
        v17 = a2;
        sub_1E3EC19C0(v17, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v22;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_1E4206F64();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v19 = *(*(v6 + 48) + 8 * v13);
    *a1 = v19;
    v20 = v19;
    return 0;
  }

  return result;
}

uint64_t sub_1E3EC15E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6C0);
    v2 = sub_1E4207454();
    v14 = v2;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        return v2;
      }

      type metadata accessor for LibraryBarItem();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1E3EC179C();
      }

      v2 = v14;
      result = sub_1E4206F54();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E3EC179C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6C0);
  result = sub_1E4207444();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1E373CBF0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1E4206F54();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E3EC19C0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E3EC179C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1E3EC1C58();
LABEL_10:
      v12 = *v3;
      result = sub_1E4206F54();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for LibraryBarItem();
        v14 = *(*(v12 + 48) + 8 * a2);
        v15 = sub_1E4206F64();

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1E3EC1B08();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

id sub_1E3EC1B08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6C0);
  v2 = *v0;
  v3 = sub_1E4207434();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_1E3EC1C58()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6C0);
  result = sub_1E4207444();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_1E4206F54();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v23;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void sub_1E3EC1E68(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for LibraryBarItem();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1E4207384();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1E3EC1FAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for LibraryBarItem();
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
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

unint64_t sub_1E3EC20A8()
{
  result = qword_1EE282A68;
  if (!qword_1EE282A68)
  {
    type metadata accessor for LibraryBarItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE282A68);
  }

  return result;
}

void sub_1E3EC2100(unint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_stopped) & 1) == 0)
    {
      v33 = Strong;
      v3 = sub_1E32AE9B0(v1);
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      while (v3 != v4)
      {
        if (v5)
        {
          MEMORY[0x1E6911E60](v4, v1);
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }
        }

        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }

        type metadata accessor for LibraryBarItem();
        OUTLINED_FUNCTION_24_92();
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_4_157();
        if (v7)
        {
          OUTLINED_FUNCTION_35(v6);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_123_1();
        sub_1E4206324();
        ++v4;
      }

      sub_1E3EBB800();

      v8 = sub_1E32AE9B0(v1);
      if (v8)
      {
        v9 = v8;
        if (v8 < 1)
        {
          goto LABEL_37;
        }

        v10 = 0;
        v11 = MEMORY[0x1E69E7CC0];
        v12 = &type metadata for LibMenuType;
        v34 = v1;
        do
        {
          if (v5)
          {
            v13 = MEMORY[0x1E6911E60](v10, v1);
          }

          else
          {
            v13 = *(v1 + 8 * v10 + 32);
          }

          sub_1E37DA4B8();
          if (sub_1E4205E84())
          {
          }

          else
          {
            v14 = v5;
            v15 = v9;
            v16 = v12;
            sub_1E3A8ADF4(*(v13 + 32));
            v18 = v17;
            v20 = v19;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = OUTLINED_FUNCTION_27();
              v11 = sub_1E3740F88(v24, v25, v26, v11);
            }

            v22 = *(v11 + 2);
            v21 = *(v11 + 3);
            if (v22 >= v21 >> 1)
            {
              v27 = OUTLINED_FUNCTION_35(v21);
              v11 = sub_1E3740F88(v27, v22 + 1, 1, v11);
            }

            *(v11 + 2) = v22 + 1;
            v23 = &v11[16 * v22];
            *(v23 + 4) = v18;
            *(v23 + 5) = v20;
            v12 = v16;
            v9 = v15;
            v5 = v14;
            v1 = v34;
          }

          ++v10;
        }

        while (v9 != v10);
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      if (*(v11 + 2))
      {
        v28 = [objc_opt_self() standardUserDefaults];
        v29 = sub_1E42062A4();

        OUTLINED_FUNCTION_23();
        v30 = sub_1E4205ED4();
        [v28 setValue:v29 forKey:v30];
      }

      else
      {

        v29 = [objc_opt_self() standardUserDefaults];
        OUTLINED_FUNCTION_23();
        v30 = sub_1E4205ED4();
        v31 = OUTLINED_FUNCTION_121();
        [v31 v32];
      }

      Strong = v33;
    }
  }
}

unint64_t sub_1E3EC2478()
{
  result = qword_1EE28A0E0;
  if (!qword_1EE28A0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A0E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_42()
{

  return sub_1E4205ED4();
}

uint64_t sub_1E3EC24F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    if (!(*(*a1 + 392))(a1))
    {
      v7 = 0;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_106();
    type metadata accessor for ButtonLayout();
    OUTLINED_FUNCTION_20_2();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v8 = *(*v7 + 1784);

  if (v8(v9) == 11 || (sub_1E3751DB0(), (sub_1E4205E84() & 1) == 0) || (v10 = (*a1 + 464), v11 = *v10, (v12 = (*v10)()) == 0) || (v13 = sub_1E32AE9B0(v12), v14 = , v13 != 1) || (v15 = (v11)(v14)) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  v16 = v15;
  result = sub_1E32AE9B0(v15);
  if (!result)
  {

    goto LABEL_15;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1E6911E60](0, v16);
    goto LABEL_12;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v16 + 32);

LABEL_12:

    if (*v18 == _TtC8VideosUI13TextViewModel)
    {

      v19 = *(*v7 + 752);

      v19(0);

LABEL_15:

      sub_1E37521D8(v20);
      v21 = OUTLINED_FUNCTION_78_0();
      sub_1E3EC27CC(v21, v22, v23, v7, a3, a4, v24);
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3EC27CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a5;
  v41 = a6;
  v38 = a2;
  v39 = a4;
  v37[1] = a3;
  v48 = a7;
  v8 = sub_1E4204874();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v45 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B860);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B858);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8E0);
  v42 = *(v19 - 8);
  v43 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B850);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v44 = v37 - v23;
  type metadata accessor for Accessibility();
  (*(*a1 + 320))();
  sub_1E40A7DC8();

  sub_1E3EC2D64();
  sub_1E3ECF35C();
  sub_1E4202EA4();

  v24 = sub_1E325F69C(v15, &qword_1ECF3B860);
  v25 = (*(*a1 + 576))(v24);
  if (v25)
  {
    (*(*v25 + 224))(v25);
  }

  else
  {
    v26 = sub_1E4204724();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v26);
  }

  v27 = sub_1E3ECF2A0();
  v28 = v45;
  sub_1E3B29C44();
  sub_1E3B29C48();
  (*(v46 + 8))(v28, v47);
  sub_1E325F69C(v12, &qword_1ECF2B7B0);
  sub_1E325F69C(v18, &qword_1ECF3B858);
  sub_1E4203F64();
  v49[0] = v16;
  v49[1] = v27;
  swift_getOpaqueTypeConformance2();
  v29 = v43;
  v30 = v44;
  sub_1E42033B4();
  (*(v42 + 8))(v21, v29);
  v49[3] = &unk_1F5D5DAC8;
  v49[4] = &off_1F5D5C998;
  LOBYTE(v49[0]) = 46;
  v31 = j__OUTLINED_FUNCTION_18();
  LOBYTE(v29) = sub_1E39C29F0(v49, v31 & 1);
  __swift_destroy_boxed_opaque_existential_1(v49);
  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v29 & 1;
  v34 = v48;
  sub_1E32DA0D8(v30, v48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B848);
  v36 = (v34 + *(result + 36));
  *v36 = KeyPath;
  v36[1] = sub_1E37E09AC;
  v36[2] = v33;
  return result;
}

void sub_1E3EC2D64()
{
  OUTLINED_FUNCTION_93();
  v315 = v0;
  v316 = v1;
  v3 = v2;
  v340 = v4;
  v341 = v5;
  v7 = v6;
  v350 = v8;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v320 = v10;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v321 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B700);
  OUTLINED_FUNCTION_0_10();
  v300 = v14;
  v301 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v296[1] = v16;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v299 = v18;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8F0);
  OUTLINED_FUNCTION_0_10();
  v297 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v296[0] = v21;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v305 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v304 = v24;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v324 = v26;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B758);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v326 = v28;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v322 = v30;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v328 = v32;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v329 = v34;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B898);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  v303 = v36;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B900);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  v312 = v38;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B890);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  v314 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6D8);
  OUTLINED_FUNCTION_0_10();
  v309 = v42;
  v310 = v41;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  v308 = v44;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B888);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_44();
  v317 = v46;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B908);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v351 = v48;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B910);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44();
  v344 = v50;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B918);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  v337 = v52;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B920);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B878);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  v56 = v296 - v55;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B870);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_44();
  v338 = v58;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B868);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44();
  v346 = v60;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B348);
  OUTLINED_FUNCTION_0_10();
  v62 = v61;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_5();
  v302 = v64;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v65);
  v67 = v296 - v66;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B880);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_2_5();
  v307 = v69;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v70);
  v72 = v296 - v71;
  v73 = v3;
  if (!v3)
  {
    v73 = (*(*v7 + 392))();
    if (v73)
    {
      OUTLINED_FUNCTION_106();
      type metadata accessor for ButtonLayout();
      OUTLINED_FUNCTION_20_2();
      v73 = swift_dynamicCastClass();
      if (!v73)
      {

        v73 = 0;
      }
    }
  }

  v352 = v73;
  v74 = v3;

  v75 = v7;
  if (!sub_1E3ECD694(v7))
  {
    v76 = v7[49];
    *(&v354[1] + 1) = &unk_1F5D5D0A8;
    *&v354[2] = &off_1F5D5C758;
    LOBYTE(v354[0]) = 10;
    v77 = j__OUTLINED_FUNCTION_18();
    v78 = sub_1E39C29F0(v354, v77 & 1);
    __swift_destroy_boxed_opaque_existential_1(v354);
    if ((v78 & 1) == 0)
    {
      switch(v76)
      {
        case ';':

          sub_1E3E5B9FC();
          sub_1E3D5D058();
          v108 = v308;
          sub_1E40443A0();
          memcpy(v354, v353, 0x70uLL);
          sub_1E3D5D0AC(v354);
          OUTLINED_FUNCTION_204_0();
          v109 = v317;
          sub_1E3EC514C(v341, v110, v317);
          (*(v309 + 8))(v108, v310);
          v111 = OUTLINED_FUNCTION_87_2();
          sub_1E3743538(v111, v112, &qword_1ECF3B888);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF58C();
          sub_1E3ECF6D8();
          OUTLINED_FUNCTION_261();
          sub_1E4201F44();
          sub_1E3743538(v56, v337, &qword_1ECF3B878);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF500();
          sub_1E3ECF830();
          v113 = v338;
          sub_1E4201F44();
          sub_1E325F69C(v56, &qword_1ECF3B878);
          OUTLINED_FUNCTION_208();
          OUTLINED_FUNCTION_218();
          sub_1E3743538(v114, v115, v116);
          OUTLINED_FUNCTION_242_0();
          sub_1E3ECF474();
          sub_1E3ECF9DC();
          OUTLINED_FUNCTION_148_8();
          OUTLINED_FUNCTION_202_2();
          sub_1E325F69C(v113, &qword_1ECF3B870);
          OUTLINED_FUNCTION_252_0();
          OUTLINED_FUNCTION_218();
          sub_1E3743538(v117, v118, v119);
          OUTLINED_FUNCTION_201_3();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_86_16();

          v120 = OUTLINED_FUNCTION_45_1();
          sub_1E325F69C(v120, v121);
          v106 = v109;
          goto LABEL_16;
        case '<':

          sub_1E3E5B9FC();
          sub_1E3D5D058();
          v163 = v308;
          sub_1E40443A0();
          memcpy(v354, v353, 0x70uLL);
          sub_1E3D5D0AC(v354);
          OUTLINED_FUNCTION_204_0();
          v164 = v317;
          sub_1E3EC514C(v341, v165, v317);
          (*(v309 + 8))(v163, v310);
          sub_1E3743538(v164, v312, &qword_1ECF3B888);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF6D8();
          sub_1E3ECF8BC();
          sub_1E4201F44();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v166, v167, v168);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF500();
          sub_1E3ECF830();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v169, v170);
          OUTLINED_FUNCTION_208();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v171, v172, v173);
          OUTLINED_FUNCTION_242_0();
          sub_1E3ECF474();
          sub_1E3ECF9DC();
          OUTLINED_FUNCTION_148_8();
          OUTLINED_FUNCTION_202_2();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v174, v175);
          OUTLINED_FUNCTION_252_0();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v176, v177, v178);
          OUTLINED_FUNCTION_201_3();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_86_16();

          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v179, v180);
          v106 = v164;
LABEL_16:
          v107 = &qword_1ECF3B888;
          goto LABEL_5;
        case '>':
          if ([objc_opt_self() allowsAccountModification])
          {

            *&v354[0] = sub_1E3C427C8(v122);
            *(&v354[0] + 1) = v123;
            *&v354[1] = v124;
            *(&v354[1] + 1) = v125;
            sub_1E3ECD9AC();
            sub_1E40443A0();

            OUTLINED_FUNCTION_204_0();
            v126 = v299;
            sub_1E3EC5AAC(v341, v127, v299);
            v128 = OUTLINED_FUNCTION_50_8();
            v129(v128);
            v130 = sub_1E3ECFBE0();

            v131 = v296[0];
            OUTLINED_FUNCTION_156_2();
            sub_1E38838AC(v132, v133, v134, v130, v135);

            sub_1E325F69C(v126, &qword_1ECF3B8B8);
            v136 = v322;
            v137 = v306;
            (*(v297 + 32))(v322, v131, v306);
            v138 = v136;
            v139 = 0;
            v140 = v137;
          }

          else
          {
            v136 = v322;
            v138 = v322;
            v139 = 1;
            v140 = v306;
          }

          __swift_storeEnumTagSinglePayload(v138, v139, 1, v140);
          sub_1E3743538(v136, v320, &qword_1ECF3B8B0);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECFB20();
          sub_1E3ECF58C();
          OUTLINED_FUNCTION_270_0();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v257, v258, v259);
          swift_storeEnumTagMultiPayload();
          v260 = OUTLINED_FUNCTION_146();
          __swift_instantiateConcreteTypeFromMangledNameV2(v260);
          OUTLINED_FUNCTION_2_211();
          OUTLINED_FUNCTION_167_0();
          sub_1E3ECEE2C(v261, v262, v263, v264);
          sub_1E3ECFA94();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v265, v266);
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v267, v268, v269);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF474();
          sub_1E3ECF9DC();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v270, v271);
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v272, v273, v274);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_12_35();
          sub_1E4201F44();

          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v275, v276);
          v106 = v322;
          v107 = &qword_1ECF3B8B0;
          goto LABEL_5;
        case '?':
          type metadata accessor for LibDownloadButtonViewModel();
          if (swift_dynamicCastClass())
          {
            OUTLINED_FUNCTION_200_3();

            v221 = OUTLINED_FUNCTION_57();
            sub_1E41A0228(v221, v222, v223);
            LOBYTE(v353[0]) = 0;
            OUTLINED_FUNCTION_43_59(v358);
            BYTE8(v354[3]) = 0;
          }

          else
          {

            sub_1E41A0228(v277, 0, v357);
            LOBYTE(v353[0]) = 1;
            OUTLINED_FUNCTION_43_59(v358);
            BYTE8(v354[3]) = v278;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B828);
          sub_1E3ECEE94();
          OUTLINED_FUNCTION_62_32();
          OUTLINED_FUNCTION_150_6();
          LOBYTE(v360) = 0;
          BYTE1(v353[7]) = 0;
          goto LABEL_32;
        case '@':
          type metadata accessor for LibDownloadButtonViewModel();
          if (swift_dynamicCastClass())
          {
            OUTLINED_FUNCTION_200_3();

            v224 = OUTLINED_FUNCTION_57();
            sub_1E41A0228(v224, v225, v226);
            LOBYTE(v353[0]) = 0;
            OUTLINED_FUNCTION_43_59(v358);
            BYTE8(v354[3]) = 0;
          }

          else
          {

            sub_1E41A0228(v279, 0, v357);
            LOBYTE(v353[0]) = 1;
            OUTLINED_FUNCTION_43_59(v358);
            BYTE8(v354[3]) = v280;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B828);
          sub_1E3ECEE94();
          OUTLINED_FUNCTION_62_32();
          OUTLINED_FUNCTION_150_6();
          LOBYTE(v360) = 1;
          BYTE1(v353[7]) = 1;
LABEL_32:
          sub_1E3743538(v359, v354, &qword_1ECF3B8D8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B820);
          sub_1E3ECEDFC();
          sub_1E4201F44();
          v281 = v354[1];
          v282 = v328;
          *v328 = v354[0];
          v282[1] = v281;
          v282[2] = v354[2];
          *(v282 + 42) = *(&v354[2] + 10);
          swift_storeEnumTagMultiPayload();
          v283 = OUTLINED_FUNCTION_75();
          __swift_instantiateConcreteTypeFromMangledNameV2(v283);
          OUTLINED_FUNCTION_2_211();
          OUTLINED_FUNCTION_90();
          sub_1E3ECEE2C(v284, v285, v286, v287);
          sub_1E3ECFA94();
          sub_1E4201F44();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v288, v289, v290);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF474();
          sub_1E3ECF9DC();
          OUTLINED_FUNCTION_148_8();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v291, v292);
          OUTLINED_FUNCTION_114_1();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v293, v294, v295);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          sub_1E4201F44();
          sub_1E325F69C(v359, &qword_1ECF3B820);

          v106 = OUTLINED_FUNCTION_134_0();
          goto LABEL_5;
        case 'A':

          sub_1E38AB38C(v141, v354);
          OUTLINED_FUNCTION_204_0();
          v142 = v303;
          sub_1E3EC5624(v341, v143, v303);
          sub_1E325F69C(v354, &qword_1ECF3B6E8);
          v144 = &qword_1ECF3B898;
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v145, v146, v147);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF6D8();
          sub_1E3ECF8BC();
          sub_1E4201F44();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v148, v149, v150);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF500();
          sub_1E3ECF830();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v151, v152);
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v153, v154, v155);
          OUTLINED_FUNCTION_242_0();
          sub_1E3ECF474();
          sub_1E3ECF9DC();
          OUTLINED_FUNCTION_202_2();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v156, v157);
          OUTLINED_FUNCTION_252_0();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v158, v159, v160);
          OUTLINED_FUNCTION_201_3();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_86_16();

          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v161, v162);
          v106 = v142;
          goto LABEL_19;
        case 'C':
          OUTLINED_FUNCTION_89_15();

          sub_1E383C8A8();
          sub_1E383C8B0();
          OUTLINED_FUNCTION_222_0();
          v181 = OUTLINED_FUNCTION_167();
          OUTLINED_FUNCTION_191_4(v181, v182, v183, v184, v185, v186, v187);
          v188 = sub_1E37ADF68();

          v189 = v302;
          OUTLINED_FUNCTION_156_2();
          sub_1E38838AC(v190, v191, v192, v188, v193);

          sub_1E37ADFBC(v354);
          OUTLINED_FUNCTION_204_0();
          v194 = v307;
          sub_1E3EC4C8C(v341, v195, v307);
          (*(v62 + 8))(v189, v331);
          sub_1E3743538(v194, v320, &qword_1ECF3B880);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECFB20();
          sub_1E3ECF58C();
          OUTLINED_FUNCTION_270_0();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v196, v197, v198);
          swift_storeEnumTagMultiPayload();
          v199 = OUTLINED_FUNCTION_146();
          __swift_instantiateConcreteTypeFromMangledNameV2(v199);
          OUTLINED_FUNCTION_2_211();
          OUTLINED_FUNCTION_167_0();
          sub_1E3ECEE2C(v200, v201, v202, v203);
          sub_1E3ECFA94();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v204, v205);
          OUTLINED_FUNCTION_208();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v206, v207, v208);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF474();
          sub_1E3ECF9DC();
          OUTLINED_FUNCTION_202_2();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v209, v210);
          OUTLINED_FUNCTION_252_0();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v211, v212, v213);
          OUTLINED_FUNCTION_201_3();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_86_16();

          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v214, v215);
          v106 = v307;
          v107 = &qword_1ECF3B880;
          goto LABEL_5;
        case 'D':

          sub_1E3C14148(v216, v74, 0, v359);
          memcpy(v353, v359, 0x59uLL);
          LOBYTE(v357[0]) = 0;
          BYTE1(v353[11]) = 0;
          sub_1E3C14BF4(v359, v354);
          sub_1E3C14BF4(v359, v354);
          sub_1E380DC84();
          sub_1E3ECF048();
          sub_1E4201F44();
          memcpy(v324, v354, 0x5AuLL);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B830);
          sub_1E3ECEFBC();
          OUTLINED_FUNCTION_5_1();
          v217 = v326;
          OUTLINED_FUNCTION_78_0();
          sub_1E4201F44();
          v144 = &qword_1ECF3B758;
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v218, v219, v220);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_12_35();
          sub_1E4201F44();

          sub_1E3ECFD50(v359);
          sub_1E3ECFD50(v359);
          v106 = v217;
LABEL_19:
          v107 = v144;
          goto LABEL_5;
        case 'F':

          sub_1E3F25548(v227, 2, v359);
          v357[0] = *&v359[1];
          v362[0] = v359[3];
          v360 = v359[4];
          v361 = v359[5];
          v356 = v359[5];
          v355 = 1;
          v353[0] = v359[0];
          LOBYTE(v353[1]) = v359[1];
          v353[2] = v359[2];
          *&v353[3] = *&v359[3];
          LOBYTE(v353[5]) = v359[5];
          BYTE1(v353[11]) = 1;

          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v228, v229, v230);
          OUTLINED_FUNCTION_246();
          sub_1E3743538(v231, v232, v233);
          OUTLINED_FUNCTION_266();

          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v234, v235, v236);
          OUTLINED_FUNCTION_246();
          sub_1E3743538(v237, v238, v239);
          OUTLINED_FUNCTION_266();
          sub_1E380DC84();
          sub_1E3ECF048();
          sub_1E4201F44();
          memcpy(v324, v354, 0x5AuLL);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B830);
          sub_1E3ECEFBC();
          OUTLINED_FUNCTION_5_1();
          v240 = v326;
          sub_1E4201F44();
          sub_1E3743538(v240, v351, &qword_1ECF3B758);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_12_35();
          sub_1E4201F44();

          sub_1E325F69C(v357, &unk_1ECF294E0);
          sub_1E325F69C(v362, &unk_1ECF3B8C8);
          sub_1E325F69C(&v360, &unk_1ECF3B8D0);

          OUTLINED_FUNCTION_55_0();
          sub_1E325F69C(v241, v242);
          OUTLINED_FUNCTION_167_0();
          sub_1E325F69C(v243, v244);
          sub_1E325F69C(&v360, &unk_1ECF3B8D0);
          v106 = v240;
          v107 = &qword_1ECF3B758;
          goto LABEL_5;
        default:
          *&v354[0] = 0;
          *(&v354[0] + 1) = 0xE000000000000000;
          sub_1E42074B4();
          v245 = MEMORY[0x1E69109E0](0xD00000000000003BLL, 0x80000001E4288160);
          v246 = (*(*v75 + 376))(v245);
          MEMORY[0x1E69109E0](v246);

          nullsub_1(v247, v248);

          v249 = OUTLINED_FUNCTION_167();
          v250(v249);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B830);
          sub_1E3ECEFBC();
          OUTLINED_FUNCTION_5_1();
          v251 = v326;
          OUTLINED_FUNCTION_78_0();
          sub_1E4201F44();
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v252, v253, v254);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_12_35();
          sub_1E4201F44();

          sub_1E325F69C(v251, &qword_1ECF3B758);
          v255 = OUTLINED_FUNCTION_93_15();
          v256(v255);
          goto LABEL_6;
      }
    }
  }

  OUTLINED_FUNCTION_89_15();
  v79 = v352;

  sub_1E383C8A8();
  sub_1E383C8B0();
  OUTLINED_FUNCTION_222_0();
  OUTLINED_FUNCTION_191_4(v75, v79, v80, v81, v82, v83, v84);
  v85 = sub_1E37ADF68();

  OUTLINED_FUNCTION_156_2();
  sub_1E38838AC(v86, v87, v88, v85, v89);

  sub_1E37ADFBC(v354);
  OUTLINED_FUNCTION_204_0();
  sub_1E3EC4C8C(v341, v90, v72);
  (*(v62 + 8))(v67, v331);
  v91 = OUTLINED_FUNCTION_87_2();
  sub_1E3743538(v91, v92, v93);
  swift_storeEnumTagMultiPayload();
  sub_1E3ECF58C();
  sub_1E3ECF6D8();
  OUTLINED_FUNCTION_261();
  sub_1E4201F44();
  sub_1E3743538(v56, v337, &qword_1ECF3B878);
  swift_storeEnumTagMultiPayload();
  sub_1E3ECF500();
  sub_1E3ECF830();
  sub_1E4201F44();
  OUTLINED_FUNCTION_167_0();
  sub_1E325F69C(v94, v95);
  OUTLINED_FUNCTION_246();
  sub_1E3743538(v96, v97, v98);
  swift_storeEnumTagMultiPayload();
  sub_1E3ECF474();
  sub_1E3ECF9DC();
  OUTLINED_FUNCTION_148_8();
  sub_1E4201F44();
  v99 = OUTLINED_FUNCTION_57();
  sub_1E325F69C(v99, v100);
  OUTLINED_FUNCTION_246();
  sub_1E3743538(v101, v102, v103);
  swift_storeEnumTagMultiPayload();
  sub_1E3ECF3E8();
  sub_1E3ECEF18();
  OUTLINED_FUNCTION_12_35();
  sub_1E4201F44();

  v104 = OUTLINED_FUNCTION_45_1();
  sub_1E325F69C(v104, v105);
  v106 = v72;
  v107 = &qword_1ECF3B880;
LABEL_5:
  sub_1E325F69C(v106, v107);
LABEL_6:
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3EC4C8C@<X0>(ValueMetadata *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v36 = a3;
  v5 = a2 >> 8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA78);
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA80);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6C8);
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v32 - v11;
  v47 = a1;
  v3 &= 1u;
  v48 = v3;
  v49 = v5;
  v45 = &type metadata for BasicButtonStyle;
  v13 = sub_1E3ECFDA4();
  v46 = v13;
  v42 = a1;
  LOBYTE(v43) = v3;
  BYTE1(v43) = v5;
  __swift_project_boxed_opaque_existential_1(&v42, &type metadata for BasicButtonStyle);
  v14 = *(v13 + 32);

  if (v14(&type metadata for BasicButtonStyle, v13))
  {
    sub_1E3EC6E38(&v42);
    v15 = v35;
    (*(v10 + 16))(v9, v12, v35);
    swift_storeEnumTagMultiPayload();
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B760);
    v17 = sub_1E3ECDF10();
    v38 = v16;
    v39 = v17;
    swift_getOpaqueTypeConformance2();
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B348);
    v19 = sub_1E37ADF68();
    v38 = &type metadata for ButtonRepresentable;
    v39 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v21 = sub_1E37532B0();
    v38 = v18;
    v39 = &type metadata for BasicButtonStyle;
    v40 = OpaqueTypeConformance2;
    v41 = v21;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v10 + 8))(v12, v15);
    return __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v42);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B348);
    v24 = sub_1E37ADF68();
    v42 = &type metadata for ButtonRepresentable;
    v43 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    v26 = sub_1E37532B0();
    v27 = v33;
    sub_1E4202DA4();
    v28 = v34;
    v29 = v37;
    (*(v34 + 16))(v9, v27, v37);
    swift_storeEnumTagMultiPayload();
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B760);
    v31 = sub_1E3ECDF10();
    v42 = v30;
    v43 = v31;
    swift_getOpaqueTypeConformance2();
    v42 = v23;
    v43 = &type metadata for BasicButtonStyle;
    v44 = v25;
    v45 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v28 + 8))(v27, v29);
  }
}

uint64_t sub_1E3EC514C@<X0>(ValueMetadata *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v36 = a3;
  v5 = a2 >> 8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B928);
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B930);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6D0);
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v32 - v11;
  v47 = a1;
  v3 &= 1u;
  v48 = v3;
  v49 = v5;
  v45 = &type metadata for BasicButtonStyle;
  v13 = sub_1E3ECFDA4();
  v46 = v13;
  v42 = a1;
  LOBYTE(v43) = v3;
  BYTE1(v43) = v5;
  __swift_project_boxed_opaque_existential_1(&v42, &type metadata for BasicButtonStyle);
  v14 = *(v13 + 32);

  if (v14(&type metadata for BasicButtonStyle, v13))
  {
    sub_1E3EC6CFC(&v42);
    v15 = v35;
    (*(v10 + 16))(v9, v12, v35);
    swift_storeEnumTagMultiPayload();
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7A0);
    v17 = sub_1E3ECE414();
    v38 = v16;
    v39 = v17;
    swift_getOpaqueTypeConformance2();
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B6D8);
    v19 = sub_1E3D5D058();
    v38 = &type metadata for DefaultButton;
    v39 = v19;
    v40 = &off_1F5D88AA0;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v21 = sub_1E37532B0();
    v38 = v18;
    v39 = &type metadata for BasicButtonStyle;
    v40 = OpaqueTypeConformance2;
    v41 = v21;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v10 + 8))(v12, v15);
    return __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v42);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6D8);
    v24 = sub_1E3D5D058();
    v42 = &type metadata for DefaultButton;
    v43 = v24;
    v44 = &off_1F5D88AA0;
    v25 = swift_getOpaqueTypeConformance2();
    v26 = sub_1E37532B0();
    v27 = v33;
    sub_1E4202DA4();
    v28 = v34;
    v29 = v37;
    (*(v34 + 16))(v9, v27, v37);
    swift_storeEnumTagMultiPayload();
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7A0);
    v31 = sub_1E3ECE414();
    v42 = v30;
    v43 = v31;
    swift_getOpaqueTypeConformance2();
    v42 = v23;
    v43 = &type metadata for BasicButtonStyle;
    v44 = v25;
    v45 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v28 + 8))(v27, v29);
  }
}

uint64_t sub_1E3EC5624@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v35 = a3;
  v7 = a2 >> 8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B998);
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v31 = &v31 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B9A0);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v31 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6E0);
  v11 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v31 - v12;
  v47 = a1;
  v5 &= 1u;
  v48 = v5;
  v49 = v7;
  memcpy(v46, v4, sizeof(v46));
  v44 = &type metadata for BasicButtonStyle;
  v14 = sub_1E3ECFDA4();
  v45 = v14;
  v41 = a1;
  v42 = v5;
  v43 = v7;
  __swift_project_boxed_opaque_existential_1(&v41, &type metadata for BasicButtonStyle);
  v15 = *(v14 + 32);

  if (v15(&type metadata for BasicButtonStyle, v14))
  {
    memcpy(__dst, v46, 0x59uLL);
    sub_1E3EC6BC0(&v41);
    v16 = v34;
    (*(v11 + 16))(v10, v13, v34);
    swift_storeEnumTagMultiPayload();
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7E0);
    v18 = sub_1E3ECE924();
    v37 = v17;
    v38 = v18;
    swift_getOpaqueTypeConformance2();
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B6E8);
    v20 = sub_1E3ECD8D4();
    v21 = sub_1E37532B0();
    v37 = v19;
    v38 = &type metadata for BasicButtonStyle;
    v39 = v20;
    v40 = v21;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v11 + 8))(v13, v16);
    return __swift_destroy_boxed_opaque_existential_1(&v41);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6E8);
    v24 = sub_1E3ECD8D4();
    v25 = sub_1E37532B0();
    v26 = v31;
    sub_1E4202DA4();
    v27 = v32;
    v28 = v36;
    (*(v32 + 16))(v10, v26, v36);
    swift_storeEnumTagMultiPayload();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7E0);
    v30 = sub_1E3ECE924();
    __dst[0] = v29;
    __dst[1] = v30;
    swift_getOpaqueTypeConformance2();
    __dst[0] = v23;
    __dst[1] = &type metadata for BasicButtonStyle;
    __dst[2] = v24;
    __dst[3] = v25;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v27 + 8))(v26, v28);
  }
}

uint64_t sub_1E3EC5AAC@<X0>(ValueMetadata *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v36 = a3;
  v5 = a2 >> 8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA08);
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA10);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6F8);
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v32 - v11;
  v47 = a1;
  v3 &= 1u;
  v48 = v3;
  v49 = v5;
  v45 = &type metadata for BasicButtonStyle;
  v13 = sub_1E3ECFDA4();
  v46 = v13;
  v42 = a1;
  LOBYTE(v43) = v3;
  BYTE1(v43) = v5;
  __swift_project_boxed_opaque_existential_1(&v42, &type metadata for BasicButtonStyle);
  v14 = *(v13 + 32);

  if (v14(&type metadata for BasicButtonStyle, v13))
  {
    sub_1E3EC6A84(&v42);
    v15 = v35;
    (*(v10 + 16))(v9, v12, v35);
    swift_storeEnumTagMultiPayload();
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B708);
    v17 = sub_1E3ECDA00();
    v38 = v16;
    v39 = v17;
    swift_getOpaqueTypeConformance2();
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B700);
    v19 = sub_1E3ECD9AC();
    v38 = &type metadata for AccountSettingsButton;
    v39 = v19;
    v40 = &off_1F5D792B8;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v21 = sub_1E37532B0();
    v38 = v18;
    v39 = &type metadata for BasicButtonStyle;
    v40 = OpaqueTypeConformance2;
    v41 = v21;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v10 + 8))(v12, v15);
    return __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v42);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B700);
    v24 = sub_1E3ECD9AC();
    v42 = &type metadata for AccountSettingsButton;
    v43 = v24;
    v44 = &off_1F5D792B8;
    v25 = swift_getOpaqueTypeConformance2();
    v26 = sub_1E37532B0();
    v27 = v33;
    sub_1E4202DA4();
    v28 = v34;
    v29 = v37;
    (*(v34 + 16))(v9, v27, v37);
    swift_storeEnumTagMultiPayload();
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B708);
    v31 = sub_1E3ECDA00();
    v42 = v30;
    v43 = v31;
    swift_getOpaqueTypeConformance2();
    v42 = v23;
    v43 = &type metadata for BasicButtonStyle;
    v44 = v25;
    v45 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v28 + 8))(v27, v29);
  }
}

void sub_1E3EC5F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v128 = v20;
  v134 = v23;
  v25 = v24;
  v127 = v26;
  v130 = v27;
  v29 = v28;
  v129 = v30;
  v31 = OUTLINED_FUNCTION_271_0();
  v32 = OUTLINED_FUNCTION_3_6(v31, &a10);
  v122 = v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_5();
  v121 = v34;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v36);
  sub_1E4202534();
  OUTLINED_FUNCTION_13_150();
  sub_1E3ECF09C(v37, v38);
  v39 = MEMORY[0x1E697CDB0];
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_229_1();
  OUTLINED_FUNCTION_120_8();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_250_0();
  sub_1E41FE624();
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_26_98();
  sub_1E3ECF09C(v40, v41);
  v42 = sub_1E42039D4();
  OUTLINED_FUNCTION_216(v42, &a11);
  sub_1E4201CD4();
  OUTLINED_FUNCTION_1_247();
  sub_1E3ECF09C(v43, v44);
  v45 = OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_216(v45, v152);
  sub_1E4202054();
  OUTLINED_FUNCTION_5_196();
  sub_1E3ECF09C(v46, v47);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_13_10();
  sub_1E4201F54();
  OUTLINED_FUNCTION_228_0();
  v48 = OUTLINED_FUNCTION_229_1();
  v137 = v29;
  v124 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v152[6] = v48;
  v152[7] = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_2_25();
  v126 = v50;
  v152[5] = swift_getWitnessTable();
  OUTLINED_FUNCTION_25_10();
  v133 = v51;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_176_6();
  OUTLINED_FUNCTION_225();
  sub_1E42039D4();
  OUTLINED_FUNCTION_250_0();
  v52 = sub_1E4201F54();
  OUTLINED_FUNCTION_216(v52, v151);
  sub_1E42014E4();
  OUTLINED_FUNCTION_6_184();
  v55 = sub_1E3ECF09C(v53, v54);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_12_22();
  sub_1E4201F54();
  sub_1E4201F54();
  OUTLINED_FUNCTION_228_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B748);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B750);
  OUTLINED_FUNCTION_57_33();
  v56 = sub_1E42013A4();
  OUTLINED_FUNCTION_12_142();
  WitnessTable = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  v152[3] = WitnessTable;
  v152[4] = v58;
  v59 = v126;
  v60 = swift_getWitnessTable();
  v136 = v25;
  v145 = v29;
  v146 = v55;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_151_7();
  v152[1] = v61;
  v152[2] = v62;
  v63 = swift_getWitnessTable();
  v151[1] = v60;
  v152[0] = v63;
  v151[0] = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  OUTLINED_FUNCTION_117_12();
  v149 = v64;
  v150 = sub_1E3A1558C(v65, &qword_1ECF3B748);
  OUTLINED_FUNCTION_14_55();
  v147 = swift_getWitnessTable();
  v148 = sub_1E3A1558C(&qword_1EE2887C8, &qword_1ECF3B750);
  v66 = v134;
  v132 = v56;
  v143 = v56;
  v144 = swift_getWitnessTable();
  v131 = v144;
  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_0_10();
  v68 = v67;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_4_6();
  v72 = v70 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v120 - v74;
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5();
  v126 = v77;
  v78 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v80 = v79;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_35_3();
  v82 = OUTLINED_FUNCTION_57();
  v83(v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B838);
  v84 = swift_dynamicCast();
  v133 = v59;
  if ((v84 & 1) == 0)
  {
    OUTLINED_FUNCTION_263_0();
    v142 = 0;
    v141 = 0u;
    v140 = 0u;
    sub_1E325F69C(&v140, &unk_1ECF3B840);
LABEL_6:
    v107 = v136;
    v108 = v121;
    OUTLINED_FUNCTION_34();
    v102 = v137;
    v105 = v129;
    sub_1E4202DA4();
    v143 = v107;
    v144 = v66;
    v145 = v102;
    v146 = v105;
    OUTLINED_FUNCTION_16_129();
    OUTLINED_FUNCTION_276();
    v109 = v122;
    v110 = *(v122 + 16);
    v111 = v120;
    v112 = v135;
    v110(v120, v108, v135);
    v113 = *(v109 + 8);
    v114 = OUTLINED_FUNCTION_45_1();
    v113(v114);
    v110(v108, v111, v112);
    v103 = v132;
    v106 = v131;
    v143 = v132;
    v144 = v131;
    OUTLINED_FUNCTION_11_155();
    OUTLINED_FUNCTION_276();
    sub_1E37B8E90(v108, v126, v112);
    v115 = OUTLINED_FUNCTION_45_1();
    v113(v115);
    v116 = OUTLINED_FUNCTION_39_3();
    v113(v116);
    v98 = v136;
    v78 = v125;
    v80 = v124;
    goto LABEL_7;
  }

  v125 = v68;
  sub_1E3251BE8(&v140, &v143);
  __swift_project_boxed_opaque_existential_1(&v143, v146);
  v85 = OUTLINED_FUNCTION_125();
  if ((v86(v85) & 1) == 0)
  {
    OUTLINED_FUNCTION_263_0();
    __swift_destroy_boxed_opaque_existential_1(&v143);
    goto LABEL_6;
  }

  sub_1E3EC6F74(&v143, v136, v137, v87, v88, v89, v90, v91, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  OUTLINED_FUNCTION_151_7();
  *&v140 = v92;
  OUTLINED_FUNCTION_225();
  *(&v140 + 1) = v93;
  OUTLINED_FUNCTION_11_155();
  v128 = swift_getOpaqueTypeConformance2();
  v94 = v125;
  v95 = *(v125 + 16);
  v96 = v126;
  v95(v75, v72, v126);
  v97 = *(v94 + 8);
  v97(v72, v96);
  v95(v72, v75, v96);
  v98 = v136;
  *&v140 = v136;
  *(&v140 + 1) = v66;
  v99 = v137;
  *&v141 = v137;
  v100 = v129;
  *(&v141 + 1) = v129;
  OUTLINED_FUNCTION_16_129();
  swift_getOpaqueTypeConformance2();
  sub_1E37B8D98(v72, v96);
  v101 = v72;
  v102 = v99;
  v103 = v132;
  v97(v101, v96);
  v104 = v75;
  v105 = v100;
  v106 = v131;
  v97(v104, v96);
  __swift_destroy_boxed_opaque_existential_1(&v143);
LABEL_7:
  v143 = v103;
  v144 = v106;
  OUTLINED_FUNCTION_11_155();
  v117 = OUTLINED_FUNCTION_276();
  v143 = v98;
  v144 = v134;
  v145 = v102;
  v146 = v105;
  OUTLINED_FUNCTION_16_129();
  v118 = OUTLINED_FUNCTION_276();
  v138 = v117;
  v139 = v118;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v119 = v133;
  (*(v80 + 16))(v130, v133, v78);
  (*(v80 + 8))(v119, v78);
  OUTLINED_FUNCTION_25_2();
}