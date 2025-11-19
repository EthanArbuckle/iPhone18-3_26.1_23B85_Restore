id sub_188FE0164()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for _UIZoomTransitionAnimationSpec();
  objc_msgSendSuper2(&v7, sel_setDefaultValues);
  v1 = OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_morph;
  [*&v0[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_morph] setDampingRatio_];
  [*&v0[v1] setResponse_];
  [*&v0[v1] setInertialTargetSmoothingRatio_];
  [*&v0[v1] setInertialProjectionDeceleration_];
  v2 = OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_transform;
  [*&v0[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_transform] setDampingRatio_];
  [*&v0[v2] setResponse_];
  [*&v0[v2] setInertialTargetSmoothingRatio_];
  [*&v0[v2] setInertialProjectionDeceleration_];
  v3 = OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_position;
  [*&v0[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_position] setDampingRatio_];
  [*&v0[v3] setResponse_];
  [*&v0[v3] setInertialTargetSmoothingRatio_];
  [*&v0[v3] setInertialProjectionDeceleration_];
  v4 = OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general;
  [*&v0[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general] setDampingRatio_];
  [*&v0[v4] setResponse_];
  [*&v0[v4] setInertialTargetSmoothingRatio_];
  [*&v0[v4] setInertialProjectionDeceleration_];
  v5 = OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_cornerRadiusAdjustment;
  [*&v0[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_cornerRadiusAdjustment] setDampingRatio_];
  return [*&v0[v5] setResponse_];
}

char *sub_188FE0398(char *a1)
{
  v3 = [v1 init];
  v4 = OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_morph;
  v5 = *&v3[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_morph];
  v6 = *&a1[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph];
  v7 = v3;
  v8 = v5;
  v9 = v6;
  sub_188F5B7E4(v9);

  v10 = *&a1[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform];
  v11 = *&v7[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_transform];
  v12 = v10;
  sub_188F5B7E4(v12);

  v13 = *&a1[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX];
  v14 = *&v7[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_position];
  v15 = v13;
  sub_188F5B7E4(v15);

  v16 = *&v3[v4];
  v17 = *&v7[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general];
  v18 = v16;

  sub_188F5B7E4(v18);
  return v7;
}

id sub_188FE04F0()
{
  v1 = OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_morph;
  *&v0[v1] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v2 = OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_transform;
  *&v0[v2] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v3 = OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_position;
  *&v0[v3] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v4 = OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general;
  *&v0[v4] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v5 = OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_cornerRadiusAdjustment;
  *&v0[v5] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for _UIZoomTransitionAnimationSpec();
  return objc_msgSendSuper2(&v7, sel_initWithDefaultValues);
}

id sub_188FE0604(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_188FE06DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64C6E0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64C6E0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 valueKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = sub_188A34624(0, &qword_1EA934B90);
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 valueKeyPath:v8];

  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v10 = sub_18A4A7258();
  v11 = sub_18A4A7258();
  v12 = [v4 &selRef:v10 rollbackKeyplane:v11 withTransformationContext:? + 5];

  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v1 + 120) = v6;
  *(v1 + 96) = v12;
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();
  v15 = [v4 &selRef:v13 rollbackKeyplane:v14 withTransformationContext:? + 5];

  if (!v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = objc_opt_self();
  *(v1 + 152) = v6;
  *(v1 + 128) = v15;
  v17 = sub_18A4A7518();

  v18 = sub_18A4A7258();
  v65 = v16;
  v19 = [v16 sectionWithRows:v17 title:v18];

  if (!v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v66 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v66;
  *(v0 + 32) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_18A64C6E0;
  v21 = sub_18A4A7258();
  v22 = sub_18A4A7258();
  v23 = [v4 rowWithTitle:v21 valueKeyPath:v22];

  if (!v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v20 + 56) = v6;
  *(v20 + 32) = v23;
  v24 = sub_18A4A7258();
  v25 = sub_18A4A7258();
  v26 = [v4 rowWithTitle:v24 valueKeyPath:v25];

  if (!v26)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v20 + 88) = v6;
  *(v20 + 64) = v26;
  v27 = sub_18A4A7258();
  v28 = sub_18A4A7258();
  v29 = [v4 rowWithTitle:v27 valueKeyPath:v28];

  if (!v29)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v20 + 120) = v6;
  *(v20 + 96) = v29;
  v30 = sub_18A4A7258();
  v31 = sub_18A4A7258();
  v32 = [v4 rowWithTitle:v30 valueKeyPath:v31];

  if (!v32)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v20 + 152) = v6;
  *(v20 + 128) = v32;
  v33 = sub_18A4A7518();

  v34 = sub_18A4A7258();
  v35 = [v65 sectionWithRows:v33 title:v34];

  if (!v35)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v0 + 88) = v66;
  *(v0 + 64) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_18A6510E0;
  v37 = sub_18A4A7258();
  v38 = sub_18A4A7258();
  v39 = objc_opt_self();
  v40 = [v39 rowWithTitle:v37 childSettingsKeyPath:v38];

  if (!v40)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v41 = sub_188A34624(0, &qword_1EA934BA8);
  *(v36 + 56) = v41;
  *(v36 + 32) = v40;
  v42 = sub_18A4A7258();
  v43 = sub_18A4A7258();
  v44 = [v39 rowWithTitle:v42 childSettingsKeyPath:v43];

  if (!v44)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v36 + 88) = v41;
  *(v36 + 64) = v44;
  v45 = sub_18A4A7258();
  v46 = sub_18A4A7258();
  v47 = [v39 rowWithTitle:v45 childSettingsKeyPath:v46];

  if (!v47)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *(v36 + 120) = v41;
  *(v36 + 96) = v47;
  v48 = sub_18A4A7258();
  v49 = sub_18A4A7258();
  v50 = [v39 rowWithTitle:v48 childSettingsKeyPath:v49];

  if (!v50)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v36 + 152) = v41;
  *(v36 + 128) = v50;
  v51 = sub_18A4A7258();
  v52 = sub_18A4A7258();
  v53 = [v39 rowWithTitle:v51 childSettingsKeyPath:v52];

  if (!v53)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v36 + 184) = v41;
  *(v36 + 160) = v53;
  v54 = sub_18A4A7518();

  v55 = sub_18A4A7258();
  v56 = [v65 sectionWithRows:v54 title:v55];

  if (!v56)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v0 + 120) = v66;
  *(v0 + 96) = v56;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_18A64BFB0;
  v58 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v59 = sub_18A4A7258();
  v60 = [objc_opt_self() rowWithTitle:v59 action:v58];

  if (!v60)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v57 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v57 + 32) = v60;
  v61 = sub_18A4A7518();

  v62 = [v65 sectionWithRows_];

  if (v62)
  {
    *(v0 + 152) = v66;
    *(v0 + 128) = v62;
    v63 = sub_18A4A7258();
    v64 = sub_18A4A7518();

    [v65 moduleWithTitle:v63 contents:v64];

    return;
  }

LABEL_37:
  __break(1u);
}

void sub_188FE1160()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFA0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A6510E0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 childSettingsKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = sub_188A34624(0, &qword_1EA934BA8);
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 childSettingsKeyPath:v8];

  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v10 = sub_18A4A7258();
  v11 = sub_18A4A7258();
  v12 = [v4 rowWithTitle:v10 childSettingsKeyPath:v11];

  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v1 + 120) = v6;
  *(v1 + 96) = v12;
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();
  v15 = [v4 rowWithTitle:v13 childSettingsKeyPath:v14];

  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v1 + 152) = v6;
  *(v1 + 128) = v15;
  v16 = sub_18A4A7258();
  v17 = sub_18A4A7258();
  v18 = [v4 rowWithTitle:v16 childSettingsKeyPath:v17];

  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = objc_opt_self();
  *(v1 + 184) = v6;
  *(v1 + 160) = v18;
  v20 = sub_18A4A7518();

  v21 = sub_18A4A7258();
  v22 = [v19 sectionWithRows:v20 title:v21];

  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v23;
  *(v0 + 32) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_18A64BFB0;
  v25 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v26 = sub_18A4A7258();
  v27 = [objc_opt_self() rowWithTitle:v26 action:v25];

  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v24 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v24 + 32) = v27;
  v28 = sub_18A4A7518();

  v29 = [v19 sectionWithRows_];

  if (v29)
  {
    *(v0 + 88) = v23;
    *(v0 + 64) = v29;
    v30 = sub_18A4A7258();
    v31 = sub_18A4A7518();

    [v19 moduleWithTitle:v30 contents:v31];

    return;
  }

LABEL_17:
  __break(1u);
}

id sub_188FE164C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 72);
  if (*(v4 + 16) && (v5 = sub_188A86B54(a1), (v6 & 1) != 0))
  {
    v11 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();

    return v11;
  }

  else
  {
    swift_endAccess();
    v8 = sub_18922FF78(a1);
    swift_beginAccess();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + 72);
    *(v2 + 72) = 0x8000000000000000;
    sub_188EA006C(v9, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 72) = v12;
    swift_endAccess();
    return v9;
  }
}

double sub_188FE1758(unint64_t a1, unint64_t a2, void *a3)
{
  v23 = &_s26CoreListMetricsEnvironmentVN;
  v24 = &off_1EFAF9A80;
  *&v22 = a3;
  BYTE8(v22) = 7;
  v6 = a3;
  v7 = sub_188C2550C(a2);
  sub_188A53994(v3 + 24, &v19);
  if (a1 >= 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0x302010000uLL >> (8 * a1);
  }

  sub_188A5EBAC(&v22, v25);
  v25[40] = v7;
  sub_188A5EBAC(&v19, v26);
  v26[40] = v8;
  v9 = *(v3 + 16);
  v20 = &type metadata for _UIListMetrics.ShadowProvider;
  v21 = &off_1EFAD6E40;
  *&v19 = swift_allocObject();
  sub_188FE1C9C(v25, v19 + 16);
  sub_188C26A24(v9 + 56, &v16);
  if (v17)
  {
    sub_188A5EBAC(&v16, &v22);
    v10 = v24;
    v11 = __swift_project_boxed_opaque_existential_0(&v22, v23);
    v12 = MEMORY[0x1EEE9AC00](v11);
    (v10[5])(&v16, &v19, sub_188FE1D04, v12);
    sub_188FE1CD4(v25);
    __swift_destroy_boxed_opaque_existential_0Tm(&v22);
  }

  else
  {
    sub_188C26A94(&v16);
    v17 = &_s13ShadowMetricsVN;
    v18 = &off_1EFACAC60;
    v13 = swift_allocObject();
    *&v16 = v13;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    sub_188FE1CD4(v25);
  }

  sub_188A5EBAC(&v16, &v22);
  __swift_destroy_boxed_opaque_existential_0Tm(&v19);
  v14 = *__swift_project_boxed_opaque_existential_0(&v22, v23);
  __swift_project_boxed_opaque_existential_0(&v22, v23);
  __swift_project_boxed_opaque_existential_0(&v22, v23);
  __swift_destroy_boxed_opaque_existential_0Tm(&v22);
  return v14;
}

uint64_t sub_188FE19CC()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return swift_deallocClassInstance();
}

__n128 sub_188FE1D14@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (qword_1ED48CAA0 != -1)
  {
    v49 = a4;
    swift_once();
    a4 = v49;
  }

  v9 = qword_1ED4A3490;
  v69 = &_s26CoreListMetricsEnvironmentVN;
  v70 = &off_1EFAF9A80;
  v67 = a4;
  v68 = 7;
  v10 = a4;
  v11 = sub_188C2550C(a2);
  sub_188A53994(v9 + 24, v72);
  v12 = sub_18922FCD0(a3);
  swift_getObjectType();
  sub_18922FDA4(v73);
  v13 = sub_18922FDC4(a1);
  v71 = v11;
  v72[40] = v12;
  v74 = v13;
  v55.n128_u64[0] = &type metadata for _UIListMetrics.CellProvider;
  v55.n128_u64[1] = &off_1EFAD6D98;
  v54[0] = swift_allocObject();
  sub_188FE2444(&v67, v54[0] + 16);
  sub_189174340(v54, v65);
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  v14 = __swift_project_boxed_opaque_existential_0(v65, v66);
  v50 = qword_18A65AAB8[*__swift_project_boxed_opaque_existential_0(v14, v14[3])];
  v15 = __swift_project_boxed_opaque_existential_0(v65, v66);
  v16 = __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  v17 = *(v16 + 3);
  v81[0] = *(v16 + 1);
  v81[1] = v17;
  v82 = *(v16 + 40);
  v18 = sub_188C2744C(v81);
  v19 = __swift_project_boxed_opaque_existential_0(v65, v66);
  v20 = qword_18A65AAF8[*(__swift_project_boxed_opaque_existential_0(v19, v19[3]) + 41)];
  v21 = __swift_project_boxed_opaque_existential_0(v65, v66);
  v52 = __swift_project_boxed_opaque_existential_0(v21, v21[3])[6];
  v22 = __swift_project_boxed_opaque_existential_0(v65, v66);
  v23 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v24 = v23[10];
  v25.n128_u64[0] = v52;
  v25.n128_u64[1] = v23[7];
  v51 = *(v23 + 4);
  v53 = v25;
  v26 = __swift_project_boxed_opaque_existential_0(v65, v66);
  v27 = qword_18A65AAD8[*(__swift_project_boxed_opaque_existential_0(v26, v26[3]) + 88)];
  v28 = __swift_project_boxed_opaque_existential_0(v65, v66);
  v29 = *__swift_project_boxed_opaque_existential_0(v28 + 5, v28[8]);
  v30 = __swift_project_boxed_opaque_existential_0(v65, v66);
  v31 = __swift_project_boxed_opaque_existential_0(v30 + 10, v30[13]);
  v32 = v31[1];
  v79[0] = *v31;
  v79[1] = v32;
  v80 = LOBYTE(v31[2].f64[0]);
  v33 = sub_188C2744C(v79);
  v34 = __swift_project_boxed_opaque_existential_0(v65, v66);
  v35 = __swift_project_boxed_opaque_existential_0(v34 + 15, v34[18]);
  v36 = v35[1];
  v77[0] = *v35;
  v77[1] = v36;
  v78 = LOBYTE(v35[2].f64[0]);
  v37 = sub_188C2744C(v77);
  v38 = __swift_project_boxed_opaque_existential_0(v65, v66);
  v39 = __swift_project_boxed_opaque_existential_0(v38 + 15, v38[18]);
  v40 = sub_188FE164C(*(v39 + 34));
  v41 = __swift_project_boxed_opaque_existential_0(v65, v66);
  v42 = __swift_project_boxed_opaque_existential_0(v41 + 20, v41[23]);
  v43 = v42[1];
  v75[0] = *v42;
  v75[1] = v43;
  v76 = LOBYTE(v42[2].f64[0]);
  v44 = sub_188C2744C(v75);
  v45 = __swift_project_boxed_opaque_existential_0(v65, v66);
  v46 = __swift_project_boxed_opaque_existential_0(v45 + 20, v45[23]);
  v47 = sub_188FE164C(*(v46 + 34));
  sub_188FE247C(&v67);
  v54[0] = v50;
  v54[1] = v18;
  v54[2] = v20;
  v56 = v51;
  v55 = v53;
  v57 = v24;
  v58 = v27;
  v59 = v29;
  v60 = v33;
  v61 = v37;
  v62 = v40;
  v63 = v44;
  v64 = v47;
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  sub_188FE24AC(v54);
  *a5 = v50;
  *(a5 + 8) = v18;
  *(a5 + 16) = v20;
  result = v53;
  *(a5 + 40) = v51;
  *(a5 + 24) = v53;
  *(a5 + 56) = v24;
  *(a5 + 64) = v27;
  *(a5 + 72) = v29;
  *(a5 + 80) = v33;
  *(a5 + 88) = v37;
  *(a5 + 96) = v40;
  *(a5 + 104) = v44;
  *(a5 + 112) = v47;
  return result;
}

id sub_188FE20E4(unint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  if (qword_1ED48CAA0 != -1)
  {
    v22 = a1;
    swift_once();
    a1 = v22;
  }

  v7 = qword_1ED4A3490;
  v8 = sub_18922FE98(a1);
  v37 = &_s26CoreListMetricsEnvironmentVN;
  v38 = &off_1EFAF9A80;
  v35 = a4;
  v36 = 7;
  v9 = a4;
  v10 = sub_188C2550C(a3);
  sub_188A53994(v7 + 24, &v41);
  swift_getObjectType();
  sub_18922FDA4(v42);
  v34[0] = v8;
  v39 = v10;
  v40 = 0;
  v43 = sub_18922FDC4(a2);
  v11 = *(v7 + 16);
  *(&v29 + 1) = &type metadata for _UIListMetrics.AccessoryProvider;
  v30 = &off_1EFAD6E18;
  *&v28.f64[0] = swift_allocObject();
  sub_188FE23CC(v34, *&v28.f64[0] + 16);
  sub_188C26A24(v11 + 56, &v23);
  if (v24)
  {
    sub_188A5EBAC(&v23, v31);
    v12 = v33;
    v13 = __swift_project_boxed_opaque_existential_0(v31, v32);
    v14 = MEMORY[0x1EEE9AC00](v13);
    (*(v12 + 24))(&v25, &v28, sub_188FE2434, v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
  }

  else
  {
    sub_188C26A94(&v23);
    *(&v26 + 1) = &_s16AccessoryMetricsVN;
    v27 = &off_1EFAD3B78;
    v15 = swift_allocObject();
    *&v25.f64[0] = v15;
    *(v15 + 16) = 13;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 1;
    *(v15 + 56) = 15;
    *(v15 + 64) = 0;
    *(v15 + 72) = 0;
    *(v15 + 80) = 0;
    *(v15 + 88) = 1;
  }

  sub_188A5EBAC(&v25, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(&v28);
  v16 = __swift_project_boxed_opaque_existential_0(v31, v32);
  v17 = *(v16 + 7);
  v28 = *(v16 + 5);
  v29 = v17;
  LOBYTE(v30) = *(v16 + 72);
  v18 = sub_188C2744C(&v28);
  v19 = __swift_project_boxed_opaque_existential_0(v31, v32);
  v25 = *v19;
  v26 = *(v19 + 1);
  LOBYTE(v27) = *(v19 + 32);
  v20 = sub_188C2744C(&v25);
  sub_188FE2404(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v31);

  return v18;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_188FE2508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188FE2550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_188FE25F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188FE2638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_188FE26E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188FE2728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188FE27A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188FE27E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188FE286C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188FE28B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188FE296C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188FE29B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_188FE2A74()
{
  *(v0 + OBJC_IVAR____UITabSelectionView_backdropLayer) = 0;
  v40.super_class = _UITabSelectionView;
  v1 = objc_msgSendSuper2(&v40, sel_initWithFrame_);
  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  v4 = _UIFloatingTabBarGetPlatformMetrics(v3);
  v5 = [v4 selectionShadow];
  v6 = v1;
  [v5 applyToView_];

  v7 = [v4 selectionBackgroundColor];
  if (v7)
  {
    [v6 setBackgroundColor_];

    *&v29 = 0x7FEFFFFFFFFFFFFFLL;
    BYTE8(v29) = 0;
    v30 = 0x7FEFFFFFFFFFFFFFLL;
    v31 = 0;
    v32 = 0x7FEFFFFFFFFFFFFFLL;
    v33 = 0;
    v34 = 0x7FEFFFFFFFFFFFFFLL;
    v35 = 0;
    v36 = MEMORY[0x1E69E7CC0];
    UIView.cornerConfiguration.setter(&v29);
  }

  else
  {

    v8 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v9 = sub_18A4A2D28();
    [v8 setValue:v9 forKey:*MEMORY[0x1E6979BA8]];

    v10 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v11 = [v6 currentColorMatrixValue];
    [v10 setValue:v11 forKey:*MEMORY[0x1E6979AC0]];

    v12 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
    [v12 setScale_];
    sub_18A4A80E8();

    *&v29 = 0xD000000000000015;
    *(&v29 + 1) = 0x800000018A69C160;
    v38 = 30768;
    v39 = 0xE200000000000000;
    v37 = v6;
    sub_188F9257C();
    v13 = v6;
    swift_unknownObjectRetain();
    v14 = sub_18A4A7418();
    MEMORY[0x18CFE22D0](v14);

    MEMORY[0x18CFE22D0](30768, 0xE200000000000000);

    MEMORY[0x18CFE22D0](62, 0xE100000000000000);
    v15 = sub_18A4A7258();

    [v12 setGroupName_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18A64BFA0;
    v17 = sub_188A34624(0, &qword_1ED48EE50);
    *(v16 + 32) = v8;
    *(v16 + 88) = v17;
    *(v16 + 56) = v17;
    *(v16 + 64) = v10;
    v18 = v12;
    v19 = v8;
    v20 = v10;
    v21 = sub_18A4A7518();

    [v18 setFilters_];

    v22 = [v13 layer];
    [v22 addSublayer_];

    v23 = *&v13[OBJC_IVAR____UITabSelectionView_backdropLayer];
    *&v13[OBJC_IVAR____UITabSelectionView_backdropLayer] = v18;
    v24 = v18;

    [v13 updateBackdropGeometry];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFB0;
    *(inited + 32) = &type metadata for UITraitUserInterfaceStyle;
    *(inited + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v27 = v24;
    sub_188F4D88C(inited, sub_188FE3484, v26);

    swift_unknownObjectRelease();
    swift_setDeallocating();
  }

  return v6;
}

void sub_188FE2F84(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 currentColorMatrixValue];
  v5 = sub_18A4A7258();
  [a3 setValue:v4 forKeyPath:v5];
}

void sub_188FE3128(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v13.receiver = a1;
  v13.super_class = _UITabSelectionView;
  v11 = *a7;
  v12 = a1;
  objc_msgSendSuper2(&v13, v11, a2, a3, a4, a5);
  [v12 updateBackdropGeometry];
}

void sub_188FE31B4()
{
  v1 = [v0 backdropLayer];
  if (v1)
  {
    v4 = v1;
    [v0 bounds];
    [v4 setFrame_];
    [v0 bounds];
    Width = CGRectGetWidth(v6);
    [v0 bounds];
    Height = CGRectGetHeight(v7);
    if (Height >= Width)
    {
      Height = Width;
    }

    [v4 setCornerRadius_];
  }
}

double sub_188FE348C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{

  v5 = sub_188C4F818(sub_188F864C8, &v8, a1);
  sub_188A3F29C(v2 + 40, v9, &unk_1EA937A80);
  v6 = v10;
  sub_188A3F5FC(v9, &unk_1EA937A80);
  if (!v6)
  {
    sub_188C4F6D0(v5, a2);
    goto LABEL_5;
  }

  if (*(v5 + 16))
  {
    sub_188E5B14C(v5 + 32, a2);
LABEL_5:

    return result;
  }

  result = 0.0;
  a2[9] = 0u;
  a2[10] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_188FE3588()
{
  v1 = v0;
  v2 = OBJC_IVAR____UINavigationBarHostedViewContainer_temporaryViews;
  swift_beginAccess();
  v22 = v2;
  v3 = *&v1[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_18A4A7F18();
    sub_188A34624(0, &qword_1ED48F680);
    sub_188FE633C();
    sub_18A4A77D8();
    v3 = v24;
    v4 = v25;
    v5 = v26;
    v6 = v27;
    v7 = v28;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_18A4A7FB8())
    {
      goto LABEL_21;
    }

    sub_188A34624(0, &qword_1ED48F680);
    swift_dynamicCast();
    v16 = v23;
    v14 = v6;
    v15 = v7;
    if (!v23)
    {
      goto LABEL_21;
    }

LABEL_18:
    v17 = [v16 superview];
    if (v17)
    {
      v18 = v17;

      if (v18 == v1)
      {
        [v16 removeFromSuperview];
      }
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (!v7)
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_21;
      }

      v13 = *(v4 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_14:
  v15 = (v13 - 1) & v13;
  v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
  if (v16)
  {
    goto LABEL_18;
  }

LABEL_21:
  sub_188E036A4();
  if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
    v19 = MEMORY[0x1E69E7CD0];
    v20 = v22;
    goto LABEL_23;
  }

LABEL_25:
  v20 = v22;
  if (sub_18A4A7F68())
  {
    sub_188FBFE24(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CD0];
  }

LABEL_23:
  *&v1[v20] = v19;
}

void sub_188FE3828(void *a1)
{
  v3 = [a1 superview];
  if (v3)
  {
  }

  else
  {
    swift_beginAccess();
    v4 = a1;
    sub_188E70E0C(&v5, v4);
    swift_endAccess();

    [v1 insertSubview:v4 atIndex:0];
    [v4 updateTraitsIfNeeded];
  }
}

unint64_t sub_188FE3958(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, unint64_t), unint64_t *a4)
{
  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v7 = sub_18A4A7F68();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = a3(v8, a2);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v9 = *(a2 + 8 * v8 + 32);
    }

    v10 = v9;
    sub_188A34624(0, a4);
    v11 = sub_18A4A7C88();

    if (v11)
    {
      return v8;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_188FE3A9C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = &v4[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_overrideContent];
  v10 = *&v4[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_overrideContent];
  if (v10)
  {
    v11 = v9[1];

    if (sub_188B42D44(a1, v10))
    {
      v12 = sub_188B49C6C(a2, v11);

      if (v12)
      {
        return result;
      }
    }

    else
    {
    }
  }

  v14 = *v9;
  *v9 = a1;
  v9[1] = a2;
  sub_188CAE284(v14);
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a4 & 1;
  *(v16 + 25) = a3 & 1;
  *(v16 + 26) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_188FE6660;
  *(v17 + 24) = v16;
  v20[4] = sub_188E3FE50;
  v20[5] = v17;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_188A4A968;
  v20[3] = &block_descriptor_214_0;
  v18 = _Block_copy(v20);

  v19 = v4;

  [(UITraitCollection *)v15 _performWithFallbackEnvironment:v19 block:v18];
  _Block_release(v18);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  return result;
}

id sub_188FE3D14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  [a1 bounds];
  result = [objc_allocWithZone(UIView) initWithFrame_];
  *a2 = result;
  return result;
}

uint64_t sub_188FE3D8C(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = &v11;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_188FE6664;
  *(v6 + 24) = v5;
  aBlock[4] = sub_188E3FE50;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_180_0;
  v7 = _Block_copy(aBlock);

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

uint64_t sub_188FE3F04(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = &v11;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_188FE6474;
  *(v6 + 24) = v5;
  aBlock[4] = sub_188E3FE50;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_224_0;
  v7 = _Block_copy(aBlock);

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

id sub_188FE407C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(type metadata accessor for HostedViewWrapper());
  sub_188B8B3D0(a1, &v6);
  result = sub_188B8B430(a1);
  *a2 = result;
  return result;
}

id sub_188FE40D8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____UINavigationBarHostedViewContainer_disappearingViews;
  swift_beginAccess();
  v5 = *(a1 + v4);

  v6 = sub_188BBA934(a2, v5, sub_188E4A628, type metadata accessor for HostedViewWrapper);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    swift_beginAccess();
    v10 = sub_188B747B4(v6);
    swift_endAccess();

    return [a2 removeFromSuperview];
  }

  return result;
}

id sub_188FE41C4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____UINavigationBarHostedViewContainer_hostedViews] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____UINavigationBarHostedViewContainer_wrapperViews] = v4;
  *&v1[OBJC_IVAR____UINavigationBarHostedViewContainer_disappearingViews] = v4;
  *&v1[OBJC_IVAR____UINavigationBarHostedViewContainer_temporaryViews] = MEMORY[0x1E69E7CD0];
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_188FE4298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_188A3F29C(a1, v35, &qword_1EA9362D0);
  if (v36[24] == 255)
  {
    sub_188C3DF9C(v5 + 16, v37);
    if (v36[24] != 255)
    {
      sub_188A3F5FC(v35, &qword_1EA9362D0);
    }
  }

  else
  {
    v37[2] = v35[2];
    v37[3] = v35[3];
    v38[0] = *v36;
    *(v38 + 9) = *&v36[9];
    v37[0] = v35[0];
    v37[1] = v35[1];
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  sub_188C3DF9C(v37, v35);
  sub_188C3DF9C(v37, v33);
  v13 = swift_allocObject();
  v14 = v33[3];
  *(v13 + 48) = v33[2];
  *(v13 + 64) = v14;
  *(v13 + 80) = v34[0];
  *(v13 + 89) = *(v34 + 9);
  v15 = v33[1];
  *(v13 + 16) = v33[0];
  *(v13 + 32) = v15;
  *(v13 + 112) = signpost_c2_entryLock_start;
  *(v13 + 120) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = sub_188FE62EC;
  v17[4] = v12;
  v26 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_188E5C7F8;
  *(v18 + 24) = v11;
  *&v30 = sub_188E3FE50;
  *(&v30 + 1) = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v29 = sub_188A4A968;
  *(&v29 + 1) = &block_descriptor_71;
  v19 = _Block_copy(&aBlock);

  sub_188D738F4(a4);

  sub_188C3DFF8(v35, &aBlock);
  v20 = swift_allocObject();
  v21 = v31;
  *(v20 + 56) = v30;
  *(v20 + 72) = v21;
  *(v20 + 88) = v32[0];
  *(v20 + 97) = *(v32 + 9);
  v22 = v29;
  *(v20 + 24) = aBlock;
  *(v20 + 16) = v16;
  *(v20 + 40) = v22;
  *(v20 + 113) = 0;
  *(v20 + 120) = sub_188E5B140;
  *(v20 + 128) = v13;
  v27[4] = sub_188C5745C;
  v27[5] = v20;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_188A4A8F0;
  v27[3] = &block_descriptor_77_2;
  v23 = _Block_copy(v27);

  *&v30 = sub_188ABBADC;
  *(&v30 + 1) = v17;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v29 = sub_188ABD010;
  *(&v29 + 1) = &block_descriptor_80_2;
  v24 = _Block_copy(&aBlock);

  [v26 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v24);
  _Block_release(v23);
  _Block_release(v19);

  sub_188C3E234(v35);

  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return sub_188AAFF20(v37);
  }

  __break(1u);
  return result;
}

uint64_t sub_188FE4738()
{
  sub_188AAFF20(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_188FE4770(void *a1)
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD00000000000001CLL, 0x800000018A69C3B0);
  sub_18A4A7718();
  MEMORY[0x18CFE22D0](0x6F43746E6974202CLL, 0xED0000203A726F6CLL);
  if (a1)
  {
    v2 = [a1 description];
    v3 = sub_18A4A7288();
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x18CFE22D0](v3, v5);

  return 0;
}

id sub_188FE48F0(char *a1, void **a2)
{
  v4 = OBJC_IVAR____UINavigationBarHostedViewWrapper_itemView;
  [*&a1[OBJC_IVAR____UINavigationBarHostedViewWrapper_itemView] removeFromSuperview];
  v5 = *a2;
  [a1 addSubview_];
  v6 = *&a1[v4];
  *&a1[v4] = v5;
  v7 = v5;

  [a1 bounds];
  [v7 setFrame_];
  v8 = *&a1[v4];

  return [v8 layoutIfNeeded];
}

uint64_t sub_188FE499C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v14 = v11;
LABEL_11:
    v15 = __clz(__rbit64(v8)) | (v14 << 6);
    v16 = *(*(a2 + 48) + 8 * v15);
    sub_188C2F56C(*(a2 + 56) + 192 * v15, &v50);
    if (v51 == 254)
    {
LABEL_16:

      v19 = 1 << *(a1 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(a1 + 64);
      v22 = (v19 + 63) >> 6;

      v23 = 0;
      while (v21)
      {
        v26 = v23;
LABEL_26:
        v27 = __clz(__rbit64(v21)) | (v26 << 6);
        v28 = *(*(a1 + 48) + 8 * v27);
        sub_188C2F56C(*(a1 + 56) + 192 * v27, &v50);
        if (v51 == 254)
        {
LABEL_31:

          *(a3 + 80) = 0;
          *(a3 + 48) = 0u;
          *(a3 + 64) = 0u;
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          *a3 = 0u;
          *(a3 + 88) = -1;
          return result;
        }

        v21 &= v21 - 1;
        if (*(a2 + 16) && (v29 = sub_188A403F4(v28), (v30 & 1) != 0))
        {
          sub_188C2F56C(*(a2 + 56) + 192 * v29, &v40);
          sub_188C2FA50(&v50);
          v24 = &v40;
          v25 = &qword_1EA939790;
        }

        else
        {
          v43 = 0u;
          memset(v44, 0, 24);
          v41 = 0u;
          v42 = 0u;
          v40 = 0u;
          *&v44[24] = 254;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          memset(v49, 0, sizeof(v49));
          sub_188A3F5FC(&v40, &qword_1EA939790);
          sub_188A3F29C(&v52, &v35, &qword_1EA9362D0);
          sub_188C2FA50(&v50);
          if (v39[24] != 255)
          {
            goto LABEL_32;
          }

          v24 = &v35;
          v25 = &qword_1EA9362D0;
        }

        result = sub_188A3F5FC(v24, v25);
        v23 = v26;
      }

      while (1)
      {
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_34;
        }

        if (v26 >= v22)
        {
          goto LABEL_31;
        }

        v21 = *(a1 + 64 + 8 * v26);
        ++v23;
        if (v21)
        {
          goto LABEL_26;
        }
      }
    }

    v8 &= v8 - 1;
    if (*(a1 + 16) && (v17 = sub_188A403F4(v16), (v18 & 1) != 0))
    {
      sub_188C2F56C(*(a1 + 56) + 192 * v17, &v40);
      sub_188C2FA50(&v50);
      v12 = &v40;
      v13 = &qword_1EA939790;
    }

    else
    {
      v43 = 0u;
      memset(v44, 0, 24);
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      *&v44[24] = 254;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      memset(v49, 0, sizeof(v49));
      sub_188A3F5FC(&v40, &qword_1EA939790);
      sub_188A3F29C(&v50, &v35, &qword_1EA9362D0);
      sub_188C2FA50(&v50);
      if (v39[24] != 255)
      {
LABEL_32:

        v32 = v35;
        v31 = v36;
        v40 = v35;
        v41 = v36;
        *&v44[9] = *&v39[9];
        v33 = v38;
        v43 = v38;
        *v44 = *v39;
        v42 = v37;
        *(a3 + 32) = v37;
        *(a3 + 48) = v33;
        *(a3 + 64) = *v44;
        *(a3 + 73) = *&v44[9];
        *a3 = v32;
        *(a3 + 16) = v31;
        return result;
      }

      v12 = &v35;
      v13 = &qword_1EA9362D0;
    }

    result = sub_188A3F5FC(v12, v13);
    v11 = v14;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v9)
    {
      goto LABEL_16;
    }

    v8 = *(v5 + 8 * v14);
    ++v11;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_So15UIBarButtonItemC5UIKitE5BadgeV7ContentO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_So15UIBarButtonItemC5UIKitE5BadgeVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188FE4F40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 160))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 136);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_188FE4FA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_188FE5020(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_188FE507C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_188FE50E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_188FE5128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188FE517C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188FE51C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_188FE5250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188FE5298(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_188FE5308()
{
  result = qword_1EA939778;
  if (!qword_1EA939778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939778);
  }

  return result;
}

uint64_t sub_188FE535C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_188B42D44(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_188B49C6C(v2, v3);
}

uint64_t sub_188FE53B8(void *a1, char a2)
{
  [a1 bounds];
  v6 = v5;
  v8 = v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  [a1 bounds];
  v37.origin.x = v13;
  v37.origin.y = v14;
  v37.size.width = v15;
  v37.size.height = v16;
  v34.origin.x = v6;
  v34.origin.y = v8;
  v34.size.width = v11;
  v34.size.height = v12;
  if (!CGRectEqualToRect(v34, v37))
  {
    [a1 setBounds_];
  }

  v35.origin.x = v9;
  v35.origin.y = v10;
  v35.size.width = v11;
  v35.size.height = v12;
  MidX = CGRectGetMidX(v35);
  v36.origin.x = v9;
  v36.origin.y = v10;
  v36.size.width = v11;
  v36.size.height = v12;
  MidY = CGRectGetMidY(v36);
  [a1 center];
  if (MidX != v20 || MidY != v19)
  {
    [a1 setCenter_];
  }

  if ((a2 & 1) == 0)
  {
    v22 = v2[4];
    [a1 alpha];
    if (v22 != v23)
    {
      [a1 setAlpha_];
    }
  }

  CGAffineTransformMakeScale(&v33, v2[5], v2[5]);
  v27 = *&v33.a;
  v28 = *&v33.c;
  v32 = v33;
  tx = v33.tx;
  ty = v33.ty;
  [a1 transform];
  result = sub_18A4A7A08();
  if ((result & 1) == 0)
  {
    v29[0] = v27;
    v29[1] = v28;
    v30 = tx;
    v31 = ty;
    return [a1 setTransform_];
  }

  return result;
}

BOOL sub_188FE5584(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  y = a1[1].origin.y;
  v5 = a2[1].origin.x;
  v4 = a2[1].origin.y;
  v6 = CGRectEqualToRect(*a1, *a2);
  result = 0;
  if (v6 && x == v5)
  {
    return y == v4;
  }

  return result;
}

uint64_t sub_188FE55E0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_188FE5FB8(v8, v9) & 1;
}

uint64_t sub_188FE5658()
{
  sub_18A4A8888();
  sub_18A4A8038();
  return sub_18A4A88E8();
}

uint64_t sub_188FE569C()
{
  sub_18A4A8888();
  sub_18A4A8038();
  return sub_18A4A88E8();
}

unint64_t sub_188FE56F0()
{
  result = qword_1EA939780;
  if (!qword_1EA939780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939780);
  }

  return result;
}

uint64_t sub_188FE5744(uint64_t a1, uint64_t a2)
{
  sub_188A3F29C(a1 + 80, v11, &unk_1EA937A80);
  sub_188A3F29C(a2 + 80, &v13, &unk_1EA937A80);
  if (v12)
  {
    sub_188A3F29C(v11, v10, &unk_1EA937A80);
    if (!*(&v14 + 1))
    {
LABEL_10:
      sub_188BBA15C(v10);
      goto LABEL_12;
    }

    v7 = v13;
    v8 = v14;
    v9 = v15;
    v4 = MEMORY[0x18CFE2F70](v10, &v7);
    sub_188BBA15C(&v7);
    sub_188BBA15C(v10);
    sub_188A3F5FC(v11, &unk_1EA937A80);
    if ((v4 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(&v14 + 1))
    {
LABEL_12:
      sub_188A3F5FC(v11, &qword_1EA939788);
LABEL_13:
      v5 = 0;
      return v5 & 1;
    }

    sub_188A3F5FC(v11, &unk_1EA937A80);
  }

  sub_188A3F29C(a1 + 40, v11, &unk_1EA937A80);
  sub_188A3F29C(a2 + 40, &v13, &unk_1EA937A80);
  if (!v12)
  {
    if (!*(&v14 + 1))
    {
      sub_188A3F5FC(v11, &unk_1EA937A80);
      v5 = 1;
      return v5 & 1;
    }

    goto LABEL_12;
  }

  sub_188A3F29C(v11, v10, &unk_1EA937A80);
  if (!*(&v14 + 1))
  {
    goto LABEL_10;
  }

  v7 = v13;
  v8 = v14;
  v9 = v15;
  v5 = MEMORY[0x18CFE2F70](v10, &v7);
  sub_188BBA15C(&v7);
  sub_188BBA15C(v10);
  sub_188A3F5FC(v11, &unk_1EA937A80);
  return v5 & 1;
}

uint64_t sub_188FE5968()
{
  sub_188C46604(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x18CFE37E0](1);
    sub_18A4A8038();
    return sub_188BBA15C(v3);
  }

  else
  {
    v2 = *&v5[0];
    MEMORY[0x18CFE37E0](0);
    return MEMORY[0x18CFE37E0](v2);
  }
}

uint64_t sub_188FE59F8()
{
  sub_18A4A8888();
  sub_188C46604(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x18CFE37E0](1);
    sub_18A4A8038();
    sub_188BBA15C(v3);
  }

  else
  {
    v1 = *&v5[0];
    MEMORY[0x18CFE37E0](0);
    MEMORY[0x18CFE37E0](v1);
  }

  return sub_18A4A88E8();
}

uint64_t sub_188FE5AA0()
{
  sub_18A4A8888();
  sub_188C46604(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x18CFE37E0](1);
    sub_18A4A8038();
    sub_188BBA15C(v3);
  }

  else
  {
    v1 = *&v5[0];
    MEMORY[0x18CFE37E0](0);
    MEMORY[0x18CFE37E0](v1);
  }

  return sub_18A4A88E8();
}

uint64_t sub_188FE5B40(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      sub_188A34624(0, &qword_1ED490230);
      if (sub_18A4A7C88())
      {
        return sub_18A4A7C88() & 1;
      }
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  sub_188A34624(0, &qword_1ED490230);
  return sub_18A4A7C88() & 1;
}

void sub_188FE5C00(uint64_t a1@<X8>)
{
  v2 = 8;
  if (!*(v1 + 16))
  {
    v2 = 0;
  }

  *a1 = *(v1 + v2);
  *(a1 + 40) = 0;
}

unint64_t sub_188FE5C48()
{
  result = qword_1EA9309F0;
  if (!qword_1EA9309F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9309F0);
  }

  return result;
}

BOOL sub_188FE5C9C(int a1, void *a2, int a3, void *a4, double a5, double a6)
{
  if ((a1 ^ a3))
  {
    return 0;
  }

  if (a2)
  {
    if (!a4)
    {
      return 0;
    }

    v8 = a6;
    v9 = a5;
    sub_188A34624(0, qword_1ED4913C0);
    v11 = a4;
    v12 = a2;
    v13 = sub_18A4A7C88();

    a5 = v9;
    a6 = v8;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  return a5 == a6;
}

uint64_t sub_188FE5D50(uint64_t a1, uint64_t a2)
{
  sub_188C46604(a1, v8);
  sub_188C46604(a2, v9);
  if ((v8[40] & 1) == 0)
  {
    sub_188C46604(v8, v7);
    if ((v11 & 1) == 0)
    {
      v3 = v7[0] == *&v9[0];
      goto LABEL_6;
    }

LABEL_8:
    sub_188A3F5FC(v8, &unk_1EA93F050);
    v3 = 0;
    return v3 & 1;
  }

  sub_188C46604(v8, v7);
  if (v11 != 1)
  {
    sub_188BBA15C(v7);
    goto LABEL_8;
  }

  v5[0] = v9[0];
  v5[1] = v9[1];
  v6 = v10;
  v3 = MEMORY[0x18CFE2F70](v7, v5);
  sub_188BBA15C(v5);
  sub_188BBA15C(v7);
LABEL_6:
  sub_188C4680C(v8);
  return v3 & 1;
}

BOOL sub_188FE5E3C(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x18CFE2F70]() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  v8 = CGRectEqualToRect(*(a1 + 40), *(a2 + 40));
  result = 0;
  if (v8 && v4 == v6 && v5 == v7)
  {
    v11 = *(a1 + 96);
    v12 = *(a2 + 96);
    if (v11)
    {
      if (!v12 || (*(a1 + 88) != *(a2 + 88) || v11 != v12) && (sub_18A4A86C8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    if ((MEMORY[0x18CFE2F70](a1 + 104, a2 + 104) & 1) == 0 || (sub_189015308(*(a1 + 144), *(a2 + 144)) & 1) == 0 || (sub_188F8D2D0(*(a1 + 152), *(a2 + 152)) & 1) == 0 || *(a1 + 160) != *(a2 + 160) || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }

    v13 = *(a1 + 176);
    v14 = *(a1 + 184);
    v15 = *(a2 + 176);
    v16 = *(a2 + 184);
    if (v13)
    {
      if (!v15)
      {
        return 0;
      }

      sub_188A34624(0, qword_1ED4913C0);
      v17 = v15;
      v18 = v13;
      v19 = sub_18A4A7C88();

      if ((v19 & 1) == 0)
      {
        return 0;
      }

      return v14 == v16;
    }

    if (!v15)
    {
      return v14 == v16;
    }

    return 0;
  }

  return result;
}

uint64_t sub_188FE5FB8(uint64_t a1, uint64_t a2)
{
  sub_188A34624(0, &qword_1ED490230);
  if ((sub_18A4A7C88() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  if (!CGRectEqualToRect(*(a1 + 24), *(a2 + 24)) || v5 != v7 || v4 != v6)
  {
    return 0;
  }

  v8 = *(a1 + 72);
  v9 = *(a2 + 72);

  return sub_188B8C0E8(v8, v9);
}

BOOL sub_188FE60A4(uint64_t a1, uint64_t a2)
{
  sub_188A3F29C(a1, v13, &qword_1EA9362D0);
  sub_188A3F29C(a2, &v15, &qword_1EA9362D0);
  if (v14 == 255)
  {
    if (v19[24] != 255)
    {
LABEL_13:
      sub_188A3F5FC(v13, &qword_1EA9386F8);
      return 0;
    }

    sub_188A3F5FC(v13, &qword_1EA9362D0);
  }

  else
  {
    sub_188A3F29C(v13, v12, &qword_1EA9362D0);
    if (v19[24] == 255)
    {
LABEL_11:
      sub_188AAFF20(v12);
      goto LABEL_13;
    }

    v9 = v17;
    v10 = v18;
    v11[0] = *v19;
    *(v11 + 9) = *&v19[9];
    v7 = v15;
    v8 = v16;
    v4 = sub_188C2F5C8(v12, &v7);
    sub_188AAFF20(&v7);
    sub_188AAFF20(v12);
    sub_188A3F5FC(v13, &qword_1EA9362D0);
    if (!v4)
    {
      return 0;
    }
  }

  sub_188A3F29C(a1 + 96, v13, &qword_1EA9362D0);
  sub_188A3F29C(a2 + 96, &v15, &qword_1EA9362D0);
  if (v14 == 255)
  {
    if (v19[24] == 255)
    {
      sub_188A3F5FC(v13, &qword_1EA9362D0);
      return 1;
    }

    goto LABEL_13;
  }

  sub_188A3F29C(v13, v12, &qword_1EA9362D0);
  if (v19[24] == 255)
  {
    goto LABEL_11;
  }

  v9 = v17;
  v10 = v18;
  v11[0] = *v19;
  *(v11 + 9) = *&v19[9];
  v7 = v15;
  v8 = v16;
  v5 = sub_188C2F5C8(v12, &v7);
  sub_188AAFF20(&v7);
  sub_188AAFF20(v12);
  sub_188A3F5FC(v13, &qword_1EA9362D0);
  return v5;
}

uint64_t sub_188FE62F8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_188FE633C()
{
  result = qword_1EA9389F0;
  if (!qword_1EA9389F0)
  {
    sub_188A34624(255, &qword_1ED48F680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9389F0);
  }

  return result;
}

void sub_188FE63A4()
{
  v1 = OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_underGlassTransitionContainer;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer;
  type metadata accessor for HostedViewContainer();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content);
  v4 = MEMORY[0x1E69E7CC0];
  *v3 = MEMORY[0x1E69E7CC0];
  v3[1] = v4;
  v5 = (v0 + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_overrideContent);
  *v5 = 0;
  v5[1] = 0;
  sub_18A4A8398();
  __break(1u);
}

void sub_188FE6478()
{
  v1 = *(v0 + 16);
  (*(v0 + 24))(&v3);
  v2 = *v1;
  *v1 = v3;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_188FE654C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 185))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 88);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_188FE6598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
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
    *(result + 184) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 88) = ~a2;
    }
  }

  return result;
}

void __swiftcall UITextFormattingViewController.ChangeValue._bridgeToObjectiveC()(UITextFormattingViewControllerChangeValue *__return_ptr retstr)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  switch(*(v1 + 16))
  {
    case 1:
      v4 = UITextFormattingViewControllerSetItalicChangeType;
      v5 = UITextFormattingViewControllerRemoveItalicChangeType;
      goto LABEL_20;
    case 2:
      v4 = UITextFormattingViewControllerSetUnderlineChangeType;
      v5 = UITextFormattingViewControllerRemoveUnderlineChangeType;
      goto LABEL_20;
    case 3:
      v4 = UITextFormattingViewControllerSetStrikethroughChangeType;
      v5 = UITextFormattingViewControllerRemoveStrikethroughChangeType;
      goto LABEL_20;
    case 4:
      v6 = objc_allocWithZone(UITextFormattingViewControllerChangeValue);
      v7 = sel_initWithFont_;
      goto LABEL_30;
    case 5:
      v12 = UITextFormattingViewControllerFontSizeChangeType;
      goto LABEL_18;
    case 6:
      v15 = UITextFormattingViewControllerTextColorChangeType;
      goto LABEL_25;
    case 7:
      v6 = objc_allocWithZone(UITextFormattingViewControllerChangeValue);
      v7 = sel_initWithTextList_;
      goto LABEL_30;
    case 8:
      v2 = UITextFormattingViewControllerTextAlignment.nsTextAlignment.getter();
      v6 = objc_allocWithZone(UITextFormattingViewControllerChangeValue);
      v7 = sel_initWithTextAlignment_;
      goto LABEL_30;
    case 9:
      v12 = UITextFormattingViewControllerLineHeightPointSizeChangeType;
LABEL_18:
      v13 = *v12;
      sub_188A34624(0, &qword_1ED48FD80);
      v14 = sub_18A4A7C48();
      [objc_allocWithZone(UITextFormattingViewControllerChangeValue) initWithChangeType:v13 numberValue:v14];

      return;
    case 0xA:
      v6 = objc_allocWithZone(UITextFormattingViewControllerChangeValue);
      v7 = sel_initWithHighlight_;
      goto LABEL_30;
    case 0xB:
      v10 = objc_allocWithZone(UITextFormattingViewControllerChangeValue);
      v11 = sub_18A4A7258();
      [v10 initWithFormattingStyleKey_];
      goto LABEL_23;
    case 0xC:
      v4 = UITextFormattingViewControllerSetBoldToggleChangeType;
      v5 = UITextFormattingViewControllerRemoveBoldToggleChangeType;
      goto LABEL_20;
    case 0xD:
      v4 = UITextFormattingViewControllerSetItalicToggleChangeType;
      v5 = UITextFormattingViewControllerRemoveItalicToggleChangeType;
      goto LABEL_20;
    case 0xE:
      v4 = UITextFormattingViewControllerSetUnderlineToggleChangeType;
      v5 = UITextFormattingViewControllerRemoveUnderlineToggleChangeType;
      goto LABEL_20;
    case 0xF:
      v4 = UITextFormattingViewControllerSetStrikethroughToggleChangeType;
      v5 = UITextFormattingViewControllerRemoveStrikethroughToggleChangeType;
      goto LABEL_20;
    case 0x10:
      v6 = objc_allocWithZone(UITextFormattingViewControllerChangeValue);
      v7 = sel_initWithChangeType_customComponentKey_;
      v8 = @"UITextFormattingViewControllerCustomComponentSelectedChange";
      v9 = v2;

      goto LABEL_5;
    case 0x11:
      v4 = UITextFormattingViewControllerSetBlockquoteChangeType;
      v5 = UITextFormattingViewControllerRemoveBlockquoteChangeType;
      goto LABEL_20;
    case 0x12:
      if (v3)
      {
        v11 = sub_18A4A7258();
      }

      else
      {
        v11 = 0;
      }

      [objc_allocWithZone(UITextFormattingViewControllerChangeValue) initWithEmphasisStyleKey_];
      goto LABEL_23;
    case 0x13:
      if (v2 <= 4)
      {
        if (v2 <= 1)
        {
          if (v2 | v3)
          {
            v15 = UITextFormattingViewControllerIncreaseFontSizeChangeType;
          }

          else
          {
            v15 = UITextFormattingViewControllerUndefinedChangeType;
          }
        }

        else if (v2 ^ 2 | v3)
        {
          if (v2 ^ 3 | v3)
          {
            v15 = UITextFormattingViewControllerDecreaseIndentationChangeType;
          }

          else
          {
            v15 = UITextFormattingViewControllerIncreaseIndentationChangeType;
          }
        }

        else
        {
          v15 = UITextFormattingViewControllerDecreaseFontSizeChangeType;
        }
      }

      else if (v2 > 7)
      {
        if (v2 ^ 8 | v3)
        {
          if (v2 ^ 9 | v3)
          {
            v15 = UITextFormattingViewControllerDecreaseQuoteLevelChangeType;
          }

          else
          {
            v15 = UITextFormattingViewControllerIncreaseQuoteLevelChangeType;
          }
        }

        else
        {
          v15 = UITextFormattingViewControllerListHyphenChangeType;
        }
      }

      else if (v2 ^ 5 | v3)
      {
        if (v2 ^ 6 | v3)
        {
          v15 = UITextFormattingViewControllerListDecimalChangeType;
        }

        else
        {
          v15 = UITextFormattingViewControllerListDiscChangeType;
        }
      }

      else
      {
        v15 = UITextFormattingViewControllerListRemovedChangeType;
      }

LABEL_25:
      v2 = *v15;
      v6 = objc_allocWithZone(UITextFormattingViewControllerChangeValue);
      v7 = sel_initWithChangeType_;
LABEL_30:
      v8 = v2;

LABEL_5:
      [v6 v7];
      break;
    default:
      v4 = UITextFormattingViewControllerSetBoldChangeType;
      v5 = UITextFormattingViewControllerRemoveBoldChangeType;
LABEL_20:
      if ((v2 & 1) == 0)
      {
        v4 = v5;
      }

      v11 = *v4;
      [objc_allocWithZone(UITextFormattingViewControllerChangeValue) initWithChangeType_];
LABEL_23:

      break;
  }
}

void static UITextFormattingViewController.ChangeValue._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v9 = 0;
    v10 = 0;
    v11 = -1;
    v3 = a1;
    if (_sSo30UITextFormattingViewControllerC5UIKitE11ChangeValueO34_conditionallyBridgeFromObjectiveC_6resultSbSo0abcdfG0C_AESgztFZ_0(v3, &v9))
    {
      v4 = v11;
      if (v11 != 255)
      {
        v6 = v9;
        v5 = v10;
        sub_188FE9B10(v9, v10, v11);
        sub_188FE9B8C(v6, v5, v4);

        *a2 = v6;
        *(a2 + 8) = v5;
        *(a2 + 16) = v4;
        return;
      }

      __break(1u);
    }
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_18A4A80E8();

  v12 = 0xD000000000000011;
  v13 = 0x800000018A68EE10;
  sub_188A34624(0, &qword_1EA939798);
  v7 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v7);

  MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
  v8 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v8);

  sub_18A4A8398();
  __break(1u);
}

NSString *__cdecl sub_188FE6C54(UITextFormattingViewControllerChangeValue *self, SEL a2)
{
  v2 = self;
  sub_188FE6CCC();
  v4 = v3;

  if (v4)
  {
    v5 = sub_18A4A7258();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_188FE6CCC()
{
  v1 = sub_18A4A7258();
  v2 = _UITextFormattingViewControllerComponentKeyForAnimation(v1);

  sub_18A4A7288();
  v3 = [v0 _customComponentKey];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18A4A7288();
    v7 = v6;

    if (sub_18A4A73E8())
    {
      v8 = sub_18A4A7358();

      v9 = sub_1891CED64(v8, v5, v7);
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = MEMORY[0x18CFE2270](v9, v11, v13, v15);

      return v16;
    }
  }

  return 0;
}

NSDictionary *__cdecl sub_188FE6E04(UITextFormattingViewControllerChangeValue *self, SEL a2)
{
  v2 = self;
  v3 = sub_188FE6E8C();

  if (v3)
  {
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v4 = sub_18A4A7088();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_188FE6E8C()
{
  v1 = [v0 _textAnimationName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18A4A7288();
  v5 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0);
  inited = swift_initStackObject();
  v7 = *off_1E70ECA08;
  *(inited + 32) = *off_1E70ECA08;
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v8 = v7;
  v9 = sub_188AEC99C(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &qword_1EA93C6D0);
  return v9;
}

void sub_188FE6F7C(id a1, uint64_t a2, uint64_t a3, void *a4)
{
  static UITextFormattingViewController.ChangeValue._unconditionallyBridgeFromObjectiveC(_:)(a4, &aBlock);
  v9 = *(&aBlock + 1);
  v8 = aBlock;
  v10 = v116;
  if (v116 != 7)
  {
    v23 = *(&aBlock + 1);
LABEL_49:
    sub_188FE9BA0(v8, v23, v10);
    return;
  }

  v113 = aBlock;
  v11 = [a1 string];
  v12 = sub_18A4A7288();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    v8 = v113;
LABEL_48:
    v23 = v9;
    v10 = 7;
    goto LABEL_49;
  }

  v16 = [a1 string];
  v17 = v16;
  v112 = a1;
  if (a3 >= 1)
  {
    if (!v16)
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v18 = [a1 string];
    if (!v18)
    {
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v19 = v18;
    v20 = [v18 length];

    if (v20 <= a2)
    {
      v22 = a2 - 1;
      if (__OFSUB__(a2, 1))
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v21 = 1;
    }

    else
    {
      v21 = 0;
      v22 = a2;
    }

    v28 = [v17 paragraphRangeForRange_];
    v110 = v29;

    v30 = [a1 string];
    if (!v30)
    {
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v111 = v9;
    v31 = a2 + a3;
    if (__OFADD__(a2, a3))
    {
      __break(1u);
    }

    else
    {
      v32 = v30;
      v33 = [a1 string];
      if (!v33)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      v34 = v33;
      v35 = [v33 length];

      if (v31 >= v35)
      {
        v37 = __OFSUB__(v31--, 1);
        if (v37)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        v36 = 1;
      }

      else
      {
        v36 = 0;
      }

      v38 = [v32 paragraphRangeForRange_];
      v40 = v39;

      v41 = [v112 string];
      if (!v41)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      v42 = v41;
      v43 = [v41 length];

      v27 = v113;
      if (v43 <= a2)
      {
        v37 = __OFSUB__(a2--, 1);
        if (v37)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        v37 = __OFADD__(a3++, 1);
        a1 = v112;
        if (v37)
        {
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }
      }

      else
      {
        a1 = v112;
      }

      if (!__OFADD__(v28, v110))
      {
        v44 = (a2 + a3);
        if (!__OFADD__(a2, a3))
        {
          if (&v110[v28] > v44)
          {
            v44 = &v110[v28];
          }

          if (v28 >= a2)
          {
            v45 = a2;
          }

          else
          {
            v45 = v28;
          }

          v37 = __OFSUB__(v44, v45);
          v46 = &v44[-v45];
          if (!v37)
          {
            v37 = __OFADD__(v45, v46);
            v47 = &v46[v45];
            if (!v37)
            {
              if (!__OFADD__(v38, v40))
              {
                if (v47 <= &v38[v40])
                {
                  v47 = &v38[v40];
                }

                if (v45 >= v38)
                {
                  v24 = v38;
                }

                else
                {
                  v24 = v45;
                }

                v26 = v47 - v24;
                v9 = v111;
                if (!__OFSUB__(v47, v24))
                {
                  goto LABEL_44;
                }

                goto LABEL_115;
              }

LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

LABEL_111:
        __break(1u);
        goto LABEL_112;
      }
    }

    __break(1u);
    goto LABEL_111;
  }

  if (!v16)
  {
LABEL_126:
    __break(1u);
    return;
  }

  v24 = [v16 paragraphRangeForRange_];
  v26 = v25;

  v27 = v113;
LABEL_44:
  if (v26 < 1)
  {
    v8 = v27;
    goto LABEL_48;
  }

  v48 = *off_1E70EC988;
  if ([a1 attribute:*off_1E70EC988 atIndex:v24 effectiveRange:0])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v116 = 0u;
  }

  v122 = aBlock;
  v123 = v116;
  sub_188C85D28(&v122, &aBlock);
  if (*(&v116 + 1))
  {
    sub_188A34624(0, &qword_1EA930B48);
    if (swift_dynamicCast())
    {
      v49 = v119;
      goto LABEL_56;
    }
  }

  else
  {
    sub_188A3F5FC(&aBlock, &qword_1EA934050);
  }

  v49 = [objc_opt_self() defaultParagraphStyle];
LABEL_56:
  [v49 mutableCopy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v50 = sub_188A34624(0, &qword_1EA9397A0);
  if (!swift_dynamicCast())
  {
    sub_188FE9BA0(v27, v9, 7u);
LABEL_62:
    sub_188A3F5FC(&v122, &qword_1EA934050);
    return;
  }

  v110 = v119;
  if (v27)
  {
    v108 = v50;
    v109 = v48;
    v51 = sub_18A4A7288();
    v53 = v52;
    if (v51 == sub_18A4A7288() && v53 == v54)
    {
      sub_188FE9B10(v27, v9, 7u);
      sub_188FE9B10(v27, v9, 7u);
      v55 = @"UITextFormattingViewControllerTextListDisc";

      sub_188FE9BA0(v27, v9, 7u);

LABEL_64:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_18A64B710;
      v59 = off_1E70ECA98;
LABEL_65:
      *(v58 + 32) = [objc_allocWithZone(off_1E70ECBE0) initWithMarkerFormat:*v59 options:0];
      sub_188A34624(0, &qword_1EA934388);
      v60 = sub_18A4A7518();

      goto LABEL_78;
    }

    v56 = sub_18A4A86C8();
    sub_188FE9B10(v27, v9, 7u);
    sub_188FE9B10(v113, v9, 7u);
    v27 = v113;
    v57 = @"UITextFormattingViewControllerTextListDisc";

    sub_188FE9BA0(v113, v9, 7u);

    if (v56)
    {
      goto LABEL_64;
    }

    v61 = sub_18A4A7288();
    v63 = v62;
    if (v61 == sub_18A4A7288() && v63 == v64)
    {
      sub_188FE9B10(v113, v9, 7u);
      v65 = @"UITextFormattingViewControllerTextListHyphen";

      sub_188FE9BA0(v113, v9, 7u);

LABEL_70:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_18A64B710;
      v59 = off_1E70ECAA0;
      goto LABEL_65;
    }

    v66 = sub_18A4A86C8();
    sub_188FE9B10(v113, v9, 7u);
    v27 = v113;
    v67 = @"UITextFormattingViewControllerTextListHyphen";

    sub_188FE9BA0(v113, v9, 7u);

    if (v66)
    {
      goto LABEL_70;
    }

    v68 = sub_18A4A7288();
    v70 = v69;
    if (v68 == sub_18A4A7288() && v70 == v71)
    {
      sub_188FE9B10(v113, v9, 7u);
      v72 = @"UITextFormattingViewControllerTextListDecimal";

      sub_188FE9BA0(v113, v9, 7u);

LABEL_75:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_18A64B710;
      v76 = sub_18A4A7258();
      v77 = [objc_allocWithZone(off_1E70ECBE0) initWithMarkerFormat:v76 options:0];

      *(v75 + 32) = v77;
      sub_188A34624(0, &qword_1EA934388);
      v60 = sub_18A4A7518();

      goto LABEL_78;
    }

    v73 = sub_18A4A86C8();
    sub_188FE9B10(v113, v9, 7u);
    v27 = v113;
    v74 = @"UITextFormattingViewControllerTextListDecimal";

    sub_188FE9BA0(v113, v9, 7u);

    v48 = v109;
    v50 = v108;
    if (v73)
    {
      goto LABEL_75;
    }
  }

  if (!*(&v123 + 1))
  {
    sub_188FE9BA0(v27, v9, 7u);
    sub_188FE9BA0(v27, v9, 7u);

    goto LABEL_62;
  }

  v108 = v50;
  v109 = v48;
  sub_188A34624(0, &qword_1EA934388);
  v60 = sub_18A4A7518();
LABEL_78:
  v78 = v110;
  [v110 setTextLists_];
  v111 = v9;
  sub_188FE9BA0(v27, v9, 7u);

  if (![v4 _editResponder])
  {
    goto LABEL_94;
  }

  objc_opt_self();
  v79 = swift_dynamicCastObjCClass();
  if (!v79)
  {
    swift_unknownObjectRelease();
LABEL_94:
    [v112 beginEditing];
    [v112 addAttribute:v109 value:v110 range:{v24, v26}];
    [v112 endEditing];
    [v112 edited:1 range:v24 changeInLength:{v26, 0}];
    if ([v4 _editResponder])
    {
      v121 = &unk_1EFE896F0;
      v93 = swift_dynamicCastObjCProtocolConditional();
      v94 = v111;
      if (v93)
      {
        v95 = v93;
        if ([v93 respondsToSelector_])
        {
          aBlock = 0u;
          v116 = 0u;
          sub_188C85D28(&aBlock, &v119);
          v96 = v120;
          if (v120)
          {
            v97 = __swift_project_boxed_opaque_existential_0(&v119, v120);
            v98 = *(v96 - 8);
            v99 = MEMORY[0x1EEE9AC00](v97);
            v101 = &v106 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v98 + 16))(v101, v99);
            v102 = sub_18A4A86A8();
            (*(v98 + 8))(v101, v96);
            __swift_destroy_boxed_opaque_existential_0Tm(&v119);
          }

          else
          {
            v102 = 0;
          }

          [v95 _textFormattingOptionsNeedUpdate_];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_188FE9BA0(v113, v94, 7u);
          sub_188A3F5FC(&aBlock, &qword_1EA934050);
        }

        else
        {
          swift_unknownObjectRelease();
          sub_188FE9BA0(v113, v111, 7u);
        }

        goto LABEL_108;
      }

      swift_unknownObjectRelease();
      v103 = v27;
      v104 = v111;
    }

    else
    {

      v103 = v27;
      v104 = v111;
    }

    sub_188FE9BA0(v103, v104, 7u);
LABEL_108:
    sub_188A3F5FC(&v122, &qword_1EA934050);
    return;
  }

  v80 = v79;
  v83 = [v79 selectedRange] == v24 && v81 == v26;
  v112 = [v80 selectedRange];
  v107 = v84;
  if (!v83)
  {
    [v80 setSelectedRange_];
    [v80 updateSelectionImmediately];
  }

  v85 = swift_allocObject();
  *(v85 + 16) = v110;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_188FE9CEC;
  *(v86 + 24) = v85;
  v117 = sub_188FE9CF4;
  v118 = v86;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v116 = sub_189036970;
  *(&v116 + 1) = &block_descriptor_64;
  v87 = _Block_copy(&aBlock);
  v88 = v78;

  [v80 updateTextAttributesWithConversionHandler_];
  _Block_release(v87);
  LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

  if (v87)
  {
    goto LABEL_120;
  }

  if (!v83)
  {
    [v80 setSelectedRange_];
    [v80 updateSelectionImmediately];
  }

  *(&v116 + 1) = v108;
  *&aBlock = v88;
  v89 = v88;
  v90 = [v80 typingAttributes];
  type metadata accessor for Key(0);
  sub_188C5E0DC();
  v91 = sub_18A4A70A8();

  v114 = v91;
  if (*(&v116 + 1))
  {
    sub_188A55538(&aBlock, &v119);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_188B32C50(&v119, v109, isUniquelyReferenced_nonNull_native);
    v114 = v91;
  }

  else
  {
    sub_188A3F5FC(&aBlock, &qword_1EA934050);
    sub_1891E9B7C(v109, &v119);
    sub_188A3F5FC(&v119, &qword_1EA934050);
  }

  v105 = sub_18A4A7088();

  [v80 setTypingAttributes_];
  sub_188FE9BA0(v113, v111, 7u);

  swift_unknownObjectRelease();
  sub_188A3F5FC(&v122, &qword_1EA934050);
}

uint64_t sub_188FE7F5C(uint64_t a1, void *a2)
{
  v4 = *off_1E70EC988;
  v10 = sub_188A34624(0, &qword_1EA9397A0);
  *&v9 = a2;
  sub_188A55538(&v9, v8);

  v5 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_188B32C50(v8, v4, isUniquelyReferenced_nonNull_native);
  return a1;
}

uint64_t _sSo30UITextFormattingViewControllerC5UIKitE11ChangeValueO34_conditionallyBridgeFromObjectiveC_6resultSbSo0abcdfG0C_AESgztFZ_0(void *a1, uint64_t a2)
{
  v4 = [a1 changeType];
  v5 = sub_18A4A7288();
  v7 = v6;
  if (v5 == sub_18A4A7288() && v7 == v8)
  {

    goto LABEL_15;
  }

  v10 = sub_18A4A86C8();

  if (v10)
  {
LABEL_15:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    goto LABEL_16;
  }

  v11 = sub_18A4A7288();
  v13 = v12;
  if (v11 == sub_18A4A7288() && v13 == v14)
  {

    goto LABEL_21;
  }

  v16 = sub_18A4A86C8();

  if (v16)
  {
LABEL_21:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = xmmword_18A6507C0;
    *(a2 + 16) = 0;
    return 1;
  }

  v17 = sub_18A4A7288();
  v19 = v18;
  if (v17 == sub_18A4A7288() && v19 == v20)
  {

LABEL_23:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return 1;
  }

  v23 = sub_18A4A86C8();

  if (v23)
  {
    goto LABEL_23;
  }

  v24 = sub_18A4A7288();
  v26 = v25;
  if (v24 == sub_18A4A7288() && v26 == v27)
  {

LABEL_28:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = xmmword_18A6507C0;
    v21 = 1;
    goto LABEL_18;
  }

  v28 = sub_18A4A86C8();

  if (v28)
  {
    goto LABEL_28;
  }

  v29 = sub_18A4A7288();
  v31 = v30;
  if (v29 == sub_18A4A7288() && v31 == v32)
  {

LABEL_33:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = 0;
    *(a2 + 8) = 0;
    v21 = 1;
    goto LABEL_18;
  }

  v33 = sub_18A4A86C8();

  if (v33)
  {
    goto LABEL_33;
  }

  v34 = sub_18A4A7288();
  v36 = v35;
  if (v34 == sub_18A4A7288() && v36 == v37)
  {

LABEL_38:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = xmmword_18A6507C0;
    v21 = 2;
    goto LABEL_18;
  }

  v38 = sub_18A4A86C8();

  if (v38)
  {
    goto LABEL_38;
  }

  v39 = sub_18A4A7288();
  v41 = v40;
  if (v39 == sub_18A4A7288() && v41 == v42)
  {

LABEL_43:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = 0;
    *(a2 + 8) = 0;
    v21 = 2;
    goto LABEL_18;
  }

  v43 = sub_18A4A86C8();

  if (v43)
  {
    goto LABEL_43;
  }

  v44 = sub_18A4A7288();
  v46 = v45;
  if (v44 == sub_18A4A7288() && v46 == v47)
  {

LABEL_48:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = xmmword_18A6507C0;
    v21 = 3;
    goto LABEL_18;
  }

  v48 = sub_18A4A86C8();

  if (v48)
  {
    goto LABEL_48;
  }

  v49 = sub_18A4A7288();
  v51 = v50;
  if (v49 == sub_18A4A7288() && v51 == v52)
  {

LABEL_53:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = 0;
    *(a2 + 8) = 0;
    v21 = 3;
    goto LABEL_18;
  }

  v53 = sub_18A4A86C8();

  if (v53)
  {
    goto LABEL_53;
  }

  v54 = sub_18A4A7288();
  v56 = v55;
  if (v54 == sub_18A4A7288() && v56 == v57)
  {

LABEL_58:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = xmmword_18A6507C0;
    v21 = 12;
    goto LABEL_18;
  }

  v58 = sub_18A4A86C8();

  if (v58)
  {
    goto LABEL_58;
  }

  v59 = sub_18A4A7288();
  v61 = v60;
  if (v59 == sub_18A4A7288() && v61 == v62)
  {

LABEL_63:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = 0;
    *(a2 + 8) = 0;
    v21 = 12;
    goto LABEL_18;
  }

  v63 = sub_18A4A86C8();

  if (v63)
  {
    goto LABEL_63;
  }

  v64 = sub_18A4A7288();
  v66 = v65;
  if (v64 == sub_18A4A7288() && v66 == v67)
  {

LABEL_68:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = xmmword_18A6507C0;
    v21 = 13;
    goto LABEL_18;
  }

  v68 = sub_18A4A86C8();

  if (v68)
  {
    goto LABEL_68;
  }

  v69 = sub_18A4A7288();
  v71 = v70;
  if (v69 == sub_18A4A7288() && v71 == v72)
  {

LABEL_73:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = 0;
    *(a2 + 8) = 0;
    v21 = 13;
    goto LABEL_18;
  }

  v73 = sub_18A4A86C8();

  if (v73)
  {
    goto LABEL_73;
  }

  v74 = sub_18A4A7288();
  v76 = v75;
  if (v74 == sub_18A4A7288() && v76 == v77)
  {

LABEL_78:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = xmmword_18A6507C0;
    v21 = 14;
    goto LABEL_18;
  }

  v78 = sub_18A4A86C8();

  if (v78)
  {
    goto LABEL_78;
  }

  v79 = sub_18A4A7288();
  v81 = v80;
  if (v79 == sub_18A4A7288() && v81 == v82)
  {

LABEL_83:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = 0;
    *(a2 + 8) = 0;
    v21 = 14;
    goto LABEL_18;
  }

  v83 = sub_18A4A86C8();

  if (v83)
  {
    goto LABEL_83;
  }

  v84 = sub_18A4A7288();
  v86 = v85;
  if (v84 == sub_18A4A7288() && v86 == v87)
  {

LABEL_88:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = xmmword_18A6507C0;
    v21 = 15;
    goto LABEL_18;
  }

  v88 = sub_18A4A86C8();

  if (v88)
  {
    goto LABEL_88;
  }

  v89 = sub_18A4A7288();
  v91 = v90;
  if (v89 == sub_18A4A7288() && v91 == v92)
  {

LABEL_93:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = 0;
    *(a2 + 8) = 0;
    v21 = 15;
    goto LABEL_18;
  }

  v93 = sub_18A4A86C8();

  if (v93)
  {
    goto LABEL_93;
  }

  v94 = sub_18A4A7288();
  v96 = v95;
  if (v94 == sub_18A4A7288() && v96 == v97)
  {
  }

  else
  {
    v98 = sub_18A4A86C8();

    if ((v98 & 1) == 0)
    {
      goto LABEL_101;
    }
  }

  v99 = [a1 font];
  if (v99)
  {

    v100 = [a1 font];
    if (v100)
    {
      v101 = v100;
      sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

      *a2 = v101;
      *(a2 + 8) = 0;
      v21 = 4;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_163;
  }

LABEL_101:
  v102 = sub_18A4A7288();
  v104 = v103;
  if (v102 == sub_18A4A7288() && v104 == v105)
  {
  }

  else
  {
    v106 = sub_18A4A86C8();

    if ((v106 & 1) == 0)
    {
      goto LABEL_108;
    }
  }

  v107 = [a1 numberValue];
  if (v107)
  {

    v108 = [a1 numberValue];
    if (v108)
    {
      v109 = v108;
      sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

      [v109 doubleValue];
      v111 = v110;

      *a2 = v111;
      *(a2 + 8) = 0;
      v21 = 5;
      goto LABEL_18;
    }

LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

LABEL_108:
  v112 = sub_18A4A7288();
  v114 = v113;
  if (v112 == sub_18A4A7288() && v114 == v115)
  {

LABEL_112:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    v117 = xmmword_18A6507C0;
LABEL_118:
    *a2 = v117;
    goto LABEL_17;
  }

  v116 = sub_18A4A86C8();

  if (v116)
  {
    goto LABEL_112;
  }

  v118 = sub_18A4A7288();
  v120 = v119;
  if (v118 == sub_18A4A7288() && v120 == v121)
  {

LABEL_117:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    v117 = xmmword_18A65B690;
    goto LABEL_118;
  }

  v122 = sub_18A4A86C8();

  if (v122)
  {
    goto LABEL_117;
  }

  v123 = sub_18A4A7288();
  v125 = v124;
  if (v123 == sub_18A4A7288() && v125 == v126)
  {
  }

  else
  {
    v127 = sub_18A4A86C8();

    if ((v127 & 1) == 0)
    {
      goto LABEL_126;
    }
  }

  v128 = [a1 color];
  if (v128)
  {

    v129 = [a1 color];
    if (v129)
    {
      v130 = v129;
      sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

      *a2 = v130;
      *(a2 + 8) = 0;
      v21 = 6;
      goto LABEL_18;
    }

    goto LABEL_164;
  }

LABEL_126:
  v131 = sub_18A4A7288();
  v133 = v132;
  if (v131 == sub_18A4A7288() && v133 == v134)
  {

LABEL_130:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    v136 = [a1 textAlignment];
    if (v136 > 3)
    {
      v137 = UITextFormattingViewControllerTextAlignmentNatural;
    }

    else
    {
      v137 = off_1E70F1CB8[v136];
    }

    *a2 = *v137;
    *(a2 + 8) = 0;
    v21 = 8;
    goto LABEL_18;
  }

  v135 = sub_18A4A86C8();

  if (v135)
  {
    goto LABEL_130;
  }

  v138 = sub_18A4A7288();
  v140 = v139;
  if (v138 == sub_18A4A7288() && v140 == v141)
  {

LABEL_138:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = [a1 textList];
    *(a2 + 8) = 0;
    v21 = 7;
    goto LABEL_18;
  }

  v142 = sub_18A4A86C8();

  if (v142)
  {
    goto LABEL_138;
  }

  v143 = sub_18A4A7288();
  v145 = v144;
  if (v143 == sub_18A4A7288() && v145 == v146)
  {

LABEL_143:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    v117 = xmmword_18A65B680;
    goto LABEL_118;
  }

  v147 = sub_18A4A86C8();

  if (v147)
  {
    goto LABEL_143;
  }

  v148 = sub_18A4A7288();
  v150 = v149;
  if (v148 == sub_18A4A7288() && v150 == v151)
  {

LABEL_148:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    v117 = xmmword_18A65B670;
    goto LABEL_118;
  }

  v152 = sub_18A4A86C8();

  if (v152)
  {
    goto LABEL_148;
  }

  v153 = sub_18A4A7288();
  v155 = v154;
  if (v153 == sub_18A4A7288() && v155 == v156)
  {

LABEL_153:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    v117 = xmmword_18A65B660;
    goto LABEL_118;
  }

  v157 = sub_18A4A86C8();

  if (v157)
  {
    goto LABEL_153;
  }

  v158 = sub_18A4A7288();
  v160 = v159;
  if (v158 == sub_18A4A7288() && v160 == v161)
  {

LABEL_158:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    v117 = xmmword_18A65B650;
    goto LABEL_118;
  }

  v162 = sub_18A4A86C8();

  if (v162)
  {
    goto LABEL_158;
  }

  v163 = sub_18A4A7288();
  v165 = v164;
  if (v163 == sub_18A4A7288() && v165 == v166)
  {

LABEL_166:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = [a1 highlight];
    *(a2 + 8) = 0;
    v21 = 10;
    goto LABEL_18;
  }

LABEL_165:
  v167 = sub_18A4A86C8();

  if (v167)
  {
    goto LABEL_166;
  }

  v168 = sub_18A4A7288();
  v170 = v169;
  if (v168 == sub_18A4A7288() && v170 == v171)
  {
  }

  else
  {
    v172 = sub_18A4A86C8();

    if ((v172 & 1) == 0)
    {
      goto LABEL_174;
    }
  }

  v173 = [a1 numberValue];
  if (v173)
  {

    v174 = [a1 numberValue];
    if (v174)
    {
      v175 = v174;
      sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

      [v175 doubleValue];
      v177 = v176;

      *a2 = v177;
      *(a2 + 8) = 0;
      v21 = 9;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_178;
  }

LABEL_174:
  v178 = sub_18A4A7288();
  v180 = v179;
  if (v178 == sub_18A4A7288() && v180 == v181)
  {

LABEL_179:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    v117 = xmmword_18A65B640;
    goto LABEL_118;
  }

LABEL_178:
  v182 = sub_18A4A86C8();

  if (v182)
  {
    goto LABEL_179;
  }

  v183 = sub_18A4A7288();
  v185 = v184;
  if (v183 == sub_18A4A7288() && v185 == v186)
  {

LABEL_184:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    v117 = xmmword_18A65B630;
    goto LABEL_118;
  }

  v187 = sub_18A4A86C8();

  if (v187)
  {
    goto LABEL_184;
  }

  v188 = sub_18A4A7288();
  v190 = v189;
  if (v188 == sub_18A4A7288() && v190 == v191)
  {
  }

  else
  {
    v192 = sub_18A4A86C8();

    if ((v192 & 1) == 0)
    {
      goto LABEL_192;
    }
  }

  v193 = [a1 _customComponentKey];
  if (v193)
  {

    v194 = [a1 _customComponentKey];
    if (v194)
    {
      v195 = v194;
      sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

      *a2 = v195;
      *(a2 + 8) = 0;
      v21 = 16;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_196;
  }

LABEL_192:
  v196 = sub_18A4A7288();
  v198 = v197;
  if (v196 == sub_18A4A7288() && v198 == v199)
  {

LABEL_197:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    v117 = xmmword_18A65B620;
    goto LABEL_118;
  }

LABEL_196:
  v200 = sub_18A4A86C8();

  if (v200)
  {
    goto LABEL_197;
  }

  v201 = sub_18A4A7288();
  v203 = v202;
  if (v201 == sub_18A4A7288() && v203 == v204)
  {

LABEL_202:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    v117 = xmmword_18A65B610;
    goto LABEL_118;
  }

  v205 = sub_18A4A86C8();

  if (v205)
  {
    goto LABEL_202;
  }

  v206 = sub_18A4A7288();
  v208 = v207;
  if (v206 == sub_18A4A7288() && v208 == v209)
  {

LABEL_207:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = xmmword_18A6507C0;
    v21 = 17;
    goto LABEL_18;
  }

  v210 = sub_18A4A86C8();

  if (v210)
  {
    goto LABEL_207;
  }

  v211 = sub_18A4A7288();
  v213 = v212;
  if (v211 == sub_18A4A7288() && v213 == v214)
  {

LABEL_212:
    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));

    *a2 = 0;
    *(a2 + 8) = 0;
    v21 = 17;
    goto LABEL_18;
  }

  v215 = sub_18A4A86C8();

  if (v215)
  {
    goto LABEL_212;
  }

  v216 = sub_18A4A7288();
  v218 = v217;
  if (v216 == sub_18A4A7288() && v218 == v219)
  {
  }

  else
  {
    v220 = sub_18A4A86C8();

    if ((v220 & 1) == 0)
    {
LABEL_220:
      sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));
      v227 = sub_18A4A7288();
      v229 = v228;
      if (v227 == sub_18A4A7288() && v229 == v230)
      {

LABEL_225:
        v232 = [a1 _emphasisStyleKey];
        if (v232)
        {
          v233 = v232;
          v234 = sub_18A4A7288();
          v236 = v235;

          *a2 = v234;
          *(a2 + 8) = v236;
        }

        else
        {
          *a2 = 0;
          *(a2 + 8) = 0;
        }

        v21 = 18;
        goto LABEL_18;
      }

      goto LABEL_224;
    }
  }

  v221 = [a1 formattingStyleKey];
  if (!v221)
  {
    goto LABEL_220;
  }

  v222 = [a1 formattingStyleKey];
  if (v222)
  {
    v223 = v222;

    sub_188FE9B8C(*a2, *(a2 + 8), *(a2 + 16));
    v224 = sub_18A4A7288();
    v226 = v225;

    *a2 = v224;
    *(a2 + 8) = v226;
    v21 = 11;
    goto LABEL_18;
  }

  __break(1u);
LABEL_224:
  v231 = sub_18A4A86C8();

  if (v231)
  {
    goto LABEL_225;
  }

LABEL_16:
  *a2 = 0;
  *(a2 + 8) = 0;
LABEL_17:
  v21 = 19;
LABEL_18:
  *(a2 + 16) = v21;
  return 1;
}

uint64_t _sSo30UITextFormattingViewControllerC5UIKitE11ChangeValueO26_forceBridgeFromObjectiveC_6resultySo0abcdfG0C_AESgztFZ_0(void *a1, uint64_t a2)
{
  result = _sSo30UITextFormattingViewControllerC5UIKitE11ChangeValueO34_conditionallyBridgeFromObjectiveC_6resultSbSo0abcdfG0C_AESgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    sub_18A4A80E8();

    sub_188A34624(0, &qword_1EA939798);
    v3 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v3);

    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    v4 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v4);

    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

id sub_188FE9B10(id result, id a2, unsigned __int8 a3)
{
  if (a3 > 9u)
  {
    if (a3 > 0xFu)
    {
      if (a3 == 16)
      {
        return result;
      }

      if (a3 != 18)
      {
        return result;
      }
    }

    else
    {
      if (a3 == 10)
      {
        return result;
      }

      if (a3 != 11)
      {
        return result;
      }
    }
  }

  if (a3 <= 6u)
  {
    if (a3 != 4 && a3 != 6)
    {
      return result;
    }

    return result;
  }

  if (a3 == 7 || a3 == 8)
  {
    return result;
  }

  return result;
}

void sub_188FE9B8C(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_188FE9BA0(a1, a2, a3);
  }
}

void sub_188FE9BA0(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 > 9u)
  {
    if (a3 > 0xFu)
    {
      if (a3 == 16)
      {
        goto LABEL_16;
      }

      if (a3 != 18)
      {
        return;
      }
    }

    else
    {
      if (a3 == 10)
      {
        goto LABEL_16;
      }

      if (a3 != 11)
      {
        return;
      }
    }

    return;
  }

  if (a3 <= 6u)
  {
    if (a3 != 4 && a3 != 6)
    {
      return;
    }

LABEL_16:

    return;
  }

  if (a3 == 7 || a3 == 8)
  {
    goto LABEL_16;
  }
}

uint64_t get_enum_tag_for_layout_string_So30UITextFormattingViewControllerC5UIKitE11ChangeValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1Fu) <= 0x12)
  {
    return *(a1 + 16) & 0x1F;
  }

  else
  {
    return (*a1 + 19);
  }
}

uint64_t sub_188FE9C38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xED && *(a1 + 17))
  {
    return (*a1 + 237);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0x13)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_188FE9C80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEC)
  {
    *(result + 16) = 0;
    *result = a2 - 237;
    *(result + 8) = 0;
    if (a3 >= 0xED)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xED)
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

uint64_t sub_188FE9CC4(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x13)
  {
    *result = a2 - 19;
    *(result + 8) = 0;
    LOBYTE(a2) = 19;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t UIWindowSceneReplacePlacement.init(replacing:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() placementToReplaceSceneSession_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9397A8);
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t UIWindowSceneReplacePlacement.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t static UIWindowScenePlacement<>.replacing(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() placementToReplaceSceneSession_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9397A8);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

uint64_t UIWindowSceneReplacePlacement._targetScenePersistentIdentifier.getter()
{
  v1 = [*(*v0 + 16) _targetSceneSessionPersistentIdentifier];
  v2 = sub_18A4A7288();

  return v2;
}

unint64_t sub_188FE9EEC(uint64_t a1)
{
  result = sub_188FE9F14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188FE9F14()
{
  result = qword_1EA9397B0;
  if (!qword_1EA9397B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9397B0);
  }

  return result;
}

unint64_t sub_188FE9F6C()
{
  result = qword_1EA9397B8;
  if (!qword_1EA9397B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9397B8);
  }

  return result;
}

unint64_t sub_188FE9FC4()
{
  result = qword_1EA9397C0;
  if (!qword_1EA9397C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9397C0);
  }

  return result;
}

uint64_t sub_188FEA294()
{
  v1 = 7104878;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000031, 0x800000018A69CFE0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0xD000000000000012, 0x800000018A69D020);
  v2 = [v0 previousLayout];
  if (v2)
  {
    v3 = [v2 description];
    swift_unknownObjectRelease();
    v4 = sub_18A4A7288();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x18CFE22D0](v4, v6);

  MEMORY[0x18CFE22D0](0x79614C77656E203BLL, 0xED0000203A74756FLL);
  v7 = [v0 mutableNewLayout];
  if (v7)
  {
    v8 = [v7 description];
    swift_unknownObjectRelease();
    v1 = sub_18A4A7288();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  MEMORY[0x18CFE22D0](v1, v10);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

void *sub_188FEA520()
{
  v1 = *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition);
  v2 = v1;
  if (!v1)
  {
    v2 = *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableUpcomingTransition);
    if (v2)
    {
      v3 = v2;
    }
  }

  v4 = v1;
  return v2;
}

void sub_188FEA628(char a1)
{
  v2 = *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition];
  if (v2 && (*(v2 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_isCommitted) & 1) == 0)
  {
    v4 = v2;
    [v4 setMutableIsAnimated_];
    [v1 commitWithTransition_];
    [v1 startWithTransition_];
  }
}

void sub_188FEA728(void *a1)
{
  v2 = *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition];
  if (v2)
  {
    if ((*(v2 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_isCommitted) & 1) == 0)
    {
      v4 = v2;
      [v1 commitWithTransition_];
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = v4;
      v17 = sub_188FEB350;
      v18 = v6;
      v13 = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_188C577F0;
      v16 = &block_descriptor_79_2;
      v7 = _Block_copy(&v13);
      v8 = v4;

      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      v17 = sub_188FEB358;
      v18 = v10;
      v13 = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_188C577F0;
      v16 = &block_descriptor_86_1;
      v11 = _Block_copy(&v13);
      v12 = v8;

      [a1 animateAlongsideTransition:v7 completion:v11];
      _Block_release(v11);
      _Block_release(v7);
    }
  }
}

void sub_188FEA930(void *a1, uint64_t a2, _BYTE *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([a3 isAnimated] && !objc_msgSend(a1, sel_isAnimated))
    {
      v7 = &selRef_startWithTransition_;
    }

    else
    {
      a3[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_isCoordinated] = 1;
      v7 = &selRef_animateWithTransition_;
    }

    [v6 *v7];
  }
}

void sub_188FEA9E8(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [a3 setMutableIsCancelled_];
    if ((*(a3 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_isCoordinated) & 1) == 0)
    {
      if (*(a3 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_hasStarted))
      {
LABEL_6:

        return;
      }

      [v6 animateWithTransition_];
    }

    [v6 completeWithTransition_];
    goto LABEL_6;
  }
}

id sub_188FEAB60()
{
  result = [v0 scheduledTransition];
  if (!result)
  {
    v2 = OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableUpcomingTransition;
    v3 = *&v0[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableUpcomingTransition];
    if (v3)
    {

      return v3;
    }

    else
    {
      v4 = [objc_allocWithZone(_UISplitViewControllerAdaptiveLayoutTransition) initWithPreviousLayout_];
      swift_unknownObjectRelease();
      v5 = *&v0[v2];
      *&v0[v2] = v4;
      v6 = v4;

      return v6;
    }
  }

  return result;
}

uint64_t sub_188FEAD2C(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = [v7 scheduledTransition];
  if (v14)
  {
    v15 = v14;
    v16 = *&v14[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_id];
    v17 = *&v14[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_id + 8];
    *&v22 = a1;
    BYTE8(v22) = a2;
    v23 = v16;
    v24 = v17;
    v25 = a3;
    v26 = a4;
    v27 = a5;
    v28 = a6;
    v18 = OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_updates;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    sub_188A52E38(a5);
    sub_188A52E38(a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *&v7[v18];
    *&v7[v18] = 0x8000000000000000;
    sub_188B16E54(&v22, a1, a2, isUniquelyReferenced_nonNull_native);
    *&v7[v18] = v21;
    swift_endAccess();
    if (a3)
    {
      a3(v15);
    }
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

id _UISplitViewControllerAdaptiveLayoutTransitionController.init()()
{
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutablePreviousLayout) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableUpcomingTransition) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_updates) = MEMORY[0x1E69E7CC8];
  v2.super_class = _UISplitViewControllerAdaptiveLayoutTransitionController;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_188FEB0F8(uint64_t a1, unsigned __int8 a2)
{
  sub_18A4A8888();
  if (a2 <= 1u)
  {
    v4 = a2 != 0;
LABEL_5:
    MEMORY[0x18CFE37E0](v4);
    goto LABEL_9;
  }

  if (a2 == 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (a1)
  {
    a1 = 4;
  }

  else
  {
    a1 = 3;
  }

LABEL_9:
  MEMORY[0x18CFE37E0](a1);
  return sub_18A4A88E8();
}

uint64_t sub_188FEB198()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    v3 = v2 != 0;
LABEL_5:
    MEMORY[0x18CFE37E0](v3);
    return MEMORY[0x18CFE37E0](v1);
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_5;
  }

  if (v1)
  {
    v1 = 4;
  }

  else
  {
    v1 = 3;
  }

  return MEMORY[0x18CFE37E0](v1);
}

uint64_t sub_188FEB208()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  if (v2 <= 1)
  {
    v3 = v2 != 0;
LABEL_5:
    MEMORY[0x18CFE37E0](v3);
    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_5;
  }

  if (v1)
  {
    v1 = 4;
  }

  else
  {
    v1 = 3;
  }

LABEL_9:
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t sub_188FEB2B0(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      if (a1)
      {
        if (a4 != 3 || a3 != 1)
        {
          return 0;
        }
      }

      else if (a4 != 3 || a3)
      {
        return 0;
      }

      return 1;
    }

    if (a4 == 2)
    {
      return a1 == a3;
    }
  }

  else
  {
    if (!a2)
    {
      if (!a4)
      {
        return a1 == a3;
      }

      return 0;
    }

    if (a4 == 1)
    {
      return a1 == a3;
    }
  }

  return 0;
}

unint64_t sub_188FEB360()
{
  result = qword_1EA930940;
  if (!qword_1EA930940)
  {
    sub_188A34624(255, &qword_1ED48D5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930940);
  }

  return result;
}

uint64_t sub_188FEB3C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188FEB410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188FEB460(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_188FEB478(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

float64_t sub_188FEB4F4(float64x2_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (qword_1ED48D080 != -1)
  {
    v6 = *v1;
    v7 = *a1;
    swift_once();
    v3 = v6;
    v2 = v7;
  }

  v4 = vdivq_f64(vabdq_f64(v3, v2), vdupq_lane_s64(qword_1ED4A3498, 0));
  if (v4.f64[0] <= v4.f64[1])
  {
    v4.f64[0] = v4.f64[1];
  }

  return v4.f64[0];
}

uint64_t static UIKeyboardInlineCandidateStorage.HostIdiomKey.defaultValue.getter()
{
  if (qword_1EA931DB0 != -1)
  {
    swift_once();
  }

  return qword_1EA9398A8;
}

uint64_t sub_188FEB5E8@<X0>(void *a1@<X8>)
{
  if (qword_1EA931DB0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EA9398A8;
  return result;
}

uint64_t sub_188FEB69C(double a1)
{
  v3 = sub_18A4A5BD8();
  sub_18A4A5C08();
  if (sub_18A4A5C08() == v3)
  {
    *v1 = a1;
  }

  v4 = sub_18A4A5BF8();
  sub_18A4A5C08();
  if (sub_18A4A5C08() == v4)
  {
    v1[1] = a1;
  }

  v5 = sub_18A4A5BE8();
  sub_18A4A5C08();
  if (sub_18A4A5C08() == v5)
  {
    v1[2] = a1;
  }

  v6 = sub_18A4A5C18();
  sub_18A4A5C08();
  result = sub_18A4A5C08();
  if (result == v6)
  {
    v1[3] = a1;
  }

  return result;
}

uint64_t sub_188FEB760(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MaxX = CGRectGetMaxX(*&a1);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  MinY = CGRectGetMinY(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  v10 = CGRectGetMaxX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  MinX = CGRectGetMinX(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v12 = CGRectGetMaxY(v25);
  v20 = MEMORY[0x1E69E7CC0];
  sub_18A4A8208();
  v13 = objc_opt_self();
  v14 = [v13 valueWithCGPoint_];
  sub_18A4A81D8();
  sub_18A4A8218();
  sub_18A4A8228();
  sub_18A4A81E8();
  v15 = [v13 valueWithCGPoint_];
  sub_18A4A81D8();
  sub_18A4A8218();
  sub_18A4A8228();
  sub_18A4A81E8();
  v16 = [v13 valueWithCGPoint_];
  sub_18A4A81D8();
  sub_18A4A8218();
  sub_18A4A8228();
  sub_18A4A81E8();
  v17 = [v13 valueWithCGPoint_];
  sub_18A4A81D8();
  sub_18A4A8218();
  sub_18A4A8228();
  sub_18A4A81E8();
  return v20;
}

__n128 sub_188FEB9C0()
{
  v0 = *(MEMORY[0x1E6979288] + 16);
  xmmword_1EA994E60 = *MEMORY[0x1E6979288];
  *algn_1EA994E70 = v0;
  result = *(MEMORY[0x1E6979288] + 32);
  v2 = *(MEMORY[0x1E6979288] + 48);
  xmmword_1EA994E80 = result;
  unk_1EA994E90 = v2;
  return result;
}

uint64_t sub_188FEB9E4(void *a1)
{
  v2 = sub_18A4A7288();
  v4 = v3;
  if (v2 == sub_18A4A7288() && v4 == v5)
  {

    return 1;
  }

  v7 = sub_18A4A86C8();

  if (v7)
  {

    return 1;
  }

  v9 = sub_18A4A7288();
  v11 = v10;
  if (v9 == sub_18A4A7288() && v11 == v12)
  {

    return 2;
  }

  else
  {
    v14 = sub_18A4A86C8();

    if (v14)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_188FEBB18(char a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 3;
      if ((a1 & 4) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 4) == 0)
      {
        v2 = 1;
        if ((a1 & 8) == 0)
        {
          return v2;
        }

        goto LABEL_15;
      }
    }

    goto LABEL_13;
  }

  if ((a1 & 2) == 0)
  {
    v1 = 0;
    if ((a1 & 4) == 0)
    {
      v2 = 0;
      if ((a1 & 8) == 0)
      {
        return v2;
      }

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v1 = 2;
  if ((a1 & 4) != 0)
  {
LABEL_13:
    v1 |= 4uLL;
  }

LABEL_14:
  if ((a1 & 8) != 0)
  {
LABEL_15:
    v1 |= 8uLL;
  }

  if ((~v1 & 0xC) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = -1;
  }

  if ((~v1 & 3) != 0)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_188FEBB90(char a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 3;
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_4:
    v1 |= 4uLL;
    goto LABEL_5;
  }

  if ((a1 & 2) == 0)
  {
    v1 = 0;
    if ((a1 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v1 = 2;
  if ((a1 & 4) != 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  if ((a1 & 8) != 0)
  {
    return v1 | 8;
  }

  return v1;
}

void sub_188FEBD9C()
{
  v1 = [v0 cancelButton];
  [v1 removeTarget:0 action:sel__searchBarCancelButtonClicked_ forControlEvents:0x2000];

  v2 = *&v0[OBJC_IVAR____UISearchControllerInlineSearchFieldAccessoryView_borrowedSearchTextField];
  if (v2)
  {
    v6 = v2;
    v3 = [v0 searchFieldPlatterView];
    v4 = [v3 contentView];

    [v4 addSubview_];
    v5 = [v0 cancelButton];
    [v5 addTarget:v6 action:sel__searchBarCancelButtonClicked_ forControlEvents:0x2000];

    [v0 setNeedsLayout];
  }
}

char *sub_188FEBF08(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____UISearchControllerInlineSearchFieldAccessoryView_borrowedSearchTextField] = 0;
  v10 = [objc_opt_self() borderlessButtonConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v12 = sub_18A4A7258();
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:0];

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v14 = *(inited + 16);
  }

  else
  {
    [*(inited + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v14 = v49;
    v15 = swift_allocObject();
    *(v15 + 16) = v49;

    inited = v15;
  }

  [v14 setImage_];

  v16 = [objc_opt_self() buttonWithConfiguration:*(inited + 16) primaryAction:0];
  v17 = OBJC_IVAR____UISearchControllerInlineSearchFieldAccessoryView_cancelButton;
  *&v5[OBJC_IVAR____UISearchControllerInlineSearchFieldAccessoryView_cancelButton] = v16;
  v18 = _s11PlatterViewCMa_0();
  v19 = [objc_allocWithZone(v18) init];
  *&v5[OBJC_IVAR____UISearchControllerInlineSearchFieldAccessoryView_searchFieldPlatterView] = v19;
  *&v31 = 0x7FEFFFFFFFFFFFFFLL;
  BYTE8(v31) = 0;
  *(&v31 + 9) = *v45;
  HIDWORD(v31) = *&v45[3];
  v32 = 0x7FEFFFFFFFFFFFFFLL;
  v33 = 0;
  *v34 = *v44;
  *&v34[3] = *&v44[3];
  v35 = 0x7FEFFFFFFFFFFFFFLL;
  v36 = 0;
  *&v37[3] = *&v43[3];
  *v37 = *v43;
  v38 = 0x7FEFFFFFFFFFFFFFLL;
  v39 = 0;
  *v40 = *v42;
  *&v40[3] = *&v42[3];
  v20 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v21 = v19;
  UIView.cornerConfiguration.setter(&v31);

  v22 = [objc_allocWithZone(v18) init];
  v23 = OBJC_IVAR____UISearchControllerInlineSearchFieldAccessoryView_cancelButtonPlatterView;
  *&v5[OBJC_IVAR____UISearchControllerInlineSearchFieldAccessoryView_cancelButtonPlatterView] = v22;
  *&v31 = 0x7FEFFFFFFFFFFFFFLL;
  BYTE8(v31) = 0;
  *(&v31 + 9) = v49;
  HIDWORD(v31) = *(&v49 + 3);
  v32 = 0x7FEFFFFFFFFFFFFFLL;
  v33 = 0;
  *v34 = *v48;
  *&v34[3] = *&v48[3];
  v35 = 0x7FEFFFFFFFFFFFFFLL;
  v36 = 0;
  *&v37[3] = *&v47[3];
  *v37 = *v47;
  v38 = 0x7FEFFFFFFFFFFFFFLL;
  v39 = 0;
  *v40 = *v46;
  *&v40[3] = *&v46[3];
  v41 = v20;
  v24 = v22;
  UIView.cornerConfiguration.setter(&v31);

  v25 = [*&v5[v23] contentView];
  [v25 addSubview_];

  v30.receiver = v5;
  v30.super_class = _UISearchControllerInlineSearchFieldAccessoryView;
  v26 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  v27 = *&v26[OBJC_IVAR____UISearchControllerInlineSearchFieldAccessoryView_cancelButtonPlatterView];
  v28 = v26;
  [v28 addSubview_];
  [v28 addSubview_];

  return v28;
}

void sub_188FEC37C()
{
  v58 = *MEMORY[0x1E69E9840];
  v57.super_class = _UISearchControllerInlineSearchFieldAccessoryView;
  objc_msgSendSuper2(&v57, sel_layoutSubviews);
  [v0 intrinsicContentSize];
  v2 = v1;
  v3 = [v0 _shouldReverseLayoutDirection];
  [v0 bounds];
  x = v59.origin.x;
  y = v59.origin.y;
  Width = CGRectGetWidth(v59);
  [v0 bounds];
  v11 = UIRectCenteredYInRectScale(x, y, Width, v2, v7, v8, v9, v10, 1.0);
  memset(&slice, 0, sizeof(slice));
  if (v3)
  {
    v15 = CGRectMinXEdge;
  }

  else
  {
    v15 = CGRectMaxXEdge;
  }

  memset(&remainder, 0, sizeof(remainder));
  if (v3)
  {
    v16 = 2;
  }

  else
  {
    v16 = 8;
  }

  CGRectDivide(*&v11, &slice, &remainder, v2, v15);
  v17 = slice.origin.x;
  v18 = slice.origin.y;
  v19 = slice.size.width;
  height = slice.size.height;
  v21 = remainder.origin.x;
  v22 = remainder.origin.y;
  v23 = remainder.size.width;
  v24 = remainder.size.height;
  v25 = [v0 cancelButtonPlatterView];
  [v25 setFrame_];

  v26 = UIRectInsetEdges(v16, v21, v22, v23, v24, 8.0);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [v0 searchFieldPlatterView];
  [v33 setFrame_];

  v34 = [v0 cancelButton];
  v35 = [v0 cancelButtonPlatterView];
  [v35 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  [v34 setFrame_];
  v44 = [v0 borrowedSearchTextField];
  if (v44)
  {
    v45 = v44;
    v46 = [v0 searchFieldPlatterView];
    [v46 bounds];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;

    [v45 setFrame_];
  }
}

id sub_188FEC6AC()
{
  v1 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s11PlatterViewCMa_0();
  v21.receiver = v0;
  v21.super_class = v4;
  v5 = objc_msgSendSuper2(&v21, sel_initWithEffect_, 0);
  v6 = qword_1ED48E920;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, qword_1ED48E930);
  sub_188B90950(v8, v3);
  v20[3] = type metadata accessor for _Glass(0);
  v20[4] = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  _Glass.init(_:smoothness:)(v3, boxed_opaque_existential_0, 0.0);
  UIView._background.setter(v20);
  v10 = [v7 contentView];
  [v10 setClipsToBounds_];

  v11 = [v7 layer];
  [v11 setPunchoutShadow_];

  v12 = [v7 layer];
  [v12 setCornerCurve_];

  v13 = [v7 layer];
  [v13 setShadowPathIsBounds_];

  v14 = [v7 layer];
  [v14 setShadowOffset_];

  v15 = [v7 layer];
  LODWORD(v16) = 1039516303;
  [v15 setShadowOpacity_];

  v17 = [v7 layer];
  [v17 setShadowRadius_];

  return v7;
}

id sub_188FEC9D4()
{
  v2.receiver = v0;
  v2.super_class = _s11PlatterViewCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_188FECAB0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v39 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v40 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x1E69E7CC0];
    v35 = isUniquelyReferenced_nonNull_bridgeObject;
    v38 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v6 = &qword_1EA939990;
    v37 = v3;
    while (v40)
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_188E48D74(v4, v35);
      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        goto LABEL_39;
      }

LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_18A64B710;
      v10 = *(v7 + 24);
      *(v9 + 32) = v10;
      swift_beginAccess();
      v11 = v10;

      v13 = v2;
      v14 = sub_188FECAB0(v12);

      v42[0] = v9;
      sub_18920BCA8(v14);

      v15 = v42[0];
      v16 = v42[0] >> 62;
      if (v42[0] >> 62)
      {
        v17 = sub_18A4A7F68();
      }

      else
      {
        v17 = *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_18A4A7F68();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = v17;
      v8 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v17);
      v19 = isUniquelyReferenced_nonNull_bridgeObject + v17;
      if (v8)
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v18)
        {
          v20 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v19 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_18A4A7F68();
        goto LABEL_20;
      }

      if (v18)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_18A4A8168();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v20 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v41 = v5;
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v16)
      {
        v24 = v20;
        isUniquelyReferenced_nonNull_bridgeObject = sub_18A4A7F68();
        v20 = v24;
        v23 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v22 >> 1) - v21) < v43)
          {
            goto LABEL_43;
          }

          v25 = v20 + 8 * v21 + 32;
          v36 = v20;
          if (v16)
          {
            if (v23 < 1)
            {
              goto LABEL_45;
            }

            sub_188A34360(&qword_1EA939998, v6);
            v26 = v6;
            for (i = 0; i != v23; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v26);
              v28 = sub_188E4D320(v42, i, v15);
              v30 = *v29;
              (v28)(v42, 0);
              v26 = v6;
              *(v25 + 8 * i) = v30;
            }
          }

          else
          {
            sub_188A34624(0, &qword_1ED48D5A0);
            swift_arrayInitWithCopy();
            v26 = v6;
          }

          v6 = v26;

          v2 = v13;
          v5 = v41;
          if (v43 >= 1)
          {
            v31 = *(v36 + 16);
            v8 = __OFADD__(v31, v43);
            v32 = v31 + v43;
            if (v8)
            {
              goto LABEL_44;
            }

            *(v36 + 16) = v32;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_25;
        }
      }

      v5 = v41;
      if (v43 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v4 == v37)
      {
        return v5;
      }
    }

    if (v4 >= *(v39 + 16))
    {
      goto LABEL_40;
    }

    v7 = *(v38 + 8 * v4);

    v8 = __OFADD__(v4++, 1);
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_39:
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
    v33 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_18A4A7F68();
    isUniquelyReferenced_nonNull_bridgeObject = v33;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_188FECEC8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v37 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v35 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v4 = &qword_1EA939990;
    v33 = v1;
    while (1)
    {
      if (v37)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_188E48D74(v2, v32);
        v5 = isUniquelyReferenced_nonNull_bridgeObject;
        v6 = __OFADD__(v2++, 1);
        if (v6)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v2 >= *(v36 + 16))
        {
          goto LABEL_45;
        }

        v5 = *(v35 + 8 * v2);

        v6 = __OFADD__(v2++, 1);
        if (v6)
        {
          goto LABEL_44;
        }
      }

      if (*(v5 + 32))
      {

        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_18A64B710;
        v9 = *(v5 + 24);
        *(v8 + 32) = v9;
        swift_beginAccess();
        v10 = v9;

        v12 = sub_188FECEC8(v11);

        v39[0] = v8;
        sub_18920BCA8(v12);

        v7 = v39[0];
      }

      v13 = v7 >> 62;
      v14 = v7 >> 62 ? sub_18A4A7F68() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
      {
        goto LABEL_43;
      }

LABEL_16:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v15)
        {
          v17 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

LABEL_21:
        sub_18A4A7F68();
        goto LABEL_22;
      }

      if (v15)
      {
        goto LABEL_21;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_18A4A8168();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v40 = v3;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v13)
      {
        v21 = v17;
        isUniquelyReferenced_nonNull_bridgeObject = sub_18A4A7F68();
        v17 = v21;
        v20 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v19 >> 1) - v18) < v14)
          {
            goto LABEL_47;
          }

          v22 = v17 + 8 * v18 + 32;
          v38 = v2;
          v34 = v17;
          if (v13)
          {
            if (v20 < 1)
            {
              goto LABEL_49;
            }

            sub_188A34360(&qword_1EA939998, v4);
            v23 = v4;
            for (i = 0; i != v20; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v23);
              v25 = sub_188E4D320(v39, i, v7);
              v27 = *v26;
              (v25)(v39, 0);
              *(v22 + 8 * i) = v27;
            }
          }

          else
          {
            sub_188A34624(0, &qword_1ED48D5A0);
            swift_arrayInitWithCopy();
            v23 = v4;
          }

          if (v14 < 1)
          {
            v1 = v33;
            v4 = v23;
            v2 = v38;
            v3 = v40;
          }

          else
          {
            v1 = v33;
            v28 = *(v34 + 16);
            v6 = __OFADD__(v28, v14);
            v29 = v28 + v14;
            v4 = v23;
            v2 = v38;
            v3 = v40;
            if (v6)
            {
              goto LABEL_48;
            }

            *(v34 + 16) = v29;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          goto LABEL_27;
        }
      }

      v3 = v40;
      if (v14 > 0)
      {
        goto LABEL_46;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_18A4A7F68();
    v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
    {
      goto LABEL_16;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_18A4A7F68();
    isUniquelyReferenced_nonNull_bridgeObject = v30;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_188FED304(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v8 = a3;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
    }

    else
    {
      v4 = a2;
      v5 = a4 & 0xFFFFFFFFFFFFFF8;
      if (!(a4 >> 62))
      {
        v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }
    }

    v9 = sub_18A4A7F68();
LABEL_6:
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v9 == v10)
      {
        break;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = sub_188E48D74(v10, a4);
      }

      else
      {
        if (v10 >= *(v5 + 16))
        {
          goto LABEL_20;
        }
      }

      *(v4 + 8 * v10) = v12;
      if (v11 == v8)
      {
        goto LABEL_18;
      }

      ++v10;
      if (v11 >= v8)
      {
        goto LABEL_21;
      }
    }

    v8 = v9;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = v8;
  return v8;
}

unint64_t sub_188FED400()
{
  v1 = v0[1];
  v9 = *v0;
  v10 = v1;
  v11 = *(v0 + 4);
  v2 = sub_188FF4494();
  v3 = v9;
  if (v9 >> 62)
  {
    if (v2 == sub_18A4A7F68())
    {
      return 0;
    }

    v4 = sub_18A4A7F68();
  }

  else
  {
    v4 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 == v4)
    {
      return 0;
    }
  }

  v8 = v4;
  sub_188FF45BC(&v8);
  result = v8;
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_188E48D74(v8, v3);
    goto LABEL_10;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_10:
  v6 = *(v0 + 5);
  v7 = v3;
  (*(&v3 + 1))(&v8, &v7);

  v7 = v8;
  v6(&v8, &v7);

  return v8;
}

void sub_188FED5C4(unint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!(v3 >> 62))
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:
    sub_18A4A8398();
    __break(1u);
    goto LABEL_13;
  }

  if (sub_18A4A7F68())
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_14:
    sub_188FF2160(0xD000000000000026, 0x800000018A69DB80);
    return;
  }

LABEL_13:
  v4 = sub_18A4A7F68();
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_188E4A2AC(i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      sub_188FEFDC0(v6);
    }

    goto LABEL_14;
  }

  __break(1u);
}

void sub_188FED7A8(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____UIViewControllerTransitionManager_transitionManager);
  swift_beginAccess();
  v3 = 0;
  v165 = v2;
  while (2)
  {
    while (2)
    {

      v5 = sub_188FECEC8(v4);

      if (v5 >> 62)
      {
        v6 = sub_18A4A7F68();
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v6)
      {
        v153 = a1;
        if (a1 >> 62)
        {
          goto LABEL_496;
        }

        v154 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v154)
        {
          goto LABEL_419;
        }

LABEL_497:
        sub_188FF2160(0xD000000000000017, 0x800000018A69DAD0);
        return;
      }

      v7 = *(v2 + 16);
      v8 = v7 >> 62;
      v167 = v3;
      v9 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
        v10 = sub_18A4A7F68();
      }

      else
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v7 & 0xC000000000000001;

      v12 = 0;
      v168 = v7 + 32;
      v169 = v7;
      v171 = v7 & 0xC000000000000001;
      v166 = v7 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v10 == v12)
        {
          v12 = v10;
          if (v8)
          {
            goto LABEL_146;
          }

          goto LABEL_43;
        }

        if (!v11)
        {
          break;
        }

        v13 = sub_188E48D74(v12, v7);
        if ((*(v13 + 32) & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_13:

        v14 = __OFADD__(v12++, 1);
        if (v14)
        {
          goto LABEL_427;
        }
      }

      if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_426;
      }

      v13 = *(v7 + 8 * v12 + 32);

      if (*(v13 + 32))
      {
        goto LABEL_13;
      }

LABEL_17:
      swift_beginAccess();
      v15 = *(v13 + 40);
      v164 = v15 >> 62;
      v178 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
        v16 = sub_18A4A7F68();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v180 = v15 & 0xC000000000000001;

      v17 = 0;
      v176 = v15;
      while (1)
      {
        if (v16 == v17)
        {
          v17 = v16;
          if (v164)
          {
            goto LABEL_80;
          }

          goto LABEL_46;
        }

        if (!v180)
        {
          break;
        }

        v18 = sub_188E48D74(v17, v15);
        if ((*(v18 + 32) & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_24:

        v14 = __OFADD__(v17++, 1);
        v15 = v176;
        if (v14)
        {
          goto LABEL_432;
        }
      }

      if (v17 >= *(v178 + 16))
      {
        goto LABEL_431;
      }

      v18 = *(v15 + 8 * v17 + 32);

      if (*(v18 + 32))
      {
        goto LABEL_24;
      }

LABEL_28:
      swift_beginAccess();
      v19 = *(v18 + 40);
      v160 = v19 >> 62;
      if (v19 >> 62)
      {
        v152 = *(v18 + 40);
        v170 = v19 & 0xFFFFFFFFFFFFFF8;
        v20 = sub_18A4A7F68();
        v19 = v152;
      }

      else
      {
        v170 = v19 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = v19 & 0xC000000000000001;
      v173 = v19;

      v22 = 0;
      while (1)
      {
        if (v20 == v22)
        {
          v22 = v20;
          if (!v160)
          {
            goto LABEL_49;
          }

LABEL_40:
          if (v22 == sub_18A4A7F68())
          {
            v7 = v169;
            v9 = v166;
            goto LABEL_79;
          }

          v28 = sub_18A4A7F68();
          if (v28)
          {
            v26 = v28;
            v29 = sub_18A4A7F68();
            goto LABEL_56;
          }

          goto LABEL_481;
        }

        if (!v21)
        {
          break;
        }

        if ((*(sub_188E48D74(v22, v173) + 32) & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_35:

        v14 = __OFADD__(v22++, 1);
        v11 = v171;
        if (v14)
        {
          goto LABEL_448;
        }
      }

      if (v22 >= *(v170 + 16))
      {
        goto LABEL_446;
      }

      v23 = *(v173 + 8 * v22 + 32);

      if (*(v23 + 32))
      {
        goto LABEL_35;
      }

LABEL_39:
      swift_beginAccess();

      sub_188FED400();

      v2 = v165;

      v11 = v171;
      if (v160)
      {
        goto LABEL_40;
      }

LABEL_49:
      v26 = *(v170 + 16);
      if (v22 == v26)
      {
        v7 = v169;
        v9 = v166;
        goto LABEL_78;
      }

      v29 = *(v170 + 16);
      if (!v26)
      {
        goto LABEL_481;
      }

LABEL_56:
      v30 = v26 - 1;
      if (__OFSUB__(v26, 1))
      {
        goto LABEL_463;
      }

      v161 = v8;
      if (v30 < 0 || v30 >= v29)
      {
        goto LABEL_439;
      }

      v31 = v26 + 3;
      while (2)
      {
        v32 = v31 - 4;
        if (v21)
        {
          if ((*(sub_188E48D74(v31 - 4, v173) + 32) & 1) == 0)
          {
            break;
          }

          goto LABEL_65;
        }

        if (v32 >= *(v170 + 16))
        {
          goto LABEL_469;
        }

        v33 = *(v173 + 8 * v31);

        if (*(v33 + 32))
        {
LABEL_65:

          if (v32 < 1)
          {
            goto LABEL_439;
          }

          --v31;
          if (v30 >= v29)
          {
            goto LABEL_439;
          }

          continue;
        }

        break;
      }

      swift_beginAccess();

      v34 = sub_188FED400();

      if (v34)
      {
      }

      v2 = v165;
      if (v21)
      {
        v35 = sub_188E48D74(v31 - 4, v173);
        goto LABEL_74;
      }

      if (v32 >= *(v170 + 16))
      {
        goto LABEL_490;
      }

      v35 = *(v173 + 8 * v31);

LABEL_74:
      v9 = v166;
      v8 = v161;
      if (*(v35 + 32))
      {
        goto LABEL_503;
      }

      swift_beginAccess();

      v36 = sub_188FED400();

      if (v36)
      {
      }

      v7 = v169;
LABEL_78:
      v11 = v171;
LABEL_79:

      v15 = v176;
      if (v164)
      {
LABEL_80:
        if (v17 == sub_18A4A7F68())
        {
          v7 = v169;
          goto LABEL_145;
        }

        v37 = sub_18A4A7F68();
        if (v37)
        {
          v25 = v37;
          v27 = sub_18A4A7F68();
          goto LABEL_84;
        }

LABEL_476:
        __break(1u);
LABEL_477:
        __break(1u);
        goto LABEL_478;
      }

LABEL_46:
      v25 = *(v178 + 16);
      if (v17 == v25)
      {
        goto LABEL_145;
      }

      v27 = *(v178 + 16);
      if (!v25)
      {
        goto LABEL_476;
      }

LABEL_84:
      v162 = v8;
      v38 = v25 - 1;
      if (__OFSUB__(v25, 1))
      {
        goto LABEL_445;
      }

      if (v38 < 0 || v38 >= v27)
      {
        goto LABEL_428;
      }

      v39 = v25 + 3;
      while (2)
      {
        v40 = v39 - 4;
        if (v180)
        {
          if ((*(sub_188E48D74(v39 - 4, v15) + 32) & 1) == 0)
          {
            break;
          }

          goto LABEL_93;
        }

        if (v40 >= *(v178 + 16))
        {
          goto LABEL_460;
        }

        if (*( + 32))
        {
LABEL_93:

          if (v40 < 1)
          {
            goto LABEL_428;
          }

          --v39;
          if (v38 >= v27)
          {
            goto LABEL_428;
          }

          continue;
        }

        break;
      }

      swift_beginAccess();

      v41 = sub_188FED400();

      if (v41)
      {
      }

      if (!v180)
      {
        if (v40 < *(v178 + 16))
        {
          v42 = *(v15 + 8 * v39);

          if (*(v42 + 32))
          {
            goto LABEL_500;
          }

          goto LABEL_103;
        }

LABEL_487:
        __break(1u);
LABEL_488:
        __break(1u);
LABEL_489:
        __break(1u);
LABEL_490:
        __break(1u);
LABEL_491:
        __break(1u);
LABEL_492:
        __break(1u);
        goto LABEL_493;
      }

      v42 = sub_188E48D74(v39 - 4, v15);
      if (*(v42 + 32))
      {
        goto LABEL_500;
      }

LABEL_103:
      swift_beginAccess();
      v43 = *(v42 + 40);
      v44 = v43 >> 62;
      if (v43 >> 62)
      {
        v45 = sub_18A4A7F68();
      }

      else
      {
        v45 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v46 = v43 & 0xC000000000000001;

      v47 = 0;
      while (2)
      {
        if (v45 == v47)
        {
          v47 = v45;
          if (!v44)
          {
            goto LABEL_119;
          }

LABEL_115:
          if (v47 == sub_18A4A7F68())
          {
LABEL_120:
            v2 = v165;
            v9 = v166;
            v7 = v169;
            v11 = v171;
            goto LABEL_144;
          }

          v49 = sub_18A4A7F68();
          if (v49)
          {
            v50 = v49;
            v51 = sub_18A4A7F68();
            goto LABEL_122;
          }

          goto LABEL_482;
        }

        if (v46)
        {
          if ((*(sub_188E48D74(v47, v43) + 32) & 1) == 0)
          {
            break;
          }

          goto LABEL_110;
        }

        if (v47 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_449;
        }

        v48 = *(v43 + 8 * v47 + 32);

        if (*(v48 + 32))
        {
LABEL_110:

          v14 = __OFADD__(v47++, 1);
          if (v14)
          {
            goto LABEL_450;
          }

          continue;
        }

        break;
      }

      swift_beginAccess();

      sub_188FED400();

      if (v44)
      {
        goto LABEL_115;
      }

LABEL_119:
      v50 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47 == v50)
      {
        goto LABEL_120;
      }

      v51 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v50)
      {
        goto LABEL_482;
      }

LABEL_122:
      v52 = v50 - 1;
      if (__OFSUB__(v50, 1))
      {
        goto LABEL_464;
      }

      if (v52 < 0 || v52 >= v51)
      {
        goto LABEL_440;
      }

      v53 = v50 + 3;
      while (2)
      {
        v54 = v53 - 4;
        if (v46)
        {
          if ((*(sub_188E48D74(v53 - 4, v43) + 32) & 1) == 0)
          {
            break;
          }

          goto LABEL_131;
        }

        if (v54 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_470;
        }

        if (*( + 32))
        {
LABEL_131:

          if (v54 < 1)
          {
            goto LABEL_440;
          }

          --v53;
          if (v52 >= v51)
          {
            goto LABEL_440;
          }

          continue;
        }

        break;
      }

      swift_beginAccess();

      v55 = sub_188FED400();

      if (v55)
      {
      }

      if (v46)
      {
        v56 = sub_188E48D74(v53 - 4, v43);
        goto LABEL_140;
      }

      if (v54 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_491;
      }

      v56 = *(v43 + 8 * v53);

LABEL_140:
      v2 = v165;
      v9 = v166;
      if (*(v56 + 32))
      {
        goto LABEL_504;
      }

      swift_beginAccess();

      v57 = sub_188FED400();

      if (v57)
      {
      }

      v7 = v169;
      v11 = v171;

LABEL_144:

      v8 = v162;
LABEL_145:

      if (v8)
      {
LABEL_146:
        if (v12 != sub_18A4A7F68())
        {
          v24 = sub_18A4A7F68();
          goto LABEL_148;
        }

LABEL_2:

        v3 = v167;
        continue;
      }

      break;
    }

LABEL_43:
    v24 = *(v9 + 16);
    if (v12 == v24)
    {
      goto LABEL_2;
    }

LABEL_148:
    if (!v24)
    {
      goto LABEL_475;
    }

    v58 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
LABEL_425:
      __break(1u);
LABEL_426:
      __break(1u);
LABEL_427:
      __break(1u);
LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      __break(1u);
LABEL_432:
      __break(1u);
LABEL_433:
      __break(1u);
LABEL_434:
      __break(1u);
LABEL_435:
      __break(1u);
LABEL_436:
      __break(1u);
LABEL_437:
      __break(1u);
LABEL_438:
      __break(1u);
LABEL_439:
      __break(1u);
LABEL_440:
      __break(1u);
LABEL_441:
      __break(1u);
LABEL_442:
      __break(1u);
LABEL_443:
      __break(1u);
LABEL_444:
      __break(1u);
LABEL_445:
      __break(1u);
LABEL_446:
      __break(1u);
LABEL_447:
      __break(1u);
LABEL_448:
      __break(1u);
LABEL_449:
      __break(1u);
LABEL_450:
      __break(1u);
LABEL_451:
      __break(1u);
LABEL_452:
      __break(1u);
LABEL_453:
      __break(1u);
LABEL_454:
      __break(1u);
LABEL_455:
      __break(1u);
LABEL_456:
      __break(1u);
LABEL_457:
      __break(1u);
LABEL_458:
      __break(1u);
LABEL_459:
      __break(1u);
LABEL_460:
      __break(1u);
LABEL_461:
      __break(1u);
LABEL_462:
      __break(1u);
LABEL_463:
      __break(1u);
LABEL_464:
      __break(1u);
LABEL_465:
      __break(1u);
LABEL_466:
      __break(1u);
LABEL_467:
      __break(1u);
LABEL_468:
      __break(1u);
LABEL_469:
      __break(1u);
LABEL_470:
      __break(1u);
LABEL_471:
      __break(1u);
LABEL_472:
      __break(1u);
LABEL_473:
      __break(1u);
LABEL_474:
      __break(1u);
LABEL_475:
      __break(1u);
      goto LABEL_476;
    }

    while (2)
    {
      if (v11)
      {
        v59 = sub_188E48D74(v58, v7);
        if ((*(v59 + 32) & 1) == 0)
        {
          goto LABEL_158;
        }

LABEL_153:

        v14 = __OFSUB__(v58--, 1);
        if (v14)
        {
          goto LABEL_425;
        }

        continue;
      }

      break;
    }

    if ((v58 & 0x8000000000000000) != 0)
    {
      goto LABEL_437;
    }

    if (v58 >= *(v9 + 16))
    {
      goto LABEL_438;
    }

    if (*(v59 + 32))
    {
      goto LABEL_153;
    }

LABEL_158:
    v60 = v59;
    swift_beginAccess();
    v61 = *(v60 + 40);
    v62 = v61 >> 62;
    if (v61 >> 62)
    {
      v63 = sub_18A4A7F68();
    }

    else
    {
      v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v61 & 0xC000000000000001;

    v65 = 0;
    while (1)
    {
      if (v63 == v65)
      {
        v65 = v63;
        if (!v62)
        {
          goto LABEL_174;
        }

LABEL_170:
        if (v65 != sub_18A4A7F68())
        {
          v67 = sub_18A4A7F68();
          if (v67)
          {
            v68 = v67;
            v69 = sub_18A4A7F68();
            goto LABEL_177;
          }

          goto LABEL_477;
        }

LABEL_175:

        goto LABEL_214;
      }

      if (!v64)
      {
        break;
      }

      if ((*(sub_188E48D74(v65, v61) + 32) & 1) == 0)
      {
        goto LABEL_169;
      }

LABEL_165:

      v14 = __OFADD__(v65++, 1);
      if (v14)
      {
        goto LABEL_434;
      }
    }

    if (v65 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_433;
    }

    v66 = *(v61 + 8 * v65 + 32);

    if (*(v66 + 32))
    {
      goto LABEL_165;
    }

LABEL_169:
    swift_beginAccess();

    sub_188FED400();

    v11 = v171;

    if (v62)
    {
      goto LABEL_170;
    }

LABEL_174:
    v68 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v65 == v68)
    {
      goto LABEL_175;
    }

    v69 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v68)
    {
      goto LABEL_477;
    }

LABEL_177:
    v70 = v68 - 1;
    if (__OFSUB__(v68, 1))
    {
      goto LABEL_447;
    }

    if (v70 < 0 || v70 >= v69)
    {
      goto LABEL_429;
    }

    v71 = v68 + 3;
    while (2)
    {
      v72 = v71 - 4;
      if (v64)
      {
        if ((*(sub_188E48D74(v71 - 4, v61) + 32) & 1) == 0)
        {
          break;
        }

        goto LABEL_186;
      }

      if (v72 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_461;
      }

      if (*( + 32))
      {
LABEL_186:

        if (v72 < 1)
        {
          goto LABEL_429;
        }

        --v71;
        if (v70 >= v69)
        {
          goto LABEL_429;
        }

        continue;
      }

      break;
    }

    swift_beginAccess();

    v73 = sub_188FED400();

    if (v73)
    {
    }

    v11 = v171;
    if (!v64)
    {
      if (v72 < *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v74 = *(v61 + 8 * v71);

        if (*(v74 + 32))
        {
          goto LABEL_501;
        }

        goto LABEL_196;
      }

      goto LABEL_488;
    }

    v74 = sub_188E48D74(v71 - 4, v61);
    if (*(v74 + 32))
    {
      goto LABEL_501;
    }

LABEL_196:
    swift_beginAccess();
    v75 = *(v74 + 40);
    v76 = v75 >> 62;
    if (v75 >> 62)
    {
      v77 = sub_18A4A7F68();
    }

    else
    {
      v77 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v78 = v75 & 0xC000000000000001;

    v79 = 0;
    while (2)
    {
      if (v77 == v79)
      {
        v79 = v77;
        if (!v76)
        {
          goto LABEL_212;
        }

LABEL_208:
        if (v79 != sub_18A4A7F68())
        {
          v81 = sub_18A4A7F68();
          if (v81)
          {
            v82 = v81;
            v83 = sub_18A4A7F68();
            goto LABEL_217;
          }

LABEL_483:
          __break(1u);
LABEL_484:
          __break(1u);
LABEL_485:
          __break(1u);
LABEL_486:
          __break(1u);
          goto LABEL_487;
        }

LABEL_213:

LABEL_214:

        v84 = v168;
        if (!v11)
        {
          goto LABEL_238;
        }

        goto LABEL_215;
      }

      if (v78)
      {
        if ((*(sub_188E48D74(v79, v75) + 32) & 1) == 0)
        {
          break;
        }

        goto LABEL_203;
      }

      if (v79 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_451;
      }

      v80 = *(v75 + 8 * v79 + 32);

      if (*(v80 + 32))
      {
LABEL_203:

        v14 = __OFADD__(v79++, 1);
        if (v14)
        {
          goto LABEL_454;
        }

        continue;
      }

      break;
    }

    swift_beginAccess();

    sub_188FED400();

    v11 = v171;

    if (v76)
    {
      goto LABEL_208;
    }

LABEL_212:
    v82 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v79 == v82)
    {
      goto LABEL_213;
    }

    v83 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v82)
    {
      goto LABEL_483;
    }

LABEL_217:
    v85 = v82 - 1;
    if (__OFSUB__(v82, 1))
    {
      goto LABEL_465;
    }

    if (v85 < 0 || v85 >= v83)
    {
      goto LABEL_441;
    }

    v86 = v82 + 3;
    while (2)
    {
      v87 = v86 - 4;
      if (v78)
      {
        if ((*(sub_188E48D74(v86 - 4, v75) + 32) & 1) == 0)
        {
          break;
        }

        goto LABEL_226;
      }

      if (v87 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_471;
      }

      if (*( + 32))
      {
LABEL_226:

        if (v87 < 1)
        {
          goto LABEL_441;
        }

        --v86;
        if (v85 >= v83)
        {
          goto LABEL_441;
        }

        continue;
      }

      break;
    }

    swift_beginAccess();

    v88 = sub_188FED400();

    if (v88)
    {
    }

    if (v78)
    {
      v89 = sub_188E48D74(v86 - 4, v75);
      goto LABEL_235;
    }

    if (v87 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_492;
    }

    v89 = *(v75 + 8 * v86);

LABEL_235:
    v84 = v168;
    if (*(v89 + 32))
    {
      goto LABEL_505;
    }

    swift_beginAccess();

    v90 = sub_188FED400();

    if (!v90)
    {

      if (v171)
      {
        goto LABEL_215;
      }

LABEL_238:
      if ((v58 & 0x8000000000000000) != 0)
      {
        goto LABEL_479;
      }

      if (v58 < *(v166 + 16))
      {
        v181 = *(v84 + 8 * v58);

        goto LABEL_241;
      }

LABEL_480:
      __break(1u);
LABEL_481:
      __break(1u);
LABEL_482:
      __break(1u);
      goto LABEL_483;
    }

    if (!v171)
    {
      goto LABEL_238;
    }

LABEL_215:
    v181 = sub_188E48D74(v58, v169);
LABEL_241:
    if (*(v181 + 32))
    {
      goto LABEL_499;
    }

    swift_beginAccess();
    v91 = *(v181 + 40);
    v92 = v91 & 0xFFFFFFFFFFFFFF8;
    v93 = v91 >> 62;
    if (v91 >> 62)
    {
      v94 = sub_18A4A7F68();
    }

    else
    {
      v94 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v95 = v91 & 0xC000000000000001;

    v96 = 0;
    v177 = v91 & 0xFFFFFFFFFFFFFF8;
    v179 = v91;
    while (2)
    {
      if (v94 == v96)
      {
        v96 = v94;
        if (v93)
        {
          goto LABEL_301;
        }

        goto LABEL_269;
      }

      if (v95)
      {
        v97 = sub_188E48D74(v96, v91);
        if ((*(v97 + 32) & 1) == 0)
        {
          break;
        }

        goto LABEL_249;
      }

      if (v96 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_435;
      }

      v97 = *(v91 + 8 * v96 + 32);

      if (*(v97 + 32))
      {
LABEL_249:

        v14 = __OFADD__(v96++, 1);
        if (v14)
        {
          goto LABEL_436;
        }

        continue;
      }

      break;
    }

    swift_beginAccess();
    v98 = *(v97 + 40);
    v172 = v93;
    v174 = v98 >> 62;
    if (v98 >> 62)
    {
      v99 = sub_18A4A7F68();
    }

    else
    {
      v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v100 = v98 & 0xC000000000000001;

    v101 = 0;
    while (2)
    {
      if (v99 == v101)
      {
        v101 = v99;
        if (!v174)
        {
          goto LABEL_272;
        }

LABEL_265:
        if (v101 == sub_18A4A7F68())
        {
LABEL_273:
          v92 = v177;
          v107 = v172;
          goto LABEL_300;
        }

        v103 = sub_18A4A7F68();
        if (v103)
        {
          v104 = v103;
          v105 = sub_18A4A7F68();
          goto LABEL_277;
        }

        goto LABEL_484;
      }

      if (v100)
      {
        if ((*(sub_188E48D74(v101, v98) + 32) & 1) == 0)
        {
          break;
        }

        goto LABEL_260;
      }

      if (v101 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_453;
      }

      v102 = *(v98 + 8 * v101 + 32);

      if (*(v102 + 32))
      {
LABEL_260:

        v14 = __OFADD__(v101++, 1);
        if (v14)
        {
          goto LABEL_455;
        }

        continue;
      }

      break;
    }

    swift_beginAccess();

    sub_188FED400();

    if (v174)
    {
      goto LABEL_265;
    }

LABEL_272:
    v104 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v101 == v104)
    {
      goto LABEL_273;
    }

    v105 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v104)
    {
      goto LABEL_484;
    }

LABEL_277:
    v109 = v104 - 1;
    if (__OFSUB__(v104, 1))
    {
      goto LABEL_466;
    }

    if (v109 < 0 || v109 >= v105)
    {
      goto LABEL_442;
    }

    v110 = v104 + 3;
    while (2)
    {
      v111 = v110 - 4;
      if (v100)
      {
        if ((*(sub_188E48D74(v110 - 4, v98) + 32) & 1) == 0)
        {
          break;
        }

        goto LABEL_286;
      }

      if (v111 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_472;
      }

      if (*( + 32))
      {
LABEL_286:

        if (v111 < 1)
        {
          goto LABEL_442;
        }

        --v110;
        if (v109 >= v105)
        {
          goto LABEL_442;
        }

        continue;
      }

      break;
    }

    swift_beginAccess();

    v112 = sub_188FED400();

    if (v112)
    {

      if (v100)
      {
        goto LABEL_291;
      }

LABEL_295:
      if (v111 < *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v113 = *(v98 + 8 * v110);

        goto LABEL_297;
      }

LABEL_493:
      __break(1u);
      goto LABEL_494;
    }

    if (!v100)
    {
      goto LABEL_295;
    }

LABEL_291:
    v113 = sub_188E48D74(v110 - 4, v98);
LABEL_297:
    v92 = v177;
    v107 = v172;
    if (*(v113 + 32))
    {
      goto LABEL_506;
    }

    swift_beginAccess();

    v114 = sub_188FED400();

    if (v114)
    {
    }

LABEL_300:

    v91 = v179;
    if (v107)
    {
LABEL_301:
      if (v96 == sub_18A4A7F68())
      {
        v2 = v165;
        v3 = v167;
        goto LABEL_405;
      }

      v115 = sub_18A4A7F68();
      if (v115)
      {
        v106 = v115;
        v108 = sub_18A4A7F68();
        goto LABEL_305;
      }

LABEL_478:
      __break(1u);
LABEL_479:
      __break(1u);
      goto LABEL_480;
    }

LABEL_269:
    v106 = *(v92 + 16);
    if (v96 == v106)
    {
      v2 = v165;
      v3 = v167;
      goto LABEL_405;
    }

    v108 = *(v92 + 16);
    if (!v106)
    {
      goto LABEL_478;
    }

LABEL_305:
    v116 = v106 - 1;
    if (__OFSUB__(v106, 1))
    {
      goto LABEL_452;
    }

    if (v116 < 0 || v116 >= v108)
    {
      goto LABEL_430;
    }

    v117 = v106 + 3;
    while (2)
    {
      v118 = v117 - 4;
      if (v95)
      {
        v119 = sub_188E48D74(v117 - 4, v91);
        if ((*(v119 + 32) & 1) == 0)
        {
          break;
        }

        goto LABEL_314;
      }

      if (v118 >= *(v92 + 16))
      {
        goto LABEL_462;
      }

      if (*(v119 + 32))
      {
LABEL_314:

        if (v118 < 1)
        {
          goto LABEL_430;
        }

        --v117;
        if (v116 >= v108)
        {
          goto LABEL_430;
        }

        continue;
      }

      break;
    }

    v120 = v119;
    swift_beginAccess();
    v121 = *(v120 + 40);
    v175 = v121 >> 62;
    if (v121 >> 62)
    {
      v122 = sub_18A4A7F68();
    }

    else
    {
      v122 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v123 = v121 & 0xC000000000000001;

    v124 = 0;
    while (2)
    {
      if (v122 == v124)
      {
        v124 = v122;
        if (!v175)
        {
          goto LABEL_333;
        }

LABEL_329:
        if (v124 == sub_18A4A7F68())
        {
LABEL_334:

          v129 = v177;
          if (!v95)
          {
            goto LABEL_359;
          }

          goto LABEL_335;
        }

        v126 = sub_18A4A7F68();
        if (v126)
        {
          v127 = v126;
          v128 = sub_18A4A7F68();
          goto LABEL_338;
        }

        goto LABEL_485;
      }

      if (v123)
      {
        if ((*(sub_188E48D74(v124, v121) + 32) & 1) == 0)
        {
          break;
        }

        goto LABEL_324;
      }

      if (v124 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_456;
      }

      v125 = *(v121 + 8 * v124 + 32);

      if (*(v125 + 32))
      {
LABEL_324:

        v14 = __OFADD__(v124++, 1);
        if (v14)
        {
          goto LABEL_457;
        }

        continue;
      }

      break;
    }

    swift_beginAccess();

    sub_188FED400();

    if (v175)
    {
      goto LABEL_329;
    }

LABEL_333:
    v127 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v124 == v127)
    {
      goto LABEL_334;
    }

    v128 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v127)
    {
      goto LABEL_485;
    }

LABEL_338:
    v131 = v127 - 1;
    if (__OFSUB__(v127, 1))
    {
      goto LABEL_467;
    }

    if (v131 < 0 || v131 >= v128)
    {
      goto LABEL_443;
    }

    v132 = v127 + 3;
    while (2)
    {
      v133 = v132 - 4;
      if (v123)
      {
        if ((*(sub_188E48D74(v132 - 4, v121) + 32) & 1) == 0)
        {
          break;
        }

        goto LABEL_347;
      }

      if (v133 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_473;
      }

      if (*( + 32))
      {
LABEL_347:

        if (v133 < 1)
        {
          goto LABEL_443;
        }

        --v132;
        if (v131 >= v128)
        {
          goto LABEL_443;
        }

        continue;
      }

      break;
    }

    swift_beginAccess();

    v134 = sub_188FED400();

    if (v134)
    {

      if (v123)
      {
        goto LABEL_352;
      }

LABEL_354:
      if (v133 < *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v135 = *(v121 + 8 * v132);

        goto LABEL_356;
      }

LABEL_494:
      __break(1u);
      goto LABEL_495;
    }

    if (!v123)
    {
      goto LABEL_354;
    }

LABEL_352:
    v135 = sub_188E48D74(v132 - 4, v121);
LABEL_356:
    v129 = v177;
    if (*(v135 + 32))
    {
      goto LABEL_507;
    }

    swift_beginAccess();

    v136 = sub_188FED400();

    if (!v136)
    {

      if (v95)
      {
        goto LABEL_335;
      }

LABEL_359:
      if (v118 < *(v129 + 16))
      {
        v130 = *(v179 + 8 * v117);

        if (*(v130 + 32))
        {
          goto LABEL_502;
        }

        goto LABEL_361;
      }

      goto LABEL_489;
    }

    if (!v95)
    {
      goto LABEL_359;
    }

LABEL_335:
    v130 = sub_188E48D74(v117 - 4, v179);
    if (*(v130 + 32))
    {
      goto LABEL_502;
    }

LABEL_361:
    swift_beginAccess();
    v137 = *(v130 + 40);
    v138 = v137 >> 62;
    if (v137 >> 62)
    {
      v139 = sub_18A4A7F68();
    }

    else
    {
      v139 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v140 = v137 & 0xC000000000000001;

    v141 = 0;
    while (2)
    {
      if (v139 == v141)
      {
        v141 = v139;
        if (!v138)
        {
          goto LABEL_377;
        }

LABEL_373:
        if (v141 != sub_18A4A7F68())
        {
          v143 = sub_18A4A7F68();
          if (v143)
          {
            v144 = v143;
            v145 = sub_18A4A7F68();
            goto LABEL_380;
          }

          goto LABEL_486;
        }

LABEL_378:
        v3 = v167;
        goto LABEL_404;
      }

      if (v140)
      {
        if ((*(sub_188E48D74(v141, v137) + 32) & 1) == 0)
        {
          break;
        }

        goto LABEL_368;
      }

      if (v141 >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_458;
      }

      v142 = *(v137 + 8 * v141 + 32);

      if (*(v142 + 32))
      {
LABEL_368:

        v14 = __OFADD__(v141++, 1);
        if (v14)
        {
          goto LABEL_459;
        }

        continue;
      }

      break;
    }

    swift_beginAccess();

    sub_188FED400();

    if (v138)
    {
      goto LABEL_373;
    }

LABEL_377:
    v144 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v141 == v144)
    {
      goto LABEL_378;
    }

    v145 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v144)
    {
      goto LABEL_486;
    }

LABEL_380:
    v146 = v144 - 1;
    if (__OFSUB__(v144, 1))
    {
      goto LABEL_468;
    }

    if (v146 < 0 || v146 >= v145)
    {
      goto LABEL_444;
    }

    v147 = v144 + 3;
    while (2)
    {
      v148 = v147 - 4;
      if (v140)
      {
        if ((*(sub_188E48D74(v147 - 4, v137) + 32) & 1) == 0)
        {
          break;
        }

        goto LABEL_389;
      }

      if (v148 >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_474;
      }

      if (*( + 32))
      {
LABEL_389:

        if (v148 < 1)
        {
          goto LABEL_444;
        }

        --v147;
        if (v146 >= v145)
        {
          goto LABEL_444;
        }

        continue;
      }

      break;
    }

    swift_beginAccess();

    v149 = sub_188FED400();

    if (!v149)
    {
      if (!v140)
      {
        goto LABEL_398;
      }

LABEL_394:
      v150 = sub_188E48D74(v147 - 4, v137);
LABEL_400:
      v3 = v167;
      if (*(v150 + 32))
      {
        goto LABEL_508;
      }

      swift_beginAccess();

      v151 = sub_188FED400();

      if (v151)
      {

        v150 = v151;
      }

      v130 = v150;
LABEL_404:

      v181 = v130;
      v2 = v165;
LABEL_405:

      *(v181 + 32) = 1;

      continue;
    }

    break;
  }

  if (v140)
  {
    goto LABEL_394;
  }

LABEL_398:
  if (v148 < *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v150 = *(v137 + 8 * v147);

    goto LABEL_400;
  }

LABEL_495:
  __break(1u);
LABEL_496:
  v159 = sub_18A4A7F68();
  v153 = a1;
  v154 = v159;
  if (!v159)
  {
    goto LABEL_497;
  }

LABEL_419:
  if (v154 >= 1)
  {
    v155 = 0;
    v156 = v153 & 0xC000000000000001;
    do
    {
      if (v156)
      {
        v157 = sub_188E4A2AC(v155, v153);
      }

      else
      {
        v157 = *(v153 + 8 * v155 + 32);
      }

      v158 = v157;
      ++v155;
      sub_188FEFDC0(v157);

      v153 = a1;
    }

    while (v154 != v155);
    goto LABEL_497;
  }

  __break(1u);
LABEL_499:

  __break(1u);
LABEL_500:

  __break(1u);
LABEL_501:

  __break(1u);
LABEL_502:

  __break(1u);
LABEL_503:

  __break(1u);
LABEL_504:

  __break(1u);
LABEL_505:

  __break(1u);
LABEL_506:

  __break(1u);
LABEL_507:

  __break(1u);
LABEL_508:

  __break(1u);
}

uint64_t sub_188FEFB18(void *a1)
{
  v3 = [a1 transitionContext];
  v4 = [v3 fromViewController];

  if (v4 && (v5 = [a1 transitionContext], v6 = objc_msgSend(v5, sel_toViewController), v5, v6) && (swift_beginAccess(), v7 = *(v1 + 16), , v8 = sub_188FF248C(v4, v7), , v8) && (v9 = *(v1 + 16), , v10 = sub_188FF248C(v6, v9), , v10))
  {
    sub_188FF27C4(a1, v8);
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_188FEFDC0(void *a1)
{
  swift_beginAccess();

  sub_188FECEC8(v3);

  v5 = sub_188FECEC8(v4);

  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = a1;
  if (v6)
  {
    while (1)
    {
      v8 = 0;
      v1 = v5 & 0xFFFFFFFFFFFFFF8;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_188E4A2AC(v8, v5);
        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_491;
        }

        v11 = v9;
        swift_unknownObjectRelease();
        v7 = a1;
        if (v11 == a1)
        {
          goto LABEL_13;
        }

LABEL_9:
        if (v8 == v6)
        {
          goto LABEL_17;
        }
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      if (*(v5 + 32 + 8 * v8) != v7)
      {
        break;
      }

LABEL_13:

      sub_18A4A8398();
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v6 = sub_18A4A7F68();
      v7 = a1;
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    ++v8;
    goto LABEL_9;
  }

LABEL_17:

  v12 = v87;
  v13 = *(v87 + 16);
  v14 = v13 & 0xFFFFFFFFFFFFFF8;
  v15 = v13 >> 62;
  if (v13 >> 62)
  {
    goto LABEL_460;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
  v17 = v13 & 0xC000000000000001;

  v18 = 0;
  v86 = v13;
  v84 = v14;
  v85 = v13 + 32;
  v91 = v13 & 0xC000000000000001;
  while (1)
  {
    if (v16 == v18)
    {
      v18 = v16;
      if (v15)
      {
        goto LABEL_156;
      }

      goto LABEL_54;
    }

    if (v17)
    {
      break;
    }

    if (v18 >= *(v14 + 16))
    {
      __break(1u);
LABEL_421:
      __break(1u);
LABEL_422:
      __break(1u);
LABEL_423:
      __break(1u);
LABEL_424:
      __break(1u);
LABEL_425:
      __break(1u);
LABEL_426:
      __break(1u);
LABEL_427:
      __break(1u);
LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      __break(1u);
LABEL_432:
      __break(1u);
LABEL_433:
      __break(1u);
LABEL_434:
      __break(1u);
LABEL_435:
      __break(1u);
LABEL_436:
      __break(1u);
LABEL_437:
      __break(1u);
LABEL_438:
      __break(1u);
LABEL_439:
      __break(1u);
LABEL_440:
      __break(1u);
LABEL_441:
      __break(1u);
LABEL_442:
      __break(1u);
LABEL_443:
      __break(1u);
LABEL_444:
      __break(1u);
LABEL_445:
      __break(1u);
LABEL_446:
      __break(1u);
LABEL_447:
      __break(1u);
LABEL_448:
      __break(1u);
LABEL_449:
      __break(1u);
LABEL_450:
      __break(1u);
LABEL_451:
      __break(1u);
LABEL_452:
      __break(1u);
LABEL_453:
      __break(1u);
LABEL_454:
      __break(1u);
LABEL_455:
      __break(1u);
LABEL_456:
      __break(1u);
LABEL_457:
      __break(1u);
LABEL_458:
      __break(1u);
LABEL_459:
      __break(1u);
LABEL_460:
      v16 = sub_18A4A7F68();
      goto LABEL_19;
    }

    v1 = *(v13 + 8 * v18 + 32);

    if ((*(v1 + 32) & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_24:

    v10 = __OFADD__(v18++, 1);
    if (v10)
    {
      goto LABEL_421;
    }
  }

  v1 = sub_188E48D74(v18, v13);
  if (*(v1 + 32))
  {
    goto LABEL_24;
  }

LABEL_28:
  swift_beginAccess();
  v2 = *(v1 + 40);
  v83 = v2 >> 62;
  v95 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    v19 = sub_18A4A7F68();
  }

  else
  {
    v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = v2 & 0xC000000000000001;

  v21 = 0;
  v82 = v15;
  v94 = v2;
  while (1)
  {
    if (v19 == v21)
    {
      v21 = v19;
      if (v83)
      {
        goto LABEL_90;
      }

      goto LABEL_57;
    }

    if (!v97)
    {
      break;
    }

    v2 = sub_188E48D74(v21, v2);
    if ((*(v2 + 32) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_35:

    v10 = __OFADD__(v21++, 1);
    v2 = v94;
    if (v10)
    {
      goto LABEL_423;
    }
  }

  if (v21 >= *(v95 + 16))
  {
    goto LABEL_422;
  }

  v2 = *(v2 + 8 * v21 + 32);

  if (*(v2 + 32))
  {
    goto LABEL_35;
  }

LABEL_39:
  swift_beginAccess();
  v19 = *(v2 + 40);
  v89 = v19 >> 62;
  v93 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    v14 = sub_18A4A7F68();
  }

  else
  {
    v14 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = v19 & 0xC000000000000001;

  v15 = 0;
  while (2)
  {
    if (v14 == v15)
    {
      v15 = v14;
      if (!v89)
      {
        goto LABEL_60;
      }

LABEL_51:
      if (v15 == sub_18A4A7F68())
      {
        v13 = v86;
        v14 = v84;
        goto LABEL_89;
      }

      v25 = sub_18A4A7F68();
      if (v25)
      {
        v24 = v25;
        v14 = sub_18A4A7F68();
        goto LABEL_67;
      }

      goto LABEL_476;
    }

    if (v13)
    {
      if ((*(sub_188E48D74(v15, v19) + 32) & 1) == 0)
      {
        break;
      }

      goto LABEL_46;
    }

    if (v15 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_431;
    }

    v22 = *(v19 + 8 * v15 + 32);

    if (*(v22 + 32))
    {
LABEL_46:

      v10 = __OFADD__(v15++, 1);
      v17 = v91;
      if (v10)
      {
        goto LABEL_433;
      }

      continue;
    }

    break;
  }

  swift_beginAccess();

  sub_188FED400();

  v17 = v91;
  if (v89)
  {
    goto LABEL_51;
  }

LABEL_60:
  v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15 == v24)
  {
    v13 = v86;
    goto LABEL_88;
  }

  v14 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_476;
  }

LABEL_67:
  v12 = v24 - 1;
  if (__OFSUB__(v24, 1))
  {
    goto LABEL_448;
  }

  v90 = v19;
  if ((v12 & 0x8000000000000000) == 0 && v12 < v14)
  {
    v19 = v24 + 3;
    while (1)
    {
      v15 = v19 - 4;
      if (v13)
      {
        if ((*(sub_188E48D74(v19 - 4, v90) + 32) & 1) == 0)
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v15 >= *(v93 + 16))
        {
          goto LABEL_454;
        }

        v26 = *(v90 + 8 * v19);

        if ((*(v26 + 32) & 1) == 0)
        {
          goto LABEL_79;
        }
      }

      if (v15 >= 1)
      {
        --v19;
        if (v12 < v14)
        {
          continue;
        }
      }

      break;
    }
  }

  __break(1u);
LABEL_79:
  swift_beginAccess();

  v27 = sub_188FED400();

  if (v27)
  {
  }

  v12 = v87;
  if (v13)
  {
    v19 = v90;
    v28 = sub_188E48D74(v15, v90);
  }

  else
  {
    if (v15 >= *(v93 + 16))
    {
      goto LABEL_485;
    }

    v28 = *(v90 + 8 * v19);
    v19 = v90;
  }

  v13 = v86;
  if (*(v28 + 32))
  {
    goto LABEL_493;
  }

  swift_beginAccess();

  v29 = sub_188FED400();

  if (v29)
  {
  }

LABEL_88:
  v14 = v84;
  v17 = v91;
LABEL_89:

  v15 = v82;
  v2 = v94;
  if (!v83)
  {
LABEL_57:
    v19 = *(v95 + 16);
    if (v21 == v19)
    {
      goto LABEL_155;
    }

    v14 = *(v95 + 16);
    if (!v19)
    {
      goto LABEL_466;
    }

LABEL_94:
    v15 = v19 - 1;
    if (__OFSUB__(v19, 1))
    {
      goto LABEL_430;
    }

    if ((v15 & 0x8000000000000000) == 0 && v15 < v14)
    {
      v13 = v19 + 3;
      while (1)
      {
        v19 = v13 - 4;
        if (v97)
        {
          v20 = sub_188E48D74(v13 - 4, v2);
          if ((*(v20 + 32) & 1) == 0)
          {
            goto LABEL_106;
          }
        }

        else
        {
          if (v19 >= *(v95 + 16))
          {
            goto LABEL_445;
          }

          if ((*(v20 + 32) & 1) == 0)
          {
            goto LABEL_106;
          }
        }

        if (v19 >= 1)
        {
          --v13;
          if (v15 < v14)
          {
            continue;
          }
        }

        break;
      }
    }

    __break(1u);
LABEL_106:
    v15 = v20;
    swift_beginAccess();
    v31 = *(v15 + 40);

    v32 = sub_188FED400();

    if (v32)
    {
    }

    if (v97)
    {
      v19 = sub_188E48D74(v19, v2);
      if ((*(v19 + 32) & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else
    {
      if (v19 >= *(v95 + 16))
      {
LABEL_482:
        __break(1u);
        goto LABEL_483;
      }

      v19 = *(v2 + 8 * v13);

      if ((*(v19 + 32) & 1) == 0)
      {
LABEL_110:
        swift_beginAccess();
        v19 = *(v19 + 40);
        v13 = v19 & 0xFFFFFFFFFFFFFF8;
        v21 = v19 >> 62;
        if (!(v19 >> 62))
        {
          v14 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_112;
        }

        goto LABEL_468;
      }
    }

    __break(1u);
    goto LABEL_131;
  }

LABEL_90:
  if (v21 == sub_18A4A7F68())
  {
    v14 = v84;
    goto LABEL_155;
  }

  v30 = sub_18A4A7F68();
  if (v30)
  {
    v19 = v30;
    v20 = sub_18A4A7F68();
    v14 = v20;
    goto LABEL_94;
  }

LABEL_466:
  __break(1u);
  while (2)
  {
    while (2)
    {
      __break(1u);
LABEL_468:
      v14 = sub_18A4A7F68();
LABEL_112:
      v12 = v19 & 0xC000000000000001;

      v15 = 0;
      while (2)
      {
        if (v14 == v15)
        {
          v15 = v14;
          if (!v21)
          {
            goto LABEL_126;
          }

LABEL_122:
          if (v15 == sub_18A4A7F68())
          {
LABEL_127:
            v13 = v86;
            v12 = v87;
            v14 = v84;
            v17 = v91;
            goto LABEL_154;
          }

          v34 = sub_18A4A7F68();
          if (v34)
          {
            v31 = v34;
            v14 = sub_18A4A7F68();
            goto LABEL_132;
          }

          goto LABEL_477;
        }

        if (v12)
        {
          if ((*(sub_188E48D74(v15, v19) + 32) & 1) == 0)
          {
            break;
          }

          goto LABEL_117;
        }

        if (v15 >= *(v13 + 16))
        {
          goto LABEL_434;
        }

        v33 = *(v19 + 8 * v15 + 32);

        if (*(v33 + 32))
        {
LABEL_117:

          v10 = __OFADD__(v15++, 1);
          if (v10)
          {
            goto LABEL_435;
          }

          continue;
        }

        break;
      }

      swift_beginAccess();

      sub_188FED400();

      v2 = v94;

      if (v21)
      {
        goto LABEL_122;
      }

LABEL_126:
      v31 = *(v13 + 16);
      if (v15 == v31)
      {
        goto LABEL_127;
      }

LABEL_131:
      v14 = v31;
      if (!v31)
      {
        goto LABEL_477;
      }

LABEL_132:
      v2 = v31 - 1;
      if (__OFSUB__(v31, 1))
      {
        goto LABEL_449;
      }

      if ((v2 & 0x8000000000000000) == 0 && v2 < v14)
      {
        v21 = v31 + 3;
        while (1)
        {
          v15 = v21 - 4;
          if (v12)
          {
            if ((*(sub_188E48D74(v21 - 4, v19) + 32) & 1) == 0)
            {
              goto LABEL_144;
            }
          }

          else
          {
            if (v15 >= *(v13 + 16))
            {
              goto LABEL_455;
            }

            if ((*( + 32) & 1) == 0)
            {
              goto LABEL_144;
            }
          }

          if (v15 >= 1)
          {
            --v21;
            if (v2 < v14)
            {
              continue;
            }
          }

          break;
        }
      }

      __break(1u);
LABEL_144:
      swift_beginAccess();

      v35 = sub_188FED400();

      if (v35)
      {
      }

      v2 = v94;
      if (v12)
      {
        v36 = sub_188E48D74(v15, v19);
        goto LABEL_150;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_486;
      }

      v36 = *(v19 + 8 * v21);

LABEL_150:
      v13 = v86;
      v12 = v87;
      if (*(v36 + 32))
      {
        goto LABEL_494;
      }

      swift_beginAccess();

      v37 = sub_188FED400();

      if (v37)
      {
      }

      v14 = v84;
      v17 = v91;

LABEL_154:
      v15 = v82;

LABEL_155:

      if (v15)
      {
LABEL_156:
        if (v18 == sub_18A4A7F68())
        {
          goto LABEL_157;
        }

        v23 = sub_18A4A7F68();
        goto LABEL_159;
      }

LABEL_54:
      v23 = *(v14 + 16);
      if (v18 == v23)
      {
LABEL_157:

        swift_beginAccess();
        sub_188FF264C(a1);
        swift_endAccess();
        goto LABEL_419;
      }

LABEL_159:
      if (v23)
      {
        v18 = v23 - 1;
        if (!__OFSUB__(v23, 1))
        {
          do
          {
            if (v17)
            {
              v23 = sub_188E48D74(v18, v13);
              if ((*(v23 + 32) & 1) == 0)
              {
                goto LABEL_170;
              }
            }

            else
            {
              if ((v18 & 0x8000000000000000) != 0)
              {
                goto LABEL_428;
              }

              if (v18 >= *(v14 + 16))
              {
                goto LABEL_429;
              }

              if ((*(v23 + 32) & 1) == 0)
              {
                goto LABEL_170;
              }
            }

            v10 = __OFSUB__(v18--, 1);
          }

          while (!v10);
        }

        __break(1u);
LABEL_170:
        v38 = v23;
        swift_beginAccess();
        v1 = *(v38 + 40);
        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        v12 = v1 >> 62;
        if (!(v1 >> 62))
        {
          v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_172;
        }
      }

      else
      {
        __break(1u);
      }

      v14 = sub_18A4A7F68();
LABEL_172:
      v21 = v1 & 0xC000000000000001;

      v19 = 0;
LABEL_173:
      if (v14 == v19)
      {
        v19 = v14;
        if (!v12)
        {
          goto LABEL_186;
        }

LABEL_182:
        if (v19 != sub_18A4A7F68())
        {
          v40 = sub_18A4A7F68();
          if (v40)
          {
            v15 = v40;
            v39 = sub_18A4A7F68();
            v14 = v39;
            goto LABEL_190;
          }

          continue;
        }

LABEL_187:

        v13 = v86;
        v41 = v17;
        v42 = v85;
        if (!v41)
        {
          goto LABEL_252;
        }

        goto LABEL_188;
      }

      break;
    }

    if (v21)
    {
      v15 = sub_188E48D74(v19, v1);
      if ((*(v15 + 32) & 1) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_177;
    }

    if (v19 >= *(v13 + 16))
    {
      goto LABEL_424;
    }

    v15 = *(v1 + 8 * v19 + 32);

    if (*(v15 + 32))
    {
LABEL_177:

      v10 = __OFADD__(v19++, 1);
      if (v10)
      {
        goto LABEL_425;
      }

      goto LABEL_173;
    }

LABEL_181:
    swift_beginAccess();

    sub_188FED400();

    v17 = v91;

    if (v12)
    {
      goto LABEL_182;
    }

LABEL_186:
    v15 = *(v13 + 16);
    if (v19 == v15)
    {
      goto LABEL_187;
    }

    v14 = *(v13 + 16);
    if (!v15)
    {
      continue;
    }

    break;
  }

LABEL_190:
  v43 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_432;
  }

  if ((v43 & 0x8000000000000000) == 0 && v43 < v14)
  {
    v12 = v15 + 3;
    while (1)
    {
      v19 = v12 - 4;
      if (v21)
      {
        v39 = sub_188E48D74(v12 - 4, v1);
        if ((*(v39 + 32) & 1) == 0)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (v19 >= *(v13 + 16))
        {
          goto LABEL_446;
        }

        if ((*(v39 + 32) & 1) == 0)
        {
          goto LABEL_202;
        }
      }

      if (v19 >= 1)
      {
        --v12;
        if (v43 < v14)
        {
          continue;
        }
      }

      break;
    }
  }

  __break(1u);
LABEL_202:
  v15 = v39;
  swift_beginAccess();

  v44 = sub_188FED400();

  if (v44)
  {

    if (v21)
    {
      goto LABEL_204;
    }

LABEL_225:
    if (v19 < *(v13 + 16))
    {
      v45 = *(v1 + 8 * v12);

      if (*(v45 + 32))
      {
        goto LABEL_227;
      }

      goto LABEL_205;
    }

LABEL_483:
    __break(1u);
LABEL_484:
    __break(1u);
LABEL_485:
    __break(1u);
LABEL_486:
    __break(1u);
    goto LABEL_487;
  }

  if (!v21)
  {
    goto LABEL_225;
  }

LABEL_204:
  v45 = sub_188E48D74(v19, v1);
  if (*(v45 + 32))
  {
LABEL_227:

    __break(1u);
    goto LABEL_228;
  }

LABEL_205:
  swift_beginAccess();
  v2 = *(v45 + 40);
  v13 = v2 & 0xFFFFFFFFFFFFFF8;
  v21 = v2 >> 62;
  if (v2 >> 62)
  {
    v14 = sub_18A4A7F68();
  }

  else
  {
    v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = v2 & 0xC000000000000001;

  v19 = 0;
  while (2)
  {
    if (v14 == v19)
    {
      v19 = v14;
      if (!v21)
      {
        goto LABEL_221;
      }

LABEL_217:
      if (v19 != sub_18A4A7F68())
      {
        v46 = sub_18A4A7F68();
        if (v46)
        {
          v15 = v46;
          v14 = sub_18A4A7F68();
          goto LABEL_229;
        }

        goto LABEL_478;
      }

LABEL_222:

      v13 = v86;
      v42 = v85;
      if (!v91)
      {
        goto LABEL_252;
      }

      goto LABEL_188;
    }

    if (v12)
    {
      v15 = sub_188E48D74(v19, v2);
      if ((*(v15 + 32) & 1) == 0)
      {
        break;
      }

      goto LABEL_212;
    }

    if (v19 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_436;
    }

    v15 = *(v2 + 8 * v19 + 32);

    if (*(v15 + 32))
    {
LABEL_212:

      v10 = __OFADD__(v19++, 1);
      if (v10)
      {
        goto LABEL_439;
      }

      continue;
    }

    break;
  }

  swift_beginAccess();

  sub_188FED400();

  if (v21)
  {
    goto LABEL_217;
  }

LABEL_221:
  v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19 == v15)
  {
    goto LABEL_222;
  }

LABEL_228:
  v14 = v15;
  if (!v15)
  {
    goto LABEL_478;
  }

LABEL_229:
  v47 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_450;
  }

  if ((v47 & 0x8000000000000000) == 0 && v47 < v14)
  {
    v21 = v15 + 3;
    while (1)
    {
      v19 = v21 - 4;
      if (v12)
      {
        if ((*(sub_188E48D74(v21 - 4, v2) + 32) & 1) == 0)
        {
          goto LABEL_241;
        }
      }

      else
      {
        if (v19 >= *(v13 + 16))
        {
          goto LABEL_456;
        }

        if ((*( + 32) & 1) == 0)
        {
          goto LABEL_241;
        }
      }

      if (v19 >= 1)
      {
        --v21;
        if (v47 < v14)
        {
          continue;
        }
      }

      break;
    }
  }

  __break(1u);
LABEL_241:
  swift_beginAccess();

  v48 = sub_188FED400();

  if (v48)
  {

    if (v12)
    {
      goto LABEL_243;
    }

LABEL_245:
    if (v19 < *(v13 + 16))
    {
      v49 = *(v2 + 8 * v21);

      goto LABEL_247;
    }

LABEL_487:
    __break(1u);
    goto LABEL_488;
  }

  if (!v12)
  {
    goto LABEL_245;
  }

LABEL_243:
  v49 = sub_188E48D74(v19, v2);
LABEL_247:
  v13 = v86;
  v42 = v85;
  if (*(v49 + 32))
  {
    goto LABEL_495;
  }

  swift_beginAccess();

  v50 = sub_188FED400();

  if (!v50)
  {

    if (!v91)
    {
      goto LABEL_252;
    }

    goto LABEL_188;
  }

  if (v91)
  {
LABEL_188:
    v98 = sub_188E48D74(v18, v13);
    goto LABEL_255;
  }

LABEL_252:
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_475;
  }

  if (v18 >= *(v84 + 16))
  {
LABEL_475:
    __break(1u);
LABEL_476:
    __break(1u);
LABEL_477:
    __break(1u);
LABEL_478:
    __break(1u);
LABEL_479:
    __break(1u);
    goto LABEL_480;
  }

  v98 = *(v42 + 8 * v18);

LABEL_255:
  if (*(v98 + 32))
  {
    goto LABEL_492;
  }

  swift_beginAccess();
  v15 = *(v98 + 40);
  v2 = v15 & 0xFFFFFFFFFFFFFF8;
  v14 = v15 >> 62;
  if (v15 >> 62)
  {
    v51 = sub_18A4A7F68();
  }

  else
  {
    v51 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v15 & 0xC000000000000001;

  v12 = 0;
  v94 = v15 & 0xFFFFFFFFFFFFFF8;
  v96 = v15;
  while (2)
  {
    if (v51 == v12)
    {
      v12 = v51;
      if (v14)
      {
        goto LABEL_312;
      }

      goto LABEL_283;
    }

    if (v52)
    {
      v21 = sub_188E48D74(v12, v15);
      if ((*(v21 + 32) & 1) == 0)
      {
        break;
      }

      goto LABEL_263;
    }

    if (v12 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_426;
    }

    v21 = *(v15 + 8 * v12 + 32);

    if (*(v21 + 32))
    {
LABEL_263:

      v10 = __OFADD__(v12++, 1);
      if (v10)
      {
        goto LABEL_427;
      }

      continue;
    }

    break;
  }

  v92 = v15 >> 62;
  swift_beginAccess();
  v54 = *(v21 + 40);
  v93 = v54 >> 62;
  v2 = v54 & 0xFFFFFFFFFFFFFF8;
  if (v54 >> 62)
  {
    v14 = sub_18A4A7F68();
  }

  else
  {
    v14 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = v54 & 0xC000000000000001;

  v15 = 0;
  while (2)
  {
    if (v14 == v15)
    {
      v15 = v14;
      if (!v93)
      {
        goto LABEL_287;
      }

LABEL_279:
      if (v15 == sub_18A4A7F68())
      {
LABEL_288:
        v2 = v94;
        goto LABEL_311;
      }

      v57 = sub_18A4A7F68();
      if (v57)
      {
        v58 = v57;
        v55 = sub_18A4A7F68();
        v14 = v55;
        goto LABEL_290;
      }

      goto LABEL_479;
    }

    if (v13)
    {
      v56 = sub_188E48D74(v15, v54);
      if ((*(v56 + 32) & 1) == 0)
      {
        break;
      }

      goto LABEL_274;
    }

    if (v15 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_438;
    }

    v56 = *(v54 + 8 * v15 + 32);

    if (*(v56 + 32))
    {
LABEL_274:

      v10 = __OFADD__(v15++, 1);
      if (v10)
      {
        goto LABEL_440;
      }

      continue;
    }

    break;
  }

  swift_beginAccess();
  v1 = *(v56 + 40);

  sub_188FED400();

  if (v93)
  {
    goto LABEL_279;
  }

LABEL_287:
  v58 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15 == v58)
  {
    goto LABEL_288;
  }

  v14 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v58)
  {
    goto LABEL_479;
  }

LABEL_290:
  v1 = v58 - 1;
  if (__OFSUB__(v58, 1))
  {
    goto LABEL_451;
  }

  if ((v1 & 0x8000000000000000) == 0 && v1 < v14)
  {
    v58 += 3;
    while (1)
    {
      v15 = v58 - 4;
      if (v13)
      {
        v55 = sub_188E48D74(v58 - 4, v54);
        if ((*(v55 + 32) & 1) == 0)
        {
          goto LABEL_302;
        }
      }

      else
      {
        if (v15 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_457;
        }

        if ((*(v55 + 32) & 1) == 0)
        {
          goto LABEL_302;
        }
      }

      if (v15 >= 1)
      {
        --v58;
        if (v1 < v14)
        {
          continue;
        }
      }

      break;
    }
  }

  __break(1u);
LABEL_302:
  v1 = v55;
  swift_beginAccess();
  v93 = *(v1 + 40);

  v60 = sub_188FED400();

  if (v60)
  {

    if (v13)
    {
      goto LABEL_304;
    }

LABEL_306:
    if (v15 < *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v61 = *(v54 + 8 * v58);

      goto LABEL_308;
    }

LABEL_488:
    __break(1u);
    goto LABEL_489;
  }

  if (!v13)
  {
    goto LABEL_306;
  }

LABEL_304:
  v61 = sub_188E48D74(v15, v54);
LABEL_308:
  v2 = v94;
  if (*(v61 + 32))
  {
    goto LABEL_496;
  }

  swift_beginAccess();

  v62 = sub_188FED400();

  if (v62)
  {
  }

LABEL_311:

  v15 = v96;
  if (v92)
  {
LABEL_312:
    if ((v15 & 0x8000000000000000) != 0)
    {
      v59 = v15;
    }

    else
    {
      v59 = v2;
    }

    if (v12 == sub_18A4A7F68())
    {
      goto LABEL_418;
    }

    v63 = sub_18A4A7F68();
    if (v63)
    {
      v14 = v63;
      v53 = sub_18A4A7F68();
      v59 = v53;
      goto LABEL_318;
    }

LABEL_471:
    __break(1u);
LABEL_472:
    v14 = sub_18A4A7F68();
    goto LABEL_332;
  }

LABEL_283:
  v14 = *(v2 + 16);
  if (v12 == v14)
  {
    goto LABEL_418;
  }

  v59 = *(v2 + 16);
  if (!v14)
  {
    goto LABEL_471;
  }

LABEL_318:
  v13 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    goto LABEL_437;
  }

  if ((v13 & 0x8000000000000000) == 0 && v13 < v59)
  {
    v21 = v14 + 3;
    while (1)
    {
      v12 = v21 - 4;
      if (v52)
      {
        v53 = sub_188E48D74(v21 - 4, v15);
        if ((*(v53 + 32) & 1) == 0)
        {
          goto LABEL_330;
        }
      }

      else
      {
        if (v12 >= *(v2 + 16))
        {
          goto LABEL_447;
        }

        if ((*(v53 + 32) & 1) == 0)
        {
          goto LABEL_330;
        }
      }

      if (v12 >= 1)
      {
        --v21;
        if (v13 < v59)
        {
          continue;
        }
      }

      break;
    }
  }

  __break(1u);
LABEL_330:
  v64 = v53;
  swift_beginAccess();
  v59 = *(v64 + 40);
  v93 = v59 >> 62;
  v2 = v59 & 0xFFFFFFFFFFFFFF8;
  if (v59 >> 62)
  {
    goto LABEL_472;
  }

  v14 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_332:
  v13 = v59 & 0xC000000000000001;

  v15 = 0;
  while (2)
  {
    if (v14 == v15)
    {
      v15 = v14;
      if (!v93)
      {
        goto LABEL_346;
      }

LABEL_342:
      if (v15 == sub_18A4A7F68())
      {
LABEL_347:

        v13 = v94;
        v69 = v96;
        if (!v52)
        {
          goto LABEL_407;
        }

        goto LABEL_348;
      }

      v67 = sub_18A4A7F68();
      if (v67)
      {
        v68 = v67;
        v65 = sub_18A4A7F68();
        v14 = v65;
        goto LABEL_368;
      }

      goto LABEL_480;
    }

    if (v13)
    {
      v66 = sub_188E48D74(v15, v59);
      if ((*(v66 + 32) & 1) == 0)
      {
        break;
      }

      goto LABEL_337;
    }

    if (v15 >= *(v2 + 16))
    {
      goto LABEL_441;
    }

    v66 = *(v59 + 8 * v15 + 32);

    if (*(v66 + 32))
    {
LABEL_337:

      v10 = __OFADD__(v15++, 1);
      if (v10)
      {
        goto LABEL_442;
      }

      continue;
    }

    break;
  }

  swift_beginAccess();
  v1 = *(v66 + 40);

  sub_188FED400();

  if (v93)
  {
    goto LABEL_342;
  }

LABEL_346:
  v68 = *(v2 + 16);
  if (v15 == v68)
  {
    goto LABEL_347;
  }

  v14 = *(v2 + 16);
  if (!v68)
  {
LABEL_480:
    __break(1u);
LABEL_481:
    __break(1u);
    goto LABEL_482;
  }

LABEL_368:
  v1 = v68 - 1;
  if (__OFSUB__(v68, 1))
  {
    goto LABEL_452;
  }

  if ((v1 & 0x8000000000000000) == 0 && v1 < v14)
  {
    v68 += 3;
    while (1)
    {
      v15 = v68 - 4;
      if (v13)
      {
        v65 = sub_188E48D74(v68 - 4, v59);
        if ((*(v65 + 32) & 1) == 0)
        {
          goto LABEL_380;
        }
      }

      else
      {
        if (v15 >= *(v2 + 16))
        {
          goto LABEL_458;
        }

        if ((*(v65 + 32) & 1) == 0)
        {
          goto LABEL_380;
        }
      }

      if (v15 >= 1)
      {
        --v68;
        if (v1 < v14)
        {
          continue;
        }
      }

      break;
    }
  }

  __break(1u);
LABEL_380:
  v1 = v65;
  swift_beginAccess();
  v93 = *(v1 + 40);

  v73 = sub_188FED400();

  if (v73)
  {

    if (v13)
    {
      goto LABEL_382;
    }

LABEL_400:
    if (v15 < *(v2 + 16))
    {
      v15 = *(v59 + 8 * v68);

      goto LABEL_402;
    }

LABEL_489:
    __break(1u);
LABEL_490:
    __break(1u);
LABEL_491:
    __break(1u);
LABEL_492:

    __break(1u);
LABEL_493:

    __break(1u);
LABEL_494:

    __break(1u);
LABEL_495:

    __break(1u);
LABEL_496:

    __break(1u);
LABEL_497:

    __break(1u);
LABEL_498:

    __break(1u);
    return result;
  }

  if (!v13)
  {
    goto LABEL_400;
  }

LABEL_382:
  v15 = sub_188E48D74(v15, v59);
LABEL_402:
  v13 = v94;
  if (*(v15 + 32))
  {
    goto LABEL_497;
  }

  swift_beginAccess();

  v76 = sub_188FED400();

  if (!v76)
  {

    v69 = v96;
    if (!v52)
    {
      goto LABEL_407;
    }

LABEL_348:
    v12 = sub_188E48D74(v12, v69);
    if (*(v12 + 32))
    {
      goto LABEL_409;
    }

    goto LABEL_349;
  }

  v69 = v96;
  if (v52)
  {
    goto LABEL_348;
  }

LABEL_407:
  if (v12 >= *(v13 + 16))
  {
    goto LABEL_484;
  }

  v12 = *(v69 + 8 * v21);

  if (*(v12 + 32))
  {
LABEL_409:

    __break(1u);
    goto LABEL_410;
  }

LABEL_349:
  swift_beginAccess();
  v59 = *(v12 + 40);
  v13 = v59 & 0xFFFFFFFFFFFFFF8;
  v2 = v59 >> 62;
  if (v59 >> 62)
  {
    v14 = sub_18A4A7F68();
  }

  else
  {
    v14 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v59 & 0xC000000000000001;

  v15 = 0;
  while (2)
  {
    if (v14 == v15)
    {
      v15 = v14;
      if (v2)
      {
        goto LABEL_361;
      }

      goto LABEL_365;
    }

    if (v52)
    {
      if ((*(sub_188E48D74(v15, v59) + 32) & 1) == 0)
      {
        break;
      }

      goto LABEL_356;
    }

    if (v15 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_443;
    }

    v70 = *(v59 + 8 * v15 + 32);

    if (*(v70 + 32))
    {
LABEL_356:

      v10 = __OFADD__(v15++, 1);
      if (v10)
      {
        goto LABEL_444;
      }

      continue;
    }

    break;
  }

  swift_beginAccess();

  sub_188FED400();

  if (v2)
  {
LABEL_361:
    if (v15 == sub_18A4A7F68())
    {
      goto LABEL_417;
    }

    v71 = sub_18A4A7F68();
    if (!v71)
    {
      goto LABEL_481;
    }

    v72 = v71;
    v14 = sub_18A4A7F68();
    goto LABEL_384;
  }

LABEL_365:
  v72 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15 == v72)
  {
    goto LABEL_417;
  }

  v14 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v72)
  {
    goto LABEL_481;
  }

LABEL_384:
  v1 = v72 - 1;
  if (__OFSUB__(v72, 1))
  {
    goto LABEL_453;
  }

  if ((v1 & 0x8000000000000000) == 0 && v1 < v14)
  {
    v2 = v72 + 3;
    while (1)
    {
      v15 = v2 - 4;
      if (v52)
      {
        if ((*(sub_188E48D74(v2 - 4, v59) + 32) & 1) == 0)
        {
          goto LABEL_396;
        }
      }

      else
      {
        if (v15 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_459;
        }

        if ((*( + 32) & 1) == 0)
        {
          goto LABEL_396;
        }
      }

      if (v15 >= 1)
      {
        --v2;
        if (v1 < v14)
        {
          continue;
        }
      }

      break;
    }
  }

  __break(1u);
LABEL_396:
  swift_beginAccess();

  v74 = sub_188FED400();

  if (!v74)
  {
LABEL_410:
    if (v52)
    {
      goto LABEL_398;
    }

LABEL_411:
    if (v15 < *(v13 + 16))
    {
      v75 = *(v59 + 8 * v2);

      goto LABEL_413;
    }

    goto LABEL_490;
  }

  if (!v52)
  {
    goto LABEL_411;
  }

LABEL_398:
  v75 = sub_188E48D74(v15, v59);
LABEL_413:
  if (*(v75 + 32))
  {
    goto LABEL_498;
  }

  swift_beginAccess();

  v77 = sub_188FED400();

  if (v77)
  {
  }

LABEL_417:

LABEL_418:

  swift_beginAccess();
  sub_188FF264C(a1);
  swift_endAccess();

LABEL_419:

  sub_188FECAB0(v78);

  v80 = sub_188FECAB0(v79);

  sub_188F98A78(v80);
}