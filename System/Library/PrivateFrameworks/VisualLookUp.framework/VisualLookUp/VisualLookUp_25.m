uint64_t sub_1D9B7DDB8(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig(0);
  sub_1D9C7D3CC();
  sub_1D9B7D860(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9B7DE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  a3[3] = &type metadata for ImageHandler;
  a3[4] = &off_1F552B478;
  v7 = swift_allocObject();
  *a3 = v7;
  v7[5] = a1;
  v7[6] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  return (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
}

void sub_1D9B7DF38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(a2 + 8);
  if (v8() == 1)
  {
    *(a3 + 24) = a1;
    *(a3 + 32) = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  }

  else
  {
    v10 = (*(a2 + 24))(a1, a2);
    if (!v4)
    {
      v11 = v10;
      v12 = (v8)(a1, a2);
      v13 = sub_1D9A55898(v12);

      *(a3 + 24) = &type metadata for PixelImage;
      *(a3 + 32) = &off_1F5533940;
      *a3 = v13;
      *(a3 + 8) = 1;
    }
  }
}

__CVBuffer *sub_1D9B7E064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v6 = *v3;
  v7 = *(v5 + 2);
  if (v7 == 1)
  {
    *(a3 + 24) = a1;
    *(a3 + 32) = a2;
    *a3 = v6;
    *(a3 + 8) = 1;
    return v6;
  }

  else
  {
    result = sub_1D9A55898(v7);
    if (!v4)
    {
      *(a3 + 24) = a1;
      *(a3 + 32) = a2;
      *a3 = result;
      *(a3 + 8) = 1;
    }
  }

  return result;
}

uint64_t sub_1D9B7E0E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for MLModelInfo(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D9C7D8DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v2 + OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_lock);
  os_unfair_lock_lock(v12 + 4);
  v13 = OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_metalDevice;
  v14 = *(v2 + OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_metalDevice);
  if (a1)
  {
    if (v14)
    {
      v15 = v14 == a1;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      goto LABEL_9;
    }

LABEL_7:
    os_unfair_lock_unlock(v12 + 4);
    return 0;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_9:
  v33 = v6;
  v34 = v4;
  v35 = v12;
  static Logger.argos.getter(v11);
  v17 = sub_1D9C7D8BC();
  v18 = sub_1D9C7E09C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D9962000, v17, v18, "Updating model creation due to MetalDevice switch", v19, 2u);
    MEMORY[0x1DA7405F0](v19, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  *(v2 + v13) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v32 = *(v2 + 16);
  v20 = *(v2 + OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_modelValidator);
  v21 = *(v2 + OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_modelValidator + 8);
  v22 = *(v2 + OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_engineModel);
  v23 = v36;
  sub_1D99A3FE8(v2 + OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_modelInfo, v36);
  v24 = (*(v33 + 80) + 17) & ~*(v33 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v32;
  sub_1D9B8001C(v23, v27 + v24, type metadata accessor for MLModelInfo);
  v28 = (v27 + v25);
  *v28 = v20;
  v28[1] = v21;
  *(v27 + v26) = a1;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v29 = v22[14];
  swift_unknownObjectRetain();
  sub_1D9B7FED8(v20);
  os_unfair_lock_lock(v29 + 4);
  v30 = v22[9];
  v22[9] = sub_1D9B7FE20;
  v22[10] = v27;
  sub_1D9979BF4(v30);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v39 = -1;
  swift_beginAccess();

  sub_1D9B7FEE8(v37, (v22 + 3));
  swift_endAccess();
  os_unfair_lock_unlock(v29 + 4);

  os_unfair_lock_unlock(v35 + 4);
  return 1;
}

void sub_1D9B7E48C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X8>)
{
  v17 = a3;
  v18 = a4;
  v19 = a1;
  v20 = a6;
  v8 = sub_1D9C7D8DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.argos.getter(v11);
  v12 = sub_1D9C7D8BC();
  v13 = sub_1D9C7E09C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v16 = a2;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1D9962000, v12, v13, "Creating model", v14, 2u);
    a2 = v16;
    MEMORY[0x1DA7405F0](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_1D9B7F558(a2, a5, v20);
    }

    else
    {
      sub_1D9B7F878(a2, a5, v20);
    }
  }

  else
  {
    sub_1D9B7EAB8(a2, v17, v18, a5, v20);
  }
}

uint64_t *sub_1D9B7E678(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *v7;
  v29 = a3;
  v30 = v13;
  v14 = type metadata accessor for MLModelInfo(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51500);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v7 + v19) = v20;
  *(v7 + OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_metalDevice) = 0;
  *(v7 + 16) = v18;
  sub_1D99A3FE8(a2, v7 + OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_modelInfo);
  v21 = (v7 + OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_modelValidator);
  *v21 = a5;
  v21[1] = a6;
  v22 = 4;
  if ((a4 & 1) == 0)
  {
    v22 = v29;
  }

  v29 = v22;
  sub_1D99A3FE8(a2, &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v15 + 80) + 17) & ~*(v15 + 80);
  v24 = (v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  sub_1D9B8001C(v17, v25 + v23, type metadata accessor for MLModelInfo);
  v26 = (v25 + v24);
  *v26 = a5;
  v26[1] = a6;
  *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53BD0);
  swift_allocObject();
  sub_1D9B7FED8(a5);
  v27 = sub_1D9C1A8D8(v29, sub_1D9B80084, v25);
  sub_1D99A404C(a2);
  *(v7 + OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_engineModel) = v27;
  return v7;
}

void sub_1D9B7E8D0(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t *a5@<X8>)
{
  v17 = a3;
  v18 = a4;
  v19 = a1;
  v7 = sub_1D9C7D8DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.argos.getter(v10);
  v11 = sub_1D9C7D8BC();
  v12 = sub_1D9C7E09C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16 = a5;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_1D9962000, v11, v12, "Creating model", v13, 2u);
    a5 = v16;
    MEMORY[0x1DA7405F0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_1D9B7F558(a2, 0, a5);
    }

    else
    {
      sub_1D9B7F878(a2, 0, a5);
    }
  }

  else
  {
    sub_1D9B7EAB8(a2, v17, v18, 0, a5);
  }
}

void sub_1D9B7EAB8(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v111 = a3;
  v112 = a2;
  v108 = a5;
  v7 = type metadata accessor for MLModelInfo(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v105 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v104 = &v94 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v102 = &v94 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v103 = &v94 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v94 - v16;
  v17 = sub_1D9C7D8DC();
  v109 = *(v17 - 8);
  v110 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v113 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v106 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v94 - v22;
  v23 = sub_1D9C7B80C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99A81F0(*(a1 + *(v7 + 32)), v116);
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  v27 = sub_1D9AFD4B8(v116, 0);
  v28 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  [v28 setPreferredMetalDevice_];
  sub_1D9A0835C(0, &qword_1ECB53BB8);
  v29 = *(v7 + 20);
  (*(v24 + 16))(v26, a1 + v29, v23);
  v30 = v28;
  v31 = v117;
  v32 = sub_1D9C1F49C(v26, v30);
  if (v31)
  {

    v33 = v30;
LABEL_4:

    return;
  }

  v34 = v32;
  v98 = v29;
  v35 = v113;
  v117 = a1;
  v100 = v7;
  v99 = v23;

  sub_1D9A0835C(0, &unk_1ECB53BC0);
  v33 = v34;
  v36 = sub_1D9B7FF58(v33);

  v97 = v27;
  sub_1D9AFCCA4();
  v37 = v112;
  if (v112)
  {

    if ((v37(v33) & 1) == 0)
    {
      v95 = v36;
      v77 = v106;
      static Logger.argos.getter(v106);
      v78 = v102;
      sub_1D99A3FE8(v117, v102);
      v79 = sub_1D9C7D8BC();
      v80 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v96 = v30;
        v82 = v81;
        v83 = swift_slowAlloc();
        v114 = v83;
        *v82 = 136315138;
        sub_1D99AB1D0();
        v84 = sub_1D9C7E7AC();
        v86 = v85;
        sub_1D99A404C(v78);
        v87 = sub_1D9A0E224(v84, v86, &v114);

        *(v82 + 4) = v87;
        _os_log_impl(&dword_1D9962000, v79, v80, "MLModel validation failed for %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
        MEMORY[0x1DA7405F0](v83, -1, -1);
        v88 = v82;
        v30 = v96;
        MEMORY[0x1DA7405F0](v88, -1, -1);

        (*(v109 + 8))(v106, v110);
      }

      else
      {

        sub_1D99A404C(v78);
        (*(v109 + 8))(v77, v110);
      }

      v114 = 0;
      v115 = 0xE000000000000000;
      sub_1D9C7E40C();

      v114 = 0xD00000000000001ELL;
      v115 = 0x80000001D9CAB440;
      sub_1D99AB1D0();
      v90 = sub_1D9C7E7AC();
      MEMORY[0x1DA73DF90](v90);

      v91 = v114;
      v92 = v115;
      sub_1D99A182C();
      swift_allocError();
      *v93 = v91;
      *(v93 + 8) = v92;
      *(v93 + 16) = 2;
      swift_willThrow();
      sub_1D9979BF4(v112);

      v30 = v95;
      goto LABEL_4;
    }

    v96 = v30;
    static Logger.argos.getter(v107);
    v38 = v117;
    v39 = v101;
    sub_1D99A3FE8(v117, v101);
    v40 = v103;
    sub_1D99A3FE8(v38, v103);
    v41 = sub_1D9C7D8BC();
    v42 = sub_1D9C7E09C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v95 = v36;
      v44 = v43;
      v45 = swift_slowAlloc();
      v117 = v33;
      v113 = v45;
      v114 = v45;
      *v44 = 136315394;
      v46 = (v39 + *(v100 + 24));
      LODWORD(v106) = v42;
      v47 = *v46;
      v48 = v46[1];

      sub_1D99A404C(v39);
      v49 = sub_1D9A0E224(v47, v48, &v114);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2080;
      sub_1D99AB1D0();
      v50 = sub_1D9C7E7AC();
      v52 = v51;
      sub_1D99A404C(v40);
      v53 = sub_1D9A0E224(v50, v52, &v114);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_1D9962000, v41, v106, "Loaded CoreML Model with model urn %s from %s", v44, 0x16u);
      v54 = v113;
      swift_arrayDestroy();
      v33 = v117;
      MEMORY[0x1DA7405F0](v54, -1, -1);
      v55 = v44;
      v36 = v95;
      MEMORY[0x1DA7405F0](v55, -1, -1);
    }

    else
    {

      sub_1D99A404C(v40);
      sub_1D99A404C(v39);
    }

    (*(v109 + 8))(v107, v110);
    v30 = v96;
    v89 = v108;
    v108[3] = &type metadata for VisionModel;
    v89[4] = &off_1F55305B0;
    sub_1D9979BF4(v112);
  }

  else
  {
    static Logger.argos.getter(v35);
    v56 = v117;
    v57 = v104;
    sub_1D99A3FE8(v117, v104);
    v58 = v105;
    sub_1D99A3FE8(v56, v105);
    v59 = sub_1D9C7D8BC();
    LODWORD(v112) = sub_1D9C7E09C();
    v60 = os_log_type_enabled(v59, v112);
    v61 = v100;
    if (v60)
    {
      v62 = swift_slowAlloc();
      v95 = v36;
      v63 = v62;
      v64 = swift_slowAlloc();
      v117 = v33;
      v65 = v64;
      v114 = v64;
      *v63 = 136315394;
      v66 = (v57 + *(v61 + 24));
      v111 = v59;
      v96 = v30;
      v67 = *v66;
      v68 = v66[1];

      sub_1D99A404C(v57);
      v69 = sub_1D9A0E224(v67, v68, &v114);

      *(v63 + 4) = v69;
      *(v63 + 12) = 2080;
      sub_1D99AB1D0();
      v70 = sub_1D9C7E7AC();
      v72 = v71;
      sub_1D99A404C(v58);
      v73 = sub_1D9A0E224(v70, v72, &v114);
      v30 = v96;

      *(v63 + 14) = v73;
      v74 = v111;
      _os_log_impl(&dword_1D9962000, v111, v112, "Loaded CoreML Model with model urn %s from %s", v63, 0x16u);
      swift_arrayDestroy();
      v75 = v65;
      v33 = v117;
      MEMORY[0x1DA7405F0](v75, -1, -1);
      v76 = v63;
      v36 = v95;
      MEMORY[0x1DA7405F0](v76, -1, -1);
    }

    else
    {

      sub_1D99A404C(v58);
      sub_1D99A404C(v57);
    }

    (*(v109 + 8))(v113, v110);
    v89 = v108;
    v108[3] = &type metadata for VisionModel;
    v89[4] = &off_1F55305B0;
  }

  *v89 = v36;
}

uint64_t sub_1D9B7F558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7D8DC();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EspressoModel(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99A3FE8(a1, v14);
  v31 = v12;
  *&v14[*(v12 + 20)] = a2;
  swift_unknownObjectRetain();
  static Logger.argos.getter(v11);
  sub_1D99A3FE8(a1, v8);
  v15 = sub_1D9C7D8BC();
  v16 = sub_1D9C7E09C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v9;
    v20 = v19;
    v33 = v19;
    *v18 = 136315138;
    sub_1D9C7B80C();
    v30 = a3;
    sub_1D99AB1D0();
    v21 = sub_1D9C7E7AC();
    v23 = v22;
    sub_1D99A404C(v8);
    v24 = sub_1D9A0E224(v21, v23, &v33);
    a3 = v30;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1D9962000, v15, v16, "Loaded Espresso model from %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x1DA7405F0](v20, -1, -1);
    MEMORY[0x1DA7405F0](v18, -1, -1);

    (*(v32 + 8))(v11, v28);
  }

  else
  {

    sub_1D99A404C(v8);
    (*(v32 + 8))(v11, v9);
  }

  a3[3] = v31;
  a3[4] = &off_1F5533558;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_1D9B8001C(v14, boxed_opaque_existential_1, type metadata accessor for EspressoModel);
}

uint64_t sub_1D9B7F878@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = a3;
  v34 = a2;
  v4 = sub_1D9C7D8DC();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for MLModelInfo(0);
  v7 = MEMORY[0x1EEE9AC00](v38);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v32 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  sub_1D99A3FE8(a1, &v32 - v13);
  if (qword_1EDD2BCB8 != -1)
  {
    swift_once();
  }

  v15 = dword_1EDD417B0;
  v16 = type metadata accessor for E5Model();
  v17 = swift_allocObject();
  sub_1D99A3FE8(v14, v17 + OBJC_IVAR____TtC12VisualLookUp7E5Model_modelInfo);
  sub_1D9C7B7AC();
  sub_1D99A404C(v14);
  *(v17 + OBJC_IVAR____TtC12VisualLookUp7E5Model_borderFillBGRA) = v15;
  *(v17 + OBJC_IVAR____TtC12VisualLookUp7E5Model_preferredMetalDevice) = v34;
  swift_unknownObjectRetain();
  static Logger.argos.getter(v6);
  sub_1D99A3FE8(a1, v12);
  sub_1D99A3FE8(a1, v9);
  v18 = sub_1D9C7D8BC();
  v19 = sub_1D9C7E09C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v6;
    v21 = v20;
    v33 = swift_slowAlloc();
    v39 = v33;
    *v21 = 136315394;
    v22 = *v12;
    v23 = v12[1];

    sub_1D99A404C(v12);
    v24 = sub_1D9A0E224(v22, v23, &v39);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    sub_1D9C7B80C();
    sub_1D99AB1D0();
    v25 = sub_1D9C7E7AC();
    v27 = v26;
    sub_1D99A404C(v9);
    v28 = sub_1D9A0E224(v25, v27, &v39);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_1D9962000, v18, v19, "Loaded E5 model with name %s from %s", v21, 0x16u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v29, -1, -1);
    MEMORY[0x1DA7405F0](v21, -1, -1);

    result = (*(v35 + 8))(v34, v36);
  }

  else
  {

    sub_1D99A404C(v9);
    sub_1D99A404C(v12);
    result = (*(v35 + 8))(v6, v36);
  }

  v31 = v37;
  v37[3] = v16;
  v31[4] = &off_1F552E2C0;
  *v31 = v17;
  return result;
}

uint64_t sub_1D9B7FC64()
{
  sub_1D99A404C(v0 + OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_modelInfo);
  sub_1D9979BF4(*(v0 + OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_modelValidator));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CachedCoreMLModelProvider()
{
  result = qword_1EDD32428;
  if (!qword_1EDD32428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B7FD60()
{
  result = type metadata accessor for MLModelInfo(319);
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

void sub_1D9B7FE20(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for MLModelInfo(0) - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D9B7E48C(*(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1D9B7FED8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D9B7FEE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53BB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1D9B7FF58(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() modelForMLModel:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1D9C7B70C();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1D9B8001C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D9B80084(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for MLModelInfo(0) - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1D9B7E8D0(*(v1 + 16), v1 + v4, *v5, *(v5 + 8), a1);
}

void *sub_1D9B80170(unint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1D9C7E50C();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1D99FE298(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = MEMORY[0x1DA73E610](v9, a1);
        v20 = v7;
        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1D99FE298((v11 > 1), v12 + 1, 1);
          v7 = v20;
        }

        ++v9;
        v18 = a2(0);
        v19 = a3;
        *&v17 = v10;
        *(v7 + 16) = v12 + 1;
        sub_1D9979B9C(&v17, v7 + 40 * v12 + 32);
      }

      while (v6 != v9);
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v14 = *v13;
        v20 = v7;
        v15 = *(v7 + 16);
        v16 = *(v7 + 24);

        if (v15 >= v16 >> 1)
        {
          sub_1D99FE298((v16 > 1), v15 + 1, 1);
          v7 = v20;
        }

        v18 = a2(0);
        v19 = a3;
        *&v17 = v14;
        *(v7 + 16) = v15 + 1;
        sub_1D9979B9C(&v17, v7 + 40 * v15 + 32);
        ++v13;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1D9B8033C(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1D9C7E50C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v19 = MEMORY[0x1E69E7CC0];
  result = sub_1D99FE298(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x1DA73E610](v7, a1);
        v19 = v5;
        v10 = *(v5 + 16);
        v9 = *(v5 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1D99FE298((v9 > 1), v10 + 1, 1);
          v5 = v19;
        }

        ++v7;
        v17 = sub_1D9A0835C(0, a2);
        v18 = &off_1F5530540;
        *&v16 = v8;
        *(v5 + 16) = v10 + 1;
        sub_1D9979B9C(&v16, v5 + 40 * v10 + 32);
      }

      while (v4 != v7);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *v11;
        v19 = v5;
        v14 = *(v5 + 16);
        v13 = *(v5 + 24);
        v15 = v12;
        if (v14 >= v13 >> 1)
        {
          sub_1D99FE298((v13 > 1), v14 + 1, 1);
          v5 = v19;
        }

        v17 = sub_1D9A0835C(0, a2);
        v18 = &off_1F5530540;
        *&v16 = v15;
        *(v5 + 16) = v14 + 1;
        sub_1D9979B9C(&v16, v5 + 40 * v14 + 32);
        ++v11;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B80518(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1D9C7E4AC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1D99A579C(i, v5);
    sub_1D9A0835C(0, &unk_1EDD2A618);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1D9C7E48C();
    sub_1D9C7E4BC();
    sub_1D9C7E4CC();
    sub_1D9C7E49C();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1D9B8063C(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1D9C7E4AC();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D9C7E50C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1DA73E610](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D9C7E48C();
      sub_1D9C7E4BC();
      sub_1D9C7E4CC();
      sub_1D9C7E49C();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D9C7E50C();
    sub_1D9C7E4AC();
  }

  return v8;
}

uint64_t sub_1D9B807D0@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a2;
  v33 = a4;
  v7 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = sub_1D9C7D91C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = 0xD00000000000001DLL;
  v35[1] = 0x80000001D9CA47C0;
  v35[2] = "VI: OCR";
  v35[3] = 7;
  v36 = 2;
  v16 = type metadata accessor for TextDetectionRequestFactory.Input();
  v17 = *(a1 + *(v16 + 24));
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  v18 = sub_1D9AFD4B8(v35, v17);

  v19 = swift_allocObject();
  v19[2] = v32;
  v19[3] = a3;
  v19[4] = v18;
  v19[5] = v7;
  v20 = objc_allocWithZone(MEMORY[0x1E6984628]);
  aBlock[4] = sub_1D9B80D50;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9BD99E0;
  aBlock[3] = &block_descriptor_15;
  v21 = _Block_copy(aBlock);

  v22 = [v20 initWithCompletionHandler_];
  _Block_release(v21);
  [v22 setRegionOfInterest_];
  sub_1D9A687BC(a1 + *(v16 + 20), v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D9B80D74(v12);
  }

  else
  {
    v23 = v30;
    (*(v14 + 32))(v30, v12, v13);
    v24 = v31;
    (*(v14 + 16))(v31, v23, v13);
    (*(v14 + 56))(v24, 0, 1, v13);
    sub_1D9C7E26C();
    sub_1D9B80D74(v24);
    (*(v14 + 8))(v23, v13);
  }

  [v22 setMaximumCandidateCount_];
  v25 = [objc_opt_self() preferredLanguages];
  if (!v25)
  {
    sub_1D9C7DF2C();
    v25 = sub_1D9C7DF1C();
  }

  [v22 setRecognitionLanguages_];

  [v22 setUsesLanguageDetection_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D9C88F90;
  *(v26 + 32) = v22;
  v27 = v33;
  v33[3] = &type metadata for TextDetectionModelRequest;
  v27[4] = &off_1F5533528;

  *v27 = v26;
  return result;
}

uint64_t sub_1D9B80C70(void *a1, id a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    sub_1D9B80DDC(a1, a3);
  }

  return sub_1D9AFCCA4();
}

uint64_t type metadata accessor for TextDetectionRequestFactory.Input()
{
  result = qword_1EDD2B138;
  if (!qword_1EDD2B138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9B80D74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D9B80DDC(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v2 = [a1 results];
  if (v2 && (v3 = v2, sub_1D9A0835C(0, &qword_1ECB52488), v4 = sub_1D9C7DF2C(), v3, v5 = sub_1D9B8063C(v4), , v5))
  {
    v48 = MEMORY[0x1E69E7CC0];
    v6 = v5 & 0xFFFFFFFFFFFFFF8;
    v40 = v5;
    if (v5 >> 62)
    {
      goto LABEL_36;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v9 = 0;
      v45 = v40 & 0xC000000000000001;
      v44 = v40 + 32;
      v42 = v7;
      v43 = v6;
      while (1)
      {
        if (v45)
        {
          v10 = MEMORY[0x1DA73E610](v9, v40);
        }

        else
        {
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_34;
          }

          v10 = *(v44 + 8 * v9);
        }

        v11 = v10;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v7 = sub_1D9C7E50C();
          goto LABEL_5;
        }

        v13 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1D9C88F90;
        *(v14 + 32) = v11;
        sub_1D9A0835C(0, &qword_1ECB53BE0);
        v15 = v11;
        v16 = sub_1D9C7DF1C();

        v17 = [v13 textBlockWithDocumentObservations_];

        v18 = [v17 textAnnotations];
        sub_1D9A0835C(0, &qword_1ECB53218);
        v19 = sub_1D9C7DF2C();

        if (v19 >> 62)
        {
          v20 = sub_1D9C7E50C();
          if (!v20)
          {
LABEL_25:

            v22 = v8;
            goto LABEL_7;
          }
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v20)
          {
            goto LABEL_25;
          }
        }

        sub_1D99FE5B8(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
          goto LABEL_35;
        }

        v46 = v17;
        v47 = v15;
        v21 = 0;
        v22 = v8;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x1DA73E610](v21, v19);
          }

          else
          {
            v23 = *(v19 + 8 * v21 + 32);
          }

          v24 = v23;
          v25 = [v23 text];
          v26 = sub_1D9C7DC7C();
          v28 = v27;

          [v24 confidence];
          v30 = v29;
          [v24 normalizedBoundingBox];
          v52.origin.x = 0.0;
          v52.origin.y = 0.0;
          v52.size.width = 1.0;
          v52.size.height = 1.0;
          v51 = CGRectIntersection(v50, v52);
          x = v51.origin.x;
          y = v51.origin.y;
          width = v51.size.width;
          height = v51.size.height;

          v36 = *(v22 + 16);
          v35 = *(v22 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_1D99FE5B8((v35 > 1), v36 + 1, 1);
          }

          ++v21;
          *(v22 + 16) = v36 + 1;
          v37 = v22 + 56 * v36;
          *(v37 + 32) = v26;
          *(v37 + 40) = v28;
          *(v37 + 48) = v30;
          *(v37 + 56) = x;
          *(v37 + 64) = y;
          *(v37 + 72) = width;
          *(v37 + 80) = height;
        }

        while (v20 != v21);

        v7 = v42;
        v6 = v43;
        v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
        sub_1D9A1919C(v22);
        if (v9 == v7)
        {
          v8 = v48;
          break;
        }
      }
    }

    a2(v8, 0);
  }

  else
  {
    sub_1D99A182C();
    v38 = swift_allocError();
    *v39 = 0xD00000000000001BLL;
    *(v39 + 8) = 0x80000001D9CAB4B0;
    *(v39 + 16) = 4;
    a2(v38, 1);
  }
}

void sub_1D9B812EC()
{
  sub_1D9B57AFC(319, qword_1EDD2A868, MEMORY[0x1E695FD20]);
  if (v0 <= 0x3F)
  {
    sub_1D9B57AFC(319, qword_1EDD2BF10, type metadata accessor for MetricsBucket);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9B813E8(uint64_t a1)
{
  v2 = v1;
  v15[0] = 0x656E69676E454C4DLL;
  v15[1] = 0xE800000000000000;
  v15[2] = "EspressoRequestHandler.perform";
  v15[3] = 30;
  v16 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  sub_1D9AFD4B8(v15, 0);
  v14 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      sub_1D99A17C8(v5, v13);
      sub_1D9979B9C(v13, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51140);
      type metadata accessor for EspressoRequest(0);
      if ((swift_dynamicCast() & 1) != 0 && v12)
      {
        MEMORY[0x1DA73E0E0]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D9C7DF4C();
        }

        sub_1D9C7DF6C();
      }

      v5 += 40;
      --v4;
    }

    while (v4);
  }

  *&v13[0] = sub_1D9A5F58C(v6);
  sub_1D9B81604(v13);

  v8 = *&v13[0];
  MEMORY[0x1EEE9AC00](v7);
  v10[2] = v2;
  sub_1D9B1858C(sub_1D9B852E0, v10, v8);

  sub_1D9AFCCA4();
}

uint64_t sub_1D9B81604(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D99E9A04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D9B843A0(v6);
  return sub_1D9C7E49C();
}

uint64_t sub_1D9B81680()
{
  sub_1D9B8512C(v0 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model, type metadata accessor for EspressoModel);

  sub_1D9979BF4(*(v0 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_completionHandler));

  return swift_deallocClassInstance();
}

uint64_t sub_1D9B81774()
{
  result = type metadata accessor for EspressoModel(319);
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

uint64_t sub_1D9B81894()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52410);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9C85660;
  *(v2 + 56) = type metadata accessor for EspressoRequest(0);
  *(v2 + 64) = &off_1F5533560;
  *(v2 + 32) = v1;

  return v2;
}

uint64_t sub_1D9B81908()
{
  v0 = sub_1D9C7E0EC();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1D9C7DA4C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D9C7E10C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9A0835C(0, &qword_1EDD35490);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_1D9C7DA3C();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1D9A5FB50(&qword_1EDD354A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52460);
  sub_1D9A5FB98();
  sub_1D9C7E34C();
  result = sub_1D9C7E13C();
  qword_1EDD32ED0 = result;
  return result;
}

uint64_t sub_1D9B81B48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53C60);
  v0 = swift_allocObject();
  v1 = sub_1D9A47554(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53C68);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 24) = v2;
  result = sub_1D9B76440();
  qword_1EDD32EE8 = result;
  return result;
}

uint64_t sub_1D9B81BD0()
{
  type metadata accessor for EspressoRequestHandler.ScaledBufferCache(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51500);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  v2 = OBJC_IVAR____TtCV12VisualLookUp22EspressoRequestHandler17ScaledBufferCache_cache;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53C38);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  result = sub_1D9B76440();
  qword_1ECB53C00 = result;
  return result;
}

uint64_t sub_1D9B81C8C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1EDD32EC8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDD32ED0;
  sub_1D9B852FC(a2, v13);
  v5 = swift_allocObject();
  v6 = v13[3];
  *(v5 + 48) = v13[2];
  *(v5 + 64) = v6;
  *(v5 + 80) = v13[4];
  v7 = v13[1];
  *(v5 + 16) = v13[0];
  *(v5 + 32) = v7;
  *(v5 + 96) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D9B85334;
  *(v8 + 24) = v5;
  v12[4] = sub_1D9B85340;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D9A5C074;
  v12[3] = &block_descriptor_16;
  v9 = _Block_copy(v12);

  dispatch_sync(v4, v9);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9B81E44(uint64_t a1, char *a2)
{
  v3 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v3);
  result = sub_1D9B82164(a2);
  v5 = *&a2[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_completionHandler];
  if (v5)
  {
    return v5(a2, 0);
  }

  return result;
}

uint64_t sub_1D9B82164(char *a1)
{
  v3 = v2;
  v4 = v1;
  v71[5] = *MEMORY[0x1E69E9840];
  v6 = sub_1D9C7D8DC();
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64[0] = 0x656E69676E454C4DLL;
  v64[1] = 0xE800000000000000;
  v64[2] = "EspressoRequestHandler.performOne";
  v64[3] = 33;
  v65 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  v9 = sub_1D9AFD4B8(v64, 0);
  if (*&a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_outputs])
  {
    v10 = *&a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_outputs];
  }

  else
  {
    v10 = sub_1D99AA820();
  }

  v11 = qword_1EDD32EE0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = v3;
  v13 = sub_1D9A5CE6C(a1, v10);
  if (v3)
  {
  }

  else
  {
    v14 = *&a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_features];
    v60 = v9;
    if (v14)
    {
      v59 = a1;
      v15 = v13;
      sub_1D9A0835C(0, &qword_1EDD2C450);
      v16 = sub_1D9C7DB3C();
      v71[0] = 0;
      v17 = [v15 setFeatures:v16 error:v71];

      if (!v17)
      {
        v34 = v71[0];

        sub_1D9C7B70C();

        swift_willThrow();
        goto LABEL_42;
      }

      v18 = v71[0];
      v13 = v15;
      v3 = v12;
      a1 = v59;
    }

    v59 = v13;
    if ([v13 isImageRequired])
    {
      sub_1D99AB100(v4, &v68, &qword_1ECB51B30);
      if (!v69)
      {

        sub_1D99A6AE0(&v68, &qword_1ECB51B30);
        sub_1D99A182C();
        swift_allocError();
        *v35 = 0xD00000000000001ELL;
        *(v35 + 8) = 0x80000001D9CAB6A0;
        *(v35 + 16) = 7;
        swift_willThrow();

        goto LABEL_42;
      }

      sub_1D9979B9C(&v68, v71);
      sub_1D99AB100(v4 + 40, &v66, &unk_1ECB53C50);
      if (!*(&v67 + 1))
      {

        sub_1D99A6AE0(&v66, &unk_1ECB53C50);
        sub_1D99A182C();
        swift_allocError();
        *v38 = 0xD000000000000020;
        *(v38 + 8) = 0x80000001D9CAB6C0;
        *(v38 + 16) = 6;
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        goto LABEL_42;
      }

      sub_1D9979B9C(&v66, &v68);
      if (qword_1ECB50CE8 != -1)
      {
        swift_once();
      }

      v19 = &a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model];
      v39 = sub_1D9B82CBC(&a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model]);
      v40 = v19[*(type metadata accessor for MLModelInfo(0) + 32)];
      if (v40 <= 1 && v40)
      {
        v61 = v10;
      }

      else
      {
        v41 = sub_1D9C7E7DC();

        if ((v41 & 1) == 0)
        {
          v43 = v69;
          v42 = v70;
          __swift_project_boxed_opaque_existential_1(&v68, v69);
          if (qword_1EDD2BCB8 != -1)
          {
            swift_once();
          }

          v44 = *&a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_vnScalingMode];
          v45 = *&a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest + 16];
          v66 = *&a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest];
          v67 = v45;
          (*(v42 + 8))(v40, v71, v39, dword_1EDD417B0, v44, &v66, *&a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_metricsBucket], v43, v42);
        }

        v61 = v10;
      }

      sub_1D99A7E00(v40, v62);
      v46 = *&a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_metricsBucket];
      swift_allocObject();

      sub_1D9AFD4B8(v62, v46);

      CVPixelBufferLockBaseAddress(v39, 0);
      *&v66 = 0;
      v47 = v59;
      v48 = [v59 setFrame:v39 error:&v66];
      v49 = v66;
      if (!v48 || (*&v66 = 0, v50 = v49, v51 = [v47 processWithError_], v52 = v66, !v51))
      {
        v55 = v66;

        sub_1D9C7B70C();

        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        __swift_destroy_boxed_opaque_existential_0Tm(&v68);
        goto LABEL_42;
      }

      v53 = v51;
      sub_1D9A0835C(0, &qword_1EDD2C450);
      v31 = sub_1D9C7DB4C();
      v54 = v52;

      CVPixelBufferUnlockBaseAddress(v39, 0);
      sub_1D9AFCCA4();

      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      __swift_destroy_boxed_opaque_existential_0Tm(&v68);
      v10 = v61;
    }

    else
    {
      v58 = v3;
      sub_1D99AB100(v4, v71, &qword_1ECB51B30);
      v20 = v71[3];
      sub_1D99A6AE0(v71, &qword_1ECB51B30);
      if (v20)
      {
        static Logger.argos.getter(v8);
        v21 = sub_1D9C7D8BC();
        v22 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_1D9962000, v21, v22, "WARNING: no image required for model input, and is ignored, yet one was supplied.", v23, 2u);
          MEMORY[0x1DA7405F0](v23, -1, -1);
        }

        (*(v61 + 8))(v8, v6);
      }

      v24 = &a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model];
      v25 = type metadata accessor for MLModelInfo(0);
      sub_1D99A7E00(v24[*(v25 + 32)], v63);
      v26 = *&a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_metricsBucket];
      swift_allocObject();

      sub_1D9AFD4B8(v63, v26);

      v71[0] = 0;
      v27 = v59;
      v28 = [v59 processWithError_];
      v29 = v71[0];
      if (!v28)
      {
        v36 = v71[0];

        sub_1D9C7B70C();

        swift_willThrow();

        goto LABEL_42;
      }

      v30 = v28;
      sub_1D9A0835C(0, &qword_1EDD2C450);
      v31 = sub_1D9C7DB4C();
      v32 = v29;

      sub_1D9AFCCA4();

      v3 = v58;
    }

    type metadata accessor for EngineResult();
    swift_allocObject();
    v33 = sub_1D9BDC864(v10, v31);
    if (v3)
    {
    }

    else
    {
      v37 = v33;

      *&a1[OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_engineResult] = v37;
    }
  }

LABEL_42:
  sub_1D9AFCCA4();
}

uint64_t sub_1D9B82CBC(uint64_t a1)
{
  v3 = type metadata accessor for MLModelInfo(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v111 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v116 = &v95 - v6;
  v109 = sub_1D9C7D8DC();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v115 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53C40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v103 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v95 - v11;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53C38);
  v112 = *(v113 - 8);
  v13 = MEMORY[0x1EEE9AC00](v113);
  v98 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v106 = &v95 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v101 = &v95 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v95 - v19;
  v20 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v110 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v107 = &v95 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v105 = &v95 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v99 = &v95 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v100 = &v95 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v95 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v95 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v95 - v40;
  v121[0] = 0x656E69676E454C4DLL;
  v121[1] = 0xE800000000000000;
  v121[2] = "ScaledBufferCache.getBuffer";
  v121[3] = 27;
  v122 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  v123 = sub_1D9AFD4B8(v121, 0);
  sub_1D9B7667C();
  v114 = v1;
  v118 = *(v1 + 24);
  os_unfair_lock_lock(v118 + 4);
  v117 = a1;
  sub_1D99A9AD0(v41);
  v42 = type metadata accessor for MLModelImageInput(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  v45 = v43 + 48;
  if (v44(v41, 1, v42) == 1)
  {
    goto LABEL_5;
  }

  v104 = v45;
  sub_1D9B857F8(&v41[*(v42 + 20)], v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
  sub_1D9B8512C(v41, type metadata accessor for MLModelImageInput);
  v46 = *v22;
  sub_1D9B8512C(v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
  v47 = v116;
  if (v46 < 1)
  {
LABEL_6:
    sub_1D99A182C();
    swift_allocError();
    *v48 = 0xD000000000000035;
    *(v48 + 8) = 0x80000001D9CAB5C0;
    *(v48 + 16) = 6;
    swift_willThrow();
LABEL_7:
    os_unfair_lock_unlock(v118 + 4);
    sub_1D9AFCCA4();

    return v12;
  }

  v97 = v44;
  sub_1D99A9AD0(v39);
  if (v97(v39, 1, v42) == 1)
  {
    v41 = v39;
LABEL_5:
    sub_1D99A6AE0(v41, &qword_1ECB510A0);
    goto LABEL_6;
  }

  sub_1D9B857F8(&v39[*(v42 + 20)], v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
  sub_1D9B8512C(v39, type metadata accessor for MLModelImageInput);
  v50 = v22[1];
  sub_1D9B8512C(v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
  if (v50 < 1)
  {
    goto LABEL_6;
  }

  v51 = OBJC_IVAR____TtCV12VisualLookUp22EspressoRequestHandler17ScaledBufferCache_cache;
  v52 = v114;
  swift_beginAccess();
  v96 = v51;
  sub_1D99AB100(v52 + v51, v12, &unk_1ECB53C40);
  v53 = v113;
  if ((*(v112 + 48))(v12, 1, v113) == 1)
  {
    sub_1D99A6AE0(v12, &unk_1ECB53C40);
    v54 = v111;
  }

  else
  {
    v55 = v12;
    v56 = v102;
    sub_1D9B8518C(v55, v102);
    v57 = v101;
    sub_1D99AB100(v56, v101, &qword_1ECB53C38);

    sub_1D99A9AD0(v36);
    if (v97(v36, 1, v42) == 1)
    {
      sub_1D99A6AE0(v36, &qword_1ECB510A0);
      v58 = 0.0;
    }

    else
    {
      sub_1D9B857F8(&v36[*(v42 + 20)], v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
      sub_1D9B8512C(v36, type metadata accessor for MLModelImageInput);
      v59 = *v22;
      sub_1D9B8512C(v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
      v58 = v59;
    }

    v60 = v100;
    sub_1D9B8512C(v57, type metadata accessor for MLModelInfo);
    sub_1D99A9AD0(v60);
    v61 = v97(v60, 1, v42);
    v54 = v111;
    if (v61 == 1)
    {
      sub_1D99A6AE0(v60, &qword_1ECB510A0);
      v62 = 0.0;
    }

    else
    {
      sub_1D9B857F8(v60 + *(v42 + 20), v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
      sub_1D9B8512C(v60, type metadata accessor for MLModelImageInput);
      v63 = *v22;
      sub_1D9B8512C(v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
      v62 = v63;
    }

    if (v58 == v62)
    {
      v64 = v106;
      sub_1D99AB100(v56, v106, &qword_1ECB53C38);

      v65 = v99;
      sub_1D99A9AD0(v99);
      if (v97(v65, 1, v42) == 1)
      {
        sub_1D99A6AE0(v65, &qword_1ECB510A0);
        v66 = 0.0;
      }

      else
      {
        sub_1D9B857F8(v65 + *(v42 + 20), v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
        sub_1D9B8512C(v65, type metadata accessor for MLModelImageInput);
        v67 = v22[1];
        sub_1D9B8512C(v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
        v66 = v67;
      }

      v68 = v105;
      sub_1D9B8512C(v106, type metadata accessor for MLModelInfo);
      sub_1D99A9AD0(v68);
      v69 = v105;
      if (v97(v105, 1, v42) == 1)
      {
        sub_1D99A6AE0(v69, &qword_1ECB510A0);
        v70 = 0.0;
      }

      else
      {
        sub_1D9B857F8(v69 + *(v42 + 20), v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
        sub_1D9B8512C(v69, type metadata accessor for MLModelImageInput);
        v71 = v22[1];
        sub_1D9B8512C(v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
        v70 = v71;
      }

      if (v66 == v70)
      {
        v72 = v98;
        sub_1D9B8518C(v56, v98);
        v12 = *(v72 + *(v53 + 48));
        sub_1D9B8512C(v72, type metadata accessor for MLModelInfo);
        goto LABEL_7;
      }
    }

    sub_1D99A6AE0(v56, &qword_1ECB53C38);
  }

  static Logger.argos.getter(v115);
  v73 = v117;
  sub_1D9B857F8(v117, v47, type metadata accessor for MLModelInfo);
  sub_1D9B857F8(v73, v54, type metadata accessor for MLModelInfo);
  v74 = sub_1D9C7D8BC();
  v75 = sub_1D9C7E09C();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = v22;
    v77 = swift_slowAlloc();
    *v77 = 134218240;
    sub_1D99AA5A8();
    v79 = v78;
    sub_1D9B8512C(v47, type metadata accessor for MLModelInfo);
    *(v77 + 4) = v79;
    *(v77 + 12) = 2048;
    v80 = sub_1D99AA5A8();
    sub_1D9B8512C(v54, type metadata accessor for MLModelInfo);
    *(v77 + 14) = v80;
    _os_log_impl(&dword_1D9962000, v74, v75, "ScaledBufferCache.getBuffer.new {h, w} = {%f, %f}", v77, 0x16u);
    v81 = v77;
    v22 = v76;
    MEMORY[0x1DA7405F0](v81, -1, -1);
  }

  else
  {

    sub_1D9B8512C(v54, type metadata accessor for MLModelInfo);
    sub_1D9B8512C(v47, type metadata accessor for MLModelInfo);
  }

  v12 = v110;
  (*(v108 + 8))(v115, v109);
  v119[0] = 0x656E69676E454C4DLL;
  v119[1] = 0xE800000000000000;
  v119[2] = "ScaledBufferCache.getBuffer.new";
  v119[3] = 31;
  v120 = 2;
  swift_allocObject();
  sub_1D9AFD4B8(v119, 0);
  v82 = v107;
  sub_1D99A9AD0(v107);
  if (v97(v82, 1, v42) == 1)
  {
    sub_1D99A6AE0(v82, &qword_1ECB510A0);
    v83 = 0.0;
    goto LABEL_34;
  }

  sub_1D9B857F8(v82 + *(v42 + 20), v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
  sub_1D9B8512C(v82, type metadata accessor for MLModelImageInput);
  v84 = *v22;
  result = sub_1D9B8512C(v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
  v83 = v84;
  if (v83 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v83 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_34:
  sub_1D99A9AD0(v12);
  if (v97(v12, 1, v42) == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB510A0);
    v85 = 0.0;
LABEL_38:
    v87 = VICreateCVPixelBufferWithFormat(v83, v85, 0x42475241u);
    if (v87)
    {
      v88 = v87;
      v89 = v113;
      v90 = *(v113 + 48);
      v91 = v103;
      sub_1D9B857F8(v117, v103, type metadata accessor for MLModelInfo);
      *(v91 + v90) = v88;
      (*(v112 + 56))(v91, 0, 1, v89);
      v92 = v114;
      v93 = v96;
      swift_beginAccess();
      v12 = v88;
      sub_1D9B850BC(v91, v92 + v93);
      swift_endAccess();
    }

    else
    {
      sub_1D9AB8390();
      swift_allocError();
      *v94 = 0xD000000000000024;
      v94[1] = 0x80000001D9CAB620;
      swift_willThrow();
    }

    sub_1D9AFCCA4();

    goto LABEL_7;
  }

  sub_1D9B857F8(&v12[*(v42 + 20)], v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
  sub_1D9B8512C(v12, type metadata accessor for MLModelImageInput);
  v86 = v22[1];
  result = sub_1D9B8512C(v22, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
  v85 = v86;
  if (v86 <= -9.22337204e18)
  {
    goto LABEL_44;
  }

  if (v85 < 9.22337204e18)
  {
    goto LABEL_38;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1D9B83D84(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53C40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_1D9C7D8DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19[0] = 0x656E69676E454C4DLL;
  v19[1] = 0xE800000000000000;
  v19[2] = "ScaledBufferCache.handle";
  v19[3] = 24;
  v20 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  sub_1D9AFD4B8(v19, 0);
  if ((a1 & 0x3E) != 0)
  {
    static Logger.argos.getter(v10);
    v11 = sub_1D9C7D8BC();
    v12 = sub_1D9C7E09C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_1D9962000, v11, v12, "ScaledBufferCache.handle %ld", v13, 0xCu);
      MEMORY[0x1DA7405F0](v13, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    v14 = *(v2 + 24);
    os_unfair_lock_lock(v14 + 4);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53C38);
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = OBJC_IVAR____TtCV12VisualLookUp22EspressoRequestHandler17ScaledBufferCache_cache;
    swift_beginAccess();
    sub_1D9B850BC(v6, v2 + v16);
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
  }

  sub_1D9AFCCA4();
}

uint64_t sub_1D9B8406C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  *(v0 + 16) = 0;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp22EspressoRequestHandler17ScaledBufferCache_cache, &unk_1ECB53C40);

  return swift_deallocClassInstance();
}

void sub_1D9B841A8()
{
  sub_1D9B84324(319, &qword_1ECB53C30, &qword_1ECB53C38);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D9B84288()
{
  type metadata accessor for MLModelInfo(319);
  if (v0 <= 0x3F)
  {
    sub_1D9B84324(319, &qword_1EDD2C388, &unk_1ECB52000);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9B84324(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1D9C7E27C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D9B843A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D9C7E79C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for EspressoRequest(0);
        v6 = sub_1D9C7DF5C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D9B845F4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1D9B844A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D9B844A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    type metadata accessor for MLModelInfo(0);
    v20 = v6;
    v7 = v6 + 8 * v4 - 8;
    v8 = v5 - v4;
LABEL_5:
    v18 = v7;
    v19 = v4;
    v9 = v7;
    v17 = v8;
    while (1)
    {

      v10 = sub_1D9C7B74C();
      v11 = MEMORY[0x1DA73E030](v10);

      v12 = sub_1D9C7B74C();
      v13 = MEMORY[0x1DA73E030](v12);

      if (v11 >= v13)
      {
LABEL_4:
        v4 = v19 + 1;
        v7 = v18 + 8;
        v8 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v14 = *v9;
      *v9 = v9[1];
      v9[1] = v14;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D9B845F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_1D99E8FDC(v10);
      v10 = result;
    }

    v87 = *(v10 + 2);
    if (v87 >= 2)
    {
      while (*v6)
      {
        v88 = v10;
        v10 = (v87 - 1);
        v89 = *&v88[16 * v87];
        v90 = *&v88[16 * v87 + 24];
        sub_1D9B84D30((*v6 + 8 * v89), (*v6 + 8 * *&v88[16 * v87 + 16]), (*v6 + 8 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_1D99E8FDC(v88);
        }

        if (v87 - 2 >= *(v88 + 2))
        {
          goto LABEL_115;
        }

        v91 = &v88[16 * v87];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_1D99E8F50(v87 - 1);
        v10 = v88;
        v87 = *(v88 + 2);
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v97 = result;
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v95 = v5;
      v12 = (*v6 + 8 * v11);
      v14 = *v12;
      v13 = v12 + 2;
      v9 = v14;
      type metadata accessor for MLModelInfo(0);

      v15 = sub_1D9C7B74C();
      v100 = MEMORY[0x1DA73E030](v15);

      v16 = sub_1D9C7B74C();
      v98 = MEMORY[0x1DA73E030](v16);

      v17 = v11 + 2;
      while (v8 != v17)
      {
        v9 = *v13;

        v18 = sub_1D9C7B74C();
        v19 = MEMORY[0x1DA73E030](v18);

        v20 = sub_1D9C7B74C();
        v21 = MEMORY[0x1DA73E030](v20);

        ++v17;
        ++v13;
        if (v100 < v98 == v19 >= v21)
        {
          v8 = v17 - 1;
          break;
        }
      }

      v5 = v95;
      v6 = a3;
      v22 = 8 * v11;
      v7 = v97;
      if (v100 < v98)
      {
        v23 = v11;
        if (v8 < v11)
        {
          goto LABEL_118;
        }

        if (v11 < v8)
        {
          v24 = 8 * v8 - 8;
          v25 = v8;
          do
          {
            if (v23 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v26 = *(v27 + v22);
              *(v27 + v22) = *(v27 + v24);
              *(v27 + v24) = v26;
            }

            ++v23;
            v24 -= 8;
            v22 += 8;
          }

          while (v23 < v25);
        }
      }

      v9 = v8;
    }

    v28 = v6[1];
    if (v9 >= v28)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v9, v11))
    {
      goto LABEL_117;
    }

    if (v9 - v11 >= a4)
    {
LABEL_37:
      v30 = v11;
      goto LABEL_38;
    }

    if (__OFADD__(v11, a4))
    {
      goto LABEL_119;
    }

    if (v11 + a4 >= v28)
    {
      v29 = v6[1];
    }

    else
    {
      v29 = (v11 + a4);
    }

    if (v29 < v11)
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v30 = v11;
    if (v9 != v29)
    {
      break;
    }

LABEL_38:
    if (v9 < v30)
    {
      goto LABEL_116;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v41 = *(v10 + 2);
    v40 = *(v10 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_1D99E8FF0((v40 > 1), v41 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v42;
    v43 = &v10[16 * v41];
    *(v43 + 4) = v11;
    *(v43 + 5) = v9;
    v44 = *v7;
    if (!*v7)
    {
      goto LABEL_126;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v10 + 4);
          v47 = *(v10 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_58:
          if (v49)
          {
            goto LABEL_105;
          }

          v62 = &v10[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_108;
          }

          v68 = &v10[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_112;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v72 = &v10[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_72:
        if (v67)
        {
          goto LABEL_107;
        }

        v75 = &v10[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_110;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_79:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v6)
        {
          goto LABEL_123;
        }

        v84 = *&v10[16 * v83 + 32];
        v85 = *&v10[16 * v45 + 40];
        sub_1D9B84D30((*v6 + 8 * v84), (*v6 + 8 * *&v10[16 * v45 + 32]), (*v6 + 8 * v85), v44);
        if (v5)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D99E8FDC(v10);
        }

        if (v83 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v86 = &v10[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_1D99E8F50(v45);
        v42 = *(v10 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v10[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_103;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_104;
      }

      v57 = &v10[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_106;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_109;
      }

      if (v61 >= v53)
      {
        v79 = &v10[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v8 = v6[1];
    v7 = v97;
    if (v9 >= v8)
    {
      goto LABEL_89;
    }
  }

  v94 = v10;
  v96 = v5;
  v31 = *v6;
  type metadata accessor for MLModelInfo(0);
  v32 = (v31 + 8 * v9 - 8);
  v33 = v11 - v9;
LABEL_30:
  v101 = v32;
  v102 = v9;
  v99 = v33;
  while (1)
  {

    v34 = sub_1D9C7B74C();
    v35 = MEMORY[0x1DA73E030](v34);

    v36 = sub_1D9C7B74C();
    v37 = MEMORY[0x1DA73E030](v36);

    if (v35 >= v37)
    {
LABEL_29:
      v9 = v102 + 1;
      v32 = v101 + 1;
      v33 = v99 - 1;
      if ((v102 + 1) != v29)
      {
        goto LABEL_30;
      }

      v9 = v29;
      v10 = v94;
      v5 = v96;
      v6 = a3;
      v7 = v97;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *v32;
    *v32 = v32[1];
    v32[1] = v38;
    --v32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D9B84D30(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v14 = a4;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v35 = &v14[8 * v12];
    if (v10 >= 8 && v5 > v6)
    {
      type metadata accessor for MLModelInfo(0);
      v34 = v6;
LABEL_28:
      v32 = v5;
      v21 = v5 - 8;
      v22 = v4 - 8;
      v23 = v35;
      do
      {
        v24 = v14;
        v25 = v22;
        v26 = v22 + 8;
        v23 -= 8;
        v27 = v21;

        v28 = sub_1D9C7B74C();
        v33 = MEMORY[0x1DA73E030](v28);

        v29 = sub_1D9C7B74C();
        v30 = MEMORY[0x1DA73E030](v29);

        if (v33 < v30)
        {
          v20 = v26 == v32;
          v4 = v25;
          if (!v20)
          {
            *v25 = *v27;
          }

          v14 = v24;
          if (v35 <= v24 || (v5 = v27, v27 <= v34))
          {
            v5 = v27;
            goto LABEL_39;
          }

          goto LABEL_28;
        }

        if (v26 != v35)
        {
          *v25 = *v23;
        }

        v22 = v25 - 8;
        v35 = v23;
        v14 = v24;
        v21 = v27;
      }

      while (v23 > v24);
      v35 = v23;
      v5 = v32;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      v13 = a4;
      memmove(a4, __dst, 8 * v9);
      a4 = v13;
    }

    v35 = &a4[8 * v9];
    v14 = a4;
    if (v7 >= 8 && v5 < v4)
    {
      type metadata accessor for MLModelInfo(0);
      while (1)
      {

        v15 = sub_1D9C7B74C();
        v16 = MEMORY[0x1DA73E030](v15);

        v17 = sub_1D9C7B74C();
        v18 = MEMORY[0x1DA73E030](v17);

        if (v16 >= v18)
        {
          break;
        }

        v19 = v5;
        v20 = v6 == v5;
        v5 += 8;
        if (!v20)
        {
          goto LABEL_17;
        }

LABEL_18:
        v6 += 8;
        if (v14 >= v35 || v5 >= v4)
        {
          goto LABEL_20;
        }
      }

      v19 = v14;
      v20 = v6 == v14;
      v14 += 8;
      if (v20)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v6 = *v19;
      goto LABEL_18;
    }

LABEL_20:
    v5 = v6;
  }

LABEL_39:
  if (v5 != v14 || v5 >= &v14[(v35 - v14 + (v35 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v5, v14, 8 * ((v35 - v14) / 8));
  }

  return 1;
}

uint64_t sub_1D9B850BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53C40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B8512C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9B8518C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53C38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B851FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_1D9B85258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9B85360(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7B80C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v16 = a1 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model;
  sub_1D99A9AD0(&v35 - v14);
  v17 = *(a1 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_features);
  v43 = v15;
  if (!v17)
  {
    v41 = 0;
    goto LABEL_7;
  }

  v18 = *(v17 + 16);
  if (!v18)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_7:
    type metadata accessor for MLModelInfo(0);
    sub_1D9C7B79C();
    v21 = sub_1D99AA5A8();
    v23 = v22;
    sub_1D99AB100(v15, v13, &qword_1ECB510A0);
    v24 = type metadata accessor for MLModelImageInput(0);
    if ((*(*(v24 - 8) + 48))(v13, 1, v24) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB510A0);
      v25 = 0;
    }

    else
    {
      sub_1D9B857F8(v13, v5, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      sub_1D9B8512C(v13, type metadata accessor for MLModelImageInput);
      v25 = *(v5 + 1);

      sub_1D9B8512C(v5, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    }

    v26 = *(v16 + *(type metadata accessor for EspressoModel(0) + 20));
    v27 = *(a1 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_usesCPUOnly);
    v28 = sub_1D9C7B77C();
    if (v25)
    {
      v29 = sub_1D9C7DC4C();

      if (v41)
      {
LABEL_12:
        v30 = v9;
        v31 = sub_1D9C7DF1C();

LABEL_15:
        v32 = objc_allocWithZone(VIEspressoRunner);
        v33 = sub_1D9C7DF1C();
        v34 = [v32 initWithMLNetURL:v28 expectedInputSize:v29 imageInputName:v31 featureNames:v33 outputNames:v26 preferredMetalDevice:v27 usesCPUOnly:{v21, v23}];

        (*(v7 + 8))(v30, v6);
        sub_1D99A6AE0(v43, &qword_1ECB510A0);
        return v34;
      }
    }

    else
    {
      v29 = 0;
      if (v41)
      {
        goto LABEL_12;
      }
    }

    v30 = v9;
    v31 = 0;
    goto LABEL_15;
  }

  v36 = v5;
  v37 = a1;
  v38 = v9;
  v39 = v7;
  v40 = v6;
  v41 = sub_1D9B8E004(v18, 0);
  v19 = sub_1D9B8E604(&v44, v41 + 4, v18, v17);

  result = sub_1D99C74D4();
  if (v19 == v18)
  {
    v7 = v39;
    v6 = v40;
    a1 = v37;
    v9 = v38;
    v15 = v43;
    v5 = v36;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B857F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B85888()
{
  sub_1D9B858D0();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_1D9B858D0()
{
  result = qword_1ECB53C70;
  if (!qword_1ECB53C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53C70);
  }

  return result;
}

unint64_t sub_1D9B85938()
{
  result = qword_1ECB53C78;
  if (!qword_1ECB53C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53C78);
  }

  return result;
}

id sub_1D9B8598C(id result, char a2, unint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    if (a3 >> 62)
    {
LABEL_29:
      result = sub_1D9C7E50C();
      v4 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        v5 = 0;
        do
        {
          if ((a3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x1DA73E610](v5, a3);
          }

          else
          {
            if (v5 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v6 = *(a3 + 32 + 8 * v5);
          }

          v7 = v6;
          v8 = __OFADD__(v5, 1);
          v9 = (v5 + 1);
          if (v8)
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          result = [v6 results];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v10 = result;
          v21 = v7;
          v22 = v9;
          sub_1D9A0835C(0, &qword_1ECB528F0);
          v11 = sub_1D9C7DF2C();

          if (v11 >> 62)
          {
            v12 = sub_1D9C7E50C();
            if (!v12)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v12)
            {
              goto LABEL_5;
            }
          }

          if (v12 < 1)
          {
            goto LABEL_28;
          }

          for (i = 0; i != v12; ++i)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x1DA73E610](i, v11);
            }

            else
            {
              v14 = *(v11 + 8 * i + 32);
            }

            v15 = v14;
            [v14 setQueryId_];
            v16 = [v15 inlineCard];
            if (v16)
            {
              v17 = v16;
              sub_1D9B85BD8(v3, v16);
            }

            v18 = [v15 card];
            if (v18)
            {
              v19 = v18;
              sub_1D9B85BD8(v3, v18);
            }
          }

LABEL_5:

          v5 = v22;
        }

        while (v22 != v4);
      }
    }
  }

  return result;
}

id sub_1D9B85BD8(uint64_t a1, void *a2)
{
  [a2 setQueryId_];
  v4 = &off_1E858B000;
  result = [a2 cardSections];
  if (result)
  {
    v6 = result;
    sub_1D9A0835C(0, &qword_1ECB524A0);
    v7 = sub_1D9C7DF2C();

    if (v7 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D9C7E50C())
    {
      v9 = 0;
      v10 = v7 & 0xC000000000000001;
      v28 = v7 + 32;
      v29 = v7 & 0xFFFFFFFFFFFFFF8;
      v26 = i;
      v27 = v7;
      v30 = v7 & 0xC000000000000001;
      while (1)
      {
        if (v10)
        {
          v11 = MEMORY[0x1DA73E610](v9, v7);
        }

        else
        {
          if (v9 >= *(v29 + 16))
          {
            goto LABEL_34;
          }

          v11 = *(v28 + 8 * v9);
        }

        v12 = v11;
        if (__OFADD__(v9++, 1))
        {
          break;
        }

        v14 = [v11 nextCard];
        if (v14)
        {
          v15 = v14;
          sub_1D9B85BD8(a1, v14);
        }

        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (v16 && (v17 = [v16 v4[339]]) != 0)
        {
          v18 = v17;
          v19 = sub_1D9C7DF2C();

          if (v19 >> 62)
          {
            v20 = sub_1D9C7E50C();
            if (!v20)
            {
LABEL_27:

              goto LABEL_28;
            }
          }

          else
          {
            v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v20)
            {
              goto LABEL_27;
            }
          }

          if (v20 < 1)
          {
            goto LABEL_35;
          }

          for (j = 0; j != v20; ++j)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x1DA73E610](j, v19);
            }

            else
            {
              v22 = *(v19 + 8 * j + 32);
            }

            v23 = v22;
            v24 = [v22 nextCard];
            if (v24)
            {
              v25 = v24;
              sub_1D9B85BD8(a1, v24);
            }
          }

          v4 = &off_1E858B000;
          i = v26;
          v7 = v27;
LABEL_28:
          v10 = v30;
          if (v9 == i)
          {
            goto LABEL_29;
          }
        }

        else
        {

          if (v9 == i)
          {
            goto LABEL_29;
          }
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

LABEL_29:
  }

  return result;
}

uint64_t sub_1D9B85EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v20 = a3;
  v5 = sub_1D9C7C25C();
  MEMORY[0x1EEE9AC00](v5);
  v18 = sub_1D9C7C49C();
  MEMORY[0x1EEE9AC00](v18);
  v17 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7BA9C();
  MEMORY[0x1EEE9AC00](v7);
  v9 = *(a2 + 160);
  if (v9)
  {
    v15[1] = v15;
    MEMORY[0x1EEE9AC00](v8);
    v16 = a2;
    v15[-2] = v9;
    sub_1D9B87AD8(&qword_1ECB53C90, MEMORY[0x1E69BCB88]);
    v10 = v9;
    a2 = v16;
    sub_1D9C7D6BC();
  }

  else
  {
    sub_1D9C7BA8C();
  }

  v11 = sub_1D9C7BADC();
  MEMORY[0x1EEE9AC00](v11);
  v15[-2] = a2;
  sub_1D9B87AD8(&qword_1ECB53C80, MEMORY[0x1E69BD300]);
  sub_1D9C7D6BC();
  v12 = sub_1D9C7BAFC();
  MEMORY[0x1EEE9AC00](v12);
  v13 = v19;
  v15[-2] = v20;
  v15[-1] = v13;
  sub_1D9B87AD8(&qword_1ECB53C88, MEMORY[0x1E69BD1F8]);
  sub_1D9C7D6BC();
  return sub_1D9C7BAEC();
}

uint64_t sub_1D9B86220(uint64_t a1, uint64_t a2)
{
  sub_1D9B87A08(a2, v3);
  sub_1D9C7C5EC();
  return sub_1D9C7C5DC();
}

uint64_t sub_1D9B86288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9C7C5FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9B8771C(a2);
  sub_1D9C7C5EC();
  v12 = *(a3 + 16);
  if (v12)
  {
    v21[0] = a1;
    v26 = MEMORY[0x1E69E7CC0];
    v13 = sub_1D99FE5D8(0, v12, 0);
    v14 = v26;
    v15 = a3 + 32;
    v21[1] = v9 + 32;
    v22 = v9;
    do
    {
      v16 = *(v15 + 16);
      v24[0] = *v15;
      v24[1] = v16;
      v24[2] = *(v15 + 32);
      v25 = *(v15 + 48);
      MEMORY[0x1EEE9AC00](v13);
      v21[-2] = v24;
      sub_1D9B87A08(v24, v23);
      sub_1D9B87AD8(&qword_1ECB53CB8, MEMORY[0x1E69BD3D8]);
      v17 = v4;
      sub_1D9C7D6BC();
      sub_1D9B87A64(v24);
      v26 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D99FE5D8(v18 > 1, v19 + 1, 1);
        v14 = v26;
      }

      *(v14 + 16) = v19 + 1;
      v13 = (*(v22 + 32))(v14 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v11, v8);
      v15 += 56;
      --v12;
      v4 = v17;
    }

    while (v12);
  }

  return sub_1D9C7C60C();
}

uint64_t sub_1D9B864F4(uint64_t *a1)
{
  v2 = 0;
  v85 = sub_1D9C7C14C();
  v78 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v83 = &v72 - v5;
  v82 = sub_1D9C7C62C();
  v73 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D9C7C1CC();
  v72 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v76 = a1[1];
  v86 = *(v8 + 16);
  v81 = 0;
  if (v86)
  {
    v2 = 0;
    v9 = 0;
    v10 = (v8 + 56);
    v11 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v9 >= *(v8 + 16))
      {
        goto LABEL_38;
      }

      v13 = *(v10 - 3);
      v12 = *(v10 - 2);
      v14 = *(v10 - 2);
      v15 = v10[1];
      v88 = *v10;
      v89 = v15;

      sub_1D9979BF4(v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v11;
      v17 = *(&v88 + 1);
      v18 = *(&v89 + 1);
      v20 = sub_1D99EE1AC(*&v88, *(&v88 + 1), *&v89, *(&v89 + 1));
      v21 = *(v11 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_39;
      }

      v24 = v19;
      if (*(v11 + 24) >= v23)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_1D9C167AC();
          v11 = v90;
          if ((v24 & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        sub_1D9C0E4EC(v23, isUniquelyReferenced_nonNull_native);
        v11 = v90;
        v25 = sub_1D99EE1AC(*&v88, v17, *&v89, v18);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_41;
        }

        v20 = v25;
        if ((v24 & 1) == 0)
        {
LABEL_11:
          *(v11 + 8 * (v20 >> 6) + 64) |= 1 << v20;
          v27 = (*(v11 + 48) + 32 * v20);
          v28 = v89;
          *v27 = v88;
          v27[1] = v28;
          *(*(v11 + 56) + 8 * v20) = MEMORY[0x1E69E7CC0];
          v29 = *(v11 + 16);
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_40;
          }

          *(v11 + 16) = v31;
        }
      }

      v87 = v12;
      v32 = *(v11 + 56);
      v33 = *(v32 + 8 * v20);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v20) = v33;
      if ((v34 & 1) == 0)
      {
        v33 = sub_1D9AF92E0(0, *(v33 + 2) + 1, 1, v33);
        *(v32 + 8 * v20) = v33;
      }

      v36 = *(v33 + 2);
      v35 = *(v33 + 3);
      if (v36 >= v35 >> 1)
      {
        v33 = sub_1D9AF92E0((v35 > 1), v36 + 1, 1, v33);
        *(v32 + 8 * v20) = v33;
      }

      v9 = (v9 + 1);
      *(v33 + 2) = v36 + 1;
      v37 = &v33[56 * v36];
      v38 = v87;
      *(v37 + 4) = v13;
      *(v37 + 5) = v38;
      *(v37 + 12) = v14;
      v39 = v89;
      *(v37 + 7) = v88;
      *(v37 + 8) = v17;
      *(v37 + 9) = v39;
      *(v37 + 10) = v18;
      v10 = (v10 + 56);
      v2 = sub_1D9979D3C;
      if (v86 == v9)
      {
        goto LABEL_22;
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC8];
LABEL_22:
  v40 = v11 + 64;
  v41 = 1 << *(v11 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v11 + 64);
  v44 = (v41 + 63) >> 6;
  v86 = (v78 + 16);
  v75 = v78 + 8;
  v74 = v78 + 32;
  ++v73;
  ++v72;
  v45 = v11;

  v46 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v87 = v44;
  *&v88 = v11 + 64;
  for (i = v79; v43; v40 = v88)
  {
    *&v89 = v47;
LABEL_30:
    v50 = __clz(__rbit64(v43)) | (v46 << 6);
    v51 = (*(v45 + 48) + 32 * v50);
    v52 = *v51;
    v53 = v51[1];
    v54 = v51[2];
    v55 = v51[3];
    v56 = *(*(v45 + 56) + 8 * v50);

    sub_1D9C7C1BC();
    v91.origin.x = VIFlipOriginNormalizedRect(v52, v53, v54, v55);
    x = v91.origin.x;
    y = v91.origin.y;
    width = v91.size.width;
    height = v91.size.height;
    CGRectGetMinX(v91);
    sub_1D9C7C17C();
    v92.origin.x = x;
    v92.origin.y = y;
    v92.size.width = width;
    v92.size.height = height;
    CGRectGetMinY(v92);
    sub_1D9C7C18C();
    v93.origin.x = x;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = height;
    CGRectGetWidth(v93);
    sub_1D9C7C19C();
    v94.origin.x = x;
    v94.origin.y = y;
    v94.size.width = width;
    v94.size.height = height;
    CGRectGetHeight(v94);
    v61 = sub_1D9C7C1AC();
    MEMORY[0x1EEE9AC00](v61);
    *(&v72 - 2) = v76;
    *(&v72 - 1) = v56;
    sub_1D9B87AD8(&qword_1ECB53CA0, MEMORY[0x1E69BD3E8]);
    v63 = v80;
    v62 = v81;
    sub_1D9C7D6BC();

    MEMORY[0x1EEE9AC00](v64);
    *(&v72 - 2) = i;
    *(&v72 - 1) = v63;
    sub_1D9B87AD8(&qword_1ECB53CA8, MEMORY[0x1E69BD190]);
    v65 = v83;
    v66 = v85;
    sub_1D9C7D6BC();
    v81 = v62;
    (*v86)(v84, v65, v66);
    v47 = v89;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_1D9AFBA48(0, v47[2] + 1, 1, v47);
    }

    v68 = v47[2];
    v67 = v47[3];
    if (v68 >= v67 >> 1)
    {
      v47 = sub_1D9AFBA48(v67 > 1, v68 + 1, 1, v47);
    }

    v43 &= v43 - 1;
    v69 = v78;
    v70 = v85;
    (*(v78 + 8))(v83, v85);
    v47[2] = v68 + 1;
    (*(v69 + 32))(v47 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v68, v84, v70);
    (*v73)(v80, v82);
    (*v72)(v79, v77);
    v44 = v87;
  }

  while (1)
  {
    v49 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v49 >= v44)
    {

      sub_1D9979BF4(v2);
      return v47;
    }

    v43 = *(v40 + 8 * v49);
    ++v46;
    if (v43)
    {
      *&v89 = v47;
      v46 = v49;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

uint64_t sub_1D9B86D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D9C7C1CC();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  sub_1D9C7C12C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53CB0);
  v9 = sub_1D9C7C62C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9C85660;
  (*(v10 + 16))(v12 + v11, a3, v9);
  return sub_1D9C7C13C();
}

uint64_t sub_1D9B86EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D9C7C23C();
  MEMORY[0x1EEE9AC00](v5);
  if (a2)
  {
    MEMORY[0x1EEE9AC00](v6);
    *(&v8 - 2) = a2;
    *(&v8 - 1) = a3;
    sub_1D9B87AD8(&qword_1ECB53C98, MEMORY[0x1E69BD1C8]);
    sub_1D9C7D6BC();
  }

  else
  {
    sub_1D9C7C22C();
  }

  return sub_1D9C7C24C();
}

uint64_t sub_1D9B87028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D9C7C1CC();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v30 = a1;
    v31 = a2;
    v13 = *(a3 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v29[1] = a4;
      v32 = MEMORY[0x1E69E7CC0];
      sub_1D99FE5F8(0, v13, 0);
      v14 = v32;
      v29[0] = a3;
      v15 = (a3 + 56);
      do
      {
        v16 = *(v15 - 3);
        v17 = *(v15 - 2);
        v18 = *(v15 - 1);
        v19 = *v15;
        sub_1D9C7C1BC();
        v34.origin.x = VIFlipOriginNormalizedRect(v16, v17, v18, v19);
        x = v34.origin.x;
        y = v34.origin.y;
        width = v34.size.width;
        height = v34.size.height;
        CGRectGetMinX(v34);
        sub_1D9C7C17C();
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = height;
        CGRectGetMinY(v35);
        sub_1D9C7C18C();
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        CGRectGetWidth(v36);
        sub_1D9C7C19C();
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        CGRectGetHeight(v37);
        sub_1D9C7C1AC();
        v32 = v14;
        v25 = *(v14 + 16);
        v24 = *(v14 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1D99FE5F8(v24 > 1, v25 + 1, 1);
          v14 = v32;
        }

        *(v14 + 16) = v25 + 1;
        (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v12, v8);
        v15 += 4;
        --v13;
      }

      while (v13);
      a3 = v29[0];
    }

    v26 = sub_1D9C7C20C();
    MEMORY[0x1EEE9AC00](v26);
    v27 = v31;
    v29[-4] = v30;
    v29[-3] = v27;
    v29[-2] = a3;
    v29[-1] = v14;
    sub_1D9B87AD8(&qword_1ECB53CC0, MEMORY[0x1E69BD1B8]);
    sub_1D9C7D6BC();
  }

  else
  {

    return MEMORY[0x1EEE274E0](v10);
  }
}

uint64_t sub_1D9B87340()
{

  sub_1D9C7C1DC();

  return sub_1D9C7C1EC();
}

uint64_t sub_1D9B8739C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D9C7C63C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7C20C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9C7C04C();
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 104))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69BCF40], v11);
  sub_1D9C7C48C();

  sub_1D9C7C47C();
  sub_1D9B87028(a2[2], a2[3], a2[4], v9);
  sub_1D9C7C43C();
  (*(v4 + 104))(v6, *MEMORY[0x1E69BD3F0], v3);
  sub_1D9C7C46C();
  v14 = a2[20];
  if (v14)
  {
    v15 = [v14 applicationIdentifier];
    if (v15)
    {
      v16 = v15;
      sub_1D9C7DC7C();
    }
  }

  sub_1D9C7C45C();

  return sub_1D9C7C44C();
}

uint64_t sub_1D9B87694()
{
  v1 = *(v0 + 24);
  v3[0] = *(v0 + 16);
  v3[1] = v1;
  sub_1D9B864F4(v3);
  return sub_1D9C7C13C();
}

uint64_t sub_1D9B8771C(uint64_t a1)
{
  v2 = sub_1D9C7B5EC();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v5 = sub_1D9C7E7AC();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9C85660;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D99D2A60();
  *(v8 + 64) = v9;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v10 = sub_1D9C7DCAC();
  v12 = v11;
  v13 = [objc_opt_self() latestTaxonomyIdentifier];
  v14 = sub_1D9C7DC7C();
  v16 = v15;

  v17 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v18 = [v17 operatingSystemVersionString];

  v19 = sub_1D9C7DC7C();
  v21 = v20;

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D9C85EA0;
  v23 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = v9;
  *(v22 + 32) = v19;
  *(v22 + 40) = v21;
  *(v22 + 96) = v23;
  *(v22 + 104) = v9;
  *(v22 + 72) = v14;
  *(v22 + 80) = v16;
  v24 = sub_1D9C7DCAC();
  v26 = v25;
  v33 = v10;
  v34 = v12;

  MEMORY[0x1DA73DF90](v24, v26);

  sub_1D9C7B5CC();
  sub_1D99A57F8();
  v27 = sub_1D9C7E2DC();
  v29 = v28;
  (*(v31 + 8))(v4, v32);

  if (!v29)
  {
    return v10;
  }

  return v27;
}

uint64_t sub_1D9B87AD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9B87B30@<X0>(uint64_t *a1@<X8>, float a2@<S0>)
{
  v4 = sub_1D9C7BB8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9C7BDCC();
  v50 = v9;
  v51 = v8;
  v10 = sub_1D9C7BDEC();
  v48 = v11;
  v49 = v10;
  sub_1D9C7BDFC();
  sub_1D9C7BB7C();
  (*(v5 + 8))(v7, v4);
  v12 = type metadata accessor for ObjectKnowledge();
  sub_1D9C7B7EC();

  v13 = sub_1D9C7BDBC();
  v44 = v14;
  v45 = v13;
  v43 = sub_1D9C7BDBC();
  v16 = v15;
  sub_1D9C7BDDC();
  sub_1D9C7B7EC();

  v17 = sub_1D9C7BDEC();
  v46 = v18;
  v47 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52518);
  v19 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A0) - 8);
  v20 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
  v21 = swift_allocObject();
  v42 = xmmword_1D9C85660;
  *(v21 + 16) = xmmword_1D9C85660;
  v22 = v21 + v20;
  v23 = (v22 + v19[14]);
  sub_1D9C7B97C();
  *v23 = sub_1D9C7BDEC();
  v23[1] = v24;
  v25 = sub_1D9A449E0(v21);
  swift_setDeallocating();
  sub_1D99A6AE0(v22, &qword_1ECB520A0);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52520);
  v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090) - 8);
  v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v42;
  v29 = v28 + v27;
  v30 = v26[14];
  sub_1D9C7B97C();
  *(v29 + v30) = MEMORY[0x1E69E7CD0];
  v31 = sub_1D9A44BD0(v28);
  swift_setDeallocating();
  sub_1D99A6AE0(v29, &qword_1ECB52090);
  swift_deallocClassInstance();
  v32 = v50;
  *a1 = v51;
  a1[1] = v32;
  v33 = v48;
  a1[2] = v49;
  a1[3] = v33;
  *(a1 + v12[7]) = 1065353216;
  v34 = (a1 + v12[8]);
  v35 = v44;
  *v34 = v45;
  v34[1] = v35;
  v36 = (a1 + v12[9]);
  *v36 = v43;
  v36[1] = v16;
  *(a1 + v12[11]) = MEMORY[0x1E69E7CC0];
  v37 = (a1 + v12[12]);
  v37[2] = 0u;
  v37[3] = 0u;
  *v37 = 0u;
  v37[1] = 0u;
  v38 = a1 + v12[13];
  *v38 = 0;
  v38[8] = 1;
  *(a1 + v12[14]) = xmmword_1D9C8CD70;
  v39 = a1 + v12[15];
  *v39 = 0;
  *(v39 + 4) = 0;
  *(v39 + 10) = *&v52[7];
  *(v39 + 7) = v53;
  v40 = v46;
  *(v39 + 2) = v47;
  *(v39 + 3) = v40;
  *(v39 + 4) = v25;
  *(v39 + 5) = 0x3FF0000000000000;
  v39[48] = 0;
  *(v39 + 49) = *v52;
  *(v39 + 13) = *&v52[3];
  *(v39 + 7) = 0;
  *(v39 + 8) = 0xE000000000000000;
  *(v39 + 9) = 0;
  *(v39 + 10) = 0xE000000000000000;
  *(v39 + 12) = 0;
  *(v39 + 13) = 0;
  *(v39 + 11) = v31;
  *(v39 + 28) = 0;
  *(a1 + v12[16]) = a2;
  return (*(*(v12 - 1) + 56))(a1, 0, 1, v12);
}

id CancelSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1D9B87FE8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9B886CC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D9B88014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B88678();
  v5 = sub_1D99DF254();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

void sub_1D9B8806C()
{
  v1 = v0;
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock);
  os_unfair_lock_lock(v6 + 4);
  static Logger.argos.getter(v5);
  v7 = sub_1D9C7D8BC();
  v8 = sub_1D9C7E09C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D9962000, v7, v8, "cancel()", v9, 2u);
    MEMORY[0x1DA7405F0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled) = 1;
  v10 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_onCancels;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = *(v11 + 16);
  v13 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

  if (v12)
  {
    v14 = 0;
    v15 = v11 + 40;
    while (v14 < *(v11 + 16))
    {
      ++v14;
      v16 = *(v15 - 8);

      v16(v1 + v13);

      v15 += 16;
      if (v12 == v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    os_unfair_lock_unlock(v6 + 4);
  }
}

id CancelSession.init()()
{
  sub_1D9C7B92C();
  v0[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled] = 0;
  *&v0[OBJC_IVAR____TtC12VisualLookUp13CancelSession_onCancels] = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51500);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CancelSession();
  return objc_msgSendSuper2(&v4, sel_init);
}

id CancelSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CancelSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CancelSession()
{
  result = qword_1EDD348E8;
  if (!qword_1EDD348E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B88510()
{
  result = sub_1D9C7B93C();
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

unint64_t sub_1D9B88624()
{
  result = qword_1ECB53CC8;
  if (!qword_1ECB53CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53CC8);
  }

  return result;
}

unint64_t sub_1D9B88678()
{
  result = qword_1ECB53CD0;
  if (!qword_1ECB53CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53CD0);
  }

  return result;
}

unint64_t sub_1D9B886CC(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t PixelImage.init(pixelBuffer:orientation:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

double sub_1D9B886F0()
{
  v1 = *v0;
  Width = CVPixelBufferGetWidth(*v0);
  CVPixelBufferGetHeight(v1);
  return Width;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1D9B8876C(uint64_t *a1, int a2)
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

uint64_t sub_1D9B887B4(uint64_t result, int a2, int a3)
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

id BoxScorerCompatible.__allocating_init(granularity:xMean:yMean:std:)(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v5);
  type metadata accessor for BoxScorer();
  v15 = swift_allocObject();
  v16 = v15;
  if (a1 < 1 || a4 <= 0.0)
  {
    *(v15 + 24) = 30;
    *(v15 + 16) = sub_1D9B1F3F4(30, 0.5, 0.5, 0.5);
    static Logger.argos.getter(v13);
    v17 = sub_1D9C7D8BC();
    v18 = sub_1D9C7E09C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D9962000, v17, v18, "Invalid Box Scorer Config. Create Box Scorer using default config.", v19, 2u);
      MEMORY[0x1DA7405F0](v19, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    *(v15 + 24) = a1;
    *(v15 + 16) = sub_1D9B1F3F4(a1, a4, a2, a3);
  }

  *&v14[OBJC_IVAR____TtC12VisualLookUp19BoxScorerCompatible_boxScorer] = v16;
  v21.receiver = v14;
  v21.super_class = v5;
  return objc_msgSendSuper2(&v21, sel_init);
}

id BoxScorerCompatible.init(granularity:xMean:yMean:std:)(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BoxScorer();
  v14 = swift_allocObject();
  v15 = v14;
  if (a1 < 1 || a4 <= 0.0)
  {
    *(v14 + 24) = 30;
    *(v14 + 16) = sub_1D9B1F3F4(30, 0.5, 0.5, 0.5);
    static Logger.argos.getter(v13);
    v16 = sub_1D9C7D8BC();
    v17 = sub_1D9C7E09C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D9962000, v16, v17, "Invalid Box Scorer Config. Create Box Scorer using default config.", v18, 2u);
      MEMORY[0x1DA7405F0](v18, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    *(v14 + 24) = a1;
    *(v14 + 16) = sub_1D9B1F3F4(a1, a4, a2, a3);
  }

  *&v5[OBJC_IVAR____TtC12VisualLookUp19BoxScorerCompatible_boxScorer] = v15;
  v19 = type metadata accessor for BoxScorerCompatible();
  v21.receiver = v5;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, sel_init);
}

id BoxScorerCompatible.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BoxScorerCompatible.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BoxScorerCompatible();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9B88E8C()
{
  result = sub_1D9BCEC04(&unk_1F5527AF0);
  qword_1EDD41F48 = result;
  unk_1EDD41F50 = v1;
  return result;
}

uint64_t sub_1D9B88EB8(uint64_t a1, unint64_t a2)
{
  v5 = sub_1D9C7DB2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7DAFC();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9C7DB1C();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_18;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v20 = __OFSUB__(v18, v19);
    v21 = v18 - v19;
    if (!v20)
    {
      if (v21 < 5)
      {
        goto LABEL_18;
      }

LABEL_11:
      v44 = v13;
      v45 = v11;
      v41[0] = v6;
      v41[1] = v9;
      v42 = v16;
      v43 = v14;
      v46 = v2;
      if (qword_1EDD34BC0 != -1)
      {
        swift_once();
      }

      v22 = qword_1EDD41F48;
      v23 = unk_1EDD41F50;
      v24 = sub_1D9C7B85C();
      v26 = v25;
      LOBYTE(v22) = sub_1D99FBD74(v22, v23, v24, v25);
      sub_1D99A5748(v24, v26);
      if (v22)
      {
        if (qword_1EDD35438 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_29;
      }

LABEL_18:
      sub_1D99AF2FC(a1, a2);
      return a1;
    }

    __break(1u);
  }

  else
  {
    if (!v17)
    {
      if (BYTE6(a2) < 5uLL)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 5)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_15:
  v27 = qword_1EDD35440;
  v28 = *algn_1EDD35448;
  sub_1D99AF2FC(qword_1EDD35440, *algn_1EDD35448);
  sub_1D9B89960(&qword_1EDD2C670, MEMORY[0x1E6966620]);
  sub_1D9C7DAEC();
  sub_1D99AF2FC(v27, v28);
  v29 = v46;
  sub_1D9B896A0(v27, v28);
  v46 = v29;
  sub_1D99A5748(v27, v28);
  sub_1D9C7DADC();
  sub_1D99A5748(v27, v28);
  (*(v41[0] + 8))(v8, v5);
  sub_1D9B89960(&qword_1EDD2C678, MEMORY[0x1E69663E0]);
  v30 = v42;
  result = sub_1D9C7DB0C();
  if (v17)
  {
    if (v17 == 2)
    {
      v33 = *(a1 + 16);
      v32 = *(a1 + 24);
    }

    else
    {
      v33 = a1;
      v32 = a1 >> 32;
    }
  }

  else
  {
    v33 = 0;
    v32 = BYTE6(a2);
  }

  if (v32 >= 5 && v32 >= v33)
  {
    v34 = sub_1D9C7B85C();
    v35 = v46;
    v37 = sub_1D9B89380(v34, v36);
    if (v35)
    {
      (*(v43 + 8))(v30, v44);
    }

    else
    {
      v39 = v37;
      v40 = v38;
      a1 = sub_1D9C7DAAC();
      (*(v43 + 8))(v30, v44);
      sub_1D99A5748(v39, v40);
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B89380(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v29[3] = MEMORY[0x1E6969080];
      v29[4] = MEMORY[0x1E6969078];
      v29[0] = a1;
      v29[1] = a2;
      v9 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x1E6969080]);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 != 2)
        {
          memset(v27, 0, 14);
          v14 = v27;
          v13 = v27;
          goto LABEL_33;
        }

        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        v17 = sub_1D9C7B63C();
        if (v17)
        {
          v18 = sub_1D9C7B65C();
          v10 = v15 - v18;
          if (__OFSUB__(v15, v18))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v17 += v10;
        }

        v5 = __OFSUB__(v16, v15);
        v19 = v16 - v15;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v27[0] = *v9;
        LOWORD(v27[1]) = v11;
        BYTE2(v27[1]) = BYTE2(v11);
        BYTE3(v27[1]) = BYTE3(v11);
        BYTE4(v27[1]) = BYTE4(v11);
        BYTE5(v27[1]) = BYTE5(v11);
        v13 = v27 + BYTE6(v11);
        v14 = v27;
LABEL_33:
        sub_1D9BCE964(v14, v13, &v28);
        v7 = v28;
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        return v7;
      }

      v20 = v10;
      v21 = v10 >> 32;
      v19 = v21 - v20;
      if (v21 >= v20)
      {
        v17 = sub_1D9C7B63C();
        if (!v17)
        {
LABEL_25:
          v23 = sub_1D9C7B64C();
          if (v23 >= v19)
          {
            v24 = v19;
          }

          else
          {
            v24 = v23;
          }

          v25 = (v24 + v17);
          if (v17)
          {
            v13 = v25;
          }

          else
          {
            v13 = 0;
          }

          v14 = v17;
          goto LABEL_33;
        }

        v22 = sub_1D9C7B65C();
        if (!__OFSUB__(v20, v22))
        {
          v17 += v20 - v22;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1D99A5748(a1, a2);
  v7 = sub_1D9C7DABC();
  sub_1D9B89960(&qword_1ECB53D48, MEMORY[0x1E6966370]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E6966368], v7);
  swift_willThrow();
  return v7;
}

uint64_t sub_1D9B8967C()
{
  result = sub_1D9B899A8();
  qword_1EDD35440 = result;
  *algn_1EDD35448 = v1;
  return result;
}

uint64_t sub_1D9B896A0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_1D9C7DB2C();
      sub_1D9B89960(&qword_1EDD2C670, MEMORY[0x1E6966620]);
      return sub_1D9C7DACC();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1D9B89880(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1D9B89880(v4, v5);
  }

  sub_1D9C7DB2C();
  sub_1D9B89960(&qword_1EDD2C670, MEMORY[0x1E6966620]);
  return sub_1D9C7DACC();
}

uint64_t sub_1D9B89880(uint64_t a1, uint64_t a2)
{
  result = sub_1D9C7B63C();
  if (!result || (result = sub_1D9C7B65C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1D9C7B64C();
      sub_1D9C7DB2C();
      sub_1D9B89960(&qword_1EDD2C670, MEMORY[0x1E6966620]);
      return sub_1D9C7DACC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B89960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9B899A8()
{
  v0 = sub_1D9C7DF5C();
  *(v0 + 16) = 24;
  qmemcpy((v0 + 32), "Q3J5c3RhbEdsb3dDQXJnb3MK", 24);
  v1 = sub_1D9BCEC04(v0);

  return v1;
}

uint64_t sub_1D9B89A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51030);
  sub_1D9C7E94C();
  result = sub_1D9C7E27C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D9B89B08(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51030);
  v4 = sub_1D9C7E94C();
  v5 = sub_1D9C7E27C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  if (os_unfair_lock_trylock((*(v1 + *(v3 + 184)) + 16)))
  {
    v9 = *v1;
    v10 = *(v1 + *(*v1 + 176));
    if (v10)
    {
      v11 = (v10 & a1) == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
      v12 = *(*v1 + 152);
      swift_beginAccess();
      (*(v6 + 40))(v1 + v12, v8, v5);
      swift_endAccess();
      v9 = *v1;
    }

    os_unfair_lock_unlock((*(v1 + *(v9 + 184)) + 16));
  }
}

uint64_t sub_1D9B89D00()
{
  v1 = *(*v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51030);
  sub_1D9C7E94C();
  v2 = sub_1D9C7E27C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D9979BF4(*(v0 + *(*v0 + 160)));
  sub_1D9979BF4(*(v0 + *(*v0 + 168)));
}

char *sub_1D9B89E20()
{
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  *(v0 + 2) = 0;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = *(*v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51030);
  sub_1D9C7E94C();
  v5 = sub_1D9C7E27C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  sub_1D9979BF4(*&v0[*(*v0 + 160)]);
  sub_1D9979BF4(*&v0[*(*v0 + 168)]);

  return v0;
}

uint64_t sub_1D9B89FC0()
{
  sub_1D9B89E20();

  return swift_deallocClassInstance();
}

unint64_t sub_1D9B8A044()
{
  result = qword_1ECB53D50;
  if (!qword_1ECB53D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D50);
  }

  return result;
}

uint64_t type metadata accessor for PetsHeadTorsoDomainAssignmentRule()
{
  result = qword_1EDD31198;
  if (!qword_1EDD31198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B8A10C()
{
  result = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9B8A194(void **a1)
{
  v2 = *(_s14DetectedResultVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E918C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D9B8B778(v5);
  *a1 = v3;
}

uint64_t sub_1D9B8A23C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v176 = a3;
  v7 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v167 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for PetsHeadTorsoDomainAssignmentRule();
  MEMORY[0x1EEE9AC00](v178);
  v166 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v172 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v175 = &v156 - v13;
  v177 = _s14DetectedResultVMa();
  v174 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v15 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9C7D8DC();
  v180 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v156 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v171 = &v156 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v170 = &v156 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v173 = &v156 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v165 = &v156 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v169 = &v156 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v164 = &v156 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v163 = &v156 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v36 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v156 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v156 - v42;
  v44 = a1[7];
  v224 = a1[6];
  v225 = v44;
  v226[0] = a1[8];
  *(v226 + 13) = *(a1 + 141);
  v45 = a1[3];
  v220 = a1[2];
  v221 = v45;
  v46 = a1[5];
  v222 = a1[4];
  v223 = v46;
  v47 = a1[1];
  v218 = *a1;
  v219 = v47;
  v179 = a2;
  if (*(a2 + 104))
  {
    v48 = a1[7];
    a4[6] = a1[6];
    a4[7] = v48;
    a4[8] = a1[8];
    *(a4 + 141) = *(a1 + 141);
    v49 = a1[3];
    a4[2] = a1[2];
    a4[3] = v49;
    v50 = a1[5];
    a4[4] = a1[4];
    a4[5] = v50;
    v51 = a1[1];
    *a4 = *a1;
    a4[1] = v51;
    return sub_1D99AB100(&v218, &v209, &qword_1ECB510B8);
  }

  v160 = v21;
  v161 = v18;
  v158 = v41;
  v159 = v15;
  v168 = v16;
  v162 = a4;
  v52 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(0);
  sub_1D99AB100(v181 + *(v52 + 32), v43, &qword_1ECB510C8);
  v53 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v157 = *(v53 - 8);
  v54 = v157 + 48;
  v55 = *(v157 + 48);
  v56 = v55(v43, 1, v53);
  sub_1D99A6AE0(v43, &qword_1ECB510C8);
  if (v56 == 1 || (v57 = *(v52 + 28), sub_1D99AB100(v181 + v57, v39, &qword_1ECB510C8), v58 = v55(v39, 1, v53), sub_1D99A6AE0(v39, &qword_1ECB510C8), v58 == 1))
  {
    v59 = v160;
    static Logger.argos.getter(v160);
    v60 = v161;
    sub_1D9A3E0E0(v161);
    v61 = *(v180 + 8);
    v62 = v168;
    v61(v59, v168);
    v63 = sub_1D9C7D8BC();
    v64 = sub_1D9C7E09C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1D9962000, v63, v64, "Must have both head and torso threshold config.", v65, 2u);
      MEMORY[0x1DA7405F0](v65, -1, -1);
    }

    v61(v60, v62);
    v66 = v225;
    v67 = v162;
    v162[6] = v224;
    v67[7] = v66;
    v67[8] = v226[0];
    *(v67 + 141) = *(v226 + 13);
    v68 = v221;
    v67[2] = v220;
    v67[3] = v68;
    v69 = v223;
    v67[4] = v222;
    v67[5] = v69;
    v70 = v219;
    *v67 = v218;
    v67[1] = v70;
    return sub_1D99AB100(&v218, &v209, &qword_1ECB510B8);
  }

  v156 = v54;
  v160 = v55;
  v72 = v53;
  v73 = v181;
  if (*(*v181 + 16))
  {
    v74 = v179;
    if (*(v176 + 8))
    {
      sub_1D99B1E14(*v181);
      v161 = v76;
      if (!v76)
      {
        v129 = v163;
        static Logger.argos.getter(v163);
        v130 = v164;
        sub_1D9A3E0E0(v164);
        v131 = *(v180 + 8);
        v132 = v168;
        v131(v129, v168);
        v133 = sub_1D9C7D8BC();
        v134 = sub_1D9C7E09C();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          _os_log_impl(&dword_1D9962000, v133, v134, "No satisfied coarse label.", v135, 2u);
          MEMORY[0x1DA7405F0](v135, -1, -1);
        }

        v131(v130, v132);
        sub_1D99AB100(&v218, &v209, &qword_1ECB510B8);
        goto LABEL_28;
      }

      LODWORD(v164) = v75;
    }

    else
    {
      v161 = 0;
      LODWORD(v164) = 0;
    }
  }

  else
  {
    v161 = 0;
    LODWORD(v164) = 0;
    v74 = v179;
  }

  v77 = *(v74 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D8);
  v78 = (*(v157 + 80) + 32) & ~*(v157 + 80);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1D9C85660;
  v80 = v79 + v78;
  v81 = v73;
  v82 = v158;
  sub_1D99AB100(v73 + v57, v158, &qword_1ECB510C8);
  v83 = v160;
  if (v160(v82, 1, v72) == 1)
  {
    *v80 = 0;
    *(v80 + 8) = 0xE000000000000000;
    *(v80 + 16) = 0;
    *(v80 + 20) = 0;
    sub_1D9C7D3BC();
    v84 = v83(v82, 1, v72);
    v85 = v180;
    v86 = v174;
    v87 = v159;
    if (v84 != 1)
    {
      sub_1D99A6AE0(v82, &qword_1ECB510C8);
    }
  }

  else
  {
    sub_1D99E03D4(v82, v80, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    v85 = v180;
    v86 = v174;
    v87 = v159;
  }

  *&v209 = *(v81 + *(v178 + 28));

  v88 = v175;
  sub_1D9A5FF38(v79, &v209, v77, v175);
  swift_setDeallocating();
  sub_1D9B8B6F8(v80, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  swift_deallocClassInstance();

  v89 = *(v86 + 48);
  v90 = v177;
  if (v89(v88, 1, v177) == 1)
  {
    sub_1D99A6AE0(v88, &qword_1ECB510C0);
    v91 = v170;
    static Logger.argos.getter(v170);
    v92 = v171;
    sub_1D9A3E0E0(v171);
    v93 = *(v85 + 8);
    v94 = v168;
    v93(v91, v168);
    v95 = sub_1D9C7D8BC();
    v96 = sub_1D9C7E09C();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_1D9962000, v95, v96, "No satisfied torso label.", v97, 2u);
      MEMORY[0x1DA7405F0](v97, -1, -1);
    }

    v93(v92, v94);
LABEL_27:
    sub_1D99AB100(&v218, &v209, &qword_1ECB510B8);
LABEL_28:

    v106 = v225;
    v107 = v162;
    v162[6] = v224;
    v107[7] = v106;
    v107[8] = v226[0];
    *(v107 + 141) = *(v226 + 13);
    v108 = v221;
    v107[2] = v220;
    v107[3] = v108;
    v109 = v223;
    v107[4] = v222;
    v107[5] = v109;
    v110 = v219;
    *v107 = v218;
    v107[1] = v110;
    return result;
  }

  sub_1D99E03D4(v88, v87, _s14DetectedResultVMa);
  v98 = v172;
  v99 = v179;
  sub_1D9B8B388(v179, v176, v172);
  v100 = v89(v98, 1, v90);
  sub_1D99A6AE0(v98, &qword_1ECB510C0);
  if (v100 == 1)
  {
    v101 = v165;
    static Logger.argos.getter(v165);
    sub_1D9A3E0E0(v173);
    v102 = *(v85 + 8);
    v102(v101, v168);
    v103 = sub_1D9C7D8BC();
    v104 = sub_1D9C7E09C();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_1D9962000, v103, v104, "No satisfied head label.", v105, 2u);
      MEMORY[0x1DA7405F0](v105, -1, -1);
    }

    v102(v173, v168);
    sub_1D9B8B6F8(v87, _s14DetectedResultVMa);
    goto LABEL_27;
  }

  v111 = v169;
  static Logger.argos.getter(v169);
  v112 = v166;
  sub_1D9B8C958(v181, v166, type metadata accessor for PetsHeadTorsoDomainAssignmentRule);
  v113 = v167;
  sub_1D9B8C958(v99, v167, type metadata accessor for VisualUnderstanding.ImageRegion);
  v114 = sub_1D9C7D8BC();
  v115 = sub_1D9C7E09C();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *&v202[0] = v117;
    *v116 = 136315394;
    v118 = v178;
    v119 = sub_1D9A15C94(*(v112 + *(v178 + 20)));
    v120 = v113;
    v122 = v121;
    sub_1D9B8B6F8(v112, type metadata accessor for PetsHeadTorsoDomainAssignmentRule);
    v123 = sub_1D9A0E224(v119, v122, v202);

    *(v116 + 4) = v123;
    *(v116 + 12) = 2080;
    v124 = v120[1];
    v209 = *v120;
    v210 = v124;
    v125 = NormalizedRect.loggingDescription.getter();
    v127 = v126;
    sub_1D9B8B6F8(v120, type metadata accessor for VisualUnderstanding.ImageRegion);
    v128 = sub_1D9A0E224(v125, v127, v202);

    *(v116 + 14) = v128;
    _os_log_impl(&dword_1D9962000, v114, v115, "Assign %s to region %s", v116, 0x16u);
    swift_arrayDestroy();
    v87 = v159;
    MEMORY[0x1DA7405F0](v117, -1, -1);
    MEMORY[0x1DA7405F0](v116, -1, -1);

    (*(v180 + 8))(v169, v168);
  }

  else
  {

    sub_1D9B8B6F8(v113, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B8B6F8(v112, type metadata accessor for PetsHeadTorsoDomainAssignmentRule);
    (*(v180 + 8))(v111, v168);
    v118 = v178;
  }

  v136 = *(v181 + *(v118 + 20));
  v137 = (v87 + *(v177 + 28));
  v138 = *v137;
  v139 = v137[1];
  v140 = v137[2];
  v141 = v137[3];
  v142 = *(v87 + *(v177 + 32));
  LODWORD(v143) = v164;
  if (!v161)
  {
    v143 = 0.0;
  }

  LOBYTE(v202[0]) = v136;
  *(v202 + 8) = 0u;
  *(&v202[1] + 8) = 0u;
  BYTE8(v202[2]) = 0;
  v203 = 0u;
  v204 = 0u;
  *&v205 = v138;
  *(&v205 + 1) = v139;
  *&v206 = v140;
  *(&v206 + 1) = v141;
  LODWORD(v207) = 0;
  *(&v207 + 4) = __PAIR64__(LODWORD(v143), v142);
  HIDWORD(v207) = 0;
  LOWORD(v208[0]) = 0;
  *&v208[1] = 0;
  *(&v208[0] + 1) = 0;
  *(&v208[1] + 5) = 0;
  v215 = v224;
  v216 = v225;
  v217[0] = v226[0];
  *(v217 + 13) = *(v226 + 13);
  v211 = v220;
  v212 = v221;
  v213 = v222;
  v214 = v223;
  v209 = v218;
  v210 = v219;
  if (sub_1D99AE104(&v209) != 1)
  {
    v146 = sub_1D9A15C94(v209);
    v148 = v147;
    if (v146 == sub_1D9A15C94(v136) && v148 == v149)
    {
    }

    else
    {
      v150 = sub_1D9C7E7DC();

      if ((v150 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v199 = v215;
    v200 = v216;
    v201[0] = v217[0];
    *(v201 + 13) = *(v217 + 13);
    v195 = v211;
    v196 = v212;
    v197 = v213;
    v198 = v214;
    v193 = v209;
    v194 = v210;
    v190 = v206;
    v191 = v207;
    v192[0] = v208[0];
    *(v192 + 13) = *(v208 + 13);
    v186 = v202[2];
    v187 = v203;
    v188 = v204;
    v189 = v205;
    v184 = v202[0];
    v185 = v202[1];
    sub_1D9B67854(&v193, &v184, v182);
    sub_1D9B8B6F8(v87, _s14DetectedResultVMa);
    sub_1D99AE0B0(v202);
    v190 = v182[6];
    v191 = v182[7];
    v192[0] = v183[0];
    *(v192 + 13) = *(v183 + 13);
    v186 = v182[2];
    v187 = v182[3];
    v188 = v182[4];
    v189 = v182[5];
    v144 = v182[0];
    v145 = v182[1];
    goto LABEL_45;
  }

LABEL_39:
  sub_1D9B8B6F8(v87, _s14DetectedResultVMa);
  v190 = v206;
  v191 = v207;
  v192[0] = v208[0];
  *(v192 + 13) = *(v208 + 13);
  v186 = v202[2];
  v187 = v203;
  v188 = v204;
  v189 = v205;
  v144 = v202[0];
  v145 = v202[1];
LABEL_45:
  v184 = v144;
  v185 = v145;
  faiss::NormalizationTransform::~NormalizationTransform(&v184);
  v199 = v190;
  v200 = v191;
  v201[0] = v192[0];
  *(v201 + 13) = *(v192 + 13);
  v195 = v186;
  v196 = v187;
  v197 = v188;
  v198 = v189;
  v193 = v184;
  v194 = v185;
  v151 = v162;
  v152 = v191;
  v162[6] = v190;
  v151[7] = v152;
  v151[8] = v201[0];
  *(v151 + 141) = *(v201 + 13);
  v153 = v196;
  v151[2] = v195;
  v151[3] = v153;
  v154 = v198;
  v151[4] = v197;
  v151[5] = v154;
  v155 = v194;
  *v151 = v193;
  v151[1] = v155;
}

uint64_t sub_1D9B8B388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D8);
  v10 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D9C85660;
  v14 = v13 + v12;
  v15 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(0);
  sub_1D99AB100(v3 + *(v15 + 32), v8, &qword_1ECB510C8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v10) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 20) = 0;
    sub_1D9C7D3BC();
    if (v16(v8, 1, v10) != 1)
    {
      sub_1D99A6AE0(v8, &qword_1ECB510C8);
    }
  }

  else
  {
    sub_1D99E03D4(v8, v14, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  }

  v23 = *(v3 + *(type metadata accessor for PetsHeadTorsoDomainAssignmentRule() + 28));

  v17 = sub_1D9A601D8(v13, &v23, v9);
  swift_setDeallocating();
  sub_1D9B8B6F8(v14, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  swift_deallocClassInstance();

  v23 = v17;

  sub_1D9B8A194(&v23);

  v19 = v23;
  MEMORY[0x1EEE9AC00](v18);
  *(&v21 - 2) = a1;
  *(&v21 - 1) = v3;
  sub_1D9B09318(sub_1D9B8B758, v19, v22);
}

BOOL sub_1D9B8B67C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = (a1 + *(_s14DetectedResultVMa() + 24));
  v6 = v5[1];
  v9[2] = *v5;
  v9[3] = v6;
  v7 = a2[1];
  v9[0] = *a2;
  v9[1] = v7;
  return *(a3 + 8) < sub_1D9A47A7C(v9);
}

uint64_t sub_1D9B8B6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D9B8B778(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D9C7E79C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        _s14DetectedResultVMa();
        v6 = sub_1D9C7DF5C();
        *(v6 + 16) = v5;
      }

      v7 = *(_s14DetectedResultVMa() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D9B8BAFC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D9B8B8A4(0, v2, 1, a1);
  }
}

void sub_1D9B8B8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s14DetectedResultVMa();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_1D9B8C958(v23, v17, _s14DetectedResultVMa);
      sub_1D9B8C958(v20, v13, _s14DetectedResultVMa);
      v24 = *(v8 + 32);
      v25 = *&v17[v24];
      v26 = *&v13[v24];
      sub_1D9B8B6F8(v13, _s14DetectedResultVMa);
      sub_1D9B8B6F8(v17, _s14DetectedResultVMa);
      if (v26 >= v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_1D99E03D4(v23, v10, _s14DetectedResultVMa);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D99E03D4(v10, v20, _s14DetectedResultVMa);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9B8BAFC(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = _s14DetectedResultVMa();
  v118 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v107 - v16;
  v120 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_135;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
    }

    else
    {
LABEL_129:
      v102 = sub_1D99E8FDC(a4);
    }

    v124 = v102;
    a4 = *(v102 + 2);
    if (a4 >= 2)
    {
      while (*v120)
      {
        v103 = *&v102[16 * a4];
        v104 = v102;
        v105 = *&v102[16 * a4 + 24];
        sub_1D9B8C460(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *&v102[16 * a4 + 16], *v120 + *(v118 + 72) * v105, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v105 < v103)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1D99E8FDC(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v124 = v104;
        sub_1D99E8F50(a4 - 1);
        v102 = v124;
        a4 = *(v124 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v109 = a4;
  v123 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v114 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v118 + 72);
      v5 = *v120 + v23 * v22;
      v117 = *v120;
      v24 = v117;
      sub_1D9B8C958(v117 + v23 * v22, v17, _s14DetectedResultVMa);
      v25 = v24 + v23 * v21;
      v26 = v21;
      v27 = v122;
      sub_1D9B8C958(v25, v122, _s14DetectedResultVMa);
      v28 = *(v9 + 32);
      v29 = *&v17[v28];
      v30 = *(v27 + v28);
      sub_1D9B8B6F8(v27, _s14DetectedResultVMa);
      sub_1D9B8B6F8(v17, _s14DetectedResultVMa);
      v108 = v26;
      v31 = v26 + 2;
      v119 = v23;
      v32 = v117 + v23 * (v26 + 2);
      while (v18 != v31)
      {
        sub_1D9B8C958(v32, v17, _s14DetectedResultVMa);
        v33 = v122;
        sub_1D9B8C958(v5, v122, _s14DetectedResultVMa);
        v34 = *(v123 + 32);
        v35 = *&v17[v34];
        v36 = *(v33 + v34);
        sub_1D9B8B6F8(v33, _s14DetectedResultVMa);
        sub_1D9B8B6F8(v17, _s14DetectedResultVMa);
        ++v31;
        v32 += v119;
        v5 += v119;
        if (v30 < v29 == v36 >= v35)
        {
          v18 = v31 - 1;
          break;
        }
      }

      v21 = v108;
      a4 = v109;
      v9 = v123;
      if (v30 < v29)
      {
        if (v18 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v18)
        {
          v107 = v6;
          v37 = v119 * (v18 - 1);
          v38 = v18 * v119;
          v39 = v18;
          v40 = v18;
          v41 = v108;
          v42 = v108 * v119;
          do
          {
            if (v41 != --v40)
            {
              v43 = *v120;
              if (!*v120)
              {
                goto LABEL_132;
              }

              v5 = v43 + v42;
              sub_1D99E03D4(v43 + v42, v113, _s14DetectedResultVMa);
              if (v42 < v37 || v5 >= v43 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D99E03D4(v113, v43 + v37, _s14DetectedResultVMa);
            }

            ++v41;
            v37 -= v119;
            v38 -= v119;
            v42 += v119;
          }

          while (v41 < v40);
          v6 = v107;
          v21 = v108;
          a4 = v109;
          v9 = v123;
          v18 = v39;
        }
      }
    }

    v44 = v120[1];
    if (v18 < v44)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_125;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_127;
        }

        if ((v21 + a4) >= v44)
        {
          v45 = v120[1];
        }

        else
        {
          v45 = v21 + a4;
        }

        if (v45 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v18 != v45)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v114;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v114 + 2) + 1, 1, v114);
    }

    a4 = *(v20 + 2);
    v46 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v46 >> 1)
    {
      v20 = sub_1D99E8FF0((v46 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v47 = &v20[16 * a4];
    *(v47 + 4) = v21;
    *(v47 + 5) = v19;
    v48 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v49 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v50 = *(v20 + 4);
          v51 = *(v20 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_52:
          if (v53)
          {
            goto LABEL_113;
          }

          v66 = &v20[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_116;
          }

          v72 = &v20[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_120;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v76 = &v20[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_66:
        if (v71)
        {
          goto LABEL_115;
        }

        v79 = &v20[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_118;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v49 - 1;
        if (v49 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_128;
        }

        if (!*v120)
        {
          goto LABEL_131;
        }

        v87 = v20;
        v88 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v49 + 40];
        sub_1D9B8C460(*v120 + *(v118 + 72) * v88, *v120 + *(v118 + 72) * *&v20[16 * v49 + 32], *v120 + *(v118 + 72) * v5, v48);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v88)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v89 = v87;
        }

        else
        {
          v89 = sub_1D99E8FDC(v87);
        }

        v9 = v123;
        if (a4 >= *(v89 + 2))
        {
          goto LABEL_110;
        }

        v90 = &v89[16 * a4];
        *(v90 + 4) = v88;
        *(v90 + 5) = v5;
        v124 = v89;
        sub_1D99E8F50(v49);
        v20 = v124;
        v5 = *(v124 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v20[16 * v5 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_111;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_112;
      }

      v61 = &v20[16 * v5];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_114;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_117;
      }

      if (v65 >= v57)
      {
        v83 = &v20[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_121;
        }

        if (v52 < v86)
        {
          v49 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v120[1];
    a4 = v109;
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  v107 = v6;
  v108 = v21;
  a4 = *v120;
  v91 = *(v118 + 72);
  v92 = *v120 + v91 * (v18 - 1);
  v93 = -v91;
  v94 = v21 - v18;
  v111 = v91;
  v112 = v45;
  v5 = a4 + v18 * v91;
LABEL_86:
  v119 = v18;
  v115 = v5;
  v116 = v94;
  v117 = v92;
  v95 = v123;
  while (1)
  {
    sub_1D9B8C958(v5, v17, _s14DetectedResultVMa);
    v96 = v122;
    sub_1D9B8C958(v92, v122, _s14DetectedResultVMa);
    v97 = *(v95 + 32);
    v98 = *&v17[v97];
    v99 = *(v96 + v97);
    sub_1D9B8B6F8(v96, _s14DetectedResultVMa);
    sub_1D9B8B6F8(v17, _s14DetectedResultVMa);
    if (v99 >= v98)
    {
LABEL_85:
      v18 = v119 + 1;
      v19 = v112;
      v92 = v117 + v111;
      v94 = v116 - 1;
      v5 = v115 + v111;
      if (v119 + 1 != v112)
      {
        goto LABEL_86;
      }

      v6 = v107;
      v21 = v108;
      v9 = v123;
      if (v112 < v108)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v100 = v121;
    sub_1D99E03D4(v5, v121, _s14DetectedResultVMa);
    v95 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D99E03D4(v100, v92, _s14DetectedResultVMa);
    v92 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_1D9B8C460(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v46 = _s14DetectedResultVMa();
  MEMORY[0x1EEE9AC00](v46);
  v45 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41[1] = v4;
    v24 = a4 + v17;
    if (v17 < 1)
    {
      v27 = a4 + v17;
    }

    else
    {
      v25 = -v13;
      v26 = a4 + v17;
      v27 = v24;
      v43 = v25;
      v44 = a4;
      do
      {
        v41[0] = v27;
        v28 = a2;
        v29 = a2 + v25;
        while (1)
        {
          v31 = v47;
          if (v28 <= a1)
          {
            v50 = v28;
            v48 = v41[0];
            goto LABEL_59;
          }

          v42 = v27;
          v47 += v25;
          v32 = v26 + v25;
          sub_1D9B8C958(v32, v11, _s14DetectedResultVMa);
          v33 = v29;
          v34 = v29;
          v35 = v11;
          v36 = v45;
          sub_1D9B8C958(v34, v45, _s14DetectedResultVMa);
          v37 = *(v46 + 32);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          v40 = v36;
          v11 = v35;
          sub_1D9B8B6F8(v40, _s14DetectedResultVMa);
          sub_1D9B8B6F8(v35, _s14DetectedResultVMa);
          if (v39 < v38)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v47 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v44;
          v25 = v43;
          if (!v30)
          {
            a2 = v28;
            goto LABEL_58;
          }
        }

        if (v31 < v28 || v47 >= v28)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v42;
          v25 = v43;
        }

        else
        {
          v27 = v42;
          v25 = v43;
          a2 = v33;
          if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v44);
    }

LABEL_58:
    v50 = a2;
    v48 = v27;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < v47)
    {
      do
      {
        sub_1D9B8C958(a2, v11, _s14DetectedResultVMa);
        v20 = v45;
        sub_1D9B8C958(a4, v45, _s14DetectedResultVMa);
        v21 = *(v46 + 32);
        v22 = *&v11[v21];
        v23 = *(v20 + v21);
        sub_1D9B8B6F8(v20, _s14DetectedResultVMa);
        sub_1D9B8B6F8(v11, _s14DetectedResultVMa);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v50 = a1;
      }

      while (a4 < v18 && a2 < v47);
    }
  }

LABEL_59:
  sub_1D9B01600(&v50, &v49, &v48);
}

uint64_t sub_1D9B8C958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t S2EdgeIndex.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v2;
  *(v0 + 32) = 30;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  return result;
}

uint64_t S2EdgeIndex.deinit()
{

  return v0;
}

uint64_t sub_1D9B8CA40()
{
  *(v0 + 32) = 30;
  swift_beginAccess();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];

  *(v0 + 24) = v1;
}

uint64_t sub_1D9B8CAA8()
{
  result = swift_beginAccess();
  if ((*(v0 + 40) & 1) == 0)
  {
    result = (*(*v0 + 248))(result);
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      if (result)
      {
        v2 = 0;
        v20 = *(*v0 + 256);
        v19 = *(*v0 + 264);
        v3 = MEMORY[0x1E69E7CC0];
        v4 = MEMORY[0x1E69E7CC0];
        v21 = result;
        v20(&v25, 0);
        while (1)
        {
          v22 = v25;
          v5 = v26;
          v19(&v25, v2);
          v6 = v26;
          v7 = v25;
          v25 = v22;
          v26 = v5;
          v23 = v7;
          v24 = v6;
          v8 = sub_1D9B8FBA0(&v25, &v23, 1, v6, *&v7, *&v22);
          v10 = *(v0 + 32);
          if (v8 < v10)
          {
            v10 = v8;
          }

          *(v0 + 32) = v10;
          v11 = *(v9 + 16);
          if (v11)
          {
            v12 = (v9 + 32);
            do
            {
              v14 = *v12++;
              v13 = v14;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v3 = sub_1D9AF9310(0, *(v3 + 2) + 1, 1, v3);
              }

              v16 = *(v3 + 2);
              v15 = *(v3 + 3);
              if (v16 >= v15 >> 1)
              {
                v3 = sub_1D9AF9310((v15 > 1), v16 + 1, 1, v3);
              }

              *(v3 + 2) = v16 + 1;
              *&v3[8 * v16 + 32] = v13;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_1D9AF85BC(0, *(v4 + 2) + 1, 1, v4);
              }

              v18 = *(v4 + 2);
              v17 = *(v4 + 3);
              if (v18 >= v17 >> 1)
              {
                v4 = sub_1D9AF85BC((v17 > 1), v18 + 1, 1, v4);
              }

              *(v4 + 2) = v18 + 1;
              *&v4[8 * v18 + 32] = v2;
              --v11;
            }

            while (v11);
          }

          ++v2;

          if (v2 == v21)
          {
            break;
          }

          v20(&v25, v2);
        }
      }

      else
      {
        v3 = MEMORY[0x1E69E7CC0];
        v4 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 16) = v3;

      *(v0 + 24) = v4;

      result = sub_1D9B8CD4C();
      *(v0 + 40) = 1;
    }
  }

  return result;
}

uint64_t sub_1D9B8CD4C()
{
  v21 = MEMORY[0x1E69E7CC0];
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    v2 = sub_1D9AF85BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = 0;
    v4 = *(v2 + 2);
    do
    {
      v5 = *(v2 + 3);
      if (v4 >= v5 >> 1)
      {
        v2 = sub_1D9AF85BC((v5 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      *&v2[8 * v4++ + 32] = v3++;
    }

    while (v1 != v3);
    v21 = v2;
  }

  sub_1D9B8FAF8(&v21, v0);

  v7 = *(v21 + 2);
  if (v7)
  {
    v8 = v21 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        break;
      }

      v12 = *(v0 + 16);
      if (v11 >= *(v12 + 16))
      {
        goto LABEL_28;
      }

      v13 = *(v12 + 8 * v11 + 32);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D9AF9310(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
      }

      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1D9AF9310((v14 > 1), v15 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v15 + 1;
      *(v9 + 8 * v15 + 32) = v13;
      v16 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v17 = *(v0 + 24);
      if (v16 >= *(v17 + 16))
      {
        goto LABEL_30;
      }

      v18 = *(v17 + 8 * v16 + 32);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D9AF85BC(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1D9AF85BC((v19 > 1), v20 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v20 + 1;
      *(v10 + 8 * v20 + 32) = v18;
      v8 += 8;
      if (!--v7)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7CC0];
LABEL_24:
    *(v0 + 16) = v9;

    *(v0 + 24) = v10;
  }

  return result;
}

uint64_t sub_1D9B8CFC8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(v1 + 40) & 1) == 0)
  {
    result = (*(*v1 + 248))(result);
    if (result >= 101)
    {
      v4 = *(v1 + 48);
      v5 = __OFADD__(v4, a1);
      v6 = v4 + a1;
      if (v5)
      {
        __break(1u);
      }

      else if (v6 >= 31)
      {
        return sub_1D9B8CAA8();
      }
    }
  }

  return result;
}

uint64_t sub_1D9B8D054(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  result = swift_beginAccess();
  if (*(v2 + 40) == 1)
  {
    v19 = v3;
    v20 = v4;
    v21 = v5;
    *&v23 = v6;
    *(&v23 + 1) = v7;
    v24 = v8;
    sub_1D9B8FBA0(&v19, &v23, 0, v10, v11, v12);
    v14 = v13;
    v22 = sub_1D9B8D30C(v13);
    v19 = v3;
    v20 = v4;
    v21 = v5;
    *&v23 = v6;
    *(&v23 + 1) = v7;
    v24 = v8;
    sub_1D9B8D5D8(&v19, &v23, v14, &v22);

    v15 = v22;
    v16 = *(v22 + 16);
    if (v16)
    {
      v17 = sub_1D9B8E10C(*(v22 + 16), 0);
      v18 = sub_1D9B8ECD4(&v19, v17 + 4, v16, v15);
      sub_1D99C74D4();
      if (v18 == v16)
      {
        return v17;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B8D18C(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    return sub_1D9B8D18C(a2, a1);
  }

  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 - 1;
    v9 = v5 + 32;
    v10 = *(v2 + 24);
    v11 = *(v10 + 16);
    v12 = v6 - 1;
    do
    {
      result = v7 + v12;
      if (__OFADD__(v7, v12))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      result >>= 1;
      if (result >= v6)
      {
        goto LABEL_33;
      }

      if (result >= v11)
      {
        goto LABEL_34;
      }

      v13 = *(v9 + 8 * result);
      v14 = *(v10 + 32 + 8 * result) != 0x7FFFFFFFFFFFFFFFLL;
      if (v13 != a1)
      {
        v14 = v13 < a1;
      }

      if (v14)
      {
        v7 = result + 1;
      }

      else
      {
        if (v13 <= a1)
        {
          result = ~result;
          goto LABEL_21;
        }

        v12 = result - 1;
      }
    }

    while (v12 >= v7);
    if (__OFADD__(v7, 1))
    {
      goto LABEL_39;
    }

    result = v7;
    v10 = *(v2 + 24);
    v11 = *(v10 + 16);
LABEL_21:
    v15 = 0;
    v16 = v10 + 32;
    while (!__OFADD__(v15, v8))
    {
      v17 = (v15 + v8) >> 1;
      if (v17 >= v6)
      {
        goto LABEL_36;
      }

      if (v17 >= v11)
      {
        goto LABEL_37;
      }

      v18 = *(v9 + 8 * v17);
      v19 = *(v16 + 8 * v17) != 0x7FFFFFFFFFFFFFFFLL;
      if (v18 != a2)
      {
        v19 = v18 < a2;
      }

      if (v19)
      {
        v15 = v17 + 1;
      }

      else
      {
        if (v18 <= a2)
        {
          return result;
        }

        v8 = v17 - 1;
      }

      if (v8 < v15)
      {
        goto LABEL_18;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
    result = 0;
    v15 = 0;
LABEL_18:
    if (!__OFADD__(v15, 1))
    {
      return result;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1D9B8D30C(uint64_t result)
{
  v2 = MEMORY[0x1E69E7CD0];
  v35 = MEMORY[0x1E69E7CD0];
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 32;
LABEL_4:
    v6 = *(v5 + 8 * v4);
    v34 = v6;
    result = S2CellId.level.getter();
    v7 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      ++v4;
      while (1)
      {
        if (v7 < *(v1 + 32))
        {
LABEL_3:
          if (v4 != v3)
          {
            goto LABEL_4;
          }

          goto LABEL_22;
        }

        if (__OFSUB__(30, v7))
        {
          break;
        }

        if (0x400000000000001ELL - v7 < 0)
        {
          goto LABEL_50;
        }

        v8 = 2 * (30 - v7);
        v9 = v8 - 65;
        v10 = 1 << v8;
        if (v8 >= 0x40)
        {
          v10 = 0;
        }

        v11 = 1uLL >> ((-2 * (30 - v7)) & 0x3E);
        if (v8 <= 0xFFFFFFFFFFFFFFC0)
        {
          v11 = 0;
        }

        if (((30 - v7) & 0x4000000000000000) != 0)
        {
          v12 = v11;
        }

        else
        {
          v12 = v10;
        }

        if (v9 <= 0xFFFFFFFFFFFFFF7ELL)
        {
          v12 = 0;
        }

        result = sub_1D9B92748(&v34, v6 & -v12 | v12);
        if ((result & 1) == 0)
        {
          goto LABEL_3;
        }

        if (__OFSUB__(v7--, 1))
        {
          __break(1u);
LABEL_22:
          v2 = v35;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    v14 = 0;
    v15 = v2 + 56;
    v16 = 1 << *(v2 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v2 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = MEMORY[0x1E69E7CD0];
    do
    {
LABEL_27:
      if (!v18)
      {
        while (1)
        {
          v21 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_51;
          }

          if (v21 >= v19)
          {

            return v20;
          }

          v18 = *(v15 + 8 * v21);
          ++v14;
          if (v18)
          {
            v14 = v21;
            break;
          }
        }
      }

      v22 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v18)))));
      result = sub_1D9B8D18C(v22, v22);
      if (v23 < result)
      {
        goto LABEL_54;
      }

      v24 = v23;
      v18 &= v18 - 1;
    }

    while (result == v23);
    if (result >= v23)
    {
      goto LABEL_56;
    }

    if ((result & 0x8000000000000000) == 0)
    {
      v32 = v2;
      do
      {
        v27 = *(v1 + 24);
        if (result >= *(v27 + 16))
        {
          goto LABEL_55;
        }

        v33 = result + 1;
        v28 = *(v27 + 8 * result + 32);
        result = sub_1D9C7E8CC();
        v29 = -1 << *(v20 + 32);
        v30 = result & ~v29;
        if ((*(v20 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
        {
          v31 = ~v29;
          while (*(*(v20 + 48) + 8 * v30) != v28)
          {
            v30 = (v30 + 1) & v31;
            if (((*(v20 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v26 = v33;
          if (v33 == v24)
          {
            v2 = v32;
            goto LABEL_27;
          }
        }

        else
        {
LABEL_37:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = v20;
          result = sub_1D9B939B0(v28, v30, isUniquelyReferenced_nonNull_native);
          v26 = v33;
          v20 = v34;
          if (v33 == v24)
          {
            v2 = v32;
            goto LABEL_27;
          }
        }

        result = v26;
      }

      while ((v26 & 0x8000000000000000) == 0);
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1D9B8D5D8(uint64_t result, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 16))
  {
    v5 = v4;
    v7 = a3;
    v8 = *(result + 16);
    v37 = *a2;
    v38 = *result;
    v9 = *(a2 + 2);

    do
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v10 = *(v7 + 2);
        if (!v10)
        {
          goto LABEL_41;
        }
      }

      else
      {
        result = sub_1D9B1A774(v7);
        v7 = result;
        v10 = *(result + 16);
        if (!v10)
        {
LABEL_41:
          __break(1u);
          return result;
        }
      }

      v11 = v10 - 1;
      v12 = *&v7[8 * v11 + 32];
      *(v7 + 2) = v11;
      if (__OFSUB__(0, v12))
      {
        goto LABEL_50;
      }

      v13 = -v12 & v12;
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v14)
      {
        goto LABEL_51;
      }

      result = v12 - v15;
      if (__OFSUB__(v12, v15))
      {
        goto LABEL_52;
      }

      if (__OFADD__(v12, v15))
      {
        goto LABEL_53;
      }

      result = sub_1D9B8D18C(result, v12 + v15);
      if (__OFSUB__(v16, result))
      {
        goto LABEL_54;
      }

      if (v16 - result <= 16)
      {
        v27 = v16;
        if (v16 < result)
        {
          goto LABEL_56;
        }

        if (result != v16)
        {
          if (result < v16)
          {
            if ((result & 0x8000000000000000) == 0)
            {
              do
              {
                v28 = *(v5 + 24);
                if (result >= *(v28 + 16))
                {
                  goto LABEL_49;
                }

                v29 = result + 1;
                v30 = *(v28 + 8 * result + 32);
                v31 = *a4;
                v32 = sub_1D9C7E8CC();
                v33 = -1 << *(v31 + 32);
                v34 = v32 & ~v33;
                if ((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
                {
                  v35 = ~v33;
                  while (*(*(v31 + 48) + 8 * v34) != v30)
                  {
                    v34 = (v34 + 1) & v35;
                    if (((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
                    {
                      goto LABEL_36;
                    }
                  }
                }

                else
                {
LABEL_36:
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v41 = *a4;
                  sub_1D9B939B0(v30, v34, isUniquelyReferenced_nonNull_native);
                  *a4 = v41;
                }

                if (v29 == v27)
                {
                  goto LABEL_4;
                }

                result = v29;
              }

              while ((v29 & 0x8000000000000000) == 0);
            }

            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
          }

          __break(1u);
          return result;
        }
      }

      else
      {
        result = sub_1D9B8D18C(v12, v12);
        if (v17 < result)
        {
          goto LABEL_55;
        }

        v18 = v17;
        if (result != v17)
        {
          if (result < v17)
          {
            while ((result & 0x8000000000000000) == 0)
            {
              v19 = *(v5 + 24);
              if (result >= *(v19 + 16))
              {
                goto LABEL_48;
              }

              v20 = result + 1;
              sub_1D9B91F34(&v41, *(v19 + 8 * result + 32));
              result = v20;
              if (v18 == v20)
              {
                goto LABEL_19;
              }
            }

            goto LABEL_47;
          }

          goto LABEL_57;
        }

LABEL_19:
        *&v39 = v12;
        S2Cell.init(cellId:)(&v39, &v41);
        *&v39 = v41;
        WORD4(v39) = WORD4(v41);
        BYTE10(v39) = BYTE10(v41);
        v40 = v42;
        v21 = S2Cell.subdivide()();

        v22 = *(v21 + 16);
        if (v22)
        {
          v23 = v21 + 48;
          do
          {
            v24 = *(v23 - 16);
            v41 = v38;
            v42 = v8;
            v39 = v37;
            v40 = v9;

            if (sub_1D9B90498(&v41, &v39))
            {
              v26 = *(v7 + 2);
              v25 = *(v7 + 3);
              if (v26 >= v25 >> 1)
              {
                v7 = sub_1D9AFAA28((v25 > 1), v26 + 1, 1, v7);
              }

              *(v7 + 2) = v26 + 1;
              *&v7[8 * v26 + 32] = v24;
            }

            else
            {
            }

            v23 += 24;
            --v22;
          }

          while (v22);
        }
      }

LABEL_4:
      ;
    }

    while (*(v7 + 2));
  }

  return result;
}

Swift::Void __swiftcall S2EdgeIndex.DataEdgeIterator.getCandidates(a:b:)(VisualLookUp::S2Point a, VisualLookUp::S2Point b)
{
  v5 = v4;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v12 = *v4;
  v13 = swift_beginAccess();
  if (*(v12 + 40) == 1)
  {
    *(v5 + 8) = 0;
    goto LABEL_8;
  }

  v17 = (*(*v12 + 248))(v13);
  if (v17 > 100)
  {
    v18 = *(v12 + 48);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v20 >= 31)
    {
      v17 = sub_1D9B8CAA8();
    }
  }

  v21 = *(v12 + 40);
  *(v5 + 8) = v21 ^ 1;
  if ((v21 & 1) == 0)
  {
    v30 = *(v12 + 48);
    v19 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v19)
    {
      *(v12 + 48) = v31;
      v5[2] = 0;
      v28 = (*(*v12 + 248))(v17);
      v29 = 3;
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
    return;
  }

LABEL_8:
  v32 = v6;
  v33 = v7;
  v34 = v8;
  *&v36 = v9;
  *(&v36 + 1) = v10;
  v37 = v11;
  sub_1D9B8FBA0(&v32, &v36, 0, v14, v15, v16);
  v23 = v22;
  v35 = sub_1D9B8D30C(v22);
  v32 = v6;
  v33 = v7;
  v34 = v8;
  *&v36 = v9;
  *(&v36 + 1) = v10;
  v37 = v11;
  sub_1D9B8D5D8(&v32, &v36, v23, &v35);

  v24 = v35;
  v25 = *(v35 + 16);
  if (!v25)
  {
LABEL_11:

    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v26 = sub_1D9B8E10C(*(v35 + 16), 0);
  v27 = sub_1D9B8ECD4(&v32, v26 + 4, v25, v24);
  sub_1D99C74D4();
  if (v27 != v25)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:

  v5[4] = v26;
  v5[5] = 0;
  if (!v26[2])
  {
    return;
  }

  v28 = v26[4];
  v29 = 2;
LABEL_16:
  v5[v29] = v28;
}

Swift::Int_optional __swiftcall S2EdgeIndex.DataEdgeIterator.next()()
{
  v1 = *(v0 + 16);
  if ((*(v0 + 8) & 1) == 0)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    if (v4 < *(v3 + 16))
    {
      *(v0 + 40) = v4 + 1;
      if (v4 + 1 >= *(v3 + 16))
      {
        v5 = 0;
        goto LABEL_12;
      }

      if (v4 < -1)
      {
        __break(1u);
        goto LABEL_12;
      }

      v2 = *(v3 + 8 * (v4 + 1) + 32);
      goto LABEL_8;
    }

LABEL_9:
    v1 = 0;
    v5 = 1;
    goto LABEL_12;
  }

  if (v1 >= *(v0 + 24))
  {
    goto LABEL_9;
  }

  v2 = v1 + 1;
LABEL_8:
  v5 = 0;
  *(v0 + 16) = v2;
LABEL_12:
  result.value = v1;
  result.is_nil = v5;
  return result;
}

uint64_t S2EdgeIndex.DataEdgeIterator.init(edgeIndex:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  *(a2 + 40) = 0;
  *a2 = result;
  return result;
}

uint64_t S2EdgeIndex.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v1;
  *(result + 32) = 30;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

unint64_t *sub_1D9B8DD44(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  v5 = *(v4 + 16);
  if (v3 >= v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(a3 + 24);
  v7 = *(v6 + 16);
  if (v3 >= v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *a2;
  if (*a2 >= v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 >= v7)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v9 = v4 + 32;
  v10 = *(v9 + 8 * v3);
  v11 = *(v9 + 8 * v8);
  v12 = *(v6 + 32 + 8 * v3) < *(v6 + 32 + 8 * v8);
  v13 = v10 == v11;
  v14 = v10 < v11;
  if (v13)
  {
    return v12;
  }

  else
  {
    return v14;
  }
}

void sub_1D9B8DDC4(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 2);
  v8 = *a2;
  v5 = *(a2 + 2);
  v10 = *a1;
  v11 = v4;
  S2CellId.init(point:)(&v10, &v12);
  v10 = v8;
  v11 = v5;
  S2CellId.init(point:)(&v10, &v9);
  v6 = v12;
  v7 = v9;
  if ((v9 ^ v12) >> 61)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  if (v12 == v9)
  {
LABEL_10:
    *a3 = v6;
    return;
  }

  while (!__OFSUB__(0, v6))
  {
    if (__OFSUB__(0, 4 * (-v6 & v6)))
    {
      goto LABEL_12;
    }

    if (__OFSUB__(0, v7))
    {
      goto LABEL_13;
    }

    if (__OFSUB__(0, 4 * (-v7 & v7)))
    {
      goto LABEL_14;
    }

    v6 = (-4 * (-v6 & v6)) & v6 | (4 * (-v6 & v6));
    v7 = (-4 * (-v7 & v7)) & v7 | (4 * (-v7 & v7));
    if (v6 == v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

__n128 sub_1D9B8DEB4@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1->n128_u8[8];
  v3 = v1[2].n128_u64[0];
  v4 = v1[2].n128_u64[1];
  a1->n128_u64[0] = v1->n128_u64[0];
  a1->n128_u8[8] = v2;
  result = v1[1];
  a1[1] = result;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v4;
  return result;
}

uint64_t sub_1D9B8DEE8()
{
  v1 = v0[1];
  v4[0] = *v0;
  v4[1] = v1;
  v4[2] = v0[2];
  v2 = sub_1D9B4317C(v4);
  sub_1D9B90468(v4);
  return v2;
}

Swift::Int sub_1D9B8DF94@<X0>(uint64_t a1@<X8>)
{
  v3 = S2EdgeIndex.DataEdgeIterator.next()();
  *a1 = v3.value;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

uint64_t S2EdgeIndex.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1D9B8E004(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1D9B8E088(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1D9B8E10C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51700);
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

void *sub_1D9B8E190(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51728);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

void *sub_1D9B8E220(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51250);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1D9B8E2B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1D9B8E348(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1D9B8E3D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  if (!a2)
  {
LABEL_18:
    a3 = 0;
    goto LABEL_20;
  }

  if (!a3)
  {
LABEL_20:
    *result = v4;
    *(result + 8) = v5 & 1;
    *(result + 16) = v7;
    *(result + 24) = v6;
    *(result + 32) = v8;
    *(result + 40) = v9;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_23;
  }

  v10 = 0;
  v11 = v3[5];
  v12 = v3[2];
  while ((v5 & 1) == 0)
  {
    v14 = *(v8 + 16);
    if (v11 >= v14)
    {
LABEL_19:
      a3 = v10;
      goto LABEL_20;
    }

    v9 = v11 + 1;
    if (v11 + 1 >= v14)
    {
      ++v11;
      v13 = v12;
    }

    else
    {
      if (v11 < -1)
      {
        goto LABEL_22;
      }

      v7 = *(v8 + 32 + 8 * v9);
      ++v11;
      v13 = v7;
    }

LABEL_14:
    *(a2 + 8 * v10) = v12;
    if (a3 - 1 == v10)
    {
      goto LABEL_20;
    }

    ++v10;
    v12 = v13;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  if (v7 >= v6)
  {
    goto LABEL_19;
  }

  v7 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    v13 = v12 + 1;
    goto LABEL_14;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void *sub_1D9B8E4AC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D9B8E604(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D9B8E75C(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 160 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v29[0] = *v18;
      v29[1] = v19;
      v20 = v18[5];
      v22 = v18[2];
      v21 = v18[3];
      v29[4] = v18[4];
      v29[5] = v20;
      v29[2] = v22;
      v29[3] = v21;
      v24 = v18[7];
      v23 = v18[8];
      v25 = v18[6];
      *(v30 + 13) = *(v18 + 141);
      v29[7] = v24;
      v30[0] = v23;
      v29[6] = v25;
      memmove(v11, v18, 0x9DuLL);
      if (v14 == v10)
      {
        sub_1D99AE054(v29, v28);
        goto LABEL_24;
      }

      v11 += 160;
      sub_1D99AE054(v29, v28);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v27 = v12 + 1;
    }

    else
    {
      v27 = (63 - v7) >> 6;
    }

    v12 = v27 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D9B8E904(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 4 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D9B8EA60(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D9B8EBB8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(a4 + 56) + 56 * (v14 | (v9 << 6));
      v16 = *(v15 + 8);
      v17 = *(v15 + 48);
      v18 = *(v15 + 16);
      v19 = *(v15 + 32);
      *a2 = *v15;
      *(a2 + 8) = v16;
      *(a2 + 16) = v18;
      *(a2 + 32) = v19;
      *(a2 + 48) = v17;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 56;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v21 = v9 + 1;
    }

    else
    {
      v21 = (63 - v6) >> 6;
    }

    v9 = v21 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D9B8ECD4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D9B8EDD4(uint64_t __dst, char *__src, unint64_t *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = &__src[-__dst];
  v11 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v11 = &__src[-__dst];
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v12 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
LABEL_49:
      v43 = v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0);
      if (v8 != v6 || v8 >= &v6[v43 & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v8, v6, 8 * (v43 >> 3));
      }

      return 1;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v17 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      v19 = *(a5 + 16);
      v20 = *(v19 + 16);
      if (v17 >= v20)
      {
        goto LABEL_55;
      }

      v21 = *(a5 + 24);
      v22 = *(v21 + 16);
      if (v17 >= v22)
      {
        goto LABEL_58;
      }

      v23 = *v6;
      if (*v6 >= v20)
      {
        goto LABEL_59;
      }

      if (v23 >= v22)
      {
        goto LABEL_61;
      }

      v24 = v19 + 32;
      v25 = *(v24 + 8 * v17);
      v26 = *(v24 + 8 * v23);
      v27 = *(v21 + 32 + 8 * v17) < *(v21 + 32 + 8 * v23);
      v18 = v25 == v26;
      v28 = v25 < v26;
      if (v18)
      {
        v28 = v27;
      }

      if (v28)
      {
        break;
      }

      v17 = *v6;
      v18 = v9 == v6;
      v6 += 8;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 8;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }

    v18 = v9 == v8;
    v8 += 8;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v15] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[8 * v15];
  if (v13 < 8 || v8 <= v9)
  {
    goto LABEL_49;
  }

LABEL_31:
  v29 = (v8 - 8);
  --v7;
  v30 = v16;
  while (1)
  {
    v32 = *(v30 - 8);
    v30 -= 8;
    v31 = v32;
    if ((v32 & 0x8000000000000000) != 0)
    {
      break;
    }

    v33 = *(a5 + 16);
    v34 = *(v33 + 16);
    if (v31 >= v34)
    {
      goto LABEL_56;
    }

    v35 = *(a5 + 24);
    v36 = *(v35 + 16);
    if (v31 >= v36)
    {
      goto LABEL_57;
    }

    v37 = *v29;
    if (*v29 >= v34)
    {
      goto LABEL_60;
    }

    if (v37 >= v36)
    {
      goto LABEL_62;
    }

    v38 = v33 + 32;
    v39 = *(v38 + 8 * v31);
    v40 = *(v38 + 8 * v37);
    v41 = *(v35 + 32 + 8 * v31) < *(v35 + 32 + 8 * v37);
    v18 = v39 == v40;
    v42 = v39 < v40;
    if (v18)
    {
      v42 = v41;
    }

    if (v42)
    {
      if (v7 + 1 != v8)
      {
        *v7 = v37;
      }

      if (v16 <= v6 || (v8 -= 8, v29 <= v9))
      {
        v8 = v29;
        goto LABEL_49;
      }

      goto LABEL_31;
    }

    if (v7 + 1 != v16)
    {
      *v7 = v31;
    }

    --v7;
    v16 = v30;
    if (v30 <= v6)
    {
      v16 = v30;
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return __dst;
}

uint64_t sub_1D9B8F0B8(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_1D99E8FDC(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_1D9B8EDD4(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9B8F260(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  v119 = MEMORY[0x1E69E7CC0];
  if (v8 >= 1)
  {
    swift_retain_n();
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v109 = a4;
    v114 = a5;
    while (1)
    {
      if (v10 + 1 >= v8)
      {
        v8 = v10 + 1;
      }

      else
      {
        v12 = *a3;
        v13 = *(*a3 + 8 * (v10 + 1));
        v117 = *(*a3 + 8 * v10);
        v118 = v13;
        v14 = sub_1D9B8DD44(&v118, &v117, a5);
        if (v6)
        {
          goto LABEL_107;
        }

        v15 = v10 + 2;
        v16 = (v12 + 8 * v10 + 16);
        while (v8 != v15)
        {
          v17 = *v16;
          if ((*v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_115;
          }

          v18 = *(a5 + 16);
          v19 = *(v18 + 16);
          if (v17 >= v19)
          {
            goto LABEL_116;
          }

          v20 = *(a5 + 24);
          v21 = *(v20 + 16);
          if (v17 >= v21)
          {
            goto LABEL_117;
          }

          v22 = *(v16 - 1);
          if (v22 >= v19)
          {
            goto LABEL_118;
          }

          if (v22 >= v21)
          {
            goto LABEL_119;
          }

          v23 = v18 + 32;
          v24 = *(v23 + 8 * v17);
          v25 = *(v23 + 8 * v22);
          v26 = *(v20 + 32 + 8 * v17) >= *(v20 + 32 + 8 * v22);
          v27 = v24 == v25;
          v28 = v24 >= v25;
          if (!v27)
          {
            v26 = v28;
          }

          ++v15;
          ++v16;
          if ((v14 & 1) == v26)
          {
            v8 = v15 - 1;
            break;
          }
        }

        if (v14)
        {
          if (v8 < v10)
          {
            goto LABEL_139;
          }

          if (v10 < v8)
          {
            v29 = v8 - 1;
            v30 = v10;
            do
            {
              if (v30 != v29)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_142;
                }

                v33 = *(v32 + 8 * v30);
                *(v32 + 8 * v30) = *(v32 + 8 * v29);
                *(v32 + 8 * v29) = v33;
              }
            }

            while (++v30 < v29--);
          }
        }
      }

      v34 = a3[1];
      if (v8 < v34)
      {
        if (__OFSUB__(v8, v10))
        {
          goto LABEL_136;
        }

        if (v8 - v10 < a4)
        {
          if (__OFADD__(v10, a4))
          {
            goto LABEL_137;
          }

          if (v10 + a4 >= v34)
          {
            v35 = a3[1];
          }

          else
          {
            v35 = v10 + a4;
          }

          if (v35 < v10)
          {
            goto LABEL_138;
          }

          if (v8 != v35)
          {
            break;
          }
        }
      }

      v35 = v8;
LABEL_38:
      if (v35 < v10)
      {
        goto LABEL_135;
      }

      v111 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D99E8FF0(0, *(v11 + 2) + 1, 1, v11);
      }

      v37 = *(v11 + 2);
      v36 = *(v11 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v11 = sub_1D99E8FF0((v36 > 1), v37 + 1, 1, v11);
      }

      *(v11 + 2) = v38;
      v39 = v11 + 32;
      v40 = &v11[16 * v37 + 32];
      *v40 = v10;
      *(v40 + 1) = v111;
      v119 = v11;
      v113 = *a1;
      if (!*a1)
      {
        goto LABEL_143;
      }

      if (v37)
      {
        v116 = v6;
        v112 = v11 + 32;
        while (1)
        {
          v41 = v38 - 1;
          if (v38 >= 4)
          {
            v46 = &v39[16 * v38];
            v47 = *(v46 - 8);
            v48 = *(v46 - 7);
            v52 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            if (v52)
            {
              goto LABEL_124;
            }

            v51 = *(v46 - 6);
            v50 = *(v46 - 5);
            v52 = __OFSUB__(v50, v51);
            v44 = v50 - v51;
            v45 = v52;
            if (v52)
            {
              goto LABEL_125;
            }

            v53 = &v11[16 * v38];
            v55 = *v53;
            v54 = *(v53 + 1);
            v52 = __OFSUB__(v54, v55);
            v56 = v54 - v55;
            if (v52)
            {
              goto LABEL_127;
            }

            v52 = __OFADD__(v44, v56);
            v57 = v44 + v56;
            if (v52)
            {
              goto LABEL_130;
            }

            if (v57 >= v49)
            {
              v75 = &v39[16 * v41];
              v77 = *v75;
              v76 = *(v75 + 1);
              v52 = __OFSUB__(v76, v77);
              v78 = v76 - v77;
              if (v52)
              {
                goto LABEL_134;
              }

              if (v44 < v78)
              {
                v41 = v38 - 2;
              }

              goto LABEL_80;
            }
          }

          else
          {
            if (v38 != 3)
            {
              v68 = &v11[16 * v38];
              v70 = *v68;
              v69 = *(v68 + 1);
              v52 = __OFSUB__(v69, v70);
              v62 = v69 - v70;
              v63 = v52;
LABEL_73:
              if (v63)
              {
                goto LABEL_128;
              }

              v71 = &v39[16 * v41];
              v73 = *v71;
              v72 = *(v71 + 1);
              v52 = __OFSUB__(v72, v73);
              v74 = v72 - v73;
              if (v52)
              {
                goto LABEL_131;
              }

              if (v74 < v62)
              {
                goto LABEL_3;
              }

              goto LABEL_80;
            }

            v42 = *(v11 + 4);
            v43 = *(v11 + 5);
            v52 = __OFSUB__(v43, v42);
            v44 = v43 - v42;
            v45 = v52;
          }

          if (v45)
          {
            goto LABEL_126;
          }

          v58 = &v11[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_129;
          }

          v64 = &v39[16 * v41];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_133;
          }

          if (v62 + v67 < v44)
          {
            goto LABEL_73;
          }

          if (v44 < v67)
          {
            v41 = v38 - 2;
          }

LABEL_80:
          if (v41 - 1 >= v38)
          {
            goto LABEL_120;
          }

          v79 = *a3;
          if (!*a3)
          {
            goto LABEL_141;
          }

          v80 = v11;
          v81 = &v39[16 * v41 - 16];
          v82 = *v81;
          v83 = v41;
          v84 = &v39[16 * v41];
          v85 = *(v84 + 1);
          v86 = v79 + 8 * *v81;
          v87 = (v79 + 8 * *v84);
          v88 = (v79 + 8 * v85);

          sub_1D9B8EDD4(v86, v87, v88, v113, v114);
          if (v116)
          {
            goto LABEL_106;
          }

          if (v85 < v82)
          {
            goto LABEL_121;
          }

          v89 = *(v80 + 2);
          if (v83 > v89)
          {
            goto LABEL_122;
          }

          *v81 = v82;
          *(v81 + 1) = v85;
          if (v83 >= v89)
          {
            goto LABEL_123;
          }

          v38 = v89 - 1;
          memmove(v84, v84 + 16, 16 * (v89 - 1 - v83));
          v11 = v80;
          *(v80 + 2) = v89 - 1;
          v39 = v112;
          if (v89 <= 2)
          {
LABEL_3:
            v119 = v11;
            v6 = v116;
            break;
          }
        }
      }

      a5 = v114;
      v8 = a3[1];
      v10 = v111;
      a4 = v109;
      if (v111 >= v8)
      {
        goto LABEL_104;
      }
    }

    v90 = *a3;
    v91 = *a3 + 8 * v8 - 8;
    v92 = v10 - v8;
LABEL_90:
    v93 = *(v90 + 8 * v8);
    v94 = v92;
    v95 = v91;
    while ((v93 & 0x8000000000000000) == 0)
    {
      v96 = *(a5 + 16);
      v97 = *(v96 + 16);
      if (v93 >= v97)
      {
        goto LABEL_111;
      }

      v98 = *(a5 + 24);
      v99 = *(v98 + 16);
      if (v93 >= v99)
      {
        goto LABEL_112;
      }

      v100 = *v95;
      if (*v95 >= v97)
      {
        goto LABEL_113;
      }

      if (v100 >= v99)
      {
        goto LABEL_114;
      }

      v101 = v96 + 32;
      v102 = *(v101 + 8 * v93);
      v103 = *(v101 + 8 * v100);
      v104 = *(v98 + 32 + 8 * v93) < *(v98 + 32 + 8 * v100);
      v27 = v102 == v103;
      v105 = v102 < v103;
      if (v27)
      {
        v105 = v104;
      }

      if (v105)
      {
        if (!v90)
        {
          goto LABEL_140;
        }

        *v95 = v93;
        v95[1] = v100;
        --v95;
        if (!__CFADD__(v94++, 1))
        {
          continue;
        }
      }

      ++v8;
      v91 += 8;
      --v92;
      if (v8 == v35)
      {
        goto LABEL_38;
      }

      goto LABEL_90;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
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
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:

    __break(1u);
LABEL_141:

    __break(1u);
LABEL_142:

    __break(1u);
LABEL_143:

    __break(1u);
    goto LABEL_144;
  }

  swift_retain_n();
LABEL_104:
  v107 = *a1;
  if (!*a1)
  {
LABEL_144:

    __break(1u);
    return result;
  }

  sub_1D9B8F0B8(&v119, v107, a3, a5);
  if (v6)
  {
LABEL_106:

LABEL_107:
  }

  else
  {
  }
}