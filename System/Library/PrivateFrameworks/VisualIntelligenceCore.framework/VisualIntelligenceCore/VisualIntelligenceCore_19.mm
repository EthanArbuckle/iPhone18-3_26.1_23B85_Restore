uint64_t _s22VisualIntelligenceCore8CVBundleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D893B960(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CVBundle(0);
  if ((sub_1D88E4444(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || (sub_1D88E4444(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1D8854A60(v6, v7);
}

uint64_t sub_1D893AE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleClassification(0);
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v74 = &v67 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v73 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v67 - v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A90);
  v16 = MEMORY[0x1EEE9AC00](v75);
  v70 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v67 - v18;
  v19 = type metadata accessor for RefinementStateInternal(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v67 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v67 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v67 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A98);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v67 - v33;
  v35 = &v67 + *(v32 + 56) - v33;
  sub_1D8917FF0(a1, &v67 - v33, type metadata accessor for RefinementStateInternal);
  sub_1D8917FF0(a2, v35, type metadata accessor for RefinementStateInternal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_22;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    sub_1D8917FF0(v34, v22, type metadata accessor for RefinementStateInternal);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1D89388D8(v22, type metadata accessor for BundleClassification);
      goto LABEL_26;
    }

    v44 = v71;
    sub_1D8918058(v35, v71, type metadata accessor for BundleClassification);
    v45 = static BundleClassification.== infix(_:_:)(v22, v44);
    sub_1D89388D8(v44, type metadata accessor for BundleClassification);
    sub_1D89388D8(v22, type metadata accessor for BundleClassification);
    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D8917FF0(v34, v30, type metadata accessor for RefinementStateInternal);
    v42 = *(v30 + 1);
    v41 = *(v30 + 2);
    v43 = v30[24];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D88E1004(v42, v41, v43);
      goto LABEL_26;
    }

    v54 = *(v30 + 4);
    v55 = *v35;
    v56 = *(v35 + 1);
    v57 = *(v35 + 2);
    v58 = *(v35 + 4);
    v59 = v35[24];
    v83[0] = *v30;
    v84 = v42;
    v85 = v41;
    v86 = v43;
    v87 = v54;
    v78[0] = v55;
    v79 = v56;
    v80 = v57;
    v81 = v59;
    v82 = v58;
    v45 = _s22VisualIntelligenceCore32BundleClassificationRuntimeErrorV2eeoiySbAC_ACtFZ_0(v83, v78);
    sub_1D88E1004(v56, v57, v59);
    sub_1D88E1004(v42, v41, v43);
LABEL_30:
    sub_1D89388D8(v34, type metadata accessor for RefinementStateInternal);
    return v45 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D8917FF0(v34, v25, type metadata accessor for RefinementStateInternal);
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88) + 48);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v47 = v73;
      sub_1D881F6FC(&v25[v46], v73, &qword_1ECA641B8);
      v48 = v74;
      sub_1D881F6FC(&v35[v46], v74, &qword_1ECA641B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
      v49 = v77;
      if ((sub_1D8B15F50() & 1) == 0)
      {

        sub_1D87A14E4(v48, &qword_1ECA641B8);
        sub_1D87A14E4(v47, &qword_1ECA641B8);
        goto LABEL_41;
      }

      v50 = *(v75 + 48);
      v51 = v70;
      sub_1D87A0E38(v47, v70, &qword_1ECA641B8);
      sub_1D87A0E38(v48, v51 + v50, &qword_1ECA641B8);
      v52 = *(v76 + 48);
      if (v52(v51, 1, v49) == 1)
      {

        sub_1D87A14E4(v48, &qword_1ECA641B8);
        sub_1D87A14E4(v47, &qword_1ECA641B8);
        if (v52(v51 + v50, 1, v49) == 1)
        {
          sub_1D87A14E4(v51, &qword_1ECA641B8);
          goto LABEL_22;
        }
      }

      else
      {
        v61 = v67;
        sub_1D87A0E38(v51, v67, &qword_1ECA641B8);
        if (v52(v51 + v50, 1, v49) != 1)
        {
          v65 = v68;
          sub_1D8918058(v51 + v50, v68, type metadata accessor for BundleClassification);
          v66 = v61;
          v63 = static BundleClassification.== infix(_:_:)(v61, v65);

          sub_1D89388D8(v65, type metadata accessor for BundleClassification);
          sub_1D87A14E4(v74, &qword_1ECA641B8);
          sub_1D87A14E4(v47, &qword_1ECA641B8);
          sub_1D89388D8(v66, type metadata accessor for BundleClassification);
          v64 = v51;
          goto LABEL_40;
        }

        sub_1D87A14E4(v74, &qword_1ECA641B8);
        sub_1D87A14E4(v47, &qword_1ECA641B8);
        sub_1D89388D8(v61, type metadata accessor for BundleClassification);
      }

      sub_1D87A14E4(v51, &qword_1ECA65A90);
      goto LABEL_41;
    }

    sub_1D87A14E4(&v25[v46], &qword_1ECA641B8);

LABEL_26:
    sub_1D87A14E4(v34, &qword_1ECA65A98);
LABEL_27:
    v45 = 0;
    return v45 & 1;
  }

  sub_1D8917FF0(v34, v28, type metadata accessor for RefinementStateInternal);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D87A14E4(v28, &qword_1ECA641B8);
    goto LABEL_26;
  }

  v37 = *(v75 + 48);
  v38 = v72;
  sub_1D881F6FC(v28, v72, &qword_1ECA641B8);
  sub_1D881F6FC(v35, v38 + v37, &qword_1ECA641B8);
  v39 = v77;
  v40 = *(v76 + 48);
  if (v40(v38, 1, v77) != 1)
  {
    v60 = v69;
    sub_1D87A0E38(v38, v69, &qword_1ECA641B8);
    if (v40(v38 + v37, 1, v39) == 1)
    {
      sub_1D89388D8(v60, type metadata accessor for BundleClassification);
      goto LABEL_33;
    }

    v62 = v68;
    sub_1D8918058(v38 + v37, v68, type metadata accessor for BundleClassification);
    v63 = static BundleClassification.== infix(_:_:)(v60, v62);
    sub_1D89388D8(v62, type metadata accessor for BundleClassification);
    sub_1D89388D8(v60, type metadata accessor for BundleClassification);
    v64 = v38;
LABEL_40:
    sub_1D87A14E4(v64, &qword_1ECA641B8);
    if (v63)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

  if (v40(v38 + v37, 1, v39) != 1)
  {
LABEL_33:
    sub_1D87A14E4(v38, &qword_1ECA65A90);
LABEL_41:
    sub_1D89388D8(v34, type metadata accessor for RefinementStateInternal);
    goto LABEL_27;
  }

  sub_1D87A14E4(v38, &qword_1ECA641B8);
LABEL_22:
  sub_1D89388D8(v34, type metadata accessor for RefinementStateInternal);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1D893B960(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_1D8B13240();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CVBundle.BundleType(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DA8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v19 = *(v16 + 56);
  sub_1D8917FF0(a1, &v24 - v17, type metadata accessor for CVBundle.BundleType);
  sub_1D8917FF0(v25, &v18[v19], type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8917FF0(v18, v12, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v24;
      (*(v3 + 32))(v5, &v18[v19], v24);
      v21 = sub_1D8B13200();
      v22 = *(v3 + 8);
      v22(v5, v20);
      v22(v12, v20);
LABEL_9:
      sub_1D89388D8(v18, type metadata accessor for CVBundle.BundleType);
      return v21 & 1;
    }

    (*(v3 + 8))(v12, v24);
  }

  else
  {
    sub_1D8917FF0(v18, v14, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D8918058(&v18[v19], v8, type metadata accessor for CVTrackSnapshot);
      v21 = _s22VisualIntelligenceCore15CVTrackSnapshotV2eeoiySbAC_ACtFZ_0(v14, v8);
      sub_1D89388D8(v8, type metadata accessor for CVTrackSnapshot);
      sub_1D89388D8(v14, type metadata accessor for CVTrackSnapshot);
      goto LABEL_9;
    }

    sub_1D89388D8(v14, type metadata accessor for CVTrackSnapshot);
  }

  sub_1D87A14E4(v18, &qword_1ECA63DA8);
  v21 = 0;
  return v21 & 1;
}

uint64_t _s22VisualIntelligenceCore15RefinementStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleClassification(0);
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A90);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v11;
  v12 = type metadata accessor for RefinementState(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BD0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v47 - v23;
  v25 = &v47 + *(v22 + 56) - v23;
  sub_1D8917FF0(a1, &v47 - v23, type metadata accessor for RefinementState);
  sub_1D8917FF0(a2, v25, type metadata accessor for RefinementState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D8917FF0(v24, v20, type metadata accessor for RefinementState);
      v28 = *(v20 + 1);
      v27 = *(v20 + 2);
      v29 = v20[24];
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1D88E1004(v28, v27, v29);
LABEL_16:
        sub_1D87A14E4(v24, &qword_1ECA65BD0);
LABEL_17:
        v31 = 0;
        return v31 & 1;
      }

      v36 = *(v20 + 4);
      v37 = *v20;
      v38 = *v25;
      v39 = *(v25 + 1);
      v40 = *(v25 + 2);
      v41 = *(v25 + 4);
      v42 = v25[24];
      v58[0] = v37;
      v59 = v28;
      v60 = v27;
      v61 = v29;
      v62 = v36;
      v53[0] = v38;
      v54 = v39;
      v55 = v40;
      v56 = v42;
      v57 = v41;
      v31 = _s22VisualIntelligenceCore32BundleClassificationRuntimeErrorV2eeoiySbAC_ACtFZ_0(v58, v53);
      sub_1D88E1004(v39, v40, v42);
      sub_1D88E1004(v28, v27, v29);
LABEL_19:
      sub_1D89388D8(v24, type metadata accessor for RefinementState);
      return v31 & 1;
    }

    sub_1D8917FF0(v24, v18, type metadata accessor for RefinementState);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D87A14E4(v18, &qword_1ECA641B8);
      goto LABEL_16;
    }

    v32 = *(v10 + 48);
    v33 = v52;
    sub_1D881F6FC(v18, v52, &qword_1ECA641B8);
    sub_1D881F6FC(v25, v33 + v32, &qword_1ECA641B8);
    v34 = v51;
    v35 = *(v50 + 48);
    if (v35(v33, 1, v51) == 1)
    {
      if (v35(v33 + v32, 1, v34) == 1)
      {
        sub_1D87A14E4(v33, &qword_1ECA641B8);
        goto LABEL_13;
      }
    }

    else
    {
      v44 = v48;
      sub_1D87A0E38(v33, v48, &qword_1ECA641B8);
      if (v35(v33 + v32, 1, v34) != 1)
      {
        v45 = v47;
        sub_1D8918058(v33 + v32, v47, type metadata accessor for BundleClassification);
        v46 = _s22VisualIntelligenceCore20BundleClassificationV2eeoiySbAC_ACtFZ_0(v44, v45);
        sub_1D89388D8(v45, type metadata accessor for BundleClassification);
        sub_1D89388D8(v44, type metadata accessor for BundleClassification);
        sub_1D87A14E4(v33, &qword_1ECA641B8);
        if (v46)
        {
          goto LABEL_13;
        }

LABEL_24:
        sub_1D89388D8(v24, type metadata accessor for RefinementState);
        goto LABEL_17;
      }

      sub_1D89388D8(v44, type metadata accessor for BundleClassification);
    }

    sub_1D87A14E4(v33, &qword_1ECA65A90);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D8917FF0(v24, v15, type metadata accessor for RefinementState);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1D89388D8(v15, type metadata accessor for BundleClassification);
      goto LABEL_16;
    }

    v30 = v49;
    sub_1D8918058(v25, v49, type metadata accessor for BundleClassification);
    v31 = _s22VisualIntelligenceCore20BundleClassificationV2eeoiySbAC_ACtFZ_0(v15, v30);
    sub_1D89388D8(v30, type metadata accessor for BundleClassification);
    sub_1D89388D8(v15, type metadata accessor for BundleClassification);
    goto LABEL_19;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_1D89388D8(v24, type metadata accessor for RefinementState);
  v31 = 1;
  return v31 & 1;
}

uint64_t _s22VisualIntelligenceCore13BundleManagerC6OutputV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  v5 = *(a2 + 88);
  if ((sub_1D88E4444(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 56);
  v12[2] = *(a1 + 40);
  v12[3] = v7;
  v12[4] = *(a1 + 72);
  v12[0] = *(a1 + 8);
  v12[1] = v6;
  v8 = *(a2 + 24);
  v9 = *(a2 + 56);
  v11[2] = *(a2 + 40);
  v11[3] = v9;
  v11[4] = *(a2 + 72);
  v11[0] = *(a2 + 8);
  v11[1] = v8;
  if (!_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v12, v11))
  {
    return 0;
  }

  return sub_1D8855170(v4, v5);
}

uint64_t _s22VisualIntelligenceCore13BundleManagerC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D88E53C0(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13))
  {
    goto LABEL_12;
  }

  v4 = type metadata accessor for BundleManager.Configuration(0);
  sub_1D8B15340();
  sub_1D893FD6C(&qword_1EE0E3A60, MEMORY[0x1E69C9A90]);
  sub_1D8B15C40();
  sub_1D8B15C40();
  if (v10 == v8 && v11 == v9)
  {
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if ((v5 & 1) == 0)
    {
LABEL_12:
      v6 = 0;
      return v6 & 1;
    }
  }

  if ((sub_1D8950304(*(a1 + *(v4 + 36)), *(a2 + *(v4 + 36))) & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1D8B150F0();
  sub_1D893FD6C(&qword_1EE0E3A98, MEMORY[0x1E69DFC28]);
  sub_1D8B15C40();
  sub_1D8B15C40();
  if (v10 != v8)
  {
    goto LABEL_12;
  }

  v6 = sub_1D87DF890(*(a1 + *(v4 + 44)), *(a2 + *(v4 + 44)));
  return v6 & 1;
}

unint64_t sub_1D893C688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B0);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65C00);
      result = sub_1D87EF6AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for BundleClassification.ClassificationType(0);
      sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for BundleClassification.ClassificationType);
      v16 = v7[7];
      v17 = type metadata accessor for RefinementState(0);
      result = sub_1D8918058(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for RefinementState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893C8A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BA0);
    v3 = sub_1D8B16910();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1D881F7DC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893C994(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BC8);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v11, &qword_1ECA63538);
      v5 = v11;
      result = sub_1D881F7E0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D8943B68(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893CABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CD0);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v13, &qword_1ECA630F8);
      v5 = v13;
      v6 = v14;
      result = sub_1D87EF838(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D8943B68(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893CBEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C90);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65C88);
      result = sub_1D87EFAE0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
      result = sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893CDD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BB8);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, v13, &qword_1ECA65BC0);
      result = sub_1D87EFF08(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D8943B68(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893CF0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B60);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v11, &unk_1ECA67D90);
      v5 = v11;
      result = sub_1D87EFE54(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D8943B68(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893D034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BA8);
    v3 = sub_1D8B16910();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D87EFE54(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893D154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B80);
    v3 = sub_1D8B16910();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D87EF838(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893D250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C58);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65C50);
      result = sub_1D87EF6AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for BundleClassification.ClassificationType(0);
      result = sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for BundleClassification.ClassificationType);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893D434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C48);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65C40);
      result = sub_1D87EF6AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for BundleClassification.ClassificationType(0);
      result = sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for BundleClassification.ClassificationType);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893D618(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CC0);
    v3 = sub_1D8B16910();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D87EFE54(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893D710(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C80);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65C78);
      result = sub_1D87EFCC8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
      sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v16 = v7[7];
      v17 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
      result = sub_1D8918058(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D893D928(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CB8);
  v3 = sub_1D8B16910();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D87EFF94(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D87EFF94(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D893DA30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CC8);
    v3 = sub_1D8B16910();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D881F7DC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893DB10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B70);
    v7 = sub_1D8B16910();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v8, v5, &qword_1ECA65B68);
      result = sub_1D87F0134(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
      sub_1D8918058(v5, v13 + *(*(v14 - 8) + 72) * v12, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
      result = sub_1D881F6FC(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &qword_1ECA65B78);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893DD38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CD8);
    v3 = sub_1D8B16910();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D87EF838(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893DE34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CB0);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v11, &qword_1ECA64740);
      v5 = v11;
      result = sub_1D881F7E0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D8943B68(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893DF5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C70);
    v3 = sub_1D8B16910();
    for (i = (a1 + 40); ; i += 12)
    {
      v5 = *(i - 8);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1D881F7DC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 8 * result;
      *v10 = v6;
      *(v10 + 4) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893E048(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B90);
    v7 = sub_1D8B16910();
    v19 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_1D87A0E38(v8, v5, &qword_1ECA65B88);
      result = sub_1D881F7DC(*v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v13 = v7[7];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98);
      result = sub_1D881F6FC(&v5[v19], v13 + *(*(v14 - 8) + 72) * v12, &qword_1ECA65B98);
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      v8 += v9;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893E230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CA8);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65CA0);
      result = sub_1D87F02B0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
      sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      v16 = v7[7];
      v17 = type metadata accessor for TrackManager.TrackedProcessorState(0);
      result = sub_1D8918058(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for TrackManager.TrackedProcessorState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893E448(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64968);
  v3 = sub_1D8B16910();
  v4 = *(a1 + 80);
  *&v24[32] = *(a1 + 64);
  *&v24[48] = v4;
  v5 = *(a1 + 112);
  *&v24[64] = *(a1 + 96);
  *&v24[80] = v5;
  v6 = *(a1 + 48);
  *v24 = *(a1 + 32);
  *&v24[16] = v6;
  v7 = v24[0];
  result = sub_1D881F7DC(v24[0]);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1D87A0E38(v24, v23, &qword_1ECA65C98);
    return v3;
  }

  v10 = (a1 + 128);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v7;
    v11 = v3[7] + 88 * result;
    v12 = *&v24[24];
    *v11 = *&v24[8];
    *(v11 + 16) = v12;
    v13 = *&v24[40];
    v14 = *&v24[56];
    v15 = *&v24[72];
    *(v11 + 80) = *&v24[88];
    *(v11 + 48) = v14;
    *(v11 + 64) = v15;
    *(v11 + 32) = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1D87A0E38(v24, v23, &qword_1ECA65C98);
    v19 = v10[3];
    *&v24[32] = v10[2];
    *&v24[48] = v19;
    v20 = v10[5];
    *&v24[64] = v10[4];
    *&v24[80] = v20;
    v21 = v10[1];
    *v24 = *v10;
    *&v24[16] = v21;
    v7 = v24[0];
    result = sub_1D881F7DC(v24[0]);
    v10 += 6;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D893E5E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C20);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v11, &qword_1ECA65C28);
      v5 = v11;
      result = sub_1D881F7E0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D8943B68(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893E70C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C38);
    v7 = sub_1D8B16910();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65C30);
      result = sub_1D87EF6AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for BundleClassification.ClassificationType(0);
      result = sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for BundleClassification.ClassificationType);
      v16 = v7[7] + 48 * v13;
      v17 = *(v8 + 1);
      v18 = v8[16];
      v19 = *(v8 + 5);
      v20 = *(v8 + 24);
      *v16 = *v8;
      *(v16 + 8) = v17;
      *(v16 + 16) = v18;
      *(v16 + 24) = v20;
      *(v16 + 40) = v19;
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v7[2] = v23;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893E930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D28);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v11, &qword_1ECA65D30);
      v5 = v11;
      result = sub_1D881F7E0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D8943B68(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893EA58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
    v3 = sub_1D8B16910();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D881F7DC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893EB38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C10);
    v3 = sub_1D8B16910();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D87EF838(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893EC50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63430);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657C8);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA63430);
      result = sub_1D87F0508(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CVBundle(0);
      result = sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for CVBundle);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D893EE34(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B40);
  v3 = sub_1D8B16910();
  v4 = a1[4];
  v5 = sub_1D881C1D8();
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = a1 + 5;
  v10 = v1 - 1;
  while (1)
  {
    *(v3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
    *(*(v3 + 56) + 8 * v7) = result;
    v11 = *(v3 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    *(v3 + 16) = v13;
    if (!v10)
    {
      goto LABEL_8;
    }

    v14 = *v9++;

    v7 = sub_1D881C1D8();
    --v10;
    result = v14;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D893EF20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B38);
    v7 = sub_1D8B16910();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_1D87A0E38(v8, v5, &qword_1ECA65B30);
      result = sub_1D881C1D8();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_1D8B13240();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893F0E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BB0);
    v3 = sub_1D8B16910();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D881F7E0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893F1D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B00);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v13, &qword_1ECA65B08);
      v5 = v13;
      v6 = v14;
      result = sub_1D87EF838(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D8788F40(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893F30C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AF8);
    v3 = sub_1D8B16910();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_1D881F7DC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893F3EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AF0);
    v3 = sub_1D8B16910();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D87EF838(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893F500(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AE8);
    v3 = sub_1D8B16910();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D87EF838(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893F618(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1D8B16910();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D87EF838(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893F714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AB8);
    v3 = sub_1D8B16910();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D87EFF94(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893F7F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA8);
    v3 = sub_1D8B16910();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v7 = *i;
      v6 = *(i - 4);
      result = sub_1D87F05FC(v5 | (v6 << 32));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 8 * result;
      *v10 = v5;
      *(v10 + 4) = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D893F918(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1D8B16910();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D893FA4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v22 - v16;
  v23 = a2;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = *(v15 + 72);
    do
    {
      sub_1D8917FF0(v19, v14, a4);
      a5(v17, v14);
      sub_1D89388D8(v17, a6);
      v19 += v20;
      --v18;
    }

    while (v18);
    return v23;
  }

  return a2;
}

unint64_t sub_1D893FBBC()
{
  result = qword_1ECA65720;
  if (!qword_1ECA65720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65720);
  }

  return result;
}

unint64_t sub_1D893FC10()
{
  result = qword_1ECA65728;
  if (!qword_1ECA65728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65728);
  }

  return result;
}

unint64_t sub_1D893FC64()
{
  result = qword_1ECA65748;
  if (!qword_1ECA65748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65748);
  }

  return result;
}

unint64_t sub_1D893FCB8()
{
  result = qword_1ECA65760;
  if (!qword_1ECA65760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65758);
    sub_1D893FD6C(&qword_1ECA64370, type metadata accessor for CVBundle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65760);
  }

  return result;
}

uint64_t sub_1D893FD6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D893FDB4()
{
  result = qword_1ECA65770;
  if (!qword_1ECA65770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65768);
    sub_1D893FD6C(&qword_1ECA652C8, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D893FD6C(&qword_1ECA65778, type metadata accessor for RefinementState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65770);
  }

  return result;
}

unint64_t sub_1D893FEA0()
{
  result = qword_1ECA65790;
  if (!qword_1ECA65790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65758);
    sub_1D893FD6C(&qword_1ECA65798, type metadata accessor for CVBundle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65790);
  }

  return result;
}

unint64_t sub_1D893FF54()
{
  result = qword_1ECA657A0;
  if (!qword_1ECA657A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65768);
    sub_1D893FD6C(&qword_1ECA652E0, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D893FD6C(&qword_1ECA657A8, type metadata accessor for RefinementState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA657A0);
  }

  return result;
}

uint64_t sub_1D8940088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = a11;
  if (a11)
  {
  }

  return result;
}

unint64_t sub_1D89400D4()
{
  result = qword_1ECA657F8;
  if (!qword_1ECA657F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA657F8);
  }

  return result;
}

unint64_t sub_1D8940128()
{
  result = qword_1ECA65800;
  if (!qword_1ECA65800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65800);
  }

  return result;
}

unint64_t sub_1D894017C()
{
  result = qword_1ECA65810;
  if (!qword_1ECA65810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65810);
  }

  return result;
}

unint64_t sub_1D89401D0()
{
  result = qword_1ECA65818;
  if (!qword_1ECA65818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65818);
  }

  return result;
}

unint64_t sub_1D8940224()
{
  result = qword_1ECA65820;
  if (!qword_1ECA65820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65820);
  }

  return result;
}

float sub_1D8940278()
{
  CVBundle.latestEstimate.getter(&v8);
  if (v8 >> 60 == 11)
  {
    v0 = type metadata accessor for SyntheticDetectionResult();
    v1 = swift_projectBox();
    v2 = *(v0 + 24);
    if ((*(v1 + v2) & 1) == 0)
    {

      return 1.1;
    }

    v3 = v1;
    v4 = sub_1D8B16BA0();

    if (v4)
    {

      return 1.1;
    }

    if (*(v3 + v2) == 1)
    {

      return 0.9;
    }

    v7 = sub_1D8B16BA0();

    if (v7)
    {
      return 0.9;
    }
  }

  else
  {
  }

  return 0.275;
}

uint64_t sub_1D89403D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B44590 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001D8B445B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D8940548()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = byte_1F54280A8[v0 + 32];
    if (v4 <= 0xB && ((1 << v4) & 0x8D9) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D87F4534(0, *(v1 + 16) + 1, 1);
      }

      v3 = *(v1 + 16);
      v2 = *(v1 + 24);
      if (v3 >= v2 >> 1)
      {
        sub_1D87F4534((v2 > 1), v3 + 1, 1);
      }

      *(v1 + 16) = v3 + 1;
      *(v1 + v3 + 32) = v4;
    }

    ++v0;
  }

  while (v0 != 14);
  v6 = sub_1D87C4904(v1);

  return v6;
}

uint64_t sub_1D8940658(uint64_t a1)
{
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - v6;
  v8 = MEMORY[0x1E69E7CC8];
  v42 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v37 = *(v4 + 80);
  v10 = *(v4 + 72);
  v40 = (v37 + 32) & ~v37;
  v11 = a1 + v40;
  v36 = xmmword_1D8B1AB90;
  v41 = v5;
  v38 = v2;
  v39 = v10;
  while (1)
  {
    sub_1D8917FF0(v11, v7, type metadata accessor for CVTrackSnapshot);
    v15 = *&v7[*(v2 + 24)] >> 60;
    v17 = sub_1D881F7DC(v15);
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_1D896D04C(v20, 1);
      v8 = v42;
      v22 = sub_1D881F7DC(v15);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {
      v24 = v8[7];
      sub_1D8918058(v7, v41, type metadata accessor for CVTrackSnapshot);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1D87C7834(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1D87C7834(v27 > 1, v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v2 = v38;
      v12 = v39;
      v25[2] = v28 + 1;
      v13 = v25 + v40 + v28 * v12;
      v14 = v12;
      sub_1D8918058(v41, v13, type metadata accessor for CVTrackSnapshot);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633E0);
      v29 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = v36;
      sub_1D8918058(v7, v30 + v29, type metadata accessor for CVTrackSnapshot);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + v17) = v15;
      *(v8[7] + 8 * v17) = v30;
      v31 = v8[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v8[2] = v33;
      v14 = v39;
    }

    v11 += v14;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

void *sub_1D8940998(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v63 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1D8B13240();
  v67 = *(v60 - 8);
  v4 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v49 - v8;
  v10 = type metadata accessor for CVBundle(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v49 - v14;
  v15 = sub_1D893EE34(MEMORY[0x1E69E7CC0]);
  v16 = 0;
  v70 = v15;
  v17 = *(a1 + 16);
  while (v17 != v16)
  {
    v18 = v16 + 1;
    sub_1D8927ABC(&v70, a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16);
    v16 = v18;
  }

  v19 = v70;
  v20 = v70 + 64;
  v21 = 1 << *(v70 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v70 + 64);
  v24 = (v21 + 63) >> 6;
  v69 = (v11 + 56);
  v56 = v67 + 16;
  v53 = v67 + 8;
  v54 = v67 + 32;
  v52 = (v11 + 48);

  v26 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  v61 = v10;
  v57 = v9;
  v65 = v24;
  v66 = v20;
  v55 = v19;
  if (v23)
  {
LABEL_14:
    while (1)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      if (*(*(*(v19 + 56) + ((v26 << 9) | (8 * v28))) + 16) < 2uLL)
      {
        break;
      }

      v68 = *(*(v19 + 56) + ((v26 << 9) | (8 * v28)));
      v29 = v64;
      if (*(v64 + 16) && (v30 = sub_1D881C1D8(), (v31 & 1) != 0))
      {
        v32 = v67;
        v33 = *(v67 + 16);
        v35 = v59;
        v34 = v60;
        v33(v59, *(v29 + 56) + *(v67 + 72) * v30, v60);
        v36 = v58;
        (*(v32 + 32))(v58, v35, v34);
        v37 = v62;
        v33(v62, v36, v34);
        swift_storeEnumTagMultiPayload();
        v38 = *(v32 + 8);
        v24 = v65;
        v39 = v68;
        swift_bridgeObjectRetain_n();
        v40 = v36;
        v20 = v66;
        v41 = v34;
        v19 = v55;
        v38(v40, v41);
        v42 = v37;
        v9 = v57;
        sub_1D8918058(v42, v57, type metadata accessor for CVBundle.BundleType);
        v10 = v61;
        *&v9[*(v61 + 20)] = v39;
        *&v9[*(v10 + 24)] = MEMORY[0x1E69E7CC0];
        *&v9[*(v10 + 28)] = MEMORY[0x1E69E7CC8];
        (*v69)(v9, 0, 1, v10);

        if ((*v52)(v9, 1, v10) != 1)
        {
          goto LABEL_20;
        }

LABEL_9:
        result = sub_1D87A14E4(v9, &qword_1ECA67980);
        if (!v23)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v43 = v68;

        v44 = v62;
        sub_1D8B13230();
        swift_storeEnumTagMultiPayload();
        sub_1D8918058(v44, v9, type metadata accessor for CVBundle.BundleType);
        v10 = v61;
        *&v9[*(v61 + 20)] = v43;
        *&v9[*(v10 + 24)] = MEMORY[0x1E69E7CC0];
        *&v9[*(v10 + 28)] = MEMORY[0x1E69E7CC8];
        (*v69)(v9, 0, 1, v10);
LABEL_20:
        v45 = v49;
        sub_1D8918058(v9, v49, type metadata accessor for CVBundle);
        sub_1D8918058(v45, v50, type metadata accessor for CVBundle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1D87C7E90(0, v51[2] + 1, 1, v51);
        }

        v47 = v51[2];
        v46 = v51[3];
        v24 = v65;
        if (v47 >= v46 >> 1)
        {
          v51 = sub_1D87C7E90(v46 > 1, v47 + 1, 1, v51);
        }

        v48 = v51;
        v51[2] = v47 + 1;
        result = sub_1D8918058(v50, v48 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v47, type metadata accessor for CVBundle);
        v20 = v66;
        if (!v23)
        {
          goto LABEL_10;
        }
      }
    }

    (*v69)(v9, 1, 1, v10);
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v51;
    }

    v23 = *(v20 + 8 * v27);
    ++v26;
    if (v23)
    {
      v26 = v27;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894105C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69666552746F6ELL && a2 == 0xEC000000656C6261;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696665526E6163 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696E69666572 && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1D89411D4()
{
  result = qword_1ECA65860;
  if (!qword_1ECA65860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65860);
  }

  return result;
}

unint64_t sub_1D8941228()
{
  result = qword_1ECA65870;
  if (!qword_1ECA65870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65868);
    sub_1D893FD6C(&qword_1ECA652C8, type metadata accessor for BundleClassification.ClassificationType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65870);
  }

  return result;
}

unint64_t sub_1D89412DC()
{
  result = qword_1ECA65878;
  if (!qword_1ECA65878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65878);
  }

  return result;
}

unint64_t sub_1D8941330()
{
  result = qword_1ECA65890;
  if (!qword_1ECA65890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65888);
    sub_1D893FD6C(&qword_1ECA65898, MEMORY[0x1E69E0220]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65890);
  }

  return result;
}

unint64_t sub_1D89413E4()
{
  result = qword_1ECA658A8;
  if (!qword_1ECA658A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA658A8);
  }

  return result;
}

unint64_t sub_1D8941438()
{
  result = qword_1ECA658B8;
  if (!qword_1ECA658B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65868);
    sub_1D893FD6C(&qword_1ECA652E0, type metadata accessor for BundleClassification.ClassificationType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA658B8);
  }

  return result;
}

unint64_t sub_1D89414EC()
{
  result = qword_1ECA658C0;
  if (!qword_1ECA658C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA658C0);
  }

  return result;
}

unint64_t sub_1D8941540()
{
  result = qword_1ECA658D0;
  if (!qword_1ECA658D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65888);
    sub_1D893FD6C(&qword_1ECA658D8, MEMORY[0x1E69E0220]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA658D0);
  }

  return result;
}

unint64_t sub_1D89415F4()
{
  result = qword_1ECA658E8;
  if (!qword_1ECA658E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA658E8);
  }

  return result;
}

unint64_t sub_1D894164C()
{
  result = qword_1ECA658F0;
  if (!qword_1ECA658F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA658F0);
  }

  return result;
}

uint64_t sub_1D89416E8(uint64_t a1)
{
  result = sub_1D893FD6C(&qword_1ECA658F8, type metadata accessor for CVBundle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8941740(uint64_t a1)
{
  result = sub_1D893FD6C(&qword_1ECA65900, type metadata accessor for CVBundle);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D894179C()
{
  result = qword_1ECA65908;
  if (!qword_1ECA65908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65908);
  }

  return result;
}

uint64_t sub_1D89417FC(uint64_t a1)
{
  result = sub_1D893FD6C(&qword_1EE0E85E0, type metadata accessor for BundleManager);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D89418BC(void *a1)
{
  a1[1] = sub_1D893FD6C(&qword_1ECA64AB8, type metadata accessor for BundleManager.Configuration);
  a1[2] = sub_1D893FD6C(&qword_1ECA64A90, type metadata accessor for BundleManager.Configuration);
  result = sub_1D893FD6C(&qword_1ECA65918, type metadata accessor for BundleManager.Configuration);
  a1[3] = result;
  return result;
}

void sub_1D89419A0()
{
  type metadata accessor for CVBundle.BundleType(319);
  if (v0 <= 0x3F)
  {
    sub_1D8942044(319, &qword_1ECA65920, type metadata accessor for CVBundle, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D8941A6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8941A6C()
{
  if (!qword_1EE0E3A38)
  {
    type metadata accessor for BundleClassification.ClassificationType(255);
    type metadata accessor for RefinementState(255);
    sub_1D893FD6C(qword_1EE0E57F8, type metadata accessor for BundleClassification.ClassificationType);
    v0 = sub_1D8B15780();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3A38);
    }
  }
}

void sub_1D8941B20()
{
  type metadata accessor for BundleManager.Configuration(319);
  if (v0 <= 0x3F)
  {
    sub_1D8941DA8();
    if (v1 <= 0x3F)
    {
      sub_1D8B151E0();
      if (v2 <= 0x3F)
      {
        sub_1D8941DF8(319, &qword_1EE0E3888, MEMORY[0x1E69E8698]);
        if (v3 <= 0x3F)
        {
          sub_1D8941DF8(319, &qword_1EE0E38F0, MEMORY[0x1E69E8660]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1D8941DA8()
{
  if (!qword_1EE0E3910)
  {
    v0 = sub_1D8B15ED0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3910);
    }
  }
}

void sub_1D8941DF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA649F8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D8941E64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D8941EAC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1D8941F14()
{
  sub_1D8941F9C();
  if (v0 <= 0x3F)
  {
    sub_1D8941FCC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for BundleClassification(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

ValueMetadata *sub_1D8941F9C()
{
  result = qword_1EE0E46D8[0];
  if (!qword_1EE0E46D8[0])
  {
    result = &type metadata for BundleClassificationRuntimeError;
    atomic_store(&type metadata for BundleClassificationRuntimeError, qword_1EE0E46D8);
  }

  return result;
}

void sub_1D8941FCC()
{
  if (!qword_1EE0E56F8[0])
  {
    sub_1D8942044(0, &qword_1EE0E56F0, type metadata accessor for BundleClassification, MEMORY[0x1E69E6720]);
    if (!v1)
    {
      atomic_store(v0, qword_1EE0E56F8);
    }
  }
}

void sub_1D8942044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D89420D0()
{
  result = sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BundleManager.Configuration(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1D89421E0()
{
  sub_1D8942044(319, &qword_1EE0E3990, type metadata accessor for BundleClassification.ClassificationType, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D8B15340();
    if (v1 <= 0x3F)
    {
      sub_1D89422E8();
      if (v2 <= 0x3F)
      {
        sub_1D8B150F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D89422E8()
{
  if (!qword_1EE0E3828)
  {
    sub_1D8B15270();
    sub_1D893FD6C(&qword_1EE0E3A80, MEMORY[0x1E69E0220]);
    v0 = sub_1D8B16080();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3828);
    }
  }
}

uint64_t sub_1D894237C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D89424A4;

  return v9(a1, a2, a3);
}

uint64_t sub_1D89424A4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D8942608()
{
  result = type metadata accessor for BundleClassification(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RefinementStateInternal(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D894268C()
{
  sub_1D8941F9C();
  if (v0 <= 0x3F)
  {
    sub_1D8941FCC();
    if (v1 <= 0x3F)
    {
      sub_1D8942728();
      if (v2 <= 0x3F)
      {
        type metadata accessor for BundleClassification(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8942728()
{
  if (!qword_1EE0E3868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA641B8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0E3868);
    }
  }
}

uint64_t getEnumTagSinglePayload for TrackManager.WorkStateInternal(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackManager.WorkStateInternal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1D894299C()
{
  type metadata accessor for CVBundle(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BundleManager.Configuration(319);
    if (v1 <= 0x3F)
    {
      sub_1D8942044(319, &qword_1EE0E3988, type metadata accessor for BundleClassification, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D8B14C10();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8942AD8()
{
  sub_1D8942C00(319, &qword_1ECA65940, type metadata accessor for CVBundle);
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1D8942B68()
{
  type metadata accessor for CVTrackSnapshot(319);
  if (v0 <= 0x3F)
  {
    sub_1D8942C00(319, &qword_1EE0E9880, MEMORY[0x1E69695A8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8942C00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D8942CB8()
{
  result = qword_1ECA65950;
  if (!qword_1ECA65950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65950);
  }

  return result;
}

unint64_t sub_1D8942D10()
{
  result = qword_1ECA65958;
  if (!qword_1ECA65958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65958);
  }

  return result;
}

unint64_t sub_1D8942D68()
{
  result = qword_1ECA65960;
  if (!qword_1ECA65960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65960);
  }

  return result;
}

unint64_t sub_1D8942DC0()
{
  result = qword_1ECA65968;
  if (!qword_1ECA65968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65968);
  }

  return result;
}

unint64_t sub_1D8942E18()
{
  result = qword_1ECA65970;
  if (!qword_1ECA65970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65970);
  }

  return result;
}

unint64_t sub_1D8942E70()
{
  result = qword_1ECA65978;
  if (!qword_1ECA65978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65978);
  }

  return result;
}

unint64_t sub_1D8942EC8()
{
  result = qword_1ECA65980;
  if (!qword_1ECA65980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65980);
  }

  return result;
}

unint64_t sub_1D8942F68()
{
  result = qword_1ECA65990;
  if (!qword_1ECA65990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65990);
  }

  return result;
}

unint64_t sub_1D8942FC0()
{
  result = qword_1ECA65998;
  if (!qword_1ECA65998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65998);
  }

  return result;
}

unint64_t sub_1D8943018()
{
  result = qword_1ECA659A0;
  if (!qword_1ECA659A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659A0);
  }

  return result;
}

unint64_t sub_1D8943070()
{
  result = qword_1ECA659A8;
  if (!qword_1ECA659A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659A8);
  }

  return result;
}

unint64_t sub_1D89430C8()
{
  result = qword_1ECA659B0;
  if (!qword_1ECA659B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659B0);
  }

  return result;
}

unint64_t sub_1D8943120()
{
  result = qword_1ECA659B8;
  if (!qword_1ECA659B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659B8);
  }

  return result;
}

unint64_t sub_1D8943178()
{
  result = qword_1ECA659C0;
  if (!qword_1ECA659C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659C0);
  }

  return result;
}

unint64_t sub_1D89431D0()
{
  result = qword_1ECA659C8;
  if (!qword_1ECA659C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659C8);
  }

  return result;
}

unint64_t sub_1D8943228()
{
  result = qword_1ECA659D0;
  if (!qword_1ECA659D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659D0);
  }

  return result;
}

unint64_t sub_1D8943280()
{
  result = qword_1ECA659D8;
  if (!qword_1ECA659D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659D8);
  }

  return result;
}

unint64_t sub_1D89432D8()
{
  result = qword_1ECA659E0;
  if (!qword_1ECA659E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659E0);
  }

  return result;
}

unint64_t sub_1D8943330()
{
  result = qword_1ECA659E8;
  if (!qword_1ECA659E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659E8);
  }

  return result;
}

unint64_t sub_1D8943388()
{
  result = qword_1ECA659F0;
  if (!qword_1ECA659F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659F0);
  }

  return result;
}

unint64_t sub_1D89433E0()
{
  result = qword_1ECA659F8;
  if (!qword_1ECA659F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659F8);
  }

  return result;
}

unint64_t sub_1D8943438()
{
  result = qword_1ECA65A00;
  if (!qword_1ECA65A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A00);
  }

  return result;
}

unint64_t sub_1D8943490()
{
  result = qword_1ECA65A08;
  if (!qword_1ECA65A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A08);
  }

  return result;
}

unint64_t sub_1D89434E8()
{
  result = qword_1ECA65A10;
  if (!qword_1ECA65A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A10);
  }

  return result;
}

unint64_t sub_1D8943540()
{
  result = qword_1ECA65A18;
  if (!qword_1ECA65A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A18);
  }

  return result;
}

unint64_t sub_1D8943594()
{
  result = qword_1ECA65A38;
  if (!qword_1ECA65A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A38);
  }

  return result;
}

unint64_t sub_1D89435E8()
{
  result = qword_1ECA65A40;
  if (!qword_1ECA65A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A40);
  }

  return result;
}

unint64_t sub_1D894363C()
{
  result = qword_1ECA65A48;
  if (!qword_1ECA65A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A48);
  }

  return result;
}

unint64_t sub_1D8943690()
{
  result = qword_1ECA65A50;
  if (!qword_1ECA65A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A50);
  }

  return result;
}

unint64_t sub_1D89436E4()
{
  result = qword_1ECA65A78;
  if (!qword_1ECA65A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A78);
  }

  return result;
}

uint64_t sub_1D8943738(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001D8B445E0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001D8B44600 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001D8B44630 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D8B44660 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B44680 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D8B446A0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x666B726F57706176 && a2 == 0xEB00000000776F6CLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B446C0 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D89439D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

_OWORD *sub_1D8943B68(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D8943B9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D886553C;

  return sub_1D892C910(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_1D8943D3C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D892D758(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D8943E68(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D886553C;

  return sub_1D893561C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1D8943F30(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D886553C;

  return sub_1D8937F84(a1, a2, v6);
}

uint64_t sub_1D8943FE0(uint64_t a1)
{
  v4 = *(type metadata accessor for BundleManager.BundleClassificationRequest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D8864FBC;

  return sub_1D8938820(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D89440D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8864FBC;

  return sub_1D88B7B50(a1, v4);
}

uint64_t sub_1D8944188(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BundleClassification(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for CVBundle(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for BundleManager.BundleClassificationRequest(0) - 8);
  v12 = (v10 + *(v11 + 80) + 96) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D886553C;

  return sub_1D893611C(a1, v13, v14, v1 + v6, v1 + v9, v1 + v10, v1 + v12);
}

uint64_t sub_1D894434C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D88B7A58(a1, v4);
}

unint64_t sub_1D8944438()
{
  result = qword_1ECA65CE0;
  if (!qword_1ECA65CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65CE0);
  }

  return result;
}

unint64_t sub_1D8944490()
{
  result = qword_1ECA65CE8;
  if (!qword_1ECA65CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65CE8);
  }

  return result;
}

unint64_t sub_1D89444E8()
{
  result = qword_1ECA65CF0;
  if (!qword_1ECA65CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65CF0);
  }

  return result;
}

unint64_t sub_1D8944540()
{
  result = qword_1ECA65CF8;
  if (!qword_1ECA65CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65CF8);
  }

  return result;
}

unint64_t sub_1D8944598()
{
  result = qword_1ECA65D00;
  if (!qword_1ECA65D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D00);
  }

  return result;
}

unint64_t sub_1D89445F0()
{
  result = qword_1ECA65D08;
  if (!qword_1ECA65D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D08);
  }

  return result;
}

unint64_t sub_1D8944648()
{
  result = qword_1ECA65D10;
  if (!qword_1ECA65D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D10);
  }

  return result;
}

unint64_t sub_1D89446A0()
{
  result = qword_1ECA65D18;
  if (!qword_1ECA65D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D18);
  }

  return result;
}

unint64_t sub_1D89446F8()
{
  result = qword_1ECA65D20;
  if (!qword_1ECA65D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D20);
  }

  return result;
}

uint64_t sub_1D89447A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v83 - v8;
  *&v88 = COERCE_DOUBLE(type metadata accessor for AFMResult(0));
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = COERCE_DOUBLE(type metadata accessor for MetaDetectionResult());
  v90 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CVTrackSnapshot(0);
  v94 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *v3;
  LOBYTE(v99) = *v3;
  v89 = a1;
  result = sub_1D8945520(a1);
  if ((result & 1) == 0)
  {
    v78 = xmmword_1D8B26630;
LABEL_95:
    *a3 = v78;
    goto LABEL_96;
  }

  if (!(v18 & 1 | ((v19 & 1) == 0)))
  {
    *a3 = 0;
    a3[1] = 0;
LABEL_96:
    *(a3 + 16) = 2;
    return result;
  }

  v86 = v18;
  v21 = sub_1D891A6E8();
  v22 = v21;
  v93 = *(v21 + 16);
  if (!v93)
  {

LABEL_94:
    v78 = xmmword_1D8B26640;
    goto LABEL_95;
  }

  v84 = a3;
  v23 = 0;
  v92 = v21 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
  v91 = *(v14 + 20);
  v90 += 7;
  while (v23 < *(v22 + 16))
  {
    sub_1D89474BC(v92 + *(v94 + 72) * v23++, v16, type metadata accessor for CVTrackSnapshot);
    switch(*&v16[v91] >> 60)
    {
      case 1:
        *&v40 = COERCE_DOUBLE(type metadata accessor for GroundedParseDetectorResult(0));
        v25 = swift_projectBox();
        v102 = *&v40;
        v103 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
        v27 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_20;
      case 2:
        v33 = swift_projectBox();
        v102 = *&v11;
        v103 = COERCE_DOUBLE(sub_1D8947474(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
        v34 = type metadata accessor for MetaDetectionResult;
        v35 = v33;
        goto LABEL_21;
      case 3:
      case 8:
        *&v24 = COERCE_DOUBLE(type metadata accessor for ObjectDetectorResult(0));
        v25 = swift_projectBox();
        v102 = *&v24;
        v103 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
        v27 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_20;
      case 4:
        *&v41 = COERCE_DOUBLE(type metadata accessor for ParseDetectorResult(0));
        v25 = swift_projectBox();
        v102 = *&v41;
        v103 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64238, type metadata accessor for ParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
        v27 = type metadata accessor for ParseDetectorResult;
        goto LABEL_20;
      case 5:
        *&v42 = COERCE_DOUBLE(type metadata accessor for TextDetectorResult(0));
        v25 = swift_projectBox();
        v102 = *&v42;
        v103 = COERCE_DOUBLE(sub_1D8947474(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
        v27 = type metadata accessor for TextDetectorResult;
        goto LABEL_20;
      case 6:
      case 7:
        *&v28 = COERCE_DOUBLE(type metadata accessor for StreamingBarcodeDetectorResult(0));
        v25 = swift_projectBox();
        v102 = *&v28;
        v103 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
        v27 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_20;
      case 9:
      case 0xALL:
        v29 = swift_projectBox();
        v30 = v87;
        sub_1D89474BC(v29, v87, type metadata accessor for AFMResult);
        v102 = *&v88;
        v103 = COERCE_DOUBLE(sub_1D8947474(&qword_1EE0E3F80, type metadata accessor for AFMResult));
        v31 = __swift_allocate_boxed_opaque_existential_1(&v99);
        sub_1D894740C(v30, v31, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        *&v32 = COERCE_DOUBLE(type metadata accessor for SyntheticDetectionResult());
        v25 = swift_projectBox();
        v102 = *&v32;
        v103 = COERCE_DOUBLE(sub_1D8947474(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
        v27 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_20;
      case 0xCLL:
        *&v36 = COERCE_DOUBLE(type metadata accessor for GroundedParseEmbeddingsResult(0));
        v25 = swift_projectBox();
        v102 = *&v36;
        v103 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
        v27 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_20;
      case 0xDLL:
        *&v43 = COERCE_DOUBLE(type metadata accessor for GroundedParseClassificationsResult(0));
        v25 = swift_projectBox();
        v102 = *&v43;
        v103 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
        v27 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_20:
        v34 = v27;
        v35 = v25;
LABEL_21:
        sub_1D89474BC(v35, boxed_opaque_existential_1, v34);
        break;
      default:
        *&v37 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750));
        v38 = swift_projectBox();
        v102 = *&v37;
        v103 = COERCE_DOUBLE(sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750));
        v39 = __swift_allocate_boxed_opaque_existential_1(&v99);
        sub_1D894733C(v38, v39);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
    v44 = swift_dynamicCast();
    v45 = *v90;
    if (v44)
    {
      v45(v9, 0, 1, v11);
      sub_1D894740C(v9, v13, type metadata accessor for MetaDetectionResult);
      if (*v13 != 5 || (v86 & 1) != 0 && *&v13[v11[8]] != v17)
      {
        goto LABEL_81;
      }

      v85 = v11[9];
      if (v13[v85] == 2 && v17 - *&v13[v11[8]] > 0.0001)
      {
        goto LABEL_81;
      }

      CVBundle.latestEstimate.getter(&v107);
      v98 = v107;
      CVDetection.detection.getter(v95);
      v46 = v13;
      v47 = v22;
      v48 = v96;
      v49 = v97;
      __swift_project_boxed_opaque_existential_1(v95, v96);
      v50 = *(v49 + 64);
      v51 = v49;
      v22 = v47;
      v13 = v46;
      v50(&v99, v48, v51);
      __swift_destroy_boxed_opaque_existential_1(v95);

      v52 = v99;
      v53 = v100;
      if (v101 >= v99)
      {
        v54 = v99;
      }

      else
      {
        v54 = v101;
      }

      if (v103 < v54)
      {
        v54 = v103;
      }

      if (v105 < v54)
      {
        v54 = v105;
      }

      if (v102 >= v100)
      {
        v55 = v100;
      }

      else
      {
        v55 = v102;
      }

      if (v104 < v55)
      {
        v55 = v104;
      }

      if (v106 < v55)
      {
        v55 = v106;
      }

      if (v99 <= v101)
      {
        v52 = v101;
      }

      if (v52 <= v103)
      {
        v52 = v103;
      }

      if (v52 <= v105)
      {
        v52 = v105;
      }

      if (v100 <= v102)
      {
        v53 = v102;
      }

      if (v53 <= v104)
      {
        v53 = v104;
      }

      if (v53 <= v106)
      {
        v53 = v106;
      }

      v56 = v52 - v54;
      v57 = v53 - v55;
      v110.origin.x = 0.0;
      v110.origin.y = 0.0;
      v110.size.width = 1.0;
      v110.size.height = 1.0;
      v108 = CGRectIntersection(*&v54, v110);
      x = v108.origin.x;
      y = v108.origin.y;
      width = v108.size.width;
      height = v108.size.height;
      v62 = (v46 + v11[5]);
      v63 = *v62;
      v64 = v62[1];
      v65 = v62[2];
      v66 = v62[3];
      v67 = v62[4];
      v68 = v62[5];
      v69 = v62[6];
      v70 = v62[7];
      if (v65 >= *v62)
      {
        v71 = *v62;
      }

      else
      {
        v71 = v62[2];
      }

      if (v67 < v71)
      {
        v71 = v62[4];
      }

      if (v69 < v71)
      {
        v71 = v62[6];
      }

      if (v66 >= v64)
      {
        v72 = v62[1];
      }

      else
      {
        v72 = v62[3];
      }

      if (v68 < v72)
      {
        v72 = v62[5];
      }

      if (v70 < v72)
      {
        v72 = v62[7];
      }

      if (v63 <= v65)
      {
        v63 = v62[2];
      }

      if (v63 <= v67)
      {
        v63 = v62[4];
      }

      if (v63 <= v69)
      {
        v63 = v62[6];
      }

      if (v64 <= v66)
      {
        v64 = v62[3];
      }

      if (v64 <= v68)
      {
        v64 = v62[5];
      }

      if (v64 <= v70)
      {
        v64 = v62[7];
      }

      v73 = v63 - v71;
      v74 = v64 - v72;
      v75 = width;
      v76 = height;
      v109 = CGRectIntersection(*&v71, *&x);
      if (width * height * 0.9 <= v109.size.width * v109.size.height)
      {
        v77 = *(v46 + v85);
        if (v77 == 3)
        {
          if (qword_1EE0E54C0 != -1)
          {
            swift_once();
          }

          if (sub_1D8B0AAA4())
          {
            goto LABEL_99;
          }

          sub_1D89473AC(v46, type metadata accessor for MetaDetectionResult);
          if (v86)
          {
            goto LABEL_97;
          }
        }

        else
        {
          sub_1D89473AC(v46, type metadata accessor for MetaDetectionResult);
          if (v77 == 2)
          {
LABEL_97:

            result = sub_1D89473AC(v16, type metadata accessor for CVTrackSnapshot);
            v79 = v84;
            *v84 = 0;
            v79[1] = 0;
            *(v79 + 16) = -1;
            return result;
          }
        }
      }

      else
      {
LABEL_81:
        sub_1D89473AC(v13, type metadata accessor for MetaDetectionResult);
      }
    }

    else
    {
      v45(v9, 1, 1, v11);
      sub_1D87A14E4(v9, &qword_1ECA64BB8);
    }

    sub_1D89473AC(v16, type metadata accessor for CVTrackSnapshot);
    if (v93 == v23)
    {

      a3 = v84;
      goto LABEL_94;
    }
  }

  __break(1u);
LABEL_99:
  v99 = 0.0;
  v100 = -2.68156159e154;
  sub_1D8B16720();

  v99 = -2.31584178e77;
  v100 = COERCE_DOUBLE(0x80000001D8B43DD0);
  v80 = &v13[v11[10]];
  if (v80[1])
  {
    v81 = *v80;
    v82 = v80[1];
  }

  else
  {
    v82 = 0xEF6E65766967206ELL;
    v81 = 0x6F73616572206F6ELL;
  }

  MEMORY[0x1DA71EFA0](v81, v82);

  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D8945520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B13AD0();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D89474BC(a1, v16, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1D8B13240();
    (*(*(v17 - 8) + 8))(v16, v17);
LABEL_3:
    v18 = 0;
    return v18 & 1;
  }

  sub_1D89473AC(v16, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestDetection.getter(&v36);
  v20 = v36 >> 60;
  if ((v36 >> 60) <= 3)
  {
    if (!v20)
    {
      v30 = swift_projectBox();
      sub_1D894733C(v30, v4);
      v31 = sub_1D8A05CB0();
      v32 = sub_1D88E0474(&unk_1F5426E78, v31);

      sub_1D87A14E4(v4, &qword_1ECA67750);

      v18 = v32 ^ 1;
      return v18 & 1;
    }

    if (v20 == 3)
    {
      v21 = swift_projectBox();
      sub_1D89474BC(v21, v7, type metadata accessor for ObjectDetectorResult);
      v22 = &v7[*(v5 + 28)];
      v23 = *v22;
      v24 = *(v22 + 1);
      v25 = *v22 == 1852270963 && v24 == 0xE400000000000000;
      if (v25 || (sub_1D8B16BA0() & 1) != 0 || v23 == 0x746E656D75636F64 && v24 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
      {
        sub_1D89473AC(v7, type metadata accessor for ObjectDetectorResult);

        v18 = 1;
        return v18 & 1;
      }

      sub_1D89473AC(v7, type metadata accessor for ObjectDetectorResult);
    }

LABEL_29:

    goto LABEL_3;
  }

  if (v20 == 11)
  {
    v33 = type metadata accessor for SyntheticDetectionResult();
    if ((*(swift_projectBox() + *(v33 + 24)) & 1) == 0)
    {

      v18 = 1;
      return v18 & 1;
    }

    v34 = sub_1D8B16BA0();

    if (v34)
    {
      v18 = 1;
      return v18 & 1;
    }

    goto LABEL_3;
  }

  if (v20 != 4)
  {
    goto LABEL_29;
  }

  v26 = swift_projectBox();
  sub_1D89474BC(v26, v13, type metadata accessor for ParseDetectorResult);
  v27 = *&v13[*(v11 + 28)];
  sub_1D8B139D0();
  v28 = sub_1D8846CD0(v10, v27);
  v29 = *(v35 + 8);
  v29(v10, v8);
  if (v28)
  {
    v18 = 1;
  }

  else
  {
    sub_1D8B13A10();
    v18 = sub_1D8846CD0(v10, v27);
    v29(v10, v8);
  }

  sub_1D89473AC(v13, type metadata accessor for ParseDetectorResult);

  return v18 & 1;
}

uint64_t sub_1D8945A78(uint64_t a1, _OWORD *a2)
{
  v4 = a2[3];
  v15 = a2[2];
  v16 = v4;
  v17 = a2[4];
  v5 = a2[1];
  v14[0] = *a2;
  v14[1] = v5;
  if (*v2 == 1 && (BYTE8(v15) & 1) == 0 || (sub_1D8945520(a1) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 5;
  v7 = sub_1D893EA58(&unk_1F5426AF8);
  v8 = 1.0;
  if (*(v7 + 16))
  {
    v9 = sub_1D881F7DC(5);
    if (v10)
    {
      v8 = *(*(v7 + 56) + 8 * v9);
    }
  }

  *(inited + 40) = v8;
  v11 = sub_1D893EA58(inited);
  swift_setDeallocating();
  v12 = sub_1D89DF928(a1, v14, v11);

  return v12;
}

uint64_t sub_1D8945BA0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 280) = a2;
  *(v5 + 288) = a5;
  *(v5 + 272) = a1;
  v7 = type metadata accessor for TextDetectorResult(0);
  *(v5 + 296) = v7;
  *(v5 + 304) = *(v7 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D8945C88, 0, 0);
}

uint64_t sub_1D8945C88()
{
  v140 = v0;
  v1 = CVBundle.textDetectorResults.getter();
  CVBundle.latestEstimate.getter(&v138);
  v139 = v138;
  CVDetection.detection.getter((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(v3 + 88))(v2, v3);
  v5 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v6 = v1[2];
  if (v6)
  {
    v7 = *(v0 + 304);
    v129 = *(v0 + 296);
    v138 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v6, 0);
    v8 = 0;
    v131 = v7;
    v9 = v138;
    v134 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v135 = v5;
    v127 = v6;
    v128 = v1;
    do
    {
      if (v8 >= v1[2])
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v10 = *(v5 + 328);
      v133 = *(v131 + 72);
      v136 = v8;
      sub_1D89474BC(&v134[v133 * v8], v10, type metadata accessor for TextDetectorResult);
      v11 = *(v10 + *(v129 + 44));
      v12 = *(v11 + 16);
      if (v12)
      {
        v139 = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v12, 0);
        v13 = v139;
        v14 = *(v139 + 16);
        v15 = 16 * v14;
        v16 = (v11 + 48);
        do
        {
          v18 = *(v16 - 1);
          v17 = *v16;
          v139 = v13;
          v19 = v14 + 1;
          v20 = *(v13 + 24);

          if (v14 >= v20 >> 1)
          {
            sub_1D87F3F54((v20 > 1), v19, 1);
            v13 = v139;
          }

          *(v13 + 16) = v19;
          v21 = v13 + v15;
          *(v21 + 32) = v18;
          *(v21 + 40) = v17;
          v15 += 16;
          v16 += 5;
          ++v14;
          --v12;
        }

        while (v12);
        v5 = v135;
        v22 = v127;
        v2 = v128;
      }

      else
      {
        v22 = v6;
        v2 = v1;
        v13 = MEMORY[0x1E69E7CC0];
      }

      v23 = v5;
      v24 = *(v5 + 328);
      *(v23 + 256) = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
      v25 = sub_1D8B15810();
      v27 = v26;

      sub_1D89473AC(v24, type metadata accessor for TextDetectorResult);
      v138 = v9;
      v29 = *(v9 + 16);
      v28 = *(v9 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D87F3F54((v28 > 1), v29 + 1, 1);
        v9 = v138;
      }

      v8 = v136 + 1;
      *(v9 + 16) = v29 + 1;
      v30 = v9 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v6 = v22;
      v1 = v2;
      v5 = v135;
    }

    while (v136 + 1 != v22);
    *(v135 + 264) = v9;
    v31 = sub_1D8B15810();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v35 = *(v135 + 320);
      v36 = *(v135 + 296);
      _s22VisualIntelligenceCore31TextDetectionReadabilityUtilityV016generateReadableD0_15imageResolution21skipReadabiltySorting5isRTL13minConfidenceSSSayAA0D14DetectorResultVG_So6CGSizeVS2bSftFZ_0(v2, 1, *(v135 + 336), *(v135 + 344), 0.0);
      v126 = String.tokens()();
      v139 = MEMORY[0x1E69E7CC0];
      v37 = *(v36 + 40);
      v39 = v133;
      v38 = v134;
      v40 = v135;
      do
      {
        v41 = *(v135 + 320);
        sub_1D89474BC(v38, v41, type metadata accessor for TextDetectorResult);
        v42 = *(v35 + v37);

        sub_1D89473AC(v41, type metadata accessor for TextDetectorResult);
        sub_1D88F4A54(v42);
        v38 += v133;
        --v22;
      }

      while (v22);
      v132 = *(v135 + 312);

      v43 = sub_1D893D154(MEMORY[0x1E69E7CC0]);
      v2 = 0;
      v44 = 0;
      v130 = *(v36 + 40);
      while (2)
      {
        if (v44 < v128[2])
        {
          v45 = *(v40 + 312);
          sub_1D89474BC(&v134[v44 * v39], v45, type metadata accessor for TextDetectorResult);
          v46 = v44 + 1;
          v137 = v46;
          v47 = *(v132 + v130);

          sub_1D89473AC(v45, type metadata accessor for TextDetectorResult);
          v48 = 0;
          v49 = -1 << *(v47 + 32);
          if (-v49 < 64)
          {
            v50 = ~(-1 << -v49);
          }

          else
          {
            v50 = -1;
          }

          v51 = v50 & *(v47 + 56);
          v52 = 63 - v49;
          v53 = (63 - v49) >> 6;
          if (v51)
          {
            while (1)
            {
              v54 = v48;
LABEL_30:
              v55 = (*(v47 + 48) + ((v54 << 10) | (16 * __clz(__rbit64(v51)))));
              v46 = *v55;
              v56 = v55[1];

              sub_1D878BBCC(v2);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v139 = v43;
              v58 = sub_1D87EF838(v46, v56);
              v60 = *(v43 + 16);
              v61 = (v59 & 1) == 0;
              v62 = __OFADD__(v60, v61);
              v63 = v60 + v61;
              if (v62)
              {
                goto LABEL_93;
              }

              v2 = v59;
              if (*(v43 + 24) < v63)
              {
                break;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_35;
              }

              v65 = v58;
              sub_1D8969F5C();
              v58 = v65;
              v43 = v139;
              if (v2)
              {
LABEL_36:
                v2 = v58;

                v58 = v2;
                goto LABEL_40;
              }

LABEL_38:
              *(v43 + 8 * (v58 >> 6) + 64) |= 1 << v58;
              v66 = (*(v43 + 48) + 16 * v58);
              *v66 = v46;
              v66[1] = v56;
              *(*(v43 + 56) + 8 * v58) = 0;
              v67 = *(v43 + 16);
              v62 = __OFADD__(v67, 1);
              v68 = v67 + 1;
              if (v62)
              {
                goto LABEL_95;
              }

              *(v43 + 16) = v68;
LABEL_40:
              v69 = *(v43 + 56);
              v70 = *(v69 + 8 * v58);
              v62 = __OFADD__(v70, 1);
              v52 = v70 + 1;
              if (v62)
              {
                goto LABEL_94;
              }

              v49 = v51 - 1;
              v51 &= v51 - 1;
              *(v69 + 8 * v58) = v52;
              v2 = sub_1D8786920;
              v48 = v54;
              if (!v51)
              {
                goto LABEL_27;
              }
            }

            sub_1D8972FC4(v63, isUniquelyReferenced_nonNull_native);
            v43 = v139;
            v58 = sub_1D87EF838(v46, v56);
            if ((v2 & 1) != (v64 & 1))
            {

              return sub_1D8B16C30();
            }

LABEL_35:
            if (v2)
            {
              goto LABEL_36;
            }

            goto LABEL_38;
          }

          while (1)
          {
LABEL_27:
            v54 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              __break(1u);
              goto LABEL_61;
            }

            if (v54 >= v53)
            {
              break;
            }

            v51 = *(v47 + 56 + 8 * v54);
            ++v48;
            if (v51)
            {
              goto LABEL_30;
            }
          }

          v40 = v135;
          v44 = v137;
          v39 = v133;
          if (v137 != v127)
          {
            continue;
          }

          v46 = v43 + 64;
          v80 = -1;
          v52 = -1 << *(v43 + 32);
          if (-v52 < 64)
          {
            v80 = ~(-1 << -v52);
          }

          v49 = v80 & *(v43 + 64);
          if (v49)
          {
            v81 = 0;
            v82 = __clz(__rbit64(v49));
            v83 = (v49 - 1) & v49;
            v84 = (63 - v52) >> 6;
LABEL_65:
            v87 = (*(v43 + 48) + 16 * v82);
            v89 = *v87;
            v88 = v87[1];
            v90 = *(*(v43 + 56) + 8 * v82);

            if (!v83)
            {
              goto LABEL_68;
            }

            do
            {
LABEL_66:
              while (1)
              {
                v91 = __clz(__rbit64(v83));
                v83 &= v83 - 1;
                v92 = v91 | (v81 << 6);
                v93 = *(*(v43 + 56) + 8 * v92);
                if (v90 < v93)
                {
                  break;
                }

                if (!v83)
                {
                  goto LABEL_68;
                }
              }

              v95 = (*(v43 + 48) + 16 * v92);
              v89 = *v95;
              v96 = v95[1];

              v88 = v96;
              v90 = v93;
            }

            while (v83);
LABEL_68:
            while (1)
            {
              v94 = v81 + 1;
              if (__OFADD__(v81, 1))
              {
                goto LABEL_97;
              }

              if (v94 >= v84)
              {

                AloudClassifierV6verify16detectedLanguage6tokensSSSgSS_SaySsGtFZ_0 = _s22VisualIntelligenceCore19ReadAloudClassifierV6verify16detectedLanguage6tokensSSSgSS_SaySsGtFZ_0(v89, v88, v126);
                if (v98)
                {
                  v99 = AloudClassifierV6verify16detectedLanguage6tokensSSSgSS_SaySsGtFZ_0;
                  v100 = v98;

                  if (qword_1EE0E4258 != -1)
                  {
                    swift_once();
                  }

                  v101 = sub_1D8B151E0();
                  __swift_project_value_buffer(v101, qword_1EE0E4260);

                  v102 = sub_1D8B151C0();
                  v103 = sub_1D8B16200();

                  if (os_log_type_enabled(v102, v103))
                  {
                    v104 = swift_slowAlloc();
                    v105 = swift_slowAlloc();
                    v139 = v105;
                    *v104 = 136315138;
                    *(v104 + 4) = sub_1D89AC714(v99, v100, &v139);
                    _os_log_impl(&dword_1D8783000, v102, v103, "detectedLanguage issue: %s", v104, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v105);
                    MEMORY[0x1DA721330](v105, -1, -1);
                    MEMORY[0x1DA721330](v104, -1, -1);
                  }

                  v5 = v135;
                  v106 = *(v135 + 288);
                  *v106 = 0;
                  *(v106 + 8) = v99;
                  *(v106 + 16) = v100;
                  *(v106 + 24) = 0x80;
                  *(v106 + 32) = v4;
                  *(v135 + 96) = 0;
                  *(v135 + 104) = v99;
                  *(v135 + 112) = v100;
                  *(v135 + 120) = 0x80;
                  *(v135 + 128) = v4;
                  sub_1D88E0E0C();
                  goto LABEL_89;
                }

                if (qword_1EE0E4258 != -1)
                {
                  swift_once();
                }

                v107 = sub_1D8B151E0();
                __swift_project_value_buffer(v107, qword_1EE0E4260);

                v108 = sub_1D8B151C0();
                v109 = sub_1D8B161F0();

                if (os_log_type_enabled(v108, v109))
                {
                  v110 = swift_slowAlloc();
                  v111 = swift_slowAlloc();
                  v139 = v111;
                  *v110 = 134218242;
                  v112 = *(v126 + 16);

                  *(v110 + 4) = v112;

                  *(v110 + 12) = 2080;
                  v113 = sub_1D89AC714(v89, v88, &v139);

                  *(v110 + 14) = v113;
                  _os_log_impl(&dword_1D8783000, v108, v109, "Detected readable text with: %ld tokens and primary language: %s", v110, 0x16u);
                  __swift_destroy_boxed_opaque_existential_1(v111);
                  MEMORY[0x1DA721330](v111, -1, -1);
                  MEMORY[0x1DA721330](v110, -1, -1);
                }

                else
                {
                  swift_bridgeObjectRelease_n();
                }

                v120 = *(v135 + 272);
                type metadata accessor for BundleClassification.ClassificationType(0);
                swift_storeEnumTagMultiPayload();
                CVBundle.latestEstimate.getter(&v138);
                v139 = v138;
                CVDetection.detection.getter((v135 + 56));
                v122 = *(v135 + 80);
                v121 = *(v135 + 88);
                __swift_project_boxed_opaque_existential_1((v135 + 56), v122);
                v123 = (*(v121 + 88))(v122, v121);

                __swift_destroy_boxed_opaque_existential_1(v135 + 56);
                v124 = type metadata accessor for BundleClassification(0);
                v125 = v120 + *(v124 + 20);
                *v125 = 2;
                *(v125 + 8) = 0u;
                *(v125 + 24) = 0u;
                sub_1D88E0FE4(2, 0, 0, 0);
                sub_1D878BBCC(v2);
                *v125 = 2;
                *(v125 + 8) = 0u;
                *(v125 + 24) = 0u;
                *(v120 + *(v124 + 24)) = v123;

                v78 = *(v135 + 8);
                goto LABEL_50;
              }

              v83 = *(v46 + 8 * v94);
              ++v81;
              if (v83)
              {
                v81 = v94;
                goto LABEL_66;
              }
            }
          }

LABEL_61:
          v85 = 0;
          v84 = (63 - v52) >> 6;
          while (v84 - 1 != v49)
          {
            v81 = v49 + 1;
            v86 = *(v43 + 8 * v49 + 72);
            v85 -= 64;
            ++v49;
            if (v86)
            {
              v83 = (v86 - 1) & v86;
              v82 = __clz(__rbit64(v86)) - v85;
              goto LABEL_65;
            }
          }

          if (qword_1EE0E4258 != -1)
          {
            swift_once();
          }

          v114 = sub_1D8B151E0();
          __swift_project_value_buffer(v114, qword_1EE0E4260);
          v115 = sub_1D8B151C0();
          v116 = sub_1D8B16200();
          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            v139 = v118;
            *v117 = 136315138;
            *(v117 + 4) = sub_1D89AC714(0xD00000000000003CLL, 0x80000001D8B447C0, &v139);
            _os_log_impl(&dword_1D8783000, v115, v116, "%s", v117, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v118);
            MEMORY[0x1DA721330](v118, -1, -1);
            MEMORY[0x1DA721330](v117, -1, -1);
          }

          v5 = v135;
          v119 = *(v135 + 288);
          *v119 = 0;
          *(v119 + 8) = 0xD00000000000003CLL;
          *(v119 + 16) = 0x80000001D8B447C0;
          *(v119 + 24) = 0x80;
          *(v119 + 32) = v4;
          *(v135 + 136) = 0;
          *(v135 + 144) = 0xD00000000000003CLL;
          *(v135 + 152) = 0x80000001D8B447C0;
          *(v135 + 160) = 0x80;
          *(v135 + 168) = v4;
          sub_1D88E0E0C();
LABEL_89:
          swift_willThrowTypedImpl();
          sub_1D878BBCC(v2);
          goto LABEL_49;
        }

        break;
      }

LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
    }

    else
    {

      v2 = 0x80000001D8B44800;
      if (qword_1EE0E4258 == -1)
      {
LABEL_45:
        v72 = sub_1D8B151E0();
        __swift_project_value_buffer(v72, qword_1EE0E4260);
        v73 = sub_1D8B151C0();
        v74 = sub_1D8B16200();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v139 = v76;
          *v75 = 136315138;
          *(v75 + 4) = sub_1D89AC714(0xD000000000000020, v2, &v139);
          _os_log_impl(&dword_1D8783000, v73, v74, "%s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v76);
          MEMORY[0x1DA721330](v76, -1, -1);
          MEMORY[0x1DA721330](v75, -1, -1);
        }

        v5 = v135;
        v77 = *(v135 + 288);
        *v77 = 0;
        *(v77 + 8) = 0xD000000000000020;
        *(v77 + 16) = v2;
        *(v77 + 24) = 0x80;
        *(v77 + 32) = v4;
        *(v135 + 176) = 0;
        *(v135 + 184) = 0xD000000000000020;
        *(v135 + 192) = v2;
        *(v135 + 200) = 0x80;
        *(v135 + 208) = v4;
        sub_1D88E0E0C();
        goto LABEL_48;
      }
    }

    swift_once();
    goto LABEL_45;
  }

  v71 = *(v0 + 288);

  *v71 = 0;
  *(v71 + 8) = 0xD000000000000015;
  *(v71 + 16) = 0x80000001D8B44830;
  *(v71 + 24) = 0x80;
  *(v71 + 32) = v4;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xD000000000000015;
  *(v0 + 232) = 0x80000001D8B44830;
  *(v0 + 240) = 0x80;
  *(v0 + 248) = v4;
  sub_1D88E0E0C();
LABEL_48:
  swift_willThrowTypedImpl();
LABEL_49:

  v78 = *(v5 + 8);
LABEL_50:

  return v78();
}

uint64_t sub_1D8946C54(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D8945BA0(a1, a2, v9, a4, v5 + 16);
}

unint64_t _s22VisualIntelligenceCore19ReadAloudClassifierV6verify16detectedLanguage6tokensSSSgSS_SaySsGtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    v7 = 0x80000001D8B44940;
    if (qword_1EE0E4258 != -1)
    {
      swift_once();
    }

    v6 = 0xD00000000000001ALL;
    v8 = sub_1D8B151E0();
    __swift_project_value_buffer(v8, qword_1EE0E4260);
    v9 = sub_1D8B151C0();
    v10 = sub_1D8B161F0();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_31;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    v13 = 0xD00000000000001ALL;
    goto LABEL_30;
  }

  if (*(a3 + 16) < 0x65uLL)
  {
    v7 = 0x80000001D8B44850;
    if (qword_1EE0E4258 != -1)
    {
      swift_once();
    }

    v6 = 0x1000000000000020;
    v14 = sub_1D8B151E0();
    __swift_project_value_buffer(v14, qword_1EE0E4260);
    v9 = sub_1D8B151C0();
    v10 = sub_1D8B161F0();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_31;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    v13 = 0x1000000000000020;
    goto LABEL_30;
  }

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    return 0;
  }

  if (qword_1ECA62248 != -1)
  {
    swift_once();
  }

  sub_1D8B162D0();
  v16 = v26;
  v15 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63498);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v18 = sub_1D87C4264(inited);
  swift_setDeallocating();
  sub_1D8947540(inited + 32);
  LOBYTE(inited) = sub_1D89C3168(v18, v16, v15);

  if ((inited & 1) == 0)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD000000000000015, 0x80000001D8B44880);
    MEMORY[0x1DA71EFA0](a1, a2);
    MEMORY[0x1DA71EFA0](0xD00000000000003BLL, 0x80000001D8B448A0);
    MEMORY[0x1DA71EFA0](v16, v15);

    v6 = 0;
    v7 = 0xE000000000000000;
    if (qword_1EE0E4258 != -1)
    {
      swift_once();
    }

    v23 = sub_1D8B151E0();
    __swift_project_value_buffer(v23, qword_1EE0E4260);

    v9 = sub_1D8B151C0();
    v10 = sub_1D8B16230();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_31;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  v19 = sub_1D8B162D0();
  v20 = v26;
  v26 = v16;
  v27 = v15;
  MEMORY[0x1EEE9AC00](v19);
  v25[2] = &v26;
  v21 = sub_1D8AD0444(sub_1D89475B0, v25, v20);

  if ((v21 & 1) == 0)
  {
    v7 = 0x80000001D8B448E0;
    if (qword_1EE0E4258 != -1)
    {
      swift_once();
    }

    v22 = sub_1D8B151E0();
    __swift_project_value_buffer(v22, qword_1EE0E4260);
    v9 = sub_1D8B151C0();
    v10 = sub_1D8B161F0();
    if (!os_log_type_enabled(v9, v10))
    {

      return 0xD000000000000054;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    v6 = 0xD000000000000054;
LABEL_29:
    v13 = v6;
LABEL_30:
    *(v11 + 4) = sub_1D89AC714(v13, v7, &v26);
    _os_log_impl(&dword_1D8783000, v9, v10, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1DA721330](v12, -1, -1);
    MEMORY[0x1DA721330](v11, -1, -1);
LABEL_31:

    return v6;
  }

  return 0;
}

uint64_t sub_1D894733C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D89473AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D894740C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8947474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D89474BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8947618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001D8B44960 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D89476AC(uint64_t a1)
{
  v2 = sub_1D894785C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89476E8(uint64_t a1)
{
  v2 = sub_1D894785C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchClassifierResult.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D894785C();
  sub_1D8B16DD0();
  sub_1D8B16AA0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D894785C()
{
  result = qword_1ECA65D40;
  if (!qword_1ECA65D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D40);
  }

  return result;
}

uint64_t SearchClassifierResult.hashValue.getter()
{
  sub_1D8B16D20();
  sub_1D8B16D40();
  return sub_1D8B16D80();
}

uint64_t SearchClassifierResult.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D894785C();
  sub_1D8B16DB0();
  if (!v2)
  {
    v9 = sub_1D8B169D0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D8947A7C()
{
  sub_1D8B16D20();
  sub_1D8B16D40();
  return sub_1D8B16D80();
}

uint64_t sub_1D8947AF0()
{
  sub_1D8B16D20();
  sub_1D8B16D40();
  return sub_1D8B16D80();
}

uint64_t sub_1D8947B4C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D894785C();
  sub_1D8B16DD0();
  sub_1D8B16AA0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SearchClassifier.SuccessCondition.description.getter()
{
  v1 = 0x697373696D726550;
  if (*v0 != 1)
  {
    v1 = 0x7463697274736552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F432068676948;
  }
}

uint64_t sub_1D8947CF8()
{
  v1 = 0x697373696D726570;
  if (*v0 != 1)
  {
    v1 = 0x7463697274736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x666E6F4368676968;
  }
}

uint64_t sub_1D8947D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8949B8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8947D94(uint64_t a1)
{
  v2 = sub_1D89482EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8947DD0(uint64_t a1)
{
  v2 = sub_1D89482EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8947E0C(uint64_t a1)
{
  v2 = sub_1D89483E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8947E48(uint64_t a1)
{
  v2 = sub_1D89483E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8947E84(uint64_t a1)
{
  v2 = sub_1D8948394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8947EC0(uint64_t a1)
{
  v2 = sub_1D8948394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8947EFC(uint64_t a1)
{
  v2 = sub_1D8948340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8947F38(uint64_t a1)
{
  v2 = sub_1D8948340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchClassifier.SuccessCondition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D50);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D58);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D60);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D68);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89482EC();
  sub_1D8B16DD0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D8948394();
      v9 = v21;
      sub_1D8B16A40();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D8948340();
      v9 = v24;
      sub_1D8B16A40();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D89483E8();
    sub_1D8B16A40();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1D89482EC()
{
  result = qword_1ECA65D70;
  if (!qword_1ECA65D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D70);
  }

  return result;
}

unint64_t sub_1D8948340()
{
  result = qword_1ECA65D78;
  if (!qword_1ECA65D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D78);
  }

  return result;
}

unint64_t sub_1D8948394()
{
  result = qword_1ECA65D80;
  if (!qword_1ECA65D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D80);
  }

  return result;
}

unint64_t sub_1D89483E8()
{
  result = qword_1ECA65D88;
  if (!qword_1ECA65D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D88);
  }

  return result;
}

uint64_t SearchClassifier.SuccessCondition.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t SearchClassifier.SuccessCondition.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D90);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D98);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65DA0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65DA8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D89482EC();
  v15 = v36;
  sub_1D8B16DB0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D8B16A20();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D881F7C4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D8B16770();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
      *v24 = &type metadata for SearchClassifier.SuccessCondition;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D8948394();
          sub_1D8B16950();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D8948340();
          v26 = v17;
          sub_1D8B16950();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D89483E8();
        sub_1D8B16950();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1D8948A64()
{
  result = qword_1ECA65DB0;
  if (!qword_1ECA65DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DB0);
  }

  return result;
}

unint64_t sub_1D8948ABC()
{
  result = qword_1ECA65DB8;
  if (!qword_1ECA65DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DB8);
  }

  return result;
}

unint64_t sub_1D8948B24()
{
  result = qword_1ECA65DC8;
  if (!qword_1ECA65DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DC8);
  }

  return result;
}

uint64_t sub_1D8948B78()
{
  v1 = 0x697373696D726550;
  if (*v0 != 1)
  {
    v1 = 0x7463697274736552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F432068676948;
  }
}

uint64_t sub_1D8948BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CVBundle.BundleType(0);
  result = MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 40) == 1)
  {
    sub_1D8949D20(a1, v9, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1D8B13240();
      result = (*(*(v10 - 8) + 8))(v9, v10);
LABEL_12:
      *a3 = xmmword_1D8B26630;
      goto LABEL_13;
    }

    sub_1D8949D88(v9, type metadata accessor for CVBundle.BundleType);
    CVBundle.latestEstimate.getter(&v15);
    if (v15 >> 60)
    {
      if (v15 >> 60 != 11)
      {

        goto LABEL_12;
      }

      v11 = type metadata accessor for SyntheticDetectionResult();
      if (*(swift_projectBox() + *(v11 + 24)))
      {
        v12 = sub_1D8B16BA0();

        if ((v12 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    v13 = -1;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
LABEL_13:
  v13 = 2;
LABEL_14:
  *(a3 + 16) = v13;
  return result;
}

uint64_t sub_1D8948DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 344) = a2;
  *(v6 + 352) = a5;
  *(v6 + 336) = a1;
  v7 = sub_1D8B14ED0();
  *(v6 + 360) = v7;
  *(v6 + 368) = *(v7 - 8);
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = type metadata accessor for SyntheticDetectionResult();
  v8 = swift_task_alloc();
  v9 = *v5;
  *(v6 + 408) = v8;
  *(v6 + 416) = v9;
  *(v6 + 424) = *(v5 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1D8948F24, 0, 0);
}

uint64_t sub_1D8948F24()
{
  v50 = v0;
  CVBundle.latestEstimate.getter(&v49);
  v1 = v49;
  if (v49 >> 60 != 11)
  {
    if (v49 >> 60)
    {
      goto LABEL_12;
    }

    v6 = *(v0 + 424);
    v7 = *(v0 + 392);
    v9 = *(v0 + 368);
    v8 = *(v0 + 376);
    v10 = *(v0 + 360);
    v11 = swift_projectBox();
    sub_1D894733C(v11, v7);
    sub_1D883934C(v8);
    v12 = sub_1D8B14BF0();
    (*(v9 + 8))(v8, v10);
    if (v6)
    {
      if (v6 != 1)
      {
        v13 = *(v0 + 392);
        v14 = *(v0 + 352);
        CVBundle.latestEstimate.getter(&v48);
        v49 = v48;
        CVDetection.detection.getter((v0 + 96));
        v15 = *(v0 + 120);
        v16 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), v15);
        v17 = (*(v16 + 88))(v15, v16);

        __swift_destroy_boxed_opaque_existential_1(v0 + 96);
        *v14 = 0;
        *(v14 + 8) = 0xD000000000000018;
        *(v14 + 16) = 0x80000001D8B44980;
        *(v14 + 24) = 1;
        *(v14 + 32) = v17;
        *(v0 + 136) = 0;
        *(v0 + 144) = 0xD000000000000018;
        *(v0 + 152) = 0x80000001D8B44980;
        *(v0 + 160) = 1;
        *(v0 + 168) = v17;
        sub_1D88E0E0C();
        goto LABEL_20;
      }
    }

    else if ((v12 & 1) == 0)
    {
      v13 = *(v0 + 392);
      v44 = *(v0 + 352);
      CVBundle.latestEstimate.getter(&v48);
      v49 = v48;
      CVDetection.detection.getter((v0 + 256));
      v45 = *(v0 + 280);
      v46 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v45);
      v47 = (*(v46 + 88))(v45, v46);

      __swift_destroy_boxed_opaque_existential_1(v0 + 256);
      *v44 = 0;
      *(v44 + 8) = 0xD000000000000018;
      *(v44 + 16) = 0x80000001D8B44980;
      *(v44 + 24) = 1;
      *(v44 + 32) = v47;
      *(v0 + 296) = 0;
      *(v0 + 304) = 0xD000000000000018;
      *(v0 + 312) = 0x80000001D8B44980;
      *(v0 + 320) = 1;
      *(v0 + 328) = v47;
      sub_1D88E0E0C();
      goto LABEL_20;
    }

    v30 = *(v0 + 384);
    v29 = *(v0 + 392);
    result = sub_1D87C4CB4(&unk_1F5426EF0);
    v32 = *(v29 + *(v30 + 44));
    if (*(v32 + 16))
    {
      v33 = result;
      visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v32 + 32));
      result = v49;
      if (v49 != 181)
      {
        v34 = sub_1D89AD844(v49, v33);

        v13 = *(v0 + 392);
        if ((v34 & 1) == 0)
        {
          v39 = *(v0 + 384);
          v40 = *(v0 + 336);

          *v40 = v12 & 1;
          type metadata accessor for BundleClassification.ClassificationType(0);
          swift_storeEnumTagMultiPayload();
          v41 = *(v13 + *(v39 + 56));
          v42 = type metadata accessor for BundleClassification(0);
          v43 = &v40[*(v42 + 20)];
          *v43 = 2;
          *(v43 + 8) = 0u;
          *(v43 + 24) = 0u;
          sub_1D88E0FE4(2, 0, 0, 0);
          *v43 = 2;
          *(v43 + 8) = 0u;
          *(v43 + 24) = 0u;
          *&v40[*(v42 + 24)] = v41;
          sub_1D8949CB8(v13);
          goto LABEL_11;
        }

        v35 = *(v0 + 352);
        CVBundle.latestEstimate.getter(&v48);
        v49 = v48;
        CVDetection.detection.getter((v0 + 176));
        v36 = *(v0 + 200);
        v37 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), v36);
        v38 = (*(v37 + 88))(v36, v37);

        __swift_destroy_boxed_opaque_existential_1(v0 + 176);
        *v35 = 0;
        *(v35 + 8) = xmmword_1D8B2C4D0;
        *(v35 + 24) = 0x80;
        *(v35 + 32) = v38;
        *(v0 + 216) = 0;
        *(v0 + 224) = xmmword_1D8B2C4D0;
        *(v0 + 240) = 0x80;
        *(v0 + 248) = v38;
        sub_1D88E0E0C();
LABEL_20:
        swift_willThrowTypedImpl();

        sub_1D8949CB8(v13);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = swift_projectBox();
  sub_1D8949D20(v4, v2, type metadata accessor for SyntheticDetectionResult);
  if (*(v2 + *(v3 + 24)))
  {
    v5 = sub_1D8B16BA0();

    if ((v5 & 1) == 0)
    {
      sub_1D8949D88(*(v0 + 408), type metadata accessor for SyntheticDetectionResult);
LABEL_12:
      v25 = *(v0 + 352);
      v49 = v1;
      CVDetection.detection.getter((v0 + 16));
      v26 = *(v0 + 40);
      v27 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
      v28 = (*(v27 + 88))(v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
      *v25 = 0;
      *(v25 + 8) = xmmword_1D8B2C4E0;
      *(v25 + 24) = 1;
      *(v25 + 32) = v28;
      *(v0 + 56) = 0;
      *(v0 + 64) = xmmword_1D8B2C4E0;
      *(v0 + 80) = 1;
      *(v0 + 88) = v28;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();

LABEL_21:

      v24 = *(v0 + 8);
      goto LABEL_22;
    }
  }

  else
  {
  }

  v19 = *(v0 + 400);
  v18 = *(v0 + 408);
  v20 = *(v0 + 336);
  *v20 = 0;
  type metadata accessor for BundleClassification.ClassificationType(0);
  swift_storeEnumTagMultiPayload();
  v21 = *(v18 + *(v19 + 32));
  sub_1D8949D88(v18, type metadata accessor for SyntheticDetectionResult);
  v22 = type metadata accessor for BundleClassification(0);
  v23 = &v20[*(v22 + 20)];
  *v23 = 2;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  *v23 = 2;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *&v20[*(v22 + 24)] = v21;
LABEL_11:

  v24 = *(v0 + 8);
LABEL_22:

  return v24();
}

uint64_t sub_1D89495B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D8948DE8(a1, a2, v8, v9, v5 + 16);
}

uint64_t sub_1D8949674(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1D89496BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D8949770()
{
  result = qword_1ECA65DD0;
  if (!qword_1ECA65DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DD0);
  }

  return result;
}

unint64_t sub_1D89497C8()
{
  result = qword_1ECA65DD8;
  if (!qword_1ECA65DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DD8);
  }

  return result;
}

unint64_t sub_1D8949820()
{
  result = qword_1ECA65DE0;
  if (!qword_1ECA65DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DE0);
  }

  return result;
}

unint64_t sub_1D8949878()
{
  result = qword_1ECA65DE8;
  if (!qword_1ECA65DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DE8);
  }

  return result;
}

unint64_t sub_1D89498D0()
{
  result = qword_1ECA65DF0;
  if (!qword_1ECA65DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DF0);
  }

  return result;
}

unint64_t sub_1D8949928()
{
  result = qword_1ECA65DF8;
  if (!qword_1ECA65DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DF8);
  }

  return result;
}

unint64_t sub_1D8949980()
{
  result = qword_1ECA65E00;
  if (!qword_1ECA65E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E00);
  }

  return result;
}

unint64_t sub_1D89499D8()
{
  result = qword_1ECA65E08;
  if (!qword_1ECA65E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E08);
  }

  return result;
}

unint64_t sub_1D8949A30()
{
  result = qword_1ECA65E10;
  if (!qword_1ECA65E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E10);
  }

  return result;
}

unint64_t sub_1D8949A88()
{
  result = qword_1ECA65E18;
  if (!qword_1ECA65E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E18);
  }

  return result;
}

unint64_t sub_1D8949AE0()
{
  result = qword_1ECA65E20;
  if (!qword_1ECA65E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E20);
  }

  return result;
}

unint64_t sub_1D8949B38()
{
  result = qword_1ECA65E28;
  if (!qword_1ECA65E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E28);
  }

  return result;
}

uint64_t sub_1D8949B8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x666E6F4368676968 && a2 == 0xEE0065636E656469;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697373696D726570 && a2 == 0xEA00000000006576 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463697274736572 && a2 == 0xEB00000000657669)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D8949CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8949D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8949D88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D8949DE8(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v92 - v8;
  *&v101 = COERCE_DOUBLE(type metadata accessor for AFMResult(0));
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v99 = COERCE_DOUBLE(type metadata accessor for MetaDetectionResult());
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v104 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CVTrackSnapshot(0);
  v103 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D8B14060();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v102 = a1;
  if ((sub_1D894AF58(a1) & 1) == 0)
  {
    v30 = xmmword_1D8B26630;
LABEL_12:
    *a3 = v30;
    goto LABEL_14;
  }

  v97 = a3;
  if (!(v20 & 1 | ((*(v3 + *(type metadata accessor for SummarizeClassifier() + 20)) & 1) == 0)))
  {
    a3 = v97;
    *v97 = 0;
    a3[1] = 0;
LABEL_14:
    v31 = 2;
    goto LABEL_15;
  }

  v96 = v20;
  v21 = [objc_opt_self() sharedConnection];
  if (!v21)
  {
    __break(1u);
LABEL_116:
    v112 = 0.0;
    v113 = -2.68156159e154;
    sub_1D8B16720();

    v112 = -2.31584178e77;
    v113 = COERCE_DOUBLE(0x80000001D8B43DD0);
    v89 = &a1[v16[10]];
    if (v89[1])
    {
      v90 = *v89;
      v91 = v89[1];
    }

    else
    {
      v91 = 0xEF6E65766967206ELL;
      v90 = 0x6F73616572206F6ELL;
    }

    MEMORY[0x1DA71EFA0](v90, v91);

    sub_1D8B168C0();
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [v21 isVisualIntelligenceSummaryAllowed];

  a1 = v104;
  if (!v23)
  {
    if (qword_1EE0E44C8 != -1)
    {
      swift_once();
    }

    v32 = sub_1D8B151E0();
    __swift_project_value_buffer(v32, qword_1EE0E44D0);
    v33 = sub_1D8B151C0();
    v34 = sub_1D8B161F0();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v97;
    if (v35)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D8783000, v33, v34, "Summarization is not available with this managed configuration", v37, 2u);
      MEMORY[0x1DA721330](v37, -1, -1);
    }

    *v36 = 0xD00000000000003ELL;
    v36[1] = 0x80000001D8B44A80;
    *(v36 + 16) = 0;
    return;
  }

  v24 = v16;
  if (qword_1EE0E54C0 != -1)
  {
    goto LABEL_114;
  }

  while (1)
  {
    v95 = qword_1EE0E54C8;
    v25 = sub_1D8B0AAA4();
    v16 = v99;
    if (v25)
    {
      goto LABEL_22;
    }

    v107 = v24;
    if (qword_1EE0E9958 != -1)
    {
      swift_once();
    }

    v26 = qword_1EE0E9960;
    v27 = word_1EE0E9968;
    v28 = HIBYTE(word_1EE0E9968);
    LODWORD(v106) = byte_1EE0E996A;
    (*(v107 + 104))(v18, *MEMORY[0x1E69A12A0], v15);
    v93 = *&v26;
    v112 = *&v26;
    v29 = v106;
    LODWORD(v105) = v27;
    LOBYTE(v113) = v27;
    LODWORD(v94) = v28;
    BYTE1(v113) = v28;
    BYTE2(v113) = v106;
    LOBYTE(v108[0]) = 2;
    if (GreymatterAvailability.isAvailable(_:languageOption:)(v108, v18))
    {
      (*(v107 + 8))(v18, v15);
      goto LABEL_22;
    }

    v112 = v93;
    LOBYTE(v113) = v105;
    BYTE1(v113) = v94;
    BYTE2(v113) = v29;
    LOBYTE(v108[0]) = 2;
    v38 = GreymatterAvailability.isRestricted(_:languageOption:)(v108, v18);
    (*(v107 + 8))(v18, v15);
    if (!v38)
    {
      break;
    }

LABEL_22:
    v107 = sub_1D891A6E8();
    v15 = v103;
    v106 = *(v107 + 16);
    if (!v106)
    {
LABEL_107:

      v30 = xmmword_1D8B26640;
      a3 = v97;
      goto LABEL_12;
    }

    v39 = 0;
    v105 = v107 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v12 = *(v12 + 20);
    v24 = (v98 + 56);
    v94 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno;
    while (v39 < *(v107 + 16))
    {
      sub_1D894C8C8(v105 + *(v15 + 72) * v39++, v14, type metadata accessor for CVTrackSnapshot);
      switch(*&v14[v12] >> 60)
      {
        case 1:
          *&v50 = COERCE_DOUBLE(type metadata accessor for GroundedParseDetectorResult(0));
          v18 = swift_projectBox();
          v115 = *&v50;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_39;
        case 2:
          v18 = swift_projectBox();
          v115 = *&v16;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for MetaDetectionResult;
          goto LABEL_39;
        case 3:
        case 8:
          *&v40 = COERCE_DOUBLE(type metadata accessor for ObjectDetectorResult(0));
          v18 = swift_projectBox();
          v115 = *&v40;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_39;
        case 4:
          *&v51 = COERCE_DOUBLE(type metadata accessor for ParseDetectorResult(0));
          v18 = swift_projectBox();
          v115 = *&v51;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1ECA64238, type metadata accessor for ParseDetectorResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for ParseDetectorResult;
          goto LABEL_39;
        case 5:
          *&v52 = COERCE_DOUBLE(type metadata accessor for TextDetectorResult(0));
          v18 = swift_projectBox();
          v115 = *&v52;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for TextDetectorResult;
          goto LABEL_39;
        case 6:
        case 7:
          *&v43 = COERCE_DOUBLE(type metadata accessor for StreamingBarcodeDetectorResult(0));
          v18 = swift_projectBox();
          v115 = *&v43;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_39;
        case 9:
        case 0xALL:
          v44 = swift_projectBox();
          v18 = v100;
          sub_1D894C8C8(v44, v100, type metadata accessor for AFMResult);
          v115 = *&v101;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1EE0E3F80, type metadata accessor for AFMResult));
          v45 = __swift_allocate_boxed_opaque_existential_1(&v112);
          sub_1D894C818(v18, v45, type metadata accessor for AFMResult);
          break;
        case 0xBLL:
          *&v46 = COERCE_DOUBLE(type metadata accessor for SyntheticDetectionResult());
          v18 = swift_projectBox();
          v115 = *&v46;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_39;
        case 0xCLL:
          *&v47 = COERCE_DOUBLE(type metadata accessor for GroundedParseEmbeddingsResult(0));
          v18 = swift_projectBox();
          v115 = *&v47;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_39;
        case 0xDLL:
          *&v53 = COERCE_DOUBLE(type metadata accessor for GroundedParseClassificationsResult(0));
          v18 = swift_projectBox();
          v115 = *&v53;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_39:
          sub_1D894C8C8(v18, boxed_opaque_existential_1, v42);
          break;
        default:
          *&v48 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750));
          v18 = swift_projectBox();
          v115 = *&v48;
          v116 = COERCE_DOUBLE(sub_1D8906184());
          v49 = __swift_allocate_boxed_opaque_existential_1(&v112);
          sub_1D894733C(v18, v49);
          break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
      v54 = swift_dynamicCast();
      v55 = *v24;
      if (v54)
      {
        v55(v9, 0, 1, v16);
        sub_1D894C818(v9, a1, type metadata accessor for MetaDetectionResult);
        if (*a1 == 5 && ((v96 & 1) == 0 || *&a1[v16[8]] == v19))
        {
          v98 = v16[9];
          if (a1[v98] == 2 && v19 - *&a1[v16[8]] > 0.0001)
          {
            goto LABEL_99;
          }

          CVBundle.latestEstimate.getter(&v120);
          v111 = v120;
          CVDetection.detection.getter(v108);
          v18 = v109;
          v56 = v110;
          __swift_project_boxed_opaque_existential_1(v108, v109);
          v57 = *(v56 + 64);
          v58 = v56;
          a1 = v104;
          v57(&v112, v18, v58);
          __swift_destroy_boxed_opaque_existential_1(v108);

          v59 = v112;
          v60 = v113;
          if (v114 >= v112)
          {
            v61 = v112;
          }

          else
          {
            v61 = v114;
          }

          if (v116 < v61)
          {
            v61 = v116;
          }

          if (v118 < v61)
          {
            v61 = v118;
          }

          if (v115 >= v113)
          {
            v62 = v113;
          }

          else
          {
            v62 = v115;
          }

          if (v117 < v62)
          {
            v62 = v117;
          }

          if (v119 < v62)
          {
            v62 = v119;
          }

          if (v112 <= v114)
          {
            v59 = v114;
          }

          if (v59 <= v116)
          {
            v59 = v116;
          }

          if (v59 <= v118)
          {
            v59 = v118;
          }

          if (v113 <= v115)
          {
            v60 = v115;
          }

          if (v60 <= v117)
          {
            v60 = v117;
          }

          if (v60 <= v119)
          {
            v60 = v119;
          }

          v63 = v59 - v61;
          v64 = v60 - v62;
          v123.origin.x = 0.0;
          v123.origin.y = 0.0;
          v123.size.width = 1.0;
          v123.size.height = 1.0;
          v121 = CGRectIntersection(*&v61, v123);
          x = v121.origin.x;
          y = v121.origin.y;
          width = v121.size.width;
          height = v121.size.height;
          v69 = &a1[v16[5]];
          v70 = *v69;
          v71 = v69[1];
          v72 = v69[2];
          v73 = v69[3];
          v74 = v69[4];
          v75 = v69[5];
          v76 = v69[6];
          v77 = v69[7];
          if (v72 >= *v69)
          {
            v78 = *v69;
          }

          else
          {
            v78 = v69[2];
          }

          if (v74 < v78)
          {
            v78 = v69[4];
          }

          if (v76 < v78)
          {
            v78 = v69[6];
          }

          if (v73 >= v71)
          {
            v79 = v69[1];
          }

          else
          {
            v79 = v69[3];
          }

          if (v75 < v79)
          {
            v79 = v69[5];
          }

          if (v77 < v79)
          {
            v79 = v69[7];
          }

          if (v70 <= v72)
          {
            v70 = v69[2];
          }

          if (v70 <= v74)
          {
            v70 = v69[4];
          }

          if (v70 <= v76)
          {
            v70 = v69[6];
          }

          if (v71 <= v73)
          {
            v71 = v69[3];
          }

          if (v71 <= v75)
          {
            v71 = v69[5];
          }

          if (v71 <= v77)
          {
            v71 = v69[7];
          }

          v80 = v70 - v78;
          v81 = v71 - v79;
          v82 = width;
          v83 = height;
          v122 = CGRectIntersection(*&v78, *&x);
          if (width * height * 0.9 > v122.size.width * v122.size.height)
          {
LABEL_99:
            sub_1D894C7B8(a1, type metadata accessor for MetaDetectionResult);
            v15 = v103;
          }

          else
          {
            v18 = a1[v98];
            if (v18 == 3)
            {
              v15 = v103;
              if (*(v95 + v94))
              {
                goto LABEL_116;
              }

              sub_1D894C7B8(a1, type metadata accessor for MetaDetectionResult);
              if (v96)
              {
LABEL_106:

                sub_1D894C7B8(v14, type metadata accessor for CVTrackSnapshot);
                a3 = v97;
                *v97 = 0;
                a3[1] = 0;
                v31 = -1;
                goto LABEL_15;
              }
            }

            else
            {
              sub_1D894C7B8(a1, type metadata accessor for MetaDetectionResult);
              v15 = v103;
              if (v18 == 2)
              {
                goto LABEL_106;
              }
            }
          }
        }

        else
        {
          sub_1D894C7B8(a1, type metadata accessor for MetaDetectionResult);
        }
      }

      else
      {
        v55(v9, 1, 1, v16);
        sub_1D87A14E4(v9, &qword_1ECA64BB8);
      }

      sub_1D894C7B8(v14, type metadata accessor for CVTrackSnapshot);
      if (v106 == v39)
      {
        goto LABEL_107;
      }
    }

    __break(1u);
LABEL_114:
    swift_once();
  }

  if (qword_1EE0E44C8 != -1)
  {
    swift_once();
  }

  v84 = sub_1D8B151E0();
  __swift_project_value_buffer(v84, qword_1EE0E44D0);
  v85 = sub_1D8B151C0();
  v86 = sub_1D8B161F0();
  v87 = os_log_type_enabled(v85, v86);
  a3 = v97;
  if (v87)
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_1D8783000, v85, v86, "GMS is not available for summarization.", v88, 2u);
    MEMORY[0x1DA721330](v88, -1, -1);
  }

  *a3 = 0xD000000000000015;
  a3[1] = 0x80000001D8B44AC0;
  v31 = 1;
LABEL_15:
  *(a3 + 16) = v31;
}

uint64_t sub_1D894AF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B13AD0();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D894C8C8(a1, v16, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1D8B13240();
    (*(*(v17 - 8) + 8))(v16, v17);
LABEL_3:
    v18 = 0;
    return v18 & 1;
  }

  sub_1D894C7B8(v16, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestDetection.getter(&v36);
  v20 = v36 >> 60;
  if ((v36 >> 60) <= 3)
  {
    if (!v20)
    {
      v30 = swift_projectBox();
      sub_1D894733C(v30, v4);
      v31 = sub_1D8A05CB0();
      v32 = sub_1D88E0474(&unk_1F5426EA0, v31);

      sub_1D87A14E4(v4, &qword_1ECA67750);

      v18 = v32 ^ 1;
      return v18 & 1;
    }

    if (v20 == 3)
    {
      v21 = swift_projectBox();
      sub_1D894C8C8(v21, v7, type metadata accessor for ObjectDetectorResult);
      v22 = &v7[*(v5 + 28)];
      v23 = *v22;
      v24 = *(v22 + 1);
      v25 = *v22 == 1852270963 && v24 == 0xE400000000000000;
      if (v25 || (sub_1D8B16BA0() & 1) != 0 || v23 == 0x746E656D75636F64 && v24 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
      {
        sub_1D894C7B8(v7, type metadata accessor for ObjectDetectorResult);

        v18 = 1;
        return v18 & 1;
      }

      sub_1D894C7B8(v7, type metadata accessor for ObjectDetectorResult);
    }

LABEL_29:

    goto LABEL_3;
  }

  if (v20 == 11)
  {
    v33 = type metadata accessor for SyntheticDetectionResult();
    if ((*(swift_projectBox() + *(v33 + 24)) & 1) == 0)
    {

      v18 = 1;
      return v18 & 1;
    }

    v34 = sub_1D8B16BA0();

    if (v34)
    {
      v18 = 1;
      return v18 & 1;
    }

    goto LABEL_3;
  }

  if (v20 != 4)
  {
    goto LABEL_29;
  }

  v26 = swift_projectBox();
  sub_1D894C8C8(v26, v13, type metadata accessor for ParseDetectorResult);
  v27 = *&v13[*(v11 + 28)];
  sub_1D8B139D0();
  v28 = sub_1D8846CD0(v10, v27);
  v29 = *(v35 + 8);
  v29(v10, v8);
  if (v28)
  {
    v18 = 1;
  }

  else
  {
    sub_1D8B13A10();
    v18 = sub_1D8846CD0(v10, v27);
    v29(v10, v8);
  }

  sub_1D894C7B8(v13, type metadata accessor for ParseDetectorResult);

  return v18 & 1;
}

uint64_t sub_1D894B4B0(uint64_t a1, _OWORD *a2)
{
  v4 = a2[3];
  v15 = a2[2];
  v16 = v4;
  v17 = a2[4];
  v5 = a2[1];
  v14[0] = *a2;
  v14[1] = v5;
  if (*(v2 + *(type metadata accessor for SummarizeClassifier() + 20)) == 1 && (BYTE8(v15) & 1) == 0 || (sub_1D894AF58(a1) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 5;
  v7 = sub_1D893EA58(&unk_1F5426B58);
  v8 = 1.0;
  if (*(v7 + 16))
  {
    v9 = sub_1D881F7DC(5);
    if (v10)
    {
      v8 = *(*(v7 + 56) + 8 * v9);
    }
  }

  *(inited + 40) = v8;
  v11 = sub_1D893EA58(inited);
  swift_setDeallocating();
  v12 = sub_1D89DF934(a1, v14, v11);

  return v12;
}

uint64_t sub_1D894B5F0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v6 + 232) = v5;
  *(v6 + 240) = a5;
  *(v6 + 216) = a1;
  *(v6 + 224) = a2;
  type metadata accessor for CVTrackSnapshot(0);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = type metadata accessor for CVBundle.BundleType(0);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  v8 = sub_1D8B13240();
  *(v6 + 280) = v8;
  *(v6 + 288) = *(v8 - 8);
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  type metadata accessor for CVBundle(0);
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D894B7A0, 0, 0);
}

uint64_t sub_1D894B7A0()
{
  v83 = v0;
  v1 = CVBundle.textDetectorResults.getter();
  CVBundle.latestEstimate.getter(&v81);
  v82 = v81;
  CVDetection.detection.getter((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(v3 + 88))(v2, v3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (!v1[2])
  {
    v10 = 0xD000000000000015;
    v12 = (v0 + 176);
    v13 = *(v0 + 240);

    v11 = 0x80000001D8B44830;
    v14 = 208;
    v15 = 200;
    v16 = 192;
    v17 = 184;
    goto LABEL_7;
  }

  v5 = _s22VisualIntelligenceCore31TextDetectionReadabilityUtilityV016generateReadableD0_15imageResolution21skipReadabiltySorting5isRTL13minConfidenceSSSayAA0D14DetectorResultVG_So6CGSizeVS2bSftFZ_0(v1, 1, *(v0 + 360), *(v0 + 368), 0.0);
  v7 = v6;

  if (sub_1D8B15A70() < 101)
  {
    v12 = (v0 + 56);
    v13 = *(v0 + 240);

    v11 = 0x80000001D8B449A0;
    v10 = 0xD00000000000002ELL;
    v14 = 88;
    v15 = 80;
    v16 = 72;
    v17 = 64;
    goto LABEL_7;
  }

  v8 = sub_1D894C1D0(v5, v7);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = (v0 + 136);
    v13 = *(v0 + 240);

    v14 = 168;
    v15 = 160;
    v16 = 152;
    v17 = 144;
LABEL_7:
    *v13 = 0;
    *(v13 + 8) = v10;
    *(v13 + 16) = v11;
    *(v13 + 24) = 0x80;
    *(v13 + 32) = v4;
    *v12 = 0;
    *(v0 + v17) = v10;
    *(v0 + v16) = v11;
    *(v0 + v15) = 0x80;
    *(v0 + v14) = v4;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();

    v18 = *(v0 + 8);
    goto LABEL_8;
  }

  if (qword_1EE0E44C8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 352);
  v21 = *(v0 + 224);
  v22 = sub_1D8B151E0();
  __swift_project_value_buffer(v22, qword_1EE0E44D0);
  sub_1D894C8C8(v21, v20, type metadata accessor for CVBundle);

  v23 = sub_1D8B151C0();
  v24 = sub_1D8B161F0();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 352);
  if (v25)
  {
    v27 = *(v0 + 272);
    v28 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v82 = v77;
    *v28 = 134218242;
    v29 = sub_1D8B15A70();

    *(v28 + 4) = v29;

    *(v28 + 12) = 2080;
    sub_1D894C8C8(v26, v27, type metadata accessor for CVBundle.BundleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v31 = *(v0 + 312);
    v32 = *(v0 + 280);
    v33 = *(v0 + 288);
    if (EnumCaseMultiPayload == 1)
    {
      v34 = *(v33 + 32);
      v34(*(v0 + 312), *(v0 + 272), *(v0 + 280));
    }

    else
    {
      v35 = *(v0 + 248);
      sub_1D894C818(*(v0 + 272), v35, type metadata accessor for CVTrackSnapshot);
      (*(v33 + 16))(v31, v35, v32);
      sub_1D894C7B8(v35, type metadata accessor for CVTrackSnapshot);
      v34 = *(v33 + 32);
    }

    v36 = *(v0 + 352);
    v37 = *(v0 + 320);
    v39 = *(v0 + 280);
    v38 = *(v0 + 288);
    v34(v37, *(v0 + 312), v39);
    sub_1D894C880(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v40 = sub_1D8B16B50();
    v42 = v41;
    (*(v38 + 8))(v37, v39);
    sub_1D894C7B8(v36, type metadata accessor for CVBundle);
    v43 = sub_1D89AC714(v40, v42, &v82);

    *(v28 + 14) = v43;
    _os_log_impl(&dword_1D8783000, v23, v24, "Detected summarizable text of length: %ld (bundle: %s)", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v77);
    MEMORY[0x1DA721330](v77, -1, -1);
    MEMORY[0x1DA721330](v28, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    sub_1D894C7B8(v26, type metadata accessor for CVBundle);
  }

  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 224);
  sub_1D894C8C8(v46, *(v0 + 344), type metadata accessor for CVBundle);
  sub_1D894C8C8(v46, v44, type metadata accessor for CVBundle);
  sub_1D894C8C8(v46, v45, type metadata accessor for CVBundle);
  v47 = sub_1D8B151C0();
  v48 = sub_1D8B16200();
  v49 = os_log_type_enabled(v47, v48);
  v51 = *(v0 + 336);
  v50 = *(v0 + 344);
  v52 = *(v0 + 328);
  if (v49)
  {
    v78 = v48;
    log = v47;
    v53 = *(v0 + 264);
    v54 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v80 = v76;
    *v54 = 134218498;
    v55 = *(CVBundle.textDetections.getter() + 2);

    sub_1D894C7B8(v50, type metadata accessor for CVBundle);
    *(v54 + 4) = v55;
    *(v54 + 12) = 2048;
    CVBundle.latestEstimate.getter(&v81);
    v82 = v81;
    CVDetection.detection.getter((v0 + 96));
    v57 = *(v0 + 120);
    v56 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v57);
    v58 = (*(v56 + 88))(v57, v56);

    sub_1D894C7B8(v51, type metadata accessor for CVBundle);
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);
    *(v54 + 14) = v58;
    *(v54 + 22) = 2080;
    sub_1D894C8C8(v52, v53, type metadata accessor for CVBundle.BundleType);
    v59 = swift_getEnumCaseMultiPayload();
    v61 = *(v0 + 288);
    v60 = *(v0 + 296);
    v62 = *(v0 + 280);
    if (v59 == 1)
    {
      v63 = *(v61 + 32);
      v63(*(v0 + 296), *(v0 + 264), *(v0 + 280));
    }

    else
    {
      v64 = *(v0 + 248);
      sub_1D894C818(*(v0 + 264), v64, type metadata accessor for CVTrackSnapshot);
      (*(v61 + 16))(v60, v64, v62);
      sub_1D894C7B8(v64, type metadata accessor for CVTrackSnapshot);
      v63 = *(v61 + 32);
    }

    v65 = *(v0 + 328);
    v66 = *(v0 + 304);
    v68 = *(v0 + 280);
    v67 = *(v0 + 288);
    v63(v66, *(v0 + 296), v68);
    sub_1D894C880(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v69 = sub_1D8B16B50();
    v71 = v70;
    (*(v67 + 8))(v66, v68);
    sub_1D894C7B8(v65, type metadata accessor for CVBundle);
    v72 = sub_1D89AC714(v69, v71, &v80);

    *(v54 + 24) = v72;
    _os_log_impl(&dword_1D8783000, log, v78, "Detected summarizable bundle latest estimate count: %ld at %f (bundle: %s)", v54, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1DA721330](v76, -1, -1);
    MEMORY[0x1DA721330](v54, -1, -1);
  }

  else
  {
    sub_1D894C7B8(*(v0 + 344), type metadata accessor for CVBundle);

    sub_1D894C7B8(v52, type metadata accessor for CVBundle);
    sub_1D894C7B8(v51, type metadata accessor for CVBundle);
  }

  v73 = *(v0 + 216);
  type metadata accessor for BundleClassification.ClassificationType(0);
  swift_storeEnumTagMultiPayload();
  v74 = type metadata accessor for BundleClassification(0);
  v75 = v73 + *(v74 + 20);
  *v75 = 2;
  *(v75 + 8) = 0u;
  *(v75 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  *v75 = 2;
  *(v75 + 8) = 0u;
  *(v75 + 24) = 0u;
  *(v73 + *(v74 + 24)) = v4;

  v18 = *(v0 + 8);
LABEL_8:

  return v18();
}

id sub_1D894C1D0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TextSummarizer();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v9 = result;
    v10 = [result isVisualIntelligenceSummaryAllowed];

    if (!v10)
    {
      if (qword_1EE0E44C8 != -1)
      {
        swift_once();
      }

      v23 = sub_1D8B151E0();
      __swift_project_value_buffer(v23, qword_1EE0E44D0);
      v24 = sub_1D8B151C0();
      v25 = sub_1D8B161F0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1D8783000, v24, v25, "Summarization is not available with this managed configuration", v26, 2u);
        MEMORY[0x1DA721330](v26, -1, -1);
      }

      return 0xD00000000000002DLL;
    }

    v11 = *(String.tokens()() + 16);

    if (v11 < 0x65)
    {
      v16 = 0x80000001D8B44A00;
      if (qword_1EE0E44C8 != -1)
      {
        swift_once();
      }

      v15 = 0x1000000000000021;
      v27 = sub_1D8B151E0();
      __swift_project_value_buffer(v27, qword_1EE0E44D0);
      v18 = sub_1D8B151C0();
      v19 = sub_1D8B161F0();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_19;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      v22 = 0x1000000000000021;
    }

    else
    {
      v12 = *(v5 + 20);
      v13 = sub_1D8B15340();
      (*(*(v13 - 8) + 16))(v7 + v12, v2, v13);
      sub_1D8B153D0();
      swift_allocObject();
      *v7 = sub_1D8B153C0();
      v14 = sub_1D89CF330(a1, a2);
      sub_1D894C7B8(v7, type metadata accessor for TextSummarizer);
      v15 = 0;
      if (v14)
      {
        return v15;
      }

      v16 = 0x80000001D8B44A30;
      if (qword_1EE0E44C8 != -1)
      {
        swift_once();
      }

      v15 = 0xD000000000000045;
      v17 = sub_1D8B151E0();
      __swift_project_value_buffer(v17, qword_1EE0E44D0);
      v18 = sub_1D8B151C0();
      v19 = sub_1D8B161F0();
      if (!os_log_type_enabled(v18, v19))
      {
LABEL_19:

        return v15;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      v22 = 0xD000000000000045;
    }

    *(v20 + 4) = sub_1D89AC714(v22, v16, &v29);
    _os_log_impl(&dword_1D8783000, v18, v19, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1DA721330](v21, -1, -1);
    MEMORY[0x1DA721330](v20, -1, -1);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894C614(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D894B5F0(a1, a2, v9, a4, v5 + 16);
}

uint64_t type metadata accessor for SummarizeClassifier()
{
  result = qword_1EE0E5B70;
  if (!qword_1EE0E5B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D894C744()
{
  result = sub_1D8B15340();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D894C7B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D894C818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D894C880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D894C8C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D894C93C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1D8B16D20();
    MEMORY[0x1DA720210](v13);
    result = sub_1D8B16D80();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894CAAC(uint64_t a1, uint64_t a2)
{
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v138);
  v5 = &v120 - v4;
  v150 = type metadata accessor for TextDetectorResult(0);
  v141 = *(v150 - 1);
  v6 = MEMORY[0x1EEE9AC00](v150);
  v155 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v120 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D20);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v120 - v11;
  v153 = type metadata accessor for DetectionRequest.Annotation(0);
  v13 = MEMORY[0x1EEE9AC00](v153);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v120 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v144 = (&v120 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v120 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v154 = &v120 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v28 = &v120 - v27;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v29 = 0;
  v30 = a1 + 56;
  v31 = 1 << *(a1 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(a1 + 56);
  v34 = (v31 + 63) >> 6;
  v152 = a2 + 56;
  v131 = "";
  v137 = "textComposition.OpenEndedSchema";
  v136 = "ucturedExtraction.addToCalendar";
  v127 = "sualIntelligenceCamera";
  v130 = "IntelligenceCamera.ImageSearch";
  v129 = "gs.AppleIntelligence";
  v140 = v10;
  v143 = v26;
  v147 = v16;
  v133 = a2;
  v124 = a1;
  v132 = v5;
  v148 = v9;
  v123 = v25;
  v146 = v21;
  v122 = v28;
  v121 = a1 + 56;
  v120 = v34;
  if (!v33)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v35 = __clz(__rbit64(v33));
    v125 = (v33 - 1) & v33;
LABEL_13:
    v126 = v29;
    v38 = *(a1 + 48);
    v151 = *(v25 + 72);
    sub_1D8959330(v38 + v151 * (v35 | (v29 << 6)), v28, type metadata accessor for DetectionRequest.Annotation);
    sub_1D8959398(v28, v154, type metadata accessor for DetectionRequest.Annotation);
    sub_1D8B16D20();
    DetectionRequest.Annotation.hash(into:)(v156);
    v39 = sub_1D8B16D80();
    v40 = -1 << *(a2 + 32);
    v41 = v39 & ~v40;
    if (((*(v152 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
    {
LABEL_141:
      sub_1D8959400(v154, type metadata accessor for DetectionRequest.Annotation);
      return 0;
    }

    v149 = ~v40;
    while (1)
    {
      sub_1D8959330(*(a2 + 48) + v41 * v151, v21, type metadata accessor for DetectionRequest.Annotation);
      v42 = *(v10 + 48);
      sub_1D8959330(v21, v12, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8959330(v154, &v12[v42], type metadata accessor for DetectionRequest.Annotation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_1D8959330(v12, v16, type metadata accessor for DetectionRequest.Annotation);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D87C14D4(&v12[v42], v5);
          result = sub_1D8B13200();
          if ((result & 1) != 0 && *&v16[v138[9]] == *&v5[v138[9]])
          {
            v44 = v138[10];
            if (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v16[v44], *&v5[v44]), vceqq_f64(*&v16[v44 + 16], *&v5[v44 + 16])), vuzp1q_s32(vceqq_f64(*&v16[v44 + 32], *&v5[v44 + 32]), vceqq_f64(*&v16[v44 + 48], *&v5[v44 + 48]))))))
            {
              v45 = v138[11];
              v46 = *&v16[v45];
              v47 = *&v5[v45];
              v48 = *(v46 + 16);
              if (v48 == *(v47 + 16))
              {
                if (!v48 || v46 == v47)
                {
LABEL_31:
                  v51 = v138[12];
                  v52 = *&v16[v51];
                  v53 = *&v5[v51];
                  v54 = *(v52 + 16);
                  if (v54 == *(v53 + 16))
                  {
                    if (v54)
                    {
                      v55 = v52 == v53;
                    }

                    else
                    {
                      v55 = 1;
                    }

                    if (!v55)
                    {
                      v56 = (v52 + 32);
                      v57 = (v53 + 32);
                      while (v54)
                      {
                        if (*v56 != *v57)
                        {
                          goto LABEL_59;
                        }

                        ++v56;
                        ++v57;
                        if (!--v54)
                        {
                          goto LABEL_40;
                        }
                      }

                      goto LABEL_146;
                    }

LABEL_40:
                    if (*&v16[v138[13]] == *&v5[v138[13]] && *&v16[v138[14]] == *&v5[v138[14]])
                    {
                      v58 = sub_1D88E31C4(*&v16[v138[15]], *&v5[v138[15]]);
                      sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
                      if (v58)
                      {
                        sub_1D8959400(v154, type metadata accessor for DetectionRequest.Annotation);
                        sub_1D87A14E4(v5, &qword_1ECA67750);
                        sub_1D87A14E4(v16, &qword_1ECA67750);
                        goto LABEL_138;
                      }

                      goto LABEL_60;
                    }
                  }
                }

                else
                {
                  v49 = (v46 + 40);
                  v50 = (v47 + 40);
                  while (*(v49 - 1) == *(v50 - 1) && *v49 == *v50)
                  {
                    v49 += 4;
                    v50 += 4;
                    if (!--v48)
                    {
                      goto LABEL_31;
                    }
                  }
                }
              }
            }
          }

LABEL_59:
          sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
LABEL_60:
          sub_1D87A14E4(v5, &qword_1ECA67750);
          sub_1D87A14E4(v16, &qword_1ECA67750);
          sub_1D8959400(v12, type metadata accessor for DetectionRequest.Annotation);
          goto LABEL_17;
        }

        sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
        sub_1D87A14E4(v16, &qword_1ECA67750);
        goto LABEL_16;
      }

      v61 = v143;
      sub_1D8959330(v12, v143, type metadata accessor for DetectionRequest.Annotation);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
        v16 = v147;
        goto LABEL_16;
      }

      v62 = *v61;
      if (v62 > 2)
      {
        v16 = v147;
        if (v62 == 3)
        {
          v66 = 0xD00000000000002ELL;
          v111 = &v157;
        }

        else if (v62 == 4)
        {
          v66 = 0xD000000000000024;
          v111 = &v159;
        }

        else
        {
          v66 = 0xD00000000000002CLL;
          v111 = &v158;
        }

        v67 = *(v111 - 32);
      }

      else
      {
        v63 = 0xD00000000000003FLL;
        if (v62 != 1)
        {
          v63 = 0xD000000000000026;
        }

        v64 = v137;
        if (v62 != 1)
        {
          v64 = v136;
        }

        v65 = v62 == 0;
        if (*v61)
        {
          v66 = v63;
        }

        else
        {
          v66 = 0xD00000000000001FLL;
        }

        v67 = v131;
        if (!v65)
        {
          v67 = v64;
        }

        v16 = v147;
      }

      v112 = v12[v42];
      if (v112 > 2)
      {
        if (v112 != 3)
        {
          v113 = v112 == 4;
          if (v112 == 4)
          {
            v114 = 0xD000000000000024;
          }

          else
          {
            v114 = 0xD00000000000002CLL;
          }

          v115 = v130;
          v116 = &v158;
LABEL_125:
          v117 = *(v116 - 32);
          if (!v113)
          {
            v115 = v117;
          }

          goto LABEL_131;
        }

        v114 = 0xD00000000000002ELL;
        v118 = &v157;
      }

      else
      {
        if (v12[v42])
        {
          v113 = v112 == 1;
          if (v112 == 1)
          {
            v114 = 0xD00000000000003FLL;
          }

          else
          {
            v114 = 0xD000000000000026;
          }

          v115 = v137;
          v116 = &v161;
          goto LABEL_125;
        }

        v114 = 0xD00000000000001FLL;
        v118 = &v160;
      }

      v115 = *(v118 - 32);
LABEL_131:
      if (v66 == v114 && (v67 | 0x8000000000000000) == (v115 | 0x8000000000000000))
      {

        sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
LABEL_137:
        sub_1D8959400(v154, type metadata accessor for DetectionRequest.Annotation);
        v10 = v140;
        goto LABEL_138;
      }

      v119 = sub_1D8B16BA0();

      sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
      if (v119)
      {
        goto LABEL_137;
      }

      sub_1D8959400(v12, type metadata accessor for DetectionRequest.Annotation);
      v10 = v140;
LABEL_17:
      v41 = (v41 + 1) & v149;
      if (((*(v152 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
        goto LABEL_141;
      }
    }

    v59 = v144;
    sub_1D8959330(v12, v144, type metadata accessor for DetectionRequest.Annotation);
    v60 = *v59;
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      v21 = v146;
      sub_1D8959400(v146, type metadata accessor for DetectionRequest.Annotation);

LABEL_16:
      sub_1D87A14E4(v12, &qword_1ECA63D20);
      goto LABEL_17;
    }

    v68 = *&v12[v42];
    v142 = v60;
    v69 = *(v60 + 16);
    v145 = v68;
    v21 = v146;
    v70 = v141;
    if (v69 != *(v68 + 16))
    {
LABEL_110:
      sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);

      sub_1D8959400(v12, type metadata accessor for DetectionRequest.Annotation);
      goto LABEL_17;
    }

    v71 = v142;
    if (v69 && v142 != v145)
    {
      v72 = 0;
      v73 = (*(v141 + 80) + 32) & ~*(v141 + 80);
      v135 = v142 + v73;
      v134 = v145 + v73;
      v128 = v69;
      while (v72 < *(v71 + 16))
      {
        v74 = *(v70 + 72) * v72;
        v139 = v72;
        result = sub_1D8959330(v135 + v74, v9, type metadata accessor for TextDetectorResult);
        if (v139 >= *(v145 + 16))
        {
          goto LABEL_145;
        }

        sub_1D8959330(v134 + v74, v155, type metadata accessor for TextDetectorResult);
        if ((sub_1D8B13200() & 1) == 0)
        {
          goto LABEL_109;
        }

        if (*&v148[v150[5]] != *(v155 + v150[5]))
        {
          goto LABEL_109;
        }

        v75 = v150[6];
        if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v148[v75], *(v155 + v75)), vceqq_f64(*&v148[v75 + 16], *(v155 + v75 + 16))), vuzp1q_s32(vceqq_f64(*&v148[v75 + 32], *(v155 + v75 + 32)), vceqq_f64(*&v148[v75 + 48], *(v155 + v75 + 48)))))) & 1) == 0)
        {
          goto LABEL_109;
        }

        v76 = v150[7];
        v77 = &v148[v76];
        v78 = *&v148[v76 + 8];
        v79 = (v155 + v76);
        if ((*v77 != *v79 || v78 != v79[1]) && (sub_1D8B16BA0() & 1) == 0)
        {
          goto LABEL_109;
        }

        if (*&v148[v150[8]] != *(v155 + v150[8]))
        {
          goto LABEL_109;
        }

        if (*&v148[v150[9]] != *(v155 + v150[9]))
        {
          goto LABEL_109;
        }

        if ((sub_1D894DBC4(*&v148[v150[10]], *(v155 + v150[10])) & 1) == 0)
        {
          goto LABEL_109;
        }

        v80 = v150[11];
        v81 = *&v148[v80];
        v82 = *(v155 + v80);
        v83 = *(v81 + 16);
        if (v83 != *(v82 + 16))
        {
          goto LABEL_109;
        }

        if (v83 && v81 != v82)
        {
          v84 = 0;
          while (1)
          {
            v85 = (v81 + v84);
            v86 = (v82 + v84);
            if (*(v81 + v84 + 32) != *(v82 + v84 + 32))
            {
              break;
            }

            v88 = v85[7];
            v87 = v85[8];
            v89 = v86[7];
            v90 = v86[8];
            v91 = v85[5] == v86[5] && v85[6] == v86[6];
            if (!v91 && (sub_1D8B16BA0() & 1) == 0)
            {
              break;
            }

            v92 = v88 == v89 && v87 == v90;
            if (!v92 && (sub_1D8B16BA0() & 1) == 0)
            {
              break;
            }

            v84 += 40;
            if (!--v83)
            {
              goto LABEL_93;
            }
          }

LABEL_109:
          sub_1D8959400(v155, type metadata accessor for TextDetectorResult);
          v9 = v148;
          sub_1D8959400(v148, type metadata accessor for TextDetectorResult);
          a2 = v133;
          v5 = v132;
          v10 = v140;
          v21 = v146;
          v16 = v147;
          goto LABEL_110;
        }

LABEL_93:
        v93 = v150[12];
        v94 = &v148[v93];
        v95 = *v94;
        v96 = v155 + v93;
        v97 = *v96;
        if (*v94)
        {
          if (!v97)
          {
            goto LABEL_109;
          }

          v99 = *(v94 + 1);
          v98 = *(v94 + 2);
          v101 = *(v96 + 8);
          v100 = *(v96 + 16);
          sub_1D87DDF0C();
          v102 = v97;
          v103 = v95;
          v104 = sub_1D8B16400();

          if ((v104 & 1) == 0 || v99 != v101 || v98 != v100)
          {
            goto LABEL_109;
          }
        }

        else if (v97)
        {
          goto LABEL_109;
        }

        v105 = v150[13];
        v9 = v148;
        v106 = *&v148[v105];
        v107 = *&v148[v105 + 8];
        v108 = (v155 + v105);
        if (v106 == *v108 && v107 == v108[1])
        {
          sub_1D8959400(v155, type metadata accessor for TextDetectorResult);
          result = sub_1D8959400(v9, type metadata accessor for TextDetectorResult);
          a2 = v133;
          v5 = v132;
          v70 = v141;
          v10 = v140;
          v21 = v146;
          v16 = v147;
          v109 = v128;
        }

        else
        {
          v110 = sub_1D8B16BA0();
          sub_1D8959400(v155, type metadata accessor for TextDetectorResult);
          result = sub_1D8959400(v9, type metadata accessor for TextDetectorResult);
          a2 = v133;
          v5 = v132;
          v70 = v141;
          v10 = v140;
          v21 = v146;
          v16 = v147;
          v109 = v128;
          if ((v110 & 1) == 0)
          {
            goto LABEL_110;
          }
        }

        v72 = v139 + 1;
        v71 = v142;
        if (v139 + 1 == v109)
        {
          goto LABEL_135;
        }
      }

      goto LABEL_144;
    }

LABEL_135:
    sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
    sub_1D8959400(v154, type metadata accessor for DetectionRequest.Annotation);

LABEL_138:
    result = sub_1D8959400(v12, type metadata accessor for DetectionRequest.Annotation);
    a1 = v124;
    v25 = v123;
    v28 = v122;
    v29 = v126;
    v30 = v121;
    v34 = v120;
    v33 = v125;
    if (v125)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v36 = v29;
  while (1)
  {
    v29 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v29 >= v34)
    {
      return 1;
    }

    v37 = *(v30 + 8 * v29);
    ++v36;
    if (v37)
    {
      v35 = __clz(__rbit64(v37));
      v125 = (v37 - 1) & v37;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_1D894DBC4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1D8B16D20();

    sub_1D8B15A60();
    v16 = sub_1D8B16D80();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1D8B16BA0() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894DD7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B152F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1D8959460(&qword_1EE0E3A70, MEMORY[0x1E69E0248]);
      v26 = sub_1D8B15790();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1D8959460(&qword_1EE0E3A68, MEMORY[0x1E69E0248]);
        v31 = sub_1D8B158C0();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894E12C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionPin(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v38 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v14 = &v38 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v21 = a2 + 56;
  if (v19)
  {
    while (1)
    {
      v40 = v20;
      v41 = v16;
      v22 = __clz(__rbit64(v19));
      v39 = (v19 - 1) & v19;
LABEL_13:
      v44 = a1;
      v25 = *(a1 + 48);
      v43 = v12;
      v26 = *(v12 + 72);
      sub_1D8959330(v25 + v26 * (v22 | (v15 << 6)), v14, type metadata accessor for ActionPin);
      v42 = v14;
      sub_1D8959398(v14, v10, type metadata accessor for ActionPin);
      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D8959460(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      sub_1D8B157A0();
      v27 = &v10[v4[5]];
      v28 = v27[3];
      v50 = v27[2];
      v51 = v28;
      v29 = v27[1];
      v48 = *v27;
      v49 = v29;
      sub_1D8818B80(v48.f64[0], v48.f64[1]);
      sub_1D8818B80(v49.f64[0], v49.f64[1]);
      sub_1D8818B80(v50.f64[0], v50.f64[1]);
      sub_1D8818B80(v51.f64[0], v51.f64[1]);
      v30 = &v10[v4[6]];
      v31 = *(v30 + 1);
      v47 = *v30;
      sub_1D8B15A60();
      v46 = *&v10[v4[7]];
      sub_1D87CF3E8(v52, v46);
      v45 = v10[v4[8]];
      sub_1D8B16D40();
      v32 = sub_1D8B16D80();
      v33 = -1 << *(a2 + 32);
      v34 = v32 & ~v33;
      if (((*(v21 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        break;
      }

      v35 = ~v33;
      while (1)
      {
        sub_1D8959330(*(a2 + 48) + v34 * v26, v7, type metadata accessor for ActionPin);
        if (sub_1D8B13200() & 1) != 0 && (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v7[v4[5]], v48), vceqq_f64(*&v7[v4[5] + 16], v49)), vuzp1q_s32(vceqq_f64(*&v7[v4[5] + 32], v50), vceqq_f64(*&v7[v4[5] + 48], v51))))))
        {
          v36 = &v7[v4[6]];
          v37 = *v36 == v47 && *(v36 + 1) == v31;
          if (v37 || (sub_1D8B16BA0()) && (sub_1D88E245C(*&v7[v4[7]], v46) & 1) != 0 && v45 == v7[v4[8]])
          {
            break;
          }
        }

        sub_1D8959400(v7, type metadata accessor for ActionPin);
        v34 = (v34 + 1) & v35;
        if (((*(v21 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      sub_1D8959400(v7, type metadata accessor for ActionPin);
      result = sub_1D8959400(v10, type metadata accessor for ActionPin);
      a1 = v44;
      v12 = v43;
      v14 = v42;
      v16 = v41;
      v20 = v40;
      v19 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

LABEL_28:
    sub_1D8959400(v10, type metadata accessor for ActionPin);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v16 + 8 * v15);
    ++v23;
    if (v24)
    {
      v40 = v20;
      v41 = v16;
      v22 = __clz(__rbit64(v24));
      v39 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894E614(uint64_t a1, uint64_t a2)
{
  v73 = sub_1D8B13240();
  v4 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v67 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v68);
  v74 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVBundle.BundleType(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v78 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DA8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v69 = type metadata accessor for CVBundle(0);
  v15 = MEMORY[0x1EEE9AC00](v69);
  v70 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v79 = &v55 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = &v55 - v21;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v23 = 0;
  v24 = a1 + 56;
  v25 = 1 << *(a1 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(a1 + 56);
  v28 = (v25 + 63) >> 6;
  v77 = a2 + 56;
  v72 = (v4 + 8);
  v66 = (v4 + 32);
  if (!v27)
  {
    goto LABEL_8;
  }

  do
  {
    v56 = v28;
    v57 = v24;
    v29 = __clz(__rbit64(v27));
    v55 = (v27 - 1) & v27;
LABEL_13:
    v58 = v23;
    v61 = a1;
    v32 = *(a1 + 48);
    v60 = v20;
    v76 = *(v20 + 72);
    sub_1D8959330(v32 + v76 * (v29 | (v23 << 6)), v22, type metadata accessor for CVBundle);
    v59 = v22;
    v33 = v79;
    sub_1D8959398(v22, v79, type metadata accessor for CVBundle);
    sub_1D8B16D20();
    sub_1D891CA54(v81);
    v34 = v69;
    v64 = *(v33 + v69[5]);
    sub_1D87CF97C(v81, v64);
    v63 = *(v33 + v34[6]);
    sub_1D87CF97C(v81, v63);
    v62 = *(v33 + v34[7]);
    sub_1D893983C(v81, v62);
    v35 = sub_1D8B16D80();
    v36 = -1 << *(a2 + 32);
    v37 = v35 & ~v36;
    v38 = v70;
    if (((*(v77 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
    {
LABEL_42:
      sub_1D8959400(v79, type metadata accessor for CVBundle);
      return 0;
    }

    v39 = ~v36;
    v71 = ~v36;
    v75 = a2;
    v65 = v12;
    while (1)
    {
      sub_1D8959330(*(a2 + 48) + v37 * v76, v38, type metadata accessor for CVBundle);
      v40 = *(v12 + 48);
      sub_1D8959330(v38, v14, type metadata accessor for CVBundle.BundleType);
      sub_1D8959330(v79, &v14[v40], type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1D8959330(v14, v78, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*v72)(v78, v73);
LABEL_16:
        sub_1D87A14E4(v14, &qword_1ECA63DA8);
LABEL_17:
        a2 = v75;
        goto LABEL_18;
      }

      v41 = v78;
      v42 = v67;
      v43 = v73;
      (*v66)(v67, &v14[v40], v73);
      v44 = sub_1D8B13200();
      v45 = *v72;
      v46 = v42;
      v38 = v70;
      (*v72)(v46, v43);
      v47 = v43;
      v12 = v65;
      v45(v41, v47);
      v39 = v71;
      a2 = v75;
      if (v44)
      {
        goto LABEL_22;
      }

      sub_1D8959400(v14, type metadata accessor for CVBundle.BundleType);
LABEL_18:
      sub_1D8959400(v38, type metadata accessor for CVBundle);
      v37 = (v37 + 1) & v39;
      if (((*(v77 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    sub_1D8959330(v14, v11, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D8959400(v11, type metadata accessor for CVTrackSnapshot);
      goto LABEL_16;
    }

    sub_1D8959398(&v14[v40], v74, type metadata accessor for CVTrackSnapshot);
    if ((sub_1D8B13200() & 1) == 0 || (v48 = v68[5], v49 = *&v11[v48], v80 = *(v74 + v48), *&v81[0] = v49, , , LOBYTE(v49) = static CVDetection.== infix(_:_:)(v81, &v80), , , (v49 & 1) == 0) || (v50 = v68[6], v51 = *&v11[v50], v80 = *(v74 + v50), *&v81[0] = v51, , , LOBYTE(v51) = static CVDetection.== infix(_:_:)(v81, &v80), , , (v51 & 1) == 0) || v11[v68[7]] != *(v74 + v68[7]) || *&v11[v68[8]] != *(v74 + v68[8]) || *&v11[v68[9]] != *(v74 + v68[9]))
    {
      sub_1D8959400(v74, type metadata accessor for CVTrackSnapshot);
      v39 = v71;
LABEL_37:
      sub_1D8959400(v11, type metadata accessor for CVTrackSnapshot);
      sub_1D8959400(v14, type metadata accessor for CVBundle.BundleType);
      goto LABEL_17;
    }

    v52 = v68[10];
    v53 = v11[v52];
    v54 = *(v74 + v52);
    sub_1D8959400(v74, type metadata accessor for CVTrackSnapshot);
    v39 = v71;
    if (v53 != v54)
    {
      goto LABEL_37;
    }

    sub_1D8959400(v11, type metadata accessor for CVTrackSnapshot);
    a2 = v75;
LABEL_22:
    sub_1D8959400(v14, type metadata accessor for CVBundle.BundleType);
    if ((sub_1D88E4444(*(v38 + v69[5]), v64) & 1) == 0 || (sub_1D88E4444(*(v38 + v69[6]), v63) & 1) == 0 || (sub_1D8854A60(*(v38 + v69[7]), v62) & 1) == 0)
    {
      goto LABEL_18;
    }

    sub_1D8959400(v38, type metadata accessor for CVBundle);
    result = sub_1D8959400(v79, type metadata accessor for CVBundle);
    a1 = v61;
    v20 = v60;
    v22 = v59;
    v23 = v58;
    v24 = v57;
    v28 = v56;
    v27 = v55;
  }

  while (v55);
LABEL_8:
  v30 = v23;
  while (1)
  {
    v23 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v23 >= v28)
    {
      return 1;
    }

    v31 = *(v24 + 8 * v23);
    ++v30;
    if (v31)
    {
      v56 = v28;
      v57 = v24;
      v29 = __clz(__rbit64(v31));
      v55 = (v31 - 1) & v31;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}