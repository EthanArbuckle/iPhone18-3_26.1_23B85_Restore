uint64_t sub_1D8BC350C(int *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  dword_1ECAA47A8 = v1;
  return result;
}

uint64_t static SpatialPhoto.Camera.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    v5 = 0;
    return v5 & 1;
  }

  v5 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return v5 & 1;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_21;
    }
  }

  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 48), *(a2 + 48)), vceqq_f32(*(a1 + 32), *(a2 + 32))), vandq_s8(vceqq_f32(*(a1 + 64), *(a2 + 64)), vceqq_f32(*(a1 + 80), *(a2 + 80))))) & 0x80000000) == 0 || (v6 = vandq_s8(vandq_s8(vceqq_f32(*(a1 + 112), *(a2 + 112)), vceqq_f32(*(a1 + 96), *(a2 + 96))), vceqq_f32(*(a1 + 128), *(a2 + 128))), v6.i32[3] = v6.i32[2], (vminvq_u32(v6) & 0x80000000) == 0) || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 160), *(a2 + 160)), vceqq_f32(*(a1 + 144), *(a2 + 144))), vandq_s8(vceqq_f32(*(a1 + 176), *(a2 + 176)), vceqq_f32(*(a1 + 192), *(a2 + 192))))) & 0x80000000) == 0)
  {
LABEL_21:
    v5 = 0;
    return v5 & 1;
  }

  v5 = 0;
  if (vmovn_s64(vceqq_s64(*(a1 + 208), *(a2 + 208))).u8[0])
  {
    v8.i64[0] = *(a1 + 224);
    v8.i64[1] = *(a1 + 216);
    v9.i64[0] = *(a2 + 224);
    v9.i64[1] = *(a2 + 216);
    v10 = vmovn_s64(vceqq_s64(v8, v9));
    if (v10.i8[4] & 1) != 0 && (v10.i8[0])
    {
      v5 = vmovn_s64(vceqq_s64(*(a1 + 224), *(a2 + 224))).i8[4];
    }
  }

  return v5 & 1;
}

uint64_t sub_1D8BC36D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 240))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BC36F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 240) = v3;
  return result;
}

double sub_1D8BC3768()
{
  v1 = 0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *v0;
  v6 = v2;
  v7 = 2.0 / v5;
  v8 = *(v0 + 232);
  v9 = vcvts_n_f32_s64(v2, 1uLL);
  v10 = *(v0 + 224);
  v11 = v3 - v4;
  v12 = v3 / (v3 - v4);
  *&v13 = -(((vcvts_n_f32_s64(v10, 1uLL) + *(v0 + 208)) - vcvts_n_f32_s64(*v0, 1uLL)) * (2.0 / v5));
  *(&v13 + 1) = (2.0 / v6) * ((vcvts_n_f32_s64(v8, 1uLL) + *(v0 + 216)) - v9);
  DWORD2(v13) = 0;
  HIDWORD(v13) = 1.0;
  v14.i32[1] = 0;
  v14.i64[1] = 0;
  v14.f32[0] = v5 / v10;
  v15 = -(v4 * v3);
  v16.i32[0] = 0;
  v16.i64[1] = 0;
  v17 = v15 / v11;
  v29 = xmmword_1D8BF7190;
  v30 = v13;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  while (v1 != 4)
  {
    v16.f32[1] = v6 / v8;
    *(&v31 + v1 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v28[v1])), v16, *&v28[v1], 1), xmmword_1D8BF7190, v28[v1], 2), xmmword_1D8BF71A0, v28[v1], 3);
    ++v1;
  }

  v18 = 0;
  v19 = v7;
  LODWORD(v20) = 0;
  *(&v20 + 1) = -(2.0 / v6);
  *&v21 = __PAIR64__(1.0, -1.0);
  *(&v21 + 1) = __PAIR64__(1.0, LODWORD(v12));
  *&v22 = 0;
  *(&v22 + 1) = LODWORD(v17);
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v28[0] = LODWORD(v19);
  v28[1] = v20;
  v29 = v21;
  v30 = v22;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  while (v18 != 4)
  {
    *(&v31 + v18 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(v28[v18])), v24, *&v28[v18], 1), v25, v28[v18], 2), v26, v28[v18], 3);
    ++v18;
  }

  return *v31.i64;
}

uint64_t SpatialPhoto.DepthBufferMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

uint64_t SpatialPhoto.DepthBufferMode.description.getter()
{
  if (*v0)
  {
    return 0x6465726975716572;
  }

  else
  {
    return 0x6C616E6F6974706FLL;
  }
}

uint64_t SpatialPhoto.RenderDestinationResult.commandBuffer.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t SpatialPhoto.RenderDestinationResult.drawable.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t SpatialPhoto.RenderDestinationResult.init(commandBuffer:drawable:presentHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

Swift::Void __swiftcall SpatialPhoto.RenderDestinationResult.present()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    v1();

    sub_1D8BB1504(v1);
  }
}

uint64_t SpatialPhoto.RenderDestinationContext.colorTexture.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 96) = a1;
  return result;
}

uint64_t SpatialPhoto.RenderDestinationContext.depthTexture.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 104) = a1;
  return result;
}

void SpatialPhoto.RenderDestinationContext.init(renderPassDescriptor:commandBuffer:commandEncoder:commitHandler:presentHandler:stencilCompareFunction:shouldWriteDepth:shouldPerformSRGBConversion:scale:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, char a11, char a12)
{
  v19 = [a1 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = [v20 texture];

  v22 = [a1 depthAttachment];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = [v22 texture];

  swift_unknownObjectRetain();
  if (v21)
  {
    v25 = [v21 pixelFormat];
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = [v24 pixelFormat];
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0;
  }

  *a9 = [a2 device];
  *(a9 + 8) = v25;
  *(a9 + 16) = v26;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  *(a9 + 48) = a8;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = v27;
  *(a9 + 88) = a12 & 1;
  *(a9 + 89) = a11 & 1;
  *(a9 + 96) = v21;
  *(a9 + 104) = v24;
  *(a9 + 112) = a10;
}

Swift::Void __swiftcall SpatialPhoto.RenderDestinationContext.commit()()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    v1();

    sub_1D8BB1504(v1);
  }
}

Swift::Void __swiftcall SpatialPhoto.RenderDestinationContext.present(additionalCommandBuffers:)(Swift::OpaquePointer additionalCommandBuffers)
{
  v2 = *(v1 + 72);
  if (v2)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
    v2(additionalCommandBuffers._rawValue);

    sub_1D8BB1504(v2);
  }
}

uint64_t static SpatialPhoto.beginRenderSignpostInterval(for:)()
{
  v0 = sub_1D8BF07F0();
  OUTLINED_FUNCTION_3_1();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  if (qword_1ECAA3E78 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v9 = sub_1D8BF0820();
  __swift_project_value_buffer(v9, qword_1ECAA4C20);
  sub_1D8BF0810();
  swift_unknownObjectRetain();
  sub_1D8BF07C0();
  v10 = sub_1D8BF0810();
  v11 = sub_1D8BF0C90();
  if (sub_1D8BF0CF0())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v10, v11, v13, "SpatialPhotoRender", "isAnimation=YES", v12, 2u);
    MEMORY[0x1DA723A30](v12, -1, -1);
  }

  (*(v2 + 16))(v6, v8, v0);
  sub_1D8BF0860();
  swift_allocObject();
  v14 = sub_1D8BF0850();
  (*(v2 + 8))(v8, v0);
  return v14;
}

uint64_t static SpatialPhoto.endRenderSignpostInterval(for:)()
{
  v0 = sub_1D8BF0830();
  OUTLINED_FUNCTION_3_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8BF07F0();
  OUTLINED_FUNCTION_3_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAA3E78 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v12 = sub_1D8BF0820();
  __swift_project_value_buffer(v12, qword_1ECAA4C20);
  v13 = sub_1D8BF0810();
  sub_1D8BF0840();
  v14 = sub_1D8BF0C80();
  if (sub_1D8BF0CF0())
  {

    sub_1D8BF0870();

    if ((*(v2 + 88))(v5, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v5, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v13, v14, v17, "SpatialPhotoRender", v15, v16, 2u);
    MEMORY[0x1DA723A30](v16, -1, -1);
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_1D8BC42CC()
{
  result = qword_1ECAA47B0;
  if (!qword_1ECAA47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA47B0);
  }

  return result;
}

unint64_t sub_1D8BC4324()
{
  result = qword_1ECAA47B8;
  if (!qword_1ECAA47B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECAA47C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA47B8);
  }

  return result;
}

_BYTE *_s14descr1F54466F9O15DepthBufferModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8BC4618(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BC4658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8BC46FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 116))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BC473C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 116) = 1;
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

    *(result + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SpatialPhoto.PixelBufferRenderDestination.__allocating_init(size:renderScale:options:)(char *a1, double a2, double a3, double a4)
{
  v8 = swift_allocObject();
  SpatialPhoto.PixelBufferRenderDestination.init(size:renderScale:options:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SpatialPhoto.PixelBufferRenderDestination.init(size:renderScale:options:)(char *a1, double a2, double a3, double a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = MEMORY[0x1E69E7CC0];
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = v10;
  *(v4 + 64) = 1;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 1;
  *(v4 + 96) = v10;
  *(v4 + 144) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 104) = 0;
  *(v4 + 160) = 257;
  *(v4 + 200) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 168) = 0;
  swift_unknownObjectWeakInit();
  v11 = MTLCreateSystemDefaultDevice();
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = [v11 newCommandQueue];
  if (!v13)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_1D8BC4B78();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_5_0(v18, 1);
LABEL_8:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_1D8BC4BCC(v4 + 192);
    type metadata accessor for SpatialPhoto.PixelBufferRenderDestination();
    swift_deallocPartialClassInstance();
    return v4;
  }

  v14 = v13;
  v21[0] = 0;
  CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], 0, v12, 0, v21);
  if (!v21[0])
  {
    sub_1D8BC4B78();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_5_0(v20, 6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v15 = v21[0];
  v16 = sub_1D8BF09B0();
  [v14 setLabel_];

  *(v4 + 128) = v12;
  *(v4 + 136) = v14;
  *(v4 + 152) = v15;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 66) = v9;
  v17 = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1D8BC59B4();
  if (v5)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v4;
}

unint64_t sub_1D8BC4B78()
{
  result = qword_1ECAA47D0;
  if (!qword_1ECAA47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA47D0);
  }

  return result;
}

uint64_t sub_1D8BC4C40(double a1, double a2)
{
  result = swift_beginAccess();
  if (*(v2 + 16) != a1 || *(v2 + 24) != a2)
  {
    return sub_1D8BC5920();
  }

  return result;
}

double sub_1D8BC4C94()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1D8BC4CC4(double a1, double a2)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1D8BC4C40(v5, v6);
}

uint64_t sub_1D8BC4D08()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *(OUTLINED_FUNCTION_7_0(v2) + 40) = v0;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + 16);
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC4D74(uint64_t a1)
{
  v1 = *a1;
  sub_1D8BC4CC4(*(*a1 + 24), *(*a1 + 32));

  free(v1);
}

uint64_t sub_1D8BC4DB4(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 32) != a1)
  {
    return sub_1D8BC5920();
  }

  return result;
}

double sub_1D8BC4E00()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t sub_1D8BC4E30(double a1)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  return sub_1D8BC4DB4(v3);
}

uint64_t sub_1D8BC4E70()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_7_0(v2) + 32) = v0;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + 32);
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC4EDC(uint64_t a1)
{
  v1 = *a1;
  sub_1D8BC4E30(*(*a1 + 24));

  free(v1);
}

uint64_t sub_1D8BC4F1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1D8BC4FA4(v1, v2);
}

uint64_t sub_1D8BC4F5C()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1D8BC4FA4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_1D8BC5060()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
}

uint64_t sub_1D8BC5094(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t sub_1D8BC5118@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8BC518C(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D8BC518C@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_45();
  result = swift_beginAccess();
  *a1 = *(v1 + 64);
  return result;
}

uint64_t sub_1D8BC51CC(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_0_4();
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t sub_1D8BC5248@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8BC530C(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D8BC52BC(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (v2 != *(v1 + 65))
  {
    *(v1 + 161) = 1;
  }

  return result;
}

uint64_t sub_1D8BC530C@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_45();
  result = swift_beginAccess();
  *a1 = *(v1 + 65);
  return result;
}

uint64_t sub_1D8BC534C(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  v3 = *(v1 + 65);
  *(v1 + 65) = v2;
  v5[0] = v3;
  return sub_1D8BC52BC(v5);
}

uint64_t sub_1D8BC5394()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_7_0(v2) + 24) = v0;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + 65);
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC5400(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_1D8BC534C(v3);

  free(v2);
}

uint64_t sub_1D8BC548C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = *(v3 + 16);
  v5 = *(a1 + 16);
  v6 = (a1 + 32);

  v8 = 0;
  while (1)
  {
    if (v8 == v4)
    {
      v9 = 0;
      v10 = 0;
      v8 = v4;
      if (!v5)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *(v3 + 16))
    {
      goto LABEL_22;
    }

    v9 = *(v3 + 32 + 16 * v8);
    swift_unknownObjectRetain();
    if (!v5)
    {
      if (v9)
      {
LABEL_14:
        swift_unknownObjectRelease();
LABEL_15:
      }

      else
      {
        v10 = 0;
LABEL_17:

        if (!v10)
        {
          return result;
        }

        result = swift_unknownObjectRelease();
      }

      *(v1 + 161) = 1;
      return result;
    }

    ++v8;
LABEL_9:
    v10 = *v6;
    swift_unknownObjectRetain();
    if (!v9)
    {
      goto LABEL_17;
    }

    if (!v10)
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    --v5;
    v6 += 2;
    if (v9 != v10)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D8BC55CC()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
}

uint64_t sub_1D8BC5600(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
  sub_1D8BC548C(v3);
}

void (*sub_1D8BC5654())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_7_0(v2) + 32) = v0;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + 96);

  return sub_1D8BC56CC;
}

void sub_1D8BC56CC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1D8BC5600(v4);
  }

  else
  {
    sub_1D8BC5600(v3);
  }

  free(v2);
}

void sub_1D8BC5730(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D8BC57A0(v1);
}

void *sub_1D8BC5760()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void sub_1D8BC57A0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t sub_1D8BC580C()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8BC5840(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v1 + 112) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8BC58AC()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8BC58E0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v1 + 120) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8BC5920()
{
  *(v0 + 144) = 0;

  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 200);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, &protocol witness table for SpatialPhoto.PixelBufferRenderDestination, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8BC59B4()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
LABEL_11:

    return v1;
  }

  v2 = v0;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  v4 = *(v0 + 32);
  v5 = round(v3 * v4);
  v6 = round(v4 * *(v0 + 24));
  _s14descr1F54466F9O15PixelBufferPoolCMa();
  v1 = sub_1D8BB3A9C(1111970369, v5, v6);
  v2[18] = v1;

  if (!v1)
  {
    v2[9] = 0;
    v2[10] = 0;
    v2[11] = 1;
    sub_1D8BC4B78();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_5_0(v10, 5);
    return v1;
  }

  v8 = *(v1 + 24);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v1 + 32);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 < 9.22337204e18)
  {
    v2[9] = v8;
    v2[10] = v9;
    v2[11] = 1;
    goto LABEL_11;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1D8BC5B44()
{
  OUTLINED_FUNCTION_2_2();
  swift_beginAccess();
  v1 = *(v0 + 104);
  *(v0 + 104) = 0;

  OUTLINED_FUNCTION_2_2();
  swift_beginAccess();
  *(v0 + 112) = 0;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v0 + 120) = 0;
  swift_unknownObjectRelease();
  v2 = *(v0 + 144);
  if (v2)
  {
    CVPixelBufferPoolFlush(*(v2 + 16), 1uLL);
  }

  *(v0 + 161) = 1;
}

void sub_1D8BC5BD4()
{
  if (*(v0 + 160) == 1)
  {
    *(v0 + 160) = 0;
    OUTLINED_FUNCTION_45();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v1 = *(v0 + 200);
      ObjectType = swift_getObjectType();
      (*(v1 + 16))(v0, &protocol witness table for SpatialPhoto.PixelBufferRenderDestination, ObjectType, v1);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1D8BC5C6C(char a1)
{
  sub_1D8BC5BD4();
  if (*(v1 + 161) == 1)
  {
    sub_1D8BC5D70(a1 & 1);
  }

  else
  {
    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v3 = sub_1D8BF08A0();
    __swift_project_value_buffer(v3, qword_1EE320A70);
    v4 = sub_1D8BF0880();
    v5 = sub_1D8BF0B80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D8BAF000, v4, v5, "Nothing to render, skipping", v6, 2u);
      MEMORY[0x1DA723A30](v6, -1, -1);
    }
  }
}

void sub_1D8BC5D70(int a1)
{
  v3 = v1;
  pixelBufferOut[7] = *MEMORY[0x1E69E9840];
  sub_1D8BC5BD4();
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_1D8BC4B78();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_5_0(v7, 10);
    return;
  }

  v5 = v1[25];
  v6 = sub_1D8BC59B4();
  if (v2)
  {
LABEL_3:
    swift_unknownObjectRelease();
    return;
  }

  v8 = v6;
  if (v1[9] < 1 || v1[10] < 1)
  {
    sub_1D8BC4B78();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_5_0(v14, 12);
    swift_unknownObjectRelease();
LABEL_27:

    return;
  }

  type metadata accessor for SpatialPhoto.CaptureManager();
  v9 = static SpatialPhoto.CaptureManager.start(_:device:)(0xD000000000000029, 0x80000001D8BF36C0);
  v10 = [v3[17] commandBuffer];
  if (!v10)
  {
    sub_1D8BC4B78();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_5_0(v15, 3);
    if (v9)
    {
      goto LABEL_26;
    }

    goto LABEL_79;
  }

  HIDWORD(v193) = a1;
  v201 = v10;
  v11 = 0xE000000000000000;
  sub_1D8BF0DE0();

  v209[0] = 0xD000000000000029;
  v209[1] = 0x80000001D8BF36C0;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  if (v3[6])
  {
    v12 = v3[5];
    __dst[0] = 23328;
    __dst[1] = 0xE200000000000000;
    MEMORY[0x1DA722A10](v12);
    MEMORY[0x1DA722A10](93, 0xE100000000000000);
    v13 = 23328;
    v11 = 0xE200000000000000;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1DA722A10](v13, v11);

  v16 = sub_1D8BF09B0();

  v24 = OUTLINED_FUNCTION_9_0(v17, sel_setLabel_, v18, v19, v20, v21, v22, v23, textureOut, v120, v123, buffer, v134, v138, v143, v147, v150, v154, v157, v161, v164, v169, v174, v178, v181, v186, v189, v193, v9, v201);
  [v24 v25];

  v26 = sub_1D8BF09B0();
  [0xD000000000000029 pushDebugGroup_];

  pixelBufferOut[0] = 0;
  v27 = *MEMORY[0x1E695E480];
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], *(v8 + 16), pixelBufferOut);
  if (!pixelBufferOut[0] || PixelBuffer)
  {
    sub_1D8BC4B78();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_5_0(v40, 7);
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v211 = 0;
  v29 = v3[19];
  v31 = v3[9];
  v30 = v3[10];
  v170 = pixelBufferOut[0];
  v32 = pixelBufferOut[0];
  v33 = v29;
  v34 = v32;
  v35 = CVMetalTextureCacheCreateTextureFromImage(v27, v33, v32, 0, MTLPixelFormatBGRA8Unorm_sRGB, v31, v30, 0, &v211);
  v36 = v198;
  if (!v211)
  {
    goto LABEL_25;
  }

  v37 = v35;
  v38 = v211;
  v39 = CVMetalTextureGetTexture(v38);
  if (!v39)
  {

    goto LABEL_24;
  }

  v165 = v38;
  if (v37)
  {

    swift_unknownObjectRelease();
LABEL_24:
    v36 = v198;
LABEL_25:
    sub_1D8BC4B78();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_5_0(v41, 7);
    swift_unknownObjectRelease();

    if (v36)
    {
LABEL_26:
      sub_1D8BDB448();

      swift_unknownObjectRelease();
      goto LABEL_27;
    }

LABEL_79:

    goto LABEL_3;
  }

  v139 = v39;
  v42 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  v43 = [v42 colorAttachments];
  v44 = [v43 objectAtIndexedSubscript_];

  if (!v44)
  {
    __break(1u);
    goto LABEL_82;
  }

  [v44 setLoadAction_];

  v45 = [v42 colorAttachments];
  v46 = [v45 objectAtIndexedSubscript_];

  if (!v46)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  [v46 setClearColor_];

  v47 = [v42 colorAttachments];
  v48 = [v47 objectAtIndexedSubscript_];

  if (!v48)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  swift_unknownObjectRetain();
  [v48 setTexture_];

  if (sub_1D8BC7164())
  {
    v49 = sub_1D8BC71A4();
    buffera = v34;
    v50 = [v42 depthAttachment];
    if (!v50)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v51 = v50;
    [v50 setTexture_];

    v52 = [v42 depthAttachment];
    if (!v52)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v53 = v52;
    [v52 setClearDepth_];

    v54 = [v42 depthAttachment];
    if (!v54)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v55 = v54;
    [v54 setLoadAction_];

    v56 = [v42 depthAttachment];
    if (!v56)
    {
LABEL_89:
      __break(1u);
      return;
    }

    v57 = v56;
    [v56 setStoreAction_];
    swift_unknownObjectRelease();

    v34 = buffera;
  }

  v58 = [v202 renderCommandEncoderWithDescriptor_];
  if (!v58)
  {
    swift_unknownObjectRelease();
    sub_1D8BC4B78();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_5_0(v77, 4);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_21:
    if (v198)
    {
      goto LABEL_26;
    }

    goto LABEL_79;
  }

  v182 = v42;
  v135 = v58;
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  v59 = *(v3[7] + 16);
  bufferb = v34;
  if (v59)
  {

    v60 = v175 + 40;
    do
    {

      v61 = sub_1D8BF09B0();

      [v135 insertDebugSignpost_];

      v60 += 16;
      --v59;
    }

    while (v59);
  }

  v62 = v182;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v63 = [v62 colorAttachments];
  v64 = [v63 objectAtIndexedSubscript_];

  if (!v64)
  {
    goto LABEL_84;
  }

  v65 = [v64 texture];

  v66 = [v62 depthAttachment];
  if (!v66)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v67 = v66;
  v124 = v62;
  v68 = [v66 texture];

  v69 = swift_unknownObjectRetain();
  if (v65)
  {
    v69 = [v65 pixelFormat];
    v76 = v69;
  }

  else
  {
    v76 = 0;
  }

  if (v68)
  {
    v78 = [v68 pixelFormat];
    v69 = swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0;
  }

  v79 = OUTLINED_FUNCTION_9_0(v69, sel_device, v70, v71, v72, v73, v74, v75, textureOuta, v121, v124, bufferb, v135, v139, v144, v148, v151, v155, v158, v8, v165, v170, v175, v179, v65, v187, v190, v194, v198, v202);
  __src[0] = [v79 v80];
  __src[1] = v76;
  __src[2] = v78;
  __src[3] = v125;
  __src[4] = v65;
  __src[5] = v136;
  __src[6] = 1;
  memset(&__src[7], 0, 32);
  LOWORD(__src[11]) = 256;
  __src[12] = v183;
  __src[13] = v68;
  LODWORD(__src[14]) = 1060320051;
  ObjectType = swift_getObjectType();
  memcpy(__dst, __src, 0x74uLL);
  (*(v5 + 24))(v207, v3, &protocol witness table for SpatialPhoto.PixelBufferRenderDestination, __dst, ObjectType, v5);
  v176 = *&v207[16];
  v184 = *v207;
  v145 = *&v207[48];
  v152 = *&v207[32];
  v82 = v207[64];
  v83 = v199;
  if (v207[64])
  {
    if (qword_1ECAA3D38 != -1)
    {
      swift_once();
    }

    v84 = &qword_1ECAA4790;
  }

  else
  {
    if (qword_1ECAA3D30 != -1)
    {
      swift_once();
    }

    v84 = &qword_1ECAA4788;
  }

  v85 = *MEMORY[0x1E6965CE8];
  v86 = *v84;
  CVBufferSetAttachment(bufferc, v85, v86, kCVAttachmentMode_ShouldPropagate);
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  if (*(v3[12] + 16))
  {
    memcpy(v207, __src, sizeof(v207));
    v205[0] = v184;
    v205[1] = v176;
    v205[2] = v152;
    v205[3] = v145;
    v206 = v82;
    sub_1D8BC6D80(v205, __dst);

    sub_1D8BC77DC(__src);
    memcpy(v209, __dst, sizeof(v209));
    v88 = v209[0];
  }

  else
  {

    sub_1D8BC77DC(__src);
    v88 = 0;
    v87 = OUTLINED_FUNCTION_6_0();
    v209[14] = 0;
  }

  [v136 endEncoding];
  memcpy(v207, &v209[1], 0x70uLL);
  if (v88)
  {
    OUTLINED_FUNCTION_45();
    swift_beginAccess();
    v89 = v3[12];
    *&v145 = *(v89 + 16);
    sub_1D8BC7848(v209, __dst);

    v90 = 0;
    *&v152 = v89;
    v91 = (v89 + 40);
    while (v145 != v90)
    {
      if (v90 >= *(v89 + 16))
      {
        __break(1u);
      }

      v92 = v90;
      v93 = *v91;
      *&v184 = swift_getObjectType();
      __dst[0] = v88;
      memcpy(&__dst[1], v207, 0x70uLL);
      *&v176 = *(v93 + 8);
      swift_unknownObjectRetain();
      (v176)(__dst, v184, v93);
      swift_unknownObjectRelease();
      v90 = v92 + 1;
      v91 += 2;
      v83 = v199;
    }

    sub_1D8BC81E4(v209, &qword_1ECAA47D8);
  }

  __dst[4] = sub_1D8BC6F64;
  __dst[5] = 0;
  __dst[0] = MEMORY[0x1E69E9820];
  __dst[1] = 1107296256;
  __dst[2] = sub_1D8BC7104;
  __dst[3] = &block_descriptor_0;
  v94 = _Block_copy(__dst);
  v101 = OUTLINED_FUNCTION_9_0(v94, sel_addCompletedHandler_, v95, v96, v97, v98, v99, v100, textureOutb, 0, v125, bufferc, v136, v140, v145, *(&v145 + 1), v152, *(&v152 + 1), v159, v162, v166, v171, v176, *(&v176 + 1), v184, *(&v184 + 1), v191, v195, v199, v203);
  [v101 v102];
  _Block_release(v94);
  v103 = [v88 commit];
  if (!v122)
  {
    v110 = OUTLINED_FUNCTION_9_0(v103, sel_popDebugGroup, v104, v105, v106, v107, v108, v109, textureOutc, 0, v126, bufferd, v137, v141, v146, v149, v153, v156, v160, v163, v167, v172, v177, v180, v185, v188, v192, v196, v200, v204);
    [v110 v111];
    [v88 waitUntilScheduled];
    if (v197)
    {
      [v88 waitUntilCompleted];
    }

    v112 = [v88 status];
    swift_unknownObjectRelease();
    if (v112 == 5)
    {
      v113 = [v88 error];
      sub_1D8BC4B78();
      OUTLINED_FUNCTION_65();
      *v114 = v113;
      swift_willThrow();
      sub_1D8BC81E4(v209, &qword_1ECAA47D8);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {

      sub_1D8BC81E4(v209, &qword_1ECAA47D8);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_2();
      swift_beginAccess();
      v115 = v3[13];
      v3[13] = v173;

      OUTLINED_FUNCTION_2_2();
      swift_beginAccess();
      v3[14] = v142;
      swift_unknownObjectRelease();
      *(v3 + 161) = 0;
    }

    if (v83)
    {
      sub_1D8BDB448();

      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    goto LABEL_79;
  }

  swift_unknownObjectRelease();
  swift_willThrow();
  sub_1D8BC81E4(v209, &qword_1ECAA47D8);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v83)
  {
    sub_1D8BDB448();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_1D8BC6D80(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1[1];
  v20 = *a1;
  v17 = a1[3];
  v18 = a1[2];
  v4 = *(a1 + 64);
  v5 = *v2;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = [v6 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript_];

  if (v10)
  {
    v11 = [v10 texture];

    v12 = [v6 depthAttachment];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 texture];

      swift_unknownObjectRetain();
      if (v11)
      {
        v15 = [v5 newFence];
        if (v14)
        {
LABEL_5:
          v16 = [v5 newFence];
          goto LABEL_8;
        }
      }

      else
      {
        v15 = 0;
        if (v14)
        {
          goto LABEL_5;
        }
      }

      v16 = 0;
LABEL_8:
      if (v15)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        [v8 updateFence:v15 afterStages:2];
        if (!v16)
        {
LABEL_11:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          *a2 = v7;
          *(a2 + 16) = v20;
          *(a2 + 32) = v19;
          *(a2 + 48) = v18;
          *(a2 + 64) = v17;
          *(a2 + 80) = v4;
          *(a2 + 88) = v11;
          *(a2 + 96) = v15;
          *(a2 + 104) = v14;
          *(a2 + 112) = v16;
          return;
        }
      }

      else
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if (!v16)
        {
          goto LABEL_11;
        }
      }

      swift_unknownObjectRetain();
      [v8 updateFence:v16 afterStages:2];
      swift_unknownObjectRelease();
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D8BC6F64(void *a1)
{
  if ([a1 status] == 5)
  {
    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v2 = sub_1D8BF08A0();
    __swift_project_value_buffer(v2, qword_1EE320A70);
    swift_unknownObjectRetain();
    oslog = sub_1D8BF0880();
    v3 = sub_1D8BF0B90();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138543362;
      v6 = [a1 error];
      if (v6)
      {
        v6 = _swift_stdlib_bridgeErrorToNSError();
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      *(v4 + 4) = v6;
      *v5 = v7;
      _os_log_impl(&dword_1D8BAF000, oslog, v3, "SpatialPhoto.PixelBufferRenderDestination command buffer encountered error:%{public}@", v4, 0xCu);
      sub_1D8BC81E4(v5, &qword_1ECAA45F0);
      MEMORY[0x1DA723A30](v5, -1, -1);
      MEMORY[0x1DA723A30](v4, -1, -1);
    }
  }
}

uint64_t sub_1D8BC7104(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8BC7164()
{
  if (*(v0 + 66))
  {
    return 1;
  }

  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return *(v0 + 65);
}

uint64_t sub_1D8BC71A4()
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    if ((sub_1D8BC7164() & 1) == 0)
    {
      sub_1D8BC4B78();
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_5_0(v7, 9);
      return v1;
    }

    v2 = *(v0 + 66);
    v3 = [objc_opt_self() texture2DDescriptorWithPixelFormat:252 width:*(v0 + 72) height:*(v0 + 80) mipmapped:0];
    v4 = v3;
    if (v2)
    {
      v5 = 7;
    }

    else
    {
      v5 = 4;
    }

    if (v2)
    {
      v1 = 0;
    }

    else
    {
      v1 = 3;
    }

    [v3 setUsage_];
    [v4 setStorageMode_];
    v6 = [*(v0 + 128) newTextureWithDescriptor_];
    if (!v6)
    {
      sub_1D8BC4B78();
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_5_0(v8, 8);

      return v1;
    }

    v1 = v6;

    *(v0 + 120) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

double sub_1D8BC7308@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  v5 = *(v1 + 16);
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  result = *(v1 + 32);
  v4 = *(v1 + 72);
  *a1 = v5;
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v4;
  return result;
}

uint64_t sub_1D8BC7378(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_1D8BC73EC(v2, v1);
}

uint64_t sub_1D8BC73B4()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D8BC73EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_4();
  swift_beginAccess();
  *(v2 + 200) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8BC7444()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *(OUTLINED_FUNCTION_7_0(v2) + 40) = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v0 + 200);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v4;
  return OUTLINED_FUNCTION_10_0();
}

id *SpatialPhoto.PixelBufferRenderDestination.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D8BC4BCC((v0 + 24));
  return v0;
}

uint64_t SpatialPhoto.PixelBufferRenderDestination.__deallocating_deinit()
{
  SpatialPhoto.PixelBufferRenderDestination.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D8BC75A8(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 200);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D8BC8248;
}

void sub_1D8BC7628(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 200) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void (*sub_1D8BC775C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + 65);
  return sub_1D8BC5400;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D8BC7848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA47D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s14descr1F54466F9O28PixelBufferRenderDestinationC7OptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr1F54466F9O28PixelBufferRenderDestinationC7OptionsVwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22PhotosSpatialMediaCore0B5PhotoO28PixelBufferRenderDestinationC5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D8BC80F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF2 && *(a1 + 8))
  {
    return (*a1 + 2147483635);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 0xD)
  {
    return (v3 - 12);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BC8154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF3)
  {
    *result = 0;
    *result = a2 - 2147483635;
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 12;
    }
  }

  return result;
}

void *sub_1D8BC81A4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1D8BC81E4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;

  return swift_willThrow();
}

double OUTLINED_FUNCTION_6_0()
{
  result = 0.0;
  *&STACK[0x220] = 0u;
  *&STACK[0x230] = 0u;
  *&STACK[0x240] = 0u;
  *&STACK[0x250] = 0u;
  *&STACK[0x260] = 0u;
  *&STACK[0x270] = 0u;
  *&STACK[0x280] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return swift_beginAccess();
}

__n128 SpatialPhoto.ComputeContext.init(commandBuffer:renderOutput:colorTexture:colorTextureFence:depthTexture:depthTextureFence:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  *a7 = a1;
  *(a7 + 16) = result;
  *(a7 + 32) = v8;
  *(a7 + 48) = v9;
  *(a7 + 64) = v10;
  *(a7 + 80) = v11;
  *(a7 + 88) = a3;
  *(a7 + 96) = a4;
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  return result;
}

uint64_t sub_1D8BC8314(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BC8354(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D8BC83E8()
{
  v0 = sub_1D8BF09E0();
  v2 = v1;
  if (v0 == sub_1D8BF09E0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D8BF0FD0();
  }

  return v5 & 1;
}

uint64_t sub_1D8BC846C(unsigned __int8 a1, char a2)
{
  v2 = 0x6C6174726F70;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x654C6C6174726F70;
    }

    else
    {
      v4 = 0x6C6172656E6567;
    }

    if (v3 == 1)
    {
      v5 = 0xEC00000079636167;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6C6174726F70;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x654C6C6174726F70;
    }

    else
    {
      v2 = 0x6C6172656E6567;
    }

    if (a2 == 1)
    {
      v6 = 0xEC00000079636167;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8BF0FD0();
  }

  return v8 & 1;
}

uint64_t sub_1D8BC8580()
{
  sub_1D8BF0A50();
}

uint64_t sub_1D8BC8610(uint64_t a1, unsigned __int8 a2)
{
  sub_1D8BF1070();
  MEMORY[0x1DA723030](a2);
  return sub_1D8BF1090();
}

uint64_t sub_1D8BC8654()
{
  sub_1D8BF1070();
  sub_1D8BF0A50();

  return sub_1D8BF1090();
}

float SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(_BYTE *a1, _BYTE *a2, float a3)
{
  v4 = a3;
  v5 = *a2;
  v7 = *(v3 + 12);
  v6 = *(v3 + 16);
  if (!*a1)
  {
    if (!*a2)
    {
      return v4;
    }

    if (v5 == 1)
    {
      v27 = a3 - v7;
      v28 = v6 - v7;
    }

    else
    {
      v27 = (1.0 / a3) - (1.0 / v7);
      v28 = (1.0 / v6) - (1.0 / v7);
    }

    return v27 / v28;
  }

  if (*a1 == 1)
  {
    if (!*a2)
    {
      return v7 + a3 * (v6 - v7);
    }

    if (v5 != 1)
    {
      OUTLINED_FUNCTION_0_5();
      v8 = OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_7_1(v16, v8, v9, v10, v11, v12, v13, v14, v15, v48, *v51, *&v51[4], 0, 1);
      OUTLINED_FUNCTION_0_5();
      v17 = OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_7_1(v25, v17, v18, v19, v20, v21, v22, v23, v24, v49, v52, v54, 2, 0);
      return v26;
    }

    return v4;
  }

  if (!*a2)
  {
    v27 = 1.0;
    v28 = (1.0 / v7) + (((1.0 / v6) - (1.0 / v7)) * v4);
    return v27 / v28;
  }

  if (v5 == 1)
  {
    OUTLINED_FUNCTION_0_5();
    v29 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_7_1(v37, v29, v30, v31, v32, v33, v34, v35, v36, v48, *v51, *&v51[4], 0, 2);
    OUTLINED_FUNCTION_0_5();
    v38 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_7_1(v46, v38, v39, v40, v41, v42, v43, v44, v45, v50, v53, v55, 1, 0);
    return v26;
  }

  return v4;
}

uint64_t SpatialPhoto.CameraController.Style.description.getter()
{
  v1 = 0x654C6C6174726F70;
  if (*v0 != 1)
  {
    v1 = 0x6C6172656E6567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6174726F70;
  }
}

uint64_t SpatialPhoto.CameraController.Style.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D8BF0E90();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D8BC8954@<X0>(uint64_t *a1@<X8>)
{
  result = SpatialPhoto.CameraController.Style.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SpatialPhoto.CameraController.Orientation.hashValue.getter()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

uint64_t SpatialPhoto.CameraController.Orientation.description.getter()
{
  if (*v0)
  {
    return 0x70616373646E616CLL;
  }

  else
  {
    return 0x7469617274726F70;
  }
}

uint64_t SpatialPhoto.CameraController.__allocating_init(style:)(char *a1)
{
  v2 = swift_allocObject();
  SpatialPhoto.CameraController.init(style:)(a1);
  return v2;
}

uint64_t SpatialPhoto.CameraController.init(style:)(char *a1)
{
  v2 = *a1;
  *(v1 + 16) = 0;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 513;
  type metadata accessor for SpatialPhoto.CameraParameters();
  swift_allocObject();
  *(v1 + 40) = sub_1D8BED144();
  *(v1 + 56) = 0;
  swift_unknownObjectWeakInit();
  static SpatialPhoto.CameraTechnique.none.getter(v1 + 80);
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  memcpy((v1 + 240), &SPProjectiveTransform3DIdentity, 0x80uLL);
  *(v1 + 368) = 0;
  if (qword_1ECAA3DF0 != -1)
  {
    swift_once();
  }

  if (qword_1ECAAA808)
  {

    v3 = sub_1D8BF0E90();

    if (v3 < 3)
    {
      v2 = v3;
    }
  }

  *(v1 + 64) = v2;
  return v1;
}

uint64_t sub_1D8BC8C64(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = 0x654C6C6174726F70;
  v4 = 0xEC00000079636167;
  if (*(v1 + 64) != 1)
  {
    v3 = 0x6C6172656E6567;
    v4 = 0xE700000000000000;
  }

  if (*(v1 + 64))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C6174726F70;
  }

  if (*(v1 + 64))
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x654C6C6174726F70;
  v8 = 0xEC00000079636167;
  if (v2 != 1)
  {
    v7 = 0x6C6172656E6567;
    v8 = 0xE700000000000000;
  }

  if (v2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C6174726F70;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
  }

  else
  {
    v12 = sub_1D8BF0FD0();

    if ((v12 & 1) == 0)
    {
      *(v1 + 64) = v2;

      return sub_1D8BCAA70();
    }
  }

  return result;
}

uint64_t (*sub_1D8BC8DC8(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 64);
  return sub_1D8BC8DF4;
}

uint64_t sub_1D8BC8DF4(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return sub_1D8BC8C64(v2);
}

void sub_1D8BC8E90(const void *a1)
{
  v6 = *(v1 + 80);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = sub_1D8BF0C70();
  *&v7[1] = v3;
  *(&v7[1] + 1) = v4;
  *v10.vector.f64 = v6;
  v7[0] = v6;
  SPRotation3DGetEulerAngles(v10, v7, v5, __dst);
  PFKTraceSpatialPhotoSetCameraTechnique();
  memcpy(__dst, (v1 + 80), 0x78uLL);
  memcpy(v7, a1, 0x78uLL);
  if ((static SpatialPhoto.CameraTechnique.== infix(_:_:)(__dst, v7) & 1) == 0)
  {
    memcpy((v1 + 80), a1, 0x78uLL);

    sub_1D8BCA52C();
  }
}

uint64_t sub_1D8BC8F74(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x80uLL);
  *a1 = v3;
  v3[15] = v1;
  memcpy(v3, (v1 + 80), 0x78uLL);
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC8FD8(const void **a1)
{
  v1 = *a1;
  memcpy(v2, *a1, 0x78uLL);
  sub_1D8BC8E90(v2);

  free(v1);
}

uint64_t sub_1D8BC9030@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8BC90F0(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D8BC90A4(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (v2 != *(v1 + 16))
  {
    return sub_1D8BCAA70();
  }

  return result;
}

uint64_t sub_1D8BC90F0@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_3();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_1D8BC9128(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_5_1();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v5[0] = v3;
  return sub_1D8BC90A4(v5);
}

uint64_t sub_1D8BC916C()
{
  v2 = OUTLINED_FUNCTION_12_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_6_1();
  *(v1 + 32) = *(v0 + 16);
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC91CC(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_1D8BC9128(v3);

  free(v2);
}

unint64_t sub_1D8BC922C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8BC92D0();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1D8BC9260(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  if ((a1 & 0x100000000) != 0)
  {
    if (*(v1 + 24))
    {
      return result;
    }

    return sub_1D8BCAA70();
  }

  if (*(v1 + 20) != *&a1)
  {
    v4 = 1;
  }

  if (v4)
  {
    return sub_1D8BCAA70();
  }

  return result;
}

uint64_t sub_1D8BC9300(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v3 = *(v1 + 20);
  *(v1 + 20) = a1;
  *(v1 + 24) = BYTE4(a1) & 1;
  v4 = OUTLINED_FUNCTION_4_1(v3);
  return sub_1D8BC9260(v4);
}

uint64_t sub_1D8BC934C()
{
  v2 = OUTLINED_FUNCTION_12_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_6_1();
  v4 = *(v0 + 24);
  *(v1 + 32) = *(v0 + 20);
  *(v1 + 36) = v4;
  return OUTLINED_FUNCTION_10_0();
}

unint64_t sub_1D8BC93CC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8BC94B4();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1D8BC9444(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  if ((a1 & 0x100000000) != 0)
  {
    if (*(v1 + 32))
    {
      return result;
    }

    return sub_1D8BCAA70();
  }

  if (*(v1 + 28) != *&a1)
  {
    v4 = 1;
  }

  if (v4)
  {
    return sub_1D8BCAA70();
  }

  return result;
}

uint64_t sub_1D8BC94E4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v3 = *(v1 + 28);
  *(v1 + 28) = a1;
  *(v1 + 32) = BYTE4(a1) & 1;
  v4 = OUTLINED_FUNCTION_4_1(v3);
  return sub_1D8BC9444(v4);
}

uint64_t sub_1D8BC9530()
{
  v2 = OUTLINED_FUNCTION_12_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_6_1();
  v4 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 28);
  *(v1 + 36) = v4;
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC95B0(uint64_t a1, uint64_t a2, void (*a3)(unint64_t))
{
  v3 = *a1;
  a3(*(*a1 + 32) | (*(*a1 + 36) << 32));

  free(v3);
}

uint64_t sub_1D8BC9608@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8BC96C8(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D8BC967C(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (v2 != *(v1 + 33))
  {
    return sub_1D8BCAA70();
  }

  return result;
}

uint64_t sub_1D8BC96C8@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_3();
  *a1 = *(v1 + 33);
  return result;
}

uint64_t sub_1D8BC9700(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_5_1();
  v3 = *(v1 + 33);
  *(v1 + 33) = v2;
  v5[0] = v3;
  return sub_1D8BC967C(v5);
}

uint64_t sub_1D8BC9744()
{
  v2 = OUTLINED_FUNCTION_12_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_6_1();
  *(v1 + 32) = *(v0 + 33);
  return OUTLINED_FUNCTION_10_0();
}

void sub_1D8BC97A4(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_1D8BC9700(v3);

  free(v2);
}

uint64_t sub_1D8BC981C(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_1D8BF0200();
}

uint64_t (*sub_1D8BC98C8())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D8BCBBD4;
}

uint64_t sub_1D8BC9924()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8BCAA70();
  }

  return result;
}

uint64_t sub_1D8BC997C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_1D8BC99E8(v2, v1);
}

uint64_t sub_1D8BC99E8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_1();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8BC9A3C(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 56);
  v3[3] = Strong;
  v3[4] = v5;
  return OUTLINED_FUNCTION_10_0();
}

uint64_t sub_1D8BC9ABC()
{
  strcpy(__dst, "eyePosition: ");
  HIWORD(__dst[0].f64[1]) = -4864;
  v1 = sub_1D8BF0B20();
  MEMORY[0x1DA722A10](v1);

  MEMORY[0x1DA722A10](*&__dst[0].f64[0], *&__dst[0].f64[1]);

  memcpy(__dst, (v0 + 32), sizeof(__dst));
  OUTLINED_FUNCTION_11_0(vandq_s8(vandq_s8(vceqzq_f64(__dst[3]), vceqzq_f64(__dst[1])), vandq_s8(vceqq_f64(__dst[5], xmmword_1D8BF7700), vceqq_f64(__dst[7], xmmword_1D8BF7710))), vandq_s8(vandq_s8(vceqq_f64(__dst[2], xmmword_1D8BF7710), vceqq_f64(__dst[0], xmmword_1D8BF7700)), vandq_s8(vceqzq_f64(__dst[4]), vceqzq_f64(__dst[6]))));
  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_1D8BF0DE0();

    v3 = sub_1D8BF0CC0();
    MEMORY[0x1DA722A10](v3);

    MEMORY[0x1DA722A10](0xD000000000000016, 0x80000001D8BF39E0);
  }

  if (*(v0 + 160) != 0.0)
  {
    sub_1D8BF0DE0();

    v4 = sub_1D8BF0AF0();
    MEMORY[0x1DA722A10](v4);

    MEMORY[0x1DA722A10](0xD000000000000017, 0x80000001D8BF3A00);
  }

  MEMORY[0x1DA722A10](32032, 0xE200000000000000);
  return 8315;
}

BOOL sub_1D8BC9CC0(float64x2_t *a1, float64x2_t *a2)
{
  v3 = a1->f64[0] == a2->f64[0] && a1->f64[1] == a2->f64[1] && a1[1].f64[0] == a2[1].f64[0];
  result = 0;
  if (v3)
  {
    OUTLINED_FUNCTION_11_0(vandq_s8(vandq_s8(vceqq_f64(a1[5], a2[5]), vceqq_f64(a1[3], a2[3])), vandq_s8(vceqq_f64(a1[7], a2[7]), vceqq_f64(a1[9], a2[9]))), vandq_s8(vandq_s8(vceqq_f64(a1[4], a2[4]), vceqq_f64(a1[2], a2[2])), vandq_s8(vceqq_f64(a1[6], a2[6]), vceqq_f64(a1[8], a2[8]))));
    if (v6 < 0 && *(v4 + 160) == *(v5 + 160))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D8BC9D78@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v67 = a3;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v68 = *(a1 + 2);
  v72 = *(a1 + 3);
  v73 = *(a1 + 4);
  v7 = *(a1 + 80);
  v52 = *v3;
  memcpy(__dst, a2, 0x151uLL);
  v8 = *(v3 + 40);
  v49 = *(v3 + 208);
  v50 = *(v3 + 224);
  v53 = *(v3 + 240);
  v54 = *(v3 + 256);
  v55 = *(v3 + 272);
  v56 = *(v3 + 288);
  v58 = *(v3 + 304);
  v59 = *(v3 + 320);
  v62 = *(v3 + 336);
  v64 = *(v3 + 352);
  v9 = *(v3 + 368);
  if (qword_1ECAA3D70 != -1)
  {
    swift_once();
  }

  if (byte_1ECAAA79C == 1)
  {
    OUTLINED_FUNCTION_6_1();
    if (*(v3 + 32) == 1)
    {
      OUTLINED_FUNCTION_16_0(__src);
      OUTLINED_FUNCTION_6_1();
      v10 = OUTLINED_FUNCTION_14_0();
      v11 = *&v10;
      if ((v10 & 0x100000000) != 0)
      {
        HIDWORD(v51) = 1;
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *(v3 + 28);
    }
  }

  else
  {
    v11 = *&dword_1ECAAA798;
  }

  HIDWORD(v51) = 0;
  v11 = OUTLINED_FUNCTION_10_1(v11);
LABEL_10:
  if (qword_1ECAA3D68 != -1)
  {
    swift_once();
  }

  if (byte_1ECAAA794 != 1)
  {
    LODWORD(v12) = dword_1ECAAA790;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_6_1();
  if (*(v3 + 24) != 1)
  {
    LODWORD(v12) = *(v3 + 20);
    goto LABEL_19;
  }

  if (!v7)
  {
    OUTLINED_FUNCTION_6_1();
    LODWORD(v12) = __dst[28];
    if (__dst[29])
    {
      goto LABEL_38;
    }

    v48 = *(v3 + 33);
    LODWORD(__src[0]) = __dst[28];
    sub_1D8BCADE4(__src, __dst, v48, v77);
    LODWORD(v12) = v77[0];
LABEL_19:
    v13 = *&v12;
    v14 = OUTLINED_FUNCTION_10_1(*&v12);
    LOBYTE(__src[0]) = 0;
    LOBYTE(v77[0]) = 2;
    v15 = 0;
    LODWORD(v12) = SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(__src, v77, v14);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_16_0(__src);
  OUTLINED_FUNCTION_6_1();
  v12 = OUTLINED_FUNCTION_14_0();
  if ((v12 & 0x100000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_38:
  v15 = 1;
  v14 = *&v12;
  v13 = *&v12;
LABEL_20:
  LOBYTE(__src[0]) = v15;
  sub_1D8BED1F0(v12 | (v15 << 32));
  v16 = v13;
  if (v15)
  {
    v16 = 0.0;
  }

  *(v8 + 48) = v16;
  v17 = v9;
  OUTLINED_FUNCTION_16_0(&__src[5]);
  *&__src[0] = v4;
  *(&__src[0] + 1) = v5;
  *&__src[1] = v6;
  __src[2] = v68;
  __src[3] = v72;
  __src[4] = v73;
  *(&__src[26] + 1) = v8;
  *&__src[27] = v17;
  if (*(v3 + 64))
  {
    if (*(v3 + 64) != 1)
    {
      v80 = &_s14descr1F54466F9O18GeneralCameraModelVN;
      v81 = &off_1F544A208;
      v36 = swift_allocObject();
      v79[0] = v36;
      *(v36 + 16) = v4;
      *(v36 + 24) = v5;
      *(v36 + 32) = v6;
      *(v36 + 48) = v68;
      *(v36 + 64) = v72;
      *(v36 + 80) = v73;
      *(v36 + 96) = v8;
      *(v36 + 104) = v17;
      OUTLINED_FUNCTION_16_0((v36 + 112));
      *(v36 + 452) = 0x3F80000000000000;
      sub_1D8BBE85C(__dst, v77);
      swift_retain_n();
      sub_1D8BBE85C(&__src[5], v77);
      goto LABEL_28;
    }

    memcpy(v77, __src, 0x1B4uLL);
    v80 = &_s14descr1F54466F9O17PortalCameraModelVN;
    v81 = &off_1F5449B40;
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_15_0(v18, v19, v20, v21, v22, v23, v24, v25, *&v49.f64[0], *&v49.f64[1], v50, *(&v50 + 1), v51, v52, *&v53.f64[0], *&v53.f64[1], *&v54.f64[0], *&v54.f64[1], *&v55.f64[0], *&v55.f64[1], *&v56.f64[0], *&v56.f64[1], *&v58.f64[0], *&v58.f64[1], *&v59.f64[0], *&v59.f64[1], *&v62.f64[0], *&v62.f64[1], *&v64.f64[0], *&v64.f64[1], v66, v67, v68, *(&v68 + 1), v72, *(&v72 + 1), v73, *(&v73 + 1), v74, v75, v76[0]);

    sub_1D8BCBB78(__src, v76);
    v26 = v8 + 16;
    v27 = 1;
  }

  else
  {
    memcpy(v77, __src, 0x1B4uLL);
    v80 = &_s14descr1F54466F9O17PortalCameraModelVN;
    v81 = &off_1F5449B40;
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_15_0(v28, v29, v30, v31, v32, v33, v34, v35, *&v49.f64[0], *&v49.f64[1], v50, *(&v50 + 1), v51, v52, *&v53.f64[0], *&v53.f64[1], *&v54.f64[0], *&v54.f64[1], *&v55.f64[0], *&v55.f64[1], *&v56.f64[0], *&v56.f64[1], *&v58.f64[0], *&v58.f64[1], *&v59.f64[0], *&v59.f64[1], *&v62.f64[0], *&v62.f64[1], *&v64.f64[0], *&v64.f64[1], v66, v67, v68, *(&v68 + 1), v72, *(&v72 + 1), v73, *(&v73 + 1), v74, v75, v76[0]);

    sub_1D8BCBB78(__src, v76);
    v26 = v8 + 16;
    v27 = 0;
  }

  sub_1D8BE368C(v77, v27, v26);
LABEL_28:
  v37.n128_u64[0] = sub_1D8BCA424(v79, vcvt_f32_f64(v49));
  v69 = v37;
  v38 = v80;
  v39 = v81;
  __swift_project_boxed_opaque_existential_1Tm(v79, v80);
  (v39[1])(v78, v38, v39, v69);
  *v40.i64 = sub_1D8BC8850(v53, v54);
  v70 = v40;
  *v41.i64 = sub_1D8BC8850(v55, v56);
  v57 = v41;
  *v42.i64 = sub_1D8BC8850(v58, v59);
  v60 = v42;
  *v43.i64 = sub_1D8BC8850(v62, v64);
  v44 = 0;
  v76[0] = v78[2];
  v76[1] = v78[3];
  v76[2] = v78[4];
  v76[3] = v78[5];
  memset(v77, 0, 64);
  while (v44 != 4)
  {
    v77[v44] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v70, COERCE_FLOAT(v76[v44])), v57, *&v76[v44], 1), v60, v76[v44], 2), v43, v76[v44], 3);
    ++v44;
  }

  v71 = v77[0];
  v63 = v77[2];
  v65 = v77[1];
  v61 = v77[3];
  sub_1D8BCBAD8(__src);
  v78[2] = v71;
  v78[3] = v65;
  v78[4] = v63;
  v78[5] = v61;
  if (v7)
  {
    v45 = v11;
  }

  else
  {
    v45 = v14;
  }

  v46 = BYTE4(v51);
  if (!v7)
  {
    v46 = v15;
  }

  *(&v78[1] + 2) = v45;
  BYTE12(v78[1]) = v46;
  v78[13] = v72;
  v78[14] = v73;
  memcpy(v67, v78, 0xF0uLL);
  return __swift_destroy_boxed_opaque_existential_1Tm(v79);
}

unint64_t SpatialPhoto.Scene.Metadata.zSplitNormalized(for:)(_BYTE *a1)
{
  v2 = *(v1 + 264);
  if (*a1)
  {
    v3 = *(v1 + 224);
    v4 = *(v1 + 256);
  }

  else
  {
    v3 = *(v1 + 152);
    v4 = *(v1 + 184);
  }

  if (*(v1 + 296) == 6)
  {
    v5 = 0;
  }

  else
  {
    v2 = 0;
    v5 = 1;
  }

  if ((v4 & 0xFF00) != 0x300 && v4 == 6)
  {
    v2 = v3;
    v5 = 0;
  }

  return v2 | (v5 << 32);
}

unint64_t SpatialPhoto.Scene.Metadata.zFocusNormalized(for:bias:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  memcpy(__dst, v2, 0x151uLL);
  v4 = __dst[28];
  v5 = __dst[29];
  if ((__dst[29] & 1) == 0)
  {
    v8 = __dst[28];
    sub_1D8BCADE4(&v8, __dst, v3, &v7);
    v4 = v7;
  }

  return v4 | ((v5 & 1) << 32);
}

float32x2_t sub_1D8BCA424(void *a1, float32x2_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v10 = (*(v9 + 24))(v8, v9);
  v11.f32[0] = v5;

  return sub_1D8BCA4E4(a2, v10, v11, v7);
}

float32x2_t sub_1D8BCA4E4(float32x2_t a1, float a2, float32x2_t a3, float32_t a4)
{
  v4 = vmul_n_f32(a1, a2);
  a3.f32[1] = a4;
  v5 = vdiv_f32(v4, a3);
  v6 = sqrtf(vaddv_f32(vmul_f32(v5, v5)));
  if (v6 <= 1.0)
  {
    v6 = 1.0;
  }

  return vmul_n_f32(v4, 1.0 / v6);
}

void sub_1D8BCA52C()
{
  PFKTraceSpatialPhotoCameraTechniqueChanged();
  memcpy(v1, (v0 + 80), sizeof(v1));
  sub_1D8BCA58C(v2);
  sub_1D8BCA774(v2);
}

void *sub_1D8BCA58C@<X0>(uint64_t x8_0@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 32);
  v9 = *(v1 + 96);
  v8 = *(v1 + 104);
  v11 = *(v1 + 80);
  v10 = *(v1 + 88);
  v12 = *(v1 + 112);
  if (qword_1ECAA3DE8 != -1)
  {
    v22 = *(v1 + 32);
    swift_once();
    v7 = v22;
  }

  if (byte_1ECAAA7F8)
  {
    memcpy(__dst, &SPProjectiveTransform3DIdentity, 0x80uLL);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0.0;
  }

  else
  {
    v21 = v7;
    v17 = sub_1D8BF0C70();
    __src[0].f64[0] = v6;
    __src[0].f64[1] = v5;
    __src[1].f64[0] = v4;
    __src[1].f64[1] = v3;
    SPRotation3DGetEulerAngles(v25, __src, v17, __dst);
    v18 = vmulq_f64(__dst[0], xmmword_1D8BF7720);
    v20 = vextq_s8(v18, v18, 8uLL);
    __dst[1].f64[0] = v9;
    __dst[1].f64[1] = v8;
    __dst[0].f64[0] = v11;
    __dst[0].f64[1] = v10;
    SPProjectiveTransform3DTranslate(&SPProjectiveTransform3DIdentity, __dst, __src);
    type metadata accessor for ProjectiveTransform3D(0);
    sub_1D8BF08B0();
    v16 = v12 * 2500.0;
    v15 = v21;
    v14 = v20.i64[1];
    v13 = v20.i64[0];
    memcpy(__dst, __src, 0x80uLL);
  }

  *x8_0 = v13;
  *(x8_0 + 8) = v14;
  *(x8_0 + 16) = v15;
  *(x8_0 + 24) = 0;
  result = memcpy((x8_0 + 32), __dst, 0x80uLL);
  *(x8_0 + 160) = v16;
  return result;
}

void sub_1D8BCA740(void *__src)
{
  memcpy((v1 + 80), __src, 0x78uLL);

  sub_1D8BCA52C();
}

void sub_1D8BCA774(float64x2_t *a1)
{
  v2 = v1;
  v5 = v1[13].f64[0];
  v6 = v1[13].f64[1];
  v4 = v1 + 13;
  v7 = a1->f64[0];
  v8 = a1->f64[1];
  v9 = a1[1].f64[0];
  if (v5 == a1->f64[0] && v6 == v8 && v4[1].f64[0] == v9)
  {
    OUTLINED_FUNCTION_11_0(vandq_s8(vandq_s8(vceqq_f64(v4[5], a1[5]), vceqq_f64(v2[16], a1[3])), vandq_s8(vceqq_f64(v4[7], a1[7]), vceqq_f64(v4[9], a1[9]))), vandq_s8(vandq_s8(vceqq_f64(v4[4], a1[4]), vceqq_f64(v2[15], a1[2])), vandq_s8(vceqq_f64(v4[6], a1[6]), vceqq_f64(v4[8], a1[8]))));
    if (v12 < 0 && v4[10].f64[0] == a1[10].f64[0])
    {
      goto LABEL_24;
    }
  }

  v13 = a1[10].f64[0];
  if (qword_1ECAA3DE0 != -1)
  {
    swift_once();
  }

  SPVector3DMake(round(v7 * *&qword_1ECAAA7F0) / *&qword_1ECAAA7F0, round(v8 * *&qword_1ECAAA7F0) / *&qword_1ECAAA7F0, round(v9 * *&qword_1ECAAA7F0) / *&qword_1ECAAA7F0, __src[0].f64);
  memcpy(&__src[2], &a1[2], 0x80uLL);
  __src[10].f64[0] = v13;
  if (sub_1D8BC9CC0(v4, __src))
  {
    if (qword_1ECAA3E70 != -1)
    {
      swift_once();
    }

    v14 = sub_1D8BF08A0();
    __swift_project_value_buffer(v14, qword_1ECAA4C08);

    oslog = sub_1D8BF0880();
    v15 = sub_1D8BF0B80();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      sub_1D8BF0B30();
      v18 = sub_1D8BF0B20();
      v20 = sub_1D8BBE6E8(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D8BAF000, oslog, v15, "Skipping rendering visually similar portal transforms, delta: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1DA723A30](v17, -1, -1);
      MEMORY[0x1DA723A30](v16, -1, -1);

LABEL_24:
      OUTLINED_FUNCTION_13_0();
      return;
    }

    OUTLINED_FUNCTION_13_0();
  }

  else
  {
    memcpy(v4, __src, 0xA8uLL);
    PFKTraceSpatialPhotoCameraTransformsChanged();
    OUTLINED_FUNCTION_13_0();

    sub_1D8BCAA70();
  }
}

uint64_t sub_1D8BCAA70()
{
  OUTLINED_FUNCTION_2_3();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SpatialPhoto.CameraController.deinit()
{

  sub_1D8BC4BCC(v0 + 48);
  return v0;
}

uint64_t SpatialPhoto.CameraController.__deallocating_deinit()
{

  sub_1D8BC4BCC(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D8BCAB54(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 56);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D8BCBEC8;
}

void sub_1D8BCABD4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t SpatialPhoto.PivotPointBias.description.getter()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 1701736302;
  }
}

unint64_t static SpatialPhoto.Attitude.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v12 = *(a1 + 16);
  v13 = v3;
  v11 = v2;
  v9 = v5;
  v10 = v6;
  v8 = v4;
  return SPRotation3DEqualToRotation(&v11, &v8);
}

uint64_t _s22PhotosSpatialMediaCore0B5PhotoO14PivotPointBiasO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

void sub_1D8BCADE4(float *a1@<X0>, const void *a2@<X1>, char a3@<W2>, float *a4@<X8>)
{
  v7 = *a1;
  memcpy(__dst, a2, 0x151uLL);
  if (qword_1ECAA3D60 != -1)
  {
    swift_once();
  }

  v14 = 2;
  v13 = 0;
  v8 = SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(&v14, &v13, *&dword_1ECAAA78C);
  memcpy(__dst, a2, 0x151uLL);
  if (qword_1ECAA3D58 != -1)
  {
    swift_once();
  }

  v14 = 2;
  v13 = 0;
  v9 = SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(&v14, &v13, *&dword_1ECAAA788);
  __dst[0] = 1;
  v14 = 0;
  v10 = SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(__dst, &v14, v7);
  if (a3)
  {
    if (a3 == 1)
    {
      if (qword_1ECAA3D80 != -1)
      {
        swift_once();
      }

      v11 = &dword_1ECAAA7A4;
    }

    else
    {
      if (qword_1ECAA3D78 != -1)
      {
        swift_once();
      }

      v11 = &dword_1ECAAA7A0;
    }

    v10 = v10 * *v11;
  }

  if (v8 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= v9)
  {
    v12 = v9;
  }

  __dst[0] = 0;
  v14 = 1;
  *a4 = SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(__dst, &v14, v12);
}

void SPRotation3DGetEulerAngles(SPRotation3D a1@<0:Q0, 16:Q1>, uint64_t a2@<X0>, int a3@<W1>, uint64_t a4@<X8>)
{
  _Q1 = *a2;
  if (a3 == 2)
  {
    v7 = *a2;
    _Q1.i64[0] = *(a2 + 16);
  }

  else if (a3 == 1)
  {
    v7 = vextq_s8(_Q1, *(a2 + 16), 8uLL);
  }

  else
  {
    v7 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v8 = *(a2 + 24);
  v26 = v7;
  _D9 = v7.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D1, V4.D[1] }

  v27 = *_Q1.i64;
  *&v16 = atan2(_D0 + _D0, (vmulq_f64(v7, v7).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v25 = v16;
  v17 = v8 * v26.f64[0] - _D9 * v27 + v8 * v26.f64[0] - _D9 * v27;
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  if (v17 < -1.0)
  {
    v17 = -1.0;
  }

  v24 = asin(v17);
  _V2.D[1] = v26.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v22 = atan2f(*&_D0, *&_D1);
  if (a3 == 2)
  {
    *v23.i64 = v24;
    v23.i64[1] = v22;
    v22 = v25;
  }

  else if (a3 == 1)
  {
    v23.i64[0] = v25;
    *&v23.i64[1] = v24;
  }

  else
  {
    v23 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v22 = 0x7FF8000000000000;
  }

  *a4 = v23;
  *(a4 + 16) = v22;
  *(a4 + 32) = a3;
}

unint64_t SPRotation3DEqualToRotation(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = vandq_s8(vceqq_f64(*a1, *a2), vceqq_f64(v2, v3));
  if ((vandq_s8(v4, vdupq_laneq_s64(v4, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v5 = vandq_s8(vceqq_f64(*a1, vnegq_f64(*a2)), vceqq_f64(v2, vnegq_f64(v3)));
  return vandq_s8(v5, vdupq_laneq_s64(v5, 1)).u64[0] >> 63;
}

unint64_t sub_1D8BCB1E0()
{
  result = qword_1ECAA47E0;
  if (!qword_1ECAA47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA47E0);
  }

  return result;
}

unint64_t sub_1D8BCB268()
{
  result = qword_1ECAA47F8;
  if (!qword_1ECAA47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA47F8);
  }

  return result;
}

unint64_t sub_1D8BCB2F0()
{
  result = qword_1ECAA4810;
  if (!qword_1ECAA4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4810);
  }

  return result;
}

uint64_t sub_1D8BCB374(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1D8BCB3CC()
{
  result = qword_1ECAA4828;
  if (!qword_1ECAA4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4828);
  }

  return result;
}

_BYTE *_s14descr1F54466F9O16CameraControllerC11OrientationOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8BCB940(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D8BCB96C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8BCBA4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BCBA6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 168) = v3;
  return result;
}

void SPVector3DMake(double a1@<D0>, double a2@<D1>, double a3@<D2>, double *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 15);
}

uint64_t SPProjectiveTransform3DTranslate@<X0>(uint64_t result@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = *a2;
  __asm { FMOV            V18.2D, #1.0 }

  _Q18.f64[0] = a2[1].f64[0];
  v9 = *(MEMORY[0x1E69E9B08] + 16);
  v10 = *(MEMORY[0x1E69E9B08] + 32);
  v11 = *(MEMORY[0x1E69E9B08] + 48);
  v12 = *(MEMORY[0x1E69E9B08] + 64);
  v13 = *(MEMORY[0x1E69E9B08] + 80);
  v14 = *result;
  v15 = *(result + 16);
  v16 = *(result + 32);
  v17 = *(result + 48);
  v18 = *(result + 64);
  v19 = *(result + 80);
  v21 = *(result + 96);
  v20 = *(result + 112);
  v22 = xmmword_1D8BF7710;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(vzip2q_s64(v15, v17)), vceqq_f64(vzip2q_s64(v19, v20), xmmword_1D8BF7710))))))
  {
    goto LABEL_6;
  }

  v23 = vandq_s8(vceqq_f64(v14, xmmword_1D8BF7700), vceqzq_f64(v15));
  if ((vandq_s8(v23, vdupq_laneq_s64(v23, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    v24 = vandq_s8(vceqq_f64(v16, xmmword_1D8BF7710), vceqzq_f64(v17));
    if ((vandq_s8(v24, vdupq_laneq_s64(v24, 1)).u64[0] & 0x8000000000000000) != 0)
    {
      v25 = vandq_s8(vceqzq_f64(v18), vceqq_f64(v19, xmmword_1D8BF7700));
      if ((vandq_s8(v25, vdupq_laneq_s64(v25, 1)).u64[0] & 0x8000000000000000) != 0)
      {
        _VF = 0;
        if (v9.f64[1] == 0.0)
        {
          v38 = vmovn_s64(vceqzq_f64(vzip2q_s64(v13, v11)));
          if (v38.i8[4] & 1) != 0 && (v38.i8[0])
          {
            v39 = vandq_s8(vceqq_f64(*MEMORY[0x1E69E9B08], xmmword_1D8BF7700), vceqzq_f64(v9));
            if ((vandq_s8(v39, vdupq_laneq_s64(v39, 1)).u64[0] & 0x8000000000000000) != 0)
            {
              v40 = vandq_s8(vceqq_f64(v10, xmmword_1D8BF7710), vceqzq_f64(v11));
              if ((vandq_s8(v40, vdupq_laneq_s64(v40, 1)).u64[0] & 0x8000000000000000) != 0)
              {
                v41 = vandq_s8(vceqzq_f64(v12), vceqq_f64(v13, xmmword_1D8BF7700));
                if ((vandq_s8(v41, vdupq_laneq_s64(v41, 1)).u64[0] & 0x8000000000000000) != 0)
                {
                  v31 = vaddq_f64(v3, v21);
                  *&v22 = *&vaddq_f64(_Q18, v20);
                  *(&v22 + 1) = *(result + 120);
                  goto LABEL_9;
                }
              }
            }
          }
        }
      }
    }
  }

  v26 = vceqzq_f64(v21);
  if ((v26.i64[0] & v26.i64[1] & vceqzq_f64(v20).u64[0] & 0x8000000000000000) != 0) != _VF && v9.f64[1] == 0.0 && (v32 = vmovn_s64(vceqzq_f64(vzip2q_s64(v13, v11))), (v32.i8[4]) && (v32.i8[0] & 1) != 0 && (v33 = vceqzq_f64(v3), (v33.i64[0] & v33.i64[1] & vceqzq_f64(_Q18).u64[0] & 0x8000000000000000) != 0))
  {
    v34 = 0;
    v42 = *MEMORY[0x1E69E9B08];
    v43 = v9;
    v44 = v10;
    v45 = v11;
    v46 = v12;
    v47 = v13;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    do
    {
      v36 = *(&v42 + v34);
      v35 = *(&v42 + v34 + 16);
      v37 = (&v50 + v34);
      *v37 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v14, v36.f64[0]), v16, v36, 1), v18, *&v35);
      v37[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v15, v36.f64[0]), v17, v36, 1), v19, *&v35);
      v34 += 32;
    }

    while (v34 != 96);
    v14 = v50;
    v16 = v52;
    v15 = *&v51.f64[0];
    v18 = v54;
    v17 = *&v53.f64[0];
    v19 = *&v55.f64[0];
    v31 = 0uLL;
  }

  else
  {
LABEL_6:
    v27 = 0;
    v42 = *MEMORY[0x1E69E9B08];
    v43 = v9;
    v44 = v10;
    v45 = v11;
    v46 = v12;
    v47 = v13;
    v48 = v3;
    v49 = _Q18;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    do
    {
      v29 = *(&v42 + v27);
      v28 = *(&v42 + v27 + 16);
      v30 = (&v50 + v27);
      *v30 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v14, v29.f64[0]), v16, v29, 1), v18, v28.f64[0]), v21, v28, 1);
      v30[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v15, v29.f64[0]), v17, v29, 1), v19, v28.f64[0]), v20, v28, 1);
      v27 += 32;
    }

    while (v27 != 128);
    v14 = v50;
    v15 = v51;
    v16 = v52;
    v17 = v53;
    v18 = v54;
    v19 = v55;
    v31 = v56;
    v22 = v57;
  }

LABEL_9:
  *a3 = v14;
  a3[1] = v15;
  a3[2] = v16;
  a3[3] = v17;
  a3[4] = v18;
  a3[5] = v19;
  a3[6] = v31;
  a3[7] = v22;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_1(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  a1.n128_u32[0] = v15;

  return SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(&a14, &a13, a1);
}

void *OUTLINED_FUNCTION_9_1()
{

  return memcpy((v1 + 20), (v0 + 20), 0x13DuLL);
}

float OUTLINED_FUNCTION_10_1(float a1)
{
  LOBYTE(STACK[0x5A0]) = 1;
  LOBYTE(STACK[0x2C0]) = 0;

  return SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(&STACK[0x5A0], &STACK[0x2C0], a1);
}

double OUTLINED_FUNCTION_11_0(int8x16_t a1, int8x16_t a2)
{
  v2 = vandq_s8(a2, a1);
  *&result = vandq_s8(v2, vdupq_laneq_s64(v2, 1)).u64[0];
  return result;
}

unint64_t OUTLINED_FUNCTION_14_0()
{
  LOBYTE(STACK[0x2C0]) = *(v0 + 16);

  return SpatialPhoto.Scene.Metadata.zSplitNormalized(for:)(&STACK[0x2C0]);
}

uint64_t OUTLINED_FUNCTION_15_0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  STACK[0x578] = a1;

  return sub_1D8BBE85C(&STACK[0x7C0], &a41);
}

void *OUTLINED_FUNCTION_16_0(void *a1)
{

  return memcpy(a1, &STACK[0x7C0], 0x151uLL);
}

float static SpatialPhoto.predictPivotPointDepth(for:normalizedSearchRect:sceneAnalysis:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_1ECAA3D68 != -1)
  {
    swift_once();
  }

  if (byte_1ECAAA794)
  {
    static SpatialPhoto.predictSalientDepth(for:normalizedSearchRect:sceneAnalysis:)(a1, a2, a3, v17);
    if (!v3)
    {
      v5 = *v17;
      sub_1D8BCF208(v17[1], v17[2], v17[3]);
    }
  }

  else
  {
    v5 = *&dword_1ECAAA790;
    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v9 = sub_1D8BF08A0();
    __swift_project_value_buffer(v9, qword_1EE320A70);

    v10 = sub_1D8BF0880();
    v11 = sub_1D8BF0BB0();

    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_24_0();
      v12 = OUTLINED_FUNCTION_19_0();
      v17[0] = v12;
      *v4 = 136446466;
      v13 = sub_1D8BF10C0();
      v15 = sub_1D8BBE6E8(v13, v14, v17);

      *(v4 + 4) = v15;
      *(v4 + 12) = 2048;
      *(v4 + 14) = v5;
      _os_log_impl(&dword_1D8BAF000, v10, v11, "predictPivotPointDepth[%{public}s] SpatialPhotoCameraOverridePivotPoint set to %f for analysis", v4, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_10_2();
    }
  }

  return v5;
}

Swift::Float __swiftcall SpatialPhoto.SaliencyMap.saliencyWeight(at:)(CGPoint at)
{
  if (__OFSUB__(*v1, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  at.x = (*v1 - 1) * at.x;
  if (at.x <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (at.x >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(v1[1], 1))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_39_0();
  if (v8 > v9 || (v5 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (v6 <= v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (at.x <= 0)
  {
    if ((x & 0x8000000000000000) == 0)
    {
      x = 0;
    }
  }

  else if (x >= at.x)
  {
    x = at.x;
  }

  v10 = v6 & ~(v6 >> 63);
  if (v4 < v10)
  {
    v10 = v4;
  }

  v11 = v10 * v3;
  if ((v10 * v3) >> 64 != (v10 * v3) >> 63)
  {
    goto LABEL_29;
  }

  v12 = __OFADD__(v11, x);
  v13 = v11 + x;
  if (v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v13 >= *(v1[2] + 16))
  {
LABEL_32:
    __break(1u);
    return *&at.x;
  }

  *&at.x = OUTLINED_FUNCTION_31_0(v13);
  return *&at.x;
}

Swift::Float __swiftcall SpatialPhoto.SaliencyMap.depth(at:)(CGPoint at)
{
  if (__OFSUB__(*v1, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  at.x = (*v1 - 1) * at.x;
  if (at.x <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (at.x >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(v1[1], 1))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_39_0();
  if (v8 > v9 || (v5 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (v6 <= v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (at.x <= 0)
  {
    if ((x & 0x8000000000000000) == 0)
    {
      x = 0;
    }
  }

  else if (x >= at.x)
  {
    x = at.x;
  }

  v10 = v6 & ~(v6 >> 63);
  if (v4 < v10)
  {
    v10 = v4;
  }

  v11 = v10 * v3;
  if ((v10 * v3) >> 64 != (v10 * v3) >> 63)
  {
    goto LABEL_29;
  }

  v12 = __OFADD__(v11, x);
  v13 = v11 + x;
  if (v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v13 >= *(v1[3] + 16))
  {
LABEL_32:
    __break(1u);
    return *&at.x;
  }

  *&at.x = OUTLINED_FUNCTION_31_0(v13);
  return *&at.x;
}

void SpatialPhoto.SaliencyMap.depthRange(for:)(double a1, double a2, double a3, double a4)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[3];
  v32 = CGRectIntersection(*&a1, *MEMORY[0x1E69BDDA8]);
  MinX = CGRectGetMinX(v32);
  v9 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v10 = MinX * v9;
  OUTLINED_FUNCTION_3_4();
  if (!(v12 ^ v13 | v11))
  {
    goto LABEL_55;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v33.origin.x = OUTLINED_FUNCTION_1_2();
  v14 = CGRectGetMaxX(v33) * v9;
  OUTLINED_FUNCTION_3_4();
  if (!(v12 ^ v13 | v11))
  {
    goto LABEL_58;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v34.origin.x = OUTLINED_FUNCTION_1_2();
  MinY = CGRectGetMinY(v34);
  v13 = __OFSUB__(v6, 1);
  v16 = v6 - 1;
  if (v13)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v17 = MinY * v16;
  OUTLINED_FUNCTION_3_4();
  if (!(v12 ^ v13 | v11))
  {
    goto LABEL_62;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v35.origin.x = OUTLINED_FUNCTION_1_2();
  CGRectGetMaxY(v35);
  OUTLINED_FUNCTION_2_4();
  if (!(v12 ^ v13 | v11))
  {
    goto LABEL_65;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_4_2();
  if (!v12)
  {
    goto LABEL_67;
  }

  v20 = v17;
  v21 = v19;
  if (v19 < v17)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v14 >= v10)
  {
    v23 = 3.4028e38;
    v24 = -3.4028e38;
LABEL_23:
    if ((v20 & ~(v20 >> 63)) >= v16)
    {
      v25 = v16;
    }

    else
    {
      v25 = v20 & ~(v20 >> 63);
    }

    v26 = v25 * v5;
    v27 = (v25 * v5) >> 64 != (v25 * v5) >> 63;
    v28 = v10;
    while (1)
    {
      if (v28 <= 0)
      {
        v29 = v5 - 1;
        if ((v9 & 0x8000000000000000) == 0)
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = v9 >= v28 ? v28 : v5 - 1;
      }

      if (v27)
      {
        break;
      }

      v13 = __OFADD__(v26, v29);
      v30 = v26 + v29;
      if (v13)
      {
        goto LABEL_51;
      }

      if (v30 >= *(v7 + 16))
      {
        goto LABEL_52;
      }

      v22 = v7 + 32;
      v31 = *(v7 + 32 + 4 * v30);
      if (v31 > 0.0)
      {
        if (v31 < v23)
        {
          v23 = *(v22 + 4 * v30);
        }

        if (v24 <= v31)
        {
          v24 = *(v22 + 4 * v30);
        }
      }

      if (v14 == v28)
      {
        if (v20 == v21)
        {
          return;
        }

        v13 = __OFADD__(v20++, 1);
        if (v13)
        {
          __break(1u);
          return;
        }

        goto LABEL_23;
      }

      v13 = __OFADD__(v28++, 1);
      if (v13)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_69:
  __break(1u);
}

void SpatialPhoto.SaliencyMap.harmonicMeanSalientDepth.getter()
{
  v1 = *(v0 + 1);
  v2 = *v0 * v1;
  if ((*v0 * v1) >> 64 != v2 >> 63)
  {
    goto LABEL_15;
  }

  if (v2 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (v2)
  {
    v3 = *(v0 + 2);
    if (v2 <= *(v3 + 16))
    {
      v4 = 0;
      v5 = *(v0 + 3);
      v6 = v3 + 32;
      v7 = 0.0;
      v8 = 0.0;
      while (1)
      {
        v9 = *(v6 + 4 * v4);
        if (v0[10] * 0.9 < v9)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_14:
            __break(1u);
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_14;
          }

          v10 = *(v5 + 32 + 4 * v4);
          if (v10 > 0.0)
          {
            v8 = v8 + v9 / v10;
            v7 = v7 + v9;
          }
        }

        if (v2 == ++v4)
        {
          return;
        }
      }
    }

    goto LABEL_17;
  }
}

void static SpatialPhoto.predictSalientDepth(for:normalizedSearchRect:sceneAnalysis:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4;
  v255 = a4;
  v263[1] = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v257 = a2;
  v259 = sub_1D8BF07F0();
  v12 = *(v259 - 8);
  v13 = MEMORY[0x1EEE9AC00](v259);
  v258 = &v233 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v233 - v15;
  if (qword_1ECAA3E78 != -1)
  {
    swift_once();
  }

  v17 = sub_1D8BF0820();
  __swift_project_value_buffer(v17, qword_1ECAA4C20);
  sub_1D8BF0810();

  sub_1D8BF07C0();

  v18 = sub_1D8BF0810();
  LODWORD(v256) = sub_1D8BF0C90();

  v19 = sub_1D8BF0CF0();
  v20 = MEMORY[0x1E69E7CA0];
  if (v19)
  {
    v254 = v4;
    OUTLINED_FUNCTION_24_0();
    v253 = OUTLINED_FUNCTION_20_0();
    v261 = v253;
    *v4 = 136315394;
    v263[0] = a1;
    v21 = sub_1D8BF10C0();
    OUTLINED_FUNCTION_28_0(v21, v22);
    OUTLINED_FUNCTION_29_0();
    *(v4 + 1) = v20;
    *(v4 + 6) = 2082;
    if (v257[4])
    {
      v23 = 7104878;
      v24 = 0xE300000000000000;
    }

    else
    {
      v25 = objc_alloc(MEMORY[0x1E696AEC0]);
      OUTLINED_FUNCTION_9_2();
      v27 = a1;
      v28 = a3;
      v29 = [v26 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}"];
      v23 = sub_1D8BF09E0();
      v24 = v30;

      a3 = v28;
      a1 = v27;
    }

    sub_1D8BBE6E8(v23, v24, &v261);
    OUTLINED_FUNCTION_29_0();
    *(v4 + 14) = v23;
    v31 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v18, v256, v31, "PredictSalientDepth", "scene:%s normalizedSearchRect:%{public}s", v4, 0x16u);
    OUTLINED_FUNCTION_12_1(&v266);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();

    v5 = v254;
  }

  else
  {
  }

  v32 = v259;
  (*(v12 + 16))(v258, v16, v259);
  sub_1D8BF0860();
  swift_allocObject();
  v33 = sub_1D8BF0850();
  (*(v12 + 8))(v16, v32);
  sub_1D8BCE9E0(a1);
  v34 = v5;
  if (v5)
  {
    goto LABEL_214;
  }

  type metadata accessor for SpatialPhoto.CaptureManager();
  v261 = 0;
  v262 = 0xE000000000000000;
  sub_1D8BF0DE0();

  v261 = 0xD000000000000014;
  v262 = 0x80000001D8BF3A20;
  v263[0] = a1;
  v35 = sub_1D8BF10C0();
  v36 = a1;
  MEMORY[0x1DA722A10](v35);

  MEMORY[0x1DA722A10](93, 0xE100000000000000);
  v37 = static SpatialPhoto.CaptureManager.start(_:device:)(v261, v262);

  v252 = v36;
  if (!a3)
  {
    type metadata accessor for SpatialPhoto.SceneAnalysis();

    a3 = SpatialPhoto.SceneAnalysis.__allocating_init(scene:size:renderScale:)(v40, 0, 0, 1, 1.0);

    goto LABEL_15;
  }

  v38 = sub_1D8BEBB2C();
  if (!v38)
  {

LABEL_17:
    sub_1D8BCF4AC();
    v34 = OUTLINED_FUNCTION_65();
    *v41 = 6;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = 1;
    swift_willThrow();

    LODWORD(v259) = 0;
    if (qword_1EE320A68 != -1)
    {
      goto LABEL_137;
    }

    goto LABEL_18;
  }

  v39 = *(v38 + 66);

  if (v39 != 1)
  {
    goto LABEL_17;
  }

  sub_1D8BEB168();
  v34 = 0;
LABEL_15:
  LOBYTE(v261) = 1;
  sub_1D8BEB5C4(&v261);
  sub_1D8BEB6E8();

  v61 = sub_1D8BEBA14();
  if (!v61)
  {
    goto LABEL_250;
  }

  v62 = v61;
  v63 = [v61 width];
  v64 = [v62 height];
  if ((v63 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_207;
  }

  v65 = v64;
  v66 = 4 * v63 * v64;
  v259 = 4 * v63;
  if ((4 * v63 * v64) >> 64 != v66 >> 63)
  {
LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

  v248 = v63 * v64;
  if ((v63 * v64) >> 64 != (v63 * v64) >> 63)
  {
LABEL_208:
    __break(1u);
LABEL_209:
    swift_once();
    goto LABEL_32;
  }

  v256 = v37;
  v67 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithLength_];
  if (!v67)
  {
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v68 = v67;
  v69 = [v67 mutableBytes];
  MTLRegionMake2D(v63, v65, &v261);
  v253 = v62;
  [v62 getBytes:v69 bytesPerRow:v259 fromRegion:&v261 mipmapLevel:0];
  v70 = v68;
  v254 = v68;
  v249 = [v70 bytes];
  v71 = sub_1D8BEB960();
  if (!v71)
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
    return;
  }

  v72 = v71;
  v250 = v65;
  v251 = v63;
  type metadata accessor for VNImageOption(0);
  sub_1D8BCF38C();
  v37 = v72;
  v62 = sub_1D8BF0980();
  if (qword_1ECAA3E60 != -1)
  {
    goto LABEL_209;
  }

LABEL_32:
  v73 = sub_1D8BEE034();
  v74 = objc_allocWithZone(MEMORY[0x1E69845B8]);
  v75 = sub_1D8BCF24C(v37, v62, v73);
  v76 = [objc_allocWithZone(MEMORY[0x1E6984540]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4830);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1D8BF7CB0;
  *(v77 + 32) = v76;
  sub_1D8BCF84C(0, &qword_1ECAA4838);
  v78 = v76;
  v79 = v75;
  v80 = sub_1D8BF0AA0();

  v261 = 0;
  v81 = [v75 performRequests:v80 error:&v261];

  Height = v261;
  if (!v81)
  {
    v96 = v261;
    sub_1D8BEFEA0();

    swift_willThrow();

    OUTLINED_FUNCTION_27_0();

    OUTLINED_FUNCTION_40_0();
    goto LABEL_50;
  }

  v247 = v37;
  v83 = v261;
  v84 = sub_1D8BCF43C(v78);
  v85 = v78;
  v246 = v79;
  if (!v84)
  {
LABEL_44:
    if (qword_1EE320A68 != -1)
    {
      goto LABEL_231;
    }

    goto LABEL_45;
  }

  Height = v84;
  if (!sub_1D8BCF2EC(v84))
  {

    goto LABEL_44;
  }

  if ((Height & 0xC000000000000001) != 0)
  {
    goto LABEL_234;
  }

  if (!*((Height & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
    goto LABEL_239;
  }

  v89 = *(Height + 32);
  while (1)
  {
    OUTLINED_FUNCTION_29_0();
    v90 = [v78 pixelBuffer];
    Height = CVPixelBufferGetHeight(v90);
    Width = CVPixelBufferGetWidth(v90);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v90);
    CVPixelBufferLockBaseAddress(v90, 1uLL);
    v244 = v90;
    BaseAddress = CVPixelBufferGetBaseAddress(v90);
    if (!BaseAddress)
    {
      if (qword_1EE320A68 == -1)
      {
LABEL_53:
        v106 = sub_1D8BF08A0();
        __swift_project_value_buffer(v106, qword_1EE320A70);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_12_1(v107);

        v108 = sub_1D8BF0880();
        sub_1D8BF0B90();

        if (OUTLINED_FUNCTION_41_0())
        {
          swift_slowAlloc();
          OUTLINED_FUNCTION_37_0();
          v109 = OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_34_0(v109);
          *v85 = 136446210;
          v263[0] = v34;
          Height = v263;
          v110 = sub_1D8BF10C0();
          OUTLINED_FUNCTION_28_0(v110, v111);
          OUTLINED_FUNCTION_33_0();
          *(v85 + 4) = a3;
          OUTLINED_FUNCTION_13_1(&dword_1D8BAF000, v112, v113, "predictSalientDepth[%{public}s] cannot get raw pointer for saliency map buffer.");
          __swift_destroy_boxed_opaque_existential_1Tm(v78);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_38_0();
          OUTLINED_FUNCTION_16_1();
          OUTLINED_FUNCTION_11_1();

          OUTLINED_FUNCTION_15_1();
        }

        else
        {

          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_16_1();
        }

        sub_1D8BCF4AC();
        OUTLINED_FUNCTION_65();
        *v139 = 1;
        *(v139 + 8) = 0;
        *(v139 + 16) = 0;
        *(v139 + 24) = 0;
        *(v139 + 32) = 1;
        swift_willThrow();
        OUTLINED_FUNCTION_14_1();

        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_30_0();

        goto LABEL_49;
      }

LABEL_239:
      OUTLINED_FUNCTION_0_6();
      goto LABEL_53;
    }

    v93 = BytesPerRow / 4;
    if ((Height * (BytesPerRow / 4)) >> 64 != (Height * (BytesPerRow / 4)) >> 63)
    {
      goto LABEL_236;
    }

    v94 = BaseAddress;
    v95 = *(v257 + 32);
    v242 = v93;
    if ((v95 & 1) != 0 || (v267.origin.x = OUTLINED_FUNCTION_1_2(), CGRectIsNull(v267)))
    {
      OUTLINED_FUNCTION_8_1();
    }

    else
    {
      v268.origin.x = OUTLINED_FUNCTION_1_2();
      CGRectIntersection(v268, v276);
      OUTLINED_FUNCTION_1_2();
      if (!PFRectIsValid() || (v269.origin.x = OUTLINED_FUNCTION_5_2(), CGRectIsNull(v269)) || (v270.origin.x = OUTLINED_FUNCTION_5_2(), CGRectIsInfinite(v270)) || (v271.origin.x = OUTLINED_FUNCTION_5_2(), CGRectIsEmpty(v271)))
      {
        OUTLINED_FUNCTION_37_0();
        if (qword_1EE320A68 != -1)
        {
          goto LABEL_243;
        }

        goto LABEL_90;
      }

      v240 = v95;
      v241 = v34;
      v257 = v33;
      v258 = a3;
      OUTLINED_FUNCTION_18_0();
      v272.origin.x = OUTLINED_FUNCTION_1_2();
      CGRectGetMinY(v272);
      OUTLINED_FUNCTION_2_4();
      if (!(v197 ^ v198 | v196))
      {
        goto LABEL_253;
      }

      if (v195 <= -9.22337204e18)
      {
        goto LABEL_254;
      }

      OUTLINED_FUNCTION_4_2();
      if (!v197)
      {
        goto LABEL_255;
      }

      OUTLINED_FUNCTION_18_0();
      if (__OFSUB__(v199, 1))
      {
        goto LABEL_256;
      }

      OUTLINED_FUNCTION_6_2();
      if (v197 != v198)
      {
        v33 = v201;
      }

      else
      {
        v33 = v200;
      }

      OUTLINED_FUNCTION_17_0();
      v273.origin.x = OUTLINED_FUNCTION_1_2();
      CGRectGetMinX(v273);
      OUTLINED_FUNCTION_2_4();
      if (!(v197 ^ v198 | v196))
      {
        goto LABEL_257;
      }

      if (v202 <= -9.22337204e18)
      {
        goto LABEL_258;
      }

      OUTLINED_FUNCTION_4_2();
      if (!v197)
      {
        goto LABEL_259;
      }

      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_6_2();
      if (v197 != v198)
      {
        v34 = v204;
      }

      else
      {
        v34 = v203;
      }

      v274.origin.x = OUTLINED_FUNCTION_1_2();
      CGRectGetHeight(v274);
      OUTLINED_FUNCTION_2_4();
      if (!(v197 ^ v198 | v196))
      {
        goto LABEL_260;
      }

      if (v205 <= -9.22337204e18)
      {
        goto LABEL_261;
      }

      OUTLINED_FUNCTION_4_2();
      if (!v197)
      {
        goto LABEL_262;
      }

      OUTLINED_FUNCTION_18_0();
      if (__OFSUB__(v206, v33))
      {
        goto LABEL_263;
      }

      OUTLINED_FUNCTION_6_2();
      if (v197 != v198)
      {
        v209 = v208;
      }

      else
      {
        v209 = v207;
      }

      v275.origin.x = OUTLINED_FUNCTION_1_2();
      CGRectGetWidth(v275);
      OUTLINED_FUNCTION_2_4();
      if (!(v197 ^ v198 | v196))
      {
        goto LABEL_264;
      }

      if (v210 <= -9.22337204e18)
      {
        goto LABEL_265;
      }

      OUTLINED_FUNCTION_4_2();
      if (!v197)
      {
        goto LABEL_266;
      }

      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_6_2();
      a3 = v197 != v198 ? v212 : v211;
      LODWORD(v95) = v240;
      v114 = v209;
    }

    v37 = v33 + v114;
    if (__OFADD__(v33, v114))
    {
      goto LABEL_237;
    }

    if (v37 < v33)
    {
      goto LABEL_238;
    }

    OUTLINED_FUNCTION_17_0();
    v117 = v116 / v115;
    OUTLINED_FUNCTION_18_0();
    v120 = 0.0;
    v122 = v121 / v119;
    if (v33 != v37)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v123 = 0.0;
      v124 = v33;
      do
      {
        if (v124 >= v37)
        {
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
          goto LABEL_223;
        }

        v125 = v122 * v124;
        if (COERCE_INT(fabs(v125)) > 2139095039)
        {
          goto LABEL_216;
        }

        if (v125 <= -9.2234e18)
        {
          goto LABEL_217;
        }

        if (v125 >= 9.2234e18)
        {
          goto LABEL_218;
        }

        if (a3)
        {
          v126 = v125 * v118;
          v127 = a3;
          v128 = v34;
          if ((v125 * v118) >> 64 == v126 >> 63)
          {
            while (1)
            {
              v129 = v117 * v128;
              if (COERCE_INT(fabs(v129)) > 2139095039)
              {
                break;
              }

              if (v129 <= -9.2234e18)
              {
                goto LABEL_130;
              }

              if (v129 >= 9.2234e18)
              {
                goto LABEL_131;
              }

              if (__OFADD__(v126, v129))
              {
                goto LABEL_132;
              }

              v130 = v126 + v129;
              if (v123 < v94[v130])
              {
                v123 = v94[v130];
              }

              ++v128;
              if (!--v127)
              {
                goto LABEL_75;
              }
            }

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
            OUTLINED_FUNCTION_0_6();
LABEL_18:
            v42 = sub_1D8BF08A0();
            __swift_project_value_buffer(v42, qword_1EE320A70);
            OUTLINED_FUNCTION_26_0();
            v44 = *(v43 - 256);

            v45 = v34;
            v46 = sub_1D8BF0880();
            v47 = sub_1D8BF0B90();

            if (os_log_type_enabled(v46, v47))
            {
              v48 = OUTLINED_FUNCTION_24_0();
              v49 = swift_slowAlloc();
              v257 = v33;
              v50 = v49;
              v51 = OUTLINED_FUNCTION_76();
              v258 = a3;
              v52 = v51;
              v261 = v51;
              *v48 = 136446466;
              v263[0] = v44;
              v53 = sub_1D8BF10C0();
              v55 = v34;
              v56 = v37;
              v57 = OUTLINED_FUNCTION_28_0(v53, v54);

              *(v48 + 4) = v57;
              v37 = v56;
              *(v48 + 12) = 2114;
              v58 = v55;
              v59 = _swift_stdlib_bridgeErrorToNSError();
              *(v48 + 14) = v59;
              *v50 = v59;
              OUTLINED_FUNCTION_32_0(&dword_1D8BAF000, v60, v47, "predictSalientDepth[%{public}s] error rendering: %{public}@");
              sub_1D8BCF310(v50);
              OUTLINED_FUNCTION_11_1();
              __swift_destroy_boxed_opaque_existential_1Tm(v52);
              OUTLINED_FUNCTION_11_1();
              OUTLINED_FUNCTION_11_1();
            }

            swift_willThrow();
            if (v259)
            {
            }

            if (v37)
            {
              goto LABEL_23;
            }

            goto LABEL_214;
          }

LABEL_223:
          __break(1u);
          goto LABEL_224;
        }

LABEL_75:
        ++v124;
      }

      while (v124 != v37);
      v120 = v123 * 0.9;
    }

    OUTLINED_FUNCTION_37_0();
    v240 = v95;
    v239 = v131;
    Width = v78;
    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v132 = sub_1D8BF08A0();
    __swift_project_value_buffer(v132, qword_1EE320A70);
    OUTLINED_FUNCTION_26_0();
    v134 = *(v133 - 256);

    v95 = sub_1D8BF0880();
    v85 = sub_1D8BF0BB0();

    v238 = v85;
    if (os_log_type_enabled(v95, v85))
    {
      v235 = v95;
      v236 = v34;
      v237 = Height;
      swift_slowAlloc();
      v234 = OUTLINED_FUNCTION_20_0();
      v261 = v234;
      *v95 = 136447490;
      v263[0] = v134;
      v135 = sub_1D8BF10C0();
      OUTLINED_FUNCTION_28_0(v135, v136);
      OUTLINED_FUNCTION_29_0();
      *(v95 + 4) = v134;
      *(v95 + 12) = 2080;
      if (v240)
      {
        v137 = 7104878;
        v138 = 0xE300000000000000;
      }

      else
      {
        v154 = objc_alloc(MEMORY[0x1E696AEC0]);
        OUTLINED_FUNCTION_9_2();
        v134 = [v155 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}"];
        v137 = sub_1D8BF09E0();
        v138 = v156;
      }

      OUTLINED_FUNCTION_38_0();
      sub_1D8BBE6E8(v137, v138, &v261);
      OUTLINED_FUNCTION_29_0();
      *(v95 + 14) = v134;
      *(v95 + 22) = 2050;
      *(v95 + 24) = v33;
      *(v95 + 32) = 2050;
      v34 = v236;
      *(v95 + 34) = v236;
      *(v95 + 42) = 2050;
      *(v95 + 44) = v239;
      *(v95 + 52) = 2050;
      *(v95 + 54) = a3;
      v157 = v235;
      _os_log_impl(&dword_1D8BAF000, v235, v238, "predictSalientDepth[%{public}s] analyze salient pixel depth normalizedSearchRect:%s rowStart: %{public}ld colStart:%{public}ld rowLen:%{public}ld colLen:%{public}ld", v95, 0x3Eu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_11_1();

      Height = v237;
    }

    else
    {

      OUTLINED_FUNCTION_38_0();
    }

    v78 = Width;
    if (v33 == v37)
    {
      goto LABEL_95;
    }

    v164 = v34 + a3;
    if (__OFADD__(v34, a3))
    {
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      OUTLINED_FUNCTION_0_6();
LABEL_90:
      v140 = sub_1D8BF08A0();
      __swift_project_value_buffer(v140, qword_1EE320A70);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_12_1(v141);

      v142 = sub_1D8BF0880();
      v143 = sub_1D8BF0BA0();

      if (os_log_type_enabled(v142, v143))
      {
        OUTLINED_FUNCTION_24_0();
        v144 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_34_0(v144);
        *v95 = 136446466;
        v263[0] = v34;
        v145 = sub_1D8BF10C0();
        OUTLINED_FUNCTION_28_0(v145, v146);
        OUTLINED_FUNCTION_33_0();
        *(v95 + 4) = a3;
        *(v95 + 12) = 2082;
        v147 = objc_alloc(MEMORY[0x1E696AEC0]);
        OUTLINED_FUNCTION_9_2();
        v149 = [v148 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}"];
        v150 = sub_1D8BF09E0();
        v152 = v151;

        v153 = v256;
        Height = sub_1D8BBE6E8(v150, v152, &v261);

        *(v95 + 14) = Height;
        _os_log_impl(&dword_1D8BAF000, v142, v143, "predictSalientDepth[%{public}s] Invalid searchRect:%{public}s", v95, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_11_1();

        OUTLINED_FUNCTION_15_1();
      }

      else
      {

        OUTLINED_FUNCTION_15_1();
        v153 = v256;
      }

      sub_1D8BCF4AC();
      OUTLINED_FUNCTION_65();
      *v177 = v8;
      *(v177 + 8) = v9;
      *(v177 + 16) = v10;
      *(v177 + 24) = v11;
      *(v177 + 32) = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_14_1();

      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_30_0();

      OUTLINED_FUNCTION_40_0();
      if (v153)
      {
        goto LABEL_23;
      }

      goto LABEL_214;
    }

    if (v164 < v34)
    {
      goto LABEL_242;
    }

    v86.n128_u64[0] = 0;
    v88.n128_u64[0] = 0x5F0000005F000000;
    v87.n128_u64[0] = 0;
LABEL_100:
    if (v33 >= v37)
    {
      goto LABEL_219;
    }

    v165 = v122 * v33;
    if (COERCE_INT(fabs(v165)) > 2139095039)
    {
      goto LABEL_220;
    }

    if (v165 <= -9.2234e18)
    {
      goto LABEL_221;
    }

    if (v165 >= 9.2234e18)
    {
      goto LABEL_222;
    }

    if (v34 == v164)
    {
      break;
    }

    v166 = v165 * v242;
    if ((v165 * v242) >> 64 == v166 >> 63)
    {
      if (v34 < v164)
      {
        v167 = v33 * v251;
        v168 = a3;
        v169 = v34;
        while (1)
        {
          v170 = v117 * v169;
          if (COERCE_INT(fabs(v170)) > 2139095039)
          {
            goto LABEL_133;
          }

          if (v170 <= -9.2234e18)
          {
            goto LABEL_134;
          }

          if (v170 >= 9.2234e18)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v166, v170))
          {
            goto LABEL_136;
          }

          v171 = v94[v166 + v170];
          if (v120 < v171)
          {
            if ((v33 * v251) >> 64 != (v33 * v251) >> 63)
            {
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              v184 = a3;
LABEL_203:
              v213 = v184;
              v214 = v252;
              OUTLINED_FUNCTION_45();
              swift_beginAccess();
              v215 = *(v214 + 44);

              v216 = sub_1D8BF0880();
              v217 = sub_1D8BF0BB0();

              if (os_log_type_enabled(v216, v217))
              {
                OUTLINED_FUNCTION_76();
                v263[0] = OUTLINED_FUNCTION_20_0();
                *v95 = 136446722;
                v260 = v214;
                v218 = sub_1D8BF10C0();
                v220 = sub_1D8BBE6E8(v218, v219, v263);

                *(v95 + 4) = v220;
                *(v95 + 12) = 2082;
                if (v240)
                {
                  v221 = 7104878;
                  v222 = 0xE300000000000000;
                }

                else
                {
                  v223 = objc_alloc(MEMORY[0x1E696AEC0]);
                  OUTLINED_FUNCTION_9_2();
                  a3 = [v224 initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}"];
                  v221 = sub_1D8BF09E0();
                  v222 = v225;
                }

                sub_1D8BBE6E8(v221, v222, v263);
                OUTLINED_FUNCTION_33_0();
                *(v95 + 14) = a3;
                *(v95 + 22) = 2050;
                *(v95 + 24) = *&v239;
                _os_log_impl(&dword_1D8BAF000, v216, v217, "predictSalientDepth[%{public}s] success normalizedSearchRect:%{public}s result:%{public}f", v95, 0x20u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_11_1();
                OUTLINED_FUNCTION_11_1();
              }

              v226 = v255;
              *v255 = v239;
              OUTLINED_FUNCTION_45();
              sub_1D8BCF208(v227, v228, v229);
              OUTLINED_FUNCTION_18_0();
              *(v226 + 1) = v231;
              *(v226 + 2) = v230;
              *(v226 + 3) = v213;
              *(v226 + 4) = v78;
              *(v226 + 5) = v215;
              v226[12] = LODWORD(v120);
              v232 = OUTLINED_FUNCTION_12_1(&v264);
              CVPixelBufferUnlockBaseAddress(v232, 1uLL);

              OUTLINED_FUNCTION_27_0();
              OUTLINED_FUNCTION_30_0();

              OUTLINED_FUNCTION_40_0();
              if (v256)
              {
                sub_1D8BDB448();
              }

              goto LABEL_214;
            }

            if (__OFADD__(v167, v169))
            {
              goto LABEL_201;
            }

            v87.n128_f64[0] = v87.n128_f64[0] + v171 / v249[v167 + v169];
            v86.n128_f64[0] = v86.n128_f64[0] + v171;
          }

          ++v169;
          if (!--v168)
          {
            goto LABEL_117;
          }
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_234:
    MEMORY[0x1DA722DA0](0, Height, v86, v87, v88);
  }

LABEL_117:
  if (++v33 != v37)
  {
    goto LABEL_100;
  }

  if (v87.n128_f64[0] <= 0.0)
  {
LABEL_95:
    v158 = v252;

    v159 = sub_1D8BF0880();
    sub_1D8BF0B90();

    if (OUTLINED_FUNCTION_41_0())
    {
      swift_slowAlloc();
      v78 = OUTLINED_FUNCTION_19_0();
      v261 = v78;
      *v85 = 136446210;
      v263[0] = v158;
      Height = v263;
      v160 = sub_1D8BF10C0();
      OUTLINED_FUNCTION_28_0(v160, v161);
      OUTLINED_FUNCTION_33_0();
      *(v85 + 4) = a3;
      OUTLINED_FUNCTION_13_1(&dword_1D8BAF000, v162, v163, "predictSalientDepth[%{public}s] invalid depth map received, aborting.");
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_11_1();

      OUTLINED_FUNCTION_23_0();
    }

    else
    {

      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_16_1();
    }

    sub_1D8BCF4AC();
    OUTLINED_FUNCTION_65();
    *v176 = 2;
    *(v176 + 8) = 0;
    *(v176 + 16) = 0;
    *(v176 + 24) = 0;
    *(v176 + 32) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_14_1();

    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_30_0();

    if (Height)
    {
      goto LABEL_23;
    }

    goto LABEL_214;
  }

  v172 = v86.n128_f64[0] / v87.n128_f64[0];
  v173 = v241;
  sub_1D8BCEBFC(v252, v172);
  v241 = v173;
  if (v173)
  {
    v175 = OUTLINED_FUNCTION_12_1(&v264);
    CVPixelBufferUnlockBaseAddress(v175, 1uLL);

    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_30_0();

    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_23_0();
    if (Height)
    {
      sub_1D8BDB448();
    }

    goto LABEL_214;
  }

  v237 = Height;
  LODWORD(v239) = v174;
  LODWORD(v120) = 0;
  v178 = OUTLINED_FUNCTION_12_1(v265);
  a3 = sub_1D8BCF11C(v178, v179);
  v180 = sub_1D8BCF11C(v34, 0.0);
  if (v250 < 0)
  {
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
    goto LABEL_251;
  }

  v78 = v180;
  if (!v250)
  {
    goto LABEL_202;
  }

  OUTLINED_FUNCTION_17_0();
  if (v181 < 0)
  {
    goto LABEL_267;
  }

  v34 = 0;
  Height = 0;
  v95 = 32;
  v37 = 2139095039;
  v182 = 9.2234e18;
  v85 = v249;
  v183 = v242;
  v184 = a3;
  while (1)
  {
    v185 = v122 * Height;
    if (COERCE_INT(fabs(v185)) > 2139095039)
    {
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
      goto LABEL_247;
    }

    if (v185 <= -9.2234e18)
    {
      goto LABEL_245;
    }

    if (v185 >= v182)
    {
      goto LABEL_246;
    }

    if (v251)
    {
      break;
    }

LABEL_163:
    ++Height;
    OUTLINED_FUNCTION_17_0();
    v34 += v191;
    v95 += v259;
    v85 += v259;
    OUTLINED_FUNCTION_18_0();
    if (Height == v192)
    {
      goto LABEL_203;
    }
  }

  if ((Height * v251) >> 64 != (Height * v251) >> 63)
  {
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  a3 = v185 * v183;
  if ((v185 * v183) >> 64 != a3 >> 63)
  {
LABEL_248:
    __break(1u);
    goto LABEL_249;
  }

  v186 = v184;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D8BCF428();
    v186 = v193;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D8BCF428();
    v78 = v194;
  }

  v187 = 0;
  while (1)
  {
    v188 = v117 * v187;
    if (COERCE_INT(fabs(v188)) > 2139095039)
    {
      break;
    }

    if (v188 <= -9.2234e18)
    {
      goto LABEL_225;
    }

    if (v188 >= 9.2234e18)
    {
      goto LABEL_226;
    }

    if (__OFADD__(a3, v188))
    {
      goto LABEL_227;
    }

    if (v34 < 0)
    {
      goto LABEL_228;
    }

    if (v34 + v187 >= *(v186 + 16))
    {
      goto LABEL_229;
    }

    v189 = v94[a3 + v188];
    *(v186 + v95 + 4 * v187) = v189;
    if (v34 + v187 >= v78[2])
    {
      goto LABEL_230;
    }

    *(v78 + 4 * v187 + v95) = *(v85 + 4 * v187);
    v190 = v187 + 1;
    if (*&v120 <= v189)
    {
      *&v120 = v189;
    }

    ++v187;
    if (v251 == v190)
    {
      goto LABEL_163;
    }
  }

LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  OUTLINED_FUNCTION_0_6();
LABEL_45:
  v97 = sub_1D8BF08A0();
  __swift_project_value_buffer(v97, qword_1EE320A70);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12_1(v98);

  v99 = sub_1D8BF0880();
  sub_1D8BF0B90();

  if (OUTLINED_FUNCTION_41_0())
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_37_0();
    v100 = OUTLINED_FUNCTION_19_0();
    v261 = v100;
    *v85 = 136446210;
    v263[0] = v34;
    Height = v263;
    v101 = sub_1D8BF10C0();
    OUTLINED_FUNCTION_28_0(v101, v102);
    OUTLINED_FUNCTION_33_0();
    *(v85 + 4) = a3;
    OUTLINED_FUNCTION_13_1(&dword_1D8BAF000, v103, v104, "predictSalientDepth[%{public}s] cannot predict saliency map.");
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_11_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_16_1();
  }

  sub_1D8BCF4AC();
  OUTLINED_FUNCTION_65();
  *v105 = 0u;
  *(v105 + 16) = 0u;
  *(v105 + 32) = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_30_0();
LABEL_49:

LABEL_50:
  if (v256)
  {
LABEL_23:
    sub_1D8BDB448();
  }

LABEL_214:
  sub_1D8BCE754();
}

uint64_t SpatialPhoto.SalientDepthResult.saliencyMap.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return sub_1D8BCF500(v2, v3, v4);
}

__n128 SpatialPhoto.SalientDepthResult.saliencyMap.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1D8BCF208(*(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

float sub_1D8BCE5A0(float (*a1)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[3];
  if (!v7)
  {
    return 0.0;
  }

  v9 = v6[1];
  v8 = v6[2];
  v10 = a1(a1, a2, a3, a4, a5, a6);
  sub_1D8BCF500(v9, v8, v7);

  return v10;
}

uint64_t SpatialPhoto.SalientDepthResult.description.getter()
{
  v1 = *(v0 + 24);
  sub_1D8BF0DE0();
  MEMORY[0x1DA722A10](0xD000000000000018, 0x80000001D8BF3A60);
  sub_1D8BF0B10();
  MEMORY[0x1DA722A10](0xD000000000000012, 0x80000001D8BF3A80);
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1DA722A10](v2, v3);

  MEMORY[0x1DA722A10](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_1D8BCE754()
{
  v0 = sub_1D8BF0830();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8BF07F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAA3E78 != -1)
  {
    swift_once();
  }

  v8 = sub_1D8BF0820();
  __swift_project_value_buffer(v8, qword_1ECAA4C20);
  v9 = sub_1D8BF0810();
  sub_1D8BF0840();
  v10 = sub_1D8BF0C80();
  if (sub_1D8BF0CF0())
  {

    sub_1D8BF0870();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v9, v10, v13, "PredictSalientDepth", v11, v12, 2u);
    MEMORY[0x1DA723A30](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D8BCE9E0(uint64_t a1)
{
  if (sub_1D8BB731C())
  {
    OUTLINED_FUNCTION_45();
    result = swift_beginAccess();
    if (*(a1 + 48) > *(a1 + 44))
    {
      return result;
    }

    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v4 = sub_1D8BF08A0();
    __swift_project_value_buffer(v4, qword_1EE320A70);

    v5 = sub_1D8BF0880();
    v6 = sub_1D8BF0B90();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_24_0();
      v15 = swift_slowAlloc();
      *v7 = 136446466;
      v8 = sub_1D8BF10C0();
      sub_1D8BBE6E8(v8, v9, &v15);
      OUTLINED_FUNCTION_29_0();
      *(v7 + 4) = v1;
      *(v7 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4850);
      sub_1D8BCF7E8();
      v10 = sub_1D8BF0FE0();
      v12 = sub_1D8BBE6E8(v10, v11, &v15);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1D8BAF000, v5, v6, "predictSalientDepth[%{public}s] invalid depth range:%{public}s", v7, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_11_1();
    }

    sub_1D8BCF794();
    OUTLINED_FUNCTION_65();
    v14 = 0;
  }

  else
  {
    sub_1D8BCF794();
    OUTLINED_FUNCTION_65();
    v14 = 2;
  }

  *v13 = v14;
  return swift_willThrow();
}

void sub_1D8BCEBFC(uint64_t a1, float a2)
{
  sub_1D8BCE9E0(a1);
  if (!v2)
  {
    OUTLINED_FUNCTION_45();
    swift_beginAccess();
    v6 = *(a1 + 48) - *(a1 + 44);
    if (v6 <= 0.0)
    {
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v25 = sub_1D8BF08A0();
      __swift_project_value_buffer(v25, qword_1EE320A70);
      OUTLINED_FUNCTION_36_0();

      v26 = sub_1D8BF0880();
      v27 = sub_1D8BF0B90();

      if (OUTLINED_FUNCTION_41_0())
      {
        v28 = OUTLINED_FUNCTION_24_0();
        v42 = a1;
        v43 = swift_slowAlloc();
        *v28 = 136446466;
        v29 = sub_1D8BF10C0();
        sub_1D8BBE6E8(v29, v30, &v43);
        OUTLINED_FUNCTION_29_0();
        *(v28 + 4) = v3;
        *(v28 + 12) = 2082;
        v42 = *(a1 + 44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4850);
        sub_1D8BCF7E8();
        v31 = sub_1D8BF0FE0();
        sub_1D8BBE6E8(v31, v32, &v43);
        OUTLINED_FUNCTION_36_0();

        *(v28 + 14) = &v42;
        _os_log_impl(&dword_1D8BAF000, v26, v27, "predictSalientDepth[%{public}s] invalid depth range:%{public}s", v28, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10_2();
        OUTLINED_FUNCTION_11_1();
      }

      sub_1D8BCF794();
      OUTLINED_FUNCTION_65();
      *v33 = 0;
      goto LABEL_25;
    }

    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v7 = a2 / v6;
    v8 = sub_1D8BF08A0();
    __swift_project_value_buffer(v8, qword_1EE320A70);

    v9 = sub_1D8BF0880();
    v10 = sub_1D8BF0BB0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = OUTLINED_FUNCTION_76();
      v42 = a1;
      v43 = v12;
      *v11 = 136446978;
      v13 = sub_1D8BF10C0();
      v15 = sub_1D8BBE6E8(v13, v14, &v43);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v6;
      *(v11 + 22) = 2048;
      *(v11 + 24) = a2;
      *(v11 + 32) = 2048;
      *(v11 + 34) = v7;
      _os_log_impl(&dword_1D8BAF000, v9, v10, "normalizeSceneDepth[%{public}s] sceneDepthLength:%f sceneDepth:%f normalizedSceneSpaceDepth:%f", v11, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_11_1();
    }

    if (COERCE_UNSIGNED_INT(fabs(a2 / v6)) > 0x7F7FFFFF)
    {

      v16 = sub_1D8BF0880();
      v17 = sub_1D8BF0B90();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_24_0();
        v19 = OUTLINED_FUNCTION_76();
        v42 = a1;
        v43 = v19;
        *v18 = 136446466;
        v20 = sub_1D8BF10C0();
        sub_1D8BBE6E8(v20, v21, &v43);
        OUTLINED_FUNCTION_36_0();

        OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_32_0(&dword_1D8BAF000, v22, v17, "normalizeSceneDepth[%{public}s] invalid computed depth:%{public}f");
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        OUTLINED_FUNCTION_10_2();
        OUTLINED_FUNCTION_11_1();
      }

      sub_1D8BCF794();
      OUTLINED_FUNCTION_65();
      v24 = 1;
LABEL_24:
      *v23 = v24;
LABEL_25:
      swift_willThrow();
      return;
    }

    if (v7 < COERCE_FLOAT(-2147483647) || v7 > 1.0)
    {

      v35 = sub_1D8BF0880();
      v36 = sub_1D8BF0B90();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_24_0();
        v38 = OUTLINED_FUNCTION_76();
        v42 = a1;
        v43 = v38;
        *v37 = 136446466;
        v39 = sub_1D8BF10C0();
        sub_1D8BBE6E8(v39, v40, &v43);
        OUTLINED_FUNCTION_36_0();

        OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_32_0(&dword_1D8BAF000, v41, v36, "normalizeSceneDepth[%{public}s] computed depth out of valid range:%{public}f");
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        OUTLINED_FUNCTION_10_2();
        OUTLINED_FUNCTION_11_1();
      }

      sub_1D8BCF794();
      OUTLINED_FUNCTION_65();
      v24 = 3;
      goto LABEL_24;
    }
  }
}

uint64_t sub_1D8BCF11C(uint64_t result, float a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_1D8BF0AD0();
      v4 = 0;
      v5 = (result + 44);
      *(result + 16) = v2;
      v6 = vdupq_n_s64(v2 - 1);
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1D8BF7CD0)));
        if (vuzp1_s16(v8, *v6.i8).u8[0])
        {
          *(v5 - 3) = a2;
        }

        if (vuzp1_s16(v8, *&v6).i8[2])
        {
          *(v5 - 2) = a2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1D8BF7CC0)))).i32[1])
        {
          *(v5 - 1) = a2;
          *v5 = a2;
        }

        v4 += 4;
        v5 += 4;
      }

      while (((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1D8BCF208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_1D8BCF24C(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for VNImageOption(0);
  sub_1D8BCF38C();
  v6 = sub_1D8BF0960();

  v7 = [v3 initWithCVPixelBuffer:a1 options:v6 session:a3];

  return v7;
}

uint64_t sub_1D8BCF2EC(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

uint64_t sub_1D8BCF310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA45F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MTLRegionMake2D@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

unint64_t sub_1D8BCF38C()
{
  result = qword_1ECAA4228;
  if (!qword_1ECAA4228)
  {
    type metadata accessor for VNImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4228);
  }

  return result;
}

unint64_t sub_1D8BCF3E4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D8BCF408(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8BCF43C(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D8BCF84C(0, &qword_1ECAA4860);
  v3 = sub_1D8BF0AB0();

  return v3;
}

unint64_t sub_1D8BCF4AC()
{
  result = qword_1ECAA4840;
  if (!qword_1ECAA4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4840);
  }

  return result;
}

uint64_t sub_1D8BCF500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t _s14descr1F54466F9O24PredictSalientDepthErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14descr1F54466F9O24PredictSalientDepthErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1D8BCF598(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BCF5B4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = v2;
  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8BCF5FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 44))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BCF63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22PhotosSpatialMediaCore0B5PhotoO11SaliencyMapVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8BCF6CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 52))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BCF720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1D8BCF794()
{
  result = qword_1ECAA4848;
  if (!qword_1ECAA4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4848);
  }

  return result;
}

unint64_t sub_1D8BCF7E8()
{
  result = qword_1ECAA4858;
  if (!qword_1ECAA4858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAA4850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4858);
  }

  return result;
}

uint64_t sub_1D8BCF84C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _s14descr1F54466F9O13AnalysisErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr1F54466F9O13AnalysisErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D8BCF9F4()
{
  result = qword_1ECAA4868;
  if (!qword_1ECAA4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4868);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_2()
{

  JUMPOUT(0x1DA723A30);
}

void OUTLINED_FUNCTION_8_1()
{
  *(v3 - 384) = v0;
  *(v3 - 256) = v2;
  *(v3 - 248) = v1;
}

void OUTLINED_FUNCTION_10_2()
{

  JUMPOUT(0x1DA723A30);
}

void OUTLINED_FUNCTION_11_1()
{

  JUMPOUT(0x1DA723A30);
}

void OUTLINED_FUNCTION_13_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  v2 = *(v0 - 360);

  return CVPixelBufferUnlockBaseAddress(v2, 1uLL);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_25_0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  result = v2;
  *(v1 + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return swift_unknownObjectRelease();
}

unint64_t OUTLINED_FUNCTION_28_0(uint64_t a1, unint64_t a2)
{

  return sub_1D8BBE6E8(a1, a2, (v2 - 224));
}

uint64_t OUTLINED_FUNCTION_29_0()
{
}

void OUTLINED_FUNCTION_30_0()
{
  v2 = *(v0 - 344);
}

void OUTLINED_FUNCTION_32_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_33_0()
{
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t result)
{
  *(v2 - 368) = v1;
  *(v2 - 224) = result;
  return result;
}

void OUTLINED_FUNCTION_40_0()
{
  v2 = *(v0 - 280);
}

BOOL OUTLINED_FUNCTION_41_0()
{

  return os_log_type_enabled(v0, v1);
}

double static SpatialPhoto.CameraTechnique.none.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return result;
}

double static SpatialPhoto.CameraTechnique.gyroRotation(_:)@<D0>(float64x2_t *a1@<X8>, float64x2_t a2@<Q0>, __n128 a3@<Q1>)
{
  v4 = sub_1D8BF0C70();
  *v25.vector.f64 = a3;
  v23 = a2;
  v24 = a3;
  SPRotation3DGetEulerAngles(v25, &v23, v4, &v22);
  v5 = *v22.angles.f64;
  if (qword_1ECAA3E00 != -1)
  {
    v21 = *v22.angles.f64;
    swift_once();
    v5 = v21;
  }

  v6 = 1.0;
  if (byte_1ECAAA811)
  {
    v6 = -1.0;
  }

  *&v7 = v6 * *&v5;
  v16 = v6 * *&v5;
  v18 = -(*(&v5 + 1) * v6);
  *(&v7 + 1) = v18;
  v20 = v7;
  v8 = sub_1D8BF0C70();
  *&v22.angles.f64[2] = 0uLL;
  *v22.angles.f64 = v20;
  v22.order = v8;
  SPRotation3DMakeWithEulerAngles(&v22, &v23);
  v9 = v24;
  v10 = v23;
  if (qword_1ECAA3E70 != -1)
  {
    swift_once();
  }

  v11 = sub_1D8BF08A0();
  __swift_project_value_buffer(v11, qword_1ECAA4C08);
  v12 = sub_1D8BF0880();
  v13 = sub_1D8BF0B80();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v16;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v18;
    _os_log_impl(&dword_1D8BAF000, v12, v13, "angles: %f,%f", v14, 0x16u);
    MEMORY[0x1DA723A30](v14, -1, -1);
  }

  *a1 = v10;
  a1[1] = v9;
  return OUTLINED_FUNCTION_3_5();
}

double sub_1D8BCFFC0@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_5();
  v5 = -5.0;
  if (!v7 & v6)
  {
    v5 = v4;
  }

  sub_1D8BD09F0(v5);
  SPAngleMakeWithDegrees(v8);
  v9 = a1();
  OUTLINED_FUNCTION_4_3(v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v14, v15, v16, v26, v28, v30, v32, v33, v34);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x3FF0000000000000;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 32) = 0;
  *(a2 + 64) = v29;
  *(a2 + 72) = v31;
  *(a2 + 48) = v27;
  result = 0.0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0;
  return result;
}

double static SpatialPhoto.CameraTechnique.pedestal(_:)()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_5();
  if (!(!v2 & v1))
  {
    v0 = -0.004;
  }

  SPVector3DMake(0.0, v0, 0.0, v13);
  *&result = OUTLINED_FUNCTION_0_7(v3, v4, v5, v6, v7, v8, v9, v10, v11, v13[0], v13[1]).n128_u64[0];
  return result;
}

double static SpatialPhoto.CameraTechnique.truck(_:)()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_5();
  v1 = -0.004;
  if (!v3 & v2)
  {
    v1 = v0;
  }

  SPVector3DMake(v1, 0.0, 0.0, v14);
  *&result = OUTLINED_FUNCTION_0_7(v4, v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]).n128_u64[0];
  return result;
}

double static SpatialPhoto.CameraTechnique.dolly(_:)()
{
  OUTLINED_FUNCTION_1_3();
  v1 = v0 * -0.15;
  if (v2 > 0.0)
  {
    v3 = v1;
  }

  else
  {
    v3 = -0.0;
  }

  SPVector3DMake(0.0, 0.0, v3, v14);
  *&result = OUTLINED_FUNCTION_0_7(v4, v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]).n128_u64[0];
  return result;
}

double sub_1D8BD0188@<D0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_5();
  v5 = -0.300000004;
  if (!v7 & v6)
  {
    v5 = v4;
  }

  v8 = sub_1D8BD09F0(v5);
  v9 = a1(v8);
  OUTLINED_FUNCTION_4_3(v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v14, v15, v16, v26, v28, v30, v32, v33, v34);
  *(a2 + 16) = v29;
  *(a2 + 24) = v31;
  *a2 = v27;
  *(a2 + 32) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x3FF0000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  result = 0.0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0;
  return result;
}

void static SpatialPhoto.CameraTechnique.circle(_:radius:)(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a2 <= 0.0)
  {
    v4 = 0.0;
    v7 = 1.0;
    if (a3 <= 1.0)
    {
      v7 = a3;
    }

    if (a3 > 0.0)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    v4 = 1.0;
    if (a2 <= 1.0)
    {
      if (a3 <= 1.0)
      {
        v8 = a3;
      }

      else
      {
        v8 = 1.0;
      }

      if (a3 > 0.0)
      {
        v6 = v8;
      }

      else
      {
        v6 = 0.0;
      }

      v4 = a2;
    }

    else
    {
      v5 = 1.0;
      if (a3 <= 1.0)
      {
        v5 = a3;
      }

      if (a3 > 0.0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0.0;
      }
    }
  }

  if (qword_1ECAA3D48 != -1)
  {
    swift_once();
  }

  v9 = v6 * *&qword_1ECAAA778;
  v10 = __sincos_stret(v4 * 3.14159265 + v4 * 3.14159265);
  v11 = v10.__sinval * v9;
  sub_1D8BD09F0(v10.__cosval * v9);
  v13 = v12;
  sub_1D8BD09F0(v11);
  v15 = v14;
  sub_1D8BD09F0(0.0);
  SPVector3DMake(v13, v15, v16, &v19);
  SPVector3DMake(0.0, 0.0, 0.300000012, &v19);
  SPVector3DMake(0.0, 1.0, 0.0, &v19);
  sub_1D8BF0B50();
  *a1 = v17;
  a1[1] = v18;
  OUTLINED_FUNCTION_3_5();
}

void static SpatialPhoto.CameraTechnique.zoom(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 <= 0.0)
  {
    a2 = 0.0;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  *a1 = 0u;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a2;
}

double static SpatialPhoto.CameraTechnique.dollyZoom(_:)@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_3();
  if (v3 > 0.0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0.0;
  }

  SPVector3DMake(0.0, 0.0, 0.300000012, v6);
  result = v4 * v6[2] * -10.0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  *a1 = 0u;
  *(a1 + 32) = result;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return result;
}

__n128 SpatialPhoto.CameraTechnique.interpolated(towards:fraction:)@<Q0>(double *a1@<X0>, uint64_t a2@<X8>, float64_t a3@<D0>)
{
  v7 = sub_1D8BF0B60();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 1);
  v37 = *a1;
  v36 = v11;
  v12 = a1[4];
  v13 = *(a1 + 4);
  v39 = *(a1 + 3);
  v38 = v13;
  v14 = *(a1 + 10);
  v42 = *(a1 + 12);
  v43 = v14;
  v15 = a1[14];
  v16 = *(v3 + 16);
  v35[1] = *v3;
  v35[0] = v16;
  v17 = *(v3 + 32);
  v18 = *(v3 + 64);
  v35[3] = *(v3 + 48);
  v35[2] = v18;
  v20 = *(v3 + 96);
  v41 = *(v3 + 80);
  v40 = v20;
  v19 = *(v3 + 112);
  v20.f64[0] = 0.0;
  if (a3 > 0.0)
  {
    v20.f64[0] = a3;
  }

  if (v20.f64[0] > 1.0)
  {
    v20.f64[0] = 1.0;
  }

  v44 = v20;
  v21 = *MEMORY[0x1E69E82B8];
  v22 = *(v8 + 104);
  v22(v10, v21, v7);
  sub_1D8BF0B40();
  v37 = v23;
  v36 = v24;
  v25 = *(v8 + 8);
  v25(v10, v7);
  v26 = v17 + v44.f64[0] * (v12 - v17);
  v22(v10, v21, v7);
  sub_1D8BF0B40();
  v39 = v27;
  v38 = v28;
  v25(v10, v7);
  v48[0] = vmlaq_n_f64(v41, vsubq_f64(v43, v41), v44.f64[0]);
  v48[1] = vmlaq_n_f64(v40, vsubq_f64(v42, v40), v44.f64[0]);
  SPVector3DMakeWithVector(v48, &v45);
  result = v45;
  v30 = v46;
  v31 = v47;
  v32 = v19 + v44.f64[0] * (v15 - v19);
  v33 = v36;
  *a2 = v37;
  *(a2 + 16) = v33;
  *(a2 + 32) = v26;
  v34 = v38;
  *(a2 + 48) = v39;
  *(a2 + 64) = v34;
  *(a2 + 96) = v30;
  *(a2 + 104) = v31;
  *(a2 + 80) = result;
  *(a2 + 112) = v32;
  return result;
}

uint64_t static SpatialPhoto.CameraTechnique.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v26 = *(a1 + 96);
  v27 = *(a1 + 80);
  v25 = *(a1 + 112);
  v9 = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 64);
  v13 = *(a2 + 72);
  v16 = *(a2 + 48);
  v15 = *(a2 + 56);
  v23 = *(a2 + 96);
  v24 = *(a2 + 80);
  v22 = *(a2 + 112);
  v32 = *(a1 + 16);
  v33 = v3;
  v31 = v2;
  v29 = v10;
  v30 = v11;
  v28 = v9;
  v17 = SPRotation3DEqualToRotation(&v31, &v28);
  v18 = 0;
  if (v17 && v4 == v12)
  {
    v31.f64[0] = v8;
    v31.f64[1] = v7;
    v32 = v6;
    v33 = v5;
    v29 = v14;
    v30 = v13;
    v28.f64[0] = v16;
    v28.f64[1] = v15;
    if (SPRotation3DEqualToRotation(&v31, &v28))
    {
      v19.f64[0] = v26;
      v19.f64[1] = v25;
      v20.f64[0] = v23;
      v20.f64[1] = v22;
      v18 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v27, v24), vceqq_f64(v19, v20))));
    }

    else
    {
      v18 = 0;
    }
  }

  return v18 & 1;
}

void SPRotation3DMakeWithEulerAngles(SPEulerAngles *a1@<X0>, float64x2_t *a2@<X8>)
{
  order = a1->order;
  __asm { FMOV            V2.2D, #0.5 }

  xa = vmulq_f64(*a1->angles.f64, _Q2);
  v23 = *&vmulq_f64(*&a1->angles.f64[2], _Q2);
  v20 = _simd_cos_d2(xa);
  v19 = _simd_cos_d2(v23);
  x = _simd_sin_d2(xa);
  v9 = _simd_sin_d2(v23);
  if (order == SPEulerZXY)
  {
    *&v16.f64[0] = v9.i64[0];
    v16.f64[1] = -*v9.i64;
    v17 = vmulq_f64(vzip1q_s64(v20, x), v16);
    v18 = vdupq_lane_s64(v9.i64[0], 0);
    v18.f64[0] = -v19.f64[0];
    v14 = vmlaq_f64(vmulq_f64(v17, vzip2q_s64(x, v20)), vzip2q_s64(v20, x), vmulq_f64(vzip1q_s64(v19, v20), vzip1q_s64(x, v19)));
    v15 = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(x, x, 8uLL), x), v18), vzip1q_s64(v9, v19), vmulq_f64(vextq_s8(v20, v20, 8uLL), v20));
  }

  else
  {
    if (order != SPEulerPitchYawRoll)
    {
      v15 = unk_1D8BF7FD0;
      *a2 = SPRotation3DInvalid;
      goto LABEL_7;
    }

    v10.f64[0] = v19.f64[0];
    *&v10.f64[1] = x.i64[1];
    v11 = vdupq_lane_s64(v9.i64[0], 0);
    v12.f64[1] = v11.f64[1];
    v12.f64[0] = -*x.i64;
    *&v13.f64[0] = v9.i64[0];
    v13.f64[1] = v20.f64[1];
    v11.f64[0] = -v20.f64[0];
    v14 = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(x, x, 8uLL), v13), v11), vzip1q_s64(x, v19), vmulq_f64(vextq_s8(v20, v20, 8uLL), v10));
    v15 = vmlaq_f64(vmulq_f64(vmulq_laneq_f64(v12, x, 1), vzip1q_s64(v19, x)), vzip1q_s64(v9, v20), vmulq_f64(v20, vextq_s8(v20, v19, 8uLL)));
  }

  *a2 = v14;
LABEL_7:
  a2[1] = v15;
}

void SPRotation3DMake(SPAngle a1@<0:D0>, SPRotationAxis3D *a2@<X0>, float64x2_t *a3@<X8>, float64x2_t a4@<Q2>)
{
  a4.f64[0] = a2->z;
  v6 = vceqzq_f64(*&a2->x);
  if (((v6.i64[0] & v6.i64[1] & vceqzq_f64(a4).u64[0] & 0x8000000000000000) != 0) != v4)
  {
    v11 = xmmword_1D8BF7710;
    v10 = 0uLL;
  }

  else
  {
    v13 = *&a2->vector.f64[2];
    v14 = *&a2->x;
    v7 = vmulq_f64(v13, v13);
    v7.f64[0] = 1.0 / sqrt(v7.f64[0] + vaddvq_f64(vmulq_f64(v14, v14)));
    v12 = v7;
    v9 = __sincos_stret(a1.radians * 0.5);
    v8.f64[0] = v9.__sinval;
    v10 = vmulq_n_f64(vmulq_n_f64(v14, v12.f64[0]), v9.__sinval);
    *&v11 = *&vmulq_f64(v8, vmulq_f64(v13, v12));
    *(&v11 + 1) = *&v9.__cosval;
  }

  *a3 = v10;
  a3[1] = v11;
}

__n128 SPVector3DMakeWithVector@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t sub_1D8BD0AE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BD0B08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 120) = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_0_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11)
{
  result = a9;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0x3FF0000000000000;
  *v11 = 0u;
  *(v11 + 32) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0x3FF0000000000000;
  *(v11 + 48) = 0u;
  *(v11 + 96) = a10;
  *(v11 + 104) = a11;
  *(v11 + 80) = a9;
  *(v11 + 112) = 0;
  return result;
}

double OUTLINED_FUNCTION_3_5()
{
  *(v0 + 32) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0x3FF0000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  return result;
}

void OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SPRotationAxis3D *a5, double a6, double a7, float64x2_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, float64x2_t a17, uint64_t a18, uint64_t a19, double a20, double a21, unint64_t a22)
{
  a20 = a6;
  a21 = a7;
  a22 = *&a8.f64[0];
  v19.radians = v18;

  SPRotation3DMake(v19, &a20, &a17, a8);
}

void sub_1D8BD0BFC(void *a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  *(v1 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v22[0] = 0;
  v5 = [a1 newDefaultLibraryWithBundle:v4 error:v22];

  if (v5)
  {
    v6 = v22[0];
    v7 = sub_1D8BF09B0();
    v8 = [v5 newFunctionWithName_];

    if (v8)
    {
      v22[0] = 0;
      v9 = [a1 newComputePipelineStateWithFunction:v8 error:v22];
      v10 = v22[0];
      if (v9)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *(v1 + 16) = v9;
        swift_unknownObjectRelease();
        return;
      }

      v13 = v10;
      v12 = sub_1D8BEFEA0();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D8BD15C4();
      v12 = swift_allocError();
      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v22[0];
    v12 = sub_1D8BEFEA0();

    swift_willThrow();
  }

  if (qword_1EE320A68 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v14 = sub_1D8BF08A0();
  __swift_project_value_buffer(v14, qword_1EE320A70);
  v15 = v12;
  v16 = sub_1D8BF0880();
  v17 = sub_1D8BF0B90();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_1D8BAF000, v16, v17, "MaskCompositingEffect failed to prepare %@", v18, 0xCu);
    sub_1D8BCF310(v19);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();
  }

  else
  {
  }
}

void sub_1D8BD0F0C(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) == 5)
  {
    v2 = *a1;
    v44 = *(a1 + 256);
    v45 = *(a1 + 240);
    v3 = *(a1 + 272);
    v4 = *(a1 + 536);
    memcpy(__dst, (a1 + 288), sizeof(__dst));
    if (sub_1D8BD15A8(__dst) == 1)
    {
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v5 = sub_1D8BF08A0();
      __swift_project_value_buffer(v5, qword_1EE320A70);
      v6 = sub_1D8BF0880();
      v7 = sub_1D8BF0B90();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_34;
      }

      v8 = OUTLINED_FUNCTION_2_6();
      *v8 = 0;
      v9 = "MaskCompositingEffect missing secondaryCamera";
LABEL_33:
      _os_log_impl(&dword_1D8BAF000, v6, v7, v9, v8, 2u);
      OUTLINED_FUNCTION_11_1();
LABEL_34:

      return;
    }

    v10 = [v3 newTextureViewWithPixelFormat_];
    if (!v10)
    {
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v36 = sub_1D8BF08A0();
      __swift_project_value_buffer(v36, qword_1EE320A70);
      v6 = sub_1D8BF0880();
      v7 = sub_1D8BF0B90();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_34;
      }

      v8 = OUTLINED_FUNCTION_2_6();
      *v8 = 0;
      v9 = "MaskCompositingEffect creating texture view from primaryDrawable failed";
      goto LABEL_33;
    }

    v11 = v10;
    if (!v4 || (v12 = [v4 newTextureViewWithPixelFormat_]) == 0)
    {
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v32 = sub_1D8BF08A0();
      __swift_project_value_buffer(v32, qword_1EE320A70);
      v33 = sub_1D8BF0880();
      v34 = sub_1D8BF0B90();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_2_6();
        *v35 = 0;
        _os_log_impl(&dword_1D8BAF000, v33, v34, "MaskCompositingEffect creating texture view from secondaryDrawable failed", v35, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      goto LABEL_39;
    }

    v13 = v12;
    v14 = *(v1 + 16);
    if (!v14)
    {
      if (qword_1EE320A68 == -1)
      {
LABEL_36:
        v37 = sub_1D8BF08A0();
        __swift_project_value_buffer(v37, qword_1EE320A70);
        v33 = sub_1D8BF0880();
        v38 = sub_1D8BF0B90();
        if (os_log_type_enabled(v33, v38))
        {
          v39 = OUTLINED_FUNCTION_2_6();
          *v39 = 0;
          _os_log_impl(&dword_1D8BAF000, v33, v38, "MaskCompositingEffect missing pipelineState", v39, 2u);
          OUTLINED_FUNCTION_11_1();
        }

        swift_unknownObjectRelease();
LABEL_39:

LABEL_46:
        swift_unknownObjectRelease();
        return;
      }

LABEL_54:
      OUTLINED_FUNCTION_0_6();
      goto LABEL_36;
    }

    swift_unknownObjectRetain();
    v15 = [v2 computeCommandEncoder];
    if (!v15)
    {
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v40 = sub_1D8BF08A0();
      __swift_project_value_buffer(v40, qword_1EE320A70);
      v41 = sub_1D8BF0880();
      v42 = sub_1D8BF0B90();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_2_6();
        *v43 = 0;
        _os_log_impl(&dword_1D8BAF000, v41, v42, "MaskCompositingEffect makeComputeCommandEncoder failed", v43, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      swift_unknownObjectRelease();

      goto LABEL_45;
    }

    v16 = v15;
    [v15 setComputePipelineState_];
    [v16 setTexture:v13 atIndex:0];
    [v16 setTexture:v11 atIndex:1];
    v17 = vcvtq_f64_s64(vzip1q_s64(*&__dst[208], v45));
    v17.f64[0] = v17.f64[0] - v17.f64[1];
    if (v44)
    {
      v18 = v44;
    }

    else
    {
      v18 = 1.0;
    }

    v19 = v17.f64[0] / v18;
    if (*(&v44 + 1))
    {
      v20 = *(&v44 + 1);
    }

    else
    {
      v20 = 1.0;
    }

    v21 = round(v17.f64[1] + v19 * v44 - v17.f64[1]);
    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v21 > -32769.0)
    {
      if (v21 < 32768.0)
      {
        v22 = round(v45.i64[1] + (*&__dst[216] - v45.i64[1]) / v20 * *(&v44 + 1) - v45.i64[1]);
        if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v22 > -32769.0)
          {
            if (v22 < 32768.0)
            {
              v48[0] = v21;
              v48[1] = v22;
              [v16 setBytes:v48 length:4 atIndex:0];
              v23 = [v13 width];
              v24 = [v13 height];
              v25 = sub_1D8BD2208(v23, v24, 1, v14);
              v27 = v26;
              v29 = v28;
              v47[0] = sub_1D8BD2438(v25, v26, v28, v23, v24);
              v47[1] = v30;
              v47[2] = v31;
              v46[0] = v25;
              v46[1] = v27;
              v46[2] = v29;
              [v16 dispatchThreadgroups:v47 threadsPerThreadgroup:v46];
              [v16 endEncoding];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
LABEL_45:
              swift_unknownObjectRelease();
              goto LABEL_46;
            }

            goto LABEL_53;
          }

LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_50;
  }
}

uint64_t sub_1D8BD150C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D8BD1534()
{
  sub_1D8BD150C();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8BD158C()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_1D8BD15A8(uint64_t a1)
{
  if (*(a1 + 240))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D8BD15C4()
{
  result = qword_1ECAA4878;
  if (!qword_1ECAA4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4878);
  }

  return result;
}

_BYTE *_s14descr1F54466F9O21MaskCompositingEffectC5ErrorOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D8BD16C8()
{
  result = qword_1ECAA4880;
  if (!qword_1ECAA4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4880);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return swift_slowAlloc();
}

uint64_t SpatialPhoto.DepthNormalization.__allocating_init(device:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SpatialPhoto.DepthNormalization.init(device:)(a1);
  return v2;
}

void *SpatialPhoto.DepthNormalization.init(device:)(uint64_t a1)
{
  v1[4] = 0x3F80000000000000;
  v1[2] = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  swift_unknownObjectRetain();
  v4 = [v3 bundleForClass_];
  v5 = OUTLINED_FUNCTION_0_8();
  v7 = [v5 v6];

  if (!v7)
  {
    v16 = 0;
    sub_1D8BEFEA0();

    swift_willThrow();
LABEL_7:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    type metadata accessor for SpatialPhoto.DepthNormalization();
    swift_deallocPartialClassInstance();
    return v1;
  }

  v8 = 0;
  v9 = sub_1D8BF09B0();
  v10 = [v7 newFunctionWithName_];

  if (!v10)
  {
    sub_1D8BD1A00();
    swift_allocError();
    *v17 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v11 = OUTLINED_FUNCTION_0_8();
  v13 = [v11 v12];
  if (!v13)
  {
    v19 = 0;
    sub_1D8BEFEA0();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v14 = v13;
  v15 = 0;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1[3] = v14;
  return v1;
}

unint64_t sub_1D8BD1A00()
{
  result = qword_1ECAA4890;
  if (!qword_1ECAA4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4890);
  }

  return result;
}

uint64_t sub_1D8BD1A98(double a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1D8BD1B28(void *a1, uint64_t a2, void *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  *&v32[32] = a6;
  *&v32[48] = a7;
  *v32 = a4;
  *&v32[16] = a5;
  v41 = *MEMORY[0x1E69E9840];
  v11 = v7[2];
  swift_unknownObjectRetain();
  v12 = [a3 device];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v11 != v12)
  {
    v13 = 0;
LABEL_3:
    sub_1D8BD1A00();
    swift_allocError();
    *v14 = v13;
    return swift_willThrow();
  }

  v16 = [a3 computeCommandEncoder];
  if (!v16)
  {
    v13 = 4;
    goto LABEL_3;
  }

  v17 = v16;
  if (a2)
  {
    v18 = OUTLINED_FUNCTION_0_8();
    [v18 v19];
  }

  v20 = v7[3];
  [v17 setComputePipelineState_];
  [v17 setTexture:a1 atIndex:0];
  v31 = [a1 width];
  v21 = [a1 height];
  *&v22 = v31;
  *(&v22 + 1) = v21;
  v38 = v22;
  v39 = __invert_f4(*v32);
  swift_beginAccess();
  v40 = v7[4];
  [v17 setBytes:&v38 length:96 atIndex:0];
  v23 = [v20 threadExecutionWidth];
  v24 = [v20 maxTotalThreadsPerThreadgroup];
  if (!v23)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v24 == 0x8000000000000000 && v23 == -1)
  {
LABEL_17:
    __break(1u);
  }

  MTLSizeMake(v23, v24 / v23, &v36);
  v33 = v36;
  v26 = v37;
  v27 = [a1 width];
  v28 = [a1 height];
  *&v36 = v27;
  *(&v36 + 1) = v28;
  v37 = 1;
  v34 = v33;
  v35 = v26;
  [v17 dispatchThreads:&v36 threadsPerThreadgroup:&v34];
  if (a2)
  {
    v29 = OUTLINED_FUNCTION_0_8();
    [v29 v30];
  }

  [v17 endEncoding];
  return swift_unknownObjectRelease();
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t sub_1D8BD1DF8(uint64_t a1)
{
  if (*(a1 + 104))
  {
    v1 = *(a1 + 112);
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    v2 = *a1;
    v3 = swift_unknownObjectRetain();
    sub_1D8BD1B28(v3, v1, v2, v6, v7, v8, v9);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D8BD1A00();
    swift_allocError();
    *v5 = 1;
    return swift_willThrow();
  }
}

uint64_t SpatialPhoto.DepthNormalization.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

uint64_t SpatialPhoto.DepthNormalization.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SpatialPhoto.DepthNormalization.__deallocating_deinit()
{
  SpatialPhoto.DepthNormalization.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D8BD1F98()
{
  result = qword_1ECAA4898;
  if (!qword_1ECAA4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4898);
  }

  return result;
}

_BYTE *_s14descr1F54466F9O18DepthNormalizationC5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8BD2208(uint64_t a1, uint64_t a2, int a3, id a4)
{
  v5 = [a4 threadExecutionWidth];
  result = [a4 maxTotalThreadsPerThreadgroup];
  if (!v5)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v7 = result;
  if (result == 0x8000000000000000 && v5 == -1)
  {
    goto LABEL_65;
  }

  v9 = result / v5;
  result = MTLSizeMake(v5, result / v5, &v35);
  v32 = v35;
  if (v7 < v5)
  {
    return v32;
  }

  v10 = a1 * a2;
  if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = v5;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v14 = a1 + v12;
      if (__OFADD__(a1, v12))
      {
        break;
      }

      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v15)
      {
        goto LABEL_50;
      }

      if (v16 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_60;
      }

      v18 = a2 + v9;
      if (__OFADD__(a2, v9))
      {
        goto LABEL_51;
      }

      v15 = __OFSUB__(v18, 1);
      v19 = v18 - 1;
      if (v15)
      {
        goto LABEL_52;
      }

      if (!v9)
      {
        goto LABEL_53;
      }

      if (v19 == 0x8000000000000000 && v9 == -1)
      {
        goto LABEL_61;
      }

      v21 = v16 / v12;
      result = v21 * v12;
      if ((v21 * v12) >> 64 != (v21 * v12) >> 63)
      {
        goto LABEL_54;
      }

      v22 = v19 / v9 * v9;
      if ((v19 / v9 * v9) >> 64 != v22 >> 63)
      {
        goto LABEL_55;
      }

      result = MTLSizeMake(result, v22, &v35);
      v23 = v35 * v36;
      if ((v35 * v36) >> 64 != (v35 * v36) >> 63)
      {
        goto LABEL_56;
      }

      v24 = v23 - v10;
      if (__OFSUB__(v23, v10))
      {
        goto LABEL_57;
      }

      if (v9 >= v12)
      {
        v25 = v12;
      }

      else
      {
        v25 = v9;
      }

      if (v9 <= v12)
      {
        v26 = v12;
      }

      else
      {
        v26 = v9;
      }

      if (v26 == 0x8000000000000000 && v25 == -1)
      {
        goto LABEL_62;
      }

      v28 = v26 / v25;
      if (v13 >= v24 && v11 >= v28)
      {
        result = MTLSizeMake(v12, v9, &v35);
        v32 = v35;
        v11 = v28;
        v13 = v24;
      }

      v30 = v12 + v5;
      if (__OFADD__(v12, v5))
      {
        goto LABEL_58;
      }

      if (!v30)
      {
        goto LABEL_59;
      }

      if (v7 == 0x8000000000000000 && v30 == -1)
      {
        goto LABEL_63;
      }

      v12 += v5;
      v9 = v7 / v30;
      if (v7 < v30)
      {
        return v32;
      }
    }

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
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1D8BD2438(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4 + result;
  if (__OFADD__(a4, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_22;
  }

  v9 = a5 + a2;
  if (__OFADD__(a5, a2))
  {
    goto LABEL_19;
  }

  v6 = __OFSUB__(v9, 1);
  v10 = v9 - 1;
  if (v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!a2)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 != 0x8000000000000000 || a2 != -1)
  {
    return v7 / result;
  }

LABEL_23:
  __break(1u);
  return result;
}

void SpatialPhoto.OcclusionResult.normalizedSearchRect.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t SpatialPhoto.OcclusionResult.salientDepthResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return sub_1D8BD2568(v2, v3, v4, v5);
}

uint64_t sub_1D8BD2568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_1D8BCF500(a2, a3, a4);
  }

  return result;
}

__n128 SpatialPhoto.OcclusionResult.salientDepthResult.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_1D8BD25F0(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_1D8BD25F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_1D8BCF208(a2, a3, a4);
  }

  return result;
}

__n128 SpatialPhoto.OcclusionResult.analysisRegion.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 128);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  result = *(v1 + 96);
  v6 = *(v1 + 112);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  *(a1 + 64) = v3;
  *(a1 + 65) = v2;
  return result;
}

uint64_t SpatialPhoto.OcclusionResult.description.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v12 = *v0;
  v13 = v0[4];
  sub_1D8BF0DE0();
  MEMORY[0x1DA722A10](0xD000000000000018, 0x80000001D8BF3BB0);
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v12, v1, v2];
  v4 = sub_1D8BF09E0();
  v6 = v5;

  MEMORY[0x1DA722A10](v4, v6);

  MEMORY[0x1DA722A10](0xD000000000000016, 0x80000001D8BF3BD0);
  if (v13 == 1)
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    v8 = SpatialPhoto.SalientDepthResult.description.getter();
    v7 = v9;
  }

  MEMORY[0x1DA722A10](v8, v7);

  MEMORY[0x1DA722A10](0x73796C616E61202CLL, 0xEC000000203A7369);
  v10 = SpatialPhoto.Scene.OcclusionAnalysis.description.getter();
  MEMORY[0x1DA722A10](v10);

  MEMORY[0x1DA722A10](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_1D8BD283C()
{
  v1 = *v0;
  v3 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 3);
  v8 = *(v0 + 8);
  v7 = *(v0 + 9);
  v122 = *(v0 + 7);
  v139 = *(v0 + 9);
  v9 = *(v0 + 88);
  sub_1D8BF0DE0();
  MEMORY[0x1DA722A10](14963, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B0);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E6530];
  *(v10 + 16) = xmmword_1D8BF5A50;
  v12 = MEMORY[0x1E69E65A8];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = v1;
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28_1();
  v13 = OUTLINED_FUNCTION_5_3();
  v14 = MEMORY[0x1E69E6448];
  *(v13 + 16) = xmmword_1D8BF5A50;
  v15 = MEMORY[0x1E69E64A8];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = v3;
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28_1();
  v16 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v16, v17, v18, v19, v20, v21, v22, v23, v122, *(&v122 + 1), v139, *(&v139 + 1), v24);
  *(v25 + 56) = v14;
  *(v25 + 64) = v15;
  *(v25 + 32) = v2;
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  MEMORY[0x1DA722A10](0x3A70616720, 0xE500000000000000);
  v26 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v26, v27, v28, v29, v30, v31, v32, v33, v123, v131, v140, v148, v34);
  *(v35 + 56) = v14;
  *(v35 + 64) = v15;
  *(v35 + 32) = v5;
  OUTLINED_FUNCTION_15();
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  MEMORY[0x1DA722A10](0x3A6565726620, 0xE600000000000000);
  v36 = OUTLINED_FUNCTION_5_3();
  v37 = MEMORY[0x1E69E63B0];
  *(v36 + 16) = xmmword_1D8BF5A50;
  v38 = MEMORY[0x1E69E6438];
  *(v36 + 56) = v37;
  *(v36 + 64) = v38;
  *(v36 + 32) = v6;
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  MEMORY[0x1DA722A10](0x3A63636F20, 0xE500000000000000);
  v39 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v39, v40, v41, v42, v43, v44, v45, v46, v124, v132, v141, v149, v47);
  *(v48 + 56) = v14;
  *(v48 + 64) = v15;
  *(v48 + 32) = v8;
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  MEMORY[0x1DA722A10](0x3A63634F7320, 0xE600000000000000);
  v49 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v49, v50, v51, v52, v53, v54, v55, v56, v125, v133, v142, v150, v57);
  *(v58 + 56) = v14;
  *(v58 + 64) = v15;
  *(v58 + 32) = v7;
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28_1();
  v59 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v59, v60, v61, v62, v63, v64, v65, v66, v126, v134, v143, v151, v67);
  v68 = v6 * 30.0;
  *(v69 + 56) = v37;
  *(v69 + 64) = v38;
  *(v69 + 32) = v68;
  OUTLINED_FUNCTION_15();
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_22_0();

  v70 = 0xE300000000000000;
  OUTLINED_FUNCTION_16_2();
  v71 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v71, v72, v73, v74, v75, v76, v77, v78, v127, v135, v144, v152, v79);
  v80 = v8 * 25.0;
  *(v81 + 56) = v37;
  *(v81 + 64) = v38;
  *(v81 + 32) = v80;
  OUTLINED_FUNCTION_15();
  v82 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v82);

  OUTLINED_FUNCTION_16_2();
  v83 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v83, v84, v85, v86, v87, v88, v89, v90, v128, v136, v145, v153, v91);
  v92 = v7;
  *(v93 + 56) = v37;
  *(v93 + 64) = v38;
  *(v93 + 32) = v92;
  OUTLINED_FUNCTION_15();
  v94 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v94);

  OUTLINED_FUNCTION_16_2();
  v95 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v95, v96, v97, v98, v99, v100, v101, v102, v129, v137, v146, v154, v103);
  v104 = (1.0 - v4) * 10.0;
  *(v105 + 56) = v37;
  *(v105 + 64) = v38;
  *(v105 + 32) = v104;
  OUTLINED_FUNCTION_15();
  v106 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v106);

  MEMORY[0x1DA722A10](2112800, 0xE300000000000000);
  v107 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_2_7(v107, v108, v109, v110, v111, v112, v113, v114, v130, v138, v147, v155, v115);
  v117 = v104 + v68 + v80 + v92;
  if (v9 != 6)
  {
    v117 = -1000.0;
  }

  *(v116 + 56) = v37;
  *(v116 + 64) = v38;
  *(v116 + 32) = v117;
  OUTLINED_FUNCTION_15();
  v118 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v118);

  MEMORY[0x1DA722A10](0x656D6F6374756F20, 0xE90000000000003ALL);
  if (v9 == 255)
  {
    v119 = 7104878;
  }

  else
  {
    v119 = SpatialPhoto.Scene.OcclusionAnalysis.description.getter();
    v70 = v120;
  }

  MEMORY[0x1DA722A10](v119, v70);

  return 0;
}

uint64_t static SpatialPhoto.predictOcclusionDepth(for:normalizedSearchRect:isInteractive:sceneAnalysis:)(uint64_t a1, int a2, uint64_t a3)
{
  v8 = v3;
  v157 = a3;
  LODWORD(v161) = a2;
  OUTLINED_FUNCTION_35_0();
  v10 = v9;
  v159 = v11;
  v12 = sub_1D8BF07F0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v148 - v17;
  if (qword_1ECAA3E28 != -1)
  {
    swift_once();
  }

  _s14descr1F54466F9O28OcclusionDepthDebugCollectorCMa();
  v192 = swift_allocObject();
  if (qword_1ECAA3E78 != -1)
  {
    swift_once();
  }

  v19 = sub_1D8BF0820();
  __swift_project_value_buffer(v19, qword_1ECAA4C20);
  sub_1D8BF0810();

  sub_1D8BF07C0();

  v20 = sub_1D8BF0810();
  LODWORD(v158) = sub_1D8BF0C90();

  if (sub_1D8BF0CF0())
  {
    v21 = OUTLINED_FUNCTION_24_0();
    v155 = v16;
    v22 = v21;
    v23 = swift_slowAlloc();
    v156 = v3;
    v154 = v23;
    v183 = v23;
    *v22 = 136315394;
    v172[0] = v10;
    v24 = sub_1D8BF10C0();
    v26 = sub_1D8BBE6E8(v24, v25, &v183);
    v160 = v10;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v7, *&v6, *&v5, *&v4];
    v29 = sub_1D8BF09E0();
    v30 = v12;
    v32 = v31;

    v33 = v29;
    v10 = v160;
    v34 = sub_1D8BBE6E8(v33, v32, &v183);

    *(v22 + 14) = v34;
    v35 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v20, v158, v35, "PredictOcclusionDepth", "scene:%s normalizedSearchRect:%{public}s", v22, 0x16u);
    v12 = v30;
    swift_arrayDestroy();
    v8 = v156;
    OUTLINED_FUNCTION_11_1();
    v16 = v155;
    OUTLINED_FUNCTION_11_1();
  }

  (*(v13 + 16))(v16, v18, v12);
  sub_1D8BF0860();
  swift_allocObject();
  v36 = sub_1D8BF0850();
  (*(v13 + 8))(v18, v12);
  if (qword_1ECAA3D70 != -1)
  {
    swift_once();
  }

  if ((byte_1ECAAA79C & 1) == 0)
  {
    v42 = dword_1ECAAA798;
    v43 = *&dword_1ECAAA798;
    OUTLINED_FUNCTION_10_3();
    sub_1D8BF0DE0();
    OUTLINED_FUNCTION_36_1();
    MEMORY[0x1DA722A10](0xD000000000000035, 0x80000001D8BF3C40);
    sub_1D8BF0B10();
    MEMORY[0x1DA722A10](0x616E6120726F6620, 0xED0000736973796CLL);

    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v44 = sub_1D8BF08A0();
    __swift_project_value_buffer(v44, qword_1EE320A70);
    v45 = sub_1D8BF0880();
    v46 = sub_1D8BF0BB0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = v43;
      _os_log_impl(&dword_1D8BAF000, v45, v46, "SpatialPhoto SpatialPhotoCameraOverrideZSplit set to %f for analysis", v47, 0xCu);
      OUTLINED_FUNCTION_11_1();
    }

    v48 = v159;
    *v159 = v7;
    v48[1] = v6;
    v48[2] = v5;
    v48[3] = v4;
    OUTLINED_FUNCTION_33_1();
    *(v50 + 32) = v49;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 1;
    *(v50 + 72) = 0;
    *(v50 + 80) = 0;
    *(v50 + 88) = 0;
    *(v50 + 96) = v42;
    *(v50 + 104) = 0;
    *(v50 + 112) = 0;
    *(v50 + 120) = 0;
    *(v50 + 128) = 6;
    goto LABEL_24;
  }

  swift_beginAccess();
  v37 = *(v10 + 48) - *(v10 + 44);
  if (v37 <= 0.0)
  {
    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v51 = sub_1D8BF08A0();
    __swift_project_value_buffer(v51, qword_1EE320A70);
    OUTLINED_FUNCTION_18_1();

    v52 = sub_1D8BF0880();
    v53 = sub_1D8BF0B90();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_24_0();
      v183 = swift_slowAlloc();
      *v54 = 136446466;
      v172[0] = v10;
      v55 = sub_1D8BF10C0();
      sub_1D8BBE6E8(v55, v56, &v183);
      OUTLINED_FUNCTION_29_0();
      *(v54 + 4) = v20;
      *(v54 + 12) = 2082;
      v172[0] = *(v10 + 44);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4850);
      sub_1D8BCF7E8();
      v58 = sub_1D8BF0FE0();
      sub_1D8BBE6E8(v58, v59, &v183);
      OUTLINED_FUNCTION_29_0();
      *(v54 + 14) = v57;
      _os_log_impl(&dword_1D8BAF000, v52, v53, "predictOcclusionDepth[%{public}s] invalid depth range:%{public}s", v54, 0x16u);
      OUTLINED_FUNCTION_20_1();
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_11_1();
    }

    sub_1D8BD7EDC();
    swift_allocError();
    *v60 = 2;
    *(v60 + 8) = 0;
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    *(v60 + 32) = 1;
    swift_willThrow();
    goto LABEL_24;
  }

  type metadata accessor for SpatialPhoto.CaptureManager();
  OUTLINED_FUNCTION_10_3();
  sub_1D8BF0DE0();

  v183 = 0xD000000000000016;
  v184 = 0x80000001D8BF3BF0;
  v172[0] = v10;
  v38 = sub_1D8BF10C0();
  v160 = v10;
  MEMORY[0x1DA722A10](v38);

  MEMORY[0x1DA722A10](93, 0xE100000000000000);
  v39 = static SpatialPhoto.CaptureManager.start(_:device:)(v183, v184);
  v40 = v160;

  v41 = sub_1D8BD45E4(v157, v40);
  if (!v8)
  {
    v62 = v41;
    *v190 = v7;
    *&v190[1] = v6;
    *&v190[2] = v5;
    *&v190[3] = v4;
    v191 = 0;

    static SpatialPhoto.predictSalientDepth(for:normalizedSearchRect:sceneAnalysis:)(v40, v190, v62, &v183);
    v154 = v36;
    v155 = v39;

    v63 = v183;
    v150 = v185;
    v151 = v184;
    *&v158 = v186;
    v64 = v187;
    v156 = v188;
    v65 = v189;
    OUTLINED_FUNCTION_10_3();
    sub_1D8BF0DE0();
    OUTLINED_FUNCTION_36_1();
    MEMORY[0x1DA722A10](0xD000000000000016, 0x80000001D8BF3BF0);
    v172[0] = v40;
    v66 = sub_1D8BF10C0();
    MEMORY[0x1DA722A10](v66);

    v67 = v156;
    MEMORY[0x1DA722A10](0xD00000000000002ELL, 0x80000001D8BF3C10);
    if (v158)
    {
      v68 = 1702195828;
    }

    else
    {
      v68 = 0x65736C6166;
    }

    if (v158)
    {
      v69 = 0xE400000000000000;
    }

    else
    {
      v69 = 0xE500000000000000;
    }

    MEMORY[0x1DA722A10](v68, v69);

    sub_1D8BEB168();
    LOBYTE(v183) = 4;
    sub_1D8BEB3E0(&v183);
    LOBYTE(v183) = 1;
    sub_1D8BEB5C4(&v183);
    v163 = v63;
    v164 = v151;
    v165 = v150;
    v166 = v158;
    v167 = v64;
    v168 = v67;
    v169 = v65;
    v70 = v151;
    v71 = v150;
    v152 = v64;
    v153 = v65;
    sub_1D8BCF500(v151, v150, v158);
    v157 = v62;
    sub_1D8BD47CC(v40, &v163, v62, v161 & 1, 1.0, v7, v6, v5, v4);
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v149 = v78;
    v79 = v71;
    v80 = v158;
    OUTLINED_FUNCTION_37_1();
    v81 = v77;
    if (!v77)
    {
      v82 = v160;
      sub_1D8BCEBFC(v160, *&v149);
      OUTLINED_FUNCTION_34_1();
      v173 = v96;
      OUTLINED_FUNCTION_1_4(v97);
      v181 = v98;
      OUTLINED_FUNCTION_9_3();
      v182 = 6;
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v99 = sub_1D8BF08A0();
      __swift_project_value_buffer(v99, qword_1EE320A70);
      OUTLINED_FUNCTION_18_1();

      v100 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v100, v101);
      v102 = sub_1D8BF0880();
      v103 = sub_1D8BF0BB0();

      sub_1D8BD7FC8(v172);
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v171 = v161;
        *v104 = 136446978;
        v170[0] = v82;
        v105 = sub_1D8BF10C0();
        v107 = OUTLINED_FUNCTION_24_1(v105, v106);

        *(v104 + 4) = v107;
        *(v104 + 12) = 2082;
        OUTLINED_FUNCTION_19_1();
        v108 = OUTLINED_FUNCTION_7_3();
        sub_1D8BD7F90(v108, v109);
        v110 = SpatialPhoto.OcclusionResult.description.getter();
        v112 = v111;
        memcpy(v170, v162, 0x81uLL);
        sub_1D8BD7FC8(v170);
        sub_1D8BBE6E8(v110, v112, &v171);
        OUTLINED_FUNCTION_18_1();

        *(v104 + 14) = v110;
        *(v104 + 22) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B0);
        v113 = swift_allocObject();
        v158 = xmmword_1D8BF5A50;
        v114 = MEMORY[0x1E69E6448];
        *(v113 + 16) = xmmword_1D8BF5A50;
        v115 = MEMORY[0x1E69E64A8];
        *(v113 + 56) = v114;
        *(v113 + 64) = v115;
        *(v113 + 32) = v37;
        OUTLINED_FUNCTION_15();
        v116 = sub_1D8BF0A10();
        v118 = sub_1D8BBE6E8(v116, v117, &v171);
        v82 = v160;

        *(v104 + 24) = v118;
        *(v104 + 32) = 2080;
        v119 = swift_allocObject();
        *(v119 + 16) = v158;
        *(v119 + 56) = MEMORY[0x1E69E6448];
        *(v119 + 64) = MEMORY[0x1E69E64A8];
        *(v119 + 32) = v149;
        OUTLINED_FUNCTION_15();
        v120 = sub_1D8BF0A10();
        v122 = OUTLINED_FUNCTION_24_1(v120, v121);

        *(v104 + 34) = v122;
        _os_log_impl(&dword_1D8BAF000, v102, v103, "predictOcclusionDepth[%{public}s] Success result:%{public}s sceneDepthLength:%s sceneDepth:%s", v104, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11_1();
        OUTLINED_FUNCTION_11_1();
      }

      v123 = OUTLINED_FUNCTION_14_2();
      memcpy(v123, v124, 0x81uLL);
LABEL_55:
      v147 = v155;
      v172[0] = v82;
      sub_1D8BF10C0();

      OUTLINED_FUNCTION_29_1();
      if (!v147)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }

    v82 = v160;
    if (v81 == 1)
    {
      OUTLINED_FUNCTION_34_1();
      v173 = v134;
      v174 = v135;
      v175 = v70;
      v176 = v79;
      v177 = v80;
      v178 = v152;
      v179 = v156;
      v180 = v153;
      v181 = v136;
      OUTLINED_FUNCTION_9_3();
      v182 = v137;
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v138 = sub_1D8BF08A0();
      __swift_project_value_buffer(v138, qword_1EE320A70);
      OUTLINED_FUNCTION_18_1();

      v139 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v139, v140);
      v88 = sub_1D8BF0880();
      sub_1D8BF0BB0();
      OUTLINED_FUNCTION_32_1();
      sub_1D8BD7FC8(v172);
      if (!OUTLINED_FUNCTION_31_1())
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_24_0();
      v171 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_21_0(4.8752e-34);
      v141 = sub_1D8BF10C0();
      OUTLINED_FUNCTION_24_1(v141, v142);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_19_1();
      v143 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v143, v144);
      SpatialPhoto.OcclusionResult.description.getter();
      OUTLINED_FUNCTION_8_2();
      sub_1D8BD7FC8(v170);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_23_1();

      *(v82 + 14) = v162;
      v95 = "predictOcclusionDepth[%{public}s] Failed, too occluded:%{public}s.";
    }

    else if (v75 | v73 | v149)
    {
      OUTLINED_FUNCTION_34_1();
      v173 = v83;
      OUTLINED_FUNCTION_1_4(v84);
      v181 = 2;
      OUTLINED_FUNCTION_9_3();
      v182 = 7;
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v85 = sub_1D8BF08A0();
      __swift_project_value_buffer(v85, qword_1EE320A70);
      OUTLINED_FUNCTION_18_1();

      v86 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v86, v87);
      v88 = sub_1D8BF0880();
      sub_1D8BF0BB0();
      OUTLINED_FUNCTION_32_1();
      sub_1D8BD7FC8(v172);
      if (!OUTLINED_FUNCTION_31_1())
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_24_0();
      v171 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_21_0(4.8752e-34);
      v89 = sub_1D8BF10C0();
      OUTLINED_FUNCTION_24_1(v89, v90);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_19_1();
      v91 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v91, v92);
      SpatialPhoto.OcclusionResult.description.getter();
      OUTLINED_FUNCTION_8_2();
      sub_1D8BD7FC8(v170);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_23_1();

      *(v82 + 14) = v162;
      v95 = "predictOcclusionDepth[%{public}s] Failed, not enough free space:%{public}s.";
    }

    else
    {
      OUTLINED_FUNCTION_34_1();
      v173 = v125;
      OUTLINED_FUNCTION_1_4(v126);
      v181 = 1;
      OUTLINED_FUNCTION_9_3();
      v182 = 7;
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v127 = sub_1D8BF08A0();
      __swift_project_value_buffer(v127, qword_1EE320A70);
      OUTLINED_FUNCTION_18_1();

      v128 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v128, v129);
      v88 = sub_1D8BF0880();
      sub_1D8BF0BB0();
      OUTLINED_FUNCTION_32_1();
      sub_1D8BD7FC8(v172);
      if (!OUTLINED_FUNCTION_31_1())
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_24_0();
      v171 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_21_0(4.8752e-34);
      v130 = sub_1D8BF10C0();
      OUTLINED_FUNCTION_24_1(v130, v131);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_19_1();
      v132 = OUTLINED_FUNCTION_7_3();
      sub_1D8BD7F90(v132, v133);
      SpatialPhoto.OcclusionResult.description.getter();
      OUTLINED_FUNCTION_8_2();
      sub_1D8BD7FC8(v170);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_23_1();

      *(v82 + 14) = v162;
      v95 = "predictOcclusionDepth[%{public}s] Failed, no salient overlap:%{public}s.";
    }

    OUTLINED_FUNCTION_15_2(&dword_1D8BAF000, v93, v94, v95);
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_11_1();
    v82 = v160;
    OUTLINED_FUNCTION_11_1();
LABEL_54:

    v145 = OUTLINED_FUNCTION_14_2();
    memcpy(v145, v146, 0x81uLL);
    goto LABEL_55;
  }

  if (v39)
  {
LABEL_13:
    sub_1D8BDB448();
  }

LABEL_24:
  sub_1D8BD4358();

  swift_setDeallocating();
  return swift_deallocClassInstance();
}