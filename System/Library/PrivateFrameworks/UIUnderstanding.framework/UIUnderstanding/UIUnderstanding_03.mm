uint64_t sub_27028B490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27028B4D8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27028B52C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27028B564()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27028B5B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27028B610()
{
  v0 = sub_2702B3D8C();
  __swift_allocate_value_buffer(v0, qword_2807CD4F8);
  __swift_project_value_buffer(v0, qword_2807CD4F8);
  return sub_2702B3D7C();
}

CGImageRef_optional __swiftcall currentDeviceScreenshot()()
{
  v91 = *MEMORY[0x277D85DE8];
  result.value = [objc_opt_self() mainDisplay];
  if (!result.value)
  {
    return result;
  }

  value = result.value;
  [(CGImage *)result.value bounds];
  Width = CGRectGetWidth(v92);
  v87 = value;
  [(CGImage *)value bounds];
  Height = CGRectGetHeight(v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8710);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2702B74D0;
  sub_2702B44CC();

  pixelBufferOut = 0xD000000000000016;
  v90 = 0x80000002702BB090;
  v6 = sub_2702B421C();
  MEMORY[0x27439BCF0](v6);

  MEMORY[0x27439BCF0](0x67696568202C7870, 0xEC000000203A7468);
  v7 = sub_2702B421C();
  MEMORY[0x27439BCF0](v7);

  MEMORY[0x27439BCF0](30832, 0xE200000000000000);
  v8 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = 0xD000000000000016;
  *(v5 + 40) = 0x80000002702BB090;
  sub_2702B485C();

  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_11;
  }

  v9 = Width & 0xF;
  if (Width <= 0)
  {
    v9 = -(-Width & 0xF);
  }

  if (v9)
  {
    v0 = (16 - v9);
  }

  else
  {
    v0 = 0.0;
  }

  if (qword_2807C8268 != -1)
  {
    goto LABEL_35;
  }

LABEL_11:
  v10 = Width + v0;
  v11 = sub_2702B3D8C();
  __swift_project_value_buffer(v11, qword_2807CD4F8);
  v12 = sub_2702B3D6C();
  v13 = sub_2702B430C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v0;
    _os_log_impl(&dword_270253000, v12, v13, "Image row-alignment %f", v14, 0xCu);
    MEMORY[0x27439CE00](v14, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8A48);
  inited = swift_initStackObject();
  v16 = *MEMORY[0x277CD2928];
  *(inited + 32) = *MEMORY[0x277CD2928];
  v17 = MEMORY[0x277D85048];
  *(inited + 16) = xmmword_2702B8500;
  *(inited + 40) = v10;
  v18 = *MEMORY[0x277CD28D0];
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  *(inited + 80) = Height;
  v19 = *MEMORY[0x277CD28B8];
  *(inited + 104) = v17;
  *(inited + 112) = v19;
  *(inited + 120) = v10 * 4.0;
  v20 = *MEMORY[0x277CD28A8];
  *(inited + 144) = v17;
  *(inited + 152) = v20;
  v21 = MEMORY[0x277CD28B0];
  *(inited + 160) = Height * (v10 * 4.0);
  v22 = *v21;
  *(inited + 184) = v17;
  *(inited + 192) = v22;
  v23 = MEMORY[0x277D83B88];
  *(inited + 200) = 4;
  v24 = *MEMORY[0x277CD28D8];
  *(inited + 224) = v23;
  *(inited + 232) = v24;
  *(inited + 264) = MEMORY[0x277D84CC0];
  *(inited + 240) = 1111970369;
  v25 = v16;
  v26 = v18;
  v27 = v19;
  v28 = v20;
  v29 = v22;
  v30 = v24;
  sub_270260368(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8518);
  swift_arrayDestroy();
  v31 = objc_allocWithZone(MEMORY[0x277CD2930]);
  type metadata accessor for IOSurfacePropertyKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8A50);
  sub_27028C3BC(&qword_2807C8388, type metadata accessor for IOSurfacePropertyKey);
  v32 = sub_2702B3F7C();

  v33 = [v31 initWithProperties_];

  if (!v33)
  {
    v79 = sub_2702B3D6C();
    v80 = sub_2702B431C();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_270253000, v79, v80, "Couldn't create an IOSurface for screenshot.", v81, 2u);
      MEMORY[0x27439CE00](v81, -1, -1);
    }

    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8A58);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2702B8510;
  sub_2702B402C();
  sub_2702B447C();
  v35 = sub_2702B402C();
  *(v34 + 96) = v8;
  *(v34 + 72) = v35;
  *(v34 + 80) = v36;
  sub_2702B402C();
  sub_2702B447C();
  *(v34 + 168) = sub_27028C308();
  *(v34 + 144) = v33;
  sub_2702B402C();
  v86 = v33;
  sub_2702B447C();
  v37 = v87;
  v38 = [(CGImage *)v87 name];
  v39 = sub_2702B402C();
  v41 = v40;

  *(v34 + 240) = v8;
  *(v34 + 216) = v39;
  *(v34 + 224) = v41;
  sub_2702B402C();
  sub_2702B447C();
  [(CGImage *)v87 bounds];
  *(v34 + 312) = v17;
  *(v34 + 288) = v42;
  sub_2702B402C();
  sub_2702B447C();
  [(CGImage *)v87 bounds];
  *(v34 + 384) = v17;
  *(v34 + 360) = v43;
  sub_2702B402C();
  sub_2702B447C();
  v44 = MEMORY[0x277D839B0];
  *(v34 + 456) = MEMORY[0x277D839B0];
  *(v34 + 432) = 1;
  pixelBufferOut = sub_2702B402C();
  v90 = v45;
  sub_2702B447C();
  *(v34 + 528) = v44;
  *(v34 + 504) = 1;
  sub_270260490(v34);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8508);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v46 = sub_2702B3F7C();

  v47 = CARenderServerSnapshot();

  if ((v47 & 1) == 0)
  {
    v48 = sub_2702B3D6C();
    v49 = sub_2702B431C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_270253000, v48, v49, "Display failed to render.", v50, 2u);
      MEMORY[0x27439CE00](v50, -1, -1);
    }
  }

  v51 = v86;
  [v86 lockWithOptions:1 seed:{0, 1, 2}];
  pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v86, 0, &pixelBufferOut);
  v52 = sub_2702B3D6C();
  v53 = sub_2702B430C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v88 = v55;
    *v54 = 136315138;
    v56 = sub_2702B474C();
    v58 = sub_27026FD60(v56, v57, &v88);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_270253000, v52, v53, "cvBufferResult %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x27439CE00](v55, -1, -1);
    MEMORY[0x27439CE00](v54, -1, -1);
  }

  v59 = pixelBufferOut;
  if (!pixelBufferOut)
  {
    v82 = sub_2702B3D6C();
    v83 = sub_2702B431C();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_270253000, v82, v83, "pixelBuffer failed", v84, 2u);
      MEMORY[0x27439CE00](v84, -1, -1);
    }

    return 0;
  }

  v60 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v61 = sub_2702B3D6C();
  v62 = sub_2702B430C();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v88 = v64;
    *v63 = 136315138;
    v65 = v60;
    v66 = [v65 description];
    v67 = sub_2702B402C();
    v69 = v68;

    v51 = v86;
    v70 = sub_27026FD60(v67, v69, &v88);

    *(v63 + 4) = v70;
    v37 = v87;
    _os_log_impl(&dword_270253000, v61, v62, "Image result: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x27439CE00](v64, -1, -1);
    MEMORY[0x27439CE00](v63, -1, -1);
  }

  v71 = MEMORY[0x277D839B0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8A68);
  v72 = swift_initStackObject();
  *(v72 + 16) = v85;
  v73 = *MEMORY[0x277CBF940];
  *(v72 + 32) = *MEMORY[0x277CBF940];
  *(v72 + 64) = v71;
  *(v72 + 40) = 0;
  v74 = v73;
  sub_2702605CC(v72);
  swift_setDeallocating();
  sub_27028C354(v72 + 32);
  v75 = objc_allocWithZone(MEMORY[0x277CBF740]);
  type metadata accessor for CIContextOption(0);
  sub_27028C3BC(&qword_2807C8378, type metadata accessor for CIContextOption);
  v76 = sub_2702B3F7C();

  v77 = [v75 initWithOptions_];

  [v60 extent];
  v78 = [v77 createCGImage:v60 fromRect:?];

  return v78;
}

unint64_t sub_27028C308()
{
  result = qword_2807C8A60;
  if (!qword_2807C8A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807C8A60);
  }

  return result;
}

uint64_t sub_27028C354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27028C3BC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_27028C404(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2702B3C3C();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_2702B3C8C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_2702B3C0C();

    swift_willThrow();
    v9 = sub_2702B3C8C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

id sub_27028C560()
{
  memset(v2, 0, sizeof(v2));
  v3 = 0;
  v0 = objc_allocWithZone(type metadata accessor for UIUModelFetcher());
  result = UIUModelFetcher.init(uiuModelLocator:)(v2);
  qword_2807C8A70 = result;
  return result;
}

id _s15UIUnderstanding15UIUModelFetcherC06sharedC0ACyFZ_0()
{
  if (qword_2807C8270 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2807C8A70;

  return v0;
}

void static UIUModelFetcher.shared.setter(uint64_t a1)
{
  if (qword_2807C8270 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2807C8A70;
  qword_2807C8A70 = a1;
}

uint64_t (*static UIUModelFetcher.shared.modify())()
{
  if (qword_2807C8270 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_27028C770@<X0>(void *a1@<X8>)
{
  if (qword_2807C8270 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2807C8A70;
  *a1 = qword_2807C8A70;

  return v2;
}

void sub_27028C7FC(id *a1)
{
  v1 = qword_2807C8270;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_2807C8A70;
  qword_2807C8A70 = v2;
}

id UIUModelFetcher.init(uiuModelLocator:)(uint64_t a1)
{
  sub_2702B3D7C();
  *&v1[OBJC_IVAR___UIUModelFetcherCompat_mindnetPortrait] = 0;
  *&v1[OBJC_IVAR___UIUModelFetcherCompat_mindnetSquare] = 0;
  *&v1[OBJC_IVAR___UIUModelFetcherCompat_elementDetectionTV] = 0;
  *&v1[OBJC_IVAR___UIUModelFetcherCompat_clickabilityPortrait] = 0;
  *&v1[OBJC_IVAR___UIUModelFetcherCompat_clickabilitySquare] = 0;
  *&v1[OBJC_IVAR___UIUModelFetcherCompat_iconClassification] = 0;
  *&v1[OBJC_IVAR___UIUModelFetcherCompat_screenSimilarityPortrait] = 0;
  *&v1[OBJC_IVAR___UIUModelFetcherCompat_screenSimilaritySquare] = 0;
  *&v1[OBJC_IVAR___UIUModelFetcherCompat_focusElement] = 0;
  sub_27028CA4C(a1, &v9);
  if (v10)
  {
    sub_270271478(&v9, v11);
    sub_270271478(v11, &v1[OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator]);
  }

  else
  {
    sub_2702643E4(&v9, &qword_2807C8A78);
    v3 = type metadata accessor for MobileAssetUIUModelLocator();
    swift_allocObject();
    v4 = sub_27028AED8();
    v5 = &v1[OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator];
    v5[3] = v3;
    v5[4] = &protocol witness table for MobileAssetUIUModelLocator;
    *v5 = v4;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for UIUModelFetcher();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_2702643E4(a1, &qword_2807C8A78);
  return v6;
}

uint64_t sub_27028CA4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8A78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for UIUModelFetcher()
{
  result = qword_2807C8A88;
  if (!qword_2807C8A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27028CB08()
{
  v1 = *(v0 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
  v2 = *(v0 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v1);
  return (*(v2 + 16))(v1, v2) & 1;
}

uint64_t sub_27028CBE4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
  v4 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v3);
  return (*(v4 + 24))(a1, v3, v4) & 1;
}

uint64_t sub_27028CC4C(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
  v7 = *(v3 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v6);
  return (*(v7 + 32))(a1, v6, v7, a2) & 1;
}

uint64_t sub_27028CE2C(uint64_t a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
  v6 = *(v2 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v5);
  return (*(v6 + 32))(a1, v5, v6, a2) & 1;
}

uint64_t sub_27028CF2C(uint64_t a1)
{
  v4 = sub_2702B3C8C();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v14 = &v30 - v13;
  if (*(v1 + OBJC_IVAR___UIUModelFetcherCompat_mindnetPortrait))
  {
    v15 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_mindnetPortrait);
  }

  else
  {
    v31 = OBJC_IVAR___UIUModelFetcherCompat_mindnetPortrait;
    v33 = v12;
    v34 = v11;
    v30 = type metadata accessor for ElementMindNetPortrait();
    v35 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AC8);
    v16 = sub_2702B408C();
    v36 = v2;
    v18 = v17;
    type metadata accessor for UIUnderstandingModel();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 40) = 0;
    *(v19 + 32) = 0;
    *(v19 + 24) = a1;
    swift_beginAccess();
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    v32 = v1;
    v20 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
    v21 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
    v15 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v20);
    v22 = v36;
    (*(v21 + 8))(v19, v20, v21);
    if (v22)
    {
    }

    else
    {
      v24 = v33;
      v23 = v34;
      v25 = *(v33 + 16);
      v25(v10, v14, v34);
      v36 = sub_27028F98C();
      v25(v7, v10, v23);
      v27 = sub_27028C404(v7);

      v28 = *(v24 + 8);
      v29 = v34;
      v28(v10, v34);
      v28(v14, v29);
      v15 = swift_allocObject();
      *(v15 + 16) = v27;
      *(v32 + v31) = v15;
    }
  }

  return v15;
}

uint64_t sub_27028D248(uint64_t a1)
{
  v4 = sub_2702B3C8C();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v14 = &v30 - v13;
  if (*(v1 + OBJC_IVAR___UIUModelFetcherCompat_mindnetSquare))
  {
    v15 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_mindnetSquare);
  }

  else
  {
    v31 = OBJC_IVAR___UIUModelFetcherCompat_mindnetSquare;
    v33 = v12;
    v34 = v11;
    v30 = type metadata accessor for ElementMindNetSquare();
    v35 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AD0);
    v16 = sub_2702B408C();
    v36 = v2;
    v18 = v17;
    type metadata accessor for UIUnderstandingModel();
    v19 = swift_allocObject();
    *(v19 + 16) = 256;
    *(v19 + 40) = 0;
    *(v19 + 32) = 0;
    *(v19 + 24) = a1;
    swift_beginAccess();
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    v32 = v1;
    v20 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
    v21 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
    v15 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v20);
    v22 = v36;
    (*(v21 + 8))(v19, v20, v21);
    if (v22)
    {
    }

    else
    {
      v24 = v33;
      v23 = v34;
      v25 = *(v33 + 16);
      v25(v10, v14, v34);
      v36 = sub_27028F98C();
      v25(v7, v10, v23);
      v27 = sub_27028C404(v7);

      v28 = *(v24 + 8);
      v29 = v34;
      v28(v10, v34);
      v28(v14, v29);
      v15 = swift_allocObject();
      *(v15 + 16) = v27;
      *(v32 + v31) = v15;
    }
  }

  return v15;
}

uint64_t sub_27028D568(uint64_t a1)
{
  v4 = sub_2702B3C8C();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v14 = &v30 - v13;
  if (*(v1 + OBJC_IVAR___UIUModelFetcherCompat_elementDetectionTV))
  {
    v15 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_elementDetectionTV);
  }

  else
  {
    v31 = OBJC_IVAR___UIUModelFetcherCompat_elementDetectionTV;
    v33 = v12;
    v34 = v11;
    v30 = type metadata accessor for ElementDetectionTV();
    v35 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AB0);
    v16 = sub_2702B408C();
    v36 = v2;
    v18 = v17;
    type metadata accessor for UIUnderstandingModel();
    v19 = swift_allocObject();
    *(v19 + 16) = 512;
    *(v19 + 40) = 0;
    *(v19 + 32) = 0;
    *(v19 + 24) = a1;
    swift_beginAccess();
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    v32 = v1;
    v20 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
    v21 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
    v15 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v20);
    v22 = v36;
    (*(v21 + 8))(v19, v20, v21);
    if (v22)
    {
    }

    else
    {
      v24 = v33;
      v23 = v34;
      v25 = *(v33 + 16);
      v25(v10, v14, v34);
      v36 = sub_27028F98C();
      v25(v7, v10, v23);
      v27 = sub_27028C404(v7);

      v28 = *(v24 + 8);
      v29 = v34;
      v28(v10, v34);
      v28(v14, v29);
      v15 = swift_allocObject();
      *(v15 + 16) = v27;
      *(v32 + v31) = v15;
    }
  }

  return v15;
}

uint64_t sub_27028D888(uint64_t a1)
{
  v4 = sub_2702B3C8C();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v14 = &v30 - v13;
  if (*(v1 + OBJC_IVAR___UIUModelFetcherCompat_clickabilityPortrait))
  {
    v15 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_clickabilityPortrait);
  }

  else
  {
    v31 = OBJC_IVAR___UIUModelFetcherCompat_clickabilityPortrait;
    v33 = v12;
    v34 = v11;
    v30 = type metadata accessor for ClickabilityPortrait();
    v35 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AC0);
    v16 = sub_2702B408C();
    v36 = v2;
    v18 = v17;
    type metadata accessor for UIUnderstandingModel();
    v19 = swift_allocObject();
    *(v19 + 40) = 0;
    *(v19 + 32) = 0;
    *(v19 + 16) = 1;
    *(v19 + 24) = a1;
    swift_beginAccess();
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    v32 = v1;
    v20 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
    v21 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
    v15 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v20);
    v22 = v36;
    (*(v21 + 8))(v19, v20, v21);
    if (v22)
    {
    }

    else
    {
      v24 = v33;
      v23 = v34;
      v25 = *(v33 + 16);
      v25(v10, v14, v34);
      v36 = sub_27028F98C();
      v25(v7, v10, v23);
      v27 = sub_27028C404(v7);

      v28 = *(v24 + 8);
      v29 = v34;
      v28(v10, v34);
      v28(v14, v29);
      v15 = swift_allocObject();
      *(v15 + 16) = v27;
      *(v32 + v31) = v15;
    }
  }

  return v15;
}

uint64_t sub_27028DBA8(uint64_t a1)
{
  v4 = sub_2702B3C8C();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v14 = &v30 - v13;
  if (*(v1 + OBJC_IVAR___UIUModelFetcherCompat_clickabilitySquare))
  {
    v15 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_clickabilitySquare);
  }

  else
  {
    v31 = OBJC_IVAR___UIUModelFetcherCompat_clickabilitySquare;
    v33 = v12;
    v34 = v11;
    v30 = type metadata accessor for ClickabilitySquare();
    v35 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AB8);
    v16 = sub_2702B408C();
    v36 = v2;
    v18 = v17;
    type metadata accessor for UIUnderstandingModel();
    v19 = swift_allocObject();
    *(v19 + 40) = 0;
    *(v19 + 32) = 0;
    *(v19 + 16) = 257;
    *(v19 + 24) = a1;
    swift_beginAccess();
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    v32 = v1;
    v20 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
    v21 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
    v15 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v20);
    v22 = v36;
    (*(v21 + 8))(v19, v20, v21);
    if (v22)
    {
    }

    else
    {
      v24 = v33;
      v23 = v34;
      v25 = *(v33 + 16);
      v25(v10, v14, v34);
      v36 = sub_27028F98C();
      v25(v7, v10, v23);
      v27 = sub_27028C404(v7);

      v28 = *(v24 + 8);
      v29 = v34;
      v28(v10, v34);
      v28(v14, v29);
      v15 = swift_allocObject();
      *(v15 + 16) = v27;
      *(v32 + v31) = v15;
    }
  }

  return v15;
}

uint64_t sub_27028DEC8(uint64_t a1)
{
  v4 = sub_2702B3C8C();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v14 = &v30 - v13;
  if (*(v1 + OBJC_IVAR___UIUModelFetcherCompat_iconClassification))
  {
    v15 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_iconClassification);
  }

  else
  {
    v31 = OBJC_IVAR___UIUModelFetcherCompat_iconClassification;
    v33 = v12;
    v34 = v11;
    v30 = type metadata accessor for IconClassification();
    v35 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AE8);
    v16 = sub_2702B408C();
    v36 = v2;
    v18 = v17;
    type metadata accessor for UIUnderstandingModel();
    v19 = swift_allocObject();
    *(v19 + 40) = 0;
    *(v19 + 32) = 0;
    *(v19 + 16) = 770;
    *(v19 + 24) = a1;
    swift_beginAccess();
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    v32 = v1;
    v20 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
    v21 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
    v15 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v20);
    v22 = v36;
    (*(v21 + 8))(v19, v20, v21);
    if (v22)
    {
    }

    else
    {
      v24 = v33;
      v23 = v34;
      v25 = *(v33 + 16);
      v25(v10, v14, v34);
      v36 = sub_27028F98C();
      v25(v7, v10, v23);
      v27 = sub_27028C404(v7);

      v28 = *(v24 + 8);
      v29 = v34;
      v28(v10, v34);
      v28(v14, v29);
      v15 = swift_allocObject();
      *(v15 + 16) = v27;
      *(v32 + v31) = v15;
    }
  }

  return v15;
}

uint64_t sub_27028E1E8(uint64_t a1)
{
  v3 = sub_2702B3C8C();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v52 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v52 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v52 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v52 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v22 = &v52 - v21;
  v56 = v1;
  v23 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_screenSimilarityPortrait);
  if (v23 && *(v23 + 40) == a1)
  {
  }

  else
  {
    v54 = v20;
    v55 = v19;
    v53 = OBJC_IVAR___UIUModelFetcherCompat_screenSimilarityPortrait;
    if (a1)
    {
      v52 = type metadata accessor for TwinEmbeddingTransformerPortrait();
      v57 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AE0);
      v24 = sub_2702B408C();
      v26 = v25;
      type metadata accessor for UIUnderstandingModel();
      v27 = swift_allocObject();
      *(v27 + 40) = 0;
      *(v27 + 32) = 0;
      *(v27 + 16) = 3;
      *(v27 + 24) = a1;
      swift_beginAccess();
      *(v27 + 32) = v24;
      *(v27 + 40) = v26;
      v23 = *(v56 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
      v28 = *(v56 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
      __swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v23);
      v29 = v58;
      (*(v28 + 8))(v27, v23, v28);
      if (!v29)
      {
        v37 = v54;
        v38 = v55;
        v39 = *(v54 + 16);
        v39(v9, v12, v55);
        v58 = sub_27028F98C();
        v39(v6, v9, v38);
        v43 = sub_27028C404(v6);

        v44 = *(v37 + 8);
        v45 = v55;
        v44(v9, v55);
        v44(v12, v45);
        v46 = swift_allocObject();
        *(v46 + 16) = v43;
        type metadata accessor for ScreenSimilarity();
        v23 = swift_allocObject();
        *(v23 + 48) = xmmword_2702B8540;
        *(v23 + 64) = xmmword_2702B8550;
        *(v23 + 24) = 0;
        *(v23 + 32) = 0;
        *(v23 + 16) = v46;
        *(v23 + 40) = 1;
        *(v56 + v53) = v23;

        return v23;
      }
    }

    else
    {
      v30 = type metadata accessor for BiEncoderCNN();
      v57 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AA8);
      v31 = sub_2702B408C();
      v33 = v32;
      type metadata accessor for UIUnderstandingModel();
      v34 = swift_allocObject();
      *(v34 + 40) = 0;
      *(v34 + 16) = 771;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0;
      swift_beginAccess();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      v23 = *(v56 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
      v35 = *(v56 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
      __swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v23);
      v36 = v58;
      (*(v35 + 8))(v34, v23, v35);
      if (!v36)
      {
        v52 = v30;
        v41 = v54;
        v40 = v55;
        v42 = *(v54 + 16);
        v42(v18, v22, v55);
        v58 = sub_27028F98C();
        v42(v15, v18, v40);
        v48 = sub_27028C404(v15);

        v49 = *(v41 + 8);
        v50 = v55;
        v49(v18, v55);
        v49(v22, v50);
        v51 = swift_allocObject();
        *(v51 + 16) = v48;
        type metadata accessor for ScreenSimilarity();
        v23 = swift_allocObject();
        *(v23 + 48) = xmmword_2702B8540;
        *(v23 + 64) = xmmword_2702B8550;
        *(v23 + 24) = 0;
        *(v23 + 32) = v51;
        *(v23 + 40) = 0;
        *(v23 + 16) = 0;
        *(v56 + v53) = v23;

        return v23;
      }
    }
  }

  return v23;
}

uint64_t sub_27028E7E8(uint64_t a1)
{
  v3 = sub_2702B3C8C();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v52 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v52 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v52 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v52 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v22 = &v52 - v21;
  v56 = v1;
  v23 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_screenSimilaritySquare);
  if (v23 && *(v23 + 40) == a1)
  {
  }

  else
  {
    v54 = v20;
    v55 = v19;
    v53 = OBJC_IVAR___UIUModelFetcherCompat_screenSimilaritySquare;
    if (a1)
    {
      v52 = type metadata accessor for TwinEmbeddingTransformerSquare();
      v57 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8A98);
      v24 = sub_2702B408C();
      v26 = v25;
      type metadata accessor for UIUnderstandingModel();
      v27 = swift_allocObject();
      *(v27 + 40) = 0;
      *(v27 + 32) = 0;
      *(v27 + 16) = 259;
      *(v27 + 24) = a1;
      swift_beginAccess();
      *(v27 + 32) = v24;
      *(v27 + 40) = v26;
      v23 = *(v56 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
      v28 = *(v56 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
      __swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v23);
      v29 = v58;
      (*(v28 + 8))(v27, v23, v28);
      if (!v29)
      {
        v37 = v54;
        v38 = v55;
        v39 = *(v54 + 16);
        v39(v9, v12, v55);
        v58 = sub_27028F98C();
        v39(v6, v9, v38);
        v43 = sub_27028C404(v6);

        v44 = *(v37 + 8);
        v45 = v55;
        v44(v9, v55);
        v44(v12, v45);
        v46 = swift_allocObject();
        *(v46 + 16) = v43;
        type metadata accessor for ScreenSimilarity();
        v23 = swift_allocObject();
        *(v23 + 48) = xmmword_2702B8540;
        *(v23 + 64) = xmmword_2702B8550;
        *(v23 + 24) = v46;
        *(v23 + 32) = 0;
        *(v23 + 16) = 0;
        *(v23 + 40) = 2;
        *(v56 + v53) = v23;

        return v23;
      }
    }

    else
    {
      v30 = type metadata accessor for BiEncoderCNN();
      v57 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AA8);
      v31 = sub_2702B408C();
      v33 = v32;
      type metadata accessor for UIUnderstandingModel();
      v34 = swift_allocObject();
      *(v34 + 40) = 0;
      *(v34 + 16) = 771;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0;
      swift_beginAccess();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      v23 = *(v56 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
      v35 = *(v56 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
      __swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v23);
      v36 = v58;
      (*(v35 + 8))(v34, v23, v35);
      if (!v36)
      {
        v52 = v30;
        v41 = v54;
        v40 = v55;
        v42 = *(v54 + 16);
        v42(v18, v22, v55);
        v58 = sub_27028F98C();
        v42(v15, v18, v40);
        v48 = sub_27028C404(v15);

        v49 = *(v41 + 8);
        v50 = v55;
        v49(v18, v55);
        v49(v22, v50);
        v51 = swift_allocObject();
        *(v51 + 16) = v48;
        type metadata accessor for ScreenSimilarity();
        v23 = swift_allocObject();
        *(v23 + 48) = xmmword_2702B8540;
        *(v23 + 64) = xmmword_2702B8550;
        *(v23 + 24) = 0;
        *(v23 + 32) = v51;
        *(v23 + 40) = 0;
        *(v23 + 16) = 0;
        *(v56 + v53) = v23;

        return v23;
      }
    }
  }

  return v23;
}

uint64_t sub_27028EDE8(uint64_t a1)
{
  v4 = sub_2702B3C8C();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v14 = &v30 - v13;
  if (*(v1 + OBJC_IVAR___UIUModelFetcherCompat_focusElement))
  {
    v15 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_focusElement);
  }

  else
  {
    v31 = OBJC_IVAR___UIUModelFetcherCompat_focusElement;
    v33 = v12;
    v34 = v11;
    v30 = type metadata accessor for FocusElement();
    v35 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AD8);
    v16 = sub_2702B408C();
    v36 = v2;
    v18 = v17;
    type metadata accessor for UIUnderstandingModel();
    v19 = swift_allocObject();
    *(v19 + 40) = 0;
    *(v19 + 32) = 0;
    *(v19 + 16) = 516;
    *(v19 + 24) = a1;
    swift_beginAccess();
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    v32 = v1;
    v20 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 24);
    v21 = *(v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator + 32);
    v15 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator), v20);
    v22 = v36;
    (*(v21 + 8))(v19, v20, v21);
    if (v22)
    {
    }

    else
    {
      v24 = v33;
      v23 = v34;
      v25 = *(v33 + 16);
      v25(v10, v14, v34);
      v36 = sub_27028F98C();
      v25(v7, v10, v23);
      v27 = sub_27028C404(v7);

      v28 = *(v24 + 8);
      v29 = v34;
      v28(v10, v34);
      v28(v14, v29);
      v15 = swift_allocObject();
      *(v15 + 16) = v27;
      *(v32 + v31) = v15;
    }
  }

  return v15;
}

id UIUModelFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIUModelFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIUModelFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ModelLoadingError.hashValue.getter()
{
  v1 = *v0;
  sub_2702B487C();
  MEMORY[0x27439C490](v1);
  return sub_2702B48AC();
}

uint64_t _s15UIUnderstanding15UIUModelFetcherC18getDefaultModelSetSayAA0aF0CGyFZ_0()
{
  v13 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2702B6470;
  type metadata accessor for UIUnderstandingModel();
  v1 = swift_allocObject();
  *(v1 + 16) = 256;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 1;
  *(inited + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = 257;
  *(v2 + 24) = 0;
  *(inited + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 16) = 259;
  *(v3 + 24) = 1;
  *(inited + 48) = v3;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2702B6470;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = 1;
  *(v4 + 32) = v5;
  v6 = swift_allocObject();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 16) = 1;
  *(v6 + 24) = 0;
  *(v4 + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 16) = 3;
  *(v7 + 24) = 1;
  *(v4 + 48) = v7;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_2702B7B30;
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 16) = 770;
  *(v9 + 24) = 0;
  *(v8 + 32) = v9;
  v10 = MobileGestalt_get_current_device();
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = v10;
  if (!MobileGestalt_get_iPadCapability())
  {

LABEL_5:

    sub_27029B830(v4);
    goto LABEL_6;
  }

  sub_27029B830(inited);

LABEL_6:
  sub_27029B830(v8);
  return v13;
}

unint64_t sub_27028F574()
{
  result = qword_2807C8A80;
  if (!qword_2807C8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8A80);
  }

  return result;
}

uint64_t sub_27028F654()
{
  result = sub_2702B3D8C();
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

uint64_t getEnumTagSinglePayload for ModelLoadingError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelLoadingError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27028F98C()
{
  result = qword_2807C8AA0;
  if (!qword_2807C8AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807C8AA0);
  }

  return result;
}

uint64_t OCRDetection.__allocating_init(text:box:heat:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v8 = swift_allocObject();
  sub_2702B3CDC();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return v8;
}

uint64_t OCRDetection.init(text:box:heat:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  sub_2702B3CDC();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t OCRDetection.deinit()
{

  v1 = OBJC_IVAR____TtC15UIUnderstanding12OCRDetection_id;
  v2 = sub_2702B3CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OCRDetection.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15UIUnderstanding12OCRDetection_id;
  v2 = sub_2702B3CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t UIUDetector.getOCRDetections(for:quality:in:)(CGImage *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = dispatch_semaphore_create(0);
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_270293C74(a1, a2, a3, v4, v8, v10, a3, v9);

  sub_2702B438C();

  swift_beginAccess();
  v11 = *(v9 + 16);

  return v11;
}

uint64_t sub_27028FD10()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27028FD48()
{
  MEMORY[0x27439CE50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27028FD80(unint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8710);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2702B74D0;
    sub_2702B44CC();
    MEMORY[0x27439BCF0](0xD00000000000001BLL, 0x80000002702BB270);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B58);
    sub_2702B459C();
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
    sub_2702B485C();
LABEL_5:

    return sub_2702B439C();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = _s15UIUnderstanding11UIUDetectorC26getMergedDetectionsWithOCR07elementE003ocrE027shouldOnlyUseOCRBoundingBox0j17IncludeAdditionalG0014removeDetecionf2NoG0SayAA8UIObjectCGAL_SayAA12OCRDetectionCGS3btF_0(a5, a1, 0, 1, 0);

    swift_beginAccess();
    *(a6 + 16) = v12;
    goto LABEL_5;
  }

  return sub_2702B439C();
}

void UIUDetector.getOCRDetections(for:quality:in:completionHandler:)(CGImage *a1, unint64_t a2, unint64_t a3, uint64_t (*a4)(void, void), uint64_t a5)
{
  v6 = v5;
  v88 = a5;
  v89 = a4;
  v96[7] = *MEMORY[0x277D85DE8];
  v10 = sub_2702B3D1C();
  *&v91 = *(v10 - 1);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x27439C730](v11);
  aBlock[0] = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2702B45FC())
  {
    v15 = MEMORY[0x277D84F90];
    v85 = v6;
    v82 = a2;
    v81 = v10;
    v80 = v13;
    v84 = a1;
    if (!i)
    {
      break;
    }

    a2 = 0;
    a1 = (a3 & 0xC000000000000001);
    v6 = a3 & 0xFFFFFFFFFFFFFF8;
    v10 = &OBJC_IVAR___UIObjectCompat_detection;
    *&v92 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a1)
      {
        v16 = MEMORY[0x27439C0F0](a2, a3);
      }

      else
      {
        if (a2 >= *(v6 + 16))
        {
          goto LABEL_21;
        }

        v16 = *(a3 + 8 * a2 + 32);
      }

      v17 = v16;
      v13 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      v18 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if (*(*&v17[v18] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
      {
        sub_2702B454C();
        sub_2702B457C();
        v6 = v92;
        sub_2702B458C();
        sub_2702B455C();
      }

      else
      {
      }

      ++a2;
      if (v13 == i)
      {
        v19 = aBlock[0];
        a1 = v84;
        v15 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_16:
  v94 = v15;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
  {
    v23 = Height;
    v24 = sub_2702B45FC();
    Height = v23;
    if (v24)
    {
      goto LABEL_19;
    }
  }

  else if (*(v19 + 16))
  {
LABEL_19:
    v22 = sub_270291844(v19, 5.0 / Width, 5.0 / Height);

    sub_27029B640(v22);
    goto LABEL_27;
  }

  v25 = sub_270290EF0(0, 1, 1, MEMORY[0x277D84F90]);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_270290EF0((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = &v25[32 * v27];
  *(v28 + 4) = 0;
  *(v28 + 5) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v28 + 3) = _Q0;
  v94 = v25;
LABEL_27:
  sub_27025FBE0(v15);
  v34 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_270294F18(&qword_2807C8368, type metadata accessor for VNImageOption);
  v35 = sub_2702B3F7C();

  v74 = [v34 initWithCGImage:a1 options:v35];

  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v73 = (v36 + 16);
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = v15;
  v37 = v94;
  v38 = *(v94 + 2);
  if (v38)
  {
    v93 = v15;
    sub_2702B456C();
    v79 = v96;
    v78 = (v91 + 8);
    v39 = 32;
    v77 = xmmword_2702B7C20;
    v83 = v36;
    v76 = v37;
    v40 = v88;
    do
    {
      v90 = v39;
      v41 = &v37[v39];
      v42 = swift_allocObject();
      v43 = *(v41 + 1);
      v91 = *v41;
      v92 = v43;
      swift_unknownObjectWeakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v87;
      *(v44 + 24) = v42;
      v45 = v92;
      *(v44 + 32) = v91;
      *(v44 + 48) = v45;
      v46 = v84;
      v47 = v86;
      *(v44 + 64) = v84;
      *(v44 + 72) = v47;
      v48 = v89;
      *(v44 + 80) = v83;
      *(v44 + 88) = v48;
      *(v44 + 96) = v40;
      v49 = objc_allocWithZone(MEMORY[0x277CE2DB8]);
      v96[2] = sub_270294884;
      v96[3] = v44;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v96[0] = sub_270290C5C;
      v96[1] = &block_descriptor_0;
      v50 = _Block_copy(aBlock);

      v51 = v46;

      v52 = [v49 initWithCompletionHandler_];
      _Block_release(v50);

      [v52 setRecognitionLevel_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AF0);
      v53 = swift_allocObject();
      *(v53 + 16) = v77;
      v54 = v80;
      sub_2702B3D0C();
      v55 = sub_2702B3CFC();
      v57 = v56;
      (*v78)(v54, v81);
      *(v53 + 32) = v55;
      *(v53 + 40) = v57;
      v37 = v76;
      *(v53 + 48) = 0x42475F6E65;
      *(v53 + 56) = 0xE500000000000000;
      v58 = sub_2702B41AC();

      [v52 setRecognitionLanguages_];

      [v52 setUsesLanguageCorrection_];
      [v52 setRegionOfInterest_];
      sub_2702B454C();
      sub_2702B457C();
      sub_2702B458C();
      sub_2702B455C();
      v39 = v90 + 32;
      --v38;
    }

    while (v38);

    v59 = v93;
  }

  else
  {

    v59 = MEMORY[0x277D84F90];
  }

  v60 = v89;
  if (v59 >> 62)
  {
    v61 = sub_2702B45FC();
  }

  else
  {
    v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v73;
  v63 = swift_beginAccess();
  *v62 = v61;
  if (!v61)
  {
    v63 = v60(MEMORY[0x277D84F90], 0);
  }

  v64 = MEMORY[0x27439C730](v63);
  if (v59 >> 62)
  {
    sub_27026608C(0, &qword_2807C8848);

    sub_2702B45BC();
  }

  else
  {

    sub_2702B479C();
    sub_27026608C(0, &qword_2807C8848);
  }

  sub_27026608C(0, &qword_2807C8848);
  v65 = sub_2702B41AC();

  v93 = 0;
  v66 = v74;
  v67 = [v74 performRequests:v65 error:&v93];

  if (v67)
  {
    v68 = v93;
    objc_autoreleasePoolPop(v64);
  }

  else
  {
    v69 = v93;
    v70 = sub_2702B3C0C();

    swift_willThrow();
    objc_autoreleasePoolPop(v64);
    v71 = v70;
    v60(v70, 1);
  }

  v72 = v75;

  objc_autoreleasePoolPop(v72);
}

id sub_2702908FC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, uint64_t a8, CGImage *a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, void))
{
  result = swift_beginAccess();
  v22 = *(a7 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a7 + 16) = v24;
    result = [a1 results];
    if (result)
    {
      v25 = result;
      sub_27026608C(0, &qword_2807C8B28);
      v26 = sub_2702B41BC();

      v27 = sub_270290AF4(v26);

      if (v27)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v29 = Strong;
          v30 = sub_2702949D8(v27, a9, a2, a3, a4, a5);

          swift_beginAccess();
          sub_27029B848(v30);
          swift_endAccess();
        }

        else
        {
        }

        swift_beginAccess();
        v31 = *(a7 + 16);
        result = swift_beginAccess();
        if (v31 == *(a11 + 16))
        {
          swift_beginAccess();

          a12(v32, 0);
        }
      }
    }
  }

  return result;
}

uint64_t sub_270290AF4(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_2702B456C();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2702B45FC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x27439C0F0](j, a1);
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

      sub_2702B454C();
      sub_2702B457C();
      sub_2702B458C();
      sub_2702B455C();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_2702B45FC();
    sub_2702B456C();
  }

  return v8;
}

void sub_270290C5C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

char *sub_270290CE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_270290DEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_270290EF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B20);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_270290FF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84B8);
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

char *sub_2702910F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B18);
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

void *sub_2702911FC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B48);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_270291330(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B40);
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

size_t sub_27029143C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B38);
  v10 = *(sub_2702B3CEC() - 8);
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
  v15 = *(sub_2702B3CEC() - 8);
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

char *sub_270291614(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AF0);
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

char *sub_270291720(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_270291844(unint64_t result, double a2, double a3)
{
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_2702B45FC();
  v4 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v4 >= 1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      do
      {
        v7 = MEMORY[0x27439C0F0](v5, v3);
        v8 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if (*(*(v7 + v8) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
        {
          v9 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v10 = *(v7 + v9);
          v11 = &v10[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
          swift_beginAccess();
          v13 = *v11;
          v12 = v11[1];
          v14 = &v10[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          x = v14->origin.x;
          y = v14->origin.y;
          width = v14->size.width;
          height = v14->size.height;
          v19 = v10;
          v77.origin.x = x;
          v77.origin.y = y;
          v77.size.width = width;
          v77.size.height = height;
          v20 = CGRectGetMinX(v77) / v13;
          v21 = CGRectGetMinY(*v14) / v12;
          v22 = CGRectGetWidth(*v14) / v13;
          v23 = CGRectGetHeight(*v14);

          v24 = v23 / v12;
          v78.origin.x = v20;
          v78.origin.y = v21;
          v78.size.width = v22;
          v78.size.height = v24;
          MinX = CGRectGetMinX(v78);
          v79.origin.x = v20;
          v79.origin.y = v21;
          v79.size.width = v22;
          v79.size.height = v24;
          v26 = 1.0 - CGRectGetMaxY(v79);
          v80.origin.x = v20;
          v80.origin.y = v21;
          v80.size.width = v22;
          v80.size.height = v24;
          v27 = CGRectGetWidth(v80);
          v81.origin.x = v20;
          v81.origin.y = v21;
          v81.size.width = v22;
          v81.size.height = v24;
          v28 = CGRectGetHeight(v81);
          v82.origin.x = MinX;
          v82.origin.y = v26;
          v82.size.width = v27;
          v82.size.height = v28;
          v29 = CGRectGetMinX(v82) - a2;
          v30 = 0.0;
          if (v29 < 0.0)
          {
            v31 = 0.0;
          }

          else
          {
            v31 = v29;
          }

          v83.origin.x = MinX;
          v83.origin.y = v26;
          v83.size.width = v27;
          v83.size.height = v28;
          v32 = CGRectGetMinY(v83) - a3;
          if (v32 >= 0.0)
          {
            v30 = v32;
          }

          v33 = 1.0 - v31;
          v84.origin.x = MinX;
          v84.origin.y = v26;
          v84.size.width = v27;
          v84.size.height = v28;
          v34 = a2 + a2 + CGRectGetWidth(v84);
          if (v34 < 1.0 - v31)
          {
            v33 = v34;
          }

          v85.origin.x = MinX;
          v85.origin.y = v26;
          v85.size.width = v27;
          v85.size.height = v28;
          v35 = a3 + a3 + CGRectGetHeight(v85);
          if (v35 >= 1.0 - v30)
          {
            v36 = 1.0 - v30;
          }

          else
          {
            v36 = v35;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_270290EF0(0, *(v6 + 2) + 1, 1, v6);
          }

          v38 = *(v6 + 2);
          v37 = *(v6 + 3);
          if (v38 >= v37 >> 1)
          {
            v6 = sub_270290EF0((v37 > 1), v38 + 1, 1, v6);
          }

          swift_unknownObjectRelease();
          *(v6 + 2) = v38 + 1;
          v39 = &v6[32 * v38];
          v39[4] = v31;
          v39[5] = v30;
          v39[6] = v33;
          v39[7] = v36;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v5;
      }

      while (v4 != v5);
    }

    else
    {
      v40 = (v3 + 32);
      v6 = MEMORY[0x277D84F90];
      do
      {
        v42 = *v40;
        v43 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if (*(*&v42[v43] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
        {
          v44 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v45 = *&v42[v44];
          v46 = &v45[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
          swift_beginAccess();
          v48 = *v46;
          v47 = v46[1];
          v49 = &v45[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v50 = v49->origin.x;
          v51 = v49->origin.y;
          v52 = v49->size.width;
          v53 = v49->size.height;
          v54 = v42;
          v55 = v45;
          v86.origin.x = v50;
          v86.origin.y = v51;
          v86.size.width = v52;
          v86.size.height = v53;
          v56 = CGRectGetMinX(v86) / v48;
          v57 = CGRectGetMinY(*v49) / v47;
          v58 = CGRectGetWidth(*v49) / v48;
          v59 = CGRectGetHeight(*v49);

          v60 = v59 / v47;
          v87.origin.x = v56;
          v87.origin.y = v57;
          v87.size.width = v58;
          v87.size.height = v60;
          v61 = CGRectGetMinX(v87);
          v88.origin.x = v56;
          v88.origin.y = v57;
          v88.size.width = v58;
          v88.size.height = v60;
          v62 = 1.0 - CGRectGetMaxY(v88);
          v89.origin.x = v56;
          v89.origin.y = v57;
          v89.size.width = v58;
          v89.size.height = v60;
          v63 = CGRectGetWidth(v89);
          v90.origin.x = v56;
          v90.origin.y = v57;
          v90.size.width = v58;
          v90.size.height = v60;
          v64 = CGRectGetHeight(v90);
          v91.origin.x = v61;
          v91.origin.y = v62;
          v91.size.width = v63;
          v91.size.height = v64;
          v65 = CGRectGetMinX(v91) - a2;
          v66 = 0.0;
          if (v65 < 0.0)
          {
            v67 = 0.0;
          }

          else
          {
            v67 = v65;
          }

          v92.origin.x = v61;
          v92.origin.y = v62;
          v92.size.width = v63;
          v92.size.height = v64;
          v68 = CGRectGetMinY(v92) - a3;
          if (v68 >= 0.0)
          {
            v66 = v68;
          }

          v69 = 1.0 - v67;
          v93.origin.x = v61;
          v93.origin.y = v62;
          v93.size.width = v63;
          v93.size.height = v64;
          v70 = a2 + a2 + CGRectGetWidth(v93);
          if (v70 < 1.0 - v67)
          {
            v69 = v70;
          }

          v94.origin.x = v61;
          v94.origin.y = v62;
          v94.size.width = v63;
          v94.size.height = v64;
          v71 = a3 + a3 + CGRectGetHeight(v94);
          if (v71 >= 1.0 - v66)
          {
            v72 = 1.0 - v66;
          }

          else
          {
            v72 = v71;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_270290EF0(0, *(v6 + 2) + 1, 1, v6);
          }

          v74 = *(v6 + 2);
          v73 = *(v6 + 3);
          if (v74 >= v73 >> 1)
          {
            v6 = sub_270290EF0((v73 > 1), v74 + 1, 1, v6);
          }

          *(v6 + 2) = v74 + 1;
          v41 = &v6[32 * v74];
          v41[4] = v67;
          v41[5] = v66;
          v41[6] = v69;
          v41[7] = v72;
        }

        ++v40;
        --v4;
      }

      while (v4);
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_270291E98(uint64_t result, unint64_t a2)
{
  v80 = result;
  if (a2 >> 62)
  {
    result = sub_2702B45FC();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  if (v3 >= 1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      v5 = 0;
      v6 = 1;
      v7 = 0.0;
      while (1)
      {
        v78 = v7;
        v8 = MEMORY[0x27439C0F0](v5, a2);
        v9 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v10 = *(v8 + v9);
        v11 = *(v80 + 32);
        v12 = &v10[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        v16 = v12[3];
        v17 = &v11[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = v10;
        v23 = v11;
        r2_24 = v14;
        v76 = v13;
        v81.origin.x = v13;
        v81.origin.y = v14;
        r2_8 = v16;
        r2_16 = v15;
        v81.size.width = v15;
        v81.size.height = v16;
        r2 = v18;
        v93.origin.x = v18;
        v93.origin.y = v19;
        v93.size.width = v20;
        v93.size.height = v21;
        v82 = CGRectUnion(v81, v93);
        x = v82.origin.x;
        y = v82.origin.y;
        width = v82.size.width;
        height = v82.size.height;
        v28 = CGRectGetHeight(v82);
        v83.origin.x = x;
        v83.origin.y = y;
        v83.size.width = width;
        v83.size.height = height;
        v29 = v28 * CGRectGetWidth(v83);
        if (v29 == 0.0)
        {

          v7 = 0.0;
          if (!v4)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v84.origin.y = r2_24;
          v84.origin.x = v76;
          v84.size.height = r2_8;
          v84.size.width = r2_16;
          v94.origin.x = r2;
          v94.origin.y = v19;
          v94.size.width = v20;
          v94.size.height = v21;
          v85 = CGRectIntersection(v84, v94);
          v30 = v85.origin.x;
          v31 = v85.origin.y;
          v32 = v85.size.width;
          v33 = v85.size.height;
          v34 = CGRectGetHeight(v85);
          v86.origin.x = v30;
          v86.origin.y = v31;
          v86.size.width = v32;
          v86.size.height = v33;
          v35 = CGRectGetWidth(v86);

          v7 = v34 * v35 / v29;
          if (!v4)
          {
            goto LABEL_7;
          }
        }

        if (v6)
        {
          swift_unknownObjectRelease();
          v6 = 1;
          v7 = v78;
          goto LABEL_8;
        }

        if (v78 >= v7)
        {
          v7 = v78;
          swift_unknownObjectRelease();
          v6 = 0;
          goto LABEL_8;
        }

LABEL_7:
        v6 = 0;
        v4 = v8;
LABEL_8:
        if (v3 == ++v5)
        {
          return v4;
        }
      }
    }

    v4 = 0;
    v36 = (a2 + 32);
    v37 = 1;
    v38 = 0.0;
    while (1)
    {
      v79 = v38;
      v39 = *v36;
      v40 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v41 = *&v39[v40];
      v42 = *(v80 + 32);
      v43 = &v41[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v44 = *v43;
      v45 = v43[1];
      v46 = v43[2];
      v47 = v43[3];
      v48 = &v42[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v49 = *v48;
      v50 = v48[1];
      v51 = v48[2];
      v52 = v48[3];
      v53 = v39;
      v54 = v41;
      v55 = v42;
      r2_24a = v45;
      v77 = v44;
      v87.origin.x = v44;
      v87.origin.y = v45;
      r2_8a = v47;
      r2_16a = v46;
      v87.size.width = v46;
      v87.size.height = v47;
      r2a = v49;
      v95.origin.x = v49;
      v95.origin.y = v50;
      v95.size.width = v51;
      v95.size.height = v52;
      v88 = CGRectUnion(v87, v95);
      v56 = v88.origin.x;
      v57 = v88.origin.y;
      v58 = v88.size.width;
      v59 = v88.size.height;
      v60 = CGRectGetHeight(v88);
      v89.origin.x = v56;
      v89.origin.y = v57;
      v89.size.width = v58;
      v89.size.height = v59;
      v61 = v60 * CGRectGetWidth(v89);
      if (v61 == 0.0)
      {

        v38 = 0.0;
        if (!v4)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v90.origin.y = r2_24a;
        v90.origin.x = v77;
        v90.size.height = r2_8a;
        v90.size.width = r2_16a;
        v96.origin.x = r2a;
        v96.origin.y = v50;
        v96.size.width = v51;
        v96.size.height = v52;
        v91 = CGRectIntersection(v90, v96);
        v62 = v91.origin.x;
        v63 = v91.origin.y;
        v64 = v91.size.width;
        v65 = v91.size.height;
        v66 = CGRectGetHeight(v91);
        v92.origin.x = v62;
        v92.origin.y = v63;
        v92.size.width = v64;
        v92.size.height = v65;
        v67 = CGRectGetWidth(v92);

        v38 = v66 * v67 / v61;
        if (!v4)
        {
          goto LABEL_19;
        }
      }

      if (v37)
      {

        v37 = 1;
        v38 = v79;
        goto LABEL_20;
      }

      if (v79 >= v38)
      {
        v38 = v79;

        v37 = 0;
        goto LABEL_20;
      }

LABEL_19:
      v37 = 0;
      v4 = v53;
LABEL_20:
      ++v36;
      if (!--v3)
      {
        return v4;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_270292308(unint64_t a1, unint64_t a2)
{
  v4 = sub_2702B3CEC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v47 = &v46 - v9;
  result = MEMORY[0x28223BE20](v8);
  v52 = &v46 - v11;
  v61 = MEMORY[0x277D84F98];
  v58 = a2;
  if (a2 >> 62)
  {
    v45 = result;
    v12 = sub_2702B45FC();
    result = v45;
    if (v12)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F98];
  }

  v12 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    return MEMORY[0x277D84F98];
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    v56 = result;
    v57 = v58 & 0xC000000000000001;
    v55 = (v5 + 16);
    v48 = xmmword_2702B7B30;
    v51 = a1;
    v50 = v12;
    v54 = (v5 + 8);
    while (1)
    {
      if (v57)
      {
        v14 = MEMORY[0x27439C0F0](v13, v58);
      }

      else
      {
        v14 = *(v58 + 8 * v13 + 32);
      }

      v15 = sub_270291E98(v14, a1);
      if (v15)
      {
        v16 = v15;
        v17 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v18 = *&v16[v17];
        v19 = *(v14 + 32);
        v20 = v18;
        v21 = v19;
        LOBYTE(v19) = sub_270298280(v20, 0.7225);
        v59 = v21;
        v22 = sub_270298280(v21, 0.7225);
        if ((v19 & 1) != 0 || v22)
        {
          v23 = OBJC_IVAR___UIObjectCompat_id;
          swift_beginAccess();
          v24 = *v55;
          v25 = v52;
          (*v55)(v52, &v16[v23], v56);
          if (*(v61 + 16) && (sub_27025E770(v25), (v26 & 1) != 0))
          {
            v27 = *v54;

            v28 = v25;
            v29 = v56;
            v27(v28, v56);
            v30 = v27;

            v31 = &v16[v23];
            v32 = v29;
            v33 = v47;
            v24(v47, v31, v29);
            v35 = sub_2702A4A48(v60);
            if (*v34)
            {
              v36 = v34;

              MEMORY[0x27439BDA0](v37);
              a1 = v51;
              v12 = v50;
              if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_2702B41CC();
              }

              sub_2702B41EC();
              (v35)(v60, 0);

              v30(v47, v56);
              goto LABEL_6;
            }

            (v35)(v60, 0);

            v27(v33, v32);
          }

          else
          {
            v53 = *v54;
            v38 = v25;
            v39 = v56;
            v53(v38, v56);
            v40 = &v16[v23];
            v41 = v49;
            v24(v49, v40, v39);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83A8);
            v42 = swift_allocObject();
            *(v42 + 16) = v48;
            *(v42 + 32) = v14;

            v43 = v61;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v60[0] = v43;
            sub_2702A71CC(v42, v41, isUniquelyReferenced_nonNull_native);
            v53(v41, v39);

            v61 = v60[0];
          }

          a1 = v51;
          v12 = v50;
        }

        else
        {
        }
      }

      else
      {
      }

LABEL_6:
      if (v12 == ++v13)
      {
        return v61;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_270292874(unint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v31 = a2;
  v5 = sub_2702B3CEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2702B45FC())
  {
    v23 = a1;
    v24 = v3;
    v10 = 0;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = a1 & 0xC000000000000001;
    v27 = (v6 + 16);
    v28 = i;
    v25 = (a1 + 32);
    v26 = (v6 + 8);
    v3 = &qword_2807C84E8;
    while (1)
    {
      if (v30)
      {
        v11 = MEMORY[0x27439C0F0](v10, v23);
      }

      else
      {
        if (v10 >= *(v29 + 16))
        {
          goto LABEL_17;
        }

        v11 = v25[v10];
      }

      v12 = v11;
      if (__OFADD__(v10++, 1))
      {
        break;
      }

      v14 = *v31;
      v15 = OBJC_IVAR___UIObjectCompat_id;
      swift_beginAccess();
      v16 = *v27;
      v32 = v12;
      v16(v8, &v12[v15], v5);
      v17 = *(v14 + 16);

      v18 = 0;
      do
      {
        if (v17 == v18)
        {

          (*v26)(v8, v5);
          a1 = &v33;
          sub_2702B454C();
          sub_2702B457C();
          sub_2702B458C();
          sub_2702B455C();
          goto LABEL_5;
        }

        v19 = v18 + 1;
        sub_270294F18(&qword_2807C84E8, MEMORY[0x277CC95F0]);
        a1 = v5;
        v20 = sub_2702B3FEC();
        v18 = v19;
      }

      while ((v20 & 1) == 0);

      (*v26)(v8, v5);

LABEL_5:
      if (v10 == v28)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t _s15UIUnderstanding11UIUDetectorC26getMergedDetectionsWithOCR07elementE003ocrE027shouldOnlyUseOCRBoundingBox0j17IncludeAdditionalG0014removeDetecionf2NoG0SayAA8UIObjectCGAL_SayAA12OCRDetectionCGS3btF_0(unint64_t a1, unint64_t a2, int a3, int a4, int a5)
{
  v133 = a5;
  v135 = a3;
  v138 = a2;
  v7 = sub_2702B3CEC();
  v155 = *(v7 - 1);
  v8 = MEMORY[0x28223BE20](v7);
  v145 = &v132[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v143 = &v132[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v132[-v13];
  v162 = a1;
  v160 = MEMORY[0x277D84F90];
  v144 = a1;
  v134 = a4;
  if (a1 >> 62)
  {
    goto LABEL_133;
  }

  v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v16 = v12;

  v17 = MEMORY[0x277D84F90];
  v152 = v7;
  if (v15)
  {
    v18 = 0;
    v19 = v16 & 0xC000000000000001;
    v20 = v16 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v19)
      {
        v21 = MEMORY[0x27439C0F0](v18, v16);
      }

      else
      {
        if (v18 >= *(v20 + 16))
        {
          goto LABEL_125;
        }

        v21 = *(v16 + 8 * v18 + 32);
      }

      v7 = v21;
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_124;
      }

      v23 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if (*(*(v7 + v23) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
      {
        sub_2702B454C();
        sub_2702B457C();
        sub_2702B458C();
        sub_2702B455C();
      }

      else
      {
      }

      ++v18;
      v7 = v152;
      v16 = v144;
    }

    while (v22 != v15);
    v24 = v160;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v161 = v17;
  v142 = v24;
  v25 = sub_270292308(v24, v138);
  v26 = v25;
  v27 = v25 + 64;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v25 + 64);
  v31 = ((v28 + 63) >> 6);
  v154 = (v155 + 16);
  v150 = (v155 + 32);
  swift_bridgeObjectRetain_n();
  v32 = 0;
  v153 = v17;
  v33 = v143;
  v148 = v26;
  v151 = v27;
  v149 = v31;
  while (v30)
  {
LABEL_26:
    v35 = *(*(v26 + 56) + ((v32 << 9) | (8 * __clz(__rbit64(v30)))));
    if (v35 >> 62)
    {
      v36 = sub_2702B45FC();
      if (!v36)
      {
LABEL_38:

        v38 = v17;
        goto LABEL_39;
      }
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_38;
      }
    }

    v160 = v17;
    v7 = (v36 & ~(v36 >> 63));

    sub_27029C480(0, v7, 0);
    if (v36 < 0)
    {
      goto LABEL_130;
    }

    v37 = 0;
    v38 = v160;
    v7 = v152;
    do
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x27439C0F0](v37, v35);
        (*v154)(v14, v39 + OBJC_IVAR____TtC15UIUnderstanding12OCRDetection_id, v7);
        swift_unknownObjectRelease();
      }

      else
      {
        (*v154)(v14, *(v35 + 8 * v37 + 32) + OBJC_IVAR____TtC15UIUnderstanding12OCRDetection_id, v7);
      }

      v160 = v38;
      v41 = *(v38 + 16);
      v40 = *(v38 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_27029C480(v40 > 1, v41 + 1, 1);
        v38 = v160;
      }

      ++v37;
      *(v38 + 16) = v41 + 1;
      v7 = v152;
      (*(v155 + 32))(v38 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v41, v14, v152);
    }

    while (v36 != v37);
LABEL_39:
    v42 = *(v38 + 16);
    v43 = v153;
    v44 = *(v153 + 16);
    v45 = v44 + v42;
    if (__OFADD__(v44, v42))
    {
      goto LABEL_128;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v47 = v43[3] >> 1, v47 < v45))
    {
      if (v44 <= v45)
      {
        v48 = v44 + v42;
      }

      else
      {
        v48 = v44;
      }

      v153 = sub_27029143C(isUniquelyReferenced_nonNull_native, v48, 1, v43);
      v47 = *(v153 + 24) >> 1;
    }

    v17 = MEMORY[0x277D84F90];
    if (*(v38 + 16))
    {
      if (v47 - *(v153 + 16) < v42)
      {
        goto LABEL_131;
      }

      swift_arrayInitWithCopy();

      v26 = v148;
      if (v42)
      {
        v49 = *(v153 + 16);
        v50 = __OFADD__(v49, v42);
        v51 = v49 + v42;
        if (v50)
        {
          goto LABEL_132;
        }

        *(v153 + 16) = v51;
      }
    }

    else
    {

      v26 = v148;
      if (v42)
      {
        goto LABEL_129;
      }
    }

    v30 &= v30 - 1;

    v33 = v143;
    v27 = v151;
    v31 = v149;
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_123;
    }

    if (v34 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v34);
    ++v32;
    if (v30)
    {
      v32 = v34;
      goto LABEL_26;
    }
  }

  v52 = v142;
  if ((v142 & 0x8000000000000000) != 0 || (v142 & 0x4000000000000000) != 0)
  {
    v130 = sub_2702B45FC();
    v52 = v142;
    v14 = v130;
  }

  else
  {
    v14 = *(v142 + 16);
  }

  v53 = v153;
  if (v14)
  {
    v54 = 0;
    v141 = v52 & 0xC000000000000001;
    v136 = v52 + 32;
    v140 = (v155 + 8);
    v147 = MEMORY[0x277D84F90];
    v139 = v14;
    while (1)
    {
      if (v141)
      {
        v61 = MEMORY[0x27439C0F0](v54, v52);
      }

      else
      {
        if (v54 >= *(v52 + 16))
        {
          goto LABEL_127;
        }

        v61 = *(v136 + 8 * v54);
      }

      v149 = v61;
      v50 = __OFADD__(v54, 1);
      v62 = (v54 + 1);
      if (v50)
      {
        goto LABEL_126;
      }

      v146 = v62;
      v63 = OBJC_IVAR___UIObjectCompat_id;
      v64 = v149;
      swift_beginAccess();
      v65 = *v154;
      (*v154)(v33, &v64[v63], v7);
      if (!*(v26 + 16))
      {
        break;
      }

      v66 = sub_27025E770(v33);
      if ((v67 & 1) == 0)
      {
        break;
      }

      v68 = *(*(v148 + 56) + 8 * v66);
      v69 = v33;
      v70 = *v140;

      v70(v69, v7);
      if (!(v68 >> 62))
      {
        v137 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v151 = v137;
        if (v137)
        {
          goto LABEL_68;
        }

LABEL_99:

LABEL_83:
        v65(v145, &v149[v63], v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_27029143C(0, v147[2] + 1, 1, v147);
        }

        v54 = v146;
        v84 = v147[2];
        v83 = v147[3];
        if (v84 >= v83 >> 1)
        {
          v147 = sub_27029143C(v83 > 1, v84 + 1, 1, v147);
        }

        v85 = v147;
        v147[2] = v84 + 1;
        (*(v155 + 32))(v85 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v84, v145, v7);
        v161 = v85;
        goto LABEL_58;
      }

      v137 = sub_2702B45FC();
      if (v137 <= 0)
      {
        goto LABEL_99;
      }

      v151 = sub_2702B45FC();
      if (v151)
      {
LABEL_68:
        v71 = 0;
        v72 = v68 & 0xC000000000000001;
        v73 = v68 & 0xFFFFFFFFFFFFFF8;
        v74 = MEMORY[0x277D84F90];
        v14 = v68;
        v75 = v68 & 0xC000000000000001;
        while (1)
        {
          if (v72)
          {
            v76 = MEMORY[0x27439C0F0](v71, v68);
            v77 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (v71 >= *(v73 + 16))
            {
              goto LABEL_122;
            }

            v76 = *(v68 + 8 * v71 + 32);

            v77 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
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
              v129 = sub_2702B45FC();
              v12 = v144;
              v15 = v129;
              goto LABEL_3;
            }
          }

          v78 = *(v76 + 16);
          v7 = *(v76 + 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = sub_270291614(0, *(v74 + 2) + 1, 1, v74);
          }

          v80 = *(v74 + 2);
          v79 = *(v74 + 3);
          if (v80 >= v79 >> 1)
          {
            v74 = sub_270291614((v79 > 1), v80 + 1, 1, v74);
          }

          *(v74 + 2) = v80 + 1;
          v81 = &v74[16 * v80];
          *(v81 + 4) = v78;
          *(v81 + 5) = v7;
          ++v71;
          v82 = v77 == v151;
          v68 = v14;
          v72 = v75;
          if (v82)
          {
            v86 = MEMORY[0x277D84F90];
            goto LABEL_88;
          }
        }
      }

      v72 = v68 & 0xC000000000000001;
      v86 = MEMORY[0x277D84F90];
      v74 = MEMORY[0x277D84F90];
LABEL_88:
      v159 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C86B8);
      sub_270294F60();
      v87 = sub_2702B3FBC();
      v89 = v88;

      v90 = OBJC_IVAR___UIObjectCompat_detection;
      v91 = v149;
      swift_beginAccess();
      v92 = (*&v91[v90] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
      swift_beginAccess();
      *v92 = v87;
      v92[1] = v89;

      v159 = v86;
      v93 = v137;
      sub_2702B456C();
      v94 = 0;
      v54 = v146;
      do
      {
        if (v72)
        {
          v95 = MEMORY[0x27439C0F0](v94, v68);
        }

        else
        {
          v95 = *(v68 + 8 * v94 + 32);
        }

        ++v94;
        v96 = *(v95 + 32);

        sub_2702B454C();
        sub_2702B457C();
        sub_2702B458C();
        sub_2702B455C();
        v53 = v153;
      }

      while (v93 != v94);

      v55 = v159;
      v7 = v152;
      if ((v135 & 1) == 0)
      {
        v97 = OBJC_IVAR___UIObjectCompat_boundingBox;
        v98 = v149;
        swift_beginAccess();
        v99 = *&v98[v97];
        MEMORY[0x27439BDA0]();
        if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2702B41CC();
        }

        sub_2702B41EC();
        v55 = v159;
      }

      _s15UIUnderstanding11BoundingBoxC09getMergedbC0yACSayACGFZ_0(v55);
      v57 = v56;

      v58 = OBJC_IVAR___UIObjectCompat_boundingBox;
      v59 = v149;
      swift_beginAccess();
      v60 = *&v59[v58];
      *&v59[v58] = v57;

LABEL_58:
      v14 = v139;
      v33 = v143;
      v52 = v142;
      v26 = v148;
      if (v54 == v139)
      {
        goto LABEL_101;
      }
    }

    (*v140)(v33, v7);
    goto LABEL_83;
  }

  v147 = MEMORY[0x277D84F90];
LABEL_101:

  if (v133)
  {
    v100 = sub_270292874(v144, &v161);

    v162 = v100;
    v144 = v100;
  }

  v101 = v138;
  if ((v134 & 1) == 0)
  {
    goto LABEL_136;
  }

  if (v138 >> 62)
  {
    v131 = v138;
    result = sub_2702B45FC();
    v101 = v131;
    if (!result)
    {
      goto LABEL_136;
    }

LABEL_106:
    if (result >= 1)
    {
      v148 = 0;
      v103 = 0;
      v151 = v101 & 0xC000000000000001;
      v149 = (v101 + 32);
      v154 = result;
      do
      {
        if (v151)
        {
          v104 = MEMORY[0x27439C0F0](v103);
        }

        else
        {
          v104 = *&v149[8 * v103];
        }

        v105 = 0;
        ++v103;
        v106 = *(v53 + 16);
        while (v106 != v105)
        {
          v107 = v105 + 1;
          sub_270294F18(&qword_2807C84E8, MEMORY[0x277CC95F0]);
          v108 = sub_2702B3FEC();
          v105 = v107;
          if (v108)
          {
            goto LABEL_108;
          }
        }

        v109 = *(v104 + 40);
        if (v109 <= 0.31)
        {
LABEL_108:

          continue;
        }

        v110 = v109;
        v112 = *(v104 + 16);
        v111 = *(v104 + 24);
        v113 = *(v104 + 32);
        v150 = objc_allocWithZone(type metadata accessor for UIObject());
        v114 = type metadata accessor for UIDetection();
        v115 = objc_allocWithZone(v114);
        v116 = &v115[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
        *v116 = 0;
        *(v116 + 1) = 0;
        *&v115[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature] = 0;
        *&v115[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label] = 10;
        *&v115[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence] = v110;
        swift_beginAccess();
        *v116 = v112;
        *(v116 + 1) = v111;
        v158.receiver = v115;
        v158.super_class = v114;

        v117 = v113;
        v118 = objc_msgSendSuper2(&v158, sel_init);
        v119 = type metadata accessor for ClickabilityDetection();
        v120 = objc_allocWithZone(v119);
        v120[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = 0;
        *&v120[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = -1;
        *&v120[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = 0;
        v157.receiver = v120;
        v157.super_class = v119;
        v121 = objc_msgSendSuper2(&v157, sel_init);
        v122 = type metadata accessor for FocusDetection();
        v123 = objc_allocWithZone(v122);
        v123[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused] = 0;
        *&v123[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence] = 0;
        v156.receiver = v123;
        v156.super_class = v122;
        v124 = objc_msgSendSuper2(&v156, sel_init);
        v125 = v121;
        v126 = sub_2702B41AC();
        v127 = [v150 initWithDetection:v118 clickable:v125 focused:v124 icon:0 boundingBox:v117 children:v126];

        v128 = v127;
        MEMORY[0x27439BDA0]();
        if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2702B41CC();
        }

        sub_2702B41EC();

        v144 = v162;
        v53 = v153;
      }

      while (v103 != v154);
      goto LABEL_136;
    }

    __break(1u);
  }

  else
  {
    result = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_106;
    }

LABEL_136:

    return v144;
  }

  return result;
}

uint64_t sub_270293C74(CGImage *a1, uint64_t a2, unint64_t a3, char *a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v119[7] = *MEMORY[0x277D85DE8];
  v16 = sub_2702B3D1C();
  *&v111 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v109 = v19;
  v95 = a5;
  v94 = a6;

  v92 = a7;

  v93 = a8;

  v96 = MEMORY[0x27439C730](v20);
  aBlock[0] = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2702B45FC())
  {
    v22 = MEMORY[0x277D84F90];
    v100 = v18;
    v103 = a4;
    v102 = a2;
    v101 = v16;
    v107 = a1;
    if (!i)
    {
      break;
    }

    a1 = 0;
    a2 = a3 & 0xFFFFFFFFFFFFFF8;
    v16 = &OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label;
    *&v112 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x27439C0F0](a1, a3);
      }

      else
      {
        if (a1 >= *(a2 + 16))
        {
          goto LABEL_21;
        }

        v23 = *(a3 + 8 * a1 + 32);
      }

      a4 = v23;
      v18 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v24 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if (*(*&a4[v24] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
      {
        sub_2702B454C();
        sub_2702B457C();
        sub_2702B458C();
        sub_2702B455C();
        a2 = v112;
      }

      else
      {
      }

      a1 = (a1 + 1);
      if (v18 == i)
      {
        v25 = aBlock[0];
        a1 = v107;
        v22 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_16:
  v116 = v22;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
  {
    v29 = Height;
    v30 = sub_2702B45FC();
    Height = v29;
    if (v30)
    {
      goto LABEL_19;
    }
  }

  else if (*(v25 + 16))
  {
LABEL_19:
    v28 = sub_270291844(v25, 5.0 / Width, 5.0 / Height);

    sub_27029B640(v28);
    goto LABEL_27;
  }

  v31 = sub_270290EF0(0, 1, 1, MEMORY[0x277D84F90]);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_270290EF0((v32 > 1), v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = &v31[32 * v33];
  *(v34 + 4) = 0;
  *(v34 + 5) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v34 + 3) = _Q0;
  v116 = v31;
LABEL_27:
  sub_27025FBE0(v22);
  v40 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_270294F18(&qword_2807C8368, type metadata accessor for VNImageOption);
  v41 = sub_2702B3F7C();

  v42 = [v40 initWithCGImage:a1 options:v41];

  v43 = swift_allocObject();
  v44 = v22;
  *(v43 + 16) = 0;
  v45 = (v43 + 16);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  v108 = swift_allocObject();
  *(v108 + 16) = v44;
  v47 = *(v116 + 16);
  if (v47)
  {
    v90 = (v43 + 16);
    v91 = v42;
    v117 = v44;
    v106 = v116;
    sub_2702B456C();
    v99 = v119;
    v98 = (v111 + 8);
    v48 = 32;
    v97 = xmmword_2702B7C20;
    v105 = v46;
    v104 = v43;
    v49 = v43;
    v50 = v109;
    do
    {
      v110 = v48;
      v51 = (v106 + v48);
      v52 = swift_allocObject();
      v53 = v51[1];
      v111 = *v51;
      v112 = v53;
      swift_unknownObjectWeakInit();
      v54 = swift_allocObject();
      *(v54 + 16) = v105;
      *(v54 + 24) = v52;
      v55 = v112;
      *(v54 + 32) = v111;
      *(v54 + 48) = v55;
      v56 = v107;
      v57 = v47;
      v58 = v108;
      *(v54 + 64) = v107;
      *(v54 + 72) = v58;
      *(v54 + 80) = v49;
      *(v54 + 88) = sub_270295014;
      *(v54 + 96) = v50;
      v59 = objc_allocWithZone(MEMORY[0x277CE2DB8]);
      v119[2] = sub_2702950D0;
      v119[3] = v54;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v119[0] = sub_270290C5C;
      v119[1] = &block_descriptor_38;
      v60 = _Block_copy(aBlock);

      v61 = v56;

      v62 = [v59 initWithCompletionHandler_];
      _Block_release(v60);

      [v62 setRecognitionLevel_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AF0);
      v63 = swift_allocObject();
      *(v63 + 16) = v97;
      v64 = v100;
      sub_2702B3D0C();
      v65 = sub_2702B3CFC();
      v67 = v66;
      (*v98)(v64, v101);
      *(v63 + 32) = v65;
      *(v63 + 40) = v67;
      *(v63 + 48) = 0x42475F6E65;
      *(v63 + 56) = 0xE500000000000000;
      v68 = sub_2702B41AC();

      [v62 setRecognitionLanguages_];

      [v62 setUsesLanguageCorrection_];
      [v62 setRegionOfInterest_];
      sub_2702B454C();
      sub_2702B457C();
      sub_2702B458C();
      sub_2702B455C();
      v48 = v110 + 32;
      v47 = v57 - 1;
    }

    while (v57 != 1);

    v69 = v117;
    v42 = v91;
    v45 = v90;
  }

  else
  {

    v69 = MEMORY[0x277D84F90];
  }

  if (v69 >> 62)
  {
    v70 = sub_2702B45FC();
  }

  else
  {
    v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = swift_beginAccess();
  *v45 = v70;
  if (!v70)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v73 = Strong;
      v74 = _s15UIUnderstanding11UIUDetectorC26getMergedDetectionsWithOCR07elementE003ocrE027shouldOnlyUseOCRBoundingBox0j17IncludeAdditionalG0014removeDetecionf2NoG0SayAA8UIObjectCGAL_SayAA12OCRDetectionCGS3btF_0(v92, MEMORY[0x277D84F90], 0, 1, 0);

      v75 = v93;
      swift_beginAccess();
      *(v75 + 16) = v74;
    }

    v71 = sub_2702B439C();
  }

  v76 = MEMORY[0x27439C730](v71);
  if (v69 >> 62)
  {
    sub_27026608C(0, &qword_2807C8848);

    sub_2702B45BC();
  }

  else
  {

    sub_2702B479C();
    sub_27026608C(0, &qword_2807C8848);
  }

  sub_27026608C(0, &qword_2807C8848);
  v77 = sub_2702B41AC();

  v114 = 0;
  v78 = [v42 performRequests:v77 error:&v114];

  if (v78)
  {
    v79 = v114;
    objc_autoreleasePoolPop(v76);
  }

  else
  {
    v80 = MEMORY[0x277D837D0];
    v81 = v114;
    v82 = sub_2702B3C0C();

    swift_willThrow();
    objc_autoreleasePoolPop(v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8710);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_2702B74D0;
    v114 = 0;
    v115 = 0xE000000000000000;
    v84 = v82;
    sub_2702B44CC();
    MEMORY[0x27439BCF0](0xD00000000000001BLL, 0x80000002702BB270);
    v113 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B58);
    sub_2702B459C();
    v85 = v114;
    v86 = v115;
    *(v83 + 56) = v80;
    *(v83 + 32) = v85;
    *(v83 + 40) = v86;
    sub_2702B485C();

    sub_2702B439C();
  }

  v87 = v96;

  objc_autoreleasePoolPop(v87);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for OCRDetection()
{
  result = qword_2807C8AF8;
  if (!qword_2807C8AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2702948F4()
{
  result = sub_2702B3CEC();
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

unint64_t sub_2702949D8(unint64_t result, CGImage *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat Width)
{
  v10 = result;
  v67 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    goto LABEL_34;
  }

  v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    do
    {
      if (v11 < 1)
      {
        __break(1u);
        return result;
      }

      v12 = 0;
      v13 = MEMORY[0x277D84F90];
      v58 = v10 & 0xC000000000000001;
      v64 = Width;
      v56 = a3;
      v57 = a5;
      v55 = v10;
      while (1)
      {
        v14 = v58 ? MEMORY[0x27439C0F0](v12, v10) : *(v10 + 8 * v12 + 32);
        v15 = v14;
        v16 = [v14 topCandidates_];
        sub_27026608C(0, &qword_2807C8B30);
        v17 = sub_2702B41BC();

        if (v17 >> 62)
        {
          if (!sub_2702B45FC())
          {
LABEL_5:

            goto LABEL_6;
          }
        }

        else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_5;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x27439C0F0](0, v17);
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v18 = *(v17 + 32);
        }

        v19 = v18;

        [v15 boundingBox];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v68.origin.x = a3;
        v68.origin.y = a4;
        v68.size.width = a5;
        v68.size.height = Width;
        Width = CGRectGetWidth(v68);
        v28 = Width * CGImageGetWidth(a2);
        if (COERCE__INT64(fabs(v28)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v28 <= -9.22337204e18)
        {
          goto LABEL_29;
        }

        if (v28 >= 9.22337204e18)
        {
          goto LABEL_30;
        }

        v69.origin.x = a3;
        v69.size.height = v64;
        v69.origin.y = a4;
        v69.size.width = a5;
        Width = CGRectGetHeight(v69);
        v29 = Width * CGImageGetHeight(a2);
        if (COERCE__INT64(fabs(v29)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_31;
        }

        if (v29 <= -9.22337204e18)
        {
          goto LABEL_32;
        }

        if (v29 >= 9.22337204e18)
        {
          goto LABEL_33;
        }

        v30 = v11;
        v31 = v29;
        v70.origin.x = v21;
        v70.origin.y = v23;
        v70.size.width = v25;
        v70.size.height = v27;
        v71 = VNImageRectForNormalizedRect(v70, v28, v31);
        x = v71.origin.x;
        y = v71.origin.y;
        v33 = v71.size.width;
        height = v71.size.height;
        MinX = CGRectGetMinX(v71);
        v72.origin.x = a3;
        v72.origin.y = a4;
        v72.size.width = a5;
        v72.size.height = v64;
        v35 = CGRectGetMinX(v72);
        v63 = MinX + v35 * CGImageGetWidth(a2);
        v60 = CGImageGetHeight(a2);
        v73.origin.x = x;
        v73.origin.y = y;
        v73.size.width = v33;
        v73.size.height = height;
        MaxY = CGRectGetMaxY(v73);
        v74.origin.x = a3;
        v74.origin.y = a4;
        v74.size.width = a5;
        v74.size.height = v64;
        MinY = CGRectGetMinY(v74);
        v37 = v60 - (MaxY + MinY * CGImageGetHeight(a2));
        v75.origin.x = x;
        v75.origin.y = y;
        v75.size.width = v33;
        v75.size.height = height;
        v38 = CGRectGetWidth(v75);
        v76.origin.x = x;
        v76.origin.y = y;
        v76.size.width = v33;
        v76.size.height = height;
        v39 = CGRectGetHeight(v76);
        v40 = CGImageGetWidth(a2);
        v41 = CGImageGetHeight(a2);
        v42 = type metadata accessor for BoundingBox();
        v43 = objc_allocWithZone(v42);
        v44 = &v43[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        *v44 = v63;
        v44[1] = v37;
        v44[2] = v38;
        v44[3] = v39;
        v45 = &v43[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
        *v45 = v40;
        v45[1] = v41;
        v66.receiver = v43;
        v66.super_class = v42;
        v46 = objc_msgSendSuper2(&v66, sel_init);
        v47 = [v19 string];
        v48 = sub_2702B402C();
        v50 = v49;

        v51 = v46;
        [v19 confidence];
        LODWORD(v38) = v52;
        type metadata accessor for OCRDetection();
        v53 = swift_allocObject();
        sub_2702B3CDC();
        *(v53 + 16) = v48;
        *(v53 + 24) = v50;
        *(v53 + 32) = v51;
        *(v53 + 40) = LODWORD(v38);

        MEMORY[0x27439BDA0](v54);
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2702B41CC();
        }

        sub_2702B41EC();

        v13 = v67;
        Width = v64;
        a3 = v56;
        a5 = v57;
        v11 = v30;
        v10 = v55;
LABEL_6:
        if (v11 == ++v12)
        {
          return v13;
        }
      }

      __break(1u);
LABEL_28:
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
      result = sub_2702B45FC();
      v11 = result;
    }

    while (result);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_270294F18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_270294F60()
{
  result = qword_2807C86C0;
  if (!qword_2807C86C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C86B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C86C0);
  }

  return result;
}

uint64_t sub_270294FC4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2702950D4()
{
  result = sub_27028699C(&unk_288036598);
  qword_2807CD570 = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UIUDetector.preloadClickabilityModel()()
{
  v2 = OBJC_IVAR___UIUDetectorCompat_clickabilityDetector;
  swift_beginAccess();
  sub_27029532C(v0 + v2, v10);
  v3 = v11;
  sub_2702643E4(v10, &qword_2807C8978);
  if (v3)
  {
    return;
  }

  v4 = *(v0 + OBJC_IVAR___UIUDetectorCompat_modelPlatform);
  if (v4)
  {
    if (v4 != 2)
    {
      if (v4 != 1)
      {
        v10[0] = *(v0 + OBJC_IVAR___UIUDetectorCompat_modelPlatform);
        sub_2702B47BC();
        __break(1u);
        return;
      }

      v5 = v0;
      if (qword_2807C8270 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v6 = qword_2807C8A70;
      v7 = sub_27028DBA8(0);

      if (!v1)
      {
        v8 = type metadata accessor for ClickabilitySquare();
LABEL_14:
        v11 = v8;
        v10[0] = v7;
        swift_beginAccess();
        sub_2702863BC(v10, v5 + v2);
        swift_endAccess();
      }
    }
  }

  else
  {
    v5 = v0;
    if (qword_2807C8270 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = qword_2807C8A70;
    v7 = sub_27028D888(0);

    if (!v1)
    {
      v8 = type metadata accessor for ClickabilityPortrait();
      goto LABEL_14;
    }
  }
}

uint64_t sub_27029532C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UIUDetector.addClickabilityResults(to:in:nmsThreshold:)(Swift::OpaquePointer to, CGImageRef in, Swift::Float nmsThreshold)
{
  if ((*(v3 + OBJC_IVAR___UIUDetectorCompat_modelPlatform) - 1) > 1 || (Width = CGImageGetWidth(in), Width == CGImageGetHeight(in)) || (v7 = _s15UIUnderstanding11UIUDetectorC17createSquareImageySo10CGImageRefaSgAFFZ_0(in)) == 0)
  {
    v7 = in;
  }

  v8 = v7;
  v9 = v7;
  v10 = MEMORY[0x27439C730]();
  sub_270295508(in, v8, v3, to._rawValue, &v11, 0.5);
  objc_autoreleasePoolPop(v10);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UIUDetector.addClickabilityResults(to:originalImage:squareImage:nmsThreshold:)(Swift::OpaquePointer to, CGImageRef originalImage, CGImageRef_optional squareImage, Swift::Float nmsThreshold)
{
  v9 = MEMORY[0x27439C730]();
  sub_270295508(originalImage, squareImage.value, v4, to._rawValue, &v10, nmsThreshold);
  objc_autoreleasePoolPop(v9);
}

void sub_270295508(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, float a6)
{
  *&v213 = a5;
  *&v8 = a6;
  v201 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83B8);
  v209 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v199 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v183 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v207 = &v183 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v183 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v205 = &v183 - v23;
  MEMORY[0x28223BE20](v22);
  v204 = &v183 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8980);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v183 - v26;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  v28 = MEMORY[0x28223BE20](v210);
  v29 = MEMORY[0x28223BE20](v28);
  v202 = &v183 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v203 = &v183 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v183 - v34;
  v198 = v16;
  v200 = v36;
  if (a2)
  {
    v206 = v11;
    v37 = a4;
    v38 = a3;
    v39 = v33;
    v40 = a2;
  }

  else
  {
    if ((*(a3 + OBJC_IVAR___UIUDetectorCompat_modelPlatform) - 1) <= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8710);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_2702B74D0;
      *(v41 + 56) = MEMORY[0x277D837D0];
      *(v41 + 32) = 0xD000000000000049;
      *(v41 + 40) = 0x80000002702BB290;
      sub_2702B485C();
LABEL_109:

      return;
    }

    v206 = v11;
    v37 = a4;
    v38 = a3;
    v39 = v33;
    v40 = v201;
  }

  v42 = a2;
  sub_270296A30(v40, v27);
  if (v6)
  {

    *v213 = v6;
    return;
  }

  v197 = v40;
  v196 = v38;
  v43 = v210;
  if ((*(v39 + 48))(v27, 1, v210) == 1)
  {

    sub_2702643E4(v27, &qword_2807C8980);
    return;
  }

  v185 = v37;
  v186 = 0;
  v195 = v39;
  v44 = *(v39 + 32);
  v189 = v35;
  v44(v35, v27, v43);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83D0);
  v45 = swift_allocObject();
  v213 = xmmword_2702B87C0;
  *(v45 + 16) = xmmword_2702B87C0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83D8);
  *(v45 + 56) = v46;
  v47 = sub_270259914(&qword_2807C83E0, &qword_2807C83D8);
  v194 = v21;
  v48 = v47;
  *(v45 + 64) = v47;
  *(v45 + 32) = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B68);
  *(v45 + 96) = v49;
  v50 = sub_270259914(&qword_2807C8B70, &qword_2807C8B68);
  *(v45 + 72) = xmmword_2702B87D0;
  *(v45 + 136) = v46;
  *(v45 + 144) = v48;
  *(v45 + 104) = v50;
  *(v45 + 112) = 0;
  *(v45 + 176) = v46;
  *(v45 + 184) = v48;
  *(v45 + 152) = 0;
  v51 = sub_270259914(&qword_2807C8490, &qword_2807C83C0);
  sub_2702B3E4C();

  v52 = swift_allocObject();
  *(v52 + 16) = v213;
  *(v52 + 56) = v46;
  *(v52 + 64) = v48;
  *(v52 + 32) = 0;
  *(v52 + 96) = v49;
  *(v52 + 104) = v50;
  *(v52 + 72) = xmmword_2702B87E0;
  *(v52 + 136) = v46;
  *(v52 + 144) = v48;
  *(v52 + 112) = 0;
  *(v52 + 176) = v46;
  *(v52 + 184) = v48;
  *(v52 + 152) = 0;
  sub_2702B3E4C();

  v53 = swift_allocObject();
  *(v53 + 16) = v213;
  *(v53 + 56) = v46;
  *(v53 + 64) = v48;
  *(v53 + 32) = 0;
  *(v53 + 96) = v49;
  *(v53 + 104) = v50;
  *(v53 + 72) = xmmword_2702B87F0;
  *(v53 + 136) = v46;
  *(v53 + 144) = v48;
  *(v53 + 112) = 0;
  *(v53 + 176) = v46;
  *(v53 + 184) = v48;
  *(v53 + 152) = 0;
  v54 = v194;
  v193 = v51;
  sub_2702B3E4C();

  *&v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B78);
  v55 = v209;
  v56 = *(v209 + 72);
  v57 = (*(v209 + 80) + 32) & ~*(v209 + 80);
  v212 = v57 + 2 * v56;
  v208 = v56;
  v58 = swift_allocObject();
  v211 = xmmword_2702B7C20;
  *(v58 + 16) = xmmword_2702B7C20;
  v59 = *(v55 + 16);
  v60 = v54;
  v61 = v206;
  v59(v58 + v57, v60, v206);
  v59(v58 + v57 + v56, v204, v61);
  v215 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B80);
  sub_270259914(&qword_2807C8B88, &qword_2807C8B80);
  v62 = sub_270259914(&qword_2807C83F8, &qword_2807C83B8);
  sub_2702B3D9C();
  v63 = swift_allocObject();
  *(v63 + 16) = v211;
  v64 = v63 + v57;
  v59(v64, v194, v61);
  v192 = v55 + 16;
  v191 = v59;
  v59(v64 + v208, v205, v61);
  v215 = v63;
  v190 = v62;
  sub_2702B3D9C();
  if (qword_2807C8278 != -1)
  {
LABEL_92:
    swift_once();
  }

  v65 = 0;
  v66 = qword_2807CD570;
  v67 = qword_2807CD570 + 56;
  v68 = MEMORY[0x277D84F90];
  *&v213 = qword_2807CD570;
  do
  {
    v71 = *(&unk_2880364E8 + v65 + 4);
    if (*(v66 + 16) && (sub_2702B487C(), MEMORY[0x27439C490](v71), v72 = sub_2702B48AC(), v73 = -1 << *(v66 + 32), v74 = v72 & ~v73, ((*(v67 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) != 0))
    {
      v75 = ~v73;
      while (*(*(v66 + 48) + 8 * v74) != v71)
      {
        v74 = (v74 + 1) & v75;
        if (((*(v67 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v216 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27029C4C0(0, *(v68 + 16) + 1, 1);
        v68 = v216;
      }

      v70 = *(v68 + 16);
      v69 = *(v68 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_27029C4C0((v69 > 1), v70 + 1, 1);
        v68 = v216;
      }

      *(v68 + 16) = v70 + 1;
      *(v68 + 8 * v70 + 32) = v71;
      v66 = v213;
    }

    ++v65;
  }

  while (v65 != 18);
  v208 = sub_2702B1944(v68);

  v77 = v197;
  Width = CGImageGetWidth(v197);
  Height = CGImageGetHeight(v77);
  v80 = OBJC_IVAR___UIUDetectorCompat_clickabilityConfidenceThresholds;
  v81 = *(v196 + OBJC_IVAR___UIUDetectorCompat_clickabilityConfidenceThresholds);

  v82 = v207;
  v83 = v210;
  sub_2702B3DCC();
  v84 = v198;
  v191(v198, v82, v206);
  v85 = v200;
  sub_2702B3DFC();
  v86.f64[0] = Width;
  v87.n128_f64[0] = Height;
  v88 = sub_270284BD0(v85, v81, v86, v87);

  v89 = *(v195 + 8);
  v195 += 8;
  v188 = v89;
  v89(v85, v83);
  v216 = MEMORY[0x277D84F90];
  if (v88 >> 62)
  {
    v90 = sub_2702B45FC();
  }

  else
  {
    v90 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = MEMORY[0x277D84F90];
  v92 = v208;
  *&v211 = v90;
  if (v90)
  {
    v184 = v80;
    v93 = 0;
    v212 = v88 & 0xC000000000000001;
    v94 = v88 & 0xFFFFFFFFFFFFFF8;
    v187 = v88;
    v95 = v88 + 32;
    v96 = v208 + 56;
    v97 = v211;
    while (1)
    {
      while (1)
      {
        if (v212)
        {
          v98 = MEMORY[0x27439C0F0](v93, v187);
          v99 = __OFADD__(v93++, 1);
          if (v99)
          {
LABEL_41:
            __break(1u);
LABEL_42:
            v107 = v216;
            v84 = v198;
            v80 = v184;
            v91 = MEMORY[0x277D84F90];
            goto LABEL_44;
          }
        }

        else
        {
          if (v93 >= *(v94 + 16))
          {
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

          v98 = *(v95 + 8 * v93);

          v99 = __OFADD__(v93++, 1);
          if (v99)
          {
            goto LABEL_41;
          }
        }

        v100 = sub_2702A8F14(*(v98 + 32));
        if ((v101 & 1) == 0)
        {
          break;
        }

LABEL_27:

        if (v93 == v97)
        {
          goto LABEL_42;
        }
      }

      if (*(v92 + 16))
      {
        v102 = v100;
        sub_2702B487C();
        MEMORY[0x27439C490](v102);
        v103 = sub_2702B48AC();
        v97 = v211;
        v104 = -1 << *(v92 + 32);
        v105 = v103 & ~v104;
        if ((*(v96 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105))
        {
          v106 = ~v104;
          while (*(*(v92 + 48) + 8 * v105) != v102)
          {
            v105 = (v105 + 1) & v106;
            if (((*(v96 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_27;
        }
      }

LABEL_37:
      sub_2702B454C();
      sub_2702B457C();
      v92 = v208;
      sub_2702B458C();
      sub_2702B455C();
      v97 = v211;
      if (v93 == v211)
      {
        goto LABEL_42;
      }
    }
  }

  v107 = MEMORY[0x277D84F90];
LABEL_44:

  v108 = _s15UIUnderstanding19CenterNetPredictionC24nonMaximalSuppressionIOU5boxes9thresholdSayACGAG_SftFZ_0(v107, *&v8);

  v109 = *(v209 + 8);
  v110 = v206;
  v209 += 8;
  v187 = v109;
  v109(v207, v206);
  v111 = *(v196 + v80);

  v112 = v199;
  v113 = v210;
  sub_2702B3DCC();
  v191(v84, v112, v110);
  v114 = v200;
  sub_2702B3DFC();
  v115.f64[0] = Width;
  v116.n128_f64[0] = Height;
  v117 = sub_270284BD0(v114, v111, v115, v116);

  v188(v114, v113);
  v216 = v91;
  *&v211 = v117;
  if (v117 >> 62)
  {
    v118 = sub_2702B45FC();
  }

  else
  {
    v118 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v119 = v213;
  v120 = MEMORY[0x277D84F90];
  if (!v118)
  {
    v132 = MEMORY[0x277D84F90];
    goto LABEL_65;
  }

  v208 = v108;
  v121 = 0;
  v212 = v211 & 0xC000000000000001;
  v122 = v211 & 0xFFFFFFFFFFFFFF8;
  v123 = v211 + 32;
  while (1)
  {
    if (v212)
    {
      v124 = MEMORY[0x27439C0F0](v121, v211);
      v99 = __OFADD__(v121++, 1);
      if (v99)
      {
        break;
      }

      goto LABEL_52;
    }

    if (v121 >= *(v122 + 16))
    {
      goto LABEL_91;
    }

    v124 = *(v123 + 8 * v121);

    v99 = __OFADD__(v121++, 1);
    if (v99)
    {
      break;
    }

LABEL_52:
    v125 = sub_2702A8F14(*(v124 + 32));
    if (v126)
    {
LABEL_48:

      if (v121 == v118)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (*(v119 + 16))
      {
        v127 = v125;
        sub_2702B487C();
        MEMORY[0x27439C490](v127);
        v128 = sub_2702B48AC();
        v129 = -1 << *(v119 + 32);
        v130 = v128 & ~v129;
        if ((*(v67 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130))
        {
          v131 = ~v129;
          while (*(*(v119 + 48) + 8 * v130) != v127)
          {
            v130 = (v130 + 1) & v131;
            if (((*(v67 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130) & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_48;
        }
      }

LABEL_58:
      sub_2702B454C();
      sub_2702B457C();
      v119 = v213;
      sub_2702B458C();
      sub_2702B455C();
      if (v121 == v118)
      {
        goto LABEL_63;
      }
    }
  }

  __break(1u);
LABEL_63:
  v132 = v216;
  v108 = v208;
  v120 = MEMORY[0x277D84F90];
LABEL_65:

  v133 = _s15UIUnderstanding19CenterNetPredictionC24nonMaximalSuppressionIOU5boxes9thresholdSayACGAG_SftFZ_0(v132, *&v8);

  v134 = v206;
  v187(v199, v206);
  v215 = v108;
  sub_27029B628(v133);
  v135 = v215;
  v136 = v201;
  if (v215 >> 62)
  {
    v137 = sub_2702B45FC();
    if (v137)
    {
      goto LABEL_67;
    }

LABEL_96:

    v138 = MEMORY[0x277D84F90];
LABEL_97:
    v164 = *(v196 + OBJC_IVAR___UIUDetectorCompat_modelPlatform);
    if ((v164 - 1) >= 2)
    {
      goto LABEL_106;
    }

    v165 = *(v138 + 2);
    if (v165)
    {
      v166 = 0;
      v167 = 0;
      v168 = *(v138 + 2);
      while (v167 < v168)
      {
        v169 = v138;
        v170 = *&v138[v166 + 40];
        v171 = sub_2702995E0(v136);
        v173 = v172;
        v175 = v174;
        v177 = v176;

        v138 = v169;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_27029C958(v169);
        }

        v168 = *(v138 + 2);
        if (v167 >= v168)
        {
          goto LABEL_111;
        }

        ++v167;
        v178 = &v138[v166];
        *(v178 + 6) = v171;
        *(v178 + 7) = v173;
        *(v178 + 8) = v175;
        *(v178 + 9) = v177;
        v166 += 56;
        v178[80] = 0;
        if (v165 == v167)
        {
          goto LABEL_105;
        }
      }

      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_105:
    v179 = 0.5;
    if (v164 != 1)
    {
LABEL_106:
      v179 = 0.4;
      if (v164 == 2)
      {
        v179 = 0.5;
      }
    }

    sub_2702971C0(v185, v138, v179);

    v180 = v210;
    v181 = v188;
    v188(v202, v210);
    v181(v203, v180);
    v182 = v187;
    v187(v194, v134);
    v182(v205, v134);
    v182(v204, v134);
    v181(v189, v180);
    goto LABEL_109;
  }

  v137 = *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v137)
  {
    goto LABEL_96;
  }

LABEL_67:
  v216 = v120;
  sub_27029C4A0(0, v137 & ~(v137 >> 63), 0);
  if ((v137 & 0x8000000000000000) == 0)
  {
    v138 = v216;
    *&v211 = v135 & 0xC000000000000001;
    v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8568);
    v139 = 0;
    v200 = v135;
    v199 = (v135 + 32);
    v207 = v137;
LABEL_69:
    *&v213 = v138;
    if (v211)
    {
      v140 = MEMORY[0x27439C0F0](v139, v200);
    }

    else
    {
      v140 = *&v199[8 * v139];
    }

    v8 = *(v140 + 16);
    v141 = sub_2702A8F14(*(v140 + 32));
    if (v142)
    {
      v143 = -1;
    }

    else
    {
      v143 = v141;
    }

    v212 = v143;
    v144 = sub_2702B463C();
    v145 = &byte_288036608;
    v146 = 18;
    while (1)
    {
      v147 = *(v145 - 1);
      v148 = *v145;
      v149 = sub_270260FAC(v147);
      if (v150)
      {
        break;
      }

      *(v144 + ((v149 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v149;
      *(v144[6] + 8 * v149) = v147;
      *(v144[7] + v149) = v148;
      v151 = v144[2];
      v99 = __OFADD__(v151, 1);
      v152 = v151 + 1;
      if (v99)
      {
        goto LABEL_89;
      }

      v144[2] = v152;
      v145 += 16;
      if (!--v146)
      {
        if (v152)
        {
          v153 = v212;
          v154 = sub_270260FAC(v212);
          if (v155)
          {
            v156 = *(v144[7] + v154);
          }

          else
          {
            v156 = 0;
          }
        }

        else
        {
          v156 = 0;
          v153 = v212;
        }

        v157 = type metadata accessor for ClickabilityDetection();
        v158 = objc_allocWithZone(v157);
        v158[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = v156;
        *&v158[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = v153;
        *&v158[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = v8;
        v214.receiver = v158;
        v214.super_class = v157;
        v159 = objc_msgSendSuper2(&v214, sel_init);
        swift_beginAccess();
        v160 = *(v140 + 24);

        v138 = v213;
        v216 = v213;
        v162 = *(v213 + 16);
        v161 = *(v213 + 24);
        if (v162 >= v161 >> 1)
        {
          sub_27029C4A0((v161 > 1), v162 + 1, 1);
          v138 = v216;
        }

        ++v139;
        *(v138 + 2) = v162 + 1;
        v163 = &v138[56 * v162];
        *(v163 + 4) = v159;
        *(v163 + 5) = v160;
        *(v163 + 3) = 0u;
        *(v163 + 4) = 0u;
        v163[80] = 1;
        if (v139 == v207)
        {

          v134 = v206;
          v136 = v201;
          goto LABEL_97;
        }

        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_112:
  __break(1u);
}

void sub_270296A30(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8980);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v55 - v9;
  v11 = OBJC_IVAR___UIUDetectorCompat_clickabilityDetector;
  swift_beginAccess();
  sub_27029532C(v2 + v11, v59);
  v12 = v60;
  sub_2702643E4(v59, &qword_2807C8978);
  if (v12 || (UIUDetector.preloadClickabilityModel()(), !v34))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
    v57 = *(*(v13 - 8) + 56);
    v57(a2, 1, 1, v13);
    v14 = *(v2 + OBJC_IVAR___UIUDetectorCompat_modelPlatform);
    if (v14)
    {
      if (v14 == 2)
      {
        return;
      }

      if (v14 != 1)
      {
LABEL_36:
        v59[0] = v14;
        sub_2702B47BC();
        __break(1u);
        return;
      }

      sub_27029532C(v2 + v11, v59);
      if (v60)
      {
        type metadata accessor for ClickabilitySquare();
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v15 = v58;
        v16 = objc_opt_self();
        v59[0] = 0;
        v17 = a1;
        v18 = [v16 featureValueWithCGImage:v17 pixelsWide:896 pixelsHigh:896 pixelFormatType:32 options:0 error:v59];
        if (!v18)
        {
          v53 = v59[0];

          sub_2702B3C0C();
          swift_willThrow();

          sub_2702643E4(a2, &qword_2807C8980);

          return;
        }

        v19 = v18;
        v56 = a2;
        v20 = v59[0];

        v21 = [v19 imageBufferValue];
        if (v21)
        {
          type metadata accessor for ClickabilitySquareInput();
          v22 = swift_allocObject();
          *(v22 + 16) = v21;

          v23 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
          v24 = *(v15 + 16);
          v59[0] = 0;
          v25 = [v24 predictionFromFeatures:v22 options:v23 error:v59];
          v26 = v59[0];
          if (v25)
          {
            v27 = v25;
            v28 = v59[0];

            v29 = sub_2702B3FFC();
            v30 = [v27 featureValueForName_];

            if (v30)
            {
              v31 = [v30 multiArrayValue];

              v32 = v56;
              if (v31)
              {
                sub_2702B3DDC();
                swift_unknownObjectRelease();

                sub_2702643E4(v32, &qword_2807C8980);
                v57(v10, 0, 1, v13);
                v33 = v10;
LABEL_23:
                sub_2702864D8(v33, v32);
                return;
              }

              goto LABEL_35;
            }

            goto LABEL_33;
          }

          goto LABEL_29;
        }

        goto LABEL_31;
      }
    }

    else
    {
      sub_27029532C(v2 + v11, v59);
      if (v60)
      {
        type metadata accessor for ClickabilityPortrait();
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v35 = v58;
        v36 = objc_opt_self();
        v59[0] = 0;
        v37 = a1;
        v38 = [v36 featureValueWithCGImage:v37 pixelsWide:448 pixelsHigh:896 pixelFormatType:32 options:0 error:v59];
        if (!v38)
        {
          v52 = v59[0];

          sub_2702B3C0C();
          swift_willThrow();

          sub_2702643E4(a2, &qword_2807C8980);

          return;
        }

        v39 = v38;
        v56 = a2;
        v40 = v59[0];

        v41 = [v39 imageBufferValue];
        if (v41)
        {
          type metadata accessor for ClickabilityPortraitInput();
          v42 = swift_allocObject();
          *(v42 + 16) = v41;

          v23 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
          v43 = *(v35 + 16);
          v59[0] = 0;
          v44 = [v43 predictionFromFeatures:v42 options:v23 error:v59];
          v26 = v59[0];
          if (!v44)
          {
LABEL_29:
            v54 = v26;
            sub_2702B3C0C();

            swift_willThrow();

            v50 = &qword_2807C8980;
            v51 = v56;
            goto LABEL_25;
          }

          v45 = v44;
          v46 = v59[0];

          v47 = sub_2702B3FFC();
          v48 = [v45 featureValueForName_];

          if (v48)
          {
            v49 = [v48 multiArrayValue];

            v32 = v56;
            if (v49)
            {
              sub_2702B3DDC();
              swift_unknownObjectRelease();

              sub_2702643E4(v32, &qword_2807C8980);
              v57(v8, 0, 1, v13);
              v33 = v8;
              goto LABEL_23;
            }

            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    v50 = &qword_2807C8978;
    v51 = v59;
LABEL_25:
    sub_2702643E4(v51, v50);
  }
}

void sub_2702971C0(unint64_t a1, uint64_t a2, float a3)
{
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2702B45FC())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8550);
    v4 = 0;
    v80 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x27439C0F0](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v5 = *(a1 + 32 + 8 * v4);
      }

      v6 = v5;
      v7 = __OFADD__(v4, 1);
      v8 = v4 + 1;
      if (v7)
      {
        goto LABEL_41;
      }

      v84 = v8;
      v9 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      v94 = *(*&v6[v9] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label);
      v10 = sub_2702B463C();
      v11 = &byte_288036748;
      v12 = 16;
LABEL_11:
      v13 = *(v11 - 1);
      v14 = *v11;
      v15 = sub_270260FAC(v13);
      if (v16)
      {
        break;
      }

      *(v10 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v10[6] + 8 * v15) = v13;
      *(v10[7] + v15) = v14;
      v17 = v10[2];
      v7 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v7)
      {
        goto LABEL_40;
      }

      v11 += 16;
      v10[2] = v18;
      if (--v12)
      {
        goto LABEL_11;
      }

      if (v18 && (v19 = sub_270260FAC(v94), (v20 & 1) != 0))
      {
        v21 = *(v10[7] + v19);

        if (v21 == 2)
        {
          v22 = *(a2 + 16);
          if (!v22)
          {
            goto LABEL_4;
          }

          v82 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v78 = 0;
          v79 = 0;
          v73 = 0;
          v76 = 0;
          v77 = 0;
          v75 = 0;
          v74 = 0;
          v81 = 0.0;
          v23 = (a2 + 80);
          while (1)
          {
            v24 = *(v23 - 6);
            v25 = *(v23 - 5);
            v93 = *(v23 - 3);
            v95 = *(v23 - 4);
            v91 = *(v23 - 1);
            v92 = *(v23 - 2);
            v26 = *&v24[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType];
            v90 = *v23;
            v27 = *(*&v6[v9] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label);
            v28 = v24;
            v29 = v25;
            v30 = v28;
            v31 = v29;
            if (ClickabilityType.compare(_:)(v27, v26))
            {
              break;
            }

LABEL_20:
            v23 += 56;
            if (!--v22)
            {
              if (v79)
              {
                v67 = OBJC_IVAR___UIObjectCompat_clickDetection;
                swift_beginAccess();
                v68 = *&v6[v67];
                *&v6[v67] = v79;
                v69 = v79;

                sub_270297834(v79, v73);
                v70 = &v6[OBJC_IVAR___UIObjectCompat_normalizedSquaredRect];
                swift_beginAccess();
                *v70 = v78;
                *(v70 + 1) = v77;
                *(v70 + 2) = v76;
                *(v70 + 3) = v75;
                v70[32] = v74 & 1;
              }

              goto LABEL_4;
            }
          }

          v32 = *&v6[v82];
          v33 = &v31[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v34 = *v33;
          v35 = v33[1];
          v36 = v33[2];
          v37 = v33[3];
          v38 = &v32[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v39 = *v38;
          v40 = v38[1];
          v42 = v38[2];
          v41 = v38[3];
          v43 = v32;
          v88 = v35;
          v89 = v34;
          v97.origin.x = v34;
          v97.origin.y = v35;
          v86 = v37;
          v87 = v36;
          v97.size.width = v36;
          v97.size.height = v37;
          v103.origin.x = v39;
          v103.origin.y = v40;
          v103.size.width = v42;
          r2 = v41;
          v103.size.height = v41;
          v98 = CGRectUnion(v97, v103);
          x = v98.origin.x;
          y = v98.origin.y;
          width = v98.size.width;
          height = v98.size.height;
          v48 = CGRectGetHeight(v98);
          v99.origin.x = x;
          v99.origin.y = y;
          v99.size.width = width;
          v99.size.height = height;
          v49 = v48 * CGRectGetWidth(v99);
          if (v49 == 0.0)
          {

            if (a3 < 0.0)
            {
              v50 = 0.0;
              v51 = v81 < 0.0;
LABEL_27:
              if (v51)
              {
                sub_270297834(v79, v73);
                v81 = v50;
                v73 = v31;
                v78 = v95;
                v79 = v30;
                v76 = v92;
                v77 = v93;
                v75 = v91;
                v74 = v90;
                goto LABEL_20;
              }
            }
          }

          else
          {
            v100.origin.y = v88;
            v100.origin.x = v89;
            v100.size.height = v86;
            v100.size.width = v87;
            v104.origin.x = v39;
            v104.origin.y = v40;
            v104.size.width = v42;
            v104.size.height = r2;
            v101 = CGRectIntersection(v100, v104);
            v52 = v101.origin.x;
            v53 = v101.origin.y;
            v54 = v101.size.width;
            v55 = v101.size.height;
            v56 = CGRectGetHeight(v101);
            v102.origin.x = v52;
            v102.origin.y = v53;
            v102.size.width = v54;
            v102.size.height = v55;
            v57 = CGRectGetWidth(v102);

            v50 = v56 * v57 / v49;
            if (v50 > a3)
            {
              v51 = v81 < v50;
              goto LABEL_27;
            }
          }

          goto LABEL_20;
        }
      }

      else
      {

        LOBYTE(v21) = 0;
      }

      v58 = -1;
      v59 = 0x20u;
      do
      {
        v60 = *(&unk_2880364E8 + v59);
        if (ClickabilityType.compare(_:)(*(*&v6[v9] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label), v60))
        {
          v58 = v60;
        }

        v59 += 8;
      }

      while (v59 != 176);
      v61 = *(*&v6[v9] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
      v62 = type metadata accessor for ClickabilityDetection();
      v63 = objc_allocWithZone(v62);
      v63[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = v21 & 1;
      *&v63[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = v58;
      *&v63[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = v61;
      v96.receiver = v63;
      v96.super_class = v62;
      v64 = objc_msgSendSuper2(&v96, sel_init);
      v65 = OBJC_IVAR___UIObjectCompat_clickDetection;
      swift_beginAccess();
      v66 = *&v6[v65];
      *&v6[v65] = v64;

      v6 = v66;
LABEL_4:
      v4 = v84;

      if (v84 == v80)
      {
        return;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }
}

void sub_270297834(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id BoundingBox.__allocating_init(rect:imageSize:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  v15 = &v13[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
  *v15 = a5;
  v15[1] = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

double sub_270297950()
{
  v1 = v0 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_270297A08(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

double sub_270297B1C()
{
  v1 = v0 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_270297BBC(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

void sub_270297CD4(double (*a1)(uint64_t, double, double, double, double))
{
  v3 = (v1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  v4 = swift_beginAccess();
  v5 = a1(v4, *v3, v3[1], v3[2], v3[3]);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_270297DCC(double (*a1)(uint64_t, double, double, double, double), double (*a2)(double, double, double, double))
{
  v5 = (v2 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  v6 = swift_beginAccess();
  v7 = a1(v6, *v5, v5[1], v5[2], v5[3]);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = a2(*v5, v5[1], v5[2], v5[3]);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v7, v8))
  {
LABEL_15:
    __break(1u);
  }
}

void sub_270297EE8()
{
  v1 = (v0 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  Width = CGRectGetWidth(*v1);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  Height = CGRectGetHeight(*v1);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((Width * Height) >> 64 != (Width * Height) >> 63)
  {
LABEL_15:
    __break(1u);
  }
}

void sub_270297FF8()
{
  v1 = (v0 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  MinX = CGRectGetMinX(*v1);
  if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (MinX <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (MinX >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  Width = CGRectGetWidth(*v1);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (__OFADD__(MinX, Width / 2))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  MinY = CGRectGetMinY(*v1);
  if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (MinY <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (MinY >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  Height = CGRectGetHeight(*v1);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (__OFADD__(MinY, Height / 2))
  {
LABEL_29:
    __break(1u);
  }
}

id BoundingBox.init(rect:imageSize:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = &v6[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  v8 = &v6[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
  *v8 = a5;
  v8[1] = a6;
  v10.receiver = v6;
  v10.super_class = type metadata accessor for BoundingBox();
  return objc_msgSendSuper2(&v10, sel_init);
}

BOOL sub_270298280(uint64_t a1, float a2)
{
  if (a2 == 1.0)
  {
    v4 = (a1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
    swift_beginAccess();
    MinX = CGRectGetMinX(*v4);
    v6 = (v2 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
    swift_beginAccess();
    if (MinX <= CGRectGetMinX(*v6))
    {
      MaxX = CGRectGetMaxX(*v6);
      v7 = MaxX <= CGRectGetMaxX(*v4);
    }

    else
    {
      v7 = 0;
    }

    MinY = CGRectGetMinY(*v4);
    if (MinY <= CGRectGetMinY(*v6))
    {
      MaxY = CGRectGetMaxY(*v6);
      return MaxY <= CGRectGetMaxY(*v4) && v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = (v2 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
    swift_beginAccess();
    Width = CGRectGetWidth(*v8);
    v10 = Width * CGRectGetHeight(*v8);
    v11 = (a1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
    swift_beginAccess();
    v12 = CGRectGetWidth(*v11);
    Height = CGRectGetHeight(*v11);
    v25 = CGRectIntersection(*v8, *v11);
    x = v25.origin.x;
    y = v25.origin.y;
    v16 = v25.size.width;
    v17 = v25.size.height;
    v18 = CGRectGetWidth(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = v16;
    v26.size.height = v17;
    v19 = CGRectGetHeight(v26);
    result = 0;
    if (v10 > 0.0 && v12 * Height > 0.0)
    {
      return v18 * v19 / v10 >= a2;
    }
  }

  return result;
}

void sub_2702984A4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = (a1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  v32.origin.x = *v8;
  v9 = v8[1];
  v10 = v8[2];
  v11 = v8[3];
  r2_24 = v5;
  v25 = v4;
  v26.origin.x = v4;
  v26.origin.y = v5;
  r2_8 = v7;
  r2_16 = v6;
  v26.size.width = v6;
  v26.size.height = v7;
  r2 = *v8;
  v32.origin.y = v9;
  v32.size.width = v10;
  v32.size.height = v11;
  v27 = CGRectUnion(v26, v32);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v16 = CGRectGetHeight(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  if (v16 * CGRectGetWidth(v28) != 0.0)
  {
    v29.origin.y = r2_24;
    v29.origin.x = v25;
    v29.size.height = r2_8;
    v29.size.width = r2_16;
    v33.origin.x = r2;
    v33.origin.y = v9;
    v33.size.width = v10;
    v33.size.height = v11;
    v30 = CGRectIntersection(v29, v33);
    v17 = v30.origin.x;
    v18 = v30.origin.y;
    v19 = v30.size.width;
    v20 = v30.size.height;
    CGRectGetHeight(v30);
    v31.origin.x = v17;
    v31.origin.y = v18;
    v31.size.width = v19;
    v31.size.height = v20;
    CGRectGetWidth(v31);
  }
}

float sub_2702985FC(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  MidX = CGRectGetMidX(*v3);
  v5 = (a1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  v6 = MidX - CGRectGetMidX(*v5);
  MidY = CGRectGetMidY(*v3);
  v8 = CGRectGetMidY(*v5);
  return sqrt(v6 * v6 + (MidY - v8) * (MidY - v8));
}

float sub_2702986C4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = (v1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  rect_24 = CGRectGetMinX(*v6) / v5;
  v7 = CGRectGetMinY(*v6) / v4;
  v8 = CGRectGetWidth(*v6) / v5;
  Height = CGRectGetHeight(*v6);
  v10 = (a1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize);
  v11 = Height / v4;
  swift_beginAccess();
  v13 = *v10;
  v12 = v10[1];
  v14 = (a1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  rect = CGRectGetMinX(*v14) / v13;
  rect_16 = CGRectGetMinY(*v14) / v12;
  v15 = CGRectGetWidth(*v14) / v13;
  v16 = CGRectGetHeight(*v14) / v12;
  v25.origin.x = rect_24;
  v25.origin.y = v7;
  v25.size.width = v8;
  v25.size.height = v11;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = rect;
  v26.origin.y = rect_16;
  v26.size.width = v15;
  v26.size.height = v16;
  rect_8 = MidX - CGRectGetMidX(v26);
  v27.origin.x = rect_24;
  v27.origin.y = v7;
  v27.size.width = v8;
  v27.size.height = v11;
  MidY = CGRectGetMidY(v27);
  v28.origin.x = rect;
  v28.origin.y = rect_16;
  v28.size.width = v15;
  v28.size.height = v16;
  v19 = CGRectGetMidY(v28);
  return sqrt(rect_8 * rect_8 + (MidY - v19) * (MidY - v19));
}

float sub_2702988EC(uint64_t a1, double (*a2)(uint64_t, double, double, double, double))
{
  v5 = (v2 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  v6 = swift_beginAccess();
  v7 = a2(v6, *v5, v5[1], v5[2], v5[3]);
  v8 = (a1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  v9 = swift_beginAccess();
  v10 = v7 - a2(v9, *v8, v8[1], v8[2], v8[3]);
  return fabsf(v10);
}

void sub_270298994(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  CGRectGetMaxY(*v3);
  v4 = (a1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  CGRectGetMaxY(*v4);
  CGRectGetMinY(*v3);
  CGRectGetMinY(*v4);
}

BOOL sub_270298A60()
{
  v1 = (v0 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  if (CGRectGetMinX(*v1) >= 0.0)
  {
    MaxX = CGRectGetMaxX(*v1);
    v4 = OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
    swift_beginAccess();
    v2 = MaxX <= *(v0 + v4);
  }

  else
  {
    v2 = 0;
  }

  if (CGRectGetMinY(*v1) < 0.0)
  {
    return 0;
  }

  MaxY = CGRectGetMaxY(*v1);
  v6 = v0 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
  swift_beginAccess();
  result = MaxY <= *(v6 + 8);
  if (!v2)
  {
    return 0;
  }

  return result;
}

CGFloat sub_270298B5C()
{
  v1 = (v0 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize);
  swift_beginAccess();
  v2 = *v1;
  v3 = (v0 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  v4 = CGRectGetMinX(*v3) / v2;
  CGRectGetMinY(*v3);
  CGRectGetWidth(*v3);
  CGRectGetHeight(*v3);
  return v4;
}

uint64_t sub_270298C94()
{
  sub_2702B44CC();

  v1 = (v0 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  CGRectGetMinX(*v1);
  v2 = sub_2702B421C();
  MEMORY[0x27439BCF0](v2);

  MEMORY[0x27439BCF0](0x203A79202CLL, 0xE500000000000000);
  CGRectGetMinY(*v1);
  v3 = sub_2702B421C();
  MEMORY[0x27439BCF0](v3);

  MEMORY[0x27439BCF0](0x3A6874646977202CLL, 0xE900000000000020);
  CGRectGetWidth(*v1);
  v4 = sub_2702B421C();
  MEMORY[0x27439BCF0](v4);

  MEMORY[0x27439BCF0](0x746867696568202CLL, 0xEA0000000000203ALL);
  CGRectGetHeight(*v1);
  v5 = sub_2702B421C();
  MEMORY[0x27439BCF0](v5);

  return 2112120;
}

uint64_t sub_270298E14(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8BA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270299FA8();
  sub_2702B48DC();
  v9 = (v3 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  v10 = v9[1];
  v15 = *v9;
  v16 = v10;
  LOBYTE(v14) = 0;
  type metadata accessor for CGRect(0);
  sub_27029A8CC(&qword_2807C85F0, type metadata accessor for CGRect);
  sub_2702B471C();
  if (!v2)
  {
    v11 = OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
    swift_beginAccess();
    v14 = *(v3 + v11);
    v13[15] = 1;
    type metadata accessor for CGSize(0);
    sub_27029A8CC(&qword_2807C8BB0, type metadata accessor for CGSize);
    sub_2702B471C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_270299054(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7A69536567616D69;
  }

  else
  {
    v3 = 1952671090;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x7A69536567616D69;
  }

  else
  {
    v5 = 1952671090;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2702B476C();
  }

  return v8 & 1;
}

uint64_t sub_2702990F8()
{
  sub_2702B487C();
  sub_2702B40BC();

  return sub_2702B48AC();
}

uint64_t sub_270299178()
{
  sub_2702B40BC();
}

uint64_t sub_2702991E4()
{
  sub_2702B487C();
  sub_2702B40BC();

  return sub_2702B48AC();
}

uint64_t sub_270299260@<X0>(char *a1@<X8>)
{
  v2 = sub_2702B465C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_2702992C0(uint64_t *a1@<X8>)
{
  v2 = 1952671090;
  if (*v1)
  {
    v2 = 0x7A69536567616D69;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2702992FC()
{
  if (*v0)
  {
    return 0x7A69536567616D69;
  }

  else
  {
    return 1952671090;
  }
}

uint64_t sub_270299334@<X0>(char *a1@<X8>)
{
  v2 = sub_2702B465C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_270299398(uint64_t a1)
{
  v2 = sub_270299FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2702993D4(uint64_t a1)
{
  v2 = sub_270299FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

float64x2_t sub_270299410(double a1, double a2, double a3, double a4, double a5)
{
  v6 = a3 * a5;
  v7 = a4 * a5;
  v8 = a1 - (a3 * a5 - a3) * 0.5;
  v9 = a2 - (a4 * a5 - a4) * 0.5;
  v10 = (v5 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  *v10 = v8;
  v10[1] = v9;
  v10[2] = v6;
  v10[3] = v7;
  v11 = OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
  swift_beginAccess();
  result = vmulq_n_f64(*(v5 + v11), a5);
  *(v5 + v11) = result;
  return result;
}

float64x2_t sub_2702994C0(float64_t a1, float64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  v4 = OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v9 = vmulq_f64(*v3, v5);
  v11 = v5;
  v7 = vmulq_f64(v3[1], v5);
  swift_beginAccess();
  result = vmulq_f64(*(v2 + v4), v11);
  *v3 = v9;
  v3[1] = v7;
  *(v2 + v4) = result;
  return result;
}

void sub_270299560()
{
  v1 = (v0 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  x = v1->origin.x;
  y = v1->origin.y;
  v6.size.width = v1->size.width;
  v6.size.height = v1->size.height;
  v6.origin.x = v1->origin.x;
  v6.origin.y = y;
  Height = CGRectGetHeight(v6);
  Width = CGRectGetWidth(*v1);
  v1->origin.x = y;
  v1->origin.y = x;
  v1->size.width = Height;
  v1->size.height = Width;
}

CGFloat sub_2702995E0(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (Height <= Width)
  {
    v5 = Width;
  }

  else
  {
    v5 = Height;
  }

  v6 = v5;
  v7 = (v6 - CGImageGetWidth(a1)) * 0.5 / v6;
  v8 = v6 / CGImageGetWidth(a1);
  v9 = (v6 - CGImageGetHeight(a1)) * 0.5 / v6;
  v10 = v6 / CGImageGetHeight(a1);
  v11 = (v1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  v14 = (v1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  v15 = CGRectGetMinX(*v14) / v12;
  v16 = CGRectGetMinY(*v14) / v13;
  v17 = CGRectGetWidth(*v14) / v12;
  v18 = CGRectGetHeight(*v14) / v13;
  v30.origin.x = v15;
  v30.origin.y = v16;
  v30.size.width = v17;
  v30.size.height = v18;
  v19 = v8 * (CGRectGetMinX(v30) - v7);
  v31.origin.x = v15;
  v31.origin.y = v16;
  v31.size.width = v17;
  v31.size.height = v18;
  v20 = v10 * (CGRectGetMinY(v31) - v9);
  v32.origin.x = v15;
  v32.origin.y = v16;
  v32.size.width = v17;
  v32.size.height = v18;
  v21 = v8 * CGRectGetWidth(v32);
  v33.origin.x = v15;
  v33.origin.y = v16;
  v33.size.width = v17;
  v33.size.height = v18;
  v22 = v10 * CGRectGetHeight(v33);
  v23 = v19 * CGImageGetWidth(a1);
  v24 = v20 * CGImageGetHeight(a1);
  v25 = v21 * CGImageGetWidth(a1);
  v26 = CGImageGetHeight(a1);
  v14->origin.x = v23;
  v14->origin.y = v24;
  v14->size.width = v25;
  v14->size.height = v22 * v26;
  v27 = CGImageGetWidth(a1);
  v28 = CGImageGetHeight(a1);
  *v11 = v27;
  v11[1] = v28;
  return v15;
}

id BoundingBox.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BoundingBox.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BoundingBox();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2702998D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_270299D14(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void _s15UIUnderstanding11BoundingBoxC09getMergedbC0yACSayACGFZ_0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_38:
    v54 = type metadata accessor for BoundingBox();
    v59 = objc_allocWithZone(v54);
    v60 = &v59[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    *v60 = 0u;
    *(v60 + 1) = 0u;
    v61 = &v59[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
    *v61 = 0;
    *(v61 + 1) = 0;
    v62 = v59;
    v58 = &v62;
LABEL_39:
    v58->super_class = v54;
    [(objc_super *)v58 init];
    return;
  }

  v2 = sub_2702B45FC();
  if (!v2)
  {
    goto LABEL_38;
  }

LABEL_3:
  v3 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x27439C0F0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v4 = *(a1 + 32);
  }

  v5 = v4;
  v6 = &v4[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];

  v64.origin.x = v7;
  v64.origin.y = v8;
  v64.size.width = v9;
  v64.size.height = v10;
  MinX = CGRectGetMinX(v64);
  if (v3)
  {
    v12 = MEMORY[0x27439C0F0](0, a1);
  }

  else
  {
    v12 = *(a1 + 32);
  }

  v13 = v12;
  v14 = &v12[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];

  v65.origin.x = v15;
  v65.origin.y = v16;
  v65.size.width = v17;
  v65.size.height = v18;
  MaxX = CGRectGetMaxX(v65);
  if (v3)
  {
    v20 = MEMORY[0x27439C0F0](0, a1);
  }

  else
  {
    v20 = *(a1 + 32);
  }

  v21 = v20;
  v22 = &v20[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];

  v66.origin.x = v23;
  v66.origin.y = v24;
  v66.size.width = v25;
  v66.size.height = v26;
  MinY = CGRectGetMinY(v66);
  if (v3)
  {
    v28 = MEMORY[0x27439C0F0](0, a1);
  }

  else
  {
    v28 = *(a1 + 32);
  }

  v29 = v28;
  v30 = &v28[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = v30[3];

  v67.origin.x = v31;
  v67.origin.y = v32;
  v67.size.width = v33;
  v67.size.height = v34;
  MaxY = CGRectGetMaxY(v67);
  v36 = v2 - 1;
  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_42;
  }

  v37 = MaxY;
  if (v2 == 1)
  {
LABEL_17:
    v38 = MaxX - MinX;
    v39 = v37 - MinY;
    if (v3)
    {
      v40 = MEMORY[0x27439C0F0](0, a1);
    }

    else
    {
      v40 = *(a1 + 32);
    }

    v50 = v40;
    v51 = &v40[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
    swift_beginAccess();
    v52 = *v51;
    v53 = *(v51 + 1);

    v54 = type metadata accessor for BoundingBox();
    v55 = objc_allocWithZone(v54);
    v56 = &v55[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    *v56 = MinX;
    v56[1] = MinY;
    v56[2] = v38;
    v56[3] = v39;
    v57 = &v55[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
    *v57 = v52;
    *(v57 + 1) = v53;
    v63 = v55;
    v58 = &v63;
    goto LABEL_39;
  }

  if (v3 || (v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10), v41 >= 2) && v2 <= v41)
  {
    v42 = 5;
    do
    {
      if (v3)
      {
        v43 = MEMORY[0x27439C0F0](v42 - 4, a1);
      }

      else
      {
        v43 = *(a1 + 8 * v42);
      }

      v44 = v43;
      v45 = &v43[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v46 = CGRectGetMinX(*v45);
      if (v46 < MinX)
      {
        MinX = v46;
      }

      v47 = CGRectGetMaxX(*v45);
      if (MaxX <= v47)
      {
        MaxX = v47;
      }

      v48 = CGRectGetMinY(*v45);
      if (v48 < MinY)
      {
        MinY = v48;
      }

      v49 = CGRectGetMaxY(*v45);

      if (v37 <= v49)
      {
        v37 = v49;
      }

      ++v42;
      --v36;
    }

    while (v36);
    goto LABEL_17;
  }

LABEL_43:
  __break(1u);
}

void *sub_270299D14(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8BD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270299FA8();
  sub_2702B48CC();
  if (!v1)
  {
    type metadata accessor for CGRect(0);
    v17 = 0;
    sub_27029A8CC(&qword_2807C8BD8, type metadata accessor for CGRect);
    sub_2702B46AC();
    v14 = v19;
    v15 = v18;
    type metadata accessor for CGSize(0);
    v17 = 1;
    sub_27029A8CC(&qword_2807C8BE0, type metadata accessor for CGSize);
    sub_2702B46AC();
    v9 = v18;
    v10 = type metadata accessor for BoundingBox();
    v11 = objc_allocWithZone(v10);
    v12 = &v11[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    v13 = v14;
    *v12 = v15;
    *(v12 + 1) = v13;
    *&v11[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize] = v9;
    v16.receiver = v11;
    v16.super_class = v10;
    v7 = objc_msgSendSuper2(&v16, sel_init);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_270299FA8()
{
  result = qword_2807C8BA8;
  if (!qword_2807C8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8BA8);
  }

  return result;
}

__n128 sub_270299FFC@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_27029A050(uint64_t a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

__n128 sub_27029A0A4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_27029A0FC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

unint64_t sub_27029A7C8()
{
  result = qword_2807C8BB8;
  if (!qword_2807C8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8BB8);
  }

  return result;
}

unint64_t sub_27029A820()
{
  result = qword_2807C8BC0;
  if (!qword_2807C8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8BC0);
  }

  return result;
}

unint64_t sub_27029A878()
{
  result = qword_2807C8BC8;
  if (!qword_2807C8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C8BC8);
  }

  return result;
}

uint64_t sub_27029A8CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27029A918(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_27029C8E0(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t UIUGrouper.groupTabButtons(detections:screenWidth:screenHeight:)(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v113[0] = sub_2702A039C(v7, sub_270274D50, sub_2702A0610);
  sub_27029C55C(v113);
  v8 = v113[0];
  v115 = v113[0];

  v98 = a2;
  v99 = a3;
  sub_27029B994(v9, a2, a3);
  v11 = v10;

  if (!*(v11 + 16))
  {

    a1 = v8;
    goto LABEL_146;
  }

  sub_2702A1930(v11, v8);
  v13 = *(v11 + 16);
  v107 = v12;
  v100 = a1;
  if (v13)
  {
    v14 = 0;
    v15 = v11 + 32;
    v16 = (v12 + 32);
    v17 = MEMORY[0x277D84F90];
    do
    {
      v20 = *(v15 + 8 * v14);
      v21 = *(v12 + 16);
      v22 = v16;
      while (v21)
      {
        v23 = *v22++;
        --v21;
        if (v23 == v20)
        {
          goto LABEL_7;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113[0] = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27029C420(0, *(v17 + 2) + 1, 1);
        v17 = v113[0];
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      v12 = v107;
      if (v19 >= v18 >> 1)
      {
        sub_27029C420((v18 > 1), v19 + 1, 1);
        v12 = v107;
        v17 = v113[0];
      }

      *(v17 + 2) = v19 + 1;
      *&v17[8 * v19 + 32] = v20;
LABEL_7:
      ++v14;
    }

    while (v14 != v13);

    a1 = v100;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v113[0] = v17;
  swift_retain_n();
  sub_27029C738(v113, &v115);

  v25 = v113[0];
  v114 = v113[0];
  v26 = *(v113[0] + 2);
  if (!v26)
  {

    goto LABEL_146;
  }

  v113[0] = MEMORY[0x277D84F90];
  sub_2702B456C();
  v27 = v115;
  v28 = 32;
  do
  {
    v29 = *&v25[v28];
    if ((v27 & 0xC000000000000001) != 0)
    {
      MEMORY[0x27439C0F0](v29, v27);
    }

    else
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_89;
      }

      if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v30 = *(v27 + 32 + 8 * v29);
    }

    sub_2702B454C();
    sub_2702B457C();
    sub_2702B458C();
    sub_2702B455C();
    v28 += 8;
    --v26;
  }

  while (v26);
  v31 = v113[0];
  if ((*(v3 + 16) - 1) >= 2)
  {
    goto LABEL_56;
  }

  if ((v113[0] & 0x8000000000000000) != 0 || (v113[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_140;
  }

  v32 = *(v113[0] + 2);
  if (!v32)
  {
    goto LABEL_56;
  }

  do
  {
    if (v32 < 1)
    {
      __break(1u);
LABEL_143:
      v90 = sub_2702B45FC();
      if (!v90)
      {
LABEL_144:
        a1 = MEMORY[0x277D84F90];
LABEL_145:

        v115 = a1;
        goto LABEL_146;
      }

      goto LABEL_126;
    }

    v33 = 0;
    v27 = 0x43E0000000000000;
    while (1)
    {
      v34 = (v31 & 0xC000000000000001) != 0 ? MEMORY[0x27439C0F0](v33, v31) : *(v31 + 8 * v33 + 32);
      v35 = v34;
      v36 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v37 = (*&v35[v36] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      Height = CGRectGetHeight(*v37);
      if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (Height <= -9.22337204e18)
      {
        goto LABEL_93;
      }

      if (Height >= 9.22337204e18)
      {
        goto LABEL_94;
      }

      v39 = (*&v35[v36] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      MinX = CGRectGetMinX(*v39);
      if (MinX <= -9.22337204e18)
      {
        goto LABEL_95;
      }

      if (MinX >= 9.22337204e18)
      {
        goto LABEL_96;
      }

      v41 = vcvtd_n_f64_s64(Height, 1uLL);
      if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_97;
      }

      if (v41 <= -9.22337204e18)
      {
        goto LABEL_98;
      }

      if (v41 >= 9.22337204e18)
      {
        goto LABEL_99;
      }

      v42 = v41;
      v43 = MinX - v41;
      if (__OFSUB__(MinX, v41))
      {
        goto LABEL_100;
      }

      v44 = (*&v35[v36] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      MinY = CGRectGetMinY(*v44);
      if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_101;
      }

      if (MinY <= -9.22337204e18)
      {
        goto LABEL_102;
      }

      if (MinY >= 9.22337204e18)
      {
        goto LABEL_103;
      }

      v46 = (*&v35[v36] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      Width = CGRectGetWidth(*v46);
      if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_104;
      }

      if (Width <= -9.22337204e18)
      {
        goto LABEL_105;
      }

      if (Width >= 9.22337204e18)
      {
        goto LABEL_106;
      }

      if (v42 + 0x4000000000000000 < 0)
      {
        goto LABEL_107;
      }

      v48 = __OFADD__(Width, 2 * v42);
      v49 = Width + 2 * v42;
      if (v48)
      {
        goto LABEL_108;
      }

      v50 = (*&v35[v36] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      v51 = CGRectGetHeight(*v50);
      if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_109;
      }

      if (v51 <= -9.22337204e18)
      {
        goto LABEL_110;
      }

      if (v51 >= 9.22337204e18)
      {
        goto LABEL_111;
      }

      ++v33;
      v52 = v51;
      v53 = (*&v35[v36] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize);
      swift_beginAccess();
      v54 = *v53;
      v55 = v53[1];
      v56 = type metadata accessor for BoundingBox();
      v57 = objc_allocWithZone(v56);
      v58 = &v57[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      *v58 = v43;
      v58[1] = MinY;
      v58[2] = v49;
      v58[3] = v52;
      v59 = &v57[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
      *v59 = v54;
      *(v59 + 1) = v55;
      v110.receiver = v57;
      v110.super_class = v56;
      v60 = objc_msgSendSuper2(&v110, sel_init);
      v61 = *&v35[v36];
      *&v35[v36] = v60;

      if (v32 == v33)
      {
        goto LABEL_56;
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
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
    while (1)
    {
      __break(1u);
LABEL_113:
      v80 = sub_2702B45FC();
      if (v80 < 1)
      {
        goto LABEL_87;
      }

      v63 = v80;
      v106 = sub_2702B45FC();
      if (!v106)
      {
        goto LABEL_115;
      }

LABEL_58:
      v97 = v63;
      v64 = 0;
      v105 = v27 & 0xC000000000000001;
      v101 = v27 + 32;
      v102 = v27 & 0xFFFFFFFFFFFFFF8;
      v103 = 1;
LABEL_60:
      if (v105)
      {
        break;
      }

      if (v64 < *(v102 + 16))
      {
        v65 = *(v101 + 8 * v64);
        v48 = __OFADD__(v64++, 1);
        if (!v48)
        {
          goto LABEL_66;
        }

LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }
    }

    v65 = MEMORY[0x27439C0F0](v64, v27);
    v48 = __OFADD__(v64++, 1);
    if (v48)
    {
      goto LABEL_88;
    }

LABEL_66:
    v109 = v65;
    v66 = *&v65[OBJC_IVAR___UIObjectCompat_groupingInfo + 24];
    if (v66 >> 62)
    {
      v67 = sub_2702B45FC();
      if (!v67)
      {
LABEL_78:
        v69 = MEMORY[0x277D84F90];
        goto LABEL_79;
      }
    }

    else
    {
      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v67)
      {
        goto LABEL_78;
      }
    }

    v108 = v64;
    v111 = MEMORY[0x277D84F90];

    sub_27029C400(0, v67 & ~(v67 >> 63), 0);
    if (v67 < 0)
    {
      goto LABEL_91;
    }

    v68 = 0;
    v69 = v111;
    do
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x27439C0F0](v68, v66);
      }

      else
      {
        v70 = *(v66 + 8 * v68 + 32);
      }

      v71 = v70;
      v72 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      v73 = *&v71[v72];

      v74 = *&v73[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label];
      v111 = v69;
      v76 = *(v69 + 2);
      v75 = *(v69 + 3);
      if (v76 >= v75 >> 1)
      {
        sub_27029C400((v75 > 1), v76 + 1, 1);
        v69 = v111;
      }

      ++v68;
      *(v69 + 2) = v76 + 1;
      *&v69[8 * v76 + 32] = v74;
    }

    while (v67 != v68);

    v64 = v108;
    v27 = v104;
LABEL_79:
    v77 = *(v69 + 2);
    v78 = 32;
    do
    {
      if (!v77)
      {

        v103 = 0;
        if (v64 != v106)
        {
          goto LABEL_60;
        }

        if (v97 <= 5)
        {
          goto LABEL_115;
        }

        goto LABEL_87;
      }

      v79 = *&v69[v78];
      v78 += 8;
      --v77;
    }

    while (v79 != 10);

    if (v64 != v106)
    {
      goto LABEL_60;
    }

    if (!((v97 < 6) | v103 & 1))
    {
      goto LABEL_87;
    }

LABEL_115:
    sub_27029B72C(v107);
    v111 = v114;

    sub_27029C7AC(&v111);

    v81 = v111;
    v82 = *(v111 + 2);
    if (v82)
    {
      v26 = v115;

      v83 = 32;
      while (1)
      {
        v84 = *&v81[v83];
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
        {
          v26 = sub_27029C8E0(v26);
        }

        v31 = v26 & 0xFFFFFFFFFFFFFF8;
        v85 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v84 >= v85)
        {
          break;
        }

        v86 = v85 - 1;
        v87 = v31 + 8 * v84;
        v88 = *(v87 + 32);
        memmove((v87 + 32), (v87 + 40), 8 * (v85 - 1 - v84));
        *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) = v86;

        v83 += 8;
        if (!--v82)
        {

          v115 = v26;
          goto LABEL_124;
        }
      }

      __break(1u);
      goto LABEL_138;
    }

LABEL_124:
    v89 = sub_2702A28E0(v104, v98, v99);

    sub_27029B860(v89, sub_2702A0610);
    v26 = v115;
    v112 = MEMORY[0x277D84F90];
    if (v115 >> 62)
    {
      goto LABEL_143;
    }

    v90 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v90)
    {
      goto LABEL_144;
    }

LABEL_126:
    v31 = 0;
    v91 = v26 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v92 = MEMORY[0x27439C0F0](v31, v26);
      }

      else
      {
        if (v31 >= *(v91 + 16))
        {
          goto LABEL_139;
        }

        v92 = *(v26 + 8 * v31 + 32);
      }

      v93 = v92;
      v94 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v95 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if (*(*&v93[v95] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 9)
      {
      }

      else
      {
        sub_2702B454C();
        sub_2702B457C();
        v91 = v26 & 0xFFFFFFFFFFFFFF8;
        sub_2702B458C();
        sub_2702B455C();
      }

      ++v31;
      if (v94 == v90)
      {
        a1 = v112;
        goto LABEL_145;
      }
    }

LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v32 = sub_2702B45FC();
  }

  while (v32);
LABEL_56:
  sub_2702A233C(v31);
  v27 = v62;

  v104 = v27;
  if (v27 >> 62)
  {
    goto LABEL_113;
  }

  v63 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v106 = v63;
  if (v63)
  {
    goto LABEL_58;
  }

LABEL_87:

  a1 = v100;

LABEL_146:

  return a1;
}

uint64_t sub_27029B640(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_270290EF0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_27029B72C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_270290FF4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_27029B860(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2702B45FC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_2702B45FC();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2702A02A4(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t UIUGrouper.__allocating_init(shape:)(uint64_t a1)
{
  v1 = a1 != 2;
  type metadata accessor for UIUGrouper();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

void sub_27029B994(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v6 = a3;
      v7 = a3 * 0.85;
      v62[0] = v7;
      if ((*(v3 + 2) - 1) <= 1)
      {
        v7 = v6 * 0.9;
        v62[0] = v6 * 0.9;
      }

      v59 = a2;
      v60 = a3;
      if (v5)
      {
        v8 = sub_2702B45FC();
        if (!v8)
        {
          return;
        }
      }

      else
      {
        v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v8)
        {
          return;
        }
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = 0;
        v5 = 0x7FEFFFFFFFFFFFFFLL;
        while (1)
        {
          v10 = MEMORY[0x27439C0F0](v9, a1);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v12 = v10;
          v3 = OBJC_IVAR___UIObjectCompat_detection;
          swift_beginAccess();
          if (*(*&v3[v12] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 9)
          {
            v13 = OBJC_IVAR___UIObjectCompat_boundingBox;
            swift_beginAccess();
            v3 = (*(v12 + v13) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
            swift_beginAccess();
            MinY = CGRectGetMinY(*v3);
            if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_66;
            }

            if (MinY <= -9.22337204e18)
            {
              goto LABEL_67;
            }

            if (MinY >= 9.22337204e18)
            {
              goto LABEL_68;
            }

            if (v7 <= MinY)
            {
              goto LABEL_28;
            }
          }

          swift_unknownObjectRelease();
          ++v9;
          if (v11 == v8)
          {
            return;
          }
        }

        __break(1u);
        goto LABEL_64;
      }

      v15 = (a1 + 32);
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = 0x43E0000000000000;
      v17 = v8;
      while (1)
      {
        if (!v16)
        {
          goto LABEL_65;
        }

        v18 = *v15;
        v3 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if (*(*&v3[v18] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 9)
        {
          break;
        }

LABEL_21:
        --v16;
        ++v15;
        if (!--v17)
        {
          return;
        }
      }

      v19 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v3 = (*(v18 + v19) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      v20 = *v3;
      v21 = *(v3 + 1);
      v22 = *(v3 + 2);
      v23 = *(v3 + 3);
      v12 = v18;
      v63.origin.x = v20;
      v63.origin.y = v21;
      v63.size.width = v22;
      v63.size.height = v23;
      v24 = CGRectGetMinY(v63);
      if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_69;
      }

      if (v24 <= -9.22337204e18)
      {
        goto LABEL_70;
      }

      if (v24 >= 9.22337204e18)
      {
        goto LABEL_71;
      }

      if (v7 > v24)
      {
        break;
      }

LABEL_28:
      v25 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v26 = *(v12 + v25);
      v27 = &v26[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      x = v27->origin.x;
      y = v27->origin.y;
      width = v27->size.width;
      height = v27->size.height;
      v3 = v26;
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = width;
      v64.size.height = height;
      v32 = CGRectGetMinY(v64);
      if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_76;
      }

      if (v32 <= -9.22337204e18)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        return;
      }

      if (v32 >= 9.22337204e18)
      {
        goto LABEL_78;
      }

      v33 = CGRectGetMinY(*v27);
      if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_79;
      }

      if (v33 <= -9.22337204e18)
      {
        goto LABEL_80;
      }

      if (v33 >= 9.22337204e18)
      {
        goto LABEL_81;
      }

      if (__OFSUB__(v60, v33))
      {
        goto LABEL_82;
      }

      v27->origin.x = 0.0;
      v27->origin.y = v32;
      v27->size.width = v59;
      v27->size.height = (v60 - v33);
      if (v8 < 0)
      {
        goto LABEL_83;
      }

      v34 = 0;
      v5 = 0;
      v35 = MEMORY[0x277D84F90];
      while (1)
      {
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v61 = v34;
        sub_27029C050(&v61, a1, v62, v3);
        if (v39)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_27029C420(0, v35[2] + 1, 1);
          }

          v37 = v35[2];
          v36 = v35[3];
          if (v37 >= v36 >> 1)
          {
            sub_27029C420((v36 > 1), v37 + 1, 1);
          }

          v35[2] = v37 + 1;
          v35[v37 + 4] = v34;
        }

        ++v34;
        if (v38 == v8)
        {
          v58 = v3;
          v40 = v35[2];
          if (v40)
          {
            v41 = v35 + 4;
            v42 = MEMORY[0x277D84F90];
            while (1)
            {
              v46 = *v41++;
              v45 = v46;
              if ((a1 & 0xC000000000000001) != 0)
              {
                v47 = MEMORY[0x27439C0F0](v45, a1);
              }

              else
              {
                if ((v45 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_75:
                  __break(1u);
LABEL_76:
                  __break(1u);
                  goto LABEL_77;
                }

                if (v45 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_75;
                }

                v47 = *(a1 + 32 + 8 * v45);
              }

              v48 = v47;
              v49 = OBJC_IVAR___UIObjectCompat_detection;
              swift_beginAccess();
              v50 = *&v48[v49];

              v51 = *&v50[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label];
              if (v51 == 10)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v61 = v42;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_27029C420(0, *(v42 + 16) + 1, 1);
                  v42 = v61;
                }

                v44 = *(v42 + 16);
                v43 = *(v42 + 24);
                if (v44 >= v43 >> 1)
                {
                  sub_27029C420((v43 > 1), v44 + 1, 1);
                  v42 = v61;
                }

                *(v42 + 16) = v44 + 1;
                *(v42 + 8 * v44 + 32) = v45;
              }

              if (!--v40)
              {
                goto LABEL_60;
              }
            }
          }

          v42 = MEMORY[0x277D84F90];
LABEL_60:
          v53 = *(v42 + 16);

          v54 = v35[2];

          if (v53 == v54)
          {
          }

          return;
        }
      }

LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
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
LABEL_72:
      v55 = a2;
      v56 = a3;
      v57 = sub_2702B45FC();
      a3 = v56;
      a2 = v55;
      if (!v57)
      {
        return;
      }
    }

    goto LABEL_21;
  }
}

void sub_27029C050(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a2 + 8 * *a1;
  v7 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x27439C0F0](v5, a2);
  }

  else
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;
  v10 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v11 = *&v9[v10];

  v12 = *&v11[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label];
  if (v12 == 4)
  {
    if (v7)
    {
LABEL_7:
      v13 = MEMORY[0x27439C0F0](v5, a2);
      goto LABEL_10;
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  v13 = *(v6 + 32);
LABEL_10:
  v14 = v13;
  v15 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v16 = *&v14[v15];

  v17 = &v16[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
  swift_beginAccess();
  MinY = CGRectGetMinY(*v17);

  if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (MinY <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (MinY >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  if (v7)
  {
    v19 = MEMORY[0x27439C0F0](v5, a2);
  }

  else
  {
    v19 = *(v6 + 32);
  }

  v20 = v19;
  v21 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v22 = *&v20[v21];

  sub_270298280(a4, 0.5);
}

void sub_27029C2A0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  if ((*a3 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x27439C0F0](v6);
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (v6 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_14;
    }

    v9 = *(v8 + 8 * v6 + 32);
  }

  v10 = v9;
  v4 = &OBJC_IVAR___UIObjectCompat_boundingBox;
  v11 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v3 = *&v10[v11];

  v12 = *a3;
  if ((*a3 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v13 = MEMORY[0x27439C0F0](v7);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 8 * v7 + 32);
LABEL_9:
    v14 = v13;
    v15 = *v4;
    swift_beginAccess();
    v16 = *&v14[v15];

    sub_2702A7CF0(v3, v16);
    return;
  }

LABEL_15:
  __break(1u);
}

char *sub_27029C3E0(char *a1, int64_t a2, char a3)
{
  result = sub_2702A4BFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27029C400(char *a1, int64_t a2, char a3)
{
  result = sub_2702A4D00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27029C420(char *a1, int64_t a2, char a3)
{
  result = sub_2702A4D14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27029C440(char *a1, int64_t a2, char a3)
{
  result = sub_2702A4F1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27029C460(char *a1, int64_t a2, char a3)
{
  result = sub_2702A5028(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_27029C480(size_t a1, int64_t a2, char a3)
{
  result = sub_2702A5134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27029C4A0(char *a1, int64_t a2, char a3)
{
  result = sub_2702A530C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27029C4C0(char *a1, int64_t a2, char a3)
{
  result = sub_2702A5430(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_27029C4E0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2702A88A0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_27029C96C(v6);
  return sub_2702B455C();
}

uint64_t sub_27029C55C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2702A88A0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v21 = v2 + 32;
  v25[0] = v2 + 32;
  v25[1] = v4;
  v5 = sub_2702B473C();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v21;
      v20 = v4;
      do
      {
        v11 = *(v21 + 8 * v9);
        v22 = v8;
        v12 = v10;
        do
        {
          v13 = *v12;
          v14 = OBJC_IVAR___UIObjectCompat_detection;
          swift_beginAccess();
          v15 = *(*(v11 + v14) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
          v16 = OBJC_IVAR___UIObjectCompat_detection;
          swift_beginAccess();
          if (*(*(v13 + v16) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) >= v15)
          {
            break;
          }

          v17 = *v12;
          v11 = v12[1];
          *v12 = v11;
          v12[1] = v17;
          --v12;
        }

        while (!__CFADD__(v8++, 1));
        ++v9;
        ++v10;
        v8 = v22 - 1;
      }

      while (v9 != v20);
    }
  }

  else
  {
    v6 = v5;
    if (v4 >= 2)
    {
      type metadata accessor for UIObject();
      v7 = sub_2702B41DC();
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v24[0] = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v24[1] = v4 >> 1;
    sub_27029D998(v24, v23, v25, v6);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_2702B455C();
}

void sub_27029C738(char **a1, uint64_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2702A7CB4(v4);
  }

  v5 = *(v4 + 2);
  v6[0] = (v4 + 32);
  v6[1] = v5;
  sub_27029CA70(v6, a2);
  *a1 = v4;
}

uint64_t sub_27029C7AC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2702A7CB4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_2702B473C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_2702B41DC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_27029E2F4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_27029C8E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2702B45FC();
  }

  return sub_2702B44FC();
}

void sub_27029C96C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2702B473C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for UIObject();
        v6 = sub_2702B41DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_27029D058(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_27029CB74(0, v2, 1, a1);
  }
}

void sub_27029CA70(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = sub_2702B473C();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        v7 = sub_2702B41DC();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = (v7 + 32);
      v9[1] = (v4 / 2);
      v8 = v7;
      sub_27029E840(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_27029CDB4(0, v4, 1, a1, a2);
  }
}

void sub_27029CB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v30 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v29 = a3;
    v6 = *(v30 + 8 * a3);
    v27 = v5;
    v28 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v9 = *&v6[v8];
      v10 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v11 = *&v7[v10];
      v12 = &v9[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      v17 = v6;
      v18 = v7;
      v19 = v9;
      v20 = v11;
      v31.origin.x = v13;
      v31.origin.y = v14;
      v31.size.width = v15;
      v31.size.height = v16;
      MinX = CGRectGetMinX(v31);
      if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (MinX <= -9.22337204e18)
      {
        goto LABEL_18;
      }

      if (MinX >= 9.22337204e18)
      {
        goto LABEL_19;
      }

      v22 = &v20[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v23 = CGRectGetMinX(*v22);

      if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      if (v23 <= -9.22337204e18)
      {
        goto LABEL_21;
      }

      if (v23 >= 9.22337204e18)
      {
        goto LABEL_22;
      }

      if (v23 >= MinX)
      {
        if (!v30)
        {
          goto LABEL_23;
        }

        v24 = *v4;
        v6 = *(v4 + 8);
        *v4 = v6;
        *(v4 + 8) = v24;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      a3 = v29 + 1;
      v4 = v28 + 8;
      v5 = v27 - 1;
      if (v29 + 1 == a2)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_27029CDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 == a2)
  {
    return;
  }

  v6 = *a4;
  v7 = (*a4 + 8 * a3 - 8);
  v8 = a1 - a3;
LABEL_5:
  v30 = a3;
  v9 = *(v6 + 8 * a3);
  v28 = v8;
  v29 = v7;
  while (1)
  {
    v10 = *v7;
    v11 = *a5;
    if ((*a5 & 0xC000000000000001) == 0)
    {
      break;
    }

    v12 = MEMORY[0x27439C0F0](v9);
LABEL_10:
    v13 = v12;
    v14 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v15 = *&v13[v14];

    v16 = *a5;
    if ((*a5 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x27439C0F0](v10);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (v10 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v17 = *(v16 + 8 * v10 + 32);
    }

    v18 = v17;
    v19 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v20 = *&v18[v19];

    v21 = &v15[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    MinX = CGRectGetMinX(*v21);
    if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_30;
    }

    if (MinX <= -9.22337204e18)
    {
      goto LABEL_32;
    }

    if (MinX >= 9.22337204e18)
    {
      goto LABEL_33;
    }

    v23 = &v20[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v24 = CGRectGetMinX(*v23);

    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_34;
    }

    if (v24 <= -9.22337204e18)
    {
      goto LABEL_35;
    }

    if (v24 >= 9.22337204e18)
    {
      goto LABEL_36;
    }

    if (v24 >= MinX)
    {
      if (!v6)
      {
        goto LABEL_37;
      }

      v25 = *v7;
      v9 = v7[1];
      *v7 = v9;
      v7[1] = v25;
      --v7;
      if (!__CFADD__(v8++, 1))
      {
        continue;
      }
    }

    a3 = v30 + 1;
    v7 = v29 + 1;
    v8 = v28 - 1;
    if (v30 + 1 == a2)
    {
      return;
    }

    goto LABEL_5;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    if (v9 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    v12 = *(v11 + 8 * v9 + 32);
    goto LABEL_10;
  }

  __break(1u);
LABEL_28:
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
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}