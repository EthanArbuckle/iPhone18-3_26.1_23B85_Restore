uint64_t sub_1D890EC78()
{
  v35 = v0;
  v1 = *(v0 + 248);
  *(v0 + 620) = v1;
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  *(v0 + 568) = v2;
  *(v0 + 576) = v3;
  v4 = *(v0 + 272);
  *(v0 + 621) = v4;
  v5 = *(v0 + 280);
  *(v0 + 584) = v5;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECA675B0;
    *(v0 + 592) = qword_1ECA675B0;
    *(v0 + 328) = v1;
    *(v0 + 336) = v2;
    *(v0 + 344) = v3;
    *(v0 + 352) = v4;
    *(v0 + 360) = v5;
    sub_1D88E0E0C();
    *(v0 + 600) = sub_1D8B16C90();
    *(v0 + 608) = v7;

    return MEMORY[0x1EEE6DFA0](sub_1D890F0B0, v6, 0);
  }

  else
  {
    v8 = *(v0 + 584);
    v33 = *(v0 + 621);
    v9 = *(v0 + 576);
    v10 = *(v0 + 568);
    v11 = *(v0 + 620);
    v12 = *(v0 + 496);
    v13 = *(v0 + 480);
    BundleClassification.ClassificationType.asEmpty.getter(v12);
    CVBundle.latestEstimate.getter(v34);
    v34[1] = v34[0];
    CVDetection.detection.getter((v0 + 288));
    v14 = *(v0 + 312);
    v15 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 288), v14);
    v16 = (*(v15 + 88))(v14, v15);

    __swift_destroy_boxed_opaque_existential_1(v0 + 288);
    v17 = v12 + *(v13 + 20);
    *v17 = 2;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v17 = v11;
    *(v17 + 1) = v10;
    *(v17 + 2) = v9;
    *(v17 + 3) = v33;
    *(v17 + 4) = v8;
    *(v12 + *(v13 + 24)) = v16;
    v18 = sub_1D8B15150();
    sub_1D8B15180();
    v19 = sub_1D8B16360();
    if (sub_1D8B16460())
    {
      v21 = *(v0 + 424);
      v20 = *(v0 + 432);
      v22 = *(v0 + 416);

      sub_1D8B151B0();

      if ((*(v21 + 88))(v20, v22) == *MEMORY[0x1E69E93E8])
      {
        v23 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));
        v23 = "";
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = sub_1D8B15110();
      _os_signpost_emit_with_name_impl(&dword_1D8783000, v18, v19, v25, "BundleClassification.update", v23, v24, 2u);
      MEMORY[0x1DA721330](v24, -1, -1);
    }

    v26 = *(v0 + 536);
    v27 = *(v0 + 496);
    v28 = *(v0 + 456);
    v29 = *(v0 + 440);
    v30 = *(v0 + 368);

    v26(v28, v29);
    sub_1D8912918(v27, v30, type metadata accessor for BundleClassification);
    __swift_destroy_boxed_opaque_existential_1(v0 + 208);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D890F0B0()
{
  sub_1D8A3BB18(v0[51], v0[75], v0[76]);

  return MEMORY[0x1EEE6DFA0](sub_1D890F130, 0, 0);
}

uint64_t sub_1D890F130()
{
  v28 = v0;
  v1 = *(v0 + 584);
  v26 = *(v0 + 621);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 620);
  v5 = *(v0 + 496);
  v6 = *(v0 + 480);
  BundleClassification.ClassificationType.asEmpty.getter(v5);
  CVBundle.latestEstimate.getter(v27);
  v27[1] = v27[0];
  CVDetection.detection.getter((v0 + 288));
  v7 = *(v0 + 312);
  v8 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 288), v7);
  v9 = (*(v8 + 88))(v7, v8);

  __swift_destroy_boxed_opaque_existential_1(v0 + 288);
  v10 = v5 + *(v6 + 20);
  *v10 = 2;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  *v10 = v4;
  *(v10 + 1) = v3;
  *(v10 + 2) = v2;
  *(v10 + 3) = v26;
  *(v10 + 4) = v1;
  *(v5 + *(v6 + 24)) = v9;
  v11 = sub_1D8B15150();
  sub_1D8B15180();
  v12 = sub_1D8B16360();
  if (sub_1D8B16460())
  {
    v14 = *(v0 + 424);
    v13 = *(v0 + 432);
    v15 = *(v0 + 416);

    sub_1D8B151B0();

    if ((*(v14 + 88))(v13, v15) == *MEMORY[0x1E69E93E8])
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v11, v12, v18, "BundleClassification.update", v16, v17, 2u);
    MEMORY[0x1DA721330](v17, -1, -1);
  }

  v19 = *(v0 + 536);
  v20 = *(v0 + 496);
  v21 = *(v0 + 456);
  v22 = *(v0 + 440);
  v23 = *(v0 + 368);

  v19(v21, v22);
  sub_1D8912918(v20, v23, type metadata accessor for BundleClassification);
  __swift_destroy_boxed_opaque_existential_1(v0 + 208);

  v24 = *(v0 + 8);

  return v24();
}

void *sub_1D890F44C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  CVBundle.latestEstimate.getter(&v42);
  v44 = v42;
  CVDetection.detection.getter(&v36);
  v11 = *(&v37 + 1);
  v12 = v38;
  __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  v13 = (*(v12 + 88))(v11, v12);

  __swift_destroy_boxed_opaque_existential_1(&v36);
  result = CVBundle.workState.getter(&v36);
  if (v36 != 2)
  {
    *a4 = xmmword_1D8B190D0;
    *(a4 + 16) = xmmword_1D8B28660;
    *(a4 + 32) = v13;
    return result;
  }

  v15 = a3[3];
  v16 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v15);
  v17 = a2[3];
  v38 = a2[2];
  v39 = v17;
  v18 = a2[5];
  v40 = a2[4];
  v41 = v18;
  v19 = a2[1];
  v36 = *a2;
  v37 = v19;
  result = (*(v16 + 8))(&v42, a1, &v36, v15, v16);
  v20 = v43;
  if (v43 != 255)
  {
    *a4 = v42;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 16) = v20;
    return result;
  }

  v21 = type metadata accessor for BundleClassification(0);
  v22 = v35;
  v23 = *(v35 + *(v21 + 24));
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v24 = qword_1EE0E54C8;
  v25 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire;
  result = swift_beginAccess();
  if (*(v24 + v25))
  {
    v26 = INFINITY;
  }

  else
  {
    sub_1D8912BA4(v22, v10, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1D89128B8(v10, type metadata accessor for BundleClassification.ClassificationType);
    if (EnumCaseMultiPayload == 1)
    {
      v26 = 3.0;
    }

    else
    {
      v26 = 2.0;
    }
  }

  if (v13 >= v23 + v26)
  {
    goto LABEL_16;
  }

  v28 = (v22 + *(v21 + 20));
  v29 = *v28;
  if (v29 == 2)
  {
    *a4 = v13 - v23;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = xmmword_1D8B28680;
    return result;
  }

  if (v29)
  {
LABEL_16:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = xmmword_1D8B28670;
  }

  else
  {
    v30 = *(v28 + 1);
    v31 = *(v28 + 2);
    v32 = *(v28 + 4);
    v33 = v28[24];
    *a4 = 0;
    *(a4 + 8) = v30;
    *(a4 + 16) = v31;
    *(a4 + 24) = v33 | 0x4000000000000000;
    *(a4 + 32) = v32;
    return sub_1D8912A68(v30, v31, v33);
  }

  return result;
}

unint64_t sub_1D890F760(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a2[3];
  v18[2] = a2[2];
  v18[3] = v9;
  v10 = a2[5];
  v18[4] = a2[4];
  v18[5] = v10;
  v11 = a2[1];
  v18[0] = *a2;
  v18[1] = v11;
  result = BundleClassification.ClassificationType.asEmpty.getter(v8);
  if (!*(a3 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1D87EF6AC(v8);
  if ((v13 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_1D87C1470(*(a3 + 56) + 40 * result, v17);
  sub_1D89128B8(v8, type metadata accessor for BundleClassification.ClassificationType);
  sub_1D890F44C(a1, v18, v17, &v19);
  __swift_destroy_boxed_opaque_existential_1(v17);
  v14 = v19;
  v15 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    v14 = v15 != 2 || *&v19 >= 0.2;
  }

  else if (v15)
  {
    sub_1D8916384(v19, v20, v21, v22);
  }

  else
  {
    sub_1D8916384(v19, v20, v21, v22);
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_1D890F8E8()
{
  v1 = *v0;
  v2 = 0x73736563637573;
  v3 = 0x526572756C696166;
  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D890F998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D89161C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D890F9C0(uint64_t a1)
{
  v2 = sub_1D89131F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890F9FC(uint64_t a1)
{
  v2 = sub_1D89131F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleClassificationResultSummary.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65460);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v16 = *(v1 + 8);
  v15 = *(v1 + 16);
  v7 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = v7;
  v8 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89131F4();
  sub_1D8B16DD0();
  LOBYTE(v19) = 0;
  v9 = v17;
  sub_1D8B16AA0();
  if (!v9)
  {
    v11 = v13;
    v12 = v14;
    LOBYTE(v19) = 1;
    sub_1D8B16A70();
    v19 = v12;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
    sub_1D8913248(&qword_1ECA65470);
    sub_1D8B16A80();
    v19 = v11;
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65478);
    sub_1D89132B4(&qword_1ECA65480);
    sub_1D8B16A80();
    v19 = v8;
    v18 = 4;
    sub_1D8B16A80();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t BundleClassificationResultSummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65488);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89131F4();
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  v9 = sub_1D8B169D0();
  LOBYTE(v23) = 1;
  v10 = sub_1D8B169A0();
  v21 = v11;
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  v22 = 2;
  sub_1D8913248(&qword_1ECA65490);
  sub_1D8B169B0();
  v19 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65478);
  v22 = 3;
  v18 = sub_1D89132B4(&qword_1ECA65498);
  sub_1D8B169B0();
  v17 = v23;
  v22 = 4;
  sub_1D8B169B0();
  (*(v6 + 8))(v8, v5);
  v12 = v23;
  *a2 = v9 & 1;
  v13 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21 & 1;
  v14 = v17;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CVDebugArtifactManager.summary(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-v9];
  BundleClassification.ClassificationType.asEmpty.getter(&v24[-v9]);
  swift_beginAccess();
  v11 = v1[18];
  if (*(v11 + 16))
  {

    v12 = sub_1D87EF6AC(v10);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      sub_1D89128B8(v10, type metadata accessor for BundleClassification.ClassificationType);

      goto LABEL_6;
    }
  }

  sub_1D89128B8(v10, type metadata accessor for BundleClassification.ClassificationType);
  v14 = 0;
LABEL_6:
  BundleClassification.ClassificationType.asEmpty.getter(v8);
  swift_beginAccess();
  v15 = v3[19];
  if (!*(v15 + 16))
  {
    goto LABEL_11;
  }

  v16 = sub_1D87EF6AC(v8);
  if ((v17 & 1) == 0)
  {

LABEL_11:
    sub_1D89128B8(v8, type metadata accessor for BundleClassification.ClassificationType);
    v18 = MEMORY[0x1E69E7CD0];
    v19 = *(MEMORY[0x1E69E7CD0] + 16);
    if (!v19)
    {
      goto LABEL_9;
    }

LABEL_12:
    v20 = sub_1D87F38C0(v19, 0);
    v21 = sub_1D88178CC(&v25, v20 + 4, v19, v18);
    sub_1D87977A0();
    if (v21 == v19)
    {
      v25 = v20;

      sub_1D8910430(&v25);
      if (!v2)
      {

        v19 = v25;
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  sub_1D89128B8(v8, type metadata accessor for BundleClassification.ClassificationType);

  v19 = *(v18 + 16);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_9:

LABEL_15:
  swift_beginAccess();
  v22 = v3[16];
  if (*(v22 + 16))
  {
  }

  else
  {
    v22 = 0;
  }

  swift_beginAccess();
  if (*(v3[17] + 16))
  {
  }

  else
  {
    result = 0;
  }

  *a1 = v14 > 0;
  *(a1 + 8) = v14 & ~(v14 >> 63);
  *(a1 + 16) = v14 < 1;
  *(a1 + 24) = v19;
  *(a1 + 32) = v22;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1D8910430(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D3D0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D891049C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D891049C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8B16B30();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D8B15D60();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D8910664(v7, v8, a1, v4);
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
    return sub_1D8910594(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D8910594(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_1D8B16BA0(), (result & 1) == 0))
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

uint64_t sub_1D8910664(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1D885CC68(v8);
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
        sub_1D8910C40((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = MEMORY[0x1E69E7CC0];
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
        result = sub_1D8B16BA0();
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
            result = sub_1D8B16BA0();
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
      result = sub_1D87C7C5C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D87C7C5C((v39 > 1), v40 + 1, 1, v8);
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
        sub_1D8910C40((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D885CC68(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D885CBDC(v44);
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
    if (v37 || (result = sub_1D8B16BA0(), (result & 1) == 0))
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

uint64_t sub_1D8910C40(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1D8B16BA0() & 1) != 0)
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
      if (!v21 && (sub_1D8B16BA0() & 1) != 0)
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

uint64_t _s22VisualIntelligenceCore20BundleClassificationV14BlockingReasonO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v16 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1D8B16BA0();
      sub_1D8912A90(v6, v5, 0);
      sub_1D8912A90(v3, v2, 0);
      sub_1D88E102C(v3, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
      goto LABEL_28;
    }

    sub_1D8912A90(v16, v2, 0);
    sub_1D8912A90(v3, v2, 0);
    sub_1D88E102C(v3, v2, 0);
    v15 = v3;
    v18 = v2;
    v19 = 0;
    goto LABEL_44;
  }

  if (v4 != 1)
  {
    if (v3 <= 1)
    {
      if (v3 | v2)
      {
        if (v7 == 2 && v6 == 1 && !v5)
        {
          sub_1D88E102C(*a1, v2, 2u);
          v13 = 1;
          sub_1D88E102C(1, 0, 2u);
          return v13;
        }

        goto LABEL_10;
      }

      if (v7 != 2 || v5 | v6)
      {
LABEL_10:
        sub_1D8912A90(*a2, *(a2 + 8), v7);
        sub_1D8912A90(v3, v2, v4);
        sub_1D88E102C(v3, v2, v4);
        sub_1D88E102C(v6, v5, v7);
        return 0;
      }

      sub_1D88E102C(*a1, v2, 2u);
      v15 = 0;
    }

    else if (v3 ^ 2 | v2)
    {
      if (v3 ^ 3 | v2)
      {
        if (v7 != 2 || v6 != 4 || v5)
        {
          goto LABEL_10;
        }

        sub_1D88E102C(*a1, v2, 2u);
        v15 = 4;
      }

      else
      {
        if (v7 != 2 || v6 != 3 || v5)
        {
          goto LABEL_10;
        }

        sub_1D88E102C(*a1, v2, 2u);
        v15 = 3;
      }
    }

    else
    {
      if (v7 != 2 || v6 != 2 || v5)
      {
        goto LABEL_10;
      }

      sub_1D88E102C(*a1, v2, 2u);
      v15 = 2;
    }

    v18 = 0;
    v19 = 2;
LABEL_44:
    sub_1D88E102C(v15, v18, v19);
    return 1;
  }

  if (v7 != 1)
  {
    goto LABEL_10;
  }

  if (v3 == v6 && v2 == v5)
  {
    v13 = 1;
    sub_1D8912A90(*a1, v2, 1u);
    sub_1D8912A90(v3, v2, 1u);
    sub_1D88E102C(v3, v2, 1u);
    sub_1D88E102C(v3, v2, 1u);
    return v13;
  }

  v9 = sub_1D8B16BA0();
  sub_1D8912A90(v6, v5, 1u);
  sub_1D8912A90(v3, v2, 1u);
  sub_1D88E102C(v3, v2, 1u);
  v10 = v6;
  v11 = v5;
  v12 = 1;
LABEL_28:
  sub_1D88E102C(v10, v11, v12);
  return v9 & 1;
}

uint64_t _s22VisualIntelligenceCore32BundleClassificationRuntimeErrorV0G4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v8 != 2)
    {
      v12 = v7 >= 0xC0 && (v5 | v6) == 0;
      if (!v12 || v7 != 192)
      {
        goto LABEL_18;
      }

      sub_1D88E1004(*a1, v2, v4);
      v13 = 0;
      v14 = 0;
      v15 = -64;
LABEL_22:
      sub_1D88E1004(v13, v14, v15);
      v9 = 1;
      return v9 & 1;
    }

    if ((v7 & 0xC0) != 0x80)
    {
      goto LABEL_18;
    }

LABEL_9:
    v10 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1D8B16BA0();
      sub_1D8912A68(v3, v2, v4);
      sub_1D8912A68(v6, v5, v7);
      sub_1D88E1004(v3, v2, v4);
      sub_1D88E1004(v6, v5, v7);
      return v9 & 1;
    }

    sub_1D8912A68(v10, v2, v4);
    sub_1D8912A68(v3, v2, v7);
    sub_1D88E1004(v3, v2, v4);
    v13 = v3;
    v14 = v2;
    v15 = v7;
    goto LABEL_22;
  }

  if (v8)
  {
    if ((v7 & 0xC0) != 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (v7 > 0x3F)
  {
LABEL_18:
    sub_1D8912A68(*a1, v2, v4);
    sub_1D8912A68(v6, v5, v7);
    sub_1D88E1004(v3, v2, v4);
    sub_1D88E1004(v6, v5, v7);
    v9 = 0;
    return v9 & 1;
  }

  v19[0] = *a1;
  v19[1] = v2;
  v20 = v4;
  v17[0] = v6;
  v17[1] = v5;
  v18 = v7;
  sub_1D8912A68(v6, v5, v7);
  sub_1D8912A68(v3, v2, v4);
  sub_1D8912A68(v3, v2, v4);
  sub_1D8912A68(v6, v5, v7);
  v9 = _s22VisualIntelligenceCore20BundleClassificationV14BlockingReasonO2eeoiySbAE_AEtFZ_0(v19, v17);
  sub_1D88E1004(v3, v2, v4);
  sub_1D88E1004(v6, v5, v7);
  sub_1D88E1004(v6, v5, v7);
  sub_1D88E1004(v3, v2, v4);
  return v9 & 1;
}

uint64_t _s22VisualIntelligenceCore32BundleClassificationRuntimeErrorV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v20 = v5;
  v21 = v4;
  v22 = v2;
  v23 = v3;
  v7 = *(a2 + 4);
  v8 = *(a1 + 4);
  v10 = *(a2 + 1);
  v9 = *(a2 + 2);
  v11 = *(a1 + 2);
  v12 = a1[24];
  v13 = a2[24];
  v17 = *(a1 + 1);
  v18 = v11;
  v19 = v12;
  v14 = v10;
  v15 = v9;
  v16 = v13;
  sub_1D8912A68(v17, v11, v12);
  sub_1D8912A68(v10, v9, v13);
  LOBYTE(v9) = _s22VisualIntelligenceCore32BundleClassificationRuntimeErrorV0G4TypeO2eeoiySbAE_AEtFZ_0(&v17, &v14);
  sub_1D88E1004(v14, v15, v16);
  sub_1D88E1004(v17, v18, v19);
  return v9 & (v8 == v7);
}

BOOL _s22VisualIntelligenceCore20BundleClassificationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BundleClassification(0);
  v5 = *(v4 + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v9 = *(a1 + v5 + 16);
  v8 = *(a1 + v5 + 24);
  v10 = *(a1 + v5 + 32);
  v11 = (a2 + v5);
  v13 = *v11;
  v12 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = v11[4];
  if (v7 == 2)
  {
    v27 = v4;
    v28 = v6;
    v17 = v6;
    v18 = v9;
    v19 = v9;
    v20 = v8;
    sub_1D8912A48(v7, v17, v19, v8);
    sub_1D8912A48(v13, v12, v14, v15);
    if (v13 == 2)
    {
      sub_1D88E0FE4(v7, v28, v18, v20);
      return *(a1 + *(v27 + 24)) == *(a2 + *(v27 + 24));
    }

    goto LABEL_7;
  }

  v34 = v7;
  v35 = v6;
  v36 = v9;
  v37 = v8;
  v38 = v10;
  if (v13 == 2)
  {
    v21 = v8;
    sub_1D8912A48(v7, v6, v9, v8);
    sub_1D8912A48(v13, v12, v14, v15);
    sub_1D8912A48(v7, v6, v9, v21);
    v28 = v6;
    v22 = v6;
    v18 = v9;
    v23 = v9;
    v20 = v21;
    sub_1D88E1004(v22, v23, v21);
LABEL_7:
    sub_1D88E0FE4(v7, v28, v18, v20);
    sub_1D88E0FE4(v13, v12, v14, v15);
    return 0;
  }

  v27 = v4;
  v29[0] = v13 & 1;
  v30 = v12;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v26 = v8;
  sub_1D8912A48(v7, v6, v9, v8);
  sub_1D8912A48(v13, v12, v14, v15);
  sub_1D8912A48(v7, v6, v9, v26);
  v25 = _s22VisualIntelligenceCore32BundleClassificationRuntimeErrorV2eeoiySbAC_ACtFZ_0(&v34, v29);
  sub_1D88E1004(v30, v31, v32);
  sub_1D88E1004(v35, v36, v37);
  sub_1D88E0FE4(v7, v6, v9, v26);
  if (v25)
  {
    return *(a1 + *(v27 + 24)) == *(a2 + *(v27 + 24));
  }

  return 0;
}

uint64_t _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  *&v76 = a2;
  v2 = sub_1D8B145A0();
  v73 = *(v2 - 8);
  v74 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v69 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for VisualLookupClassifier.Result(0);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v66 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = &v66 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65700);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v66 - v7;
  v8 = type metadata accessor for BundleClassification.ClassificationType(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v66 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v66 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v66 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v66 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65708);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v66 - v28;
  v30 = (&v66 + *(v27 + 56) - v28);
  sub_1D8912BA4(v75, &v66 - v28, type metadata accessor for BundleClassification.ClassificationType);
  sub_1D8912BA4(v76, v30, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D8912BA4(v29, v11, type metadata accessor for BundleClassification.ClassificationType);
        v37 = *v11;
        if (swift_getEnumCaseMultiPayload() != 5)
        {
LABEL_35:

          goto LABEL_37;
        }

        v38 = v29;
        v34 = sub_1D894DD7C(v37, *v30);

LABEL_42:
        sub_1D89128B8(v38, type metadata accessor for BundleClassification.ClassificationType);
        return v34 & 1;
      }

      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_37;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_37;
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_37;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 9)
    {
      goto LABEL_37;
    }

    v59 = v29;
LABEL_32:
    sub_1D89128B8(v59, type metadata accessor for BundleClassification.ClassificationType);
    v34 = 1;
    return v34 & 1;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D8912BA4(v29, v25, type metadata accessor for BundleClassification.ClassificationType);
      v35 = *v25;
      v36 = v25[1];
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_35;
      }

      v38 = v29;
      v61 = v30[1];
      v62 = sub_1D88E4BE8(v35, *v30);

      if (!v62)
      {
        sub_1D89128B8(v29, type metadata accessor for BundleClassification.ClassificationType);
        goto LABEL_38;
      }

      v34 = v36 == v61;
      goto LABEL_42;
    }

    sub_1D8912BA4(v29, v23, type metadata accessor for BundleClassification.ClassificationType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D87A14E4(v23, &qword_1ECA641B0);
      goto LABEL_37;
    }

    v54 = v29;
    v55 = *(v68 + 48);
    v56 = v72;
    sub_1D8912598(v23, v72);
    sub_1D8912598(v30, v56 + v55);
    v57 = *(v70 + 48);
    v58 = v71;
    if (v57(v56, 1, v71) == 1)
    {
      if (v57(v56 + v55, 1, v58) == 1)
      {
        sub_1D87A14E4(v56, &qword_1ECA641B0);
LABEL_49:
        v59 = v54;
        goto LABEL_32;
      }
    }

    else
    {
      v63 = v67;
      sub_1D8912848(v56, v67);
      if (v57(v56 + v55, 1, v58) != 1)
      {
        v64 = v66;
        sub_1D8912918(v56 + v55, v66, type metadata accessor for VisualLookupClassifier.Result);
        v65 = static VisualLookupClassifier.Result.== infix(_:_:)(v63, v64);
        sub_1D89128B8(v64, type metadata accessor for VisualLookupClassifier.Result);
        sub_1D89128B8(v63, type metadata accessor for VisualLookupClassifier.Result);
        sub_1D87A14E4(v56, &qword_1ECA641B0);
        if (v65)
        {
          goto LABEL_49;
        }

LABEL_46:
        sub_1D89128B8(v54, type metadata accessor for BundleClassification.ClassificationType);
        goto LABEL_38;
      }

      sub_1D89128B8(v63, type metadata accessor for VisualLookupClassifier.Result);
    }

    sub_1D87A14E4(v56, &qword_1ECA65700);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D8912BA4(v29, v20, type metadata accessor for BundleClassification.ClassificationType);
    v39 = *v20;
    v40 = v20[2];
    v41 = v20[4];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v42 = v20[5];
      v43 = v20[3];
      v44 = v20[1];
      v45 = v29;
      v47 = *(v30 + 2);
      v46 = *(v30 + 3);
      v48 = *(v30 + 4);
      v49 = *(v30 + 5);
      v82[0] = v39;
      v82[1] = v44;
      v82[2] = v40;
      v82[3] = v43;
      v82[4] = v41;
      v82[5] = v42;
      v76 = *v30;
      v77 = v76;
      v78 = v47;
      v79 = v46;
      v80 = v48;
      v81 = v49;
      v34 = _s22VisualIntelligenceCore18BCSActionContainerV2eeoiySbAC_ACtFZ_0(v82, &v77);

      sub_1D89128B8(v45, type metadata accessor for BundleClassification.ClassificationType);
      return v34 & 1;
    }

    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D8912BA4(v29, v14, type metadata accessor for BundleClassification.ClassificationType);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v51 = v73;
      v50 = v74;
      v52 = v69;
      (*(v73 + 32))(v69, v30, v74);
      v34 = MEMORY[0x1DA71DA70](v14, v52);
      v53 = *(v51 + 8);
      v53(v52, v50);
      v53(v14, v50);
      sub_1D89128B8(v29, type metadata accessor for BundleClassification.ClassificationType);
      return v34 & 1;
    }

    (*(v73 + 8))(v14, v74);
    goto LABEL_37;
  }

  sub_1D8912BA4(v29, v17, type metadata accessor for BundleClassification.ClassificationType);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_37:
    sub_1D87A14E4(v29, &qword_1ECA65708);
LABEL_38:
    v34 = 0;
    return v34 & 1;
  }

  v32 = v29;
  v33 = *v17 ^ *v30;
  sub_1D89128B8(v32, type metadata accessor for BundleClassification.ClassificationType);
  v34 = v33 ^ 1;
  return v34 & 1;
}

uint64_t _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63410);
  v0 = *(type metadata accessor for BundleClassification.ClassificationType(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8B1AB50;
  v4 = (v3 + v2);
  *v4 = MEMORY[0x1E69E7CC0];
  v4[1] = 0xBFF0000000000000;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for VisualLookupClassifier.Result(0);
  (*(*(v5 - 8) + 56))(v4 + 5 * v1, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v6 = v4 + 6 * v1;
  *v6 = xmmword_1D8B190C0;
  *(v6 + 2) = 0xE700000000000000;
  *(v6 + 3) = 0x7974706D65;
  *(v6 + 4) = 0xE500000000000000;
  *(v6 + 5) = 0;
  swift_storeEnumTagMultiPayload();
  *(v4 + 7 * v1) = 0;
  swift_storeEnumTagMultiPayload();
  v7 = &v4[v1];
  *v7 = 0x7974706D65;
  v7[1] = 0xE500000000000000;
  v8 = *MEMORY[0x1E69C9C08];
  v9 = sub_1D8B145A0();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  swift_storeEnumTagMultiPayload();
  *(v4 + 9 * v1) = MEMORY[0x1E69E7CD0];
  swift_storeEnumTagMultiPayload();
  return v3;
}

unint64_t sub_1D891234C()
{
  result = qword_1ECA651C8;
  if (!qword_1ECA651C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA651C8);
  }

  return result;
}

unint64_t sub_1D89123A0()
{
  result = qword_1ECA651D0;
  if (!qword_1ECA651D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA651D0);
  }

  return result;
}

unint64_t sub_1D89123F4()
{
  result = qword_1ECA651D8;
  if (!qword_1ECA651D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA651D8);
  }

  return result;
}

unint64_t sub_1D8912448()
{
  result = qword_1ECA651E8;
  if (!qword_1ECA651E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA651E8);
  }

  return result;
}

unint64_t sub_1D891249C()
{
  result = qword_1ECA651F0;
  if (!qword_1ECA651F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA651F0);
  }

  return result;
}

unint64_t sub_1D89124F0()
{
  result = qword_1ECA651F8;
  if (!qword_1ECA651F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA651F8);
  }

  return result;
}

unint64_t sub_1D8912544()
{
  result = qword_1ECA65200;
  if (!qword_1ECA65200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65200);
  }

  return result;
}

uint64_t sub_1D8912598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8912608()
{
  result = qword_1ECA65208;
  if (!qword_1ECA65208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65208);
  }

  return result;
}

uint64_t sub_1D891265C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D89126A4()
{
  result = qword_1ECA65218;
  if (!qword_1ECA65218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65218);
  }

  return result;
}

unint64_t sub_1D89126F8()
{
  result = qword_1ECA65220;
  if (!qword_1ECA65220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65220);
  }

  return result;
}

unint64_t sub_1D891274C()
{
  result = qword_1ECA65228;
  if (!qword_1ECA65228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65228);
  }

  return result;
}

unint64_t sub_1D89127A0()
{
  result = qword_1ECA65230;
  if (!qword_1ECA65230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65230);
  }

  return result;
}

unint64_t sub_1D89127F4()
{
  result = qword_1ECA65238;
  if (!qword_1ECA65238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65238);
  }

  return result;
}

uint64_t sub_1D8912848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D89128B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8912918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8912980()
{
  result = qword_1ECA652A0;
  if (!qword_1ECA652A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA652A0);
  }

  return result;
}

unint64_t sub_1D89129D4()
{
  result = qword_1ECA652A8;
  if (!qword_1ECA652A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA652A8);
  }

  return result;
}

uint64_t sub_1D8912A48(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (result != 2)
  {
    return sub_1D8912A68(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1D8912A68(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return sub_1D8912A90(result, a2, a3);
  }
}

uint64_t sub_1D8912A90(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1D8912AA8()
{
  result = qword_1ECA652C0;
  if (!qword_1ECA652C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA652C0);
  }

  return result;
}

unint64_t sub_1D8912AFC()
{
  result = qword_1ECA652D0;
  if (!qword_1ECA652D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA652D0);
  }

  return result;
}

unint64_t sub_1D8912B50()
{
  result = qword_1ECA652E8;
  if (!qword_1ECA652E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA652E8);
  }

  return result;
}

uint64_t sub_1D8912BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8912C0C()
{
  result = qword_1ECA65330;
  if (!qword_1ECA65330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65330);
  }

  return result;
}

unint64_t sub_1D8912C60()
{
  result = qword_1ECA65338;
  if (!qword_1ECA65338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65338);
  }

  return result;
}

unint64_t sub_1D8912CB4()
{
  result = qword_1ECA65340;
  if (!qword_1ECA65340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65340);
  }

  return result;
}

unint64_t sub_1D8912D08()
{
  result = qword_1ECA65348;
  if (!qword_1ECA65348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65348);
  }

  return result;
}

unint64_t sub_1D8912D5C()
{
  result = qword_1ECA65350;
  if (!qword_1ECA65350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65350);
  }

  return result;
}

unint64_t sub_1D8912DB0()
{
  result = qword_1ECA65358;
  if (!qword_1ECA65358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65358);
  }

  return result;
}

unint64_t sub_1D8912E04()
{
  result = qword_1ECA65360;
  if (!qword_1ECA65360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65360);
  }

  return result;
}

unint64_t sub_1D8912E58()
{
  result = qword_1ECA65368;
  if (!qword_1ECA65368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65368);
  }

  return result;
}

unint64_t sub_1D8912EAC()
{
  result = qword_1ECA653D8;
  if (!qword_1ECA653D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA653D8);
  }

  return result;
}

unint64_t sub_1D8912F00()
{
  result = qword_1ECA653E0;
  if (!qword_1ECA653E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA653E0);
  }

  return result;
}

unint64_t sub_1D8912F54()
{
  result = qword_1ECA653E8;
  if (!qword_1ECA653E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA653E8);
  }

  return result;
}

unint64_t sub_1D8912FA8()
{
  result = qword_1ECA653F0;
  if (!qword_1ECA653F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA653F0);
  }

  return result;
}

unint64_t sub_1D8912FFC()
{
  result = qword_1ECA653F8;
  if (!qword_1ECA653F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA653F8);
  }

  return result;
}

unint64_t sub_1D8913050()
{
  result = qword_1ECA65400;
  if (!qword_1ECA65400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65400);
  }

  return result;
}

unint64_t sub_1D89130A4()
{
  result = qword_1ECA65430;
  if (!qword_1ECA65430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65430);
  }

  return result;
}

unint64_t sub_1D89130F8()
{
  result = qword_1ECA65440;
  if (!qword_1ECA65440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65440);
  }

  return result;
}

unint64_t sub_1D891314C()
{
  result = qword_1ECA65448;
  if (!qword_1ECA65448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65448);
  }

  return result;
}

unint64_t sub_1D89131A0()
{
  result = qword_1ECA65458;
  if (!qword_1ECA65458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65458);
  }

  return result;
}

unint64_t sub_1D89131F4()
{
  result = qword_1ECA65468;
  if (!qword_1ECA65468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65468);
  }

  return result;
}

uint64_t sub_1D8913248(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECA64D60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D89132B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65478);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D89133B8()
{
  result = qword_1ECA654A8;
  if (!qword_1ECA654A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654A8);
  }

  return result;
}

unint64_t sub_1D8913410()
{
  result = qword_1ECA654B0;
  if (!qword_1ECA654B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654B0);
  }

  return result;
}

unint64_t sub_1D8913468()
{
  result = qword_1ECA654B8;
  if (!qword_1ECA654B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654B8);
  }

  return result;
}

unint64_t sub_1D89134C0()
{
  result = qword_1ECA654C0;
  if (!qword_1ECA654C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654C0);
  }

  return result;
}

void sub_1D891353C()
{
  type metadata accessor for BundleClassification.ClassificationType(319);
  if (v0 <= 0x3F)
  {
    sub_1D89135C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D89135C8()
{
  if (!qword_1EE0E46C8)
  {
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E46C8);
    }
  }
}

void sub_1D8913618()
{
  sub_1D89136BC();
  if (v0 <= 0x3F)
  {
    sub_1D8913734();
    if (v1 <= 0x3F)
    {
      sub_1D8B145A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D89136BC()
{
  if (!qword_1EE0E3960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA639D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0E3960);
    }
  }
}

void sub_1D8913734()
{
  if (!qword_1EE0E95A8[0])
  {
    type metadata accessor for VisualLookupClassifier.Result(255);
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0E95A8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore20BundleClassificationV14BlockingReasonO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore32BundleClassificationRuntimeErrorV0G4TypeO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D89137D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D8913828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D8913884(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 17))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D89138D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 16) = 0;
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1D8913938(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t sub_1D8913988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D8864FBC;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1D8913AF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D8913B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BundleClassification.BlockingReason.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BundleClassification.BlockingReason.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AskAcmeRequirement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AskAcmeRequirement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8913FF8()
{
  result = qword_1ECA654C8;
  if (!qword_1ECA654C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654C8);
  }

  return result;
}

unint64_t sub_1D8914050()
{
  result = qword_1ECA654D0;
  if (!qword_1ECA654D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654D0);
  }

  return result;
}

unint64_t sub_1D89140A8()
{
  result = qword_1ECA654D8;
  if (!qword_1ECA654D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654D8);
  }

  return result;
}

unint64_t sub_1D8914100()
{
  result = qword_1ECA654E0;
  if (!qword_1ECA654E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654E0);
  }

  return result;
}

unint64_t sub_1D8914158()
{
  result = qword_1ECA654E8;
  if (!qword_1ECA654E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654E8);
  }

  return result;
}

unint64_t sub_1D89141B0()
{
  result = qword_1ECA654F0;
  if (!qword_1ECA654F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654F0);
  }

  return result;
}

unint64_t sub_1D8914208()
{
  result = qword_1ECA654F8;
  if (!qword_1ECA654F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654F8);
  }

  return result;
}

unint64_t sub_1D8914260()
{
  result = qword_1ECA65500;
  if (!qword_1ECA65500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65500);
  }

  return result;
}

unint64_t sub_1D89142B8()
{
  result = qword_1ECA65508;
  if (!qword_1ECA65508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65508);
  }

  return result;
}

unint64_t sub_1D8914310()
{
  result = qword_1ECA65510;
  if (!qword_1ECA65510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65510);
  }

  return result;
}

unint64_t sub_1D8914368()
{
  result = qword_1ECA65518;
  if (!qword_1ECA65518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65518);
  }

  return result;
}

unint64_t sub_1D89143C0()
{
  result = qword_1ECA65520;
  if (!qword_1ECA65520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65520);
  }

  return result;
}

unint64_t sub_1D8914418()
{
  result = qword_1ECA65528;
  if (!qword_1ECA65528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65528);
  }

  return result;
}

unint64_t sub_1D8914470()
{
  result = qword_1ECA65530;
  if (!qword_1ECA65530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65530);
  }

  return result;
}

unint64_t sub_1D89144C8()
{
  result = qword_1ECA65538;
  if (!qword_1ECA65538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65538);
  }

  return result;
}

unint64_t sub_1D8914520()
{
  result = qword_1ECA65540;
  if (!qword_1ECA65540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65540);
  }

  return result;
}

unint64_t sub_1D8914578()
{
  result = qword_1ECA65548;
  if (!qword_1ECA65548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65548);
  }

  return result;
}

unint64_t sub_1D89145D0()
{
  result = qword_1ECA65550;
  if (!qword_1ECA65550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65550);
  }

  return result;
}

unint64_t sub_1D8914628()
{
  result = qword_1ECA65558;
  if (!qword_1ECA65558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65558);
  }

  return result;
}

unint64_t sub_1D8914680()
{
  result = qword_1ECA65560;
  if (!qword_1ECA65560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65560);
  }

  return result;
}

unint64_t sub_1D89146D8()
{
  result = qword_1ECA65568;
  if (!qword_1ECA65568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65568);
  }

  return result;
}

unint64_t sub_1D8914730()
{
  result = qword_1ECA65570;
  if (!qword_1ECA65570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65570);
  }

  return result;
}

unint64_t sub_1D8914788()
{
  result = qword_1ECA65578;
  if (!qword_1ECA65578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65578);
  }

  return result;
}

unint64_t sub_1D89147E0()
{
  result = qword_1ECA65580;
  if (!qword_1ECA65580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65580);
  }

  return result;
}

unint64_t sub_1D8914838()
{
  result = qword_1ECA65588;
  if (!qword_1ECA65588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65588);
  }

  return result;
}

unint64_t sub_1D8914890()
{
  result = qword_1ECA65590;
  if (!qword_1ECA65590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65590);
  }

  return result;
}

unint64_t sub_1D89148E8()
{
  result = qword_1ECA65598;
  if (!qword_1ECA65598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65598);
  }

  return result;
}

unint64_t sub_1D8914940()
{
  result = qword_1ECA655A0;
  if (!qword_1ECA655A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655A0);
  }

  return result;
}

unint64_t sub_1D8914998()
{
  result = qword_1ECA655A8;
  if (!qword_1ECA655A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655A8);
  }

  return result;
}

unint64_t sub_1D89149F0()
{
  result = qword_1ECA655B0;
  if (!qword_1ECA655B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655B0);
  }

  return result;
}

unint64_t sub_1D8914A48()
{
  result = qword_1ECA655B8;
  if (!qword_1ECA655B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655B8);
  }

  return result;
}

unint64_t sub_1D8914AA0()
{
  result = qword_1ECA655C0;
  if (!qword_1ECA655C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655C0);
  }

  return result;
}

unint64_t sub_1D8914AF8()
{
  result = qword_1ECA655C8;
  if (!qword_1ECA655C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655C8);
  }

  return result;
}

unint64_t sub_1D8914B50()
{
  result = qword_1ECA655D0;
  if (!qword_1ECA655D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655D0);
  }

  return result;
}

unint64_t sub_1D8914BA8()
{
  result = qword_1ECA655D8;
  if (!qword_1ECA655D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655D8);
  }

  return result;
}

unint64_t sub_1D8914C00()
{
  result = qword_1ECA655E0;
  if (!qword_1ECA655E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655E0);
  }

  return result;
}

unint64_t sub_1D8914C58()
{
  result = qword_1ECA655E8;
  if (!qword_1ECA655E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655E8);
  }

  return result;
}

unint64_t sub_1D8914CB0()
{
  result = qword_1ECA655F0;
  if (!qword_1ECA655F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655F0);
  }

  return result;
}

unint64_t sub_1D8914D08()
{
  result = qword_1ECA655F8;
  if (!qword_1ECA655F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655F8);
  }

  return result;
}

unint64_t sub_1D8914D60()
{
  result = qword_1ECA65600;
  if (!qword_1ECA65600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65600);
  }

  return result;
}

unint64_t sub_1D8914DB8()
{
  result = qword_1ECA65608;
  if (!qword_1ECA65608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65608);
  }

  return result;
}

unint64_t sub_1D8914E10()
{
  result = qword_1ECA65610;
  if (!qword_1ECA65610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65610);
  }

  return result;
}

unint64_t sub_1D8914E68()
{
  result = qword_1ECA65618;
  if (!qword_1ECA65618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65618);
  }

  return result;
}

unint64_t sub_1D8914EC0()
{
  result = qword_1ECA65620;
  if (!qword_1ECA65620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65620);
  }

  return result;
}

unint64_t sub_1D8914F18()
{
  result = qword_1ECA65628;
  if (!qword_1ECA65628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65628);
  }

  return result;
}

unint64_t sub_1D8914F70()
{
  result = qword_1ECA65630;
  if (!qword_1ECA65630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65630);
  }

  return result;
}

unint64_t sub_1D8914FC8()
{
  result = qword_1ECA65638;
  if (!qword_1ECA65638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65638);
  }

  return result;
}

unint64_t sub_1D8915020()
{
  result = qword_1ECA65640;
  if (!qword_1ECA65640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65640);
  }

  return result;
}

unint64_t sub_1D8915078()
{
  result = qword_1ECA65648;
  if (!qword_1ECA65648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65648);
  }

  return result;
}

unint64_t sub_1D89150D0()
{
  result = qword_1ECA65650;
  if (!qword_1ECA65650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65650);
  }

  return result;
}

unint64_t sub_1D8915128()
{
  result = qword_1ECA65658;
  if (!qword_1ECA65658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65658);
  }

  return result;
}

unint64_t sub_1D8915180()
{
  result = qword_1ECA65660;
  if (!qword_1ECA65660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65660);
  }

  return result;
}

unint64_t sub_1D89151D8()
{
  result = qword_1ECA65668;
  if (!qword_1ECA65668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65668);
  }

  return result;
}

unint64_t sub_1D8915230()
{
  result = qword_1ECA65670;
  if (!qword_1ECA65670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65670);
  }

  return result;
}

unint64_t sub_1D8915288()
{
  result = qword_1ECA65678;
  if (!qword_1ECA65678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65678);
  }

  return result;
}

unint64_t sub_1D89152E0()
{
  result = qword_1ECA65680;
  if (!qword_1ECA65680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65680);
  }

  return result;
}

unint64_t sub_1D8915338()
{
  result = qword_1ECA65688;
  if (!qword_1ECA65688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65688);
  }

  return result;
}

unint64_t sub_1D8915390()
{
  result = qword_1ECA65690;
  if (!qword_1ECA65690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65690);
  }

  return result;
}

unint64_t sub_1D89153E8()
{
  result = qword_1ECA65698;
  if (!qword_1ECA65698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65698);
  }

  return result;
}

unint64_t sub_1D8915440()
{
  result = qword_1ECA656A0;
  if (!qword_1ECA656A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656A0);
  }

  return result;
}

unint64_t sub_1D8915498()
{
  result = qword_1ECA656A8;
  if (!qword_1ECA656A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656A8);
  }

  return result;
}

unint64_t sub_1D89154F0()
{
  result = qword_1ECA656B0;
  if (!qword_1ECA656B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656B0);
  }

  return result;
}

unint64_t sub_1D8915548()
{
  result = qword_1ECA656B8;
  if (!qword_1ECA656B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656B8);
  }

  return result;
}

unint64_t sub_1D89155A0()
{
  result = qword_1ECA656C0;
  if (!qword_1ECA656C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656C0);
  }

  return result;
}

unint64_t sub_1D89155F8()
{
  result = qword_1ECA656C8;
  if (!qword_1ECA656C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656C8);
  }

  return result;
}

unint64_t sub_1D8915650()
{
  result = qword_1ECA656D0;
  if (!qword_1ECA656D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656D0);
  }

  return result;
}

unint64_t sub_1D89156A8()
{
  result = qword_1ECA656D8;
  if (!qword_1ECA656D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656D8);
  }

  return result;
}

unint64_t sub_1D8915700()
{
  result = qword_1ECA656E0;
  if (!qword_1ECA656E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656E0);
  }

  return result;
}

unint64_t sub_1D8915758()
{
  result = qword_1ECA656E8;
  if (!qword_1ECA656E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656E8);
  }

  return result;
}

unint64_t sub_1D89157B0()
{
  result = qword_1ECA656F0;
  if (!qword_1ECA656F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656F0);
  }

  return result;
}

unint64_t sub_1D8915808()
{
  result = qword_1ECA656F8;
  if (!qword_1ECA656F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656F8);
  }

  return result;
}

uint64_t sub_1D891585C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x757365527370616DLL && a2 == 0xEB0000000073746CLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F6C4164616572 && a2 == 0xE900000000000064 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616C736E617274 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7A6972616D6D7573 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x796669746E656469 && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646F63726162 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xEF746E65746E6F43 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6974634174786574 && a2 == 0xEB00000000736E6FLL)
  {

    return 9;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D8915B9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

uint64_t sub_1D8915CC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001D8B441D0 == a2;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D61657274737075 && a2 == 0xEC0000006B726F57 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D8B441F0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B44210 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696D694C65746172 && a2 == 0xEB00000000646574 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69446D6574737973 && a2 == 0xEE0064656C626173 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B44230 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D8915F1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4264656B636F6C62 && a2 == 0xE900000000000079;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657269707865 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737365636F7270 && a2 == 0xEF726F727245676ELL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69724374656D6E75 && a2 == 0xED00006169726574)
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

uint64_t sub_1D8916098(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001D8B44250 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D89161C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B44270 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x526572756C696166 && a2 == 0xEE00736E6F736165 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B44290 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D8B442B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D8916384(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62 == 1)
  {
    return sub_1D88E1004(a2, a3, a4);
  }

  if (!(a4 >> 62))
  {
    return sub_1D88E102C(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D89163AC(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((result & 0xFE) != 2 && result != 4)
  {
    return sub_1D88E1004(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1D89163D8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a1;
  v38 = a2;
  v6 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProcessorState(0);
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1D87F439C(0, v10, 0);
    v42 = v43;
    v40 = a3 + 64;
    v12 = sub_1D8B16580();
    v13 = 0;
    v32 = a3 + 72;
    v33 = v10;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a3 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v40 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v17 = *(a3 + 36);
      v18 = a3;
      v19 = *(a3 + 48);
      a3 = v35;
      sub_1D8917FF0(v19 + *(v36 + 72) * v12, v35, type metadata accessor for CVProcessorTaskDescriptor);
      v37(a3);
      v39 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      sub_1D89388D8(a3, type metadata accessor for CVProcessorTaskDescriptor);
      v20 = v42;
      v43 = v42;
      v22 = *(v42 + 16);
      v21 = *(v42 + 24);
      a3 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_1D87F439C(v21 > 1, v22 + 1, 1);
        v20 = v43;
      }

      *(v20 + 16) = a3;
      v23 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v42 = v20;
      sub_1D8918058(v41, v20 + v23 + *(v34 + 72) * v22, type metadata accessor for ProcessorState);
      v14 = 1 << *(v18 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v40 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v18;
      if (v17 != *(v18 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v33;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v15 = v33;
        v28 = (v32 + 8 * v16);
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1D87977B4(v12, v17, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        sub_1D87977B4(v12, v17, 0);
      }

LABEL_4:
      ++v13;
      v12 = v14;
      v4 = v39;
      if (v13 == v15)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_1D89388D8(a3, type metadata accessor for CVProcessorTaskDescriptor);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D89167A8(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1D87F470C(0, v4, 0);
  v5 = v16;
  v8 = *(type metadata accessor for TextDetectorResult(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v15, v9);
    if (v3)
    {
      break;
    }

    v11 = v15;
    v16 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D87F470C((v12 > 1), v13 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8916908(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1D87F474C(0, v4, 0);
  v5 = v24;
  v7 = *(type metadata accessor for TextDetectorResult(0) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v18 = *(v7 + 72);
  while (1)
  {
    a1(&v20, v8);
    if (v3)
    {
      break;
    }

    v10 = v20;
    v9 = v21;
    v11 = v22;
    v12 = v23;
    v24 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      v16 = v21;
      sub_1D87F474C((v13 > 1), v14 + 1, 1);
      v9 = v16;
      v5 = v24;
    }

    *(v5 + 16) = v14 + 1;
    v15 = (v5 + 32 * v14);
    v15[4] = v10;
    v15[5] = v9;
    v15[6] = v11;
    v15[7] = v12;
    v8 += v18;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8916A7C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64048);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D87F4840(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for StreamingBarcodeDetectorResult(0) - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D87F4840(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1D881F6FC(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &qword_1ECA64048);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8916C7C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a1;
  v35 = a2;
  v6 = type metadata accessor for BundleClassification.ClassificationType(0);
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D87F498C(0, v9, 0);
    v38 = a3 + 64;
    v39 = v41;
    v11 = sub_1D8B16580();
    v12 = 0;
    v30 = a3 + 72;
    v31 = v9;
    v32 = v8;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a3 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v38 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      v36 = v12;
      v16 = *(a3 + 36);
      v17 = a3;
      sub_1D8917FF0(*(a3 + 48) + *(v33 + 72) * v11, v8, type metadata accessor for BundleClassification.ClassificationType);
      v34(&v40, v8);
      v37 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      sub_1D89388D8(v8, type metadata accessor for BundleClassification.ClassificationType);
      v18 = v39;
      v19 = v40;
      v41 = v39;
      v21 = *(v39 + 16);
      v20 = *(v39 + 24);
      v8 = (v21 + 1);
      if (v21 >= v20 >> 1)
      {
        sub_1D87F498C((v20 > 1), v21 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v8;
      *(v18 + 8 * v21 + 32) = v19;
      v13 = 1 << *(v17 + 32);
      if (v11 >= v13)
      {
        goto LABEL_24;
      }

      v22 = *(v38 + 8 * v15);
      if ((v22 & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v17;
      v39 = v18;
      if (v16 != *(v17 + 36))
      {
        goto LABEL_26;
      }

      v23 = v22 & (-2 << (v11 & 0x3F));
      if (v23)
      {
        v13 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v31;
        v8 = v32;
      }

      else
      {
        v24 = v15 << 6;
        v25 = v15 + 1;
        v14 = v31;
        v26 = (v30 + 8 * v15);
        v8 = v32;
        while (v25 < (v13 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_1D87977B4(v11, v16, 0);
            v13 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_1D87977B4(v11, v16, 0);
      }

LABEL_4:
      v4 = v37;
      v12 = v36 + 1;
      v11 = v13;
      if (v36 + 1 == v14)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_1D89388D8(v8, type metadata accessor for BundleClassification.ClassificationType);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8916FAC(void (*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D87F4B1C(0, v4, 0);
  v5 = v21;
  v8 = (a3 + 48);
  while (1)
  {
    v9 = *v8;
    v16[0] = *(v8 - 16);
    v17 = *(v8 - 1);
    v18 = v9;
    a1(&v19, v16);
    if (v3)
    {
      break;
    }

    v10 = v19;
    v11 = v20;
    v21 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D87F4B1C((v12 > 1), v13 + 1, 1);
      v5 = v21;
    }

    v8 += 3;
    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8917148(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v26 = a7;
  v27 = a1;
  v10 = v7;
  v28 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - v14;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    return v17;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v24 = a5;
  a5(0, v16, 0);
  v17 = v29;
  v18 = *(a6(0) - 8);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v25 = *(v18 + 72);
  while (1)
  {
    v27(v19);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v29 = v17;
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v21 >= v20 >> 1)
    {
      v24(v20 > 1, v21 + 1, 1);
      v17 = v29;
    }

    *(v17 + 16) = v21 + 1;
    sub_1D8918058(v15, v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v26);
    v19 += v25;
    if (!--v16)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8917354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionRequest(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - v13;
  v15 = 0;
  v23 = a2;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D89388D8(v11, type metadata accessor for DetectionRequest))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D8917FF0(*(a1 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v14, type metadata accessor for DetectionRequest);
    sub_1D8918058(v14, v8, type metadata accessor for DetectionRequest);
    sub_1D87FB834(v11, v8);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 56 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8917554(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1D87FC140(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CVBundle.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v2, v9, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D8B13240();
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    sub_1D8918058(v9, v6, type metadata accessor for CVTrackSnapshot);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 16))(a1, v6, v12);
    return sub_1D89388D8(v6, type metadata accessor for CVTrackSnapshot);
  }
}

void *CVBundle.classifications.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v59 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v52 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v58 = &v52 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v65 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - v11;
  v13 = type metadata accessor for BundleClassification(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v56 = &v52 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v52 - v19;
  v20 = type metadata accessor for RefinementState(0);
  v63 = *(v20 - 8);
  v64 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v52 - v24;
  v25 = *(v0 + *(type metadata accessor for CVBundle(0) + 28));
  v26 = v6;
  v27 = v25 + 64;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v25 + 64);
  v31 = (v28 + 63) >> 6;
  v61 = (v14 + 56);
  v54 = v14;
  v68 = v25;
  v69 = (v14 + 48);
  result = swift_bridgeObjectRetain_n();
  v33 = 0;
  v60 = MEMORY[0x1E69E7CC0];
  v66 = v6;
  v67 = v13;
LABEL_4:
  v34 = v33;
  if (!v30)
  {
    goto LABEL_6;
  }

  do
  {
    v33 = v34;
LABEL_9:
    v35 = v62;
    sub_1D8917FF0(*(v68 + 56) + *(v63 + 72) * (__clz(__rbit64(v30)) | (v33 << 6)), v62, type metadata accessor for RefinementState);
    sub_1D8918058(v35, v23, type metadata accessor for RefinementState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D89388D8(v23, type metadata accessor for RefinementState);
        v37 = v65;
        v13 = v67;
        (*v61)(v65, 1, 1, v67);
        goto LABEL_25;
      }

      v42 = v26;
      sub_1D881F6FC(v23, v26, &qword_1ECA641B8);
      v43 = v67;
      if ((*v69)(v26, 1, v67) == 1)
      {
        sub_1D87A14E4(v26, &qword_1ECA641B8);
      }

      else
      {
        v44 = v56;
        sub_1D8918058(v42, v56, type metadata accessor for BundleClassification);
        if (*(v44 + *(v43 + 20)) == 2)
        {
          v45 = v44;
          v46 = v58;
          sub_1D8918058(v45, v58, type metadata accessor for BundleClassification);
          (*v61)(v46, 0, 1, v43);
          v37 = v65;
LABEL_24:
          sub_1D881F6FC(v46, v37, &qword_1ECA641B8);
          v13 = v67;
          goto LABEL_25;
        }

        sub_1D89388D8(v44, type metadata accessor for BundleClassification);
      }

      v46 = v58;
      v37 = v65;
      (*v61)(v58, 1, 1, v67);
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v38 = v57;
      sub_1D8918058(v23, v57, type metadata accessor for BundleClassification);
      if (*(v38 + *(v13 + 20)) == 2)
      {
        v39 = v38;
        v40 = v59;
        sub_1D8918058(v39, v59, type metadata accessor for BundleClassification);
        v41 = 0;
      }

      else
      {
        sub_1D89388D8(v38, type metadata accessor for BundleClassification);
        v41 = 1;
        v40 = v59;
      }

      v37 = v65;
      v13 = v67;
      (*v61)(v40, v41, 1, v67);
      sub_1D881F6FC(v40, v37, &qword_1ECA641B8);
    }

    else
    {
      v37 = v65;
      (*v61)(v65, 1, 1, v13);
    }

LABEL_25:
    v30 &= v30 - 1;
    sub_1D881F6FC(v37, v12, &qword_1ECA641B8);
    if ((*v69)(v12, 1, v13) != 1)
    {
      sub_1D8918058(v12, v55, type metadata accessor for BundleClassification);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1D87C7D74(0, v60[2] + 1, 1, v60);
      }

      v26 = v66;
      v48 = v60[2];
      v47 = v60[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v53 = v48 + 1;
        v51 = sub_1D87C7D74(v47 > 1, v48 + 1, 1, v60);
        v49 = v53;
        v60 = v51;
      }

      v50 = v60;
      v60[2] = v49;
      result = sub_1D8918058(v55, v50 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v48, type metadata accessor for BundleClassification);
      goto LABEL_4;
    }

    result = sub_1D87A14E4(v12, &qword_1ECA641B8);
    v34 = v33;
    v26 = v66;
  }

  while (v30);
LABEL_6:
  while (1)
  {
    v33 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v33 >= v31)
    {

      return v60;
    }

    v30 = *(v27 + 8 * v33);
    ++v34;
    if (v30)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8917FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8918058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CVBundle.debugLabel.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v1, v7, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    MEMORY[0x1DA71EFA0](0x2870756F7267, 0xE600000000000000);
    sub_1D8B168A0();
    MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
    v8 = v13[0];
    v9 = sub_1D8B13240();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  else
  {
    sub_1D8918058(v7, v4, type metadata accessor for CVTrackSnapshot);
    v16 = *&v4[*(v2 + 24)];
    CVDetection.detection.getter(v13);
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = (*(v11 + 72))(v10, v11);
    sub_1D89388D8(v4, type metadata accessor for CVTrackSnapshot);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v8;
}

uint64_t CVBundle.latestDetection.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVBundle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v2, v13, type metadata accessor for CVBundle.BundleType);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    sub_1D8918058(v13, v10, type metadata accessor for CVTrackSnapshot);
    v18 = *&v10[*(v8 + 20)];

    result = sub_1D89388D8(v10, type metadata accessor for CVTrackSnapshot);
    goto LABEL_5;
  }

  v15 = *(v2 + *(v4 + 20));
  if (*(v15 + 16))
  {
    v16 = sub_1D8917FF0(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7, type metadata accessor for CVBundle);
    CVBundle.latestDetection.getter(&v20, v16);
    sub_1D89388D8(v7, type metadata accessor for CVBundle);
    v17 = sub_1D8B13240();
    result = (*(*(v17 - 8) + 8))(v13, v17);
    v18 = v20;
LABEL_5:
    *a1 = v18;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t CVBundle.sanitizeForJSON()@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v56 = type metadata accessor for CVTrackSnapshot(0);
  v2 = MEMORY[0x1EEE9AC00](v56);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v50 - v4;
  v62 = type metadata accessor for CVBundle.BundleType(0);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - v7;
  v9 = type metadata accessor for CVBundle(0);
  v61 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v50 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v50 - v18;
  v51 = v1;
  v52 = result;
  v20 = *(v1 + *(result + 20));
  v57 = *(v20 + 16);
  if (!v57)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v32 = v51;
    v33 = *(v51 + *(v52 + 24));
    v34 = *(v33 + 16);
    if (!v34)
    {
      v36 = MEMORY[0x1E69E7CC0];
LABEL_29:
      v48 = v50;
      sub_1D8917FF0(v32, v50, type metadata accessor for CVBundle.BundleType);
      result = sub_1D893C688(MEMORY[0x1E69E7CC0]);
      v49 = v52;
      *(v48 + *(v52 + 20)) = v22;
      *(v48 + *(v49 + 24)) = v36;
      *(v48 + *(v49 + 28)) = result;
      return result;
    }

    v35 = 0;
    v36 = MEMORY[0x1E69E7CC0];
    v37 = v58;
    while (1)
    {
      if (v35 >= *(v33 + 16))
      {
        goto LABEL_31;
      }

      v38 = v60;
      v39 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v40 = *(v61 + 72);
      sub_1D8917FF0(v33 + v39 + v40 * v35, v60, type metadata accessor for CVBundle);
      sub_1D8917FF0(v38, v37, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v42 = v53;
      sub_1D8918058(v37, v53, type metadata accessor for CVTrackSnapshot);
      v43 = *(v42 + *(v56 + 24));
      sub_1D89388D8(v42, type metadata accessor for CVTrackSnapshot);
      v44 = v43 >> 60;
      v37 = v58;
      if (v44 != 2)
      {
        goto LABEL_23;
      }

      result = sub_1D89388D8(v60, type metadata accessor for CVBundle);
LABEL_18:
      if (v34 == ++v35)
      {
        goto LABEL_29;
      }
    }

    v41 = sub_1D8B13240();
    (*(*(v41 - 8) + 8))(v37, v41);
LABEL_23:
    sub_1D8918058(v60, v59, type metadata accessor for CVBundle);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D87F4074(0, *(v36 + 16) + 1, 1);
      v36 = v63;
    }

    v47 = *(v36 + 16);
    v46 = *(v36 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_1D87F4074(v46 > 1, v47 + 1, 1);
      v36 = v63;
    }

    *(v36 + 16) = v47 + 1;
    result = sub_1D8918058(v59, v36 + v39 + v47 * v40, type metadata accessor for CVBundle);
    v37 = v58;
    goto LABEL_18;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v55 = v16;
  while (v21 < *(v20 + 16))
  {
    v23 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v24 = *(v61 + 72);
    sub_1D8917FF0(v20 + v23 + v24 * v21, v19, type metadata accessor for CVBundle);
    sub_1D8917FF0(v19, v8, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = sub_1D8B13240();
      (*(*(v25 - 8) + 8))(v8, v25);
LABEL_9:
      sub_1D8918058(v19, v16, type metadata accessor for CVBundle);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v22;
      if ((v28 & 1) == 0)
      {
        sub_1D87F4074(0, *(v22 + 16) + 1, 1);
        v22 = v63;
      }

      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D87F4074(v29 > 1, v30 + 1, 1);
        v22 = v63;
      }

      *(v22 + 16) = v30 + 1;
      v31 = v22 + v23 + v30 * v24;
      v16 = v55;
      result = sub_1D8918058(v55, v31, type metadata accessor for CVBundle);
      goto LABEL_4;
    }

    v26 = v54;
    sub_1D8918058(v8, v54, type metadata accessor for CVTrackSnapshot);
    v27 = *(v26 + *(v56 + 24));
    sub_1D89388D8(v26, type metadata accessor for CVTrackSnapshot);
    if (v27 >> 60 != 2)
    {
      goto LABEL_9;
    }

    result = sub_1D89388D8(v19, type metadata accessor for CVBundle);
LABEL_4:
    if (v57 == ++v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t CVBundle.latestEstimate.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVBundle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v2, v13, type metadata accessor for CVBundle.BundleType);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    sub_1D8918058(v13, v10, type metadata accessor for CVTrackSnapshot);
    v18 = *&v10[*(v8 + 24)];

    result = sub_1D89388D8(v10, type metadata accessor for CVTrackSnapshot);
    goto LABEL_5;
  }

  v15 = *(v2 + *(v4 + 20));
  if (*(v15 + 16))
  {
    v16 = sub_1D8917FF0(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7, type metadata accessor for CVBundle);
    CVBundle.latestEstimate.getter(&v20, v16);
    sub_1D89388D8(v7, type metadata accessor for CVBundle);
    v17 = sub_1D8B13240();
    result = (*(*(v17 - 8) + 8))(v13, v17);
    v18 = v20;
LABEL_5:
    *a1 = v18;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8918E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_1D8918EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t CVBundle.corners.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVBundle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v2, v13, type metadata accessor for CVBundle.BundleType);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    sub_1D8918058(v13, v10, type metadata accessor for CVTrackSnapshot);
    v33 = *&v10[*(v8 + 24)];
    CVDetection.detection.getter(&v34);
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(&v34, *&v37.f64[0]);
    (*(*&v28.f64[1] + 64))(&v40, *&v28.f64[0], *&v28.f64[1]);
    sub_1D89388D8(v10, type metadata accessor for CVTrackSnapshot);
    result = __swift_destroy_boxed_opaque_existential_1(&v34);
LABEL_16:
    v29 = *v41;
    *a1 = v40;
    a1[1] = v29;
    v30 = *&v41[32];
    a1[2] = *&v41[16];
    a1[3] = v30;
    return result;
  }

  v15 = *(v2 + *(v4 + 20));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = sub_1D8917FF0(v15 + v17, v7, type metadata accessor for CVBundle);
    CVBundle.corners.getter(&v34, v18);
    sub_1D89388D8(v7, type metadata accessor for CVBundle);
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v22 = v39;
    v23 = v16 - 1;
    v32 = v38;
    v31 = v37;
    if (v23)
    {
      v24 = *(v5 + 72);
      v25 = v15 + v24 + v17;
      do
      {
        v26 = sub_1D8917FF0(v25, v7, type metadata accessor for CVBundle);
        CVBundle.corners.getter(&v34, v26);
        if (v34 < v19)
        {
          v19 = v34;
        }

        if (v35 < v20)
        {
          v20 = v35;
        }

        if (v21 <= v36)
        {
          v21 = v36;
        }

        v32 = vbslq_s8(vcgeq_f64(v38, v32), v38, v32);
        v31 = vbslq_s8(vcgtq_f64(v31, v37), v37, v31);
        if (v22 <= v39)
        {
          v22 = v39;
        }

        sub_1D89388D8(v7, type metadata accessor for CVBundle);
        v25 += v24;
        --v23;
      }

      while (v23);
    }

    *&v40 = v19;
    *(&v40 + 1) = v20;
    *v41 = v21;
    *&v41[8] = v31;
    *&v41[24] = v32;
    *&v41[40] = v22;
    v27 = sub_1D8B13240();
    result = (*(*(v27 - 8) + 8))(v13, v27);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1D8919304()
{
  v0 = type metadata accessor for RefinementState(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  result = sub_1D891DBA0();
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      sub_1D8917FF0(v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10, v6, type metadata accessor for RefinementState);
      sub_1D8918058(v6, v4, type metadata accessor for RefinementState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {

          return 0;
        }
      }

      else if (EnumCaseMultiPayload)
      {

        sub_1D87A14E4(v4, &qword_1ECA641B8);
        return 0;
      }

      ++v10;
      result = sub_1D89388D8(v4, type metadata accessor for RefinementState);
      if (v9 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    return 1;
  }

  return result;
}

void *CVBundle.textDetectorResults.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64820);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v24 - v4;
  v6 = type metadata accessor for TextDetectorResult(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v30 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CVTrackSnapshot(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D891DE68();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v9 + 24);
    v16 = *(v10 + 80);
    v24[1] = v13;
    v17 = v13 + ((v16 + 32) & ~v16);
    v28 = *(v10 + 72);
    v29 = v15;
    v27 = (v7 + 56);
    v18 = MEMORY[0x1E69E7CC0];
    v25 = v7;
    v26 = v6;
    do
    {
      sub_1D8917FF0(v17, v12, type metadata accessor for CVTrackSnapshot);
      if (*&v12[v29] >> 60 == 5)
      {
        v19 = swift_projectBox();
        sub_1D8917FF0(v19, v3, type metadata accessor for TextDetectorResult);
        v20 = 0;
      }

      else
      {
        v20 = 1;
      }

      (*v27)(v3, v20, 1, v6);
      sub_1D881F6FC(v3, v5, &qword_1ECA64820);
      sub_1D89388D8(v12, type metadata accessor for CVTrackSnapshot);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_1D87A14E4(v5, &qword_1ECA64820);
      }

      else
      {
        sub_1D8918058(v5, v30, type metadata accessor for TextDetectorResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D87C7EE0(0, v18[2] + 1, 1, v18);
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          v18 = sub_1D87C7EE0(v21 > 1, v22 + 1, 1, v18);
        }

        v18[2] = v22 + 1;
        sub_1D8918058(v30, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for TextDetectorResult);
        v6 = v26;
      }

      v17 += v28;
      --v14;
    }

    while (v14);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v18;
}

char *CVBundle.textDetections.getter()
{
  v0 = type metadata accessor for CVTrackSnapshot(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D891DE68();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 24);
    v7 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8917FF0(v7, v3, type metadata accessor for CVTrackSnapshot);
      v10 = *&v3[v6];
      if (v10 >> 60 == 5)
      {

        sub_1D89388D8(v3, type metadata accessor for CVTrackSnapshot);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D87C7F54(0, *(v9 + 2) + 1, 1, v9);
        }

        v12 = *(v9 + 2);
        v11 = *(v9 + 3);
        if (v12 >= v11 >> 1)
        {
          v9 = sub_1D87C7F54((v11 > 1), v12 + 1, 1, v9);
        }

        *(v9 + 2) = v12 + 1;
        *&v9[8 * v12 + 32] = v10;
      }

      else
      {
        sub_1D89388D8(v3, type metadata accessor for CVTrackSnapshot);
      }

      v7 += v8;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t sub_1D8919AAC()
{
  v70 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v70);
  v84 = &v67 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for BundleClassification(0);
  v69 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D8B13240();
  v76 = *(v77 - 8);
  v7 = MEMORY[0x1EEE9AC00](v77);
  v74 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v67 - v9;
  v83 = sub_1D8B12F00();
  v10 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AC0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v67 - v19;
  sub_1D8B13290();
  *(&v78 + 1) = sub_1D88914A8();
  sub_1D8B12EC0();
  v89 = xmmword_1D8B254D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AC8);
  sub_1D881CF20(&qword_1ECA65AD0, &qword_1ECA65AC8);
  sub_1D8B12EF0();
  MEMORY[0x1DA71C3B0](v12, v14);
  (*(v10 + 8))(v12, v83);
  v21 = *(v15 + 8);
  v82 = v15 + 8;
  v80 = v21;
  v21(v18, v14);
  v22 = v71;
  CVBundle.corners.getter(&v89);
  Corners.bounds.getter();
  Width = CGRectGetWidth(v92);
  sub_1D881CF20(&qword_1ECA65AD8, &qword_1ECA65AC0);
  sub_1D8B156F0();
  v23 = v89;
  CVBundle.corners.getter(&v89);
  Corners.bounds.getter();
  Width = CGRectGetHeight(v93);
  v81 = v20;
  v24 = v22;
  v25 = v72;
  v83 = v14;
  sub_1D8B156F0();
  v26 = v89;
  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  sub_1D8B16720();

  Width = 23356;
  v88 = 0xE200000000000000;
  sub_1D8917FF0(v24, v25, type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v79 = v23;
  v78 = v26;
  if (EnumCaseMultiPayload == 1)
  {
    v28 = v76;
    v29 = *(v76 + 32);
    v30 = v74;
    v31 = v77;
    v29(v74, v25, v77);
  }

  else
  {
    v32 = v68;
    sub_1D8918058(v25, v68, type metadata accessor for CVTrackSnapshot);
    v28 = v76;
    v30 = v74;
    v31 = v77;
    (*(v76 + 16))(v74, v32, v77);
    sub_1D89388D8(v32, type metadata accessor for CVTrackSnapshot);
    v29 = *(v28 + 32);
  }

  v33 = v75;
  v29(v75, v30, v31);
  sub_1D8B131E0();
  (*(v28 + 8))(v33, v31);
  v34 = sub_1D881BE2C(8);
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = MEMORY[0x1DA71EF10](v34, v36, v38, v40);
  v43 = v42;

  MEMORY[0x1DA71EFA0](v41, v43);

  MEMORY[0x1DA71EFA0](8285, 0xE200000000000000);
  CVBundle.latestEstimate.getter(&v86);
  v85 = v86;
  CVDetection.detection.getter(&v89);
  v44 = v90;
  v45 = v91;
  __swift_project_boxed_opaque_existential_1(&v89, v90);
  v46 = (*(v45 + 72))(v44, v45);
  v48 = v47;

  __swift_destroy_boxed_opaque_existential_1(&v89);
  MEMORY[0x1DA71EFA0](v46, v48);

  MEMORY[0x1DA71EFA0](5972026, 0xE300000000000000);
  v49 = CVBundle.classifications.getter();
  v50 = v49[2];
  if (v50)
  {
    *&v89 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v50, 0);
    v51 = v89;
    v52 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v77 = v49;
    v53 = v49 + v52;
    v54 = *(v69 + 72);
    do
    {
      sub_1D8917FF0(v53, v3, type metadata accessor for BundleClassification);
      sub_1D8917FF0(v3, v84, type metadata accessor for BundleClassification.ClassificationType);
      v55 = swift_getEnumCaseMultiPayload();
      if (v55 > 4)
      {
        if (v55 <= 6)
        {
          if (v55 == 5)
          {
            sub_1D89388D8(v84, type metadata accessor for BundleClassification.ClassificationType);
            v57 = 0x6974634174786574;
            v56 = 0xEB00000000736E6FLL;
          }

          else
          {
            v56 = 0xE500000000000000;
            v57 = 0x746E657665;
          }
        }

        else
        {
          v58 = 0x74616C736E617274;
          if (v55 != 8)
          {
            v58 = 0x7A6972616D6D7573;
          }

          if (v55 == 7)
          {
            v57 = 0x756F6C4164616572;
          }

          else
          {
            v57 = v58;
          }

          if (v55 == 7)
          {
            v56 = 0xE900000000000064;
          }

          else
          {
            v56 = 0xE900000000000065;
          }
        }
      }

      else if (v55 <= 1)
      {
        if (v55)
        {
          sub_1D89388D8(v84, type metadata accessor for BundleClassification.ClassificationType);
          v56 = 0xE800000000000000;
          v57 = 0x796669746E656469;
        }

        else
        {
          sub_1D89388D8(v84, type metadata accessor for BundleClassification.ClassificationType);
          v56 = 0xE400000000000000;
          v57 = 1936744813;
        }
      }

      else if (v55 == 2)
      {
        sub_1D89388D8(v84, type metadata accessor for BundleClassification.ClassificationType);
        v56 = 0xE700000000000000;
        v57 = 0x65646F63726162;
      }

      else if (v55 == 3)
      {
        v56 = 0xE600000000000000;
        v57 = 0x686372616573;
      }

      else
      {
        sub_1D89388D8(v84, type metadata accessor for BundleClassification.ClassificationType);
        v56 = 0xE400000000000000;
        v57 = 1667459446;
      }

      sub_1D89388D8(v3, type metadata accessor for BundleClassification);
      *&v89 = v51;
      v60 = *(v51 + 16);
      v59 = *(v51 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1D87F3F54((v59 > 1), v60 + 1, 1);
        v51 = v89;
      }

      *(v51 + 16) = v60 + 1;
      v61 = v51 + 16 * v60;
      *(v61 + 32) = v57;
      *(v61 + 40) = v56;
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  else
  {

    v51 = MEMORY[0x1E69E7CC0];
  }

  *&v89 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
  v62 = sub_1D8B15810();
  v64 = v63;

  MEMORY[0x1DA71EFA0](v62, v64);

  MEMORY[0x1DA71EFA0](0x203A7728203B5DLL, 0xE700000000000000);
  MEMORY[0x1DA71EFA0](v79, *(&v79 + 1));

  MEMORY[0x1DA71EFA0](0x203A68202CLL, 0xE500000000000000);
  MEMORY[0x1DA71EFA0](v78, *(&v78 + 1));

  MEMORY[0x1DA71EFA0](15913, 0xE200000000000000);
  v65 = Width;
  v80(v81, v83);
  return v65;
}

uint64_t sub_1D891A6E8()
{
  v0 = type metadata accessor for CVTrackSnapshot(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  result = sub_1D891DE68();
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v18 = v4;
    v19 = v0;
    while (v10 < *(v8 + 16))
    {
      v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v13 = *(v1 + 72);
      sub_1D8917FF0(v8 + v12 + v13 * v10, v6, type metadata accessor for CVTrackSnapshot);
      if (*&v6[*(v0 + 20)] >> 60 == 2)
      {
        sub_1D8918058(v6, v4, type metadata accessor for CVTrackSnapshot);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4628(0, *(v11 + 16) + 1, 1);
          v11 = v20;
        }

        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D87F4628(v15 > 1, v16 + 1, 1);
          v11 = v20;
        }

        *(v11 + 16) = v16 + 1;
        v4 = v18;
        result = sub_1D8918058(v18, v11 + v12 + v16 * v13, type metadata accessor for CVTrackSnapshot);
        v0 = v19;
      }

      else
      {
        result = sub_1D89388D8(v6, type metadata accessor for CVTrackSnapshot);
      }

      if (v9 == ++v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v11;
  }

  return result;
}

char *sub_1D891A92C()
{
  v0 = type metadata accessor for CVTrackSnapshot(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D891DE68();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 24);
    v7 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8917FF0(v7, v3, type metadata accessor for CVTrackSnapshot);
      v10 = *&v3[v6];
      if (v10 >> 60 == 9)
      {

        sub_1D89388D8(v3, type metadata accessor for CVTrackSnapshot);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D87C7F54(0, *(v9 + 2) + 1, 1, v9);
        }

        v12 = *(v9 + 2);
        v11 = *(v9 + 3);
        if (v12 >= v11 >> 1)
        {
          v9 = sub_1D87C7F54((v11 > 1), v12 + 1, 1, v9);
        }

        *(v9 + 2) = v12 + 1;
        *&v9[8 * v12 + 32] = v10;
      }

      else
      {
        sub_1D89388D8(v3, type metadata accessor for CVTrackSnapshot);
      }

      v7 += v8;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t CVBundle.groupType.getter@<X0>(BOOL *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v2, v6, type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_1D8B13240();
    result = (*(*(v9 - 8) + 8))(v6, v9);
  }

  else
  {
    result = sub_1D89388D8(v6, type metadata accessor for CVBundle.BundleType);
  }

  *a1 = EnumCaseMultiPayload != 1;
  return result;
}

char sub_1D891AC38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642F0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v27 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v6 = *(v38 - 8);
  v7 = MEMORY[0x1EEE9AC00](v38);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v27 - v10;
  v11 = type metadata accessor for CVTrackSnapshot(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D891DE68();
  v36 = *(v14 + 16);
  if (!v36)
  {

    LOBYTE(v16) = MEMORY[0x1E69E7CC0];
LABEL_21:
    LOBYTE(v14) = v16;
    return v14;
  }

  v15 = 0;
  v34 = *(v11 + 24);
  v35 = v12;
  v33 = v14 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v32 = (v6 + 56);
  v30 = v5;
  v31 = (v6 + 48);
  v16 = MEMORY[0x1E69E7CC0];
  v28 = v9;
  v29 = v6;
  v17 = v14;
  v27 = v14;
  v18 = v38;
  while (v15 < *(v17 + 16))
  {
    v19 = v39;
    sub_1D8917FF0(v33 + *(v35 + 72) * v15, v39, type metadata accessor for CVTrackSnapshot);
    if (*(v19 + v34) >> 60)
    {
      goto LABEL_12;
    }

    v20 = swift_projectBox();
    LOBYTE(v14) = sub_1D87A0E38(v20, v9, &qword_1ECA67750);
    v21 = *&v9[*(v18 + 44)];
    if (!*(v21 + 16))
    {
      goto LABEL_23;
    }

    LOBYTE(v14) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v21 + 32));
    if (v40 == 181)
    {
      goto LABEL_24;
    }

    if (v40 != 160)
    {
      sub_1D87A14E4(v9, &qword_1ECA67750);
LABEL_12:
      v22 = v9;
      (*v32)(v3, 1, 1, v18);
      goto LABEL_13;
    }

    v22 = v9;
    sub_1D881F6FC(v9, v3, &qword_1ECA67750);
    (*v32)(v3, 0, 1, v18);
LABEL_13:
    v23 = v30;
    sub_1D881F6FC(v3, v30, &qword_1ECA642F0);
    sub_1D89388D8(v39, type metadata accessor for CVTrackSnapshot);
    if ((*v31)(v23, 1, v18) == 1)
    {
      LOBYTE(v14) = sub_1D87A14E4(v23, &qword_1ECA642F0);
      v18 = v38;
      v9 = v22;
    }

    else
    {
      sub_1D881F6FC(v23, v37, &qword_1ECA67750);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D87C8C58(0, v16[2] + 1, 1, v16);
      }

      v25 = v16[2];
      v24 = v16[3];
      v18 = v38;
      if (v25 >= v24 >> 1)
      {
        v16 = sub_1D87C8C58(v24 > 1, v25 + 1, 1, v16);
      }

      v16[2] = v25 + 1;
      LOBYTE(v14) = sub_1D881F6FC(v37, v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, &qword_1ECA67750);
      v17 = v27;
      v9 = v28;
    }

    if (v36 == ++v15)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return v14;
}

float CVBundle.score.getter()
{
  v1 = type metadata accessor for CVBundle(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v0, v10, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v0 + *(v1 + 20));
    v12 = *(v11 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v25 = MEMORY[0x1E69E7CC0];
      sub_1D87F47F0(0, v12, 0);
      v13 = v25;
      v14 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v15 = *(v2 + 72);
      do
      {
        v16 = sub_1D8917FF0(v14, v4, type metadata accessor for CVBundle);
        v17 = CVBundle.score.getter(v16);
        sub_1D89388D8(v4, type metadata accessor for CVBundle);
        v25 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D87F47F0((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        *(v13 + 4 * v19 + 32) = v17;
        v14 += v15;
        --v12;
      }

      while (v12);
    }

    v21 = sub_1D8918EC0(v13);

    if ((v21 & 0x100000000) != 0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = *&v21;
    }

    v22 = sub_1D8B13240();
    (*(*(v22 - 8) + 8))(v10, v22);
  }

  else
  {
    sub_1D8918058(v10, v7, type metadata accessor for CVTrackSnapshot);
    v20 = *&v7[*(v5 + 36)];
    sub_1D89388D8(v7, type metadata accessor for CVTrackSnapshot);
  }

  return v20;
}

uint64_t sub_1D891B418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CD0];
  v10 = *(a1 + *(v9 + 28));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_1D8917FF0(v12, v7, type metadata accessor for CVBundle);
      v14 = sub_1D89011A0(v7);
      if (v14)
      {
        v15 = sub_1D89DF91C(v7, a2, v14);

        sub_1D8AA4AE0(v15);
        v16 = sub_1D891B418(v7, a2);
        sub_1D8AA4AE0(v16);
      }

      sub_1D89388D8(v7, type metadata accessor for CVBundle);
      v12 += v13;
      --v11;
    }

    while (v11);
    return v18;
  }

  return result;
}

char *CVBundle.allDetections(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v4 = type metadata accessor for CVTrackSnapshot(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D891DE68();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v4 + 24);
    v11 = *(v5 + 80);
    v20[1] = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    v13 = *(v5 + 72);
    v14 = MEMORY[0x1E69E7CC0];
    v20[2] = a2;
    do
    {
      sub_1D8917FF0(v12, v7, type metadata accessor for CVTrackSnapshot);
      v15 = *&v7[v10];
      v21 = v15;

      v16 = a1(&v21);
      sub_1D89388D8(v7, type metadata accessor for CVTrackSnapshot);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1D87C7F54(0, *(v14 + 2) + 1, 1, v14);
        }

        v18 = *(v14 + 2);
        v17 = *(v14 + 3);
        if (v18 >= v17 >> 1)
        {
          v14 = sub_1D87C7F54((v17 > 1), v18 + 1, 1, v14);
        }

        *(v14 + 2) = v18 + 1;
        *&v14[8 * v18 + 32] = v15;
      }

      else
      {
      }

      v12 += v13;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v14;
}

uint64_t sub_1D891B79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(a1, v9, type metadata accessor for BundleClassification.ClassificationType);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 4)
  {
    if (result <= 1)
    {
      if (result)
      {
        v21 = *(v3 + *(type metadata accessor for BundleManager.Configuration(0) + 44));
        *(a3 + 24) = &type metadata for VisualLookupClassifier;
        *(a3 + 32) = &off_1F5432A50;
        *a3 = v21;
        return sub_1D89388D8(v9, type metadata accessor for BundleClassification.ClassificationType);
      }

      result = sub_1D89388D8(v9, type metadata accessor for BundleClassification.ClassificationType);
      v14 = &type metadata for MapsResultsClassifier;
      v15 = &off_1F542E438;
    }

    else
    {
      if (result != 2)
      {
        if (result == 3)
        {
          v11 = *(v3 + 13);
          *(a3 + 24) = &type metadata for SearchClassifier;
          *(a3 + 32) = &off_1F542FD90;
          *a3 = a2;
          *(a3 + 8) = v11;
        }

        *(a3 + 24) = &type metadata for VerticalContentClassifier;
        *(a3 + 32) = &off_1F54329B8;
        return sub_1D89388D8(v9, type metadata accessor for BundleClassification.ClassificationType);
      }

      result = sub_1D89388D8(v9, type metadata accessor for BundleClassification.ClassificationType);
      v14 = &type metadata for BarcodeClassifier;
      v15 = &off_1F542E630;
    }

    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
    return result;
  }

  if (result > 6)
  {
    if (result == 7)
    {
      v12 = &type metadata for ReadAloudClassifier;
      v13 = &off_1F542FCF0;
    }

    else
    {
      if (result != 8)
      {
        v17 = *(type metadata accessor for BundleManager.Configuration(0) + 32);
        v18 = type metadata accessor for SummarizeClassifier();
        *(a3 + 24) = v18;
        *(a3 + 32) = &off_1F54300C0;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
        v20 = sub_1D8B15340();
        result = (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v3 + v17, v20);
        *(boxed_opaque_existential_1 + *(v18 + 20)) = 1;
        return result;
      }

      v12 = &type metadata for TranslateClassifier;
      v13 = &off_1F5430290;
    }

    *(a3 + 24) = v12;
    *(a3 + 32) = v13;
    *a3 = 1;
    return result;
  }

  if (result == 5)
  {
    sub_1D89388D8(v9, type metadata accessor for BundleClassification.ClassificationType);
    v16 = *(v3 + *(type metadata accessor for BundleManager.Configuration(0) + 36));
    *(a3 + 24) = &type metadata for TextActionsClassifier;
    *(a3 + 32) = &off_1F54300E0;
    *a3 = v16;
  }

  else
  {
    v22 = *(v3 + 12);
    *(a3 + 24) = &type metadata for EventClassifier;
    *(a3 + 32) = &off_1F542D750;
    *a3 = v22;
  }

  return result;
}

uint64_t CVBundle.workState.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for CVBundle(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v1, v12, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v1 + *(v3 + 20));
    v14 = *(v13 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v25 = a1;
      v27 = MEMORY[0x1E69E7CC0];
      sub_1D87F42A4(0, v14, 0);
      v15 = v27;
      v16 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v17 = *(v4 + 72);
      do
      {
        v18 = sub_1D8917FF0(v16, v6, type metadata accessor for CVBundle);
        CVBundle.workState.getter(&v26, v18);
        sub_1D89388D8(v6, type metadata accessor for CVBundle);
        v19 = v26;
        v27 = v15;
        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D87F42A4((v20 > 1), v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        *(v15 + v21 + 32) = v19;
        v16 += v17;
        --v14;
      }

      while (v14);
      a1 = v25;
    }

    sub_1D891FD78(v15, &v28);

    v24 = sub_1D8B13240();
    result = (*(*(v24 - 8) + 8))(v12, v24);
    v22 = v28;
  }

  else
  {
    sub_1D8918058(v12, v9, type metadata accessor for CVTrackSnapshot);
    v22 = v9[*(v7 + 40)];
    result = sub_1D89388D8(v9, type metadata accessor for CVTrackSnapshot);
  }

  *a1 = v22;
  return result;
}

uint64_t sub_1D891BDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1852270963 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D891BE50(uint64_t a1)
{
  v2 = sub_1D893FBBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D891BE8C(uint64_t a1)
{
  v2 = sub_1D893FBBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D891BEC8(uint64_t a1)
{
  v2 = sub_1D893FC10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D891BF04(uint64_t a1)
{
  v2 = sub_1D893FC10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleGroupType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65710);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65718);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D893FBBC();
  sub_1D8B16DD0();
  sub_1D893FC10();
  sub_1D8B16A40();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t BundleGroupType.hashValue.getter()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](0);
  return sub_1D8B16D80();
}

uint64_t BundleGroupType.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65730);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65738);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D893FBBC();
  sub_1D8B16DB0();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1D8B16A20();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if (sub_1D87E3874() || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1D8B16770();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
    *v16 = &type metadata for BundleGroupType;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1D893FC10();
  sub_1D8B16950();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1D891C4D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A20);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v25 - v3;
  v4 = sub_1D8B13240();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A28);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v25 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A30);
  v14 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8943594();
  sub_1D8B16DD0();
  sub_1D8917FF0(v32, v13, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v28;
    v18 = v29;
    (*(v28 + 32))(v34, v13, v29);
    v40 = 1;
    sub_1D89435E8();
    v19 = v33;
    sub_1D8B16A40();
    v39 = 0;
    sub_1D893FD6C(&qword_1ECA637D8, MEMORY[0x1E69695A8]);
    v20 = v31;
    v21 = v35;
    sub_1D8B16AE0();
    if (!v21)
    {
      v38 = 1;
      sub_1D894363C();
      sub_1D8B16AE0();
    }

    (*(v30 + 8))(v36, v20);
    (*(v17 + 8))(v34, v18);
    return (*(v14 + 8))(v16, v19);
  }

  else
  {
    sub_1D8918058(v13, v10, type metadata accessor for CVTrackSnapshot);
    v37 = 0;
    sub_1D8943690();
    v23 = v33;
    sub_1D8B16A40();
    sub_1D893FD6C(&qword_1ECA65A58, type metadata accessor for CVTrackSnapshot);
    v24 = v27;
    sub_1D8B16AE0();
    (*(v26 + 8))(v8, v24);
    sub_1D89388D8(v10, type metadata accessor for CVTrackSnapshot);
    return (*(v14 + 8))(v16, v23);
  }
}

uint64_t sub_1D891CA54(__int128 *a1)
{
  v3 = sub_1D8B13240();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v1, v12, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v12, v3);
    MEMORY[0x1DA720210](1);
    sub_1D893FD6C(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
    sub_1D8B157A0();
    MEMORY[0x1DA720210](0);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_1D8918058(v12, v9, type metadata accessor for CVTrackSnapshot);
    MEMORY[0x1DA720210](0);
    CVTrackSnapshot.hash(into:)(a1);
    return sub_1D89388D8(v9, type metadata accessor for CVTrackSnapshot);
  }
}

uint64_t sub_1D891CCBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A60);
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A68);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A70);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v38 - v7;
  v9 = type metadata accessor for CVBundle.BundleType(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v18 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D8943594();
  v19 = v50;
  sub_1D8B16DB0();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v40 = v15;
  v41 = v12;
  v20 = v6;
  v22 = v46;
  v21 = v47;
  v50 = v9;
  v23 = v49;
  v24 = v45;
  v25 = sub_1D8B16A20();
  v26 = (2 * *(v25 + 16)) | 1;
  v52 = v25;
  v53 = v25 + 32;
  v54 = 0;
  v55 = v26;
  v27 = sub_1D881F7CC();
  if (v27 == 2 || v54 != v55 >> 1)
  {
    v29 = sub_1D8B16770();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
    *v31 = v50;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v48 + 8))(v8, v24);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  if (v27)
  {
    v56 = 1;
    sub_1D89435E8();
    sub_1D8B16950();
    v28 = v48;
    v39 = v17;
    sub_1D8B13240();
    v56 = 0;
    sub_1D893FD6C(&unk_1ECA689C0, MEMORY[0x1E69695A8]);
    sub_1D8B16A10();
    v56 = 1;
    sub_1D89436E4();
    sub_1D8B16A10();
    v38 = 0;
    (*(v44 + 8))(v22, v21);
    (*(v28 + 8))(v8, v24);
    swift_unknownObjectRelease();
    v36 = v41;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v56 = 0;
    sub_1D8943690();
    v33 = v20;
    sub_1D8B16950();
    v34 = v48;
    v39 = v17;
    type metadata accessor for CVTrackSnapshot(0);
    sub_1D893FD6C(&qword_1ECA65A80, type metadata accessor for CVTrackSnapshot);
    v36 = v40;
    v35 = v43;
    sub_1D8B16A10();
    v38 = 0;
    (*(v42 + 8))(v33, v35);
    (*(v34 + 8))(v8, v24);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v23 = v49;
  }

  v37 = v39;
  sub_1D8918058(v36, v39, type metadata accessor for CVBundle.BundleType);
  sub_1D8918058(v37, v23, type metadata accessor for CVBundle.BundleType);
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_1D891D444(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65710);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65718);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D893FBBC();
  sub_1D8B16DD0();
  sub_1D893FC10();
  sub_1D8B16A40();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D891D61C()
{
  if (*v0)
  {
    return 0x70756F7267;
  }

  else
  {
    return 1701080942;
  }
}

uint64_t sub_1D891D64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080942 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D8B16BA0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D8B16BA0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D891D724(uint64_t a1)
{
  v2 = sub_1D8943594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D891D760(uint64_t a1)
{
  v2 = sub_1D8943594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D891D79C()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D891D7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D8B16BA0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D8B16BA0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D891D884(uint64_t a1)
{
  v2 = sub_1D89435E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D891D8C0(uint64_t a1)
{
  v2 = sub_1D89435E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D891D8FC(uint64_t a1)
{
  v2 = sub_1D8943690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D891D938(uint64_t a1)
{
  v2 = sub_1D8943690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVBundle.refinementState(of:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + *(type metadata accessor for CVBundle(0) + 28));
  BundleClassification.ClassificationType.asEmpty.getter(v5);
  if (*(v6 + 16) && (v7 = sub_1D87EF6AC(v5), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for RefinementState(0);
    v12 = *(v11 - 8);
    sub_1D8917FF0(v10 + *(v12 + 72) * v9, a1, type metadata accessor for RefinementState);
    sub_1D89388D8(v5, type metadata accessor for BundleClassification.ClassificationType);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }

  else
  {
    sub_1D89388D8(v5, type metadata accessor for BundleClassification.ClassificationType);
    v14 = type metadata accessor for RefinementState(0);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

size_t sub_1D891DBA0()
{
  v1 = *(v0 + *(type metadata accessor for CVBundle(0) + 28));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D87F3704(*(v1 + 16), 0);
  v4 = *(type metadata accessor for RefinementState(0) - 8);
  v5 = sub_1D8816AD8(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);

  sub_1D87977A0();
  if (v5 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D891DCA0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v19[2] = a1[2];
  v19[3] = v6;
  v19[4] = a1[4];
  v7 = a1[1];
  v19[0] = *a1;
  v19[1] = v7;
  v8 = *(v3 + *(type metadata accessor for CVBundle(0) + 28));
  v16[2] = a2;
  v16[3] = a3;
  v17 = v3;
  v18 = v19;

  v9 = sub_1D8916C7C(sub_1D8943B78, v16, v8);

  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CD0];
    while (v12 < *(v9 + 16))
    {
      v14 = v12 + 1;

      result = sub_1D8917354(v15, v13);
      v13 = result;
      v12 = v14;
      if (v11 == v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
LABEL_7:

    return v13;
  }

  return result;
}

uint64_t sub_1D891DDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X4>, void *a5@<X8>)
{
  sub_1D891B79C(a1, a2, v14);
  v8 = v15;
  v9 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v10 = a4[3];
  v13[2] = a4[2];
  v13[3] = v10;
  v13[4] = a4[4];
  v11 = a4[1];
  v13[0] = *a4;
  v13[1] = v11;
  *a5 = (*(v9 + 24))(a3, v13, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1D891DE68()
{
  v1 = v0;
  v2 = type metadata accessor for CVBundle(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CVTrackSnapshot(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v1, v8, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D89388D8(v8, type metadata accessor for CVBundle.BundleType);
    v13 = *(v1 + *(v2 + 20));
    v14 = *(v13 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v58 = v2;
      v59 = v1;
      v60 = MEMORY[0x1E69E7CC0];
      sub_1D87F4318(0, v14, 0);
      v15 = v60;
      v16 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v17 = *(v3 + 72);
      do
      {
        v18 = sub_1D8917FF0(v16, v5, type metadata accessor for CVBundle);
        v19 = sub_1D891DE68(v18);
        sub_1D89388D8(v5, type metadata accessor for CVBundle);
        v60 = v15;
        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D87F4318((v20 > 1), v21 + 1, 1);
          v15 = v60;
        }

        *(v15 + 16) = v21 + 1;
        *(v15 + 8 * v21 + 32) = v19;
        v16 += v17;
        --v14;
      }

      while (v14);
      v2 = v58;
      v1 = v59;
    }

    v34 = sub_1D893A8A0(v15);

    v35 = *(v1 + *(v2 + 24));
    v36 = *(v35 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      v60 = MEMORY[0x1E69E7CC0];
      sub_1D87F4318(0, v36, 0);
      v37 = v60;
      v38 = v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v39 = *(v3 + 72);
      do
      {
        v40 = sub_1D8917FF0(v38, v5, type metadata accessor for CVBundle);
        v41 = sub_1D891DE68(v40);
        sub_1D89388D8(v5, type metadata accessor for CVBundle);
        v60 = v37;
        v43 = *(v37 + 16);
        v42 = *(v37 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1D87F4318((v42 > 1), v43 + 1, 1);
          v37 = v60;
        }

        *(v37 + 16) = v43 + 1;
        *(v37 + 8 * v43 + 32) = v41;
        v38 += v39;
        --v36;
      }

      while (v36);
    }

    v60 = v34;
    sub_1D88F42F8(v37);
  }

  else
  {
    sub_1D8918058(v8, v12, type metadata accessor for CVTrackSnapshot);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633E0);
    v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D8B1AB90;
    v57 = v12;
    sub_1D8917FF0(v12, v23 + v22, type metadata accessor for CVTrackSnapshot);
    v24 = *(v1 + *(v2 + 20));
    v25 = *(v24 + 16);
    v26 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      v58 = v2;
      v59 = v1;
      v60 = MEMORY[0x1E69E7CC0];
      sub_1D87F4318(0, v25, 0);
      v26 = v60;
      v27 = v3;
      v28 = v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v56 = v27;
      v29 = *(v27 + 72);
      do
      {
        v30 = sub_1D8917FF0(v28, v5, type metadata accessor for CVBundle);
        v31 = sub_1D891DE68(v30);
        sub_1D89388D8(v5, type metadata accessor for CVBundle);
        v60 = v26;
        v33 = *(v26 + 16);
        v32 = *(v26 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D87F4318((v32 > 1), v33 + 1, 1);
          v26 = v60;
        }

        *(v26 + 16) = v33 + 1;
        *(v26 + 8 * v33 + 32) = v31;
        v28 += v29;
        --v25;
      }

      while (v25);
      v3 = v56;
      v2 = v58;
      v1 = v59;
    }

    v60 = v23;
    sub_1D88F42F8(v26);
    v44 = v60;
    v45 = *(v1 + *(v2 + 24));
    v46 = *(v45 + 16);
    v47 = MEMORY[0x1E69E7CC0];
    if (v46)
    {
      v60 = MEMORY[0x1E69E7CC0];
      sub_1D87F4318(0, v46, 0);
      v47 = v60;
      v48 = v45 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v49 = *(v3 + 72);
      do
      {
        v50 = sub_1D8917FF0(v48, v5, type metadata accessor for CVBundle);
        v51 = sub_1D891DE68(v50);
        sub_1D89388D8(v5, type metadata accessor for CVBundle);
        v60 = v47;
        v53 = *(v47 + 16);
        v52 = *(v47 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1D87F4318((v52 > 1), v53 + 1, 1);
          v47 = v60;
        }

        *(v47 + 16) = v53 + 1;
        *(v47 + 8 * v53 + 32) = v51;
        v48 += v49;
        --v46;
      }

      while (v46);
    }

    v60 = v44;
    sub_1D88F42F8(v47);
    sub_1D89388D8(v57, type metadata accessor for CVTrackSnapshot);
  }

  return v60;
}

unint64_t sub_1D891E4BC()
{
  v1 = 1701869940;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000028;
  }

  if (*v0)
  {
    v1 = 0x6E6572646C696863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D891E534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D89403D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D891E55C(uint64_t a1)
{
  v2 = sub_1D893FC64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D891E598(uint64_t a1)
{
  v2 = sub_1D893FC64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVBundle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65740);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D893FC64();
  sub_1D8B16DD0();
  LOBYTE(v13) = 0;
  type metadata accessor for CVBundle.BundleType(0);
  sub_1D893FD6C(&qword_1ECA65750, type metadata accessor for CVBundle.BundleType);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for CVBundle(0);
    v13 = *(v3 + v9[5]);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758);
    sub_1D893FCB8();
    sub_1D8B16AE0();
    v13 = *(v3 + v9[6]);
    v12 = 2;
    sub_1D8B16AE0();
    v13 = *(v3 + v9[7]);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65768);
    sub_1D893FDB4();
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CVBundle.hash(into:)(__int128 *a1)
{
  sub_1D891CA54(a1);
  v3 = type metadata accessor for CVBundle(0);
  sub_1D87CF97C(a1, *(v1 + v3[5]));
  sub_1D87CF97C(a1, *(v1 + v3[6]));
  v4 = *(v1 + v3[7]);

  return sub_1D893983C(a1, v4);
}

uint64_t CVBundle.hashValue.getter()
{
  sub_1D8B16D20();
  sub_1D891CA54(v3);
  v1 = type metadata accessor for CVBundle(0);
  sub_1D87CF97C(v3, *(v0 + v1[5]));
  sub_1D87CF97C(v3, *(v0 + v1[6]));
  sub_1D893983C(v3, *(v0 + v1[7]));
  return sub_1D8B16D80();
}

uint64_t CVBundle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65780);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v17 - v6;
  v8 = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D893FC64();
  v21 = v7;
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v18;
  v12 = v10;
  LOBYTE(v23) = 0;
  sub_1D893FD6C(&qword_1ECA65788, type metadata accessor for CVBundle.BundleType);
  v14 = v19;
  v13 = v20;
  sub_1D8B16A10();
  sub_1D8918058(v14, v12, type metadata accessor for CVBundle.BundleType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758);
  v22 = 1;
  sub_1D893FEA0();
  sub_1D8B16A10();
  *(v12 + v8[5]) = v23;
  v22 = 2;
  v15 = v21;
  sub_1D8B16A10();
  *(v12 + v8[6]) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65768);
  v22 = 3;
  sub_1D893FF54();
  sub_1D8B16A10();
  (*(v11 + 8))(v15, v13);
  *(v12 + v8[7]) = v23;
  sub_1D8917FF0(v12, v17, type metadata accessor for CVBundle);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D89388D8(v12, type metadata accessor for CVBundle);
}

uint64_t sub_1D891EDBC(int *a1)
{
  sub_1D8B16D20();
  sub_1D891CA54(v4);
  sub_1D87CF97C(v4, *(v1 + a1[5]));
  sub_1D87CF97C(v4, *(v1 + a1[6]));
  sub_1D893983C(v4, *(v1 + a1[7]));
  return sub_1D8B16D80();
}

uint64_t sub_1D891EE30(__int128 *a1, int *a2)
{
  sub_1D891CA54(a1);
  sub_1D87CF97C(a1, *(v2 + a2[5]));
  sub_1D87CF97C(a1, *(v2 + a2[6]));
  v5 = *(v2 + a2[7]);

  return sub_1D893983C(a1, v5);
}

uint64_t sub_1D891EE9C(uint64_t a1, int *a2)
{
  sub_1D8B16D20();
  sub_1D891CA54(v5);
  sub_1D87CF97C(v5, *(v2 + a2[5]));
  sub_1D87CF97C(v5, *(v2 + a2[6]));
  sub_1D893983C(v5, *(v2 + a2[7]));
  return sub_1D8B16D80();
}

uint64_t CVBundle.modifyWithRotation(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for CVBundle.BundleType(0);
  v7 = MEMORY[0x1EEE9AC00](v52);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v48 - v9;
  v10 = type metadata accessor for CVBundle(0);
  v11 = *(v10 - 1);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v48 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v48 - v19;
  v21 = *a1;
  v22 = *(v2 + *(v18 + 20));
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v55 = v18;
  v56 = v2;
  if (v23)
  {
    v57 = v14;
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v23, 0);
    v24 = v59;
    v25 = v11;
    v26 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v27 = v22 + v26;
    v49 = v25;
    v28 = *(v25 + 72);
    do
    {
      sub_1D8917FF0(v27, v17, type metadata accessor for CVBundle);
      v58 = v21;
      CVBundle.modifyWithRotation(_:)(&v58);
      sub_1D89388D8(v17, type metadata accessor for CVBundle);
      v59 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D87F4074(v29 > 1, v30 + 1, 1);
        v24 = v59;
      }

      *(v24 + 16) = v30 + 1;
      sub_1D8918058(v20, v24 + v26 + v30 * v28, type metadata accessor for CVBundle);
      v27 += v28;
      --v23;
    }

    while (v23);
    v10 = v55;
    v3 = v56;
    v14 = v57;
    v11 = v49;
  }

  v31 = *(v3 + v10[6]);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v32, 0);
    v33 = v59;
    v57 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v34 = v31 + v57;
    v35 = *(v11 + 72);
    do
    {
      sub_1D8917FF0(v34, v17, type metadata accessor for CVBundle);
      v58 = v21;
      CVBundle.modifyWithRotation(_:)(&v58);
      sub_1D89388D8(v17, type metadata accessor for CVBundle);
      v59 = v33;
      v36 = v14;
      v38 = *(v33 + 16);
      v37 = *(v33 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1D87F4074(v37 > 1, v38 + 1, 1);
        v33 = v59;
      }

      *(v33 + 16) = v38 + 1;
      sub_1D8918058(v36, v33 + v57 + v38 * v35, type metadata accessor for CVBundle);
      v34 += v35;
      --v32;
      v14 = v36;
    }

    while (v32);
    v10 = v55;
    v3 = v56;
  }

  v39 = v51;
  sub_1D8917FF0(v3, v51, type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = v53;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D8917FF0(v3, v53, type metadata accessor for CVBundle.BundleType);
    v42 = sub_1D8B13240();
    (*(*(v42 - 8) + 8))(v39, v42);
  }

  else
  {
    v43 = v39;
    v44 = v50;
    sub_1D8918058(v43, v50, type metadata accessor for CVTrackSnapshot);
    v59 = v21;
    sub_1D8AC0ACC(&v59, v41);
    sub_1D89388D8(v44, type metadata accessor for CVTrackSnapshot);
    swift_storeEnumTagMultiPayload();
  }

  v45 = *(v3 + v10[7]);
  v46 = v54;
  sub_1D8918058(v41, v54, type metadata accessor for CVBundle.BundleType);
  *(v46 + v10[5]) = v24;
  *(v46 + v10[6]) = v33;
  *(v46 + v10[7]) = v45;
}

BOOL CVBundle.isFullScreenBundle.getter()
{
  CVBundle.latestDetection.getter(&v3);
  if (v3 >> 60 != 11)
  {

    return 0;
  }

  v0 = type metadata accessor for SyntheticDetectionResult();
  if (*(swift_projectBox() + *(v0 + 24)))
  {
    v1 = sub_1D8B16BA0();

    return (v1 & 1) != 0;
  }

  return 1;
}

char *sub_1D891F590(double a1)
{
  v41 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v41);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CVTrackSnapshot(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D891DE68();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v5 + 80);
    v11 = MEMORY[0x1E69E7CC0];
    v12 = *(v4 + 20);
    v39 = v8;
    v40 = v12;
    v13 = v8 + ((v10 + 32) & ~v10);
    v14 = *(v5 + 72);
    do
    {
      sub_1D8917FF0(v13, v7, type metadata accessor for CVTrackSnapshot);
      switch(*&v7[v12] >> 60)
      {
        case 1:
          v28 = type metadata accessor for GroundedParseDetectorResult(0);
          v16 = swift_projectBox();
          v43 = v28;
          v44 = sub_1D893FD6C(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_17;
        case 2:
          v23 = type metadata accessor for MetaDetectionResult();
          v16 = swift_projectBox();
          v43 = v23;
          v44 = sub_1D893FD6C(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for MetaDetectionResult;
          goto LABEL_17;
        case 3:
        case 8:
          v15 = type metadata accessor for ObjectDetectorResult(0);
          v16 = swift_projectBox();
          v43 = v15;
          v44 = sub_1D893FD6C(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_17;
        case 4:
          v29 = type metadata accessor for ParseDetectorResult(0);
          v16 = swift_projectBox();
          v43 = v29;
          v44 = sub_1D893FD6C(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for ParseDetectorResult;
          goto LABEL_17;
        case 5:
          v30 = type metadata accessor for TextDetectorResult(0);
          v16 = swift_projectBox();
          v43 = v30;
          v44 = sub_1D893FD6C(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for TextDetectorResult;
          goto LABEL_17;
        case 6:
        case 7:
          v19 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v16 = swift_projectBox();
          v43 = v19;
          v44 = sub_1D893FD6C(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_17;
        case 9:
        case 0xALL:
          v20 = swift_projectBox();
          sub_1D8917FF0(v20, v3, type metadata accessor for AFMResult);
          v43 = v41;
          v44 = sub_1D893FD6C(&qword_1EE0E3F80, type metadata accessor for AFMResult);
          v21 = __swift_allocate_boxed_opaque_existential_1(v42);
          sub_1D8918058(v3, v21, type metadata accessor for AFMResult);
          break;
        case 0xBLL:
          v22 = type metadata accessor for SyntheticDetectionResult();
          v16 = swift_projectBox();
          v43 = v22;
          v44 = sub_1D893FD6C(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_17;
        case 0xCLL:
          v24 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v16 = swift_projectBox();
          v43 = v24;
          v44 = sub_1D893FD6C(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_17;
        case 0xDLL:
          v31 = type metadata accessor for GroundedParseClassificationsResult(0);
          v16 = swift_projectBox();
          v43 = v31;
          v44 = sub_1D893FD6C(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_17:
          sub_1D8917FF0(v16, boxed_opaque_existential_1, v18);
          break;
        default:
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
          v26 = swift_projectBox();
          v43 = v25;
          v44 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
          v27 = __swift_allocate_boxed_opaque_existential_1(v42);
          v12 = v40;
          sub_1D87A0E38(v26, v27, &qword_1ECA67750);
          break;
      }

      v33 = v43;
      v32 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v34 = (*(v32 + 88))(v33, v32);
      __swift_destroy_boxed_opaque_existential_1(v42);
      if (v34 == a1)
      {
        v35 = *&v7[v12];

        sub_1D89388D8(v7, type metadata accessor for CVTrackSnapshot);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1D87C7F54(0, *(v11 + 2) + 1, 1, v11);
        }

        v37 = *(v11 + 2);
        v36 = *(v11 + 3);
        if (v37 >= v36 >> 1)
        {
          v11 = sub_1D87C7F54((v36 > 1), v37 + 1, 1, v11);
        }

        *(v11 + 2) = v37 + 1;
        *&v11[8 * v37 + 32] = v35;
      }

      else
      {
        sub_1D89388D8(v7, type metadata accessor for CVTrackSnapshot);
      }

      v13 += v14;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t sub_1D891FD78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D893F918(&unk_1F54237F0, &qword_1ECA65C08, &unk_1D8B2C030, sub_1D881F7DC);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = result;
    v7 = *(a1 + 32);
    if (v5 == 1)
    {
LABEL_13:

      *a2 = v7;
      return result;
    }

    v8 = (a1 + 33);
    v9 = 1;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (!*(v6 + 16))
      {
        goto LABEL_15;
      }

      v12 = *v8++;
      v11 = v12;
      result = sub_1D881F7DC(v12);
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      if (!*(v6 + 16))
      {
        goto LABEL_17;
      }

      v14 = *(*(v6 + 56) + 8 * result);
      result = sub_1D881F7DC(v7);
      if ((v15 & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v14 >= *(*(v6 + 56) + 8 * result))
      {
        v7 = v7;
      }

      else
      {
        v7 = v11;
      }

      ++v9;
      if (v10 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D891FE98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v2, v9, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D8B13240();
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    sub_1D8918058(v9, v6, type metadata accessor for CVTrackSnapshot);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 16))(a1, v6, v12);
    return sub_1D89388D8(v6, type metadata accessor for CVTrackSnapshot);
  }
}

double sub_1D892004C()
{
  v1 = type metadata accessor for CVBundle(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v0, v10, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v0 + *(v1 + 20));
    v12 = *(v11 + 16);
    if (v12)
    {
      v27 = MEMORY[0x1E69E7CC0];
      sub_1D87F4140(0, v12, 0);
      v13 = v27;
      v14 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v15 = *(v2 + 72);
      do
      {
        v16 = sub_1D8917FF0(v14, v4, type metadata accessor for CVBundle);
        v17 = sub_1D892004C(v16);
        sub_1D89388D8(v4, type metadata accessor for CVBundle);
        v27 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          sub_1D87F4140((v18 > 1), v19 + 1, 1);
          v13 = v27;
        }

        *(v13 + 16) = v20;
        *(v13 + 8 * v19 + 32) = v17;
        v14 += v15;
        --v12;
      }

      while (v12);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      v20 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v20)
      {
        v21 = 0.0;
LABEL_17:

        v24 = sub_1D8B13240();
        (*(*(v24 - 8) + 8))(v10, v24);
        return v21;
      }
    }

    v21 = *(v13 + 32);
    v22 = v20 - 1;
    if (v20 != 1)
    {
      v23 = 40;
      do
      {
        if (*(v13 + v23) < v21)
        {
          v21 = *(v13 + v23);
        }

        v23 += 8;
        --v22;
      }

      while (v22);
    }

    goto LABEL_17;
  }

  sub_1D8918058(v10, v7, type metadata accessor for CVTrackSnapshot);
  v21 = *&v7[*(v5 + 32)];
  sub_1D89388D8(v7, type metadata accessor for CVTrackSnapshot);
  return v21;
}

uint64_t sub_1D8920388(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - v6;
  v45 = type metadata accessor for BundleClassification.ClassificationType(0);
  v8 = *(v45 - 8);
  v9 = MEMORY[0x1EEE9AC00](v45);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v38 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  v20 = *(a1 + 16);
  if (!v20)
  {
    return 1;
  }

  v21 = *(v1 + *(type metadata accessor for CVBundle(0) + 28));
  v22 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v39 = *MEMORY[0x1E69C9C08];
  v41 = *(v8 + 72);
  v38 = xmmword_1D8B190C0;
  v23 = v17;
  v42 = v21;
  v40 = v14;
  while (1)
  {
    sub_1D8917FF0(v22, v19, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8917FF0(v19, v11, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D89388D8(v11, type metadata accessor for BundleClassification.ClassificationType);
        *v14 = MEMORY[0x1E69E7CD0];
      }

      goto LABEL_18;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v26 = type metadata accessor for VisualLookupClassifier.Result(0);
        (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
        goto LABEL_17;
      }

      sub_1D89388D8(v11, type metadata accessor for BundleClassification.ClassificationType);
      *v14 = MEMORY[0x1E69E7CC0];
      v14[1] = 0xBFF0000000000000;
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D89388D8(v11, type metadata accessor for BundleClassification.ClassificationType);
        *v14 = v38;
        v14[2] = 0xE700000000000000;
        v14[3] = 0x7974706D65;
        v14[4] = 0xE500000000000000;
        v14[5] = 0;
        goto LABEL_18;
      }

      if (EnumCaseMultiPayload != 3)
      {
        *v14 = 0x7974706D65;
        v14[1] = 0xE500000000000000;
        v25 = sub_1D8B145A0();
        (*(*(v25 - 8) + 104))(v14, v39, v25);
LABEL_17:
        swift_storeEnumTagMultiPayload();
        sub_1D89388D8(v11, type metadata accessor for BundleClassification.ClassificationType);
        goto LABEL_19;
      }

      *v14 = 0;
    }

LABEL_18:
    swift_storeEnumTagMultiPayload();
LABEL_19:
    sub_1D8918058(v14, v23, type metadata accessor for BundleClassification.ClassificationType);
    if (*(v21 + 16))
    {
      v44 = v20;
      v27 = v23;
      v28 = sub_1D87EF6AC(v23);
      if (v29)
      {
        v30 = v28;
        v31 = v11;
        v32 = *(v21 + 56);
        v33 = type metadata accessor for RefinementState(0);
        v34 = *(v33 - 8);
        v35 = v32 + *(v34 + 72) * v30;
        v11 = v31;
        sub_1D8917FF0(v35, v7, type metadata accessor for RefinementState);
        sub_1D89388D8(v27, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D89388D8(v19, type metadata accessor for BundleClassification.ClassificationType);
        (*(v34 + 56))(v7, 0, 1, v33);
        v14 = v40;
      }

      else
      {
        sub_1D89388D8(v23, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D89388D8(v19, type metadata accessor for BundleClassification.ClassificationType);
        v33 = type metadata accessor for RefinementState(0);
        (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
      }

      v23 = v27;
      v20 = v44;
    }

    else
    {
      sub_1D89388D8(v23, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D89388D8(v19, type metadata accessor for BundleClassification.ClassificationType);
      v33 = type metadata accessor for RefinementState(0);
      (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
    }

    type metadata accessor for RefinementState(0);
    v36 = (*(*(v33 - 8) + 48))(v7, 1, v33);
    v21 = v42;
    if (v36 == 1)
    {
      goto LABEL_3;
    }

    sub_1D87A0E38(v7, v43, &qword_1ECA657B8);
    if ((swift_getEnumCaseMultiPayload() | 2) != 2)
    {
      break;
    }

    sub_1D89388D8(v43, type metadata accessor for RefinementState);
LABEL_3:
    sub_1D87A14E4(v7, &qword_1ECA657B8);
    v22 += v41;
    if (!--v20)
    {
      return 1;
    }
  }

  sub_1D89388D8(v43, type metadata accessor for RefinementState);
  sub_1D87A14E4(v7, &qword_1ECA657B8);
  return 0;
}

int *CVBundle.init(synthetic:rotationAngle:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v83 = type metadata accessor for BundleClassification.ClassificationType(0);
  v76 = *(v83 - 8);
  v12 = MEMORY[0x1EEE9AC00](v83);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v71 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v71 - v18);
  v72 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v72);
  v81 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D8B13240();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v82 = *a1;
  v78 = &v71 - v26;
  sub_1D8B13230();
  v88.origin.x = a3;
  v88.origin.y = a4;
  v88.size.width = a5;
  v88.size.height = a6;
  *&v75 = CGRectGetMinX(v88);
  v89.origin.x = a3;
  v89.origin.y = a4;
  v89.size.width = a5;
  v89.size.height = a6;
  MinY = CGRectGetMinY(v89);
  v90.origin.x = a3;
  v90.origin.y = a4;
  v90.size.width = a5;
  v90.size.height = a6;
  MaxX = CGRectGetMaxX(v90);
  v91.origin.x = a3;
  v91.origin.y = a4;
  v91.size.width = a5;
  v91.size.height = a6;
  v27 = CGRectGetMinY(v91);
  v92.origin.x = a3;
  v92.origin.y = a4;
  v92.size.width = a5;
  v92.size.height = a6;
  MinX = CGRectGetMinX(v92);
  v93.origin.x = a3;
  v93.origin.y = a4;
  v93.size.width = a5;
  v93.size.height = a6;
  MaxY = CGRectGetMaxY(v93);
  v94.origin.x = a3;
  v94.origin.y = a4;
  v94.size.width = a5;
  v94.size.height = a6;
  v30 = CGRectGetMaxX(v94);
  v95.origin.x = a3;
  v95.origin.y = a4;
  v95.size.width = a5;
  v95.size.height = a6;
  v31 = CGRectGetMaxY(v95);
  v32 = CACurrentMediaTime();
  v33 = MEMORY[0x1E69E7CC0];
  v86 = MEMORY[0x1E69E7CC0];
  v87 = MEMORY[0x1E69E7CC0];
  v85 = MEMORY[0x1E69E7CC0];
  v34 = type metadata accessor for ObjectDetectorResult(0);
  v77 = swift_allocBox();
  v36 = v35;
  sub_1D8B13230();
  v79 = v22;
  v37 = *(v22 + 32);
  v80 = v21;
  v37(v36, v25, v21);
  *(v36 + v34[5]) = 1065353216;
  v38 = (v36 + v34[6]);
  v39 = MinY;
  *v38 = v75;
  v38[1] = v39;
  v38[2] = MaxX;
  v38[3] = v27;
  v38[4] = MinX;
  v38[5] = MaxY;
  v38[6] = v30;
  v38[7] = v31;
  v40 = (v36 + v34[7]);
  *v40 = 1852270963;
  v40[1] = 0xE400000000000000;
  *(v36 + v34[8]) = v82;
  *(v36 + v34[9]) = v32;
  v41 = sub_1D87C50A0(v33);
  v42 = sub_1D893FA4C(v33, v41, type metadata accessor for BundleClassification.ClassificationType, type metadata accessor for BundleClassification.ClassificationType, sub_1D87F8208, type metadata accessor for BundleClassification.ClassificationType);
  v43 = sub_1D893FA4C(v33, v42, type metadata accessor for BundleClassification.ClassificationType, type metadata accessor for BundleClassification.ClassificationType, sub_1D87F8208, type metadata accessor for BundleClassification.ClassificationType);
  v44 = v43;
  v45 = *(v43 + 16);
  if (v45)
  {
    v46 = sub_1D87F3A90(*(v43 + 16), 0);
    v47 = sub_1D8817E20(&v84, v46 + ((*(v76 + 80) + 32) & ~*(v76 + 80)), v45, v44);
    v48 = sub_1D87977A0();
    if (v47 == v45)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v49 = v77 | 0x3000000000000000;
  MEMORY[0x1EEE9AC00](v48);
  *(&v71 - 4) = &v86;
  *(&v71 - 3) = v32;
  *(&v71 - 2) = &v87;
  *(&v71 - 1) = &v85;
  MaxX = COERCE_DOUBLE(sub_1D8917148(sub_1D8940040, (&v71 - 6), v46, type metadata accessor for RefinementState, sub_1D87F4A50, type metadata accessor for BundleClassification.ClassificationType, type metadata accessor for RefinementState));
  MinY = 0.0;
  v50 = v81;
  (*(v79 + 16))(v81, v78, v80);
  v51 = type metadata accessor for CVTrackSnapshot(0);
  *(v50 + v51[5]) = v49;
  *(v50 + v51[6]) = v49;
  *(v50 + v51[7]) = 0;
  *(v50 + v51[8]) = v32;
  *(v50 + v51[9]) = 1065353216;
  *(v50 + v51[10]) = 2;
  swift_storeEnumTagMultiPayload();
  v52 = *(v46 + 16);
  if (v52)
  {
    v72 = a2;
    v84 = MEMORY[0x1E69E7CC0];
    swift_retain_n();
    sub_1D87F4A0C(0, v52, 0);
    v53 = v46;
    v54 = v84;
    v55 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v71 = v53;
    v82 = v55;
    v56 = v53 + v55;
    v57 = *(v76 + 72);
    LODWORD(v76) = *MEMORY[0x1E69C9C08];
    v75 = xmmword_1D8B190C0;
    while (1)
    {
      sub_1D8917FF0(v56, v17, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8917FF0(v17, v14, type metadata accessor for BundleClassification.ClassificationType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D89388D8(v14, type metadata accessor for BundleClassification.ClassificationType);
          *v19 = MEMORY[0x1E69E7CD0];
        }

        goto LABEL_21;
      }

      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          sub_1D89388D8(v14, type metadata accessor for BundleClassification.ClassificationType);
          *v19 = MEMORY[0x1E69E7CC0];
          v19[1] = 0xBFF0000000000000;
          goto LABEL_21;
        }

        v60 = type metadata accessor for VisualLookupClassifier.Result(0);
        (*(*(v60 - 8) + 56))(v19, 1, 1, v60);
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_1D89388D8(v14, type metadata accessor for BundleClassification.ClassificationType);
          *v19 = v75;
          v19[2] = 0xE700000000000000;
          v19[3] = 0x7974706D65;
          v19[4] = 0xE500000000000000;
          v19[5] = 0;
          goto LABEL_21;
        }

        if (EnumCaseMultiPayload == 3)
        {
          *v19 = 0;
LABEL_21:
          swift_storeEnumTagMultiPayload();
          goto LABEL_22;
        }

        *v19 = 0x7974706D65;
        v19[1] = 0xE500000000000000;
        v59 = sub_1D8B145A0();
        (*(*(v59 - 8) + 104))(v19, v76, v59);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D89388D8(v14, type metadata accessor for BundleClassification.ClassificationType);
LABEL_22:
      sub_1D89388D8(v17, type metadata accessor for BundleClassification.ClassificationType);
      v84 = v54;
      v62 = *(v54 + 16);
      v61 = *(v54 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1D87F4A0C(v61 > 1, v62 + 1, 1);
        v54 = v84;
      }

      *(v54 + 16) = v62 + 1;
      sub_1D8918058(v19, v54 + v82 + v62 * v57, type metadata accessor for BundleClassification.ClassificationType);
      v56 += v57;
      if (!--v52)
      {

        a2 = v72;
        goto LABEL_27;
      }
    }
  }

  swift_retain_n();

  v54 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v63 = *&MaxX;
  if (*(*&MaxX + 16) >= *(v54 + 16))
  {
    v64 = *(v54 + 16);
  }

  else
  {
    v64 = *(*&MaxX + 16);
  }

  if (v64)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B0);
    v65 = sub_1D8B16910();
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC8];
  }

  v84 = v65;
  v66 = v63;
  v67 = MinY;
  sub_1D8938938(v54, v66, 1, &v84);
  if (v67 == 0.0)
  {

    v68 = v84;
    (*(v79 + 8))(v78, v80);
    sub_1D8918058(v81, a2, type metadata accessor for CVBundle.BundleType);
    result = type metadata accessor for CVBundle(0);
    v70 = MEMORY[0x1E69E7CC0];
    *(a2 + result[5]) = MEMORY[0x1E69E7CC0];
    *(a2 + result[6]) = v70;
    *(a2 + result[7]) = v68;
  }

  else
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D89215E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = 0;
  v13 = *(a2 + 16);
  while (v13 != v12)
  {
    v14 = *(type metadata accessor for BundleClassification.ClassificationType(0) - 8);
    v15 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12++, a1);
    if (v15)
    {
      sub_1D8917FF0(a1, a5, type metadata accessor for BundleClassification.ClassificationType);
      v16 = type metadata accessor for BundleClassification(0);
      v17 = a5 + *(v16 + 20);
      *v17 = 2;
      *(v17 + 8) = 0u;
      *(v17 + 24) = 0u;
      sub_1D88E0FE4(2, 0, 0, 0);
      *v17 = 2;
      *(v17 + 8) = 0u;
      *(v17 + 24) = 0u;
      *(a5 + *(v16 + 24)) = a6;
      type metadata accessor for RefinementState(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  v18 = 0;
  v19 = *(a3 + 16);
  while (v19 != v18)
  {
    v20 = *(type metadata accessor for BundleClassification.ClassificationType(0) - 8);
    v21 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18++, a1);
    if (v21)
    {
      type metadata accessor for RefinementState(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  v22 = *(a4 + 16);
  v23 = type metadata accessor for BundleClassification.ClassificationType(0);
  v24 = 0;
  v26 = *(v23 - 8);
  result = v23 - 8;
  v27 = v26;
  v28 = a4 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  while (v22 != v24)
  {
    v29 = v24 + 1;
    result = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v28 + *(v27 + 72) * v24, a1);
    v24 = v29;
    if (result)
    {
      *a5 = 0;
      *(a5 + 8) = xmmword_1D8B26630;
      *(a5 + 24) = 2;
      *(a5 + 32) = a6;
      type metadata accessor for RefinementState(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8921890(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = *a1;
  CVBundle.latestEstimate.getter(&v12);
  if (v12 >> 60 || v5 > 0xD || ((1 << v5) & 0x3002) == 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = swift_projectBox();
    sub_1D87A0E38(v6, v4, &qword_1ECA67750);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631F0);
    v7 = *(type metadata accessor for DetectionRequest.Annotation(0) - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D8B1AB90;
    sub_1D881F6FC(v4, v9 + v8, &qword_1ECA67750);
    swift_storeEnumTagMultiPayload();
    return v9;
  }
}

void *sub_1D8921A48()
{
  v1 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = *v0 >> 60;
  if (v7 <= 5)
  {
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v14 = swift_projectBox();
        sub_1D8917FF0(v14, v3, type metadata accessor for ObjectDetectorResult);
        v15 = &v3[*(v1 + 28)];
        v16 = *v15;
        v17 = *(v15 + 1);
        v18 = *v15 == 1852270963 && v17 == 0xE400000000000000;
        if (v18 || (sub_1D8B16BA0() & 1) != 0)
        {
          v19 = &unk_1F5427F40;
        }

        else
        {
          v20 = v16 == 0x746E656D75636F64 && v17 == 0xE800000000000000;
          if (v20 || (sub_1D8B16BA0() & 1) != 0)
          {
            v19 = &unk_1F5427F68;
          }

          else
          {
            v19 = &unk_1F5427F68;
            v21 = v16 == 0x656C74746F62 && v17 == 0xE600000000000000;
            if (!v21 && (sub_1D8B16BA0() & 1) == 0)
            {
              v19 = &unk_1F5427F90;
            }
          }
        }

        sub_1D89388D8(v3, type metadata accessor for ObjectDetectorResult);
        return v19;
      }

      else if (v7 == 4)
      {
        return &unk_1F5427FB8;
      }

      else
      {
        return &unk_1F5427F18;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        return &unk_1F5427FE0;
      }

      else
      {
        return &unk_1F5427EF0;
      }
    }

    else
    {
      v12 = swift_projectBox();
      sub_1D87A0E38(v12, v6, &qword_1ECA67750);
      v13 = sub_1D8921D2C();
      sub_1D87A14E4(v6, &qword_1ECA67750);
      return v13;
    }
  }

  else
  {
    v8 = &unk_1F5428080;
    if ((v7 - 12) >= 2)
    {
      v8 = &unk_1F5428058;
    }

    if ((v7 - 9) >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = &unk_1F5428030;
    }

    v10 = MEMORY[0x1E69E7CC0];
    if ((v7 - 6) < 2)
    {
      v10 = &unk_1F5428008;
    }

    if (v7 <= 8)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }
}

char sub_1D8921D2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v2 = *(v0 + *(v1 + 44));
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  LOBYTE(v1) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v2 + 32));
  switch(v8)
  {
    case 0xB5u:
LABEL_14:
      __break(1u);
      return v1;
    case 0x1Cu:
      return &unk_1F5427E50;
    case 0xA0u:
      return &unk_1F5427E78;
    default:
      v3 = sub_1D88F8978();
      v4 = *(v3 + 16) + 1;
      v5 = 32;
      while (--v4)
      {
        v6 = *(v3 + v5);
        v5 += 8;
        if (v6 == 28)
        {

          return &unk_1F5427EA0;
        }
      }

      return &unk_1F5427EC8;
  }
}

uint64_t sub_1D8921DF8()
{
  v1 = *(v0 + 88);
  result = sub_1D8940548();
  v3 = result;
  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
    v11 = v8;
LABEL_10:
    v8 = (v11 - 1) & v11;
    if (*(v1 + 16))
    {
      v13 = *(*(v3 + 48) + (__clz(__rbit64(v11)) | (v4 << 6)));
      result = sub_1D881F7DC(v13);
      if ((v14 & 1) != 0 && *(*(v1 + 56) + result) != 2)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v20 = v10;
        if ((result & 1) == 0)
        {
          result = sub_1D87F4534(0, *(v10 + 16) + 1, 1);
        }

        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        v17 = v15 + 1;
        if (v15 >= v16 >> 1)
        {
          v18 = v15 + 1;
          v19 = v15;
          result = sub_1D87F4534((v16 > 1), v15 + 1, 1);
          v17 = v18;
          v15 = v19;
          v10 = v20;
        }

        *(v10 + 16) = v17;
        *(v10 + v15 + 32) = v13;
      }
    }
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v10;
    }

    v11 = *(v5 + 8 * v12);
    ++v4;
    if (v11)
    {
      v4 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

__n128 BundleManager.Output.latestFrameMetadata.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 72);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

uint64_t BundleManager.Output.hash(into:)(__int128 *a1)
{
  v3 = v1[11];
  sub_1D87CF97C(a1, *v1);
  CameraSourceFrameMetadata.hash(into:)();

  return sub_1D893A2B0(a1, v3);
}

uint64_t BundleManager.Output.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[11];
  sub_1D8B16D20();
  sub_1D87CF97C(v4, v1);
  CameraSourceFrameMetadata.hash(into:)();
  sub_1D893A2B0(v4, v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8922100()
{
  v1 = *v0;
  v2 = v0[11];
  sub_1D8B16D20();
  sub_1D87CF97C(v4, v1);
  CameraSourceFrameMetadata.hash(into:)();
  sub_1D893A2B0(v4, v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D892218C(__int128 *a1)
{
  v3 = v1[11];
  sub_1D87CF97C(a1, *v1);
  CameraSourceFrameMetadata.hash(into:)();

  return sub_1D893A2B0(a1, v3);
}

uint64_t sub_1D892220C()
{
  v1 = *v0;
  v2 = v0[11];
  sub_1D8B16D20();
  sub_1D87CF97C(v4, v1);
  CameraSourceFrameMetadata.hash(into:)();
  sub_1D893A2B0(v4, v2);
  return sub_1D8B16D80();
}

__n128 sub_1D8922294@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 72);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

void sub_1D89222B8()
{
  v1 = v0;
  v2 = sub_1D8B151C0();
  v3 = sub_1D8B161F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D8783000, v2, v3, "reset() begin", v4, 2u);
    MEMORY[0x1DA721330](v4, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles) = MEMORY[0x1E69E7CC0];

  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundleIdToBundleClassifier) = MEMORY[0x1E69E7CC8];

  v5 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_otherSyntheticTracks;
  swift_beginAccess();
  *(v1 + v5) = MEMORY[0x1E69E7CD0];

  v6 = (v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v7 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 48);
  v13[2] = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 32);
  v13[3] = v7;
  v8 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 80);
  v13[4] = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 64);
  v13[5] = v8;
  v9 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 16);
  v13[0] = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v13[1] = v9;
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  sub_1D87A14E4(v13, &qword_1ECA64858);
  sub_1D892C038();
  v10 = sub_1D8B151C0();
  v11 = sub_1D8B161F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D8783000, v10, v11, "reset() end", v12, 2u);
    MEMORY[0x1DA721330](v12, -1, -1);
  }
}

unint64_t sub_1D8922494()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B8);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v101 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v77 - v4;
  v110 = type metadata accessor for BundleClassification.ClassificationType(0);
  v6 = *(v110 - 8);
  v7 = MEMORY[0x1EEE9AC00](v110);
  v97 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v96 = &v77 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v108 = &v77 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v77 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v107 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v109 = &v77 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657C0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v77 - v20;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63430);
  v80 = *(v95 - 8);
  v22 = MEMORY[0x1EEE9AC00](v95);
  v88 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v79 = &v77 - v24;
  v82 = type metadata accessor for CVBundle(0);
  v89 = *(v82 - 8);
  v25 = MEMORY[0x1EEE9AC00](v82);
  v90 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v28 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 48);
  v113[2] = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 32);
  v113[3] = v28;
  v29 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 80);
  v113[4] = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 64);
  v113[5] = v29;
  v30 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 16);
  v113[0] = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v113[1] = v30;
  if (!v29)
  {
    v73 = MEMORY[0x1E69E7CC0];

    return sub_1D893EC50(v73);
  }

  v98 = v6;
  v31 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles);
  v32 = v27[3];
  v112[2] = v27[2];
  v112[3] = v32;
  v112[4] = v27[4];
  v33 = v27[1];
  v112[0] = *v27;
  v112[1] = v33;
  MEMORY[0x1EEE9AC00](v25);
  *(&v77 - 4) = v112;
  *(&v77 - 3) = v34;
  v87 = v34;
  *(&v77 - 2) = v0;
  swift_bridgeObjectRetain_n();
  sub_1D87A0E38(v113, v111, &qword_1ECA64858);
  v77 = sub_1D8927E98(MEMORY[0x1E69E7CC8], sub_1D88C7C98, (&v77 - 6), v31, type metadata accessor for CVBundle);
  v78 = 0;
  sub_1D87A14E4(v113, &qword_1ECA64858);

  v86 = *(v31 + 16);
  if (v86)
  {
    v35 = 0;
    v83 = (v80 + 48);
    v84 = (v80 + 56);
    v94 = *MEMORY[0x1E69C9C08];
    v99 = xmmword_1D8B1AB90;
    v93 = xmmword_1D8B190C0;
    v91 = MEMORY[0x1E69E7CC0];
    v36 = v98;
    v100 = v15;
    v37 = v90;
    v81 = v21;
    v85 = v31;
    while (1)
    {
      if (v35 >= *(v31 + 16))
      {
        goto LABEL_57;
      }

      v38 = v31 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
      v39 = *(v89 + 72);
      v92 = v35;
      sub_1D8917FF0(v38 + v39 * v35, v37, type metadata accessor for CVBundle);
      v111[0] = MEMORY[0x1E69E7CD0];
      v40 = *v87;
      v105 = *(*v87 + 16);
      if (v105)
      {
        break;
      }

      v65 = MEMORY[0x1E69E7CD0];
LABEL_38:
      v66 = v95;
      if (*(v65 + 16))
      {
        v67 = *(v95 + 48);
        v37 = v90;
        sub_1D8917FF0(v90, v21, type metadata accessor for CVBundle);
        v68 = 0;
        *&v21[v67] = v65;
        v66 = v95;
      }

      else
      {

        v68 = 1;
        v37 = v90;
      }

      (*v84)(v21, v68, 1, v66);
      sub_1D89388D8(v37, type metadata accessor for CVBundle);
      if ((*v83)(v21, 1, v66) == 1)
      {
        sub_1D87A14E4(v21, &qword_1ECA657C0);
        v36 = v98;
      }

      else
      {
        v69 = v79;
        sub_1D881F6FC(v21, v79, &qword_1ECA63430);
        sub_1D881F6FC(v69, v88, &qword_1ECA63430);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_1D87C9210(0, v91[2] + 1, 1, v91);
        }

        v71 = v91[2];
        v70 = v91[3];
        if (v71 >= v70 >> 1)
        {
          v91 = sub_1D87C9210(v70 > 1, v71 + 1, 1, v91);
        }

        v72 = v91;
        v91[2] = v71 + 1;
        sub_1D881F6FC(v88, v72 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v71, &qword_1ECA63430);
        v36 = v98;
        v37 = v90;
      }

      v35 = v92 + 1;
      v31 = v85;
      if (v92 + 1 == v86)
      {
        goto LABEL_51;
      }
    }

    v41 = 0;
    v42 = *(v36 + 80);
    v106 = (v42 + 32) & ~v42;
    v102 = v40 + v106;
    v103 = v42;
    v43 = *(v37 + *(v82 + 28));
    v104 = v40;
    while (1)
    {
      if (v41 >= *(v40 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v44 = v43;
      v45 = v102 + *(v36 + 72) * v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63410);
      v46 = v106;
      v47 = swift_allocObject();
      *(v47 + 16) = v99;
      sub_1D8917FF0(v45, v47 + v46, type metadata accessor for BundleClassification.ClassificationType);
      v48 = v109;
      sub_1D8917FF0(v47 + v46, v109, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8917FF0(v48, v108, type metadata accessor for BundleClassification.ClassificationType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        v50 = MEMORY[0x1E69E7CD0];
        if (EnumCaseMultiPayload <= 6)
        {
          v43 = v44;
          if (EnumCaseMultiPayload == 5)
          {
            sub_1D89388D8(v108, type metadata accessor for BundleClassification.ClassificationType);
            *v15 = v50;
          }
        }

        else
        {
          v43 = v44;
        }

        goto LABEL_28;
      }

      if (EnumCaseMultiPayload <= 1)
      {
        v43 = v44;
        if (!EnumCaseMultiPayload)
        {
          sub_1D89388D8(v108, type metadata accessor for BundleClassification.ClassificationType);
          *v15 = MEMORY[0x1E69E7CC0];
          v15[1] = 0xBFF0000000000000;
          goto LABEL_28;
        }

        v52 = type metadata accessor for VisualLookupClassifier.Result(0);
        (*(*(v52 - 8) + 56))(v15, 1, 1, v52);
      }

      else
      {
        v43 = v44;
        if (EnumCaseMultiPayload == 2)
        {
          sub_1D89388D8(v108, type metadata accessor for BundleClassification.ClassificationType);
          *v15 = v93;
          v15[2] = 0xE700000000000000;
          v15[3] = 0x7974706D65;
          v15[4] = 0xE500000000000000;
          v15[5] = 0;
          goto LABEL_28;
        }

        if (EnumCaseMultiPayload == 3)
        {
          *v15 = 0;
LABEL_28:
          swift_storeEnumTagMultiPayload();
          goto LABEL_29;
        }

        *v15 = 0x7974706D65;
        v15[1] = 0xE500000000000000;
        v51 = sub_1D8B145A0();
        (*(*(v51 - 8) + 104))(v15, v94, v51);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D89388D8(v108, type metadata accessor for BundleClassification.ClassificationType);
LABEL_29:
      v53 = v15;
      v54 = v107;
      sub_1D8918058(v53, v107, type metadata accessor for BundleClassification.ClassificationType);
      if (*(v43 + 16) && (v55 = sub_1D87EF6AC(v54), (v56 & 1) != 0))
      {
        v57 = v55;
        v58 = *(v44 + 56);
        v59 = type metadata accessor for RefinementState(0);
        v60 = *(v59 - 8);
        v61 = v58 + *(v60 + 72) * v57;
        v43 = v44;
        sub_1D8917FF0(v61, v5, type metadata accessor for RefinementState);
        sub_1D89388D8(v107, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D89388D8(v109, type metadata accessor for BundleClassification.ClassificationType);
        (*(v60 + 56))(v5, 0, 1, v59);
        v36 = v98;
      }

      else
      {
        sub_1D89388D8(v54, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D89388D8(v109, type metadata accessor for BundleClassification.ClassificationType);
        v59 = type metadata accessor for RefinementState(0);
        (*(*(v59 - 8) + 56))(v5, 1, 1, v59);
      }

      type metadata accessor for RefinementState(0);
      v62 = (*(*(v59 - 8) + 48))(v5, 1, v59);
      v15 = v100;
      if (v62 != 1)
      {
        sub_1D87A0E38(v5, v101, &qword_1ECA657B8);
        if ((swift_getEnumCaseMultiPayload() | 2) != 2)
        {
          sub_1D89388D8(v101, type metadata accessor for RefinementState);
          sub_1D87A14E4(v5, &qword_1ECA657B8);
          v63 = v96;
          sub_1D8917FF0(v47 + v106, v96, type metadata accessor for BundleClassification.ClassificationType);
          v64 = v97;
          sub_1D87F8208(v97, v63);
          sub_1D89388D8(v64, type metadata accessor for BundleClassification.ClassificationType);
          goto LABEL_11;
        }

        sub_1D89388D8(v101, type metadata accessor for RefinementState);
      }

      sub_1D87A14E4(v5, &qword_1ECA657B8);
LABEL_11:
      ++v41;

      v40 = v104;
      if (v105 == v41)
      {
        v65 = v111[0];
        v21 = v81;
        goto LABEL_38;
      }
    }
  }

  v91 = MEMORY[0x1E69E7CC0];
LABEL_51:

  if (v91[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657C8);
    v75 = sub_1D8B16910();
  }

  else
  {
    v75 = MEMORY[0x1E69E7CC8];
  }

  v111[0] = v75;
  v76 = v78;
  sub_1D8938EE8(v91, 1, v111);
  if (v76)
  {
    goto LABEL_58;
  }

  return v111[0];
}

void sub_1D8923290(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CVBundle(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v125 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v114 - v11);
  v13 = a1[3];
  v183 = a1[2];
  v184 = v13;
  v14 = a1[5];
  v185 = a1[4];
  v186 = v14;
  v15 = a1[1];
  v181 = *a1;
  v182 = v15;
  v180 = v185;
  v178 = v183;
  v179 = v13;
  v177 = v15;
  v176 = v181;
  v16 = BYTE8(v183);
  if (BYTE8(v183) == 1)
  {
    v17 = *(sub_1D8921DF8() + 16);

    if (v17)
    {
      sub_1D88C7A20(&v181, v142);
      v18 = sub_1D8B151C0();
      v19 = sub_1D8B161F0();
      sub_1D8943A60(&v181);
      if (!os_log_type_enabled(v18, v19))
      {
LABEL_95:

        return;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v164 = v21;
      *v20 = 136315138;
      v142[2] = v183;
      v142[3] = v184;
      v142[4] = v185;
      v142[5] = v186;
      v142[0] = v181;
      v142[1] = v182;
      v22 = sub_1D8921DF8();
      v23 = *(v22 + 16);
      if (v23)
      {
        v121 = v21;
        v122 = v20;
        LODWORD(v123) = v19;
        v124 = v18;
        *&v163[0] = MEMORY[0x1E69E7CC0];
        v125 = v22;
        sub_1D87F3F54(0, v23, 0);
        v24 = v125;
        v25 = *&v163[0];
        v26 = 0x80000001D8B439A0;
        v27 = 0x80000001D8B439C0;
        v28 = 32;
        do
        {
          v29 = 0xE900000000000067;
          v30 = 0x6E69646E756F7267;
          switch(*(v24 + v28))
          {
            case 1:
              v30 = 0x6465646E756F7267;
              v29 = 0xED00006573726150;
              break;
            case 2:
              v29 = 0xE400000000000000;
              v30 = 1635018093;
              break;
            case 3:
              v29 = 0xE600000000000000;
              v30 = 0x7463656A626FLL;
              break;
            case 4:
              v29 = 0xE500000000000000;
              v30 = 0x6573726170;
              break;
            case 5:
              v29 = 0xE400000000000000;
              v30 = 1954047348;
              break;
            case 6:
              v29 = 0xE600000000000000;
              v30 = 0x65646F437271;
              break;
            case 7:
              v29 = 0xE700000000000000;
              v30 = 0x70696C43707061;
              break;
            case 8:
              v30 = 0x6E696D6165727473;
              v29 = 0xED00007478655467;
              break;
            case 9:
              v30 = 0x6C61636974726576;
              v29 = 0xEF746E65746E6F43;
              break;
            case 0xA:
              v29 = 0xEA00000000006C61;
              v30 = 0x646F6D69746C756DLL;
              break;
            case 0xB:
              v30 = 0x69746568746E7973;
              v29 = 0xE900000000000063;
              break;
            case 0xC:
              v30 = 0xD000000000000017;
              v29 = v27;
              break;
            case 0xD:
              v30 = 0xD00000000000001CLL;
              v29 = v26;
              break;
            default:
              break;
          }

          *&v163[0] = v25;
          v32 = *(v25 + 16);
          v31 = *(v25 + 24);
          if (v32 >= v31 >> 1)
          {
            v119 = v27;
            v120 = v26;
            sub_1D87F3F54((v31 > 1), v32 + 1, 1);
            v27 = v119;
            v26 = v120;
            v24 = v125;
            v25 = *&v163[0];
          }

          *(v25 + 16) = v32 + 1;
          v33 = v25 + 16 * v32;
          *(v33 + 32) = v30;
          *(v33 + 40) = v29;
          ++v28;
          --v23;
        }

        while (v23);

        v18 = v124;
        LOBYTE(v19) = v123;
        v21 = v121;
        v20 = v122;
      }

      else
      {

        v25 = MEMORY[0x1E69E7CC0];
      }

      v110 = MEMORY[0x1DA71F1E0](v25, MEMORY[0x1E69E6158]);
      v112 = v111;

      v113 = sub_1D89AC714(v110, v112, &v164);

      *(v20 + 4) = v113;
      v52 = "Suppressing still image update while root node production is pending for %s.";
LABEL_94:
      _os_log_impl(&dword_1D8783000, v18, v19, v52, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1DA721330](v21, -1, -1);
      MEMORY[0x1DA721330](v20, -1, -1);
      goto LABEL_95;
    }
  }

  v119 = v7;
  LODWORD(v121) = v16;
  v34 = v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_configuration;
  MEMORY[0x1EEE9AC00](v10);
  *(&v114 - 4) = &v176;
  *(&v114 - 3) = v34;
  *(&v114 - 2) = v3;
  v35 = sub_1D8927E98(MEMORY[0x1E69E7CC8], sub_1D894478C, (&v114 - 6), a2, type metadata accessor for CVBundle);
  v160 = v178;
  v161 = v179;
  v158 = v176;
  v159 = v177;
  v166 = v177;
  v167 = v178;
  v168 = v179;
  v169 = v180;
  v165 = v176;
  v164 = a2;
  v170 = v35;
  v36 = (v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v37 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v38 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 16);
  v162 = v180;
  v163[0] = v37;
  v39 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 80);
  v163[4] = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 64);
  v163[5] = v39;
  v40 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 32);
  v163[3] = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 48);
  v163[1] = v38;
  v163[2] = v40;
  v123 = v35;
  v124 = v12;
  if (v39)
  {
    v120 = &v114;
    v41 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles);
    v42 = v36[3];
    v173 = v36[2];
    v174 = v42;
    v175 = v36[4];
    v43 = *v36;
    v172 = v36[1];
    v171 = v43;
    MEMORY[0x1EEE9AC00](v35);
    *(&v114 - 4) = &v171;
    *(&v114 - 3) = v34;
    *(&v114 - 2) = v3;
    swift_bridgeObjectRetain_n();

    sub_1D8943B30(&v164, v142);
    sub_1D87A0E38(v163, v142, &qword_1ECA64858);
    v44 = sub_1D8927E98(MEMORY[0x1E69E7CC8], sub_1D894478C, (&v114 - 6), v41, type metadata accessor for CVBundle);
    v122 = 0;
    v12 = v124;
    sub_1D87A14E4(v163, &qword_1ECA64858);

    *&v156[3] = v172;
    *&v156[5] = v173;
    *&v156[7] = v174;
    *&v156[9] = v175;
    *&v156[1] = v171;
    v156[0] = v41;
  }

  else
  {
    v122 = 0;

    sub_1D8943B30(&v164, v142);
    v41 = 0;
    v44 = 0;
    memset(v156, 0, sizeof(v156));
  }

  v157 = v44;
  v152 = *&v156[5];
  v153 = *&v156[7];
  v154 = *&v156[9];
  v155 = v44;
  v150 = *&v156[1];
  v151 = *&v156[3];
  if (!a2)
  {
    v45 = v123;
    if (!v41)
    {

      *(&v142[1] + 8) = v159;
      *(&v142[2] + 8) = v160;
      *(&v142[3] + 8) = v161;
      *(&v142[4] + 8) = v162;
      *(v142 + 8) = v158;
      *&v142[0] = 0;
      *(&v142[5] + 1) = v45;
      sub_1D87A14E4(v142, &qword_1ECA67E50);
      goto LABEL_35;
    }

    goto LABEL_44;
  }

  *(&v142[1] + 8) = v159;
  *(&v142[2] + 8) = v160;
  *(&v142[3] + 8) = v161;
  *(&v142[4] + 8) = v162;
  *(v142 + 8) = v158;
  *&v142[0] = a2;
  v45 = v123;
  *(&v142[5] + 1) = v123;
  if (!v41)
  {
    v137 = v159;
    v138 = v160;
    v139 = v161;
    v140 = v162;
    v136 = v158;
    v135 = a2;
    v141 = v123;
    sub_1D87A0E38(v142, v133, &qword_1ECA67E50);
    sub_1D88C39F8(&v135);
LABEL_44:
    *(&v142[1] + 8) = v159;
    *(&v142[2] + 8) = v160;
    *(&v142[3] + 8) = v161;
    *(&v142[4] + 8) = v162;
    *(v142 + 8) = v158;
    v148 = v154;
    v147 = v153;
    v146 = v152;
    v144 = v150;
    *&v142[0] = a2;
    *(&v142[5] + 1) = v45;
    v143 = v41;
    v149 = v155;
    v145 = v151;
    sub_1D87A14E4(v142, &qword_1ECA65B58);
    goto LABEL_45;
  }

  v138 = *&v156[5];
  v139 = *&v156[7];
  v140 = *&v156[9];
  v135 = v41;
  v141 = v157;
  v136 = *&v156[1];
  v137 = *&v156[3];
  v130 = *&v156[5];
  v131 = *&v156[7];
  v132 = *&v156[9];
  v128 = *&v156[1];
  v129 = *&v156[3];
  v46 = v157;
  sub_1D8943B30(&v164, v133);
  sub_1D87A0E38(v156, v133, &qword_1ECA67E50);
  sub_1D87A0E38(v142, v133, &qword_1ECA67E50);
  if ((sub_1D88E4444(a2, v41) & 1) == 0 || (*&v133[32] = v160, *&v133[48] = v161, *&v133[64] = v162, *v133 = v158, *&v133[16] = v159, *&v126[32] = v130, *&v126[48] = v131, *&v126[64] = v132, *v126 = v128, *&v126[16] = v129, !_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v133, v126)))
  {
    sub_1D87A14E4(v156, &qword_1ECA67E50);
    sub_1D88C39F8(&v164);
    sub_1D87A14E4(&v135, &qword_1ECA67E50);
    *v126 = a2;
    *&v126[24] = v159;
    *&v126[40] = v160;
    *&v126[56] = v161;
    *&v126[72] = v162;
    *&v126[8] = v158;
    v127 = v45;
    sub_1D88C39F8(v126);
    *&v133[24] = v159;
    *&v133[40] = v160;
    *&v133[56] = v161;
    *&v133[72] = v162;
    *&v133[8] = v158;
    *v133 = a2;
    v134 = v45;
    sub_1D87A14E4(v133, &qword_1ECA67E50);
    v12 = v124;
    goto LABEL_45;
  }

  v47 = sub_1D8855170(v45, v46);
  sub_1D87A14E4(v156, &qword_1ECA67E50);
  sub_1D88C39F8(&v164);
  sub_1D87A14E4(&v135, &qword_1ECA67E50);
  *v126 = a2;
  *&v126[24] = v159;
  *&v126[40] = v160;
  *&v126[56] = v161;
  *&v126[72] = v162;
  *&v126[8] = v158;
  v127 = v45;
  sub_1D88C39F8(v126);
  *&v133[24] = v159;
  *&v133[40] = v160;
  *&v133[56] = v161;
  *&v133[72] = v162;
  *&v133[8] = v158;
  *v133 = a2;
  v134 = v45;
  sub_1D87A14E4(v133, &qword_1ECA67E50);
  v12 = v124;
  if ((v47 & 1) == 0)
  {
LABEL_45:
    v53 = v36[3];
    v142[2] = v36[2];
    v142[3] = v53;
    v54 = v36[5];
    v142[4] = v36[4];
    v142[5] = v54;
    v55 = v36[1];
    v142[0] = *v36;
    v142[1] = v55;
    v56 = v184;
    v36[2] = v183;
    v36[3] = v56;
    v57 = v186;
    v36[4] = v185;
    v36[5] = v57;
    v58 = v182;
    *v36 = v181;
    v36[1] = v58;
    sub_1D88C7A20(&v181, &v135);
    sub_1D87A14E4(v142, &qword_1ECA64858);
    *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles) = a2;

    v59 = v186;

    v61 = sub_1D8940658(v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0);
    v62 = sub_1D8B168F0();
    v63 = 0;
    v64 = 1 << *(v61 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & *(v61 + 64);
    v67 = (v64 + 63) >> 6;
    if (v66)
    {
      while (1)
      {
        v68 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
        v69 = v68 | (v63 << 6);
LABEL_54:
        v72 = *(*(v61 + 48) + v69);
        v73 = *(*(*(v61 + 56) + 8 * v69) + 16);
        *(v62 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v69;
        *(v62[6] + v69) = v72;
        *(v62[7] + 8 * v69) = v73;
        v74 = v62[2];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          break;
        }

        v62[2] = v76;
        if (!v66)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
LABEL_49:
      v70 = v63;
      while (1)
      {
        v63 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          __break(1u);
          goto LABEL_97;
        }

        if (v63 >= v67)
        {
          break;
        }

        v71 = *(v61 + 64 + 8 * v63);
        ++v70;
        if (v71)
        {
          v66 = (v71 - 1) & v71;
          v69 = __clz(__rbit64(v71)) | (v63 << 6);
          goto LABEL_54;
        }
      }

      v122 = v59;

      v77 = 0;
      v78 = 0;
      v79 = 1 << *(v45 + 32);
      v80 = -1;
      if (v79 < 64)
      {
        v80 = ~(-1 << v79);
      }

      v81 = v80 & *(v45 + 64);
      v82 = (v79 + 63) >> 6;
      while (v81)
      {
        v83 = v77;
LABEL_66:
        v84 = __clz(__rbit64(v81));
        v81 &= v81 - 1;
        v85 = *(*(*(v45 + 56) + ((v83 << 9) | (8 * v84))) + 16);
        v75 = __OFADD__(v78, v85);
        v78 += v85;
        if (v75)
        {
          __break(1u);
LABEL_69:

          sub_1D88C7A20(&v181, &v135);

          sub_1D88C7A20(&v181, &v135);

          v86 = sub_1D8B151C0();
          v87 = sub_1D8B16200();

          if (os_log_type_enabled(v86, v87))
          {
            v115 = v87;
            v120 = v3;
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            *v133 = v89;
            *v88 = 134219266;
            v90 = a2;
            v91 = *(a2 + 16);
            *(v88 + 4) = v91;
            v116 = v88;
            v117 = v86;
            *(v88 + 12) = 2048;
            v118 = v90;
            v114 = v89;
            if (v91)
            {
              v123 = (*(v119 + 80) + 32) & ~*(v119 + 80);
              v92 = v90 + v123;
              v93 = *(v119 + 72);
              v94 = MEMORY[0x1E69E7CC0];
              do
              {
                sub_1D8917FF0(v92, v12, type metadata accessor for CVBundle);
                if (sub_1D8919304())
                {
                  sub_1D8918058(v12, v125, type metadata accessor for CVBundle);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v135 = v94;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1D87F4074(0, *(v94 + 16) + 1, 1);
                    v94 = v135;
                  }

                  v97 = *(v94 + 16);
                  v96 = *(v94 + 24);
                  if (v97 >= v96 >> 1)
                  {
                    sub_1D87F4074(v96 > 1, v97 + 1, 1);
                    v94 = v135;
                  }

                  *(v94 + 16) = v97 + 1;
                  sub_1D8918058(v125, v94 + v123 + v97 * v93, type metadata accessor for CVBundle);
                  v12 = v124;
                }

                else
                {
                  sub_1D89388D8(v12, type metadata accessor for CVBundle);
                }

                v92 += v93;
                --v91;
              }

              while (v91);
            }

            else
            {
              v94 = MEMORY[0x1E69E7CC0];
            }

            v98 = *(v94 + 16);

            v99 = v116;
            *(v116 + 14) = v98;

            *(v99 + 22) = 2048;
            v100 = *(v122 + 16);
            sub_1D8943A60(&v181);
            *(v99 + 24) = v100;
            sub_1D8943A60(&v181);
            *(v99 + 32) = 2080;
            sub_1D87C4938();
            v101 = sub_1D8B15740();
            v103 = v102;

            v104 = sub_1D89AC714(v101, v103, v133);

            *(v99 + 34) = v104;
            *(v99 + 42) = 2048;
            *(v99 + 44) = v78;
            *(v99 + 52) = 2080;
            v135 = 0;
            *&v136 = 0xE000000000000000;
            sub_1D8B16020();
            if (v121)
            {
              v105 = 0x296C6C6974532820;
            }

            else
            {
              v105 = 0;
            }

            if (v121)
            {
              v106 = 0xE800000000000000;
            }

            else
            {
              v106 = 0xE000000000000000;
            }

            MEMORY[0x1DA71EFA0](v105, v106);

            v107 = sub_1D89AC714(v135, v136, v133);

            *(v99 + 54) = v107;
            v108 = v117;
            _os_log_impl(&dword_1D8783000, v117, v115, "BundleManager.Output produced: %ld bundles (%ld fully refined), %ld total tracks by type: %s, %ld detection requests @ t=%s", v99, 0x3Eu);
            v109 = v114;
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v109, -1, -1);
            MEMORY[0x1DA721330](v99, -1, -1);
          }

          else
          {
            sub_1D8943A60(&v181);
            sub_1D8943A60(&v181);

            swift_bridgeObjectRelease_n();
          }

          sub_1D8AF5F70(&v164);
          goto LABEL_90;
        }
      }

      while (1)
      {
        v83 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          break;
        }

        if (v83 >= v82)
        {
          goto LABEL_69;
        }

        v81 = *(v45 + 64 + 8 * v83);
        ++v77;
        if (v81)
        {
          v77 = v83;
          goto LABEL_66;
        }
      }

LABEL_97:
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_35:
  sub_1D8943B30(&v164, v142);
  v18 = sub_1D8B151C0();
  LOBYTE(v19) = sub_1D8B16200();
  sub_1D88C39F8(&v164);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v135 = v21;
    *v20 = 136315138;
    v48 = BYTE8(v167);
    v49 = 0xE000000000000000;
    *&v142[0] = 0;
    *(&v142[0] + 1) = 0xE000000000000000;
    sub_1D8B16020();
    if (v48)
    {
      v50 = 0x296C6C6974532820;
    }

    else
    {
      v50 = 0;
    }

    if (v48)
    {
      v49 = 0xE800000000000000;
    }

    MEMORY[0x1DA71EFA0](v50, v49);

    sub_1D88C39F8(&v164);
    v51 = sub_1D89AC714(*&v142[0], *(&v142[0] + 1), &v135);

    *(v20 + 4) = v51;
    v52 = "Squelched an unneeded update @ t=%s";
    goto LABEL_94;
  }

LABEL_90:
  sub_1D88C39F8(&v164);
}