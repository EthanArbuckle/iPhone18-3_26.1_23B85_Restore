id sub_1E4A95884(__int128 *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E4A9308C(a2);
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
      sub_1E4A6822C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1E4A66D2C(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1E4A9308C(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for WKWallpaperAppearance(0);
      result = sub_1E4AAADB0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 40 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return sub_1E4A2732C(a1, v20);
  }

  else
  {
    sub_1E4A952F8(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_1E4A959C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E4A55B0C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E4A672D0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1E4A55B0C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1E4AAADB0();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1E4A68514();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

_OWORD *sub_1E4A95B40(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E4A8F330(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1E4A68680();
      goto LABEL_7;
    }

    sub_1E4A67574(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1E4A8F330(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E4A4DC2C(a2, v22);
      return sub_1E4A953A8(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1E4AAADB0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_1E4A4DCE8(a1, v17);
}

uint64_t type metadata accessor for WKStripesWallpaperPosterBackground()
{
  result = qword_1EE0440B0;
  if (!qword_1EE0440B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A95D1C(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, id **a4@<X8>)
{
  v8 = sub_1E4AAA1C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  if (sub_1E4A5A670(a3))
  {
    v117 = v8;
    v119 = a4;
    if (qword_1EE042498 != -1)
    {
      swift_once();
    }

    v14 = sub_1E4AAA0E0();
    v15 = __swift_project_value_buffer(v14, qword_1EE048B28);
    sub_1E4A49D24(a1, &v130);
    v118 = v15;
    v16 = sub_1E4AAA0C0();
    v17 = sub_1E4AAA9F0();
    sub_1E4A49CD0(a1);
    v18 = os_log_type_enabled(v16, v17);
    v116 = a2;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v129 = v20;
      *v19 = 136446210;
      v21 = *(a1 + 7);
      v126 = *(a1 + 6);
      v127 = v21;
      v128 = *(a1 + 8);
      v22 = *(a1 + 3);
      v122 = *(a1 + 2);
      v123 = v22;
      v23 = *(a1 + 5);
      v124 = *(a1 + 4);
      v125 = v23;
      v24 = *(a1 + 1);
      v120 = *a1;
      v121 = v24;
      sub_1E4A49D24(a1, &v130);
      v25 = WKPosterEnvironmentSnapshot.description.getter();
      v115 = v12;
      v26 = v9;
      v28 = v27;
      v136 = v126;
      v137 = v127;
      v138 = v128;
      v132 = v122;
      v133 = v123;
      v134 = v124;
      v135 = v125;
      v130 = v120;
      v131 = v121;
      sub_1E4A49CD0(&v130);
      v29 = sub_1E4A85938(v25, v28, &v129);
      v9 = v26;
      v12 = v115;

      *(v19 + 4) = v29;
      _os_log_impl(&dword_1E4A23000, v16, v17, "Resolving Layered Stripe against Traits: %{public}s.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E691FE80](v20, -1, -1);
      MEMORY[0x1E691FE80](v19, -1, -1);
    }

    v30 = a1[2];
    v31 = a1[4];
    v32 = *(a3 + 16);
    v33 = WKWallpaperAppearanceDefault;
    if ([v32 isAppearanceAware])
    {
      v34 = v117;
      (*(v9 + 104))(v12, *MEMORY[0x1E697DBA8], v117);
      v35 = sub_1E4AAA1B0();
      (*(v9 + 8))(v12, v34);
      if (v35)
      {
        v33 = WKWallpaperAppearanceDark;
      }
    }

    v36 = *v33;
    if ([v32 valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:v36])
    {
      sub_1E4A57768(&v130);
      swift_unknownObjectRelease();
      v37 = *(&v131 + 1);
      v38 = v132;
      __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
      (*(v38 + 24))(&v120, v37, v38);
      v13 = v120;
      v39 = BYTE8(v120);
      __swift_destroy_boxed_opaque_existential_1Tm(&v130);
      if (v39 == 2)
      {

        if ([v32 valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"inactive"])
        {
          sub_1E4A57768(&v130);
          swift_unknownObjectRelease();
          v40 = *(&v131 + 1);
          v41 = v132;
          __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
          (*(v41 + 24))(&v120, v40, v41);
          v42 = v120;
          v43 = BYTE8(v120);
          __swift_destroy_boxed_opaque_existential_1Tm(&v130);
          if (v43 == 2)
          {
            v44 = WKWallpaperAppearanceDefault;
            if ([v32 isAppearanceAware])
            {
              v45 = *MEMORY[0x1E697DBA8];
              v115 = v42;
              v46 = v117;
              (*(v9 + 104))(v12, v45, v117);
              v47 = sub_1E4AAA1B0();
              (*(v9 + 8))(v12, v46);
              v42 = v115;
              if (v47)
              {
                v44 = WKWallpaperAppearanceDark;
              }
            }

            v48 = *v44;
            if ([v32 valueBasedWallpaperForLocation:@"WKWallpaperLocationHomeScreen" andAppearance:v48])
            {
              sub_1E4A57768(&v130);
              swift_unknownObjectRelease();
              v49 = *(&v131 + 1);
              v50 = v132;
              __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
              (*(v50 + 24))(&v120, v49, v50);
              v51 = v120;
              v52 = BYTE8(v120);
              __swift_destroy_boxed_opaque_existential_1Tm(&v130);
              if (v52 == 2)
              {

                if (v30 == 0.0)
                {

                  v53 = v42;
                }

                else if (WKFloatIsOne(v30))
                {

                  v53 = v13;
                }

                else
                {
                  [v42[2] stripeAngleDegrees];
                  v69 = v68;
                  [v13[2] stripeAngleDegrees];
                  v71 = v70;
                  [v42[2] stripeAngleDegrees];
                  v73 = v69 + v30 * (v71 - v72);
                  [v42[2] stripeHeightFactor];
                  v75 = v74;
                  [v13[2] stripeHeightFactor];
                  v77 = v76;
                  [v42[2] stripeHeightFactor];
                  v79 = v75 + v30 * (v77 - v78);
                  [v42[2] firstStripeOffsetScaleFactor];
                  v81 = v80;
                  [v13[2] firstStripeOffsetScaleFactor];
                  v83 = v82;
                  [v42[2] firstStripeOffsetScaleFactor];
                  v85 = v81 + v30 * (v83 - v84);
                  v86 = [v42[2] backgroundColor];
                  v87 = [v13[2] backgroundColor];
                  v88 = [v86 wk:v87 interpolatedToColor:v30 progress:?];

                  v89 = [objc_allocWithZone(WKLayeredStripeWallpaperInput) initWithBackgroundColor:v88 stripeAngleDegrees:v73 stripeHeightFactor:v79 firstStripeOffsetScaleFactor:v85];
                  type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
                  v53 = swift_allocObject();
                  *(v53 + 16) = v89;
                }

                v90 = v53;
                if (v31 == 0.0 || (v90 = v51, WKFloatIsOne(v31)))
                {

                  sub_1E4A4EF3C(v42, 2u);
                  sub_1E4A4EF3C(v13, 2u);
                  sub_1E4A4EF3C(v51, 2u);

                  v13 = v90;
                }

                else
                {
                  [*(v53 + 16) stripeAngleDegrees];
                  v92 = v91;
                  [v51[2] stripeAngleDegrees];
                  v94 = v93;
                  [*(v53 + 16) stripeAngleDegrees];
                  v96 = v92 + v31 * (v94 - v95);
                  [*(v53 + 16) stripeHeightFactor];
                  v98 = v97;
                  [v51[2] stripeHeightFactor];
                  v100 = v99;
                  [*(v53 + 16) stripeHeightFactor];
                  v102 = v98 + v31 * (v100 - v101);
                  [*(v53 + 16) firstStripeOffsetScaleFactor];
                  v104 = v103;
                  [v51[2] firstStripeOffsetScaleFactor];
                  v106 = v105;
                  [*(v53 + 16) firstStripeOffsetScaleFactor];
                  v108 = v104 + v31 * (v106 - v107);
                  v109 = [*(v53 + 16) backgroundColor];
                  v110 = [v51[2] backgroundColor];
                  v111 = [v109 wk:v110 interpolatedToColor:v31 progress:?];

                  v112 = [objc_allocWithZone(WKLayeredStripeWallpaperInput) initWithBackgroundColor:v111 stripeAngleDegrees:v96 stripeHeightFactor:v102 firstStripeOffsetScaleFactor:v108];
                  type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
                  v113 = swift_allocObject();
                  *(v113 + 16) = v112;
                  sub_1E4A4EF3C(v42, 2u);
                  sub_1E4A4EF3C(v13, 2u);
                  sub_1E4A4EF3C(v51, 2u);

                  v13 = v113;
                }

LABEL_35:
                a4 = v119;
                goto LABEL_36;
              }

              sub_1E4A4EF3C(v51, v52);
            }

            v60 = v42;
            v61 = 2;
          }

          else
          {
            v60 = v42;
            v61 = v43;
          }

          sub_1E4A4EF3C(v60, v61);
        }

        v62 = sub_1E4AAA0C0();
        v63 = sub_1E4AAAA00();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          MEMORY[0x1E691FE80](v64, -1, -1);
        }

        v65 = sub_1E4AAA0C0();
        v66 = sub_1E4AAAA10();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          MEMORY[0x1E691FE80](v67, -1, -1);
        }

        goto LABEL_35;
      }

      sub_1E4A4EF3C(v13, v39);
    }

    v54 = sub_1E4AAA0C0();
    v55 = sub_1E4AAAA00();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      MEMORY[0x1E691FE80](v56, -1, -1);
    }

    v57 = sub_1E4AAA0C0();
    v58 = sub_1E4AAAA10();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      MEMORY[0x1E691FE80](v59, -1, -1);
    }

    v13 = 0;
    goto LABEL_35;
  }

LABEL_36:
  *a4 = v13;
}

uint64_t sub_1E4A96824@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E4A968F8(&v9);
  if (v9)
  {
    v3 = [v9[2] backgroundColor];
    v4 = sub_1E4AAA5C0();
    WKPosterCanvasSize();
    WKPosterCanvasSize();
    sub_1E4AAA6F0();
    sub_1E4AAA230();

    v5 = v10;
    v6 = v11;
    v7 = 256;
    v8 = v12;
  }

  else
  {
    v4 = 0;
    v7 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
    v8 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  return result;
}

uint64_t sub_1E4A968F8@<X0>(id **a1@<X8>)
{
  v39 = a1;
  v38 = sub_1E4AAA1C0();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4AAA320();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WKStripesWallpaperPosterBackground();
  v12 = *(v11 + 24);
  v13 = (v1 + *(v11 + 20));
  v14 = v13[7];
  v15 = v13[5];
  v76 = v13[6];
  v77 = v14;
  v16 = v13[7];
  v78 = v13[8];
  v17 = v13[3];
  v18 = v13[1];
  v72 = v13[2];
  v73 = v17;
  v19 = v13[3];
  v20 = v13[5];
  v74 = v13[4];
  v75 = v20;
  v21 = v13[1];
  v70 = *v13;
  v71 = v21;
  v80[6] = v76;
  v80[7] = v16;
  v80[8] = v13[8];
  v80[2] = v72;
  v80[3] = v19;
  v80[4] = v74;
  v80[5] = v15;
  v22 = *(v1 + v12);
  v79 = *(v13 + 144);
  v81 = *(v13 + 144);
  v80[0] = v70;
  v80[1] = v18;
  if (sub_1E4A49C60(v80) == 1)
  {
    nullsub_1(v80);
    v47 = v76;
    v48 = v77;
    v49 = v78;
    v50 = v79;
    v43 = v72;
    v44 = v73;
    v45 = v74;
    v46 = v75;
    v41 = v70;
    v42 = v71;
    v23 = nullsub_1(&v41);
    v61 = *v23;
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[4];
    v64 = v23[3];
    v65 = v26;
    v62 = v24;
    v63 = v25;
    v27 = v23[5];
    v28 = v23[6];
    v29 = v23[8];
    v68 = v23[7];
    v69 = v29;
    v66 = v27;
    v67 = v28;
    v60 = v79;
    v58 = v77;
    v59 = v78;
    v56 = v75;
    v57 = v76;
    v54 = v73;
    v55 = v74;
    v52 = v71;
    v53 = v72;
    v51 = v70;
    v30 = nullsub_1(&v51);
    sub_1E4A49D24(v30, &v40);
  }

  else
  {
    nullsub_1(v80);
    v47 = v76;
    v48 = v77;
    v49 = v78;
    v50 = v79;
    v43 = v72;
    v44 = v73;
    v45 = v74;
    v46 = v75;
    v41 = v70;
    v42 = v71;
    v36 = *nullsub_1(&v41);
    v51 = v70;
    v52 = v71;
    v55 = v74;
    v56 = v75;
    v53 = v72;
    v54 = v73;
    v60 = v79;
    v58 = v77;
    v59 = v78;
    v57 = v76;
    v31 = *nullsub_1(&v51);

    sub_1E4AAAA10();
    v32 = sub_1E4AAA4E0();
    v37 = v5;
    v33 = v22;
    v34 = v32;
    sub_1E4AAA0B0();

    v22 = v33;
    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v70);
    v5 = v37;
    (*(v7 + 8))(v10, v6);
  }

  v57 = v67;
  v58 = v68;
  v59 = v69;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v56 = v66;
  v51 = v61;
  v52 = v62;
  sub_1E4A96CDC(v5);
  sub_1E4A95D1C(&v51, v5, v22, v39);
  sub_1E4A49CD0(&v51);
  return (*(v2 + 8))(v5, v38);
}

uint64_t sub_1E4A96CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4AAA320();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - v11);
  sub_1E4A96EC4(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4AAA1C0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1E4AAAA10();
    v16 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E4A96EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4A96F34()
{
  result = qword_1EE0423D8;
  if (!qword_1EE0423D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EAA8, &qword_1E4AB3978);
    sub_1E4A96FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423D8);
  }

  return result;
}

unint64_t sub_1E4A96FB8()
{
  result = qword_1EE0423E0;
  if (!qword_1EE0423E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EAB0, &qword_1E4AB3980);
    sub_1E4A97044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423E0);
  }

  return result;
}

unint64_t sub_1E4A97044()
{
  result = qword_1EE042470;
  if (!qword_1EE042470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EAB8, qword_1E4AB3988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042470);
  }

  return result;
}

uint64_t type metadata accessor for WKParameterizedCAWallpaperView()
{
  result = qword_1ECF8EAC0;
  if (!qword_1ECF8EAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A9711C()
{
  sub_1E4A48ECC();
  if (v0 <= 0x3F)
  {
    sub_1E4AA9FE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_1E4A971A8()
{
  v1 = v0;
  v2 = sub_1E4AAA320();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v79[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1E4AA9FE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v79[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + 145);
  v13 = type metadata accessor for WKParameterizedCAWallpaperView();
  (*(v8 + 16))(v11, v1 + *(v13 + 24), v7);
  v14 = objc_allocWithZone(type metadata accessor for WKParameterizedCAWallpaperRepresentedView());
  v15 = sub_1E4A4A868(v12, v11);
  v16 = v1[7];
  v17 = v1[5];
  v190 = v1[6];
  v191 = v16;
  v18 = v1[7];
  v192 = v1[8];
  v19 = v1[3];
  v20 = v1[1];
  v186 = v1[2];
  v187 = v19;
  v21 = v1[3];
  v22 = v1[5];
  v188 = v1[4];
  v189 = v22;
  v23 = v1[1];
  v184 = *v1;
  v185 = v23;
  v194[6] = v190;
  v194[7] = v18;
  v194[8] = v1[8];
  v194[2] = v186;
  v194[3] = v21;
  v194[4] = v188;
  v194[5] = v17;
  v193 = *(v1 + 144);
  v195 = *(v1 + 144);
  v194[0] = v184;
  v194[1] = v20;
  if (sub_1E4A49C60(v194) == 1)
  {
    nullsub_1(v194);
    v161 = v190;
    v162 = v191;
    v163 = v192;
    v164 = v193;
    v157 = v186;
    v158 = v187;
    v159 = v188;
    v160 = v189;
    v155 = v184;
    v156 = v185;
    v24 = nullsub_1(&v155);
    v175 = *v24;
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    v179 = v24[4];
    v178 = v27;
    v177 = v26;
    v176 = v25;
    v28 = v24[5];
    v29 = v24[6];
    v30 = v24[7];
    v183 = v24[8];
    v182 = v30;
    v181 = v29;
    v180 = v28;
    v174 = v193;
    v173 = v192;
    v172 = v191;
    v171 = v190;
    v170 = v189;
    v169 = v188;
    v168 = v187;
    v167 = v186;
    v166 = v185;
    v165 = v184;
    v31 = nullsub_1(&v165);
    sub_1E4A49D24(v31, &v128);
  }

  else
  {
    nullsub_1(v194);
    v161 = v190;
    v162 = v191;
    v163 = v192;
    v164 = v193;
    v157 = v186;
    v158 = v187;
    v159 = v188;
    v160 = v189;
    v155 = v184;
    v156 = v185;
    v32 = *nullsub_1(&v155);
    v166 = v185;
    v165 = v184;
    v170 = v189;
    v169 = v188;
    v168 = v187;
    v167 = v186;
    v174 = v193;
    v173 = v192;
    v172 = v191;
    v171 = v190;
    v33 = *nullsub_1(&v165);

    sub_1E4AAAA10();
    v34 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v184);
    (*(v3 + 8))(v6, v2);
  }

  v152 = v181;
  v153 = v182;
  v154 = v183;
  v148 = v177;
  v149 = v178;
  v151 = v180;
  v150 = v179;
  v147[1] = v176;
  v147[0] = v175;
  sub_1E4A49CD0(v147);
  v35 = v1[7];
  v36 = v1[5];
  v161 = v1[6];
  v162 = v35;
  v37 = v1[7];
  v163 = v1[8];
  v38 = v1[3];
  v39 = v1[1];
  v157 = v1[2];
  v158 = v38;
  v40 = v1[3];
  v41 = v1[5];
  v159 = v1[4];
  v160 = v41;
  v42 = v1[1];
  v155 = *v1;
  v156 = v42;
  v171 = v161;
  v172 = v37;
  v173 = v1[8];
  v167 = v157;
  v168 = v40;
  v169 = v159;
  v170 = v36;
  v164 = *(v1 + 144);
  v174 = *(v1 + 144);
  v165 = v155;
  v166 = v39;
  if (sub_1E4A49C60(&v165) == 1)
  {
    nullsub_1(&v165);
    v124 = v161;
    v125 = v162;
    v126 = v163;
    v127 = v164;
    v120 = v157;
    v121 = v158;
    v122 = v159;
    v123 = v160;
    v118 = v155;
    v119 = v156;
    v43 = nullsub_1(&v118);
    v138 = *v43;
    v44 = v43[1];
    v45 = v43[2];
    v46 = v43[3];
    v142 = v43[4];
    v141 = v46;
    v140 = v45;
    v139 = v44;
    v47 = v43[5];
    v48 = v43[6];
    v49 = v43[7];
    v146 = v43[8];
    v145 = v49;
    v144 = v48;
    v143 = v47;
    v137 = v164;
    v136 = v163;
    v134 = v161;
    v135 = v162;
    v132 = v159;
    v133 = v160;
    v130 = v157;
    v131 = v158;
    v128 = v155;
    v129 = v156;
    v50 = nullsub_1(&v128);
    sub_1E4A49D24(v50, &v90);
  }

  else
  {
    nullsub_1(&v165);
    v124 = v161;
    v125 = v162;
    v126 = v163;
    v127 = v164;
    v120 = v157;
    v121 = v158;
    v122 = v159;
    v123 = v160;
    v118 = v155;
    v119 = v156;
    v51 = *nullsub_1(&v118);
    v128 = v155;
    v129 = v156;
    v132 = v159;
    v133 = v160;
    v130 = v157;
    v131 = v158;
    v137 = v164;
    v136 = v163;
    v134 = v161;
    v135 = v162;
    v52 = *nullsub_1(&v128);

    sub_1E4AAAA10();
    v53 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v155);
    (*(v3 + 8))(v6, v2);
  }

  v115 = v144;
  v116 = v145;
  v117 = v146;
  v111 = v140;
  v112 = v141;
  v113 = v142;
  v114 = v143;
  v109 = v138;
  v110 = v139;
  sub_1E4A49CD0(&v109);
  v54 = v1[7];
  v55 = v1[5];
  v124 = v1[6];
  v125 = v54;
  v56 = v1[7];
  v126 = v1[8];
  v57 = v1[3];
  v58 = v1[1];
  v120 = v1[2];
  v121 = v57;
  v59 = v1[3];
  v60 = v1[5];
  v122 = v1[4];
  v123 = v60;
  v61 = v1[1];
  v118 = *v1;
  v119 = v61;
  v134 = v124;
  v135 = v56;
  v136 = v1[8];
  v130 = v120;
  v131 = v59;
  v132 = v122;
  v133 = v55;
  v127 = *(v1 + 144);
  v137 = *(v1 + 144);
  v128 = v118;
  v129 = v58;
  if (sub_1E4A49C60(&v128) == 1)
  {
    nullsub_1(&v128);
    v86 = v124;
    v87 = v125;
    v88 = v126;
    v89 = v127;
    v82 = v120;
    v83 = v121;
    v84 = v122;
    v85 = v123;
    v80 = v118;
    v81 = v119;
    v62 = nullsub_1(&v80);
    v100 = *v62;
    v63 = v62[1];
    v64 = v62[2];
    v65 = v62[4];
    v103 = v62[3];
    v104 = v65;
    v101 = v63;
    v102 = v64;
    v66 = v62[5];
    v67 = v62[6];
    v68 = v62[8];
    v107 = v62[7];
    v108 = v68;
    v105 = v66;
    v106 = v67;
    v99 = v127;
    v97 = v125;
    v98 = v126;
    v95 = v123;
    v96 = v124;
    v93 = v121;
    v94 = v122;
    v91 = v119;
    v92 = v120;
    v90 = v118;
    v69 = nullsub_1(&v90);
    sub_1E4A49D24(v69, v79);
  }

  else
  {
    nullsub_1(&v128);
    v86 = v124;
    v87 = v125;
    v88 = v126;
    v89 = v127;
    v82 = v120;
    v83 = v121;
    v84 = v122;
    v85 = v123;
    v80 = v118;
    v81 = v119;
    v70 = *nullsub_1(&v80);
    v90 = v118;
    v91 = v119;
    v94 = v122;
    v95 = v123;
    v92 = v120;
    v93 = v121;
    v99 = v127;
    v97 = v125;
    v98 = v126;
    v96 = v124;
    v71 = *nullsub_1(&v90);

    sub_1E4AAAA10();
    v72 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v118);
    (*(v3 + 8))(v6, v2);
  }

  v73 = *&v148;
  v74 = *&v110;
  v96 = v106;
  v97 = v107;
  v98 = v108;
  v92 = v102;
  v93 = v103;
  v94 = v104;
  v95 = v105;
  v90 = v100;
  v91 = v101;
  sub_1E4A49CD0(&v90);
  v75 = v97;
  v76 = v98;
  v77 = &v15[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state];
  *v77 = v73;
  v77[1] = v74;
  *(v77 + 2) = v76;
  *(v77 + 1) = v75;
  sub_1E4A49EF4();
  return v15;
}

void sub_1E4A97B94(uint64_t a1)
{
  v3 = sub_1E4AAA320();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1[7];
  v9 = v1[5];
  v181 = v1[6];
  v182 = v8;
  v10 = v1[7];
  v183 = v1[8];
  v11 = v1[3];
  v12 = v1[1];
  v177 = v1[2];
  v178 = v11;
  v13 = v1[3];
  v14 = v1[5];
  v179 = v1[4];
  v180 = v14;
  v15 = v1[1];
  v175 = *v1;
  v176 = v15;
  v185[6] = v181;
  v185[7] = v10;
  v185[8] = v1[8];
  v185[2] = v177;
  v185[3] = v13;
  v185[4] = v179;
  v185[5] = v9;
  v184 = *(v1 + 144);
  v186 = *(v1 + 144);
  v185[0] = v175;
  v185[1] = v12;
  if (sub_1E4A49C60(v185) == 1)
  {
    nullsub_1(v185);
    v152 = v181;
    v153 = v182;
    v154 = v183;
    v155 = v184;
    v148 = v177;
    v149 = v178;
    v150 = v179;
    v151 = v180;
    v146 = v175;
    v147 = v176;
    v16 = nullsub_1(&v146);
    v166 = *v16;
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v170 = v16[4];
    v169 = v19;
    v168 = v18;
    v167 = v17;
    v20 = v16[5];
    v21 = v16[6];
    v22 = v16[7];
    v174 = v16[8];
    v173 = v22;
    v172 = v21;
    v171 = v20;
    v165 = v184;
    v164 = v183;
    v163 = v182;
    v162 = v181;
    v161 = v180;
    v160 = v179;
    v159 = v178;
    v158 = v177;
    v157 = v176;
    v156 = v175;
    v23 = nullsub_1(&v156);
    sub_1E4A49D24(v23, &v119);
  }

  else
  {
    nullsub_1(v185);
    v152 = v181;
    v153 = v182;
    v154 = v183;
    v155 = v184;
    v148 = v177;
    v149 = v178;
    v150 = v179;
    v151 = v180;
    v146 = v175;
    v147 = v176;
    v24 = *nullsub_1(&v146);
    v157 = v176;
    v156 = v175;
    v161 = v180;
    v160 = v179;
    v159 = v178;
    v158 = v177;
    v165 = v184;
    v164 = v183;
    v163 = v182;
    v162 = v181;
    v25 = *nullsub_1(&v156);

    sub_1E4AAAA10();
    v26 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v175);
    (*(v4 + 8))(v7, v3);
  }

  v143 = v172;
  v144 = v173;
  v145 = v174;
  v139 = v168;
  v140 = v169;
  v142 = v171;
  v141 = v170;
  v138[1] = v167;
  v138[0] = v166;
  sub_1E4A49CD0(v138);
  v27 = v1[7];
  v28 = v1[5];
  v152 = v1[6];
  v153 = v27;
  v29 = v1[7];
  v154 = v1[8];
  v30 = v1[3];
  v31 = v1[1];
  v148 = v1[2];
  v149 = v30;
  v32 = v1[3];
  v33 = v1[5];
  v150 = v1[4];
  v151 = v33;
  v34 = v1[1];
  v146 = *v1;
  v147 = v34;
  v162 = v152;
  v163 = v29;
  v164 = v1[8];
  v158 = v148;
  v159 = v32;
  v160 = v150;
  v161 = v28;
  v155 = *(v1 + 144);
  v165 = *(v1 + 144);
  v156 = v146;
  v157 = v31;
  if (sub_1E4A49C60(&v156) == 1)
  {
    nullsub_1(&v156);
    v115 = v152;
    v116 = v153;
    v117 = v154;
    v118 = v155;
    v111 = v148;
    v112 = v149;
    v113 = v150;
    v114 = v151;
    v109 = v146;
    v110 = v147;
    v35 = nullsub_1(&v109);
    v129 = *v35;
    v36 = v35[1];
    v37 = v35[2];
    v38 = v35[3];
    v133 = v35[4];
    v132 = v38;
    v131 = v37;
    v130 = v36;
    v39 = v35[5];
    v40 = v35[6];
    v41 = v35[7];
    v137 = v35[8];
    v136 = v41;
    v135 = v40;
    v134 = v39;
    v128 = v155;
    v127 = v154;
    v125 = v152;
    v126 = v153;
    v123 = v150;
    v124 = v151;
    v121 = v148;
    v122 = v149;
    v119 = v146;
    v120 = v147;
    v42 = nullsub_1(&v119);
    sub_1E4A49D24(v42, &v81);
  }

  else
  {
    nullsub_1(&v156);
    v115 = v152;
    v116 = v153;
    v117 = v154;
    v118 = v155;
    v111 = v148;
    v112 = v149;
    v113 = v150;
    v114 = v151;
    v109 = v146;
    v110 = v147;
    v43 = *nullsub_1(&v109);
    v119 = v146;
    v120 = v147;
    v123 = v150;
    v124 = v151;
    v121 = v148;
    v122 = v149;
    v128 = v155;
    v127 = v154;
    v125 = v152;
    v126 = v153;
    v44 = *nullsub_1(&v119);

    sub_1E4AAAA10();
    v45 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v146);
    (*(v4 + 8))(v7, v3);
  }

  v106 = v135;
  v107 = v136;
  v108 = v137;
  v102 = v131;
  v103 = v132;
  v104 = v133;
  v105 = v134;
  v100 = v129;
  v101 = v130;
  sub_1E4A49CD0(&v100);
  v46 = v1[7];
  v47 = v1[5];
  v115 = v1[6];
  v116 = v46;
  v48 = v1[7];
  v117 = v1[8];
  v49 = v1[3];
  v50 = v1[1];
  v111 = v1[2];
  v112 = v49;
  v51 = v1[3];
  v52 = v1[5];
  v113 = v1[4];
  v114 = v52;
  v53 = v1[1];
  v109 = *v1;
  v110 = v53;
  v125 = v115;
  v126 = v48;
  v127 = v1[8];
  v121 = v111;
  v122 = v51;
  v123 = v113;
  v124 = v47;
  v118 = *(v1 + 144);
  v128 = *(v1 + 144);
  v119 = v109;
  v120 = v50;
  if (sub_1E4A49C60(&v119) == 1)
  {
    nullsub_1(&v119);
    v77 = v115;
    v78 = v116;
    v79 = v117;
    v80 = v118;
    v73 = v111;
    v74 = v112;
    v75 = v113;
    v76 = v114;
    v71 = v109;
    v72 = v110;
    v54 = nullsub_1(&v71);
    v91 = *v54;
    v55 = v54[1];
    v56 = v54[2];
    v57 = v54[4];
    v94 = v54[3];
    v95 = v57;
    v92 = v55;
    v93 = v56;
    v58 = v54[5];
    v59 = v54[6];
    v60 = v54[8];
    v98 = v54[7];
    v99 = v60;
    v96 = v58;
    v97 = v59;
    v90 = v118;
    v88 = v116;
    v89 = v117;
    v86 = v114;
    v87 = v115;
    v84 = v112;
    v85 = v113;
    v82 = v110;
    v83 = v111;
    v81 = v109;
    v61 = nullsub_1(&v81);
    sub_1E4A49D24(v61, v70);
  }

  else
  {
    nullsub_1(&v119);
    v77 = v115;
    v78 = v116;
    v79 = v117;
    v80 = v118;
    v73 = v111;
    v74 = v112;
    v75 = v113;
    v76 = v114;
    v71 = v109;
    v72 = v110;
    v62 = *nullsub_1(&v71);
    v81 = v109;
    v82 = v110;
    v85 = v113;
    v86 = v114;
    v83 = v111;
    v84 = v112;
    v90 = v118;
    v88 = v116;
    v89 = v117;
    v87 = v115;
    v63 = *nullsub_1(&v81);

    sub_1E4AAAA10();
    v64 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v109);
    (*(v4 + 8))(v7, v3);
  }

  v65 = *&v139;
  v66 = *&v101;
  v87 = v97;
  v88 = v98;
  v89 = v99;
  v83 = v93;
  v84 = v94;
  v85 = v95;
  v86 = v96;
  v81 = v91;
  v82 = v92;
  sub_1E4A49CD0(&v81);
  v67 = v88;
  v68 = v89;
  v69 = a1 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state;
  *v69 = v65;
  *(v69 + 4) = v66;
  *(v69 + 32) = v68;
  *(v69 + 16) = v67;
  sub_1E4A49EF4();
}

uint64_t sub_1E4A984C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A98640(&qword_1ECF8EAD0);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1E4A98548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A98640(&qword_1ECF8EAD0);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1E4A985C8()
{
  sub_1E4A98640(&qword_1ECF8EAD0);
  sub_1E4AAA400();
  __break(1u);
}

uint64_t sub_1E4A98640(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WKParameterizedCAWallpaperView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WKParameterizedCAWallpaper.wallpaperValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKParameterizedCAWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 6;
  return result;
}

uint64_t WKParameterizedCAWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKParameterizedCAWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKParameterizedCAWallpaper.init(identifier:name:fileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  sub_1E4A48054(a2, &v16 - v8);
  v10 = sub_1E4AAA870();

  v11 = sub_1E4AA9FE0();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    v13 = sub_1E4AA9FA0();
    (*(v12 + 8))(v9, v11);
  }

  v14 = [objc_allocWithZone(WKParameterizedCAWallpaper) initWithIdentifier:a1 name:v10 fileURL:v13];

  sub_1E4A480C4(a2);
  type metadata accessor for WKParameterizedCAWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v14;
  *a3 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKParameterizedCAWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKParameterizedCAWallpaper.copyWallpaperContents(to:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v7[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1E4AA9F60();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E4A98B74@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKParameterizedCAWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 6;
  return result;
}

uint64_t WKParameterizedCAWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKParameterizedCAWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A98CDC(uint64_t a1)
{
  result = sub_1E4A98D04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A98D04()
{
  result = qword_1ECF8EAD8;
  if (!qword_1ECF8EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EAD8);
  }

  return result;
}

uint64_t WKParameterizedCAWallpaperInput.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) fileURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t WKParameterizedCAWallpaperInput.init(fileURL:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  sub_1E4A48054(a1, &v13 - v6);
  v8 = sub_1E4AA9FE0();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v10 = sub_1E4AA9FA0();
    (*(v9 + 8))(v7, v8);
  }

  v11 = [objc_allocWithZone(WKParameterizedCAWallpaperInput) initWithFileURL_];

  sub_1E4A480C4(a1);
  type metadata accessor for WKParameterizedCAWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v11;
  *a2 = result;
  return result;
}

uint64_t WKParameterizedCAWallpaperInput.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKParameterizedCAWallpaperInput.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKParameterizedCAWallpaperInput.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

unint64_t sub_1E4A990D0()
{
  result = qword_1ECF8EAE0;
  if (!qword_1ECF8EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EAE0);
  }

  return result;
}

uint64_t sub_1E4A99134@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v98 = type metadata accessor for WKStripesWallpaperPosterOverlay();
  v2 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v94 = (&v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EAF0, &qword_1E4AB3E18);
  v4 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v87 - v5;
  v96 = type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer();
  v6 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EAF8, &qword_1E4AB3E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB00, &qword_1E4AB3E28);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v87 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB08, &qword_1E4AB3E30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v87 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB10, &qword_1E4AB3E38);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v87 - v22;
  v24 = *v1;
  if (sub_1E4A5A570(v24))
  {
    *&v101 = swift_getKeyPath();
    sub_1E4A4E620(&v101);
    v136[6] = v107;
    v136[7] = v108;
    v136[8] = v109;
    LOBYTE(v136[9]) = v110;
    v25 = v103;
    v136[2] = v103;
    v136[3] = v104;
    v136[4] = v105;
    v136[5] = v106;
    v136[0] = v101;
    v136[1] = v102;
    *(&v136[9] + 1) = v24;
    v26 = v108;
    v19[6] = v107;
    v19[7] = v26;
    v27 = v136[3];
    v28 = v136[4];
    v29 = v136[5];
    v19[2] = v25;
    v19[3] = v27;
    v19[4] = v28;
    v19[5] = v29;
    v30 = v136[1];
    *v19 = v136[0];
    v19[1] = v30;
    v31 = v136[9];
    v19[8] = v136[8];
    v19[9] = v31;
    swift_storeEnumTagMultiPayload();

    sub_1E4A9A674(v136, &v113);
    sub_1E4A9A294();
    sub_1E4A9A2E8();
    sub_1E4AAA430();
    v32 = v100;
    sub_1E4A52D40(v23, v15, &qword_1ECF8EB10, &qword_1E4AB3E38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB20, &qword_1E4AB3E70);
    sub_1E4A9A208();
    sub_1E4A9A41C();
    sub_1E4AAA430();
    sub_1E4A9A6D0(v136);
    sub_1E4A4DC88(v23, &qword_1ECF8EB10, &qword_1E4AB3E38);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB18, &qword_1E4AB3E40);
    return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  }

  v88 = v8;
  v89 = v23;
  v35 = v100;
  v90 = v9;
  v91 = v20;
  v92 = v15;
  v93 = v12;
  if (sub_1E4A5A670(v24))
  {
    v36 = v24;
    v37 = [*(v24 + 16) logicalScreenClass];
    v38 = sub_1E4AAA8A0();
    v40 = v39;
    if (v38 == sub_1E4AAA8A0() && v40 == v41)
    {

      v42 = v88;
    }

    else
    {
      v52 = sub_1E4AAADA0();

      v42 = v88;
      if ((v52 & 1) == 0)
      {
        v74 = v98;
        v75 = v94;
        v76 = v94 + *(v98 + 24);
        *(v76 + 3) = &type metadata for WKWallpaperBundle;
        *(v76 + 4) = sub_1E4A50754();
        *v76 = v36;
        *v75 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
        swift_storeEnumTagMultiPayload();
        v77 = v75 + *(v74 + 20);
        *&v136[0] = swift_getKeyPath();
        sub_1E4A4E620(v136);
        v78 = v136[7];
        *(v77 + 6) = v136[6];
        *(v77 + 7) = v78;
        *(v77 + 8) = v136[8];
        v77[144] = v136[9];
        v79 = v136[3];
        *(v77 + 2) = v136[2];
        *(v77 + 3) = v79;
        v80 = v136[5];
        *(v77 + 4) = v136[4];
        *(v77 + 5) = v80;
        v81 = v136[1];
        *v77 = v136[0];
        *(v77 + 1) = v81;
        v61 = type metadata accessor for WKStripesWallpaperPosterOverlay;
        sub_1E4A9A5AC(v75, v97, type metadata accessor for WKStripesWallpaperPosterOverlay);
        swift_storeEnumTagMultiPayload();
        sub_1E4A9A3D4(qword_1EE043698, type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer);
        sub_1E4A9A3D4(&unk_1EE043110, type metadata accessor for WKStripesWallpaperPosterOverlay);

        v62 = v99;
        sub_1E4AAA430();
        v63 = v75;
        goto LABEL_15;
      }
    }

    *v42 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
    swift_storeEnumTagMultiPayload();
    v53 = v96;
    v54 = v42 + *(v96 + 20);
    *&v136[0] = swift_getKeyPath();
    sub_1E4A4E620(v136);
    v55 = v136[7];
    *(v54 + 6) = v136[6];
    *(v54 + 7) = v55;
    *(v54 + 8) = v136[8];
    v54[144] = v136[9];
    v56 = v136[3];
    *(v54 + 2) = v136[2];
    *(v54 + 3) = v56;
    v57 = v136[5];
    *(v54 + 4) = v136[4];
    *(v54 + 5) = v57;
    v58 = v136[1];
    *v54 = v136[0];
    *(v54 + 1) = v58;
    v59 = v42 + *(v53 + 24);
    type metadata accessor for WKWallpaperPosterLayerViewModel();
    sub_1E4A9A3D4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

    *v59 = sub_1E4AAA1E0();
    v59[8] = v60 & 1;
    *(v42 + *(v53 + 28)) = v36;
    v61 = type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer;
    sub_1E4A9A5AC(v42, v97, type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer);
    swift_storeEnumTagMultiPayload();
    sub_1E4A9A3D4(qword_1EE043698, type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer);
    sub_1E4A9A3D4(&unk_1EE043110, type metadata accessor for WKStripesWallpaperPosterOverlay);
    v62 = v99;
    sub_1E4AAA430();
    v63 = v42;
LABEL_15:
    sub_1E4A9A614(v63, v61);
    v82 = v89;
    sub_1E4A52D40(v62, v19, &qword_1ECF8EAF8, &qword_1E4AB3E20);
    swift_storeEnumTagMultiPayload();
    sub_1E4A9A294();
    sub_1E4A9A2E8();
    sub_1E4AAA430();
    sub_1E4A52D40(v82, v92, &qword_1ECF8EB10, &qword_1E4AB3E38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB20, &qword_1E4AB3E70);
    sub_1E4A9A208();
    sub_1E4A9A41C();
    v83 = v100;
    sub_1E4AAA430();
    sub_1E4A4DC88(v82, &qword_1ECF8EB10, &qword_1E4AB3E38);
    sub_1E4A4DC88(v62, &qword_1ECF8EAF8, &qword_1E4AB3E20);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB18, &qword_1E4AB3E40);
    return (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
  }

  if (sub_1E4A5A870(v24))
  {
    type metadata accessor for WKWallpaperPosterLayerViewModel();
    v43 = v24;
    sub_1E4A9A3D4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

    v44 = sub_1E4AAA1E0();
    LOBYTE(v113) = v45 & 1;
    *&v125 = swift_getKeyPath();
    sub_1E4A4E620(&v125);
    *(&v136[3] + 7) = v128;
    *(&v136[2] + 7) = v127;
    *(&v136[7] + 7) = v132;
    *(&v136[6] + 7) = v131;
    *(&v136[8] + 7) = v133;
    BYTE7(v136[9]) = v134;
    *(&v136[4] + 7) = v129;
    *(&v136[5] + 7) = v130;
    *(v136 + 7) = v125;
    *(&v136[1] + 7) = v126;
    *&v135[0] = v44;
    BYTE8(v135[0]) = v113;
    *(&v135[3] + 9) = v136[3];
    *(&v135[2] + 9) = v136[2];
    *(&v135[6] + 9) = v136[6];
    *(&v135[7] + 9) = v136[7];
    *(&v135[8] + 9) = v136[8];
    *(&v135[9] + 9) = *&v136[9];
    *(&v135[4] + 9) = v136[4];
    *(&v135[5] + 9) = v136[5];
    *(v135 + 9) = v136[0];
    *(&v135[1] + 9) = v136[1];
    *(&v135[10] + 1) = v43;
    v136[8] = v135[8];
    v136[9] = v135[9];
    v136[4] = v135[4];
    v136[5] = v135[5];
    v136[6] = v135[6];
    v136[7] = v135[7];
    v136[0] = v135[0];
    v136[1] = v135[1];
    v136[2] = v135[2];
    v136[3] = v135[3];
    v137 = v135[10];
    sub_1E4A5B0A8(v136);
    v109 = v136[8];
    v110 = v136[9];
    v111 = v137;
    v112 = v138;
    v105 = v136[4];
    v106 = v136[5];
    v107 = v136[6];
    v108 = v136[7];
    v101 = v136[0];
    v102 = v136[1];
    v103 = v136[2];
    v104 = v136[3];
    sub_1E4A9A4FC(v135, &v113);
    sub_1E4A9A160();
    sub_1E4A9A1B4();
    sub_1E4AAA430();
    v46 = v122;
    v47 = v92;
    *(v92 + 8) = v121;
    *(v47 + 144) = v46;
    *(v47 + 160) = v123;
    *(v47 + 176) = v124;
    v48 = v118;
    *(v47 + 64) = v117;
    *(v47 + 80) = v48;
    v49 = v120;
    *(v47 + 96) = v119;
    *(v47 + 112) = v49;
    v50 = v114;
    *v47 = v113;
    *(v47 + 16) = v50;
    v51 = v116;
    *(v47 + 32) = v115;
    *(v47 + 48) = v51;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB20, &qword_1E4AB3E70);
    sub_1E4A9A208();
    sub_1E4A9A41C();
    sub_1E4AAA430();
    sub_1E4A9A558(v135);
LABEL_13:
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB18, &qword_1E4AB3E40);
    return (*(*(v73 - 8) + 56))(v35, 0, 1, v73);
  }

  if (sub_1E4A5A970(v24))
  {
    type metadata accessor for WKWallpaperPosterLayerViewModel();
    v64 = v24;
    sub_1E4A9A3D4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

    v65 = sub_1E4AAA1E0();
    LOBYTE(v113) = v66 & 1;
    *&v125 = swift_getKeyPath();
    sub_1E4A4E620(&v125);
    *(&v136[3] + 7) = v128;
    *(&v136[2] + 7) = v127;
    *(&v136[7] + 7) = v132;
    *(&v136[6] + 7) = v131;
    *(&v136[8] + 7) = v133;
    BYTE7(v136[9]) = v134;
    *(&v136[4] + 7) = v129;
    *(&v136[5] + 7) = v130;
    *(v136 + 7) = v125;
    *(&v136[1] + 7) = v126;
    *&v135[0] = v65;
    BYTE8(v135[0]) = v113;
    *(&v135[3] + 9) = v136[3];
    *(&v135[2] + 9) = v136[2];
    *(&v135[6] + 9) = v136[6];
    *(&v135[7] + 9) = v136[7];
    *(&v135[8] + 9) = v136[8];
    *(&v135[9] + 9) = *&v136[9];
    *(&v135[4] + 9) = v136[4];
    *(&v135[5] + 9) = v136[5];
    *(v135 + 9) = v136[0];
    *(&v135[1] + 9) = v136[1];
    *(&v135[10] + 1) = v64;
    v136[8] = v135[8];
    v136[9] = v135[9];
    v136[4] = v135[4];
    v136[5] = v135[5];
    v136[6] = v135[6];
    v136[7] = v135[7];
    v136[0] = v135[0];
    v136[1] = v135[1];
    v136[2] = v135[2];
    v136[3] = v135[3];
    v137 = v135[10];
    sub_1E4A5AFEC(v136);
    v109 = v136[8];
    v110 = v136[9];
    v111 = v137;
    v112 = v138;
    v105 = v136[4];
    v106 = v136[5];
    v107 = v136[6];
    v108 = v136[7];
    v101 = v136[0];
    v102 = v136[1];
    v103 = v136[2];
    v104 = v136[3];
    sub_1E4A9A104(v135, &v113);
    sub_1E4A9A160();
    sub_1E4A9A1B4();
    sub_1E4AAA430();
    v67 = v122;
    v68 = v92;
    *(v92 + 8) = v121;
    *(v68 + 144) = v67;
    *(v68 + 160) = v123;
    *(v68 + 176) = v124;
    v69 = v118;
    *(v68 + 64) = v117;
    *(v68 + 80) = v69;
    v70 = v120;
    *(v68 + 96) = v119;
    *(v68 + 112) = v70;
    v71 = v114;
    *v68 = v113;
    *(v68 + 16) = v71;
    v72 = v116;
    *(v68 + 32) = v115;
    *(v68 + 48) = v72;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB20, &qword_1E4AB3E70);
    sub_1E4A9A208();
    sub_1E4A9A41C();
    sub_1E4AAA430();
    sub_1E4A9A4A8(v135);
    goto LABEL_13;
  }

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EB18, &qword_1E4AB3E40);
  v86 = *(*(v85 - 8) + 56);

  return v86(v35, 1, 1, v85);
}

uint64_t sub_1E4A9A060@<X0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  sub_1E4A99134(a1);
  v3 = sub_1E4AAA290();
  v4 = sub_1E4AAA4F0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EAE8, &qword_1E4AB3E10);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

unint64_t sub_1E4A9A160()
{
  result = qword_1EE0434A0;
  if (!qword_1EE0434A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0434A0);
  }

  return result;
}

unint64_t sub_1E4A9A1B4()
{
  result = qword_1EE0424F0;
  if (!qword_1EE0424F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0424F0);
  }

  return result;
}

unint64_t sub_1E4A9A208()
{
  result = qword_1EE042348;
  if (!qword_1EE042348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EB10, &qword_1E4AB3E38);
    sub_1E4A9A294();
    sub_1E4A9A2E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042348);
  }

  return result;
}

unint64_t sub_1E4A9A294()
{
  result = qword_1EE0438A8;
  if (!qword_1EE0438A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0438A8);
  }

  return result;
}

unint64_t sub_1E4A9A2E8()
{
  result = qword_1EE042330;
  if (!qword_1EE042330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EAF8, &qword_1E4AB3E20);
    sub_1E4A9A3D4(qword_1EE043698, type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer);
    sub_1E4A9A3D4(&unk_1EE043110, type metadata accessor for WKStripesWallpaperPosterOverlay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042330);
  }

  return result;
}

uint64_t sub_1E4A9A3D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4A9A41C()
{
  result = qword_1EE042328;
  if (!qword_1EE042328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EB20, &qword_1E4AB3E70);
    sub_1E4A9A160();
    sub_1E4A9A1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042328);
  }

  return result;
}

uint64_t sub_1E4A9A5AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4A9A614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4A9A724()
{
  result = qword_1EE0423F8;
  if (!qword_1EE0423F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EAE8, &qword_1E4AB3E10);
    sub_1E4A9A7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423F8);
  }

  return result;
}

unint64_t sub_1E4A9A7B0()
{
  result = qword_1EE0422D8;
  if (!qword_1EE0422D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EB28, &unk_1E4AB3EB0);
    sub_1E4A9A834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422D8);
  }

  return result;
}

unint64_t sub_1E4A9A834()
{
  result = qword_1EE0422E0;
  if (!qword_1EE0422E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EB18, &qword_1E4AB3E40);
    sub_1E4A9A208();
    sub_1E4A9A41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422E0);
  }

  return result;
}

Swift::Bool __swiftcall WKWallpaperRepresentingCollection.contains(_:)(Swift::String a1)
{
  v2 = *(*v1 + 16);
  v3 = sub_1E4AAA870();
  v4 = [v2 containsWallpaperRepresentingWithIdentifier_];

  return v4;
}

uint64_t WKWallpaperRepresentingCollection.subscript.getter()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAA870();
  v3 = [v1 wallpaperRepresentingWithIdentifier_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v8 + 1))
    {
      sub_1E4A2732C(&v7, v10);
      v4 = v11;
      v5 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v5 + 8))(v4, v5);
      return __swift_destroy_boxed_opaque_existential_1Tm(v10);
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  sub_1E4A4DC88(&v7, &unk_1ECF8EB30, &unk_1E4AB0E40);
  result = sub_1E4AAACB0();
  __break(1u);
  return result;
}

id sub_1E4A9AAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(*(v3 + 16) + 16) numberOfWallpaperCollections];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [*(*(v3 + 16) + 16) numberOfWallpaperCollections];
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v8 = a3 - a1;
  if (a2 >= 1)
  {
    if (v8 < 0 || v8 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v8 <= 0 && v8 > a2)
  {
    return 0;
  }

LABEL_12:
  v10 = __OFADD__(a1, a2);
  v9 = a1 + a2;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [*(*(v3 + 16) + 16) numberOfWallpaperCollections];
  if ((v9 & 0x8000000000000000) == 0 && result >= v9)
  {
    return v9;
  }

LABEL_19:
  __break(1u);
  return result;
}

id sub_1E4A9ABB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  result = [v7 numberOfWallpapers];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [v7 numberOfWallpapers];
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [v7 numberOfWallpapers];
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t WKWallpaperRepresentingCollection.init(wallpaperCollectionIdentifier:displayName:previewWallpaperRepresenting:wallpapersShareBaseAppearance:hiddenFromPicker:depthEffectDisabled:motionEffectsDisabled:disableRotation:wallpaperRepresentingCollection:downloadManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, char a6@<W7>, uint64_t *a7@<X8>, char a8, uint64_t a9, uint64_t a10)
{
  v10 = a2;
  sub_1E4A4D9A0(a2, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EB40, qword_1E4AB0E10);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  v35 = v10;
  sub_1E4A2732C(&v40, v44);
  v39 = MEMORY[0x1E69E7CC0];
  v11 = *(a9 + 16);
  if (v11)
  {
    v10 = 0;
    v12 = a9 + 32;
    do
    {
      if (v10 >= *(a9 + 16))
      {
        __break(1u);
LABEL_14:
        v37 = 0;
        memset(v36, 0, sizeof(v36));
        sub_1E4A4DC88(v36, &unk_1ECF8E550, &qword_1E4AB3ED0);
        *&v40 = 0;
        *(&v40 + 1) = 0xE000000000000000;
        sub_1E4AAABC0();
        MEMORY[0x1E691ECA0](0xD000000000000043, 0x80000001E4AB9E10);
        MEMORY[0x1E691ECA0](0xD00000000000002ALL, 0x80000001E4AB9E60);
        MEMORY[0x1E691ECA0](0x20646E756F662820, 0xE800000000000000);
        __swift_project_boxed_opaque_existential_1(v43, v43[3]);
        swift_getDynamicType();
        v26 = sub_1E4AAAE90();
        MEMORY[0x1E691ECA0](v26);

        MEMORY[0x1E691ECA0](8489, 0xE200000000000000);
        while (1)
        {
          sub_1E4AAACB0();
          __break(1u);
LABEL_16:
          v42 = 0;
          v40 = 0u;
          v41 = 0u;
          sub_1E4A4DC88(&v40, &unk_1ECF8E550, &qword_1E4AB3ED0);
          v44[0] = 0;
          v44[1] = 0xE000000000000000;
          sub_1E4AAABC0();
          MEMORY[0x1E691ECA0](0xD000000000000043, 0x80000001E4AB9E10);
          MEMORY[0x1E691ECA0](0xD00000000000002ALL, 0x80000001E4AB9E60);
          MEMORY[0x1E691ECA0](0x20646E756F662820, 0xE800000000000000);
          __swift_project_boxed_opaque_existential_1(v10, v10[3]);
          swift_getDynamicType();
          v27 = sub_1E4AAAE90();
          MEMORY[0x1E691ECA0](v27);

          MEMORY[0x1E691ECA0](8489, 0xE200000000000000);
        }
      }

      sub_1E4A4D9A0(v12, v43);
      sub_1E4A4D9A0(v43, v38);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      sub_1E4A2732C(v36, &v40);
      v13 = *(&v41 + 1);
      v14 = v42;
      __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      (*(v14 + 8))(v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      v15 = __swift_destroy_boxed_opaque_existential_1Tm(&v40);
      MEMORY[0x1E691ED00](v15);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E4AAA960();
      }

      v10 = (v10 + 1);
      sub_1E4AAA970();
      v12 += 40;
    }

    while (v11 != v10);
  }

  v16 = v45;
  v17 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v18 = (*(v17 + 8))(v16, v17);
  if (a10)
  {
    v19 = *(*(a10 + 16) + 16);
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_allocWithZone(WKWallpaperRepresentingCollection);
  v21 = sub_1E4AAA870();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
  v22 = sub_1E4AAA940();

  BYTE1(v28) = a8 & 1;
  LOBYTE(v28) = a6 & 1;
  v23 = [v20 initWithWallpaperCollectionIdentifier:a1 displayName:v21 previewWallpaperRepresenting:v18 wallpapersShareBaseAppearance:a3 & 1 hiddenFromPicker:a4 & 1 depthEffectDisabled:a5 & 1 motionEffectsDisabled:v28 disableRotation:v22 wallpaperRepresentingCollection:v19 downloadManager:?];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  result = __swift_destroy_boxed_opaque_existential_1Tm(v44);
  *a7 = v24;
  return result;
}

uint64_t WKWallpaperRepresentingCollection.previewWallpaperRepresenting.getter()
{
  v6 = [*(*v0 + 16) previewWallpaperRepresenting];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
  if (swift_dynamicCast())
  {
    sub_1E4A2732C(v4, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v2 + 8))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_1E4A4DC88(v4, &unk_1ECF8EB30, &unk_1E4AB0E40);
    result = sub_1E4AAACB0();
    __break(1u);
  }

  return result;
}

uint64_t WKWallpaperRepresentingCollection.init(url:downloadManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1E4AA9FE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  if (a2)
  {
    v11 = *(*(a2 + 16) + 16);
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(WKWallpaperRepresentingCollection);
  v13 = sub_1E4AA9FA0();
  v14 = [v12 initWithURL:v13 downloadManager:v11];

  v15 = *(v7 + 8);
  v15(a1, v6);
  v15(v10, v6);
  type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v14;
  *a3 = result;
  return result;
}

uint64_t WKWallpaperRepresentingCollection.downloadWallpaperRepresenting(with:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a3;
  v5[28] = a4;
  v5[25] = a1;
  v5[26] = a2;
  v5[29] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1E4A9B5EC, 0, 0);
}

uint64_t sub_1E4A9B5EC()
{
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  v4 = *(v0[29] + 16);
  v0[30] = v4;
  v5 = v4;
  v6 = sub_1E4AAA870();
  v0[31] = v6;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_1E4A9B748;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E560, &qword_1E4AB3EE0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E4A5E084;
  v0[13] = &block_descriptor_3;
  v0[14] = v7;
  [v5 downloadWallpaperRepresentingWithIdentifier:v6 progress:v1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E4A9B748()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_1E4A9BA08;
  }

  else
  {
    v3 = sub_1E4A9B858;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4A9B858()
{
  *(v0 + 192) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
  v1 = swift_dynamicCast();
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  if (v1)
  {
    v4 = *(v0 + 200);
    sub_1E4A2732C((v0 + 80), v0 + 144);

    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v5);
    (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v0 + 112) = 0;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1E4A4DC88(v0 + 80, &unk_1ECF8EB30, &unk_1E4AB0E40);

    return sub_1E4AAACB0();
  }
}

uint64_t sub_1E4A9BA08()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[32];

  return v4();
}

uint64_t WKWallpaperRepresentingCollection.cancelDownload(for:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a1;
  v3[19] = a2;
  v3[20] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1E4A9BAD4, 0, 0);
}

uint64_t sub_1E4A9BAD4()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = *(v0[20] + 16);
  v0[21] = v3;
  v4 = v3;
  v5 = sub_1E4AAA870();
  v0[22] = v5;
  v0[2] = v0;
  v0[3] = sub_1E4A9BC1C;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E580, &qword_1E4AB0E50);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E4A5E820;
  v0[13] = &block_descriptor_4_0;
  v0[14] = v6;
  [v4 cancelDownloadForWallpaperRepresentingWithIdentifier:v5 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E4A9BC1C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1E4A9BD94;
  }

  else
  {
    v3 = sub_1E4A9BD2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4A9BD2C()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E4A9BD94()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t WKWallpaperRepresentingCollection.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKWallpaperRepresentingCollection.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

void _s12WallpaperKit33WKWallpaperRepresentingCollectionV10identifier10Foundation4UUIDVvg_0()
{
  v1 = [*(*v0 + 16) identifier];
  sub_1E4AAA010();
}

uint64_t WKWallpaperRepresentingCollection.subscript.getter(uint64_t a1)
{
  v7 = [*(*v1 + 16) wallpaperBundleAtIndex_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
  if (swift_dynamicCast())
  {
    sub_1E4A2732C(v5, v8);
    v2 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v3 + 8))(v2, v3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1E4A4DC88(v5, &unk_1ECF8EB30, &unk_1E4AB0E40);
    result = sub_1E4AAACB0();
    __break(1u);
  }

  return result;
}

unint64_t sub_1E4A9C0D0()
{
  result = qword_1ECF8EB50;
  if (!qword_1ECF8EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EB50);
  }

  return result;
}

unint64_t sub_1E4A9C128()
{
  result = qword_1EE043968;
  if (!qword_1EE043968)
  {
    sub_1E4AAA030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043968);
  }

  return result;
}

unint64_t sub_1E4A9C184()
{
  result = qword_1ECF8EB60;
  if (!qword_1ECF8EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EB60);
  }

  return result;
}

unint64_t sub_1E4A9C220()
{
  result = qword_1ECF8EB90;
  if (!qword_1ECF8EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EB90);
  }

  return result;
}

unint64_t sub_1E4A9C278()
{
  result = qword_1ECF8EB98;
  if (!qword_1ECF8EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EB98);
  }

  return result;
}

uint64_t sub_1E4A9C314(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EB88, &qword_1E4AB3FC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1E4A9C38C@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = [*(*v2 + 16) numberOfWallpapers];
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1E4A9C3EC(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = [*(*v1 + 16) numberOfWallpapers];
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E4A9C450()
{
  result = qword_1ECF8EBB0;
  if (!qword_1ECF8EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EBB0);
  }

  return result;
}

id sub_1E4A9C4E8@<X0>(void *a1@<X8>)
{
  result = [*(*v1 + 16) numberOfWallpapers];
  *a1 = result;
  return result;
}

void (*sub_1E4A9C520(uint64_t *a1, uint64_t *a2))(uint64_t **a1)
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
  WKWallpaperRepresentingCollection.subscript.getter(*a2);
  return sub_1E4A9C59C;
}

void sub_1E4A9C59C(uint64_t **a1)
{
  v1 = *a1;
  __swift_destroy_boxed_opaque_existential_1Tm(*a1);

  free(v1);
}

uint64_t sub_1E4A9C5D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = [*(v6 + 16) numberOfWallpapers];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a2[1] = v4;
  a2[2] = v6;
  *a2 = v5;
}

unint64_t sub_1E4A9C650@<X0>(void *a1@<X8>)
{
  result = [*(*v1 + 16) numberOfWallpapers];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *sub_1E4A9C6C0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = [*(*v3 + 16) numberOfWallpapers];
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_1E4A9C720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1E4A9ABB0(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

id sub_1E4A9C75C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(*v2 + 16);
  result = [v5 numberOfWallpapers];
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = [v5 numberOfWallpapers];
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return (v4 - v3);
    }
  }

  __break(1u);
  return result;
}

id sub_1E4A9C7D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = [*(*v2 + 16) numberOfWallpapers];
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

id sub_1E4A9C828(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = [*(v3 + 16) numberOfWallpapers];
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

int64_t sub_1E4A9C8BC()
{
  v1 = *v0;
  v2 = [*(v1 + 16) numberOfWallpapers];
  v3 = *(v1 + 16);
  result = [v3 numberOfWallpapers];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [v3 numberOfWallpapers];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4A9C930()
{
  v1 = sub_1E4A9CBB4(*v0);

  return v1;
}

void *sub_1E4A9C9A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA68, &unk_1E4AB3840);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1E4A9CA34(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EBE0, &qword_1E4AB4260);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

size_t sub_1E4A9CAB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E650, &qword_1E4AB17A0);
  v4 = *(type metadata accessor for WKAnimationPackageLayerState() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4A9CBB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = [v2 numberOfWallpapers];
  result = [v2 numberOfWallpapers];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [v2 numberOfWallpapers];
    if ((v3 & 0x8000000000000000) == 0 && result >= v3)
    {
      if (v3)
      {
        v5 = sub_1E4A9C9A4(v3, 0);

        v6 = sub_1E4A9CC80(&v7, (v5 + 4), v3, a1);

        if (v6 == v3)
        {
          return v5;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4A9CC80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
LABEL_12:
    v5 = 0;
    goto LABEL_15;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_15:
    *a1 = a4;
    a1[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v12 = a1;
    v7 = 1;
    while (1)
    {
      if ((v7 - 1) == [*(a4 + 16) numberOfWallpapers])
      {
        v5 = v7 - 1;
LABEL_14:
        a1 = v12;
        goto LABEL_15;
      }

      v15 = [*(a4 + 16) wallpaperBundleAtIndex_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
      if (!swift_dynamicCast())
      {
        goto LABEL_18;
      }

      sub_1E4A2732C(v13, v16);
      v8 = v17;
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v9 + 8))(v19, v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      if (v7 - 1 >= [*(a4 + 16) numberOfWallpapers])
      {
        break;
      }

      sub_1E4A2732C(v19, v20);
      a1 = sub_1E4A2732C(v20, v6);
      if (v5 == v7)
      {
        goto LABEL_14;
      }

      v6 += 40;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_18:
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_1E4A4DC88(v13, &unk_1ECF8EB30, &unk_1E4AB0E40);
  result = sub_1E4AAACB0();
  __break(1u);
  return result;
}

uint64_t sub_1E4A9CE8C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for WKAnimationPackageLayerState();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = *(v33 + 72);
      sub_1E4A68864(v26 + v27 * (v25 | (v20 << 6)), v12);
      sub_1E4A68988(v12, v15);
      sub_1E4A68988(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E4A9D0FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA320();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WKAnimationPackageLayer(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = sub_1E4AA9FE0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *v1;
  v48 = *(v1 + 8);
  if (![*(*(v1 + 168) + 16) valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
  {
    goto LABEL_6;
  }

  v45 = v3;
  v50 = v7;
  v22 = v6;
  v23 = a1;
  sub_1E4A57768(&v52);
  swift_unknownObjectRelease();
  v24 = *(&v53 + 1);
  v25 = v54;
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  (*(v25 + 24))(&v62, v24, v25);
  v26 = v62;
  v27 = v63;
  __swift_destroy_boxed_opaque_existential_1Tm(&v52);
  if (v27 != 5)
  {
    sub_1E4A4EF3C(v26, v27);
    a1 = v23;
    v6 = v22;
    v7 = v50;
LABEL_6:
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_7:
    sub_1E4A480C4(v17);
    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  v28 = [v26[2] backgroundAnimationFileURL];
  if (v28)
  {
    v29 = v28;
    sub_1E4AA9FC0();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  a1 = v23;
  v6 = v22;
  (*(v19 + 56))(v15, v30, 1, v18);
  sub_1E4A4EF94(v15, v17);
  sub_1E4A4EF3C(v26, 5u);
  v32 = (*(v19 + 48))(v17, 1, v18);
  v7 = v50;
  v33 = v45;
  if (v32 == 1)
  {
    goto LABEL_7;
  }

  v34 = v51;
  (*(v19 + 32))(v51, v17, v18);
  (*(v19 + 16))(&v10[v6[7]], v34, v18);
  if (v48)
  {
    v35 = v49;
    v62 = v49;
  }

  else
  {

    sub_1E4AAAA10();
    v36 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v37 = v46;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v47 + 8))(v37, v33);
    v35 = v62;
  }

  swift_getKeyPath();
  *&v52 = v35;
  sub_1E4A4F11C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  (*(v19 + 8))(v51, v18);
  v38 = v35[22];

  *&v52 = swift_getKeyPath();
  sub_1E4A4E620(&v52);
  v39 = v59;
  *(v10 + 6) = v58;
  *(v10 + 7) = v39;
  *(v10 + 8) = v60;
  v10[144] = v61;
  v40 = v55;
  *(v10 + 2) = v54;
  *(v10 + 3) = v40;
  v41 = v57;
  *(v10 + 4) = v56;
  *(v10 + 5) = v41;
  v42 = v53;
  *v10 = v52;
  *(v10 + 1) = v42;
  v43 = v6[5];
  *&v10[v43] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  swift_storeEnumTagMultiPayload();
  v10[v6[6]] = 0;
  *&v10[v6[8]] = v38;
  sub_1E4A4F004(v10, a1);
  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t WKLayeredThumbnailWallpaperInput.init(backgroundThumbnailImageURL:foregroundThumbnailImageURL:floatingThumbnailImageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v21 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  sub_1E4A48054(a1, &v21 - v16);
  sub_1E4A48054(a2, v15);
  sub_1E4A48054(a3, v12);
  v18 = objc_allocWithZone(WKLayeredThumbnailWallpaperInput);
  v19 = sub_1E4A9DA28(v17, v15, v12);
  sub_1E4A480C4(a3);
  sub_1E4A480C4(a2);
  sub_1E4A480C4(a1);
  type metadata accessor for WKLayeredThumbnailWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v19;
  *a4 = result;
  return result;
}

uint64_t WKLayeredThumbnailWallpaperInput.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredThumbnailWallpaperInput.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKLayeredThumbnailWallpaperInput.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

id sub_1E4A9DA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E4AA9FE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = 0;
  if (v10(a1, 1, v8) != 1)
  {
    v11 = sub_1E4AA9FA0();
    (*(v9 + 8))(a1, v8);
  }

  if (v10(a2, 1, v8) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1E4AA9FA0();
    (*(v9 + 8))(a2, v8);
  }

  if (v10(a3, 1, v8) == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1E4AA9FA0();
    (*(v9 + 8))(a3, v8);
  }

  v14 = [v4 initWithBackgroundThumbnailImageURL:v11 foregroundThumbnailImageURL:v12 floatingThumbnailImageURL:v13];

  return v14;
}

unint64_t sub_1E4A9DC04()
{
  result = qword_1ECF8EBE8;
  if (!qword_1ECF8EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EBE8);
  }

  return result;
}

void sub_1E4A9DC68(CGFloat a1, double a2, double a3, double a4)
{
  v7 = a3 >= 0.0;
  if (a3 > 1.0)
  {
    v7 = 0;
  }

  v8 = a4 >= 0.0;
  if (a4 > 1.0)
  {
    v8 = 0;
  }

  v9 = v7 && v8;
  if (!v7 || !v8)
  {
    goto LABEL_10;
  }

  if (a1 <= 0.0)
  {
    goto LABEL_10;
  }

  if (a2 <= 0.0)
  {
    goto LABEL_10;
  }

  v10 = *&a1 & 0x7FF0000000000000;
  if ((*&a1 & 0xFFFFFFFFFFFFFLL) == 0 && v10 == 0x7FF0000000000000)
  {
    goto LABEL_10;
  }

  v19 = v10 != 0x7FF0000000000000 || (*&a1 & 0xFFFFFFFFFFFFFLL) == 0;
  v20 = v19;
  if (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v20 || ([v4 bounds], (sub_1E4A7C788(v23, v24, v25, v26)) || (objc_msgSend(v4, sel_bounds), sub_1E4A7C720(v27, v28, v29, v30)) || (objc_msgSend(v4, sel_bounds), v64.origin.x = 0.0, v64.origin.y = 0.0, v64.size.width = 0.0, v64.size.height = 0.0, CGRectEqualToRect(v61, v64)))
  {
LABEL_10:
    if (qword_1EE0424D0 != -1)
    {
      swift_once();
    }

    v11 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v11, qword_1EE048BA0);
    v56 = v4;
    v12 = sub_1E4AAA0C0();
    v13 = sub_1E4AAAA00();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      v17 = (*&a1 & 0xFFFFFFFFFFFFFLL) == 0;
      if ((*&a1 & 0x7FF0000000000000) != 0x7FF0000000000000)
      {
        v17 = 0;
      }

      *v14 = 67241474;
      *&v59.a = v15;
      *(v14 + 4) = v9;
      *(v14 + 8) = 1026;
      if (fabs(a2) == INFINITY)
      {
        v17 = 1;
      }

      *(v14 + 10) = v17;
      *(v14 + 14) = 1026;
      if ((*&a1 & 0x7FF0000000000000) == 0x7FF0000000000000 && (*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v18 = 1;
      }

      else
      {
        v18 = (*&a2 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&a2 & 0x7FF0000000000000) == 0;
      }

      *(v14 + 16) = v18;
      *(v14 + 20) = 1026;
      [v56 bounds];
      v44 = fabs(v43) == INFINITY;
      if (fabs(v45) == INFINITY)
      {
        v44 = 1;
      }

      if (fabs(v41) == INFINITY)
      {
        v44 = 1;
      }

      if (fabs(v42) == INFINITY)
      {
        v44 = 1;
      }

      *(v14 + 22) = v44;
      *(v14 + 26) = 1026;
      [v56 bounds];
      if ((~v46 & 0x7FF0000000000000) != 0 || (v46 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v51 = v56;
        if (((~v47 & 0x7FF0000000000000) != 0 || (v47 & 0xFFFFFFFFFFFFFLL) == 0) && ((~v48 & 0x7FF0000000000000) != 0 || (v48 & 0xFFFFFFFFFFFFFLL) == 0))
        {
          v50 = (~v49 & 0x7FF0000000000000) == 0;
          if ((v49 & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v50 = 0;
          }
        }

        else
        {
          v50 = 1;
        }
      }

      else
      {
        v50 = 1;
        v51 = v56;
      }

      *(v14 + 28) = v50;

      *(v14 + 32) = 2082;
      v52 = sub_1E4AAAAB0();
      v54 = sub_1E4A85938(v52, v53, &v59);

      *(v14 + 34) = v54;
      _os_log_impl(&dword_1E4A23000, v12, v13, "Not applying transform (anchorPoint.isUnitPoint: %{BOOL,public}d, scale.hasInfComponents: %{BOOL,public}d, scale.hasNaNComponents: %{BOOL,public}d, bounds.hasInfComponents: %{BOOL,public}d, bounds.hasNaNComponents: %{BOOL,public}d, scale: %{public}s.", v14, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E691FE80](v16, -1, -1);
      v40 = v14;
      goto LABEL_60;
    }
  }

  else
  {
    v31 = [v4 layer];
    [v31 setAnchorPoint_];

    [v4 bounds];
    v32 = 1.0 / a1 * (a3 + -0.5) * CGRectGetWidth(v62);
    [v4 bounds];
    v33 = 1.0 / a2 * (a4 + -0.5) * CGRectGetHeight(v63);
    CGAffineTransformMakeScale(&v59, a1, a2);
    CGAffineTransformTranslate(&v58, &v59, v32, v33);
    v55 = *&v58.a;
    *v57 = *&v58.c;
    v59 = v58;
    tx = v58.tx;
    ty = v58.ty;
    v36 = sub_1E4A7C878();
    if (v36 || sub_1E4A7C7E0())
    {
      if (qword_1EE0424D0 != -1)
      {
        swift_once();
      }

      v37 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v37, qword_1EE048BA0);
      v12 = sub_1E4AAA0C0();
      v38 = sub_1E4AAAA00();
      if (!os_log_type_enabled(v12, v38))
      {
        goto LABEL_61;
      }

      v39 = swift_slowAlloc();
      *v39 = 67240448;
      *(v39 + 4) = v36;
      *(v39 + 8) = 1026;
      *(v39 + 10) = sub_1E4A7C7E0();
      _os_log_impl(&dword_1E4A23000, v12, v38, "Not applying transform (hasInfComponents: %{BOOL,public}d, hasNaNComponents: %{BOOL,public}d).", v39, 0xEu);
      v40 = v39;
LABEL_60:
      MEMORY[0x1E691FE80](v40, -1, -1);
LABEL_61:

      return;
    }

    *&v58.a = v55;
    *&v58.c = *v57;
    v58.tx = tx;
    v58.ty = ty;
    [v4 setTransform_];
  }
}

void *sub_1E4A9E228(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1E4A9E29C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1E4A9E2CC(unsigned __int8 a1)
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B58);
  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136446210;
    v7 = 0x80000001E4ABA040;
    v8 = 0xD000000000000014;
    if (a1 == 2)
    {
      v8 = 0xD000000000000015;
    }

    else
    {
      v7 = 0x80000001E4ABA020;
    }

    v9 = 0x80000001E4ABA060;
    v10 = 0xD000000000000016;
    if (a1)
    {
      v10 = 0x6552726574736F70;
      v9 = 0xEF676E697265646ELL;
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (a1 <= 1u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v7;
    }

    v13 = sub_1E4A85938(v11, v12, &v22);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_1E4A23000, v3, v4, "Invalidating '%{public}s' render extension.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  else
  {
  }

  v14 = 0x80000001E4ABA040;
  if (a1 == 2)
  {
    v15 = 0xD000000000000015;
  }

  else
  {
    v15 = 0xD000000000000014;
  }

  if (a1 != 2)
  {
    v14 = 0x80000001E4ABA020;
  }

  v16 = 0x80000001E4ABA060;
  v17 = 0xD000000000000016;
  if (a1)
  {
    v17 = 0x6552726574736F70;
    v16 = 0xEF676E697265646ELL;
  }

  if (a1 <= 1u)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  if (a1 <= 1u)
  {
    v19 = v16;
  }

  else
  {
    v19 = v14;
  }

  swift_beginAccess();
  v20 = sub_1E4A9EE1C(v18, v19);
  swift_endAccess();

  if (v20)
  {
    [v20 wk_invalidate];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E4A9E588(unsigned __int8 a1, void *a2)
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v50 = v2;
  v5 = sub_1E4AAA0E0();
  v45 = __swift_project_value_buffer(v5, qword_1EE048B58);
  v6 = sub_1E4AAA0C0();
  v7 = sub_1E4AAAA20();
  if (os_log_type_enabled(v6, v7))
  {
    v48 = a2;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v52[0] = v9;
    *v8 = 136446210;
    v46 = a1;
    v10 = 0x80000001E4ABA040;
    if (a1 == 2)
    {
      v11 = 0xD000000000000015;
    }

    else
    {
      v11 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v10 = 0x80000001E4ABA020;
    }

    v12 = 0x80000001E4ABA060;
    v13 = 0xD000000000000016;
    if (a1)
    {
      v13 = 0x6552726574736F70;
      v12 = 0xEF676E697265646ELL;
    }

    if (a1 <= 1u)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    if (a1 <= 1u)
    {
      v15 = v12;
    }

    else
    {
      v15 = v10;
    }

    v16 = sub_1E4A85938(v14, v15, v52);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_1E4A23000, v6, v7, "Extending Rendering for reason '%{public}s'.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E691FE80](v9, -1, -1);
    MEMORY[0x1E691FE80](v8, -1, -1);

    a2 = v48;
    a1 = v46;
  }

  else
  {
  }

  v17 = 0x80000001E4ABA040;
  if (a1 == 2)
  {
    v18 = 0xD000000000000015;
  }

  else
  {
    v18 = 0xD000000000000014;
  }

  if (a1 != 2)
  {
    v17 = 0x80000001E4ABA020;
  }

  v19 = 0x80000001E4ABA060;
  v20 = 0xD000000000000016;
  if (a1)
  {
    v20 = 0x6552726574736F70;
    v19 = 0xEF676E697265646ELL;
  }

  if (a1 <= 1u)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  if (a1 <= 1u)
  {
    v22 = v19;
  }

  else
  {
    v22 = v17;
  }

  swift_beginAccess();
  v23 = sub_1E4A9EE1C(v21, v22);
  swift_endAccess();

  if (v23)
  {
    v24 = sub_1E4AAA0C0();
    v25 = sub_1E4AAAA20();
    if (os_log_type_enabled(v24, v25))
    {
      v49 = a2;
      v26 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v52[0] = v45;
      *v26 = 136446210;
      v47 = a1;
      v27 = 0x80000001E4ABA040;
      if (a1 == 2)
      {
        v28 = 0xD000000000000015;
      }

      else
      {
        v28 = 0xD000000000000014;
      }

      if (a1 != 2)
      {
        v27 = 0x80000001E4ABA020;
      }

      v29 = 0x80000001E4ABA060;
      v30 = 0xD000000000000016;
      if (a1)
      {
        v30 = 0x6552726574736F70;
        v29 = 0xEF676E697265646ELL;
      }

      if (a1 <= 1u)
      {
        v31 = v30;
      }

      else
      {
        v31 = v28;
      }

      if (a1 <= 1u)
      {
        v32 = v29;
      }

      else
      {
        v32 = v27;
      }

      v33 = sub_1E4A85938(v31, v32, v52);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_1E4A23000, v24, v25, "Invalidating existing '%{public}s' render extension.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1E691FE80](v45, -1, -1);
      MEMORY[0x1E691FE80](v26, -1, -1);

      a2 = v49;
      a1 = v47;
    }

    else
    {
    }

    [v23 wk_invalidate];
    swift_unknownObjectRelease();
  }

  v34 = 0x80000001E4ABA040;
  if (a1 == 2)
  {
    v35 = 0xD000000000000015;
  }

  else
  {
    v34 = 0x80000001E4ABA020;
    v35 = 0xD000000000000014;
  }

  v36 = 0x80000001E4ABA060;
  v37 = 0xD000000000000016;
  if (a1)
  {
    v36 = 0xEF676E697265646ELL;
    v37 = 0x6552726574736F70;
  }

  if (a1 <= 1u)
  {
    v38 = v36;
  }

  else
  {
    v38 = v34;
  }

  if (a1 <= 1u)
  {
    v39 = v37;
  }

  else
  {
    v39 = v35;
  }

  v40 = sub_1E4AAA870();

  v41 = [a2 wk:v40 extendRenderSessionForReason:?];

  swift_beginAccess();
  v42 = *(v50 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(v50 + 16);
  *(v50 + 16) = 0x8000000000000000;
  sub_1E4A95708(v41, v39, v38, isUniquelyReferenced_nonNull_native);

  *(v50 + 16) = v51;
  return swift_endAccess();
}

uint64_t sub_1E4A9EAA0()
{
  v1 = v0;
  if (qword_1EE0424A8 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B58);
  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E4A23000, v3, v4, "Invalidating all extensions.", v5, 2u);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = *(v1 + 16);
  swift_bridgeObjectRetain_n();
  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_12:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      [*(*(v6 + 56) + ((v13 << 9) | (8 * v14))) wk_invalidate];
      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_12;
    }
  }

  v15 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t sub_1E4A9EC74()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1E4A9ECD0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_1E4A8F2E0(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1E4A9EF5C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1E4A679D8();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1E4AAAC90();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1E4AAAC80();
  v8 = sub_1E4A950AC(v4, v7);

  v9 = sub_1E4A8F2E0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1E4A9EF5C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1E4A9EE1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1E4A55B0C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1E4A680B8();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1E4A9F0E8(v7, v10);
  *v3 = v10;
  return v12;
}

double sub_1E4A9EEB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1E4A9308C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4A6822C();
      v11 = v13;
    }

    sub_1E4A2732C((*(v11 + 56) + 40 * v8), a2);
    sub_1E4A9F298(v8, v11);
    *v3 = v11;
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

void sub_1E4A9EF5C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E4AAAB60() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1E4AAAAC0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_1E4A9F0E8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E4AAAB60() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1E4AAAE00();

      sub_1E4AAA8C0();
      v13 = sub_1E4AAAE40();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1E4A9F298(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E4AAAB60() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      sub_1E4AAA8A0();
      sub_1E4AAAE00();
      v13 = v12;
      sub_1E4AAA8C0();
      v14 = sub_1E4AAAE40();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 40 * v3;
        v21 = (v19 + 40 * v6);
        if (v3 != v6 || v20 >= v21 + 40)
        {
          v9 = *v21;
          v10 = v21[1];
          *(v20 + 32) = *(v21 + 4);
          *v20 = v9;
          *(v20 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

uint64_t WKWallpaperPreviewImage.init(wallpaperRepresenting:previewStyle:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for WKWallpaperPreviewImage();
  v7 = a3 + v6[5];
  *v7 = swift_getKeyPath();
  *(v7 + 1) = 0;
  v7[16] = 0;
  result = sub_1E4A2732C(a1, a3 + v6[6]);
  *(a3 + v6[7]) = v5;
  return result;
}

__n128 sub_1E4A9F518@<Q0>(_OWORD *a1@<X8>)
{
  sub_1E4A53380();
  sub_1E4AAA330();
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E4A9F588(_OWORD *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  v16 = a1[6];
  v17 = v2;
  v3 = a1[7];
  v18 = a1[8];
  v4 = a1[1];
  v5 = a1[3];
  v12 = a1[2];
  v13 = v5;
  v6 = a1[3];
  v7 = a1[5];
  v14 = a1[4];
  v15 = v7;
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  v10[15] = v16;
  v10[16] = v3;
  v10[17] = a1[8];
  v10[11] = v12;
  v10[12] = v6;
  v10[13] = v14;
  v10[14] = v1;
  v10[9] = v11[0];
  v10[10] = v4;
  sub_1E4A49D24(v11, v10);
  sub_1E4A53380();
  return sub_1E4AAA340();
}

uint64_t sub_1E4A9F64C(uint64_t a1)
{
  v2 = sub_1E4AAA1C0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E4AAA2D0();
}

uint64_t type metadata accessor for WKWallpaperPreviewImage()
{
  result = qword_1EE043F70;
  if (!qword_1EE043F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

WallpaperKit::WKWallpaperPreviewImage::PreviewStyle_optional __swiftcall WKWallpaperPreviewImage.PreviewStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E4AAAD20();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WKWallpaperPreviewImage.PreviewStyle.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 1819047270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6854656C646E7562;
  }
}

uint64_t sub_1E4A9F82C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000001E4AB8570;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001E4AB8570;
  }

  else
  {
    v3 = 1819047270;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6854656C646E7562;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEF6C69616E626D75;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 1819047270;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6854656C646E7562;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEF6C69616E626D75;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E4AAADA0();
  }

  return v11 & 1;
}

uint64_t sub_1E4A9F920()
{
  v1 = *v0;
  sub_1E4AAAE00();
  sub_1E4AAA8C0();

  return sub_1E4AAAE40();
}

uint64_t sub_1E4A9F9CC()
{
  *v0;
  *v0;
  sub_1E4AAA8C0();
}

uint64_t sub_1E4A9FA64()
{
  v1 = *v0;
  sub_1E4AAAE00();
  sub_1E4AAA8C0();

  return sub_1E4AAAE40();
}

void sub_1E4A9FB18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6C69616E626D75;
  v4 = 0x80000001E4AB8570;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 1819047270;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6854656C646E7562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t WKWallpaperPreviewImage.previewStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WKWallpaperPreviewImage();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t WKWallpaperPreviewImage.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v29 = sub_1E4AAA470();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC50, &qword_1E4AB45F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC58, &qword_1E4AB45F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC60, &qword_1E4AB4600);
  v16 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v18 = &v28 - v17;
  sub_1E4A9FF4C(v2, v10);
  sub_1E4AAA460();
  v19 = sub_1E4AA202C();
  sub_1E4AAA590();
  (*(v3 + 8))(v6, v29);
  sub_1E4A4DC88(v10, &qword_1ECF8EC50, &qword_1E4AB45F0);
  v32 = 0x455041504C4C4157;
  v33 = 0xEA00000000005F52;
  v20 = (v2 + *(type metadata accessor for WKWallpaperPreviewImage() + 24));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v23 = (*(v22 + 48))(v21, v22);
  MEMORY[0x1E691ECA0](v23);

  v32 = v7;
  v33 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1E4AAA570();

  (*(v12 + 8))(v15, v11);
  v24 = v20[3];
  v25 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v24);
  v32 = (*(v25 + 56))(v24, v25);
  v33 = v26;
  sub_1E4A5575C();
  sub_1E4AAA280();

  return sub_1E4A26B58(v18);
}

uint64_t sub_1E4A9FF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ECE8, &qword_1E4AB4808);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v55 = v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ECF0, &qword_1E4AB4810);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v53 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC70, &qword_1E4AB4610);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v13 = v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC78, &qword_1E4AB4618);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v53 - v16);
  v18 = type metadata accessor for WKWallpaperPreviewImage();
  v19 = *(a1 + *(v18 + 28));
  v53[3] = v4;
  if (!v19)
  {
    sub_1E4AA09AC(a1, v61);
    v30 = v17 + *(v14 + 36);
    sub_1E4AA0C38(v30);
    v31 = sub_1E4AAA6E0();
    v33 = v32;
    v34 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC90, &qword_1E4AB4630) + 36));
    *v34 = v31;
    v34[1] = v33;
    v35 = v61[3];
    v17[2] = v61[2];
    v17[3] = v35;
    v36 = v61[1];
    *v17 = v61[0];
    v17[1] = v36;
    v37 = v61[7];
    v17[6] = v61[6];
    v17[7] = v37;
    v38 = v61[5];
    v17[4] = v61[4];
    v17[5] = v38;
    *(v17 + 169) = *(&v61[10] + 9);
    v39 = v61[10];
    v40 = v61[8];
    v17[9] = v61[9];
    v17[10] = v39;
    v17[8] = v40;
    sub_1E4A52D40(v17, v10, &qword_1ECF8EC78, &qword_1E4AB4618);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC98, &qword_1E4AB4638);
    sub_1E4AA21BC();
    sub_1E4AA2324(&qword_1EE042310, &qword_1ECF8EC98, &qword_1E4AB4638, sub_1E4AA23A0);
    sub_1E4AAA430();
    sub_1E4A52D40(v13, v55, &qword_1ECF8EC70, &qword_1E4AB4610);
    swift_storeEnumTagMultiPayload();
    sub_1E4AA20DC();
    sub_1E4AAA430();
    sub_1E4A4DC88(v13, &qword_1ECF8EC70, &qword_1E4AB4610);
    return sub_1E4A4DC88(v17, &qword_1ECF8EC78, &qword_1E4AB4618);
  }

  v53[1] = v7;
  v53[2] = a2;
  if (v19 == 1)
  {
    v20 = (a1 + *(v18 + 24));
    v22 = v20[3];
    v21 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v22);
    if ((*(v21 + 120))(@"WKWallpaperLocationCoverSheet", v22, v21) && (v23 = v20[3], v24 = v20[4], __swift_project_boxed_opaque_existential_1(v20, v23), (sub_1E4A7E224(v23, v24) & 1) == 0))
    {
      v49 = v20[3];
      v50 = v20[4];
      __swift_project_boxed_opaque_existential_1(v20, v49);
      if ((sub_1E4A7DFFC(v49, v50) & 1) == 0)
      {
        sub_1E4AA2934(v61);
        goto LABEL_7;
      }

      sub_1E4AA115C(v58);
      memcpy(v59, v58, 0x260uLL);
      sub_1E4AA2964(v59);
    }

    else
    {
      sub_1E4A4D9A0(v20, v61);
      KeyPath = swift_getKeyPath();
      v60[0] = 0;
      *&v58[0] = swift_getKeyPath();
      sub_1E4A4E620(v58);
      *&v56[103] = v58[6];
      *&v56[119] = v58[7];
      *&v56[135] = v58[8];
      *&v56[39] = v58[2];
      *&v56[55] = v58[3];
      *&v56[71] = v58[4];
      *&v56[87] = v58[5];
      *&v56[7] = v58[0];
      v56[151] = v58[9];
      *&v56[23] = v58[1];
      v26 = swift_allocObject();
      sub_1E4A2732C(v61, v26 + 16);
      *(&v59[13] + 1) = *&v56[96];
      *(&v59[15] + 1) = *&v56[112];
      *(&v59[17] + 1) = *&v56[128];
      *(&v59[5] + 1) = *&v56[32];
      *(&v59[7] + 1) = *&v56[48];
      *(&v59[9] + 1) = *&v56[64];
      *(&v59[11] + 1) = *&v56[80];
      v27 = *&v56[16];
      *(&v59[1] + 1) = *v56;
      *(v26 + 56) = 1;
      v59[0] = KeyPath;
      LOBYTE(v59[1]) = v60[0];
      *(&v59[19] + 1) = *&v56[144];
      *(&v59[3] + 1) = v27;
      v59[21] = sub_1E4AA2C50;
      v59[22] = v26;
      LOBYTE(v59[23]) = 0;
      sub_1E4AA2970(v59);
    }

    memcpy(v60, v59, 0x261uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ECA8, &qword_1E4AB4648);
    sub_1E4A592BC();
    sub_1E4AA2324(&qword_1EE0439F0, &qword_1ECF8ECA8, &qword_1E4AB4648, sub_1E4AA2458);
    sub_1E4AAA430();
    memcpy(v60, v61, 0x261uLL);
    nullsub_1(v60);
    memcpy(v61, v60, 0x261uLL);
LABEL_7:
    v28 = v55;
    memcpy(v10, v61, 0x261uLL);
    swift_storeEnumTagMultiPayload();
    sub_1E4A52D40(v61, v60, &qword_1ECF8EC98, &qword_1E4AB4638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC98, &qword_1E4AB4638);
    sub_1E4AA21BC();
    sub_1E4AA2324(&qword_1EE042310, &qword_1ECF8EC98, &qword_1E4AB4638, sub_1E4AA23A0);
    sub_1E4AAA430();
    sub_1E4A52D40(v13, v28, &qword_1ECF8EC70, &qword_1E4AB4610);
    swift_storeEnumTagMultiPayload();
    sub_1E4AA20DC();
    sub_1E4AAA430();
    sub_1E4A4DC88(v61, &qword_1ECF8EC98, &qword_1E4AB4638);
    return sub_1E4A4DC88(v13, &qword_1ECF8EC70, &qword_1E4AB4610);
  }

  v41 = (a1 + *(v18 + 24));
  v42 = v41[3];
  v43 = v41[4];
  __swift_project_boxed_opaque_existential_1(v41, v42);
  if ((*(v43 + 120))(@"WKWallpaperLocationCoverSheet", v42, v43) && (v44 = v41[3], v45 = v41[4], __swift_project_boxed_opaque_existential_1(v41, v44), (sub_1E4A7E224(v44, v45) & 1) == 0))
  {
    v51 = v41[3];
    v52 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v51);
    if ((sub_1E4A7DFFC(v51, v52) & 1) == 0)
    {
      sub_1E4AA2934(v61);
      goto LABEL_13;
    }

    sub_1E4AA1874(v58);
    memcpy(v59, v58, 0x260uLL);
    sub_1E4AA2964(v59);
  }

  else
  {
    sub_1E4A4D9A0(v41, v61);
    v46 = swift_getKeyPath();
    v60[0] = 0;
    *&v58[0] = swift_getKeyPath();
    sub_1E4A4E620(v58);
    *&v57[103] = v58[6];
    *&v57[119] = v58[7];
    *&v57[135] = v58[8];
    *&v57[39] = v58[2];
    *&v57[55] = v58[3];
    *&v57[71] = v58[4];
    *&v57[87] = v58[5];
    *&v57[7] = v58[0];
    v57[151] = v58[9];
    *&v57[23] = v58[1];
    v47 = swift_allocObject();
    sub_1E4A2732C(v61, v47 + 16);
    *(&v59[13] + 1) = *&v57[96];
    *(&v59[15] + 1) = *&v57[112];
    *(&v59[17] + 1) = *&v57[128];
    *(&v59[5] + 1) = *&v57[32];
    *(&v59[7] + 1) = *&v57[48];
    *(&v59[9] + 1) = *&v57[64];
    *(&v59[11] + 1) = *&v57[80];
    v48 = *&v57[16];
    *(&v59[1] + 1) = *v57;
    *(v47 + 56) = 5;
    v59[0] = v46;
    LOBYTE(v59[1]) = v60[0];
    *(&v59[19] + 1) = *&v57[144];
    *(&v59[3] + 1) = v48;
    v59[21] = sub_1E4A592B0;
    v59[22] = v47;
    LOBYTE(v59[23]) = 0;
    sub_1E4AA2970(v59);
  }

  memcpy(v60, v59, 0x261uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ECA8, &qword_1E4AB4648);
  sub_1E4A592BC();
  sub_1E4AA2324(&qword_1EE0439F0, &qword_1ECF8ECA8, &qword_1E4AB4648, sub_1E4AA2458);
  sub_1E4AAA430();
  memcpy(v60, v61, 0x261uLL);
  nullsub_1(v60);
  memcpy(v61, v60, 0x261uLL);
LABEL_13:
  memcpy(v55, v61, 0x261uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC98, &qword_1E4AB4638);
  sub_1E4AA20DC();
  sub_1E4AA2324(&qword_1EE042310, &qword_1ECF8EC98, &qword_1E4AB4638, sub_1E4AA23A0);
  return sub_1E4AAA430();
}

double sub_1E4AA09AC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WKWallpaperPreviewImage() + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  if (!(*(v5 + 120))(@"WKWallpaperLocationCoverSheet", v4, v5) || (v6 = v3[3], v7 = v3[4], __swift_project_boxed_opaque_existential_1(v3, v6), (sub_1E4A7DFFC(v6, v7) & 1) != 0) || (v8 = v3[3], v9 = v3[4], __swift_project_boxed_opaque_existential_1(v3, v8), (sub_1E4A7E224(v8, v9) & 1) != 0))
  {
    sub_1E4A4D9A0(v3, &v23);
    KeyPath = swift_getKeyPath();
    v22[0] = 0;
    *&v20[0] = swift_getKeyPath();
    sub_1E4A4E620(v20);
    *&v19[103] = v20[6];
    *&v19[119] = v20[7];
    *&v19[135] = v20[8];
    *&v19[39] = v20[2];
    *&v19[55] = v20[3];
    *&v19[71] = v20[4];
    *&v19[87] = v20[5];
    *&v19[7] = v20[0];
    v19[151] = v21;
    *&v19[23] = v20[1];
    v11 = swift_allocObject();
    sub_1E4A2732C(&v23, v11 + 16);
    *&v22[105] = *&v19[96];
    *&v22[121] = *&v19[112];
    *&v22[137] = *&v19[128];
    *&v22[41] = *&v19[32];
    *&v22[57] = *&v19[48];
    *&v22[73] = *&v19[64];
    *&v22[89] = *&v19[80];
    *&v22[9] = *v19;
    *(v11 + 56) = 0;
    v12 = v22[0];
    *v22 = KeyPath;
    v22[8] = v12;
    *&v22[153] = *&v19[144];
    *&v22[25] = *&v19[16];
    *&v22[168] = sub_1E4AA2C50;
    *&v22[176] = v11;
    v22[184] = 0;
    nullsub_1(v22);
    v31 = *&v22[128];
    v32 = *&v22[144];
    v33[0] = *&v22[160];
    *(v33 + 9) = *&v22[169];
    v27 = *&v22[64];
    v28 = *&v22[80];
    v29 = *&v22[96];
    v30 = *&v22[112];
    v23 = *v22;
    v24 = *&v22[16];
    v25 = *&v22[32];
    v26 = *&v22[48];
  }

  else
  {
    sub_1E4AA2C10(&v23);
  }

  v13 = v32;
  a2[8] = v31;
  a2[9] = v13;
  a2[10] = v33[0];
  *(a2 + 169) = *(v33 + 9);
  v14 = v28;
  a2[4] = v27;
  a2[5] = v14;
  v15 = v30;
  a2[6] = v29;
  a2[7] = v15;
  v16 = v24;
  *a2 = v23;
  a2[1] = v16;
  result = *&v25;
  v18 = v26;
  a2[2] = v25;
  a2[3] = v18;
  return result;
}

uint64_t sub_1E4AA0C38@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ECF8, &qword_1E4AB4870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - v4;
  v6 = sub_1E4AAA610();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED00, &qword_1E4AB4878);
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v36 - v13;
  v14 = type metadata accessor for WKWallpaperPreviewImage();
  v15 = (v1 + *(v14 + 24));
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  if ((*(v17 + 32))(v16, v17))
  {
    if (*(v1 + *(v14 + 28)))
    {
      v18 = sub_1E4AAADA0();

      if ((v18 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    sub_1E4AAA630();
    (*(v7 + 104))(v10, *MEMORY[0x1E6981630], v6);
    sub_1E4AAA650();

    (*(v7 + 8))(v10, v6);
    v23 = *MEMORY[0x1E6981698];
    v24 = sub_1E4AAA640();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v5, v23, v24);
    (*(v25 + 56))(v5, 0, 1, v24);
    v26 = sub_1E4AAA620();

    sub_1E4A4DC88(v5, &qword_1ECF8ECF8, &qword_1E4AB4870);
    v27 = sub_1E4AAA5F0();
    KeyPath = swift_getKeyPath();
    sub_1E4AAA6F0();
    sub_1E4AAA230();
    v29 = sub_1E4AAA4F0();
    sub_1E4AAA1A0();
    *(v41 + 8) = v46;
    v45 = 0;
    *&v40 = v26;
    *(&v40 + 1) = KeyPath;
    *&v41[0] = v27;
    *(&v41[1] + 8) = v47;
    *(&v41[2] + 8) = v48;
    BYTE8(v41[3]) = v29;
    *&v42 = v30;
    *(&v42 + 1) = v31;
    *&v43 = v32;
    *(&v43 + 1) = v33;
    v44 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED08, &qword_1E4AB48B0);
    sub_1E4AA29D0();
    v34 = v36;
    sub_1E4AAA570();
    v49[4] = v41[3];
    v49[5] = v42;
    v49[6] = v43;
    v50 = v44;
    v49[0] = v40;
    v49[1] = v41[0];
    v49[2] = v41[1];
    v49[3] = v41[2];
    sub_1E4A4DC88(v49, &qword_1ECF8ED08, &qword_1E4AB48B0);
    v35 = v39;
    sub_1E4AA2BA0(v34, v39);
    return (*(v37 + 56))(v35, 0, 1, v38);
  }

LABEL_4:
  v19 = v38;
  v20 = *(v37 + 56);
  v21 = v39;

  return v20(v21, 1, 1, v19);
}

void *sub_1E4AA115C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WKWallpaperPreviewImage() + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  if (sub_1E4A7DFFC(v4, v5))
  {
    sub_1E4A4D9A0(v3, __dst);
    KeyPath = swift_getKeyPath();
    LOBYTE(__src[0]) = 0;
    *&v24[0] = swift_getKeyPath();
    sub_1E4A4E620(v24);
    *&v22[103] = v24[6];
    *&v22[119] = v24[7];
    *&v22[135] = v24[8];
    *&v22[39] = v24[2];
    *&v22[55] = v24[3];
    *&v22[71] = v24[4];
    *&v22[87] = v24[5];
    *&v22[7] = v24[0];
    v22[151] = v25;
    *&v22[23] = v24[1];
    v19 = swift_allocObject();
    sub_1E4A2732C(__dst, v19 + 16);
    *(v19 + 56) = 3;
    LOBYTE(v72) = 0;
    v17 = __src[0];
    v6 = sub_1E4AAA6F0();
    v8 = v7;
    sub_1E4A4D9A0(v3, __dst);
    v9 = swift_getKeyPath();
    LOBYTE(v54) = 0;
    *&v26[0] = swift_getKeyPath();
    sub_1E4A4E620(v26);
    *&v21[103] = v26[6];
    *&v21[119] = v26[7];
    *&v21[135] = v26[8];
    *&v21[39] = v26[2];
    *&v21[55] = v26[3];
    *&v21[71] = v26[4];
    *&v21[87] = v26[5];
    *&v21[7] = v26[0];
    v21[151] = v27;
    *&v21[23] = v26[1];
    v10 = swift_allocObject();
    sub_1E4A2732C(__dst, v10 + 16);
    *(v10 + 56) = 2;
    v51[0] = 0;
    *v28 = v9;
    v28[8] = v54;
    *&v28[105] = *&v21[96];
    *&v28[121] = *&v21[112];
    *&v28[137] = *&v21[128];
    *&v28[153] = *&v21[144];
    *&v28[41] = *&v21[32];
    *&v28[57] = *&v21[48];
    *&v28[73] = *&v21[64];
    *&v28[89] = *&v21[80];
    *&v28[9] = *v21;
    *&v28[25] = *&v21[16];
    *&v23[151] = *&v28[144];
    *&v23[87] = *&v28[80];
    *&v23[103] = *&v28[96];
    *&v23[119] = *&v28[112];
    *&v23[135] = *&v28[128];
    *&v23[23] = *&v28[16];
    *&v23[39] = *&v28[32];
    *&v23[55] = *&v28[48];
    *&v28[168] = sub_1E4AA2C50;
    *&v29 = v10;
    BYTE8(v29) = 0;
    *&v30 = v6;
    *(&v30 + 1) = v8;
    *&v23[71] = *&v28[64];
    *&v23[7] = *v28;
    *&v23[167] = *&v28[160];
    *&v23[183] = v29;
    *&v23[199] = v30;
    v39 = *&v21[96];
    v40 = *&v21[112];
    v41 = *&v21[128];
    v35 = *&v21[32];
    v36 = *&v21[48];
    v37 = *&v21[64];
    v38 = *&v21[80];
    v33 = *v21;
    v31 = v9;
    v32 = v54;
    v42 = *&v21[144];
    v34 = *&v21[16];
    v43 = sub_1E4AA2C50;
    v44 = v10;
    v45 = 0;
    v46 = v6;
    v47 = v8;
    sub_1E4A52D40(v28, __dst, &qword_1ECF8ECC0, &qword_1E4AB4660);
    sub_1E4A4DC88(&v31, &qword_1ECF8ECC0, &qword_1E4AB4660);
    v11 = sub_1E4AAA6F0();
    v13 = v12;
    sub_1E4A4D9A0(v3, __dst);
    v14 = swift_getKeyPath();
    LOBYTE(__src[0]) = 0;
    *&v48[0] = swift_getKeyPath();
    sub_1E4A4E620(v48);
    *&v20[103] = v48[6];
    *&v20[119] = v48[7];
    *&v20[135] = v48[8];
    *&v20[39] = v48[2];
    *&v20[55] = v48[3];
    *&v20[71] = v48[4];
    *&v20[87] = v48[5];
    *&v20[7] = v48[0];
    v20[151] = v49;
    *&v20[23] = v48[1];
    v15 = swift_allocObject();
    sub_1E4A2732C(__dst, v15 + 16);
    *(v15 + 56) = 4;
    *v51 = v14;
    v51[8] = __src[0];
    *&v51[105] = *&v20[96];
    *&v51[121] = *&v20[112];
    *&v51[137] = *&v20[128];
    *&v51[153] = *&v20[144];
    *&v51[41] = *&v20[32];
    *&v51[57] = *&v20[48];
    *&v51[73] = *&v20[64];
    *&v51[89] = *&v20[80];
    *&v51[9] = *v20;
    *&v51[25] = *&v20[16];
    *&v51[161] = *v50;
    *&v51[164] = *&v50[3];
    *&v51[168] = sub_1E4AA2C50;
    *&v52 = v15;
    BYTE8(v52) = 0;
    *&v53 = v11;
    *(&v53 + 1) = v13;
    v78 = *&v51[96];
    v79 = *&v51[112];
    v81 = *&v51[144];
    v80 = *&v51[128];
    v74 = *&v51[32];
    v75 = *&v51[48];
    v77 = *&v51[80];
    v76 = *&v51[64];
    v73 = *&v51[16];
    v72 = *v51;
    v84 = v53;
    v83 = v52;
    v82 = *&v51[160];
    v62 = *&v20[96];
    v63 = *&v20[112];
    v64 = *&v20[128];
    v58 = *&v20[32];
    v59 = *&v20[48];
    v60 = *&v20[64];
    v61 = *&v20[80];
    v56 = *v20;
    v54 = v14;
    v55 = __src[0];
    v65 = *&v20[144];
    v57 = *&v20[16];
    *v66 = *v50;
    *&v66[3] = *&v50[3];
    v67 = sub_1E4AA2C50;
    v68 = v15;
    v69 = 0;
    v70 = v11;
    v71 = v13;
    sub_1E4A52D40(v51, __dst, &qword_1ECF8ECC8, &qword_1E4AB4668);
    sub_1E4A4DC88(&v54, &qword_1ECF8ECC8, &qword_1E4AB4668);
    *&__src[0] = KeyPath;
    BYTE8(__src[0]) = v17;
    *(&__src[6] + 9) = *&v22[96];
    *(&__src[7] + 9) = *&v22[112];
    *(&__src[8] + 9) = *&v22[128];
    *(&__src[9] + 9) = *&v22[144];
    *(&__src[2] + 9) = *&v22[32];
    *(&__src[3] + 9) = *&v22[48];
    *(&__src[4] + 9) = *&v22[64];
    *(&__src[5] + 9) = *&v22[80];
    *(__src + 9) = *v22;
    *(&__src[1] + 9) = *&v22[16];
    *(&__src[22] + 9) = *&v23[176];
    *(&__src[23] + 9) = *&v23[192];
    *(&__src[18] + 9) = *&v23[112];
    *(&__src[19] + 9) = *&v23[128];
    *(&__src[20] + 9) = *&v23[144];
    *(&__src[21] + 9) = *&v23[160];
    *(&__src[16] + 9) = *&v23[80];
    *(&__src[17] + 9) = *&v23[96];
    *(&__src[13] + 9) = *&v23[32];
    *(&__src[10] + 1) = sub_1E4AA2C50;
    *&__src[11] = v19;
    BYTE8(__src[11]) = 0;
    *(&__src[24] + 1) = *&v23[207];
    *(&__src[14] + 9) = *&v23[48];
    *(&__src[15] + 9) = *&v23[64];
    *(&__src[11] + 9) = *v23;
    *(&__src[12] + 9) = *&v23[16];
    __src[35] = v82;
    __src[36] = v83;
    __src[37] = v84;
    __src[31] = v78;
    __src[32] = v79;
    __src[34] = v81;
    __src[33] = v80;
    __src[27] = v74;
    __src[28] = v75;
    __src[30] = v77;
    __src[29] = v76;
    __src[26] = v73;
    __src[25] = v72;
    nullsub_1(__src);
    memcpy(__dst, __src, 0x260uLL);
  }

  else
  {
    sub_1E4AA2C3C(__dst);
  }

  return memcpy(a1, __dst, 0x260uLL);
}

void *sub_1E4AA1874@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WKWallpaperPreviewImage() + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  if (sub_1E4A7DFFC(v4, v5))
  {
    sub_1E4A4D9A0(v3, __dst);
    KeyPath = swift_getKeyPath();
    LOBYTE(__src[0]) = 0;
    *&v24[0] = swift_getKeyPath();
    sub_1E4A4E620(v24);
    *&v22[103] = v24[6];
    *&v22[119] = v24[7];
    *&v22[135] = v24[8];
    *&v22[39] = v24[2];
    *&v22[55] = v24[3];
    *&v22[71] = v24[4];
    *&v22[87] = v24[5];
    *&v22[7] = v24[0];
    v22[151] = v25;
    *&v22[23] = v24[1];
    v19 = swift_allocObject();
    sub_1E4A2732C(__dst, v19 + 16);
    *(v19 + 56) = 7;
    LOBYTE(v72) = 0;
    v17 = __src[0];
    v6 = sub_1E4AAA6F0();
    v8 = v7;
    sub_1E4A4D9A0(v3, __dst);
    v9 = swift_getKeyPath();
    LOBYTE(v54) = 0;
    *&v26[0] = swift_getKeyPath();
    sub_1E4A4E620(v26);
    *&v21[103] = v26[6];
    *&v21[119] = v26[7];
    *&v21[135] = v26[8];
    *&v21[39] = v26[2];
    *&v21[55] = v26[3];
    *&v21[71] = v26[4];
    *&v21[87] = v26[5];
    *&v21[7] = v26[0];
    v21[151] = v27;
    *&v21[23] = v26[1];
    v10 = swift_allocObject();
    sub_1E4A2732C(__dst, v10 + 16);
    *(v10 + 56) = 6;
    v51[0] = 0;
    *v28 = v9;
    v28[8] = v54;
    *&v28[105] = *&v21[96];
    *&v28[121] = *&v21[112];
    *&v28[137] = *&v21[128];
    *&v28[153] = *&v21[144];
    *&v28[41] = *&v21[32];
    *&v28[57] = *&v21[48];
    *&v28[73] = *&v21[64];
    *&v28[89] = *&v21[80];
    *&v28[9] = *v21;
    *&v28[25] = *&v21[16];
    *&v23[151] = *&v28[144];
    *&v23[87] = *&v28[80];
    *&v23[103] = *&v28[96];
    *&v23[119] = *&v28[112];
    *&v23[135] = *&v28[128];
    *&v23[23] = *&v28[16];
    *&v23[39] = *&v28[32];
    *&v23[55] = *&v28[48];
    *&v28[168] = sub_1E4AA2C50;
    *&v29 = v10;
    BYTE8(v29) = 0;
    *&v30 = v6;
    *(&v30 + 1) = v8;
    *&v23[71] = *&v28[64];
    *&v23[7] = *v28;
    *&v23[167] = *&v28[160];
    *&v23[183] = v29;
    *&v23[199] = v30;
    v39 = *&v21[96];
    v40 = *&v21[112];
    v41 = *&v21[128];
    v35 = *&v21[32];
    v36 = *&v21[48];
    v37 = *&v21[64];
    v38 = *&v21[80];
    v33 = *v21;
    v31 = v9;
    v32 = v54;
    v42 = *&v21[144];
    v34 = *&v21[16];
    v43 = sub_1E4AA2C50;
    v44 = v10;
    v45 = 0;
    v46 = v6;
    v47 = v8;
    sub_1E4A52D40(v28, __dst, &qword_1ECF8ECC0, &qword_1E4AB4660);
    sub_1E4A4DC88(&v31, &qword_1ECF8ECC0, &qword_1E4AB4660);
    v11 = sub_1E4AAA6F0();
    v13 = v12;
    sub_1E4A4D9A0(v3, __dst);
    v14 = swift_getKeyPath();
    LOBYTE(__src[0]) = 0;
    *&v48[0] = swift_getKeyPath();
    sub_1E4A4E620(v48);
    *&v20[103] = v48[6];
    *&v20[119] = v48[7];
    *&v20[135] = v48[8];
    *&v20[39] = v48[2];
    *&v20[55] = v48[3];
    *&v20[71] = v48[4];
    *&v20[87] = v48[5];
    *&v20[7] = v48[0];
    v20[151] = v49;
    *&v20[23] = v48[1];
    v15 = swift_allocObject();
    sub_1E4A2732C(__dst, v15 + 16);
    *(v15 + 56) = 8;
    *v51 = v14;
    v51[8] = __src[0];
    *&v51[105] = *&v20[96];
    *&v51[121] = *&v20[112];
    *&v51[137] = *&v20[128];
    *&v51[153] = *&v20[144];
    *&v51[41] = *&v20[32];
    *&v51[57] = *&v20[48];
    *&v51[73] = *&v20[64];
    *&v51[89] = *&v20[80];
    *&v51[9] = *v20;
    *&v51[25] = *&v20[16];
    *&v51[161] = *v50;
    *&v51[164] = *&v50[3];
    *&v51[168] = sub_1E4AA2C50;
    *&v52 = v15;
    BYTE8(v52) = 0;
    *&v53 = v11;
    *(&v53 + 1) = v13;
    v78 = *&v51[96];
    v79 = *&v51[112];
    v81 = *&v51[144];
    v80 = *&v51[128];
    v74 = *&v51[32];
    v75 = *&v51[48];
    v77 = *&v51[80];
    v76 = *&v51[64];
    v73 = *&v51[16];
    v72 = *v51;
    v84 = v53;
    v83 = v52;
    v82 = *&v51[160];
    v62 = *&v20[96];
    v63 = *&v20[112];
    v64 = *&v20[128];
    v58 = *&v20[32];
    v59 = *&v20[48];
    v60 = *&v20[64];
    v61 = *&v20[80];
    v56 = *v20;
    v54 = v14;
    v55 = __src[0];
    v65 = *&v20[144];
    v57 = *&v20[16];
    *v66 = *v50;
    *&v66[3] = *&v50[3];
    v67 = sub_1E4AA2C50;
    v68 = v15;
    v69 = 0;
    v70 = v11;
    v71 = v13;
    sub_1E4A52D40(v51, __dst, &qword_1ECF8ECC8, &qword_1E4AB4668);
    sub_1E4A4DC88(&v54, &qword_1ECF8ECC8, &qword_1E4AB4668);
    *&__src[0] = KeyPath;
    BYTE8(__src[0]) = v17;
    *(&__src[6] + 9) = *&v22[96];
    *(&__src[7] + 9) = *&v22[112];
    *(&__src[8] + 9) = *&v22[128];
    *(&__src[9] + 9) = *&v22[144];
    *(&__src[2] + 9) = *&v22[32];
    *(&__src[3] + 9) = *&v22[48];
    *(&__src[4] + 9) = *&v22[64];
    *(&__src[5] + 9) = *&v22[80];
    *(__src + 9) = *v22;
    *(&__src[1] + 9) = *&v22[16];
    *(&__src[22] + 9) = *&v23[176];
    *(&__src[23] + 9) = *&v23[192];
    *(&__src[18] + 9) = *&v23[112];
    *(&__src[19] + 9) = *&v23[128];
    *(&__src[20] + 9) = *&v23[144];
    *(&__src[21] + 9) = *&v23[160];
    *(&__src[16] + 9) = *&v23[80];
    *(&__src[17] + 9) = *&v23[96];
    *(&__src[13] + 9) = *&v23[32];
    *(&__src[10] + 1) = sub_1E4AA2C50;
    *&__src[11] = v19;
    BYTE8(__src[11]) = 0;
    *(&__src[24] + 1) = *&v23[207];
    *(&__src[14] + 9) = *&v23[48];
    *(&__src[15] + 9) = *&v23[64];
    *(&__src[11] + 9) = *v23;
    *(&__src[12] + 9) = *&v23[16];
    __src[35] = v82;
    __src[36] = v83;
    __src[37] = v84;
    __src[31] = v78;
    __src[32] = v79;
    __src[34] = v81;
    __src[33] = v80;
    __src[27] = v74;
    __src[28] = v75;
    __src[30] = v77;
    __src[29] = v76;
    __src[26] = v73;
    __src[25] = v72;
    nullsub_1(__src);
    memcpy(__dst, __src, 0x260uLL);
  }

  else
  {
    sub_1E4AA2C3C(__dst);
  }

  return memcpy(a1, __dst, 0x260uLL);
}

double sub_1E4AA1F90@<D0>(_OWORD *a1@<X8>)
{
  sub_1E4A6FB3C();
  sub_1E4AAA330();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1E4AA1FE0(__int128 *a1)
{
  v2 = *a1;
  sub_1E4A6FB3C();
  return sub_1E4AAA340();
}

unint64_t sub_1E4AA202C()
{
  result = qword_1EE042278;
  if (!qword_1EE042278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EC50, &qword_1E4AB45F0);
    sub_1E4AA210C(&qword_1EE0422B8, &qword_1ECF8EC68, &qword_1E4AB4608, sub_1E4AA20DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042278);
  }

  return result;
}

uint64_t sub_1E4AA210C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E4AA2324(&qword_1EE042310, &qword_1ECF8EC98, &qword_1E4AB4638, sub_1E4AA23A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AA21BC()
{
  result = qword_1EE0423C0;
  if (!qword_1EE0423C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EC78, &qword_1E4AB4618);
    sub_1E4AA2274();
    sub_1E4A49E30(&qword_1EE0439A8, &qword_1ECF8EC90, &qword_1E4AB4630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423C0);
  }

  return result;
}

unint64_t sub_1E4AA2274()
{
  result = qword_1EE042280;
  if (!qword_1EE042280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EC80, &qword_1E4AB4620);
    sub_1E4AA2324(&qword_1EE043080, &qword_1ECF8EC88, &qword_1E4AB4628, sub_1E4A592BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042280);
  }

  return result;
}

uint64_t sub_1E4AA2324(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AA23A0()
{
  result = qword_1EE042318;
  if (!qword_1EE042318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ECA0, &qword_1E4AB4640);
    sub_1E4A592BC();
    sub_1E4AA2324(&qword_1EE0439F0, &qword_1ECF8ECA8, &qword_1E4AB4648, sub_1E4AA2458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042318);
  }

  return result;
}

unint64_t sub_1E4AA2458()
{
  result = qword_1EE0439F8;
  if (!qword_1EE0439F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ECB0, &qword_1E4AB4650);
    sub_1E4AA2510();
    sub_1E4A49E30(&qword_1EE0439C0, &qword_1ECF8ECC8, &qword_1E4AB4668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0439F8);
  }

  return result;
}

unint64_t sub_1E4AA2510()
{
  result = qword_1EE043A10;
  if (!qword_1EE043A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ECB8, &qword_1E4AB4658);
    sub_1E4A592BC();
    sub_1E4A49E30(&qword_1EE0439A0, &qword_1ECF8ECC0, &qword_1E4AB4660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043A10);
  }

  return result;
}

unint64_t sub_1E4AA25CC()
{
  result = qword_1ECF8ECD0;
  if (!qword_1ECF8ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8ECD0);
  }

  return result;
}

void sub_1E4AA26A8()
{
  sub_1E4AA2784(319, &qword_1EE042448, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_1E4AA2784(319, &qword_1EE042440, type metadata accessor for CGSize);
    if (v1 <= 0x3F)
    {
      sub_1E4A48F1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4AA2784(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4AAA1D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E4AA27E8()
{
  result = qword_1EE0423D0;
  if (!qword_1EE0423D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EC60, &qword_1E4AB4600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EC50, &qword_1E4AB45F0);
    sub_1E4AA202C();
    swift_getOpaqueTypeConformance2();
    sub_1E4AA28B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423D0);
  }

  return result;
}

unint64_t sub_1E4AA28B0()
{
  result = qword_1EE042298;
  if (!qword_1EE042298)
  {
    sub_1E4AAA4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042298);
  }

  return result;
}

uint64_t sub_1E4AA2908@<X0>(void *a1@<X8>)
{
  result = sub_1E4AAA2E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1E4AA2978@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4AAA2F0();
  *a1 = result;
  return result;
}

uint64_t sub_1E4AA29A4(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E4AAA300();
}

unint64_t sub_1E4AA29D0()
{
  result = qword_1EE042378;
  if (!qword_1EE042378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED08, &qword_1E4AB48B0);
    sub_1E4AA2A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042378);
  }

  return result;
}

unint64_t sub_1E4AA2A5C()
{
  result = qword_1EE042390;
  if (!qword_1EE042390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED10, &qword_1E4AB48B8);
    sub_1E4AA2AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042390);
  }

  return result;
}

unint64_t sub_1E4AA2AE8()
{
  result = qword_1EE0423B0;
  if (!qword_1EE0423B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED18, qword_1E4AB48C0);
    sub_1E4A49E30(&qword_1EE043998, &qword_1ECF8E228, &qword_1E4AAEE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423B0);
  }

  return result;
}

uint64_t sub_1E4AA2BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED00, &qword_1E4AB4878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E4AA2C10(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1E4AB4580;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  *(a1 + 169) = 0u;
  return result;
}

unint64_t sub_1E4AA2C58()
{
  result = qword_1ECF8ED20;
  if (!qword_1ECF8ED20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E770, &qword_1E4AB2170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8ED20);
  }

  return result;
}

uint64_t sub_1E4AA2CBC(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      if (qword_1EE042AC0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE048BE0;
    }

    else if (a1 == 4)
    {
      if (qword_1EE042A88 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE048BC0;
    }

    else
    {
      if (qword_1EE042AB0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE048BD8;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (qword_1EE042A80 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE048BB8;
    }

    else
    {
      if (qword_1EE042A98 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE048BC8;
    }
  }

  else
  {
    if (qword_1EE042AA8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EE048BD0;
  }

  v2 = *v1;

  return sub_1E4AAA5C0();
}

unint64_t sub_1E4AA2E88()
{
  result = qword_1EE043098;
  if (!qword_1EE043098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043098);
  }

  return result;
}

unint64_t sub_1E4AA2EE0()
{
  result = qword_1EE043090;
  if (!qword_1EE043090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043090);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKStripeColor(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WKStripeColor(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t WKStillWallpaper.init(identifier:name:thumbnailImageURL:fullsizeImageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v23 = a2;
  v24 = a1;
  v25 = a4;
  v6 = sub_1E4AA9FE0();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = v7[2];
  v14(&v22 - v12, a2, v6);
  v14(v11, a3, v6);
  v15 = objc_allocWithZone(WKStillWallpaper);
  v16 = sub_1E4AAA870();

  v17 = sub_1E4AA9FA0();
  v18 = sub_1E4AA9FA0();
  v19 = [v15 initWithIdentifier:v24 name:v16 type:0 thumbnailImageURL:v17 fullsizeImageURL:v18];

  v20 = v7[1];
  v20(a3, v6);
  v20(v23, v6);
  v20(v11, v6);
  v20(v13, v6);
  type metadata accessor for WKStillWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v19;
  *v25 = result;
  return result;
}

void WKStillWallpaper.fullsizeImageURL.getter()
{
  v1 = [*(*v0 + 16) fullsizeImageURL];
  sub_1E4AA9FC0();
}

id WKStillWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

Swift::OpaquePointer_optional __swiftcall WKStillWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKStillWallpaper.copyWallpaperContents(to:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v7[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1E4AA9F60();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WKStillWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKStillWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4AA366C()
{
  result = qword_1ECF8ED28;
  if (!qword_1ECF8ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8ED28);
  }

  return result;
}

uint64_t sub_1E4AA36EC@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v61 = (v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED38, &qword_1E4AB4C08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED40, &qword_1E4AB4C10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v58 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED48, &qword_1E4AB4C18);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v58 - v15;
  v17 = *v1;
  if (sub_1E4A5A570(*v1))
  {
    *&v64[0] = swift_getKeyPath();
    sub_1E4A4E620(v64);
    v79 = v69;
    v80 = v70;
    v81 = v71;
    LOBYTE(v82) = v72;
    v18 = v65;
    v75 = v65;
    v76 = v66;
    v77 = v67;
    v78 = v68;
    v73 = v64[0];
    v74 = v64[1];
    *(&v82 + 1) = v17;
    v19 = v70;
    v12[6] = v69;
    v12[7] = v19;
    v20 = v76;
    v21 = v77;
    v22 = v78;
    v12[2] = v18;
    v12[3] = v20;
    v12[4] = v21;
    v12[5] = v22;
    v23 = v74;
    *v12 = v73;
    v12[1] = v23;
    v24 = v82;
    v12[8] = v81;
    v12[9] = v24;
    swift_storeEnumTagMultiPayload();

    sub_1E4AA4300(&v73, v63);
    sub_1E4AA4078();
    sub_1E4AA40CC(qword_1EE0435F8, type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer);
    sub_1E4AAA430();
    sub_1E4AA41CC(v16, v8);
    swift_storeEnumTagMultiPayload();
    sub_1E4AA3FBC();
    sub_1E4AA4114();
    v25 = v62;
    sub_1E4AAA430();
    sub_1E4AA435C(&v73);
    sub_1E4AA423C(v16);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED50, &qword_1E4AB4C20);
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  v58[1] = v9;
  v59 = v2;
  v60 = v13;
  v28 = sub_1E4A5A670(v17);
  v29 = v62;
  if (v28)
  {
    v58[0] = v5;
    v30 = [*(v17 + 16) logicalScreenClass];
    v31 = sub_1E4AAA8A0();
    v33 = v32;
    if (v31 == sub_1E4AAA8A0() && v33 == v34)
    {

LABEL_8:
      KeyPath = swift_getKeyPath();
      v37 = v61;
      *v61 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
      swift_storeEnumTagMultiPayload();
      v38 = v59;
      v39 = v37 + *(v59 + 20);
      *&v73 = swift_getKeyPath();
      sub_1E4A4E620(&v73);
      v40 = v80;
      *(v39 + 96) = v79;
      *(v39 + 112) = v40;
      *(v39 + 128) = v81;
      *(v39 + 144) = v82;
      v41 = v76;
      *(v39 + 32) = v75;
      *(v39 + 48) = v41;
      v42 = v78;
      *(v39 + 64) = v77;
      *(v39 + 80) = v42;
      v43 = v74;
      *v39 = v73;
      *(v39 + 16) = v43;
      v44 = v37 + *(v38 + 24);
      type metadata accessor for WKWallpaperPosterLayerViewModel();
      sub_1E4AA40CC(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

      *v44 = sub_1E4AAA1E0();
      *(v44 + 8) = v45 & 1;
      *(v37 + *(v38 + 28)) = v17;
      sub_1E4AA4168(v37, v12);
      swift_storeEnumTagMultiPayload();
      sub_1E4AA4078();
      sub_1E4AA40CC(qword_1EE0435F8, type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer);
      sub_1E4AAA430();
      sub_1E4AA41CC(v16, v8);
      swift_storeEnumTagMultiPayload();
      sub_1E4AA3FBC();
      sub_1E4AA4114();
      v46 = v62;
      sub_1E4AAA430();
      sub_1E4AA423C(v16);
      sub_1E4AA42A4(v37);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED50, &qword_1E4AB4C20);
      return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
    }

    v35 = sub_1E4AAADA0();

    v29 = v62;
    if (v35)
    {
      goto LABEL_8;
    }
  }

  if (sub_1E4A5A870(v17))
  {
    type metadata accessor for WKWallpaperPosterLayerViewModel();
    sub_1E4AA40CC(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

    v48 = sub_1E4AAA1E0();
    v63[0] = v49 & 1;
    *&v73 = swift_getKeyPath();
    sub_1E4A4E620(&v73);
    *&v83[119] = v80;
    *&v83[103] = v79;
    *&v83[55] = v76;
    *&v83[39] = v75;
    *&v83[135] = v81;
    v83[151] = v82;
    *&v83[71] = v77;
    *&v83[87] = v78;
    *&v83[7] = v73;
    *&v83[23] = v74;
    v50 = *&v83[112];
    *(v8 + 105) = *&v83[96];
    *(v8 + 121) = v50;
    *(v8 + 137) = *&v83[128];
    v51 = *&v83[48];
    *(v8 + 41) = *&v83[32];
    *(v8 + 57) = v51;
    v52 = *&v83[80];
    *(v8 + 73) = *&v83[64];
    *(v8 + 89) = v52;
    v53 = *&v83[16];
    *(v8 + 9) = *v83;
    v54 = v63[0];
    *v8 = v48;
    v8[8] = v54;
    *(v8 + 153) = *&v83[144];
    *(v8 + 25) = v53;
    *(v8 + 21) = v17;
    swift_storeEnumTagMultiPayload();
    sub_1E4AA3FBC();
    sub_1E4AA4114();
    sub_1E4AAA430();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED50, &qword_1E4AB4C20);
    return (*(*(v55 - 8) + 56))(v29, 0, 1, v55);
  }

  else
  {
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED50, &qword_1E4AB4C20);
    v57 = *(*(v56 - 8) + 56);

    return v57(v29, 1, 1, v56);
  }
}

uint64_t sub_1E4AA3F18@<X0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  sub_1E4AA36EC(a1);
  v3 = sub_1E4AAA290();
  v4 = sub_1E4AAA4F0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED30, &qword_1E4AB4C00);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

unint64_t sub_1E4AA3FBC()
{
  result = qword_1EE042338;
  if (!qword_1EE042338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED48, &qword_1E4AB4C18);
    sub_1E4AA4078();
    sub_1E4AA40CC(qword_1EE0435F8, type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042338);
  }

  return result;
}

unint64_t sub_1E4AA4078()
{
  result = qword_1EE043898;
  if (!qword_1EE043898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043898);
  }

  return result;
}

uint64_t sub_1E4AA40CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4AA4114()
{
  result = qword_1EE043490;
  if (!qword_1EE043490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043490);
  }

  return result;
}

uint64_t sub_1E4AA4168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4AA41CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED48, &qword_1E4AB4C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4AA423C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8ED48, &qword_1E4AB4C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4AA42A4(uint64_t a1)
{
  v2 = type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4AA43B0()
{
  result = qword_1EE0423F0;
  if (!qword_1EE0423F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED30, &qword_1E4AB4C00);
    sub_1E4AA443C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423F0);
  }

  return result;
}

unint64_t sub_1E4AA443C()
{
  result = qword_1EE0422C0;
  if (!qword_1EE0422C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED58, qword_1E4AB4C88);
    sub_1E4AA44C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422C0);
  }

  return result;
}

unint64_t sub_1E4AA44C0()
{
  result = qword_1EE0422C8;
  if (!qword_1EE0422C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8ED50, &qword_1E4AB4C20);
    sub_1E4AA3FBC();
    sub_1E4AA4114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422C8);
  }

  return result;
}

uint64_t sub_1E4AA45D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6863746970;
  }

  else
  {
    v4 = 7823737;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6863746970;
  }

  else
  {
    v6 = 7823737;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E4AAADA0();
  }

  return v9 & 1;
}

uint64_t sub_1E4AA466C()
{
  v1 = *v0;
  sub_1E4AAAE00();
  sub_1E4AAA8C0();

  return sub_1E4AAAE40();
}

uint64_t sub_1E4AA46E4()
{
  *v0;
  sub_1E4AAA8C0();
}

uint64_t sub_1E4AA4748()
{
  v1 = *v0;
  sub_1E4AAAE00();
  sub_1E4AAA8C0();

  return sub_1E4AAAE40();
}

uint64_t sub_1E4AA47BC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E4AAAD20();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1E4AA481C(uint64_t *a1@<X8>)
{
  v2 = 7823737;
  if (*v1)
  {
    v2 = 0x6863746970;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4AAA030();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4AAA030();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4AA4A84()
{
  result = sub_1E4AAA030();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4AA4B38()
{
  result = qword_1ECF8ED80;
  if (!qword_1ECF8ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8ED80);
  }

  return result;
}

uint64_t sub_1E4AA4B8C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1E4AA4BC4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1E4AA4BFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA030();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_1E4AA4C68()
{
  result = qword_1ECF8ED88;
  if (!qword_1ECF8ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8ED88);
  }

  return result;
}

uint64_t sub_1E4AA4CBC(uint64_t a1)
{
  result = sub_1E4AA4D14(&qword_1ECF8ED90, type metadata accessor for WKParameterizedCAWallpaperParallaxParameter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4AA4D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4AA4D5C(uint64_t a1)
{
  result = sub_1E4AA4D14(&qword_1ECF8ED98, type metadata accessor for WKParameterizedCAWallpaperStateParameter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for WKBokehViewRepresentable()
{
  result = qword_1EE042CE8;
  if (!qword_1EE042CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4AA4E3C()
{
  sub_1E4A4DE48(319, &qword_1EE042448, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_1E4A4DE48(319, &unk_1EE042450, type metadata accessor for WKWallpaperPosterLayerViewModel);
    if (v1 <= 0x3F)
    {
      sub_1E4A48F1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4AA4F58()
{
  v1 = sub_1E4AAA320();
  v22 = *(v1 - 8);
  v23 = v1;
  v2 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4AAA1C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WKBokehViewRepresentable();
  v11 = (v0 + *(v10 + 24));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_1E4A96CDC(v9);
  sub_1E4A7E41C(v12, v13, &v24);
  (*(v6 + 8))(v9, v5);
  if (v24)
  {
    v14 = [objc_allocWithZone(WKBokehView) initWithBokehWallpaperInput_];
    [v14 setClipsToBounds_];
    v15 = (v0 + *(v10 + 20));
    v16 = *v15;
    v17 = *(v15 + 8);

    if ((v17 & 1) == 0)
    {
      sub_1E4AAAA10();
      v18 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      sub_1E4AAA310();
      swift_getAtKeyPath();

      (*(v22 + 8))(v4, v23);
      v16 = v24;
    }

    swift_getKeyPath();
    v24 = v16;
    sub_1E4AA5734(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    sub_1E4AAA060();

    v19 = *(v16 + 184);

    [v14 setAnimationEnabled_];

    return v14;
  }

  else
  {
    result = sub_1E4AAACB0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4AA5298(void *a1)
{
  v3 = sub_1E4AAA1C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E4AAA320();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WKBokehViewRepresentable();
  v13 = *(v12 + 20);
  v30 = v1;
  v14 = (v1 + v13);
  v15 = *v14;
  v16 = *(v14 + 8);

  if ((v16 & 1) == 0)
  {
    sub_1E4AAAA10();
    v17 = v12;
    v18 = v4;
    v19 = v3;
    v20 = a1;
    v21 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    a1 = v20;
    v3 = v19;
    v4 = v18;
    v12 = v17;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v8 + 8))(v11, v29);
    v15 = v31;
  }

  swift_getKeyPath();
  v31 = v15;
  sub_1E4AA5734(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  v22 = *(v15 + 184);

  [a1 setAnimationEnabled_];
  v23 = (v30 + *(v12 + 24));
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1E4A96CDC(v7);
  sub_1E4A7E41C(v24, v25, &v31);
  result = (*(v4 + 8))(v7, v3);
  if (v31)
  {
    v27 = *(v31 + 16);
    [a1 setBokehWallpaperInput_];
  }

  return result;
}

uint64_t sub_1E4AA55B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4AA5734(&qword_1EE042D00, type metadata accessor for WKBokehViewRepresentable);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1E4AA5648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4AA5734(&qword_1EE042D00, type metadata accessor for WKBokehViewRepresentable);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1E4AA56DC()
{
  sub_1E4AA5734(&qword_1EE042D00, type metadata accessor for WKBokehViewRepresentable);
  sub_1E4AAA400();
  __break(1u);
}

uint64_t sub_1E4AA5734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer()
{
  result = qword_1EE0435E8;
  if (!qword_1EE0435E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1E4AA580C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4AAA320();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = (v2 + *(type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer() + 24));
  if (*(v9 + 8) == 1)
  {
    v68 = *v9;
  }

  else
  {

    sub_1E4AAAA10();
    v10 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  v11 = sub_1E4A7440C();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if ((v17 & 1) != 0 || (sub_1E4AA5B60(&v52), (v18 = v52) == 0))
  {
    sub_1E4A4E5F8(&v53);
  }

  else
  {
    *&v28[0] = swift_getKeyPath();
    sub_1E4A4E620(v28);
    v36 = v28[6];
    v37 = v28[7];
    v38 = v28[8];
    LOBYTE(v39) = v29;
    v32 = v28[2];
    v33 = v28[3];
    v34 = v28[4];
    v35 = v28[5];
    v30 = v28[0];
    v31 = v28[1];

    WKPosterCanvasSize();
    WKPosterCanvasSize();
    sub_1E4AAA6F0();
    sub_1E4AAA230();

    *&v27[7] = v69;
    *&v27[23] = v70;
    *&v27[39] = v71;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v40 = v30;
    v41 = v31;
    *(v51 + 9) = *v27;
    *&v49 = v39;
    *(&v49 + 1) = v11;
    *&v50 = v13;
    *(&v50 + 1) = v15;
    *&v51[0] = v18;
    BYTE8(v51[0]) = 0;
    *(&v51[1] + 9) = *&v27[16];
    *(&v51[2] + 9) = *&v27[32];
    *(&v51[3] + 1) = *(&v71 + 1);
    nullsub_1(&v40);
    v65 = v51[1];
    v66 = v51[2];
    v67 = v51[3];
    v61 = v48;
    v62 = v49;
    v63 = v50;
    v64 = v51[0];
    v57 = v44;
    v58 = v45;
    v59 = v46;
    v60 = v47;
    v53 = v40;
    v54 = v41;
    v55 = v42;
    v56 = v43;
  }

  v19 = v66;
  *(a1 + 192) = v65;
  *(a1 + 208) = v19;
  *(a1 + 224) = v67;
  v20 = v62;
  *(a1 + 128) = v61;
  *(a1 + 144) = v20;
  v21 = v64;
  *(a1 + 160) = v63;
  *(a1 + 176) = v21;
  v22 = v58;
  *(a1 + 64) = v57;
  *(a1 + 80) = v22;
  v23 = v60;
  *(a1 + 96) = v59;
  *(a1 + 112) = v23;
  v24 = v54;
  *a1 = v53;
  *(a1 + 16) = v24;
  result = v56;
  *(a1 + 32) = v55;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E4AA5B60@<X0>(id **a1@<X8>)
{
  v39 = a1;
  v38 = sub_1E4AAA1C0();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4AAA320();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WKAdaptiveStripeWallpaperForegroundLayer();
  v12 = *(v11 + 28);
  v13 = (v1 + *(v11 + 20));
  v14 = v13[7];
  v15 = v13[5];
  v76 = v13[6];
  v77 = v14;
  v16 = v13[7];
  v78 = v13[8];
  v17 = v13[3];
  v18 = v13[1];
  v72 = v13[2];
  v73 = v17;
  v19 = v13[3];
  v20 = v13[5];
  v74 = v13[4];
  v75 = v20;
  v21 = v13[1];
  v70 = *v13;
  v71 = v21;
  v80[6] = v76;
  v80[7] = v16;
  v80[8] = v13[8];
  v80[2] = v72;
  v80[3] = v19;
  v80[4] = v74;
  v80[5] = v15;
  v22 = *(v1 + v12);
  v79 = *(v13 + 144);
  v81 = *(v13 + 144);
  v80[0] = v70;
  v80[1] = v18;
  if (sub_1E4A49C60(v80) == 1)
  {
    nullsub_1(v80);
    v47 = v76;
    v48 = v77;
    v49 = v78;
    v50 = v79;
    v43 = v72;
    v44 = v73;
    v45 = v74;
    v46 = v75;
    v41 = v70;
    v42 = v71;
    v23 = nullsub_1(&v41);
    v61 = *v23;
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[4];
    v64 = v23[3];
    v65 = v26;
    v62 = v24;
    v63 = v25;
    v27 = v23[5];
    v28 = v23[6];
    v29 = v23[8];
    v68 = v23[7];
    v69 = v29;
    v66 = v27;
    v67 = v28;
    v60 = v79;
    v58 = v77;
    v59 = v78;
    v56 = v75;
    v57 = v76;
    v54 = v73;
    v55 = v74;
    v52 = v71;
    v53 = v72;
    v51 = v70;
    v30 = nullsub_1(&v51);
    sub_1E4A49D24(v30, &v40);
  }

  else
  {
    nullsub_1(v80);
    v47 = v76;
    v48 = v77;
    v49 = v78;
    v50 = v79;
    v43 = v72;
    v44 = v73;
    v45 = v74;
    v46 = v75;
    v41 = v70;
    v42 = v71;
    v36 = *nullsub_1(&v41);
    v51 = v70;
    v52 = v71;
    v55 = v74;
    v56 = v75;
    v53 = v72;
    v54 = v73;
    v60 = v79;
    v58 = v77;
    v59 = v78;
    v57 = v76;
    v31 = *nullsub_1(&v51);

    sub_1E4AAAA10();
    v32 = sub_1E4AAA4E0();
    v37 = v5;
    v33 = v22;
    v34 = v32;
    sub_1E4AAA0B0();

    v22 = v33;
    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v70);
    v5 = v37;
    (*(v7 + 8))(v10, v6);
  }

  v57 = v67;
  v58 = v68;
  v59 = v69;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v56 = v66;
  v51 = v61;
  v52 = v62;
  sub_1E4A96CDC(v5);
  sub_1E4A95D1C(&v51, v5, v22, v39);
  sub_1E4A49CD0(&v51);
  return (*(v2 + 8))(v5, v38);
}

uint64_t WKWallpaperImage.ImageType.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4AA5FD0(uint64_t a1, char a2)
{
  sub_1E4A4D9A0(a1, v8);
  v3 = type metadata accessor for WKWallpaperImageViewModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E888, &unk_1E4AB2D20);
  sub_1E4AAA130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E890, qword_1E4AB5420);
  sub_1E4AAA130();
  sub_1E4A2732C(v8, v6 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_wallpaperRepresenting);
  *(v6 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_type) = a2;
  return v6;
}

double WKWallpaperImage.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA360();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = v1[9];
  v50[8] = v1[8];
  v50[9] = v11;
  v51[0] = v1[10];
  *(v51 + 9) = *(v1 + 169);
  v12 = v1[5];
  v50[4] = v1[4];
  v50[5] = v12;
  v13 = v1[7];
  v50[6] = v1[6];
  v50[7] = v13;
  v14 = v1[1];
  v50[0] = *v1;
  v50[1] = v14;
  v15 = v1[3];
  v50[2] = v1[2];
  v50[3] = v15;
  v39 = sub_1E4AAA5E0();
  v16 = swift_allocObject();
  v17 = v1[9];
  v16[9] = v1[8];
  v16[10] = v17;
  v16[11] = v1[10];
  *(v16 + 185) = *(v1 + 169);
  v18 = v1[5];
  v16[5] = v1[4];
  v16[6] = v18;
  v19 = v1[7];
  v16[7] = v1[6];
  v16[8] = v19;
  v20 = v1[1];
  v16[1] = *v1;
  v16[2] = v20;
  v21 = v1[3];
  v16[3] = v1[2];
  v16[4] = v21;
  sub_1E4AA6528(v50, &v42);
  v22 = sub_1E4AAA6F0();
  v24 = v23;
  sub_1E4AA6560(v50, &v52);
  sub_1E4AAA350();
  (*(v4 + 16))(v8, v10, v3);
  sub_1E4AA787C(&qword_1EE042358, MEMORY[0x1E697F260]);
  v25 = sub_1E4AAA240();
  (*(v4 + 8))(v10, v3);
  LOBYTE(v41) = v58;
  v40[12] = v56;
  v40[13] = v57;
  v40[10] = v54;
  v40[11] = v55;
  v40[8] = v52;
  v40[9] = v53;
  v59[4] = v56;
  v59[5] = v57;
  v59[0] = v52;
  v59[1] = v53;
  v59[2] = v54;
  v59[3] = v55;
  *&v60 = v41;
  *(&v60 + 1) = v25;
  *&v61 = v22;
  *(&v61 + 1) = v24;
  v44 = v54;
  v45 = v55;
  v42 = v52;
  v43 = v53;
  v46 = v56;
  v47 = v57;
  v48 = v60;
  v49 = v61;
  v62[0] = v52;
  v62[1] = v53;
  v62[4] = v56;
  v62[5] = v57;
  v62[2] = v54;
  v62[3] = v55;
  v63 = v41;
  v64 = v25;
  v65 = v22;
  v66 = v24;
  sub_1E4A52D40(v59, v40, &qword_1ECF8EDA0, &qword_1E4AB5130);
  sub_1E4A4DC88(v62, &qword_1ECF8EDA0, &qword_1E4AB5130);
  v26 = [objc_opt_self() mainScreen];
  v27 = [v26 fixedCoordinateSpace];

  [v27 bounds];
  v29 = v28;
  v31 = v30;
  swift_unknownObjectRelease();
  v32 = v39;
  v33 = v47;
  *(a1 + 104) = v46;
  *(a1 + 120) = v33;
  v34 = v49;
  *(a1 + 136) = v48;
  *(a1 + 152) = v34;
  v35 = v43;
  *(a1 + 40) = v42;
  *(a1 + 56) = v35;
  v36 = v45;
  *(a1 + 72) = v44;
  result = v29 / v31;
  *a1 = v32;
  *(a1 + 8) = sub_1E4AA6520;
  *(a1 + 16) = v16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 88) = v36;
  *(a1 + 168) = 1;
  *(a1 + 176) = v29 / v31;
  *(a1 + 184) = 256;
  return result;
}

uint64_t sub_1E4AA646C(uint64_t a1)
{
  v1 = *(a1 + 168);
  v2 = *(a1 + 176);
  v3 = *(a1 + 184);
  type metadata accessor for WKWallpaperImageViewModel();
  sub_1E4AA787C(&qword_1EE043F00, type metadata accessor for WKWallpaperImageViewModel);
  sub_1E4AAA1F0();
  sub_1E4A7FC1C();
}

uint64_t sub_1E4AA650C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E4AA6560@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 21);
  v5 = *(a1 + 22);
  v6 = *(a1 + 184);
  type metadata accessor for WKWallpaperImageViewModel();
  sub_1E4AA787C(&qword_1EE043F00, type metadata accessor for WKWallpaperImageViewModel);
  v7 = *(sub_1E4AAA1F0() + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_type);

  if (v7 >= 5)
  {
    v13 = *(sub_1E4AAA1F0() + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_type);

    if ((v13 - 5) >= 4)
    {
      v20 = 0uLL;
      v26 = -1;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      goto LABEL_7;
    }

    v15 = a1[9];
    v48 = a1[8];
    v49 = v15;
    v50[0] = a1[10];
    *(v50 + 9) = *(a1 + 169);
    v16 = a1[5];
    v44 = a1[4];
    v45 = v16;
    v17 = a1[7];
    v46 = a1[6];
    v47 = v17;
    v18 = a1[1];
    v40 = *a1;
    v41 = v18;
    v19 = a1[3];
    v42 = a1[2];
    v43 = v19;
    sub_1E4AA6EC4(&v27);
    v35 = v29;
    v36 = v30;
    LOWORD(v37) = v31;
    v33 = v27;
    v34 = v28;
    v51 = 1;
    v39 = 1;
  }

  else
  {
    v8 = a1[9];
    v48 = a1[8];
    v49 = v8;
    v50[0] = a1[10];
    *(v50 + 9) = *(a1 + 169);
    v9 = a1[5];
    v44 = a1[4];
    v45 = v9;
    v10 = a1[7];
    v46 = a1[6];
    v47 = v10;
    v11 = a1[1];
    v40 = *a1;
    v41 = v11;
    v12 = a1[3];
    v42 = a1[2];
    v43 = v12;
    sub_1E4AA6894(&v27);
    v35 = v29;
    v36 = v30;
    v37 = v31;
    v38 = v32;
    v33 = v27;
    v34 = v28;
    v51 = 0;
    v39 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EDD0, &qword_1E4AB5340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EDD8, &qword_1E4AB5348);
  sub_1E4AA7A4C(&qword_1EE0439C8, &qword_1ECF8EDD0, &qword_1E4AB5340, sub_1E4AA78C4);
  sub_1E4AA7A4C(&qword_1EE0439E0, &qword_1ECF8EDD8, &qword_1E4AB5348, sub_1E4AA7AC8);
  result = sub_1E4AAA430();
  v20 = v40;
  v21 = v41;
  v22 = v42;
  v23 = v43;
  v24 = v44;
  v25 = v45;
  v26 = v46;
LABEL_7:
  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 32) = v22;
  *(a2 + 48) = v23;
  *(a2 + 64) = v24;
  *(a2 + 80) = v25;
  *(a2 + 96) = v26;
  return result;
}

unint64_t sub_1E4AA6824()
{
  result = qword_1ECF8EDA8;
  if (!qword_1ECF8EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EDA8);
  }

  return result;
}

uint64_t sub_1E4AA6894@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_1E4AAA320();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1E4AAA610();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = *v1;
  v48 = *(v1 + 8);
  v12 = *(v1 + 128);
  v90 = *(v1 + 112);
  v91 = v12;
  v92 = *(v1 + 144);
  v93 = *(v1 + 160);
  v13 = *(v1 + 64);
  v86 = *(v1 + 48);
  v87 = v13;
  v14 = *(v1 + 96);
  v88 = *(v1 + 80);
  v89 = v14;
  v15 = *(v1 + 32);
  v84 = *(v1 + 16);
  v85 = v15;
  v16 = *(v1 + 168);
  v17 = *(v1 + 176);
  v18 = *(v1 + 184);
  type metadata accessor for WKWallpaperImageViewModel();
  sub_1E4AA787C(&qword_1EE043F00, type metadata accessor for WKWallpaperImageViewModel);
  sub_1E4AAA1F0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4AAA140();

  if (*&v82[0])
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E6981630], v7);
    v20 = sub_1E4AAA650();

    (*(v8 + 8))(v11, v7);
    v21 = [objc_opt_self() mainScreen];
    v22 = [v21 fixedCoordinateSpace];

    [v22 bounds];
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    v27 = sub_1E4AAA440();
    v82[6] = v90;
    v82[7] = v91;
    v82[8] = v92;
    v83 = v93;
    v82[2] = v86;
    v82[3] = v87;
    v82[4] = v88;
    v82[5] = v89;
    v82[0] = v84;
    v82[1] = v85;
    if (sub_1E4A49C60(v82) == 1)
    {
      nullsub_1(v82);
      v59 = v90;
      v60 = v91;
      v61 = v92;
      v62 = v93;
      v55 = v86;
      v56 = v87;
      v57 = v88;
      v58 = v89;
      v53 = v84;
      v54 = v85;
      v28 = nullsub_1(&v53);
      v73 = *v28;
      v29 = v28[1];
      v30 = v28[2];
      v31 = v28[4];
      v76 = v28[3];
      v77 = v31;
      v74 = v29;
      v75 = v30;
      v32 = v28[5];
      v33 = v28[6];
      v34 = v28[8];
      v80 = v28[7];
      v81 = v34;
      v78 = v32;
      v79 = v33;
      v72 = v93;
      v70 = v91;
      v71 = v92;
      v68 = v89;
      v69 = v90;
      v66 = v87;
      v67 = v88;
      v64 = v85;
      v65 = v86;
      v63 = v84;
      v35 = nullsub_1(&v63);
      sub_1E4A49D24(v35, &v52);
    }

    else
    {
      nullsub_1(v82);
      v59 = v90;
      v60 = v91;
      v61 = v92;
      v62 = v93;
      v55 = v86;
      v56 = v87;
      v57 = v88;
      v58 = v89;
      v53 = v84;
      v54 = v85;
      v42 = *nullsub_1(&v53);
      v63 = v84;
      v64 = v85;
      v67 = v88;
      v68 = v89;
      v65 = v86;
      v66 = v87;
      v72 = v93;
      v70 = v91;
      v71 = v92;
      v69 = v90;
      v43 = *nullsub_1(&v63);

      sub_1E4AAAA10();
      v44 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      sub_1E4AAA310();
      swift_getAtKeyPath();
      sub_1E4A4DC88(&v84, &qword_1ECF8E700, &qword_1E4AAEE50);
      (*(v50 + 8))(v6, v51);
    }

    v69 = v79;
    v70 = v80;
    v71 = v81;
    v65 = v75;
    v66 = v76;
    v67 = v77;
    v68 = v78;
    v63 = v73;
    v64 = v74;
    sub_1E4A49CD0(&v63);
    if ((BYTE8(v65) & 1) == 0 && !v48)
    {
      v45 = v49;

      sub_1E4AAAA10();
      v46 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      sub_1E4AAA310();
      swift_getAtKeyPath();
      sub_1E4AA650C(v45, 0);
      (*(v50 + 8))(v6, v51);
    }

    sub_1E4AA71C8(v27, v20, COERCE__INT64(v24 / v26), 0, &v53);

    v36 = v53;
    v37 = v54;
    v38 = v55;
    v39 = v56;
    v40 = v57;
    v41 = v58;
  }

  else
  {
    v36 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
  }

  *a1 = v36;
  a1[1] = v37;
  a1[2] = v38;
  a1[3] = v39;
  a1[4] = v40;
  a1[5] = v41;
  return result;
}

uint64_t sub_1E4AA6EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA610();
  v21 = *(v3 - 8);
  v22 = v3;
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 168);
  v8 = *(v1 + 176);
  v9 = *(v1 + 184);
  type metadata accessor for WKWallpaperImageViewModel();
  sub_1E4AA787C(&qword_1EE043F00, type metadata accessor for WKWallpaperImageViewModel);
  sub_1E4AAA1F0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4AAA140();

  v11 = 0uLL;
  if (v28)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
  }

  else
  {
    sub_1E4AAA1F0();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1E4AAA140();

    if (v26)
    {
      v19 = v21;
      v18 = v22;
      (*(v21 + 104))(v6, *MEMORY[0x1E6981630], v22);
      v17 = sub_1E4AAA650();

      (*(v19 + 8))(v6, v18);
      sub_1E4AAA6F0();
      result = sub_1E4AAA230();
      v12 = v26;
      v13 = v28;
      v11 = v30;
      v25 = v27;
      v24 = v29;
      v23 = 1;
      v16 = v27;
      v15 = v29;
      v14 = 257;
    }

    else
    {
      v17 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v11 = 0uLL;
    }
  }

  *a1 = v17;
  *(a1 + 8) = v12;
  *(a1 + 16) = v16;
  *(a1 + 24) = v13;
  *(a1 + 32) = v15;
  *(a1 + 40) = v11;
  *(a1 + 56) = 0;
  *(a1 + 64) = v14;
  return result;
}

uint64_t sub_1E4AA71C8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  sub_1E4AAA200();
  v10 = v33;
  v11 = v33 * 0.5;
  v12 = v34;
  v13 = DWORD1(v34);
  v14 = *(&v34 + 1);
  v15 = v35;
  v16 = sub_1E4AAA6F0();
  *v36 = v33 * 0.5;
  *(v36 + 1) = v33;
  v36[1] = v34;
  *v37 = v35;
  *&v37[16] = a1;
  *&v37[20] = 256;
  *v32 = v35;
  *&v32[14] = *&v37[14];
  v17 = *v32;
  v40 = *v32;
  v30 = v36[0];
  v31 = v34;
  v39 = v34;
  v38 = v36[0];
  v18 = *&v32[16];
  *&v41 = *&v32[16];
  *(&v41 + 1) = v16;
  v42 = v19;
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  *(a5 + 17) = HIBYTE(a4) & 1;
  *(a5 + 24) = v38;
  v20 = v39;
  *(a5 + 72) = v41;
  v21 = v40;
  *(a5 + 88) = v19;
  *(a5 + 56) = v21;
  *(a5 + 40) = v20;
  v43[2] = v17;
  v43[1] = v31;
  v43[0] = v30;
  v44 = v18;
  v45 = v16;
  v46 = v19;
  sub_1E4A52D40(v36, v23, &unk_1ECF8EE10, &qword_1E4AB53C8);
  sub_1E4A52D40(&v38, v23, &qword_1ECF8EDF0, &qword_1E4AB5360);

  sub_1E4A4DC88(v43, &qword_1ECF8EDF0, &qword_1E4AB5360);
  *v23 = v11;
  *&v23[1] = v10;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = a1;
  v29 = 256;
  return sub_1E4A4DC88(v23, &unk_1ECF8EE10, &qword_1E4AB53C8);
}

uint64_t sub_1E4AA73CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 185))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E4AA7414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKWallpaperImage.ImageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WKWallpaperImage.ImageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4AA75E8()
{
  result = qword_1EE042370;
  if (!qword_1EE042370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EDB0, &qword_1E4AB5320);
    sub_1E4AA7674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042370);
  }

  return result;
}

unint64_t sub_1E4AA7674()
{
  result = qword_1EE042388;
  if (!qword_1EE042388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EDB8, &qword_1E4AB5328);
    sub_1E4AA7700();
    sub_1E4AA7828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042388);
  }

  return result;
}

unint64_t sub_1E4AA7700()
{
  result = qword_1EE0423A0;
  if (!qword_1EE0423A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EDC0, &qword_1E4AB5330);
    sub_1E4AA77A4();
    sub_1E4AA79F8(&qword_1EE0439B0, &qword_1ECF8EDA0, &qword_1E4AB5130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423A0);
  }

  return result;
}

unint64_t sub_1E4AA77A4()
{
  result = qword_1EE0423C8;
  if (!qword_1EE0423C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EDC8, &qword_1E4AB5338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423C8);
  }

  return result;
}

unint64_t sub_1E4AA7828()
{
  result = qword_1EE042290;
  if (!qword_1EE042290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042290);
  }

  return result;
}

uint64_t sub_1E4AA787C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4AA78C4()
{
  result = qword_1EE0439D0;
  if (!qword_1EE0439D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EDE0, &qword_1E4AB5350);
    sub_1E4AA7988(&qword_1EE043A00, &qword_1ECF8EDE8, &qword_1E4AB5358);
    sub_1E4AA79F8(&qword_1EE0439B8, &qword_1ECF8EDF0, &qword_1E4AB5360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0439D0);
  }

  return result;
}

uint64_t sub_1E4AA7988(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4AA79F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4AA7A4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AA7AF8()
{
  result = qword_1EE0439E8;
  if (!qword_1EE0439E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8EE00, &qword_1E4AB5370);
    sub_1E4AA7988(&qword_1EE043A08, &qword_1ECF8EE08, &qword_1E4AB5378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0439E8);
  }

  return result;
}

double sub_1E4AA7BA4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4AAA140();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1E4AA7C2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4AAA150();
}

uint64_t sub_1E4AA7CB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4AAA140();

  *a2 = v5;
  return result;
}

uint64_t sub_1E4AA7D30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4AAA150();
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}