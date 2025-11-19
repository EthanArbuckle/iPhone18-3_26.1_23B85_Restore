uint64_t SaliencyStreamIngredients.init<A>(configuration:configStorage:trackManagerSupporting:vapClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v42 = a6;
  v49 = a5;
  v46 = a3;
  v47 = a7;
  v11 = type metadata accessor for SaliencyStreamConfiguration();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = (v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v15 = v39 - v14;
  sub_1D88C7D1C(a1, v39 - v14, type metadata accessor for SaliencyStreamConfiguration);
  type metadata accessor for TrackManager(0);
  swift_allocObject();
  v16 = sub_1D8AF6530(v15, a3, a4);
  v41 = a1;
  sub_1D88C7D1C(a1, v15, type metadata accessor for SaliencyStreamConfiguration);
  type metadata accessor for CVCoordinator(0);
  swift_allocObject();

  v45 = sub_1D8A5047C(v15, v16);

  sub_1D88C7D1C(a1, v15, type metadata accessor for SaliencyStreamConfiguration);
  v39[0] = a2;
  sub_1D88C9920();
  v18 = v17;
  v43 = v19;
  v21 = v20;
  v22 = v48;
  sub_1D88C7D1C(v15, v48, type metadata accessor for SaliencyStreamConfiguration);
  type metadata accessor for BundleManager(0);
  swift_allocObject();
  v44 = v16;

  swift_unknownObjectRetain();

  v40 = sub_1D88C1A24(v22, v18, v43, v21, &unk_1D8B256D8, v16, 0, 0);

  swift_unknownObjectRelease();
  v43 = type metadata accessor for SaliencyStreamConfiguration;
  sub_1D88C7D84(v15, type metadata accessor for SaliencyStreamConfiguration);
  v23 = v41;
  sub_1D88C7D1C(v41, v15, type metadata accessor for SaliencyStreamConfiguration);
  sub_1D88C9920();
  v39[1] = v24;
  type metadata accessor for BundleSelector(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v25 = v40;

  v26 = sub_1D88C21C4(v15, &unk_1D8B256E8, v25);

  swift_unknownObjectRelease();
  sub_1D88C7D1C(v23, v15, type metadata accessor for SaliencyStreamConfiguration);
  sub_1D88C9920();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v48;
  sub_1D88C7D1C(v15, v48, type metadata accessor for SaliencyStreamConfiguration);
  type metadata accessor for ActionPredictor(0);
  swift_allocObject();

  v34 = sub_1D88C143C(v33, v28, v30, v32, &unk_1D8B256F8, v26);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v35 = v43;
  sub_1D88C7D84(v23, v43);
  result = sub_1D88C7D84(v15, v35);
  v37 = v47;
  v38 = v44;
  *v47 = v45;
  v37[1] = v38;
  v37[2] = v25;
  v37[3] = v26;
  v37[4] = v34;
  return result;
}

uint64_t sub_1D889DFA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D889DFC4, a2, 0);
}

uint64_t sub_1D889DFC4()
{
  sub_1D8895C10(v0[3] + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_outputStreamBufferingPolicy, v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D889E034(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D889E050, a2, 0);
}

uint64_t sub_1D889E050()
{
  sub_1D889559C(*(v0 + 24) + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_outputStreamBufferingPolicy);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D889E0C0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v2[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64810);
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D889E1C8, a2, 0);
}

uint64_t sub_1D889E1C8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  (*(v2 + 16))(v1, v5 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_outputStreamBufferingPolicy, v4);
  sub_1D8AA7C74(v3);
  v7 = sub_1D88C7AAC(&qword_1EE0E7FA8, type metadata accessor for BundleSelector);
  sub_1D88AE494(v1, v3, v5, v7, v6);
  sub_1D87A14E4(v3, &qword_1ECA640E8);
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t SaliencyStreamIdentifierProviding<>.streamIdentifier.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(SaliencyStreamIngredientsProviding.actionPredictor.getter(a1, a3) + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_identifier);

  return v3;
}

VisualIntelligenceCore::visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy_optional sub_1D889E348()
{
  v1 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750) + 44));
  if (!*(v1 + 16))
  {
    return 117;
  }

  result.value = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v1 + 32)).value;
  if (v3 != 181)
  {
    return visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
  }

  __break(1u);
  return result;
}

uint64_t SaliencyStreamInternalMonitorable.makeBundleManagerOutputStream(bufferingPolicyOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D886553C;

  return v11(a1, a2, a3, a4);
}

uint64_t SaliencyStreamInternalMonitorable.makeBundleSelectorOutputStream(bufferingPolicyOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D886553C;

  return v11(a1, a2, a3, a4);
}

uint64_t SaliencyStreamInternalMonitorable.makeActionPredictorOutputStream(bufferingPolicyOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D886553C;

  return v11(a1, a2, a3, a4);
}

id InProcessMediaFrame.cameraImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1D88C2718(v2, v3);
}

__n128 InProcessMediaFrame.metadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 80);
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

__n128 InProcessMediaFrame.copyFrameWithoutImage()@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 3;
  v2 = *(v1 + 64);
  *(a1 + 48) = *(v1 + 48);
  *(a1 + 64) = v2;
  *(a1 + 80) = *(v1 + 80);
  result = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = result;
  return result;
}

__n128 static InProcessMediaFrame.fromPbuf(_:timestamp:highResStill:)@<Q0>(void *a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>, double a4@<D0>)
{
  v8 = a1;
  Width = CVPixelBufferGetWidth(v8);
  Height = CVPixelBufferGetHeight(v8);
  a3->n128_u64[0] = a1;
  a3->n128_u8[8] = 0;
  a3[1].n128_f64[0] = Width;
  a3[1].n128_f64[1] = Height;
  a3[2].n128_u64[0] = 0;
  a3[2].n128_u8[8] = 1;
  a3[3].n128_f64[0] = a4;
  a3[3].n128_u8[8] = a2;
  a3[4].n128_u64[0] = 0;
  a3[4].n128_u64[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  a3[5] = result;
  return result;
}

__n128 static InProcessMediaFrame.fromFrameReplacingImage(_:pixelBuffer:)@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = *(v6 + 40);
  v8 = a2;
  v7(v11, v5, v6);
  *&v10[39] = v11[2];
  *&v10[23] = v11[1];
  *&v10[55] = v11[3];
  *&v10[71] = v11[4];
  *&v10[7] = v11[0];
  *(a3 + 41) = *&v10[32];
  *(a3 + 57) = *&v10[48];
  *(a3 + 73) = *&v10[64];
  result = *v10;
  *(a3 + 9) = *v10;
  *a3 = a2;
  *(a3 + 8) = 0;
  *(a3 + 88) = *&v10[79];
  *(a3 + 25) = *&v10[16];
  return result;
}

id sub_1D889E934@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1D88C2718(v2, v3);
}

__n128 sub_1D889E948@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 80);
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1D889E964@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 3;
  v2 = *(v1 + 64);
  *(a1 + 48) = *(v1 + 48);
  *(a1 + 64) = v2;
  *(a1 + 80) = *(v1 + 80);
  result = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = result;
  return result;
}

uint64_t StillImageMediaManifest.__allocating_init(cvCoordinator:frame:)(uint64_t a1, _BYTE *a2)
{
  v4 = swift_allocObject();
  StillImageMediaManifest.init(cvCoordinator:frame:)(a1, a2);
  return v4;
}

uint64_t sub_1D889EA3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  sub_1D8B13230();
  sub_1D8B131E0();
  (*(v7 + 8))(v9, v6);
  v10 = sub_1D881BE2C(8);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  *(v3 + 128) = v10;
  *(v3 + 136) = v12;
  *(v3 + 144) = v14;
  *(v3 + 152) = v16;
  v17 = *(*v3 + 128);
  if (qword_1EE0E4400 != -1)
  {
    swift_once();
  }

  v18 = sub_1D8B151E0();
  v19 = __swift_project_value_buffer(v18, qword_1EE0E4408);
  (*(*(v18 - 8) + 16))(v3 + v17, v19, v18);
  *(v3 + 24) = a1;
  v20 = *(a2 + 48);
  *(v3 + 64) = *(a2 + 32);
  *(v3 + 80) = v20;
  v21 = *(a2 + 80);
  *(v3 + 96) = *(a2 + 64);
  *(v3 + 112) = v21;
  v22 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v22;
  sub_1D888406C(a2, v37);
  sub_1D888406C(a2, v37);

  sub_1D888406C(a2, v37);

  v23 = sub_1D8B151C0();
  v24 = sub_1D8B16200();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 136315650;
    v36[1] = a1;
    v37[0] = v26;
    v27 = *(v3 + 128);
    v28 = *(v3 + 136);
    v30 = *(v3 + 144);
    v29 = *(v3 + 152);

    v31 = MEMORY[0x1DA71EF10](v27, v28, v30, v29);
    v33 = v32;

    v34 = sub_1D89AC714(v31, v33, v37);

    *(v25 + 4) = v34;
    *(v25 + 12) = 2048;
    sub_1D8884018(a2);
    LOBYTE(v34) = *(a2 + 56);
    *(v25 + 14) = *(a2 + 48);
    *(v25 + 22) = 1024;
    sub_1D8884018(a2);
    *(v25 + 24) = v34 & 1;
    sub_1D8884018(a2);
    _os_log_impl(&dword_1D8783000, v23, v24, "StillImageMediaManifest[%s] created for timestamp %f (isHighResolutionStill: %{BOOL}d)", v25, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1DA721330](v26, -1, -1);
    MEMORY[0x1DA721330](v25, -1, -1);
  }

  else
  {
    sub_1D8884018(a2);

    sub_1D8884018(a2);

    sub_1D8884018(a2);
  }

  return v3;
}

char *StillImageMediaManifest.init(cvCoordinator:frame:)(uint64_t a1, _BYTE *a2)
{
  v3 = v2;
  v57 = a1;
  v58 = a2;
  v4 = *v2;
  v54 = v4;
  v5 = *(v4 + 80);
  v55 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v51[-v9];
  v10 = sub_1D8B13240();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v3 + 2) = MEMORY[0x1E69E7CD0];
  v14 = &v3[*(v4 + 120)];
  sub_1D8B13230();
  sub_1D8B131E0();
  (*(v11 + 8))(v13, v10);
  v15 = sub_1D881BE2C(8);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  *v14 = v15;
  v14[1] = v17;
  v14[2] = v19;
  v14[3] = v21;
  v22 = *(*v3 + 128);
  if (qword_1EE0E4400 != -1)
  {
    swift_once();
  }

  v23 = sub_1D8B151E0();
  v24 = __swift_project_value_buffer(v23, qword_1EE0E4408);
  (*(*(v23 - 8) + 16))(&v3[v22], v24, v23);
  v25 = v58;
  *(v3 + 3) = v57;
  v26 = v55;
  v27 = *(v55 + 16);
  v27(&v3[*(*v3 + 112)], v25, v5);
  v28 = v56;
  v27(v56, v25, v5);
  v27(v8, v25, v5);

  v29 = sub_1D8B151C0();
  v30 = sub_1D8B16200();
  v31 = v26;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v53 = v8;
    v33 = v32;
    v34 = swift_slowAlloc();
    v61 = v34;
    *v33 = 136315650;
    v35 = &v3[*(*v3 + 120)];
    v52 = v30;
    v36 = *v35;
    v37 = *(v35 + 1);
    v38 = *(v35 + 2);
    v39 = *(v35 + 3);

    v40 = MEMORY[0x1DA71EF10](v36, v37, v38, v39);
    v42 = v41;

    v43 = sub_1D89AC714(v40, v42, &v61);

    *(v33 + 4) = v43;
    *(v33 + 12) = 2048;
    v44 = *(v54 + 88);
    v45 = v56;
    v46 = CameraSourceFrame.timestamp.getter(v5, v44);
    v47 = *(v31 + 8);
    v47(v45, v5);
    *(v33 + 14) = v46;
    *(v33 + 22) = 1024;
    v48 = v53;
    (*(v44 + 40))(v59, v5, v44);
    LODWORD(v45) = v60;
    v47(v48, v5);
    *(v33 + 24) = v45;
    _os_log_impl(&dword_1D8783000, v29, v52, "StillImageMediaManifest[%s] created for timestamp %f (isHighResolutionStill: %{BOOL}d)", v33, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1DA721330](v34, -1, -1);
    MEMORY[0x1DA721330](v33, -1, -1);

    v47(v58, v5);
  }

  else
  {
    v49 = *(v26 + 8);
    v49(v8, v5);

    v49(v58, v5);
    v49(v28, v5);
  }

  return v3;
}

uint64_t StillImageMediaManifest.__allocating_init<>(cvCoordinator:pixelBuffer:timestamp:)(uint64_t a1, void *a2, double a3)
{
  v4 = sub_1D88C273C(a1, a2, a3);

  return v4;
}

uint64_t sub_1D889F374()
{
  v19 = v0;
  *(v0 + 24) = *(**(v0 + 16) + 128);

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16230();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315394;
    v7 = v4[16];
    v8 = v4[17];
    v9 = v4[18];
    v10 = v4[19];

    v11 = MEMORY[0x1DA71EF10](v7, v8, v9, v10);
    v13 = v12;

    v14 = sub_1D89AC714(v11, v13, &v18);

    *(v5 + 4) = v14;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4[10];
    _os_log_impl(&dword_1D8783000, v1, v2, "StillImageMediaManifest[%s] ingest() called for timestamp %f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA721330](v6, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v15 = swift_task_alloc();
  *(v0 + 32) = v15;
  *v15 = v0;
  v15[1] = sub_1D889F574;
  v16 = MEMORY[0x1E69E7CC0];

  return sub_1D88A2340(1, v16);
}

uint64_t sub_1D889F574()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D889F6A4, 0, 0);
  }
}

uint64_t sub_1D889F6A4()
{
  v18 = v0;

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16230();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    v7 = v4[16];
    v8 = v4[17];
    v9 = v4[18];
    v10 = v4[19];

    v11 = MEMORY[0x1DA71EF10](v7, v8, v9, v10);
    v13 = v12;

    v14 = sub_1D89AC714(v11, v13, &v17);

    *(v5 + 4) = v14;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4[10];
    _os_log_impl(&dword_1D8783000, v1, v2, "StillImageMediaManifest[%s] ingest() completed for timestamp %f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA721330](v6, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D889F84C()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D889F944, 0, 0);
}

uint64_t sub_1D889F944()
{
  v24 = v0;
  *(v0 + 56) = *(**(v0 + 16) + 128);

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16230();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 48);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    v19 = *(v0 + 24);
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v5 = 136315394;
    v6 = (v4 + *(*v4 + 120));
    v7 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    v9 = v6[3];

    v11 = MEMORY[0x1DA71EF10](v7, v8, v10, v9);
    v13 = v12;

    v14 = sub_1D89AC714(v11, v13, &v23);

    *(v5 + 4) = v14;
    *(v5 + 12) = 2048;
    (*(*(*(*v4 + 80) - 8) + 16))(v3, v4 + *(*v4 + 112));
    v15 = CameraSourceFrame.timestamp.getter(v20, *(v19 + 88));
    (*(v21 + 8))(v3, v20);
    *(v5 + 14) = v15;
    _os_log_impl(&dword_1D8783000, v1, v2, "StillImageMediaManifest[%s] ingest() called for timestamp %f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1DA721330](v22, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v16 = swift_task_alloc();
  *(v0 + 64) = v16;
  *v16 = v0;
  v16[1] = sub_1D889FC00;
  v17 = MEMORY[0x1E69E7CC0];

  return sub_1D88A2AC0(1, v17);
}

uint64_t sub_1D889FC00()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D889FD4C, 0, 0);
  }
}

uint64_t sub_1D889FD4C()
{
  v23 = v0;

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16230();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[6];
    v19 = v0[4];
    v20 = v0[5];
    v18 = v0[3];
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v5 = 136315394;
    v6 = (v4 + *(*v4 + 120));
    v7 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    v9 = v6[3];

    v11 = MEMORY[0x1DA71EF10](v7, v8, v10, v9);
    v13 = v12;

    v14 = sub_1D89AC714(v11, v13, &v22);

    *(v5 + 4) = v14;
    *(v5 + 12) = 2048;
    (*(*(*(*v4 + 80) - 8) + 16))(v3, v4 + *(*v4 + 112));
    v15 = CameraSourceFrame.timestamp.getter(v19, *(v18 + 88));
    (*(v20 + 8))(v3, v19);
    *(v5 + 14) = v15;
    _os_log_impl(&dword_1D8783000, v1, v2, "StillImageMediaManifest[%s] ingest() completed for timestamp %f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1DA721330](v21, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D889FFBC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *(type metadata accessor for DetectionRequest(0) - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A00B0, 0, 0);
}

uint64_t sub_1D88A00B0()
{
  v103 = v0;
  v102[1] = *MEMORY[0x1E69E9840];
  v1 = v0[6];
  v2 = *(*v1 + 128);
  v0[10] = v2;
  swift_bridgeObjectRetain_n();

  v97[2] = v2;
  v97[3] = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16200();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v102[0] = v100;
    *v8 = 136315906;
    v9 = v6[16];
    v10 = v6[17];
    v12 = v6[18];
    v11 = v6[19];

    v13 = MEMORY[0x1DA71EF10](v9, v10, v12, v11);
    v15 = v14;

    v16 = sub_1D89AC714(v13, v15, v102);

    *(v8 + 4) = v16;
    *(v8 + 12) = 2048;
    v17 = *(v7 + 16);

    *(v8 + 14) = v17;

    *(v8 + 22) = 2048;
    *(v8 + 24) = v6[10];
    *(v8 + 32) = 2080;
    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      LODWORD(v99) = v4;
      v19 = v0[7];
      v20 = v0[5];
      v101[0] = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v17, 0);
      v18 = v101[0];
      v21 = v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v22 = *(v19 + 72);
      do
      {
        v23 = v0[8];
        sub_1D88C7D1C(v21, v23, type metadata accessor for DetectionRequest);
        v24 = *v23;
        sub_1D88C7D84(v23, type metadata accessor for DetectionRequest);
        v101[0] = v18;
        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D87F4534((v25 > 1), v26 + 1, 1);
          v18 = v101[0];
        }

        *(v18 + 16) = v26 + 1;
        *(v18 + v26 + 32) = v24;
        v21 += v22;
        --v17;
      }

      while (v17);
      LOBYTE(v4) = v99;
    }

    v27 = MEMORY[0x1DA71F1E0](v18, &type metadata for CVDetection.DetectionType);
    v29 = v28;

    v30 = sub_1D89AC714(v27, v29, v102);

    *(v8 + 34) = v30;
    _os_log_impl(&dword_1D8783000, v3, v4, "StillImageMediaManifest[%s] service(requests:) called with %ld requests for timestamp %f: %s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v100, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v32 = sub_1D87C498C(v31);

  v34 = *(v32 + 32);
  v35 = ((1 << v34) + 63) >> 6;
  if ((v34 & 0x3Fu) > 0xD)
  {
LABEL_51:
    v77 = v35;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_54;
    }
  }

  v97[1] = v97;
  v100 = v0[7];
  MEMORY[0x1EEE9AC00](v33);
  v98 = v97 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v98, v36);
  v99 = 0;
  v37 = 0;
  v38 = 1 << *(v32 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v32 + 56);
  v41 = (v38 + 63) >> 6;
  while (v40)
  {
    v42 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
LABEL_21:
    v45 = v42 | (v37 << 6);
    v46 = v0[9];
    sub_1D88C7D1C(*(v32 + 48) + *(v100 + 72) * v45, v46, type metadata accessor for DetectionRequest);
    v47 = *v46;
    if (v47 > 6)
    {
LABEL_29:
      sub_1D88C7D84(v0[9], type metadata accessor for DetectionRequest);
      goto LABEL_30;
    }

    if (((1 << v47) & 0x69) != 0)
    {
      sub_1D88C7D84(v0[9], type metadata accessor for DetectionRequest);
    }

    else
    {
      if (v47 != 4)
      {
        goto LABEL_29;
      }

      v48 = v35;
      if (qword_1EE0E54C0 != -1)
      {
        swift_once();
      }

      v49 = v0[9];
      v50 = sub_1D8B0AAA4();
      sub_1D88C7D84(v49, type metadata accessor for DetectionRequest);
      v35 = v48;
      if ((v50 & 1) == 0)
      {
LABEL_30:
        *&v98[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
        if (__OFADD__(v99++, 1))
        {
          __break(1u);
        }
      }
    }
  }

  v43 = v37;
  while (1)
  {
    v37 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v37 >= v41)
    {
      break;
    }

    v44 = *(v32 + 56 + 8 * v37);
    ++v43;
    if (v44)
    {
      v42 = __clz(__rbit64(v44));
      v40 = (v44 - 1) & v44;
      goto LABEL_21;
    }
  }

  v52 = sub_1D88BE398(v98, v35, v99, v32);
  while (2)
  {
    v53 = v0[6];
    swift_beginAccess();
    if (*(*(v53 + 16) + 16) <= *(v52 + 16) >> 3)
    {
      v101[0] = v52;

      sub_1D88B8380(v56);

      v55 = v101[0];
    }

    else
    {

      v55 = sub_1D88B89DC(v54, v52);
    }

    swift_bridgeObjectRetain_n();

    v57 = sub_1D8B151C0();
    v58 = sub_1D8B16200();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v0[6];
    if (v59)
    {
      v61 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v101[0] = v100;
      *v61 = 136315650;
      v62 = v60[16];
      v63 = v60[17];
      v32 = v60[18];
      v64 = v60[19];

      v65 = MEMORY[0x1DA71EF10](v62, v63, v32, v64);
      v67 = v66;

      v68 = sub_1D89AC714(v65, v67, v101);

      *(v61 + 4) = v68;
      *(v61 + 12) = 2048;
      v69 = v55[2];

      *(v61 + 14) = v69;

      *(v61 + 22) = 2080;
      sub_1D889372C(v55);
      v70 = MEMORY[0x1DA71F1E0]();
      v72 = v71;

      v73 = sub_1D89AC714(v70, v72, v101);

      *(v61 + 24) = v73;
      _os_log_impl(&dword_1D8783000, v57, v58, "StillImageMediaManifest[%s] service(requests:) filtered to %ld new requests: %s", v61, 0x20u);
      v74 = v100;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v74, -1, -1);
      MEMORY[0x1DA721330](v61, -1, -1);

      v75 = v55[2];
      if (!v75)
      {
        break;
      }

      goto LABEL_39;
    }

    swift_bridgeObjectRelease_n();

    v75 = v55[2];
    if (v75)
    {
LABEL_39:
      v76 = v0[7];
      v77 = sub_1D87F3A18(v75, 0);
      v0[11] = v77;
      v78 = sub_1D881788C(v101, v77 + ((*(v76 + 80) + 32) & ~*(v76 + 80)), v75, v55);
      sub_1D87977A0();
      if (v78 == v75)
      {
        v79 = swift_task_alloc();
        v0[12] = v79;
        *v79 = v0;
        v79[1] = sub_1D88A0BC8;

        return sub_1D88A2340(0, v77);
      }

      __break(1u);
LABEL_54:
      v96 = swift_slowAlloc();
      v52 = sub_1D88C0904(v96, v77, v32, sub_1D88A22A0, 0, sub_1D88C0578);

      MEMORY[0x1DA721330](v96, -1, -1);
      continue;
    }

    break;
  }

  v81 = sub_1D8B151C0();
  v82 = sub_1D8B16200();
  v83 = os_log_type_enabled(v81, v82);
  v84 = v0[6];
  if (v83)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v101[0] = v86;
    *v85 = 136315394;
    v87 = v84[16];
    v88 = v84[17];
    v89 = v84[18];
    v90 = v84[19];

    v91 = MEMORY[0x1DA71EF10](v87, v88, v89, v90);
    v93 = v92;

    v94 = sub_1D89AC714(v91, v93, v101);

    *(v85 + 4) = v94;
    *(v85 + 12) = 2048;
    *(v85 + 14) = v84[10];
    _os_log_impl(&dword_1D8783000, v81, v82, "StillImageMediaManifest[%s] service(requests:) completed for timestamp %f", v85, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x1DA721330](v86, -1, -1);
    MEMORY[0x1DA721330](v85, -1, -1);
  }

  else
  {
  }

  v95 = v0[1];

  return v95();
}

uint64_t sub_1D88A0BC8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1D88A0F00;
  }

  else
  {

    v2 = sub_1D88A0D18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88A0D18()
{
  v18 = v0;
  v17[1] = *MEMORY[0x1E69E9840];

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16200();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17[0] = v6;
    *v5 = 136315394;
    v7 = v4[16];
    v8 = v4[17];
    v9 = v4[18];
    v10 = v4[19];

    v11 = MEMORY[0x1DA71EF10](v7, v8, v9, v10);
    v13 = v12;

    v14 = sub_1D89AC714(v11, v13, v17);

    *(v5 + 4) = v14;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4[10];
    _os_log_impl(&dword_1D8783000, v1, v2, "StillImageMediaManifest[%s] service(requests:) completed for timestamp %f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA721330](v6, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D88A0F00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88A0FAC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v2[7] = *v1;
  v2[8] = *(type metadata accessor for DetectionRequest(0) - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = *(v3 + 80);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A113C, 0, 0);
}

uint64_t sub_1D88A113C()
{
  v116 = v0;
  v115[1] = *MEMORY[0x1E69E9840];
  v1 = v0[6];
  v2 = *(*v1 + 128);
  v0[14] = v2;
  swift_bridgeObjectRetain_n();

  v109 = v2;
  v110 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16200();
  if (os_log_type_enabled(v3, v4))
  {
    LODWORD(v112) = v4;
    v113 = v3;
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v8 = v0[6];
    v107 = v0[7];
    v108 = v7;
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v115[0] = v111;
    *v10 = 136315906;
    v11 = (v8 + *(*v8 + 120));
    v13 = *v11;
    v12 = v11[1];
    v15 = v11[2];
    v14 = v11[3];

    v16 = MEMORY[0x1DA71EF10](v13, v12, v15, v14);
    v18 = v17;

    v19 = sub_1D89AC714(v16, v18, v115);

    *(v10 + 4) = v19;
    *(v10 + 12) = 2048;
    v20 = *(v9 + 16);

    *(v10 + 14) = v20;

    *(v10 + 22) = 2048;
    (*(*(*(*v8 + 80) - 8) + 16))(v5, v8 + *(*v8 + 112));
    v21 = CameraSourceFrame.timestamp.getter(v108, *(v107 + 88));
    (*(v6 + 8))(v5, v108);
    *(v10 + 24) = v21;
    *(v10 + 32) = 2080;
    v22 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v23 = v0[8];
      v24 = v0[5];
      v114[0] = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v20, 0);
      v22 = v114[0];
      v25 = v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v26 = *(v23 + 72);
      do
      {
        v27 = v0[10];
        sub_1D88C7D1C(v25, v27, type metadata accessor for DetectionRequest);
        v28 = *v27;
        sub_1D88C7D84(v27, type metadata accessor for DetectionRequest);
        v114[0] = v22;
        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D87F4534((v29 > 1), v30 + 1, 1);
          v22 = v114[0];
        }

        *(v22 + 16) = v30 + 1;
        *(v22 + v30 + 32) = v28;
        v25 += v26;
        --v20;
      }

      while (v20);
    }

    v31 = MEMORY[0x1DA71F1E0](v22, &type metadata for CVDetection.DetectionType);
    v33 = v32;

    v34 = sub_1D89AC714(v31, v33, v115);

    *(v10 + 34) = v34;
    _os_log_impl(&dword_1D8783000, v113, v112, "StillImageMediaManifest[%s] service(requests:) called with %ld requests for timestamp %f: %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v111, -1, -1);
    MEMORY[0x1DA721330](v10, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v36 = sub_1D87C498C(v35);

  v38 = *(v36 + 32);
  v39 = ((1 << v38) + 63) >> 6;
  if ((v38 & 0x3Fu) > 0xD)
  {
LABEL_51:
    v59 = v39;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_54;
    }
  }

  v108 = &v106;
  v113 = v0[8];
  MEMORY[0x1EEE9AC00](v37);
  v111 = &v106 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v111, v40);
  v112 = 0;
  v41 = 0;
  v42 = 1 << *(v36 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v36 + 56);
  v45 = (v42 + 63) >> 6;
  while (v44)
  {
    v46 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
LABEL_21:
    v49 = v46 | (v41 << 6);
    v50 = v0[9];
    sub_1D88C7D1C(*(v36 + 48) + v113[9].isa * v49, v50, type metadata accessor for DetectionRequest);
    v51 = *v50;
    if (v51 > 6)
    {
LABEL_29:
      sub_1D88C7D84(v0[9], type metadata accessor for DetectionRequest);
      goto LABEL_30;
    }

    if (((1 << v51) & 0x69) != 0)
    {
      sub_1D88C7D84(v0[9], type metadata accessor for DetectionRequest);
    }

    else
    {
      if (v51 != 4)
      {
        goto LABEL_29;
      }

      v52 = v39;
      if (qword_1EE0E54C0 != -1)
      {
        swift_once();
      }

      v53 = v0[9];
      v54 = sub_1D8B0AAA4();
      sub_1D88C7D84(v53, type metadata accessor for DetectionRequest);
      v39 = v52;
      if ((v54 & 1) == 0)
      {
LABEL_30:
        *&v111[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
        if (__OFADD__(v112++, 1))
        {
          __break(1u);
        }
      }
    }
  }

  v47 = v41;
  while (1)
  {
    v41 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v41 >= v45)
    {
      break;
    }

    v48 = *(v36 + 56 + 8 * v41);
    ++v47;
    if (v48)
    {
      v46 = __clz(__rbit64(v48));
      v44 = (v48 - 1) & v48;
      goto LABEL_21;
    }
  }

  v56 = sub_1D88BE398(v111, v39, v112, v36);
  while (2)
  {
    v57 = v0[6];
    swift_beginAccess();
    if (*(*(v57 + 16) + 16) <= *(v56 + 16) >> 3)
    {
      v114[0] = v56;

      sub_1D88B8380(v60);

      v59 = v114[0];
    }

    else
    {

      v59 = sub_1D88B89DC(v58, v56);
    }

    swift_bridgeObjectRetain_n();

    v61 = sub_1D8B151C0();
    v62 = sub_1D8B16200();
    v63 = os_log_type_enabled(v61, v62);
    v64 = v0[6];
    if (v63)
    {
      v65 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v114[0] = v113;
      *v65 = 136315650;
      v66 = (v64 + *(*v64 + 120));
      v67 = *v66;
      v68 = v66[1];
      v70 = v66[2];
      v69 = v66[3];

      v71 = MEMORY[0x1DA71EF10](v67, v68, v70, v69);
      v73 = v72;

      v74 = sub_1D89AC714(v71, v73, v114);

      *(v65 + 4) = v74;
      *(v65 + 12) = 2048;
      v75 = v59[2];

      *(v65 + 14) = v75;

      *(v65 + 22) = 2080;
      sub_1D889372C(v59);
      v76 = MEMORY[0x1DA71F1E0]();
      v78 = v77;

      v79 = sub_1D89AC714(v76, v78, v114);

      *(v65 + 24) = v79;
      _os_log_impl(&dword_1D8783000, v61, v62, "StillImageMediaManifest[%s] service(requests:) filtered to %ld new requests: %s", v65, 0x20u);
      v80 = v113;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v80, -1, -1);
      MEMORY[0x1DA721330](v65, -1, -1);

      v81 = v59[2];
      if (!v81)
      {
        break;
      }

      goto LABEL_39;
    }

    swift_bridgeObjectRelease_n();

    v81 = v59[2];
    if (v81)
    {
LABEL_39:
      v82 = v0[8];
      v36 = sub_1D87F3A18(v81, 0);
      v0[15] = v36;
      v83 = sub_1D881788C(v114, v36 + ((*(v82 + 80) + 32) & ~*(v82 + 80)), v81, v59);
      sub_1D87977A0();
      if (v83 == v81)
      {
        v84 = swift_task_alloc();
        v0[16] = v84;
        *v84 = v0;
        v84[1] = sub_1D88A1DE8;

        return sub_1D88A2AC0(0, v36);
      }

      __break(1u);
LABEL_54:
      v105 = swift_slowAlloc();
      v56 = sub_1D88C0904(v105, v59, v36, sub_1D88A22A0, 0, sub_1D88C0578);

      MEMORY[0x1DA721330](v105, -1, -1);
      continue;
    }

    break;
  }

  v86 = sub_1D8B151C0();
  v87 = sub_1D8B16200();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = v0[12];
    v89 = v0[13];
    v111 = v0[11];
    v112 = v88;
    v90 = v0[6];
    v110 = v0[7];
    v91 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v114[0] = v113;
    *v91 = 136315394;
    v92 = (v90 + *(*v90 + 120));
    v93 = *v92;
    v94 = v92[1];
    v96 = v92[2];
    v95 = v92[3];

    v97 = MEMORY[0x1DA71EF10](v93, v94, v96, v95);
    v99 = v98;

    v100 = sub_1D89AC714(v97, v99, v114);

    *(v91 + 4) = v100;
    *(v91 + 12) = 2048;
    (*(*(*(*v90 + 80) - 8) + 16))(v89, v90 + *(*v90 + 112));
    v101 = v111;
    v102 = CameraSourceFrame.timestamp.getter(v111, *(v110 + 88));
    (*(v112 + 8))(v89, v101);
    *(v91 + 14) = v102;
    _os_log_impl(&dword_1D8783000, v86, v87, "StillImageMediaManifest[%s] service(requests:) completed for timestamp %f", v91, 0x16u);
    v103 = v113;
    __swift_destroy_boxed_opaque_existential_1(v113);
    MEMORY[0x1DA721330](v103, -1, -1);
    MEMORY[0x1DA721330](v91, -1, -1);
  }

  else
  {
  }

  v104 = v0[1];

  return v104();
}

uint64_t sub_1D88A1DE8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1D88A21E8;
  }

  else
  {

    v2 = sub_1D88A1F38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88A1F38()
{
  v23 = v0;
  v22[1] = *MEMORY[0x1E69E9840];

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16200();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[13];
    v19 = v0[11];
    v20 = v0[12];
    v4 = v0[6];
    v18 = v0[7];
    v5 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22[0] = v21;
    *v5 = 136315394;
    v6 = (v4 + *(*v4 + 120));
    v7 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    v9 = v6[3];

    v11 = MEMORY[0x1DA71EF10](v7, v8, v10, v9);
    v13 = v12;

    v14 = sub_1D89AC714(v11, v13, v22);

    *(v5 + 4) = v14;
    *(v5 + 12) = 2048;
    (*(*(*(*v4 + 80) - 8) + 16))(v3, v4 + *(*v4 + 112));
    v15 = CameraSourceFrame.timestamp.getter(v19, *(v18 + 88));
    (*(v20 + 8))(v3, v19);
    *(v5 + 14) = v15;
    _os_log_impl(&dword_1D8783000, v1, v2, "StillImageMediaManifest[%s] service(requests:) completed for timestamp %f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1DA721330](v21, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D88A21E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88A22A0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = 1;
  if (v1 > 6)
  {
    return v2 & 1;
  }

  if (((1 << v1) & 0x69) != 0)
  {
    v2 = 0;
    return v2 & 1;
  }

  if (v1 != 4)
  {
    return v2 & 1;
  }

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  return (sub_1D8B0AAA4() ^ 1) & 1;
}

uint64_t sub_1D88A2340(char a1, uint64_t a2)
{
  *(v3 + 232) = a2;
  *(v3 + 240) = v2;
  *(v3 + 264) = a1;
  *(v3 + 248) = *(type metadata accessor for DetectionRequest(0) - 8);
  *(v3 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A2400, 0, 0);
}

uint64_t sub_1D88A2400()
{
  v76 = v0;

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16200();

  log = v1;
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 240);
  if (v3)
  {
    v69 = v2;
    v5 = *(v0 + 232);
    v6 = *(v0 + 264);
    v7 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v74 = v68;
    *v7 = 136315906;
    v8 = v4[16];
    v9 = v4[17];
    v11 = v4[18];
    v10 = v4[19];

    v12 = MEMORY[0x1DA71EF10](v8, v9, v11, v10);
    v14 = v13;

    v15 = sub_1D89AC714(v12, v14, &v74);

    *(v7 + 4) = v15;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v6;
    *(v7 + 18) = 2080;
    v16 = *(v5 + 16);
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v18 = *(v0 + 248);
      v19 = *(v0 + 232);
      v75 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v16, 0);
      v17 = v75;
      v20 = v19 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v21 = *(v18 + 72);
      do
      {
        v22 = *(v0 + 256);
        sub_1D88C7D1C(v20, v22, type metadata accessor for DetectionRequest);
        v23 = *v22;
        sub_1D88C7D84(v22, type metadata accessor for DetectionRequest);
        v75 = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1D87F4534((v24 > 1), v25 + 1, 1);
          v17 = v75;
        }

        *(v17 + 16) = v25 + 1;
        *(v17 + v25 + 32) = v23;
        v20 += v21;
        --v16;
      }

      while (v16);
    }

    v26 = *(v0 + 240);
    v27 = MEMORY[0x1DA71F1E0](v17, &type metadata for CVDetection.DetectionType);
    v29 = v28;

    v30 = sub_1D89AC714(v27, v29, &v74);

    *(v7 + 20) = v30;
    *(v7 + 28) = 2048;
    *(v7 + 30) = *(v26 + 80);
    _os_log_impl(&dword_1D8783000, log, v69, "StillImageMediaManifest[%s] refineCurrentFrame(detection: %{BOOL}d, requests: %s) called for timestamp %f", v7, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v68, -1, -1);
    MEMORY[0x1DA721330](v7, -1, -1);
  }

  else
  {
  }

  v32 = *(v0 + 232);
  v31 = *(v0 + 240);
  v33 = *(v0 + 264);
  v34 = v31[3];
  *(v0 + 16) = v31[2];
  *(v0 + 32) = v34;
  v35 = v31[7];
  v37 = v31[4];
  v36 = v31[5];
  *(v0 + 80) = v31[6];
  *(v0 + 96) = v35;
  *(v0 + 48) = v37;
  *(v0 + 64) = v36;

  sub_1D888406C(v0 + 16, v0 + 112);
  LOBYTE(v75) = 1;
  v38 = sub_1D88A3424(v0 + 16, v33, v32, MEMORY[0x1E69E7CC0], 0x100000000uLL, 1.0);

  sub_1D8884018(v0 + 16);
  swift_bridgeObjectRetain_n();

  v39 = sub_1D8B151C0();
  v40 = sub_1D8B16200();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 240);
  if (v41)
  {
    v43 = swift_slowAlloc();
    loga = swift_slowAlloc();
    v74 = loga;
    *v43 = 136315650;
    v44 = v42[16];
    v45 = v42[17];
    v47 = v42[18];
    v46 = v42[19];

    v48 = MEMORY[0x1DA71EF10](v44, v45, v47, v46);
    v50 = v49;

    v51 = sub_1D89AC714(v48, v50, &v74);

    *(v43 + 4) = v51;
    *(v43 + 12) = 2048;
    v52 = *(v38 + 16);

    *(v43 + 14) = v52;

    *(v43 + 22) = 2080;
    v53 = *(v38 + 16);
    v54 = MEMORY[0x1E69E7CC0];
    if (v53)
    {
      v70 = v40;
      v71 = v39;
      v55 = *(v0 + 248);
      v75 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v53, 0);
      v54 = v75;
      v56 = v38 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
      v57 = *(v55 + 72);
      do
      {
        v58 = *(v0 + 256);
        sub_1D88C7D1C(v56, v58, type metadata accessor for DetectionRequest);
        v59 = *v58;
        sub_1D88C7D84(v58, type metadata accessor for DetectionRequest);
        v75 = v54;
        v61 = *(v54 + 16);
        v60 = *(v54 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1D87F4534((v60 > 1), v61 + 1, 1);
          v54 = v75;
        }

        *(v54 + 16) = v61 + 1;
        *(v54 + v61 + 32) = v59;
        v56 += v57;
        --v53;
      }

      while (v53);
      v39 = v71;
      v40 = v70;
    }

    v62 = MEMORY[0x1DA71F1E0](v54, &type metadata for CVDetection.DetectionType);
    v64 = v63;

    v65 = sub_1D89AC714(v62, v64, &v74);

    *(v43 + 24) = v65;
    _os_log_impl(&dword_1D8783000, v39, v40, "StillImageMediaManifest[%s] refineCurrentFrame completed, serviced %ld requests: %s", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](loga, -1, -1);
    MEMORY[0x1DA721330](v43, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  swift_beginAccess();
  sub_1D8AB9EEC(v38);
  swift_endAccess();

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1D88A2AC0(char a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  *(v3 + 112) = a1;
  v4 = *v2;
  *(v3 + 56) = *v2;
  *(v3 + 64) = *(type metadata accessor for DetectionRequest(0) - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = *(v4 + 80);
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A2C20, 0, 0);
}

uint64_t sub_1D88A2C20()
{
  v83 = v0;

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16200();

  log = v1;
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v81 = v75;
    *v7 = 136315906;
    v8 = (v4 + *(*v4 + 120));
    v9 = *v8;
    v10 = v8[1];
    v12 = v8[2];
    v11 = v8[3];

    v13 = MEMORY[0x1DA71EF10](v9, v10, v12, v11);
    v15 = v14;

    v16 = sub_1D89AC714(v13, v15, &v81);

    *(v7 + 4) = v16;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v6;
    *(v7 + 18) = 2080;
    v17 = *(v5 + 16);
    v18 = MEMORY[0x1E69E7CC0];
    v76 = v2;
    if (v17)
    {
      v19 = *(v0 + 64);
      v20 = *(v0 + 40);
      v82 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v17, 0);
      v18 = v82;
      v21 = v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v22 = *(v19 + 72);
      do
      {
        v23 = *(v0 + 72);
        sub_1D88C7D1C(v21, v23, type metadata accessor for DetectionRequest);
        v24 = *v23;
        sub_1D88C7D84(v23, type metadata accessor for DetectionRequest);
        v82 = v18;
        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D87F4534((v25 > 1), v26 + 1, 1);
          v18 = v82;
        }

        *(v18 + 16) = v26 + 1;
        *(v18 + v26 + 32) = v24;
        v21 += v22;
        --v17;
      }

      while (v17);
    }

    v27 = *(v0 + 104);
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    v30 = *(v0 + 48);
    v31 = *(v0 + 56);
    v32 = MEMORY[0x1DA71F1E0](v18, &type metadata for CVDetection.DetectionType);
    v34 = v33;

    v35 = sub_1D89AC714(v32, v34, &v81);

    *(v7 + 20) = v35;
    *(v7 + 28) = 2048;
    (*(*(*(*v30 + 80) - 8) + 16))(v27, v30 + *(*v30 + 112));
    v36 = CameraSourceFrame.timestamp.getter(v29, *(v31 + 88));
    (*(v28 + 8))(v27, v29);
    *(v7 + 30) = v36;
    _os_log_impl(&dword_1D8783000, log, v76, "StillImageMediaManifest[%s] refineCurrentFrame(detection: %{BOOL}d, requests: %s) called for timestamp %f", v7, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v75, -1, -1);
    MEMORY[0x1DA721330](v7, -1, -1);
  }

  else
  {
  }

  v38 = *(v0 + 88);
  v37 = *(v0 + 96);
  v39 = *(v0 + 80);
  v40 = *(v0 + 56);
  v41 = *(v0 + 40);
  v42 = *(v0 + 112);
  (*(*(*(**(v0 + 48) + 80) - 8) + 16))(v37, *(v0 + 48) + *(**(v0 + 48) + 112));
  v43 = *(v40 + 88);

  LOBYTE(v82) = 1;
  v44 = CVCoordinator.consumeFrame<A>(_:isFirstCycleOverStill:cadenceMultiplier:upstreamRequests:upstreamResults:uprightTransform:)(v37, v42, v41, MEMORY[0x1E69E7CC0], 0x100000000uLL, v39, v43, 1.0);
  (*(v38 + 8))(v37, v39);

  swift_bridgeObjectRetain_n();

  v45 = sub_1D8B151C0();
  v46 = sub_1D8B16200();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 48);
  if (v47)
  {
    v49 = swift_slowAlloc();
    loga = swift_slowAlloc();
    v81 = loga;
    *v49 = 136315650;
    v50 = (v48 + *(*v48 + 120));
    v51 = *v50;
    v52 = v50[1];
    v54 = v50[2];
    v53 = v50[3];

    v55 = MEMORY[0x1DA71EF10](v51, v52, v54, v53);
    v57 = v56;

    v58 = sub_1D89AC714(v55, v57, &v81);

    *(v49 + 4) = v58;
    *(v49 + 12) = 2048;
    v59 = *(v44 + 16);

    *(v49 + 14) = v59;

    *(v49 + 22) = 2080;
    v60 = *(v44 + 16);
    v61 = MEMORY[0x1E69E7CC0];
    if (v60)
    {
      v77 = v46;
      v78 = v45;
      v62 = *(v0 + 64);
      v82 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v60, 0);
      v61 = v82;
      v63 = v44 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v64 = *(v62 + 72);
      do
      {
        v65 = *(v0 + 72);
        sub_1D88C7D1C(v63, v65, type metadata accessor for DetectionRequest);
        v66 = *v65;
        sub_1D88C7D84(v65, type metadata accessor for DetectionRequest);
        v82 = v61;
        v68 = *(v61 + 16);
        v67 = *(v61 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_1D87F4534((v67 > 1), v68 + 1, 1);
          v61 = v82;
        }

        *(v61 + 16) = v68 + 1;
        *(v61 + v68 + 32) = v66;
        v63 += v64;
        --v60;
      }

      while (v60);
      v45 = v78;
      v46 = v77;
    }

    v69 = MEMORY[0x1DA71F1E0](v61, &type metadata for CVDetection.DetectionType);
    v71 = v70;

    v72 = sub_1D89AC714(v69, v71, &v81);

    *(v49 + 24) = v72;
    _os_log_impl(&dword_1D8783000, v45, v46, "StillImageMediaManifest[%s] refineCurrentFrame completed, serviced %ld requests: %s", v49, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](loga, -1, -1);
    MEMORY[0x1DA721330](v49, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  swift_beginAccess();
  sub_1D8AB9EEC(v44);
  swift_endAccess();

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_1D88A3424(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, float a6)
{
  v8 = v6;
  v143 = a5;
  v149 = a4;
  LODWORD(v151) = a2;
  v141 = *v6;
  v12 = type metadata accessor for DetectionRequest(0);
  v148 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D8B159C0();
  v145 = *(v15 - 8);
  v146 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v144 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v140 = &v138 - v18;
  v19 = type metadata accessor for ProcessorState(0);
  v159 = *(v19 - 8);
  v160 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v142 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LoggingSignposter(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v150 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
  swift_bridgeObjectRetain_n();
  sub_1D888406C(a1, v170);
  v152 = v23;
  v24 = sub_1D8B151C0();
  v25 = sub_1D8B16230();
  v26 = os_log_type_enabled(v24, v25);
  v156 = a1;
  v157 = v7;
  v154 = a3;
  v158 = v8;
  if (v26)
  {
    LODWORD(v147) = v25;
    v155 = v24;
    v27 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *&v161[0] = v139;
    *v27 = 136315650;
    v28 = *(a1 + 56);
    *&v170[0] = 0;
    *(&v170[0] + 1) = 0xE000000000000000;
    sub_1D8B16020();
    if (v28)
    {
      v29 = 0x296C6C6974532820;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = 0xE800000000000000;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    MEMORY[0x1DA71EFA0](v29, v30);

    sub_1D8884018(a1);
    v31 = sub_1D89AC714(*&v170[0], *(&v170[0] + 1), v161);

    *(v27 + 4) = v31;
    v32 = v154;
    *(v27 + 12) = 2048;
    v33 = *(v32 + 16);

    *(v27 + 14) = v33;

    v153 = v27;
    *(v27 + 22) = 2080;
    v34 = MEMORY[0x1E69E7CC0];
    if (v33)
    {
      *&v170[0] = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v33, 0);
      v34 = *&v170[0];
      v35 = v32 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
      v36 = *(v148 + 72);
      do
      {
        sub_1D88C7D1C(v35, v14, type metadata accessor for DetectionRequest);
        v37 = *v14;
        sub_1D88C7D84(v14, type metadata accessor for DetectionRequest);
        *&v170[0] = v34;
        v39 = *(v34 + 16);
        v38 = *(v34 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1D87F4534((v38 > 1), v39 + 1, 1);
          v34 = *&v170[0];
        }

        *(v34 + 16) = v39 + 1;
        *(v34 + v39 + 32) = v37;
        v35 += v36;
        --v33;
      }

      while (v33);
    }

    v40 = MEMORY[0x1DA71F1E0](v34, &type metadata for CVDetection.DetectionType);
    v42 = v41;

    v43 = sub_1D89AC714(v40, v42, v161);

    v44 = v153;
    *(v153 + 24) = v43;
    v45 = v155;
    _os_log_impl(&dword_1D8783000, v155, v147, "[%s] CVCoordinator.consumeFrame called with %ld upstream requests: %s", v44, 0x20u);
    v46 = v139;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v46, -1, -1);
    MEMORY[0x1DA721330](v44, -1, -1);

    v8 = v158;
    a1 = v156;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_1D8884018(a1);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    v175 = *(a1 + 16);
    v176 = *(a1 + 32);
    LODWORD(v153) = *(a1 + 40);
    v174[0] = *(a1 + 41);
    *(v174 + 3) = *(a1 + 44);
    v49 = *(a1 + 48);
    LODWORD(v155) = *(a1 + 56);
    v50 = *(a1 + 73);
    v172 = *(a1 + 57);
    *v173 = v50;
    *&v173[15] = *(a1 + 88);
    v169 = 1;
    v51 = *(v8 + 40);
    v52 = swift_allocObject();
    *(v52 + 16) = &v169;
    *(v52 + 24) = v8;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1D88C4BA8;
    *(v53 + 24) = v52;
    *&v170[2] = sub_1D88C4BB0;
    *(&v170[2] + 1) = v53;
    *&v170[0] = MEMORY[0x1E69E9820];
    *(&v170[0] + 1) = 1107296256;
    *&v170[1] = sub_1D8A3EDFC;
    *(&v170[1] + 1) = &block_descriptor_1;
    v54 = _Block_copy(v170);
    v55 = v158;
    v56 = v51;

    dispatch_sync(v56, v54);

    _Block_release(v54);
    LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

    if (v54)
    {
      __break(1u);
LABEL_58:
      swift_once();
LABEL_28:
      if ((sub_1D8B0AAA4() & 1) == 0)
      {
        goto LABEL_51;
      }

      swift_beginAccess();
      v65 = v144;
      sub_1D8B159B0();
      v66 = sub_1D8B15980();
      v68 = v67;

      (*(v145 + 8))(v65, v146);
      if (v68 >> 60 == 15)
      {
        goto LABEL_51;
      }

      *(&v170[1] + 1) = v66;
      *&v170[2] = v68;
      *(&v170[2] + 1) = 7633012;
      *&v171[0] = 0xE300000000000000;
      LOBYTE(v171[1]) = 2;
      *&v170[0] = 0xD000000000000011;
      *(&v170[0] + 1) = 0x80000001D8B43960;
      *&v170[1] = v49;
      v69 = sub_1D8B15EA0();
      v70 = v140;
      (*(*(v69 - 8) + 56))(v140, 1, 1, v69);
      sub_1D88C4BD0(v170, v161);
      v71 = swift_allocObject();
      *(v71 + 16) = 0;
      *(v71 + 24) = 0;
      v72 = *v162;
      *(v71 + 64) = v161[2];
      *(v71 + 80) = v72;
      *(v71 + 96) = v162[16];
      v73 = v161[1];
      *(v71 + 32) = v161[0];
      *(v71 + 48) = v73;
      *(v71 + 104) = v141;
      sub_1D87A1544(v66, v68);
      sub_1D8891CA0(0, 0, v70, &unk_1D8B25D80, v71);

      sub_1D87C12A4(v66, v68);
      goto LABEL_50;
    }

    if (v169)
    {
      v57 = sub_1D8B151C0();
      v58 = sub_1D8B16210();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v147 = v48;
        v154 = v52;
        v61 = v60;
        *&v170[0] = v60;
        *v59 = 134218242;
        *(v59 + 4) = v49;
        *(v59 + 12) = 2080;
        swift_beginAccess();
        if (v169)
        {
          v62 = 0x6465746C6148;
        }

        else
        {
          v62 = 0x656D69746C616552;
        }

        if (v169)
        {
          v63 = 0xE600000000000000;
        }

        else
        {
          v63 = 0xE800000000000000;
        }

        v64 = sub_1D89AC714(v62, v63, v170);

        *(v59 + 14) = v64;
        _os_log_impl(&dword_1D8783000, v57, v58, "CVCoordinator ignoring frame %f in state %s", v59, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x1DA721330](v61, -1, -1);
        MEMORY[0x1DA721330](v59, -1, -1);
      }

      if (qword_1EE0E54C0 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_58;
    }

    v74 = v155;
    if (v155 & 1) != 0 || (v153)
    {
      v147 = v48;
      v75 = v150;
      sub_1D88C7D1C(v55 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_signposter, v150, type metadata accessor for LoggingSignposter);
      type metadata accessor for LoggingSignposter.AutoInterval();
      v145 = swift_allocObject();
      LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.consumeFrame", 26, 2u, 1, 0, (v145 + 16));
      sub_1D88C7D84(v75, type metadata accessor for LoggingSignposter);
      v76 = swift_allocObject();
      *(v76 + 16) = MEMORY[0x1E69E7CD0];
      v152 = v76 + 16;
      v150 = *(v55 + 40);
      v77 = swift_allocObject();
      *(v77 + 60) = a6;
      v78 = v156;
      v79 = v156[3];
      *(v77 + 104) = v156[2];
      *(v77 + 120) = v79;
      v80 = v78[5];
      *(v77 + 136) = v78[4];
      *(v77 + 152) = v80;
      v81 = v78[1];
      *(v77 + 72) = *v78;
      *(v77 + 16) = v151 & 1;
      *(v77 + 24) = v55;
      *(v77 + 32) = v49;
      v82 = v154;
      *(v77 + 40) = v76;
      *(v77 + 48) = v82;
      *(v77 + 56) = (v74 & 1) == 0;
      *(v77 + 64) = v74 & 1;
      *(v77 + 88) = v81;
      v83 = swift_allocObject();
      *(v83 + 16) = sub_1D88C4E40;
      *(v83 + 24) = v77;
      v146 = v77;
      *&v161[2] = sub_1D88C7EC8;
      *(&v161[2] + 1) = v83;
      *&v161[0] = MEMORY[0x1E69E9820];
      *(&v161[0] + 1) = 1107296256;
      *&v161[1] = sub_1D8A3EDFC;
      *(&v161[1] + 1) = &block_descriptor_111;
      v84 = _Block_copy(v161);

      sub_1D888406C(v78, v170);

      v85 = v150;
      v151 = v76;

      dispatch_sync(v85, v84);

      _Block_release(v84);
      LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

      if ((v84 & 1) == 0)
      {
        v154 = v52;
        v86 = v149;
        v87 = *(v149 + 16);
        v88 = MEMORY[0x1E69E7CC0];
        if (v87)
        {
          *&v170[0] = MEMORY[0x1E69E7CC0];
          sub_1D87F439C(0, v87, 0);
          v89 = *&v170[0];
          v90 = *(type metadata accessor for DetectionResult(0) - 8);
          v91 = v86 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
          v92 = *(v90 + 72);
          v93 = v142;
          do
          {
            sub_1D88C7D1C(v91, v93, type metadata accessor for DetectionResult);
            swift_storeEnumTagMultiPayload();
            *&v170[0] = v89;
            v95 = *(v89 + 16);
            v94 = *(v89 + 24);
            if (v95 >= v94 >> 1)
            {
              sub_1D87F439C(v94 > 1, v95 + 1, 1);
              v89 = *&v170[0];
            }

            *(v89 + 16) = v95 + 1;
            sub_1D88C7124(v93, v89 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v95, type metadata accessor for ProcessorState);
            v91 += v92;
            --v87;
          }

          while (v87);
          v96 = v147;
          v88 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v89 = MEMORY[0x1E69E7CC0];
          v96 = v147;
        }

        *&v168[7] = v175;
        *&v168[23] = v176;
        v167[0] = v174[0];
        *(v167 + 3) = *(v174 + 3);
        v165 = v172;
        *v166 = *v173;
        *&v166[15] = *&v173[15];
        v164 = v88;
        v97 = v152;
        swift_beginAccess();
        v98 = *v97;
        v99 = *(*v97 + 16);
        v100 = v156;
        v101 = v155;
        if (!v99)
        {
          *v179 = *v168;
          *&v179[15] = *&v168[15];
          v184 = v172;
          v177 = 0;
          v178 = 3;
          v115 = v153;
          v180 = v153;
          *v181 = v174[0];
          *&v181[3] = *(v174 + 3);
          v182 = v49;
          v183 = v155;
          *v185 = *v173;
          *&v185[15] = *&v173[15];
          sub_1D88B0AE0(&v164, &v177, v89, v158, v156, v96);

          v116 = v145;
          swift_setDeallocating();
          v117 = v116[5];
          v118 = v116[6];
          __swift_project_boxed_opaque_existential_1(v116 + 2, v117);
          (*(v118 + 8))(v117, v118);
          __swift_destroy_boxed_opaque_existential_1((v116 + 2));
          swift_deallocClassInstance();

          *&v170[0] = 0;
          BYTE8(v170[0]) = 3;
          *(v170 + 9) = *v168;
          *(&v170[1] + 8) = *&v168[15];
          BYTE8(v170[2]) = v115;
          *(&v170[2] + 9) = v167[0];
          HIDWORD(v170[2]) = *(v167 + 3);
          *&v171[0] = v49;
          BYTE8(v171[0]) = v101;
          *(&v171[2] + 1) = *&v166[15];
          *(&v171[1] + 9) = *v166;
          *(v171 + 9) = v165;
          sub_1D8884018(v170);

          return MEMORY[0x1E69E7CC0];
        }

        *(v170 + 9) = *v168;
        *(&v170[1] + 8) = *&v168[15];
        *(v171 + 9) = v172;
        *&v170[0] = 0;
        BYTE8(v170[0]) = 3;
        BYTE8(v170[2]) = v153;
        *(&v170[2] + 9) = v174[0];
        HIDWORD(v170[2]) = *(v174 + 3);
        *&v171[0] = v49;
        BYTE8(v171[0]) = v155;
        *(&v171[1] + 9) = *v173;
        *(&v171[2] + 1) = *&v173[15];
        v102 = swift_allocObject();
        v103 = v171[0];
        *(v102 + 56) = v170[2];
        *(v102 + 72) = v103;
        v104 = v171[2];
        *(v102 + 88) = v171[1];
        *(v102 + 104) = v104;
        v105 = v170[1];
        *(v102 + 24) = v170[0];
        v106 = v158;
        *(v102 + 16) = v158;
        *(v102 + 40) = v105;
        *(v102 + 120) = v96;

        sub_1D888406C(v170, v161);

        v107 = v157;
        v108 = sub_1D88C2CB8(v98, v100, v143 | ((HIDWORD(v143) & 1) << 32), sub_1D88C4EA4, v102);
        v157 = v107;
        if (v107)
        {

          *v197 = *v168;
          *&v197[15] = *&v168[15];
          *(v203 + 15) = *&v173[15];
          v203[0] = *v173;
          v195 = 0;
          v196 = 3;
          v109 = v153;
          v198 = v153;
          *v199 = v174[0];
          *&v199[3] = *(v174 + 3);
          v200 = v49;
          v110 = v155;
          v201 = v155;
          v202 = v172;
          sub_1D88B0AE0(&v164, &v195, v89, v106, v100, v96);

          v111 = v145;
          swift_setDeallocating();
          v112 = v111[5];
          v113 = v111[6];
          __swift_project_boxed_opaque_existential_1(v111 + 2, v112);
          (*(v113 + 8))(v112, v113);
          __swift_destroy_boxed_opaque_existential_1((v111 + 2));
          swift_deallocClassInstance();

          *&v161[0] = 0;
          BYTE8(v161[0]) = 3;
          *(v161 + 9) = *v168;
          *(&v161[1] + 8) = *&v168[15];
          BYTE8(v161[2]) = v109;
          *(&v161[2] + 9) = v167[0];
          HIDWORD(v161[2]) = *(v167 + 3);
          *v162 = v49;
          v162[8] = v110;
          *(v163 + 15) = *&v166[15];
          v163[0] = *v166;
          *&v162[9] = v165;
          sub_1D8884018(v161);
        }

        v127 = v108;

        v159 = v127;
        v164 = v127;
        v128 = *v152;
        v129 = *(*v152 + 16);
        if (v129)
        {
          v130 = sub_1D87F3A18(*(*v152 + 16), 0);
          v131 = *(v148 + 80);
          v160 = v130;
          v132 = sub_1D881788C(v161, v130 + ((v131 + 32) & ~v131), v129, v128);

          sub_1D87977A0();
          if (v132 == v129)
          {
LABEL_56:
            v133 = v155;
            v134 = v153;
            *v188 = *v168;
            *&v188[15] = *&v168[15];
            v193 = v165;
            v186 = 0;
            v187 = 3;
            v189 = v153;
            *v190 = v167[0];
            *&v190[3] = *(v167 + 3);
            v191 = v49;
            v192 = v155;
            *v194 = *v166;
            *&v194[15] = *&v166[15];
            sub_1D88B0AE0(&v164, &v186, v89, v158, v156, v147);

            v135 = v145;
            swift_setDeallocating();
            v136 = v135[5];
            v137 = v135[6];
            __swift_project_boxed_opaque_existential_1(v135 + 2, v136);
            (*(v137 + 8))(v136, v137);
            __swift_destroy_boxed_opaque_existential_1((v135 + 2));
            swift_deallocClassInstance();

            *&v161[0] = 0;
            BYTE8(v161[0]) = 3;
            *(v161 + 9) = *v168;
            *(&v161[1] + 8) = *&v168[15];
            BYTE8(v161[2]) = v134;
            *(&v161[2] + 9) = v167[0];
            HIDWORD(v161[2]) = *(v167 + 3);
            *v162 = v49;
            v162[8] = v133;
            *(v163 + 15) = *&v166[15];
            v163[0] = *v166;
            *&v162[9] = v165;
            sub_1D8884018(v161);

            return v160;
          }

          __break(1u);
        }

        v160 = MEMORY[0x1E69E7CC0];
        goto LABEL_56;
      }

      __break(1u);
    }

    else
    {
      v119 = sub_1D8B151C0();
      v120 = sub_1D8B16210();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 134217984;
        *(v121 + 4) = v49;
        _os_log_impl(&dword_1D8783000, v119, v120, "CVCoordinator ignoring frame at %f as tracking is not normal.", v121, 0xCu);
        MEMORY[0x1DA721330](v121, -1, -1);
      }

      if (qword_1EE0E54C0 == -1)
      {
        goto LABEL_48;
      }
    }

    swift_once();
LABEL_48:
    if ((sub_1D8B0AAA4() & 1) == 0)
    {
LABEL_51:

      return MEMORY[0x1E69E7CC0];
    }

    *(&v170[1] + 8) = xmmword_1D8B1ABB0;
    *(&v170[2] + 1) = 7633012;
    *&v171[0] = 0xE300000000000000;
    LOBYTE(v171[1]) = 2;
    strcpy(v170, "tracking-state");
    HIBYTE(v170[0]) = -18;
    *&v170[1] = v49;
    v122 = sub_1D8B15EA0();
    v123 = v140;
    (*(*(v122 - 8) + 56))(v140, 1, 1, v122);
    sub_1D88C4BD0(v170, v161);
    v124 = swift_allocObject();
    *(v124 + 16) = 0;
    *(v124 + 24) = 0;
    v125 = *v162;
    *(v124 + 64) = v161[2];
    *(v124 + 80) = v125;
    *(v124 + 96) = v162[16];
    v126 = v161[1];
    *(v124 + 32) = v161[0];
    *(v124 + 48) = v126;
    *(v124 + 104) = v141;
    sub_1D8891CA0(0, 0, v123, &unk_1D8B25D88, v124);

LABEL_50:
    sub_1D87DC9A0(v170);
    goto LABEL_51;
  }

  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D88A4AB0(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v8 = v6;
  v30 = a2;
  v33 = a1;
  v13 = *v6;
  v14 = v13[10];
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  (*(v15 + 16))(&v29 - v19, &v8[v13[14]], v14);
  v21 = v13[11];
  (*(v21 + 40))(v31, v14, v21);
  v22 = *(v15 + 8);
  v22(v20, v14);
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  v34 = CGRectIntersection(v32, v35);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  if (CGRectEqualToRect(v34, *MEMORY[0x1E695F050]))
  {
    return 0;
  }

  (*(*(*(*v8 + 80) - 8) + 16))(v18, &v8[*(*v8 + 112)]);

  LOBYTE(v31[0]) = (v30 & 1) == 0;
  v28 = CVCoordinator.extractPixels<A>(frame:regionOfInterest:maxDimension:orientation:pixelFormat:)(v18, v33, v30 & 1 | (LOBYTE(v31[0]) << 32), 1111970369, v14, v21, x, y, width, height);
  v22(v18, v14);

  if (!v7)
  {
    return v28;
  }

  return result;
}

uint64_t sub_1D88A4D84(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *v2;
  v3[12] = *v2;
  v5 = *(v4 + 80);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for LoggingSignposter(0);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A4EB0, 0, 0);
}

uint64_t sub_1D88A4EB0()
{
  v26 = v0;
  if (qword_1ECA62220 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 80);
  v3 = __swift_project_value_buffer(*(v0 + 128), qword_1ECA66B88);
  sub_1D88C7D1C(v3, v1, type metadata accessor for LoggingSignposter);
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("SaliencyStream.safeAreaFrame", 28, 2u, 1, 0, (v0 + 32));
  sub_1D88C7D84(v1, type metadata accessor for LoggingSignposter);
  v4 = sub_1D88A4AB0(v2, 1, 0.0, 0.0, 1.0, 1.0);
  if (v4)
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 72);
    v10 = v4;
    (*(*(*(**(v0 + 88) + 80) - 8) + 16))(v5, *(v0 + 88) + *(**(v0 + 88) + 112));
    v11 = *(v8 + 88);
    v12 = *(v11 + 40);
    v13 = v10;
    v12(v24, v7, v11);
    *&v25[23] = v24[1];
    *&v25[39] = v24[2];
    *&v25[55] = v24[3];
    *&v25[71] = v24[4];
    *&v25[7] = v24[0];
    (*(v6 + 8))(v5, v7);
    v9[3] = &type metadata for InProcessMediaFrame;
    v9[4] = sub_1D88C3924();
    v14 = swift_allocObject();
    *v9 = v14;

    v15 = *(v0 + 56);
    v16 = *(v0 + 64);
    __swift_project_boxed_opaque_existential_1((v0 + 32), v15);
    (*(v16 + 8))(v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
    *(v14 + 16) = v10;
    *(v14 + 24) = 0;
    v17 = *&v25[48];
    *(v14 + 57) = *&v25[32];
    *(v14 + 73) = v17;
    *(v14 + 89) = *&v25[64];
    *(v14 + 104) = *&v25[79];
    v18 = *&v25[16];
    *(v14 + 25) = *v25;
    *(v14 + 41) = v18;
  }

  else
  {
    v19 = *(v0 + 72);
    *(v19 + 32) = 0;
    *v19 = 0u;
    *(v19 + 16) = 0u;
    v20 = *(v0 + 56);
    v21 = *(v0 + 64);
    __swift_project_boxed_opaque_existential_1((v0 + 32), v20);
    (*(v21 + 8))(v20, v21);
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  }

  v22 = *(v0 + 8);

  return v22();
}

double sub_1D88A523C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1 + *(v2 + 112), v3);
  v7 = CameraSourceFrame.timestamp.getter(v3, *(v2 + 88));
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t *StillImageMediaManifest.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  v2 = *(*v0 + 128);
  v3 = sub_1D8B151E0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t StillImageMediaManifest.__deallocating_deinit()
{
  StillImageMediaManifest.deinit();

  return swift_deallocClassInstance();
}

double sub_1D88A54B4@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DictionaryConfigStorage();
  v2 = swift_allocObject();
  v3 = sub_1D893CABC(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = 0;
  *(v2 + 24) = v3;
  *a1 = v2;
  a1[1] = &protocol witness table for DictionaryConfigStorage;
  v4 = a1 + *(type metadata accessor for InProcessStream.Configuration() + 20);
  v5 = sub_1D893DF5C(&unk_1F5426928);
  v6 = sub_1D8A50334(&unk_1F5426A20);
  v7 = type metadata accessor for SaliencyStreamConfiguration();
  v8 = &v4[v7[7]];
  *v8 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(v8 + 2) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  v8[12] = (byte_1EE0ED6C0 & 1) == 0;
  v9 = type metadata accessor for InternalSettings();
  v10 = sub_1D8B15940();
  LODWORD(v9) = [v9 BOOLForKey:v10 defaultValue:0];

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v8[13] = v11;
  v12 = type metadata accessor for BundleManager.Configuration(0);
  v13 = v12[8];
  v14 = *MEMORY[0x1E69C9A80];
  v15 = sub_1D8B15340();
  (*(*(v15 - 8) + 104))(&v8[v13], v14, v15);
  *&v8[v12[9]] = MEMORY[0x1E69E7CD0];
  v16 = v12[10];
  v17 = *MEMORY[0x1E69DFC20];
  v18 = sub_1D8B150F0();
  (*(*(v18 - 8) + 104))(&v8[v16], v17, v18);
  v8[v12[11]] = 2;
  *v4 = xmmword_1D8B190D0;
  *(v4 + 2) = v5;
  v4[24] = 0;
  *(v4 + 4) = 1;
  v4[40] = 3;
  *(v4 + 6) = v6;
  *(v4 + 14) = 1056964608;
  v19 = &v4[v7[8]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v19 + 24) = _Q0;
  *(v19 + 10) = 16908290;
  *&result = 10;
  *(v19 + 3) = xmmword_1D8B190E0;
  v19[64] = 1;
  v26 = &v4[v7[9]];
  *v26 = 0x402E000000000000;
  v26[8] = 0;
  *(v26 + 2) = 0x3FE0000000000000;
  *(v26 + 3) = 1000;
  *(v26 + 4) = 0x3FF8000000000000;
  return result;
}

uint64_t sub_1D88A5764(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v48 - v5;
  v6 = type metadata accessor for InProcessStream.Configuration();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SaliencyStreamConfiguration();
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8B150F0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v18 = a1 + *(v6 + 20);
  v19 = *(v18 + 8) - 1;
  if (v19 > 3)
  {
    v20 = MEMORY[0x1E69DFC10];
  }

  else
  {
    v20 = qword_1E8561D40[v19];
  }

  (*(v12 + 104))(v15, *v20, v11);
  (*(v12 + 32))(v17, v15, v11);
  sub_1D8B14C10();
  swift_allocObject();
  sub_1D8B14C00();
  v21 = *a1;
  v22 = a1[1];
  ObjectType = swift_getObjectType();
  sub_1D88C7D1C(v18, v10, type metadata accessor for SaliencyStreamConfiguration);
  swift_unknownObjectRetain();

  SaliencyStreamIngredients.init<A>(configuration:configStorage:trackManagerSupporting:vapClient:)(v10, v21, 0, 0, ObjectType, v22, &aBlock);
  v24 = v52;
  v25 = v51;
  *(v2 + 16) = aBlock;
  *(v2 + 32) = v25;
  *(v2 + 48) = v24;
  if (qword_1EE0E4400 != -1)
  {
    swift_once();
  }

  v26 = sub_1D8B151E0();
  __swift_project_value_buffer(v26, qword_1EE0E4408);
  sub_1D88C7D1C(a1, v8, type metadata accessor for InProcessStream.Configuration);
  v27 = sub_1D8B151C0();
  v28 = sub_1D8B16230();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v55 = v30;
    *v29 = 136315138;
    v31 = &v8[*(v6 + 20) + *(v48 + 32)];
    v32 = *(v31 + 3);
    v52 = *(v31 + 2);
    v53 = v32;
    v54 = v31[64];
    v33 = *(v31 + 1);
    aBlock = *v31;
    v51 = v33;
    v34 = sub_1D8B159E0();
    v36 = v35;
    sub_1D88C7D84(v8, type metadata accessor for InProcessStream.Configuration);
    v37 = sub_1D89AC714(v34, v36, &v55);

    *(v29 + 4) = v37;
    _os_log_impl(&dword_1D8783000, v27, v28, "initializing stream with bundle selector configuration: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1DA721330](v30, -1, -1);
    MEMORY[0x1DA721330](v29, -1, -1);
  }

  else
  {

    sub_1D88C7D84(v8, type metadata accessor for InProcessStream.Configuration);
  }

  v38 = *(v2 + 16);
  sub_1D8A52644();
  v39 = *(v38 + 40);
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1D88C7DE4;
  *(v40 + 24) = v38;
  *&v52 = sub_1D88C7EC8;
  *(&v52 + 1) = v40;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v51 = sub_1D8A3EDFC;
  *(&v51 + 1) = &block_descriptor_303;
  v41 = _Block_copy(&aBlock);
  v42 = v39;

  dispatch_sync(v42, v41);

  _Block_release(v41);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
  }

  else
  {
    v44 = sub_1D8B15EA0();
    v45 = v49;
    (*(*(v44 - 8) + 56))(v49, 1, 1, v44);
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = swift_allocObject();
    v47[2] = 0;
    v47[3] = 0;
    v47[4] = v46;
    sub_1D8891CA0(0, 0, v45, &unk_1D8B260C0, v47);

    sub_1D88C7D84(a1, type metadata accessor for InProcessStream.Configuration);
    return v2;
  }

  return result;
}

uint64_t sub_1D88A5DF4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1D88A5EDC;

    return sub_1D88A6038();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D88A5EDC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88A5FD8, 0, 0);
}

uint64_t sub_1D88A5FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88A6038()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64818);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64910);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v1[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64978);
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64980);
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v1[15] = *(v6 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A626C, 0, 0);
}

uint64_t sub_1D88A626C()
{
  v1 = *(*(v0 + 16) + 40);
  *(v0 + 144) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D88A6290, v1, 0);
}

uint64_t sub_1D88A6290()
{
  v1 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  *v2 = 1;
  (*(v3 + 104))(v2, *MEMORY[0x1E69E8640], v4);
  sub_1D8AA7670(v2, v1);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D88A6360, 0, 0);
}

uint64_t sub_1D88A6360()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[9];
  v7 = v0[2];
  v8 = sub_1D8B15EA0();
  v0[19] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v0[20] = v10;
  v0[21] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v6, 1, 1, v8);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v2, v5);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v3 + 32))(v13 + v12, v1, v5);
  *(v13 + ((v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  *(v7 + 56) = sub_1D89AEF08(0, 0, v6, &unk_1D8B25EA8, v13);

  v14 = type metadata accessor for InternalSettings();
  v15 = sub_1D8B15940();
  LODWORD(v14) = [v14 BOOLForKey:v15 defaultValue:0];

  if (!v14)
  {
    goto LABEL_8;
  }

  if (qword_1EE0E55D0 != -1)
  {
    swift_once();
  }

  if (byte_1EE0E55D8 == 1)
  {
    v16 = v0[3];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64128);
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v18 = swift_task_alloc();
    v0[22] = v18;
    *v18 = v0;
    v18[1] = sub_1D88A66E0;
    v19 = v0[8];
    v20 = v0[3];

    return sub_1D8898868(v19, v20);
  }

  else
  {
LABEL_8:
    (*(v0[14] + 8))(v0[17], v0[13]);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1D88A66E0()
{
  v1 = *(*v0 + 24);

  sub_1D87A14E4(v1, &qword_1ECA64818);

  return MEMORY[0x1EEE6DFA0](sub_1D88A6808, 0, 0);
}

uint64_t sub_1D88A6808()
{
  v1 = *(v0 + 112);
  v17 = *(v0 + 104);
  v18 = *(v0 + 136);
  v2 = *(v0 + 64);
  v15 = v2;
  v16 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  (*(v0 + 160))();
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v3, v2, v6);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v5 + 32))(v11 + v9, v3, v6);
  *(v11 + v10) = v8;
  v12 = sub_1D89AEF08(0, 0, v16, &unk_1D8B25EC0, v11);
  (*(v5 + 8))(v15, v6);
  (*(v1 + 8))(v18, v17);
  *(v7 + 72) = v12;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D88A69FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64998);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A6AC8, 0, 0);
}

uint64_t sub_1D88A6AC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64980);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1D88A6BB0;
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6D9C8](v0 + 56, 0, 0, v2);
}

uint64_t sub_1D88A6BB0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88A6CAC, 0, 0);
}

uint64_t sub_1D88A6CAC()
{
  v1 = v0[7];
  v0[15] = v1;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong && (v3 = *(Strong + 64), v0[16] = v3, , , v3))
    {
      v4 = swift_task_alloc();
      v0[17] = v4;
      *v4 = v0;
      v4[1] = sub_1D88A6E90;

      return sub_1D889FFBC(v1);
    }

    else
    {

      v6 = swift_task_alloc();
      v0[14] = v6;
      *v6 = v0;
      v6[1] = sub_1D88A6BB0;
      v7 = v0[11];

      return MEMORY[0x1EEE6D9C8](v0 + 7, 0, 0, v7);
    }
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D88A6E90()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1D88A7070;
  }

  else
  {
    v2 = sub_1D88A6FC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88A6FC0()
{

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1D88A6BB0;
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6D9C8](v0 + 56, 0, 0, v2);
}

uint64_t sub_1D88A7070()
{
  v1 = *(v0 + 144);
  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    if (qword_1EE0E4400 != -1)
    {
      swift_once();
    }

    v5 = sub_1D8B151E0();
    __swift_project_value_buffer(v5, qword_1EE0E4408);
    sub_1D87DDF78(v4, v3);
    v6 = sub_1D8B151C0();
    v7 = sub_1D8B16210();
    sub_1D87DDF8C(v4, v3);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      sub_1D88C39A4();
      swift_allocError();
      *v10 = v4;
      v10[1] = v3;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1D8783000, v6, v7, "Unable to service detection request: %@", v8, 0xCu);
      sub_1D87A14E4(v9, &qword_1ECA63128);
      MEMORY[0x1DA721330](v9, -1, -1);
      MEMORY[0x1DA721330](v8, -1, -1);
    }

    else
    {

      sub_1D87DDF8C(v4, v3);
    }

    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *v14 = v0;
    v14[1] = sub_1D88A6BB0;
    v15 = *(v0 + 88);

    return MEMORY[0x1EEE6D9C8](v0 + 56, 0, 0, v15);
  }

  else
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D88A7364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[113] = a5;
  v5[112] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64800);
  v5[114] = v6;
  v5[115] = *(v6 - 8);
  v5[116] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA647F8);
  v5[117] = swift_task_alloc();
  v5[118] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40);
  v5[119] = v7;
  v5[120] = *(v7 - 8);
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64988);
  v5[123] = v8;
  v5[124] = *(v8 - 8);
  v5[125] = swift_task_alloc();
  v9 = sub_1D8B13000();
  v5[126] = v9;
  v5[127] = *(v9 - 8);
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  v10 = type metadata accessor for ActionPredictor.Output(0);
  v5[130] = v10;
  v5[131] = *(v10 - 8);
  v5[132] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290);
  v5[133] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64990);
  v5[134] = v11;
  v5[135] = *(v11 - 8);
  v5[136] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A76B8, 0, 0);
}

uint64_t sub_1D88A76B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64910);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = MEMORY[0x1E695F050];
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v0[137] = *MEMORY[0x1E695F050];
  v0[138] = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v0[139] = v4;
  v0[140] = v5;
  v0[97] = v2;
  v0[98] = v3;
  v0[99] = v4;
  v0[100] = v5;
  v0[141] = 0;
  v6 = swift_task_alloc();
  v0[142] = v6;
  *v6 = v0;
  v6[1] = sub_1D88A77D8;
  v7 = v0[134];
  v8 = v0[133];

  return MEMORY[0x1EEE6D9C8](v8, 0, 0, v7);
}

uint64_t sub_1D88A77D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88A78D4, 0, 0);
}

uint64_t sub_1D88A78D4()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1040);
  if ((*(*(v0 + 1048) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 1080) + 8))(*(v0 + 1088), *(v0 + 1072));

    v3 = *(v0 + 8);
LABEL_3:

    return v3();
  }

  v5 = *(v0 + 1056);
  sub_1D88C7124(v1, v5, type metadata accessor for ActionPredictor.Output);
  v6 = *(v2 + 20);
  *(v0 + 772) = v6;
  v7 = *(v0 + 1056);
  if (*(v5 + v6 + 40) != 1 || *(v7 + *(*(v0 + 1040) + 32)) != 1)
  {
    goto LABEL_17;
  }

  v8 = type metadata accessor for InternalSettings();
  v9 = sub_1D8B15940();
  LODWORD(v8) = [v8 BOOLForKey:v9 defaultValue:0];

  if (!v8)
  {
    goto LABEL_16;
  }

  if (qword_1EE0E55D0 != -1)
  {
    swift_once();
  }

  if (byte_1EE0E55D8 != 1 || (Strong = swift_weakLoadStrong(), (*(v0 + 1144) = Strong) == 0))
  {
LABEL_16:
    v7 = *(v0 + 1056);
LABEL_17:
    sub_1D88C7D84(v7, type metadata accessor for ActionPredictor.Output);
LABEL_18:
    v19 = swift_task_alloc();
    *(v0 + 1136) = v19;
    *v19 = v0;
    v19[1] = sub_1D88A77D8;
    v20 = *(v0 + 1072);
    v21 = *(v0 + 1064);

    return MEMORY[0x1EEE6D9C8](v21, 0, 0, v20);
  }

  v11 = Strong;
  v12 = *(Strong + 64);
  *(v0 + 1152) = v12;
  if (!v12)
  {
    sub_1D88C7D84(*(v0 + 1056), type metadata accessor for ActionPredictor.Output);

    goto LABEL_18;
  }

  v13 = *(v0 + 1128);
  v14 = *(v0 + 1032);
  type metadata accessor for SaliencyPixelSmuggler();

  sub_1D888EB58(v14);
  *(v0 + 1160) = v13;
  if (v13)
  {
    v15 = *(v0 + 1088);
    v16 = *(v0 + 1080);
    v17 = *(v0 + 1072);
    v18 = *(v0 + 1056);

    sub_1D88C7D84(v18, type metadata accessor for ActionPredictor.Output);
    (*(v16 + 8))(v15, v17);

    v3 = *(v0 + 8);
    goto LABEL_3;
  }

  v22 = *(v0 + 944);
  v23 = *(v0 + 936);
  v24 = *(v0 + 920);
  v25 = *(v0 + 912);
  (*(v24 + 56))(v22, 1, 1, v25);
  sub_1D87A0E38(v22, v23, &qword_1ECA647F8);
  if ((*(v24 + 48))(v23, 1, v25) == 1)
  {
    sub_1D87A14E4(*(v0 + 936), &qword_1ECA647F8);
    v26 = *(v11 + 32);
    *(v0 + 1176) = v26;
    v27 = sub_1D88A7FD8;
  }

  else
  {
    (*(*(v0 + 920) + 32))(*(v0 + 928), *(v0 + 936), *(v0 + 912));
    v26 = *(v11 + 32);
    *(v0 + 1168) = v26;
    v27 = sub_1D88A7E28;
  }

  return MEMORY[0x1EEE6DFA0](v27, v26, 0);
}

uint64_t sub_1D88A7E28()
{
  sub_1D889559C(*(v0 + 928));

  return MEMORY[0x1EEE6DFA0](sub_1D88A7E98, 0, 0);
}

uint64_t sub_1D88A7E98()
{
  (*(v0[115] + 8))(v0[116], v0[114]);
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  sub_1D87A14E4(v0[118], &qword_1ECA647F8);
  (*(v3 + 32))(v1, v2, v4);
  sub_1D8B15F10();
  (*(v3 + 8))(v1, v4);
  v5 = swift_task_alloc();
  v0[148] = v5;
  *v5 = v0;
  v5[1] = sub_1D88A8178;
  v6 = v0[123];

  return MEMORY[0x1EEE6D9D0](v0 + 26, v6);
}

uint64_t sub_1D88A7FD8()
{
  sub_1D889559C(*(v0 + 1176) + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_outputStreamBufferingPolicy);

  return MEMORY[0x1EEE6DFA0](sub_1D88A8054, 0, 0);
}

uint64_t sub_1D88A8054()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  sub_1D87A14E4(v0[118], &qword_1ECA647F8);
  (*(v3 + 32))(v1, v2, v4);
  sub_1D8B15F10();
  (*(v3 + 8))(v1, v4);
  v5 = swift_task_alloc();
  v0[148] = v5;
  *v5 = v0;
  v5[1] = sub_1D88A8178;
  v6 = v0[123];

  return MEMORY[0x1EEE6D9D0](v0 + 26, v6);
}

uint64_t sub_1D88A8178()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88A8274, 0, 0);
}

uint64_t sub_1D88A8274()
{
  v1 = *(v0 + 256);
  *(v0 + 144) = *(v0 + 240);
  *(v0 + 160) = v1;
  v2 = *(v0 + 288);
  *(v0 + 176) = *(v0 + 272);
  *(v0 + 192) = v2;
  v3 = *(v0 + 224);
  *(v0 + 112) = *(v0 + 208);
  *(v0 + 128) = v3;
  v4 = *(v0 + 112);
  *(v0 + 1192) = v4;
  v5 = *(v0 + 1152);
  if (!v4)
  {
    v22 = *(v0 + 1056);
    v23 = *(v0 + 1032);
    v24 = *(v0 + 1016);
    v25 = *(v0 + 1008);
    v26 = *(v0 + 1000);
    v27 = *(v0 + 992);
    v28 = *(v0 + 984);

    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v25);
    v21 = v22;
    goto LABEL_5;
  }

  v6 = *(v0 + 776);
  v7 = *(v0 + 784);
  v8 = *(v0 + 792);
  v9 = *(v0 + 800);

  sub_1D87A14E4(v0 + 112, &qword_1ECA67E50);
  v68.origin.x = 0.0;
  v68.origin.y = 0.0;
  v68.size.width = 1.0;
  v68.size.height = 1.0;
  v67 = CGRectIntersection(v5[3], v68);
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v69.origin.x = v6;
  v69.origin.y = v7;
  v69.size.width = v8;
  v69.size.height = v9;
  if (CGRectEqualToRect(v67, v69))
  {
    v14 = *(v0 + 1056);
    v15 = *(v0 + 1032);
    v16 = *(v0 + 1016);
    v17 = *(v0 + 1008);
    v18 = *(v0 + 1000);
    v19 = *(v0 + 992);
    v20 = *(v0 + 984);

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    v21 = v14;
LABEL_5:
    sub_1D88C7D84(v21, type metadata accessor for ActionPredictor.Output);
    v29 = *(v0 + 1160);
LABEL_6:
    *(v0 + 1128) = v29;
    v30 = swift_task_alloc();
    *(v0 + 1136) = v30;
    *v30 = v0;
    v30[1] = sub_1D88A77D8;
    v31 = *(v0 + 1072);
    v32 = *(v0 + 1064);

    return MEMORY[0x1EEE6D9C8](v32, 0, 0, v31);
  }

  v33 = *(v0 + 1160);
  v34 = *(v0 + 1152);
  v35 = *(v0 + 1120);
  v36 = *(v0 + 1096);
  v37 = *(v0 + 1104);
  v38 = v34[3];
  *(v0 + 16) = v34[2];
  *(v0 + 32) = v38;
  v39 = v34[4];
  v40 = v34[5];
  v41 = v34[7];
  *(v0 + 80) = v34[6];
  *(v0 + 96) = v41;
  *(v0 + 48) = v39;
  *(v0 + 64) = v40;
  *(v0 + 1260) = 0;
  *(v0 + 1256) = 0;
  strcpy((v0 + 664), "ARGB");
  *(v0 + 672) = 9999;
  *(v0 + 680) = v36;
  *(v0 + 688) = v37;
  *(v0 + 704) = v35;
  *(v0 + 712) = 1;
  *(v0 + 716) = 1;
  *(v0 + 720) = 0;
  *(v0 + 728) = 0;
  *(v0 + 656) = 0;
  sub_1D88C5438(v0 + 664, v0 + 576);
  *(v0 + 648) = 0;
  v42 = *(v0 + 624);
  *(v0 + 432) = *(v0 + 608);
  *(v0 + 448) = v42;
  v43 = *(v0 + 592);
  *(v0 + 400) = *(v0 + 576);
  *(v0 + 416) = v43;
  *(v0 + 464) = *(v0 + 640);
  *(v0 + 480) = *(v0 + 656);

  sub_1D888406C(v0 + 16, v0 + 304);
  sub_1D88C27FC(v0 + 400, v0 + 16, v0 + 488, x, y, width, height);
  if (v33)
  {
    sub_1D881F5F8(v0 + 400);

    v44 = *(v0 + 1080);
    v64 = *(v0 + 1072);
    v65 = *(v0 + 1088);
    v62 = *(v0 + 1032);
    v63 = *(v0 + 1056);
    v45 = *(v0 + 1016);
    v46 = *(v0 + 1008);
    v47 = *(v0 + 1000);
    v48 = *(v0 + 992);
    v49 = *(v0 + 984);
    sub_1D8884018(v0 + 16);

    (*(v48 + 8))(v47, v49);
    (*(v45 + 8))(v62, v46);
    sub_1D88C7D84(v63, type metadata accessor for ActionPredictor.Output);
    (*(v44 + 8))(v65, v64);

    v50 = *(v0 + 8);

    return v50();
  }

  else
  {
    sub_1D88C55E8(v0 + 488, v0 + 16, 0x100000000, v0 + 736);
    sub_1D881F5F8(v0 + 400);
    *(v0 + 880) = *(v0 + 560);
    sub_1D87A0E38(v0 + 880, v0 + 888, &qword_1ECA64970);
    sub_1D881F5F8(v0 + 488);

    sub_1D8884018(v0 + 16);
    v51 = *(v0 + 880);
    v52 = *(v0 + 1056);
    if (!v51)
    {
      v55 = *(v0 + 1032);
      v56 = *(v0 + 1016);
      v57 = *(v0 + 1008);
      v58 = *(v0 + 1000);
      v59 = *(v0 + 992);
      v60 = *(v0 + 984);

      (*(v59 + 8))(v58, v60);
      (*(v56 + 8))(v55, v57);
      sub_1D88C7D84(v52, type metadata accessor for ActionPredictor.Output);
      v29 = 0;
      goto LABEL_6;
    }

    v53 = *(v52 + *(v0 + 772) + 32);
    v54 = swift_task_alloc();
    *(v0 + 1200) = v54;
    *v54 = v0;
    v54[1] = sub_1D88A8964;

    return static CVResultPackage.package(for:pixelBuffer:fileBaseName:timestamp:exportGraphicalArtifacts:)(v0 + 832, v4, v51, 0xD00000000000001CLL, 0x80000001D8B43A80, 1, v53);
  }
}

uint64_t sub_1D88A8964()
{
  *(*v1 + 1208) = v0;

  if (v0)
  {
    v2 = sub_1D88A9054;
  }

  else
  {
    v2 = sub_1D88A8A98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88A8A98()
{
  v1 = v0[104];
  v0[152] = v1;
  v2 = v0[105];
  v0[153] = v2;
  v3 = v0[106];
  v0[154] = v3;
  v0[107] = v1;
  v0[108] = v2;
  v0[109] = v3;
  v4 = swift_task_alloc();
  v0[155] = v4;
  *v4 = v0;
  v4[1] = sub_1D88A8B58;
  v5 = v0[129];

  return CVResultPackage.export(url:)(v5);
}

uint64_t sub_1D88A8B58()
{
  *(*v1 + 1248) = v0;

  if (v0)
  {
    v2 = sub_1D88A9218;
  }

  else
  {

    v2 = sub_1D88A8CA4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88A8CA4()
{
  v37 = v0;
  if (qword_1EE0E4400 != -1)
  {
    swift_once();
  }

  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[126];
  v5 = sub_1D8B151E0();
  __swift_project_value_buffer(v5, qword_1EE0E4408);
  (*(v3 + 16))(v2, v1, v4);
  v6 = sub_1D8B151C0();
  v7 = sub_1D8B161F0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[132];
  v10 = v0[129];
  v11 = v0[128];
  v12 = v0[126];
  v13 = v0[125];
  v14 = v0[123];
  v35 = (v0[124] + 8);
  v15 = (v0[127] + 8);
  if (v8)
  {
    v34 = v0[132];
    v16 = swift_slowAlloc();
    v33 = v10;
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136315138;
    sub_1D88C7AAC(&qword_1ECA64730, MEMORY[0x1E6968FB0]);
    v31 = v14;
    v32 = v13;
    v18 = sub_1D8B16B50();
    v20 = v19;
    v21 = v12;
    v30 = v12;
    v22 = *v15;
    (*v15)(v11, v21);
    v23 = sub_1D89AC714(v18, v20, &v36);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_1D8783000, v6, v7, "Debug result package exported to %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1DA721330](v17, -1, -1);
    MEMORY[0x1DA721330](v16, -1, -1);
    sub_1D87A14E4((v0 + 110), &qword_1ECA64970);

    (*v35)(v32, v31);
    v22(v33, v30);
    v24 = v34;
  }

  else
  {
    sub_1D87A14E4((v0 + 110), &qword_1ECA64970);

    v25 = *v15;
    (*v15)(v11, v12);
    (*v35)(v13, v14);
    v25(v10, v12);
    v24 = v9;
  }

  sub_1D88C7D84(v24, type metadata accessor for ActionPredictor.Output);
  v0[141] = v0[156];
  v26 = swift_task_alloc();
  v0[142] = v26;
  *v26 = v0;
  v26[1] = sub_1D88A77D8;
  v27 = v0[134];
  v28 = v0[133];

  return MEMORY[0x1EEE6D9C8](v28, 0, 0, v27);
}

uint64_t sub_1D88A9054()
{
  v1 = v0[135];
  v11 = v0[134];
  v12 = v0[136];
  v10 = v0[132];
  v2 = v0[129];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[124];
  v7 = v0[123];
  sub_1D87A14E4((v0 + 110), &qword_1ECA64970);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_1D88C7D84(v10, type metadata accessor for ActionPredictor.Output);
  (*(v1 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D88A9218()
{
  v12 = v0[136];
  v1 = v0[135];
  v10 = v0[132];
  v11 = v0[134];
  v2 = v0[129];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[124];
  v7 = v0[123];
  sub_1D87A14E4((v0 + 110), &qword_1ECA64970);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_1D88C7D84(v10, type metadata accessor for ActionPredictor.Output);
  (*(v1 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D88A9404(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D88A942C, 0, 0);
}

uint64_t sub_1D88A942C()
{
  v1 = *(v0 + 4);
  v2 = v0[3];
  v3 = *(v0 + 2);
  v4 = *(v1 + 16);

  v5 = v3;
  v6 = sub_1D88C273C(v4, v5, v2);
  *(v0 + 5) = v6;

  *(v1 + 64) = v6;

  if (v6)
  {
    v7 = *(*(v0 + 4) + 48);
    *(v0 + 6) = v7;

    return MEMORY[0x1EEE6DFA0](sub_1D88A9538, v7, 0);
  }

  else
  {
    v8 = *(v0 + 1);

    return v8();
  }
}

uint64_t sub_1D88A9538()
{
  *(*(v0 + 48) + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_visionProvider + 8) = &protocol witness table for StillImageMediaManifest<A>;
  swift_unknownObjectWeakAssign();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D88A9604;

  return sub_1D889F354();
}

uint64_t sub_1D88A9604()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D88A977C;
  }

  else
  {
    v2 = sub_1D88A9718;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88A9718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88A977C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88A97E0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D88A9870(uint64_t a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D88A9404(a1, a2);
}

uint64_t sub_1D88A9914@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
}

uint64_t sub_1D88A9990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D886553C;

  return SaliencyStreamInternalMonitorable<>.makeBundleManagerOutputStream(bufferingPolicyOverride:)(a1, a2, a3, &off_1F542CD58);
}

uint64_t sub_1D88A9A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D886553C;

  return SaliencyStreamInternalMonitorable<>.makeBundleSelectorOutputStream(bufferingPolicyOverride:)(a1, a2, a3, &off_1F542CD58);
}

uint64_t sub_1D88A9B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D886553C;

  return SaliencyStreamInternalMonitorable<>.makeActionPredictorOutputStream(bufferingPolicyOverride:)(a1, a2, a3, &off_1F542CD58);
}

uint64_t sub_1D88A9BB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return SaliencyStreamInternalMonitorable<>.getHighQualityStillOverlaySupportData()(a1, a2, &off_1F542CD58);
}

uint64_t CameraSourceFrame.createStillImageMediaManifest(cvCoordinator:overrideTimestamp:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 40))(v23, a4, a5);
  v9 = CameraSourceFrame.timestamp.getter(a4, a5);
  if (a3)
  {
    v10 = CameraSourceFrame.timestamp.getter(a4, a5);
  }

  else
  {
    v10 = *&a2;
  }

  *&v24 = v10;
  if (qword_1EE0E4400 != -1)
  {
    swift_once();
  }

  v11 = sub_1D8B151E0();
  __swift_project_value_buffer(v11, qword_1EE0E4408);
  v12 = sub_1D8B151C0();
  v13 = sub_1D8B16200();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 134218498;
    *(v14 + 4) = v9;
    *(v14 + 12) = 2080;
    if (a3)
    {
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      v17 = sub_1D8B16010();
      v16 = v18;
    }

    v19 = sub_1D89AC714(v17, v16, &v27);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v10;
    _os_log_impl(&dword_1D8783000, v12, v13, "createStillImageMediaManifest: originalTimestamp=%f, overrideTimestamp=%s, finalTimestamp=%f", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1DA721330](v15, -1, -1);
    MEMORY[0x1DA721330](v14, -1, -1);
  }

  else
  {
  }

  (*(a5 + 32))(&v27, a4, a5);
  *&v22[71] = v26;
  *&v22[55] = v25;
  *&v22[39] = v24;
  *&v22[23] = v23[1];
  *&v22[7] = v23[0];
  v29 = *&v22[16];
  v28 = *v22;
  *&v32[15] = *(&v26 + 1);
  *v32 = *&v22[64];
  v31 = *&v22[48];
  v30 = *&v22[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64868);
  swift_allocObject();

  return sub_1D889EA3C(v20, &v27);
}

uint64_t StillImageMediaManifest.detectionResult(for:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *v2;
  v3[11] = *v2;
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64870);
  v3[13] = swift_task_alloc();
  v5 = *(v4 + 80);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88AA05C, 0, 0);
}

uint64_t sub_1D88AA05C()
{
  v1 = v0[16];
  v24 = v0[14];
  v25 = v0[15];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_allocBox();
  v7 = v6;
  v0[17] = v5;
  v0[18] = v6;
  v8 = type metadata accessor for DetectionResult(0);
  v0[19] = v8;
  v9 = *(v8 - 8);
  v0[20] = v9;
  (*(v9 + 56))(v7, 1, 1, v8);
  v10 = swift_allocObject();
  v0[21] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63240);
  v11 = *(type metadata accessor for DetectionRequest(0) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D8B1AB90;
  sub_1D88C7D1C(v3, v13 + v12, type metadata accessor for DetectionRequest);

  v14 = sub_1D8A4E6CC(v13);
  swift_setDeallocating();
  sub_1D88C7D84(v13 + v12, type metadata accessor for DetectionRequest);
  swift_deallocClassInstance();
  (*(*(*(*v4 + 80) - 8) + 16))(v1, v4 + *(*v4 + 112));
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = v10;
  v16 = *(v2 + 88);

  sub_1D8A4F08C(v14, v1, 0x100000000uLL, sub_1D88C399C, v15, v24, v16);
  v0[22] = v17;
  v18 = v17;
  (*(v25 + 8))(v0[16], v0[14]);

  v19 = swift_task_alloc();
  v0[23] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  *v19 = v0;
  v19[1] = sub_1D88AA490;
  v21 = MEMORY[0x1E69E7288];
  v22 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v20, v18, v22, v20, v21);
}

uint64_t sub_1D88AA490()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1D88AA784;
  }

  else
  {
    v2 = sub_1D88AA5A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88AA5A4()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  swift_beginAccess();
  sub_1D87A0E38(v3, v4, &qword_1ECA64870);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v5 = v0[21];
    sub_1D87A14E4(v0[13], &qword_1ECA64870);
    result = swift_beginAccess();
    v7 = *(v5 + 24);
    if (!v7)
    {
      __break(1u);
      return result;
    }

    v8 = *(v0[21] + 16);
    sub_1D88C39A4();
    swift_allocError();
    *v9 = v8;
    v9[1] = v7;
    swift_willThrow();

    v10 = v0[1];
  }

  else
  {
    v11 = v0[13];
    v12 = v0[8];

    sub_1D88C7124(v11, v12, type metadata accessor for DetectionResult);

    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_1D88AA784()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88AA810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64870);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  sub_1D88C7D1C(a1, v10, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D88C7124(v10, v7, type metadata accessor for DetectionResult);
      v13 = type metadata accessor for DetectionResult(0);
      (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
      swift_beginAccess();
      return sub_1D87B6EFC(v7, v11, &qword_1ECA64870);
    }

    v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48)];
    v17 = *v16;
    v18 = *(v16 + 1);
    swift_beginAccess();
    *(a3 + 16) = v17;
    *(a3 + 24) = v18;

    v15 = type metadata accessor for DetectionRequest;
  }

  else
  {
    v15 = type metadata accessor for ProcessorState;
  }

  return sub_1D88C7D84(v10, v15);
}

uint64_t StillImageMediaManifest.pixels(for:upright:)(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *v2;
  *(v3 + 32) = *v2;
  v5 = *(v4 + 80);
  *(v3 + 40) = v5;
  *(v3 + 48) = *(v5 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = type metadata accessor for ActionPin(0);
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88AAB5C, 0, 0);
}

uint64_t sub_1D88AAB5C()
{
  v22 = v0;
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v17 = *(v0 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v6[3];
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v8);
  sub_1D87EED18(v8, v9, v1);
  sub_1D88C7D84(v1, type metadata accessor for ActionPin);
  (*(*(*(*v7 + 80) - 8) + 16))(v2, v7 + *(*v7 + 112));
  (*(*(v4 + 88) + 40))(v18, v5);
  (*(v3 + 8))(v2, v5);
  v19 = v18[2];
  v20 = 0.0;
  sub_1D8A5A9D8(&v19, &v20, v21);
  Corners.bounds.getter();
  v14 = sub_1D88A4AB0(0x7FFFFFFFFFFFFFFFLL, v17, v10, v11, v12, v13);

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_1D88AAD40(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D87C0B2C;

  return StillImageMediaManifest.pixels(for:upright:)(a1, a2);
}

uint64_t sub_1D88AADE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return StillImageMediaManifest.detectionResult(for:)(a1, a2);
}

uint64_t sub_1D88AAEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1D8864FBC;

  return SaliencyStreamActionProviding.executeAction<A, B>(_:pill:executionParameter:)(a1, a2, a3, a4, a9, a5, a6, &off_1F542CCE8);
}

uint64_t SaliencyStreamActionProviding.executeAction<A, B>(_:pill:executionParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v12;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v11;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D88AAFF0, 0, 0);
}

uint64_t sub_1D88AAFF0()
{
  v0[13] = (*(v0[9] + 32))(v0[6]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1D88AB0B8;
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_1D8824850(v8, v9, v6, v7, v4, v5, v2, v3);
}

uint64_t sub_1D88AB0B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D88AB1C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D886553C;

  return SaliencyStreamActionProviding.actionPinFromUserSelection(_:excludedIdentifiers:)(a1, a2, a3, &off_1F542CCE8, a4, a5, a6, a7);
}

uint64_t SaliencyStreamActionProviding.actionPinFromUserSelection(_:excludedIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  *(v9 + 832) = v8;
  *(v9 + 824) = a4;
  *(v9 + 816) = a3;
  *(v9 + 808) = a2;
  *(v9 + 800) = a8;
  *(v9 + 792) = a7;
  *(v9 + 784) = a6;
  *(v9 + 776) = a5;
  *(v9 + 768) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  *(v9 + 840) = swift_task_alloc();
  *(v9 + 848) = type metadata accessor for BundleManager.SelectionResult(0);
  *(v9 + 856) = swift_task_alloc();
  v10 = type metadata accessor for CVBundle(0);
  *(v9 + 864) = v10;
  *(v9 + 872) = *(v10 - 8);
  *(v9 + 880) = swift_task_alloc();
  v11 = sub_1D8B151E0();
  *(v9 + 888) = v11;
  *(v9 + 896) = *(v11 - 8);
  *(v9 + 904) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88AB454, 0, 0);
}

uint64_t sub_1D88AB454()
{
  if (qword_1EE0E4400 != -1)
  {
    swift_once();
  }

  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[103];
  v5 = v0[102];
  v6 = __swift_project_value_buffer(v3, qword_1EE0E4408);
  (*(v2 + 16))(v1, v6, v3);
  v7 = *(v4 + 16);
  v0[114] = v7;
  v0[115] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0x7C44000000000000;
  v8 = v7(v5, v4);
  v0[116] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D88AB568, v8, 0);
}

uint64_t sub_1D88AB568()
{
  v1 = (*(v0 + 928) + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v2 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  v3 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  *(v0 + 80) = v1[4];
  *(v0 + 96) = v3;
  *(v0 + 48) = v5;
  *(v0 + 64) = v4;
  sub_1D87A0E38(v0 + 16, v0 + 112, &qword_1ECA64858);

  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  if (v7)
  {
    v8 = *(v0 + 48);
    v9 = *(v0 + 64);
    *(v0 + 624) = v8;
    *(v0 + 640) = v9;
    v10 = *(v0 + 80);
    *(v0 + 656) = v10;
    v12 = *(v0 + 16);
    v11 = *(v0 + 32);
    *(v0 + 592) = v12;
    *(v0 + 608) = v11;
    *(v0 + 240) = v8;
    *(v0 + 256) = v9;
    *(v0 + 272) = v10;
    *(v0 + 208) = v12;
    *(v0 + 224) = v11;
    *(v0 + 288) = v7;
    *(v0 + 296) = v6;
    sub_1D87A14E4(v0 + 208, &qword_1ECA64858);
    v13 = sub_1D88AB6A4;
  }

  else
  {
    v14 = *(v0 + 64);
    *(v0 + 528) = *(v0 + 48);
    *(v0 + 544) = v14;
    *(v0 + 560) = *(v0 + 80);
    v15 = *(v0 + 32);
    *(v0 + 496) = *(v0 + 16);
    *(v0 + 512) = v15;
    *(v0 + 576) = 0;
    *(v0 + 584) = v6;
    sub_1D87A14E4(v0 + 496, &qword_1ECA64858);
    v13 = sub_1D88AB77C;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

uint64_t sub_1D88AB6A4()
{
  sub_1D8890548((v0 + 672));
  v1 = *(v0 + 912);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v8 = *(v0 + 776);
  v4 = *(v0 + 688);
  *(v0 + 720) = *(v0 + 672);
  *(v0 + 736) = v4;
  *(v0 + 752) = *(v0 + 704);
  *(v0 + 936) = CGRectApplyAffineTransform(v8, (v0 + 720));
  v5 = v1(v3, v2);
  *(v0 + 968) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D88AB8C4, v5, 0);
}

uint64_t sub_1D88AB77C()
{
  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16210();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D8783000, v1, v2, "Should probably have gotten the rotation angle from the frame.", v3, 2u);
    MEMORY[0x1DA721330](v3, -1, -1);
  }

  v4 = *(v0 + 912);
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);
  v10 = *(v0 + 776);
  *(v0 + 720) = 0x3FF0000000000000;
  *(v0 + 728) = 0u;
  *(v0 + 744) = 0x3FF0000000000000;
  *(v0 + 752) = 0u;
  *(v0 + 936) = CGRectApplyAffineTransform(v10, (v0 + 720));
  v7 = v4(v6, v5);
  *(v0 + 968) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D88AB8C4, v7, 0);
}

uint64_t sub_1D88AB8C4()
{
  sub_1D8924E48(*(v0 + 808), *(v0 + 856), *(v0 + 936), *(v0 + 944), *(v0 + 952), *(v0 + 960));

  return MEMORY[0x1EEE6DFA0](sub_1D88AB94C, 0, 0);
}

uint64_t sub_1D88AB94C()
{
  v34 = v0;
  v1 = *(v0 + 856);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v3 = EnumCaseMultiPayload != 1;
    v15 = *(v0 + 880);
    v16 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECA64880) + 48);
    v17 = *v16;
    v30 = *(v16 + 40);
    v31 = *(v16 + 56);
    v32 = *(v16 + 72);
    v28 = *(v16 + 8);
    v29 = *(v16 + 24);
    v18 = *(v16 + 11);
    sub_1D88C7124(v1, v15, type metadata accessor for CVBundle);
    *(v0 + 1000) = v3;
    v19 = *(v0 + 880);
    v20 = *(v0 + 872);
    v21 = *(v0 + 864);
    v22 = *(v0 + 840);
    v23 = (*(*(v0 + 824) + 24))(*(v0 + 816));
    *(v0 + 976) = v23;
    sub_1D88C7D1C(v19, v22, type metadata accessor for CVBundle);
    (*(v20 + 56))(v22, 0, 1, v21);
    *(v0 + 400) = v17;
    *(v0 + 440) = v30;
    *(v0 + 456) = v31;
    *(v0 + 472) = v32;
    *(v0 + 408) = v28;
    *(v0 + 424) = v29;
    *(v0 + 488) = v18;

    return MEMORY[0x1EEE6DFA0](sub_1D88ABCB4, v23, 0);
  }

  else
  {
    v5 = *v1;
    v4 = v1[1];

    v6 = sub_1D8B151C0();
    v7 = sub_1D8B16210();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 904);
    v10 = *(v0 + 896);
    v11 = *(v0 + 888);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = v13;
      *v12 = 136315138;
      v14 = sub_1D89AC714(v5, v4, &v33);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_1D8783000, v6, v7, "Selection failed: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1DA721330](v13, -1, -1);
      MEMORY[0x1DA721330](v12, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v9, v11);
    v24 = *(v0 + 768);
    v25 = type metadata accessor for ActionPin(0);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1D88ABCB4()
{
  v1 = *(v0 + 840);
  sub_1D8AACEF8(v1, v0 + 400);

  v2 = *(v0 + 448);
  *(v0 + 336) = *(v0 + 432);
  *(v0 + 352) = v2;
  v3 = *(v0 + 480);
  *(v0 + 368) = *(v0 + 464);
  *(v0 + 384) = v3;
  v4 = *(v0 + 416);
  *(v0 + 304) = *(v0 + 400);
  *(v0 + 320) = v4;
  sub_1D88C39F8(v0 + 304);
  sub_1D87A14E4(v1, &qword_1ECA67980);

  return MEMORY[0x1EEE6DFA0](sub_1D88ABD68, 0, 0);
}

uint64_t sub_1D88ABD68()
{
  v0[123] = (*(v0[103] + 32))(v0[102]);
  v1 = swift_task_alloc();
  v0[124] = v1;
  *v1 = v0;
  v1[1] = sub_1D88ABE28;
  v2 = v0[110];
  v3 = v0[96];

  return sub_1D88430D0(v3, v2);
}

uint64_t sub_1D88ABE28()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88ABF40, 0, 0);
}

uint64_t sub_1D88ABF40()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 904);
  v3 = *(v0 + 896);
  v4 = *(v0 + 888);
  v5 = *(v0 + 880);
  v6 = *(v0 + 832);
  v7 = *(v0 + 824);
  v8 = *(v0 + 816);
  v9 = *(v0 + 768);
  v10 = type metadata accessor for ActionPin(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_1D88AC094(v1, v6, v5, v8, v7);
  sub_1D88C7D84(v5, type metadata accessor for CVBundle);
  (*(v3 + 8))(v2, v4);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D88AC094(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v24 = a5;
  v8 = type metadata accessor for CVBundle(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  result = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v23 - v16;
  if (a1)
  {
    v18 = sub_1D8B15EA0();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    (*(v12 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a4);
    sub_1D88C7D1C(v23, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CVBundle);
    v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v20 = (v13 + *(v9 + 80) + v19) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    v22 = v24;
    *(v21 + 4) = a4;
    *(v21 + 5) = v22;
    (*(v12 + 32))(&v21[v19], &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
    sub_1D88C7124(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), &v21[v20], type metadata accessor for CVBundle);
    sub_1D8891CA0(0, 0, v17, &unk_1D8B25F48, v21);
  }

  return result;
}

uint64_t sub_1D88AC340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64848);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v6[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64800);
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40);
  v6[15] = v9;
  v10 = *(v9 - 8);
  v6[16] = v10;
  v6[17] = *(v10 + 64);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88AC52C, 0, 0);
}

uint64_t sub_1D88AC52C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = Strong;
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

      v4 = v0[13];
      v3 = v0[14];
      v5 = v0[12];
      v0[21] = qword_1ECA675B0;
      (*(v4 + 104))(v3, *MEMORY[0x1E69E8650], v5);
      v6 = sub_1D88AC6DC;
      v7 = v2;
    }

    else
    {
      v7 = v0[20];
      v6 = sub_1D88AC954;
    }

    return MEMORY[0x1EEE6DFA0](v6, v7, 0);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D88AC6DC()
{
  v1 = v0[21];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  sub_1D889559C(v2);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D88AC77C, v1, 0);
}

uint64_t sub_1D88AC77C()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v15 = v2;
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = v0[11];
  v8 = sub_1D8B15EA0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v5 + 16))(v3, v2, v6);
  v9 = sub_1D88C7AAC(&qword_1ECA64A00, type metadata accessor for CVDebugArtifactManager);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = v9;
  (*(v5 + 32))(v12 + v10, v3, v6);
  *(v12 + v11) = v1;
  swift_retain_n();
  sub_1D8891CA0(0, 0, v7, &unk_1D8B26040, v12);

  (*(v5 + 8))(v15, v6);
  v13 = v0[20];

  return MEMORY[0x1EEE6DFA0](sub_1D88AC954, v13, 0);
}

uint64_t sub_1D88AC954()
{
  v1 = v0[6];
  sub_1D892C038();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_1D88ACA54;
  v3 = v0[10];

  return v5(v3);
}

uint64_t sub_1D88ACA54()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D88ACB64, v1, 0);
}

uint64_t sub_1D88ACB64()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1D88ACC90(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D88ACBF8, 0, 0);
}

uint64_t sub_1D88ACBF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88ACC90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64848);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1D8B15EA0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v7, a1, v3);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v4 + 32))(v14 + v13, v7, v3);
  *(v14 + ((v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_trackReadingTask) = sub_1D8891CA0(0, 0, v10, &unk_1D8B26050, v14);
}

uint64_t sub_1D88ACEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[117] = a5;
  v5[116] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64848);
  v5[118] = v6;
  v5[119] = *(v6 - 8);
  v5[120] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64850);
  v5[121] = v7;
  v5[122] = *(v7 - 8);
  v5[123] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88ACFF4, 0, 0);
}

uint64_t sub_1D88ACFF4()
{
  (*(v0[119] + 16))(v0[120], v0[116], v0[118]);
  sub_1D881CF20(&qword_1EE0E38A8, &qword_1ECA64848);
  sub_1D8B15FD0();
  swift_beginAccess();
  sub_1D881CF20(&qword_1EE0E38D0, &qword_1ECA64850);
  v1 = swift_task_alloc();
  v0[124] = v1;
  *v1 = v0;
  v1[1] = sub_1D88AD164;

  return MEMORY[0x1EEE6D8D0](v0 + 2, 0, 0);
}

uint64_t sub_1D88AD164()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D88AD274, 0, 0);
  }

  return result;
}

uint64_t sub_1D88AD274()
{
  v1 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v1;
  v2 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v2;
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  *(v0 + 112) = v3;
  *(v0 + 128) = v4;
  *(v0 + 824) = v3;
  *(v0 + 840) = v4;
  *(v0 + 1000) = *(v0 + 144);
  v5 = *(v0 + 152);
  *(v0 + 1080) = v5;
  *(v0 + 1040) = v5;
  *(v0 + 1072) = *(v0 + 88);
  v6 = *(v0 + 73);
  v7 = *(v0 + 192);
  *(v0 + 1008) = v7;
  *(v0 + 1041) = *(v0 + 57);
  *(v0 + 1057) = v6;
  if (!v7)
  {
    (*(*(v0 + 976) + 8))(*(v0 + 984), *(v0 + 968));
LABEL_8:

    v10 = *(v0 + 8);

    return v10();
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 1024) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 976) + 8))(*(v0 + 984), *(v0 + 968));
    goto LABEL_7;
  }

  v9 = Strong;
  if (sub_1D8B15F90())
  {
    (*(*(v0 + 976) + 8))(*(v0 + 984), *(v0 + 968));

LABEL_7:
    sub_1D87A14E4(v0 + 112, &qword_1ECA64858);
    goto LABEL_8;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D88AD410, v9, 0);
}

uint64_t sub_1D88AD410()
{
  v1 = (v0 + 784);
  v2 = (v0 + 856);
  v3 = *(v0 + 1024) + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState;
  v4 = *(v3 + 16);
  *(v0 + 208) = *v3;
  *(v0 + 224) = v4;
  v5 = *(v3 + 80);
  v7 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(v0 + 272) = *(v3 + 64);
  *(v0 + 288) = v5;
  *(v0 + 240) = v7;
  *(v0 + 256) = v6;
  v8 = *(v3 + 16);
  *(v0 + 856) = *v3;
  *(v0 + 872) = v8;
  v9 = *(v0 + 240);
  *(v0 + 1032) = v9;
  v10 = *(v3 + 40);
  v11 = *(v3 + 56);
  *(v0 + 816) = *(v3 + 72);
  *(v0 + 784) = v10;
  *(v0 + 800) = v11;
  v13 = *(v0 + 288);
  v12 = *(v0 + 296);
  v14 = *(v0 + 872);
  if (v13)
  {
    *(v0 + 304) = *v2;
    *(v0 + 320) = v14;
    *(v0 + 336) = v9;
    v15 = *(v0 + 800);
    *(v0 + 344) = *v1;
    *(v0 + 360) = v15;
    *(v0 + 376) = *(v0 + 816);
    *(v0 + 384) = v13;
    *(v0 + 392) = v12;
    sub_1D87A0E38(v0 + 208, v0 + 400, &qword_1ECA64858);
    sub_1D87A14E4(v0 + 304, &qword_1ECA64858);
    v16 = sub_1D88AD590;
  }

  else
  {
    *(v0 + 592) = *v2;
    *(v0 + 608) = v14;
    *(v0 + 624) = v9;
    v17 = *(v0 + 800);
    *(v0 + 632) = *v1;
    *(v0 + 648) = v17;
    *(v0 + 664) = *(v0 + 816);
    *(v0 + 672) = 0;
    *(v0 + 680) = v12;
    sub_1D87A0E38(v0 + 208, v0 + 688, &qword_1ECA64858);
    sub_1D87A14E4(v0 + 592, &qword_1ECA64858);
    v16 = sub_1D88AD84C;
  }

  return MEMORY[0x1EEE6DFA0](v16, 0, 0);
}

uint64_t sub_1D88AD590()
{
  v13 = v0;
  v1 = *(v0 + 1000);
  if (*(v0 + 1032) < v1 || (*(v0 + 1080) & 1) != 0)
  {
    v8 = *(v0 + 1024);
    v9 = *(v0 + 840);
    *(v0 + 496) = *(v0 + 824);
    *(v0 + 512) = v9;
    *(v0 + 528) = v1;
    *(v0 + 536) = *(v0 + 1040);
    v10 = *(v0 + 1057);
    *(v0 + 537) = *(v0 + 1041);
    *(v0 + 553) = v10;
    *(v0 + 568) = *(v0 + 1072);
    *(v0 + 576) = *(v0 + 1008);

    return MEMORY[0x1EEE6DFA0](sub_1D88ADB10, v8, 0);
  }

  else
  {
    sub_1D87A14E4(v0 + 112, &qword_1ECA64858);
    v2 = sub_1D8B151C0();
    v3 = sub_1D8B16200();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136315138;
      *(v0 + 912) = 0;
      *(v0 + 920) = 0xE000000000000000;
      sub_1D8B16020();
      v6 = sub_1D89AC714(*(v0 + 912), *(v0 + 920), &v12);

      *(v4 + 4) = v6;
      _os_log_impl(&dword_1D8783000, v2, v3, "Skipping frame update @ t= %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x1DA721330](v5, -1, -1);
      MEMORY[0x1DA721330](v4, -1, -1);
    }

    sub_1D881CF20(&qword_1EE0E38D0, &qword_1ECA64850);
    v7 = swift_task_alloc();
    *(v0 + 992) = v7;
    *v7 = v0;
    v7[1] = sub_1D88AD164;

    return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0);
  }
}

uint64_t sub_1D88AD84C()
{
  v13 = v0;
  v1 = *(v0 + 1000);
  if (v1 < -INFINITY || v1 > -INFINITY || (*(v0 + 1080) & 1) != 0)
  {
    v8 = *(v0 + 1024);
    v9 = *(v0 + 840);
    *(v0 + 496) = *(v0 + 824);
    *(v0 + 512) = v9;
    *(v0 + 528) = v1;
    *(v0 + 536) = *(v0 + 1040);
    v10 = *(v0 + 1057);
    *(v0 + 537) = *(v0 + 1041);
    *(v0 + 553) = v10;
    *(v0 + 568) = *(v0 + 1072);
    *(v0 + 576) = *(v0 + 1008);

    return MEMORY[0x1EEE6DFA0](sub_1D88ADB10, v8, 0);
  }

  else
  {
    sub_1D87A14E4(v0 + 112, &qword_1ECA64858);
    v2 = sub_1D8B151C0();
    v3 = sub_1D8B16200();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136315138;
      *(v0 + 912) = 0;
      *(v0 + 920) = 0xE000000000000000;
      sub_1D8B16020();
      v6 = sub_1D89AC714(*(v0 + 912), *(v0 + 920), &v12);

      *(v4 + 4) = v6;
      _os_log_impl(&dword_1D8783000, v2, v3, "Skipping frame update @ t= %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x1DA721330](v5, -1, -1);
      MEMORY[0x1DA721330](v4, -1, -1);
    }

    sub_1D881CF20(&qword_1EE0E38D0, &qword_1ECA64850);
    v7 = swift_task_alloc();
    *(v0 + 992) = v7;
    *v7 = v0;
    v7[1] = sub_1D88AD164;

    return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0);
  }
}

uint64_t sub_1D88ADB10()
{
  sub_1D89293D8((v0 + 496));
  sub_1D87A14E4(v0 + 112, &qword_1ECA64858);

  return MEMORY[0x1EEE6DFA0](sub_1D88ADB94, 0, 0);
}

uint64_t sub_1D88ADB94()
{

  sub_1D881CF20(&qword_1EE0E38D0, &qword_1ECA64850);
  v1 = swift_task_alloc();
  *(v0 + 992) = v1;
  *v1 = v0;
  v1[1] = sub_1D88AD164;

  return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0);
}

uint64_t sub_1D88ADC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v72 = a3;
  v79 = a2;
  v69 = a1;
  v74 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A20);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v62 - v6;
  v7 = type metadata accessor for ActionPredictor.Output(0);
  v68 = *(v7 - 8);
  v8 = v68;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v64 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A28);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v62 - v15;
  v17 = sub_1D8B13240();
  v80 = *(v17 - 8);
  v18 = v80;
  v70 = *(v80 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v65 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v73 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v67 = &v62 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v62 - v28;
  v66 = &v62 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A30);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v62 - v32;
  v82 = v7;
  sub_1D8B15EB0();
  (*(v8 + 56))(v29, 1, 1, v7);
  sub_1D8B13230();
  v34 = *(v18 + 16);
  v35 = v65;
  v34(v65, v22, v17);
  v36 = *(v31 + 16);
  v81 = v30;
  v36(v16, v33, v30);
  v74 = v31;
  (*(v31 + 56))(v16, 0, 1, v30);
  swift_beginAccess();
  v37 = v35;
  sub_1D895E418(v16, v35);
  swift_endAccess();
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 24) = v71;
  swift_unknownObjectWeakInit();
  v40 = v35;
  v71 = v22;
  v41 = v22;
  v42 = v67;
  v43 = v17;
  v34(v40, v41, v17);
  v44 = v80;
  v45 = (*(v80 + 80) + 24) & ~*(v80 + 80);
  v46 = (v70 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v38;
  v48 = *(v44 + 32);
  v72 = v43;
  v49 = v66;
  v48(v47 + v45, v37, v43);
  *(v47 + v46) = v39;
  sub_1D8B15EC0();
  sub_1D87A0E38(v49, v42, &qword_1ECA64290);
  v50 = *(v68 + 48);
  if (v50(v42, 1, v82) == 1)
  {
    (*(v80 + 8))(v71, v72);
    sub_1D87A14E4(v49, &qword_1ECA64290);
    v51 = v42;
    v53 = v77;
    v52 = v78;
    v55 = v75;
    v54 = v76;
  }

  else
  {
    v56 = v63;
    sub_1D88C7124(v42, v63, type metadata accessor for ActionPredictor.Output);
    v55 = v75;
    sub_1D88C7D1C(v56, v75, type metadata accessor for ActionPredictor.Output);
    v54 = v76;
    sub_1D8B15EE0();
    v53 = v77;
    v52 = v78;
    (*(v77 + 8))(v54, v78);
    sub_1D88C7D84(v56, type metadata accessor for ActionPredictor.Output);
    (*(v80 + 8))(v71, v72);
    v51 = v49;
  }

  sub_1D87A14E4(v51, &qword_1ECA64290);
  v57 = v73;
  sub_1D87A0E38(v79, v73, &qword_1ECA64290);
  if (v50(v57, 1, v82) == 1)
  {
    (*(v74 + 8))(v33, v81);
    return sub_1D87A14E4(v57, &qword_1ECA64290);
  }

  else
  {
    v59 = v57;
    v60 = v64;
    sub_1D88C7124(v59, v64, type metadata accessor for ActionPredictor.Output);
    sub_1D88C7D1C(v60, v55, type metadata accessor for ActionPredictor.Output);
    v61 = v81;
    sub_1D8B15EE0();
    (*(v53 + 8))(v54, v52);
    sub_1D88C7D84(v60, type metadata accessor for ActionPredictor.Output);
    return (*(v74 + 8))(v33, v61);
  }
}

uint64_t sub_1D88AE494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v72 = a3;
  v79 = a2;
  v69 = a1;
  v74 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A38);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v62 - v6;
  v7 = type metadata accessor for BundleSelector.Output(0);
  v68 = *(v7 - 8);
  v8 = v68;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v64 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v62 - v15;
  v17 = sub_1D8B13240();
  v80 = *(v17 - 8);
  v18 = v80;
  v70 = *(v80 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v65 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v73 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v67 = &v62 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v62 - v28;
  v66 = &v62 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A48);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v62 - v32;
  v82 = v7;
  sub_1D8B15EB0();
  (*(v8 + 56))(v29, 1, 1, v7);
  sub_1D8B13230();
  v34 = *(v18 + 16);
  v35 = v65;
  v34(v65, v22, v17);
  v36 = *(v31 + 16);
  v81 = v30;
  v36(v16, v33, v30);
  v74 = v31;
  (*(v31 + 56))(v16, 0, 1, v30);
  swift_beginAccess();
  v37 = v35;
  sub_1D895EB3C(v16, v35);
  swift_endAccess();
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 24) = v71;
  swift_unknownObjectWeakInit();
  v40 = v35;
  v71 = v22;
  v41 = v22;
  v42 = v67;
  v43 = v17;
  v34(v40, v41, v17);
  v44 = v80;
  v45 = (*(v80 + 80) + 24) & ~*(v80 + 80);
  v46 = (v70 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v38;
  v48 = *(v44 + 32);
  v72 = v43;
  v49 = v66;
  v48(v47 + v45, v37, v43);
  *(v47 + v46) = v39;
  sub_1D8B15EC0();
  sub_1D87A0E38(v49, v42, &qword_1ECA640E8);
  v50 = *(v68 + 48);
  if (v50(v42, 1, v82) == 1)
  {
    (*(v80 + 8))(v71, v72);
    sub_1D87A14E4(v49, &qword_1ECA640E8);
    v51 = v42;
    v53 = v77;
    v52 = v78;
    v55 = v75;
    v54 = v76;
  }

  else
  {
    v56 = v63;
    sub_1D88C7124(v42, v63, type metadata accessor for BundleSelector.Output);
    v55 = v75;
    sub_1D88C7D1C(v56, v75, type metadata accessor for BundleSelector.Output);
    v54 = v76;
    sub_1D8B15EE0();
    v53 = v77;
    v52 = v78;
    (*(v77 + 8))(v54, v78);
    sub_1D88C7D84(v56, type metadata accessor for BundleSelector.Output);
    (*(v80 + 8))(v71, v72);
    v51 = v49;
  }

  sub_1D87A14E4(v51, &qword_1ECA640E8);
  v57 = v73;
  sub_1D87A0E38(v79, v73, &qword_1ECA640E8);
  if (v50(v57, 1, v82) == 1)
  {
    (*(v74 + 8))(v33, v81);
    return sub_1D87A14E4(v57, &qword_1ECA640E8);
  }

  else
  {
    v59 = v57;
    v60 = v64;
    sub_1D88C7124(v59, v64, type metadata accessor for BundleSelector.Output);
    sub_1D88C7D1C(v60, v55, type metadata accessor for BundleSelector.Output);
    v61 = v81;
    sub_1D8B15EE0();
    (*(v53 + 8))(v54, v52);
    sub_1D88C7D84(v60, type metadata accessor for BundleSelector.Output);
    return (*(v74 + 8))(v33, v61);
  }
}

uint64_t sub_1D88AECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D88AECD0, 0, 0);
}

uint64_t sub_1D88AECD0()
{
  v1 = *(v0 + 112);
  if (*(v1 + 8))
  {
    v2 = *(*(v0 + 120) + 72);
    if (v2 == 1)
    {
      v2 = 0;
    }

    else
    {
      v3 = v2;
    }

    *(v0 + 136) = v2;
    if (qword_1EE0E54C0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D8B0AAA4();
    if (v2 && (v4 & 1) != 0)
    {
      type metadata accessor for CVProcessorTaskDescriptor(0);
      v15 = CVDetection.DetectionType.description.getter();
      v16 = v5;
      v6 = v2;
      MEMORY[0x1DA71EFA0](0x2D7475706E692DLL, 0xE700000000000000);
      *(v0 + 16) = CVPixelBufferGetWidth(v6);
      v7 = sub_1D8B16B50();
      MEMORY[0x1DA71EFA0](v7);

      MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
      *(v0 + 16) = CVPixelBufferGetHeight(v6);
      v8 = sub_1D8B16B50();
      MEMORY[0x1DA71EFA0](v8);

      if (qword_1ECA62268 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 112);
      v10 = qword_1ECA675B0;
      *(v0 + 144) = qword_1ECA675B0;
      v11 = *(v9 + 48);
      *(v0 + 40) = v6;
      *(v0 + 80) = 0;
      *(v0 + 16) = v15;
      *(v0 + 24) = v16;
      *(v0 + 32) = v11;
      v12 = v6;

      return MEMORY[0x1EEE6DFA0](sub_1D88AEF24, v10, 0);
    }
  }

  else
  {
    v2 = *v1;
    sub_1D888406C(v1, v0 + 16);
  }

  v13 = *(v0 + 8);

  return v13(v2);
}

uint64_t sub_1D88AEF24()
{
  sub_1D8A3B1F4(v0 + 16, 0x7475706E692D7663, 0xEE00616964656D2DLL);
  sub_1D87DC9A0(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D88AEFB8, 0, 0);
}

uint64_t sub_1D88AEFB8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D88AF01C(int a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, __int128 *a7, double a8, float a9)
{
  v213 = a6;
  v215 = a5;
  v187 = a4;
  v203 = sub_1D8B15610();
  v15 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v202 = (&v185 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v192 = type metadata accessor for DetectionRequest.Originator(0);
  v17 = MEMORY[0x1EEE9AC00](v192);
  v196 = &v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v185 - v19;
  v209 = type metadata accessor for DetectionRequest(0);
  v216 = *(v209 - 8);
  v21 = MEMORY[0x1EEE9AC00](v209);
  v211 = &v185 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v204 = &v185 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v214 = &v185 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v207 = &v185 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v208 = &v185 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v218 = &v185 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v186 = &v185 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v185 = &v185 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v190 = &v185 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v205 = &v185 - v39;
  v206 = a2;
  v40 = a7[3];
  v232 = a7[2];
  v233 = v40;
  v41 = a7[5];
  v234 = a7[4];
  v235 = v41;
  v42 = a7[1];
  v230 = *a7;
  v231 = v42;
  v191 = a1;
  if (a1)
  {
    v43 = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    if (*(a2[12] + 16))
    {

      v44 = sub_1D8B151C0();
      v45 = sub_1D8B16210();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        *&v226[0] = v217;
        *v46 = 134218242;
        *(v46 + 4) = a8;
        *(v46 + 12) = 2080;
        sub_1D87C4938();

        v47 = sub_1D8B16040();
        v49 = v48;

        v50 = sub_1D89AC714(v47, v49, v226);

        *(v46 + 14) = v50;
        v43 = MEMORY[0x1E69E7CD0];
        _os_log_impl(&dword_1D8783000, v44, v45, "Resetting CV state for still image processing (timestamp %f) with tasks still in flight: %s", v46, 0x16u);
        v51 = v217;
        __swift_destroy_boxed_opaque_existential_1(v217);
        MEMORY[0x1DA721330](v51, -1, -1);
        v52 = v46;
        a2 = v206;
        MEMORY[0x1DA721330](v52, -1, -1);
      }
    }

    a2[12] = v43;
  }

  v53 = a2[7];
  v54 = *(v53 + 64);
  v195 = v53 + 64;
  v55 = 1 << *(v53 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v57 = v56 & v54;
  v193 = a3;
  v194 = v53;

  result = swift_beginAccess();
  v59 = 0;
  v60 = v55 + 63;
  v61 = v57;
  v62 = v60 >> 6;
  v201 = *MEMORY[0x1E69E8020];
  v199 = (v15 + 8);
  v200 = (v15 + 104);
  __asm { FMOV            V0.2D, #1.0 }

  v189 = _Q0;
  v67 = v218;
  v188 = v60 >> 6;
  while (1)
  {
    if (!v61)
    {
      while (1)
      {
        v70 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_124;
        }

        if (v70 >= v62)
        {

          v135 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
          v226[2] = v232;
          v227 = v233;
          v228 = v234;
          v229 = v235;
          v226[0] = v230;
          v226[1] = v231;
          v136 = v193;
          swift_retain_n();

          sub_1D888406C(v226, v222);
          v137 = sub_1D8B151C0();
          v138 = sub_1D8B16200();

          if (os_log_type_enabled(v137, v138))
          {
            v139 = swift_slowAlloc();
            v218 = v135;
            v140 = v139;
            v217 = swift_slowAlloc();
            v220 = v217;
            *v140 = 136315906;
            v141 = BYTE8(v227);
            v142 = 0xE000000000000000;
            *&v222[0] = 0;
            *(&v222[0] + 1) = 0xE000000000000000;
            sub_1D8B16020();
            if (v141)
            {
              v143 = 0x296C6C6974532820;
            }

            else
            {
              v143 = 0;
            }

            if (v141)
            {
              v142 = 0xE800000000000000;
            }

            MEMORY[0x1DA71EFA0](v143, v142);

            sub_1D8884018(v226);
            v144 = sub_1D89AC714(*&v222[0], *(&v222[0] + 1), &v220);

            *(v140 + 4) = v144;
            *(v140 + 12) = 2048;
            swift_beginAccess();
            v145 = *(*(v136 + 16) + 16);

            *(v140 + 14) = v145;

            *(v140 + 22) = 2080;

            v147 = sub_1D889372C(v146);

            v148 = MEMORY[0x1DA71F1E0](v147, &type metadata for CVDetection.DetectionType);
            v150 = v149;

            v151 = sub_1D89AC714(v148, v150, &v220);
            a2 = v206;

            *(v140 + 24) = v151;
            *(v140 + 32) = 2080;
            swift_beginAccess();
            sub_1D87C4938();

            v152 = sub_1D8B16040();
            v154 = v153;

            v155 = sub_1D89AC714(v152, v154, &v220);

            *(v140 + 34) = v155;
            _os_log_impl(&dword_1D8783000, v137, v138, "[%s] CVCoordinator about to filter %ld requests: %s against inflightTypes: %s", v140, 0x2Au);
            v156 = v217;
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v156, -1, -1);
            MEMORY[0x1DA721330](v140, -1, -1);
          }

          else
          {

            sub_1D8884018(v226);
          }

          v157 = swift_beginAccess();
          v158 = *(v136 + 16);
          MEMORY[0x1EEE9AC00](v157);
          *(&v185 - 4) = a8;
          *(&v185 - 3) = a2;
          *(&v185 - 2) = &v230;
          *(&v185 - 8) = v213 & 1;

          v159 = sub_1D88BFF90(sub_1D88C6B44, (&v185 - 6), v158);
          swift_beginAccess();
          *(v136 + 16) = v159;

          v161 = sub_1D889372C(v160);

          v162 = sub_1D87C4904(v161);

          v222[2] = v232;
          v223 = v233;
          v224 = v234;
          v225 = v235;
          v222[0] = v230;
          v222[1] = v231;
          swift_retain_n();
          sub_1D888406C(v222, &v220);

          v163 = sub_1D8B151C0();
          v164 = sub_1D8B16200();

          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            v166 = v136;
            v167 = swift_slowAlloc();
            v219 = v167;
            v220 = 0;
            *v165 = 136315650;
            v168 = BYTE8(v223);
            v169 = 0xE000000000000000;
            v221 = 0xE000000000000000;
            sub_1D8B16020();
            if (v168)
            {
              v170 = 0x296C6C6974532820;
            }

            else
            {
              v170 = 0;
            }

            if (v168)
            {
              v169 = 0xE800000000000000;
            }

            MEMORY[0x1DA71EFA0](v170, v169);

            sub_1D8884018(v222);
            v171 = sub_1D89AC714(v220, v221, &v219);

            *(v165 + 4) = v171;
            *(v165 + 12) = 2048;
            swift_beginAccess();
            v172 = *(*(v166 + 16) + 16);

            *(v165 + 14) = v172;

            *(v165 + 22) = 2080;
            sub_1D87C4938();
            v173 = sub_1D8B16040();
            v175 = sub_1D89AC714(v173, v174, &v219);

            *(v165 + 24) = v175;
            _os_log_impl(&dword_1D8783000, v163, v164, "[%s] CVCoordinator after filtering: %ld requests remain: %s", v165, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v167, -1, -1);
            MEMORY[0x1DA721330](v165, -1, -1);
          }

          else
          {

            sub_1D8884018(v222);
          }

          v176 = 1 << *(v162 + 32);
          v177 = -1;
          if (v176 < 64)
          {
            v177 = ~(-1 << v176);
          }

          v178 = v177 & *(v162 + 56);
          v179 = (v176 + 63) >> 6;

          for (i = 0; v178; result = swift_endAccess())
          {
            v181 = i;
LABEL_120:
            v182 = __clz(__rbit64(v178));
            v178 &= v178 - 1;
            v183 = *(*(v162 + 48) + (v182 | (v181 << 6)));
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v219 = a2[11];
            a2[11] = 0x8000000000000000;
            sub_1D8B05404(v183, isUniquelyReferenced_nonNull_native, a8);
            a2[11] = v219;
            swift_endAccess();
            swift_beginAccess();
            sub_1D87FC140(&v219, v183);
          }

          while (1)
          {
            v181 = i + 1;
            if (__OFADD__(i, 1))
            {
              goto LABEL_125;
            }

            if (v181 >= v179)
            {
            }

            v178 = *(v162 + 56 + 8 * v181);
            ++i;
            if (v178)
            {
              i = v181;
              goto LABEL_120;
            }
          }
        }

        v61 = *(v195 + 8 * v70);
        ++v59;
        if (v61)
        {
          v59 = v70;
          break;
        }
      }
    }

    v197 = v59;
    v198 = v61;
    v71 = __clz(__rbit64(v61)) | (v59 << 6);
    v72 = *(*(v194 + 48) + v71);
    v73 = *(v194 + 56) + 8 * v71;
    v74 = *v73;
    v75 = *(v73 + 4);
    *v20 = *v73;
    v20[4] = v75;
    swift_storeEnumTagMultiPayload();
    sub_1D88C7D1C(v20, v196, type metadata accessor for DetectionRequest.Originator);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D88C7D84(v196, type metadata accessor for DetectionRequest.Originator);
      if (v72 > 0xD || ((1 << v72) & 0x3002) == 0)
      {
        result = MEMORY[0x1E69E7CD0];
      }

      else
      {
        result = sub_1D8A4F030(&unk_1F5428BE0);
      }

      v77 = 0;
      v78 = 1 << *(result + 32);
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      else
      {
        v79 = -1;
      }

      v80 = v79 & *(result + 56);
      v81 = (v78 + 63) >> 6;
      while (v80)
      {
LABEL_29:
        v80 &= v80 - 1;
      }

      while (1)
      {
        v82 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          break;
        }

        if (v82 >= v81)
        {

          goto LABEL_36;
        }

        v80 = *(result + 56 + 8 * v82);
        ++v77;
        if (v80)
        {
          v77 = v82;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

LABEL_36:
    v83 = v190;
    *v190 = v72;
    v84 = v209;
    sub_1D88C7D1C(v20, v83 + *(v209 + 20), type metadata accessor for DetectionRequest.Originator);
    v85 = type metadata accessor for DetectionRequest.Annotation(0);
    v86 = sub_1D88C7AAC(&qword_1EE0E6B20, type metadata accessor for DetectionRequest.Annotation);
    v87 = MEMORY[0x1DA71F530](0, v85, v86);
    sub_1D88C7D84(v20, type metadata accessor for DetectionRequest.Originator);
    *(v83 + v84[6]) = v87;
    v88 = v83 + v84[7];
    *v88 = 0;
    *(v88 + 8) = 0;
    *(v88 + 16) = v189;
    *(v83 + v84[8]) = a8;
    result = sub_1D88C7124(v83, v205, type metadata accessor for DetectionRequest);
    if ((v191 & 1) != 0 && v72 <= 6)
    {
      if (((1 << v72) & 0x69) != 0)
      {
        goto LABEL_11;
      }

      if (v72 == 4)
      {
        if (qword_1EE0E54C0 != -1)
        {
          swift_once();
        }

        result = sub_1D8B0AAA4();
        if (result)
        {
LABEL_11:
          v68 = v186;
          sub_1D88C7D1C(v205, v186, type metadata accessor for DetectionRequest);
          swift_beginAccess();
          v69 = v185;
          sub_1D87FB834(v185, v68);
          swift_endAccess();
          sub_1D88C7D84(v69, type metadata accessor for DetectionRequest);
          goto LABEL_12;
        }
      }
    }

    LODWORD(v212) = v75;
    LODWORD(v210) = v74;
    v89 = *(v187 + 16);
    LODWORD(v217) = v72;
    if (v89)
    {
      v90 = (*(v216 + 80) + 32) & ~*(v216 + 80);
      v91 = *(v216 + 72);
      v92 = v187 + v90;
      v93 = MEMORY[0x1E69E7CC0];
      v94 = v208;
      do
      {
        sub_1D88C7D1C(v92, v67, type metadata accessor for DetectionRequest);
        if (*v67 == v72)
        {
          sub_1D88C7124(v67, v94, type metadata accessor for DetectionRequest);
          v95 = swift_isUniquelyReferenced_nonNull_native();
          *&v226[0] = v93;
          if ((v95 & 1) == 0)
          {
            sub_1D87F45E4(0, *(v93 + 16) + 1, 1);
            v94 = v208;
            v93 = *&v226[0];
          }

          v97 = *(v93 + 16);
          v96 = *(v93 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_1D87F45E4(v96 > 1, v97 + 1, 1);
            v94 = v208;
            v93 = *&v226[0];
          }

          *(v93 + 16) = v97 + 1;
          result = sub_1D88C7124(v94, v93 + v90 + v97 * v91, type metadata accessor for DetectionRequest);
          v67 = v218;
          v72 = v217;
        }

        else
        {
          result = sub_1D88C7D84(v67, type metadata accessor for DetectionRequest);
        }

        v92 += v91;
        --v89;
      }

      while (v89);
    }

    else
    {
      v93 = MEMORY[0x1E69E7CC0];
    }

    if (v212)
    {
      break;
    }

    a2 = v206;
    v119 = *&v210;
    if (v215)
    {
      v120 = v206[5];
      v122 = v202;
      v121 = v203;
      *v202 = v120;
      (*v200)(v122, v201, v121);
      v123 = v120;
      LOBYTE(v120) = sub_1D8B15620();
      result = (*v199)(v122, v121);
      if ((v120 & 1) == 0)
      {
        goto LABEL_131;
      }

      v124 = a2[11];
      if (!*(v124 + 16))
      {
        goto LABEL_132;
      }

      result = sub_1D881F7DC(v72);
      if ((v125 & 1) == 0)
      {
        goto LABEL_133;
      }

      v126 = a8 - *(*(v124 + 56) + 8 * result);
      if ((0.95 / v126) < (v119 * a9))
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    v61 = (v198 - 1) & v198;
    result = sub_1D88C7D84(v205, type metadata accessor for DetectionRequest);
    v62 = v188;
    v59 = v197;
  }

  v98 = v204;
  v99 = v207;
  if (v212 != 1)
  {
    v217 = v20;
    if (*(v93 + 16))
    {
      v127 = *(v93 + 16);
      v128 = 0;
      v129 = MEMORY[0x1E69E7CC0];
      while (v128 < *(v93 + 16))
      {
        v130 = (*(v216 + 80) + 32) & ~*(v216 + 80);
        v131 = *(v216 + 72);
        sub_1D88C7D1C(v93 + v130 + v131 * v128, v99, type metadata accessor for DetectionRequest);
        if ((v215 & 1) != 0 || (v213 & 1) != 0 && *(v99 + *(v209 + 32)) == a8)
        {
          sub_1D88C7124(v99, v214, type metadata accessor for DetectionRequest);
          v132 = swift_isUniquelyReferenced_nonNull_native();
          *&v226[0] = v129;
          if ((v132 & 1) == 0)
          {
            sub_1D87F45E4(0, *(v129 + 16) + 1, 1);
            v129 = *&v226[0];
          }

          v134 = *(v129 + 16);
          v133 = *(v129 + 24);
          if (v134 >= v133 >> 1)
          {
            sub_1D87F45E4(v133 > 1, v134 + 1, 1);
            v129 = *&v226[0];
          }

          *(v129 + 16) = v134 + 1;
          result = sub_1D88C7124(v214, v129 + v130 + v134 * v131, type metadata accessor for DetectionRequest);
          v99 = v207;
          v67 = v218;
        }

        else
        {
          result = sub_1D88C7D84(v99, type metadata accessor for DetectionRequest);
        }

        if (v127 == ++v128)
        {
          goto LABEL_95;
        }
      }

LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v129 = MEMORY[0x1E69E7CC0];
LABEL_95:

    swift_beginAccess();
    sub_1D8AB9EEC(v129);
    swift_endAccess();

    a2 = v206;
    v20 = v217;
    goto LABEL_12;
  }

  v212 = *(v93 + 16);
  if (!v212)
  {
    v102 = MEMORY[0x1E69E7CC0];
LABEL_93:

    swift_beginAccess();
    sub_1D8AB9EEC(v102);
    swift_endAccess();

    a2 = v206;
    goto LABEL_12;
  }

  v100 = 0;
  v101 = *&v210 * a9;
  v102 = MEMORY[0x1E69E7CC0];
  while (v100 < *(v93 + 16))
  {
    v103 = (*(v216 + 80) + 32) & ~*(v216 + 80);
    v104 = *(v216 + 72);
    sub_1D88C7D1C(v93 + v103 + v104 * v100, v98, type metadata accessor for DetectionRequest);
    if (v215)
    {
      v210 = v102;
      v105 = v104;
      v106 = v103;
      v107 = v20;
      v108 = v206;
      v109 = v206[5];
      v110 = v202;
      v111 = v203;
      *v202 = v109;
      (*v200)(v110, v201, v111);
      v112 = v109;
      LOBYTE(v109) = sub_1D8B15620();
      result = (*v199)(v110, v111);
      if ((v109 & 1) == 0)
      {
        goto LABEL_128;
      }

      v113 = v108[11];
      if (!*(v113 + 16))
      {
        goto LABEL_129;
      }

      result = sub_1D881F7DC(v217);
      if ((v114 & 1) == 0)
      {
        goto LABEL_130;
      }

      v115 = a8 - *(*(v113 + 56) + 8 * result);
      v20 = v107;
      v98 = v204;
      v67 = v218;
      v103 = v106;
      v104 = v105;
      v102 = v210;
      if ((0.95 / v115) < v101)
      {
        goto LABEL_68;
      }
    }

    if ((v213 & 1) != 0 && *(v98 + *(v209 + 32)) == a8)
    {
LABEL_68:
      sub_1D88C7124(v98, v211, type metadata accessor for DetectionRequest);
      v116 = swift_isUniquelyReferenced_nonNull_native();
      *&v226[0] = v102;
      if ((v116 & 1) == 0)
      {
        sub_1D87F45E4(0, *(v102 + 16) + 1, 1);
        v102 = *&v226[0];
      }

      v118 = *(v102 + 16);
      v117 = *(v102 + 24);
      if (v118 >= v117 >> 1)
      {
        sub_1D87F45E4(v117 > 1, v118 + 1, 1);
        v102 = *&v226[0];
      }

      *(v102 + 16) = v118 + 1;
      result = sub_1D88C7124(v211, v102 + v103 + v118 * v104, type metadata accessor for DetectionRequest);
      v67 = v218;
    }

    else
    {
      result = sub_1D88C7D84(v98, type metadata accessor for DetectionRequest);
    }

    if (v212 == ++v100)
    {
      goto LABEL_93;
    }
  }

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
  return result;
}

uint64_t sub_1D88B0600(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v11 = type metadata accessor for DetectionRequest(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43[-v16];
  if (*&a1[*(v15 + 32)] + 1.0 < a5)
  {
    LODWORD(v49) = a4;
    sub_1D88C7D1C(a1, &v43[-v16], type metadata accessor for DetectionRequest);
    sub_1D88C7D1C(a1, v14, type metadata accessor for DetectionRequest);
    v18 = sub_1D8B151C0();
    v19 = sub_1D8B16210();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v48 = v5;
      v21 = v20;
      v46 = swift_slowAlloc();
      v51 = v46;
      *v21 = 134218498;
      *(v21 + 4) = a5;
      *(v21 + 12) = 2080;
      v53 = *v17;
      v45 = v18;
      v22 = CVDetection.DetectionType.description.getter();
      v44 = v19;
      v24 = v23;
      v47 = a3;
      sub_1D88C7D84(v17, type metadata accessor for DetectionRequest);
      v25 = sub_1D89AC714(v22, v24, &v51);

      *(v21 + 14) = v25;
      *(v21 + 22) = 2048;
      v26 = *&v14[*(v11 + 32)];
      a3 = v47;
      sub_1D88C7D84(v14, type metadata accessor for DetectionRequest);
      *(v21 + 24) = v26;
      v27 = v45;
      _os_log_impl(&dword_1D8783000, v45, v44, "%f: CV servicing aged request of type %s from %f", v21, 0x20u);
      v28 = v46;
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1DA721330](v28, -1, -1);
      MEMORY[0x1DA721330](v21, -1, -1);
    }

    else
    {

      sub_1D88C7D84(v14, type metadata accessor for DetectionRequest);
      sub_1D88C7D84(v17, type metadata accessor for DetectionRequest);
    }

    LOBYTE(a4) = v49;
  }

  v29 = *a1;
  swift_beginAccess();
  if (*(*(a2 + 104) + 16) && (sub_1D881F7DC(v29), (v30 & 1) != 0))
  {
    sub_1D888406C(a3, &v51);
    v31 = sub_1D8B151C0();
    v32 = sub_1D8B16200();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v33 = 136315650;
      v34 = *(a3 + 56);
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_1D8B16020();
      if (v34)
      {
        v35 = 0x296C6C6974532820;
      }

      else
      {
        v35 = 0;
      }

      if (v34)
      {
        v36 = 0xE800000000000000;
      }

      else
      {
        v36 = 0xE000000000000000;
      }

      MEMORY[0x1DA71EFA0](v35, v36);

      sub_1D8884018(a3);
      v37 = sub_1D89AC714(v51, v52, &v50);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      LOBYTE(v51) = v29;
      v38 = CVDetection.DetectionType.description.getter();
      v40 = sub_1D89AC714(v38, v39, &v50);

      *(v33 + 14) = v40;
      *(v33 + 22) = 1024;
      *(v33 + 24) = a4 & 1;
      _os_log_impl(&dword_1D8783000, v31, v32, "[%s] CVCoordinator filtering out %s - still busy loading (isHighResolutionStill: %{BOOL}d)", v33, 0x1Cu);
      v41 = v49;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v41, -1, -1);
      MEMORY[0x1DA721330](v33, -1, -1);
    }

    else
    {

      sub_1D8884018(a3);
    }
  }

  else
  {
    swift_beginAccess();
    if (sub_1D89AD844(v29, *(a2 + 96)))
    {
      LOBYTE(a4) = 0;
    }

    else
    {
      v54.origin.x = 0.0;
      v54.origin.y = 0.0;
      v54.size.width = 1.0;
      v54.size.height = 1.0;
      LOBYTE(a4) = CGRectIntersectsRect(v54, *&a1[*(v11 + 28)]);
    }
  }

  return a4 & 1;
}

uint64_t sub_1D88B0AE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = a6;
  v136 = a5;
  v139 = a4;
  v129 = a3;
  v128 = a2;
  v7 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v135 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for DetectionRequest(0);
  v9 = MEMORY[0x1EEE9AC00](v138);
  v11 = v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v116 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v134 = v116 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v133 = v116 - v17;
  v144 = type metadata accessor for ProcessorState(0);
  v18 = *(v144 - 8);
  v19 = MEMORY[0x1EEE9AC00](v144);
  v21 = v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v116 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v140 = v116 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v143 = v116 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v142 = v116 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v141 = v116 - v31;
  v117 = type metadata accessor for TrackManager.FrameProcessingTaskState(0);
  MEMORY[0x1EEE9AC00](v117);
  v125 = v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64918);
  v126 = *(v127 - 8);
  v33 = MEMORY[0x1EEE9AC00](v127);
  v119 = v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v124 = v116 - v35;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64920);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v121 = v116 - v37;
  v118 = a1;
  v38 = *a1;
  v39 = *(v38 + 16);
  if (v39)
  {
    v151 = MEMORY[0x1E69E7CC0];

    sub_1D87F4140(0, v39, 0);
    v40 = v151;
    v41 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v42 = v18;
    *&v131 = v38;
    v43 = v38 + v41;
    v132 = v42;
    v44 = *(v42 + 72);
    v137 = v21 + 8;
    while (1)
    {
      sub_1D88C7D1C(v43, v24, type metadata accessor for ProcessorState);
      sub_1D88C7124(v24, v21, type metadata accessor for ProcessorState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload != 1)
      {
        break;
      }

      v46 = v135;
      sub_1D88C7124(v21, v135, type metadata accessor for DetectionResult);
      sub_1D88C7D1C(v46, v11, type metadata accessor for DetectionRequest);
      sub_1D88C7D84(v46, type metadata accessor for DetectionResult);
LABEL_8:
      sub_1D88C7124(v11, v14, type metadata accessor for DetectionRequest);
      v47 = *&v14[*(v138 + 32)];
      sub_1D88C7D84(v14, type metadata accessor for DetectionRequest);
      v151 = v40;
      v49 = *(v40 + 16);
      v48 = *(v40 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1D87F4140((v48 > 1), v49 + 1, 1);
        v40 = v151;
      }

      *(v40 + 16) = v49 + 1;
      *(v40 + 8 * v49 + 32) = v47;
      v43 += v44;
      if (!--v39)
      {

        sub_1D8918E7C(v40);

        v18 = v132;
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

LABEL_7:
    sub_1D88C7124(v21, v11, type metadata accessor for DetectionRequest);
    goto LABEL_8;
  }

LABEL_12:
  v50 = *(v129 + 16);
  v51 = v136;
  v52 = v142;
  v53 = v141;
  if (v50)
  {
    v54 = v129 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v138 = *(v18 + 72);
    v130 = v140 + 8;
    v116[1] = 0x80000001D8B439A0;
    v116[0] = 0x80000001D8B439C0;
    *&v36 = 136315650;
    v131 = v36;
    v132 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
    while (1)
    {
      sub_1D88C7D1C(v54, v53, type metadata accessor for ProcessorState);
      sub_1D88C7D1C(v54, v52, type metadata accessor for ProcessorState);
      sub_1D888406C(v51, &v151);
      v55 = sub_1D8B151C0();
      v56 = sub_1D8B16230();
      if (os_log_type_enabled(v55, v56))
      {
        break;
      }

      sub_1D8884018(v51);

      sub_1D88C7D84(v52, type metadata accessor for ProcessorState);
      sub_1D88C7D84(v53, type metadata accessor for ProcessorState);
LABEL_15:
      v54 += v138;
      if (!--v50)
      {
        goto LABEL_51;
      }
    }

    LODWORD(v137) = v56;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v145 = v58;
    *v57 = v131;
    v59 = *(v51 + 56);
    v151 = 0;
    v152 = 0xE000000000000000;
    sub_1D8B16020();
    if (v59)
    {
      v60 = 0x296C6C6974532820;
    }

    else
    {
      v60 = 0;
    }

    v61 = 0xE800000000000000;
    if (v59)
    {
      v62 = 0xE800000000000000;
    }

    else
    {
      v62 = 0xE000000000000000;
    }

    MEMORY[0x1DA71EFA0](v60, v62);

    sub_1D8884018(v51);
    v63 = sub_1D89AC714(v151, v152, &v145);

    *(v57 + 4) = v63;
    *(v57 + 12) = 2080;
    sub_1D88C7D1C(v53, v143, type metadata accessor for ProcessorState);
    v64 = swift_getEnumCaseMultiPayload();
    v65 = type metadata accessor for ProcessorState;
    if (v64)
    {
      if (v64 == 1)
      {
        v61 = 0xE900000000000064;
        v65 = type metadata accessor for ProcessorState;
        v66 = 0x6574656C706D6F43;
      }

      else
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
        v68 = (v143 + *(v67 + 48));
        v69 = *v68;
        v70 = v68[1];
        v151 = 0x28646574726F6241;
        v152 = 0xE800000000000000;
        MEMORY[0x1DA71EFA0](v69, v70);

        MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
        v66 = v151;
        v61 = v152;
        v65 = type metadata accessor for DetectionRequest;
      }
    }

    else
    {
      v66 = 0x6465756575716E45;
    }

    sub_1D88C7D84(v143, v65);
    sub_1D88C7D84(v141, type metadata accessor for ProcessorState);
    v71 = sub_1D89AC714(v66, v61, &v145);

    *(v57 + 14) = v71;
    *(v57 + 22) = 2080;
    sub_1D88C7D1C(v142, v140, type metadata accessor for ProcessorState);
    v72 = swift_getEnumCaseMultiPayload();
    if (v72)
    {
      v73 = v134;
      if (v72 == 1)
      {
        v74 = v135;
        sub_1D88C7124(v140, v135, type metadata accessor for DetectionResult);
        sub_1D88C7D1C(v74, v73, type metadata accessor for DetectionRequest);
        sub_1D88C7D84(v74, type metadata accessor for DetectionResult);
LABEL_34:
        v76 = v73;
        v77 = v133;
        sub_1D88C7124(v76, v133, type metadata accessor for DetectionRequest);
        v78 = *v77;
        sub_1D88C7D84(v77, type metadata accessor for DetectionRequest);
        v79 = 0xE900000000000067;
        v80 = 0x6E69646E756F7267;
        switch(v78)
        {
          case 1:
            v80 = 0x6465646E756F7267;
            v81 = 0x6573726150;
            goto LABEL_49;
          case 2:
            v79 = 0xE400000000000000;
            v80 = 1635018093;
            break;
          case 3:
            v79 = 0xE600000000000000;
            v80 = 0x7463656A626FLL;
            break;
          case 4:
            v79 = 0xE500000000000000;
            v80 = 0x6573726170;
            break;
          case 5:
            v79 = 0xE400000000000000;
            v80 = 1954047348;
            break;
          case 6:
            v79 = 0xE600000000000000;
            v80 = 0x65646F437271;
            break;
          case 7:
            v79 = 0xE700000000000000;
            v80 = 0x70696C43707061;
            break;
          case 8:
            v80 = 0x6E696D6165727473;
            v81 = 0x7478655467;
LABEL_49:
            v79 = v81 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
            v80 = 0x6C61636974726576;
            v79 = 0xEF746E65746E6F43;
            break;
          case 10:
            v79 = 0xEA00000000006C61;
            v80 = 0x646F6D69746C756DLL;
            break;
          case 11:
            v80 = 0x69746568746E7973;
            v79 = 0xE900000000000063;
            break;
          case 12:
            v80 = 0xD000000000000017;
            v82 = &v146;
            goto LABEL_45;
          case 13:
            v80 = 0xD00000000000001CLL;
            v82 = &v147;
LABEL_45:
            v79 = *(v82 - 32);
            break;
          default:
            break;
        }

        v83 = v142;
        sub_1D88C7D84(v142, type metadata accessor for ProcessorState);
        v84 = v80;
        v52 = v83;
        v85 = sub_1D89AC714(v84, v79, &v145);

        *(v57 + 24) = v85;
        _os_log_impl(&dword_1D8783000, v55, v137, "[%s] %s for %s", v57, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v58, -1, -1);
        MEMORY[0x1DA721330](v57, -1, -1);

        v51 = v136;
        v53 = v141;
        goto LABEL_15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      v75 = v140;
    }

    else
    {
      v75 = v140;
      v73 = v134;
    }

    sub_1D88C7124(v75, v73, type metadata accessor for DetectionRequest);
    goto LABEL_34;
  }

LABEL_51:
  v151 = *v118;

  sub_1D88F480C(v86);
  v87 = sub_1D87C4778(v151);

  v88 = (v120 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState);
  os_unfair_lock_lock((v120 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState));
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928);
  v90 = v125;
  sub_1D88C7D1C(v88 + *(v89 + 28), v125, type metadata accessor for TrackManager.FrameProcessingTaskState);
  v91 = swift_getEnumCaseMultiPayload();
  v92 = v128;
  if (v91 == 1)
  {

    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64930);
    v94 = v126;
    v95 = v90 + *(v93 + 48);
    v96 = v124;
    v97 = v127;
    (*(v126 + 32))(v124, v95, v127);
    v98 = v123;
  }

  else
  {
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938);
    v100 = *(v126 + 32);
    v100(v119, v90 + *(v99 + 48), v127);
    sub_1D888406C(v92, &v151);
    v101 = sub_1D8B151C0();
    v102 = sub_1D8B16230();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v145 = v104;
      *v103 = 136315138;
      v105 = *(v92 + 56);
      v106 = 0xE000000000000000;
      v151 = 0;
      v152 = 0xE000000000000000;
      sub_1D8B16020();
      if (v105)
      {
        v107 = 0x296C6C6974532820;
      }

      else
      {
        v107 = 0;
      }

      if (v105)
      {
        v106 = 0xE800000000000000;
      }

      MEMORY[0x1DA71EFA0](v107, v106);

      sub_1D8884018(v128);
      v108 = sub_1D89AC714(v151, v152, &v145);

      *(v103 + 4) = v108;
      v92 = v128;
      _os_log_impl(&dword_1D8783000, v101, v102, "Enqueueing update(for:) %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v104);
      MEMORY[0x1DA721330](v104, -1, -1);
      MEMORY[0x1DA721330](v103, -1, -1);
    }

    else
    {

      sub_1D8884018(v92);
    }

    v98 = v123;
    v96 = v124;
    v97 = v127;
    v100(v124, v119, v127);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940);
    (*(*(v109 - 8) + 8))(v125, v109);
    v94 = v126;
  }

  v148 = &type metadata for InProcessMediaFrame;
  v149 = sub_1D88C3924();
  v110 = swift_allocObject();
  v111 = *(v92 + 48);
  v110[3] = *(v92 + 32);
  v110[4] = v111;
  v112 = *(v92 + 80);
  v110[5] = *(v92 + 64);
  v110[6] = v112;
  v113 = *(v92 + 16);
  v110[1] = *v92;
  v110[2] = v113;
  v145 = v110;
  v150 = v87;
  sub_1D888406C(v92, &v151);

  v114 = v121;
  sub_1D8B15EE0();
  (*(v94 + 8))(v96, v97);
  (*(v122 + 8))(v114, v98);
  os_unfair_lock_unlock(v88);
}

uint64_t sub_1D88B1CC4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = type metadata accessor for ProcessorState(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a2 + 40);
  sub_1D88C7D1C(a1, v11, type metadata accessor for ProcessorState);
  v13 = a3[3];
  v32 = a3[2];
  v33 = v13;
  v14 = a3[5];
  v34 = a3[4];
  v35 = v14;
  v15 = a3[1];
  v30 = *a3;
  v31 = v15;
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 103) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_1D88C7124(v11, v19 + v16, type metadata accessor for ProcessorState);
  v20 = (v19 + v17);
  v21 = v33;
  v20[2] = v32;
  v20[3] = v21;
  v22 = v35;
  v20[4] = v34;
  v20[5] = v22;
  v23 = v31;
  *v20 = v30;
  v20[1] = v23;
  *(v19 + v18) = a2;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D88C6A88;
  *(v24 + 24) = v19;
  aBlock[4] = sub_1D88C7EC8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8A3EDFC;
  aBlock[3] = &block_descriptor_160;
  v25 = _Block_copy(aBlock);
  v26 = v12;
  sub_1D888406C(a3, v28);

  dispatch_sync(v26, v25);

  _Block_release(v25);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D88B1F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v7 = type metadata accessor for TrackManager.FrameProcessingTaskState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64918);
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v54 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64920);
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v54 - v14;
  v15 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ProcessorState(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D88C7D1C(a1, v21, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D88C7124(v21, v17, type metadata accessor for DetectionResult);
      sub_1D88C7D1C(v17, v24, type metadata accessor for DetectionRequest);
      sub_1D88C7D84(v17, type metadata accessor for DetectionResult);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
  }

  sub_1D88C7124(v21, v24, type metadata accessor for DetectionRequest);
LABEL_6:
  v26 = *v24;
  sub_1D88C7D84(v24, type metadata accessor for DetectionRequest);
  swift_beginAccess();
  sub_1D88BBDAC(v26, v65);
  result = swift_endAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63350);
    v28 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D8B1AB90;
    sub_1D88C7D1C(a1, v29 + v28, type metadata accessor for ProcessorState);
    v30 = sub_1D8A57B18(v29);
    swift_setDeallocating();
    sub_1D88C7D84(v29 + v28, type metadata accessor for ProcessorState);
    swift_deallocClassInstance();
    v31 = (v55 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState);
    os_unfair_lock_lock((v55 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState));
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928);
    sub_1D88C7D1C(v31 + *(v32 + 28), v9, type metadata accessor for TrackManager.FrameProcessingTaskState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64930);
      v34 = v60;
      v35 = v61;
      v36 = v62;
      (*(v61 + 32))(v60, &v9[*(v33 + 48)], v62);
    }

    else
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938);
      v35 = v61;
      v36 = v62;
      v38 = &v9[*(v37 + 48)];
      v54 = *(v61 + 32);
      v54(v56, v38, v62);
      sub_1D888406C(a2, &v63);
      v39 = sub_1D8B151C0();
      v40 = sub_1D8B16230();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v65[0] = v55;
        *v41 = 136315138;
        v42 = *(a2 + 56);
        v43 = 0xE000000000000000;
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_1D8B16020();
        if (v42)
        {
          v44 = 0x296C6C6974532820;
        }

        else
        {
          v44 = 0;
        }

        if (v42)
        {
          v43 = 0xE800000000000000;
        }

        MEMORY[0x1DA71EFA0](v44, v43);

        sub_1D8884018(a2);
        v45 = sub_1D89AC714(v63, v64, v65);

        *(v41 + 4) = v45;
        v36 = v62;
        _os_log_impl(&dword_1D8783000, v39, v40, "Enqueueing update(for:) %s", v41, 0xCu);
        v46 = v55;
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x1DA721330](v46, -1, -1);
        v47 = v41;
        v35 = v61;
        MEMORY[0x1DA721330](v47, -1, -1);
      }

      else
      {

        sub_1D8884018(a2);
      }

      v34 = v60;
      v54(v60, v56, v36);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940);
      (*(*(v48 - 8) + 8))(v9, v48);
    }

    v65[3] = &type metadata for InProcessMediaFrame;
    v65[4] = sub_1D88C3924();
    v49 = swift_allocObject();
    v50 = *(a2 + 48);
    v49[3] = *(a2 + 32);
    v49[4] = v50;
    v51 = *(a2 + 80);
    v49[5] = *(a2 + 64);
    v49[6] = v51;
    v52 = *(a2 + 16);
    v49[1] = *a2;
    v49[2] = v52;
    v65[0] = v49;
    v65[5] = v30;
    sub_1D888406C(a2, &v63);

    v53 = v57;
    sub_1D8B15EE0();
    (*(v35 + 8))(v34, v36);
    (*(v58 + 8))(v53, v59);
    os_unfair_lock_unlock(v31);
  }

  return result;
}

uint64_t sub_1D88B279C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CVProcessorTaskDescriptor(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_1D88C7D1C(a1, v8, type metadata accessor for CVProcessorTaskDescriptor);
  sub_1D888406C(a2, &v28);
  v9 = sub_1D8B151C0();
  v10 = sub_1D8B16230();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = a3;
    v12 = v11;
    v25 = swift_slowAlloc();
    v30 = v25;
    *v12 = 136315394;
    v13 = *(a2 + 56);
    v14 = 0xE000000000000000;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1D8B16020();
    if (v13)
    {
      v15 = 0x296C6C6974532820;
    }

    else
    {
      v15 = 0;
    }

    if (v13)
    {
      v14 = 0xE800000000000000;
    }

    MEMORY[0x1DA71EFA0](v15, v14);

    sub_1D8884018(a2);
    v16 = sub_1D89AC714(v28, v29, &v30);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    LOBYTE(v28) = v8[*(v6 + 20)];
    v17 = CVDetection.DetectionType.description.getter();
    v19 = v18;
    sub_1D88C7D84(v8, type metadata accessor for CVProcessorTaskDescriptor);
    v20 = sub_1D89AC714(v17, v19, &v30);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1D8783000, v9, v10, "[%s] Enqueued for %s", v12, 0x16u);
    v21 = v25;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v21, -1, -1);
    v22 = v12;
    a3 = v26;
    MEMORY[0x1DA721330](v22, -1, -1);
  }

  else
  {
    sub_1D8884018(a2);

    sub_1D88C7D84(v8, type metadata accessor for CVProcessorTaskDescriptor);
  }

  sub_1D88C7D1C(v27 + *(v6 + 20), a3, type metadata accessor for DetectionRequest);
  type metadata accessor for ProcessorState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D88B2A94(uint64_t a1, __int128 *a2, unint64_t a3)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v15 = MEMORY[0x1E69E7CC8];
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore;
  v9 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore);
  if (v9)
  {
    v10 = v9;
    sub_1D8B163A0();

    v11 = *(v4 + v8);
    *(v4 + v8) = 0;
  }

  v12 = v4 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage;
  os_unfair_lock_lock((v4 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage));
  v13 = sub_1D88B5CB0((v12 + 8), a1, &v15, v4, a2, a3 | ((HIDWORD(a3) & 1) << 32));
  os_unfair_lock_unlock(v12);

  return v13;
}

uint64_t sub_1D88B2B8C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 48) = a8;
  *(v9 + 56) = a9;
  *(v9 + 32) = a6;
  *(v9 + 40) = a7;
  *(v9 + 24) = a5;
  *(v9 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D88B2BB8, 0, 0);
}

uint64_t sub_1D88B2BB8()
{
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

    v1 = qword_1ECA675B0;
    v0[8] = qword_1ECA675B0;

    return MEMORY[0x1EEE6DFA0](sub_1D88B2D04, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1D88B2DB8;
    v3 = v0[6];
    v4 = v0[7];
    v6 = v0[4];
    v5 = v0[5];

    return sub_1D88B2EAC(v6, v5, v3, v4);
  }
}

uint64_t sub_1D88B2D04()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  if (*(v2 + 160) < v3)
  {
    *(v2 + 160) = v3;
  }

  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D88B2DB8;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);

  return sub_1D88B2EAC(v8, v7, v5, v6);
}

uint64_t sub_1D88B2DB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D88B2EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D70);
  *(v5 + 144) = v7;
  *(v5 + 152) = *(v7 - 8);
  *(v5 + 160) = swift_task_alloc();
  v8 = sub_1D8B15130();
  *(v5 + 168) = v8;
  *(v5 + 176) = *(v8 - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = *(a2 + 48);
  *(v5 + 232) = *(a2 + 56);
  v9 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v9;
  v10 = *(a2 + 80);
  *(v5 + 80) = *(a2 + 64);
  *(v5 + 96) = v10;
  v11 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D88B3010, 0, 0);
}

uint64_t sub_1D88B3010()
{
  v43 = v0;
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 152);
    v39 = *(v0 + 144);
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = v42;
    v38 = *(v4 + 72);
    v7 = &unk_1ECA67D70;
    do
    {
      v40 = v6;
      v8 = *(v0 + 160);
      sub_1D87A0E38(v5, v8, v7);
      v9 = v8 + *(v39 + 48);
      v10 = 0xE900000000000067;
      v11 = 0x6E69646E756F7267;
      switch(*(v9 + *(type metadata accessor for CVProcessorTaskDescriptor(0) + 20)))
      {
        case 1:
          v11 = 0x6465646E756F7267;
          v12 = 0x6573726150;
          goto LABEL_17;
        case 2:
          v10 = 0xE400000000000000;
          v11 = 1635018093;
          break;
        case 3:
          v10 = 0xE600000000000000;
          v11 = 0x7463656A626FLL;
          break;
        case 4:
          v10 = 0xE500000000000000;
          v11 = 0x6573726170;
          break;
        case 5:
          v10 = 0xE400000000000000;
          v11 = 1954047348;
          break;
        case 6:
          v10 = 0xE600000000000000;
          v11 = 0x65646F437271;
          break;
        case 7:
          v10 = 0xE700000000000000;
          v11 = 0x70696C43707061;
          break;
        case 8:
          v11 = 0x6E696D6165727473;
          v12 = 0x7478655467;
LABEL_17:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v11 = 0x6C61636974726576;
          v10 = 0xEF746E65746E6F43;
          break;
        case 0xA:
          v10 = 0xEA00000000006C61;
          v11 = 0x646F6D69746C756DLL;
          break;
        case 0xB:
          v11 = 0x69746568746E7973;
          v10 = 0xE900000000000063;
          break;
        case 0xC:
          v11 = 0xD000000000000017;
          v10 = 0x80000001D8B439C0;
          break;
        case 0xD:
          v11 = 0xD00000000000001CLL;
          v10 = 0x80000001D8B439A0;
          break;
        default:
          break;
      }

      v13 = v7;
      sub_1D87A14E4(*(v0 + 160), v7);
      v6 = v40;
      v42 = v40;
      v15 = *(v40 + 16);
      v14 = *(v40 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D87F3F54((v14 > 1), v15 + 1, 1);
        v6 = v42;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v10;
      v5 += v38;
      --v2;
      v7 = v13;
    }

    while (v2);
    v3 = v6;
  }

  type metadata accessor for LoggingSignposter(0);

  sub_1D8B15120();
  v17 = sub_1D8B15150();
  v18 = sub_1D8B16370();

  if (sub_1D8B16460())
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42 = v20;
    *v19 = 136315138;
    v21 = MEMORY[0x1DA71F1E0](v3, MEMORY[0x1E69E6158]);
    v23 = v22;

    v24 = sub_1D89AC714(v21, v23, &v42);

    *(v19 + 4) = v24;
    v25 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v17, v18, v25, "CVCoordinator.serviceProcessorTasks", "detectionTypes: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1DA721330](v20, -1, -1);
    MEMORY[0x1DA721330](v19, -1, -1);
  }

  else
  {
  }

  v26 = *(v0 + 200);
  v27 = *(v0 + 192);
  v28 = *(v0 + 168);
  v29 = *(v0 + 176);
  v30 = *(v0 + 136);
  v31 = *(v0 + 112);
  v32 = *(v0 + 232) & 1;
  v41 = *(v0 + 120);
  (*(v29 + 16))(*(v0 + 184), v27, v28);
  sub_1D8B151A0();
  swift_allocObject();
  *(v0 + 208) = sub_1D8B15190();
  (*(v29 + 8))(v27, v28);
  v33 = type metadata accessor for ProcessorState(0);
  v34 = swift_task_alloc();
  *(v0 + 216) = v34;
  *(v34 + 16) = v31;
  *(v34 + 24) = v30;
  *(v34 + 32) = v0 + 16;
  *(v34 + 40) = v26;
  *(v34 + 48) = v32;
  *(v34 + 56) = v41;
  v35 = swift_task_alloc();
  *(v0 + 224) = v35;
  *v35 = v0;
  v35[1] = sub_1D88B35B0;
  v36 = MEMORY[0x1E69E7CA8] + 8;
  v45 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v35, v33, v36, 0, 0, &unk_1D8B25E08, v34, v33);
}

uint64_t sub_1D88B35B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88B36C8, 0, 0);
}

uint64_t sub_1D88B36C8()
{
  sub_1D8A46818();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88B3764(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 656) = a9;
  *(v9 + 648) = a8;
  *(v9 + 545) = a7;
  *(v9 + 640) = a1;
  *(v9 + 632) = a6;
  *(v9 + 624) = a5;
  *(v9 + 616) = a4;
  *(v9 + 608) = a3;
  v10 = type metadata accessor for ProcessorState(0);
  *(v9 + 664) = v10;
  *(v9 + 672) = *(v10 - 8);
  *(v9 + 680) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64948);
  *(v9 + 688) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67D80);
  *(v9 + 696) = v11;
  *(v9 + 704) = *(v11 - 8);
  *(v9 + 712) = swift_task_alloc();
  v12 = *(type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  *(v9 + 720) = v12;
  *(v9 + 728) = *(v12 + 64);
  *(v9 + 736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  *(v9 + 744) = swift_task_alloc();
  *(v9 + 752) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D70);
  *(v9 + 760) = v13;
  *(v9 + 768) = *(v13 - 8);
  *(v9 + 776) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88B39EC, 0, 0);
}

uint64_t sub_1D88B39EC()
{
  v1 = *(v0 + 616);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 768);
    v4 = *(v0 + 760);
    v53 = *(v0 + 720);
    v54 = *(v0 + 776);
    v52 = *(v0 + 545);
    v51 = v54 + v4[16];
    v50 = (v54 + v4[20]);
    v49 = v4[12];
    v48 = **(v0 + 608);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v46 = *(v3 + 72);
    v47 = *(v0 + 728) + 7;
    v6 = &unk_1ECA675E0;
    do
    {
      v8 = *(v0 + 776);
      v9 = *(v0 + 752);
      v56 = v9;
      v57 = *(v0 + 744);
      v58 = v5;
      v10 = *(v0 + 736);
      v11 = *(v0 + 640);
      v12 = *(v0 + 632);
      v59 = v2;
      v60 = *(v0 + 624);
      sub_1D87A0E38(v5, v8, &unk_1ECA67D70);
      v13 = *(v51 + 16);
      *(v0 + 208) = *v51;
      *(v0 + 224) = v13;
      v15 = *(v51 + 48);
      v14 = *(v51 + 64);
      v16 = *(v51 + 32);
      *(v0 + 288) = *(v51 + 80);
      *(v0 + 256) = v15;
      *(v0 + 272) = v14;
      *(v0 + 240) = v16;
      v17 = *v50;
      v18 = v50[1];
      *(v0 + 544) = *(v50 + 32);
      *(v0 + 512) = v17;
      *(v0 + 528) = v18;
      v19 = sub_1D8B15EA0();
      v55 = *(v19 - 8);
      (*(v55 + 56))(v9, 1, 1, v19);
      sub_1D88C7124(v54 + v49, v10, type metadata accessor for CVProcessorTaskDescriptor);
      v63 = v12[2];
      v64 = v12[3];
      v65 = v12[4];
      v66 = v12[5];
      v61 = *v12;
      v62 = v12[1];
      sub_1D8788F40(v8, v0 + 472);
      v20 = v6;
      v21 = (*(v53 + 80) + 40) & ~*(v53 + 80);
      v22 = (v47 + v21) & 0xFFFFFFFFFFFFFFF8;
      v23 = (v22 + 103) & 0xFFFFFFFFFFFFFFF8;
      v24 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v60;
      v26 = v25 + v21;
      v6 = v20;
      sub_1D88C7124(v10, v26, type metadata accessor for CVProcessorTaskDescriptor);
      v27 = (v25 + v22);
      v28 = v19;
      v27[2] = v63;
      v27[3] = v64;
      v27[4] = v65;
      v27[5] = v66;
      *v27 = v61;
      v27[1] = v62;
      sub_1D8788F40((v0 + 472), v25 + v23);
      v29 = v25 + v24;
      v30 = *(v0 + 256);
      *(v29 + 2) = *(v0 + 240);
      *(v29 + 3) = v30;
      *(v29 + 4) = *(v0 + 272);
      *(v29 + 10) = *(v0 + 288);
      v31 = *(v0 + 224);
      *v29 = *(v0 + 208);
      *(v29 + 1) = v31;
      v32 = v25 + ((v24 + 95) & 0xFFFFFFFFFFFFFFF8);
      v33 = *(v0 + 528);
      *v32 = *(v0 + 512);
      *(v32 + 1) = v33;
      v32[32] = *(v0 + 544);
      v34 = v25 + ((v24 + 135) & 0xFFFFFFFFFFFFFFF8);
      *v34 = v11;
      v34[8] = v52;
      sub_1D87A0E38(v56, v57, v20);
      LODWORD(v10) = (*(v55 + 48))(v57, 1, v19);

      v35 = *(v0 + 744);
      v36 = *(v0 + 632);
      if (v10 == 1)
      {
        sub_1D888406C(v36, v0 + 16);
        sub_1D881F59C(v0 + 208, v0 + 296);

        sub_1D87A14E4(v35, v20);
      }

      else
      {
        sub_1D888406C(v36, v0 + 112);
        sub_1D881F59C(v0 + 208, v0 + 384);

        sub_1D8B15E90();
        (*(v55 + 8))(v35, v28);
      }

      if (v25[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v37 = sub_1D8B15E00();
        v39 = v38;
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v40 = swift_allocObject();
      *(v40 + 16) = &unk_1D8B25E38;
      *(v40 + 24) = v25;
      v41 = v39 | v37;
      if (v39 | v37)
      {
        v41 = v0 + 552;
        *(v0 + 552) = 0;
        *(v0 + 560) = 0;
        *(v0 + 568) = v37;
        *(v0 + 576) = v39;
      }

      v7 = *(v0 + 752);
      *(v0 + 584) = 1;
      *(v0 + 592) = v41;
      *(v0 + 600) = v48;
      swift_task_create();

      sub_1D881F5F8(v0 + 208);
      sub_1D87A14E4(v7, v20);
      v5 = v58 + v46;
      v2 = v59 - 1;
    }

    while (v59 != 1);
  }

  sub_1D8B15E30();
  v42 = swift_task_alloc();
  *(v0 + 784) = v42;
  *v42 = v0;
  v42[1] = sub_1D88B3F64;
  v43 = *(v0 + 696);
  v44 = *(v0 + 688);

  return MEMORY[0x1EEE6D8A8](v44, 0, 0, v43);
}

uint64_t sub_1D88B3F64()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88B4060, 0, 0);
}

uint64_t sub_1D88B4060()
{
  v1 = v0[86];
  if ((*(v0[84] + 48))(v1, 1, v0[83]) == 1)
  {
    (*(v0[88] + 8))(v0[89], v0[87]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[85];
    v5 = v0[81];
    sub_1D88C7124(v1, v4, type metadata accessor for ProcessorState);
    v5(v4);
    sub_1D88C7D84(v4, type metadata accessor for ProcessorState);
    v6 = swift_task_alloc();
    v0[98] = v6;
    *v6 = v0;
    v6[1] = sub_1D88B3F64;
    v7 = v0[87];
    v8 = v0[86];

    return MEMORY[0x1EEE6D8A8](v8, 0, 0, v7);
  }
}

uint64_t sub_1D88B4248(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 912) = v17;
  *(v9 + 776) = a2;
  *(v9 + 768) = v16;
  *(v9 + 760) = a9;
  *(v9 + 752) = a8;
  *(v9 + 744) = a7;
  *(v9 + 736) = a6;
  *(v9 + 728) = a5;
  *(v9 + 720) = a1;
  v10 = *(a9 + 48);
  *(v9 + 240) = *(a9 + 32);
  *(v9 + 256) = v10;
  *(v9 + 272) = *(a9 + 64);
  *(v9 + 288) = *(a9 + 80);
  v11 = *(a9 + 16);
  *(v9 + 208) = *a9;
  *(v9 + 224) = v11;
  type metadata accessor for DetectionResult(0);
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  *(v9 + 800) = swift_task_alloc();
  v12 = type metadata accessor for CVProcessorTaskDescriptor(0);
  *(v9 + 808) = v12;
  v13 = *(v12 - 8);
  *(v9 + 816) = v13;
  *(v9 + 824) = *(v13 + 64);
  *(v9 + 832) = swift_task_alloc();
  *(v9 + 840) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88B43AC, 0, 0);
}

uint64_t sub_1D88B43AC()
{
  v1 = v0[105];
  v2 = v0[102];
  v3 = v0[92];
  v4 = v0[91];
  v0[87] = 0;
  v5 = *(v4 + 40);
  sub_1D88C7D1C(v3, v1, type metadata accessor for CVProcessorTaskDescriptor);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[106] = v7;
  *(v7 + 16) = v0 + 87;
  *(v7 + 24) = v4;
  sub_1D88C7124(v1, v7 + v6, type metadata accessor for CVProcessorTaskDescriptor);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D88C5380;
  *(v8 + 24) = v7;
  v0[79] = sub_1D88C7EC8;
  v0[80] = v8;
  v0[75] = MEMORY[0x1E69E9820];
  v0[76] = 1107296256;
  v0[77] = sub_1D8A3EDFC;
  v0[78] = &block_descriptor_147;
  v9 = _Block_copy(v0 + 75);
  v10 = v5;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return MEMORY[0x1EEE6DA10](v11, v12, v13, v14, v15);
  }

  v16 = v0[87];
  v0[107] = v16;
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[108] = v17;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
    *v17 = v0;
    v17[1] = sub_1D88B4708;
    v15 = MEMORY[0x1E69E7288];
    v13 = MEMORY[0x1E69E7CA8] + 8;
    v12 = v16;
    v14 = v11;

    return MEMORY[0x1EEE6DA10](v11, v12, v13, v14, v15);
  }

  v18 = v0[93];
  v19 = *(v0 + 16);
  *(v0 + 41) = *(v0 + 15);
  *(v0 + 43) = v19;
  *(v0 + 45) = *(v0 + 17);
  v0[47] = v0[36];
  v20 = *(v0 + 14);
  *(v0 + 37) = *(v0 + 13);
  *(v0 + 39) = v20;
  v21 = v18[1];
  *(v0 + 7) = *v18;
  *(v0 + 8) = v21;
  v22 = v18[5];
  v24 = v18[2];
  v23 = v18[3];
  *(v0 + 11) = v18[4];
  *(v0 + 12) = v22;
  *(v0 + 9) = v24;
  *(v0 + 10) = v23;
  v25 = v18[1];
  *(v0 + 1) = *v18;
  *(v0 + 2) = v25;
  v26 = v18[5];
  v28 = v18[2];
  v27 = v18[3];
  *(v0 + 5) = v18[4];
  *(v0 + 6) = v26;
  *(v0 + 3) = v28;
  *(v0 + 4) = v27;
  v29 = swift_task_alloc();
  v0[110] = v29;
  *v29 = v0;
  v29[1] = sub_1D88B4C6C;
  v30 = v0[92];

  return sub_1D88AECAC((v0 + 2), (v0 + 37), v30);
}

uint64_t sub_1D88B4708()
{
  *(*v1 + 872) = v0;

  if (v0)
  {
    v2 = sub_1D88B4918;
  }

  else
  {
    v2 = sub_1D88B481C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88B481C()
{

  v1 = *(v0 + 744);
  v2 = *(v0 + 256);
  *(v0 + 328) = *(v0 + 240);
  *(v0 + 344) = v2;
  *(v0 + 360) = *(v0 + 272);
  *(v0 + 376) = *(v0 + 288);
  v3 = *(v0 + 224);
  *(v0 + 296) = *(v0 + 208);
  *(v0 + 312) = v3;
  v4 = v1[1];
  *(v0 + 112) = *v1;
  *(v0 + 128) = v4;
  v5 = v1[5];
  v7 = v1[2];
  v6 = v1[3];
  *(v0 + 176) = v1[4];
  *(v0 + 192) = v5;
  *(v0 + 144) = v7;
  *(v0 + 160) = v6;
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[5];
  *(v0 + 80) = v1[4];
  *(v0 + 96) = v10;
  *(v0 + 48) = v9;
  *(v0 + 64) = v8;
  v11 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v11;
  v12 = swift_task_alloc();
  *(v0 + 880) = v12;
  *v12 = v0;
  v12[1] = sub_1D88B4C6C;
  v13 = *(v0 + 736);

  return sub_1D88AECAC(v0 + 16, v0 + 296, v13);
}

uint64_t sub_1D88B4918()
{
  v30 = v0;

  v1 = *(v0 + 872);
  sub_1D88C7D1C(*(v0 + 736), *(v0 + 832), type metadata accessor for CVProcessorTaskDescriptor);
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16210();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 832);
    v6 = *(v0 + 808);
    v27 = *(v0 + 912);
    v7 = *(v0 + 776);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 134218754;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v29 = *(v5 + *(v6 + 20));
    v10 = CVDetection.DetectionType.description.getter();
    v12 = v11;
    sub_1D88C7D84(v5, type metadata accessor for CVProcessorTaskDescriptor);
    v13 = sub_1D89AC714(v10, v12, &v28);

    *(v8 + 14) = v13;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v27;
    *(v8 + 28) = 2080;
    swift_getErrorValue();
    v14 = sub_1D8B16C90();
    v16 = sub_1D89AC714(v14, v15, &v28);

    *(v8 + 30) = v16;
    _os_log_impl(&dword_1D8783000, v3, v4, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    v17 = *(v0 + 832);

    sub_1D88C7D84(v17, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v18 = *(v0 + 808);
  v19 = *(v0 + 736);
  v20 = *(v0 + 720);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48));
  sub_1D88C7D1C(v19 + *(v18 + 20), v20, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v22 = sub_1D8B16C90();
  v24 = v23;

  *v21 = v22;
  v21[1] = v24;
  type metadata accessor for ProcessorState(0);
  swift_storeEnumTagMultiPayload();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D88B4C6C(uint64_t a1)
{
  *(*v1 + 888) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D88B4D6C, 0, 0);
}

uint64_t sub_1D88B4D6C()
{
  v39 = v0;
  if (*(v0 + 888))
  {
    v1 = *(v0 + 760);
    v2 = *(v0 + 752);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    sub_1D88C5438(v1, v0 + 528);
    sub_1D88C5438(v0 + 528, v0 + 456);
    *(v0 + 448) = *(v0 + 520);
    v5 = *(v0 + 504);
    *(v0 + 416) = *(v0 + 488);
    *(v0 + 432) = v5;
    v6 = *(v0 + 472);
    *(v0 + 384) = *(v0 + 456);
    *(v0 + 400) = v6;
    v35 = *(v4 + 32) + **(v4 + 32);
    v7 = swift_task_alloc();
    *(v0 + 896) = v7;
    sub_1D88C3924();
    *v7 = v0;
    v7[1] = sub_1D88B525C;
    v41 = v3;
    v42 = v4;

    __asm { BRAA            X8, X16 }
  }

  sub_1D88C53E4();
  v8 = swift_allocError();
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 3;
  swift_willThrow();
  sub_1D88C7D1C(*(v0 + 736), *(v0 + 832), type metadata accessor for CVProcessorTaskDescriptor);
  v10 = v8;
  v11 = sub_1D8B151C0();
  v12 = sub_1D8B16210();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 832);
  if (v13)
  {
    v15 = *(v0 + 808);
    v36 = *(v0 + 912);
    v16 = *(v0 + 776);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v37 = v18;
    *v17 = 134218754;
    *(v17 + 4) = v16;
    *(v17 + 12) = 2080;
    v38 = *(v14 + *(v15 + 20));
    v19 = CVDetection.DetectionType.description.getter();
    v21 = v20;
    sub_1D88C7D84(v14, type metadata accessor for CVProcessorTaskDescriptor);
    v22 = sub_1D89AC714(v19, v21, &v37);

    *(v17 + 14) = v22;
    *(v17 + 22) = 1024;
    *(v17 + 24) = v36;
    *(v17 + 28) = 2080;
    swift_getErrorValue();
    v23 = sub_1D8B16C90();
    v25 = sub_1D89AC714(v23, v24, &v37);

    *(v17 + 30) = v25;
    _os_log_impl(&dword_1D8783000, v11, v12, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v17, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v18, -1, -1);
    MEMORY[0x1DA721330](v17, -1, -1);
  }

  else
  {

    sub_1D88C7D84(v14, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v26 = *(v0 + 808);
  v27 = *(v0 + 736);
  v28 = *(v0 + 720);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48));
  sub_1D88C7D1C(v27 + *(v26 + 20), v28, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v30 = sub_1D8B16C90();
  v32 = v31;

  *v29 = v30;
  v29[1] = v32;
  type metadata accessor for ProcessorState(0);
  swift_storeEnumTagMultiPayload();

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D88B525C()
{
  *(*v1 + 904) = v0;

  if (v0)
  {
    v2 = sub_1D88B595C;
  }

  else
  {
    v2 = sub_1D88B5370;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88B5370()
{
  v56 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);

  sub_1D88C7124(v3, v2, type metadata accessor for DetectionResult);
  v6 = *(v5 + 56);
  if (!*(v6 + 16) || (v7 = *(v4 + *(v1 + 20)), v8 = sub_1D881F7DC(v7), (v9 & 1) == 0) || *(*(v6 + 56) + 8 * v8 + 4) > 1u)
  {
LABEL_8:
    sub_1D88C7D1C(*(v0 + 800), *(v0 + 784), type metadata accessor for DetectionResult);
    v32 = sub_1D8B151C0();
    v33 = sub_1D8B16230();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 784);
    if (v34)
    {
      v36 = *(v0 + 912);
      v37 = *(v0 + 776);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v54 = v39;
      *v38 = 134218498;
      *(v38 + 4) = v37;
      *(v38 + 12) = 2080;
      v55 = *v35;
      v40 = CVDetection.DetectionType.description.getter();
      v42 = v41;
      sub_1D88C7D84(v35, type metadata accessor for DetectionResult);
      v43 = sub_1D89AC714(v40, v42, &v54);

      *(v38 + 14) = v43;
      *(v38 + 22) = 1024;
      *(v38 + 24) = v36;
      _os_log_impl(&dword_1D8783000, v32, v33, "[%f] Completed for %s (still: %{BOOL}d)", v38, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1DA721330](v39, -1, -1);
      MEMORY[0x1DA721330](v38, -1, -1);
    }

    else
    {

      sub_1D88C7D84(v35, type metadata accessor for DetectionResult);
    }

    sub_1D88C7124(*(v0 + 800), *(v0 + 720), type metadata accessor for DetectionResult);
    type metadata accessor for ProcessorState(0);
    goto LABEL_12;
  }

  v10 = *(v0 + 904);
  v11 = *(v0 + 776);
  v12 = *(v0 + 728);
  v13 = *(v12 + 40);
  v14 = swift_task_alloc();
  *(v14 + 16) = v12;
  *(v14 + 24) = v7;
  *(v14 + 32) = v11;
  v15 = v13;
  sub_1D8B162D0();
  if (!v10)
  {

    goto LABEL_8;
  }

  sub_1D88C7D84(*(v0 + 800), type metadata accessor for DetectionResult);

  sub_1D88C7D1C(*(v0 + 736), *(v0 + 832), type metadata accessor for CVProcessorTaskDescriptor);
  v16 = v10;
  v17 = sub_1D8B151C0();
  v18 = sub_1D8B16210();

  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 832);
  if (v19)
  {
    v21 = *(v0 + 808);
    v53 = *(v0 + 912);
    v22 = *(v0 + 776);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v54 = v24;
    *v23 = 134218754;
    *(v23 + 4) = v22;
    *(v23 + 12) = 2080;
    v55 = *(v20 + *(v21 + 20));
    v25 = CVDetection.DetectionType.description.getter();
    v27 = v26;
    sub_1D88C7D84(v20, type metadata accessor for CVProcessorTaskDescriptor);
    v28 = sub_1D89AC714(v25, v27, &v54);

    *(v23 + 14) = v28;
    *(v23 + 22) = 1024;
    *(v23 + 24) = v53;
    *(v23 + 28) = 2080;
    swift_getErrorValue();
    v29 = sub_1D8B16C90();
    v31 = sub_1D89AC714(v29, v30, &v54);

    *(v23 + 30) = v31;
    _os_log_impl(&dword_1D8783000, v17, v18, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v23, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v24, -1, -1);
    MEMORY[0x1DA721330](v23, -1, -1);
  }

  else
  {

    sub_1D88C7D84(v20, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v46 = *(v0 + 808);
  v47 = *(v0 + 736);
  v48 = *(v0 + 720);
  v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48));
  sub_1D88C7D1C(v47 + *(v46 + 20), v48, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v50 = sub_1D8B16C90();
  v52 = v51;

  *v49 = v50;
  v49[1] = v52;
  type metadata accessor for ProcessorState(0);
LABEL_12:
  swift_storeEnumTagMultiPayload();

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1D88B595C()
{
  v30 = v0;

  v1 = *(v0 + 904);
  sub_1D88C7D1C(*(v0 + 736), *(v0 + 832), type metadata accessor for CVProcessorTaskDescriptor);
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16210();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 832);
    v6 = *(v0 + 808);
    v27 = *(v0 + 912);
    v7 = *(v0 + 776);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 134218754;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v29 = *(v5 + *(v6 + 20));
    v10 = CVDetection.DetectionType.description.getter();
    v12 = v11;
    sub_1D88C7D84(v5, type metadata accessor for CVProcessorTaskDescriptor);
    v13 = sub_1D89AC714(v10, v12, &v28);

    *(v8 + 14) = v13;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v27;
    *(v8 + 28) = 2080;
    swift_getErrorValue();
    v14 = sub_1D8B16C90();
    v16 = sub_1D89AC714(v14, v15, &v28);

    *(v8 + 30) = v16;
    _os_log_impl(&dword_1D8783000, v3, v4, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    v17 = *(v0 + 832);

    sub_1D88C7D84(v17, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v18 = *(v0 + 808);
  v19 = *(v0 + 736);
  v20 = *(v0 + 720);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48));
  sub_1D88C7D1C(v19 + *(v18 + 20), v20, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v22 = sub_1D8B16C90();
  v24 = v23;

  *v21 = v22;
  v21[1] = v24;
  type metadata accessor for ProcessorState(0);
  swift_storeEnumTagMultiPayload();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D88B5CB0(void *a1, uint64_t a2, void *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v106 = a4;
  v107 = a6;
  v136 = a3;
  v110 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v110);
  v116 = (&v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v115 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v104 - v15;
  v17 = a5[2];
  v18 = a5[4];
  v19 = a5[5];
  v124 = a5[3];
  v125 = v18;
  v126 = v19;
  v20 = a5[1];
  v121 = *a5;
  v122 = v20;
  v123 = v17;
  v21 = *(a2 + 16);
  v105 = a1;
  if (v21)
  {
    v117 = 0;
    v22 = *a1;
    v109 = *(v14 + 80);
    v114 = (v109 + 32) & ~v109;
    v23 = a2 + v114;
    v24 = *(v14 + 72);
    v108 = xmmword_1D8B1AB90;
    v25 = v116;
    v112 = v10;
    v113 = v22;
    v111 = v24;
    while (1)
    {
      sub_1D88C7D1C(v23, v16, type metadata accessor for CVProcessorTaskDescriptor);
      sub_1D88C7D1C(&v16[*(v10 + 20)], v25, type metadata accessor for DetectionRequest);
      if (*(v22 + 16) && (v26 = sub_1D881F7DC(*v25), (v27 & 1) != 0))
      {
        v28 = *(v22 + 56) + 88 * v26;
        v29 = *(v28 + 80);
        v30 = *(v28 + 64);
        v31 = *(v28 + 32);
        v132 = *(v28 + 48);
        v133 = v30;
        v32 = *(v28 + 16);
        v129 = *v28;
        v130 = v32;
        v131 = v31;
        v134 = v29;
        v33 = v133;
        v119 = v133;
        if (v132 == 1)
        {
          v34 = (v25 + *(v110 + 28));
          v35 = *v34;
          v36 = v34[1];
          v37 = v34[2];
          v38 = v34[3];
          sub_1D881F59C(&v129, v120);
          sub_1D88C5510(v33);
          v137.origin.x = 0.0;
          v137.origin.y = 0.0;
          v137.size.width = 1.0;
          v137.size.height = 1.0;
          v139.origin.x = v35;
          v139.origin.y = v36;
          v139.size.width = v37;
          v139.size.height = v38;
          v138 = CGRectIntersection(v137, v139);
          v135[2] = v123;
          v135[3] = v124;
          v135[4] = v125;
          v135[5] = v126;
          v135[0] = v121;
          v135[1] = v122;
          v39 = v118;
          sub_1D88C27FC(&v129, v135, v127, v138.origin.x, v138.origin.y, v138.size.width, v138.size.height);
          v118 = v39;
          if (v39)
          {
            sub_1D88C5520(v33);
            sub_1D881F5F8(&v129);
            sub_1D88C7D84(v25, type metadata accessor for DetectionRequest);
            sub_1D88C7D84(v16, type metadata accessor for CVProcessorTaskDescriptor);
            sub_1D878BBCC(v117);
            return v25;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DB0);
          v40 = v114;
          v41 = swift_allocObject();
          *(v41 + 16) = v108;
          sub_1D88C7D1C(v16, v41 + v40, type metadata accessor for CVProcessorTaskDescriptor);
          v42 = v136;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v120[0] = *v42;
          v44 = v120[0];
          *v42 = 0x8000000000000000;
          v46 = sub_1D87F03BC(v127);
          v47 = *(v44 + 16);
          v48 = (v45 & 1) == 0;
          v49 = v47 + v48;
          if (__OFADD__(v47, v48))
          {
            goto LABEL_64;
          }

          v50 = v45;
          if (*(v44 + 24) >= v49)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D89695C0();
            }
          }

          else
          {
            sub_1D8972230(v49, isUniquelyReferenced_nonNull_native);
            v51 = sub_1D87F03BC(v127);
            if ((v50 & 1) != (v52 & 1))
            {
              goto LABEL_68;
            }

            v46 = v51;
          }

          v22 = v113;
          v80 = v120[0];
          if (v50)
          {
            *(*(v120[0] + 56) + 8 * v46) = v41;

            sub_1D881F5F8(v127);
          }

          else
          {
            *(v120[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
            v81 = v80[6] + 88 * v46;
            v82 = v127[1];
            *v81 = v127[0];
            *(v81 + 16) = v82;
            v83 = v127[2];
            v84 = v127[3];
            v85 = v127[4];
            *(v81 + 80) = v128;
            *(v81 + 48) = v84;
            *(v81 + 64) = v85;
            *(v81 + 32) = v83;
            *(v80[7] + 8 * v46) = v41;
            v86 = v80[2];
            v72 = __OFADD__(v86, 1);
            v87 = v86 + 1;
            if (v72)
            {
              goto LABEL_67;
            }

            v80[2] = v87;
          }

          *v136 = v80;
          sub_1D88C5520(v119);
          sub_1D881F5F8(&v129);
          v25 = v116;
          sub_1D88C7D84(v116, type metadata accessor for DetectionRequest);
          v13 = sub_1D88C7D84(v16, type metadata accessor for CVProcessorTaskDescriptor);
          v24 = v111;
          v10 = v112;
        }

        else
        {
          sub_1D88C7D1C(v16, v115, type metadata accessor for CVProcessorTaskDescriptor);
          sub_1D881F59C(&v129, v120);
          sub_1D88C5510(v33);
          sub_1D878BBCC(v117);
          v53 = v136;
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v120[0] = *v53;
          v55 = v120[0];
          *v53 = 0x8000000000000000;
          v57 = sub_1D87F03BC(&v129);
          v58 = *(v55 + 16);
          v59 = (v56 & 1) == 0;
          v60 = v58 + v59;
          if (__OFADD__(v58, v59))
          {
            goto LABEL_63;
          }

          v61 = v56;
          if (*(v55 + 24) >= v60)
          {
            if ((v54 & 1) == 0)
            {
              sub_1D89695C0();
              v55 = v120[0];
            }
          }

          else
          {
            sub_1D8972230(v60, v54);
            v55 = v120[0];
            v62 = sub_1D87F03BC(&v129);
            if ((v61 & 1) != (v63 & 1))
            {
              goto LABEL_68;
            }

            v57 = v62;
          }

          v64 = v136;
          *v136 = v55;

          v65 = *v64;
          if ((v61 & 1) == 0)
          {
            v65[(v57 >> 6) + 8] |= 1 << v57;
            v66 = v65[6] + 88 * v57;
            v67 = v130;
            *v66 = v129;
            *(v66 + 16) = v67;
            v68 = v131;
            v69 = v132;
            v70 = v133;
            *(v66 + 80) = v134;
            *(v66 + 48) = v69;
            *(v66 + 64) = v70;
            *(v66 + 32) = v68;
            *(v65[7] + 8 * v57) = MEMORY[0x1E69E7CC0];
            v71 = v65[2];
            v72 = __OFADD__(v71, 1);
            v73 = v71 + 1;
            if (v72)
            {
              goto LABEL_66;
            }

            v65[2] = v73;
            sub_1D881F59C(&v129, v120);
          }

          v74 = v65[7];
          v75 = *(v74 + 8 * v57);
          v76 = swift_isUniquelyReferenced_nonNull_native();
          *(v74 + 8 * v57) = v75;
          if ((v76 & 1) == 0)
          {
            v75 = sub_1D87C8AA0(0, v75[2] + 1, 1, v75);
            *(v74 + 8 * v57) = v75;
          }

          v78 = v75[2];
          v77 = v75[3];
          if (v78 >= v77 >> 1)
          {
            *(v74 + 8 * v57) = sub_1D87C8AA0(v77 > 1, v78 + 1, 1, v75);
          }

          sub_1D88C5520(v119);
          sub_1D881F5F8(&v129);
          v25 = v116;
          sub_1D88C7D84(v116, type metadata accessor for DetectionRequest);
          sub_1D88C7D84(v16, type metadata accessor for CVProcessorTaskDescriptor);
          v79 = *(v74 + 8 * v57);
          *(v79 + 16) = v78 + 1;
          v24 = v111;
          v13 = sub_1D88C7124(v115, v79 + v114 + v78 * v111, type metadata accessor for CVProcessorTaskDescriptor);
          v117 = sub_1D8797808;
          v10 = v112;
          v22 = v113;
        }
      }

      else
      {
        sub_1D88C7D84(v25, type metadata accessor for DetectionRequest);
        v13 = sub_1D88C7D84(v16, type metadata accessor for CVProcessorTaskDescriptor);
      }

      v23 += v24;
      if (!--v21)
      {
        goto LABEL_35;
      }
    }
  }

  v117 = 0;
LABEL_35:
  v25 = *v136;
  MEMORY[0x1EEE9AC00](v13);
  v88 = v105;
  *(&v104 - 4) = v106;
  *(&v104 - 3) = &v121;
  *(&v104 - 2) = v88;
  BYTE4(v88) = BYTE4(v107);
  *(&v104 - 2) = v107;
  *(&v104 - 4) = BYTE4(v88) & 1;

  v90 = v118;
  v91 = sub_1D88C10EC(v89, sub_1D88C54B8);

  if (v90)
  {
    sub_1D878BBCC(v117);
    return v25;
  }

  v118 = 0;
  v92 = *(v91 + 16);
  if (!v92)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_56:

    sub_1D878BBCC(v117);
    return v25;
  }

  v93 = 0;
  v136 = (v91 + 32);
  v25 = MEMORY[0x1E69E7CC0];
  while (v93 < *(v91 + 16))
  {
    v94 = v136[v93];
    v95 = *(v94 + 16);
    v96 = v25[2];
    v97 = v96 + v95;
    if (__OFADD__(v96, v95))
    {
      goto LABEL_60;
    }

    v98 = swift_isUniquelyReferenced_nonNull_native();
    if (v98 && v97 <= v25[3] >> 1)
    {
      if (*(v94 + 16))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v96 <= v97)
      {
        v99 = v96 + v95;
      }

      else
      {
        v99 = v96;
      }

      v25 = sub_1D87C8A7C(v98, v99, 1, v25);
      if (*(v94 + 16))
      {
LABEL_51:
        v100 = (v25[3] >> 1) - v25[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63368);
        if (v100 < v95)
        {
          goto LABEL_62;
        }

        swift_arrayInitWithCopy();

        if (v95)
        {
          v101 = v25[2];
          v72 = __OFADD__(v101, v95);
          v102 = v101 + v95;
          if (v72)
          {
            goto LABEL_65;
          }

          v25[2] = v102;
        }

        goto LABEL_40;
      }
    }

    if (v95)
    {
      goto LABEL_61;
    }

LABEL_40:
    if (v92 == ++v93)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
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
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D88B66BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6)
{
  v39 = a5;
  v40 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63368);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  sub_1D88C622C(a1, a4, &v58);
  if (!v6)
  {
    v37 = a2;
    v38 = a4;
    v41 = 0;
    v42 = v12;
    v57 = v63;
    v54 = v60;
    v55 = v61;
    v56 = v62;
    v52 = v58;
    v53 = v59;
    v74 = v11;
    if (*(&v62 + 1) == 1)
    {
      v16 = *(a1 + 72);
      v15 = *(a1 + 80);
      sub_1D88C5438(a1, v44);
      sub_1D881F59C(a1, &v45);
      v17 = v44;
    }

    else
    {
      v66[2] = v60;
      v66[3] = v61;
      v66[0] = v58;
      v66[1] = v59;
      v66[4] = v62;
      v67 = v63;
      v18 = v39;
      sub_1D87A0E38(&v58, &v45, &qword_1ECA64960);

      v20 = v41;
      v21 = sub_1D88C65F0(v19, v66);
      v41 = v20;
      sub_1D87A14E4(&v58, &qword_1ECA64960);

      *v18 = v21;

      v48 = v55;
      v49 = v56;
      v47 = v54;
      v15 = v57;
      v50 = v57;
      v45 = v52;
      v46 = v53;
      v16 = *(&v56 + 1);
      v17 = &v45;
    }

    sub_1D88C5438(v17, v51);
    sub_1D88C5438(v51, &v45);
    *(&v49 + 1) = v16;
    v50 = v15;
    v73 = v15;
    v70 = v47;
    v71 = v48;
    v68 = v45;
    v69 = v46;
    v72 = v49;
    sub_1D87A0E38(&v58, v44, &qword_1ECA64960);
    v22 = v41;
    sub_1D88C55E8(&v68, v38, v40 | ((HIDWORD(v40) & 1) << 32), v64);
    if (v22)
    {
      a3 = v22;
      sub_1D881F5F8(&v45);
      sub_1D87A14E4(&v58, &qword_1ECA64960);
    }

    else
    {
      v41 = 0;
      v24 = v37;
      v25 = *(v37 + 16);
      if (v25)
      {
        v43 = MEMORY[0x1E69E7CC0];
        sub_1D87F45A4(0, v25, 0);
        a3 = v43;
        v26 = *(type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
        v27 = v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
        v28 = *(v26 + 72);
        do
        {
          sub_1D88C7D1C(v27, v14, type metadata accessor for CVProcessorTaskDescriptor);
          v29 = &v14[*(v74 + 48)];
          v30 = &v14[*(v74 + 64)];
          v31 = v71;
          *(v29 + 2) = v70;
          *(v29 + 3) = v31;
          *(v29 + 4) = v72;
          *(v29 + 10) = v73;
          v32 = v69;
          *v29 = v68;
          *(v29 + 1) = v32;
          v33 = v64[1];
          *v30 = v64[0];
          *(v30 + 1) = v33;
          v30[32] = v65;
          sub_1D881F59C(&v45, v44);
          v43 = a3;
          v35 = *(a3 + 16);
          v34 = *(a3 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_1D87F45A4(v34 > 1, v35 + 1, 1);
            a3 = v43;
          }

          *(a3 + 16) = v35 + 1;
          sub_1D881F6FC(v14, a3 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v35, &qword_1ECA63368);
          v27 += v28;
          --v25;
        }

        while (v25);
        sub_1D881F5F8(&v45);
        sub_1D87A14E4(&v58, &qword_1ECA64960);
      }

      else
      {
        sub_1D881F5F8(&v45);
        sub_1D87A14E4(&v58, &qword_1ECA64960);
        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  return a3;
}

uint64_t sub_1D88B6B58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1D8B15EA0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v7, a1, v3);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v4 + 32))(v14 + v13, v7, v3);
  *(v14 + ((v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_bundleManagerReadingTask) = sub_1D8891CA0(0xD00000000000001BLL, 0x80000001D8B43AC0, v10, &unk_1D8B26000, v14);
}

uint64_t sub_1D88B6D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[52] = a4;
  v5[53] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40);
  v5[54] = v6;
  v5[55] = *(v6 - 8);
  v5[56] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64988);
  v5[57] = v7;
  v5[58] = *(v7 - 8);
  v5[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88B6ECC, 0, 0);
}

uint64_t sub_1D88B6ECC()
{
  (*(v0[55] + 16))(v0[56], v0[52], v0[54]);
  sub_1D881CF20(&qword_1EE0E38A0, &unk_1ECA67E40);
  sub_1D8B15FD0();
  swift_beginAccess();
  sub_1D881CF20(&qword_1EE0E38C8, &qword_1ECA64988);
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_1D88B7034;

  return MEMORY[0x1EEE6D8D0](v0 + 2, 0, 0);
}

uint64_t sub_1D88B7034()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D88B7144, 0, 0);
  }

  return result;
}

uint64_t sub_1D88B7144()
{
  v1 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v1;
  v2 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v2;
  v3 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v3;
  v4 = *(v0 + 72);
  *(v0 + 336) = *(v0 + 56);
  *(v0 + 352) = v4;
  *(v0 + 368) = *(v0 + 88);
  v5 = *(v0 + 112);
  *(v0 + 384) = *(v0 + 104);
  v6 = *(v0 + 40);
  *(v0 + 304) = *(v0 + 24);
  *(v0 + 320) = v6;
  if (!v5)
  {
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    if (qword_1EE0E44A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D8B151E0();
    __swift_project_value_buffer(v9, qword_1EE0E44B0);
    v10 = sub_1D8B151C0();
    v11 = sub_1D8B16200();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D8783000, v10, v11, "Breaking out of consumeBundleManagerOutput loop.", v12, 2u);
      MEMORY[0x1DA721330](v12, -1, -1);
    }

    goto LABEL_12;
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 488) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    goto LABEL_11;
  }

  v8 = Strong;
  if (sub_1D8B15F90())
  {
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));

LABEL_11:
    sub_1D87A14E4(v0 + 112, &qword_1ECA67E50);
LABEL_12:

    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 352);
  *(v0 + 248) = *(v0 + 336);
  v16 = *(v0 + 368);
  *(v0 + 264) = v15;
  *(v0 + 280) = v16;
  v17 = *(v0 + 320);
  *(v0 + 216) = *(v0 + 304);
  *(v0 + 208) = v5;
  *(v0 + 296) = *(v0 + 384);
  *(v0 + 232) = v17;

  return MEMORY[0x1EEE6DFA0](sub_1D88B73A8, v8, 0);
}

uint64_t sub_1D88B73A8()
{
  sub_1D8AA8E04((v0 + 208));
  sub_1D87A14E4(v0 + 112, &qword_1ECA67E50);

  return MEMORY[0x1EEE6DFA0](sub_1D88B742C, 0, 0);
}

uint64_t sub_1D88B742C()
{

  sub_1D881CF20(&qword_1EE0E38C8, &qword_1ECA64988);
  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = sub_1D88B7034;

  return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0);
}

uint64_t sub_1D88B7514(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40);
  v6[6] = v8;
  v6[7] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[8] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[9] = v10;
  *v10 = v6;
  v10[1] = sub_1D88B7680;

  return v12(v9);
}

uint64_t sub_1D88B7680()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88B777C, 0, 0);
}

uint64_t sub_1D88B777C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D88B7858, Strong, 0);
  }

  else
  {
    (*(v0[7] + 8))(v0[8], v0[6]);

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1D88B7858()
{
  sub_1D88B6B58(*(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1D88B78CC, 0, 0);
}

uint64_t sub_1D88B78CC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D88B7948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D88B796C, 0, 0);
}

uint64_t sub_1D88B796C()
{
  v1 = (*(v0[5] + 16))(v0[4]);
  v0[6] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D88B79EC, v1, 0);
}

uint64_t sub_1D88B79EC()
{
  sub_1D892668C(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88B7A58(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D88C7EC4;

  return v6(a1);
}

uint64_t sub_1D88B7B50(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D88B7C48;

  return v6(a1);
}

uint64_t sub_1D88B7C48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D88B7D40@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1D88B7D98(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

id sub_1D88B7ED4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D88B7EE4(uint64_t a1, uint64_t a2)
{
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v4 = type metadata accessor for ActionPin(0);
  v5 = (a1 + *(v4 + 20));
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[7];
  sub_1D8818B80(*v5, v5[1]);
  sub_1D8818B80(v6, v7);
  sub_1D8818B80(v8, v9);
  sub_1D8818B80(v10, v11);
  sub_1D8B15A60();
  sub_1D87CF3E8(v14, *(a1 + *(v4 + 28)));
  sub_1D8B16D40();
  sub_1D8B16D80();
  v12 = sub_1D8B165A0();
  *(a2 + 56 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
  result = sub_1D88C7124(a1, *(a2 + 48) + *(*(v4 - 8) + 72) * v12, type metadata accessor for ActionPin);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D88B80A8(uint64_t a1, uint64_t a2)
{
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v4 = type metadata accessor for ActionPin(0);
  v5 = (a1 + *(v4 + 20));
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[7];
  sub_1D8818B80(*v5, v5[1]);
  sub_1D8818B80(v6, v7);
  sub_1D8818B80(v8, v9);
  sub_1D8818B80(v10, v11);
  sub_1D8B15A60();
  sub_1D87CF3E8(v15, *(a1 + *(v4 + 28)));
  sub_1D8B16D40();
  v12 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  ActionPin.Pill.hash(into:)(v15);
  sub_1D8B16D80();
  v13 = sub_1D8B165A0();
  *(a2 + 56 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
  result = sub_1D88C7124(a1, *(a2 + 48) + *(*(v12 - 8) + 72) * v13, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D88B8288(uint64_t a1, uint64_t a2)
{
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  sub_1D8B16D80();
  result = sub_1D8B165A0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D88B8380(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA68B20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for DetectionRequest(0);
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; result = sub_1D87A14E4(v5, &unk_1ECA68B20))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_1D88C7D1C(*(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v10, type metadata accessor for DetectionRequest);
      sub_1D88BBEBC(v10, v5);
      sub_1D88C7D84(v10, type metadata accessor for DetectionRequest);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D88B8588(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_1D87A14E4(v5, &qword_1ECA63178))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_1D88BC7E8(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D88B87A4(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = sub_1D8B16610();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(*v1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D8B165D0();
    type metadata accessor for CVTrackedDetection(0);
    sub_1D88C7AAC(&qword_1EE0E62B8, type metadata accessor for CVTrackedDetection);
    result = sub_1D8B16070();
    a1 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
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

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      return sub_1D87977A0();
    }

    while (1)
    {
      sub_1D88BCA90();

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1D8B16640())
      {
        type metadata accessor for CVTrackedDetection(0);
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      return sub_1D87977A0();
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      return sub_1D87977A0();
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88B89DC(uint64_t a1, uint64_t a2)
{
  v193 = *MEMORY[0x1E69E9840];
  v171 = sub_1D8B13240();
  v5 = *(v171 - 8);
  v6 = MEMORY[0x1EEE9AC00](v171);
  v156 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v155 = &v146 - v8;
  v184 = type metadata accessor for DetectionRequest.Originator(0);
  v9 = MEMORY[0x1EEE9AC00](v184);
  v11 = (&v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v152 = &v146 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v147 = (&v146 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v166 = &v146 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v165 = &v146 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v168 = (&v146 - v20);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  v21 = MEMORY[0x1EEE9AC00](v180);
  v178 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v181 = &v146 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA68B20);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v148 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v146 - v27;
  v179 = type metadata accessor for DetectionRequest(0);
  v29 = MEMORY[0x1EEE9AC00](v179);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v175 = &v146 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = (&v146 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v173 = &v146 - v37;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v167 = v35;
  v151 = v11;
  v146 = 0;
  v39 = a1 + 56;
  v38 = *(a1 + 56);
  v40 = -1 << *(a1 + 32);
  v163 = ~v40;
  if (-v40 < 64)
  {
    v41 = ~(-1 << -v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = v41 & v38;
  v150 = (63 - v40) >> 6;
  v162 = (v36 + 56);
  v153 = v36;
  v161 = (v36 + 48);
  v186 = (a2 + 56);
  v170 = (v5 + 8);
  v154 = (v5 + 32);

  v44 = 0;
  v183 = a2;
  v160 = a1;
  v159 = a1 + 56;
  for (i = v28; ; v28 = i)
  {
    v45 = v42;
    v46 = v44;
    if (v42)
    {
LABEL_15:
      v50 = (v45 - 1) & v45;
      sub_1D88C7D1C(*(a1 + 48) + *(v153 + 72) * (__clz(__rbit64(v45)) | (v46 << 6)), v28, type metadata accessor for DetectionRequest);
      v51 = 0;
      v52 = v46;
    }

    else
    {
      v47 = v150 <= (v44 + 1) ? (v44 + 1) : v150;
      v48 = v47 - 1;
      v49 = v44;
      while (1)
      {
        v46 = (v49 + 1);
        if (__OFADD__(v49, 1))
        {
          __break(1u);
          goto LABEL_127;
        }

        if (v46 >= v150)
        {
          break;
        }

        v45 = *(v39 + 8 * v46);
        ++v49;
        if (v45)
        {
          goto LABEL_15;
        }
      }

      v50 = 0;
      v51 = 1;
      v52 = v48;
    }

    v53 = v179;
    v158 = *v162;
    v158(v28, v51, 1, v179);
    v188 = a1;
    v189 = v39;
    v190 = v163;
    v191 = v52;
    v172 = v52;
    v192 = v50;
    v157 = *v161;
    if (v157(v28, 1, v53) == 1)
    {
      sub_1D87A14E4(v28, &unk_1ECA68B20);
      goto LABEL_124;
    }

    v169 = v50;
    v54 = v28;
    v55 = v173;
    sub_1D88C7124(v54, v173, type metadata accessor for DetectionRequest);
    sub_1D8B16D20();
    MEMORY[0x1DA720210](*v55);
    v177 = v53[5];
    DetectionRequest.Originator.hash(into:)(&v187);
    v174 = *&v55[v53[6]];
    sub_1D8818BD0(&v187, v174);
    v56 = &v55[v53[7]];
    v57 = *v56;
    v58 = v56[1];
    v59 = v56[2];
    v60 = v56[3];
    sub_1D88911A0(*v56, v58, v59, v60);
    v61 = v53[8];
    v62 = *&v55[v61];
    v63 = v62 == 0.0 ? 0.0 : *&v55[v61];
    MEMORY[0x1DA720250](*&v63);
    v64 = sub_1D8B16D80();
    v65 = -1 << *(a2 + 32);
    v42 = v64 & ~v65;
    v2 = v42 >> 6;
    v39 = 1 << v42;
    if (((1 << v42) & v186[v42 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1D88C7D84(v55, type metadata accessor for DetectionRequest);
    v44 = v172;
    v42 = v169;
    a1 = v160;
    v39 = v159;
  }

  v66 = v53;
  v67 = ~v65;
  LODWORD(v182) = *v55;
  v185 = *(v153 + 72);
  v176 = ~v65;
  while (1)
  {
    sub_1D88C7D1C(*(a2 + 48) + v185 * v42, v34, type metadata accessor for DetectionRequest);
    if (*v34 != v182)
    {
      goto LABEL_25;
    }

    v68 = v66;
    v69 = v66[5];
    v70 = v181;
    v71 = v181 + *(v180 + 48);
    sub_1D88C7D1C(v34 + v69, v181, type metadata accessor for DetectionRequest.Originator);
    sub_1D88C7D1C(&v55[v177], v71, type metadata accessor for DetectionRequest.Originator);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v76 = v165;
      sub_1D88C7D1C(v70, v165, type metadata accessor for DetectionRequest.Originator);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*v170)(v76, v171);
        goto LABEL_23;
      }

      v77 = *v154;
      v78 = v155;
      v79 = v76;
      v80 = v171;
      (*v154)(v155, v79, v171);
      v81 = v156;
      v77(v156, v71, v80);
      v164 = sub_1D8B13200();
      v82 = *v170;
      (*v170)(v81, v80);
      v83 = v78;
      v55 = v173;
      v66 = v179;
      v82(v83, v80);
      sub_1D88C7D84(v181, type metadata accessor for DetectionRequest.Originator);
      v67 = v176;
      if (v164)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_23;
      }

      v73 = v166;
      sub_1D88C7D1C(v70, v166, type metadata accessor for DetectionRequest.Originator);
      v74 = *v73;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        v55 = v173;
        goto LABEL_23;
      }

      v75 = sub_1D894FA18(v74, *v71);

      sub_1D88C7D84(v70, type metadata accessor for DetectionRequest.Originator);
      v55 = v173;
      v66 = v68;
      v67 = v176;
      if (v75)
      {
        goto LABEL_50;
      }
    }

LABEL_25:
    sub_1D88C7D84(v34, type metadata accessor for DetectionRequest);
    v42 = (v42 + 1) & v67;
    v2 = v42 >> 6;
    v39 = 1 << v42;
    a2 = v183;
    if ((v186[v42 >> 6] & (1 << v42)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (!EnumCaseMultiPayload)
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1D88C7D84(v71, type metadata accessor for DetectionRequest.Originator);
LABEL_49:
      sub_1D88C7D84(v181, type metadata accessor for DetectionRequest.Originator);
      v66 = v68;
      v67 = v176;
      goto LABEL_50;
    }

LABEL_23:
    sub_1D87A14E4(v181, &unk_1ECA64FB0);
LABEL_24:
    v66 = v68;
    v67 = v176;
    goto LABEL_25;
  }

  v84 = v168;
  sub_1D88C7D1C(v70, v168, type metadata accessor for DetectionRequest.Originator);
  v85 = *v84;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_23;
  }

  v86 = *v71;
  v87 = *(v71 + 4);
  if (!*(v168 + 4))
  {
    if (v87)
    {
LABEL_54:
      sub_1D88C7D84(v181, type metadata accessor for DetectionRequest.Originator);
      goto LABEL_24;
    }

LABEL_48:
    if (v85 == v86)
    {
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  if (*(v168 + 4) == 1)
  {
    if (v87 != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

  sub_1D88C7D84(v181, type metadata accessor for DetectionRequest.Originator);
  v66 = v68;
  v67 = v176;
  if (v86 != 0.0 || v87 != 2)
  {
    goto LABEL_25;
  }

LABEL_50:
  if ((sub_1D894CAAC(*(v34 + v66[6]), v174) & 1) == 0)
  {
    goto LABEL_25;
  }

  v194.origin.x = v57;
  v194.origin.y = v58;
  v194.size.width = v59;
  v194.size.height = v60;
  if (!CGRectEqualToRect(*(v34 + v66[7]), v194) || *(v34 + v66[8]) != v62)
  {
    goto LABEL_25;
  }

  sub_1D88C7D84(v34, type metadata accessor for DetectionRequest);
  v88 = sub_1D88C7D84(v55, type metadata accessor for DetectionRequest);
  a2 = v183;
  v89 = *(v183 + 32);
  v166 = ((1 << v89) + 63) >> 6;
  v43 = 8 * v166;
  v34 = v147;
  v44 = v167;
  v28 = v175;
  if ((v89 & 0x3Fu) > 0xD)
  {
    goto LABEL_128;
  }

  while (2)
  {
    v168 = &v146;
    MEMORY[0x1EEE9AC00](v88);
    v91 = &v146 - ((v90 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v91, v186, v90);
    v92 = *&v91[8 * v2] & ~v39;
    v93 = *(a2 + 16);
    v174 = v91;
    *&v91[8 * v2] = v92;
    v94 = v93 - 1;
    v95 = v160;
    v42 = v148;
    v39 = v159;
    v96 = v150;
    v2 = v169;
    v97 = v172;
LABEL_63:
    v173 = v94;
    while (2)
    {
      if (v2)
      {
        v98 = v97;
        v99 = v97;
LABEL_75:
        v102 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
        sub_1D88C7D1C(*(v95 + 48) + (v102 | (v99 << 6)) * v185, v42, type metadata accessor for DetectionRequest);
        v103 = 0;
LABEL_76:
        v158(v42, v103, 1, v66);
        v188 = v95;
        v189 = v39;
        v190 = v163;
        v191 = v98;
        v192 = v2;
        if (v157(v42, 1, v66) == 1)
        {
          sub_1D87A14E4(v42, &unk_1ECA68B20);
          a2 = sub_1D88BE398(v174, v166, v173, a2);
          goto LABEL_124;
        }

        v172 = v98;
        sub_1D88C7124(v42, v28, type metadata accessor for DetectionRequest);
        sub_1D8B16D20();
        MEMORY[0x1DA720210](*v28);
        v182 = v66[5];
        DetectionRequest.Originator.hash(into:)(&v187);
        v177 = *&v28[v66[6]];
        sub_1D8818BD0(&v187, v177);
        v104 = &v28[v66[7]];
        v105 = *v104;
        v106 = v104[1];
        v107 = v104[2];
        v108 = v104[3];
        sub_1D88911A0(*v104, v106, v107, v108);
        v109 = v66[8];
        v110 = *&v28[v109];
        if (v110 == 0.0)
        {
          v111 = 0.0;
        }

        else
        {
          v111 = *&v28[v109];
        }

        MEMORY[0x1DA720250](*&v111);
        v112 = sub_1D8B16D80();
        v113 = -1 << *(a2 + 32);
        v114 = v112 & ~v113;
        v115 = v114 >> 6;
        v116 = 1 << v114;
        if (((1 << v114) & v186[v114 >> 6]) == 0)
        {
LABEL_64:
          v28 = v175;
          sub_1D88C7D84(v175, type metadata accessor for DetectionRequest);
          v95 = v160;
          v42 = v148;
          v66 = v179;
          v39 = v159;
          v96 = v150;
          v97 = v172;
          continue;
        }

        v117 = ~v113;
        v118 = *v28;
        v169 = v2;
        LODWORD(v181) = v118;
LABEL_86:
        sub_1D88C7D1C(*(a2 + 48) + v114 * v185, v44, type metadata accessor for DetectionRequest);
        if (*v44 != v118)
        {
          goto LABEL_85;
        }

        v119 = v117;
        v120 = v178;
        v121 = v178 + *(v180 + 48);
        sub_1D88C7D1C(&v44[v179[5]], v178, type metadata accessor for DetectionRequest.Originator);
        sub_1D88C7D1C(&v175[v182], v121, type metadata accessor for DetectionRequest.Originator);
        v122 = swift_getEnumCaseMultiPayload();
        if (v122 > 1)
        {
          if (v122 != 2)
          {
            if (v122 == 3)
            {
              v123 = v151;
              sub_1D88C7D1C(v120, v151, type metadata accessor for DetectionRequest.Originator);
              v124 = v120;
              v125 = *v123;
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                v126 = sub_1D894FA18(v125, *v121);

                sub_1D88C7D84(v124, type metadata accessor for DetectionRequest.Originator);
                v44 = v167;
                v117 = v119;
                v118 = v181;
                if (v126)
                {
                  goto LABEL_110;
                }

                goto LABEL_85;
              }

              v44 = v167;
              goto LABEL_83;
            }

            if (swift_getEnumCaseMultiPayload() != 4)
            {
              goto LABEL_83;
            }

LABEL_109:
            sub_1D88C7D84(v178, type metadata accessor for DetectionRequest.Originator);
            v117 = v119;
            v118 = v181;
            goto LABEL_110;
          }

          v127 = v120;
          v128 = v152;
          sub_1D88C7D1C(v127, v152, type metadata accessor for DetectionRequest.Originator);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v129 = *v154;
            v130 = v155;
            v131 = v128;
            v132 = v171;
            (*v154)(v155, v131, v171);
            v133 = v156;
            v129(v156, v121, v132);
            v2 = v169;
            LODWORD(v176) = sub_1D8B13200();
            v134 = *v170;
            v135 = v133;
            v44 = v167;
            (*v170)(v135, v132);
            v136 = v130;
            v34 = v147;
            v134(v136, v132);
            sub_1D88C7D84(v178, type metadata accessor for DetectionRequest.Originator);
            v117 = v119;
            v118 = v181;
            if (v176)
            {
LABEL_110:
              if (sub_1D894CAAC(*&v44[v179[6]], v177))
              {
                v195.origin.x = v105;
                v195.origin.y = v106;
                v195.size.width = v107;
                v195.size.height = v108;
                if (CGRectEqualToRect(*&v44[v179[7]], v195) && *&v44[v179[8]] == v110)
                {
                  sub_1D88C7D84(v44, type metadata accessor for DetectionRequest);
                  v28 = v175;
                  sub_1D88C7D84(v175, type metadata accessor for DetectionRequest);
                  v140 = v174[v115];
                  v174[v115] = v140 & ~v116;
                  a2 = v183;
                  v95 = v160;
                  v42 = v148;
                  v66 = v179;
                  v39 = v159;
                  v96 = v150;
                  v97 = v172;
                  if ((v140 & v116) != 0)
                  {
                    v94 = (v173 - 1);
                    if (__OFSUB__(v173, 1))
                    {
                      __break(1u);
                    }

                    if (v173 == 1)
                    {

                      a2 = MEMORY[0x1E69E7CD0];
                      goto LABEL_124;
                    }

                    goto LABEL_63;
                  }

                  continue;
                }
              }
            }

LABEL_85:
            sub_1D88C7D84(v44, type metadata accessor for DetectionRequest);
            v114 = (v114 + 1) & v117;
            v115 = v114 >> 6;
            v116 = 1 << v114;
            a2 = v183;
            if ((v186[v114 >> 6] & (1 << v114)) == 0)
            {
              goto LABEL_64;
            }

            goto LABEL_86;
          }

          (*v170)(v128, v171);
LABEL_83:
          sub_1D87A14E4(v178, &unk_1ECA64FB0);
LABEL_84:
          v117 = v119;
          v118 = v181;
          goto LABEL_85;
        }

        if (!v122)
        {
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_83;
          }

          sub_1D88C7D84(v121, type metadata accessor for DetectionRequest.Originator);
          goto LABEL_109;
        }

        sub_1D88C7D1C(v120, v34, type metadata accessor for DetectionRequest.Originator);
        v137 = *v34;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_83;
        }

        v138 = *v121;
        v139 = *(v121 + 4);
        if (*(v34 + 4))
        {
          if (*(v34 + 4) != 1)
          {
            sub_1D88C7D84(v178, type metadata accessor for DetectionRequest.Originator);
            v117 = v119;
            v118 = v181;
            if (v138 == 0.0 && v139 == 2)
            {
              goto LABEL_110;
            }

            goto LABEL_85;
          }

          if (v139 != 1)
          {
            goto LABEL_114;
          }
        }

        else if (v139)
        {
LABEL_114:
          sub_1D88C7D84(v178, type metadata accessor for DetectionRequest.Originator);
          goto LABEL_84;
        }

        if (v137 == v138)
        {
          goto LABEL_109;
        }

        goto LABEL_114;
      }

      break;
    }

    if (v96 <= (v97 + 1))
    {
      v100 = (v97 + 1);
    }

    else
    {
      v100 = v96;
    }

    v101 = (v100 - 1);
    while (1)
    {
      v99 = (v97 + 1);
      if (__OFADD__(v97, 1))
      {
        break;
      }

      if (v99 >= v96)
      {
        v2 = 0;
        v103 = 1;
        v98 = v101;
        goto LABEL_76;
      }

      v2 = *(v39 + 8 * v99);
      ++v97;
      if (v2)
      {
        v98 = v99;
        goto LABEL_75;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    v142 = v43;

    if (swift_stdlib_isStackAllocationSafe())
    {

      v66 = v179;
      continue;
    }

    break;
  }

  v143 = swift_slowAlloc();
  memcpy(v143, v186, v142);
  v144 = v146;
  v145 = sub_1D88BCC84(v143, v166, a2, v42, &v188);

  if (v144)
  {

    result = MEMORY[0x1DA721330](v143, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x1DA721330](v143, -1, -1);
    a2 = v145;
LABEL_124:
    sub_1D87977A0();
    return a2;
  }

  return result;
}