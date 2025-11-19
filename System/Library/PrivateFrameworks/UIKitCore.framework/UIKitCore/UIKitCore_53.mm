uint64_t sub_1890321B4(uint64_t a1, float a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A730);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v74 - v8;
  v10 = sub_18A4A4428();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v74 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v74 - v25;
  v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v27);
  v30 = &v74 - v28;
  v86 = v9;
  v87 = v11;
  v31 = *(v11 + 104);
  v84 = v31;
  v85 = v6;
  v79 = v33;
  v80 = v32;
  if (a1 == 1)
  {
    v34 = MEMORY[0x1E697DBB8];
  }

  else
  {
    if (a1 != 2)
    {
      (v31)(&v74 - v28, *MEMORY[0x1E697DBB8], v10, v29.n128_f64[0]);
      goto LABEL_7;
    }

    v34 = MEMORY[0x1E697DBA8];
  }

  (v31)(v23, *v34, v10, v29);
  v35 = *(v87 + 32);
  v35(v26, v23, v10);
  v35(v30, v26, v10);
LABEL_7:
  type metadata accessor for UIScrollEdgeEffectStyle(0);
  v36 = v83;
  v81 = *(v83 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect);
  v37 = [v81 style];
  v38 = [objc_opt_self() hardStyle];
  v39 = sub_18A4A7C88();

  if ((v39 & 1) == 0 && *(v36 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency) != 1)
  {
    if (qword_1EA931E00 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for ScrollEdgeEffectView.Params(0);
    v49 = __swift_project_value_buffer(v48, qword_1EA995128);
    v50 = *(v48 + 68);
    v51 = sub_18A4A2FD8();
    v78 = &v74;
    v52 = MEMORY[0x1EEE9AC00](v51);
    v54 = &v74 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    v76 = v55;
    (*(v55 + 16))(v54, v49 + v50, v51, v52);
    v56 = sub_18A4A2FB8();
    v74 = *(v56 - 8);
    v75 = v56;
    v57 = MEMORY[0x1EEE9AC00](v56);
    v59 = &v74 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    v60 = [v81 _preferredUserInterfaceStyle];
    if (!v60)
    {
      v61 = [*(v36 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment) traitCollection];
      v62 = [v61 userInterfaceStyle];

      v60 = v62;
    }

    v63 = MEMORY[0x1E697DBB8];
    v77 = v51;
    if (v60 == 1)
    {
      v83 = &v74;
      v64 = v82;
      v65 = v84;
    }

    else
    {
      v64 = v82;
      v65 = v84;
      if (v60 != 2)
      {
        v84(v82, *MEMORY[0x1E697DBB8], v10);
        v47 = v87;
        v69 = v76;
        goto LABEL_27;
      }

      v83 = &v74;
      v63 = MEMORY[0x1E697DBA8];
    }

    v66 = v80;
    v65(v80, *v63, v10);
    v47 = v87;
    v67 = *(v87 + 32);
    v68 = v79;
    v67(v79, v66, v10);
    v67(v64, v68, v10);
    v69 = v76;
LABEL_27:
    v70 = v75;
    sub_18A4A2FA8();
    sub_18A4A2F98();
    (*(v74 + 8))(v59, v70);
    (*(v69 + 8))(v54, v77);
    v46 = *(v47 + 32);
    v43 = v85;
    v42 = v86;
    v45 = MEMORY[0x1E697DBB8];
    goto LABEL_28;
  }

  v40 = v87 + 8;
  (*(v87 + 8))(v30, v10);
  v41 = (v40 + 24);
  v43 = v85;
  v42 = v86;
  v44 = MEMORY[0x1E697DBA8];
  if (a1 == 2)
  {
    v45 = MEMORY[0x1E697DBB8];
    if (a2 > 0.7)
    {
      v44 = MEMORY[0x1E697DBB8];
    }

    v84(v20, *v44, v10);
    v46 = *v41;
    (*v41)(v30, v20, v10);
  }

  else
  {
    v45 = MEMORY[0x1E697DBB8];
    if (a2 >= 0.4)
    {
      v44 = MEMORY[0x1E697DBB8];
    }

    v84(v17, *v44, v10);
    v46 = *v41;
    (*v41)(v30, v17, v10);
  }

  v47 = v87;
LABEL_28:
  v46(v42, v30, v10);
  v71 = 1;
  (*(v47 + 56))(v42, 0, 1, v10);
  sub_188A3F29C(v42, v43, &qword_1EA93A730);
  v72 = (*(v47 + 88))(v43, v10);
  if (v72 != *v45)
  {
    if (v72 == *MEMORY[0x1E697DBA8])
    {
      v71 = 2;
    }

    else
    {
      (*(v47 + 8))(v43, v10);
      v71 = 0;
    }
  }

  sub_188A3F5FC(v42, &qword_1EA93A730);
  return v71;
}

void sub_1890329C4(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1890314C4(0, a1);
    v4 = &v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_previousEffectiveLuma];
    *v4 = 0;
    v4[8] = 1;
  }
}

void sub_189032A44(uint64_t a1, char a2, uint64_t a3, float a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment);
  v5 = 0;
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_scrollVelocity);
  }

  *(v4 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_scrollVelocity) = v5;
  v6 = v4 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle;
  v7 = *(v4 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle + 8);
  v8 = *(v4 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle + 16);
  v9 = *(v4 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle);
  *v6 = LODWORD(a4);
  *(v6 + 8) = a3;
  *(v6 + 16) = 0;
  if ((v8 & 1) != 0 || (v9 == a4 ? (v10 = v7 == a3) : (v10 = 0), !v10))
  {
    sub_188FF9CF8();
  }
}

__n128 sub_189032ACC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_observableState);
  *v12 = *(a2 + 1);
  *&v12[16] = a2[4];
  v12[24] = 0;
  if ((*(v3 + 56) & 1) == 0 && (v4 = *(v3 + 16), *&v2 == *&v4) && (*(&v2 + 1) == *(&v4 + 1) ? (v5 = *(a2 + 2) == *(v3 + 24)) : (v5 = 0), v5 ? (v6 = *(v3 + 32) == *(a2 + 2)) : (v6 = 0), v6 ? (v7 = *(v3 + 40) == a2[3]) : (v7 = 0), v7 ? (v8 = *(v3 + 48) == a2[4]) : (v8 = 0), v8))
  {
    result = *&v12[9];
    *(&v11 + 1) = *(a2 + 2);
    *&v11 = *a2;
    *(v3 + 16) = v11;
    *(v3 + 32) = *v12;
    *(v3 + 41) = *&v12[9];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188B5510C(&qword_1EA93A728, type metadata accessor for ScrollEdgeEffectView.ObservableState);
    sub_18A4A2BF8();
  }

  return result;
}

id sub_189032D20()
{
  v1 = v0;
  v2 = _UIShowPocketMask();
  if (qword_1EA931E00 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  v4 = __swift_project_value_buffer(v3, qword_1EA995128);
  v4[1] = v2;
  v5 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_debugOverlay;
  v6 = 1;
  swift_beginAccess();
  v7 = *&v1[v5];
  if (v7)
  {
    v8 = v7;
    sub_188FF83B0();
    [v8 removeFromSuperview];

    v9 = *&v1[v5];
    *&v1[v5] = 0;

    v6 = *&v1[v5] == 0;
  }

  if (v6 && ((*v4 | v2) & 1) != 0)
  {
    _s9DebugViewCMa();
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_1890314C4(1, 0.0);
    v11 = *&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMask];
    v12 = v11;
    sub_188FF7D10(v11);
    v13 = v10;
    [v13 setAlpha_];
    [v13 setUserInteractionEnabled_];

    v14 = *&v1[v5];
    *&v1[v5] = v13;
  }

  return [v1 setNeedsLayout];
}

void sub_189032EFC()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_188AF8408(0xD00000000000002CLL, 0x800000018A6A0410, 1u);

    byte_1EA93A640 = v2 & 1;
  }

  else
  {
    __break(1u);
  }
}

void *sub_189032F64()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v182 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201.receiver = v1;
  v201.super_class = ObjectType;
  objc_msgSendSuper2(&v201, sel_layoutSubviews, v4);
  v6 = *&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_elementModel];
  v7 = type metadata accessor for UIScrollEdgeEffectStyle(0);
  v8 = *&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect];
  v9 = [v8 style];
  v10 = objc_opt_self();
  v11 = [v10 hardStyle];
  v186 = v7;
  LOBYTE(v7) = sub_18A4A7C88();

  v12 = 1;
  if ((v7 & 1) == 0)
  {
    v12 = v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency];
  }

  *(v6 + 17) = v12;
  v13 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_edge;
  v14 = *&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_edge];
  if ((v14 & 4) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if (v14)
  {
    v15 = 0;
  }

  *(v6 + 16) = v15;
  sub_188FFC404(v1, v192);
  v16 = *&v1[v13];
  Height = 0.0;
  v187 = v6;
  if (v16 > 3)
  {
    if (v16 != 4)
    {
      if (v16 == 8)
      {
        [v1 bounds];
        MaxX = CGRectGetMaxX(v203);
        goto LABEL_15;
      }

LABEL_16:
      MinX = 0.0;
      MinY = 0.0;
      goto LABEL_17;
    }

    [v1 bounds];
    MinX = CGRectGetMinX(v208);
    [v1 bounds];
    MaxY = CGRectGetMaxY(v209);
  }

  else
  {
    if (v16 != 1)
    {
      if (v16 == 2)
      {
        [v1 bounds];
        MaxX = CGRectGetMinX(v202);
LABEL_15:
        MinX = MaxX;
        [v1 bounds];
        MinY = CGRectGetMinY(v204);
        [v1 bounds];
        Height = CGRectGetHeight(v205);
LABEL_17:
        v21 = 0.0;
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    [v1 bounds];
    MinX = CGRectGetMinX(v206);
    [v1 bounds];
    MaxY = CGRectGetMinY(v207);
  }

  MinY = MaxY;
  [v1 bounds];
  Width = CGRectGetWidth(v210);
  Height = 0.0;
  v21 = Width;
LABEL_21:
  LODWORD(v24) = v193;
  v25 = MinX;
  if (v193 == 1)
  {
    v26 = MinY;
    *(&Height - 3) = CGRectUnion(*(&Height - 3), v198);
    MinY = v27;
  }

  [*&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_touchBlocker] setFrame_];
  sub_1890310FC();
  sub_189034138();
  v28 = *&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMaskedBlur];
  v29 = [v8 style];
  v30 = [v10 hardStyle];
  v31 = sub_18A4A7C88();

  if ((v31 & 1) == 0)
  {
    v34 = v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency];
    v35 = v28[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_useHardEdges];
    v28[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_useHardEdges] = v34;
    v33 = v28;
    if (v34 == v35)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v32 = v28[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_useHardEdges];
  v28[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_useHardEdges] = 1;
  v33 = v28;
  if ((v32 & 1) == 0)
  {
LABEL_27:
    sub_188FFAE38();
  }

LABEL_28:
  if (qword_1EA931E00 != -1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    v183 = __swift_project_value_buffer(v3, qword_1EA995128);
    sub_188FFA68C(*(v183 + 32));
    v36 = [v8 style];
    v37 = [v10 hardStyle];
    v38 = sub_18A4A7C88();

    v39 = v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency];
    LODWORD(v181) = v24;
    if (v38)
    {
      if (v39)
      {
        goto LABEL_33;
      }

      v40 = [v8 _prefersSolidColorHardPocket] ^ 1;
    }

    else
    {
      v40 = v24;
      if (v39)
      {
LABEL_33:
        v41 = v33[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurEnabled];
        v33[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurEnabled] = 0;
        if ((v41 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_36:
        [v33 setNeedsLayout];
        goto LABEL_37;
      }
    }

    v42 = v33[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurEnabled];
    v33[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurEnabled] = v40;
    if (v40 != v42)
    {
      goto LABEL_36;
    }

LABEL_37:
    v184 = v33;
    v43 = *&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment];
    v44 = [v8 style];
    v45 = [v10 _clearStyle];
    v46 = sub_18A4A7C88();

    [v43 setHidden_];
    v47 = [v8 style];
    v185 = v10;
    v48 = [v10 hardStyle];
    v49 = sub_18A4A7C88();

    if ((v49 & 1) != 0 || v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency] == 1)
    {
      v50 = v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHeavyReplay];
      v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHeavyReplay] = 0;
      v51 = v187;
      if ((v50 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_40:
      [v43 setNeedsLayout];
      goto LABEL_41;
    }

    v122 = *(v200 + 16) == 0;
    v123 = v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHeavyReplay];
    v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHeavyReplay] = v122;
    v51 = v187;
    if (v122 != v123)
    {
      goto LABEL_40;
    }

LABEL_41:
    result = swift_unknownObjectUnownedLoadStrong();
    v53 = v184;
    if (!result)
    {
      break;
    }

    v54 = result;
    v55 = v194;
    v56 = v195;
    v179 = v197;
    v180 = v196;
    [result convertRect:v184 toCoordinateSpace:{v194, v195}];
    x = v57;
    y = v59;
    v62 = v61;
    v64 = v63;

    if (qword_1EA931E08 != -1)
    {
      swift_once();
    }

    if (byte_1EA93A640 == 1 && *(v51 + 16) <= 1u)
    {
      [v1 bounds];
      v177 = v56;
      v178 = v55;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;
      [v1 safeAreaInsets];
      v73 = v66;
      v74 = v70;
      v56 = v177;
      v55 = v178;
      v220.origin.x = UIRectInset(v73, v68, v74, v72, 0.0, v76, 0.0, v75);
      v220.origin.y = v77;
      v220.size.width = v78;
      v220.size.height = v79;
      v211.origin.x = x;
      v211.origin.y = y;
      v211.size.width = v62;
      v211.size.height = v64;
      v212 = CGRectIntersection(v211, v220);
      x = v212.origin.x;
      y = v212.origin.y;
      v62 = v212.size.width;
      v64 = v212.size.height;
    }

    v80 = [v53 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setLumaSubrect_];

    v81 = *&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMask];
    sub_188FFB85C(v81, v191);
    v82 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_layout;
    swift_beginAccess();
    sub_188A3F29C(v81 + v82, v188, &qword_1EA939CB0);
    swift_beginAccess();
    sub_1890368A0(v191, v81 + v82);
    swift_endAccess();
    sub_188FFD260(v188);
    sub_188A3F5FC(v188, &qword_1EA939CB0);
    sub_188A3F5FC(v191, &qword_1EA939CB0);
    v83 = v182;
    sub_188FFA2B0(v183, v182);
    v84 = [v1 traitCollection];
    [v84 userInterfaceIdiom];

    v85 = sub_18902FC24();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    sub_188FFA314(v83);
    sub_188FFF338(v85, v89, v91 & 1, v87);

    v92 = [v8 style];
    v93 = [v185 hardStyle];
    LOBYTE(v89) = sub_18A4A7C88();

    if (v89)
    {
      v94 = 1;
    }

    else
    {
      v94 = v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency];
    }

    [v81 setHidden_];
    [v1 bounds];
    [v81 setFrame_];
    [v1 bounds];
    [v43 setFrame_];
    v95 = [v8 style];
    v96 = [v185 hardStyle];
    v97 = sub_18A4A7C88();

    v98 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
    if ((v97 & 1) == 0)
    {
      v101 = v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency];
      v102 = v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHardEdges];
      v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHardEdges] = v101;
      v100 = v187;
      if (v101 == v102)
      {
        goto LABEL_55;
      }

LABEL_54:
      [v43 setNeedsLayout];
      goto LABEL_55;
    }

    v99 = v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHardEdges];
    v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHardEdges] = 1;
    v100 = v187;
    if ((v99 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_55:
    v103 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency;
    if (v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency] == 1)
    {
      v104 = v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_prefersSolidColorHardPocket];
      v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_prefersSolidColorHardPocket] = 1;
      if (v104)
      {
        goto LABEL_60;
      }

LABEL_59:
      [v43 setNeedsLayout];
      goto LABEL_60;
    }

    v105 = [v8 _prefersSolidColorHardPocket];
    v106 = v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_prefersSolidColorHardPocket];
    v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_prefersSolidColorHardPocket] = v105;
    if (v105 != v106)
    {
      goto LABEL_59;
    }

LABEL_60:
    v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_hasFloatingElements] = v181;
    v107 = [v8 _preferredUserInterfaceStyle];
    *&v43[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_preferredUserInterfaceStyle] = v107;
    v108 = v199.origin.x;
    v109 = v199.origin.y;
    v110 = v199.size.width;
    v111 = v199.size.height;
    IsNull = CGRectIsNull(v199);
    v113 = *&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_additionalDimming];
    if (IsNull)
    {
      [*&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_additionalDimming] setHidden_];
    }

    else
    {
      v177 = v56;
      v178 = v55;
      v114 = [v113 image];
      if (v114)
      {
        v115 = v114;
        [v114 size];
        v117 = v116;
        v119 = v118;

        v120 = (v117 * 0.5 + 120.0) * -0.5;
        v121 = v119 * 0.5 * -0.5;
      }

      else
      {
        v121 = -0.0;
        v120 = -60.0;
      }

      [v1 bounds];
      v124 = CGRectGetWidth(v213);
      [v113 setHidden_];
      if (*(v100 + 16))
      {
        if (*(v100 + 16) == 1)
        {
          v125 = [v8 style];
          v126 = [v185 hardStyle];
          v127 = sub_18A4A7C88();

          v128 = 0.0;
          if ((v127 & 1) == 0 && (v1[v103] & 1) == 0)
          {
            v128 = *(v183 + 80);
          }

          [v113 setAlpha_];
          [v1 bounds];
          v129 = CGRectGetHeight(v214);
          v215.origin.x = v108;
          v215.origin.y = v109;
          v215.size.width = v110;
          v215.size.height = v111;
          v130 = v129 - CGRectGetMinY(v215);
          v131 = v130 + v130;
          [v1 bounds];
          v132 = CGRectGetHeight(v216) - v130;
          v100 = v187;
        }

        else
        {
          v131 = 0.0;
          [v113 setAlpha_];
          v132 = 0.0;
        }
      }

      else
      {
        v133 = [v8 style];
        v134 = [v185 hardStyle];
        v135 = sub_18A4A7C88();

        v136 = 0.0;
        if ((v135 & 1) == 0 && (v1[v103] & 1) == 0)
        {
          v136 = *(v183 + 72);
        }

        [v113 setAlpha_];
        v217.origin.x = v108;
        v217.origin.y = v109;
        v217.size.width = v110;
        v217.size.height = v111;
        v137 = CGRectGetMaxY(v217);
        v131 = v137 + v137;
        v218.origin.x = v108;
        v218.origin.y = v109;
        v218.size.width = v110;
        v218.size.height = v111;
        v132 = -CGRectGetMaxY(v218);
        v100 = v187;
      }

      v138 = 0;
      v139 = v124;
      v140 = v131;
      v219 = CGRectInset(*(&v132 - 1), v120, v121);
      [v113 setFrame_];
      v56 = v177;
      v55 = v178;
    }

    v141 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_debugOverlay;
    swift_beginAccess();
    v142 = *&v1[v141];
    if (!v142)
    {
      goto LABEL_108;
    }

    v3 = v142;
    [v1 addSubview_];
    [v1 bringSubviewToFront_];
    [v1 bounds];
    [v3 setFrame_];
    result = swift_unknownObjectUnownedLoadStrong();
    if (!result)
    {
      goto LABEL_112;
    }

    v143 = result;
    [result convertRect:v3 toCoordinateSpace:{v55, v56, v180, v179}];
    v145 = v144;
    v147 = v146;
    v149 = v148;
    v151 = v150;

    v152 = &v3[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_barRect];
    *v152 = v145;
    v152[1] = v147;
    v152[2] = v149;
    v152[3] = v151;
    *(v152 + 32) = 0;
    v153 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_bar;
    [*&v3[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_bar] setFrame_];
    [*&v3[v153] setHidden_];
    sub_188FF83B0();
    if (*v183 != 1 || _UIShowPocketMask())
    {

      v98 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
LABEL_108:
      [v1 v98[143]];
      [v184 setFrame_];
      return sub_188FFF4E4(v192);
    }

    sub_188FFBD88();
    swift_beginAccess();
    v154 = *(v100 + 24);
    v24 = v154 + 64;
    v155 = 1 << *(v154 + 32);
    v156 = -1;
    if (v155 < 64)
    {
      v156 = ~(-1 << v155);
    }

    v157 = v156 & *(v154 + 64);
    v185 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_overlays;
    v33 = ((v155 + 63) >> 6);

    v10 = 0;
    while (v157)
    {
LABEL_95:
      v159 = __clz(__rbit64(v157));
      v157 &= v157 - 1;
      sub_188FA952C(*(v154 + 56) + ((v10 << 11) | (32 * v159)), v191);
      sub_188F166A0(v191, v188);
      if (v189 == 5)
      {
        if (*(v187 + 17) != 1)
        {
          goto LABEL_89;
        }
      }

      else if (v189 == -1)
      {
        goto LABEL_89;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v161 = Strong;
        [Strong _frameInView_cache_];
        v163 = v162;
        v165 = v164;
        v167 = v166;
        v169 = v168;
        v186 = v161;
        v8 = [v161 _style];
        v170 = [v3 superview];
        if (v170)
        {
          v183 = v154;

          v171 = [objc_allocWithZone(UIView) initWithFrame_];
          v172 = objc_opt_self();
          v173 = &selRef_purpleColor;
          if (v8 != 4)
          {
            v173 = &selRef_blueColor;
          }

          if (v8 == 1)
          {
            v173 = &selRef_greenColor;
          }

          v182 = [v172 *v173];
          v174 = [v182 colorWithAlphaComponent_];
          [v171 setBackgroundColor_];

          v8 = v185;
          swift_beginAccess();
          v175 = v171;
          MEMORY[0x18CFE2450]();
          if (*((*(v8 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v8 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v181 = *((*(v8 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_18A4A7588();
            v8 = v185;
          }

          sub_18A4A75F8();
          swift_endAccess();
          [v3 addSubview_];

          v154 = v183;
        }

        swift_unknownObjectRelease();
      }

LABEL_89:
      sub_188FFD074(v188);
    }

    while (1)
    {
      v158 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v158 >= v33)
      {

        v98 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
        goto LABEL_108;
      }

      v157 = *(v24 + 8 * v158);
      ++v10;
      if (v157)
      {
        v10 = v158;
        goto LABEL_95;
      }
    }

    __break(1u);
LABEL_110:
    swift_once();
  }

  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

void sub_189034138()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_debugOverlay;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    if (*(*(v1 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_elementModel) + 17) == 1)
    {
      v4 = objc_opt_self();
      v5 = v3;
      v6 = v4;
      v7 = &selRef_yellowColor;
LABEL_12:
      v17 = [v6 *v7];
      v18 = *&v3[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_debugColor];
      *&v3[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_debugColor] = v17;
      v19 = v17;

      sub_188FF7B68();
      return;
    }

    v8 = *(v1 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect);
    v9 = v3;
    v10 = [v8 _color];
    if (!v10)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_11;
      }

      v14 = Strong;
      v15 = [Strong backgroundColor];
      if (!v15 || (v10 = v15, v16 = [(UIView *)v14 _willInterpretColorAsMaterial:v15], v14, v14 = v10, v16))
      {

        goto LABEL_11;
      }
    }

    [v10 alphaComponent];
    v12 = v11;

    if (v12 >= 1.0)
    {
      v6 = objc_opt_self();
      v7 = &selRef_orangeColor;
      goto LABEL_12;
    }

LABEL_11:
    v6 = objc_opt_self();
    v7 = &selRef_redColor;
    goto LABEL_12;
  }
}

void sub_189034384()
{
  v1 = v0;
  v2 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIScrollEdgeEffectStyle(0);
  v5 = [*&v0[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect] style];
  v6 = [objc_opt_self() hardStyle];
  v7 = sub_18A4A7C88();

  if ((v7 & 1) == 0 && (*(v1 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency) & 1) == 0)
  {
    if (qword_1EA931E00 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_1EA995128);
    sub_188FFA2B0(v8, v4);
    v9 = [v1 traitCollection];
    [v9 userInterfaceIdiom];

    v10 = sub_18902FC24();
    sub_188FFA314(v4);
  }
}

id sub_18903454C(id result)
{
  v2 = v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency];
  v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency] = result;
  if (v2 != (result & 1))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong setNeedsLayout];
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_189034634()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_didMoveToWindow);
  v1 = *&v0[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_observableState];
  v2 = [v0 window];
  v3 = v2;
  if (v2)
  {
  }

  if (((v3 != 0) ^ *(v1 + 58)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188B5510C(&qword_1EA93A728, type metadata accessor for ScrollEdgeEffectView.ObservableState);
    sub_18A4A2BF8();
  }

  else
  {
    *(v1 + 58) = v3 != 0;
  }

  return sub_188F61FB0();
}

__n128 sub_1890347EC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_188B5510C(&qword_1EA93A728, type metadata accessor for ScrollEdgeEffectView.ObservableState);
  sub_18A4A2C08();

  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  result = *(v1 + 16);
  v6 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

__n128 sub_1890348A4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188B5510C(&qword_1EA93A728, type metadata accessor for ScrollEdgeEffectView.ObservableState);
  sub_18A4A2C08();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  result = *(v3 + 16);
  v7 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

double sub_18903495C(__int128 *a1)
{
  v1 = a1[1];
  v3 = *a1;
  v4[0] = v1;
  *(v4 + 9) = *(a1 + 25);
  *&result = sub_18903499C(&v3).n128_u64[0];
  return result;
}

__n128 sub_18903499C(uint64_t a1)
{
  if ((*(v1 + 56) & 1) == 0)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      v2 = COERCE_FLOAT(*(v1 + 16)) == COERCE_FLOAT(*a1) && COERCE_FLOAT(HIDWORD(*(v1 + 16))) == COERCE_FLOAT(HIDWORD(*a1));
      v3 = v2 && COERCE_FLOAT(*(v1 + 24)) == COERCE_FLOAT(*(a1 + 8));
      v4 = v3 && *(v1 + 32) == *(a1 + 16);
      v5 = v4 && *(v1 + 40) == *(a1 + 24);
      if (v5 && *(v1 + 48) == *(a1 + 32))
      {
        goto LABEL_22;
      }
    }

LABEL_21:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188B5510C(&qword_1EA93A728, type metadata accessor for ScrollEdgeEffectView.ObservableState);
    sub_18A4A2BF8();

    return result;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  v9 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v9;
  result = *(a1 + 25);
  *(v1 + 41) = result;
  return result;
}

uint64_t sub_189034B1C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_188B5510C(&qword_1EA93A728, type metadata accessor for ScrollEdgeEffectView.ObservableState);
  sub_18A4A2C08();

  *a1 = *(v1 + 57);
  return result;
}

unsigned __int8 *sub_189034BC4(unsigned __int8 *result)
{
  if (*(v1 + 57) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188B5510C(&qword_1EA93A728, type metadata accessor for ScrollEdgeEffectView.ObservableState);
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_189034CD4()
{
  swift_getKeyPath();
  sub_188B5510C(&qword_1EA93A728, type metadata accessor for ScrollEdgeEffectView.ObservableState);
  sub_18A4A2C08();

  return *(v0 + 58);
}

uint64_t sub_189034D74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188B5510C(&qword_1EA93A728, type metadata accessor for ScrollEdgeEffectView.ObservableState);
  sub_18A4A2C08();

  *a2 = *(v3 + 58);
  return result;
}

uint64_t sub_189034E44(uint64_t result)
{
  if (*(v1 + 58) == (result & 1))
  {
    *(v1 + 58) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188B5510C(&qword_1EA93A728, type metadata accessor for ScrollEdgeEffectView.ObservableState);
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_189034F54()
{
  v1 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectViewP33_A8A62288E15893CDC14B9FB558CFED1E15ObservableState___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

__CFString *sub_18903510C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_18A4A80E8();
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v17, sel_description);
  v4 = sub_18A4A7288();
  v6 = v5;

  v18 = v4;
  v19 = v6;
  MEMORY[0x18CFE22D0](0x203D206567646520, 0xE800000000000000);
  result = _NSStringFromUIRectEdge(*&v0[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_edge]);
  if (result)
  {
    v8 = result;
    v9 = sub_18A4A7288();
    v11 = v10;

    MEMORY[0x18CFE22D0](v9, v11);

    MEMORY[0x18CFE22D0](0x797453616D756C20, 0xEE0028203D20656CLL);
    v12 = *&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_observableState];
    swift_getKeyPath();
    v20 = v12;
    sub_188B5510C(&qword_1EA93A728, type metadata accessor for ScrollEdgeEffectView.ObservableState);
    sub_18A4A2C08();

    if (*(v12 + 58) == 1 && (swift_getKeyPath(), v20 = v12, sub_18A4A2C08(), , (*(v12 + 56) & 1) == 0))
    {
      v13 = *(v12 + 32);
      v14 = *(v12 + 24);
      v20 = *(v12 + 16);
      LODWORD(v21) = v14;
      v22 = v13;
      v23 = *(v12 + 40);
      v15 = sub_189035AF8();
      MEMORY[0x18CFE22D0](v15);
    }

    else
    {
      MEMORY[0x18CFE22D0](1701736302, 0xE400000000000000);
    }

    MEMORY[0x18CFE22D0](0x6E656D656C652029, 0xED0000203D207374);
    sub_188F9257C();
    swift_unknownObjectRetain();
    v16 = sub_18A4A7418();
    MEMORY[0x18CFE22D0](v16);

    MEMORY[0x18CFE22D0](30768, 0xE200000000000000);

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_189035580()
{
  result = sub_18A4A2C48();
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

double sub_18903568C(uint64_t a1)
{
  v3 = OBJC_IVAR____UIScrollPocketElementFrameCache_storage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 32 * v5);
  }

  else
  {
    v7 = MEMORY[0x1E695F050];
  }

  v8 = *v7;
  swift_endAccess();
  return v8;
}

uint64_t sub_18903590C()
{
  result = sub_18A4A2FD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollEdgeEffectView.Params.Blur(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollEdgeEffectView.Params.Blur(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

BOOL sub_189035AAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_189035D4C(v5, v7);
}

__CFString *sub_189035AF8()
{
  v1 = v0;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0x203D20616D756CLL, 0xE700000000000000);
  sub_18A4A7778();
  MEMORY[0x18CFE22D0](0xD000000000000012, 0x800000018A6A00A0);
  sub_18A4A7778();
  MEMORY[0x18CFE22D0](0xD000000000000013, 0x800000018A6A00C0);
  sub_18A4A7778();
  MEMORY[0x18CFE22D0](0x64615272756C6220, 0xEE00203D20737569);
  v2 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v2);

  MEMORY[0x18CFE22D0](0xD00000000000001ELL, 0x800000018A6A00E0);
  result = _NSStringFromUIUserInterfaceStyle(*(v0 + 24));
  if (result)
  {
    v4 = result;
    v5 = sub_18A4A7288();
    v7 = v6;

    MEMORY[0x18CFE22D0](v5, v7);

    MEMORY[0x18CFE22D0](0xD00000000000001BLL, 0x800000018A6A0100);
    result = _NSStringFromUIUserInterfaceStyle(*(v1 + 32));
    if (result)
    {
      v8 = result;
      v9 = sub_18A4A7288();
      v11 = v10;

      MEMORY[0x18CFE22D0](v9, v11);

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_189035D28(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_previousEffectiveLuma];
  *v1 = 0;
  v1[8] = 1;
  return [a1 setNeedsLayout];
}

id sub_189035DB8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = _UIKitUserDefaults();
  if (result)
  {
    v5 = result;
    v6 = sub_18A4A7258();
    v7 = [v5 objectForKey_];

    if (v7)
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      sub_188A55538(&v9, v10);
      sub_188A3F5FC(v10, &qword_1EA934050);
      v8 = sub_18A4A7258();
      a3 = [v5 BOOLForKey_];
    }

    else
    {

      memset(v10, 0, sizeof(v10));
      sub_188A3F5FC(v10, &qword_1EA934050);
    }

    return (a3 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_189035EDC()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_18A4A7258();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      sub_188A55538(&v5, v6);
      sub_188A3F5FC(v6, &qword_1EA934050);
      v4 = sub_18A4A7258();
      [v1 doubleForKey_];
    }

    else
    {

      memset(v6, 0, sizeof(v6));
      sub_188A3F5FC(v6, &qword_1EA934050);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_189036008(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = _UIKitUserDefaults();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = (a3 >> 8) & 1;
  v7 = HIWORD(a3) & 1;
  v8 = sub_18A4A7258();
  v9 = [v5 dictionaryForKey_];

  if (v9)
  {
    v10 = sub_18A4A70A8();

    if (*(v10 + 16))
    {
      v11 = sub_188B0944C(0x737569646172, 0xE600000000000000);
      if (v12)
      {
        sub_188A55598(*(v10 + 56) + 32 * v11, v21);
        swift_dynamicCast();
      }
    }

    if (*(v10 + 16))
    {
      v13 = sub_188B0944C(0x7A696C616D726F6ELL, 0xEA00000000006465);
      if (v14)
      {
        sub_188A55598(*(v10 + 56) + 32 * v13, v21);
        if (swift_dynamicCast())
        {
          v6 = v20;
        }
      }
    }

    if (*(v10 + 16))
    {
      v15 = sub_188B0944C(0x726568746964, 0xE600000000000000);
      if (v16)
      {
        sub_188A55598(*(v10 + 56) + 32 * v15, v21);

        if (swift_dynamicCast())
        {
          v7 = v20;
        }

        goto LABEL_16;
      }
    }
  }

LABEL_16:
  if (v6)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 & 0xFFFFFFFE | a3 & 1;
  if (v7)
  {
    v19 = 0x10000;
  }

  else
  {
    v19 = 0;
  }

  return (v18 | v19);
}

void sub_189036224()
{
  v1 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_backgroundCapture;
  _s12BackdropViewCMa();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMask;
  _s10PocketMaskCMa();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMaskedBlur;
  _s10PocketBlurCMa();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment;
  _s19LuminanceAdjustmentCMa();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_additionalDimming;
  v6 = [objc_allocWithZone(UIImageView) initWithFrame_];
  v7 = objc_opt_self();
  v8 = sub_18A4A7258();
  v9 = [v7 kitImageNamed_];

  [v6 setImage_];
  [v6 setAlpha_];
  *(v0 + v5) = v6;
  v10 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_touchBlocker;
  type metadata accessor for ScrollEdgeEffectView.TouchBlocker();
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_debugOverlay) = 0;
  v11 = v0 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_previousEffectiveLuma;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_lumaUpdateSettleTimer) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_edge) = 1;
  *(v0 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_blurAlpha) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_scrollVelocity) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_elementModel;
  _s18PocketElementModelCMa();
  v13 = swift_allocObject();
  *(v13 + 16) = 2;
  *(v13 + 18) = 0;
  *(v13 + 24) = MEMORY[0x1E69E7CC8];
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 1;
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_observableState;
  type metadata accessor for ScrollEdgeEffectView.ObservableState(0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 57) = 2;
  sub_18A4A2C38();
  *(v0 + v14) = v15;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_189036514()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect) style];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 automaticStyle];
  type metadata accessor for UIScrollEdgeEffectStyle(0);
  v6 = sub_18A4A7C88();

  if (v6)
  {

    v7 = 0x75613D656C797473;
    v8 = 0xEF636974616D6F74;
  }

  else
  {
    v9 = v4;
    v10 = [v3 softStyle];
    v11 = sub_18A4A7C88();

    if (v11)
    {

      v7 = 0x6F733D656C797473;
      v8 = 0xEA00000000007466;
    }

    else
    {
      v16 = v9;
      v17 = [v3 hardStyle];
      v18 = sub_18A4A7C88();

      if (v18)
      {

        v7 = 0x61683D656C797473;
        v8 = 0xEA00000000006472;
      }

      else
      {
        v19 = [v3 _clearStyle];
        v20 = sub_18A4A7C88();

        if (v20)
        {
          v7 = 0x6C633D656C797473;
          v8 = 0xEB00000000726165;
        }

        else
        {
          v7 = 0x6E753D656C797473;
          v8 = 0xED00006E776F6E6BLL;
        }
      }
    }
  }

  MEMORY[0x18CFE22D0](v7, v8);
  v12 = *(*(v1 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment) + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor);
  if (v12)
  {
    v13 = v12;
    MEMORY[0x18CFE22D0](0xD000000000000018, 0x800000018A6A0140);
  }

  else
  {
    MEMORY[0x18CFE22D0](0xD00000000000001ALL, 0x800000018A6A0120);
  }

  if ((*(*(v1 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_backgroundCapture) + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma + 8) & 1) == 0)
  {
    v14 = sub_18A4A76F8();
    MEMORY[0x18CFE22D0](v14);

    MEMORY[0x18CFE22D0](0x3D616D756C20, 0xE600000000000000);
  }

  return 0;
}

__n128 sub_189036868()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 41) = *(v2 + 25);
  *(v1 + 16) = result;
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_1890368A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939CB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_189036970(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_188C5E0DC();
  sub_18A4A70A8();
  v1();

  v2 = sub_18A4A7088();

  return v2;
}

uint64_t sub_189036A30()
{
  if (!*(v0 + OBJC_IVAR___UITextFormattingKeyboardSession_textFormattingViewController))
  {
    return 0;
  }

  [*(v0 + OBJC_IVAR___UITextFormattingKeyboardSession_textFormattingViewController) _preferredCornerRadiusForAnimationOptionsSheet];
  return v1;
}

void sub_189036A80()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v2 = Strong;
  v28 = &unk_1EFE896F0;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (!v3)
  {

LABEL_22:
    v16 = objc_opt_self();
    v18 = 0;
    v15 = 0;
    v14 = 0;
    goto LABEL_23;
  }

  v4 = v3;
  if (([v3 respondsToSelector_] & 1) != 0 && (v5 = objc_msgSend(v4, sel__supportedAnimationNamesForTextFormatting)) != 0)
  {
    v6 = v5;
    v7 = sub_18A4A7548();
  }

  else
  {
    v7 = 0;
  }

  if (([v4 respondsToSelector_] & 1) != 0 && (v8 = objc_msgSend(v4, sel__supportedAnimationTitlesForTextFormatting)) != 0)
  {
    v9 = v8;
    v10 = sub_18A4A70A8();
  }

  else
  {
    v10 = 0;
  }

  if ([v4 respondsToSelector_])
  {
    v11 = [v4 _supportedAnimationAccessibilityHintsForTextFormatting];
    if (v11)
    {
      v12 = v11;
      v13 = sub_18A4A70A8();

      if (!v7)
      {
        goto LABEL_14;
      }

LABEL_17:
      v14 = sub_18A4A7518();

      if (!v10)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }

  v13 = 0;
  if (v7)
  {
    goto LABEL_17;
  }

LABEL_14:
  v14 = 0;
  if (!v10)
  {
LABEL_15:
    v15 = 0;
    goto LABEL_19;
  }

LABEL_18:
  v15 = sub_18A4A7088();

LABEL_19:
  v16 = objc_opt_self();
  if (v13)
  {
    v17 = v16;
    v18 = sub_18A4A7088();

    v16 = v17;
  }

  else
  {
    v18 = 0;
  }

LABEL_23:
  v19 = [v16 _forTextAnimationsUIWithSupportedAnimationNames_titles_accessibilityHints_];

  v20 = [objc_allocWithZone(UITextFormattingViewController) initWithConfiguration_];
  v21 = objc_allocWithZone(type metadata accessor for _UITextFormattingViewControllerDelegateBox());
  v22 = v0;
  v23 = [v21 init];
  *&v23[OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate + 8] = &off_1EFADBE40;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  objc_setAssociatedObject(v20, &unk_1EA9410B0, v23, 1);
  swift_endAccess();
  [v20 setDelegate_];

  v24 = *&v22[OBJC_IVAR___UITextFormattingKeyboardSession_textFormattingViewController];
  *&v22[OBJC_IVAR___UITextFormattingKeyboardSession_textFormattingViewController] = v20;
  v25 = v20;

  sub_189036E30();
  v26 = [objc_allocWithZone(UINavigationController) initWithRootViewController_];
  [v26 setNavigationBarHidden:1 animated:0];

  v27 = *&v22[OBJC_IVAR___UISubstituteKeyboardSession_viewController];
  *&v22[OBJC_IVAR___UISubstituteKeyboardSession_viewController] = v26;
}

void sub_189036E30()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v27 = &unk_1EFE8B2D0;
    if (!swift_dynamicCastObjCProtocolConditional() || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) == 0))
    {

      return;
    }

    v4 = v3;
    [v3 selectedRange];
    if (v5 < 1)
    {
      v10 = [v4 typingAttributes];
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      sub_18A4A70A8();

      UITextFormattingViewController.FormattingDescriptor.init(attributes:)(v26);
    }

    else
    {
      v6 = [v4 attributedText];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      v8 = [v4 selectedRange];
      UITextFormattingViewController.FormattingDescriptor.init(string:range:)(v7, v8, v9, v26);
    }

    v11 = *(v0 + OBJC_IVAR___UITextFormattingKeyboardSession_textFormattingViewController);
    if (v11)
    {
      v22 = v26[6];
      v23 = v26[7];
      v24 = v26[8];
      v18 = v26[2];
      v19 = v26[3];
      v20 = v26[4];
      v21 = v26[5];
      v16 = v26[0];
      v17 = v26[1];
      v12 = v11;
      sub_189037B64(v26, v25);
      UITextFormattingViewController.FormattingDescriptor._bridgeToObjectiveC()(v13);
      v15 = v14;
      v25[6] = v22;
      v25[7] = v23;
      v25[8] = v24;
      v25[2] = v18;
      v25[3] = v19;
      v25[4] = v20;
      v25[5] = v21;
      v25[0] = v16;
      v25[1] = v17;
      sub_189037BC0(v25);
      [v12 setFormattingDescriptor_];

      sub_189037BC0(v26);
    }

    else
    {

      sub_189037BC0(v26);
    }
  }
}

void sub_189037054()
{
  v1 = *(v0 + OBJC_IVAR___UITextFormattingKeyboardSession_textFormattingViewController);
  *(v0 + OBJC_IVAR___UITextFormattingKeyboardSession_textFormattingViewController) = 0;
}

id sub_189037068()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2 && (v3 = v2, ([v2 respondsToSelector_] & 1) != 0))
  {
    v4 = [v3 _shouldReplaceKeyboardForTextFormattingKeyboardSessionIfApplicable];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_189037110(_OWORD *a1)
{
  v2 = a1[7];
  v35[6] = a1[6];
  v35[7] = v2;
  v35[8] = a1[8];
  v3 = a1[3];
  v35[2] = a1[2];
  v35[3] = v3;
  v4 = a1[5];
  v35[4] = a1[4];
  v35[5] = v4;
  v5 = a1[1];
  v35[0] = *a1;
  v35[1] = v5;
  v6 = *(v1 + OBJC_IVAR___UITextFormattingKeyboardSession_textFormattingViewController);
  if (v6)
  {
    v7 = a1[7];
    v32 = a1[6];
    v33 = v7;
    v34 = a1[8];
    v8 = a1[3];
    v28 = a1[2];
    v29 = v8;
    v9 = a1[5];
    v30 = a1[4];
    v31 = v9;
    v10 = a1[1];
    v26 = *a1;
    v27 = v10;
    if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(&v26) == 1)
    {
      v11 = v6;
      v12 = 0;
    }

    else
    {
      v22 = v32;
      v23 = v33;
      v24 = v34;
      v18 = v28;
      v19 = v29;
      v20 = v30;
      v21 = v31;
      v16 = v26;
      v17 = v27;
      v13 = v6;
      sub_189037C14(v35, v25);
      UITextFormattingViewController.FormattingDescriptor._bridgeToObjectiveC()(v14);
      v12 = v15;
      v25[6] = v22;
      v25[7] = v23;
      v25[8] = v24;
      v25[2] = v18;
      v25[3] = v19;
      v25[4] = v20;
      v25[5] = v21;
      v25[0] = v16;
      v25[1] = v17;
      sub_189037BC0(v25);
    }

    [v6 setFormattingDescriptor_];
  }
}

void sub_189037454(uint64_t isEscapingClosureAtFileLocation, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_6:
    v16 = [isEscapingClosureAtFileLocation _conversionHandler];
    if (!v16)
    {
      goto LABEL_13;
    }

    v18 = v16;
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = swift_dynamicCastObjCProtocolConditional();
      if (!v22)
      {

LABEL_13:
        aBlock = v3;
        v51 = v4;
        LOBYTE(v52) = v5;
        UITextFormattingViewController.ChangeValue._bridgeToObjectiveC()(v17);
        v28 = v27;
        v29 = [v27 _textAnimationAttributes];
        if (v29)
        {
          v30 = v29;
          type metadata accessor for Key(0);
          sub_188C5E0DC();
          v31 = sub_18A4A70A8();

          v32 = swift_unknownObjectWeakLoadStrong();
          if (!v32)
          {
LABEL_18:

            goto LABEL_21;
          }

          v28 = v32;
          v56 = &unk_1EFE8B2D0;
          v33 = swift_dynamicCastObjCProtocolConditional();
          if (v33)
          {
            v34 = v33;
            v35 = swift_allocObject();
            *(v35 + 16) = v31;
            isEscapingClosureAtFileLocation = swift_allocObject();
            *(isEscapingClosureAtFileLocation + 16) = sub_189037B34;
            *(isEscapingClosureAtFileLocation + 24) = v35;
            v54 = sub_189037B3C;
            v55 = isEscapingClosureAtFileLocation;
            aBlock = MEMORY[0x1E69E9820];
            v51 = 1107296256;
            v52 = sub_189036970;
            v53 = &block_descriptor_76;
            v36 = _Block_copy(&aBlock);
            LOBYTE(v5) = v55;
            v37 = v28;

            [v34 updateTextAttributesWithConversionHandler_];

            _Block_release(v36);
            LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

            if ((v37 & 1) == 0)
            {
              return;
            }

            __break(1u);
            goto LABEL_18;
          }
        }

LABEL_21:
        v38 = swift_unknownObjectWeakLoadStrong();
        if (v38)
        {
          v39 = v38;
          ObjectType = swift_getObjectType();
          v41 = swift_conformsToProtocol2();
          if (v41)
          {
            aBlock = v3;
            v51 = v4;
            LOBYTE(v52) = v5;
            (*(v41 + 8))(isEscapingClosureAtFileLocation, &aBlock, ObjectType, v41);
          }
        }

        return;
      }

      v23 = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_188EB02E0;
      *(v24 + 24) = v19;
      v54 = sub_18903829C;
      v55 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v51 = 1107296256;
      v52 = sub_189036970;
      v53 = &block_descriptor_40_1;
      v25 = _Block_copy(&aBlock);
      LOBYTE(v5) = v55;
      v26 = v21;

      [v23 updateTextAttributesWithConversionHandler_];

      _Block_release(v25);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    goto LABEL_13;
  }

  v7 = Strong;
  v8 = v5;
  v9 = swift_dynamicCastObjCProtocolConditional();
  if (!v9 || (v10 = v9, ([v9 respondsToSelector_] & 1) == 0) || (aBlock = v3, v51 = v4, LOBYTE(v52) = v8, v11 = v7, UITextFormattingViewController.ChangeValue._bridgeToObjectiveC()(v12), v14 = v13, v15 = objc_msgSend(v10, sel__shouldHandleTextFormattingChangeValue_, v13), v11, v14, (v15 & 1) != 0))
  {

    LOBYTE(v5) = v8;
    goto LABEL_6;
  }

  v42 = [isEscapingClosureAtFileLocation configuration];
  v43 = [v42 _isTextAnimationsConfiguration];

  if (v43)
  {
    if (v8 == 16)
    {
      v44 = swift_unknownObjectWeakLoadStrong();
      if (v44)
      {
        v45 = v44;
        v46 = swift_dynamicCastObjCProtocolConditional();
        if (v46)
        {
          v47 = [v46 selectedTextRange];
          if (v47)
          {
            v48 = v47;
            v49 = [v47 isEmpty];

            if (v49)
            {
              sub_18912DD44();

              return;
            }
          }
        }
      }
    }
  }

  sub_189036E30();
}

uint64_t sub_1890379EC(uint64_t a1, uint64_t a2)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = a1;
  sub_188EC9588(a2, sub_189038230, 0, isUniquelyReferenced_nonNull_native, &v6);

  return v6;
}

uint64_t sub_189037A80(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR___UISubstituteKeyboardSession_viewController))
  {
    return 1;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return 1;
  }

  [v4 pushViewController:a2 animated:1];
  return 0;
}

uint64_t sub_189037AF0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___UISubstituteKeyboardSession_viewController);
  if (v3)
  {
    [v3 presentViewController:a2 animated:1 completion:0];
  }

  return 0;
}

uint64_t sub_189037C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_189037C84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_188A55598(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_188A55538(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_188A3F5FC(&v18, &unk_1EA93A750);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_189037DD4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_188F8EA58(*(v3 + 56) + 16 * v13, v18);
    v21 = v14;
    sub_188E8FC60(v18, v22);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    v15 = v1[5];
    result = sub_188A3F704(&v21, v18, &unk_1EA93CB10);
    if (v19 || v20 != 1)
    {
      sub_188A3F704(v18, v17, &unk_1EA93A760);
      v15(v17);
      return sub_188A3F5FC(v17, &unk_1EA93A760);
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 1;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v12 = 0;
        v21 = 0;
        v22[0] = 0;
        v22[1] = 1;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_189037F48()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    v4 = sub_18A4A7FB8();
    if (v4)
    {
      v11 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0);
      swift_dynamicCast();
      v5 = v12;
      if (v12)
      {
LABEL_16:
        v10 = v0[5];
        v12 = v5;
        v10(&v11, &v12);
      }
    }
  }

  else
  {
    v1 = v0[3];
    v2 = v0[4];
    if (v2)
    {
      v3 = v0[3];
LABEL_14:
      v9 = (v2 - 1) & v2;
      v5 = *(*(*v0 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));

      v8 = v3;
LABEL_15:
      v0[3] = v8;
      v0[4] = v9;
      if (v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = (v0[2] + 64) >> 6;
      if (v6 <= v1 + 1)
      {
        v7 = v1 + 1;
      }

      else
      {
        v7 = (v0[2] + 64) >> 6;
      }

      v8 = v7 - 1;
      while (1)
      {
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v3 >= v6)
        {
          v5 = 0;
          v9 = 0;
          goto LABEL_15;
        }

        v2 = *(v0[1] + 8 * v3);
        ++v1;
        if (v2)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_18903808C()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    if (sub_18A4A8378())
    {
      v6 = v5;
      sub_188A34624(0, &qword_1EA931300);
      swift_dynamicCast();
      v7 = v18[0];
      v17 = v6;
      sub_188A34624(0, &unk_1EA9393B0);
      swift_dynamicCast();
      v8 = v18[0];
      if (v18[0])
      {
LABEL_15:
        v16 = v0[5];
        v18[0] = v7;
        v18[1] = v8;
        v16(&v17, v18);
      }
    }
  }

  else
  {
    v2 = v0[3];
    v3 = v0[4];
    if (v3)
    {
      v4 = v0[3];
LABEL_14:
      v12 = (v3 - 1) & v3;
      v13 = (v4 << 9) | (8 * __clz(__rbit64(v3)));
      v7 = *(*(v1 + 48) + v13);
      v14 = *(*(v1 + 56) + v13);
      v15 = v7;
      v8 = v14;
      v0[3] = v4;
      v0[4] = v12;
      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = (v0[2] + 64) >> 6;
      if (v9 <= v2 + 1)
      {
        v10 = v2 + 1;
      }

      else
      {
        v10 = (v0[2] + 64) >> 6;
      }

      v11 = v10 - 1;
      while (1)
      {
        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v4 >= v9)
        {
          v0[3] = v11;
          v0[4] = 0;
          return;
        }

        v3 = *(v0[1] + 8 * v4);
        ++v2;
        if (v3)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

id sub_189038230@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_188A55598((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

double sub_189038280(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

id static NSDiffableDataSourceSectionSnapshot._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    type metadata accessor for NSDiffableDataSourceSectionSnapshot.ImplWrapper();
    v3 = swift_allocObject();
    v4 = a1;
    *(v3 + 16) = a1;
  }

  else
  {
    type metadata accessor for NSDiffableDataSourceSectionSnapshot.ImplWrapper();
    v3 = sub_188CE6CE0();
    v4 = 0;
  }

  *a2 = v3;

  return v4;
}

NSDiffableDataSourceSectionSnapshot __swiftcall NSDiffableDataSourceSectionSnapshot._bridgeToObjectiveC()()
{
  v1 = *(*v0 + 16);
  v2 = objc_allocWithZone(NSDiffableDataSourceSectionSnapshot);

  v3 = [v2 initWithSnapshot_];
  result._collapsedItemsUpdates = v6;
  result._expandedItemsUpdates = v5;
  result._state = v4;
  result.super.isa = v3;
  return result;
}

uint64_t NSDiffableDataSourceSectionSnapshot.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);

  type metadata accessor for NSDiffableDataSourceSectionSnapshot.ImplWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1890383EC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = sub_188CE70BC();
  sub_18A4A82C8();
  v6 = sub_18A4A7518();

  [v5 *a4];

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall NSDiffableDataSourceSectionSnapshot.deleteAll()()
{
  v0 = sub_188CE70BC();

  [v0 deleteAllItems];
}

uint64_t NSDiffableDataSourceSectionSnapshot.replace(childrenOf:using:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_188CE70BC();
  v4 = sub_18A4A86A8();
  v5 = *(v2 + 16);
  [v3 replaceChildrenOfParentItem:v4 withSnapshot:v5];

  return swift_unknownObjectRelease();
}

void NSDiffableDataSourceSectionSnapshot.insert(_:before:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_188CE70BC();
  v3 = *(v1 + 16);
  v5 = v2;
  v4 = v3;
  [v5 insertSnapshot:v4 beforeItem:sub_18A4A86A8()];

  swift_unknownObjectRelease();
}

uint64_t NSDiffableDataSourceSectionSnapshot.insert(_:after:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_188CE70BC();
  v3 = *(v1 + 16);
  v4 = v2;
  v5 = v3;
  v6 = [v4 insertSnapshot:v5 afterItem:sub_18A4A86A8()];

  swift_unknownObjectRelease();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0Tm(&v8);
}

id sub_1890386F8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(*v3 + 16);
  v6 = [v5 *a3];

  swift_unknownObjectRelease();
  return v6;
}

id NSDiffableDataSourceSectionSnapshot.level(of:)()
{
  v1 = *(*v0 + 16);
  v2 = [v1 levelOfItem_];

  swift_unknownObjectRelease();
  return v2;
}

id NSDiffableDataSourceSectionSnapshot.index(of:)()
{
  v1 = *(*v0 + 16);
  v2 = [v1 indexOfItem_];

  swift_unknownObjectRelease();
  if (v2 == sub_18A4A2388())
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t NSDiffableDataSourceSectionSnapshot.parent(of:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 16);
  v5 = *(a1 + 16);
  v6 = v4;
  v7 = [v6 parentOfChildItem_];

  swift_unknownObjectRelease();
  if (v7)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v8 = swift_dynamicCast();
  return (*(*(v5 - 8) + 56))(a2, v8 ^ 1u, 1, v5);
}

uint64_t NSDiffableDataSourceSectionSnapshot.snapshot(of:includingParent:)@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v5 = *(*v2 + 16);
  v6 = [v5 snapshotOfParentItem:sub_18A4A86A8() includingParentItem:a1 & 1];

  swift_unknownObjectRelease();
  type metadata accessor for NSDiffableDataSourceSectionSnapshot.ImplWrapper();
  result = swift_allocObject();
  *(result + 16) = v6;
  *a2 = result;
  return result;
}

Swift::String __swiftcall NSDiffableDataSourceSectionSnapshot.visualDescription()()
{
  v1 = [*(*v0 + 16) visualDescription];
  v2 = sub_18A4A7288();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_189038AC0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:)(void *a1, uint64_t a2, char a3)
{
  *(v4 + 144) = a3;
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 96) = *a1;
  *(v4 + 104) = sub_18A4A76A8();
  *(v4 + 112) = sub_18A4A7698();
  v6 = sub_18A4A7678();
  *(v4 + 120) = v6;
  *(v4 + 128) = v5;

  return MEMORY[0x1EEE6DFA0](sub_189038B9C, v6, v5);
}

uint64_t sub_189038B9C()
{
  v1 = sub_18A4A7698();
  *(v0 + 136) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_18A4A7678();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_189038C30, v2, v4);
}

uint64_t sub_189038C30()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 144);
  v4 = *(v0 + 80);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_189038CF8;
  v5 = swift_continuation_init();
  sub_189038E60(v5, v2, v1, v4, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_189038CF8()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_189038E00, v2, v1);
}

uint64_t sub_189038E00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_189038E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)(&v10, a4, a5, sub_1890391FC, v8);
}

uint64_t UICollectionViewDiffableDataSource.snapshot(for:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + qword_1EA940A40) snapshotForSection_];
  swift_unknownObjectRelease();
  type metadata accessor for NSDiffableDataSourceSectionSnapshot.ImplWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t UICollectionViewDiffableDataSource._performBatchApplyUsingReloadData(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EA940A40);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_188A4B574;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188A4A968;
  v9[3] = &block_descriptor_3_1;
  v7 = _Block_copy(v9);

  [v5 _performBatchApplyUsingReloadData_];
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t static NSDiffableDataSourceSectionSnapshot._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  type metadata accessor for NSDiffableDataSourceSectionSnapshot.ImplWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *a2 = v4;
  v5 = a1;
  return 1;
}

unint64_t sub_1890391B0()
{
  result = qword_1EA92E778;
  if (!qword_1EA92E778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA92E778);
  }

  return result;
}

uint64_t sub_18903923C(char a1)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1 & 1);
  return sub_18A4A88E8();
}

uint64_t sub_1890392A0()
{
  sub_18A4A8888();
  sub_189039214(v2, *v0);
  return sub_18A4A88E8();
}

uint64_t sub_1890392E0(uint64_t a1, uint64_t a2)
{
  sub_18903A1B4(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_189039318(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_188F2448C;
}

uint64_t sub_189039538()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0));
  if (v2 == 2)
  {
    v3 = [v0 hostedView];
    if (v3)
    {
      v4 = v3;
      if (qword_1EA931E10 != -1)
      {
        swift_once();
      }

      v5 = [v4 methodForSelector_];
      if (qword_1EA931E18 != -1)
      {
        swift_once();
      }

      v6 = qword_1EA93A778;

      v7 = (v5 | v6) == 0;
      if (v5)
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v7 = v5 == v6;
      }

      LOBYTE(v2) = !v7;
      *(v0 + *((*v1 & *v0) + 0xB0)) = v2;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

id UICorePlatformViewHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UICorePlatformViewHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18903972C(uint64_t a1, double a2, double a3)
{
  sub_18A4A6CC8();
  v7 = sub_18A4A53A8();
  v8 = type metadata accessor for UICorePlatformViewHost();
  if (v7)
  {
    v10.receiver = v3;
    v10.super_class = v8;
    result = objc_msgSendSuper2(&v10, sel_hitTest_withEvent_, a1, a2, a3);
    if (result)
    {
      if (result == v3)
      {

        return 0;
      }
    }
  }

  else
  {
    v11.receiver = v3;
    v11.super_class = v8;
    return objc_msgSendSuper2(&v11, sel_hitTest_withEvent_, a1, a2, a3);
  }

  return result;
}

id sub_18903982C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v11 = sub_18903972C(a5, a2, a3);

  return v11;
}

id sub_1890398A8(uint64_t a1, double a2, double a3)
{
  sub_18A4A6CD8();
  if ((sub_18A4A53A8() & 1) != 0 && (v7 = [v3 hostedView]) != 0)
  {
    v8 = v7;
    [v7 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v9 = [v8 pointInside:a1 withEvent:?];

    return v9;
  }

  else
  {
    v11.receiver = v3;
    v11.super_class = type metadata accessor for UICorePlatformViewHost();
    return objc_msgSendSuper2(&v11, sel_pointInside_withEvent_, a1, a2, a3);
  }
}

uint64_t sub_1890399B4(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v5 = a5;
  v9 = a5;
  v10 = a1;
  LOBYTE(v5) = sub_1890398A8(v5, a2, a3);

  return v5 & 1;
}

uint64_t sub_189039A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A780);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_188A3F29C(a1, &v6 - v3, &qword_1EA93A780);
  return sub_188BA3E7C(v4);
}

id sub_189039BA0(double a1, double a2)
{
  v5 = sub_18A4A5B78();
  sub_18A4A5B88();
  v6 = sub_18A4A5B88();
  v7 = sub_18A4A5B98();
  sub_18A4A5B88();
  v8 = sub_18A4A5B88();
  v9 = 2;
  if (v6 == v5)
  {
    v9 = 3;
  }

  if (v8 == v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6 == v5;
  }

  return [v2 _layoutSizeThatFits_fixedAxes_];
}

double sub_189039C4C(uint64_t a1, double a2, double a3)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA8);
  v9 = *(v3 + v8);
  *(v3 + v8) = 1;
  v10 = [v3 hostedView];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 _wantsConstraintBasedLayout];
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v30.receiver = v3;
    v30.super_class = type metadata accessor for UICorePlatformViewHost();
    objc_msgSendSuper2(&v30, sel__layoutSizeThatFits_fixedAxes_, a1, a2, a3);
    v18 = v17;
    v20 = v19;
    v21 = v19 == v16 || v17 == v14;
    if (v21 && (v12 & 1) == 0 && (sub_189039538() & 1) == 0)
    {
      [v11 intrinsicContentSize];
      if (v22 == -1.0)
      {
        v22 = a2;
      }

      if (v18 == v14)
      {
        v18 = v22;
      }

      if (v23 == -1.0)
      {
        v24 = a3;
      }

      else
      {
        v24 = v23;
      }

      if (v20 == v16)
      {
        v20 = v24;
      }
    }

    if (v12 & 1) != 0 || (sub_189039538())
    {
      goto LABEL_31;
    }

    if (v18 >= a2 || ([v11 contentHuggingPriorityForAxis_], v25 >= 750.0))
    {
      if (v18 > a2)
      {
        [v11 contentCompressionResistancePriorityForAxis_];
        if (v27 < 750.0)
        {
          v18 = a2;
        }
      }
    }

    else
    {
      v18 = a2;
    }

    if (v20 < a3 && ([v11 contentHuggingPriorityForAxis_], v28 < 750.0) || v20 <= a3)
    {
LABEL_31:
    }

    else
    {
      [v11 contentCompressionResistancePriorityForAxis_];
    }

    v26 = *v7 & *v3;
    a2 = v18;
  }

  else
  {
    v26 = *v7 & *v3;
  }

  *(v3 + *(v26 + 168)) = v9;
  return a2;
}

double sub_189039F34(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = sub_189039C4C(a5, a2, a3);

  return v9;
}

id UICorePlatformViewHost.__allocating_init(hostedView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithHostedView_];

  return v3;
}

void sub_18903A01C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_18903A4D0();
}

void (*sub_18903A08C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_189039ACC();
  return sub_188E263E8;
}

id sub_18903A114()
{
  sub_188A34624(0, &qword_1ED48F680);
  if (qword_1EA931E10 != -1)
  {
    swift_once();
  }

  result = [swift_getObjCClassFromMetadata() instanceMethodForSelector_];
  qword_1EA93A778 = result;
  return result;
}

uint64_t sub_18903A1B4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  swift_beginAccess();
  *(v4 + 1) = a2;
  return swift_unknownObjectWeakAssign();
}

void _s5UIKit22UICorePlatformViewHostC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x78) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + *((*v1 & *v0) + 0x80)) = 2;
  *(v0 + *((*v1 & *v0) + 0x88)) = 1;
  v2 = *((*v1 & *v0) + 0x90);
  type metadata accessor for UICoreSafeAreaHelper();
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 1;
  *(v0 + v2) = v3;
  v4 = (v0 + *((*v1 & *v0) + 0x98));
  v5 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *v4 = v5;
  v4[1] = v5;
  swift_unknownObjectWeakInit();
  *(v0 + *((*v1 & *v0) + 0xA8)) = 0;
  *(v0 + *((*v1 & *v0) + 0xB0)) = 2;
  v6 = *((*v1 & *v0) + 0xB8);
  v7 = sub_18A4A4798();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  *(v0 + *((*v1 & *v0) + 0xC0)) = 0;
  v8 = *((*v1 & *v0) + 0xC8);
  v9 = sub_18A4A4998();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_18A4A8398();
  __break(1u);
}

id static UIBarButtonItemGroup.movableGroup(customizationIdentifier:representativeItem:items:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_18A4A7258();
  sub_188C0D370();
  v6 = sub_18A4A7518();
  v7 = [ObjCClassFromMetadata movableGroupWithCustomizationIdentifier:v5 representativeItem:a3 items:v6];

  return v7;
}

id static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_18A4A7258();
  sub_188C0D370();
  v8 = sub_18A4A7518();
  v9 = [ObjCClassFromMetadata optionalGroupWithCustomizationIdentifier:v7 inDefaultCustomization:a3 & 1 representativeItem:a4 items:v8];

  return v9;
}

void *sub_18903AA40(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = sub_18A4A8358();

    if (v7)
    {
      a4(0);
      swift_dynamicCast();
      return v13;
    }
  }

  else if (*(a2 + 16))
  {
    v9 = a3();
    if (v10)
    {
      v11 = *(*(a2 + 56) + 8 * v9);
      v12 = v11;
      return v11;
    }
  }

  return 0;
}

uint64_t sub_18903AB34(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_18A4A8358();

    if (v6)
    {
      a4(0);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    a3();
    if (v8)
    {
    }
  }

  return 0;
}

void *sub_18903AC4C(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_18A4A8358();

    if (v6)
    {
      sub_188A34624(0, a4);
      swift_dynamicCast();
      return v13;
    }
  }

  else if (*(a2 + 16))
  {
    v9 = a3();
    if (v10)
    {
      v11 = *(*(a2 + 56) + 8 * v9);
      v12 = v11;
      return v11;
    }
  }

  return 0;
}

unint64_t sub_18903AD70()
{
  result = sub_188E8E4D0(MEMORY[0x1E69E7CC0]);
  qword_1EA92E9E8 = result;
  return result;
}

void *sub_18903AD98()
{
  result = sub_188E8F130(MEMORY[0x1E69E7CC0]);
  off_1EA92E9C0 = result;
  return result;
}

uint64_t sub_18903ADC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1EA92E9B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_1EA92E9C0;
  if (*(off_1EA92E9C0 + 2) && (v9 = sub_188E8B9FC(a3), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 8 * v9);
    if (*(v11 + 16) && (v12 = sub_188E8BC0C(a1, a2), (v13 & 1) != 0))
    {
      v14 = v12;
      v15 = *(v11 + 56);
      v16 = type metadata accessor for UITextEffectView.EffectID();
      v17 = *(v16 - 8);
      sub_188ECA980(v15 + *(v17 + 72) * v14, a4);
      (*(v17 + 56))(a4, 0, 1, v16);
    }

    else
    {
      v20 = type metadata accessor for UITextEffectView.EffectID();
      (*(*(v20 - 8) + 56))(a4, 1, 1, v20);
    }

    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v18 = type metadata accessor for UITextEffectView.EffectID();
    return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
  }
}

void *sub_18903AFA4()
{
  result = sub_188E8E4F8(MEMORY[0x1E69E7CC0]);
  off_1EA92E9D8 = result;
  return result;
}

uint64_t UIWritingToolsCoordinator.prepareForAnimation(for:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_18A4A29D8();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_18A4A76A8();
  v2[23] = sub_18A4A7698();
  v5 = sub_18A4A7678();
  v2[24] = v5;
  v2[25] = v4;

  return MEMORY[0x1EEE6DFA0](sub_18903B0C0, v5, v4);
}

uint64_t sub_18903B0C0()
{
  v1 = *(v0 + 144);
  type metadata accessor for _UIWTCTextChunk(0);
  v2 = swift_dynamicCastClass();
  *(v0 + 208) = v2;
  if (!v2)
  {
    sub_18A4A80E8();

    v7 = [v1 description];
    v8 = sub_18A4A7288();
    v10 = v9;

    MEMORY[0x18CFE22D0](v8, v10);

    return sub_18A4A8398();
  }

  v3 = v2;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x90))();
  if (v6)
  {
    return sub_18A4A8398();
  }

  if (v5 == 2)
  {
    v12 = *(v0 + 144);

    v14 = *(v0 + 208);
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v17 = *(v0 + 160);
    v18 = *(v0 + 144);
    (*((*v4 & *v14) + 0x78))(v13);
    (*((*v4 & *v14) + 0xA8))(v15);

    (*(v16 + 8))(v15, v17);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 152);
    v23 = *(v0 + 160);
    v30 = *(v3 + OBJC_IVAR____TtC5UIKit15_UIWTCTextChunk_subrangeIndex);
    v24 = *(v0 + 144);
    v25 = *((*v4 & *v3) + 0x88);
    v26 = v5;
    v25();
    v27 = v24;
    v28 = sub_18A4A2998();
    *(v0 + 216) = v28;
    (*(v21 + 8))(v20, v23);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_18903B4C8;
    v29 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_188F194AC;
    *(v0 + 104) = &block_descriptor_79;
    *(v0 + 112) = v29;
    [v22 _sendDelegatePrepareForTextAnimation_subrangeIndex_contextID_completion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_18903B4C8()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_18903B5D0, v2, v1);
}

uint64_t sub_18903B5D0()
{
  v1 = v0[27];

  v2 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[18];
  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x78))();
  (*((*v7 & *v2) + 0xA8))(v3);

  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_18903B88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_18A4A76A8();
  v3[5] = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903B928, v5, v4);
}

uint64_t sub_18903B928()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_189042C18;
  v7 = v0[2];

  return UIWritingToolsCoordinator.prepareForAnimation(for:)(v7);
}

uint64_t UIWritingToolsCoordinator.finishAnimation(for:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_18A4A29D8();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_18A4A76A8();
  v2[23] = sub_18A4A7698();
  v5 = sub_18A4A7678();
  v2[24] = v5;
  v2[25] = v4;

  return MEMORY[0x1EEE6DFA0](sub_18903BAE0, v5, v4);
}

uint64_t sub_18903BAE0()
{
  v1 = v0[18];
  type metadata accessor for _UIWTCTextChunk(0);
  v2 = swift_dynamicCastClass();
  v0[26] = v2;
  if (!v2)
  {
    sub_18A4A80E8();

    v7 = [v1 description];
    v8 = sub_18A4A7288();
    v10 = v9;

    MEMORY[0x18CFE22D0](v8, v10);

    return sub_18A4A8398();
  }

  v3 = v2;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x98))();
  if (v6)
  {
    return sub_18A4A8398();
  }

  v12 = v5;
  v13 = v0[21];
  v14 = v0[22];
  v15 = v0[20];
  v21 = v0[19];
  v22 = *(v3 + OBJC_IVAR____TtC5UIKit15_UIWTCTextChunk_subrangeIndex);
  v16 = v0[18];
  (*((*v4 & *v3) + 0x88))();
  v17 = v16;
  v18 = sub_18A4A2998();
  v0[27] = v18;
  v19 = *(v13 + 8);
  v0[28] = v19;
  v0[29] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v14, v15);
  v0[2] = v0;
  v0[3] = sub_18903BE04;
  v20 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_188F194AC;
  v0[13] = &block_descriptor_3_2;
  v0[14] = v20;
  [v21 _sendDelegateFinishTextAnimation_subrangeIndex_contextID_completion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_18903BE04()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_18903BF0C, v2, v1);
}

uint64_t sub_18903BF0C()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[18];

  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x80))();
  (*((*v7 & *v2) + 0xB0))(v4);

  v1(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_18903C1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_18A4A76A8();
  v3[5] = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903C23C, v5, v4);
}

uint64_t sub_18903C23C()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_188EC8BA4;
  v7 = v0[2];

  return UIWritingToolsCoordinator.finishAnimation(for:)(v7);
}

uint64_t UIWritingToolsCoordinator.canGenerateTargetedPreviews()()
{
  *(v1 + 16) = v0;
  sub_18A4A76A8();
  *(v1 + 24) = sub_18A4A7698();
  v3 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903C398, v3, v2);
}

uint64_t sub_18903C398()
{
  v1 = *(v0 + 16);

  v2 = [v1 delegate];
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3(v2 != 0);
}

uint64_t sub_18903C59C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_18A4A76A8();
  v2[5] = sub_18A4A7698();
  v4 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903C638, v4, v3);
}

uint64_t sub_18903C638()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903C6E4, v5, v4);
}

uint64_t sub_18903C6E4()
{
  v1 = v0[3];

  v2 = [v1 delegate];

  if (v2)
  {
    swift_unknownObjectRelease();
  }

  v3 = v2 != 0;
  v4 = v0[6];
  v4[2](v4, v3);
  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t UIWritingToolsCoordinator.canGenerateTargetedPreviewForChunk(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_18A4A29D8();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  sub_18A4A76A8();
  v2[24] = sub_18A4A7698();
  v5 = sub_18A4A7678();
  v2[25] = v5;
  v2[26] = v4;

  return MEMORY[0x1EEE6DFA0](sub_18903C898, v5, v4);
}

uint64_t sub_18903C898()
{
  type metadata accessor for _UIWTCTextChunk(0);
  v1 = swift_dynamicCastClass();
  v0[27] = v1;
  if (!v1)
  {
    return sub_18A4A8398();
  }

  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  v0[28] = v4;
  if (v5)
  {
    return sub_18A4A8398();
  }

  v7 = v4;
  v8 = v0[18];
  (*((*v3 & *v2) + 0x88))();
  v9 = *(v2 + OBJC_IVAR____TtC5UIKit15_UIWTCTextChunk_subrangeIndex);
  v10 = v8;
  if (v7 == 2 && (v11 = v0[19], v12 = sub_18A4A2998(), LODWORD(v11) = [v11 _hasStoredTargetedPreviewForInsertionInContextID_previewSubrangeIndex_], v12, v11))
  {

    v13 = v0[18];
    (*(v0[21] + 8))(v0[23], v0[20]);

    v14 = v0[1];

    return v14(1);
  }

  else
  {
    v15 = v0[19];
    v16 = sub_18A4A2998();
    v0[29] = v16;
    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_18903CBB8;
    v17 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939DD0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_189000EC8;
    v0[13] = &block_descriptor_6_7;
    v0[14] = v17;
    [v15 _sendDelegateTargetedPreviewOfActiveRangeForTextAnimation_previewSubrangeIndex_contextID_completion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_18903CBB8()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_18903CCC0, v2, v1);
}

uint64_t sub_18903CCC0()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 240);

  if (v2)
  {
    v3 = *(v0 + 144);
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
LABEL_3:

    goto LABEL_9;
  }

  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 160);
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x78))();
  (*((*v9 & *v4) + 0xA8))(v6);
  v10 = *(v7 + 8);
  v11 = v10(v6, v8);
  if (v5 == 2)
  {
    v11 = (*((*v9 & **(v0 + 216)) + 0x98))(v11);
    if ((v12 & 1) == 0 && v11 == 1)
    {
      v3 = *(v0 + 144);
      v10(*(v0 + 184), *(v0 + 160));
      goto LABEL_3;
    }
  }

  v13 = *(v0 + 216);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  v16 = *(v0 + 160);
  v17 = *(v0 + 144);
  (*((*v9 & *v13) + 0x80))(v11);
  (*((*v9 & *v13) + 0xB0))(v15);

  v10(v15, v16);
  v10(v14, v16);
LABEL_9:

  v18 = *(v0 + 8);

  return v18(v2);
}

uint64_t sub_18903D098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_18A4A76A8();
  v3[5] = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903D134, v5, v4);
}

uint64_t sub_18903D134()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_188EC7C68;
  v7 = v0[2];

  return UIWritingToolsCoordinator.canGenerateTargetedPreviewForChunk(_:)(v7);
}

uint64_t UIWritingToolsCoordinator.targetedPreview(for:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_18A4A29D8();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  sub_18A4A76A8();
  v2[24] = sub_18A4A7698();
  v5 = sub_18A4A7678();
  v2[25] = v5;
  v2[26] = v4;

  return MEMORY[0x1EEE6DFA0](sub_18903D2EC, v5, v4);
}

uint64_t sub_18903D2EC()
{
  type metadata accessor for _UIWTCTextChunk(0);
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    return sub_18A4A8398();
  }

  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v5)
  {
    return sub_18A4A8398();
  }

  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[21];
  v17 = v0[20];
  v10 = v0[19];
  v11 = *((*v3 & *v2) + 0x88);
  v12 = v4;
  v11();
  v13 = v10;
  v14 = sub_18A4A2998();
  v0[27] = v14;
  (*(v7 + 8))(v8, v9);
  v15 = *(v2 + OBJC_IVAR____TtC5UIKit15_UIWTCTextChunk_subrangeIndex);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_18903D580;
  v16 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EA8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_189042C1C;
  v0[13] = &block_descriptor_9;
  v0[14] = v16;
  [v17 _fetchStoredTargetedPreviewForContextID_previewSubrangeIndex_textAnimation_completion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_18903D580()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_18903D688, v2, v1);
}

uint64_t sub_18903D688()
{
  v1 = v0[27];
  v2 = v0[19];

  v3 = v0[18];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_18903D898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_18A4A76A8();
  v3[5] = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903D934, v5, v4);
}

uint64_t sub_18903D934()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_188EC8338;
  v7 = v0[2];

  return UIWritingToolsCoordinator.targetedPreview(for:)(v7);
}

uint64_t UIWritingToolsCoordinator.updateTextChunkVisibilityForAnimation(_:visible:)()
{
  sub_18A4A76A8();
  *(v0 + 16) = sub_18A4A7698();
  v2 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F1E280, v2, v1);
}

uint64_t sub_18903DC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = sub_18A4A76A8();
  v3[4] = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903DCB8, v5, v4);
}

uint64_t sub_18903DCB8()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_18A4A7698();
  v3 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903DD58, v3, v2);
}

uint64_t sub_18903DD58()
{
  v1 = *(v0 + 40);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t UIWritingToolsCoordinator.updatedTargetedPreviewGeometry(for:previous:)(double a1, double a2, double a3, double a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_18A4A76A8();
  *(v4 + 48) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903DE6C, v6, v5);
}

uint64_t sub_18903DE6C()
{

  v1 = v0[1];
  v2.n128_u64[0] = v0[4];
  v3.n128_u64[0] = v0[5];
  v4.n128_u64[0] = v0[2];
  v5.n128_u64[0] = v0[3];

  return v1(v4, v5, v2, v3);
}

uint64_t sub_18903E084(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 56) = sub_18A4A76A8();
  *(v6 + 64) = sub_18A4A7698();
  v8 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903E128, v8, v7);
}

uint64_t sub_18903E128()
{
  v1 = v0[6];

  v0[9] = _Block_copy(v1);
  v0[10] = sub_18A4A7698();
  v3 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903E1C8, v3, v2);
}

uint64_t sub_18903E1C8()
{
  v1 = *(v0 + 9);
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v1[2](v1, v5, v4, v3, v2);
  _Block_release(v1);
  v6 = *(v0 + 1);

  return v6();
}

uint64_t UIWritingToolsCoordinator.performAnimatedReplacement(for:effect:animation:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v4 + 208) = a2;
  *(v4 + 216) = v3;
  *(v4 + 200) = a1;
  v6 = sub_18A4A29D8();
  *(v4 + 224) = v6;
  *(v4 + 232) = *(v6 - 8);
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = *a3;
  sub_18A4A76A8();
  *(v4 + 264) = sub_18A4A7698();
  v8 = sub_18A4A7678();
  *(v4 + 272) = v8;
  *(v4 + 280) = v7;

  return MEMORY[0x1EEE6DFA0](sub_18903E36C, v8, v7);
}

uint64_t sub_18903E36C()
{
  v1 = *(v0 + 25);
  type metadata accessor for _UIWTCReplacementChunk(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return sub_18A4A8398();
  }

  if (*(v2 + OBJC_IVAR____TtC5UIKit15_UIWTCTextChunk_subrangeIndex))
  {

    v3 = *(v0 + 1);

    return v3();
  }

  else
  {
    v6 = v0[31];
    v5 = v0[32];
    v8 = *(v0 + 29);
    v7 = *(v0 + 30);
    v9 = *(v0 + 28);
    v15 = *(v0 + 27);
    v10 = v2;
    v11 = v1;
    v12 = sub_18A4A2998();
    *(v0 + 36) = v12;
    (*(v8 + 16))(v7, v10 + OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_effectiveContextID, v9);
    v13 = sub_18A4A2998();
    *(v0 + 37) = v13;
    (*(v8 + 8))(v7, v9);
    *(v0 + 2) = v0;
    *(v0 + 7) = v0 + 24;
    *(v0 + 3) = sub_18903E61C;
    v14 = swift_continuation_init();
    *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A818);
    *(v0 + 10) = MEMORY[0x1E69E9820];
    *(v0 + 11) = 1107296256;
    *(v0 + 12) = sub_189042C1C;
    *(v0 + 13) = &block_descriptor_12_6;
    *(v0 + 14) = v14;
    [v15 _sendDelegatedAnimatedReplacementWithDelay_duration_deliveryID_contextID_completion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_18903E61C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_18903E724, v2, v1);
}

uint64_t sub_18903E724()
{
  v2 = v0[36];
  v1 = v0[37];

  v3 = v0[24];

  v4 = [v3 progressHandler];
  if (v4)
  {
    v5 = v4;
    v6 = v0[26];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = (v6 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
    swift_beginAccess();
    v9 = *v8;
    *v8 = sub_188A4AA0C;
    v8[1] = v7;
    sub_188A55B8C(v9);
  }

  v10 = v0[25];
  v11 = [v3 completionHandler];

  if (v11)
  {
    v12 = v0[26];
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    v14 = (v12 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
    swift_beginAccess();
    v15 = *v14;
    *v14 = sub_188A4AA0C;
    v14[1] = v13;
    sub_188A55B8C(v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t UIWritingToolsCoordinator.replacementEffectDidComplete(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18A4A29D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for UITextEffectView.EffectID();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA92E9E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = sub_18903AA40(v1, qword_1EA92E9E8, sub_188E8B9AC, type metadata accessor for UITextEffectView);
  swift_endAccess();
  if (v14)
  {
    v15 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
    swift_beginAccess();
    sub_188ECA980(a1 + v15, v13);
    sub_18900294C(v13);

    sub_188ECAA48(v13);
  }

  swift_beginAccess();
  v16 = *(a1 + 24);
  type metadata accessor for _UIWTCReplacementChunk(0);
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    v19 = *(v5 + 16);
    v19(v10, v17 + OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_deliveryID, v4);
    v41 = v7;
    v19(v7, v18 + OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_effectiveContextID, v4);
    v20 = OBJC_IVAR____TtC5UIKit15_UIWTCTextChunk_subrangeIndex;
    v21 = *(v18 + OBJC_IVAR____TtC5UIKit15_UIWTCTextChunk_subrangeIndex);
    v22 = qword_1EA92E9D0;
    v40 = v16;
    if (v22 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = off_1EA92E9D8;
    if (*(off_1EA92E9D8 + 2) && (v24 = sub_188E8B9AC(v2), (v25 & 1) != 0))
    {
      v26 = *(v23[7] + 8 * v24);
      swift_endAccess();

      if (!*(v26 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      swift_endAccess();
      v26 = sub_188E8E618(MEMORY[0x1E69E7CC0]);
      if (!*(v26 + 16))
      {
        goto LABEL_15;
      }
    }

    v27 = sub_188E8B9FC(v10);
    if (v28)
    {
      v43 = *(*(v26 + 56) + 8 * v27);

LABEL_16:
      sub_188F28824(0, v21);
      v29 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v26;
      sub_188E9F298(v29, v10, isUniquelyReferenced_nonNull_native);
      v31 = v44;
      swift_beginAccess();
      v32 = v2;

      v33 = swift_isUniquelyReferenced_nonNull_native();
      v42 = off_1EA92E9D8;
      off_1EA92E9D8 = 0x8000000000000000;
      sub_188E9F150(v31, v32, v33);

      off_1EA92E9D8 = v42;
      swift_endAccess();

      v34 = sub_18A4A2998();
      v35 = v41;
      v36 = sub_18A4A2998();
      [v32 _replacementEffectDidLandInFlightDelivery_inContext_subrangeIndex_];

      v37 = *(v5 + 8);
      v37(v35, v4);
      return (v37)(v10, v4);
    }

LABEL_15:
    v43 = sub_188E8E63C(MEMORY[0x1E69E7CC0]);
    goto LABEL_16;
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t sub_18903ED84(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_188C482B4;

  return UIWritingToolsCoordinator.performAnimatedReplacement(for:effect:animation:)(a1, a2, a3);
}

void sub_18903EE58()
{
  v1 = v0;
  if (qword_1EA92E9E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_18903AA40(v0, qword_1EA92E9E8, sub_188E8B9AC, type metadata accessor for UITextEffectView);
  swift_endAccess();
  if (!v2)
  {
    v3 = objc_allocWithZone(type metadata accessor for UITextEffectView());
    v4 = v0;
    v5 = sub_189041468(v4, v3);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v2 = sub_18903AA40(v4, qword_1EA92E9E8, sub_188E8B9AC, type metadata accessor for UITextEffectView);
    swift_endAccess();
    if (v2)
    {
      v6 = v5;
      v7 = sub_18A4A7C88();

      if (v7)
      {

        goto LABEL_16;
      }

      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if ((qword_1EA92E9E8 & 0xC000000000000001) != 0)
    {
      if (qword_1EA92E9E8 < 0)
      {
        v8 = qword_1EA92E9E8;
      }

      else
      {
        v8 = qword_1EA92E9E8 & 0xFFFFFFFFFFFFFF8;
      }

      v9 = v5;
      v10 = sub_18A4A7F68();
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      qword_1EA92E9E8 = sub_18907C760(v8, v10 + 1);
    }

    else
    {
      v11 = v5;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = qword_1EA92E9E8;
    sub_188EA0594(v5, v4, isUniquelyReferenced_nonNull_native);
    qword_1EA92E9E8 = v19;
    swift_endAccess();
  }

LABEL_16:

  swift_beginAccess();
  v13 = sub_18903AA40(v1, qword_1EA92E9E8, sub_188E8B9AC, type metadata accessor for UITextEffectView);
  swift_endAccess();
  if (v13)
  {
    v14 = [v1 effectContainerView];
    v15 = [v13 superview];
    if (v15)
    {
      v16 = v15;
      if (!v14)
      {
        v14 = v13;
        goto LABEL_25;
      }

      sub_188A34624(0, &qword_1ED48F680);
      v17 = v14;
      v18 = sub_18A4A7C88();

      if (v18)
      {
        v14 = v17;
LABEL_23:
        v16 = v13;
LABEL_25:

LABEL_26:
        return;
      }
    }

    else if (!v14)
    {
      v16 = v13;
      goto LABEL_26;
    }

    [v14 addSubview_];
    goto LABEL_23;
  }

LABEL_29:
  sub_18A4A8398();
  __break(1u);
}

void sub_18903F26C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v67 = a4;
  v68 = a5;
  v8 = type metadata accessor for UITextEffectView.EffectID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E6C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v58 - v15);
  v17 = sub_18A4A29D8();
  v18 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  if (a3 >= 1)
  {
    v63 = v11;
    v24 = &v58 - v22;
    v62 = a1;
    v25 = [a1 identifier];
    v69 = a2;
    v26 = v25;
    sub_18A4A29B8();

    type metadata accessor for _UIWritingToolsCoordinatorVisualizationStorage();
    v64 = a3;
    sub_18903ADC0(v69, a3, v24, v16);
    if ((*(v9 + 48))(v16, 1, v8) == 1)
    {
      v59 = v9;
      v61 = v24;
      sub_188A3F5FC(v16, &qword_1EA93E6C0);
      v27 = v66;
      [v66 _setUpTextEffectView];
      if (qword_1EA92E9E0 != -1)
      {
        swift_once();
      }

      v60 = v8;
      swift_beginAccess();
      v28 = sub_18903AA40(v27, qword_1EA92E9E8, sub_188E8B9AC, type metadata accessor for UITextEffectView);
      swift_endAccess();
      if (!v28)
      {
        sub_18A4A8398();
        __break(1u);
        return;
      }

      v29 = [v62 identifier];
      sub_18A4A29B8();

      v30 = type metadata accessor for _UIWTCPonderingChunk(0);
      v31 = objc_allocWithZone(v30);
      v32 = &v31[OBJC_IVAR____TtC5UIKit20_UIWTCPonderingChunk_initialRange];
      v33 = v64;
      *v32 = v69;
      *(v32 + 1) = v33;
      (*(v18 + 16))(&v31[OBJC_IVAR____TtC5UIKit20_UIWTCPonderingChunk_effectiveContextID], v20, v17);
      v74.receiver = v31;
      v74.super_class = v30;
      v34 = objc_msgSendSuper2(&v74, sel_init);
      v35 = *(v18 + 8);
      v62 = v17;
      v66 = v35;
      (v35)(v20, v17);
      *&v34[OBJC_IVAR____TtC5UIKit15_UIWTCTextChunk_subrangeIndex] = v67;
      v36 = qword_1EA92EB38;
      v37 = v34;
      v38 = v28;
      v39 = v68;
      if (v36 != -1)
      {
        swift_once();
      }

      v40 = xmmword_1EA92EB40;
      v70 = xmmword_1EA92EB40;
      v71 = xmmword_1EA92EB50;
      v72 = unk_1EA92EB60;
      v73 = qword_1EA92EB70;
      v41 = type metadata accessor for UITextEffectView.PonderingEffect();
      swift_allocObject();
      v42 = *(&v40 + 1);

      v43 = v40;
      v44 = sub_189138BC4(v37, v38, &v70);

      if (v39)
      {
        v45 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_animateFromColor;
        swift_beginAccess();
        v46 = *(v44 + v45);
        *(v44 + v45) = v39;
        v47 = v39;
      }

      *(&v71 + 1) = v41;
      *&v72 = &protocol witness table for UITextEffectView.PonderingEffect;
      *&v70 = v44;

      v48 = v63;
      sub_189001650(&v70, v63);
      __swift_destroy_boxed_opaque_existential_0Tm(&v70);
      v49 = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
      swift_beginAccess();
      v50 = *&v38[v49];
      v51 = v69;
      if (*(v50 + 16))
      {

        v52 = sub_188E8B92C(v48);
        if (v53)
        {
          sub_188A53994(*(v50 + 56) + 40 * v52, &v70);

          sub_188A3F5FC(&v70, &qword_1EA936EA0);
          v54 = v65;
          sub_188ECA980(v48, v65);
          (*(v59 + 56))(v54, 0, 1, v60);
          v55 = v61;
          sub_189041C98(v54, v51, v64, v61);

          sub_188A3F5FC(v54, &qword_1EA93E6C0);
          sub_188ECAA48(v48);
          (v66)(v55, v62);
          return;
        }
      }

      else
      {
      }

      sub_188ECAA48(v48);
      (v66)(v61, v62);
      *&v72 = 0;
      v70 = 0u;
      v71 = 0u;
      v56 = &qword_1EA936EA0;
      v57 = &v70;
    }

    else
    {
      (*(v18 + 8))(v24, v17);
      v56 = &qword_1EA93E6C0;
      v57 = v16;
    }

    sub_188A3F5FC(v57, v56);
  }
}

uint64_t sub_18903FA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E6C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = type metadata accessor for UITextEffectView.EffectID();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA92E9E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = sub_18903AA40(v4, qword_1EA92E9E8, sub_188E8B9AC, type metadata accessor for UITextEffectView);
  result = swift_endAccess();
  if (v18)
  {
    type metadata accessor for _UIWritingToolsCoordinatorVisualizationStorage();
    sub_18903ADC0(a2, a3, a1, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      return sub_188A3F5FC(v13, &qword_1EA93E6C0);
    }

    else
    {
      sub_188ECA9E4(v13, v17);
      sub_18900294C(v17);
      (*(v15 + 56))(v10, 1, 1, v14);
      sub_189041C98(v10, a2, a3, a1);

      sub_188A3F5FC(v10, &qword_1EA93E6C0);
      return sub_188ECAA48(v17);
    }
  }

  return result;
}

uint64_t sub_18903FDF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v92 = a4;
  v88 = a2;
  v8 = type metadata accessor for UITextEffectView.EffectID();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v82[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_18A4A29D8();
  v98 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v82[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A820);
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v82[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v82[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v82[-v22];
  MEMORY[0x1EEE9AC00](v24);
  v97 = &v82[-v25];
  if (qword_1EA92E9E0 != -1)
  {
    swift_once();
  }

  v84 = v20;
  swift_beginAccess();
  v26 = sub_18903AA40(v5, qword_1EA92E9E8, sub_188E8B9AC, type metadata accessor for UITextEffectView);
  swift_endAccess();
  if (!v26)
  {
    goto LABEL_30;
  }

  v96 = v23;
  v27 = [v5 _inFlightDeliveryID];
  v93 = v10;
  v94 = a3;
  v90 = v13;
  v91 = v5;
  v86 = v26;
  if (v27)
  {
    v28 = v27;
    v29 = v97;
    sub_18A4A29B8();

    v30 = 0;
  }

  else
  {
    v30 = 1;
    v29 = v97;
  }

  v31 = v98;
  v32 = *(v98 + 56);
  v32(v29, v30, 1, v11);
  v33 = *(v31 + 16);
  v34 = v96;
  v95 = a1;
  v85 = v33;
  v33(v96, a1, v11);
  v32(v34, 0, 1, v11);
  v35 = *(v16 + 48);
  v36 = v87;
  sub_188A3F29C(v29, v87, &qword_1EA93A828);
  v37 = v31;
  v38 = v36;
  sub_188A3F29C(v34, &v36[v35], &qword_1EA93A828);
  v39 = *(v37 + 48);
  if (v39(v38, 1, v11) == 1)
  {
    sub_188A3F5FC(v34, &qword_1EA93A828);
    sub_188A3F5FC(v29, &qword_1EA93A828);
    if (v39(v38 + v35, 1, v11) == 1)
    {
      sub_188A3F5FC(v38, &qword_1EA93A828);
      v40 = v94;
      v41 = v95;
      v37 = v98;
      v42 = v89;
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v43 = v84;
  sub_188A3F29C(v38, v84, &qword_1EA93A828);
  v44 = v39(v38 + v35, 1, v11);
  v45 = v38;
  v42 = v89;
  if (v44 == 1)
  {
    sub_188A3F5FC(v96, &qword_1EA93A828);
    sub_188A3F5FC(v97, &qword_1EA93A828);
    (*(v37 + 8))(v43, v11);
    v38 = v45;
LABEL_29:
    sub_188A3F5FC(v38, &qword_1EA93A820);
    goto LABEL_30;
  }

  (*(v37 + 32))(v89, v45 + v35, v11);
  sub_1890426A4();
  v83 = sub_18A4A7248();
  v46 = *(v37 + 8);
  v46(v42, v11);
  sub_188A3F5FC(v96, &qword_1EA93A828);
  sub_188A3F5FC(v97, &qword_1EA93A828);
  v46(v43, v11);
  sub_188A3F5FC(v45, &qword_1EA93A828);
  v40 = v94;
  v41 = v95;
  if (v83)
  {
LABEL_12:
    v47 = v85;
    v85(v42, v41, v11);
    v48 = v90;
    v47(v90, v88, v11);
    v49 = type metadata accessor for _UIWTCReplacementChunk(0);
    v50 = objc_allocWithZone(v49);
    v50[OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_isInitialAnimationPending] = 1;
    v50[OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_isDeliveryAnimationPending] = 1;
    v50[OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_isInitialAnimationComplete] = 0;
    v50[OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_isDeliveryAnimationComplete] = 0;
    v47(&v50[OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_deliveryID], v42, v11);
    v47(&v50[OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_effectiveContextID], v48, v11);
    v101.receiver = v50;
    v101.super_class = v49;
    v51 = objc_msgSendSuper2(&v101, sel_init);
    v52 = *(v37 + 8);
    v52(v48, v11);
    v52(v42, v11);
    *&v51[OBJC_IVAR____TtC5UIKit15_UIWTCTextChunk_subrangeIndex] = v40;
    v53 = qword_1EA92EB38;
    v54 = v51;
    v55 = v86;
    v56 = v92;
    if (v53 != -1)
    {
      swift_once();
    }

    v57 = xmmword_1EA92EB40;
    v58 = type metadata accessor for UITextEffectView.ReplacementTextEffect();
    v59 = swift_allocObject();
    v60 = v57;
    v61 = v91;
    v62 = sub_1890423B8(v54, v55, v61, v60, v59);

    if (v56)
    {
      v63 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
      swift_beginAccess();
      v64 = *(v62 + v63);
      *(v62 + v63) = v56;
      v65 = v56;
    }

    v100[3] = v58;
    v100[4] = &protocol witness table for UITextEffectView.ReplacementTextEffect;
    v100[0] = v62;

    v66 = v93;
    sub_189001650(v100, v93);
    sub_188ECAA48(v66);
    __swift_destroy_boxed_opaque_existential_0Tm(v100);
    v67 = qword_1EA92E9D0;

    if (v67 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v68 = off_1EA92E9D8;
    if (*(off_1EA92E9D8 + 2) && (v69 = sub_188E8B9AC(v61), (v70 & 1) != 0))
    {
      v71 = *(v68[7] + 8 * v69);
      swift_endAccess();

      if (!*(v71 + 16))
      {
        goto LABEL_25;
      }
    }

    else
    {
      swift_endAccess();
      v71 = sub_188E8E618(MEMORY[0x1E69E7CC0]);
      if (!*(v71 + 16))
      {
        goto LABEL_25;
      }
    }

    v72 = sub_188E8B9FC(v41);
    if (v73)
    {
      v74 = *(*(v71 + 56) + 8 * v72);

LABEL_26:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100[0] = v74;
      sub_188E9F2D8(v62, v40, isUniquelyReferenced_nonNull_native);
      v76 = v100[0];
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v100[0] = v71;
      sub_188E9F298(v76, v41, v77);
      v78 = v100[0];
      swift_beginAccess();
      v79 = v61;

      v80 = swift_isUniquelyReferenced_nonNull_native();
      v99 = off_1EA92E9D8;
      off_1EA92E9D8 = 0x8000000000000000;
      sub_188E9F150(v78, v79, v80);

      off_1EA92E9D8 = v99;
      swift_endAccess();
    }

LABEL_25:
    v74 = sub_188E8E63C(MEMORY[0x1E69E7CC0]);
    goto LABEL_26;
  }

LABEL_30:
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t sub_189040DF0@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + *a1);
  v9 = sub_18A4A29D8();
  v10 = *(*(v9 - 8) + 16);
  if (v8)
  {
    v11 = a2;
  }

  else
  {
    v11 = a3;
  }

  v12 = v4 + *v11;

  return v10(a4, v12, v9);
}

uint64_t sub_189040E84()
{
  result = _s5UIKit16UITextEffectViewC0C2IDV2eeoiySbAE_AEtFZ_0();
  v2 = &OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_isDeliveryAnimationPending;
  if ((result & 1) == 0)
  {
    v2 = &OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_isInitialAnimationPending;
  }

  *(v0 + *v2) = 0;
  return result;
}

uint64_t sub_189040EC8()
{
  result = _s5UIKit16UITextEffectViewC0C2IDV2eeoiySbAE_AEtFZ_0();
  v2 = &OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_isDeliveryAnimationComplete;
  if ((result & 1) == 0)
  {
    v2 = &OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_isInitialAnimationComplete;
  }

  *(v0 + *v2) = 1;
  return result;
}

uint64_t sub_189040F10()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_isInitialAnimationPending))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_189040F30()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_isInitialAnimationComplete))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_189040F80()
{
  v1 = OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_deliveryID;
  v2 = sub_18A4A29D8();
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC5UIKit22_UIWTCReplacementChunk_effectiveContextID;

  return v5(v3, v2);
}

id sub_18904103C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

BOOL sub_189041138(uint64_t a1)
{
  sub_188A3F29C(a1, v6, &qword_1EA934050);
  if (v7)
  {
    type metadata accessor for _UIWTCPonderingChunk(0);
    if (swift_dynamicCast())
    {
      v3 = *&v5[OBJC_IVAR____TtC5UIKit20_UIWTCPonderingChunk_initialRange];
      v2 = *&v5[OBJC_IVAR____TtC5UIKit20_UIWTCPonderingChunk_initialRange + 8];

      if (v3 == *(v1 + OBJC_IVAR____TtC5UIKit20_UIWTCPonderingChunk_initialRange))
      {
        return v2 == *(v1 + OBJC_IVAR____TtC5UIKit20_UIWTCPonderingChunk_initialRange + 8);
      }
    }
  }

  else
  {
    sub_188A3F5FC(v6, &qword_1EA934050);
  }

  return 0;
}

uint64_t sub_18904129C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_18A4A29D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_189041358(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_18A4A29D8();
  v4 = *(*(v3 - 8) + 8);

  return v4(v1 + v2, v3);
}

uint64_t sub_1890413E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = sub_18A4A29D8();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

id sub_189041468(void *a1, char *a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x1E69E7CD0];
  *&a2[OBJC_IVAR____TtC5UIKit16UITextEffectView_managedSubviews] = MEMORY[0x1E69E7CD0];
  v5 = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
  *&a2[v5] = sub_188E8E0EC(MEMORY[0x1E69E7CC0]);
  *&a2[OBJC_IVAR____TtC5UIKit16UITextEffectView_sharedEffectViews] = v4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = a2;
  v8.super_class = type metadata accessor for UITextEffectView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setUserInteractionEnabled_];

  return v6;
}

uint64_t sub_1890415AC()
{
  result = sub_18A4A29D8();
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

uint64_t sub_189041650()
{
  result = sub_18A4A29D8();
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

uint64_t sub_189041718()
{
  result = sub_18A4A29D8();
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

uint64_t sub_1890417B8(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v41[3] = type metadata accessor for _UITextViewAnimatedPlaceholderSupport(0);
  v41[4] = &protocol witness table for _UITextViewAnimatedPlaceholderSupport;
  v41[0] = a3;
  *(a5 + 16) = 0;
  sub_18A4A29C8();
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled) = 1;
  v10 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
  *v13 = 0;
  v13[1] = 0;
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor) = 0;
  v14 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut;
  v15 = type metadata accessor for UIRBDirectionalLightEffectView();
  *(a5 + v14) = [objc_allocWithZone(v15) initWithFrame_];
  v16 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn;
  *(a5 + v16) = [objc_allocWithZone(v15) initWithFrame_];
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_fromLineAnimator) = 0;
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = 0;
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) = 1;
  swift_beginAccess();
  v17 = *(a5 + 16);
  *(a5 + 16) = a2;
  v18 = a2;

  *(a5 + 24) = a1;
  sub_188A53994(v41, a5 + 32);
  v19 = objc_opt_self();
  v20 = a1;
  v21 = a4;
  v22 = [v19 clearColor];
  if (qword_1EA92F268 != -1)
  {
    v38 = v22;
    swift_once();
    v22 = v38;
  }

  v23 = qword_1EA92F270;
  v24 = a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementOutLightConfiguration;
  *v24 = v21;
  *(v24 + 8) = v22;
  __asm { FMOV            V0.2D, #3.0 }

  *(v24 + 16) = _Q0;
  *(v24 + 32) = _Q0;
  *(v24 + 48) = v23;
  v30 = qword_1EA92F290;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_1EA92F298;
  v32 = qword_1EA92F2A0;
  v33 = qword_1EA92F2C8;
  v34 = qword_1EA92F2A0;

  v35 = v31;
  v39 = unk_1EA92F2B8;
  v40 = xmmword_1EA92F2A8;
  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  v36 = a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementInLightConfiguration;
  *v36 = v35;
  *(v36 + 8) = v32;
  *(v36 + 16) = v40;
  *(v36 + 32) = v39;
  *(v36 + 48) = v33;
  return a5;
}

void sub_189041A94(void *a1, void *a2)
{
  if (qword_1EA92E9E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = sub_18903AA40(a2, qword_1EA92E9E8, sub_188E8B9AC, type metadata accessor for UITextEffectView);
  swift_endAccess();
  if (a1)
  {
    if (!v4)
    {
LABEL_9:
      swift_beginAccess();
      v7 = qword_1EA92E9E8;
      if ((qword_1EA92E9E8 & 0xC000000000000001) != 0)
      {
        if (qword_1EA92E9E8 >= 0)
        {
          v7 = qword_1EA92E9E8 & 0xFFFFFFFFFFFFFF8;
        }

        v8 = a1;
        v9 = sub_18A4A7F68();
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          return;
        }

        qword_1EA92E9E8 = sub_18907C760(v7, v9 + 1);
      }

      else
      {
        v8 = a1;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = qword_1EA92E9E8;
      sub_188EA0594(v8, a2, isUniquelyReferenced_nonNull_native);
      qword_1EA92E9E8 = v11;
      goto LABEL_17;
    }

    type metadata accessor for UITextEffectView();
    v5 = a1;
    v6 = sub_18A4A7C88();

    if (v6)
    {
      goto LABEL_18;
    }
  }

  else if (!v4)
  {
    return;
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  if (a1)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v8 = sub_1891E9D4C(a2);
LABEL_17:
  swift_endAccess();

LABEL_18:
}

uint64_t sub_189041C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E6C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for UITextEffectView.EffectID();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188A3F29C(a1, v12, &qword_1EA93E6C0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_188A3F5FC(v12, &qword_1EA93E6C0);
    if (qword_1EA92E9B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = off_1EA92E9C0;
    if (*(off_1EA92E9C0 + 2))
    {
      v18 = sub_188E8B9FC(a4);
      if (v19)
      {
        v39 = *(v17[7] + 8 * v18);
        swift_endAccess();

        sub_1890002DC(a2, v37, v9);
        sub_188A3F5FC(v9, &qword_1EA93E6C0);
        v20 = v39;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = off_1EA92E9C0;
        off_1EA92E9C0 = 0x8000000000000000;
        sub_188EA06D8(v20, a4, isUniquelyReferenced_nonNull_native);
        off_1EA92E9C0 = v38;
      }
    }

    return swift_endAccess();
  }

  else
  {
    sub_188ECA9E4(v12, v16);
    if (qword_1EA92E9B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = off_1EA92E9C0;
    if (*(off_1EA92E9C0 + 2) && (v24 = sub_188E8B9FC(a4), (v25 & 1) != 0))
    {
      v39 = *(v23[7] + 8 * v24);
      swift_endAccess();
      sub_188ECA980(v16, v9);
      (*(v14 + 56))(v9, 0, 1, v13);

      sub_188F28EF4(v9, a2, v37);
      v26 = v39;
      swift_beginAccess();
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v38 = off_1EA92E9C0;
      off_1EA92E9C0 = 0x8000000000000000;
      sub_188EA06D8(v26, a4, v27);
      v28 = v38;
    }

    else
    {
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A830);
      v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E50) - 8);
      v30 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_18A64BFB0;
      v32 = (v31 + v30);
      v33 = v29[14];
      v34 = v37;
      *v32 = a2;
      v32[1] = v34;
      sub_188ECA980(v16, v31 + v30 + v33);
      v35 = sub_188E8F334(v31);
      swift_setDeallocating();
      sub_188A3F5FC(v31 + v30, &qword_1EA934E50);
      swift_deallocClassInstance();
      swift_beginAccess();
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v39 = off_1EA92E9C0;
      off_1EA92E9C0 = 0x8000000000000000;
      sub_188EA06D8(v35, a4, v36);
      v28 = v39;
    }

    off_1EA92E9C0 = v28;
    swift_endAccess();
    return sub_188ECAA48(v16);
  }
}

uint64_t sub_1890421A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EA92E9D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1EA92E9D8;
  if (*(off_1EA92E9D8 + 2) && (v7 = sub_188E8B9AC(a3), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();

    if (!*(v9 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    swift_endAccess();
    v9 = sub_188E8E618(MEMORY[0x1E69E7CC0]);
    if (!*(v9 + 16))
    {
      goto LABEL_11;
    }
  }

  v10 = sub_188E8B9FC(a1);
  if (v11)
  {
    v12 = *(*(v9 + 56) + 8 * v10);

    if (!v12[2])
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_11:

  v12 = sub_188E8E63C(MEMORY[0x1E69E7CC0]);
  if (!v12[2])
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

LABEL_12:
  v13 = sub_188C4585C(a2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(v12[7] + 8 * v13);

LABEL_15:

  return v15;
}

uint64_t sub_189042304(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C482B4;

  return sub_188F1E404(a1, v4, v5, v6);
}

uint64_t sub_1890423B8(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v41[3] = sub_188A34624(0, &unk_1EA92E790);
  v41[4] = &protocol witness table for UIWritingToolsCoordinator;
  v41[0] = a3;
  *(a5 + 16) = 0;
  sub_18A4A29C8();
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled) = 1;
  v10 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
  *v13 = 0;
  v13[1] = 0;
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor) = 0;
  v14 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut;
  v15 = type metadata accessor for UIRBDirectionalLightEffectView();
  *(a5 + v14) = [objc_allocWithZone(v15) initWithFrame_];
  v16 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn;
  *(a5 + v16) = [objc_allocWithZone(v15) initWithFrame_];
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_fromLineAnimator) = 0;
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = 0;
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) = 1;
  swift_beginAccess();
  v17 = *(a5 + 16);
  *(a5 + 16) = a2;
  v18 = a2;

  *(a5 + 24) = a1;
  sub_188A53994(v41, a5 + 32);
  v19 = objc_opt_self();
  v20 = a1;
  v21 = a4;
  v22 = [v19 clearColor];
  if (qword_1EA92F268 != -1)
  {
    v38 = v22;
    swift_once();
    v22 = v38;
  }

  v23 = qword_1EA92F270;
  v24 = a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementOutLightConfiguration;
  *v24 = v21;
  *(v24 + 8) = v22;
  __asm { FMOV            V0.2D, #3.0 }

  *(v24 + 16) = _Q0;
  *(v24 + 32) = _Q0;
  *(v24 + 48) = v23;
  v30 = qword_1EA92F290;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_1EA92F298;
  v32 = qword_1EA92F2A0;
  v33 = qword_1EA92F2C8;
  v34 = qword_1EA92F2A0;

  v35 = v31;
  v39 = unk_1EA92F2B8;
  v40 = xmmword_1EA92F2A8;
  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  v36 = a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementInLightConfiguration;
  *v36 = v35;
  *(v36 + 8) = v32;
  *(v36 + 16) = v40;
  *(v36 + 32) = v39;
  *(v36 + 48) = v33;
  return a5;
}

unint64_t sub_1890426A4()
{
  result = qword_1EA930B00;
  if (!qword_1EA930B00)
  {
    sub_18A4A29D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930B00);
  }

  return result;
}

uint64_t sub_1890426FC()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_188C48500;

  return sub_18903E084(v3, v4, v5, v6, v2, v7);
}

uint64_t sub_1890427D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_188C48500;

  return sub_18903DC1C(v2, v3, v4);
}

uint64_t sub_18904289C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_188C48500;

  return sub_18903D898(v2, v3, v4);
}

uint64_t sub_189042950()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_188C48500;

  return sub_18903D098(v2, v3, v4);
}

uint64_t sub_189042A04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_188C48500;

  return sub_18903C59C(v2, v3);
}

uint64_t sub_189042AB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_188C48500;

  return sub_18903C1A0(v2, v3, v4);
}

uint64_t sub_189042B64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_188C48500;

  return sub_18903B88C(v2, v3, v4);
}

uint64_t NSDiffableDataSourceSectionTransaction.sectionIdentifier.getter()
{
  v1 = [*v0 sectionIdentifier];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  return swift_dynamicCast();
}

void sub_189042CC0(SEL *a1@<X1>, void *a2@<X8>)
{
  v4 = [*v2 *a1];
  static NSDiffableDataSourceSectionSnapshot._unconditionallyBridgeFromObjectiveC(_:)(v4, &v5);

  *a2 = v5;
}

unint64_t sub_189042D28()
{
  result = qword_1EA93A848;
  if (!qword_1EA93A848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93A840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A848);
  }

  return result;
}

uint64_t sub_189042D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_189042DFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_189042E7C(SEL *a1@<X1>, void *a2@<X8>)
{
  v4 = [*v2 *a1];
  static NSDiffableDataSourceSnapshot._unconditionallyBridgeFromObjectiveC(_:)(v4, &v5);

  *a2 = v5;
}

uint64_t sub_189042EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_18A4A84E8();
  v44 = sub_18A4A7D38();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v36 - v8;
  v47 = v4;
  v9 = sub_18A4A84B8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v36 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A838);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A840);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v20 = *v2;
  v46 = v9;
  v21 = sub_18A4A7078();
  v55 = v21;
  v22 = [v20 difference];
  sub_18A4A84A8();

  v40 = v17;
  (*(v17 + 16))(v15, v19, v16);
  v23 = *(v13 + 44);
  sub_189042D28();
  v39 = v19;
  sub_18A4A7818();
  sub_18A4A7878();
  if (*&v15[v23] != *&v50[0])
  {
    v37 = v5;
    v38 = a2;
    v45 = v16;
    do
    {
      v25 = sub_18A4A78C8();
      sub_189042D8C(v26, v52);
      v25(v50, 0);
      sub_18A4A7888();
      v51 = v54;
      v50[0] = v52[0];
      v50[1] = v52[1];
      v50[2] = v53;
      v27 = *&v52[0];
      v28 = *(&v53 + 1);
      v29 = v54;
      sub_188A55538((v50 + 8), v49);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA93A858);
      v24 = v11 + *(swift_getTupleTypeMetadata3() + 64);
      *v11 = v27;
      sub_188A55598(v49, v48);
      swift_dynamicCast();
      *v24 = v28;
      v24[8] = v29;
      swift_storeEnumTagMultiPayload();
      sub_18A4A7648();
      sub_18A4A7618();
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      v16 = v45;
      sub_18A4A7878();
    }

    while (*&v15[v23] != *&v50[0]);
    v21 = v55;
    a2 = v38;
    v5 = v37;
  }

  sub_189042DFC(v15);
  *&v52[0] = v21;
  sub_18A4A7648();

  swift_getWitnessTable();
  v30 = v41;
  sub_18A4A84F8();
  v31 = v42;
  v32 = v43;
  v33 = v44;
  (*(v42 + 16))(v43, v30, v44);
  v34 = *(v5 - 8);
  result = (*(v34 + 48))(v32, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v31 + 8))(v30, v33);
    (*(v40 + 8))(v39, v16);

    return (*(v34 + 32))(a2, v32, v5);
  }

  return result;
}

void NSDiffableDataSourceTransaction.sectionTransactions.getter()
{
  v1 = *v0;
  type metadata accessor for NSDiffableDataSourceSectionTransaction();
  sub_18A4A7078();
  v2 = [v1 sectionTransactions];
  sub_1890436C8();
  v3 = sub_18A4A7548();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v4 = sub_18A4A7F68();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        sub_188E4AD90(i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      sub_18A4A7648();
      sub_18A4A7618();
    }

    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_1890436C8()
{
  result = qword_1EA934390;
  if (!qword_1EA934390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA934390);
  }

  return result;
}

uint64_t UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.getter()
{
  v0 = sub_188FAD61C();
  sub_188A52E38(v0);
  return v0;
}

uint64_t sub_189043748@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v5 = *(a1 + a2 - 24);
  v6 = *(a1 + a2 - 16);
  v7 = *(a1 + a2 - 8);
  type metadata accessor for UICollectionViewDiffableDataSource.ReorderingHandlers();
  v8 = sub_188FAD61C();
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    v12 = swift_allocObject();
    v8 = v10;
    v12[2] = v4;
    v12[3] = v5;
    v12[4] = v6;
    v12[5] = v7;
    v12[6] = v10;
    v12[7] = v11;
    v13 = sub_189044264;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  *a3 = v13;
  a3[1] = v12;
  return sub_188A52E38(v8);
}

id sub_18904382C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 32);
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a1;
  v9 = a1[1];
  if (*a1)
  {
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = v5;
    v10[4] = v6;
    v10[5] = v7;
    v10[6] = v8;
    v10[7] = v9;
    v11 = sub_18904422C;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  sub_188A52E38(v8);
  v12 = type metadata accessor for UICollectionViewDiffableDataSource.ReorderingHandlers();
  return UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.setter(v11, v10, v12);
}

uint64_t sub_1890438FC(uint64_t a1, uint64_t (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_188A55598(v10, v13);
  swift_dynamicCast();
  v11 = a2(v9);
  (*(v7 + 8))(v9, a5);
  return v11 & 1;
}

uint64_t (*UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *a1 = v4;
  a1[1] = v5;
  sub_188A52E38(v4);
  return sub_189043A48;
}

uint64_t UICollectionViewDiffableDataSource.ReorderingHandlers.willReorder.getter()
{
  v0 = sub_188FAD628();
  sub_188A52E38(v0);
  return v0;
}

uint64_t sub_189043ABC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v5 = *(a1 + a2 - 24);
  v6 = *(a1 + a2 - 16);
  v7 = *(a1 + a2 - 8);
  type metadata accessor for UICollectionViewDiffableDataSource.ReorderingHandlers();
  v8 = sub_188FAD628();
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    v12 = swift_allocObject();
    v8 = v10;
    *(v12 + 2) = v4;
    *(v12 + 3) = v5;
    *(v12 + 4) = v6;
    *(v12 + 5) = v7;
    *(v12 + 6) = v10;
    *(v12 + 7) = v11;
    v13 = sub_189044298;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  *a3 = v13;
  a3[1] = v12;
  return sub_188A52E38(v8);
}

id sub_189043BA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 32);
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a1;
  v9 = a1[1];
  if (*a1)
  {
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = v5;
    v10[4] = v6;
    v10[5] = v7;
    v10[6] = v8;
    v10[7] = v9;
    v11 = sub_1890442A4;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  sub_188A52E38(v8);
  v12 = type metadata accessor for UICollectionViewDiffableDataSource.ReorderingHandlers();
  return UICollectionViewDiffableDataSource.ReorderingHandlers.willReorder.setter(v11, v10, v12);
}

uint64_t (*UICollectionViewDiffableDataSource.ReorderingHandlers.willReorder.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *a1 = v4;
  a1[1] = v5;
  sub_188A52E38(v4);
  return sub_189043CBC;
}

uint64_t UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.getter()
{
  v0 = sub_188FAD634();
  sub_188A52E38(v0);
  return v0;
}

uint64_t sub_189043D30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v5 = *(a1 + a2 - 24);
  v6 = *(a1 + a2 - 16);
  v7 = *(a1 + a2 - 8);
  type metadata accessor for UICollectionViewDiffableDataSource.ReorderingHandlers();
  v8 = sub_188FAD634();
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    v12 = swift_allocObject();
    v8 = v10;
    *(v12 + 2) = v4;
    *(v12 + 3) = v5;
    *(v12 + 4) = v6;
    *(v12 + 5) = v7;
    *(v12 + 6) = v10;
    *(v12 + 7) = v11;
    v13 = sub_188FD2E84;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  *a3 = v13;
  a3[1] = v12;
  return sub_188A52E38(v8);
}

id sub_189043E14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 32);
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a1;
  v9 = a1[1];
  if (*a1)
  {
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = v5;
    v10[4] = v6;
    v10[5] = v7;
    v10[6] = v8;
    v10[7] = v9;
    v11 = sub_189044204;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  sub_188A52E38(v8);
  v12 = type metadata accessor for UICollectionViewDiffableDataSource.ReorderingHandlers();
  return UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.setter(v11, v10, v12);
}

uint64_t (*UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *a1 = v4;
  a1[1] = v5;
  sub_188A52E38(v4);
  return sub_189043F30;
}

uint64_t sub_189043F70(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v7, v8);
  }

  a4(*a1, v7);
  a3(v6, v7, v8);

  return a5(v6, v7);
}

double UICollectionViewDiffableDataSource.reorderingHandlers.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + qword_1EA940A40) reorderingHandlers];
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *a1 = v3;
  return result;
}

uint64_t sub_189044080(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9[0] = *a1;
  v9[1] = v1;
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v4;
  v9[5] = v5;
  v9[6] = v6;
  v7 = v9[0];
  sub_188A52E38(v1);
  sub_188A52E38(v2);
  sub_188A52E38(v5);
  return UICollectionViewDiffableDataSource.reorderingHandlers.setter(v9);
}

void sub_189044124(void *a1)
{
  v2 = *(v1 + 48);
  v5 = a1;
  v3 = a1;
  v2(&v5);
  v4 = v5;
}

uint64_t sub_189044174()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1890441B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_189044264@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 48))();
  *a1 = result & 1;
  return result;
}

uint64_t static UIViewController.ShowDetailTargetDidChangeMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v6)
  {
    result = sub_188A553EC(v5);
    goto LABEL_5;
  }

  sub_189044394();
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

unint64_t sub_189044394()
{
  result = qword_1ED48D5A0;
  if (!qword_1ED48D5A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48D5A0);
  }

  return result;
}

uint64_t static UIViewController.ShowDetailTargetDidChangeMessage.makeNotification(_:)(void **a1)
{
  v1 = *a1;
  sub_189044394();
  v2 = v1;
  v3 = @"UIViewControllerShowDetailTargetDidChangeNotification";
  return sub_18A4A2428();
}

uint64_t sub_18904445C(void **a1)
{
  v1 = *a1;
  sub_189044394();
  v2 = v1;
  v3 = @"UIViewControllerShowDetailTargetDidChangeNotification";
  return sub_18A4A2428();
}

uint64_t sub_1890444D4(uint64_t a1)
{
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v30 = v4;
  v31 = OBJC_IVAR____UITypedStorage_storage;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v29 = a1;
  while (v8)
  {
LABEL_11:
    v12 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
    v13 = *(*(v30 + 48) + v12);
    v14 = *(*(v30 + 56) + v12);
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(a1 + v31);
    *(a1 + v31) = 0x8000000000000000;
    v17 = sub_188A403F4(v13);
    v19 = v16[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_23;
    }

    v23 = v18;
    if (v16[3] < v22)
    {
      sub_188A3F76C(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_188A403F4(v13);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v23)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v27 = v17;
    sub_188FA0BDC();
    v17 = v27;
    if (v23)
    {
LABEL_4:
      *(v16[7] + 8 * v17) = v14;

      goto LABEL_5;
    }

LABEL_17:
    v16[(v17 >> 6) + 8] |= 1 << v17;
    *(v16[6] + 8 * v17) = v13;
    *(v16[7] + 8 * v17) = v14;
    v25 = v16[2];
    v21 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v21)
    {
      goto LABEL_24;
    }

    v16[2] = v26;
LABEL_5:
    v8 &= v8 - 1;
    a1 = v29;
    *(v29 + v31) = v16;
    swift_endAccess();
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

void __swiftcall _UITypedStorage.init()(_UITypedStorage *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id _UITypedStorage.init()()
{
  v1 = OBJC_IVAR____UITypedStorage_storage;
  *&v0[v1] = sub_188A39B78(MEMORY[0x1E69E7CC0]);
  v3.receiver = v0;
  v3.super_class = _UITypedStorage;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t type metadata accessor for _UITypedStorage()
{
  result = qword_1EA93A968;
  if (!qword_1EA93A968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93A968);
  }

  return result;
}

uint64_t UIContentSizeCategory.DidChangeMessage.contentSize.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UIContentSizeCategory.DidChangeMessage.contentSize.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UIContentSizeCategory.DidChangeMessage.init(contentSize:screen:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static UIContentSizeCategory.DidChangeMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  v2 = sub_18A4A2448();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  sub_18A4A7288();
  sub_18A4A8048();
  if (!*(v3 + 16) || (v4 = sub_188BBA050(v11), (v5 & 1) == 0))
  {

    sub_188BBA15C(v11);
LABEL_10:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_11;
  }

  sub_188A55598(*(v3 + 56) + 32 * v4, &v12);
  sub_188BBA15C(v11);

  if (!*(&v13 + 1))
  {
LABEL_11:
    v10 = &v12;
LABEL_12:
    result = sub_188A3F5FC(v10, &qword_1EA934050);
    goto LABEL_13;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = v11[0];
  v7 = v11[1];
  sub_18A4A2438();
  if (!v11[3])
  {

    v10 = v11;
    goto LABEL_12;
  }

  sub_188FB7278();
  result = swift_dynamicCast();
  if (result)
  {
    v9 = v12;
    *a1 = v8;
    a1[1] = v7;
    a1[2] = v9;
    return result;
  }

LABEL_13:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t static UIContentSizeCategory.DidChangeMessage.makeNotification(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  sub_188FB7278();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  sub_18A4A7288();

  v5 = v3;
  v6 = @"UIContentSizeCategoryDidChangeNotification";
  v7 = MEMORY[0x1E69E6158];
  sub_18A4A8048();
  *(inited + 96) = v7;
  *(inited + 72) = v2;
  *(inited + 80) = v1;
  sub_188E8DA14(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &qword_1EA934D78);
  return sub_18A4A2428();
}

unint64_t sub_189044D60()
{
  result = qword_1EA92FB80;
  if (!qword_1EA92FB80)
  {
    type metadata accessor for UIContentSizeCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FB80);
  }

  return result;
}

unint64_t sub_189044DFC()
{
  result = qword_1EA93A970;
  if (!qword_1EA93A970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93A970);
  }

  return result;
}

uint64_t UIButton._intelligenceCollectSubelements(in:using:transformToRoot:)(char *a1, char *a2, char *a3, double a4, double a5, double a6, double a7)
{
  v74 = a3;
  v75 = a2;
  v82 = a1;
  v11 = sub_18A4A3BA8();
  v77 = *(v11 - 8);
  v78 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18A4A3CC8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_18A4A38A8();
  v16 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v66 - v19;
  v20 = sub_18A4A3A98();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v66 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v66 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v66 - v33;
  v35 = sub_18A4A3AD8();
  v72 = *(v35 - 8);
  v73 = v35;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v71 = &v66 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v14;
  v38 = *(v14 + 56);
  v38(v34, 1, 1, v13, v36);
  v81 = v13;
  (v38)(v31, 1, 1, v13);
  v39 = v68;
  v40 = [v68 role];
  if (v40 > 3)
  {
    v41 = MEMORY[0x1E69DBB68];
  }

  else
  {
    v41 = qword_1E70F1E88[v40];
  }

  (*(v21 + 104))(v23, *v41, v20);
  (*(v21 + 32))(v26, v23, v20);
  v42 = *(v16 + 104);
  v43 = v70;
  v42(v67, *MEMORY[0x1E69DBAB8], v70);
  v44 = v71;
  sub_18A4A3AB8();
  v45 = [v39 isEnabled];
  v46 = MEMORY[0x1E69DBAB0];
  if (!v45)
  {
    v46 = MEMORY[0x1E69DBAC0];
  }

  v42(v69, *v46, v43);
  sub_18A4A3A88();
  v47 = [v39 titleLabel];
  if (v47)
  {
    v48 = v47;
    v49 = v82;
    v51 = v74;
    v50 = v75;
  }

  else
  {
    v52 = [v39 subtitleLabel];
    v49 = v82;
    v51 = v74;
    v50 = v75;
    if (!v52)
    {
      goto LABEL_13;
    }

    v48 = v52;
  }

  v53 = [(UIView *)v39 _containsView:v48];
  if (v53)
  {
    MEMORY[0x1EEE9AC00](v53);
    *(&v66 - 10) = v39;
    *(&v66 - 9) = v48;
    *(&v66 - 8) = a4;
    *(&v66 - 7) = a5;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = a7;
    *(&v66 - 4) = v49;
    *(&v66 - 3) = v50;
    *(&v66 - 2) = v51;
    sub_18A4A33C8();
    sub_18A4A3AC8();
  }

LABEL_13:
  v54 = [v39 imageView];
  if (v54)
  {
    v55 = v54;
    v56 = [(UIView *)v39 _containsView:v54];
    if (v56)
    {
      MEMORY[0x1EEE9AC00](v56);
      *(&v66 - 10) = v39;
      *(&v66 - 9) = v55;
      *(&v66 - 8) = a4;
      *(&v66 - 7) = a5;
      *(&v66 - 6) = a6;
      *(&v66 - 5) = a7;
      *(&v66 - 4) = v49;
      *(&v66 - 3) = v50;
      *(&v66 - 2) = v51;
      sub_18A4A33C8();
      sub_18A4A3AA8();
    }
  }

  MEMORY[0x1EEE9AC00](v54);
  *(&v66 - 8) = v39;
  *(&v66 - 7) = a4;
  *(&v66 - 6) = a5;
  *(&v66 - 5) = a6;
  *(&v66 - 4) = a7;
  *(&v66 - 3) = v49;
  *(&v66 - 2) = v50;
  *(&v66 - 1) = v51;
  sub_18A4A33D8();
  [v39 bounds];
  (v50)(v39);
  v58 = v72;
  v57 = v73;
  v59 = v76;
  (*(v72 + 16))(v76, v44, v73);
  (*(v77 + 104))(v59, *MEMORY[0x1E69DBBD8], v78);
  v60 = v79;
  sub_18A4A3748();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
  v61 = v80;
  v62 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_18A64BFB0;
  v64 = v81;
  (*(v61 + 16))(v63 + v62, v60, v81);
  sub_18A4A3438();

  (*(v61 + 8))(v60, v64);
  return (*(v58 + 8))(v44, v57);
}

unint64_t sub_18904567C()
{
  result = qword_1EA92FDA8;
  if (!qword_1EA92FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FDA8);
  }

  return result;
}

unint64_t sub_1890456E4()
{
  result = qword_1EA92F878;
  if (!qword_1EA92F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F878);
  }

  return result;
}

uint64_t sub_189045764(unsigned int a1)
{
  if (a1 >= 6)
  {
    return 6;
  }

  else
  {
    return (0x50002040301uLL >> (8 * a1));
  }
}

uint64_t sub_189045788(unsigned int a1)
{
  v2 = objc_opt_self();
  if (([v2 currentState] & 3) == 0)
  {
    return 0;
  }

  v3 = [v2 currentPhase];
  if (v3 == -1)
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_189045764(a1);
  v6 = v5;
  if (v5 == 6)
  {
    return 0;
  }

  v8 = v5;
  v9 = sub_189045764(v4);
  v10 = v9 < 4;
  if (v6 != 5)
  {
    v10 = v9 < v8;
  }

  return v9 != 6 && v10;
}

id sub_18904584C(char a1, char a2)
{
  if (a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v2 isBottomBarSuppressedByNavigation];
  }

  v6 = sub_188B7E400();
  v7 = v6[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_isBarHidden];

  if (v5 != v7 && (a2 & 1) != 0)
  {
    v8 = [v2 tabBarController];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 _existingView];

      [v10 layoutIfNeeded];
    }
  }

  v13.receiver = v2;
  v13.super_class = _UITabBarControllerVisualStyle_Phone;
  objc_msgSendSuper2(&v13, sel_setBarHidden_animated_, a1 & 1, a2 & 1);
  v11 = *&v2[OBJC_IVAR____UITabBarControllerVisualStyle_Phone____lazy_storage___containerView];
  *(v11 + OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_isBarHidden) = v5;
  result = *(v11 + OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager);
  if (result)
  {
    return [result setBarHidden:v5 animated:a2 & 1];
  }

  __break(1u);
  return result;
}

void sub_1890459D8(char a1, char a2)
{
  v7.super_class = _UITabBarControllerVisualStyle_Phone;
  objc_msgSendSuper2(&v7, sel_setBottomBarSuppressedByNavigation_animated_, a1 & 1, a2 & 1);
  v4 = [v2 isBarHidden] | a1;
  v5 = sub_188B7E400();
  v5[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_isBarHidden] = v4 & 1;
  v6 = *&v5[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager];
  if (v6)
  {
    [v6 setBarHidden_animated_];
  }

  else
  {
    __break(1u);
  }
}

void sub_189045AE0()
{
  v1 = [v0 tabBarController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [(UITabBarController *)v1 _internalTabBar];

  if (!v3)
  {
    return;
  }

  v4 = sub_188B7E400();
  v5 = v4;
  v6 = OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar;
  v7 = *&v4[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar];
  if (v7)
  {
    sub_188A34624(0, &unk_1EA9305D8);
    v8 = v3;
    v9 = v7;
    v10 = v8;
    v11 = sub_18A4A7C88();

    v12 = *&v5[v6];
    if ((v11 & 1) == 0 && v12)
    {
      [(UITabBar *)*&v5[v6] _setGlassGroupContainer:?];
      v13 = *&v5[v6];
      if (v13)
      {
        [v13 removeFromSuperview];
        v12 = *&v5[v6];
      }

      else
      {
        v12 = 0;
      }
    }

    *&v5[v6] = v3;
    v15 = v10;

    v16 = *&v5[v6];
    if (!v16)
    {
      goto LABEL_22;
    }

    v20 = v9;
    v17 = v16;
    v18 = sub_18A4A7C88();

    if (v18)
    {
      v3 = v15;
LABEL_18:

      v5 = v3;
      goto LABEL_19;
    }

    v14 = *&v5[v6];
    if (!v14)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_16:
    [v5 insertSubview:v14 atIndex:0];
    v19 = *&v5[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager];
    if (v19)
    {
      [v19 tabBarDidChange_];
      v20 = v7;
      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
    return;
  }

  *&v4[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar] = v3;
  v20 = v3;
  v14 = *&v5[v6];
  if (v14)
  {
    goto LABEL_16;
  }

  v3 = v20;
LABEL_19:
}

void sub_189045D3C()
{
  v1 = [v0 tabBarController];
  if (v1)
  {
    v2 = v1;
    v3 = [(UITabBarController *)v1 _internalTabBar];

    if (v3)
    {
      v4 = [v0 tabBarController];
      v5 = [v4 bottomAccessory];

      if (v5)
      {

        v6 = [(UITabBar *)v3 _frameForHostedElement:0 options:?];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        [v3 bounds];
        CGRectGetMaxY(v13);
        v14.origin.x = v6;
        v14.origin.y = v8;
        v14.size.width = v10;
        v14.size.height = v12;
        CGRectGetMinY(v14);
      }
    }
  }
}

id _UITabBarControllerVisualStyle_Phone.init(tabBarController:)(void *a1)
{
  v3 = OBJC_IVAR____UITabBarControllerVisualStyle_Phone_scrollPocketContainerInteraction;
  *&v1[v3] = [objc_allocWithZone(_UIScrollPocketContainerInteraction) initWithScrollView:0 edge:4];
  v4 = OBJC_IVAR____UITabBarControllerVisualStyle_Phone_containerWrapperView;
  type metadata accessor for _UITabBarContainerWrapperView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____UITabBarControllerVisualStyle_Phone____lazy_storage___containerView] = 0;
  v7.receiver = v1;
  v7.super_class = _UITabBarControllerVisualStyle_Phone;
  v5 = objc_msgSendSuper2(&v7, sel_initWithTabBarController_, a1);

  return v5;
}

id _UITabBarControllerVisualStyle_Phone.init(instance:)(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = [v2 initWithInstance_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

{
  v3 = OBJC_IVAR____UITabBarControllerVisualStyle_Phone_scrollPocketContainerInteraction;
  *&v1[v3] = [objc_allocWithZone(_UIScrollPocketContainerInteraction) initWithScrollView:0 edge:4];
  v4 = OBJC_IVAR____UITabBarControllerVisualStyle_Phone_containerWrapperView;
  type metadata accessor for _UITabBarContainerWrapperView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____UITabBarControllerVisualStyle_Phone____lazy_storage___containerView] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_18A4A86A8();
  v8.receiver = v1;
  v8.super_class = _UITabBarControllerVisualStyle_Phone;
  v6 = objc_msgSendSuper2(&v8, sel_initWithInstance_, v5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v6;
}

id sub_1890461F4(double a1, double a2, double a3, double a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for _UITabBarContainerWrapperView();
  v14 = &type metadata for _GlassGroup;
  v15 = &protocol witness table for _GlassGroup;
  v11 = 256;
  v12 = 0;
  v13 = 1;
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  UIView._background.setter(&v11);

  return v9;
}

void sub_1890463C8(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar);
  if (a1)
  {
    if (!v4)
    {
      return;
    }

    sub_188A34624(0, &unk_1EA9305D8);
    v6 = v4;
    v7 = a1;
    v8 = sub_18A4A7C88();

    if (v8)
    {
      return;
    }

    v4 = *(v2 + v3);
  }

  if (v4)
  {
    [(UITabBar *)v4 _setGlassGroupContainer:?];
    v9 = *(v2 + v3);
    if (v9)
    {

      [v9 removeFromSuperview];
    }
  }
}

void sub_1890464A0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar;
  v5 = *&v1[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar];
  if (!a1)
  {
LABEL_6:
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_5;
  }

  sub_188A34624(0, &unk_1EA9305D8);
  v6 = v5;
  v7 = a1;
  v8 = sub_18A4A7C88();

  if (v8)
  {
    return;
  }

  v5 = *&v2[v4];
  if (!v5)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  [v2 insertSubview:v5 atIndex:0];
  v9 = *&v2[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager];
  if (v9)
  {

    [v9 tabBarDidChange_];
  }

  else
  {
    __break(1u);
  }
}

id sub_189046678(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1890466B0()
{
  objc_opt_self();
  if (+[UIView _uip_transitionEnabled]&& !UIAccessibilityIsReduceMotionEnabled())
  {
    v1 = [v0 tabBarController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 view];

      if (!v3)
      {
        __break(1u);
        return;
      }

      v4 = [v3 backgroundColor];
    }

    else
    {
      v4 = 0;
    }

    [objc_allocWithZone(_UITabCrossFadeTransition) initWithBackgroundColor_];
  }
}

uint64_t sub_189046784@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18904B09C();
  sub_18A4A2C08();

  *a2 = *(v3 + 57);
  return result;
}

void sub_189046834()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_188AF8408(0xD00000000000001CLL, 0x800000018A6A1560, 1u);

    byte_1EA93AA40 = v2 & 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_18904689C()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_188AF8408(0xD00000000000002ALL, 0x800000018A6A1530, 1u);

    byte_1EA93AA41 = v2 & 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_189046904()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_188AF8408(0xD000000000000023, 0x800000018A6A15E0, 1u);

    byte_1EA93AA42 = v2 & 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_18904696C()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_188AF8408(0xD000000000000019, 0x800000018A6A15C0, 1u);

    byte_1EA93AA43 = v2 & 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1890469D4()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_188C574E8(0.3);

    qword_1EA93AA48 = *&v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_189046A48()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_188C574E8(0.6);

    qword_1EA93AA50 = *&v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_189046ABC()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____UIScrollEdgeEffectViewInteraction_topEdgeEffect;
  *&v0[v1] = [objc_allocWithZone(UIScrollEdgeEffect) init];
  v2 = OBJC_IVAR____UIScrollEdgeEffectViewInteraction_leftEdgeEffect;
  *&v0[v2] = [objc_allocWithZone(UIScrollEdgeEffect) init];
  v3 = OBJC_IVAR____UIScrollEdgeEffectViewInteraction_bottomEdgeEffect;
  *&v0[v3] = [objc_allocWithZone(UIScrollEdgeEffect) init];
  v4 = OBJC_IVAR____UIScrollEdgeEffectViewInteraction_rightEdgeEffect;
  *&v0[v4] = [objc_allocWithZone(UIScrollEdgeEffect) init];
  v0[OBJC_IVAR____UIScrollEdgeEffectViewInteraction_isEnabled] = 1;
  v5 = OBJC_IVAR____UIScrollEdgeEffectViewInteraction_ordersBlurOverLuminanceAdjustment;
  if (qword_1EA931E58 != -1)
  {
    swift_once();
  }

  v0[v5] = byte_1EA995140;
  *&v0[OBJC_IVAR____UIScrollEdgeEffectViewInteraction_registrationInteraction] = 0;
  v6 = OBJC_IVAR____UIScrollEdgeEffectViewInteraction_effectView;
  v7 = [objc_allocWithZone(_UITouchPassthroughView) init];
  v8 = [v7 layer];
  [v8 setSkipHitTesting_];

  *&v0[v6] = v7;
  v9 = OBJC_IVAR____UIScrollEdgeEffectViewInteraction_captureView;
  v10 = [objc_allocWithZone(_UITouchPassthroughView) init];
  v11 = [v10 layer];
  [v11 setSkipHitTesting_];

  *&v0[v9] = v10;
  *&v0[OBJC_IVAR____UIScrollEdgeEffectViewInteraction_topPocket] = 0;
  *&v0[OBJC_IVAR____UIScrollEdgeEffectViewInteraction_leftPocket] = 0;
  *&v0[OBJC_IVAR____UIScrollEdgeEffectViewInteraction_bottomPocket] = 0;
  *&v0[OBJC_IVAR____UIScrollEdgeEffectViewInteraction_rightPocket] = 0;
  v20.receiver = v0;
  v20.super_class = _UIScrollEdgeEffectViewInteraction;
  v12 = objc_msgSendSuper2(&v20, sel_init);
  v13 = objc_allocWithZone(_UIScrollPocketRegistrationInteraction);
  v14 = v12;
  v15 = [v13 init];
  v16 = OBJC_IVAR____UIScrollEdgeEffectViewInteraction_registrationInteraction;
  v17 = *&v14[OBJC_IVAR____UIScrollEdgeEffectViewInteraction_registrationInteraction];
  *&v14[OBJC_IVAR____UIScrollEdgeEffectViewInteraction_registrationInteraction] = v15;
  v18 = v15;

  if (v18)
  {
    *&v18[OBJC_IVAR____UIScrollPocketRegistrationInteraction_receiver + 8] = &off_1EFADD208;
    swift_unknownObjectWeakAssign();

    v19 = *&v14[v16];
    if (v19)
    {
      [v19 setDelegate_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_189046E5C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_18A4A7258();
    [(UIView *)v2 _removeChildTraitCollectionTransformWithIdentifier:v3];

    v4 = [v1 registrationInteraction];
    if (!v4)
    {
      __break(1u);
      goto LABEL_11;
    }

    v5 = v4;
    [v2 removeInteraction_];

    [(UIView *)v2 _setNeedsToBeNotifiedOfVisibilityChange:?];
  }

  v6 = [v1 view];
  if (!v6)
  {
    return;
  }

  v9 = v6;
  [v1 updateScrollPocketCollectorModelHidden];
  v7 = [v1 registrationInteraction];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v9 addInteraction_];

  [(UIView *)v9 _setNeedsToBeNotifiedOfVisibilityChange:?];
}

char *sub_189047034(char *result)
{
  v2 = result - 1;
  if (result - 1) <= 7 && ((0x8Bu >> v2))
  {
    v3 = [v1 *off_1E70F1EA8[v2]];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_189047180()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_188AF8408(0xD000000000000021, 0x800000018A6A1640, 0);

    byte_1EA995140 = v2 & 1;
  }

  else
  {
    __break(1u);
  }
}

id sub_1890473E0(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) <= 7 && ((0x8Bu >> v2))
  {
    return [v1 *off_1E70F1EE8[v2]];
  }

  else
  {
    return 0;
  }
}

id sub_189047484(uint64_t a1)
{
  v2 = v1;
  result = [v1 existingPocketFor_];
  if (!result)
  {
    v13 = 0;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = &v13;
    v6[3] = v2;
    v6[4] = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18904B198;
    *(v7 + 24) = v6;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_39_3;
    v8 = _Block_copy(aBlock);
    v9 = v2;

    [v5 performWithoutAnimation_];
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      v10 = a1 - 1;
      if (a1 - 1) <= 7 && ((0x8Bu >> v10))
      {
        result = [v9 *off_1E70F1F28[v10]];
        if (v13)
        {
          v11 = v13;

          return v11;
        }

LABEL_10:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

char *sub_189047670(id *a1, id a2, uint64_t a3)
{
  v6 = [a2 edgeEffectFor_];
  v7 = [a2 ordersBlurOverLuminanceAdjustment];
  v8 = objc_allocWithZone(type metadata accessor for ScrollEdgeEffectView());
  v9 = sub_18903023C(v6, v7);
  v10 = *a1;
  *a1 = v9;
  v11 = v9;

  v12 = [a2 view];
  swift_unknownObjectWeakAssign();

  result = *a1;
  if (*a1)
  {
    v14 = *&result[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_edge];
    *&result[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_edge] = a3;
    if (v14 != a3)
    {
      [result setNeedsLayout];
    }

    v15 = *a1;
    v16 = *MEMORY[0x1E695F040];
    v17 = *(MEMORY[0x1E695F040] + 8);
    v18 = *(MEMORY[0x1E695F040] + 16);
    v19 = *(MEMORY[0x1E695F040] + 24);

    return [a2 updatePocket:v15 contentRect:0 velocity:0 isTracking:v16 shouldAnimateVisibility:{v17, v18, v19, 0.0}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_189047838()
{
  v1 = v0;
  result = [v0 isEnabled];
  if (result)
  {
    v3 = [v0 topPocket];
    if (v3)
    {
      v4 = v3;
      Strong = [*&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect] _overrideGeometryView];
      if (!Strong)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
      }

      v6 = Strong;
      sub_188FFC040(Strong);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v55.origin.x = v8;
      v55.origin.y = v10;
      v55.size.width = v12;
      v55.size.height = v14;
      IsEmpty = CGRectIsEmpty(v55);

      if (!IsEmpty)
      {
        return 1;
      }
    }

    v16 = [v1 leftPocket];
    if (v16)
    {
      v17 = v16;
      v18 = [*&v16[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect] _overrideGeometryView];
      if (!v18)
      {
        v18 = swift_unknownObjectWeakLoadStrong();
      }

      v19 = v18;
      sub_188FFC040(v18);
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v56.origin.x = v21;
      v56.origin.y = v23;
      v56.size.width = v25;
      v56.size.height = v27;
      v28 = CGRectIsEmpty(v56);

      if (!v28)
      {
        return 1;
      }
    }

    v29 = [v1 bottomPocket];
    if (v29)
    {
      v30 = v29;
      v31 = [*&v29[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect] _overrideGeometryView];
      if (!v31)
      {
        v31 = swift_unknownObjectWeakLoadStrong();
      }

      v32 = v31;
      sub_188FFC040(v31);
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      v57.origin.x = v34;
      v57.origin.y = v36;
      v57.size.width = v38;
      v57.size.height = v40;
      v41 = CGRectIsEmpty(v57);

      if (!v41)
      {
        return 1;
      }
    }

    v42 = [v1 rightPocket];
    if (!v42)
    {
      return 0;
    }

    v43 = v42;
    v44 = [*&v42[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect] _overrideGeometryView];
    if (!v44)
    {
      v44 = swift_unknownObjectWeakLoadStrong();
    }

    v45 = v44;
    sub_188FFC040(v44);
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;

    v58.origin.x = v47;
    v58.origin.y = v49;
    v58.size.width = v51;
    v58.size.height = v53;
    v54 = CGRectIsEmpty(v58);

    return !v54;
  }

  return result;
}

void sub_189047B5C()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 topPocket];
    if (v4)
    {
      v5 = v4;
      Strong = [*&v4[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect] _overrideGeometryView];
      if (!Strong)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
      }

      v7 = Strong;
      sub_188FFC040(Strong);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = [v3 superview];
      [v3 convertRect:v16 fromView:{v9, v11, v13, v15}];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      [v3 bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v120.origin.x = v18;
      v120.origin.y = v20;
      v120.size.width = v22;
      v120.size.height = v24;
      if (!CGRectIsNull(v120))
      {
        v121.origin.x = v18;
        v121.origin.y = v20;
        v121.size.width = v22;
        v121.size.height = v24;
        CGRectGetMaxY(v121);
        v122.origin.x = v26;
        v122.origin.y = v28;
        v122.size.width = v30;
        v122.size.height = v32;
        CGRectGetMinY(v122);
      }
    }

    v33 = [v1 leftPocket];
    if (v33)
    {
      v34 = v33;
      v35 = [*&v33[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect] _overrideGeometryView];
      if (!v35)
      {
        v35 = swift_unknownObjectWeakLoadStrong();
      }

      v36 = v35;
      sub_188FFC040(v35);
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v45 = [v3 superview];
      [v3 convertRect:v45 fromView:{v38, v40, v42, v44}];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;

      [v3 bounds];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v123.origin.x = v47;
      v123.origin.y = v49;
      v123.size.width = v51;
      v123.size.height = v53;
      if (!CGRectIsNull(v123))
      {
        v124.origin.x = v47;
        v124.origin.y = v49;
        v124.size.width = v51;
        v124.size.height = v53;
        CGRectGetMaxX(v124);
        v125.origin.x = v55;
        v125.origin.y = v57;
        v125.size.width = v59;
        v125.size.height = v61;
        CGRectGetMinX(v125);
      }
    }

    v62 = [v1 bottomPocket];
    if (v62)
    {
      v63 = v62;
      v64 = [*&v62[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect] _overrideGeometryView];
      if (!v64)
      {
        v64 = swift_unknownObjectWeakLoadStrong();
      }

      v65 = v64;
      sub_188FFC040(v64);
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;

      v74 = [v3 superview];
      [v3 convertRect:v74 fromView:{v67, v69, v71, v73}];
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v82 = v81;

      [v3 bounds];
      v84 = v83;
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v126.origin.x = v76;
      v126.origin.y = v78;
      v126.size.width = v80;
      v126.size.height = v82;
      if (!CGRectIsNull(v126))
      {
        v127.origin.x = v84;
        v127.origin.y = v86;
        v127.size.width = v88;
        v127.size.height = v90;
        CGRectGetMaxY(v127);
        v128.origin.x = v76;
        v128.origin.y = v78;
        v128.size.width = v80;
        v128.size.height = v82;
        CGRectGetMinY(v128);
      }
    }

    v91 = [v1 rightPocket];
    if (v91)
    {
      v92 = v91;
      v93 = [*&v91[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect] _overrideGeometryView];
      if (!v93)
      {
        v93 = swift_unknownObjectWeakLoadStrong();
      }

      v94 = v93;
      sub_188FFC040(v93);
      v96 = v95;
      v98 = v97;
      v100 = v99;
      v102 = v101;

      v103 = [v3 superview];
      [v3 convertRect:v103 fromView:{v96, v98, v100, v102}];
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v111 = v110;

      [v3 bounds];
      v113 = v112;
      v115 = v114;
      v117 = v116;
      v119 = v118;
      v129.origin.x = v105;
      v129.origin.y = v107;
      v129.size.width = v109;
      v129.size.height = v111;
      if (!CGRectIsNull(v129))
      {
        v130.origin.x = v113;
        v130.origin.y = v115;
        v130.size.width = v117;
        v130.size.height = v119;
        CGRectGetMaxX(v130);
        v131.origin.x = v105;
        v131.origin.y = v107;
        v131.size.width = v109;
        v131.size.height = v111;
        CGRectGetMinX(v131);
      }
    }

    else
    {
    }
  }
}

void sub_189048130()
{
  v1 = [v0 view];
  if (v1)
  {
    object = v1;
    if ([v0 isEnabled])
    {
      v2 = [(UIView *)object _traitOverrides];
      v3 = sub_18A4A7258();
      v4 = [(_UITraitOverrides *)v2 _hasChildTransformWithIdentifier:v3];

      if ((v4 & 1) == 0)
      {
        v5 = sub_18A4A7258();
        aBlock[4] = sub_188E26A4C;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_188A85DA8;
        aBlock[3] = &block_descriptor_29_0;
        v6 = _Block_copy(aBlock);

        [(UIView *)object _addChildTraitCollectionTransformWithIdentifier:v5 transform:v6];
        _Block_release(v6);

        return;
      }
    }

    else
    {
      v7 = sub_18A4A7258();
      [(UIView *)object _removeChildTraitCollectionTransformWithIdentifier:v7];
    }
  }
}

void sub_18904834C(char a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  v15 = [v7 view];
  if (v15)
  {

    [v7 updateEffectAndCaptureViewFrames];
    v16 = [v7 topPocket];
    [v7 updatePocket:v16 contentRect:a1 & 1 velocity:a2 & 1 isTracking:a3 shouldAnimateVisibility:{a4, a5, a6, a7}];

    v17 = [v7 leftPocket];
    [v7 updatePocket:v17 contentRect:a1 & 1 velocity:a2 & 1 isTracking:a3 shouldAnimateVisibility:{a4, a5, a6, a7}];

    v18 = [v7 bottomPocket];
    [v7 updatePocket:v18 contentRect:a1 & 1 velocity:a2 & 1 isTracking:a3 shouldAnimateVisibility:{a4, a5, a6, a7}];

    v19 = [v7 rightPocket];
    [v7 updatePocket:v19 contentRect:a1 & 1 velocity:a2 & 1 isTracking:a3 shouldAnimateVisibility:{a4, a5, a6, a7}];
  }
}

void sub_1890485E8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 effectView];
    [v2 bounds];
    [v3 setFrame_];

    v4 = [v0 captureView];
    [v2 bounds];
    [v4 setFrame_];
  }
}

void sub_189048728(char *a1, char isEscapingClosureAtFileLocation, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v9 = v8;
  LOBYTE(v10) = a3;
  v18 = [v9 view];
  if (!v18)
  {
    return;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

  v179 = v18;
  v19 = *&a1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_edge];
  v180 = a1;
  v20 = [v9 isEnabled];
  v21 = v180;
  if (!v20)
  {
    goto LABEL_118;
  }

  v177 = a8;
  v22 = *&v180[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect];
  Strong = [v22 _overrideGeometryView];
  if (!Strong)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  v24 = Strong;
  sub_188FFC040(Strong);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v184.origin.x = v26;
  v184.origin.y = v28;
  v184.size.width = v30;
  v184.size.height = v32;
  IsEmpty = CGRectIsEmpty(v184);
  v21 = v180;
  if (IsEmpty)
  {
LABEL_118:
    if (*(*&v21[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment] + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor))
    {
      v34 = 0;
    }

    else
    {
      v34 = *&v21[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_backgroundCapture];
    }

    [v34 removeFromSuperview];

    [v180 removeFromSuperview];
    v18 = v180;
    goto LABEL_11;
  }

  [v179 bounds];
  v178 = v37;
  v39 = v38;
  v175 = v36;
  v174 = v35;
  if (v19 == 4)
  {
    v40 = v35;
    v41 = v36;
    if (qword_1EA931E28 != -1)
    {
      swift_once();
    }

    if (byte_1EA93AA40 == 1)
    {
      v42 = [v179 window];
      v176 = v39;
      if (v42)
      {
        v43 = v42;
        v44 = [v42 _primaryKeyboardTrackingGuide];
        [v44 layoutFrame];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v170 = v51;

        v171 = v46;
        v185.origin.x = v46;
        MaxY = v48;
        v185.origin.y = v48;
        height = v50;
        v185.size.width = v50;
        v52 = v170;
        v185.size.height = v170;
        if (CGRectIsEmpty(v185))
        {

          v53 = v171;
          v54 = MaxY;
          v55 = height;
        }

        else
        {
          [v43 convertRect:v179 toCoordinateSpace:{v171, MaxY, height, v170}];
          v57 = v56;
          v59 = v58;
          height = v60;
          v52 = v61;

          v55 = height;
          v54 = v59;
          v53 = v57;
        }

        v39 = v176;
        v41 = v175;
      }

      else
      {
        v53 = *MEMORY[0x1E695F050];
        v54 = *(MEMORY[0x1E695F050] + 8);
        v55 = *(MEMORY[0x1E695F050] + 16);
        v52 = *(MEMORY[0x1E695F050] + 24);
      }

      v186.origin.x = v178;
      v186.origin.y = v40;
      v186.size.width = v41;
      v186.size.height = v39;
      v62 = v52;
      v187 = CGRectIntersection(v186, *&v53);
      x = v187.origin.x;
      y = v187.origin.y;
      width = v187.size.width;
      height = v187.size.height;
      if (!CGRectIsNull(v187))
      {
        v188.origin.x = x;
        v188.origin.y = y;
        v188.size.width = width;
        v188.size.height = height;
        MaxY = CGRectGetMaxY(v188);
        v189.origin.x = v178;
        v189.origin.y = v174;
        v189.size.width = v175;
        v189.size.height = v39;
        if (MaxY != CGRectGetMaxY(v189))
        {
          v39 = v176;
          goto LABEL_34;
        }

        v190.origin.x = x;
        v190.origin.y = y;
        v190.size.width = width;
        v190.size.height = height;
        v66 = CGRectGetHeight(v190);
        if (qword_1EA931E30 != -1)
        {
          swift_once();
        }

        v39 = v176;
        if (byte_1EA93AA41 == 1)
        {
          v67 = 0.0;
          if (v66 <= 0.0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          [v179 _currentScreenScale];
          v67 = 81.0 / v68;
          if (v67 >= v66)
          {
            goto LABEL_34;
          }
        }

        v39 = v176 - (v66 - v67);
      }
    }
  }

LABEL_34:
  v176 = v39;
  v69 = [v22 _overrideGeometryView];
  if (!v69)
  {
    v69 = swift_unknownObjectWeakLoadStrong();
  }

  v70 = v69;
  sub_188FFC040(v69);
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;

  v79 = [v179 superview];
  [v179 convertRect:v79 fromView:{v72, v74, v76, v78}];
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;

  if (v19 == 8 || (v88 = v19, v19 == 2))
  {
    v89 = [v179 _flipsHorizontalAxis];
    v90 = 2;
    if (v19 == 2)
    {
      v90 = 8;
    }

    if (v89)
    {
      v88 = v90;
    }

    else
    {
      v88 = v19;
    }
  }

  MaxY = v83;
  v170 = v85;
  v169 = v87;
  sub_18904ACF8(v19, v81, v83, v85, v87, v178, v174, v175, v176);
  height = v91;
  if (v88 > 3)
  {
    v92 = v180;
    if (v88 != 4)
    {
      if (v88 == 8)
      {
        v171 = v81;
        v93 = v178;
        v192.origin.x = v178;
        v192.origin.y = v174;
        v192.size.width = v175;
        v192.size.height = v176;
        v94 = CGRectGetMaxX(v192) - height;
        goto LABEL_50;
      }

LABEL_51:

      v18 = v179;
LABEL_11:

      return;
    }

    v171 = v81;
    v198.origin.x = v178;
    v198.origin.y = v174;
    v198.size.width = v175;
    v198.size.height = v176;
    MinX = CGRectGetMinX(v198);
    v199.origin.x = v178;
    v199.origin.y = v174;
    v199.size.width = v175;
    v199.size.height = v176;
    MinY = CGRectGetMaxY(v199) - height;
    v200.origin.x = v178;
    v200.origin.y = v174;
    v200.size.width = v175;
    v95 = height;
    v200.size.height = v176;
    v96 = CGRectGetWidth(v200);
    v97 = 2;
  }

  else
  {
    v92 = v180;
    if (v88 != 1)
    {
      if (v88 == 2)
      {
        v171 = v81;
        v93 = v178;
        v191.origin.x = v178;
        v191.origin.y = v174;
        v191.size.width = v175;
        v191.size.height = v176;
        v94 = CGRectGetMinX(v191);
LABEL_50:
        MinX = v94;
        v193.origin.x = v93;
        v193.origin.y = v174;
        v193.size.width = v175;
        v193.size.height = v176;
        MinY = CGRectGetMinY(v193);
        v194.origin.x = v93;
        v194.origin.y = v174;
        v194.size.width = v175;
        v194.size.height = v176;
        v95 = CGRectGetHeight(v194);
        v96 = height;
        v97 = 1;
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v171 = v81;
    v195.origin.x = v178;
    v195.origin.y = v174;
    v195.size.width = v175;
    v195.size.height = v176;
    MinX = CGRectGetMinX(v195);
    v196.origin.x = v178;
    v196.origin.y = v174;
    v196.size.width = v175;
    v196.size.height = v176;
    MinY = CGRectGetMinY(v196);
    v197.origin.x = v178;
    v197.origin.y = v174;
    v197.size.width = v175;
    v197.size.height = v176;
    v96 = CGRectGetWidth(v197);
    v97 = 2;
    v95 = height;
  }

LABEL_54:
  v201.origin.x = a4;
  v201.origin.y = a5;
  v201.size.width = a6;
  v201.size.height = a7;
  if (CGRectIsNull(v201) || (v202.origin.x = v171, v202.origin.y = MaxY, v202.size.width = v170, v202.size.height = v169, CGRectIsNull(v202)) || (_UIIntervalFromCGRect(v97, a4, a5, a6, a7), v99 = v98, v101 = v100, _UIIntervalFromCGRect(v97, v171, MaxY, v170, v169), !_UIIntervalSmartIntersectsInterval(v99, v101, v102, v103)))
  {
    if (qword_1EA931E38 != -1)
    {
      swift_once();
    }

    v104 = byte_1EA93AA42;
  }

  else
  {
    v104 = 0;
  }

  v105 = v180;
  [v105 frameForAlignmentRect_];
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  [v179 bounds];
  v205.origin.x = v107;
  v205.origin.y = v109;
  v205.size.width = v111;
  v205.size.height = v113;
  v204 = CGRectIntersection(v203, v205);
  v114 = v204.origin.x;
  v115 = v204.origin.y;
  v116 = v204.size.width;
  v117 = v204.size.height;
  v118 = CGRectIsEmpty(v204);
  v119 = v105;
  v120 = v177;
  if (!v118)
  {
    v121 = [v9 effectView];
    [v121 convertRect:v179 fromCoordinateSpace:{v114, v115, v116, v117}];
    v123 = v122;
    v125 = v124;
    v127 = v126;
    v129 = v128;

    [v105 setFrame_];
    if (*(*&v105[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment] + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor))
    {
      v119 = 0;
    }

    else
    {
      v119 = *&v105[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_backgroundCapture];
    }

    [v119 setFrame_];
  }

  v130 = [v105 isHidden];
  if (v118 != v130)
  {
    [v105 setHidden_];
  }

  v180 = *&v105[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment];
  v178 = *&OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor;
  if (!*&v180[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor])
  {
    v131 = *&v105[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_backgroundCapture];
    if (v118 != [v131 isHidden])
    {
      [v131 setHidden_];
    }
  }

  v132 = COERCE_DOUBLE([v9 edgeEffectFor_]);
  isHiddenOrAncestor = [(UIView *)v179 _isHiddenOrAncestorHidden];
  v134 = v105[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden];
  v105[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden] = isHiddenOrAncestor;
  if (isHiddenOrAncestor != v134)
  {
    [v105 setNeedsLayout];
  }

  if (qword_1ED48FD18 != -1)
  {
    swift_once();
  }

  v135 = sub_188B0C7B8();
  sub_18903454C((v135 & 1));
  *&v105[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_scrollVelocity] = v120;
  v182 = 1.0;
  v136 = 1.0;
  v176 = v132;
  if ([*&v132 isHidden])
  {
    v137 = 0;
LABEL_78:
    v138 = 0.35;
    goto LABEL_93;
  }

  type metadata accessor for UIScrollEdgeEffectStyle(0);
  v139 = [*&v132 style];
  v140 = [objc_opt_self() hardStyle];
  v137 = sub_18A4A7C88();

  if (v137)
  {
    v138 = 0.25;
  }

  else
  {
    v138 = 0.35;
  }

  if (((v137 | v104) & 1) == 0)
  {
    if (qword_1EA931E40 != -1)
    {
      goto LABEL_115;
    }

    goto LABEL_84;
  }

  while (1)
  {
LABEL_93:
    v142 = *&v105[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMaskedBlur];
    if ((v136 == 0.0) | v142[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurEnabled] & v137 & 1)
    {
      v143 = 2;
    }

    else
    {
      v143 = 1;
    }

    v144 = *&v105[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_observableState];
    if (*(v144 + 57) != v143)
    {
      KeyPath = swift_getKeyPath();
      v177 = COERCE_DOUBLE(&v166);
      MEMORY[0x1EEE9AC00](KeyPath);
      v164 = v144;
      v165 = v143;
      aBlock[0] = v144;
      sub_18904B09C();
      sub_18A4A2BF8();
    }

    if ((v10 & 1) == 0)
    {
      break;
    }

    MEMORY[0x1EEE9AC00](v146);
    v162[6] = v105;
    v163 = v137 & 1;
    v164 = &v182;
    MEMORY[0x1EEE9AC00](v147);
    v162[2] = sub_18904B0F4;
    v162[3] = v148;
    v149 = objc_opt_self();
    v150 = swift_allocObject();
    *(v150 + 16) = sub_18903684C;
    *(v150 + 24) = v162;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v150;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_26_5;
    v10 = _Block_copy(aBlock);

    [v149 animateWithSpringDuration:4 bounce:v10 initialSpringVelocity:0 delay:v138 options:0.0 animations:0.0 completion:0.0];
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_104;
    }

    __break(1u);
LABEL_115:
    swift_once();
LABEL_84:
    if (byte_1EA93AA43 != 1)
    {
      v137 = 1;
      goto LABEL_78;
    }

    if (qword_1EA931E50 != -1)
    {
      swift_once();
    }

    v141 = *&qword_1EA93AA50;
    if (qword_1EA931E48 != -1)
    {
      v161 = qword_1EA93AA50;
      swift_once();
      v141 = *&v161;
    }

    v136 = round(_UIUnlerpClamped(v120, v141, *&qword_1EA93AA48) * 16.0) * 0.0625;
    v182 = v136;
    if (isEscapingClosureAtFileLocation)
    {
      v138 = 0.2;
    }

    else
    {
      v138 = 0.35;
    }

    v137 = 1;
  }

  v151 = 0.0;
  if (v137)
  {
    v151 = 1.0;
  }

  [v105 setAlpha_];

  *&v105[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_blurAlpha] = v136;
  [v142 setAlpha_];
LABEL_104:
  v152 = v176;
  v153 = [v179 window];
  if (v153)
  {
    v154 = v153;
    v155 = [v153 windowScene];

    if (v155)
    {
      v156 = [v155 effectiveGeometry];
      v157 = [v156 isInteractivelyResizing];

      if (v157)
      {
        [v105 setNeedsLayout];
      }
    }
  }

  v158 = [v9 effectView];
  [v158 addSubview_];

  if (!*&v180[*&v178])
  {
    v159 = *&v105[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_backgroundCapture];
    v160 = [v9 captureView];
    [v160 addSubview_];
  }
}

void sub_189049910()
{
  v1 = v0;
  v2 = [v0 topPocket];
  if (v2)
  {
    v3 = v2;
    sub_18902F744();
  }

  v4 = [v1 leftPocket];
  if (v4)
  {
    v5 = v4;
    sub_18902F744();
  }

  v6 = [v1 bottomPocket];
  if (v6)
  {
    v7 = v6;
    sub_18902F744();
  }

  v8 = [v1 rightPocket];
  if (v8)
  {
    v9 = v8;
    sub_18902F744();
  }
}

void sub_189049AA4()
{
  v1 = [v0 view];
  if (v1)
  {
    v15 = v1;
    isHiddenOrAncestor = [(UIView *)v1 _isHiddenOrAncestorHidden];
    v3 = [v0 topPocket];
    if (v3)
    {
      v4 = v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden];
      v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden] = isHiddenOrAncestor;
      if (isHiddenOrAncestor != v4)
      {
        v5 = v3;
        [v3 setNeedsLayout];
        v3 = v5;
      }
    }

    v6 = [v0 leftPocket];
    if (v6)
    {
      v7 = v6[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden];
      v6[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden] = isHiddenOrAncestor;
      if (isHiddenOrAncestor != v7)
      {
        v8 = v6;
        [v6 setNeedsLayout];
        v6 = v8;
      }
    }

    v9 = [v0 bottomPocket];
    if (v9)
    {
      v10 = v9[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden];
      v9[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden] = isHiddenOrAncestor;
      if (isHiddenOrAncestor != v10)
      {
        v11 = v9;
        [v9 setNeedsLayout];
        v9 = v11;
      }
    }

    v12 = [v0 rightPocket];
    if (v12)
    {
      v13 = v12[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden];
      v12[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden] = isHiddenOrAncestor;
      if (isHiddenOrAncestor != v13)
      {
        v14 = v12;
        [v12 setNeedsLayout];
        v12 = v14;
      }
    }
  }
}

uint64_t sub_189049D24(void *a1)
{
  v15 = signpost_c2_entryLock_start;
  v16 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_188A4A968;
  v14 = &block_descriptor_84;
  v3 = _Block_copy(&v11);

  [a1 appendProem:v1 block:v3];
  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = [objc_opt_self() succinctStyle];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18904ACE8;
  *(v7 + 24) = v6;
  v15 = sub_188A4B574;
  v16 = v7;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_188A4A968;
  v14 = &block_descriptor_9_0;
  v8 = _Block_copy(&v11);
  v9 = a1;
  v10 = v1;

  [v9 overlayStyle:v5 block:v8];

  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_189049F60(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_18904ACF0;
  *(v5 + 24) = v4;
  v10[4] = sub_188E3FE50;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188A4A968;
  v10[3] = &block_descriptor_19_5;
  v6 = _Block_copy(v10);
  v7 = a1;
  v8 = a2;

  [v7 appendBodySectionWithName:0 block:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_18904A0C4(void *a1, id a2)
{
  v4 = [a2 topPocket];
  v5 = sub_18A4A7258();

  v6 = [a2 leftPocket];
  v7 = sub_18A4A7258();

  v8 = [a2 bottomPocket];
  v9 = sub_18A4A7258();

  v10 = [a2 rightPocket];
  v11 = sub_18A4A7258();
}

uint64_t sub_18904A2F4(char a1)
{
  v2 = v1;
  if (![v2 isEnabled])
  {
    return 0;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  if (a1)
  {
    v4 = [v2 view];
    if (v4)
    {
      v5 = v4;
      v24 = 0x65695674736F6820;
      v25 = 0xEA00000000003D77;
      v23[3] = sub_188A34624(0, &qword_1ED48F680);
      v23[0] = v5;
      v6 = v5;
      v7 = sub_1890F5120(v23);
      v9 = v8;
      sub_188A553EC(v23);
      MEMORY[0x18CFE22D0](v7, v9);

      MEMORY[0x18CFE22D0](v24, v25);
    }
  }

  v10 = [v2 topPocket];
  if (v10)
  {
    strcpy(v23, " topEdge=<");
    BYTE3(v23[1]) = 0;
    HIDWORD(v23[1]) = -369098752;
    v11 = v10;
    v12 = sub_189036514();
    MEMORY[0x18CFE22D0](v12);

    MEMORY[0x18CFE22D0](62, 0xE100000000000000);
    MEMORY[0x18CFE22D0](v23[0], v23[1]);
  }

  v13 = [v2 bottomPocket];
  if (v13)
  {
    v14 = v13;
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_18A4A80E8();

    strcpy(v23, " bottomEdge=<");
    HIWORD(v23[1]) = -4864;
    v15 = sub_189036514();
    MEMORY[0x18CFE22D0](v15);

    MEMORY[0x18CFE22D0](62, 0xE100000000000000);
    MEMORY[0x18CFE22D0](v23[0], v23[1]);
  }

  v16 = [v2 leftPocket];
  if (v16)
  {
    strcpy(v23, " leftEdge=<");
    HIDWORD(v23[1]) = -352321536;
    v17 = v16;
    v18 = sub_189036514();
    MEMORY[0x18CFE22D0](v18);

    MEMORY[0x18CFE22D0](62, 0xE100000000000000);
    MEMORY[0x18CFE22D0](v23[0], v23[1]);
  }

  v19 = [v2 rightPocket];
  if (v19)
  {
    strcpy(v23, " rightEdge=<");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    v20 = v19;
    v21 = sub_189036514();
    MEMORY[0x18CFE22D0](v21);

    MEMORY[0x18CFE22D0](62, 0xE100000000000000);
    MEMORY[0x18CFE22D0](v23[0], v23[1]);
  }

  return v26;
}

void sub_18904A7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v8 = [v3 forcingPocketFor_];
  if (a3(a1))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      [Strong setNeedsLayout];
    }

    [v8 setNeedsLayout];
  }
}

void sub_18904A868(uint64_t a1, uint64_t a2)
{
  v4 = [v2 existingPocketFor_];
  if (v4)
  {
    v7 = v4;
    if (sub_188FFBBA4(a1))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        [Strong setNeedsLayout];
      }

      [v7 setNeedsLayout];
    }
  }
}

__n128 sub_18904A92C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [v2 forcingPocketFor_];
  v5 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_observableState;
  v6 = *&v4[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_observableState];
  swift_getKeyPath();
  sub_18904B09C();
  sub_18A4A2C08();

  if (*(v6 + 58) == 1)
  {
    v7 = *&v4[v5];
    swift_getKeyPath();
    sub_18A4A2C08();

    v11 = *(v7 + 32);
    v12 = *(v7 + 16);
    v8 = *(v7 + 48);
    v9 = *(v7 + 56);
  }

  else
  {
    v8 = 0;
    v11 = 0u;
    v12 = 0u;
    v9 = 1;
  }

  result = v11;
  *a2 = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  return result;
}

void sub_18904AA54(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [v2 existingPocketFor_];
  if (v4 && (v5 = *&v4[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_observableState], v6 = v4, swift_getKeyPath(), sub_18904B09C(), sub_18A4A2C08(), , v7 = *(v5 + 57), v8 = [v6 window], v6, v8))
  {
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

uint64_t sub_18904AB34(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 edgeEffectFor_];
  v4 = [v3 style];

  v5 = [objc_opt_self() hardStyle];
  type metadata accessor for UIScrollEdgeEffectStyle(0);
  v6 = sub_18A4A7C88();

  v7 = [v2 view];
  v8 = [v7 window];

  if (v8)
  {

    v9 = v6 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

double sub_18904AC8C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18904A92C(a1, &v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

void sub_18904ACF8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (!CGRectIsNull(*&a2))
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        v22.origin.x = a2;
        v22.origin.y = a3;
        v22.size.width = a4;
        v22.size.height = a5;
        CGRectGetMaxY(v22);
        v23.origin.x = a6;
        v23.origin.y = a7;
        v23.size.width = a8;
        v23.size.height = a9;
        CGRectGetMinY(v23);
        return;
      }

      if (a1 == 2)
      {
        v18.origin.x = a2;
        v18.origin.y = a3;
        v18.size.width = a4;
        v18.size.height = a5;
        CGRectGetMaxX(v18);
        v19.origin.x = a6;
        v19.origin.y = a7;
        v19.size.width = a8;
        v19.size.height = a9;
        CGRectGetMinX(v19);
        return;
      }

      goto LABEL_12;
    }

    if (a1 == 4)
    {
      v20.origin.x = a6;
      v20.origin.y = a7;
      v20.size.width = a8;
      v20.size.height = a9;
      CGRectGetMaxY(v20);
      v21.origin.x = a2;
      v21.origin.y = a3;
      v21.size.width = a4;
      v21.size.height = a5;
      CGRectGetMinY(v21);
      return;
    }

    if (a1 != 8)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    CGRectGetMaxX(v24);
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    CGRectGetMinX(v25);
  }
}

void sub_18904AE58()
{
  v1 = v0;
  v2 = [v0 topPocket];
  if (v2)
  {
    v3 = v2;
    if (sub_188FFBC50())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        [Strong setNeedsLayout];
      }

      [v3 setNeedsLayout];
    }
  }

  v6 = [v1 leftPocket];
  if (v6)
  {
    v7 = v6;
    if (sub_188FFBC50())
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        [v8 setNeedsLayout];
      }

      [v7 setNeedsLayout];
    }
  }

  v10 = [v1 bottomPocket];
  if (v10)
  {
    v11 = v10;
    if (sub_188FFBC50())
    {
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        [v12 setNeedsLayout];
      }

      [v11 setNeedsLayout];
    }
  }

  v14 = [v1 rightPocket];
  if (v14)
  {
    v17 = v14;
    if (sub_188FFBC50())
    {
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        [v15 setNeedsLayout];
      }

      [v17 setNeedsLayout];
    }
  }
}

unint64_t sub_18904B09C()
{
  result = qword_1EA93A728;
  if (!qword_1EA93A728)
  {
    type metadata accessor for ScrollEdgeEffectView.ObservableState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A728);
  }

  return result;
}

id sub_18904B0F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = 0.0;
  if (v2)
  {
    v4 = 1.0;
  }

  [v1 setAlpha_];
  *&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_blurAlpha] = *v3;
  v5 = *&v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMaskedBlur];

  return [v5 setAlpha_];
}

__n128 sub_18904B1A8@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[3];
  v11[2] = a1[2];
  v11[3] = v4;
  v11[4] = a1[4];
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[3];
  v12[2] = a2[2];
  v12[3] = v6;
  v12[4] = a2[4];
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  sub_188C564AC(v11, v12, v10);
  v8 = v10[3];
  *(a3 + 32) = v10[2];
  *(a3 + 48) = v8;
  *(a3 + 64) = v10[4];
  result = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = result;
  return result;
}

unint64_t sub_18904B25C(uint64_t a1)
{
  result = sub_18904B284();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18904B284()
{
  result = qword_1EA93AB98;
  if (!qword_1EA93AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93AB98);
  }

  return result;
}

float sub_18904B2D8(float *a1)
{
  result = *a1 * *v1;
  *v1 = result;
  return result;
}

unint64_t sub_18904B348()
{
  result = qword_1EA93ABA0;
  if (!qword_1EA93ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93ABA0);
  }

  return result;
}

void sub_18904B39C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = *(a2 + 8) | (*(a2 + 36) << 32);
  if (v5)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = a1[3];
    v14 = *(a1 + 8) | (*(a1 + 36) << 32);
    if (!v6)
    {
      v10 = v14 & 0x1FFFFFFFFLL;

      v7 = v11;
      v8 = v12;
      v9 = v13;
      goto LABEL_12;
    }

    v21 = *a2;
    v22 = v7;
    v23 = v8;
    v24 = v9;
    v25 = v10;
    v26 = BYTE4(v10) & 1;
    v19 = v14;
    v20 = BYTE4(v14) & 1;

    sub_18908FE70(&v21);
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v15 = v19;
    v16 = v20;
  }

  else
  {
    if (!v6)
    {
      v5 = 0;
      goto LABEL_12;
    }

    v21 = *a2;
    v22 = v7;
    v23 = v8;
    v24 = v9;

    sub_18908FB80(-1.0);
    v5 = v21;
    v8 = v23;
    v15 = v10;
    v16 = BYTE4(v10) & 1;
  }

  v17 = v16 == 0;
  v18 = 0x100000000;
  if (v17)
  {
    v18 = 0;
  }

  v10 = v18 | v15;
LABEL_12:
  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 36) = BYTE4(v10);
}

uint64_t sub_18904B514@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_188CD18C0(*a1, *a2);
  *a3 = result;
  return result;
}

float sub_18904B544(unsigned __int8 a1, float a2, float a3)
{
  v3 = a1;
  result = a2 - a3;
  if (a1 - 1 <= 2)
  {
    v5 = __sincosf_stret(result);
    result = atan2f(v5.__sinval, v5.__cosval);
    if (result > 0.0 && v3 == 2)
    {
      result = result + -6.2832;
    }

    if (result < 0.0 && v3 == 3)
    {
      return result + 6.2832;
    }
  }

  return result;
}

uint64_t static UICornerConfiguration.corners(topLeftRadius:topRightRadius:bottomLeftRadius:bottomRightRadius:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(result + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *a4;
  v11 = *(a4 + 8);
  *a5 = *result;
  *(a5 + 8) = v5;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;
  *(a5 + 32) = v8;
  *(a5 + 40) = v9;
  *(a5 + 48) = v10;
  *(a5 + 56) = v11;
  *(a5 + 64) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_18904B624@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 3)
  {
    if (result == 4)
    {
      v3 = (v2 + 5);
      v2 += 4;
      goto LABEL_10;
    }

    if (result == 8)
    {
      v3 = (v2 + 7);
      v2 += 6;
      goto LABEL_10;
    }
  }

  else
  {
    if (result == 1)
    {
      v3 = (v2 + 1);
LABEL_10:
      v4 = *v3;
      *a2 = *v2;
      *(a2 + 8) = v4;
      return result;
    }

    if (result == 2)
    {
      v3 = (v2 + 3);
      v2 += 2;
      goto LABEL_10;
    }
  }

  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000014, 0x800000018A6A1810);
  type metadata accessor for UIRectCorner(0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t static UICornerConfiguration.capsule(maximumRadius:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = 0x7FEFFFFFFFFFFFFFLL;
  if ((a2 & 1) == 0)
  {
    v3 = result;
  }

  *a3 = v3;
  *(a3 + 8) = 0;
  *(a3 + 16) = v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = v3;
  *(a3 + 40) = 0;
  *(a3 + 48) = v3;
  *(a3 + 56) = 0;
  *(a3 + 64) = MEMORY[0x1E69E7CC0];
  return result;
}

void sub_18904B798(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v26 = *(a1 + 56);
  v10 = *(a1 + 64);
  if (*(a1 + 73) == 1)
  {
    v33 = *a1;
    v34 = v3;
    sub_188A85484(v4);
    sub_188A854E0(v3);
    sub_188E6AEB4(&v33, &v35);
    sub_188A79914(v4);
    sub_188A74020(v3);
    sub_188A79914(v6);
    sub_188A74020(v5);
    sub_188A79914(v8);
    sub_188A74020(v7);
    sub_188A79914(v9);
    sub_188A74020(v26);

    v11 = v35;
    v12 = &unk_1EFAB8D30;
    v13 = v35;
    v14 = v36;
    v15 = v36;
    v16 = v35;
    v17 = v36;
    v18 = v35;
    v19 = v36;
  }

  else
  {
    v33 = *a1;
    v34 = v3;
    sub_188A85484(v4);
    sub_188A854E0(v3);
    sub_188E6AEB4(&v33, &v35);
    v20 = v8;
    v11 = v35;
    v25 = v10;
    v14 = v36;
    v33 = v6;
    v34 = v5;
    sub_188A85484(v6);
    sub_188A854E0(v5);
    sub_188E6AEB4(&v33, &v31);
    v24 = v31;
    v23 = v32;
    v33 = v20;
    v34 = v7;
    sub_188A85484(v20);
    sub_188A854E0(v7);
    sub_188E6AEB4(&v33, &v29);
    v22 = v29;
    v21 = v30;
    v33 = v9;
    v34 = v26;
    sub_188A85484(v9);
    sub_188A854E0(v26);
    sub_188E6AEB4(&v33, &v27);
    sub_188A79914(v4);
    sub_188A74020(v3);
    sub_188A79914(v6);
    sub_188A74020(v5);
    sub_188A79914(v20);
    sub_188A74020(v7);
    sub_188A79914(v9);
    sub_188A74020(v26);

    v17 = v21;
    v16 = v22;
    v15 = v23;
    v13 = v24;
    v18 = v27;
    v19 = v28;
    v12 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v11;
  *(a2 + 8) = v14;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = v19;
  *(a2 + 64) = v12;
}