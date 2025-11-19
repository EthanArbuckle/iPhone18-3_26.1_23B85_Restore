double sub_21E451520@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 16))(v7, *a1, a1[1]);
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  return result;
}

unint64_t sub_21E451588()
{
  result = qword_27CEC5958;
  if (!qword_27CEC5958)
  {
    type metadata accessor for SiriSharedUISuggestion();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5958);
  }

  return result;
}

unint64_t sub_21E4515E0()
{
  result = qword_27CEC5968;
  if (!qword_27CEC5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5968);
  }

  return result;
}

uint64_t sub_21E451634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E4516A4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E451720()
{
  result = qword_27CEC5990;
  if (!qword_27CEC5990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5930);
    sub_21E4517AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5990);
  }

  return result;
}

unint64_t sub_21E4517AC()
{
  result = qword_27CEC5998;
  if (!qword_27CEC5998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5970);
    sub_21E42D5A8(&qword_27CEC59A0, &qword_27CEC59A8);
    sub_21E42D5A8(&qword_27CEC59B0, &qword_27CEC59B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5998);
  }

  return result;
}

void sub_21E451968(char a1)
{
  v3 = [v1 layer];
  if (a1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setCompositingFilter_];
}

void sub_21E451A80()
{
  if (*(v0 + OBJC_IVAR____TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial_isSmartDialogSnippetBackground) == 1)
  {
    v1 = v0;
    v2 = 0xEB00000000776F64;
    v3 = [v0 layer];
    v4 = [v3 sublayers];

    if (v4)
    {
      sub_21E452648();
      v5 = sub_21E4DD088();

      v56 = MEMORY[0x277D84F90];
      if (v5 >> 62)
      {
        goto LABEL_26;
      }

      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v1; v6; i = v1)
      {
        v7 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x223D5B080](v7, v5);
          }

          else
          {
            if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          v1 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v10 = [v8 name];
          if (v10)
          {
            v11 = v10;
            v12 = v2;
            v13 = sub_21E4DCF78();
            v15 = v14;

            v16 = v13;
            v2 = v12;
            if (v16 == 0x61685372656E6E69 && v15 == v12)
            {

LABEL_20:
              sub_21E4DD408();
              sub_21E4DD438();
              sub_21E4DD448();
              sub_21E4DD418();
              goto LABEL_7;
            }

            v18 = sub_21E4DD518();

            if (v18)
            {
              goto LABEL_20;
            }
          }

LABEL_7:
          ++v7;
          if (v1 == v6)
          {
            v19 = v56;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v6 = sub_21E4DD488();
      }

      v19 = MEMORY[0x277D84F90];
LABEL_28:

      if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
      {
        goto LABEL_41;
      }

      for (j = *(v19 + 16); j; j = sub_21E4DD488())
      {
        v21 = 0;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x223D5B080](v21, v19);
          }

          else
          {
            if (v21 >= *(v19 + 16))
            {
              goto LABEL_40;
            }

            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          [v22 removeFromSuperlayer];

          ++v21;
          if (v24 == j)
          {
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        ;
      }

LABEL_42:

      v1 = i;
    }

    if (*(v1 + OBJC_IVAR____TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial_isLightMode) == 1)
    {
      v25 = [objc_opt_self() blackColor];
      [v1 setBackgroundColor_];

      v26 = [v1 layer];
      LODWORD(v27) = 1025758986;
      [v26 setOpacity_];

      v28 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.14];
      v29 = 5.0;
    }

    else
    {
      v28 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.38];
      v29 = 10.0;
    }

    v30 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v31 = sub_21E4DCF68();
    [v30 setName_];

    [v1 bounds];
    [v30 setFrame_];
    v32 = [v28 CGColor];
    [v30 setShadowColor_];

    [v30 setShadowOffset_];
    LODWORD(v33) = 1.0;
    [v30 setShadowOpacity_];
    [v30 setShadowRadius_];
    [v30 bounds];
    v59 = CGRectInset(v58, -10.0, -10.0);
    x = v59.origin.x;
    y = v59.origin.y;
    width = v59.size.width;
    height = v59.size.height;
    v38 = objc_opt_self();
    v39 = [v38 bezierPathWithRect_];
    [v30 bounds];
    v40 = [v38 &selRef_setMinimumPressDuration_ + 1];
    v41 = [v40 bezierPathByReversingPath];

    [v39 appendPath_];
    v42 = [v39 CGPath];
    [v30 setShadowPath_];

    [v30 setMasksToBounds_];
    v43 = [v1 layer];
    [v43 addSublayer_];

    v44 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.06];
    v45 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v46 = sub_21E4DCF68();
    [v45 setName_];

    [v1 bounds];
    [v45 setFrame_];
    v47 = [v44 CGColor];
    [v45 setShadowColor_];

    [v45 setShadowOffset_];
    LODWORD(v48) = 1.0;
    [v45 setShadowOpacity_];
    [v45 setShadowRadius_];
    [v45 bounds];
    v61 = CGRectInset(v60, -10.0, -10.0);
    v49 = [v38 bezierPathWithRect_];
    [v45 bounds];
    v50 = [v38 bezierPathWithRect_];
    v51 = [v50 bezierPathByReversingPath];

    [v49 appendPath_];
    v52 = [v49 CGPath];
    [v45 setShadowPath_];

    [v45 setMasksToBounds_];
    v53 = [v1 &selRef_safeAreaInsets];
    [v53 addSublayer_];

    v55 = [v1 &selRef_safeAreaInsets];
    [v55 setMasksToBounds_];
  }
}

id SiriSharedUIStandardViewDropletMaterial.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect_];

  return v3;
}

id SiriSharedUIStandardViewDropletMaterial.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIStandardViewDropletMaterial();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21E4523C4(char a1)
{
  v1[OBJC_IVAR____TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial_isLightMode] = 1;
  *&v1[OBJC_IVAR____TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial_fresnelAlphaLightMode] = 0x3FE999999999999ALL;
  *&v1[OBJC_IVAR____TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial_fresnelAlphaDarkMode] = 0x3FC999999999999ALL;
  v1[OBJC_IVAR____TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial_isSmartDialogSnippetBackground] = a1;
  if ([objc_opt_self() isEnhancedMaterialEnabled])
  {
    v12.receiver = v1;
    v12.super_class = type metadata accessor for SiriSharedUIStandardViewDropletMaterial();
    v3 = objc_msgSendSuper2(&v12, sel_initWithEffect_, 0);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v13.receiver = v1;
    v13.super_class = type metadata accessor for SiriSharedUIStandardViewDropletMaterial();
    v5 = objc_msgSendSuper2(&v13, sel_initWithEffect_, v4);

    v3 = v5;
    v6 = [v3 layer];
    v7 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    [v6 setCompositingFilter_];
  }

  v8 = [v3 layer];
  v9 = v8;
  v10 = &SiriSharedUISmartDialogPlatterCornerRadius;
  if (a1)
  {
    v10 = &SiriSharedUISmartDialogSnippetCornerRadius;
  }

  [v8 setCornerRadius_];

  return v3;
}

unint64_t sub_21E452648()
{
  result = qword_27CEC59E0;
  if (!qword_27CEC59E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEC59E0);
  }

  return result;
}

unint64_t sub_21E452694(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_21E4546A0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_21E4DD398();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_21E4DD3F8();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t sub_21E4527E0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = -10;
      if (a1 != 9601 && a2 != 9601)
      {
        result = a1 == a2 ? 10 : -25;
        v5 = *(v2 + 16);
        if (*(v5 + 16))
        {
          v7 = result;
          v8 = sub_21E4B1588(a1);
          if ((v9 & 1) != 0 && (v10 = *(*(v5 + 56) + 8 * v8), *(v10 + 16)))
          {
            v11 = sub_21E4B1588(a2);
            result = v7;
            if (v12)
            {
              return *(*(v10 + 56) + 8 * v11);
            }
          }

          else
          {
            return v7;
          }
        }
      }
    }
  }

  return result;
}

void sub_21E452894(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v7 = *(v5 + 24);
  if (v6 >= *(v7 + 16))
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v9 = *(v7 + 8 * v6 + 32);
  if (*(v9 + 16) <= a2)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v12 = *(v9 + 8 * a2 + 32);
  sub_21E4DCFF8();
  v13 = sub_21E4DD058();
  v15 = sub_21E452694(v13, v14);

  v16 = HIDWORD(v15) & 1;
  if (!v15)
  {
    LODWORD(v16) = 1;
  }

  v17 = v16 == 0;
  v18 = -10;
  if (!v17)
  {
    v18 = 0;
  }

  v19 = v12 + v18;
  if (__OFADD__(v12, v18))
  {
    goto LABEL_89;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v20 = *(v5 + 24);
  if (*(v20 + 16) <= a1)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (!a2)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v21 = *(v20 + 8 * a1 + 32);
  if (*(v21 + 16) < a2)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v72 = v19;
  v22 = *(v21 + 8 * (a2 - 1) + 32);
  sub_21E4DCFF8();
  v23 = sub_21E4DD058();
  v25 = sub_21E452694(v23, v24);

  v26 = HIDWORD(v25) & 1;
  if (!v25)
  {
    LODWORD(v26) = 1;
  }

  v17 = v26 == 0;
  v27 = -10;
  if (!v17)
  {
    v27 = 0;
  }

  v28 = v22 + v27;
  if (__OFADD__(v22, v27))
  {
    goto LABEL_94;
  }

  v29 = *(v5 + 24);
  if (v6 >= *(v29 + 16))
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v30 = *(v29 + 8 * v6 + 32);
  if (*(v30 + 16) < a2)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v71 = v28;
  v31 = *(v30 + 8 * (a2 - 1) + 32);
  sub_21E4DCFF8();
  v32 = sub_21E4DD058();
  v34 = sub_21E452694(v32, v33);

  sub_21E4DCFF8();
  v35 = sub_21E4DD058();
  v37 = sub_21E452694(v35, v36);

  if ((v34 & 0x100000000) != 0)
  {
    v38 = 0;
  }

  else
  {
    v38 = v34;
  }

  if ((v37 & 0x100000000) != 0)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37;
  }

  v40 = sub_21E4527E0(v38, v39);
  v41 = v31 + v40;
  if (__OFADD__(v31, v40))
  {
LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
    goto LABEL_53;
  }

  v42 = a2 + 1;
  if ((a2 + 1) >= sub_21E4DCFE8())
  {
    v44 = v72;
    goto LABEL_35;
  }

  sub_21E4DCFF8();
  if (sub_21E4DD058() == 32 && v43 == 0xE100000000000000)
  {
    v44 = v72;
LABEL_33:

    goto LABEL_35;
  }

  v70 = v41;
  v46 = sub_21E4DD518();

  if ((v46 & 1) == 0)
  {
    sub_21E4DCFF8();
    v44 = v72;
    if (sub_21E4DD058() != 32 || v66 != 0xE100000000000000)
    {
      goto LABEL_80;
    }

    v41 = v70;
    goto LABEL_33;
  }

  v44 = v72;
  v41 = v70;
LABEL_35:
  while ((a1 + 1) < sub_21E4DCFE8())
  {
    sub_21E4DCFF8();
    if (sub_21E4DD058() == 32 && v45 == 0xE100000000000000)
    {
      goto LABEL_38;
    }

    a5 = v45;
    v42 = sub_21E4DD518();

    if (v42)
    {
      break;
    }

    sub_21E4DCFF8();
    if (sub_21E4DD058() == 32 && v67 == 0xE100000000000000)
    {
LABEL_38:

      break;
    }

    v68 = sub_21E4DD518();

    v47 = v71;
    if (v68)
    {
      goto LABEL_43;
    }

    v47 = v71 - 1;
    if (!__OFSUB__(v71, 1))
    {
      goto LABEL_43;
    }

    __break(1u);
LABEL_80:
    a5 = sub_21E4DD518();

    v41 = v70;
    if ((a5 & 1) == 0 && __OFSUB__(v44--, 1))
    {
      __break(1u);
      goto LABEL_84;
    }
  }

  v47 = v71;
LABEL_43:
  v76[0] = 0x8000000000000000;
  v76[1] = v44;
  v76[2] = v47;
  v76[3] = v41;
  v48 = v44 != 0x8000000000000000;
  if (v44 < v47)
  {
    v48 = 2;
  }

  if (v44 <= v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = v44;
  }

  if (v49 >= v41)
  {
    v50 = v48;
  }

  else
  {
    v50 = 3;
  }

  v51 = sub_21E431394(v50);
  if (v51 != 4)
  {
    v60 = v51;
    swift_beginAccess();
    v61 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v61;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v61 = sub_21E4AA9B4(v61);
      *(v5 + 32) = v61;
    }

    if (v61[2] <= a1)
    {
      __break(1u);
    }

    else
    {
      v42 = (v61 + 4);
      a5 = v61[a1 + 4];
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v61[a1 + 4] = a5;
      if (v63)
      {
        goto LABEL_63;
      }
    }

    a5 = sub_21E4AA9A0(a5);
    *(v42 + 8 * a1) = a5;
LABEL_63:
    if (*(a5 + 16) <= a2)
    {
      __break(1u);
    }

    else
    {
      *(a5 + a2 + 32) = v60;
      *(v5 + 32) = v61;
      swift_endAccess();
      v61 = v76[v50];
      v50 = *(v5 + 24);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 24) = v50;
      if (v64)
      {
        goto LABEL_65;
      }
    }

    v50 = sub_21E4AA9DC(v50);
    *(v5 + 24) = v50;
LABEL_65:
    if (*(v50 + 16) <= a1)
    {
      __break(1u);
    }

    else
    {
      a5 = v50 + 32;
      v60 = *(v50 + 32 + 8 * a1);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      *(v50 + 32 + 8 * a1) = v60;
      if (v65)
      {
        goto LABEL_67;
      }
    }

    v60 = sub_21E4AA9C8(v60);
    *(a5 + 8 * a1) = v60;
LABEL_67:
    if (*(v60 + 2) <= a2)
    {
      __break(1u);
    }

    else
    {
      *&v60[8 * a2 + 32] = v61;
      *(v5 + 24) = v50;
    }

    return;
  }

  v5 = 0x800000021E4ECA90;
  if (qword_280C14550 != -1)
  {
    goto LABEL_98;
  }

LABEL_53:
  v52 = sub_21E4DBCC8();
  __swift_project_value_buffer(v52, qword_280C14558);
  v53 = sub_21E4DD218();
  v73 = v5;
  v54 = sub_21E45C20C(0);
  if (v55)
  {
    v74 = 32;
    v75 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v54);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("move(i:j:s1:s2:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v74 = 32;
    v75 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000036, 0x800000021E4ECAB0);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v56 = sub_21E4DBCB8();
  if (os_log_type_enabled(v56, v53))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v74 = v58;
    *v57 = 136315138;
    v59 = sub_21E426648(0xD000000000000010, v73, &v74);

    *(v57 + 4) = v59;
    _os_log_impl(&dword_21E3EB000, v56, v53, "%s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    MEMORY[0x223D5BF10](v58, -1, -1);
    MEMORY[0x223D5BF10](v57, -1, -1);
  }

  else
  {
  }
}

void sub_21E453050()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = sub_21E4AA9F0(v1);
  }

  v2 = &v1[16 * v2 + 24];
  v4 = (v1 + 40);
  v5 = 1;
  while (1)
  {
    if (v5 - 1 == v3)
    {
      goto LABEL_6;
    }

    v7 = *(v1 + 2);
    if (v5 - 1 >= v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v3 >= v7)
    {
      goto LABEL_16;
    }

    v8 = *(v4 - 1);
    v9 = *v4;
    v10 = *v2;
    *(v4 - 1) = *(v2 - 8);
    *v4 = v10;
    v11 = *(v1 + 2);

    if (v3 >= v11)
    {
      break;
    }

    *(v2 - 8) = v8;
    *v2 = v9;

LABEL_6:
    --v3;
    v2 -= 16;
    v4 += 2;
    if (v5++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

char *sub_21E453144(uint64_t a1, char *a2, char *a3, uint64_t a4, int a5)
{
  HIDWORD(v170) = a5;
  v181 = sub_21E4DB428();
  v11 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84F90];
  v194 = MEMORY[0x277D84F90];
  v195 = MEMORY[0x277D84F90];
  v174 = a1;
  v175 = a2;
  v14 = sub_21E4DCFE8();
  v172 = a3;
  v173 = a4;
  v15 = sub_21E4DCFE8();
  v192 = v13;
  v193 = v13;
  v176 = v5;
  swift_beginAccess();
  v178 = v13;
  v179 = (v11 + 8);
  v16 = v13;
  v17 = v13;
  v184 = v13;
LABEL_3:
  v177 = v15;
  v171 = (v15 - 1);
  while (1)
  {
    v182 = v16;
    v183 = v17;
    v18 = *(v176 + 32);
    v19 = *(v18 + 2);
    v185 = v14;
    if (v19)
    {
      break;
    }

    v20 = v13;
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        v16 = sub_21E4434DC(0, *(v16 + 2) + 1, 1, v16);
LABEL_95:
        v77 = *(v16 + 2);
        v76 = *(v16 + 3);
        if (v77 >= v76 >> 1)
        {
          v16 = sub_21E4434DC((v76 > 1), v77 + 1, 1, v16);
        }

        *(v16 + 2) = v77 + 1;
        v78 = &v16[16 * v77];
        *(v78 + 4) = v5;
        *(v78 + 5) = v6;
        v195 = v16;
        v189 = v192;

        v79 = sub_21E4DCED8();
        v81 = v80;

        v189 = v79;
        v190 = v81;
        v82 = v180;
        sub_21E4DB408();
        v83 = sub_21E4DD328();
        v85 = v84;
        (v19)(v82, v181);

        v86 = v183;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_21E4434DC(0, *(v86 + 2) + 1, 1, v86);
        }

        v13 = MEMORY[0x277D84F90];
        v88 = *(v86 + 2);
        v87 = *(v86 + 3);
        if (v88 >= v87 >> 1)
        {
          v86 = sub_21E4434DC((v87 > 1), v88 + 1, 1, v86);
        }

        *(v86 + 2) = v88 + 1;
        v89 = &v86[16 * v88];
        *(v89 + 4) = v83;
        *(v89 + 5) = v85;

        v194 = v86;
        v184 = MEMORY[0x277D84F90];
        v178 = MEMORY[0x277D84F90];
LABEL_102:
        sub_21E453050();
        v5 = &v194;
        sub_21E453050();
        if ((v170 & 0x100000000) == 0)
        {
          break;
        }

        v90 = v194;
        v16 = v195;
        v194 = v13;
        v195 = v13;
        v192 = v13;
        v193 = v13;
        v173 = *(v16 + 2);
        if (!v173)
        {
          goto LABEL_156;
        }

        v6 = 0;
        v91 = 0;
        v92 = (v16 + 40);
        v93 = (v90 + 40);
        v185 = 0xE000000000000000;
        v13 = MEMORY[0x277D84F90];
        v94 = MEMORY[0x277D84F90];
        v95 = MEMORY[0x277D84F90];
        v96 = MEMORY[0x277D84F90];
        v171 = v16;
        v172 = v90;
        while (1)
        {
          v97 = v185;
          if (v6 >= *(v16 + 2))
          {
            break;
          }

          v98 = *(v90 + 2);
          if (v6 == v98)
          {

            goto LABEL_159;
          }

          if (v6 >= v98)
          {
            goto LABEL_177;
          }

          v178 = v91;
          v187 = v94;
          v188 = v185;
          v99 = v16;
          v100 = v6;
          v101 = v96;
          v103 = *(v92 - 1);
          v102 = *v92;
          v182 = v93;
          v183 = v92;
          v104 = *(v93 - 1);
          v105 = *v93;

          v106 = (v102 >> 56) & 0xF;
          v186 = v103;
          v184 = v102;
          if ((v102 & 0x2000000000000000) == 0)
          {
            v106 = v103 & 0xFFFFFFFFFFFFLL;
          }

          v177 = v104;
          v176 = v105;
          if (v106)
          {
            v107 = HIBYTE(v105) & 0xF;
            if ((v105 & 0x2000000000000000) == 0)
            {
              v107 = v104 & 0xFFFFFFFFFFFFLL;
            }

            v96 = v101;
            if (v107)
            {
              v108 = v105;
              v37 = v186 == v104;
              v109 = v100;
              v16 = v99;
              v110 = v178;
              if (v37 && v184 == v108)
              {
                v185 = 0xE800000000000000;
                v111 = 0x656D61735F646461;
              }

              else
              {
                if (sub_21E4DD518())
                {
                  v111 = 0x656D61735F646461;
                }

                else
                {
                  v111 = 0x666669645F646461;
                }

                v185 = 0xE800000000000000;
              }

              v94 = v187;
              v19 = v188;
            }

            else
            {
              v185 = 0xE500000000000000;
              v111 = 0x315F646461;
              v109 = v100;
              v16 = v99;
              v94 = v187;
              v19 = v188;
              v110 = v178;
            }
          }

          else
          {
            v185 = 0xE500000000000000;
            v111 = 0x325F646461;
            v96 = v101;
            v109 = v100;
            v16 = v99;
            v94 = v187;
            v19 = v188;
            v110 = v178;
          }

          if ((v110 == 0x666669645F646461 && v19 == 0xE800000000000000 || (sub_21E4DD518() & 1) != 0 || (v111 != v110 || v185 != v19) && (sub_21E4DD518() & 1) == 0) && (*(v95 + 2) || *(v94 + 2)))
          {
            v174 = v111;
            v178 = v96;
            v189 = v95;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC53D0);
            sub_21E45463C();
            v112 = sub_21E4DCED8();
            v113 = v13;
            v115 = v114;
            v175 = v95;

            v189 = v112;
            v190 = v115;
            v116 = v180;
            sub_21E4DB408();
            sub_21E42C090();
            v117 = sub_21E4DD328();
            v119 = v118;
            v120 = *v179;
            (*v179)(v116, v181);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v113 = sub_21E4434DC(0, *(v113 + 2) + 1, 1, v113);
            }

            v122 = *(v113 + 2);
            v121 = *(v113 + 3);
            v123 = v113;
            v124 = v187;
            if (v122 >= v121 >> 1)
            {
              v123 = sub_21E4434DC((v121 > 1), v122 + 1, 1, v123);
            }

            *(v123 + 2) = v122 + 1;
            v13 = v123;
            v125 = &v123[16 * v122];
            *(v125 + 4) = v117;
            *(v125 + 5) = v119;
            v189 = v124;

            v126 = sub_21E4DCED8();
            v128 = v127;

            v189 = v126;
            v190 = v128;
            v129 = v180;
            sub_21E4DB408();
            v130 = sub_21E4DD328();
            v132 = v131;
            v120(v129, v181);

            v96 = v178;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v96 = sub_21E4434DC(0, *(v96 + 2) + 1, 1, v96);
            }

            v19 = v188;
            v134 = *(v96 + 2);
            v133 = *(v96 + 3);
            if (v134 >= v133 >> 1)
            {
              v96 = sub_21E4434DC((v133 > 1), v134 + 1, 1, v96);
            }

            *(v96 + 2) = v134 + 1;
            v135 = &v96[16 * v134];
            *(v135 + 4) = v130;
            *(v135 + 5) = v132;

            v94 = MEMORY[0x277D84F90];
            v95 = MEMORY[0x277D84F90];
            v16 = v171;
            v111 = v174;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_21E4434DC(0, *(v95 + 2) + 1, 1, v95);
          }

          v137 = *(v95 + 2);
          v136 = *(v95 + 3);
          if (v137 >= v136 >> 1)
          {
            v95 = sub_21E4434DC((v136 > 1), v137 + 1, 1, v95);
          }

          *(v95 + 2) = v137 + 1;
          v138 = &v95[16 * v137];
          v139 = v184;
          *(v138 + 4) = v186;
          *(v138 + 5) = v139;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = sub_21E4434DC(0, *(v94 + 2) + 1, 1, v94);
          }

          v5 = *(v94 + 2);
          v140 = *(v94 + 3);
          v90 = v172;
          v142 = v182;
          v141 = v183;
          if (v5 >= v140 >> 1)
          {
            v144 = sub_21E4434DC((v140 > 1), v5 + 1, 1, v94);
            v142 = v182;
            v141 = v183;
            v94 = v144;
            v90 = v172;
          }

          v6 = v109 + 1;
          *(v94 + 2) = v5 + 1;
          v143 = &v94[16 * v5];
          v92 = (v141 + 16);
          *(v143 + 4) = v177;
          *(v143 + 5) = v176;
          v93 = (v142 + 16);
          v91 = v111;
          if (v173 == v6)
          {
            goto LABEL_157;
          }
        }
      }

LABEL_154:

      return v195;
    }

LABEL_20:
    v16 = v182;
    if (v14 >= *(v20 + 16))
    {
      goto LABEL_173;
    }

    v29 = *(v20 + 8 * v14 + 32);

    v30 = v177;
    if ((v177 & 0x8000000000000000) != 0)
    {
      goto LABEL_174;
    }

    if (v177 >= *(v29 + 16))
    {
      goto LABEL_175;
    }

    v31 = *(v29 + 8 * v177 + 32);

    v19 = v31 - 1;
    if ((v31 - 1) >= 3)
    {
      v194 = v183;
      v195 = v16;
      if (*(v184 + 2) || *(v178 + 2))
      {
        sub_21E453050();
        sub_21E453050();
        v189 = v193;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC53D0);
        sub_21E45463C();
        v71 = sub_21E4DCED8();
        v73 = v72;

        v189 = v71;
        v190 = v73;
        v74 = v180;
        sub_21E4DB408();
        sub_21E42C090();
        v5 = sub_21E4DD328();
        v6 = v75;
        v19 = *v179;
        (*v179)(v74, v181);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_95;
        }

        goto LABEL_178;
      }

      goto LABEL_102;
    }

    if (v185)
    {
      sub_21E4DCFF8();
      v32 = sub_21E4DD058();
      v34 = v33;
      if (v30)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v32 = 0;
      v34 = 0xE000000000000000;
      if (v30)
      {
LABEL_26:
        sub_21E4DCFF8();
        v35 = sub_21E4DD058();
        v5 = v36;
        goto LABEL_29;
      }
    }

    v35 = 0;
    v5 = 0xE000000000000000;
LABEL_29:
    v37 = v32 == 32 && v34 == 0xE100000000000000;
    v38 = v37;
    if (v37 || (sub_21E4DD518()) && (v35 == 32 && v5 == 0xE100000000000000 || (sub_21E4DD518()))
    {
      v188 = v19;

      if (!*(v184 + 2) && !*(v178 + 2))
      {
        v13 = MEMORY[0x277D84F90];
        v17 = v183;
LABEL_73:
        v14 = v185;
        LOBYTE(v19) = v188;
        goto LABEL_74;
      }

LABEL_64:
      sub_21E453050();
      sub_21E453050();
      v189 = v193;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC53D0);
      sub_21E45463C();
      v43 = sub_21E4DCED8();
      v45 = v44;

      v189 = v43;
      v190 = v45;
      v46 = v180;
      sub_21E4DB408();
      sub_21E42C090();
      v47 = sub_21E4DD328();
      v6 = v48;
      v49 = *v179;
      (*v179)(v46, v181);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_21E4434DC(0, *(v16 + 2) + 1, 1, v16);
      }

      v51 = *(v16 + 2);
      v50 = *(v16 + 3);
      if (v51 >= v50 >> 1)
      {
        v16 = sub_21E4434DC((v50 > 1), v51 + 1, 1, v16);
      }

      *(v16 + 2) = v51 + 1;
      v52 = &v16[16 * v51];
      *(v52 + 4) = v47;
      *(v52 + 5) = v6;
      v189 = v192;

      v53 = sub_21E4DCED8();
      v55 = v54;

      v189 = v53;
      v190 = v55;
      v56 = v180;
      sub_21E4DB408();
      v5 = sub_21E4DD328();
      v58 = v57;
      v49(v56, v181);

      v17 = v183;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_21E4434DC(0, *(v17 + 2) + 1, 1, v17);
      }

      v13 = MEMORY[0x277D84F90];
      v60 = *(v17 + 2);
      v59 = *(v17 + 3);
      if (v60 >= v59 >> 1)
      {
        v17 = sub_21E4434DC((v59 > 1), v60 + 1, 1, v17);
      }

      *(v17 + 2) = v60 + 1;
      v61 = &v17[16 * v60];
      *(v61 + 4) = v5;
      *(v61 + 5) = v58;

      v192 = v13;
      v193 = v13;
      v178 = v13;
      v184 = v13;
      goto LABEL_73;
    }

    if (v35 == 32 && v5 == 0xE100000000000000 || (sub_21E4DD518()) && ((v39 = sub_21E4DCFE8(), v185) ? (v40 = v185 == v39) : (v40 = 1), !v40 ? (v41 = 0) : (v41 = 1), (v41 & v19) == 1) || ((v6 = 1u >> (v19 & 7), (v38) || (sub_21E4DD518()) && (v30 != sub_21E4DCFE8() ? (v42 = v30 == 0) : (v42 = 1), v42 && v6))
    {

      if (*(v184 + 2) || *(v178 + 2))
      {
        v188 = v19;
        goto LABEL_64;
      }

      v17 = v183;
      v14 = v185;
    }

    else
    {
      if (v19)
      {

        v32 = 0;
        v34 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v184 = sub_21E4434DC(0, *(v184 + 2) + 1, 1, v184);
      }

      v63 = *(v184 + 2);
      v62 = *(v184 + 3);
      if (v63 >= v62 >> 1)
      {
        v184 = sub_21E4434DC((v62 > 1), v63 + 1, 1, v184);
      }

      v64 = v184;
      *(v184 + 2) = v63 + 1;
      v65 = &v64[16 * v63];
      *(v65 + 4) = v32;
      *(v65 + 5) = v34;
      v193 = v64;
      if (v6)
      {

        v35 = 0;
        v5 = 0xE000000000000000;
      }

      v17 = v183;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v178 = sub_21E4434DC(0, *(v178 + 2) + 1, 1, v178);
      }

      v67 = *(v178 + 2);
      v66 = *(v178 + 3);
      v14 = v185;
      if (v67 >= v66 >> 1)
      {
        v70 = sub_21E4434DC((v66 > 1), v67 + 1, 1, v178);
        v14 = v185;
        v178 = v70;
      }

      v68 = v178;
      *(v178 + 2) = v67 + 1;
      v69 = &v68[16 * v67];
      *(v69 + 4) = v35;
      *(v69 + 5) = v5;
      v192 = v68;
    }

LABEL_74:
    if (v19)
    {
      if (v19 != 1)
      {
        --v14;
      }

      v15 = v171;
      goto LABEL_3;
    }

    --v14;
  }

  v189 = v13;

  v5 = &v189;
  sub_21E4559C8(0, v19, 0);
  v16 = 0;
  v20 = v189;
  v187 = v18;
  v188 = (v18 + 32);
  v186 = v19;
  while (v16 < *(v18 + 2))
  {
    v6 = *(v188 + 8 * v16);
    v21 = *(v6 + 16);
    if (v21)
    {
      v191 = v13;

      v5 = &v191;
      sub_21E4559E8(0, v21, 0);
      v22 = v191;
      v23 = *(v191 + 2);
      v24 = 32;
      do
      {
        v25 = *(v6 + v24);
        v191 = v22;
        v26 = *(v22 + 3);
        if (v23 >= v26 >> 1)
        {
          v5 = &v191;
          sub_21E4559E8((v26 > 1), v23 + 1, 1);
          v22 = v191;
        }

        *(v22 + 2) = v23 + 1;
        *&v22[8 * v23 + 32] = v25;
        ++v24;
        ++v23;
        --v21;
      }

      while (v21);

      v13 = MEMORY[0x277D84F90];
      v19 = v186;
      v18 = v187;
    }

    else
    {
      v22 = v13;
    }

    v189 = v20;
    v28 = *(v20 + 16);
    v27 = *(v20 + 24);
    if (v28 >= v27 >> 1)
    {
      v5 = &v189;
      sub_21E4559C8((v27 > 1), v28 + 1, 1);
      v20 = v189;
    }

    ++v16;
    *(v20 + 16) = v28 + 1;
    *(v20 + 8 * v28 + 32) = v22;
    if (v16 == v19)
    {

      v14 = v185;
      if ((v185 & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_172;
    }
  }

  __break(1u);
LABEL_156:
  v185 = 0xE000000000000000;
  v96 = v13;
  v95 = v13;
  v94 = v13;
LABEL_157:

  v97 = v185;
LABEL_159:

  v192 = v94;
  v193 = v95;
  v194 = v96;
  v195 = v13;
  if (!*(v95 + 2) && !*(v94 + 2))
  {

    goto LABEL_154;
  }

  v187 = v94;
  v188 = v97;
  v178 = v96;
  v189 = v95;

  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC53D0);
  sub_21E45463C();
  v186 = v145;
  v146 = sub_21E4DCED8();
  v148 = v147;
  v175 = v95;

  v189 = v146;
  v190 = v148;
  v149 = v180;
  sub_21E4DB408();
  sub_21E42C090();
  v150 = sub_21E4DD328();
  v152 = v151;
  v153 = *v179;
  (*v179)(v149, v181);

  v154 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v154 = sub_21E4434DC(0, *(v13 + 2) + 1, 1, v13);
  }

  v156 = *(v154 + 2);
  v155 = *(v154 + 3);
  if (v156 >= v155 >> 1)
  {
    v154 = sub_21E4434DC((v155 > 1), v156 + 1, 1, v154);
  }

  *(v154 + 2) = v156 + 1;
  v157 = &v154[16 * v156];
  *(v157 + 4) = v150;
  *(v157 + 5) = v152;
  v195 = v154;
  v189 = v187;

  v158 = sub_21E4DCED8();
  v160 = v159;

  v189 = v158;
  v190 = v160;
  v161 = v180;
  sub_21E4DB408();
  v162 = sub_21E4DD328();
  v164 = v163;
  v153(v161, v181);

  v165 = v178;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v165 = sub_21E4434DC(0, *(v165 + 2) + 1, 1, v165);
  }

  v167 = *(v165 + 2);
  v166 = *(v165 + 3);
  if (v167 >= v166 >> 1)
  {
    v165 = sub_21E4434DC((v166 > 1), v167 + 1, 1, v165);
  }

  *(v165 + 2) = v167 + 1;
  v168 = &v165[16 * v167];
  *(v168 + 4) = v162;
  *(v168 + 5) = v164;

  v194 = v165;
  return v195;
}

uint64_t sub_21E4545D0()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_21E45463C()
{
  result = qword_280C141E0;
  if (!qword_280C141E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC53D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C141E0);
  }

  return result;
}

unint64_t sub_21E4546A0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_21E454738(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_21E4547AC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_21E454738(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_21E4548C0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21E4547AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_21E4DD3F8();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_21E4548C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21E4DD038();
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
    v5 = MEMORY[0x223D5ACD0](15, a1 >> 16);
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

uint64_t sub_21E45493C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v5 = sub_21E4DD0C8();
    v6 = v5;
    *(v5 + 16) = a2;
    *(v5 + 32) = v4;
    v7 = a2 - 1;
    if (v7)
    {
      v8 = (v5 + 40);
      do
      {
        *v8++ = v4;

        --v7;
      }

      while (v7);
    }

    return v6;
  }

  return result;
}

uint64_t sub_21E4549D0(uint64_t a1, size_t a2)
{
  v2[2] = sub_21E43CC24(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC59E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E4E57E0;
  v6 = sub_21E452694(0x20uLL, 0xE100000000000000);
  v7 = v6;
  if ((v6 & 0x100000000) != 0)
  {
    v7 = 0;
  }

  *(inited + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC59F0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_21E4E57E0;
  v9 = sub_21E452694(0x20uLL, 0xE100000000000000);
  v10 = v9;
  if ((v9 & 0x100000000) != 0)
  {
    v10 = 0;
  }

  *(v8 + 32) = v10;
  *(v8 + 40) = 10;
  v11 = sub_21E43CD2C(v8);
  swift_setDeallocating();
  *(inited + 40) = v11;
  v12 = sub_21E43CC24(inited);
  swift_setDeallocating();
  sub_21E4550FC(inited + 32);
  v2[2] = v12;

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (a2)
  {
    v14 = sub_21E4DD0C8();
    *(v14 + 16) = a2;
    bzero((v14 + 32), 8 * a2);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = sub_21E45493C(v14, a1, &qword_27CEC5390);

  v2[3] = v15;
  if (a2)
  {
    v16 = sub_21E4DD0C8();
    *(v16 + 16) = a2;
    bzero((v16 + 32), a2);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = sub_21E45493C(v16, a1, &qword_27CEC53A8);

  v2[4] = v17;
  v18 = v2 + 4;
  v54 = a1 - 1;
  if (a1 < 1)
  {
    goto LABEL_80;
  }

  v53 = a2;
  if (a1 != 1)
  {
    v35 = 0;
    while (1)
    {
      v36 = v2[3];
      if (v35 >= *(v36 + 16))
      {
        break;
      }

      v37 = *(v36 + 8 * v35 + 32);
      if (!*(v37 + 16))
      {
        goto LABEL_67;
      }

      v38 = v35 + 1;
      v39 = *(v37 + 32);
      sub_21E4DCFF8();
      v40 = sub_21E4DD058();
      v42 = sub_21E452694(v40, v41);

      v43 = HIDWORD(v42) & 1;
      if (!v42)
      {
        LODWORD(v43) = 1;
      }

      v44 = v43 == 0;
      v45 = -10;
      if (!v44)
      {
        v45 = 0;
      }

      v29 = __OFADD__(v39, v45);
      v46 = v39 + v45;
      if (v29)
      {
        goto LABEL_68;
      }

      v47 = v2[3];
      result = swift_isUniquelyReferenced_nonNull_native();
      v2[3] = v47;
      if ((result & 1) == 0)
      {
        result = sub_21E4AA9DC(v47);
        v47 = result;
        v2[3] = result;
      }

      if (v38 >= v47[2])
      {
        goto LABEL_69;
      }

      v48 = &v47[v35];
      v49 = v48[5];
      result = swift_isUniquelyReferenced_nonNull_native();
      v48[5] = v49;
      if (result)
      {
        if (!*(v49 + 16))
        {
          goto LABEL_70;
        }
      }

      else
      {
        result = sub_21E4AA9C8(v49);
        v49 = result;
        v48[5] = result;
        if (!*(result + 16))
        {
          goto LABEL_70;
        }
      }

      *(v49 + 32) = v46;
      v2[3] = v47;
      swift_beginAccess();
      v50 = v2[4];
      result = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v50;
      if ((result & 1) == 0)
      {
        result = sub_21E4AA9B4(v50);
        v50 = result;
        *v18 = result;
      }

      if (v38 >= v50[2])
      {
        goto LABEL_71;
      }

      v51 = &v50[v35];
      v52 = v51[5];
      result = swift_isUniquelyReferenced_nonNull_native();
      v51[5] = v52;
      if (result)
      {
        if (!*(v52 + 16))
        {
          goto LABEL_65;
        }
      }

      else
      {
        result = sub_21E4AA9A0(v52);
        v52 = result;
        v51[5] = result;
        if (!*(result + 16))
        {
LABEL_65:
          __break(1u);
          break;
        }
      }

      *(v52 + 32) = 1;
      *v18 = v50;
      result = swift_endAccess();
      if (v54 == ++v35)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_15:

  if (v53 == 1)
  {
    return v2;
  }

  if (v53)
  {
    v19 = 0;
    while (1)
    {
      v20 = v2[3];
      if (!*(v20 + 16))
      {
        break;
      }

      v21 = *(v20 + 32);
      if (v19 >= *(v21 + 16))
      {
        goto LABEL_73;
      }

      v22 = v19 + 1;
      v23 = *(v21 + 8 * v19 + 32);
      sub_21E4DCFF8();
      v24 = sub_21E4DD058();
      v26 = sub_21E452694(v24, v25);

      v27 = HIDWORD(v26) & 1;
      if (!v26)
      {
        LODWORD(v27) = 1;
      }

      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = -10;
      }

      v29 = __OFADD__(v23, v28);
      v30 = v23 + v28;
      if (v29)
      {
        goto LABEL_74;
      }

      v31 = v2[3];
      result = swift_isUniquelyReferenced_nonNull_native();
      v2[3] = v31;
      if (result)
      {
        if (!v31[2])
        {
          goto LABEL_75;
        }
      }

      else
      {
        result = sub_21E4AA9DC(v31);
        v31 = result;
        v2[3] = result;
        if (!*(result + 16))
        {
          goto LABEL_75;
        }
      }

      v32 = v31[4];
      result = swift_isUniquelyReferenced_nonNull_native();
      v31[4] = v32;
      if ((result & 1) == 0)
      {
        result = sub_21E4AA9C8(v32);
        v32 = result;
        v31[4] = result;
      }

      if (v22 >= *(v32 + 16))
      {
        goto LABEL_76;
      }

      *(v32 + 8 * v19 + 40) = v30;
      v2[3] = v31;
      swift_beginAccess();
      v33 = v2[4];
      result = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v33;
      if (result)
      {
        if (!v33[2])
        {
          goto LABEL_77;
        }
      }

      else
      {
        result = sub_21E4AA9B4(v33);
        v33 = result;
        *v18 = result;
        if (!*(result + 16))
        {
          goto LABEL_77;
        }
      }

      v34 = v33[4];
      result = swift_isUniquelyReferenced_nonNull_native();
      v33[4] = v34;
      if ((result & 1) == 0)
      {
        result = sub_21E4AA9A0(v34);
        v34 = result;
        v33[4] = result;
      }

      if (v22 >= *(v34 + 16))
      {
        goto LABEL_78;
      }

      *(v34 + v19 + 33) = 2;
      *v18 = v33;
      result = swift_endAccess();
      if (v53 - 1 == ++v19)
      {
        return v2;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_81:
  __break(1u);
  return result;
}

void sub_21E454F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x223D5ACB0]();
  MEMORY[0x223D5ACB0](a3, a4);
  v6 = sub_21E4DCFE8();
  v7 = sub_21E4DCFE8();
  type metadata accessor for SiriSharedUIAligner();
  swift_allocObject();

  sub_21E4549D0(v7, v6);

  if (v7 < 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 == 1)
  {
LABEL_3:

    return;
  }

  if (v6 >= 1)
  {
    v8 = 1;
    while (v8 != v7)
    {
      if (v6 != 1)
      {
        v9 = 1;
        do
        {
          v10 = v9 + 1;
          sub_21E452894(v8, v9, 0, 0xE100000000000000, 0);
          v9 = v10;
        }

        while (v6 != v10);
      }

      if (++v8 == v7)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_21E4550FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC59F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *SiriSharedUIGradientView.init(colors:locations:startPoint:endPoint:)(unint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v13 = OBJC_IVAR____TtC12SiriSharedUI24SiriSharedUIGradientView_gradientLayer;
  *&v6[v13] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v47.receiver = v6;
  v47.super_class = type metadata accessor for SiriSharedUIGradientView();
  v14 = objc_msgSendSuper2(&v47, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = OBJC_IVAR____TtC12SiriSharedUI24SiriSharedUIGradientView_gradientLayer;
  v16 = *&v14[OBJC_IVAR____TtC12SiriSharedUI24SiriSharedUIGradientView_gradientLayer];
  v43 = v14;
  v17 = &selRef_displayLinkWithTarget_selector_;
  [v16 setAllowsHitTesting_];
  v18 = *&v14[v15];
  v19 = sub_21E4DCF68();
  [v18 setName_];

  [*&v14[v15] setType_];
  v20 = *&v14[v15];
  if (!(a1 >> 62))
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_13:
    v32 = v20;

LABEL_14:
    v33 = sub_21E4DD078();

    [v20 setColors_];

    v34 = *&v14[v15];
    sub_21E43F008(0, &qword_280C14070);
    v35 = v34;
    v36 = sub_21E4DD078();

    [v35 setLocations_];

    [*&v14[v15] setStartPoint_];
    [*&v14[v15] setEndPoint_];
    v37 = v43;
    v38 = [v37 layer];
    [v38 addSublayer_];

    v39 = [v37 layer];
    [v39 v17[299]];

    v40 = *&v14[v15];
    [v37 bounds];
    [v40 setFrame_];

    return v37;
  }

  v21 = sub_21E4DD488();
  if (!v21)
  {
    goto LABEL_13;
  }

LABEL_3:
  v46 = MEMORY[0x277D84F90];
  v22 = v20;
  result = sub_21E455A08(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v41 = v20;
    v42 = a2;
    v24 = 0;
    v25 = v46;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x223D5B080](v24, a1);
      }

      else
      {
        v26 = *(a1 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = [v26 CGColor];
      type metadata accessor for CGColor(0);
      v45 = v29;

      *&v44 = v28;
      v46 = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_21E455A08((v30 > 1), v31 + 1, 1);
        v25 = v46;
      }

      ++v24;
      *(v25 + 16) = v31 + 1;
      sub_21E43EAE8(&v44, (v25 + 32 * v31 + 32));
    }

    while (v21 != v24);

    v17 = &selRef_displayLinkWithTarget_selector_;
    v20 = v41;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id SiriSharedUIGradientView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SiriSharedUIGradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_21E4559A8(char *a1, int64_t a2, char a3)
{
  result = sub_21E455B74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21E4559C8(void *a1, int64_t a2, char a3)
{
  result = sub_21E455C78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E4559E8(char *a1, int64_t a2, char a3)
{
  result = sub_21E455DAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E455A08(char *a1, int64_t a2, char a3)
{
  result = sub_21E455EB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21E455A28(size_t a1, int64_t a2, char a3)
{
  result = sub_21E455FC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E455A48(char *a1, int64_t a2, char a3)
{
  result = sub_21E455A68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E455A68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5368);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E455B74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5A08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_21E455C78(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5390);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E455DAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21E455EB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21E455FC0(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5A18);
  v10 = *(type metadata accessor for IndentifiableCardSection(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for IndentifiableCardSection(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *_s12SiriSharedUI0aB14UIGradientViewC24verticalTwoColorGradient3top6bottomACSo7UIColorC_AHtFZ_0(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E4E7410;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21E4E7410;
  sub_21E43F008(0, &qword_280C14070);
  v6 = a1;
  v7 = a2;
  *(v5 + 32) = sub_21E4DD2D8();
  *(v5 + 40) = sub_21E4DD2D8();
  v8 = objc_allocWithZone(type metadata accessor for SiriSharedUIGradientView());
  return SiriSharedUIGradientView.init(colors:locations:startPoint:endPoint:)(inited, v5, 0.5, 0.0, 0.5, 1.0);
}

char *sub_21E45628C(SEL *a1, SEL *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 *a1];
  v6 = [v4 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E4E7410;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21E4E7410;
  sub_21E43F008(0, &qword_280C14070);
  v9 = v5;
  v10 = v6;
  *(v8 + 32) = sub_21E4DD2D8();
  *(v8 + 40) = sub_21E4DD2D8();
  v11 = objc_allocWithZone(type metadata accessor for SiriSharedUIGradientView());
  v12 = SiriSharedUIGradientView.init(colors:locations:startPoint:endPoint:)(inited, v8, 0.5, 0.0, 0.5, 1.0);

  return v12;
}

uint64_t sub_21E45644C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  return v1;
}

uint64_t sub_21E4564B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  return v1;
}

uint64_t sub_21E45657C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  return v1;
}

uint64_t sub_21E456604()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  return v1;
}

uint64_t sub_21E456670()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5AD0);
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  v51 = &v42 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6740);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5AC8);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5AC0);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  v10 = MEMORY[0x28223BE20](v42);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5AB8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__conversationStarterSuggestions;
  v54 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5AA0);
  sub_21E4DBDC8();
  v20 = *(v16 + 32);
  v20(v0 + v19, v18, v15);
  v21 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__conversationContinuerSuggestions;
  v54 = MEMORY[0x277D84F90];
  sub_21E4DBDC8();
  v20(v0 + v21, v18, v15);
  v22 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__requestId;
  v23 = sub_21E4DB698();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  sub_21E45BA04(v14, v12);
  v24 = v43;
  sub_21E4DBDC8();
  sub_21E45BA74(v14);
  (*(v44 + 32))(v0 + v22, v24, v45);
  v25 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__conversationStarterHesitationCountdown;
  type metadata accessor for CountdownTimer();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[4] = 0;
  swift_unknownObjectWeakInit();
  v26[5] = 0x4000000000000000;
  v54 = v26;
  v27 = v46;
  sub_21E4DBDC8();
  (*(v47 + 32))(v0 + v25, v27, v48);
  v28 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__speechTwoShotPromptDetected;
  LOBYTE(v54) = 0;
  sub_21E4DBDC8();
  v29 = v50;
  v30 = *(v49 + 32);
  v30(v0 + v28, v5, v50);
  v31 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__showSuggestions;
  LOBYTE(v54) = 0;
  sub_21E4DBDC8();
  v30(v0 + v31, v5, v29);
  v32 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__dismissSuggestionsRendering;
  LOBYTE(v54) = 0;
  sub_21E4DBDC8();
  v30(v0 + v32, v5, v29);
  v33 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__isKeyboardShowing;
  LOBYTE(v54) = 0;
  sub_21E4DBDC8();
  v30(v0 + v33, v5, v29);
  v34 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__suggestionsFilterText;
  v54 = 0;
  v55 = 0xE000000000000000;
  v35 = v51;
  sub_21E4DBDC8();
  (*(v52 + 32))(v0 + v34, v35, v53);
  v36 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__isVoiceTriggerActivation;
  LOBYTE(v54) = 0;
  sub_21E4DBDC8();
  v30(v0 + v36, v5, v29);
  v37 = (v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_suggestionTapHandler);
  *v37 = 0;
  v37[1] = 0;
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_conversationStarterHesitationCountdownCompleted) = 0;
  v38 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_suggestionsProvider;
  *(v0 + v38) = [objc_allocWithZone(type metadata accessor for SiriSharedUISuggestionsProvider()) init];
  v39 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__center;
  *(v0 + v39) = [objc_opt_self() defaultCenter];
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[4] = 0;
  swift_unknownObjectWeakInit();
  v40[5] = 0x4000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v40;

  sub_21E4DBDF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  v54[4] = &off_282F81CC8;
  swift_unknownObjectWeakAssign();

  [*(v0 + v39) addObserver:v0 selector:sel_keyBoardWillHideWithNotification_ name:*MEMORY[0x277D76C50] object:0];
  [*(v0 + v39) addObserver:v0 selector:sel_keyBoardWillShowWithNotification_ name:*MEMORY[0x277D76C60] object:0];
  return v0;
}

uint64_t sub_21E456E28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if ((v2 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21E4DBDE8();

    if ((v1 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_21E4DBDF8();
    }
  }

  return result;
}

uint64_t sub_21E456F30()
{
  v1 = v0;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD000000000000039, 0x800000021E4ECED0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v28 >> 62)
  {
    v2 = sub_21E4DD488();
  }

  else
  {
    v2 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v2;
  v3 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v3);

  MEMORY[0x223D5ACB0](0xD000000000000017, 0x800000021E4ECF10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v28)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x223D5ACB0](v4, v5);

  MEMORY[0x223D5ACB0](0xD00000000000001FLL, 0x800000021E4ECF30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v28)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v28)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x223D5ACB0](v6, v7);

  MEMORY[0x223D5ACB0](0xD000000000000013, 0x800000021E4ECF50);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v28)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v28)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x223D5ACB0](v8, v9);

  MEMORY[0x223D5ACB0](0xD000000000000020, 0x800000021E4ECF70);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v28)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v28)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x223D5ACB0](v10, v11);

  MEMORY[0x223D5ACB0](0xD00000000000001CLL, 0x800000021E4ECFA0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v28)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v28)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x223D5ACB0](v12, v13);

  v15 = v30;
  v14 = v31;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v16 = sub_21E4DBCC8();
  __swift_project_value_buffer(v16, qword_280C14558);
  v17 = sub_21E4DD1F8();
  v30 = 0xD000000000000030;
  v31 = 0x800000021E4ECFC0;
  v18 = sub_21E45C20C(0);
  if (v19)
  {
    v28 = 32;
    v29 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v18);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if ((v14 & 0xF00000000000000) != 0)
  {
    v28 = 32;
    v29 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v15, v14);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v21 = v30;
  v20 = v31;
  v22 = sub_21E4DBCB8();
  if (os_log_type_enabled(v22, v17))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315138;
    v25 = sub_21E426648(v21, v20, &v28);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_21E3EB000, v22, v17, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x223D5BF10](v24, -1, -1);
    MEMORY[0x223D5BF10](v23, -1, -1);
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_conversationStarterHesitationCountdownCompleted) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v30 >> 62)
  {
    v26 = sub_21E4DD488();
  }

  else
  {
    v26 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26 >= 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21E4DBDE8();

    if ((v30 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21E4DBDE8();

      if ((v30 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21E4DBDE8();

        if ((v30 & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_21E4DBDE8();

          if ((v30 & 1) == 0)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v30) = 1;

            return sub_21E4DBDF8();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21E4576EC()
{
  v1 = v0;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD000000000000035, 0x800000021E4ED000);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v26 >> 62)
  {
    v2 = sub_21E4DD488();
  }

  else
  {
    v2 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v2;
  v3 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v3);

  MEMORY[0x223D5ACB0](0xD000000000000017, 0x800000021E4ECF10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v26)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x223D5ACB0](v4, v5);

  MEMORY[0x223D5ACB0](0xD00000000000001FLL, 0x800000021E4ECF30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v26)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v26)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x223D5ACB0](v6, v7);

  MEMORY[0x223D5ACB0](0xD000000000000013, 0x800000021E4ECF50);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v26)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v26)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x223D5ACB0](v8, v9);

  MEMORY[0x223D5ACB0](0xD000000000000032, 0x800000021E4ED040);
  if (*(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_conversationStarterHesitationCountdownCompleted))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_conversationStarterHesitationCountdownCompleted))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x223D5ACB0](v10, v11);

  v13 = v28;
  v12 = v29;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v14 = sub_21E4DBCC8();
  __swift_project_value_buffer(v14, qword_280C14558);
  v15 = sub_21E4DD1F8();
  v28 = 0xD00000000000002ELL;
  v29 = 0x800000021E4ED080;
  v16 = sub_21E45C20C(0);
  if (v17)
  {
    v26 = 32;
    v27 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v16);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if ((v12 & 0xF00000000000000) != 0)
  {
    v26 = 32;
    v27 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v13, v12);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v19 = v28;
  v18 = v29;
  v20 = sub_21E4DBCB8();
  if (os_log_type_enabled(v20, v15))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v21 = 136315138;
    v23 = sub_21E426648(v19, v18, &v26);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_21E3EB000, v20, v15, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x223D5BF10](v22, -1, -1);
    MEMORY[0x223D5BF10](v21, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v28) = 1;

  sub_21E4DBDF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v28 >> 62)
  {
    v24 = sub_21E4DD488();
  }

  else
  {
    v24 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 >= 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21E4DBDE8();

    if ((v28 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21E4DBDE8();

      if ((v28 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21E4DBDE8();

        if ((v28 & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v28) = 1;

          return sub_21E4DBDF8();
        }
      }
    }
  }

  return result;
}

uint64_t sub_21E457DD0(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v4 != v2)
  {
    MEMORY[0x28223BE20](result);
    sub_21E4DCB58();
    sub_21E4DBF78();
  }

  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_21E4DBDF8();
  }

  return result;
}

uint64_t sub_21E457F10()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E4DBDF8();
}

uint64_t sub_21E457F8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v17 >> 62)
  {
    v0 = sub_21E4DD488();
  }

  else
  {
    v0 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v0 < 1 || ((swift_getKeyPath(), swift_getKeyPath(), sub_21E4DBDE8(), , , v17 >> 62) ? (v1 = sub_21E4DD488()) : (v1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v1 < 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21E4DBDE8();

    if (v17 >> 62)
    {
      v12 = sub_21E4DD488();
    }

    else
    {
      v12 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12 >= 1)
    {
      return sub_21E4583C4();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21E4DBDE8();

    if (v17 >> 62)
    {
      v14 = sub_21E4DD488();
    }

    else
    {
      v14 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 >= 1)
    {
      return sub_21E4583D8();
    }
  }

  else
  {
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v2 = sub_21E4DBCC8();
    __swift_project_value_buffer(v2, qword_280C14558);
    v3 = sub_21E4DD218();
    v17 = 0xD00000000000001CLL;
    v18 = 0x800000021E4ECE40;
    v4 = sub_21E45C20C(0);
    if (v5)
    {
      v15 = 32;
      v16 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v4);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("getTopSuggestionsToDisplay()" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v15 = 32;
      v16 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000061, 0x800000021E4ECE60);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v7 = v17;
    v6 = v18;
    v8 = sub_21E4DBCB8();
    if (os_log_type_enabled(v8, v3))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_21E426648(v7, v6, &v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_21E3EB000, v8, v3, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x223D5BF10](v10, -1, -1);
      MEMORY[0x223D5BF10](v9, -1, -1);
    }

    else
    {
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21E4583EC()
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_21E4DBDE8();

  v1 = v23;
  v24 = MEMORY[0x277D84F90];
  if (v23 >> 62)
  {
LABEL_16:
    v2 = sub_21E4DD488();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v22 = v1 & 0xC000000000000001;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v22)
        {
          MEMORY[0x223D5B080](v3, v1);
          KeyPath = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v7 = v24;
            goto LABEL_18;
          }
        }

        else
        {
          if (v3 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          KeyPath = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        v5 = v1;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21E4DBDE8();

        v6 = sub_21E4DD048();

        if (v6)
        {
          sub_21E4DD408();
          sub_21E4DD438();
          sub_21E4DD448();
          sub_21E4DD418();
        }

        else
        {
        }

        v1 = v5;
        ++v3;
        if (KeyPath == v2)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_18:

  if (v7 < 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v7 >> 62) & 1;
  }

  if (v8 != 1)
  {
    v9 = *(v7 + 16);
    if (v9 >= 3)
    {
      v10 = 3;
    }

    else
    {
      v10 = *(v7 + 16);
    }

    if (v9 >= v10)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

  v20 = sub_21E4DD488();
  result = sub_21E4DD488();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v20 >= 3)
    {
      v21 = 3;
    }

    else
    {
      v21 = v20;
    }

    if (v20 >= 0)
    {
      v10 = v21;
    }

    else
    {
      v10 = 3;
    }

    if (sub_21E4DD488() >= v10)
    {
LABEL_26:
      if ((v7 & 0xC000000000000001) != 0 && v10)
      {
        type metadata accessor for SiriSharedUISuggestion();

        sub_21E4DD3C8();
        if (v10 != 1)
        {
          sub_21E4DD3C8();
          if (v10 != 2)
          {
            sub_21E4DD3C8();
          }
        }
      }

      else
      {
      }

      if (v8)
      {
        v11 = sub_21E4DD498();
        v8 = v12;
        KeyPath = v13;
        v10 = v14;

        v7 = v11;
        if (v10)
        {
LABEL_37:
          sub_21E4DD538();
          swift_unknownObjectRetain_n();
          v17 = swift_dynamicCastClass();
          if (!v17)
          {
            swift_unknownObjectRelease();
            v17 = MEMORY[0x277D84F90];
          }

          v18 = *(v17 + 16);

          if (!__OFSUB__(v10 >> 1, KeyPath))
          {
            if (v18 == (v10 >> 1) - KeyPath)
            {
              v16 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v16)
              {
                return v16;
              }

              v16 = MEMORY[0x277D84F90];
LABEL_43:
              swift_unknownObjectRelease();
              return v16;
            }

            goto LABEL_55;
          }

LABEL_54:
          __break(1u);
LABEL_55:
          swift_unknownObjectRelease_n();
        }
      }

      else
      {
        KeyPath = 0;
        v8 = v7 + 32;
        v10 = (2 * v10) | 1;
        if (v10)
        {
          goto LABEL_37;
        }
      }

      sub_21E45B918(v7, v8, KeyPath, v10, type metadata accessor for SiriSharedUISuggestion);
      v16 = v15;
      goto LABEL_43;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  __break(1u);
  return result;
}

uint64_t sub_21E4587DC(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v22 = a1;
  v3 = sub_21E4DCBF8();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E4DCC18();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E4DCC38();
  v24 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  sub_21E42E2C0();
  v16 = sub_21E4DD278();
  sub_21E4DCC28();
  sub_21E4DCC88();
  v23 = *(v10 + 8);
  v23(v13, v9);
  v17 = swift_allocObject();
  v18 = v22;
  v17[2] = v2;
  v17[3] = v18;
  v17[4] = v25;
  aBlock[4] = sub_21E45B6D4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E46C644;
  aBlock[3] = &block_descriptor_4;
  v19 = _Block_copy(aBlock);

  sub_21E4DCC08();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21E42E390();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
  sub_21E42E3E8();
  sub_21E4DD358();
  MEMORY[0x223D5AF00](v15, v8, v5, v19);
  _Block_release(v19);

  (*(v28 + 8))(v5, v3);
  (*(v26 + 8))(v8, v27);
  return (v23)(v15, v24);
}

uint64_t sub_21E458B68(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_suggestionTapHandler);
  if (v1)
  {

    v2 = sub_21E4DCF68();
    v1();

    sub_21E3F1EB0(v1);
  }

  sub_21E4DCB58();
  sub_21E4DBF78();
}

uint64_t sub_21E458C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 200) = a5;
  *(v6 + 96) = a4;
  *(v6 + 104) = a6;
  v7 = sub_21E4DCBF8();
  *(v6 + 112) = v7;
  *(v6 + 120) = *(v7 - 8);
  *(v6 + 128) = swift_task_alloc();
  v8 = sub_21E4DCC18();
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E458D94, 0, 0);
}

uint64_t sub_21E458D94()
{
  v1 = *(v0 + 160);
  v2 = *(*(v0 + 96) + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_suggestionsProvider);
  *(v0 + 168) = v2;
  v2;
  sub_21E4DB688();
  v3 = sub_21E4DB698();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_21E458EA0;
  v5 = *(v0 + 160);
  v6 = *(v0 + 104);
  v7 = *(v0 + 200);

  return sub_21E431D90(v7, v6, 0, v5);
}

uint64_t sub_21E458EA0(uint64_t a1)
{
  v4 = *v2;
  v4[23] = v1;

  v5 = v4[21];
  v6 = v4[20];
  if (v1)
  {
    sub_21E45BA74(v6);

    v7 = sub_21E45922C;
  }

  else
  {
    v4[24] = a1;
    sub_21E45BA74(v6);

    v7 = sub_21E459004;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21E459004()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[16];
  v12 = v0[18];
  v13 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  sub_21E42E2C0();
  v11 = sub_21E4DD278();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  v0[6] = sub_21E45BB44;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21E46C644;
  v0[5] = &block_descriptor_141;
  v8 = _Block_copy(v0 + 2);

  sub_21E4DCC08();
  v0[11] = MEMORY[0x277D84F90];
  sub_21E42E390();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
  sub_21E42E3E8();
  sub_21E4DD358();
  MEMORY[0x223D5AF30](0, v2, v3, v8);
  _Block_release(v8);

  (*(v5 + 8))(v3, v4);
  (*(v12 + 8))(v2, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21E45922C()
{
  v19 = v0;
  v1 = v0[23];
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_21E4DD3A8();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x223D5ACB0](0xD00000000000004DLL, 0x800000021E4ED1B0);
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6720);
  sub_21E4DD458();
  v2 = v0[8];
  v3 = v0[9];
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD218();
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2, v3);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = sub_21E4DBCB8();
  v10 = os_log_type_enabled(v9, v5);
  v11 = v0[23];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    v14 = sub_21E426648(0xD00000000000004DLL, 0x800000021E4ED160, &v17);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_21E3EB000, v9, v5, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x223D5BF10](v13, -1, -1);
    MEMORY[0x223D5BF10](v12, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_21E459520(uint64_t a1, unint64_t a2)
{
  v3 = sub_21E4DB428();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v53 = result;
  if (a2 >> 62)
  {
    result = sub_21E4DD488();
    v8 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_4:
      if (v8 < 1)
      {
        __break(1u);
        return result;
      }

      v52 = v3;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = 0;
        v10 = (v4 + 8);
        v51 = a2;
        do
        {
          v11 = MEMORY[0x223D5B080](v9, a2);
          v12 = *(v11 + 24);
          v56 = *(v11 + 16);
          v57 = v12;

          sub_21E4DB418();
          sub_21E42C090();
          v13 = sub_21E4DD328();
          v15 = v14;
          (*v10)(v6, v3);

          if (v13)
          {
            v16 = 0;
          }

          else
          {
            v16 = v15 == 0xE000000000000000;
          }

          if (v16)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            v17 = sub_21E4DD518();

            if (v17)
            {
              swift_unknownObjectRelease();
            }

            else
            {
              swift_getKeyPath();
              swift_getKeyPath();
              swift_unknownObjectRetain();
              v18 = sub_21E4DBDD8();
              v20 = v19;
              MEMORY[0x223D5AD10]();
              if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21E4DD0A8();
              }

              sub_21E4DD0D8();
              v18(&v56, 0);
              swift_unknownObjectRelease();

              a2 = v51;
              v3 = v52;
            }
          }

          ++v9;
        }

        while (v8 != v9);
      }

      else
      {
        v21 = a2 + 32;
        v22 = (v4 + 8);
        v23 = MEMORY[0x277D837D0];
        do
        {
          v24 = *(*v21 + 24);
          v56 = *(*v21 + 16);
          v57 = v24;

          sub_21E4DB418();
          sub_21E42C090();
          v25 = sub_21E4DD328();
          v27 = v26;
          (*v22)(v6, v3);

          if (v25)
          {
            v28 = 0;
          }

          else
          {
            v28 = v27 == 0xE000000000000000;
          }

          if (v28)
          {
          }

          else
          {
            v29 = sub_21E4DD518();

            if (v29)
            {
            }

            else
            {
              v30 = v23;
              swift_getKeyPath();
              swift_getKeyPath();

              v31 = sub_21E4DBDD8();
              v33 = v32;
              MEMORY[0x223D5AD10]();
              if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v51 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_21E4DD0A8();
              }

              sub_21E4DD0D8();
              v31(&v56, 0);

              v3 = v52;
              v23 = v30;
            }
          }

          v21 += 8;
          --v8;
        }

        while (v8);
      }
    }
  }

  if (*(v53 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_conversationStarterHesitationCountdownCompleted))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21E4DBDE8();

    v34 = v56 ^ 1;
  }

  else
  {
    v34 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if ((v56 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_21E4DBDE8(), , , v56 == 1))
  {
    v34 = 1;
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  sub_21E4DD3A8();

  v56 = 0xD00000000000002FLL;
  v57 = 0x800000021E4ED200;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v54)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v54)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x223D5ACB0](v35, v36);

  v38 = v56;
  v37 = v57;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v39 = sub_21E4DBCC8();
  __swift_project_value_buffer(v39, qword_280C14558);
  v40 = sub_21E4DD1F8();
  v56 = 0xD00000000000004DLL;
  v57 = 0x800000021E4ED160;
  v41 = sub_21E45C20C(0);
  if (v42)
  {
    v54 = 32;
    v55 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v41);

    MEMORY[0x223D5ACB0](v54, v55);
  }

  v43 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v43 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {
    v54 = 32;
    v55 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v38, v37);
    MEMORY[0x223D5ACB0](v54, v55);
  }

  v45 = v56;
  v44 = v57;
  v46 = sub_21E4DBCB8();
  if (os_log_type_enabled(v46, v40))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v54 = v48;
    *v47 = 136315138;
    v49 = sub_21E426648(v45, v44, &v54);

    *(v47 + 4) = v49;
    _os_log_impl(&dword_21E3EB000, v46, v40, "%s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x223D5BF10](v48, -1, -1);
    MEMORY[0x223D5BF10](v47, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v56 >> 62)
  {
    v50 = sub_21E4DD488();
  }

  else
  {
    v50 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v50 < 1)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v56 == 1 || (v34 & 1) == 0)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v56) = 1;
  return sub_21E4DBDF8();
}

uint64_t sub_21E459E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 248) = a8;
  *(v8 + 120) = a6;
  *(v8 + 128) = a7;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  v9 = sub_21E4DCBF8();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  v10 = sub_21E4DCC18();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  v11 = sub_21E4DCC38();
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E459FC4, 0, 0);
}

uint64_t sub_21E459FC4()
{
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_suggestionsProvider);
  *(v0 + 216) = v1;
  v1;
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_21E45A088;
  v3 = *(v0 + 248);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);

  return sub_21E435BB4(v6, v4, v5, v3, 0);
}

uint64_t sub_21E45A088(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_21E45A4D8;
  }

  else
  {

    v4 = sub_21E45A1A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21E45A1A4()
{
  sub_21E42E2C0();
  v18 = sub_21E4DD278();
  sub_21E4DCC28();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v0[11] >> 62)
  {
    sub_21E4DD488();
  }

  v1 = v0[25];
  v11 = v0[29];
  v12 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v16 = v0[21];
  v17 = v0[20];
  v13 = v0[19];
  v5 = v0[17];
  v15 = v0[18];

  sub_21E4DCC88();
  v14 = *(v2 + 8);
  v14(v1, v3);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  v0[6] = sub_21E45BAFC;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21E46C644;
  v0[5] = &block_descriptor_133;
  v8 = _Block_copy(v0 + 2);

  sub_21E4DCC08();
  v0[12] = MEMORY[0x277D84F90];
  sub_21E42E390();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
  sub_21E42E3E8();
  sub_21E4DD358();
  MEMORY[0x223D5AF00](v12, v4, v13, v8);
  _Block_release(v8);

  (*(v15 + 8))(v13, v5);
  (*(v16 + 8))(v4, v17);
  v14(v12, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21E45A4D8()
{
  v19 = v0;
  v1 = *(v0 + 240);

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_21E4DD3A8();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  MEMORY[0x223D5ACB0](0xD00000000000004FLL, 0x800000021E4ED110);
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6720);
  sub_21E4DD458();
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD218();
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2, v3);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = sub_21E4DBCB8();
  v10 = os_log_type_enabled(v9, v5);
  v11 = *(v0 + 240);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    v14 = sub_21E426648(0xD000000000000054, 0x800000021E4ED0B0, &v17);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_21E3EB000, v9, v5, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x223D5BF10](v13, -1, -1);
    MEMORY[0x223D5BF10](v12, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21E45A7E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_21E4DB428();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v37 = result;
  if (a2 >> 62)
  {
    result = sub_21E4DD488();
    v8 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_4:
      if (v8 < 1)
      {
        __break(1u);
        return result;
      }

      v36 = v3;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = 0;
        v10 = (v4 + 8);
        v35 = a2;
        do
        {
          v11 = MEMORY[0x223D5B080](v9, a2);
          v12 = *(v11 + 24);
          v38 = *(v11 + 16);
          v39 = v12;

          sub_21E4DB418();
          sub_21E42C090();
          v13 = sub_21E4DD328();
          v15 = v14;
          (*v10)(v6, v3);

          if (v13)
          {
            v16 = 0;
          }

          else
          {
            v16 = v15 == 0xE000000000000000;
          }

          if (v16)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            v17 = sub_21E4DD518();

            if (v17)
            {
              swift_unknownObjectRelease();
            }

            else
            {
              swift_getKeyPath();
              swift_getKeyPath();
              swift_unknownObjectRetain();
              v18 = sub_21E4DBDD8();
              v20 = v19;
              MEMORY[0x223D5AD10]();
              if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21E4DD0A8();
              }

              sub_21E4DD0D8();
              v18(&v38, 0);
              swift_unknownObjectRelease();

              a2 = v35;
              v3 = v36;
            }
          }

          ++v9;
        }

        while (v8 != v9);
      }

      else
      {
        v21 = a2 + 32;
        v22 = (v4 + 8);
        v23 = MEMORY[0x277D837D0];
        do
        {
          v24 = *(*v21 + 24);
          v38 = *(*v21 + 16);
          v39 = v24;

          sub_21E4DB418();
          sub_21E42C090();
          v25 = sub_21E4DD328();
          v27 = v26;
          (*v22)(v6, v3);

          if (v25)
          {
            v28 = 0;
          }

          else
          {
            v28 = v27 == 0xE000000000000000;
          }

          if (v28)
          {
          }

          else
          {
            v29 = sub_21E4DD518();

            if (v29)
            {
            }

            else
            {
              v30 = v23;
              swift_getKeyPath();
              swift_getKeyPath();

              v31 = sub_21E4DBDD8();
              v33 = v32;
              MEMORY[0x223D5AD10]();
              if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v35 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_21E4DD0A8();
              }

              sub_21E4DD0D8();
              v31(&v38, 0);

              v3 = v36;
              v23 = v30;
            }
          }

          v21 += 8;
          --v8;
        }

        while (v8);
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v38 >> 62)
  {
    v34 = sub_21E4DD488();
  }

  else
  {
    v34 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v34 <= 0)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v38)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v38) = 1;
  return sub_21E4DBDF8();
}

uint64_t sub_21E45AD60()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E4DBDF8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E4DBDF8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E4DBDF8();
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_conversationStarterHesitationCountdownCompleted) = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E4DBDF8();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E4DBDF8();
}

uint64_t sub_21E45AEE0()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__center;
  [*(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__center) removeObserver_];
  v2 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__conversationStarterSuggestions;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5AB8);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__conversationContinuerSuggestions, v3);
  v5 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__requestId;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5AC0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__conversationStarterHesitationCountdown;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5AC8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__speechTwoShotPromptDetected;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6740);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v11(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__showSuggestions, v10);
  v11(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__dismissSuggestionsRendering, v10);
  v11(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__isKeyboardShowing, v10);
  v12 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__suggestionsFilterText;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5AD0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v11(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel__isVoiceTriggerActivation, v10);
  sub_21E3F1EB0(*(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_suggestionTapHandler));

  return v0;
}

uint64_t sub_21E45B168()
{
  sub_21E45AEE0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SiriSharedUISuggestionsDataModel()
{
  result = qword_27CEC5A88;
  if (!qword_27CEC5A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E45B224(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_21E4DB498();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21E4DB488();
  swift_getKeyPath();
  swift_getKeyPath();
  v10[15] = a4;

  sub_21E4DBDF8();
  return (*(v6 + 8))(v8, v5);
}

void sub_21E45B348()
{
  sub_21E45B53C(319, &qword_27CEC5A98, &qword_27CEC5AA0);
  if (v0 <= 0x3F)
  {
    sub_21E45B53C(319, &qword_27CEC5AA8, &qword_27CEC5278);
    if (v1 <= 0x3F)
    {
      sub_21E45B590();
      if (v2 <= 0x3F)
      {
        sub_21E45B5E8(319, &qword_280C14518);
        if (v3 <= 0x3F)
        {
          sub_21E45B5E8(319, &qword_280C14520);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_21E45B53C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_21E4DBE08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21E45B590()
{
  if (!qword_27CEC5AB0)
  {
    type metadata accessor for CountdownTimer();
    v0 = sub_21E4DBE08();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEC5AB0);
    }
  }
}

void sub_21E45B5E8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21E4DBE08();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_21E45B634@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriSharedUISuggestionsDataModel();
  result = sub_21E4DBD78();
  *a1 = result;
  return result;
}

uint64_t sub_21E45B674@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriSharedUISuggestionsDataModel();
  result = sub_21E4DD3B8();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E45B720@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  *a1 = v3;
  return result;
}

uint64_t sub_21E45B79C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E4DBDF8();
}

uint64_t sub_21E45B814@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  *a1 = v3;
  return result;
}

uint64_t sub_21E45B890()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E4DBDF8();
}

void sub_21E45B918(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_21E45BA04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E45BA74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_129Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E45BB5C()
{
  v0 = sub_21E4DBD18();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E4DBD48();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  __swift_allocate_value_buffer(v9, qword_280C168B0);
  __swift_project_value_buffer(v4, qword_280C168B0);
  sub_21E4DBD38();
  sub_21E4DBD08();
  v12 = *(v5 + 8);
  v12(v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D74DF0], v0);
  sub_21E4DBD28();
  (*(v1 + 8))(v3, v0);
  return (v12)(v11, v4);
}

void UIView.setGlassWithCornerRadius(_:)(double a1)
{
  v3 = sub_21E4DBD48();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C140A8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_280C168B0);
  (*(v4 + 16))(v6, v7, v3);
  v10[3] = sub_21E4DBD58();
  v10[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_21E4DBD68();
  sub_21E4DD298();
  v8 = [v1 layer];
  [v8 setCornerRadius_];
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_21E45BF7C(void *a1, double a2)
{
  v4 = sub_21E4DBD48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_280C140A8;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280C168B0);
  (*(v5 + 16))(v7, v10, v4);
  v13[3] = sub_21E4DBD58();
  v13[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_21E4DBD68();
  sub_21E4DD298();
  v11 = [v9 layer];
  [v11 setCornerRadius_];
}

void sub_21E45C134(void *a1)
{
  v1 = a1;
  sub_21E4DD298();
}

uint64_t sub_21E45C190()
{
  v0 = sub_21E4DBCC8();
  __swift_allocate_value_buffer(v0, qword_280C14558);
  result = __swift_project_value_buffer(v0, qword_280C14558);
  if (*MEMORY[0x277CEF098])
  {
    v2 = *MEMORY[0x277CEF098];
    return sub_21E4DBCD8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E45C20C(uint64_t a1)
{
  if (qword_280C14578 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_280C14580;
  if (!*(off_280C14580 + 2) || (v3 = sub_21E4B13D0(a1), (v4 & 1) == 0))
  {
    swift_endAccess();
    if (a1)
    {
      v6 = sub_21E4434DC(0, 1, 1, MEMORY[0x277D84F90]);
      v8 = *(v6 + 2);
      v7 = *(v6 + 3);
      if (v8 >= v7 >> 1)
      {
        v6 = sub_21E4434DC((v7 > 1), v8 + 1, 1, v6);
      }

      *(v6 + 2) = v8 + 1;
      v9 = &v6[16 * v8];
      *(v9 + 4) = 0x7461766974636123;
      *(v9 + 5) = 0xEB000000006E6F69;
      if ((a1 & 2) == 0)
      {
LABEL_17:
        if ((a1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
          }

          v14 = *(v6 + 2);
          v13 = *(v6 + 3);
          if (v14 >= v13 >> 1)
          {
            v6 = sub_21E4434DC((v13 > 1), v14 + 1, 1, v6);
          }

          *(v6 + 2) = v14 + 1;
          v15 = &v6[16 * v14];
          *(v15 + 4) = 0x736472616323;
          *(v15 + 5) = 0xE600000000000000;
          if ((a1 & 8) == 0)
          {
LABEL_19:
            if ((a1 & 0x10) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_33;
          }
        }

        else if ((a1 & 8) == 0)
        {
          goto LABEL_19;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
        }

        v17 = *(v6 + 2);
        v16 = *(v6 + 3);
        if (v17 >= v16 >> 1)
        {
          v6 = sub_21E4434DC((v16 > 1), v17 + 1, 1, v6);
        }

        *(v6 + 2) = v17 + 1;
        v18 = &v6[16 * v17];
        *(v18 + 4) = 0x646E4472616323;
        *(v18 + 5) = 0xE700000000000000;
        if ((a1 & 0x10) == 0)
        {
LABEL_20:
          if ((a1 & 0x20) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_38;
        }

LABEL_33:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
        }

        v20 = *(v6 + 2);
        v19 = *(v6 + 3);
        if (v20 >= v19 >> 1)
        {
          v6 = sub_21E4434DC((v19 > 1), v20 + 1, 1, v6);
        }

        *(v6 + 2) = v20 + 1;
        v21 = &v6[16 * v20];
        *(v21 + 4) = 0x79616C5072616323;
        *(v21 + 5) = 0xE800000000000000;
        if ((a1 & 0x20) == 0)
        {
LABEL_21:
          if ((a1 & 0x40) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_43;
        }

LABEL_38:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
        }

        v23 = *(v6 + 2);
        v22 = *(v6 + 3);
        if (v23 >= v22 >> 1)
        {
          v6 = sub_21E4434DC((v22 > 1), v23 + 1, 1, v6);
        }

        *(v6 + 2) = v23 + 1;
        v24 = &v6[16 * v23];
        *(v24 + 4) = 0x73616D6323;
        *(v24 + 5) = 0xE500000000000000;
        if ((a1 & 0x40) == 0)
        {
LABEL_48:
          if ((a1 & 0x80) != 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v29 = *(v6 + 2);
            v28 = *(v6 + 3);
            if (v29 >= v28 >> 1)
            {
              v6 = sub_21E4434DC((v28 > 1), v29 + 1, 1, v6);
            }

            *(v6 + 2) = v29 + 1;
            v30 = &v6[16 * v29];
            *(v30 + 4) = 0x6572467365796523;
            *(v30 + 5) = 0xE900000000000065;
            if ((a1 & 0x100) == 0)
            {
LABEL_50:
              if ((a1 & 0x200) == 0)
              {
                goto LABEL_67;
              }

              goto LABEL_62;
            }
          }

          else if ((a1 & 0x100) == 0)
          {
            goto LABEL_50;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
          }

          v32 = *(v6 + 2);
          v31 = *(v6 + 3);
          if (v32 >= v31 >> 1)
          {
            v6 = sub_21E4434DC((v31 > 1), v32 + 1, 1, v6);
          }

          *(v6 + 2) = v32 + 1;
          v33 = &v6[16 * v32];
          *(v33 + 4) = 0x7375636F6623;
          *(v33 + 5) = 0xE600000000000000;
          if ((a1 & 0x200) == 0)
          {
LABEL_67:
            if ((a1 & 0x400) != 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
              }

              v38 = *(v6 + 2);
              v37 = *(v6 + 3);
              if (v38 >= v37 >> 1)
              {
                v6 = sub_21E4434DC((v37 > 1), v38 + 1, 1, v6);
              }

              *(v6 + 2) = v38 + 1;
              v39 = &v6[16 * v38];
              *(v39 + 4) = 0x6D6954656C646923;
              *(v39 + 5) = 0xEA00000000007265;
            }

            if ((a1 & 0x800) != 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
              }

              v41 = *(v6 + 2);
              v40 = *(v6 + 3);
              if (v41 >= v40 >> 1)
              {
                v6 = sub_21E4434DC((v40 > 1), v41 + 1, 1, v6);
              }

              *(v6 + 2) = v41 + 1;
              v42 = &v6[16 * v41];
              *(v42 + 4) = 0xD000000000000015;
              *(v42 + 5) = 0x800000021E4ED300;
              if ((a1 & 0x1000) == 0)
              {
LABEL_75:
                if ((a1 & 0x2000) == 0)
                {
                  goto LABEL_76;
                }

                goto LABEL_108;
              }
            }

            else if ((a1 & 0x1000) == 0)
            {
              goto LABEL_75;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v44 = *(v6 + 2);
            v43 = *(v6 + 3);
            if (v44 >= v43 >> 1)
            {
              v6 = sub_21E4434DC((v43 > 1), v44 + 1, 1, v6);
            }

            *(v6 + 2) = v44 + 1;
            v45 = &v6[16 * v44];
            *(v45 + 4) = 0x736B636F6C23;
            *(v45 + 5) = 0xE600000000000000;
            if ((a1 & 0x2000) == 0)
            {
LABEL_76:
              if ((a1 & 0x4000) == 0)
              {
                goto LABEL_77;
              }

              goto LABEL_113;
            }

LABEL_108:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v47 = *(v6 + 2);
            v46 = *(v6 + 3);
            if (v47 >= v46 >> 1)
            {
              v6 = sub_21E4434DC((v46 > 1), v47 + 1, 1, v6);
            }

            *(v6 + 2) = v47 + 1;
            v48 = &v6[16 * v47];
            *(v48 + 4) = 0x7365646F6D23;
            *(v48 + 5) = 0xE600000000000000;
            if ((a1 & 0x4000) == 0)
            {
LABEL_77:
              if ((a1 & 0x8000) == 0)
              {
                goto LABEL_78;
              }

              goto LABEL_118;
            }

LABEL_113:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v50 = *(v6 + 2);
            v49 = *(v6 + 3);
            if (v50 >= v49 >> 1)
            {
              v6 = sub_21E4434DC((v49 > 1), v50 + 1, 1, v6);
            }

            *(v6 + 2) = v50 + 1;
            v51 = &v6[16 * v50];
            *(v51 + 4) = 0x64616972796D23;
            *(v51 + 5) = 0xE700000000000000;
            if ((a1 & 0x8000) == 0)
            {
LABEL_78:
              if ((a1 & 0x10000) == 0)
              {
                goto LABEL_79;
              }

              goto LABEL_123;
            }

LABEL_118:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v53 = *(v6 + 2);
            v52 = *(v6 + 3);
            if (v53 >= v52 >> 1)
            {
              v6 = sub_21E4434DC((v52 > 1), v53 + 1, 1, v6);
            }

            *(v6 + 2) = v53 + 1;
            v54 = &v6[16 * v53];
            *(v54 + 4) = 0x5564616972796D23;
            *(v54 + 5) = 0xE900000000000049;
            if ((a1 & 0x10000) == 0)
            {
LABEL_79:
              if ((a1 & 0x20000) == 0)
              {
                goto LABEL_80;
              }

              goto LABEL_128;
            }

LABEL_123:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v56 = *(v6 + 2);
            v55 = *(v6 + 3);
            if (v56 >= v55 >> 1)
            {
              v6 = sub_21E4434DC((v55 > 1), v56 + 1, 1, v6);
            }

            *(v6 + 2) = v56 + 1;
            v57 = &v6[16 * v56];
            *(v57 + 4) = 0xD000000000000014;
            *(v57 + 5) = 0x800000021E4ED2E0;
            if ((a1 & 0x20000) == 0)
            {
LABEL_80:
              if ((a1 & 0x40000) == 0)
              {
                goto LABEL_81;
              }

              goto LABEL_133;
            }

LABEL_128:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v59 = *(v6 + 2);
            v58 = *(v6 + 3);
            if (v59 >= v58 >> 1)
            {
              v6 = sub_21E4434DC((v58 > 1), v59 + 1, 1, v6);
            }

            *(v6 + 2) = v59 + 1;
            v60 = &v6[16 * v59];
            *(v60 + 4) = 0x7973696F6E23;
            *(v60 + 5) = 0xE600000000000000;
            if ((a1 & 0x40000) == 0)
            {
LABEL_81:
              if ((a1 & 0x80000) == 0)
              {
                goto LABEL_82;
              }

              goto LABEL_138;
            }

LABEL_133:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v62 = *(v6 + 2);
            v61 = *(v6 + 3);
            if (v62 >= v61 >> 1)
            {
              v6 = sub_21E4434DC((v61 > 1), v62 + 1, 1, v6);
            }

            *(v6 + 2) = v62 + 1;
            v63 = &v6[16 * v62];
            *(v63 + 4) = 0xD000000000000011;
            *(v63 + 5) = 0x800000021E4ED2C0;
            if ((a1 & 0x80000) == 0)
            {
LABEL_82:
              if ((a1 & 0x100000) == 0)
              {
                goto LABEL_83;
              }

              goto LABEL_143;
            }

LABEL_138:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v65 = *(v6 + 2);
            v64 = *(v6 + 3);
            if (v65 >= v64 >> 1)
            {
              v6 = sub_21E4434DC((v64 > 1), v65 + 1, 1, v6);
            }

            *(v6 + 2) = v65 + 1;
            v66 = &v6[16 * v65];
            *(v66 + 4) = 0x7765695662724F23;
            *(v66 + 5) = 0xE800000000000000;
            if ((a1 & 0x100000) == 0)
            {
LABEL_83:
              if ((a1 & 0x200000) == 0)
              {
                goto LABEL_84;
              }

              goto LABEL_148;
            }

LABEL_143:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v68 = *(v6 + 2);
            v67 = *(v6 + 3);
            if (v68 >= v67 >> 1)
            {
              v6 = sub_21E4434DC((v67 > 1), v68 + 1, 1, v6);
            }

            *(v6 + 2) = v68 + 1;
            v69 = &v6[16 * v68];
            strcpy(v69 + 32, "#presynthesize");
            v69[47] = -18;
            if ((a1 & 0x200000) == 0)
            {
LABEL_84:
              if ((a1 & 0x400000) == 0)
              {
                goto LABEL_85;
              }

              goto LABEL_153;
            }

LABEL_148:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v71 = *(v6 + 2);
            v70 = *(v6 + 3);
            if (v71 >= v70 >> 1)
            {
              v6 = sub_21E4434DC((v70 > 1), v71 + 1, 1, v6);
            }

            *(v6 + 2) = v71 + 1;
            v72 = &v6[16 * v71];
            strcpy(v72 + 32, "#sceneHosting");
            *(v72 + 23) = -4864;
            if ((a1 & 0x400000) == 0)
            {
LABEL_85:
              if ((a1 & 0x800000) == 0)
              {
                goto LABEL_86;
              }

              goto LABEL_158;
            }

LABEL_153:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v74 = *(v6 + 2);
            v73 = *(v6 + 3);
            if (v74 >= v73 >> 1)
            {
              v6 = sub_21E4434DC((v73 > 1), v74 + 1, 1, v6);
            }

            *(v6 + 2) = v74 + 1;
            v75 = &v6[16 * v74];
            *(v75 + 4) = 0xD000000000000015;
            *(v75 + 5) = 0x800000021E4ED2A0;
            if ((a1 & 0x800000) == 0)
            {
LABEL_86:
              if ((a1 & 0x1000000) == 0)
              {
                goto LABEL_87;
              }

              goto LABEL_163;
            }

LABEL_158:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v77 = *(v6 + 2);
            v76 = *(v6 + 3);
            if (v77 >= v76 >> 1)
            {
              v6 = sub_21E4434DC((v76 > 1), v77 + 1, 1, v6);
            }

            *(v6 + 2) = v77 + 1;
            v78 = &v6[16 * v77];
            *(v78 + 4) = 0xD000000000000017;
            *(v78 + 5) = 0x800000021E4ED280;
            if ((a1 & 0x1000000) == 0)
            {
LABEL_87:
              if ((a1 & 0x2000000) == 0)
              {
                goto LABEL_88;
              }

              goto LABEL_168;
            }

LABEL_163:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v80 = *(v6 + 2);
            v79 = *(v6 + 3);
            if (v80 >= v79 >> 1)
            {
              v6 = sub_21E4434DC((v79 > 1), v80 + 1, 1, v6);
            }

            *(v6 + 2) = v80 + 1;
            v81 = &v6[16 * v80];
            *(v81 + 4) = 0x4449486972697323;
            *(v81 + 5) = 0xE800000000000000;
            if ((a1 & 0x2000000) == 0)
            {
LABEL_88:
              if ((a1 & 0x4000000) == 0)
              {
                goto LABEL_89;
              }

              goto LABEL_173;
            }

LABEL_168:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v83 = *(v6 + 2);
            v82 = *(v6 + 3);
            if (v83 >= v82 >> 1)
            {
              v6 = sub_21E4434DC((v82 > 1), v83 + 1, 1, v6);
            }

            *(v6 + 2) = v83 + 1;
            v84 = &v6[16 * v83];
            *(v84 + 4) = 0x74657070696E7323;
            *(v84 + 5) = 0xEA00000000006975;
            if ((a1 & 0x4000000) == 0)
            {
LABEL_89:
              if ((a1 & 0x8000000) == 0)
              {
                goto LABEL_90;
              }

              goto LABEL_178;
            }

LABEL_173:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v86 = *(v6 + 2);
            v85 = *(v6 + 3);
            if (v86 >= v85 >> 1)
            {
              v6 = sub_21E4434DC((v85 > 1), v86 + 1, 1, v6);
            }

            *(v6 + 2) = v86 + 1;
            v87 = &v6[16 * v86];
            *(v87 + 4) = 0x7263736E61727423;
            *(v87 + 5) = 0xEB00000000747069;
            if ((a1 & 0x8000000) == 0)
            {
LABEL_90:
              if ((a1 & 0x10000000) == 0)
              {
                goto LABEL_91;
              }

              goto LABEL_183;
            }

LABEL_178:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v89 = *(v6 + 2);
            v88 = *(v6 + 3);
            if (v89 >= v88 >> 1)
            {
              v6 = sub_21E4434DC((v88 > 1), v89 + 1, 1, v6);
            }

            *(v6 + 2) = v89 + 1;
            v90 = &v6[16 * v89];
            *(v90 + 4) = 1937011747;
            *(v90 + 5) = 0xE400000000000000;
            if ((a1 & 0x10000000) == 0)
            {
LABEL_91:
              if ((a1 & 0x20000000) == 0)
              {
                goto LABEL_92;
              }

              goto LABEL_188;
            }

LABEL_183:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v92 = *(v6 + 2);
            v91 = *(v6 + 3);
            if (v92 >= v91 >> 1)
            {
              v6 = sub_21E4434DC((v91 > 1), v92 + 1, 1, v6);
            }

            *(v6 + 2) = v92 + 1;
            v93 = &v6[16 * v92];
            *(v93 + 4) = 0x6972695343505823;
            *(v93 + 5) = 0xEB00000000707041;
            if ((a1 & 0x20000000) == 0)
            {
LABEL_92:
              if ((a1 & 0x40000000) == 0)
              {
                goto LABEL_93;
              }

              goto LABEL_193;
            }

LABEL_188:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v95 = *(v6 + 2);
            v94 = *(v6 + 3);
            if (v95 >= v94 >> 1)
            {
              v6 = sub_21E4434DC((v94 > 1), v95 + 1, 1, v6);
            }

            *(v6 + 2) = v95 + 1;
            v96 = &v6[16 * v95];
            *(v96 + 4) = 1819048483;
            *(v96 + 5) = 0xE400000000000000;
            if ((a1 & 0x40000000) == 0)
            {
LABEL_93:
              if ((a1 & 0x80000000) == 0)
              {
                goto LABEL_94;
              }

              goto LABEL_198;
            }

LABEL_193:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v98 = *(v6 + 2);
            v97 = *(v6 + 3);
            if (v98 >= v97 >> 1)
            {
              v6 = sub_21E4434DC((v97 > 1), v98 + 1, 1, v6);
            }

            *(v6 + 2) = v98 + 1;
            v99 = &v6[16 * v98];
            *(v99 + 4) = 0x416D657473797323;
            *(v99 + 5) = 0xEF65727574726570;
            if ((a1 & 0x80000000) == 0)
            {
LABEL_94:
              if ((a1 & 0x100000000) == 0)
              {
                goto LABEL_95;
              }

              goto LABEL_203;
            }

LABEL_198:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v101 = *(v6 + 2);
            v100 = *(v6 + 3);
            if (v101 >= v100 >> 1)
            {
              v6 = sub_21E4434DC((v100 > 1), v101 + 1, 1, v6);
            }

            *(v6 + 2) = v101 + 1;
            v102 = &v6[16 * v101];
            *(v102 + 4) = 0xD000000000000015;
            *(v102 + 5) = 0x800000021E4ED260;
            if ((a1 & 0x100000000) == 0)
            {
LABEL_95:
              if ((a1 & 0x200000000) == 0)
              {
                goto LABEL_96;
              }

              goto LABEL_208;
            }

LABEL_203:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v104 = *(v6 + 2);
            v103 = *(v6 + 3);
            if (v104 >= v103 >> 1)
            {
              v6 = sub_21E4434DC((v103 > 1), v104 + 1, 1, v6);
            }

            *(v6 + 2) = v104 + 1;
            v105 = &v6[16 * v104];
            *(v105 + 4) = 0xD000000000000013;
            *(v105 + 5) = 0x800000021E4ED240;
            if ((a1 & 0x200000000) == 0)
            {
LABEL_96:
              if (!*(v6 + 2))
              {

                return 0;
              }

LABEL_213:
              v114 = v6;

              sub_21E45D9D8(&v114);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC53D0);
              sub_21E45463C();
              v5 = sub_21E4DCED8();
              v110 = v109;

              swift_beginAccess();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v113 = off_280C14580;
              sub_21E443E7C(v5, v110, a1, isUniquelyReferenced_nonNull_native);
              off_280C14580 = v113;
              swift_endAccess();
              return v5;
            }

LABEL_208:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
            }

            v107 = *(v6 + 2);
            v106 = *(v6 + 3);
            if (v107 >= v106 >> 1)
            {
              v6 = sub_21E4434DC((v106 > 1), v107 + 1, 1, v6);
            }

            *(v6 + 2) = v107 + 1;
            v108 = &v6[16 * v107];
            strcpy(v108 + 32, "#suggestions");
            v108[45] = 0;
            *(v108 + 23) = -5120;
            goto LABEL_213;
          }

LABEL_62:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
          }

          v35 = *(v6 + 2);
          v34 = *(v6 + 3);
          if (v35 >= v34 >> 1)
          {
            v6 = sub_21E4434DC((v34 > 1), v35 + 1, 1, v6);
          }

          *(v6 + 2) = v35 + 1;
          v36 = &v6[16 * v35];
          *(v36 + 4) = 0x656C646923;
          *(v36 + 5) = 0xE500000000000000;
          goto LABEL_67;
        }

LABEL_43:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
        }

        v26 = *(v6 + 2);
        v25 = *(v6 + 3);
        if (v26 >= v25 >> 1)
        {
          v6 = sub_21E4434DC((v25 > 1), v26 + 1, 1, v6);
        }

        *(v6 + 2) = v26 + 1;
        v27 = &v6[16 * v26];
        *(v27 + 4) = 0x746361706D6F6323;
        *(v27 + 5) = 0xE800000000000000;
        goto LABEL_48;
      }
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_21E4434DC(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_21E4434DC((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[16 * v11];
    strcpy(v12 + 32, "#autodismiss");
    v12[45] = 0;
    *(v12 + 23) = -5120;
    goto LABEL_17;
  }

  v5 = *(v2[7] + 16 * v3);
  swift_endAccess();

  return v5;
}

uint64_t sub_21E45D57C()
{
  v1 = *v0;
  sub_21E4DD5C8();
  MEMORY[0x223D5B280](v1);
  return sub_21E4DD608();
}

uint64_t sub_21E45D5F0()
{
  v1 = *v0;
  sub_21E4DD5C8();
  MEMORY[0x223D5B280](v1);
  return sub_21E4DD608();
}

BOOL sub_21E45D678(void *a1, uint64_t *a2)
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

void *sub_21E45D6A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_21E45D6D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_21E45D7AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21E45D7DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21E45E640(a1);

  *a2 = v3;
  return result;
}

void sub_21E45D81C(os_log_type_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v21 = a3;
  v22 = a4;

  v10 = sub_21E45C20C(a2);
  if (v11)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v10);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (a6)
  {
    v12 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v12 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v19 = 32;
      v20 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](a5, a6);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }
  }

  v14 = v21;
  v13 = v22;
  log = sub_21E4DBCB8();
  if (os_log_type_enabled(log, a1))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    v17 = sub_21E426648(v14, v13, &v19);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_21E3EB000, log, a1, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x223D5BF10](v16, -1, -1);
    MEMORY[0x223D5BF10](v15, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21E45D9D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21E45E4B0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21E45DA44(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21E45DA44(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21E4DD4D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21E4DD0C8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21E45DC0C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_21E45DB3C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21E45DB3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_21E4DD518(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21E45DC0C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_21E45E49C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_21E45E1E8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_21E4DD518();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_21E4DD518();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21E4433D8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_21E4433D8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_21E45E1E8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21E45E49C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_21E45E410(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_21E4DD518(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_21E45E1E8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_21E4DD518() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_21E4DD518() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_21E45E410(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21E45E49C(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_21E45E4E4()
{
  result = qword_280C14570;
  if (!qword_280C14570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14570);
  }

  return result;
}

unint64_t sub_21E45E53C()
{
  result = qword_27CEC5AD8;
  if (!qword_27CEC5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5AD8);
  }

  return result;
}

unint64_t sub_21E45E594()
{
  result = qword_27CEC5AE0;
  if (!qword_27CEC5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5AE0);
  }

  return result;
}

unint64_t sub_21E45E5EC()
{
  result = qword_27CEC5AE8;
  if (!qword_27CEC5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5AE8);
  }

  return result;
}

uint64_t sub_21E45E640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_21E45E680()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_fluidDismissalGesture;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D75FF8]) initWithAxes_];
  v2 = OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_resultViewStablePoint;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D76000]) initWithDimensions_];
  v3 = OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_interactiveRegion;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277D76008]) initWithDimensions_];
  v0[OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_isDismissing] = 0;
  *&v0[OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v27.receiver = v0;
  v27.super_class = type metadata accessor for SiriSharedUIResultViewPanFluidDismissalManager();
  v4 = objc_msgSendSuper2(&v27, sel_init);
  v5 = OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_fluidDismissalGesture;
  v6 = *&v4[OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_fluidDismissalGesture];
  v7 = v4;
  v8 = [v6 _interactor];
  [v8 _setDelegate_];

  v9 = *&v4[v5];
  [v9 _setDelegate_];

  v10 = [objc_allocWithZone(MEMORY[0x277D75FE8]) initWithDimensions_];
  v11 = [objc_opt_self() parametersWithDampingRatio:0.6 response:0.4];
  [v10 _setTrackingSpringParameters_];
  [v10 _setNonTrackingSpringParameters_];
  v20 = v5;
  v12 = [*&v4[v5] _interactor];
  [v12 _setAnimator_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75FD8]) initWithDimensions_];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21E45F1E8;
  *(v14 + 24) = 0;
  v25 = sub_21E45F1F4;
  v26 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_21E45EACC;
  v24 = &block_descriptor_5;
  v15 = _Block_copy(&aBlock);

  [v13 _mutateExtentBeyondMinimum_];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = sub_21E45F234;
    *(v17 + 24) = 0;
    v25 = sub_21E45F274;
    v26 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_21E45EACC;
    v24 = &block_descriptor_17;
    v18 = _Block_copy(&aBlock);

    [v13 _mutateExtentBeyondMaximum_];
    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if ((v18 & 1) == 0)
    {
      v19 = [*&v4[v20] _interactor];
      [v19 _setExtender_];

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E45EB1C(double a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_fluidDismissalGesture) _interactor];
  v4 = a1 + -10.0;
  v5 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_interactiveRegion);
  v6 = swift_allocObject();
  *(v6 + 16) = a1 + -10.0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21E45F260;
  *(v7 + 24) = v6;
  v28 = sub_21E45F274;
  v29 = v7;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_21E45EACC;
  v27 = &block_descriptor_27_0;
  v8 = _Block_copy(&v24);

  [v5 _mutateMinimumPoint_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = a1 + 60.0;
  v11 = swift_allocObject();
  *(v11 + 16) = a1 + 60.0;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_21E45F244;
  *(v12 + 24) = v11;
  v28 = sub_21E45F274;
  v29 = v12;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_21E45EACC;
  v27 = &block_descriptor_37;
  v13 = _Block_copy(&v24);

  [v5 _mutateMaximumPoint_];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_resultViewStablePoint);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21E45F260;
  *(v16 + 24) = v15;
  v28 = sub_21E45F274;
  v29 = v16;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_21E45EACC;
  v27 = &block_descriptor_47;
  v17 = _Block_copy(&v24);

  [v14 _mutateValue_];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  if (![v3 _isInteractive] || *(v1 + OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_isDismissing) == 1)
  {
    v5 = v14;
  }

  [v3 _setRegion_];
  swift_unknownObjectRelease();
  [v3 _copyUnconstrainedPoint_];
  v18 = *[v3 _presentationPoint];
  if ((*(v1 + OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_isDismissing) & 1) != 0 || v10 + 60.0 > v18 && v18 > v4 + -25.0)
  {
    goto LABEL_14;
  }

  *(v1 + OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_isDismissing) = 1;
  v19 = v1 + OBJC_IVAR____TtC12SiriSharedUI46SiriSharedUIResultViewPanFluidDismissalManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v20 + 16))(v1, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_14:
  }

  else
  {
    v22 = *(v19 + 8);
    v23 = swift_getObjectType();
    (*(v22 + 8))(v1, 24, v23, v22);

    swift_unknownObjectRelease();
  }
}

id sub_21E45F124()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIResultViewPanFluidDismissalManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_21E45F244(double *a1)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

void sub_21E45F2A4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 8) command];
  if (v2)
  {
    v5 = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_21E4A4214(v5);
    }
  }
}

uint64_t sub_21E45F350()
{
  v1 = v0;
  v2 = sub_21E4DBE58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5BE0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12[-v8];
  sub_21E4DBE48();
  sub_21E45F5E0(v1, v12);
  v10 = swift_allocObject();
  sub_21E45F618(v12, v10 + 16);
  sub_21E4DCAB8();

  (*(v3 + 8))(v5, v2);
  sub_21E4DBE98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5BE8);
  sub_21E42D5A8(&qword_280C14360, &qword_27CEC5BE8);
  sub_21E42D5A8(&qword_27CEC5BF0, &qword_27CEC5BE0);
  sub_21E4DC818();
  return (*(v7 + 8))(v9, v6);
}

void *SiriSharedUISAEUserUtteranceViewModel.speech.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_speech;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SiriSharedUISAEUserUtteranceViewModel.speech.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_speech;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SiriSharedUISAEUserUtteranceViewModel.asrAlternatives.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_asrAlternatives;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_21E45F930(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 asrAlternatives];
  v4 = sub_21E4DD088();

  *a2 = v4;
}

uint64_t SiriSharedUISAEUserUtteranceViewModel.shouldShow.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_shouldShow;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SiriSharedUISAEUserUtteranceViewModel.shouldShow.setter(char a1)
{
  v3 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_shouldShow;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_21E45FAF8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_21E4DCF68();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_21E45FB8C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_21E45FBEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_21E4DCF78();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_21E45FC74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_21E45FCD0(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21E4DCF78();
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

void sub_21E45FD34(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = sub_21E4DCF68();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

id SiriSharedUISAEUserUtteranceViewModel.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SiriSharedUISAEUserUtteranceViewModel()
{
  result = qword_27CEC5C20;
  if (!qword_27CEC5C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEC5C20);
  }

  return result;
}

id sub_21E460008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_speech;
  *&v7[OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_speech] = 0;
  v15 = &v7[OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_latencySummary];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v7[OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_taskIdentifier];
  *v16 = 0;
  v16[1] = 0;
  swift_beginAccess();
  *&v7[v14] = a1;
  *&v7[OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_asrAlternatives] = a2;
  swift_beginAccess();
  *v15 = a3;
  v15[1] = a4;
  v7[OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_shouldShow] = a5;
  swift_beginAccess();
  *v16 = a6;
  v16[1] = a7;
  v20.receiver = v7;
  v20.super_class = SiriSharedUISAEUserUtteranceViewModel;
  v17 = a1;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_21E46011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_21E462CF8(a3, v24 - v9);
  v11 = sub_21E4DD158();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21E462D68(v10);
  }

  else
  {
    sub_21E4DD148();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21E4DD0F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21E4DCFC8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_21E462D68(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21E462D68(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void *sub_21E4603DC(uint64_t a1, uint64_t a2)
{
  v5 = sub_21E4DC518();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = (v2 + OBJC_IVAR____TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider_suggestionsView);
  if (!*(v2 + OBJC_IVAR____TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider_suggestionsView + 8))
  {
    type metadata accessor for SiriSharedUISuggestionsDataModel();
    sub_21E4605C0();

    *v6 = sub_21E4DBF98();
    v6[1] = v7;
  }

  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5C40));
  v9 = MEMORY[0x277D85000];
  v10 = &v8[*((*MEMORY[0x277D85000] & *v8) + class metadata base offset for SiriSharedUISuggestionsSecureController + 16)];
  *v10 = 0;
  *(v10 + 1) = 0;

  v11 = sub_21E4DC2C8();
  v12 = (v11 + *((*v9 & *v11) + class metadata base offset for SiriSharedUISuggestionsSecureController + 16));
  v13 = *v12;
  *v12 = a1;
  v12[1] = a2;

  sub_21E3F1EB0(v13);
  v14 = v11;
  sub_21E4DC508();
  sub_21E4DC2A8();

  return v14;
}

unint64_t sub_21E4605C0()
{
  result = qword_27CEC5C38;
  if (!qword_27CEC5C38)
  {
    type metadata accessor for SiriSharedUISuggestionsDataModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5C38);
  }

  return result;
}

uint64_t sub_21E4606B0(int a1, char a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v38 - v7;
  v8 = OBJC_IVAR____TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider_suggestionsDataModel;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v46) = a2;

  sub_21E4DBDF8();
  v41 = v4;
  v9 = *(v4 + v8);
  v10 = qword_280C14550;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_21E4DBCC8();
  __swift_project_value_buffer(v11, qword_280C14558);
  v12 = sub_21E4DD1F8();
  v46 = 0xD00000000000004DLL;
  v47 = 0x800000021E4ED160;
  v13 = sub_21E45C20C(0);
  if (v14)
  {
    v44 = 32;
    v45 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v13);

    MEMORY[0x223D5ACB0](v44, v45);
  }

  if (("TB,N,VshouldShow" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v44 = 32;
    v45 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000002BLL, 0x800000021E4ED580);
    MEMORY[0x223D5ACB0](v44, v45);
  }

  v15 = v46;
  v16 = v47;
  v17 = sub_21E4DBCB8();
  if (os_log_type_enabled(v17, v12))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v44 = v19;
    *v18 = 136315138;
    v20 = sub_21E426648(v15, v16, &v44);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_21E3EB000, v17, v12, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x223D5BF10](v19, -1, -1);
    MEMORY[0x223D5BF10](v18, -1, -1);
  }

  else
  {
  }

  sub_21E45AD60();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  sub_21E43F140();

  v21 = sub_21E4DD1F8();
  v46 = 0xD00000000000004DLL;
  v47 = 0x800000021E4ED160;
  v22 = sub_21E45C20C(0);
  if (v23)
  {
    v44 = 32;
    v45 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v22);

    MEMORY[0x223D5ACB0](v44, v45);
  }

  if (("ching conversation starters" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v44 = 32;
    v45 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000032, 0x800000021E4ED5B0);
    MEMORY[0x223D5ACB0](v44, v45);
  }

  v24 = v46;
  v25 = v47;
  v26 = sub_21E4DBCB8();
  if (os_log_type_enabled(v26, v21))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v44 = v28;
    *v27 = 136315138;
    v29 = sub_21E426648(v24, v25, &v44);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_21E3EB000, v26, v21, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x223D5BF10](v28, -1, -1);
    MEMORY[0x223D5BF10](v27, -1, -1);
  }

  else
  {
  }

  v30 = sub_21E4DD158();
  v31 = v39;
  (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v9;
  *(v32 + 40) = v40 & 1;
  *(v32 + 48) = 0;
  sub_21E46011C(0, 0, v31, &unk_21E4E7C10, v32);

  v33 = v41;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v46) = 0;

  sub_21E4DBDF8();
  v34 = (*(v33 + v8) + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_suggestionTapHandler);
  v35 = *v34;
  v36 = v43;
  *v34 = v42;
  v34[1] = v36;

  sub_21E3F1EB0(v35);
}

uint64_t sub_21E460D1C(int a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v41 = a1;
  v42 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v39 - v8;
  v9 = OBJC_IVAR____TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider_suggestionsDataModel;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v48) = a2;

  sub_21E4DBDF8();
  v43 = v5;
  v10 = *(v5 + v9);
  v11 = qword_280C14550;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_21E4DBCC8();
  __swift_project_value_buffer(v12, qword_280C14558);
  v13 = sub_21E4DD1F8();
  v48 = 0xD00000000000004DLL;
  v49 = 0x800000021E4ED160;
  v14 = sub_21E45C20C(0);
  if (v15)
  {
    v46 = 32;
    v47 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v14);

    MEMORY[0x223D5ACB0](v46, v47);
  }

  if (("TB,N,VshouldShow" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v46 = 32;
    v47 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000002BLL, 0x800000021E4ED580);
    MEMORY[0x223D5ACB0](v46, v47);
  }

  v17 = v48;
  v16 = v49;
  v18 = sub_21E4DBCB8();
  if (os_log_type_enabled(v18, v13))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46 = v20;
    *v19 = 136315138;
    v21 = sub_21E426648(v17, v16, &v46);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_21E3EB000, v18, v13, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x223D5BF10](v20, -1, -1);
    MEMORY[0x223D5BF10](v19, -1, -1);
  }

  else
  {
  }

  sub_21E45AD60();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  sub_21E43F140();

  v22 = sub_21E4DD1F8();
  v48 = 0xD00000000000004DLL;
  v49 = 0x800000021E4ED160;
  v23 = sub_21E45C20C(0);
  if (v24)
  {
    v46 = 32;
    v47 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v23);

    MEMORY[0x223D5ACB0](v46, v47);
  }

  if (("ching conversation starters" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v46 = 32;
    v47 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000032, 0x800000021E4ED5B0);
    MEMORY[0x223D5ACB0](v46, v47);
  }

  v26 = v48;
  v25 = v49;
  v27 = sub_21E4DBCB8();
  if (os_log_type_enabled(v27, v22))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46 = v29;
    *v28 = 136315138;
    v30 = sub_21E426648(v26, v25, &v46);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_21E3EB000, v27, v22, "%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x223D5BF10](v29, -1, -1);
    MEMORY[0x223D5BF10](v28, -1, -1);
  }

  else
  {
  }

  v31 = sub_21E4DD158();
  v32 = v40;
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v10;
  *(v33 + 40) = v41 & 1;
  *(v33 + 48) = 0;
  sub_21E46011C(0, 0, v32, &unk_21E4E7C60, v33);

  v34 = v43;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v48) = v42 & 1;

  sub_21E4DBDF8();
  v35 = (*(v34 + v9) + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_suggestionTapHandler);
  v36 = *v35;
  v37 = v45;
  *v35 = v44;
  v35[1] = v37;

  sub_21E3F1EB0(v36);
}

uint64_t sub_21E461398(int a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a5;
  v47 = a6;
  v43 = a4;
  v44 = a3;
  v42 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v40 - v9;
  v10 = OBJC_IVAR____TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider_suggestionsDataModel;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v50) = a2;

  sub_21E4DBDF8();
  v45 = v6;
  v11 = *(v6 + v10);
  v12 = qword_280C14550;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_21E4DBCC8();
  __swift_project_value_buffer(v13, qword_280C14558);
  v14 = sub_21E4DD1F8();
  v50 = 0xD00000000000004DLL;
  v51 = 0x800000021E4ED160;
  v15 = sub_21E45C20C(0);
  if (v16)
  {
    v48 = 32;
    v49 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v15);

    MEMORY[0x223D5ACB0](v48, v49);
  }

  if (("TB,N,VshouldShow" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v48 = 32;
    v49 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000002BLL, 0x800000021E4ED580);
    MEMORY[0x223D5ACB0](v48, v49);
  }

  v18 = v50;
  v17 = v51;
  v19 = sub_21E4DBCB8();
  if (os_log_type_enabled(v19, v14))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = v21;
    *v20 = 136315138;
    v22 = sub_21E426648(v18, v17, &v48);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_21E3EB000, v19, v14, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x223D5BF10](v21, -1, -1);
    MEMORY[0x223D5BF10](v20, -1, -1);
  }

  else
  {
  }

  sub_21E45AD60();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  sub_21E43F140();

  v23 = sub_21E4DD1F8();
  v50 = 0xD00000000000004DLL;
  v51 = 0x800000021E4ED160;
  v24 = sub_21E45C20C(0);
  if (v25)
  {
    v48 = 32;
    v49 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v24);

    MEMORY[0x223D5ACB0](v48, v49);
  }

  if (("ching conversation starters" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v48 = 32;
    v49 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000032, 0x800000021E4ED5B0);
    MEMORY[0x223D5ACB0](v48, v49);
  }

  v27 = v50;
  v26 = v51;
  v28 = sub_21E4DBCB8();
  if (os_log_type_enabled(v28, v23))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48 = v30;
    *v29 = 136315138;
    v31 = sub_21E426648(v27, v26, &v48);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_21E3EB000, v28, v23, "%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x223D5BF10](v30, -1, -1);
    MEMORY[0x223D5BF10](v29, -1, -1);
  }

  else
  {
  }

  v32 = sub_21E4DD158();
  v33 = v41;
  (*(*(v32 - 8) + 56))(v41, 1, 1, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v11;
  *(v34 + 40) = v42 & 1;
  *(v34 + 48) = v43;
  sub_21E46011C(0, 0, v33, &unk_21E4E7C68, v34);

  v35 = v45;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v50) = v44 & 1;

  sub_21E4DBDF8();
  v36 = (*(v35 + v10) + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_suggestionTapHandler);
  v37 = *v36;
  v38 = v47;
  *v36 = v46;
  v36[1] = v38;

  sub_21E3F1EB0(v37);
}

uint64_t sub_21E461A30(uint64_t a1, uint64_t a2, void *a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v45 = a7;
  v41 = a4;
  v42 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = OBJC_IVAR____TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider_suggestionsDataModel;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v48) = a5;

  sub_21E4DBDF8();
  v43 = v7;
  v40 = v14;
  v15 = *(v7 + v14);
  v48 = 0;
  v49 = 0xE000000000000000;

  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD00000000000003ELL, 0x800000021E4ED5F0);
  v39 = a1;
  MEMORY[0x223D5ACB0](a1, a2);
  v16 = v48;
  v17 = v49;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v18 = sub_21E4DBCC8();
  __swift_project_value_buffer(v18, qword_280C14558);
  v19 = sub_21E4DD1F8();
  v48 = 0xD000000000000054;
  v49 = 0x800000021E4ED0B0;
  v20 = sub_21E45C20C(0);
  if (v21)
  {
    v46 = 32;
    v47 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v20);

    MEMORY[0x223D5ACB0](v46, v47);
  }

  v22 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v22 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v46 = 32;
    v47 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v16, v17);
    MEMORY[0x223D5ACB0](v46, v47);
  }

  v23 = v48;
  v24 = v49;
  v25 = sub_21E4DBCB8();
  if (os_log_type_enabled(v25, v19))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v46 = v27;
    *v26 = 136315138;
    v28 = sub_21E426648(v23, v24, &v46);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_21E3EB000, v25, v19, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x223D5BF10](v27, -1, -1);
    MEMORY[0x223D5BF10](v26, -1, -1);
  }

  else
  {
  }

  sub_21E45AD60();
  v29 = sub_21E4DD158();
  (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v31 = v39;
  *(v30 + 32) = v15;
  *(v30 + 40) = v31;
  v32 = v42;
  *(v30 + 48) = a2;
  *(v30 + 56) = v32;
  *(v30 + 64) = v41 & 1;

  v33 = v32;
  sub_21E46011C(0, 0, v13, &unk_21E4E7C70, v30);

  v34 = (*(v43 + v40) + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsDataModel_suggestionTapHandler);
  v35 = *v34;
  v36 = v45;
  *v34 = v44;
  v34[1] = v36;

  sub_21E3F1EB0(v35);
}

uint64_t sub_21E461F88(void (*a1)(uint64_t))
{

  a1(v2);
}

void sub_21E461FF0(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = a1;

  a3(v4);
}

uint64_t sub_21E462058(char a1)
{

  sub_21E457DD0(a1);
}

uint64_t sub_21E462110()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E4DBDF8();
}

id SiriSharedUISuggestionsViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSharedUISuggestionsViewProvider.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider_suggestionsDataModel;
  type metadata accessor for SiriSharedUISuggestionsDataModel();
  swift_allocObject();
  *&v0[v2] = sub_21E456670();
  v3 = &v0[OBJC_IVAR____TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider_suggestionsView];
  v4 = type metadata accessor for SiriSharedUISuggestionsViewProvider();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v1;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

id SiriSharedUISuggestionsViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUISuggestionsViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E4623EC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  *a1 = v3;
  return result;
}

uint64_t sub_21E46246C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E4DBDF8();
}

uint64_t sub_21E462510(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21E424FF4;

  return sub_21E458C3C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21E4625DC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_21E46265C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E4DBDF8();
}

uint64_t sub_21E462708(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21E462800;

  return v6(a1);
}

uint64_t sub_21E462800()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21E4628F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21E4240F0;

  return sub_21E458C3C(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21E462A04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21E424FF4;

  return sub_21E459E38(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21E462CF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E462D68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E462DD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21E424FF4;

  return sub_21E462708(a1, v4);
}

uint64_t sub_21E462E88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21E4240F0;

  return sub_21E462708(a1, v4);
}

uint64_t SiriSharedUISuggestion.SiriSharedUISuggestionType.hashValue.getter()
{
  v1 = *v0;
  sub_21E4DD5C8();
  MEMORY[0x223D5B280](v1);
  return sub_21E4DD608();
}

uint64_t SiriSharedUISuggestion.displayText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SiriSharedUISuggestion.invocationText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SiriSharedUISuggestion.suggestionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId;
  v4 = sub_21E4DB698();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21E463318@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_21E46468C;
  a2[1] = v6;
}

uint64_t sub_21E4633A4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback);
  swift_beginAccess();
  *v6 = sub_21E464684;
  v6[1] = v5;
}

uint64_t sub_21E463440()
{
  v1 = (v0 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_21E463498(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21E46355C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E46465C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E4635FC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E464634;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E43EB60(v8, v9);
}

uint64_t sub_21E4636C4()
{
  v1 = (v0 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback);
  swift_beginAccess();
  v2 = *v1;
  sub_21E3F1E78(*v1);
  return v2;
}

uint64_t sub_21E463720(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_21E43EB60(v6, v7);
}

uint64_t sub_21E463820(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier);
  *v3 = a1;
  v3[1] = a2;
}

unint64_t sub_21E46386C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5260);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18[-v2];
  v4 = sub_21E4DCBD8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E4E57E0;
  *(inited + 32) = 0x636E617265747475;
  *(inited + 40) = 0xE900000000000065;
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v9;

  v11 = sub_21E43CE08(inited);
  swift_setDeallocating();
  sub_21E424BC0(inited + 32, &qword_27CEC52D0);
  sub_21E424848(v0 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_toolInvocationData, v3, &qword_27CEC5260);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {

    sub_21E424BC0(v3, &qword_27CEC5260);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_21E4DB4C8();
    swift_allocObject();
    sub_21E4DB4B8();
    sub_21E46419C(&qword_27CEC5C58, MEMORY[0x277D72278]);
    v12 = sub_21E4DB4A8();
    v22 = MEMORY[0x277CC9318];
    *&v21 = v12;
    *(&v21 + 1) = v13;
    v14 = v12;
    v15 = v13;
    sub_21E43EAE8(&v21, v20);
    sub_21E4248CC(v14, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v11;
    sub_21E444180(v20, 0xD000000000000013, 0x800000021E4ED780, isUniquelyReferenced_nonNull_native);

    sub_21E424920(v14, v15);
    (*(v5 + 8))(v7, v4);
    return v19;
  }
}

uint64_t sub_21E463E34()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier);

  return v1;
}

uint64_t SiriSharedUISuggestion.deinit()
{

  v1 = OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId;
  v2 = sub_21E4DB698();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21E424BC0(v0 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData, &qword_27CEC5270);
  sub_21E424BC0(v0 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData, &qword_27CEC5268);
  sub_21E424BC0(v0 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_toolInvocationData, &qword_27CEC5260);

  sub_21E43EB60(*(v0 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback), *(v0 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback + 8));

  return v0;
}

uint64_t SiriSharedUISuggestion.__deallocating_deinit()
{
  SiriSharedUISuggestion.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21E463FD4()
{
  sub_21E4DD5C8();
  MEMORY[0x223D5B280](v0);
  return sub_21E4DD608();
}

uint64_t sub_21E46401C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriSharedUISuggestion();
  result = sub_21E4DBD78();
  *a1 = result;
  return result;
}

uint64_t sub_21E46405C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriSharedUISuggestion();
  result = sub_21E4DD3B8();
  *a1 = result;
  return result;
}

uint64_t sub_21E4640A0()
{
  sub_21E4DD5C8();
  MEMORY[0x223D5B280](*v0);
  return sub_21E4DD608();
}

unint64_t sub_21E464100()
{
  result = qword_27CEC5C60;
  if (!qword_27CEC5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5C60);
  }

  return result;
}

uint64_t sub_21E46419C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SiriSharedUISuggestion()
{
  result = qword_27CEC5C70;
  if (!qword_27CEC5C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E464238()
{
  sub_21E4DB698();
  if (v0 <= 0x3F)
  {
    sub_21E4645D0(319, &qword_27CEC5C80, MEMORY[0x277D606E0]);
    if (v1 <= 0x3F)
    {
      sub_21E4645D0(319, &qword_27CEC5C88, MEMORY[0x277D60520]);
      if (v2 <= 0x3F)
      {
        sub_21E4645D0(319, &qword_27CEC5C90, MEMORY[0x277D72278]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21E4645D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21E4DD318();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21E4646A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5C98);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21E4E6FA0;
  *(v0 + 32) = sub_21E4DC8B8();
  *(v0 + 40) = sub_21E4DC8F8();
  result = sub_21E4DC8A8();
  *(v0 + 48) = result;
  qword_27CEC8878 = v0;
  return result;
}

void sub_21E46480C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogInteractionManager);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v3;

    swift_unknownObjectWeakAssign();
    a1 = Strong;
  }
}

void (*sub_21E4648B0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_popoverViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21E464948;
}

void sub_21E464948(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v5 = *(v3 + 32);
    swift_endAccess();

    if (*(v5 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogInteractionManager))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
    }
  }

  free(v3);
}

uint64_t sub_21E464A4C()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_allowDrillingInAndOut;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21E464AE4(char a1)
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_allowDrillingInAndOut;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if (a1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogInteractionManager);
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager_previousCard);
      *(v4 + OBJC_IVAR____TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager_previousCard) = 0;
    }
  }
}

void (*sub_21E464B5C(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_allowDrillingInAndOut;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21E464BE4;
}

void sub_21E464BE4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + v3[4]) == 1)
    {
      v5 = *(v4 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogInteractionManager);
      if (v5)
      {
        v6 = *(v5 + OBJC_IVAR____TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager_previousCard);
        *(v5 + OBJC_IVAR____TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager_previousCard) = 0;
      }
    }
  }

  free(v3);
}

BOOL sub_21E464C84()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v2 = v1[4];
  v3 = v1[3] & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (v3 || *(v1[9] + 16) || v1[11])
  {
    return 0;
  }

  v5 = v1[14];
  if (v5 >> 62)
  {
    v6 = sub_21E4DD488();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 == 0;
}

id SiriSharedUISmartDialogContainer.__allocating_init(delegate:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_21E4693E4();
  swift_unknownObjectRelease();
  return v2;
}

id SiriSharedUISmartDialogContainer.init(delegate:)()
{
  v0 = sub_21E4693E4();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21E464DC8()
{
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v0 = sub_21E4DBCC8();
  __swift_project_value_buffer(v0, qword_280C14558);
  v1 = sub_21E4DD1F8();
  strcpy(v13, "reloadView()");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  v2 = sub_21E45C20C(0);
  if (v3)
  {
    v11 = 32;
    v12 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("T@NSString,N,R" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v11 = 32;
    v12 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000025, 0x800000021E4ED8F0);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v5 = v13[0];
  v4 = v13[1];
  v6 = sub_21E4DBCB8();
  if (os_log_type_enabled(v6, v1))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    v9 = sub_21E426648(v5, v4, &v11);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_21E3EB000, v6, v1, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x223D5BF10](v8, -1, -1);
    MEMORY[0x223D5BF10](v7, -1, -1);
  }

  else
  {
  }

  type metadata accessor for SmartDialogData();
  sub_21E469AD4();
  sub_21E4DBD78();
  sub_21E4DBDB8();

  return sub_21E465130();
}

uint64_t sub_21E465130()
{
  v1 = sub_21E4DCDB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SiriSharedUIReducedMotionEnabled() && *(*(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData) + 232) != 1)
  {
    v5 = MEMORY[0x277D63EF0];
  }

  else
  {
    v5 = MEMORY[0x277D63EF8];
  }

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5CD0) + 48);
  v7 = *v5;
  v8 = sub_21E4DCDD8();
  (*(*(v8 - 8) + 104))(v4, v7, v8);
  v9 = *MEMORY[0x277D63F00];
  v10 = sub_21E4DCDE8();
  (*(*(v10 - 8) + 104))(&v4[v6], v9, v10);
  (*(v2 + 104))(v4, *MEMORY[0x277D63ED8], v1);
  sub_21E4DBD88();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_21E465348()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController + 24);
  v2 = *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController + 32);
  __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_21E465430(double a1, double a2)
{
  result = sub_21E464C84();
  if ((result & 1) == 0)
  {
    v6 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController + 24);
    v7 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController + 32);
    __swift_project_boxed_opaque_existential_0Tm((v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController), v6);
    return (*(v7 + 8))(v6, v7, a1, a2);
  }

  return result;
}

uint64_t sub_21E46556C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_21E4DD3A8();

  MEMORY[0x223D5ACB0](a1, a2);
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v7 = sub_21E4DBCC8();
  __swift_project_value_buffer(v7, qword_280C14558);
  v8 = sub_21E4DD1F8();
  v26 = 0xD000000000000019;
  v27 = 0x800000021E4ED920;
  v9 = sub_21E45C20C(0);
  if (v10)
  {
    v24 = 32;
    v25 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v9);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v11 = (0x800000021E4ED940 >> 56) & 0xF;
  if ((0x800000021E4ED940 & 0x2000000000000000) == 0)
  {
    v11 = 32;
  }

  if (v11)
  {
    v24 = 32;
    v25 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000020, 0x800000021E4ED940);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v13 = v26;
  v12 = v27;
  v14 = sub_21E4DBCB8();
  if (os_log_type_enabled(v14, v8))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = sub_21E426648(v13, v12, &v24);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_21E3EB000, v14, v8, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x223D5BF10](v16, -1, -1);
    MEMORY[0x223D5BF10](v15, -1, -1);
  }

  else
  {
  }

  v18 = *(v4 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v19 = a3;
  v20 = sub_21E4DC948();
  v21 = *(v18 + 16);
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  *(*(v18 + 16) + 32) = v20;
}

uint64_t sub_21E4658BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_21E4DD3A8();

  MEMORY[0x223D5ACB0](a1, a2);
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v6 = sub_21E4DBCC8();
  __swift_project_value_buffer(v6, qword_280C14558);
  v7 = sub_21E4DD1F8();
  v21 = 0xD000000000000011;
  v22 = 0x800000021E4ED970;
  v8 = sub_21E45C20C(0);
  if (v9)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v8);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v10 = (0x800000021E4ED990 >> 56) & 0xF;
  if ((0x800000021E4ED990 & 0x2000000000000000) == 0)
  {
    v10 = 30;
  }

  if (v10)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000001ELL, 0x800000021E4ED990);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v12 = v21;
  v11 = v22;
  v13 = sub_21E4DBCB8();
  if (os_log_type_enabled(v13, v7))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    v16 = sub_21E426648(v12, v11, &v19);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_21E3EB000, v13, v7, "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x223D5BF10](v15, -1, -1);
    MEMORY[0x223D5BF10](v14, -1, -1);
  }

  else
  {
  }

  v17 = *(v3 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
}