uint64_t sub_21DF9DAE0()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21DF9DC24, v3, v2);
}

uint64_t sub_21DF9DC24()
{
  v1 = v0[22];
  v0[24] = v1;
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  (*(v3 + 16))(v2, v0[10], v4);
  v5 = (*(v3 + 88))(v2, v4);
  v6 = *MEMORY[0x277D794A8];
  (*(v3 + 8))(v2, v4);
  v7 = v0[17];
  if (v5 == v6)
  {
    sub_21DF9F0D4(v1, v0[11], v0[17]);
  }

  else
  {
    v8 = sub_21E13D264();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[11];
  sub_21DF3DE9C(v0[17], v0[18], &qword_27CEA9990);
  v12 = *(v9 + *(v11 + 60));
  swift_getKeyPath();
  v0[8] = v12;
  sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportData;
  swift_beginAccess();
  sub_21DF236C0(v12 + v13, v10, &qword_27CEADA80);
  v14 = sub_21E13E084();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v10, 1, v14);
  v17 = v0[13];
  if (v16 == 1)
  {
    sub_21DF23614(v0[13], &qword_27CEADA80);
    v18 = 0;
  }

  else
  {
    v18 = sub_21E13E044();
    (*(v15 + 8))(v17, v14);
  }

  v0[25] = v18;
  swift_getKeyPath();
  v0[9] = v12;
  sub_21E13D3C4();

  v19 = (v12 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
  swift_beginAccess();
  v20 = *v19;
  v0[26] = *v19;
  v21 = v19[1];
  swift_unknownObjectRetain();
  v22 = sub_21E13E464();
  v0[27] = v22;
  v23 = swift_task_alloc();
  v0[28] = v23;
  *v23 = v0;
  v23[1] = sub_21DF9DFA0;
  v24 = v0[18];
  v25 = v0[10];

  return MEMORY[0x2821E09E0](v25, v22, v18, v24, v20, v21);
}

uint64_t sub_21DF9DFA0()
{
  v1 = *v0;
  v2 = *(*v0 + 200);

  swift_unknownObjectRelease();

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21DF9E120, v4, v3);
}

uint64_t sub_21DF9E120()
{
  v1 = *(v0 + 144);

  sub_21DF23614(v1, &qword_27CEA9990);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21DF9E1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  VisualIntelligenceFrameEntity.init(engineIdentifier:modelEntity:)(a1, a2, v12);
  v7 = *(v3 + *(a3 + 68));
  swift_beginAccess();
  *(v7 + 16) = MEMORY[0x277D84F98];

  v8 = v13;
  v9 = v14;
  sub_21DFA1148(v12, v11);
  swift_beginAccess();

  sub_21E08D1E4(v11, v8, v9);
  swift_endAccess();
  sub_21DFA11A4();
  sub_21E13CCC4();
  return sub_21DFA11F8(v12);
}

uint64_t sub_21DF9E2D4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  type metadata accessor for OverlayView();
  sub_21DF236C0(a2, v5, &qword_27CEADA80);
  return sub_21E11E910(v5);
}

uint64_t sub_21DF9E3A4()
{
  v0 = type metadata accessor for OverlayView();
  sub_21DF964B8(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  sub_21E1419D4();
}

void sub_21DF9E440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v4 = sub_21E13E9C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13D834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F69E50 != -1)
  {
    swift_once();
  }

  if (byte_280F6FD20 == 1)
  {
    v19 = type metadata accessor for OverlayView();
    v12 = *(a3 + *(v19 + 60));
    swift_getKeyPath();
    v21 = v12;
    sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
    swift_beginAccess();
    (*(v9 + 16))(v11, v12 + v13, v8);
    LOBYTE(v13) = sub_21E13D814();
    (*(v9 + 8))(v11, v8);
    if (v13)
    {
      sub_21E13E394();
      if (sub_21E13E944() & 1) != 0 || (sub_21E13E8D4() & 1) != 0 || (sub_21E13E964())
      {
        (*(v5 + 8))(v7, v4);
      }

      else
      {
        v17 = sub_21E13E9A4();
        (*(v5 + 8))(v7, v4);
        if ((v17 & 1) == 0)
        {
          return;
        }
      }

      if (sub_21DF96DEC())
      {
      }

      else
      {
        type metadata accessor for VIUIAnnotationCanvasController();
        v14 = swift_allocObject();
        *(v14 + 16) = 0;
        *(v14 + 32) = 0;
        v15 = OBJC_IVAR____TtC20VisualIntelligenceUI30VIUIAnnotationCanvasController__latestBundleManagerOutput;
        v16 = sub_21E13DA54();
        (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);

        sub_21E13D3F4();
        *(v14 + 24) = v12;

        sub_21E04268C();
        swift_allocObject();
        swift_weakInit();
        sub_21E13D3A4();

        sub_21DF96E40();
      }
    }
  }
}

uint64_t sub_21DF9E858()
{
  v0 = type metadata accessor for OverlayView();
  sub_21DF964B8(v0);
  swift_getKeyPath();
  sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  sub_21E1419D4();
}

uint64_t sub_21DF9E974@<X0>(double *a1@<X8>)
{
  v2 = sub_21E140324();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E1403D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E140554();
  sub_21E13F724();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  sub_21E140544();
  sub_21E13F724();
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  v15 = v13 / v11;
  if (v11 < 1.0)
  {
    v15 = 1.0;
  }

  *a1 = v15;
  return result;
}

uint64_t sub_21DF9EB30(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for OverlayView() + 60));
  swift_getKeyPath();
  sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsScale;
  result = swift_beginAccess();
  if (*(v5 + v6) == v2)
  {
    *(v5 + v6) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFA21F0(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);

    sub_21E13D3B4();
  }

  return result;
}

void OverlayView.init(model:saliencyModel:sheetAssistant:isActive:isPresentationAllowed:isPresenting:content:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, void (*a14)(uint64_t), uint64_t a15)
{
  v40 = a5;
  v41 = a8;
  v44 = a7;
  v45 = a1;
  v38 = a15;
  v39 = a2;
  v36 = a3;
  v37 = a14;
  v34 = a13;
  v35 = a6;
  v42 = a11;
  v43 = a12;
  v17 = sub_21E13F444();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeedbackController();
  swift_allocObject();
  v46 = FeedbackController.init(saliencyModel:)(0);
  sub_21E141704();
  v21 = v48;
  *(a9 + 72) = v47;
  *(a9 + 80) = v21;
  v22 = type metadata accessor for OverlayView();
  (*(v18 + 104))(v20, *MEMORY[0x277CDF3D0], v17);
  sub_21DF962B0(v20);
  v23 = v22[17];
  if (qword_280F6A6F0 != -1)
  {
    swift_once();
  }

  *(a9 + v23) = off_280F6A6F8;
  v24 = (a9 + v22[18]);

  *v24 = sub_21DF96DA4();
  v24[1] = v25;
  v27 = v40;
  v26 = v41;
  *a9 = a4;
  *(a9 + 8) = v27;
  *(a9 + 16) = v35 & 1;
  v28 = v43;
  *(a9 + 24) = v44;
  *(a9 + 32) = v26;
  *(a9 + 40) = a10 & 1;
  *(a9 + 48) = v42;
  *(a9 + 56) = v28;
  *(a9 + 64) = v34 & 1;
  *(a9 + v22[14]) = v45;
  v29 = v36;
  *(a9 + v22[13]) = v36;
  v30 = v39;
  *(a9 + v22[15]) = v39;

  v36 = v29;

  v37(v31);
  v32 = sub_21DF9620C();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v34 - 2) = v32;
  *(&v34 - 1) = v30;
  v47 = v32;
  sub_21DFA21F0(&qword_280F6A900, type metadata accessor for FeedbackController);
  sub_21E13D3B4();
}

uint64_t sub_21DF9F0D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a1;
  v83 = a3;
  v68 = sub_21E13F1B4();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v77 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13D1A4();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v74 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13D264();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v73 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v63 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA83B0);
  MEMORY[0x28223BE20](v71);
  v72 = &v63 - v13;
  v78 = sub_21E13E9C4();
  v81 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v80 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21E13D834();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + *(a2 + 60));
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v86 = v19;
  v21 = sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  v70 = v20;
  v69 = v21;
  sub_21E13D3C4();

  v22 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v23 = *(v16 + 16);
  v23(v18, v19 + v22, v15);
  v24 = sub_21E13D814();
  (*(v16 + 8))(v18, v15);
  if ((v24 & 1) == 0)
  {
    return (*(v9 + 56))(v83, 1, 1, v8);
  }

  v64 = v23;
  v65 = v9;
  v66 = v8;
  v25 = v79;
  if (*(v79 + 32) == 1)
  {
    *(v79 + 32) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v63 - 2) = v25;
    *(&v63 - 8) = 1;
    *&v86 = v25;
    sub_21DFA21F0(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController);
    sub_21E13D3B4();
  }

  sub_21E045868();
  if ((v28 & 1) == 0)
  {
    v79 = 0;
    sub_21E13E934();
    sub_21E13E904();
    sub_21E13E914();
    sub_21E13E924();
    v30 = v80;
    sub_21E13E8F4();
    swift_getKeyPath();
    *&v86 = v19;
    sub_21E13D3C4();

    v31 = v72;
    v64(v72, v19 + v22, v15);
    v32 = type metadata accessor for VIUIAnnotationCanvas();
    v33 = v78;
    (*(v81 + 16))(&v31[*(v32 + 20)], v30, v78);
    v34 = &v31[*(v32 + 24)];
    v34[3] = type metadata accessor for VIUIAnnotationCanvasController();
    v34[4] = sub_21DFA21F0(&qword_27CEA83C0, type metadata accessor for VIUIAnnotationCanvasController);
    *v34 = v25;

    sub_21E141CC4();
    sub_21E13F664();
    v35 = &v31[*(v71 + 36)];
    v36 = v87;
    *v35 = v86;
    *(v35 + 1) = v36;
    *(v35 + 2) = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA83C8);
    swift_allocObject();
    MEMORY[0x223D4FFA0](v31);
    sub_21E13F754();
    v37 = v73;
    sub_21E13D1C4();
    v84 = 0xD000000000000011;
    v85 = 0x800000021E15BEA0;
    v39 = v75;
    v38 = v76;
    v40 = v74;
    (*(v75 + 104))(v74, *MEMORY[0x277CC91D8], v76);
    sub_21DF252E0();
    sub_21E13D254();
    (*(v39 + 8))(v40, v38);
    v41 = v65;
    v42 = *(v65 + 8);
    v43 = v66;
    v42(v37, v66);
    v44 = sub_21E13F744();
    v45 = v83;
    if (v44)
    {
      v46 = v44;
      v47 = sub_21E142534();
      if (v48 >> 60 != 15)
      {
        v54 = v47;
        v55 = v48;
        v56 = [objc_opt_self() defaultManager];
        v57 = v82;
        sub_21E13D224();
        v58 = sub_21E1420F4();

        v59 = sub_21E13D274();
        [v56 createFileAtPath:v58 contents:v59 attributes:0];

        sub_21DFA1598(v54, v55);

        (*(v81 + 8))(v80, v78);
        v60 = v83;
        v61 = v66;
        (*(v41 + 32))(v83, v57, v66);
        result = (*(v41 + 56))(v60, 0, 1, v61);
        if (*(v25 + 32) != 1)
        {
          goto LABEL_19;
        }

LABEL_17:
        v62 = swift_getKeyPath();
        MEMORY[0x28223BE20](v62);
        *(&v63 - 2) = v25;
        *(&v63 - 8) = 0;
        v84 = v25;
        sub_21DFA21F0(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController);
        goto LABEL_18;
      }
    }

    sub_21E13EBE4();
    v49 = sub_21E13F1A4();
    v50 = sub_21E142564();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v45;
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_21DF05000, v49, v50, "captureFrameVisualizerForTTR failed to generate png from image", v52, 2u);
      v53 = v52;
      v45 = v51;
      v33 = v78;
      MEMORY[0x223D540B0](v53, -1, -1);
    }

    (*(v67 + 8))(v77, v68);
    v42(v82, v43);
    (*(v81 + 8))(v80, v33);
    result = (*(v41 + 56))(v45, 1, 1, v43);
    if (*(v25 + 32) != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  result = (*(v65 + 56))(v83, 1, 1, v66);
  if (*(v25 + 32) == 1)
  {
    v29 = swift_getKeyPath();
    MEMORY[0x28223BE20](v29);
    *(&v63 - 2) = v25;
    *(&v63 - 8) = 0;
    *&v86 = v25;
    sub_21DFA21F0(&qword_27CEA83B8, type metadata accessor for VIUIAnnotationCanvasController);
LABEL_18:
    sub_21E13D3B4();
  }

LABEL_19:
  *(v25 + 32) = 0;
  return result;
}

uint64_t sub_21DF9FD54()
{
  v0 = sub_21E13D344();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8430);
  MEMORY[0x28223BE20](v33);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8438);
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  sub_21E13ED84();
  v35 = v1;
  v16 = *(v1 + 56);
  v34 = v0;
  v16(v15, 0, 1, v0);
  sub_21E046F00(v7);
  v17 = sub_21E13EF04();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_21DF23614(v7, &qword_27CEACB50);
    v19 = 1;
  }

  else
  {
    sub_21E13EE24();
    (*(v18 + 8))(v7, v17);
    v19 = 0;
  }

  v20 = v34;
  v16(v12, v19, 1, v34);
  v21 = *(v33 + 48);
  sub_21DF236C0(v15, v4, &qword_27CEA8438);
  sub_21DF236C0(v12, &v4[v21], &qword_27CEA8438);
  v22 = *(v35 + 48);
  if (v22(v4, 1, v20) != 1)
  {
    v24 = v32;
    sub_21DF236C0(v4, v32, &qword_27CEA8438);
    if (v22(&v4[v21], 1, v20) != 1)
    {
      v25 = v35;
      v26 = &v4[v21];
      v27 = v31;
      (*(v35 + 32))(v31, v26, v20);
      sub_21DFA21F0(&qword_280F6C088, MEMORY[0x277CC95F0]);
      v23 = sub_21E142074();
      v28 = *(v25 + 8);
      v28(v27, v20);
      sub_21DF23614(v12, &qword_27CEA8438);
      sub_21DF23614(v15, &qword_27CEA8438);
      v28(v32, v20);
      sub_21DF23614(v4, &qword_27CEA8438);
      return v23 & 1;
    }

    sub_21DF23614(v12, &qword_27CEA8438);
    sub_21DF23614(v15, &qword_27CEA8438);
    (*(v35 + 8))(v24, v20);
    goto LABEL_9;
  }

  sub_21DF23614(v12, &qword_27CEA8438);
  sub_21DF23614(v15, &qword_27CEA8438);
  if (v22(&v4[v21], 1, v20) != 1)
  {
LABEL_9:
    sub_21DF23614(v4, &qword_27CEA8430);
    v23 = 0;
    return v23 & 1;
  }

  sub_21DF23614(v4, &qword_27CEA8438);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_21DFA02B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DFA21F0(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__dismissOverlay);
  return result;
}

uint64_t sub_21DFA0388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DFA21F0(&qword_280F6A900, type metadata accessor for FeedbackController);
  sub_21E13D3C4();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_21DFA0448()
{
  swift_getKeyPath();
  sub_21DFA21F0(&qword_280F6A900, type metadata accessor for FeedbackController);
  sub_21E13D3B4();
}

void sub_21DFA0594()
{
  sub_21DFA0C9C();
  if (v0 <= 0x3F)
  {
    sub_21DFA0CEC(319, &qword_280F68D90, type metadata accessor for FeedbackController);
    if (v1 <= 0x3F)
    {
      sub_21DFA0CEC(319, &qword_280F68D68, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SheetTrackingAssistant();
        if (v3 <= 0x3F)
        {
          type metadata accessor for OverlayViewModel();
          if (v4 <= 0x3F)
          {
            type metadata accessor for NewSaliencyModel();
            if (v5 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v6 <= 0x3F)
              {
                type metadata accessor for AppEntitiesProvider();
                if (v7 <= 0x3F)
                {
                  sub_21DFA0D40();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21DFA0704(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21E13F444();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v8 <= v10)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v7 + 80) & 0xF8;
  v15 = v14 | 7;
  v16 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23;
  v17 = v11 + 8;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v18 = ((((*(v9 + 64) + ((v17 + ((((v16 + ((v14 + 95) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = a2 - v13 + 1;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    return v13 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v18);
    if (v23)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v12 & 0x80000000) != 0)
  {
    if (v8 == v13)
    {
      v28 = *(v7 + 48);

      return v28(((a1 & 0xFFFFFFFFFFFFFFF8) + v15 + 88) & ~v15);
    }

    else
    {
      v29 = *(v9 + 48);

      return v29((v17 + ((((v16 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v15 + 88) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11, v10);
    }
  }

  else
  {
    v27 = *(a1 + 8);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }
}

void sub_21DFA098C(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_21E13F444() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v12 + 80);
  if (v10 <= v13)
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = v14 & 0xF8 | 7;
  v20 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = ((((*(v12 + 64) + ((v16 + 8 + ((((v20 + 23 + (((v14 & 0xF8) + 95) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v18 >= a3)
  {
    v24 = 0;
    v25 = a2 - v18;
    if (a2 <= v18)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (((((*(v12 + 64) + ((v16 + 8 + ((((v20 + 23 + (((v14 & 0xF8) + 95) & ~v19)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v18 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2 - v18;
    if (a2 <= v18)
    {
LABEL_23:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

LABEL_39:
        if ((v17 & 0x80000000) != 0)
        {
          v28 = (((a1 & 0xFFFFFFFFFFFFFFF8) + v19 + 88) & ~v19);
          if (v10 == v18)
          {
            if (v11 >= a2)
            {
              v31 = *(v9 + 56);

              v31(v28, a2);
            }

            else if (v20 != -8)
            {
              v29 = ~v11 + a2;
              bzero(v28, (v20 + 8));
              *v28 = v29;
            }
          }

          else
          {
            v30 = *(v12 + 56);

            v30((v16 + 8 + ((((v28 + v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16, a2, v13);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *(a1 + 16) = 0;
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 8) = 0;
        }

        else
        {
          *(a1 + 8) = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }
  }

  if (((((*(v12 + 64) + ((v16 + 8 + ((((v20 + 23 + (((v14 & 0xF8) + 95) & ~v19)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (((((*(v12 + 64) + ((v16 + 8 + ((((v20 + 23 + (((v14 & 0xF8) + 95) & ~v19)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v27 = ~v18 + a2;
    bzero(a1, v21);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *(a1 + v21) = v26;
    }

    else
    {
      *(a1 + v21) = v26;
    }
  }

  else if (v24)
  {
    *(a1 + v21) = v26;
  }
}

void sub_21DFA0C9C()
{
  if (!qword_280F68D00)
  {
    v0 = sub_21E141A24();
    if (!v1)
    {
      atomic_store(v0, &qword_280F68D00);
    }
  }
}

void sub_21DFA0CEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21E141744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21DFA0D40()
{
  if (!qword_280F68D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEAC4C0);
    v0 = sub_21E141744();
    if (!v1)
    {
      atomic_store(v0, &qword_280F68D78);
    }
  }
}

uint64_t sub_21DFA0DB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for OverlayView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_21DF9B608(v6, v3, v4, a1);
}

uint64_t sub_21DFA0E54()
{
  type metadata accessor for OverlayView();

  return sub_21DF9E3A4();
}

uint64_t sub_21DFA0F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for OverlayView() - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a3(a1, a2, v9, v6, v7);
}

uint64_t sub_21DFA0FD0(double *a1)
{
  v3 = *(type metadata accessor for OverlayView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21DF9EB30(a1, v4);
}

uint64_t dynamic_cast_existential_3_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (swift_conformsToProtocol2())
      {
        return a1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_21DFA11A4()
{
  result = qword_280F6C048;
  if (!qword_280F6C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C048);
  }

  return result;
}

uint64_t sub_21DFA124C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for OverlayView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_21DF8DAF8;

  return sub_21DF9C140(v6, v7, v0 + v5, v2, v3);
}

uint64_t sub_21DFA135C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for OverlayView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_21DFA140C(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for OverlayView() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_21E13E444() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_21DF8DAF8;

  return sub_21DF9CED0(a1, v12, v13, v1 + v8, v1 + v11, v6, v5);
}

uint64_t sub_21DFA1598(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21DFA15AC(a1, a2);
  }

  return a1;
}

uint64_t sub_21DFA15AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21DFA1680()
{
  v1 = *(type metadata accessor for OverlayView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_21DF96734(v2);
}

uint64_t sub_21DFA1704(uint64_t a1)
{
  type metadata accessor for OverlayView();

  return sub_21DF96850(a1);
}

uint64_t sub_21DFA17BC@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_110Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21DFA18E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for OverlayView() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for OverlayView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  v4 = v3 + v2[14];
  v5 = sub_21E13F444();
  (*(*(v5 - 8) + 8))(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC530);

  (*(*(v1 - 8) + 8))(v3 + v2[18], v1);

  return swift_deallocObject();
}

uint64_t sub_21DFA1B50(uint64_t *a1)
{
  v4 = *(type metadata accessor for OverlayView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21DF4AA04;

  return sub_21DF9AC70(a1, v1 + v5);
}

unint64_t sub_21DFA1CA0()
{
  result = qword_280F68FA0;
  if (!qword_280F68FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8328);
    type metadata accessor for ColorSchemeTracker();
    sub_21DFA21F0(qword_280F6A9A8, type metadata accessor for ColorSchemeTracker);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DF8, &qword_27CEA83F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68FA0);
  }

  return result;
}

unint64_t sub_21DFA1DB8()
{
  result = qword_27CEA8400;
  if (!qword_27CEA8400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8330);
    sub_21DF23E5C(&qword_27CEA8408, &qword_27CEA83D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8400);
  }

  return result;
}

unint64_t sub_21DFA1E68()
{
  result = qword_280F6A700;
  if (!qword_280F6A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6A700);
  }

  return result;
}

unint64_t sub_21DFA1EBC()
{
  result = qword_280F690E8[0];
  if (!qword_280F690E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F690E8);
  }

  return result;
}

unint64_t sub_21DFA1F10()
{
  result = qword_280F68F50;
  if (!qword_280F68F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8338);
    sub_21DFA1F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F50);
  }

  return result;
}

unint64_t sub_21DFA1F94()
{
  result = qword_280F68F58;
  if (!qword_280F68F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA83D0);
    sub_21DF23E5C(&qword_280F68D20, &qword_27CEA8410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F58);
  }

  return result;
}

uint64_t sub_21DFA20C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DFA212C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleTextDetailView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFA2190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21DFA21F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SiriReaderCardView()
{
  result = qword_27CEA8440;
  if (!qword_27CEA8440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DFA236C()
{
  sub_21E13DC14();
  if (v0 <= 0x3F)
  {
    sub_21E13E754();
    if (v1 <= 0x3F)
    {
      sub_21DFA2408();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21DFA2408()
{
  if (!qword_280F68D70)
  {
    v0 = sub_21E141744();
    if (!v1)
    {
      atomic_store(v0, &qword_280F68D70);
    }
  }
}

id sub_21DFA2474()
{
  v0 = objc_allocWithZone(MEMORY[0x277D61A28]);

  return [v0 init];
}

uint64_t sub_21DFA24F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DFA3F78();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21DFA2558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DFA3F78();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21DFA25BC()
{
  sub_21DFA3F78();
  sub_21E1407A4();
  __break(1u);
}

double sub_21DFA25E4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SiriReaderCardView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = sub_21E140914();
  sub_21E141CC4();
  sub_21E13FCE4();
  *&v36[55] = v41;
  *&v36[71] = v42;
  *&v36[87] = v43;
  *&v36[103] = v44;
  *&v36[23] = v39;
  *&v36[39] = v40;
  v37 = 0;
  *&v36[7] = v38;
  v8 = (v2 + *(v5 + 32));
  v9 = *v8;
  v10 = v8[1];
  *&v33 = v9;
  *(&v33 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  sub_21E141CC4();
  sub_21E13F664();
  sub_21DFA3344(v2, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_21DFA33A8(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_21DFA3344(v2, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_21DFA33A8(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
  v14 = sub_21E141CC4();
  v30 = v15;
  v31 = v14;
  sub_21DFA3344(v2, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_21DFA33A8(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v11);
  *a1 = v32;
  __asm { FMOV            V0.2D, #12.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = xmmword_21E148F70;
  *(a1 + 40) = 0;
  *(a1 + 105) = *&v36[64];
  v22 = *&v36[96];
  *(a1 + 121) = *&v36[80];
  *(a1 + 137) = v22;
  *(a1 + 152) = *&v36[111];
  v23 = *&v36[16];
  *(a1 + 41) = *v36;
  *(a1 + 57) = v23;
  v24 = *&v36[48];
  *(a1 + 73) = *&v36[32];
  *(a1 + 89) = v24;
  v25 = v35;
  result = *&v34;
  v27 = v33;
  *(a1 + 176) = v34;
  *(a1 + 192) = v25;
  *(a1 + 160) = v27;
  *(a1 + 208) = sub_21DFA340C;
  *(a1 + 216) = v12;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = sub_21DFA346C;
  *(a1 + 248) = v13;
  v28 = v30;
  *(a1 + 256) = v31;
  *(a1 + 264) = v28;
  *(a1 + 272) = sub_21DFA34EC;
  *(a1 + 280) = v16;
  return result;
}

uint64_t sub_21DFA28EC(uint64_t a1)
{
  v2 = sub_21E13E744();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SiriReaderCardView();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21E13F1B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + *(v7 + 28));
  result = sub_21E13E6E4();
  if (result)
  {
    v38 = v11;
    v39 = v10;
    v40 = v14;
    v41 = v3;
    v42 = v2;
    sub_21E13EAA4();
    sub_21E13EA94();
    v16 = sub_21E13EA84();

    v17 = sub_21E13DBD4();
    v19 = sub_21DFA2D14(v16, v17, v18);
    v21 = v20;

    sub_21E13EC44();
    sub_21DFA3344(a1, v9);

    v22 = sub_21E13F1A4();
    v23 = sub_21E142584();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v24 = 134218242;
      sub_21E13DBF4();
      v25 = sub_21E1421F4();
      v36 = v23;
      v26 = v5;
      v27 = v19;
      v28 = v25;

      v29 = *(v28 + 16);

      sub_21DFA3978(v9);
      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v30 = v27;
      v5 = v26;
      if (v21)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0x3E656E6F6E3CLL;
      }

      if (v21)
      {
        v32 = v21;
      }

      else
      {
        v32 = 0xE600000000000000;
      }

      v33 = sub_21E0E08C0(v31, v32, &v43);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_21DF05000, v22, v36, "Preparing to read %ld token long text with detected best locale: %s", v24, 0x16u);
      v34 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x223D540B0](v34, -1, -1);
      MEMORY[0x223D540B0](v24, -1, -1);

      (*(v38 + 8))(v13, v39);
    }

    else
    {
      sub_21DFA3978(v9);

      (*(v38 + 8))(v13, v39);
    }

    sub_21E13DC04();
    sub_21E13DBF4();
    sub_21E13DBE4();
    sub_21E13E734();
    sub_21E13E714();
    return (*(v41 + 8))(v5, v42);
  }

  return result;
}

uint64_t sub_21DFA2D14(uint64_t result, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 40;
    v6 = MEMORY[0x277D84F90];
    v22 = result + 40;
    do
    {
      v23 = v6;
      v7 = (v5 + 16 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_27;
        }

        v9 = *(v7 - 1);
        v10 = *v7;
        v28 = v9;
        v29 = v10;
        v26 = v24;
        v27 = v25;
        sub_21DFA3A04();
        sub_21DFA3A58();

        if (sub_21E142034())
        {
          break;
        }

        ++v8;
        v7 += 2;
        if (v4 == v3)
        {
          v6 = v23;
          goto LABEL_14;
        }
      }

      v6 = v23;
      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v23;
      if ((result & 1) == 0)
      {
        result = sub_21DF5BFAC(0, *(v23 + 16) + 1, 1);
        v6 = v30;
      }

      v5 = v22;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_21DF5BFAC((v11 > 1), v12 + 1, 1);
        v6 = v30;
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
    }

    while (v4 != v3);
LABEL_14:
    if (!*(v6 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_23:

      return 0;
    }
  }

  v14 = v6;
  result = sub_21E13D354();
  v15 = result;
  v16 = *(result + 16);
  if (v16)
  {
    v17 = 0;
    v18 = (result + 40);
    while (v17 < *(v15 + 16))
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v28 = v20;
      v29 = v19;
      MEMORY[0x28223BE20](result);
      v21[2] = &v28;

      if (sub_21DFA38CC(sub_21DFA3AAC, v21, v14))
      {

        return v20;
      }

      ++v17;
      v18 += 2;
      if (v16 == v17)
      {
        goto LABEL_20;
      }
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_20:

  if (*(v14 + 16))
  {
    v20 = *(v14 + 32);

    return v20;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_21DFA2FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v6 = sub_21E13F734();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SiriReaderCardView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21E1414A4();
  sub_21DFA3344(a2, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v14 + v12 + *(v7 + 80)) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_21DFA33A8(v13, v16 + v14);
  (*(v7 + 32))(v16 + v15, v9, v6);
  sub_21DFA3344(v19, v13);
  v17 = swift_allocObject();
  result = sub_21DFA33A8(v13, v17 + v14);
  *a3 = v20;
  a3[1] = sub_21DFA355C;
  a3[2] = v16;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = sub_21DF0AFAC;
  a3[6] = 0;
  a3[7] = sub_21DFA3720;
  a3[8] = v17;
  return result;
}

uint64_t sub_21DFA31EC()
{
  sub_21E13F714();
  type metadata accessor for SiriReaderCardView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  return sub_21E141724();
}

uint64_t sub_21DFA326C()
{
  type metadata accessor for SiriReaderCardView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  return sub_21E141724();
}

_BYTE *sub_21DFA32E4(_BYTE *result)
{
  if (*result)
  {
    if (*result != 1)
    {
      type metadata accessor for SiriReaderCardView();
      return sub_21E13E704();
    }
  }

  else
  {
    type metadata accessor for SiriReaderCardView();
    return sub_21E13E6F4();
  }

  return result;
}

uint64_t sub_21DFA3344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriReaderCardView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFA33A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriReaderCardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFA340C()
{
  v1 = *(type metadata accessor for SiriReaderCardView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21DFA28EC(v2);
}

uint64_t sub_21DFA346C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SiriReaderCardView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21DFA2FA4(a1, v6, a2);
}

_BYTE *sub_21DFA34EC(_BYTE *a1)
{
  type metadata accessor for SiriReaderCardView();

  return sub_21DFA32E4(a1);
}

uint64_t sub_21DFA355C()
{
  type metadata accessor for SiriReaderCardView();
  sub_21E13F734();

  return sub_21DFA31EC();
}

uint64_t objectdestroyTm_5()
{
  v1 = *(type metadata accessor for SiriReaderCardView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_21E13DC14();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_21DFA3720()
{
  type metadata accessor for SiriReaderCardView();

  return sub_21DFA326C();
}

uint64_t sub_21DFA3790(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x223D530F0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_21E1427B4();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_21DFA38CC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_21DFA3978(uint64_t a1)
{
  v2 = type metadata accessor for SiriReaderCardView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DFA39D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_21DFA3A04()
{
  result = qword_27CEA8450;
  if (!qword_27CEA8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8450);
  }

  return result;
}

unint64_t sub_21DFA3A58()
{
  result = qword_27CEA8458;
  if (!qword_27CEA8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8458);
  }

  return result;
}

uint64_t sub_21DFA3AAC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21E142B14() & 1;
  }
}

unint64_t sub_21DFA3B14()
{
  result = qword_27CEA8460;
  if (!qword_27CEA8460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8468);
    sub_21DFA3BA0();
    sub_21DFA3F14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8460);
  }

  return result;
}

unint64_t sub_21DFA3BA0()
{
  result = qword_27CEA8470;
  if (!qword_27CEA8470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8478);
    sub_21DFA3C2C();
    sub_21DFA3EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8470);
  }

  return result;
}

unint64_t sub_21DFA3C2C()
{
  result = qword_27CEA8480;
  if (!qword_27CEA8480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8488);
    sub_21DFA3CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8480);
  }

  return result;
}

unint64_t sub_21DFA3CB8()
{
  result = qword_27CEA8490;
  if (!qword_27CEA8490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8498);
    sub_21DFA3D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8490);
  }

  return result;
}

unint64_t sub_21DFA3D44()
{
  result = qword_27CEA84A0;
  if (!qword_27CEA84A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA84A8);
    sub_21DFA3DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA84A0);
  }

  return result;
}

unint64_t sub_21DFA3DD0()
{
  result = qword_27CEA84B0;
  if (!qword_27CEA84B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA84B8);
    sub_21DFA3E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA84B0);
  }

  return result;
}

unint64_t sub_21DFA3E5C()
{
  result = qword_27CEA84C0;
  if (!qword_27CEA84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA84C0);
  }

  return result;
}

unint64_t sub_21DFA3EB0()
{
  result = qword_27CEA7C68;
  if (!qword_27CEA7C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7C68);
  }

  return result;
}

unint64_t sub_21DFA3F14()
{
  result = qword_280F69CF8;
  if (!qword_280F69CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F69CF8);
  }

  return result;
}

unint64_t sub_21DFA3F78()
{
  result = qword_27CEA84C8;
  if (!qword_27CEA84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA84C8);
  }

  return result;
}

uint64_t type metadata accessor for VisualLookupSiriView()
{
  result = qword_27CEA84D0;
  if (!qword_27CEA84D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DFA4044()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    sub_21E13D7E4();
    if (v1 <= 0x3F)
    {
      sub_21DFA421C(319, &qword_280F68D00, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_21E141FD4();
        if (v3 <= 0x3F)
        {
          sub_21DFA4188();
          if (v4 <= 0x3F)
          {
            sub_21DFA421C(319, &qword_280F68D70, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_21DFA426C();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21DFA4188()
{
  if (!qword_27CEA84E0)
  {
    type metadata accessor for ObservableDrillIn(255);
    sub_21DFA78B0(&qword_27CEA84E8, type metadata accessor for ObservableDrillIn);
    v0 = sub_21E13F4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEA84E0);
    }
  }
}

void sub_21DFA421C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21DFA426C()
{
  if (!qword_27CEA84F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA84F8);
    v0 = sub_21E142344();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEA84F0);
    }
  }
}

uint64_t sub_21DFA42EC()
{
  type metadata accessor for ObservableDrillIn(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA86A8);
  sub_21E13F2C4();
  return v0;
}

id sub_21DFA435C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for VisualLookupSiriView();
  v11 = v10[7];
  v12 = objc_allocWithZone(sub_21E141FD4());
  *(a5 + v11) = sub_21E141FC4();
  v13 = a5 + v10[8];
  *v13 = sub_21DFA42EC;
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = (a5 + v10[9]);
  sub_21E141704();
  *v14 = v70;
  v14[1] = v71;
  v59 = v10[10];
  *(a5 + v59) = MEMORY[0x277D84F90];
  v15 = v10[5];
  v16 = sub_21E13D7E4();
  v54 = *(v16 - 8);
  v55 = v16;
  (*(v54 + 16))(a5 + v15, a1);
  v60 = a5;
  v17 = a5 + v10[6];
  *v17 = a2;
  *(v17 + 1) = a3;
  v17[16] = a4;
  v56 = a1;
  v18 = sub_21E13D7C4();
  v19 = v18;
  if (v18 >> 62)
  {
    goto LABEL_80;
  }

  v66 = v18 & 0xFFFFFFFFFFFFFF8;
  v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_3:
    v21 = 0;
    v22 = v19 & 0xC000000000000001;
    v23 = MEMORY[0x277D84F90];
    v24 = &property descriptor for NewSaliencyModel.entities;
    while (1)
    {
LABEL_4:
      if (v22)
      {
        v25 = MEMORY[0x223D530F0](v21, v19);
      }

      else
      {
        if (v21 >= *(v66 + 16))
        {
          goto LABEL_72;
        }

        v25 = *(v19 + 8 * v21 + 32);
      }

      v69 = v25;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_71;
      }

      v68 = v21 + 1;
      result = [v25 v24[173]];
      if (!result)
      {
        break;
      }

      v27 = result;
      sub_21DF3ED18(0, &qword_27CEA86A0);
      v28 = sub_21E1422D4();

      if (v28 >> 62)
      {
        v29 = sub_21E1427B4();
        if (v29)
        {
LABEL_15:
          v53 = v19;
          v19 = 0;
          v64 = v28;
          v65 = v28 & 0xC000000000000001;
          v61 = v28 + 32;
          v62 = v28 & 0xFFFFFFFFFFFFFF8;
          v63 = v29;
          v57 = v22;
          v58 = v20;
          while (1)
          {
            if (v65)
            {
              v30 = MEMORY[0x223D530F0](v19, v28);
            }

            else
            {
              if (v19 >= *(v62 + 16))
              {
                goto LABEL_78;
              }

              v30 = *(v61 + 8 * v19);
            }

            v31 = v30;
            if (__OFADD__(v19++, 1))
            {
              goto LABEL_73;
            }

            v33 = [v30 inlineCard];
            if (v33)
            {
              v67 = v31;
              v34 = v33;
              v35 = [v33 cardSections];

              if (v35)
              {
                sub_21DF3ED18(0, &qword_27CEA8680);
                v36 = sub_21E1422D4();

                if (v36 >> 62)
                {
                  v37 = sub_21E1427B4();
                  if (v37)
                  {
LABEL_27:
                    if (v37 < 1)
                    {
                      goto LABEL_79;
                    }

                    v38 = 0;
                    while (2)
                    {
                      if ((v36 & 0xC000000000000001) != 0)
                      {
                        v39 = MEMORY[0x223D530F0](v38, v36);
                      }

                      else
                      {
                        v39 = *(v36 + 8 * v38 + 32);
                      }

                      v40 = v39;
                      if (([v39 shouldShowInSmartDialog] & 1) != 0 || (v41 = v23[2]) == 0)
                      {
LABEL_43:
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA6858);
                        v47 = swift_allocObject();
                        *(v47 + 16) = xmmword_21E144A20;
                        *(v47 + 32) = v40;
                        v48 = v40;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v23 = sub_21E06A364(0, v23[2] + 1, 1, v23);
                        }

                        v50 = v23[2];
                        v49 = v23[3];
                        if (v50 >= v49 >> 1)
                        {
                          v23 = sub_21E06A364((v49 > 1), v50 + 1, 1, v23);
                        }

                        v23[2] = v50 + 1;
                        v23[v50 + 4] = v47;
                        goto LABEL_30;
                      }

                      v42 = v23[v41 + 3];
                      if (!(v42 >> 62))
                      {
                        v43 = v23[2];
                        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_38;
                        }

LABEL_52:
                        v51 = v40;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          if (!v43)
                          {
                            goto LABEL_74;
                          }
                        }

                        else
                        {
                          v23 = sub_21E00E460(v23);
                          if (!v43)
                          {
                            goto LABEL_74;
                          }
                        }

                        if (v43 > v23[2])
                        {
                          goto LABEL_75;
                        }

LABEL_55:
                        MEMORY[0x223D52AF0]();
                        if (*((v23[v43 + 3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[v43 + 3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                        {
                          sub_21E1422F4();
                        }

                        sub_21E142324();

LABEL_30:
                        if (v37 == ++v38)
                        {

                          *(v60 + v59) = v23;
                          v22 = v57;
                          v20 = v58;
                          v24 = &property descriptor for NewSaliencyModel.entities;
                          goto LABEL_17;
                        }

                        continue;
                      }

                      break;
                    }

                    v52 = sub_21E1427B4();
                    v43 = v23[2];
                    if (!v52)
                    {
                      goto LABEL_52;
                    }

LABEL_38:
                    if (v43)
                    {
                      v44 = v23[v43 + 3];
                      if ((v44 & 0xC000000000000001) != 0)
                      {

                        v45 = MEMORY[0x223D530F0](0, v44);
                      }

                      else
                      {
                        if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_70;
                        }

                        v45 = *(v44 + 32);
                      }

                      v46 = [v45 shouldShowInSmartDialog];

                      if (!v46)
                      {
                        v43 = v23[2];
                        v51 = v40;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          if (!v43)
                          {
                            goto LABEL_76;
                          }
                        }

                        else
                        {
                          v23 = sub_21E00E460(v23);
                          if (!v43)
                          {
                            goto LABEL_76;
                          }
                        }

                        if (v43 > v23[2])
                        {
                          goto LABEL_77;
                        }

                        goto LABEL_55;
                      }

                      goto LABEL_43;
                    }

                    __break(1u);
LABEL_70:
                    __break(1u);
LABEL_71:
                    __break(1u);
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
LABEL_79:
                    __break(1u);
LABEL_80:
                    v66 = v19 & 0xFFFFFFFFFFFFFF8;
                    v20 = sub_21E1427B4();
                    if (!v20)
                    {
                      goto LABEL_68;
                    }

                    goto LABEL_3;
                  }
                }

                else
                {
                  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v37)
                  {
                    goto LABEL_27;
                  }
                }
              }

              else
              {
              }
            }

            else
            {
            }

LABEL_17:
            v28 = v64;
            if (v19 == v63)
            {

              v21 = v68;
              v19 = v53;
              if (v68 == v20)
              {
                goto LABEL_68;
              }

              goto LABEL_4;
            }
          }
        }
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
          goto LABEL_15;
        }
      }

      ++v21;
      if (v68 == v20)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_68:
    (*(v54 + 8))(v56, v55);
  }

  return result;
}

uint64_t sub_21DFA4A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v88 = a1;
  v84 = sub_21E1418F4();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v80 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E1403A4();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v72 - v7;
  v86 = sub_21E1403C4();
  v81 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8500);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v78 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = &v72 - v11;
  v98 = sub_21E140364();
  v12 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8508);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8510);
  *(&v100 + 1) = *(v19 - 8);
  v101 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - v20;
  *&v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8518);
  MEMORY[0x28223BE20](v100);
  v87 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  MEMORY[0x28223BE20](v26);
  v102 = &v72 - v27;
  v99 = v2;
  v103 = v2;
  sub_21E1408F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8520);
  sub_21DFA6D78();
  sub_21E13F3C4();
  sub_21E140354();
  LOBYTE(v2) = sub_21E1408F4();
  sub_21E1408E4();
  sub_21E1408E4();
  if (sub_21E1408E4() != v2)
  {
    sub_21E1408E4();
  }

  sub_21DF23E5C(&qword_27CEA85C0, &qword_27CEA8508);
  sub_21E141104();
  (*(v12 + 8))(v14, v98);
  (*(v16 + 8))(v18, v15);
  v28 = type metadata accessor for VisualLookupSiriView();
  v29 = v99 + *(v28 + 24);
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  v112 = *v29;
  v113 = v31;
  LOBYTE(v114) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  MEMORY[0x223D52200](&v104);
  if ((v104 & 1) == 0)
  {
    v34 = (v99 + *(v28 + 36));
    v35 = *v34;
    v36 = v34[1];
    v112 = v35;
    v113 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
    sub_21E141714();
  }

  sub_21E141CC4();
  sub_21E13F664();
  (*(*(&v100 + 1) + 32))(v25, v21, v101);
  v37 = &v25[*(v100 + 36)];
  v38 = v127;
  *v37 = v126;
  *(v37 + 1) = v38;
  *(v37 + 2) = v128;
  sub_21DF3DE9C(v25, v102, &qword_27CEA8518);
  v112 = v30;
  v113 = v31;
  LOBYTE(v114) = v32;
  MEMORY[0x223D52200](&v104, v33);
  v39 = 0;
  v40 = 0;
  v101 = 0;
  v41 = 0;
  v42 = 0;
  v100 = 0uLL;
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v89 = 0;
  v43 = 0;
  if (v104 == 1)
  {
    type metadata accessor for ObservableDrillIn(0);
    sub_21DFA78B0(&qword_27CEA84E8, type metadata accessor for ObservableDrillIn);
    v101 = sub_21E13F4C4();
    v112 = v30;
    v113 = v31;
    LOBYTE(v114) = v32;
    sub_21E1419F4();
    v98 = *(&v104 + 1);
    v99 = v104;
    v97 = v105;
    *&v104 = 0;
    sub_21E141704();
    v39 = v112;
    v96 = v113;
    v44 = sub_21E13FB64();
    v45 = sub_21E140914();
    if (qword_27CEA67C0 != -1)
    {
      swift_once();
    }

    sub_21E141CC4();
    sub_21E13F664();
    v94 = v130;
    v95 = v129;
    v92 = v132;
    v93 = v131;
    v90 = v134;
    v91 = v133;
    v46 = v73;
    sub_21E140394();
    v47 = v75;
    v48 = v76;
    (*(v75 + 16))(v74, v46, v76);
    v49 = v77;
    sub_21E1403B4();
    (*(v47 + 8))(v46, v48);
    v50 = v80;
    sub_21E1418D4();
    MEMORY[0x223D52590](v50, 0.0);
    (*(v82 + 8))(v50, v84);
    sub_21E141D14();

    v51 = sub_21DFA78B0(&qword_280F68E58, MEMORY[0x277CE0418]);
    v52 = v79;
    v53 = v86;
    sub_21E13F424();

    (*(v81 + 8))(v49, v53);
    v54 = v83;
    v55 = v85;
    (*(v83 + 16))(v78, v52, v85);
    v112 = v53;
    v113 = v51;
    swift_getOpaqueTypeConformance2();
    v89 = sub_21E13F704();
    (*(v54 + 8))(v52, v55);
    *&v100 = v44;
    *(&v100 + 1) = v45;
    v42 = v98;
    v41 = v99;
    v40 = v96;
    v43 = v97;
  }

  v56 = v87;
  v98 = v42;
  v99 = v41;
  v86 = v39;
  v57 = v40;
  v96 = v40;
  v97 = v43;
  sub_21DF236C0(v102, v87, &qword_27CEA8518);
  v58 = v88;
  sub_21DF236C0(v56, v88, &qword_27CEA8518);
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA85C8) + 48);
  *&v104 = v39;
  *(&v104 + 1) = v57;
  *&v105 = v101;
  *(&v105 + 1) = v41;
  *&v106 = v42;
  *(&v106 + 1) = v43;
  v107 = v100;
  v60 = v94;
  v61 = v95;
  *&v108 = v95;
  *(&v108 + 1) = v94;
  v62 = v92;
  v63 = v93;
  *&v109 = v93;
  *(&v109 + 1) = v92;
  v64 = v89;
  v65 = v90;
  v66 = v91;
  *&v110 = v91;
  *(&v110 + 1) = v90;
  v111 = v89;
  *(v59 + 112) = v89;
  v67 = v109;
  *(v59 + 64) = v108;
  *(v59 + 80) = v67;
  *(v59 + 96) = v110;
  v68 = v104;
  v69 = v105;
  v70 = v107;
  *(v59 + 32) = v106;
  *(v59 + 48) = v70;
  *v59 = v68;
  *(v59 + 16) = v69;
  sub_21DF236C0(&v104, &v112, &qword_27CEA85D0);
  sub_21DF23614(v102, &qword_27CEA8518);
  v112 = v86;
  v113 = v96;
  v114 = v101;
  v115 = v99;
  v116 = v98;
  v117 = v97;
  v118 = v100;
  v119 = v61;
  v120 = v60;
  v121 = v63;
  v122 = v62;
  v123 = v66;
  v124 = v65;
  v125 = v64;
  sub_21DF23614(&v112, &qword_27CEA85D0);
  return sub_21DF23614(v56, &qword_27CEA8518);
}

uint64_t sub_21DFA5648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = type metadata accessor for VisualLookupSiriView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA85A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v59 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8598);
  MEMORY[0x28223BE20](v59);
  v10 = &v59 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8588);
  MEMORY[0x28223BE20](v60);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8578);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v59 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8568);
  MEMORY[0x28223BE20](v63);
  v66 = &v59 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8558);
  MEMORY[0x28223BE20](v65);
  v68 = &v59 - v16;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8548);
  MEMORY[0x28223BE20](v67);
  v70 = &v59 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8538);
  MEMORY[0x28223BE20](v69);
  v71 = &v59 - v18;
  *v8 = sub_21E1401C4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA85D8);
  v72 = v3;
  v78 = sub_21DFA72B8(*(a1 + *(v3 + 40)));
  swift_getKeyPath();
  v75 = a1;
  sub_21DFA8CBC(a1, &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualLookupSiriView);
  v19 = *(v4 + 80);
  v20 = (v19 + 16) & ~v19;
  v73 = v5;
  v61 = v19;
  v21 = swift_allocObject();
  v62 = v20;
  v74 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DFA7450(v74, v21 + v20);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21DFA74B4;
  *(v22 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA85E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA85E8);
  sub_21DF23E5C(&qword_27CEA85F0, &qword_27CEA85E0);
  sub_21DFA756C();
  sub_21E141A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E147C80;
  LOBYTE(v5) = sub_21E140924();
  *(inited + 32) = v5;
  v24 = sub_21E140934();
  *(inited + 33) = v24;
  v25 = sub_21E140954();
  sub_21E140954();
  if (sub_21E140954() != v5)
  {
    v25 = sub_21E140954();
  }

  sub_21E140954();
  if (sub_21E140954() != v24)
  {
    v25 = sub_21E140954();
  }

  sub_21DF3DE9C(v8, v10, &qword_27CEA85A8);
  v26 = &v10[*(v59 + 36)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  sub_21DF3DE9C(v10, v12, &qword_27CEA8598);
  *&v12[*(v60 + 36)] = 256;
  sub_21DFA7148();
  v27 = v64;
  sub_21E141164();
  sub_21DF23614(v12, &qword_27CEA8588);
  v28 = v75;
  v29 = v75 + *(v72 + 24);
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  v78 = *v29;
  v79 = v31;
  v80 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  MEMORY[0x223D52200](&v77);
  v34 = 0.0;
  if (v77)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = 1.0;
  }

  v36 = v27;
  v37 = v66;
  sub_21DF3DE9C(v36, v66, &qword_27CEA8578);
  *(v37 + *(v63 + 36)) = v35;
  v78 = v30;
  v79 = v31;
  v80 = v32;
  MEMORY[0x223D52200](&v77, v33);
  if (v77)
  {
    v34 = 20.0;
  }

  v38 = v37;
  v39 = v68;
  sub_21DF3DE9C(v38, v68, &qword_27CEA8568);
  v40 = v39 + *(v65 + 36);
  *v40 = v34;
  *(v40 + 8) = 0;
  v78 = v30;
  v79 = v31;
  v80 = v32;
  MEMORY[0x223D52200](&v77, v33);
  v41 = v77;
  v42 = v39;
  v43 = v70;
  v44 = sub_21DF3DE9C(v42, v70, &qword_27CEA8558);
  *(v43 + *(v67 + 36)) = (v41 & 1) == 0;
  v45 = MEMORY[0x223D52580](v44, 0.44, 0.78, 0.0);
  v78 = v30;
  v79 = v31;
  v80 = v32;
  MEMORY[0x223D52200](&v77, v33);
  v46 = v77;
  v47 = v71;
  sub_21DF3DE9C(v43, v71, &qword_27CEA8548);
  v48 = v47 + *(v69 + 36);
  *v48 = v45;
  *(v48 + 8) = v46;
  v49 = v74;
  sub_21DFA8CBC(v28, v74, type metadata accessor for VisualLookupSiriView);
  v50 = v62;
  v51 = swift_allocObject();
  sub_21DFA7450(v49, v51 + v50);
  v52 = sub_21E141CC4();
  v54 = v53;
  v55 = v47;
  v56 = v76;
  sub_21DF3DE9C(v55, v76, &qword_27CEA8538);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8520);
  v58 = (v56 + *(result + 36));
  *v58 = sub_21DFA78F8;
  v58[1] = v51;
  v58[2] = v52;
  v58[3] = v54;
  return result;
}

uint64_t sub_21DFA5F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v19 = a1;
  v5 = sub_21E13F734();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisualLookupSiriView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21E1414A4();
  sub_21DFA8CBC(a2, v12, type metadata accessor for VisualLookupSiriView);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v13 + v11 + *(v6 + 80)) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_21DFA7450(v12, v15 + v13);
  (*(v6 + 32))(v15 + v14, v8, v5);
  v24 = v20;
  v25 = sub_21DFA7978;
  v26 = v15;
  v27 = 0;
  v28 = 0;
  sub_21E13F714();
  v23 = v16;
  sub_21DFA8CBC(v21, v12, type metadata accessor for VisualLookupSiriView);
  v17 = swift_allocObject();
  sub_21DFA7450(v12, v17 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70C8);
  sub_21DF496C4();
  sub_21DF3D110();
  sub_21E141324();
}

uint64_t sub_21DFA61D8()
{
  sub_21E13F714();
  type metadata accessor for VisualLookupSiriView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  return sub_21E141724();
}

uint64_t sub_21DFA6258()
{
  type metadata accessor for VisualLookupSiriView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  return sub_21E141724();
}

uint64_t sub_21DFA62D0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v74 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v73);
  v72 = &v64[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v70 = &v64[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8638);
  MEMORY[0x28223BE20](v6);
  v8 = &v64[-v7];
  v9 = type metadata accessor for VisualLookupSiriView();
  v69 = *(v9 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8618);
  MEMORY[0x28223BE20](v11);
  v71 = &v64[-v12];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8670);
  MEMORY[0x28223BE20](v75);
  v77 = &v64[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8678);
  MEMORY[0x28223BE20](v14);
  v16 = &v64[-v15];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8608);
  v18 = MEMORY[0x28223BE20](v76);
  v20 = &v64[-v19];
  if (v17 >> 62)
  {
    v68 = v17;
    result = sub_21E1427B4();
    v17 = v68;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_21DFA7684();
    sub_21E1402F4();
    sub_21DF236C0(v20, v77, &qword_27CEA8608);
    swift_storeEnumTagMultiPayload();
    sub_21DFA75F8();
    sub_21DFA773C();
    sub_21E1402F4();
    v30 = v20;
    v31 = &qword_27CEA8608;
    return sub_21DF23614(v30, v31);
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v66 = v6;
  v67 = a2;
  v68 = v17;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x223D530F0](0, v18);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v22 = *(v17 + 32);
  }

  v23 = v22;
  v24 = [v22 shouldShowInSmartDialog];

  if (!v24)
  {
    v32 = v74;
    type metadata accessor for ObservableDrillIn(0);
    sub_21DFA78B0(&qword_27CEA84E8, type metadata accessor for ObservableDrillIn);
    v71 = sub_21E13F4C4();
    v33 = v32 + *(v9 + 24);
    v34 = *v33;
    v35 = *(v33 + 8);
    LOBYTE(v33) = *(v33 + 16);
    v81 = v34;
    v82 = v35;
    v83 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
    sub_21E1419F4();
    v74 = v78;
    v69 = v79;
    v65 = v80;
    *v8 = swift_getKeyPath();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v36 = type metadata accessor for VisualLookupCardView(0);
    v37 = type metadata accessor for IdentifiableURL();
    v38 = *(*(v37 - 8) + 56);
    v39 = v70;
    v38(v70, 1, 1, v37);
    v40 = v72;
    sub_21DF236C0(v39, v72, &qword_27CEA8668);
    sub_21E141704();
    sub_21DF23614(v39, &qword_27CEA8668);
    v38(v39, 1, 1, v37);
    sub_21DF236C0(v39, v40, &qword_27CEA8668);
    sub_21E141704();
    sub_21DF23614(v39, &qword_27CEA8668);
    v41 = &v8[*(v36 + 36)];
    *v41 = sub_21DFEF884;
    *(v41 + 1) = 0;
    v41[16] = 0;
    v42 = v36;
    v43 = &v8[*(v36 + 44)];
    v78 = 0x4061800000000000;
    sub_21E141704();
    v44 = v82;
    *v43 = v81;
    v43[1] = v44;
    v45 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
    *(v8 + 3) = v45;
    v46 = v45;
    [v46 setType_];
    sub_21DF3ED18(0, &qword_27CEA8680);
    v47 = sub_21E1422C4();
    [v46 setCardSections_];

    v48 = v69;
    *(v8 + 4) = v74;
    *(v8 + 5) = v48;
    v8[48] = v65;
    *&v8[*(v42 + 40)] = v71;
    v49 = [objc_opt_self() tertiarySystemFillColor];
    v50 = sub_21E141414();
    v51 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8648) + 36)];
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8660);
    v53 = v51 + *(v52 + 52);
    v54 = *(sub_21E13FCA4() + 20);
    v55 = *MEMORY[0x277CE0118];
    v56 = sub_21E140144();
    (*(*(v56 - 8) + 104))(&v53[v54], v55, v56);
    __asm { FMOV            V0.2D, #20.0 }

    *v53 = _Q0;
    *v51 = v50;
    *(v51 + *(v52 + 56)) = 256;
    v62 = sub_21E140914();
    v63 = &v8[*(v66 + 36)];
    *v63 = v62;
    *(v63 + 8) = xmmword_21E149150;
    *(v63 + 24) = xmmword_21E149150;
    v63[40] = 0;
    sub_21DF236C0(v8, v77, &qword_27CEA8638);
    swift_storeEnumTagMultiPayload();
    sub_21DFA75F8();
    sub_21DFA773C();
    sub_21E1402F4();
    return sub_21DF23614(v8, &qword_27CEA8638);
  }

  sub_21DFA8CBC(v74, &v64[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for VisualLookupSiriView);
  v25 = (*(v69 + 80) + 24) & ~*(v69 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v68;
  sub_21DFA7450(&v64[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v26 + v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8688);
  swift_getOpaqueTypeConformance2();
  v27 = v71;
  sub_21E141F64();
  v28 = sub_21E140914();
  v29 = v27 + *(v11 + 36);
  *v29 = v28;
  *(v29 + 8) = xmmword_21E149160;
  *(v29 + 24) = xmmword_21E149160;
  *(v29 + 40) = 0;
  sub_21DF236C0(v27, v16, &qword_27CEA8618);
  swift_storeEnumTagMultiPayload();
  sub_21DFA7684();
  sub_21E1402F4();
  sub_21DF236C0(v20, v77, &qword_27CEA8608);
  swift_storeEnumTagMultiPayload();
  sub_21DFA75F8();
  sub_21DFA773C();
  sub_21E1402F4();
  sub_21DF23614(v20, &qword_27CEA8608);
  v30 = v27;
  v31 = &qword_27CEA8618;
  return sub_21DF23614(v30, v31);
}

uint64_t sub_21DFA6D10(uint64_t a1, uint64_t a2)
{
  sub_21E141F84();
  v4 = type metadata accessor for VisualLookupSiriView();
  return MEMORY[0x223D527B0](a1, *(a2 + *(v4 + 28)));
}

unint64_t sub_21DFA6D78()
{
  result = qword_27CEA8528;
  if (!qword_27CEA8528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8520);
    sub_21DFA6E30();
    sub_21DF23E5C(&qword_27CEA73F8, &qword_27CEA73F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8528);
  }

  return result;
}

unint64_t sub_21DFA6E30()
{
  result = qword_27CEA8530;
  if (!qword_27CEA8530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8538);
    sub_21DFA6EE8();
    sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8530);
  }

  return result;
}

unint64_t sub_21DFA6EE8()
{
  result = qword_27CEA8540;
  if (!qword_27CEA8540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8548);
    sub_21DFA6F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8540);
  }

  return result;
}

unint64_t sub_21DFA6F74()
{
  result = qword_27CEA8550;
  if (!qword_27CEA8550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8558);
    sub_21DFA7000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8550);
  }

  return result;
}

unint64_t sub_21DFA7000()
{
  result = qword_27CEA8560;
  if (!qword_27CEA8560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8568);
    sub_21DFA708C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8560);
  }

  return result;
}

unint64_t sub_21DFA708C()
{
  result = qword_27CEA8570;
  if (!qword_27CEA8570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8578);
    sub_21DFA7148();
    sub_21DFA78B0(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8570);
  }

  return result;
}

unint64_t sub_21DFA7148()
{
  result = qword_27CEA8580;
  if (!qword_27CEA8580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8588);
    sub_21DFA7200();
    sub_21DF23E5C(&qword_27CEA85B0, &qword_27CEA85B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8580);
  }

  return result;
}

unint64_t sub_21DFA7200()
{
  result = qword_27CEA8590;
  if (!qword_27CEA8590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8598);
    sub_21DF23E5C(&qword_27CEA85A0, &qword_27CEA85A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8590);
  }

  return result;
}

uint64_t sub_21DFA72B8(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v3);
      if (v4)
      {

        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8690);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 != v2 || v16 >= &v19[16 * v17])
          {
            memmove(v16, v19, 16 * v17);
          }

          *(v2 + 2) = 0;
        }

        else
        {
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v20 = *(v2 + 3);
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v8 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v8)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v22;
  }

  return v2;
}

uint64_t sub_21DFA7450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualLookupSiriView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFA74B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VisualLookupSiriView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21DFA62D0(v4, a1);
}

unint64_t sub_21DFA756C()
{
  result = qword_27CEA85F8;
  if (!qword_27CEA85F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA85E8);
    sub_21DFA75F8();
    sub_21DFA773C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA85F8);
  }

  return result;
}

unint64_t sub_21DFA75F8()
{
  result = qword_27CEA8600;
  if (!qword_27CEA8600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8608);
    sub_21DFA7684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8600);
  }

  return result;
}

unint64_t sub_21DFA7684()
{
  result = qword_27CEA8610;
  if (!qword_27CEA8610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8618);
    sub_21DF23E5C(&qword_27CEA8620, &qword_27CEA8628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8610);
  }

  return result;
}

unint64_t sub_21DFA773C()
{
  result = qword_27CEA8630;
  if (!qword_27CEA8630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8638);
    sub_21DFA77C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8630);
  }

  return result;
}

unint64_t sub_21DFA77C8()
{
  result = qword_27CEA8640;
  if (!qword_27CEA8640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8648);
    sub_21DFA78B0(&qword_27CEA8650, type metadata accessor for VisualLookupCardView);
    sub_21DF23E5C(&qword_27CEA8658, &qword_27CEA8660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8640);
  }

  return result;
}

uint64_t sub_21DFA78B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DFA78F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VisualLookupSiriView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21DFA5F18(a1, v6, a2);
}

uint64_t sub_21DFA7978()
{
  type metadata accessor for VisualLookupSiriView();
  sub_21E13F734();

  return sub_21DFA61D8();
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for VisualLookupSiriView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = *(v1 + 20);
  v6 = sub_21E13D7E4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  sub_21DFA7448();

  return swift_deallocObject();
}

uint64_t sub_21DFA7BF0()
{
  type metadata accessor for VisualLookupSiriView();

  return sub_21DFA6258();
}

uint64_t sub_21DFA7C70()
{
  v1 = *(type metadata accessor for VisualLookupSiriView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21DFA6D10(v2, v3);
}

uint64_t sub_21DFA7CE4(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      *&v21[0] = v3;
      result = sub_21DFA7E94(v5, v21 + 8);
      v22 = v21[0];
      v23 = v21[1];
      v24 = v21[2];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8698);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 48;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[6 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 48 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + 48 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v22;
      v17 = v24;
      v6[1] = v23;
      v6[2] = v17;
      *v6 = v16;
      v6 += 3;
      v5 += 40;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v15 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v15)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21DFA7E94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_21DFA7EF8(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA86C8);
  MEMORY[0x28223BE20](v47);
  v46 = (v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v6 = v39 - v5;
  v7 = MEMORY[0x277D84F90];
  v45 = *(a1 + 16);
  if (v45)
  {
    v8 = v4;
    v9 = *(v4 + 80);
    v39[1] = v9;
    v40 = (v9 + 32) & ~v9;
    v10 = MEMORY[0x277D84F90] + v40;
    v11 = 0;
    v12 = 0;
    v44 = sub_21E13DD44();
    v13 = *(v44 - 8);
    v14 = *(v13 + 16);
    v42 = v13 + 16;
    v43 = v14;
    v15 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v41 = *(v13 + 72);
    v16 = v7;
    v39[0] = v8;
    while (1)
    {
      v19 = v46;
      v20 = *(v47 + 48);
      *v46 = v11;
      v43(v19 + v20, v15, v44);
      sub_21DF3DE9C(v19, v6, &qword_27CEA86C8);
      if (v12)
      {
        v7 = v16;
        v17 = v8;
        v18 = __OFSUB__(v12--, 1);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v21 = v16[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v22 = v6;
        v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA86D0);
        v25 = *(v8 + 72);
        v26 = v40;
        v7 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v7);
        if (!v25)
        {
          goto LABEL_34;
        }

        v28 = v27 - v26;
        if (v27 - v26 == 0x8000000000000000 && v25 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v25;
        v7[2] = v24;
        v7[3] = 2 * (v28 / v25);
        v31 = v7 + v26;
        v32 = v16[3] >> 1;
        v33 = v32 * v25;
        if (v16[2])
        {
          if (v7 < v16 || v31 >= v16 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v7 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v10 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v17 = v39[0];
        v6 = v22;
        v18 = __OFSUB__(v35, 1);
        v12 = v35 - 1;
        if (v18)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v11;
      sub_21DF3DE9C(v6, v10, &qword_27CEA86C8);
      v8 = v17;
      v10 += *(v17 + 72);
      v15 += v41;
      v16 = v7;
      if (v45 == v11)
      {
        goto LABEL_29;
      }
    }
  }

  v12 = 0;
LABEL_29:
  v36 = v7[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v18 = __OFSUB__(v37, v12);
    v38 = v37 - v12;
    if (v18)
    {
      goto LABEL_36;
    }

    v7[2] = v38;
  }
}

void sub_21DFA8240(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA86E8);
  MEMORY[0x28223BE20](v42);
  v41 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = MEMORY[0x277D84F90];
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v4;
    v8 = *(v4 + 80);
    v37 = v8;
    v38 = (v8 + 32) & ~v8;
    v9 = MEMORY[0x277D84F90] + v38;
    v10 = 0;
    v11 = 0;
    v12 = *(type metadata accessor for MapsDisambiguationViewItem(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v14 = v7;
    while (1)
    {
      v15 = v41;
      v16 = *(v42 + 48);
      *v41 = v10;
      sub_21DFA8CBC(v13, v15 + v16, type metadata accessor for MapsDisambiguationViewItem);
      v17 = v6;
      sub_21DF3DE9C(v15, v6, &qword_27CEA86E8);
      if (v11)
      {
        v44 = v14;
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CEA86F0);
        v21 = *(v43 + 72);
        v22 = v38;
        v44 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v44);
        if (!v21)
        {
          goto LABEL_35;
        }

        v24 = v23 - v22;
        if (v23 - v22 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v21;
        v27 = v44;
        *(v44 + 2) = v20;
        v27[3] = 2 * (v24 / v21);
        v28 = v27 + v22;
        v29 = v14[3] >> 1;
        v30 = v29 * v21;
        if (v14[2])
        {
          if (v27 < v14 || v28 >= v14 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v9 = &v28[v30];
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v6 = v17;
      v33 = __OFSUB__(v11--, 1);
      if (v33)
      {
        break;
      }

      ++v10;
      sub_21DF3DE9C(v17, v9, &qword_27CEA86E8);
      v9 += *(v32 + 72);
      v13 += v39;
      v7 = v44;
      v14 = v44;
      if (v40 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 0;
LABEL_29:
  v34 = v7[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v33 = __OFSUB__(v35, v11);
    v36 = v35 - v11;
    if (v33)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v7[2] = v36;
  }
}

uint64_t sub_21DFA859C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v4 = a3;
  v5 = a2;
  v6 = result;
  v7 = *(a3 + 16);
  if (v7 >= v3)
  {
    v8 = a2 - result;
  }

  else
  {
    v8 = *(a3 + 16);
  }

  if (v8)
  {
    if (v8 <= 0)
    {
      v9 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA86C0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v8;
      v9[3] = 2 * ((v10 - 32) / 24);
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9[3];

  if (v3 < 0)
  {
    goto LABEL_68;
  }

  v12 = v11 >> 1;
  v37 = v5;
  v38 = v9;
  if (!v8)
  {
    v16 = (v9 + 4);
    v18 = v6;
    if (v6 == v5)
    {
      goto LABEL_54;
    }

LABEL_27:
    if (v5 < v6)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v19 = v4 + 32;
    if (v18 <= v5)
    {
      v20 = v5;
    }

    else
    {
      v20 = v18;
    }

    v36 = v20;
    v21 = v18;
    while (v18 >= v6)
    {
      if (v20 == v21)
      {
        goto LABEL_62;
      }

      if (v7 == v8)
      {
        goto LABEL_54;
      }

      if (v8 >= v7)
      {
        goto LABEL_63;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_64;
      }

      v39 = *(v19 + 16 * v8);
      if (v12)
      {

        v22 = __OFSUB__(v12--, 1);
        if (v22)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v23 = *(v38 + 3);
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_66;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA86C0);
        v26 = swift_allocObject();
        v27 = (_swift_stdlib_malloc_size(v26) - 32) / 24;
        *(v26 + 2) = v25;
        *(v26 + 3) = 2 * v27;
        v28 = v26 + 32;
        v29 = *(v38 + 3) >> 1;
        v16 = &v26[24 * v29 + 32];
        v30 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;
        if (*(v38 + 2))
        {
          v31 = v38 + 32;
          v5 = v37;
          if (v26 != v38 || v28 >= &v31[24 * v29])
          {
            memmove(v28, v31, 24 * v29);
          }

          *(v38 + 2) = 0;

          v38 = v26;
          v20 = v36;
          v22 = __OFSUB__(v30, 1);
          v12 = v30 - 1;
          if (v22)
          {
            goto LABEL_65;
          }
        }

        else
        {

          v38 = v26;
          v20 = v36;
          v5 = v37;
          v22 = __OFSUB__(v30, 1);
          v12 = v30 - 1;
          if (v22)
          {
            goto LABEL_65;
          }
        }
      }

      *v16 = v21;
      *(v16 + 8) = v39;
      v16 += 24;
      ++v8;
      if (v5 == ++v21)
      {
        goto LABEL_54;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v5 < v6)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v13 = 0;
  v14 = 0;
  v35 = v4;
  v15 = v4 + 32;
  v12 -= v8;
  v16 = (v9 + 7);
  do
  {
    if (v3 == v13)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v7 == v13)
    {
      goto LABEL_59;
    }

    if (v14)
    {
      goto LABEL_60;
    }

    v17 = *(v15 + 16 * v13);
    *(v16 - 24) = v6 + v13;
    *(v16 - 16) = v17;
    if (v8 - 1 == v13)
    {
      goto LABEL_24;
    }

    v14 = __OFADD__(v13 + 1, 1);

    ++v13;
    v16 += 24;
  }

  while (v6 + v13 >= v6);
  __break(1u);
LABEL_24:

  v18 = v6 + v13 + 1;
  v4 = v35;
  v5 = v37;
  if (v18 != v37)
  {
    goto LABEL_27;
  }

LABEL_54:
  result = v38;
  v32 = *(v38 + 3);
  if (v32 < 2)
  {
    return result;
  }

  v33 = v32 >> 1;
  v22 = __OFSUB__(v33, v12);
  v34 = v33 - v12;
  if (v22)
  {
LABEL_71:
    __break(1u);
    return result;
  }

  *(v38 + 2) = v34;
  return result;
}

void sub_21DFA8974(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA86B0);
  MEMORY[0x28223BE20](v47);
  v46 = (v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v6 = v39 - v5;
  v7 = MEMORY[0x277D84F90];
  v45 = *(a1 + 16);
  if (v45)
  {
    v8 = v4;
    v9 = *(v4 + 80);
    v39[1] = v9;
    v40 = (v9 + 32) & ~v9;
    v10 = MEMORY[0x277D84F90] + v40;
    v11 = 0;
    v12 = 0;
    v44 = sub_21E13F064();
    v13 = *(v44 - 8);
    v14 = *(v13 + 16);
    v42 = v13 + 16;
    v43 = v14;
    v15 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v41 = *(v13 + 72);
    v16 = v7;
    v39[0] = v8;
    while (1)
    {
      v19 = v46;
      v20 = *(v47 + 48);
      *v46 = v11;
      v43(v19 + v20, v15, v44);
      sub_21DF3DE9C(v19, v6, &qword_27CEA86B0);
      if (v12)
      {
        v7 = v16;
        v17 = v8;
        v18 = __OFSUB__(v12--, 1);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v21 = v16[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v22 = v6;
        v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA86B8);
        v25 = *(v8 + 72);
        v26 = v40;
        v7 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v7);
        if (!v25)
        {
          goto LABEL_34;
        }

        v28 = v27 - v26;
        if (v27 - v26 == 0x8000000000000000 && v25 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v25;
        v7[2] = v24;
        v7[3] = 2 * (v28 / v25);
        v31 = v7 + v26;
        v32 = v16[3] >> 1;
        v33 = v32 * v25;
        if (v16[2])
        {
          if (v7 < v16 || v31 >= v16 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v7 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v10 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v17 = v39[0];
        v6 = v22;
        v18 = __OFSUB__(v35, 1);
        v12 = v35 - 1;
        if (v18)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v11;
      sub_21DF3DE9C(v6, v10, &qword_27CEA86B0);
      v8 = v17;
      v10 += *(v17 + 72);
      v15 += v41;
      v16 = v7;
      if (v45 == v11)
      {
        goto LABEL_29;
      }
    }
  }

  v12 = 0;
LABEL_29:
  v36 = v7[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v18 = __OFSUB__(v37, v12);
    v38 = v37 - v12;
    if (v18)
    {
      goto LABEL_36;
    }

    v7[2] = v38;
  }
}

uint64_t sub_21DFA8CBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DFA8D24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21DFA8D6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21DFA8DB4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_21DFA8E60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  sub_21E1419F4();
  return v1;
}

uint64_t sub_21DFA8EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = *(a1 + 16);
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13FB54();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  (*(v2 + 48))(v11);
  v14 = *v2;
  v15 = sub_21DFA8E60();
  v16 = *(a1 + 24);
  sub_21DFA9120(v15, v18, v17 & 1, *(v2 + 32), *(v2 + 40), v4, v16, v14);

  (*(v24 + 8))(v6, v4);
  v19 = sub_21DFA9224();
  v27 = v16;
  v28 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_21DFE2A0C(v9, v7, WitnessTable);
  v21 = *(v25 + 8);
  v21(v9, v7);
  sub_21DFE2A0C(v13, v7, WitnessTable);
  return (v21)(v13, v7);
}

uint64_t sub_21DFA9120(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v25 = a4;
  type metadata accessor for VIUIPeriodicOpacityAnimator();

  sub_21E141704();
  v15 = v18;
  v16 = v19;
  v18 = a8;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = v15;
  v23 = v16;
  v24 = a5;

  MEMORY[0x223D51B40](&v18, a6, &type metadata for BreathingOpacityModifier, a7);
}

unint64_t sub_21DFA9224()
{
  result = qword_27CEA8778;
  if (!qword_27CEA8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8778);
  }

  return result;
}

uint64_t sub_21DFA9278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21DFA92C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21DFA9338(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8780);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v16 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8788);
  sub_21E141714();
  v7 = v18;
  v8 = *(v1 + 48);
  swift_getKeyPath();
  *&v16 = v7;
  sub_21DFA9D3C(&qword_27CEA8790, type metadata accessor for VIUIPeriodicOpacityAnimator);
  sub_21E13D3C4();

  v9 = *(v7 + 56);

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(v9 + 16))
  {
    v11 = *(v9 + 8 * v8 + 32);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8798);
    (*(*(v12 - 8) + 16))(v6, a1, v12);
    *&v6[*(v4 + 36)] = fmax(fmin(v11, 1.0), 0.2);
    v16 = *(v2 + 8);
    v17 = *(v2 + 24);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
    MEMORY[0x223D52200](&v18, v13);
    v14 = swift_allocObject();
    v15 = *(v2 + 16);
    *(v14 + 16) = *v2;
    *(v14 + 32) = v15;
    *(v14 + 48) = *(v2 + 32);
    *(v14 + 64) = *(v2 + 48);
    sub_21DFA9B28(v2, &v16);
    sub_21DFA9B60();
    sub_21E141324();

    return sub_21DFA9C18(v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_21DFA95EC(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    return sub_21DFA9660();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8788);
  sub_21E141714();
  sub_21E06CD74();
}

uint64_t sub_21DFA9660()
{
  v1 = sub_21E141E74();
  v24 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E141E94();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E141EB4();
  v21 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_21DFA9C80();
  v19 = sub_21E1425C4();
  sub_21E141EA4();
  sub_21E141EC4();
  v20 = *(v8 + 8);
  v20(v10, v7);
  v14 = swift_allocObject();
  v15 = *(v0 + 16);
  *(v14 + 16) = *v0;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v0 + 32);
  *(v14 + 64) = *(v0 + 48);
  aBlock[4] = sub_21DFA9D1C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E079CD4;
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);
  sub_21DFA9B28(v0, v25);

  sub_21E141E84();
  v25[0] = MEMORY[0x277D84F90];
  sub_21DFA9D3C(&qword_280F68CE8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E70);
  sub_21DF23E5C(&qword_280F68CA8, &qword_27CEA6E70);
  sub_21E142764();
  v17 = v19;
  MEMORY[0x223D52DF0](v13, v6, v3, v16);
  _Block_release(v16);

  (*(v24 + 8))(v3, v1);
  (*(v22 + 8))(v6, v23);
  return (v20)(v13, v21);
}

void *sub_21DFA9A40(uint64_t a1)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  result = MEMORY[0x223D52200](&v4, v2);
  if (v4 == 1)
  {
    v5 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8788);
    sub_21E141714();
    sub_21E06CB7C();
  }

  return result;
}

unint64_t sub_21DFA9B60()
{
  result = qword_27CEA87A0;
  if (!qword_27CEA87A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8780);
    sub_21DF23E5C(&qword_27CEA87A8, &qword_27CEA8798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA87A0);
  }

  return result;
}

uint64_t sub_21DFA9C18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DFA9C80()
{
  result = qword_280F68C78;
  if (!qword_280F68C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F68C78);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21DFA9D3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21DFA9DCC()
{
  sub_21E13D834();
  if (v0 <= 0x3F)
  {
    sub_21DFA9E70();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21DFA9E70()
{
  if (!qword_280F68CC8)
  {
    type metadata accessor for WaypointLayout.Element(255);
    v0 = sub_21E142344();
    if (!v1)
    {
      atomic_store(v0, &qword_280F68CC8);
    }
  }
}

uint64_t sub_21DFA9F84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21E13D344();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double sub_21DFA9FEC(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_21DFAA018(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21E13F304();
  return sub_21DF4F628;
}

uint64_t sub_21DFAA0E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DFAA130@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21E13D7F4();
  type metadata accessor for WaypointLayout.Element(0);
  if ((v4 & 1) == 0)
  {
    ITKMultiplyPointBySize();
    ITKAddPoints();
  }

  ITKMultiplyPointBySize();
  ITKClampPointInRect();
  sub_21E142634();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(type metadata accessor for WaypointLayout.WaypointFrame(0) + 20);
  v14 = sub_21E13D344();
  result = (*(*(v14 - 8) + 16))(&a2[v13], a1, v14);
  *a2 = v6;
  *(a2 + 1) = v8;
  *(a2 + 2) = v10;
  *(a2 + 3) = v12;
  return result;
}

size_t sub_21DFAA298(unint64_t a1)
{
  v51 = sub_21E13ED04();
  v2 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WaypointLayout.Element(0);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  if (a1 >> 62)
  {
    v11 = sub_21E1427B4();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v53 = MEMORY[0x277D84F90];
  result = sub_21DF5BF24(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = v53;
    v14 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      v48 = (v2 + 16);
      v16 = (v2 + 8);
      do
      {
        v17 = v14;
        v18 = MEMORY[0x223D530F0](v15);
        v19 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id;
        v20 = sub_21E13D344();
        (*(*(v20 - 8) + 16))(v10, v18 + v19, v20);
        swift_getKeyPath();
        v52 = v18;
        sub_21DFAA0E8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
        sub_21E13D3C4();

        v21 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners;
        swift_beginAccess();
        v22 = v51;
        (*v48)(v4, v18 + v21, v51);
        sub_21E13ECD4();
        v24 = v23;
        v26 = v25;
        swift_unknownObjectRelease();
        (*v16)(v4, v22);
        v27 = &v10[*(v50 + 20)];
        *v27 = v24;
        *(v27 + 1) = v26;
        v53 = v12;
        v29 = *(v12 + 16);
        v28 = *(v12 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_21DF5BF24(v28 > 1, v29 + 1, 1);
          v12 = v53;
        }

        ++v15;
        *(v12 + 16) = v29 + 1;
        sub_21DFAB278(v10, v12 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v29);
        v14 = v17;
      }

      while (v11 != v15);
    }

    else
    {
      v30 = (a1 + 32);
      v31 = sub_21E13D344();
      v32 = *(v31 - 8);
      v47 = (v2 + 16);
      v48 = v31;
      v33 = *(v32 + 16);
      v45 = v32 + 16;
      v46 = v33;
      v34 = (v2 + 8);
      do
      {
        v35 = *v30;
        v46(v7, *v30 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v48);
        swift_getKeyPath();
        v52 = v35;
        sub_21DFAA0E8(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

        sub_21E13D3C4();

        v36 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners;
        swift_beginAccess();
        v37 = v51;
        (*v47)(v4, v35 + v36, v51);
        sub_21E13ECD4();
        v39 = v38;
        v41 = v40;

        (*v34)(v4, v37);
        v42 = &v7[*(v50 + 20)];
        *v42 = v39;
        *(v42 + 1) = v41;
        v53 = v12;
        v44 = *(v12 + 16);
        v43 = *(v12 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_21DF5BF24(v43 > 1, v44 + 1, 1);
          v12 = v53;
        }

        *(v12 + 16) = v44 + 1;
        sub_21DFAB278(v7, v12 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v44);
        ++v30;
        --v11;
      }

      while (v11);
    }

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DFAA7E4(uint64_t (**a1)(char *, char *, uint64_t), double a2, double a3, double a4, double a5)
{
  v78 = a1;
  v10 = type metadata accessor for WaypointLayout.WaypointFrame(0);
  v67 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA87B0);
  v74 = *(v81 - 8);
  MEMORY[0x28223BE20](v81 - 8);
  v76 = &v65 - v12;
  v80 = sub_21E13F7B4();
  v73 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v72 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA87B8);
  MEMORY[0x28223BE20](v16 - 8);
  v65 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v65 - v19);
  v21 = sub_21E13F884();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA87C0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v65 - v26;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA87C8) - 8;
  MEMORY[0x28223BE20](v77);
  v29 = &v65 - v28;
  v30 = type metadata accessor for WaypointLayout(0);
  v31 = *(v5 + v30[5]);
  v32 = (v5 + v30[6]);
  v33 = *(v5 + v30[7]) * 50.0;
  ITKSubtractSizes();
  v34 = v32[1];
  v75 = *v32;
  v71 = v34;
  ITKRectFromAddingSize();
  v94[0] = v35;
  v94[1] = v36;
  v94[2] = v37;
  v94[3] = v38;
  v83 = v5;
  v84 = a2;
  v85 = a3;
  v86 = a4;
  v87 = a5;
  v89 = v71;
  v88 = v75;
  v90 = v94;
  v91 = v33;
  v92 = v33;
  v39 = sub_21E0B0080(sub_21DFAB10C, v82, v31);
  (*(v22 + 16))(v27, v78, v21);
  (*(v22 + 32))(v24, v27, v21);
  v40 = MEMORY[0x277CDF7F8];
  sub_21DFAA0E8(&qword_27CEA87D0, MEMORY[0x277CDF7F8]);
  sub_21E142274();
  v69 = *(v77 + 44);
  *&v29[v69] = 0;
  v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA87D8) + 36);
  v41 = v65;
  v42 = sub_21DFAA0E8(&qword_27CEA7678, v40);
  *&v75 = 0;
  *&v71 = v73 + 2;
  v78 = (v73 + 4);
  v43 = (v74 + 56);
  v44 = (v74 + 48);
  ++v73;
  v74 = v21;
  v70 = v42;
  v68 = v44;
  while (1)
  {
    sub_21E142504();
    if (*&v29[v77] == v94[0])
    {
      v45 = 1;
      goto LABEL_7;
    }

    v46 = v43;
    v47 = v39;
    v48 = v29;
    v49 = v20;
    v50 = v41;
    v51 = sub_21E142524();
    v52 = v72;
    v53 = v80;
    (*v71)(v72);
    v51(v94, 0);
    sub_21E142514();
    v54 = *(v81 + 48);
    v55 = v76;
    v56 = v75;
    *v76 = v75;
    result = (*v78)(&v55[v54], v52, v53);
    v58 = __OFADD__(v56, 1);
    v59 = v56 + 1;
    if (v58)
    {
      break;
    }

    *&v75 = v59;
    *&v48[v69] = v59;
    v41 = v50;
    sub_21DF3DE9C(v76, v50, &qword_27CEA87B0);
    v45 = 0;
    v20 = v49;
    v29 = v48;
    v39 = v47;
    v43 = v46;
    v44 = v68;
LABEL_7:
    v60 = v81;
    (*v43)(v41, v45, 1, v81);
    sub_21DF3DE9C(v41, v20, &qword_27CEA87B8);
    if ((*v44)(v20, 1, v60) == 1)
    {
      sub_21DFAB150(v29);
    }

    v61 = *v20;
    result = (*v78)(v79, v20 + *(v81 + 48), v80);
    if (v61 < *(v39 + 16))
    {
      if (v61 < 0)
      {
        goto LABEL_13;
      }

      v62 = v66;
      sub_21DFAB1B8(v39 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v61, v66);
      sub_21E142654();
      sub_21E141DE4();
      sub_21E13FC54();
      LOBYTE(v94[0]) = v63 & 1;
      v93 = v64 & 1;
      sub_21E13F794();
      sub_21DFAB21C(v62);
    }

    (*v73)(v79, v80);
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21DFAB150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA87C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DFAB1B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaypointLayout.WaypointFrame(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFAB21C(uint64_t a1)
{
  v2 = type metadata accessor for WaypointLayout.WaypointFrame(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DFAB278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaypointLayout.Element(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFAB330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21DFAB478(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v20 = a1;
  v21 = a2;
  v4 = sub_21E142174();
  MEMORY[0x28223BE20](v4 - 8);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13CFE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E13CFC4();
  MEMORY[0x28223BE20](v10);
  sub_21E13D024();
  swift_allocObject();
  sub_21E13D014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA87F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21E147C80;
  sub_21E13CFB4();
  sub_21E13CFA4();
  v24 = v11;
  sub_21DFB19E8(&qword_27CEA87F8, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8800);
  sub_21DFAC274();
  sub_21E142764();
  sub_21E13CFD4();
  (*(v7 + 104))(v9, *MEMORY[0x277CC8778], v6);
  sub_21E13CFF4();
  v20(0);
  sub_21DFB19E8(v21, v22);
  v12 = sub_21E13D004();
  v14 = v13;
  sub_21E142164();
  v15 = sub_21E142134();
  if (v16)
  {
    v17 = v15;
    sub_21DFA15AC(v12, v14);

    return v17;
  }

  else
  {
    sub_21DFA15AC(v12, v14);

    return 0;
  }
}

uint64_t sub_21DFAB858(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v22 = a3;
  v23 = a4;
  v21 = a2;
  v5 = sub_21E142174();
  MEMORY[0x28223BE20](v5 - 8);
  v20[1] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13CFE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13CFC4();
  MEMORY[0x28223BE20](v11);
  v25 = a1;
  sub_21E13D024();
  swift_allocObject();
  sub_21E13D014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA87F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21E147C80;
  sub_21E13CFB4();
  sub_21E13CFA4();
  v24 = v12;
  sub_21DFB19E8(&qword_27CEA87F8, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8800);
  sub_21DFAC274();
  sub_21E142764();
  sub_21E13CFD4();
  (*(v8 + 104))(v10, *MEMORY[0x277CC8778], v7);
  sub_21E13CFF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21);
  v23();
  v13 = sub_21E13D004();
  v15 = v14;
  sub_21E142164();
  v16 = sub_21E142134();
  if (v17)
  {
    v18 = v16;
    sub_21DFA15AC(v13, v15);

    return v18;
  }

  else
  {
    sub_21DFA15AC(v13, v15);

    return 0;
  }
}

uint64_t sub_21DFABBC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E142174();
  MEMORY[0x28223BE20](v4 - 8);
  v19[1] = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13CFE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E13CFC4();
  MEMORY[0x28223BE20](v10);
  v19[4] = a1;
  v19[5] = a2;
  sub_21E13D024();
  swift_allocObject();
  sub_21E13D014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA87F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21E147C80;
  sub_21E13CFB4();
  sub_21E13CFA4();
  v19[3] = v11;
  sub_21DFB19E8(&qword_27CEA87F8, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8800);
  sub_21DFAC274();
  sub_21E142764();
  sub_21E13CFD4();
  (*(v7 + 104))(v9, *MEMORY[0x277CC8778], v6);
  sub_21E13CFF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8878);
  sub_21DFB1918();
  v12 = sub_21E13D004();
  v14 = v13;
  sub_21E142164();
  v15 = sub_21E142134();
  if (v16)
  {
    v17 = v15;
    sub_21DFA15AC(v12, v14);

    return v17;
  }

  else
  {
    sub_21DFA15AC(v12, v14);

    return 0;
  }
}

Swift::String __swiftcall Encodable.prettyPrintedJSON()()
{
  v20 = v0;
  v1 = sub_21E142174();
  MEMORY[0x28223BE20](v1 - 8);
  v19 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21E13CFE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13CFC4();
  MEMORY[0x28223BE20](v7);
  sub_21E13D024();
  swift_allocObject();
  sub_21E13D014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA87F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21E147C80;
  sub_21E13CFB4();
  sub_21E13CFA4();
  v21 = v8;
  sub_21DFB19E8(&qword_27CEA87F8, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8800);
  sub_21DFAC274();
  sub_21E142764();
  sub_21E13CFD4();
  (*(v4 + 104))(v6, *MEMORY[0x277CC8778], v3);
  sub_21E13CFF4();
  v9 = sub_21E13D004();
  v11 = v10;
  sub_21E142164();
  v12 = sub_21E142134();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    sub_21DFA15AC(v9, v11);

    v16 = v15;
    v17 = v14;
  }

  else
  {
    sub_21DFA15AC(v9, v11);

    v17 = 0;
    v16 = 0xE000000000000000;
  }

  result._object = v16;
  result._countAndFlagsBits = v17;
  return result;
}

unint64_t sub_21DFAC274()
{
  result = qword_27CEA8808;
  if (!qword_27CEA8808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8808);
  }

  return result;
}

uint64_t static ViewAnnotator.getPresentedViewAnnotatedContent()@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  p_isa = sub_21E13F1B4();
  v1 = *(p_isa - 1);
  MEMORY[0x28223BE20](p_isa);
  v3 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v60 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8810);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v60 - v11;
  v12 = sub_21E13D384();
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E1420E4();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_21E13D524();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v60 - v19);
  v21 = [objc_opt_self() sharedApplication];
  v22 = [objc_opt_self() mainScreen];
  v23 = [v21 _keyWindowForScreen_];

  if (!v23 || (v24 = [v23 rootViewController], v23, !v24))
  {
    sub_21E13EBC4();
    v42 = sub_21E13F1A4();
    v43 = sub_21E142564();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_21DF05000, v42, v43, "Failed to get root view controller in screen's bounds", v44, 2u);
      MEMORY[0x223D540B0](v44, -1, -1);
    }

    (*(v1 + 8))(v3, p_isa);
    goto LABEL_13;
  }

  sub_21DF3ED18(0, &qword_27CEA8818);
  v25 = v24;
  v26 = static UIApplication.topViewController(_:)(v24);

  if (!v26)
  {
    sub_21E13EBC4();
    v46 = sub_21E13F1A4();
    v47 = sub_21E142564();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_21DF05000, v46, v47, "Failed to get presented view controller from active scene", v48, 2u);
      MEMORY[0x223D540B0](v48, -1, -1);
      v49 = v25;
    }

    else
    {
      v49 = v46;
      v46 = v25;
    }

    (*(v1 + 8))(v6, p_isa);
    goto LABEL_13;
  }

  v27 = [v26 view];
  if (!v27)
  {
    v54 = v25;
    sub_21E13EBC4();
    v55 = sub_21E13F1A4();
    v56 = sub_21E142564();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v26;
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_21DF05000, v55, v56, "Failed to get view from presented view controller ", v58, 2u);
      MEMORY[0x223D540B0](v58, -1, -1);
      v59 = v54;
      v54 = v57;
    }

    else
    {
      v59 = v55;
      v55 = v26;
    }

    (*(v1 + 8))(v9, p_isa);
LABEL_13:
    v45 = sub_21E13D504();
    return (*(*(v45 - 8) + 56))(v68, 1, 1, v45);
  }

  v28 = v27;
  [v27 bounds];
  v29 = [v28 _imageFromRect_];
  if (v29 && (v30 = v29, v31 = UIImagePNGRepresentation(v29), v30, v31))
  {
    v62 = v26;
    p_isa = &v25->isa;
    v32 = sub_21E13D284();
    v34 = v33;

    *v20 = v32;
    v20[1] = v34;
    v35 = v64;
    v36 = v65;
    (*(v64 + 104))(v20, *MEMORY[0x277D08640], v65);
    (*(v35 + 16))(v17, v20, v36);
    v61 = v32;
    sub_21DFAD958(v32, v34);
    sub_21E142084();
    sub_21DF3ED18(0, &qword_280F68C20);
    if (!sub_21E1426B4())
    {
      v37 = [objc_opt_self() mainBundle];
    }

    sub_21E13D374();
    sub_21E142184();
    v38 = sub_21E13D4F4();
    (*(*(v38 - 8) + 56))(v66, 1, 1, v38);
    v39 = v68;
    sub_21E13D4E4();

    sub_21DFA15AC(v61, v34);
    (*(v35 + 8))(v20, v36);
    v40 = sub_21E13D504();
    return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  }

  else
  {

    v50 = sub_21E13D504();
    v51 = *(*(v50 - 8) + 56);
    v52 = v50;
    v53 = v68;

    return v51(v53, 1, 1, v52);
  }
}

void *static UIApplication.topViewController(_:)(void *a1)
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    v5 = [v3 visibleViewController];
    v6 = static UIApplication.topViewController(_:)(v5);

    return v6;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
LABEL_8:
    v14 = [v1 presentedViewController];
    if (v14)
    {
      v15 = v14;
      v16 = v14;
      v1 = static UIApplication.topViewController(_:)(v15);

      return v1;
    }

LABEL_10:
    v17 = v1;
    return v1;
  }

  v9 = v8;
  v10 = v1;
  v11 = [v9 selectedViewController];
  if (!v11)
  {

    goto LABEL_8;
  }

  v12 = v11;
  v13 = v11;
  v1 = static UIApplication.topViewController(_:)(v12);

  return v1;
}

uint64_t static ViewAnnotator.getPresentedViewAnnotatedContentAsync()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_21E13F1B4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8820);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DFACDC4, 0, 0);
}

uint64_t sub_21DFACDC4()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = sub_21E1423F4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_21E1423C4();
  v4 = sub_21E1423B4();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v2;
  v7 = sub_21DFAD560(0, 0, v1, &unk_21E149798, v5);
  v0[12] = v7;
  v8 = swift_task_alloc();
  v0[13] = v8;
  v9 = sub_21E13D504();
  v0[14] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8828);
  v0[15] = v10;
  *v8 = v0;
  v8[1] = sub_21DFACF50;
  v11 = v0[10];
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v11, v7, v9, v10, v12);
}

uint64_t sub_21DFACF50()
{

  return MEMORY[0x2822009F8](sub_21DFAD04C, 0, 0);
}

uint64_t sub_21DFAD04C()
{
  sub_21DF236C0(v0[10], v0[9], &qword_27CEA8820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[9];
    v2 = *v1;
    v0[2] = *v1;
    swift_willThrowTypedImpl();
    sub_21E13EBC4();
    v3 = v2;
    v4 = sub_21E13F1A4();
    v5 = sub_21E142564();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v2;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_21DF05000, v4, v5, "Failed to capture presented view content: %@", v6, 0xCu);
      sub_21DF23614(v7, &unk_27CEAC540);
      MEMORY[0x223D540B0](v7, -1, -1);
      MEMORY[0x223D540B0](v6, -1, -1);
    }

    v10 = v0[14];
    v11 = v0[10];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    v15 = v0[3];

    (*(v13 + 8))(v12, v14);
    sub_21DF23614(v11, &qword_27CEA8820);
    (*(*(v10 - 8) + 56))(v15, 1, 1, v10);
  }

  else
  {
    v16 = v0[14];
    v17 = v0[9];
    v18 = v0[3];
    sub_21DF23614(v0[10], &qword_27CEA8820);

    v19 = *(v16 - 8);
    (*(v19 + 32))(v18, v17, v16);
    (*(v19 + 56))(v18, 0, 1, v16);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_21DFAD33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D28);
  v4[4] = swift_task_alloc();
  sub_21E1423C4();
  v4[5] = sub_21E1423B4();
  v6 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DFAD40C, v6, v5);
}

uint64_t sub_21DFAD40C()
{
  v1 = v0[4];

  static ViewAnnotator.getPresentedViewAnnotatedContent()(v1);
  v2 = sub_21E13D504();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21DF23614(v0[4], &qword_27CEA6D28);
    sub_21DFB1994();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[4], v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_21DFAD560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21DF236C0(a3, v22 - v9, &qword_27CEAD980);
  v11 = sub_21E1423F4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21DF23614(v10, &qword_27CEAD980);
  }

  else
  {
    sub_21E1423E4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21E142364();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_21E1421D4() + 32;
      sub_21E13D504();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_21DF23614(a3, &qword_27CEAD980);

      return v20;
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

  sub_21DF23614(a3, &qword_27CEAD980);
  sub_21E13D504();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t FeedbackControllerActionsError.hashValue.getter()
{
  sub_21E142C14();
  MEMORY[0x223D53460](0);
  return sub_21E142C44();
}

uint64_t sub_21DFAD8AC()
{
  sub_21E142C14();
  MEMORY[0x223D53460](0);
  return sub_21E142C44();
}

uint64_t sub_21DFAD918()
{
  sub_21E142C14();
  MEMORY[0x223D53460](0);
  return sub_21E142C44();
}

uint64_t sub_21DFAD958(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21DFAD9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21DF4AA04;

  return sub_21DFAD33C(a1, v4, v5, v6);
}

uint64_t sub_21DFADA60(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_21DFADAC0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *_s20VisualIntelligenceUI13ViewAnnotatorC16extraAnnotations3for6resultSay15FeedbackService15FBKSInteractionC16AnnotatedContentVG0aB4Core13BuiltInActionOSg_SSSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v177 = a2;
  v178 = a3;
  v183 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8810);
  MEMORY[0x28223BE20](v3 - 8);
  v180 = &v146 - v4;
  v5 = sub_21E13D384();
  MEMORY[0x28223BE20](v5 - 8);
  v179 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E1420E4();
  MEMORY[0x28223BE20](v7 - 8);
  v166 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v152 = &v146 - v10;
  MEMORY[0x28223BE20](v11);
  v157 = &v146 - v12;
  MEMORY[0x28223BE20](v13);
  v150 = &v146 - v14;
  MEMORY[0x28223BE20](v15);
  v149 = &v146 - v16;
  v17 = sub_21E13D524();
  v175 = *(v17 - 8);
  v176 = v17;
  MEMORY[0x28223BE20](v17);
  v168 = (&v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v165 = (&v146 - v20);
  MEMORY[0x28223BE20](v21);
  v167 = (&v146 - v22);
  MEMORY[0x28223BE20](v23);
  v151 = (&v146 - v24);
  MEMORY[0x28223BE20](v25);
  v27 = (&v146 - v26);
  v174 = sub_21E13D504();
  v181 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v29 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v155 = &v146 - v31;
  MEMORY[0x28223BE20](v32);
  v154 = &v146 - v33;
  MEMORY[0x28223BE20](v34);
  v153 = &v146 - v35;
  MEMORY[0x28223BE20](v36);
  v158 = &v146 - v37;
  MEMORY[0x28223BE20](v38);
  v156 = &v146 - v39;
  MEMORY[0x28223BE20](v40);
  v162 = &v146 - v41;
  MEMORY[0x28223BE20](v42);
  v161 = &v146 - v43;
  MEMORY[0x28223BE20](v44);
  v148 = &v146 - v45;
  MEMORY[0x28223BE20](v46);
  v159 = &v146 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v146 - v49;
  v51 = sub_21E13D994();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v164 = &v146 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v163 = &v146 - v55;
  MEMORY[0x28223BE20](v56);
  v160 = &v146 - v57;
  MEMORY[0x28223BE20](v58);
  v60 = &v146 - v59;
  MEMORY[0x28223BE20](v61);
  v63 = &v146 - v62;
  MEMORY[0x28223BE20](v64);
  v66 = &v146 - v65;
  sub_21DF236C0(v183, v50, &qword_27CEA6D98);
  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_21DF23614(v50, &qword_27CEA6D98);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v52 + 32))(v66, v50, v51);
    v68 = *(v52 + 16);
    v172 = v52 + 16;
    v173 = v66;
    v171 = v68;
    v68(v63, v66, v51);
    v169 = *(v52 + 88);
    v170 = v52 + 88;
    v69 = v169(v63, v51);
    v70 = *MEMORY[0x277D78F60];
    v182 = *(v52 + 8);
    v183 = v52 + 8;
    v182(v63, v51);
    v71 = MEMORY[0x277D08638];
    v147 = v29;
    if (v69 == v70)
    {
      v72 = v177;
      if (!v178)
      {
        v72 = 0;
      }

      v73 = 0xE000000000000000;
      if (v178)
      {
        v73 = v178;
      }

      *v27 = v72;
      v27[1] = v73;
      (*(v175 + 104))(v27, *v71, v176);

      sub_21E142084();
      sub_21DF3ED18(0, &qword_280F68C20);
      if (!sub_21E1426B4())
      {
        v74 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      sub_21E142184();
      v75 = *MEMORY[0x277D08610];
      v76 = sub_21E13D4F4();
      v77 = *(v76 - 8);
      v78 = v180;
      (*(v77 + 104))(v180, v75, v76);
      (*(v77 + 56))(v78, 0, 1, v76);
      v79 = v159;
      sub_21E13D4E4();
      v80 = v148;
      v81 = v174;
      (*(v181 + 16))(v148, v79, v174);
      v67 = sub_21E06A5A8(0, 1, 1, MEMORY[0x277D84F90]);
      v83 = v67[2];
      v82 = v67[3];
      if (v83 >= v82 >> 1)
      {
        v67 = sub_21E06A5A8(v82 > 1, v83 + 1, 1, v67);
      }

      v84 = v181;
      (*(v181 + 8))(v159, v81);
      v67[2] = v83 + 1;
      (*(v84 + 32))(v67 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v83, v80, v81);
    }

    else
    {
      v67 = MEMORY[0x277D84F90];
      v81 = v174;
    }

    v85 = v167;
    v86 = v173;
    v171(v60, v173, v51);
    v87 = v169(v60, v51);
    v88 = *MEMORY[0x277D78F70];
    v182(v60, v51);
    if (v87 == v88)
    {
      v89 = v177;
      if (!v178)
      {
        v89 = 0;
      }

      v90 = 0xE000000000000000;
      if (v178)
      {
        v90 = v178;
      }

      v91 = v151;
      *v151 = v89;
      v91[1] = v90;
      (*(v175 + 104))(v91, *MEMORY[0x277D08638], v176);

      sub_21E142084();
      sub_21DF3ED18(0, &qword_280F68C20);
      if (!sub_21E1426B4())
      {
        v92 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      v159 = sub_21E142184();
      v93 = *MEMORY[0x277D08610];
      v94 = sub_21E13D4F4();
      v95 = *(v94 - 8);
      v96 = v180;
      (*(v95 + 104))(v180, v93, v94);
      (*(v95 + 56))(v96, 0, 1, v94);
      v97 = v161;
      sub_21E13D4E4();
      v98 = v181;
      v81 = v174;
      (*(v181 + 16))(v162, v97, v174);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_21E06A5A8(0, v67[2] + 1, 1, v67);
      }

      v100 = v67[2];
      v99 = v67[3];
      v86 = v173;
      v85 = v167;
      if (v100 >= v99 >> 1)
      {
        v67 = sub_21E06A5A8(v99 > 1, v100 + 1, 1, v67);
      }

      (*(v98 + 8))(v161, v81);
      v67[2] = v100 + 1;
      (*(v98 + 32))(v67 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v100, v162, v81);
    }

    else
    {
      v98 = v181;
    }

    v101 = *(v52 + 104);
    v102 = v160;
    v101(v160, *MEMORY[0x277D78F98], v51);
    v103 = MEMORY[0x223D4E180](v86, v102);
    v182(v102, v51);
    if (v103 & 1) != 0 || (v101(v102, *MEMORY[0x277D78F20], v51), v104 = MEMORY[0x223D4E180](v86, v102), v182(v102, v51), (v104))
    {
      *v85 = sub_21DFABBC4(v177, v178);
      v85[1] = v105;
      (*(v175 + 104))(v85, *MEMORY[0x277D08638], v176);
      sub_21E142084();
      sub_21DF3ED18(0, &qword_280F68C20);
      if (!sub_21E1426B4())
      {
        v106 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      sub_21E142184();
      v107 = *MEMORY[0x277D08610];
      v108 = sub_21E13D4F4();
      v109 = *(v108 - 8);
      v110 = v180;
      (*(v109 + 104))(v180, v107, v108);
      (*(v109 + 56))(v110, 0, 1, v108);
      v111 = v156;
      sub_21E13D4E4();
      v112 = v158;
      v81 = v174;
      (*(v98 + 16))(v158, v111, v174);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_21E06A5A8(0, v67[2] + 1, 1, v67);
      }

      v114 = v67[2];
      v113 = v67[3];
      v86 = v173;
      if (v114 >= v113 >> 1)
      {
        v67 = sub_21E06A5A8(v113 > 1, v114 + 1, 1, v67);
      }

      (*(v98 + 8))(v111, v81);
      v67[2] = v114 + 1;
      (*(v98 + 32))(v67 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v114, v112, v81);
    }

    v115 = v163;
    v171(v163, v86, v51);
    v116 = v169(v115, v51);
    v117 = *MEMORY[0x277D78F88];
    v182(v115, v51);
    v118 = v165;
    if (v116 == v117)
    {
      v119 = v177;
      if (!v178)
      {
        v119 = 0;
      }

      v120 = 0xE000000000000000;
      if (v178)
      {
        v120 = v178;
      }

      *v165 = v119;
      v118[1] = v120;
      (*(v175 + 104))(v118, *MEMORY[0x277D08638], v176);

      sub_21E142084();
      sub_21DF3ED18(0, &qword_280F68C20);
      if (!sub_21E1426B4())
      {
        v121 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      sub_21E142184();
      v122 = *MEMORY[0x277D08610];
      v123 = sub_21E13D4F4();
      v124 = *(v123 - 8);
      v125 = v180;
      (*(v124 + 104))(v180, v122, v123);
      (*(v124 + 56))(v125, 0, 1, v123);
      v126 = v153;
      sub_21E13D4E4();
      v127 = v181;
      v128 = v154;
      (*(v181 + 16))(v154, v126, v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_21E06A5A8(0, v67[2] + 1, 1, v67);
      }

      v129 = v164;
      v131 = v67[2];
      v130 = v67[3];
      if (v131 >= v130 >> 1)
      {
        v67 = sub_21E06A5A8(v130 > 1, v131 + 1, 1, v67);
      }

      (*(v127 + 8))(v126, v81);
      v67[2] = v131 + 1;
      (*(v127 + 32))(v67 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v131, v128, v81);
      v86 = v173;
    }

    else
    {
      v129 = v164;
      v125 = v180;
    }

    v171(v129, v86, v51);
    v132 = v169(v129, v51);
    v133 = v168;
    if (v132 == *MEMORY[0x277D78F80])
    {
      v182(v129, v51);
      v134 = v177;
      if (!v178)
      {
        v134 = 0;
      }

      v135 = 0xE000000000000000;
      if (v178)
      {
        v135 = v178;
      }

      *v133 = v134;
      v133[1] = v135;
      (*(v175 + 104))(v133, *MEMORY[0x277D08638], v176);

      sub_21E142084();
      sub_21DF3ED18(0, &qword_280F68C20);
      if (!sub_21E1426B4())
      {
        v136 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      sub_21E142184();
      v137 = *MEMORY[0x277D08610];
      v138 = sub_21E13D4F4();
      v139 = *(v138 - 8);
      (*(v139 + 104))(v125, v137, v138);
      (*(v139 + 56))(v125, 0, 1, v138);
      v140 = v155;
      sub_21E13D4E4();
      v141 = v181;
      (*(v181 + 16))(v147, v140, v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_21E06A5A8(0, v67[2] + 1, 1, v67);
      }

      v143 = v67[2];
      v142 = v67[3];
      if (v143 >= v142 >> 1)
      {
        v67 = sub_21E06A5A8(v142 > 1, v143 + 1, 1, v67);
      }

      (*(v141 + 8))(v140, v81);
      v182(v173, v51);
      v67[2] = v143 + 1;
      (*(v141 + 32))(v67 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v143, v147, v81);
    }

    else
    {
      v144 = v182;
      v182(v86, v51);
      v144(v129, v51);
    }
  }

  return v67;
}

char *_s20VisualIntelligenceUI13ViewAnnotatorC16extraAnnotations3forSay15FeedbackService15FBKSInteractionC16AnnotatedContentVG0aB4Core17ResultLookupStateOSg_tFZ_0(uint64_t a1)
{
  v267 = a1;
  v240 = sub_21E13DBC4();
  v239 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v238 = &v204 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v246 = &v204 - v3;
  v237 = sub_21E13DC14();
  v236 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v235 = &v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_21E13DC24();
  v261 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v234 = &v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v260 = &v204 - v7;
  v231 = sub_21E13E614();
  v230 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v229 = &v204 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_21E13E0B4();
  v244 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v228 = &v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v250 = &v204 - v11;
  v243 = sub_21E13D884();
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v224 = (&v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v258 = &v204 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8810);
  MEMORY[0x28223BE20](v15 - 8);
  v257 = &v204 - v16;
  v17 = sub_21E13D384();
  MEMORY[0x28223BE20](v17 - 8);
  v256 = &v204 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21E1420E4();
  MEMORY[0x28223BE20](v19 - 8);
  v216 = &v204 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v214 = &v204 - v22;
  MEMORY[0x28223BE20](v23);
  v212 = &v204 - v24;
  MEMORY[0x28223BE20](v25);
  v210 = &v204 - v26;
  MEMORY[0x28223BE20](v27);
  v207 = &v204 - v28;
  v206 = sub_21E13DD04();
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v204 = &v204 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21E13D524();
  v252 = *(v30 - 8);
  v253 = v30;
  MEMORY[0x28223BE20](v30);
  v255 = (&v204 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v213 = (&v204 - v33);
  MEMORY[0x28223BE20](v34);
  v211 = (&v204 - v35);
  MEMORY[0x28223BE20](v36);
  v209 = (&v204 - v37);
  MEMORY[0x28223BE20](v38);
  v222 = (&v204 - v39);
  v40 = sub_21E13D504();
  v41 = *(v40 - 8);
  v262 = v40;
  v263 = v41;
  MEMORY[0x28223BE20](v40);
  v217 = &v204 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v215 = &v204 - v44;
  MEMORY[0x28223BE20](v45);
  v233 = &v204 - v46;
  MEMORY[0x28223BE20](v47);
  v232 = &v204 - v48;
  MEMORY[0x28223BE20](v49);
  v227 = &v204 - v50;
  MEMORY[0x28223BE20](v51);
  v226 = &v204 - v52;
  MEMORY[0x28223BE20](v53);
  v225 = &v204 - v54;
  MEMORY[0x28223BE20](v55);
  v208 = &v204 - v56;
  MEMORY[0x28223BE20](v57);
  v223 = &v204 - v58;
  MEMORY[0x28223BE20](v59);
  v220 = &v204 - v60;
  v221 = sub_21E13DDB4();
  v219 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v218 = &v204 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_21E13DDC4();
  v241 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v64 = &v204 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v67 = &v204 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838);
  MEMORY[0x28223BE20](v68 - 8);
  v70 = &v204 - v69;
  v71 = sub_21E13DF64();
  MEMORY[0x28223BE20](v71);
  v249 = &v204 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v248 = &v204 - v74;
  MEMORY[0x28223BE20](v75);
  v247 = &v204 - v76;
  MEMORY[0x28223BE20](v77);
  v79 = &v204 - v78;
  MEMORY[0x28223BE20](v80);
  v82 = &v204 - v81;
  MEMORY[0x28223BE20](v83);
  v85 = &v204 - v84;
  v87 = v86;
  sub_21DF236C0(v267, v70, &qword_27CEA8838);
  if ((*(v87 + 48))(v70, 1, v71) == 1)
  {
    sub_21DF23614(v70, &qword_27CEA8838);
    return MEMORY[0x277D84F90];
  }

  (*(v87 + 32))(v85, v70, v71);
  v89 = *(v87 + 16);
  v251 = v85;
  v266 = v89;
  v267 = v87 + 16;
  v89(v82, v85, v71);
  v264 = *(v87 + 88);
  v265 = v87 + 88;
  v90 = v264(v82, v71);
  v91 = *MEMORY[0x277D79228];
  v254 = v87;
  if (v90 == v91)
  {
    (*(v87 + 96))(v82, v71);
    v92 = v241;
    (*(v241 + 32))(v67, v82, v62);
    (*(v92 + 16))(v64, v67, v62);
    v93 = (*(v92 + 88))(v64, v62);
    v94 = v262;
    v95 = v258;
    if (v93 == *MEMORY[0x277D791D0])
    {
      (*(v92 + 96))(v64, v62);
      (*(v219 + 32))(v218, v64, v221);
      v96 = v204;
      sub_21E13DD94();
      v97 = sub_21DFAB478(MEMORY[0x277D79140], &qword_27CEA8840, MEMORY[0x277D79140], MEMORY[0x277D79148]);
      v99 = v98;
      (*(v205 + 8))(v96, v206);
      v100 = v222;
      *v222 = v97;
      v100[1] = v99;
      (*(v252 + 104))();
      sub_21E142084();
      sub_21DF3ED18(0, &qword_280F68C20);
      if (!sub_21E1426B4())
      {
        v101 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      sub_21E142184();
      v102 = *MEMORY[0x277D08610];
      v103 = sub_21E13D4F4();
      v104 = *(v103 - 8);
      v105 = v257;
      (*(v104 + 104))(v257, v102, v103);
      (*(v104 + 56))(v105, 0, 1, v103);
      v106 = v220;
      sub_21E13D4E4();
      v94 = v262;
      (*(v263 + 16))(v223, v106, v262);
      v88 = sub_21E06A5A8(0, 1, 1, MEMORY[0x277D84F90]);
      v108 = *(v88 + 2);
      v107 = *(v88 + 3);
      if (v108 >= v107 >> 1)
      {
        v88 = sub_21E06A5A8(v107 > 1, v108 + 1, 1, v88);
      }

      v95 = v258;
      v109 = v263;
      (*(v263 + 8))(v220, v94);
      (*(v219 + 8))(v218, v221);
      (*(v241 + 8))(v67, v62);
      *(v88 + 2) = v108 + 1;
      (*(v109 + 32))(&v88[((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v108], v223, v94);
    }

    else
    {
      v111 = *(v92 + 8);
      v111(v67, v62);
      v111(v64, v62);
      v88 = MEMORY[0x277D84F90];
    }

    v87 = v254;
    v110 = v260;
  }

  else
  {
    (*(v87 + 8))(v82, v71);
    v88 = MEMORY[0x277D84F90];
    v94 = v262;
    v110 = v260;
    v95 = v258;
  }

  v112 = v251;
  v266(v79, v251, v71);
  v113 = v264(v79, v71);
  v114 = v261;
  if (v113 == *MEMORY[0x277D79270])
  {
    (*(v87 + 96))(v79, v71);
    v115 = v242;
    v116 = v79;
    v117 = v243;
    (*(v242 + 32))(v95, v116, v243);
    v118 = v224;
    (*(v115 + 16))(v224, v95, v117);
    if ((*(v115 + 88))(v118, v117) == *MEMORY[0x277D78EE8])
    {
      (*(v115 + 96))(v118, v117);
      v119 = sub_21DFAB858(*v118, &qword_27CEA6D70, &unk_21E145DA8, sub_21DFB17B0);
      v121 = v120;

      v122 = v209;
      *v209 = v119;
      v122[1] = v121;
      (*(v252 + 104))(v122, *MEMORY[0x277D08638], v253);
      sub_21E142084();
      sub_21DF3ED18(0, &qword_280F68C20);
      if (!sub_21E1426B4())
      {
        v123 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      sub_21E142184();
      v124 = *MEMORY[0x277D08610];
      v125 = sub_21E13D4F4();
      v126 = *(v125 - 8);
      v127 = v257;
      (*(v126 + 104))(v257, v124, v125);
      (*(v126 + 56))(v127, 0, 1, v125);
      v128 = v208;
      sub_21E13D4E4();
      v94 = v262;
      (*(v263 + 16))(v225, v128, v262);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_21E06A5A8(0, *(v88 + 2) + 1, 1, v88);
      }

      v130 = *(v88 + 2);
      v129 = *(v88 + 3);
      v131 = v260;
      v112 = v251;
      v132 = v258;
      if (v130 >= v129 >> 1)
      {
        v88 = sub_21E06A5A8(v129 > 1, v130 + 1, 1, v88);
      }

      v133 = v263;
      (*(v263 + 8))(v128, v94);
      (*(v242 + 8))(v132, v243);
      *(v88 + 2) = v130 + 1;
      (*(v133 + 32))(&v88[((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v130], v225, v94);
      v114 = v261;
      v87 = v254;
      v134 = v247;
      v135 = v259;
      v110 = v131;
      v136 = v250;
      goto LABEL_25;
    }

    v137 = v95;
    v138 = v94;
    v139 = *(v115 + 8);
    v139(v137, v117);
    v139(v118, v117);
    v94 = v138;
    v135 = v259;
    v87 = v254;
  }

  else
  {
    (*(v87 + 8))(v79, v71);
    v135 = v259;
  }

  v136 = v250;
  v134 = v247;
LABEL_25:
  v266(v134, v112, v71);
  if (v264(v134, v71) == *MEMORY[0x277D79248])
  {
    v258 = v88;
    (*(v87 + 96))(v134, v71);
    v140 = v134;
    v141 = v244;
    v142 = v245;
    (*(v244 + 32))(v136, v140, v245);
    v143 = v228;
    (*(v141 + 16))(v228, v136, v142);
    if ((*(v141 + 88))(v143, v142) == *MEMORY[0x277D79358])
    {
      (*(v141 + 96))(v143, v142);
      (*(v230 + 32))(v229, v143, v231);
      v144 = sub_21DFAB478(MEMORY[0x277D79520], &qword_27CEA8858, MEMORY[0x277D79520], MEMORY[0x277D79528]);
      v145 = v211;
      *v211 = v144;
      v145[1] = v146;
      (*(v252 + 104))(v145, *MEMORY[0x277D08638], v253);
      sub_21E142084();
      sub_21DF3ED18(0, &qword_280F68C20);
      if (!sub_21E1426B4())
      {
        v147 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      sub_21E142184();
      v148 = *MEMORY[0x277D08610];
      v149 = sub_21E13D4F4();
      v150 = *(v149 - 8);
      v151 = v257;
      (*(v150 + 104))(v257, v148, v149);
      (*(v150 + 56))(v151, 0, 1, v149);
      v152 = v226;
      sub_21E13D4E4();
      (*(v263 + 16))(v227, v152, v94);
      v88 = v258;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_21E06A5A8(0, *(v88 + 2) + 1, 1, v88);
      }

      v153 = v244;
      v155 = *(v88 + 2);
      v154 = *(v88 + 3);
      v135 = v259;
      v156 = v260;
      v112 = v251;
      if (v155 >= v154 >> 1)
      {
        v88 = sub_21E06A5A8(v154 > 1, v155 + 1, 1, v88);
      }

      v157 = v263;
      (*(v263 + 8))(v226, v94);
      (*(v230 + 8))(v229, v231);
      (*(v153 + 8))(v250, v245);
      *(v88 + 2) = v155 + 1;
      (*(v157 + 32))(&v88[((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v155], v227, v94);
      v114 = v261;
      v87 = v254;
      v110 = v156;
    }

    else
    {
      v247 = v71;
      v158 = v136;
      v159 = *(v141 + 8);
      v159(v158, v142);
      v159(v143, v142);
      v71 = v247;
      v87 = v254;
      v88 = v258;
    }
  }

  else
  {
    (*(v87 + 8))(v134, v71);
  }

  v160 = v248;
  v266(v248, v112, v71);
  if (v264(v160, v71) == *MEMORY[0x277D79288])
  {
    (*(v87 + 96))(v160, v71);
    (*(v114 + 32))(v110, v160, v135);
    v161 = v234;
    (*(v114 + 16))(v234, v110, v135);
    if ((*(v114 + 88))(v161, v135) == *MEMORY[0x277D79128])
    {
      v162 = v94;
      (*(v114 + 96))(v161, v135);
      (*(v236 + 32))(v235, v161, v237);
      v163 = sub_21E13DBF4();
      v164 = v213;
      *v213 = v163;
      v164[1] = v165;
      (*(v252 + 104))(v164, *MEMORY[0x277D08638], v253);
      sub_21E142084();
      sub_21DF3ED18(0, &qword_280F68C20);
      if (!sub_21E1426B4())
      {
        v166 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      sub_21E142184();
      v167 = *MEMORY[0x277D08610];
      v168 = sub_21E13D4F4();
      v169 = *(v168 - 8);
      v170 = v257;
      (*(v169 + 104))(v257, v167, v168);
      (*(v169 + 56))(v170, 0, 1, v168);
      v171 = v232;
      sub_21E13D4E4();
      (*(v263 + 16))(v233, v171, v162);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_21E06A5A8(0, *(v88 + 2) + 1, 1, v88);
      }

      v173 = *(v88 + 2);
      v172 = *(v88 + 3);
      v174 = v260;
      v112 = v251;
      if (v173 >= v172 >> 1)
      {
        v88 = sub_21E06A5A8(v172 > 1, v173 + 1, 1, v88);
      }

      v175 = v263;
      (*(v263 + 8))(v232, v162);
      (*(v236 + 8))(v235, v237);
      (*(v261 + 8))(v174, v259);
      *(v88 + 2) = v173 + 1;
      (*(v175 + 32))(&v88[((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v173], v233, v162);
    }

    else
    {
      v176 = *(v114 + 8);
      v176(v110, v135);
      v176(v161, v135);
    }

    v87 = v254;
  }

  else
  {
    (*(v87 + 8))(v160, v71);
  }

  v177 = v249;
  v266(v249, v112, v71);
  v178 = v264(v177, v71);
  v179 = v255;
  if (v178 == *MEMORY[0x277D79220])
  {
    (*(v87 + 96))(v177, v71);
    v180 = v239;
    v181 = v246;
    v182 = v240;
    (*(v239 + 32))(v246, v177, v240);
    v183 = v238;
    (*(v180 + 16))(v238, v181, v182);
    if ((*(v180 + 88))(v183, v182) == *MEMORY[0x277D79100])
    {
      (*(v180 + 96))(v183, v182);
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D30);

      v185 = *&v183[*(v184 + 64)];

      v186 = sub_21E13E144();
      (*(*(v186 - 8) + 8))(v183, v186);
      v187 = sub_21DFAB858(v185, &qword_27CEA8860, &unk_21E1498E0, sub_21DFB1864);
      v189 = v188;

      *v179 = v187;
      v179[1] = v189;
      (*(v252 + 104))(v179, *MEMORY[0x277D08638], v253);
      sub_21E142084();
      sub_21DF3ED18(0, &qword_280F68C20);
      if (!sub_21E1426B4())
      {
        v190 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      sub_21E142184();
      v191 = *MEMORY[0x277D08610];
      v192 = sub_21E13D4F4();
      v193 = *(v192 - 8);
      v194 = v257;
      (*(v193 + 104))(v257, v191, v192);
      (*(v193 + 56))(v194, 0, 1, v192);
      v195 = v215;
      sub_21E13D4E4();
      v196 = v262;
      v197 = v217;
      (*(v263 + 16))(v217, v195, v262);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_21E06A5A8(0, *(v88 + 2) + 1, 1, v88);
      }

      v199 = *(v88 + 2);
      v198 = *(v88 + 3);
      if (v199 >= v198 >> 1)
      {
        v88 = sub_21E06A5A8(v198 > 1, v199 + 1, 1, v88);
      }

      v200 = v263;
      (*(v263 + 8))(v195, v196);
      (*(v180 + 8))(v246, v182);
      (*(v254 + 8))(v251, v71);
      *(v88 + 2) = v199 + 1;
      (*(v200 + 32))(&v88[((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v199], v197, v196);
    }

    else
    {
      v202 = *(v180 + 8);
      v202(v181, v182);
      (*(v87 + 8))(v251, v71);
      v202(v183, v182);
    }
  }

  else
  {
    v201 = *(v87 + 8);
    v201(v112, v71);
    v201(v177, v71);
  }

  return v88;
}

unint64_t sub_21DFB16F4()
{
  result = qword_27CEA8830;
  if (!qword_27CEA8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8830);
  }

  return result;
}

unint64_t sub_21DFB17B0()
{
  result = qword_27CEA8848;
  if (!qword_27CEA8848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6D70);
    sub_21DFB19E8(&qword_27CEA8850, MEMORY[0x277D78D90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8848);
  }

  return result;
}

unint64_t sub_21DFB1864()
{
  result = qword_27CEA8868;
  if (!qword_27CEA8868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8860);
    sub_21DFB19E8(&qword_27CEA8870, MEMORY[0x277D794F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8868);
  }

  return result;
}

unint64_t sub_21DFB1918()
{
  result = qword_27CEA8880;
  if (!qword_27CEA8880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8880);
  }

  return result;
}

unint64_t sub_21DFB1994()
{
  result = qword_27CEA8888;
  if (!qword_27CEA8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8888);
  }

  return result;
}

uint64_t sub_21DFB19E8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21DFB1A44(uint64_t a1, int a2)
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

uint64_t sub_21DFB1A8C(uint64_t result, int a2, int a3)
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

unint64_t sub_21DFB1B34()
{
  result = qword_27CEA8898;
  if (!qword_27CEA8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8898);
  }

  return result;
}

uint64_t sub_21DFB1BA4()
{
  v6 = 540690472;
  v7 = 0xE400000000000000;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_21E13E9F4();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_21E13D6E4();
  v1 = sub_21E142464();
  MEMORY[0x223D52A60](v1);

  __swift_destroy_boxed_opaque_existential_0(v4);
  MEMORY[0x223D52A60](0x203A57202CLL, 0xE500000000000000);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_21E13E9F4();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_21E13D6D4();
  v2 = sub_21E142464();
  MEMORY[0x223D52A60](v2);

  __swift_destroy_boxed_opaque_existential_0(v4);
  MEMORY[0x223D52A60](41, 0xE100000000000000);
  return v6;
}

uint64_t sub_21DFB1CD8@<X0>(char *a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88A0);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v37 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88A8);
  v52 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v51 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88B0);
  v39 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v49 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88B8);
  v45 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v44 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v55 = v1;
  v59 = xmmword_21E149900;
  v60 = 0;
  v18 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88C0);
  sub_21DF23E5C(&qword_27CEA88C8, &qword_27CEA88C0);
  v43 = v17;
  sub_21E141AB4();
  v54 = v1;
  *&v59 = 0xD000000000000015;
  *(&v59 + 1) = 0x800000021E15BFB0;
  v60 = 0;
  v61 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88D0);
  sub_21DF23E5C(&qword_27CEA88D8, &qword_27CEA88D0);
  v42 = v13;
  sub_21E141AB4();
  v53 = v1;
  *&v59 = 0xD000000000000012;
  *(&v59 + 1) = 0x800000021E15BFD0;
  v60 = 0;
  v61 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88E0);
  sub_21DF23E5C(&qword_27CEA88E8, &qword_27CEA88E0);
  v46 = v9;
  sub_21E141AB4();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_21E13EA14();
  if (v58)
  {
    v19 = sub_21DF0DBF0(&v56, &v59);
    MEMORY[0x28223BE20](v19);
    *(&v37 - 2) = v1;
    *(&v37 - 1) = &v59;
    *&v56 = 0xD000000000000013;
    *(&v56 + 1) = 0x800000021E15BFF0;
    v57 = 0;
    v58 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8908);
    sub_21DF23E5C(&qword_27CEA8910, &qword_27CEA8908);
    v20 = v50;
    sub_21E141AB4();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88F8);
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
    __swift_destroy_boxed_opaque_existential_0(&v59);
  }

  else
  {
    sub_21DF23614(&v56, &qword_27CEA88F0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88F8);
    (*(*(v22 - 8) + 56))(v50, 1, 1, v22);
  }

  v23 = *(v45 + 16);
  v24 = v44;
  v25 = v38;
  v23(v44, v43, v38);
  v26 = v39;
  v37 = *(v39 + 16);
  v37(v49, v42, v47);
  v27 = *(v52 + 16);
  v28 = v40;
  v27(v51, v46, v40);
  sub_21DF236C0(v50, v48, &qword_27CEA88A0);
  v29 = v41;
  v23(v41, v24, v25);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8900);
  v31 = v47;
  v37(&v29[v30[12]], v49, v47);
  v27(&v29[v30[16]], v51, v28);
  v32 = v48;
  sub_21DF236C0(v48, &v29[v30[20]], &qword_27CEA88A0);
  sub_21DF23614(v50, &qword_27CEA88A0);
  v33 = *(v52 + 8);
  v52 += 8;
  v33(v46, v28);
  v34 = *(v26 + 8);
  v34(v42, v31);
  v35 = *(v45 + 8);
  v35(v43, v25);
  sub_21DF23614(v32, &qword_27CEA88A0);
  v33(v51, v28);
  v34(v49, v31);
  return (v35)(v44, v25);
}

uint64_t sub_21DFB2600@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v51 = sub_21E13D264();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8918);
  v61 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v50 - v8;
  MEMORY[0x28223BE20](v9);
  v53 = &v50 - v10;
  MEMORY[0x28223BE20](v11);
  v52 = &v50 - v12;
  MEMORY[0x28223BE20](v13);
  v60 = &v50 - v14;
  MEMORY[0x28223BE20](v15);
  v58 = &v50 - v16;
  MEMORY[0x28223BE20](v17);
  v57 = &v50 - v18;
  MEMORY[0x28223BE20](v19);
  v59 = &v50 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_21E13EA54();
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  v74 = v21;
  v75 = v23;
  v76 = 0x746954206D657449;
  v77 = 0xEA0000000000656CLL;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8920);
  sub_21DF23E5C(&qword_27CEA8928, &qword_27CEA8920);
  sub_21E141764();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = sub_21E13EA64();
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = v27;
  v70 = v25;
  v71 = v27;
  v72 = 0x614E2065726F7453;
  v73 = 0xEA0000000000656DLL;

  sub_21E141764();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13EA24();
  v29 = sub_21E13D1B4();
  v31 = v30;
  (*(v50 + 8))(v4, v51);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;
  v66 = v29;
  v67 = v31;
  v68 = 0xD000000000000010;
  v69 = 0x800000021E15C050;

  v33 = v58;
  sub_21E141764();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = sub_21E13EA34();
  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 7104878;
  }

  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0xE300000000000000;
  }

  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  v62 = v36;
  v63 = v37;
  v64 = 0xD000000000000011;
  v65 = 0x800000021E15C070;

  v39 = v60;
  sub_21E141764();

  v40 = *(v61 + 16);
  v41 = v52;
  v40(v52, v59, v5);
  v42 = v53;
  v43 = v57;
  v40(v53, v57, v5);
  v44 = v54;
  v40(v54, v33, v5);
  v45 = v55;
  v40(v55, v39, v5);
  v46 = v56;
  v40(v56, v41, v5);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8980);
  v40(&v46[v47[12]], v42, v5);
  v40(&v46[v47[16]], v44, v5);
  v40(&v46[v47[20]], v45, v5);
  v48 = *(v61 + 8);
  v48(v60, v5);
  v48(v58, v5);
  v48(v43, v5);
  v48(v59, v5);
  v48(v45, v5);
  v48(v44, v5);
  v48(v42, v5);
  return (v48)(v41, v5);
}

uint64_t sub_21DFB2DD0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8918);
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v36 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13E9F4();
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  sub_21E13D6F4();
  v17 = sub_21E13D264();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(v41);
    sub_21DF23614(v5, &qword_27CEA9990);
    v19 = 0xE300000000000000;
    v20 = 7104878;
  }

  else
  {
    v20 = sub_21E13D1B4();
    v19 = v21;
    (*(v18 + 8))(v5, v17);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v19;
  MEMORY[0x28223BE20](v22);
  *(&v36 - 4) = v20;
  *(&v36 - 3) = v19;
  *(&v36 - 2) = 0x5255206567616D49;
  *(&v36 - 1) = 0xE90000000000004CLL;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8920);
  sub_21DF23E5C(&qword_27CEA8928, &qword_27CEA8920);
  sub_21E141764();

  v23 = sub_21DFB1BA4();
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v25;
  MEMORY[0x28223BE20](v26);
  *(&v36 - 4) = v23;
  *(&v36 - 3) = v25;
  *(&v36 - 2) = 0xD000000000000010;
  *(&v36 - 1) = 0x800000021E15C030;

  sub_21E141764();

  v28 = v37;
  v27 = v38;
  v29 = *(v37 + 16);
  v30 = v36;
  v29(v38, v16, v36);
  v31 = v39;
  v29(v39, v13, v30);
  v32 = v40;
  v29(v40, v27, v30);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8978);
  v29(&v32[*(v33 + 48)], v31, v30);
  v34 = *(v28 + 8);
  v34(v13, v30);
  v34(v16, v30);
  v34(v31, v30);
  return (v34)(v27, v30);
}

uint64_t sub_21DFB3304@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8938);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8940);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v54 - v10;
  MEMORY[0x28223BE20](v11);
  v64 = &v54 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8918);
  v61 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v60 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13EA04();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v20 = sub_21E13EAC4();
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  v66 = v20;
  v67 = v22;
  strcpy(v68, "Product Price");
  v68[7] = -4864;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8920);
  sub_21DF23E5C(&qword_27CEA8928, &qword_27CEA8920);
  v58 = v19;
  sub_21E141764();

  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13EA04();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v24 = sub_21E13EAE4();
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    __swift_destroy_boxed_opaque_existential_0(v74);
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    MEMORY[0x28223BE20](v28);
    *(&v54 - 4) = v26;
    *(&v54 - 3) = v27;
    strcpy(&v54 - 16, "Contract Terms");
    *(&v54 - 1) = -18;

    sub_21E141764();

    v29 = 0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v74);
    v29 = 1;
  }

  v30 = *(v61 + 56);
  v59 = v15;
  v30(v15, v29, 1, v65);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13EA04();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v31 = sub_21E13EAD4();
  if (v32)
  {
    v33 = v31;
    v34 = v32;
    __swift_destroy_boxed_opaque_existential_0(v74);
    v35 = swift_allocObject();
    v54 = &v54;
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    MEMORY[0x28223BE20](v35);
    *(&v54 - 4) = v33;
    *(&v54 - 3) = v34;
    strcpy(&v54 - 16, "Shipping Price");
    *(&v54 - 1) = -18;

    v36 = v64;
    sub_21E141764();

    v37 = 0;
    v38 = v62;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v74);
    v37 = 1;
    v38 = v62;
    v36 = v64;
  }

  v30(v36, v37, 1, v65);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13EA04();
  __swift_project_boxed_opaque_existential_1(&v71, v73);
  sub_21E13EAB4();
  if (v70)
  {
    sub_21DF0DBF0(&v69, v74);
    v39 = __swift_destroy_boxed_opaque_existential_0(&v71);
    MEMORY[0x28223BE20](v39);
    *(&v54 - 2) = a1;
    *(&v54 - 1) = v74;
    v71 = xmmword_21E149910;
    v72 = 0;
    v73 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8960);
    sub_21DF23E5C(&qword_27CEA8968, &qword_27CEA8960);
    sub_21E141AB4();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8950);
    (*(*(v40 - 8) + 56))(v38, 0, 1, v40);
    __swift_destroy_boxed_opaque_existential_0(v74);
  }

  else
  {
    sub_21DF23614(&v69, &qword_27CEA8948);
    __swift_destroy_boxed_opaque_existential_0(&v71);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8950);
    (*(*(v41 - 8) + 56))(v38, 1, 1, v41);
  }

  v42 = v61;
  v43 = *(v61 + 16);
  v44 = v60;
  v45 = v65;
  v43(v60, v58, v65);
  sub_21DF236C0(v59, v63, &qword_27CEA8940);
  v46 = v55;
  sub_21DF236C0(v64, v55, &qword_27CEA8940);
  v47 = v38;
  v48 = v57;
  sub_21DF236C0(v47, v57, &qword_27CEA8938);
  v49 = v56;
  v43(v56, v44, v45);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8958);
  v51 = v63;
  sub_21DF236C0(v63, &v49[v50[12]], &qword_27CEA8940);
  sub_21DF236C0(v46, &v49[v50[16]], &qword_27CEA8940);
  sub_21DF236C0(v48, &v49[v50[20]], &qword_27CEA8938);
  sub_21DF23614(v62, &qword_27CEA8938);
  sub_21DF23614(v64, &qword_27CEA8940);
  sub_21DF23614(v59, &qword_27CEA8940);
  v52 = *(v42 + 8);
  v52(v58, v45);
  sub_21DF23614(v48, &qword_27CEA8938);
  sub_21DF23614(v46, &qword_27CEA8940);
  sub_21DF23614(v51, &qword_27CEA8940);
  return (v52)(v60, v45);
}

uint64_t sub_21DFB3D34@<X0>(void *a1@<X1>, char *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8940);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8918);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_21E13E894();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v16;
  v36 = v14;
  v37 = v16;
  strcpy(v38, "Original Price");
  v38[15] = -18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8920);
  sub_21DF23E5C(&qword_27CEA8928, &qword_27CEA8920);
  v33 = v13;
  sub_21E141764();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_21E13E884();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    MEMORY[0x28223BE20](v22);
    *(&v32 - 4) = v20;
    *(&v32 - 3) = v21;
    *(&v32 - 2) = 0x62614C20656C6153;
    *(&v32 - 1) = 0xEA00000000006C65;

    sub_21E141764();

    v23 = v32;
    (*(v8 + 32))(v32, v10, v7);
    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v32;
  }

  (*(v8 + 56))(v23, v24, 1, v7);
  v25 = *(v8 + 16);
  v26 = v33;
  v25(v10, v33, v7);
  v27 = v35;
  sub_21DF236C0(v23, v35, &qword_27CEA8940);
  v28 = v34;
  v25(v34, v10, v7);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8970);
  sub_21DF236C0(v27, &v28[*(v29 + 48)], &qword_27CEA8940);
  sub_21DF23614(v23, &qword_27CEA8940);
  v30 = *(v8 + 8);
  v30(v26, v7);
  sub_21DF23614(v27, &qword_27CEA8940);
  return (v30)(v10, v7);
}

uint64_t sub_21DFB41C4@<X0>(void *a1@<X1>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8918);
  v44 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v38 - v6;
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - v8;
  MEMORY[0x28223BE20](v9);
  v40 = &v38 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v14);
  v39 = &v38 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v58 = sub_21E13E854();
  v16 = sub_21E142AB4();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  v54 = v16;
  v55 = v18;
  v56 = 0x697461522078614DLL;
  v57 = 0xEA0000000000676ELL;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8920);
  sub_21DF23E5C(&qword_27CEA8928, &qword_27CEA8920);
  sub_21E141764();

  v58 = 0;
  v59 = 0xE000000000000000;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13E874();
  sub_21E142484();
  v21 = v58;
  v20 = v59;
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  v50 = v21;
  v51 = v20;
  v52 = 0x676E69746152;
  v53 = 0xE600000000000000;

  sub_21E141764();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = sub_21E13E864();
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 7104878;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0xE300000000000000;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  v46 = v25;
  v47 = v26;
  v48 = 0xD000000000000016;
  v49 = 0x800000021E15C010;

  v28 = v40;
  sub_21E141764();

  v29 = *(v44 + 16);
  v30 = v45;
  v31 = v39;
  v29(v45, v39, v3);
  v32 = v41;
  v29(v41, v13, v3);
  v33 = v42;
  v29(v42, v28, v3);
  v34 = v43;
  v29(v43, v30, v3);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8930);
  v29(&v34[*(v35 + 48)], v32, v3);
  v29(&v34[*(v35 + 64)], v33, v3);
  v36 = *(v44 + 8);
  v36(v28, v3);
  v36(v13, v3);
  v36(v31, v3);
  v36(v33, v3);
  v36(v32, v3);
  return (v36)(v45, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_21DFB4860()
{
  sub_21DFB48FC();
  if (v0 <= 0x3F)
  {
    sub_21DFB4954();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21DFB48FC()
{
  if (!qword_27CEA7108)
  {
    sub_21E1401B4();
    v0 = sub_21E13F464();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEA7108);
    }
  }
}

unint64_t sub_21DFB4954()
{
  result = qword_27CEA89A8;
  if (!qword_27CEA89A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CEA89A8);
  }

  return result;
}

uint64_t sub_21DFB49D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A20);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A28);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = type metadata accessor for ImageSearchCardAdImageView(0);
  v16 = (v15 - 8);
  MEMORY[0x28223BE20](v15);
  v49 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v46 - v19);
  v21 = type metadata accessor for ImageSearchAdCardView(0);
  sub_21DFA7E94(a1 + v21[5], v20 + v16[8]);
  v22 = v21[7];
  v23 = *(a1 + v21[6]);
  v24 = *(a1 + v22);
  *v20 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  swift_storeEnumTagMultiPayload();
  v25 = (v20 + v16[7]);
  v51 = 0x4069000000000000;
  sub_21E141704();
  v26 = v53;
  *v25 = v52;
  v25[1] = v26;
  *(v20 + v16[9]) = v23;
  *(v20 + v16[10]) = v24;
  *(v20 + v16[11]) = 0x4030000000000000;
  sub_21E141A44();
  LOBYTE(v16) = sub_21E140934();
  sub_21E13F374();
  v27 = &v14[*(v10 + 44)];
  v46 = v14;
  *v27 = v16;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  *v8 = sub_21E1401D4();
  *(v8 + 1) = 0x4014000000000000;
  v8[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A30);
  sub_21DFB4E20(a1, &v8[*(v32 + 44)]);
  LOBYTE(v16) = sub_21E140904();
  sub_21E13F374();
  v33 = &v8[*(v4 + 44)];
  *v33 = v16;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  v38 = v49;
  sub_21DFB873C(v20, v49, type metadata accessor for ImageSearchCardAdImageView);
  v39 = v50;
  sub_21DF236C0(v14, v50, &qword_27CEA8A28);
  v40 = v47;
  sub_21DF236C0(v8, v47, &qword_27CEA8A20);
  v41 = v48;
  sub_21DFB873C(v38, v48, type metadata accessor for ImageSearchCardAdImageView);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A38);
  sub_21DF236C0(v39, v41 + v42[12], &qword_27CEA8A28);
  v43 = v41 + v42[16];
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_21DF236C0(v40, v41 + v42[20], &qword_27CEA8A20);
  v44 = v41 + v42[24];
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_21DF23614(v8, &qword_27CEA8A20);
  sub_21DF23614(v46, &qword_27CEA8A28);
  sub_21DFB87A4(v20, type metadata accessor for ImageSearchCardAdImageView);
  sub_21DF23614(v40, &qword_27CEA8A20);
  sub_21DF23614(v50, &qword_27CEA8A28);
  return sub_21DFB87A4(v49, type metadata accessor for ImageSearchCardAdImageView);
}

uint64_t sub_21DFB4E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v74 = a2;
  v3 = sub_21E140A64();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A40) - 8;
  MEMORY[0x28223BE20](v72);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v77 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A48);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A50);
  MEMORY[0x28223BE20](v12 - 8);
  v79 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = (&v66 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A58);
  MEMORY[0x28223BE20](v16 - 8);
  v78 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v75 = &v66 - v19;
  v20 = (a1 + *(type metadata accessor for ImageSearchAdCardView(0) + 20));
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  *&v85 = sub_21E13EA54();
  *(&v85 + 1) = v21;
  sub_21DF252E0();
  v22 = sub_21E140C94();
  v24 = v23;
  v26 = v25;
  sub_21E140AC4();
  v27 = sub_21E140C44();
  v29 = v28;
  v31 = v30;
  v66 = v32;

  sub_21DF3DE8C(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v24) = sub_21E1404A4();
  v34 = swift_getKeyPath();
  LOBYTE(v89[0]) = 0;
  *&v85 = v27;
  *(&v85 + 1) = v29;
  LOBYTE(v86) = v31 & 1;
  *(&v86 + 1) = v66;
  *&v87 = KeyPath;
  BYTE8(v87) = 0;
  HIDWORD(v87) = v24;
  *&v88[0] = v34;
  *(&v88[0] + 1) = 1;
  LOBYTE(v88[1]) = 0;
  *(&v88[1] + 1) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A60);
  sub_21DFB8808();
  v35 = v75;
  sub_21E141164();
  v89[2] = v87;
  v90[0] = v88[0];
  *(v90 + 15) = *(v88 + 15);
  v89[0] = v85;
  v89[1] = v86;
  sub_21DF23614(v89, &qword_27CEA8A60);
  v36 = sub_21E140004();
  v37 = v80;
  *v80 = v36;
  v37[1] = 0;
  *(v37 + 16) = 1;
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8AA8);
  v40 = v67;
  sub_21DFB566C(v67, v38 + *(v39 + 44));
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v41 = sub_21E13EA64();
  v43 = v42;
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_21E13EA14();
  *&v81 = v41;
  *(&v81 + 1) = v43;
  sub_21E141C94();
  sub_21E13FCE4();
  v85 = v81;
  v86 = v82;
  v87 = v83;
  *&v88[0] = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8AB0);
  sub_21DFB8ABC();
  v44 = v76;
  sub_21E141164();
  sub_21DF23614(&v85, &qword_27CEA8AB0);
  v45 = v77;
  sub_21DFB6000(v40, v77);
  sub_21E140994();
  v47 = v68;
  v46 = v69;
  v48 = v70;
  (*(v69 + 104))(v68, *MEMORY[0x277CE0A10], v70);
  v49 = sub_21E140A94();

  (*(v46 + 8))(v47, v48);
  v50 = swift_getKeyPath();
  v51 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8AC8) + 36));
  *v51 = v50;
  v51[1] = v49;
  LODWORD(v50) = sub_21E1404B4();
  *(v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8AD0) + 36)) = v50;
  LOBYTE(v50) = sub_21E140934();
  sub_21E13F374();
  v52 = v45 + *(v72 + 44);
  *v52 = v50;
  *(v52 + 8) = v53;
  *(v52 + 16) = v54;
  *(v52 + 24) = v55;
  *(v52 + 32) = v56;
  *(v52 + 40) = 0;
  v57 = v78;
  sub_21DF236C0(v35, v78, &qword_27CEA8A58);
  v58 = v79;
  sub_21DF236C0(v80, v79, &qword_27CEA8A50);
  v59 = v71;
  sub_21DF236C0(v44, v71, &qword_27CEA8A48);
  v60 = v45;
  v61 = v73;
  sub_21DF236C0(v60, v73, &qword_27CEA8A40);
  v62 = v57;
  v63 = v74;
  sub_21DF236C0(v62, v74, &qword_27CEA8A58);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8AD8);
  sub_21DF236C0(v58, v63 + v64[12], &qword_27CEA8A50);
  sub_21DF236C0(v59, v63 + v64[16], &qword_27CEA8A48);
  sub_21DF236C0(v61, v63 + v64[20], &qword_27CEA8A40);
  sub_21DF23614(v77, &qword_27CEA8A40);
  sub_21DF23614(v76, &qword_27CEA8A48);
  sub_21DF23614(v80, &qword_27CEA8A50);
  sub_21DF23614(v75, &qword_27CEA8A58);
  sub_21DF23614(v61, &qword_27CEA8A40);
  sub_21DF23614(v59, &qword_27CEA8A48);
  sub_21DF23614(v79, &qword_27CEA8A50);
  return sub_21DF23614(v78, &qword_27CEA8A58);
}

uint64_t sub_21DFB566C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v81 = sub_21E141424();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8AF0);
  MEMORY[0x28223BE20](v4 - 8);
  v86 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v70 - v7;
  v8 = sub_21E140A64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8AF8);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v88 = &v70 - v14;
  v15 = (a1 + *(type metadata accessor for ImageSearchAdCardView(0) + 20));
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_21E13EA04();
  __swift_project_boxed_opaque_existential_1(&v92, v95);
  v91[0] = sub_21E13EAC4();
  v91[1] = v16;
  v71 = sub_21DF252E0();
  v17 = sub_21E140C94();
  v19 = v18;
  v21 = v20;
  __swift_destroy_boxed_opaque_existential_0(&v92);
  sub_21E140994();
  v22 = *(v9 + 104);
  v74 = *MEMORY[0x277CE0A10];
  v75 = v9 + 104;
  v73 = v22;
  v22(v11);
  sub_21E140A94();

  v23 = *(v9 + 8);
  v76 = v11;
  v78 = v8;
  v77 = v9 + 8;
  v72 = v23;
  v23(v11, v8);
  v24 = sub_21E140C44();
  v26 = v25;
  LOBYTE(v11) = v27;

  sub_21DF3DE8C(v17, v19, v21 & 1);

  LODWORD(v92) = sub_21E1404A4();
  v28 = sub_21E140C24();
  v30 = v29;
  LOBYTE(a1) = v31;
  v33 = v32;
  sub_21DF3DE8C(v24, v26, v11 & 1);

  KeyPath = swift_getKeyPath();
  v92 = v28;
  v93 = v30;
  v94 = a1 & 1;
  v95 = v33;
  v96 = KeyPath;
  v97 = 1;
  v98 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B00);
  v35 = sub_21DFB8B9C();
  sub_21E141164();
  sub_21DF3DE8C(v28, v30, a1 & 1);

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_21E13EA04();
  __swift_project_boxed_opaque_existential_1(&v92, v95);
  sub_21E13EAB4();
  if (v90)
  {
    sub_21DFB4814(&v89, v91);
    __swift_destroy_boxed_opaque_existential_0(&v92);
    __swift_project_boxed_opaque_existential_1(v91, v91[3]);
    v92 = sub_21E13E894();
    v93 = v36;
    v37 = sub_21E140C94();
    v39 = v38;
    v41 = v40;
    v71 = v35;
    v42 = sub_21E140BE4();
    v44 = v43;
    v46 = v45;
    sub_21DF3DE8C(v37, v39, v41 & 1);

    sub_21E140994();
    v47 = v76;
    v48 = v78;
    v73(v76, v74, v78);
    sub_21E140A94();

    v72(v47, v48);
    v49 = sub_21E140C44();
    v51 = v50;
    v53 = v52;

    sub_21DF3DE8C(v42, v44, v46 & 1);

    (*(v79 + 104))(v80, *MEMORY[0x277CE0EE0], v81);
    v92 = sub_21E141594();
    v54 = sub_21E140C24();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_21DF3DE8C(v49, v51, v53 & 1);

    v61 = swift_getKeyPath();
    v92 = v54;
    v93 = v56;
    v94 = v58 & 1;
    v95 = v60;
    v96 = v61;
    v97 = 1;
    v98 = 0;
    v62 = v82;
    sub_21E141164();
    sub_21DF3DE8C(v54, v56, v58 & 1);

    v63 = v85;
    sub_21DF3DE9C(v62, v85, &qword_27CEA8AF8);
    (*(v83 + 56))(v63, 0, 1, v84);
    __swift_destroy_boxed_opaque_existential_0(v91);
    v64 = v62;
  }

  else
  {
    sub_21DF23614(&v89, &qword_27CEA8948);
    __swift_destroy_boxed_opaque_existential_0(&v92);
    v63 = v85;
    (*(v83 + 56))(v85, 1, 1, v84);
    v64 = v82;
  }

  v65 = v88;
  sub_21DF236C0(v88, v64, &qword_27CEA8AF8);
  v66 = v86;
  sub_21DF236C0(v63, v86, &qword_27CEA8AF0);
  v67 = v87;
  sub_21DF236C0(v64, v87, &qword_27CEA8AF8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B08);
  sub_21DF236C0(v66, v67 + *(v68 + 48), &qword_27CEA8AF0);
  sub_21DF23614(v63, &qword_27CEA8AF0);
  sub_21DF23614(v65, &qword_27CEA8AF8);
  sub_21DF23614(v66, &qword_27CEA8AF0);
  return sub_21DF23614(v64, &qword_27CEA8AF8);
}

uint64_t sub_21DFB6000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8AE0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7200);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = (a1 + *(type metadata accessor for ImageSearchAdCardView(0) + 20));
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_21E13EA04();
  __swift_project_boxed_opaque_existential_1(&v33, v36);
  v11 = sub_21E13EAD4();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    __swift_destroy_boxed_opaque_existential_0(&v33);
    v33 = v13;
    v34 = v14;
    sub_21DF252E0();
    v15 = sub_21E140C94();
    v17 = v16;
    v33 = v15;
    v34 = v16;
    v19 = v18 & 1;
    v35 = v18 & 1;
    v36 = v20;
    sub_21E141164();
    sub_21DF3DE8C(v15, v17, v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v33);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v21 = sub_21E13EA34();
    if (!v22)
    {
      v29 = 1;
      goto LABEL_6;
    }

    v33 = v21;
    v34 = v22;
    sub_21DF252E0();
    v23 = sub_21E140C94();
    v25 = v24;
    v33 = v23;
    v34 = v24;
    v27 = v26 & 1;
    v35 = v26 & 1;
    v36 = v28;
    sub_21E141164();
    sub_21DF3DE8C(v23, v25, v27);
  }

  sub_21DF236C0(v9, v6, &qword_27CEA7200);
  swift_storeEnumTagMultiPayload();
  sub_21DF4232C();
  sub_21E1402F4();
  sub_21DF23614(v9, &qword_27CEA7200);
  v29 = 0;
LABEL_6:
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8AE8);
  return (*(*(v30 - 8) + 56))(a2, v29, 1, v30);
}

uint64_t sub_21DFB635C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA89E8);
  MEMORY[0x28223BE20](v4);
  v6 = &v36[-v5];
  v7 = sub_21E1404F4();
  MEMORY[0x28223BE20](v7);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA89F0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36[-v11];
  if (*(a1 + *(type metadata accessor for ImageSearchAdCardView(0) + 24)) > 1uLL)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA89F8);
    v35 = *(*(v34 - 8) + 56);

    return v35(a2, 1, 1, v34);
  }

  else
  {
    sub_21E140344();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = *(v7 + 20);
    v22 = *MEMORY[0x277CE0118];
    v23 = sub_21E140144();
    (*(*(v23 - 8) + 104))(&v9[v21], v22, v23);
    *v9 = v14;
    *(v9 + 1) = v16;
    *(v9 + 2) = v18;
    *(v9 + 3) = v20;
    LODWORD(v22) = sub_21E140494();
    sub_21E13F4E4();
    v24 = MEMORY[0x277CE0550];
    sub_21DFB873C(v9, v12, MEMORY[0x277CE0550]);
    v25 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A00) + 36)];
    v26 = v37;
    *v25 = *&v36[8];
    *(v25 + 1) = v26;
    *(v25 + 4) = v38;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A08);
    *&v12[*(v27 + 52)] = v22;
    *&v12[*(v27 + 56)] = 256;
    v28 = sub_21E141CC4();
    v30 = v29;
    sub_21DFB87A4(v9, v24);
    v31 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A10) + 36)];
    *v31 = v28;
    v31[1] = v30;
    sub_21DF236C0(v12, v6, &qword_27CEA89F0);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEA8A18, &qword_27CEA89F0);
    sub_21E1402F4();
    sub_21DF23614(v12, &qword_27CEA89F0);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA89F8);
    return (*(*(v32 - 8) + 56))(a2, 0, 1, v32);
  }
}

uint64_t sub_21DFB6900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA89B0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - v2;
  *v3 = sub_21E1401C4();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA89B8);
  sub_21DFB49D4(v0, &v3[*(v4 + 44)]);
  v5 = sub_21E141CC4();
  v7 = v6;
  v8 = &v3[*(v1 + 36)];
  sub_21DFB635C(v0, v8);
  v9 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA89C0) + 36));
  *v9 = v5;
  v9[1] = v7;
  sub_21DFB6A54();
  sub_21E141164();
  return sub_21DF23614(v3, &qword_27CEA89B0);
}

unint64_t sub_21DFB6A54()
{
  result = qword_27CEA89C8;
  if (!qword_27CEA89C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA89B0);
    sub_21DF23E5C(&qword_27CEA89D0, &qword_27CEA89D8);
    sub_21DF23E5C(&qword_27CEA89E0, &qword_27CEA89C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA89C8);
  }

  return result;
}

uint64_t sub_21DFB6B58@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ImageSearchCardAdImageView(0);
  __swift_project_boxed_opaque_existential_1((v1 + *(v3 + 24)), *(v1 + *(v3 + 24) + 24));
  sub_21E13E9F4();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_21E13D6D4();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_21E13D6E4();
  *a1 = sub_21E141CC4();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B30);
  sub_21DFB6C64(v7, v1, a1 + *(v5 + 44));
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_21DFB6C64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B38);
  MEMORY[0x28223BE20](v116);
  v7 = &v110 - v6;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B40);
  MEMORY[0x28223BE20](v117);
  v120 = &v110 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B48);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v119 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v118 = &v110 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v123 = &v110 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B58);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v122 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v110 - v23;
  sub_21DFB75EC(a1, a2, &v110 - v23);
  v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B60) + 36)] = 1;
  v25 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  v26 = sub_21E140914();
  v27 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B68) + 36)];
  *v27 = v25;
  v27[8] = v26;
  v28 = sub_21E141CC4();
  v30 = v29;
  v31 = *(v20 + 44);
  v121 = v24;
  v32 = &v24[v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B70);
  sub_21DFB7EBC(a2, v32 + *(v33 + 36));
  *v32 = v28;
  v32[1] = v30;
  v34 = type metadata accessor for ImageSearchCardAdImageView(0);
  __swift_project_boxed_opaque_existential_1((a2 + *(v34 + 24)), *(a2 + *(v34 + 24) + 24));
  sub_21E13EA04();
  __swift_project_boxed_opaque_existential_1(v125, v125[3]);
  sub_21E13EAB4();
  if (!*(&v127 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(v125);
    sub_21DF23614(&v126, &qword_27CEA8948);
    v38 = 1;
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(&v126, *(&v127 + 1));
  v35 = sub_21E13E884();
  v37 = v36;
  __swift_destroy_boxed_opaque_existential_0(&v126);
  __swift_destroy_boxed_opaque_existential_0(v125);
  v38 = 1;
  if (!v37)
  {
LABEL_9:
    v92 = v123;
    goto LABEL_10;
  }

  v112 = v10;
  v113 = v9;
  v114 = v16;
  v115 = a3;
  *&v126 = v35;
  *(&v126 + 1) = v37;
  sub_21DF252E0();
  v39 = sub_21E140C94();
  v41 = v40;
  v43 = v42;
  sub_21E140AA4();
  v44 = sub_21E140C44();
  v46 = v45;
  v48 = v47;

  sub_21DF3DE8C(v39, v41, v43 & 1);

  sub_21E1409E4();
  v111 = sub_21E140BD4();
  v110 = v49;
  v51 = v50;
  v53 = v52;
  sub_21DF3DE8C(v44, v46, v48 & 1);

  v54 = sub_21E140974();
  sub_21E13F374();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  LOBYTE(v44) = v51 & 1;
  LOBYTE(v125[0]) = v51 & 1;
  v124 = 0;
  LOBYTE(v39) = sub_21E140904();
  sub_21E13F374();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  LOBYTE(v126) = 0;
  v71 = &v7[*(v116 + 36)];
  sub_21E141BF4();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B80);
  v73 = &v71[*(v72 + 52)];
  v74 = *(sub_21E13FCA4() + 20);
  v75 = *MEMORY[0x277CE0118];
  v76 = sub_21E140144();
  (*(*(v76 - 8) + 104))(&v73[v74], v75, v76);
  __asm { FMOV            V0.2D, #6.0 }

  *v73 = _Q0;
  *&v71[*(v72 + 56)] = 256;
  v82 = v110;
  *v7 = v111;
  *(v7 + 1) = v82;
  v7[16] = v44;
  *(v7 + 3) = v53;
  v7[32] = v54;
  *(v7 + 5) = v56;
  *(v7 + 6) = v58;
  *(v7 + 7) = v60;
  *(v7 + 8) = v62;
  v7[72] = 0;
  v7[80] = v39;
  *(v7 + 11) = v64;
  *(v7 + 12) = v66;
  *(v7 + 13) = v68;
  *(v7 + 14) = v70;
  v7[120] = 0;
  sub_21E141C94();
  sub_21E13FCE4();
  v83 = v120;
  sub_21DF3DE9C(v7, v120, &qword_27CEA8B38);
  v84 = (v83 + *(v117 + 36));
  v85 = v131;
  v84[4] = v130;
  v84[5] = v85;
  v84[6] = v132;
  v86 = v127;
  *v84 = v126;
  v84[1] = v86;
  v87 = v129;
  v84[2] = v128;
  v84[3] = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E147C80;
  LOBYTE(v74) = sub_21E140944();
  *(inited + 32) = v74;
  v89 = sub_21E140924();
  *(inited + 33) = v89;
  v90 = sub_21E140954();
  sub_21E140954();
  if (sub_21E140954() != v74)
  {
    v90 = sub_21E140954();
  }

  sub_21E140954();
  v91 = sub_21E140954();
  v9 = v113;
  v92 = v123;
  if (v91 != v89)
  {
    v90 = sub_21E140954();
  }

  a3 = v115;
  v16 = v114;
  v10 = v112;
  sub_21E13F374();
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v101 = v83;
  v102 = v119;
  sub_21DF3DE9C(v101, v119, &qword_27CEA8B40);
  v103 = v102 + *(v9 + 36);
  *v103 = v90;
  *(v103 + 8) = v94;
  *(v103 + 16) = v96;
  *(v103 + 24) = v98;
  *(v103 + 32) = v100;
  *(v103 + 40) = 0;
  v104 = v102;
  v105 = v118;
  sub_21DF3DE9C(v104, v118, &qword_27CEA8B48);
  sub_21DF3DE9C(v105, v92, &qword_27CEA8B48);
  v38 = 0;
LABEL_10:
  (*(v10 + 56))(v92, v38, 1, v9);
  v106 = v121;
  v107 = v122;
  sub_21DF236C0(v121, v122, &qword_27CEA8B58);
  sub_21DF236C0(v92, v16, &qword_27CEA8B50);
  sub_21DF236C0(v107, a3, &qword_27CEA8B58);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B78);
  sub_21DF236C0(v16, a3 + *(v108 + 48), &qword_27CEA8B50);
  sub_21DF23614(v92, &qword_27CEA8B50);
  sub_21DF23614(v106, &qword_27CEA8B58);
  sub_21DF23614(v16, &qword_27CEA8B50);
  return sub_21DF23614(v107, &qword_27CEA8B58);
}

uint64_t sub_21DFB75EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v48 = a3;
  v43 = type metadata accessor for ImageSearchCardAdImageView(0);
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v45 = v4;
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BD0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BD8);
  MEMORY[0x28223BE20](v41);
  v16 = &v41 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BE0);
  MEMORY[0x28223BE20](v42);
  v18 = &v41 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13D6F4();
  sub_21DF236C0(v10, v7, &qword_27CEA9990);
  v19 = swift_allocObject();
  v19[2] = sub_21DFB7BCC;
  v19[3] = 0;
  v19[4] = sub_21DFB7CE0;
  v19[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BE8);
  sub_21DFB8FD0();
  sub_21E13F334();
  sub_21DF23614(v10, &qword_27CEA9990);
  v20 = &v14[*(v12 + 44)];
  *v20 = 0;
  *(v20 + 4) = 1;
  sub_21E141CC4();
  sub_21E13FCE4();
  sub_21DF3DE9C(v14, v16, &qword_27CEA8BD0);
  v21 = &v16[*(v41 + 36)];
  v22 = v54;
  *(v21 + 4) = v53;
  *(v21 + 5) = v22;
  *(v21 + 6) = v55;
  v23 = v50;
  *v21 = v49;
  *(v21 + 1) = v23;
  v24 = v52;
  *(v21 + 2) = v51;
  *(v21 + 3) = v24;
  v25 = v47;
  v26 = (v47 + *(v43 + 20));
  *&v24 = *v26;
  v27 = v26[1];
  *&v56 = v24;
  *(&v56 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  sub_21E141CC4();
  sub_21E13F664();
  sub_21DF3DE9C(v16, v18, &qword_27CEA8BD8);
  v28 = &v18[*(v42 + 36)];
  v29 = v57;
  v30 = v58;
  *v28 = v56;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  v31 = v25;
  v32 = v46;
  sub_21DFB873C(v31, v46, type metadata accessor for ImageSearchCardAdImageView);
  v33 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v34 = swift_allocObject();
  sub_21DFB9088(v32, v34 + v33);
  v35 = sub_21E141CC4();
  v37 = v36;
  v38 = v48;
  sub_21DF3DE9C(v18, v48, &qword_27CEA8BE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C08);
  v40 = (v38 + *(result + 36));
  *v40 = sub_21DFB90EC;
  v40[1] = v34;
  v40[2] = v35;
  v40[3] = v37;
  return result;
}

uint64_t sub_21DFB7BCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21E141624();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2, v4);
  v7 = sub_21E141664();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_21DFB7CE0@<X0>(uint64_t a1@<X8>)
{
  result = sub_21E1404B4();
  *a1 = result;
  *(a1 + 4) = 1053609165;
  *(a1 + 8) = 256;
  return result;
}

uint64_t sub_21DFB7D18@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ImageSearchCardAdImageView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21E1414A4();
  sub_21DFB873C(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageSearchCardAdImageView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = sub_21DFB9088(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *a2 = v7;
  a2[1] = sub_21DF0AFAC;
  a2[2] = 0;
  a2[3] = sub_21DFB929C;
  a2[4] = v9;
  return result;
}

uint64_t sub_21DFB7E44()
{
  type metadata accessor for ImageSearchCardAdImageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  return sub_21E141724();
}

uint64_t sub_21DFB7EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B88);
  MEMORY[0x28223BE20](v55);
  v57 = &v47 - v3;
  v56 = sub_21E13FCA4();
  MEMORY[0x28223BE20](v56);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B90);
  MEMORY[0x28223BE20](v50);
  v52 = &v47 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B98);
  MEMORY[0x28223BE20](v48);
  v8 = &v47 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BA0);
  MEMORY[0x28223BE20](v51);
  v49 = &v47 - v9;
  v10 = sub_21E1404F4();
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BA8);
  MEMORY[0x28223BE20](v54);
  v53 = &v47 - v13;
  v14 = sub_21E1401B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImageSearchCardAdImageView(0);
  if (*(a1 + v18[8]) == 1 && (sub_21E021E10(v17), v19 = sub_21E1401A4(), (*(v15 + 8))(v17, v14), (v19 & 1) == 0))
  {
    v26 = *(a1 + v18[9]);
    if (*(a1 + v18[7]) > 1uLL)
    {
      v43 = *(v56 + 20);
      v44 = *MEMORY[0x277CE0118];
      v45 = sub_21E140144();
      (*(*(v45 - 8) + 104))(&v5[v43], v44, v45);
      *v5 = v26;
      *(v5 + 1) = v26;
      v46 = MEMORY[0x277CDFC08];
      sub_21DFB873C(v5, v52, MEMORY[0x277CDFC08]);
      swift_storeEnumTagMultiPayload();
      sub_21DFB8EC8();
      sub_21DFB8F7C(&qword_27CEA8BC8, MEMORY[0x277CDFC08]);
      v40 = v53;
      sub_21E1402F4();
      v41 = v5;
      v42 = v46;
    }

    else
    {
      sub_21E140344();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v35 = *(v10 + 20);
      v36 = *MEMORY[0x277CE0118];
      v37 = sub_21E140144();
      (*(*(v37 - 8) + 104))(&v12[v35], v36, v37);
      *v12 = v28;
      *(v12 + 1) = v30;
      *(v12 + 2) = v32;
      *(v12 + 3) = v34;
      v38 = MEMORY[0x277CE0550];
      sub_21DFB873C(v12, v8, MEMORY[0x277CE0550]);
      swift_storeEnumTagMultiPayload();
      sub_21DFB8F7C(&qword_27CEA8BC0, MEMORY[0x277CE0550]);
      v39 = v49;
      sub_21E1402F4();
      sub_21DF236C0(v39, v52, &qword_27CEA8BA0);
      swift_storeEnumTagMultiPayload();
      sub_21DFB8EC8();
      sub_21DFB8F7C(&qword_27CEA8BC8, MEMORY[0x277CDFC08]);
      v40 = v53;
      sub_21E1402F4();
      sub_21DF23614(v39, &qword_27CEA8BA0);
      v41 = v12;
      v42 = v38;
    }

    sub_21DFB87A4(v41, v42);
    sub_21DF236C0(v40, v57, &qword_27CEA8BA8);
    swift_storeEnumTagMultiPayload();
    sub_21DFB8E0C();
    sub_21DFB8F7C(&qword_27CEA8BC8, MEMORY[0x277CDFC08]);
    sub_21E1402F4();
    return sub_21DF23614(v40, &qword_27CEA8BA8);
  }

  else
  {
    v20 = *(a1 + v18[9]);
    v21 = *(v56 + 20);
    v22 = *MEMORY[0x277CE0118];
    v23 = sub_21E140144();
    (*(*(v23 - 8) + 104))(&v5[v21], v22, v23);
    *v5 = v20;
    *(v5 + 1) = v20;
    v24 = MEMORY[0x277CDFC08];
    sub_21DFB873C(v5, v57, MEMORY[0x277CDFC08]);
    swift_storeEnumTagMultiPayload();
    sub_21DFB8E0C();
    sub_21DFB8F7C(&qword_27CEA8BC8, MEMORY[0x277CDFC08]);
    sub_21E1402F4();
    return sub_21DFB87A4(v5, v24);
  }
}

uint64_t sub_21DFB873C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DFB87A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21DFB8808()
{
  result = qword_27CEA8A68;
  if (!qword_27CEA8A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8A60);
    sub_21DFB8894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8A68);
  }

  return result;
}

unint64_t sub_21DFB8894()
{
  result = qword_27CEA8A70;
  if (!qword_27CEA8A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8A78);
    sub_21DFB894C();
    sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8A70);
  }

  return result;
}

unint64_t sub_21DFB894C()
{
  result = qword_27CEA8A80;
  if (!qword_27CEA8A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8A88);
    sub_21DFB8A04();
    sub_21DF23E5C(&qword_280F68E00, &qword_27CEA8AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8A80);
  }

  return result;
}

unint64_t sub_21DFB8A04()
{
  result = qword_27CEA8A90;
  if (!qword_27CEA8A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8A98);
    sub_21DF23E5C(&qword_280F68DD8, &qword_27CEA73A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8A90);
  }

  return result;
}

unint64_t sub_21DFB8ABC()
{
  result = qword_27CEA8AB8;
  if (!qword_27CEA8AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8AB0);
    sub_21DFB8B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8AB8);
  }

  return result;
}

unint64_t sub_21DFB8B48()
{
  result = qword_27CEA8AC0;
  if (!qword_27CEA8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8AC0);
  }

  return result;
}

unint64_t sub_21DFB8B9C()
{
  result = qword_280F68FB0;
  if (!qword_280F68FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8B00);
    sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68FB0);
  }

  return result;
}

void sub_21DFB8C7C()
{
  sub_21DFB48FC();
  if (v0 <= 0x3F)
  {
    sub_21DFA2408();
    if (v1 <= 0x3F)
    {
      sub_21DFB4954();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21DFB8D34()
{
  result = qword_27CEA8B20;
  if (!qword_27CEA8B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8B28);
    sub_21DFB6A54();
    sub_21DFB8F7C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8B20);
  }

  return result;
}

unint64_t sub_21DFB8E0C()
{
  result = qword_27CEA8BB0;
  if (!qword_27CEA8BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8BA8);
    sub_21DFB8EC8();
    sub_21DFB8F7C(&qword_27CEA8BC8, MEMORY[0x277CDFC08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8BB0);
  }

  return result;
}

unint64_t sub_21DFB8EC8()
{
  result = qword_27CEA8BB8;
  if (!qword_27CEA8BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8BA0);
    sub_21DFB8F7C(&qword_27CEA8BC0, MEMORY[0x277CE0550]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8BB8);
  }

  return result;
}

uint64_t sub_21DFB8F7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21DFB8FD0()
{
  result = qword_27CEA8BF0;
  if (!qword_27CEA8BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8BE8);
    sub_21DF23E5C(&qword_27CEA8BF8, &qword_27CEA8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8BF0);
  }

  return result;
}

uint64_t sub_21DFB9088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageSearchCardAdImageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFB90EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ImageSearchCardAdImageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21DFB7D18(v4, a1);
}

uint64_t objectdestroy_25Tm()
{
  v1 = type metadata accessor for ImageSearchCardAdImageView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21E1401B4();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + v2 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_21DFB929C()
{
  type metadata accessor for ImageSearchCardAdImageView(0);

  return sub_21DFB7E44();
}

uint64_t type metadata accessor for ImageSearchAdsBlockView()
{
  result = qword_27CEA8C20;
  if (!qword_27CEA8C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DFB9388()
{
  sub_21DF3EF18(319, &qword_280F69040, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_21DF3EF18(319, &qword_27CEA7108, MEMORY[0x277CE02A8]);
    if (v1 <= 0x3F)
    {
      sub_21DFB9504(319, &qword_280F69020, &qword_27CEA79E8, &unk_21E14EA10, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21DFB9504(319, &qword_27CEA9E20, &qword_27CEA8668, &unk_21E149310, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21E13E2A4();
          if (v4 <= 0x3F)
          {
            sub_21DFB9568();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21DFB9504(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_21DFB9568()
{
  result = qword_280F68BC0;
  if (!qword_280F68BC0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280F68BC0);
  }

  return result;
}

uint64_t sub_21DFB95D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for ImageSearchAdsBlockView();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9D90);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C30);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C38);
  MEMORY[0x28223BE20](v24);
  v11 = &v24 - v10;
  *v9 = sub_21E1401C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C40);
  sub_21DFB9A0C(v2, &v9[*(v12 + 44)]);
  sub_21DF23E5C(&qword_27CEA8C48, &qword_27CEA8C30);
  sub_21E141164();
  sub_21DF23614(v9, &qword_27CEA8C30);
  v13 = sub_21E140934();
  sub_21E13F374();
  v14 = &v11[*(v24 + 36)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);
  v19 = v2;
  v20 = v25;
  sub_21E141734();
  sub_21DFBB894(v19, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = swift_allocObject();
  sub_21DFBB8F8(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  type metadata accessor for IdentifiableURL();
  type metadata accessor for InAppWebPresentationView(0);
  sub_21DFBC134(&qword_27CEA8C50, &qword_27CEA8C38, &unk_21E149F28, sub_21DFBB974);
  sub_21DFBBCE4(&qword_27CEA8C68, type metadata accessor for IdentifiableURL);
  sub_21DFBBCE4(&qword_27CEA9E70, type metadata accessor for InAppWebPresentationView);
  sub_21E141284();

  sub_21DF23614(v20, &unk_27CEA9D90);
  return sub_21DF23614(v11, &qword_27CEA8C38);
}

uint64_t sub_21DFB9A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C70);
  MEMORY[0x28223BE20](v71);
  v74 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v62 - v5;
  v6 = type metadata accessor for ImageSearchAdsBlockView();
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C78);
  MEMORY[0x28223BE20](v63);
  v75 = (&v62 - v8);
  v9 = sub_21E1401B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C80);
  MEMORY[0x28223BE20](v66);
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v62 - v15;
  MEMORY[0x28223BE20](v16);
  v68 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C88);
  MEMORY[0x28223BE20](v18 - 8);
  v69 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  *v22 = sub_21E140004();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C90) + 44);
  v67 = v22;
  sub_21DFBA21C(a1, &v22[v23]);
  v24 = *(sub_21E13E294() + 16);

  if (v24 == 1)
  {
    v25 = 1;
  }

  else
  {
    sub_21E021E10(v12);
    v26 = sub_21E1401A4();
    (*(v10 + 8))(v12, v9);
    v25 = 1;
    if ((v26 & 1) == 0)
    {
      v25 = 2;
    }
  }

  *v75 = v25;
  v63 = *(v63 + 44);
  v27 = sub_21E13E294();
  v28 = sub_21DFA7CE4(v27);

  v80 = v28;
  swift_getKeyPath();
  sub_21DFBB894(a1, &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v30 = swift_allocObject();
  sub_21DFBB8F8(&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  *(v30 + v29 + v7) = 1;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_21DFBBA5C;
  *(v31 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8CA0);
  sub_21DF23E5C(&qword_27CEA8CA8, &qword_27CEA8C98);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8CB0);
  v33 = sub_21DF23E5C(&qword_27CEA8CB8, &qword_27CEA8CB0);
  v34 = sub_21DFBBB34();
  v76 = v32;
  v77 = &type metadata for ImageSearchCardButtonStyle;
  v78 = v33;
  v79 = v34;
  swift_getOpaqueTypeConformance2();
  sub_21E141A74();
  v35 = sub_21E140934();
  v36 = sub_21E140954();
  sub_21E140954();
  if (sub_21E140954() != v35)
  {
    v36 = sub_21E140954();
  }

  sub_21E13F374();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v65;
  sub_21DF3DE9C(v75, v65, &qword_27CEA8C78);
  v46 = v45 + *(v66 + 36);
  *v46 = v36;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  v47 = v68;
  sub_21DF3DE9C(v45, v68, &qword_27CEA8C80);
  v48 = v72;
  sub_21E141A44();
  v49 = sub_21E1404B4();
  *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8CC8) + 36)) = v49;
  LOBYTE(v49) = sub_21E140904();
  sub_21E13F374();
  v50 = v48 + *(v71 + 36);
  *v50 = v49;
  *(v50 + 8) = v51;
  *(v50 + 16) = v52;
  *(v50 + 24) = v53;
  *(v50 + 32) = v54;
  *(v50 + 40) = 0;
  v55 = v67;
  v56 = v69;
  sub_21DF236C0(v67, v69, &qword_27CEA8C88);
  v57 = v70;
  sub_21DF0E730(v47, v70);
  v58 = v74;
  sub_21DF236C0(v48, v74, &qword_27CEA8C70);
  v59 = v73;
  sub_21DF236C0(v56, v73, &qword_27CEA8C88);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8CD0);
  sub_21DF0E730(v57, v59 + *(v60 + 48));
  sub_21DF236C0(v58, v59 + *(v60 + 64), &qword_27CEA8C70);
  sub_21DF23614(v48, &qword_27CEA8C70);
  sub_21DF23614(v47, &qword_27CEA8C80);
  sub_21DF23614(v55, &qword_27CEA8C88);
  sub_21DF23614(v58, &qword_27CEA8C70);
  sub_21DF23614(v57, &qword_27CEA8C80);
  return sub_21DF23614(v56, &qword_27CEA8C88);
}

uint64_t sub_21DFBA21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for ImageSearchAdsBlockView();
  v64 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v65 = v4;
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8D10);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = &v58 - v7;
  v8 = sub_21E140A64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v12 = sub_21E13E284();
  v14 = 0x65726F736E6F7053;
  if (v13)
  {
    v14 = v12;
  }

  v15 = 0xE900000000000064;
  if (v13)
  {
    v15 = v13;
  }

  v77 = v14;
  v78 = v15;
  sub_21DF252E0();
  v16 = sub_21E140C94();
  v18 = v17;
  v20 = v19;
  sub_21E140AB4();
  sub_21E140A04();
  sub_21E140A54();

  (*(v9 + 104))(v11, *MEMORY[0x277CE0A10], v8);
  sub_21E140A94();

  (*(v9 + 8))(v11, v8);
  v21 = sub_21E140C44();
  v23 = v22;
  v25 = v24;

  sub_21DF3DE8C(v16, v18, v20 & 1);

  LODWORD(v77) = sub_21E1404A4();
  v72 = sub_21E140C24();
  v61 = v26;
  v28 = v27;
  v63 = v29;
  sub_21DF3DE8C(v21, v23, v25 & 1);

  v30 = sub_21E140944();
  v31 = sub_21E140954();
  sub_21E140954();
  if (sub_21E140954() != v30)
  {
    v31 = sub_21E140954();
  }

  v59 = v31;
  sub_21E13F374();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v28 & 1;
  v92 = v28 & 1;
  v60 = v28 & 1;
  v89 = 0;
  v41 = v66;
  sub_21DFBB894(v67, v66);
  v42 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v43 = swift_allocObject();
  sub_21DFBB8F8(v41, v43 + v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8D18);
  sub_21DFBC134(&qword_27CEA8D20, &qword_27CEA8D18, &unk_21E14A028, sub_21DFBC1B8);
  v44 = v68;
  sub_21E141764();
  v45 = v70;
  v46 = *(v70 + 16);
  v47 = v69;
  v48 = v71;
  v46(v69, v44, v71);
  *&v73 = v72;
  v49 = v61;
  *(&v73 + 1) = v61;
  LOBYTE(v74) = v40;
  *(&v74 + 1) = *v91;
  DWORD1(v74) = *&v91[3];
  v50 = v63;
  *(&v74 + 1) = v63;
  LOBYTE(v75) = v31;
  *(&v75 + 1) = *v90;
  DWORD1(v75) = *&v90[3];
  *(&v75 + 1) = v33;
  *v76 = v35;
  *&v76[8] = v37;
  *&v76[16] = v39;
  v76[24] = 0;
  v51 = v73;
  v52 = v74;
  v53 = v62;
  *(v62 + 57) = *&v76[9];
  v54 = *v76;
  *(v53 + 32) = v75;
  *(v53 + 48) = v54;
  *v53 = v51;
  *(v53 + 16) = v52;
  *(v53 + 80) = 0;
  *(v53 + 88) = 1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8D50);
  v46((v53 + *(v55 + 64)), v47, v48);
  sub_21DF236C0(&v73, &v77, &qword_27CEA7048);
  v56 = *(v45 + 8);
  v56(v44, v48);
  v56(v47, v48);
  v77 = v72;
  v78 = v49;
  v79 = v60;
  *v80 = *v91;
  *&v80[3] = *&v91[3];
  v81 = v50;
  v82 = v59;
  *v83 = *v90;
  *&v83[3] = *&v90[3];
  v84 = v33;
  v85 = v35;
  v86 = v37;
  v87 = v39;
  v88 = 0;
  return sub_21DF23614(&v77, &qword_27CEA7048);
}

uint64_t sub_21DFBA90C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_21E13FF94();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_21E13D264();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImageSearchAdsBlockView();
  sub_21E13E274();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_21DF23614(v13, &qword_27CEA9990);
  }

  (*(v15 + 32))(v17, v13, v14);
  v20 = MKBGetDeviceLockState();
  if (v20 && v20 != 3)
  {
    v22 = a1 + *(v18 + 24);
    v23 = *v22;
    if (*(v22 + 16) == 1)
    {
    }

    else
    {

      sub_21E142574();
      v24 = sub_21E1408C4();
      sub_21E13F184();

      sub_21E13FF84();
      swift_getAtKeyPath();
      sub_21DF446B8();
      (*(v25 + 8))(v10, v26);
      v23 = v27;
    }

    LOBYTE(v27) = 1;
    v23(v17, &v27);
  }

  else
  {
    (*(v15 + 16))(v7, v17, v14);
    v21 = type metadata accessor for IdentifiableURL();
    (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
    sub_21DF236C0(v7, v4, &qword_27CEA8668);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);
    sub_21E141724();
    sub_21DF23614(v7, &qword_27CEA8668);
  }

  return (*(v15 + 8))(v17, v14);
}