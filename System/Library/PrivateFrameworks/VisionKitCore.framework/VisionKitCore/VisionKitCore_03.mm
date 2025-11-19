uint64_t sub_1B4401080(uint64_t result)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    if (v2 == result)
    {
      return result;
    }

LABEL_5:
    *(v1 + 40) = 0;
    return swift_unknownObjectRelease();
  }

  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1B44010A4(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + 40);
  swift_unknownObjectRetain();
  if (v4 || (v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 56) width:objc_msgSend(v2 height:sel_width) mipmapped:objc_msgSend(v2, sel_height), 0], objc_msgSend(v5, sel_setUsage_, 7), objc_msgSend(v5, sel_setStorageMode_, 2), v6 = objc_msgSend(*(v1 + 16), sel_newTextureWithDescriptor_, v5), v5, *(v1 + 40) = v6, swift_unknownObjectRelease(), (v4 = *(v1 + 40)) != 0))
  {
    v7 = *(v1 + 24);
    v8 = [swift_unknownObjectRetain() width];
    v9 = *(v1 + 48);
    if (v9)
    {
      goto LABEL_8;
    }

    v10 = (v7 * v8) / 3.0349;
    v11 = *(v1 + 16);
    v12 = objc_allocWithZone(MEMORY[0x1E69745C0]);
    *&v13 = v10;
    v14 = [v12 initWithDevice:v11 sigma:v13];
    v15 = *(v1 + 48);
    *(v1 + 48) = v14;
    v16 = v14;

    if (v16)
    {
      [v16 setEdgeMode_];
    }

    v9 = *(v1 + 48);
    if (v9)
    {
LABEL_8:
      [v9 encodeToCommandBuffer:a1 sourceTexture:v2 destinationTexture:v4];
    }

    else
    {
      swift_unknownObjectRelease();
      v4 = 0;
    }
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1B4401278()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

char *sub_1B44012EC(void *a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = &v2[OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = sub_1B4416070();
  v7 = [a2 newFunctionWithName_];

  v8 = sub_1B4416070();
  v9 = [a2 newFunctionWithName_];

  v10 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  [v10 setVertexFunction_];
  [v10 setFragmentFunction_];
  v11 = [v10 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript_];

  if (!v12)
  {
    __break(1u);
  }

  [v12 setPixelFormat_];

  v19[0] = 0;
  v13 = [a1 newRenderPipelineStateWithDescriptor:v10 error:v19];
  if (v13)
  {
    v14 = v13;
    v15 = v19[0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *&v2[OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_pipelineState] = v14;
    v18.receiver = v2;
    v18.super_class = type metadata accessor for StickerComicShaderBase();
    v2 = objc_msgSendSuper2(&v18, sel_init);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = v19[0];
    sub_1B4415F30();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    type metadata accessor for StickerComicShaderBase();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

void sub_1B440156C(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  v6 = [v5 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript_];

  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v7 setTexture_];

  v8 = [v5 colorAttachments];
  v9 = [v8 objectAtIndexedSubscript_];

  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v9 setLoadAction_];

  v10 = [v5 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript_];

  if (!v11)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v11 setClearColor_];

  v12 = [a2 renderCommandEncoderWithDescriptor_];
  if (v12)
  {
    [v12 setRenderPipelineState_];
  }
}

void sub_1B4401718(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B440156C(a1, a3);
  if (v5)
  {
    v6 = v5;
    [v5 setFragmentTexture:a2 atIndex:0];
    [v6 setVertexBytes:&unk_1F2C03880 length:32 atIndex:0];
    [v6 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:1];
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x98))(v6);
    [v6 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v6 endEncoding];

    swift_unknownObjectRelease();
  }
}

char *sub_1B4401828(void *a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = &v2[OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = sub_1B4416070();
  v7 = [a2 newFunctionWithName_];

  v8 = sub_1B4416070();
  v9 = [a2 newFunctionWithName_];

  v10 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  [v10 setVertexFunction_];
  [v10 setFragmentFunction_];
  v11 = [v10 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript_];

  if (!v12)
  {
    __break(1u);
  }

  [v12 setPixelFormat_];

  v19[0] = 0;
  v13 = [a1 newRenderPipelineStateWithDescriptor:v10 error:v19];
  if (v13)
  {
    v14 = v13;
    v15 = v19[0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *&v2[OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_pipelineState] = v14;
    v18.receiver = v2;
    v18.super_class = type metadata accessor for StickerComicShaderBase();
    v2 = objc_msgSendSuper2(&v18, sel_init);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = v19[0];
    sub_1B4415F30();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    type metadata accessor for StickerComicShaderBase();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

id sub_1B4401B78(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B4401BD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerComicSobelShader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B4401C2C(void *a1)
{

  return sub_1B43FB140(a1, &OBJC_IVAR____TtC13VisionKitCore24StickerComicStrokeShader_sigma);
}

id sub_1B4401CC8(void *a1)
{

  return sub_1B43FB140(a1, &OBJC_IVAR____TtC13VisionKitCore32StickerComicStrokeAndBlendShader_sigma);
}

id sub_1B4401D40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B4401D9C()
{
  result = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:0];
  qword_1EB89A500 = result;
  return result;
}

id sub_1B4401DE0()
{
  result = [objc_opt_self() weakObjectsHashTable];
  qword_1EB898EE8 = result;
  return result;
}

void sub_1B4401E1C(id a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    v5 = a1;
    [v5 _removeScrollViewScrollObserver_];
    if (qword_1EB898A78 != -1)
    {
      swift_once();
    }

    [qword_1EB898EE8 removeObject_];
    goto LABEL_9;
  }

  v5 = Strong;
  if (a1)
  {
    sub_1B4407DBC(0, &qword_1EB899088);
    a1 = a1;
    v6 = sub_1B4416190();

    if (v6)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_9:

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 _addScrollViewScrollObserver_];
    if (qword_1EB898A78 != -1)
    {
      swift_once();
    }

    [qword_1EB898EE8 addObject_];
  }
}

void sub_1B4401FB4(double a1)
{
  *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_requiredScale) = a1;
  v2 = OBJC_IVAR___VKCStickerEffectViewInternal_appliedScale;
  if (a1 > 0.0 && *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_appliedScale) != a1)
  {
    *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_appliedScale) = a1;
    v4 = objc_opt_self();
    [v4 begin];
    [v4 setDisableActions_];
    v5 = *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_metalLayerContainer);
    CATransform3DMakeScale(&v6, 1.0 / *(v1 + v2), 1.0 / *(v1 + v2), 1.0);
    [v5 setSublayerTransform_];
    [v4 commit];
  }
}

void sub_1B4402084(char a1)
{
  if (v1[OBJC_IVAR___VKCStickerEffectViewInternal_displayLinkActive] == (a1 & 1))
  {
    return;
  }

  v2 = OBJC_IVAR___VKCStickerEffectViewInternal_displayLink;
  v3 = *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_displayLink];
  if (!v1[OBJC_IVAR___VKCStickerEffectViewInternal_displayLinkActive])
  {
    if (!v3)
    {
      v11 = 0;
      goto LABEL_9;
    }

LABEL_7:
    v8 = objc_opt_self();
    v9 = v3;
    v10 = [v8 mainRunLoop];
    [v9 removeFromRunLoop:v10 forMode:*MEMORY[0x1E695DA28]];

    v11 = *&v1[v2];
LABEL_9:
    *&v1[v2] = 0;
LABEL_10:

    return;
  }

  if (v3)
  {
    goto LABEL_7;
  }

  v4 = [v1 window];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 screen];

    v7 = [v6 displayLinkWithTarget:v1 selector:sel__internalUpdateFromDisplayLink_];
  }

  else
  {
    v7 = 0;
  }

  v12 = *&v1[v2];
  *&v1[v2] = v7;
  v13 = v7;

  if (v7)
  {
    sub_1B4416120();
    [v13 setPreferredFrameRateRange_];
  }

  v14 = *&v1[v2];
  if (v14)
  {
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 mainRunLoop];
    [v16 addToRunLoop:v17 forMode:*MEMORY[0x1E695DA28]];

    v11 = v17;
    goto LABEL_10;
  }
}

void sub_1B44022A0()
{
  if (qword_1EB898A30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB89A480;
  if (*(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_motionActive) != 1)
  {
    MEMORY[0x1EEE9AC00]();
    v7[2] = v0;
    v7[3] = &off_1F2C03EA0;
    swift_beginAccess();
    v3 = sub_1B4406EEC(sub_1B4407D9C, v7);
    v4 = *(v1 + 136);
    if (v4 >> 62)
    {
      v6 = v3;
      v5 = sub_1B4416210();
      v3 = v6;
      if (v5 >= v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 >= v3)
      {
LABEL_9:
        sub_1B440769C(v3, v5);
        swift_endAccess();
        sub_1B43FB544();
        return;
      }
    }

    __break(1u);
    return;
  }

  v2 = qword_1EB89A480;

  sub_1B44073AC(v0, v2);
}

id sub_1B4402410()
{
  result = sub_1B4402460(27.4155678);
  qword_1EB898EF0 = result;
  return result;
}

id sub_1B4402438()
{
  result = sub_1B4402460(15.4212569);
  qword_1EB898EF8 = result;
  return result;
}

id sub_1B4402460(double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69794A8]) init];
  [v2 setStiffness_];
  [v2 stiffness];
  v4 = sqrt(v3);
  [v2 setDamping_];
  v5 = v2;
  [v5 settlingDuration];
  [v5 setDuration_];
  v6 = [objc_opt_self() functionWithName_];
  [v5 setTimingFunction_];

  return v5;
}

id sub_1B4402554(float32x4_t a1)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*&v1[OBJC_IVAR___VKCStickerEffectViewInternal_settlingOrientation], a1))) & 1) == 0)
  {
    v1[OBJC_IVAR___VKCStickerEffectViewInternal_needsRender] = 1;
    if (!*&v1[OBJC_IVAR___VKCStickerEffectViewInternal_displayLink])
    {
      return [v1 setNeedsLayout];
    }
  }

  return result;
}

id sub_1B4402650(float a1)
{
  v2 = *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_curlPosition];
  *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_curlPosition] = a1;
  if (v2 != a1)
  {
    v1[OBJC_IVAR___VKCStickerEffectViewInternal_needsRender] = 1;
    if (!*&v1[OBJC_IVAR___VKCStickerEffectViewInternal_displayLink])
    {
      return [v1 setNeedsLayout];
    }
  }

  return result;
}

void sub_1B4402790(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_image];
  if (v2)
  {
    if (v2 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v3 = *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_metalLayer];
  [v3 setHidden_];
  if (([v3 isHidden] & 1) == 0)
  {
    v1[OBJC_IVAR___VKCStickerEffectViewInternal_needsRender] = 1;
    if (!*&v1[OBJC_IVAR___VKCStickerEffectViewInternal_displayLink])
    {
      [v1 setNeedsLayout];
    }
  }

  sub_1B4404C34();
}

uint64_t sub_1B4402928()
{
  v1 = v0;
  sub_1B44161C0();
  MEMORY[0x1B8C75700](0x65636E6174736E69, 0xEA0000000000203ALL);
  v12 = *&v0[OBJC_IVAR___VKCStickerEffectViewInternal_instanceNumber];
  v2 = sub_1B4416230();
  MEMORY[0x1B8C75700](v2);

  MEMORY[0x1B8C75700](0x3A74636566666520, 0xE900000000000020);
  v3 = [*&v0[OBJC_IVAR___VKCStickerEffectViewInternal_effect] description];
  v4 = sub_1B4416080();
  v6 = v5;

  MEMORY[0x1B8C75700](v4, v6);

  MEMORY[0x1B8C75700](0x3A64657375617020, 0xE900000000000020);
  if (v1[OBJC_IVAR___VKCStickerEffectViewInternal_isPaused])
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___VKCStickerEffectViewInternal_isPaused])
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1B8C75700](v7, v8);

  MEMORY[0x1B8C75700](0x3A73646E756F6220, 0xE900000000000020);
  [v1 bounds];
  type metadata accessor for CGRect(0);
  sub_1B44161F0();
  MEMORY[0x1B8C75700](0xD000000000000016, 0x80000001B4435480);
  if (v1[OBJC_IVAR___VKCStickerEffectViewInternal_boundsIncludeStroke])
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___VKCStickerEffectViewInternal_boundsIncludeStroke])
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1B8C75700](v9, v10);

  return 0;
}

char *sub_1B4402B64(void *a1)
{
  v2 = v1;
  v56 = a1;
  sub_1B4416130();
  MEMORY[0x1EEE9AC00]();
  v58 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B4416140();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4416040();
  MEMORY[0x1EEE9AC00]();
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = &xmmword_1B4429590;
  v55 = OBJC_IVAR___VKCStickerEffectViewInternal_logger;
  sub_1B4415F80();
  v53 = OBJC_IVAR___VKCStickerEffectViewInternal_instanceLabel;
  *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_instanceLabel] = 0;
  v10 = OBJC_IVAR___VKCStickerEffectViewInternal_metalLayer;
  v11 = [objc_allocWithZone(MEMORY[0x1E69793F0]) init];
  v54 = v10;
  *&v1[v10] = v11;
  v12 = OBJC_IVAR___VKCStickerEffectViewInternal_metalLayerContainer;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v1[OBJC_IVAR___VKCStickerEffectViewInternal_needsRender] = 1;
  v1[OBJC_IVAR___VKCStickerEffectViewInternal_renderInProgress] = 0;
  *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_scrollViewToObserveCount] = 0;
  v51 = OBJC_IVAR___VKCStickerEffectViewInternal_scrollViewToObserve;
  v52 = v12;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_requiredScale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_appliedScale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_strokeScale] = 0x3FF0000000000000;
  v13 = OBJC_IVAR___VKCStickerEffectViewInternal_renderQueue;
  sub_1B4407DBC(0, &qword_1EB899010);
  sub_1B4416030();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  v60 = MEMORY[0x1E69E7CC0];
  v14 = sub_1B4408440(&qword_1EB8990C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8990C8);
  sub_1B4408488(&unk_1EB8990D0, &qword_1EB8990C8);
  sub_1B44161B0();
  v15 = v13;
  *&v1[v13] = sub_1B4416170();
  *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_renderer] = 0;
  v16 = OBJC_IVAR___VKCStickerEffectViewInternal_displayLink;
  *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_displayLink] = 0;
  v17 = qword_1EB898EE0;
  if (__OFADD__(qword_1EB898EE0, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EB898EE0;
    *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_instanceNumber] = v17;
    v1[OBJC_IVAR___VKCStickerEffectViewInternal_displayLinkActive] = 0;
    v1[OBJC_IVAR___VKCStickerEffectViewInternal_motionActive] = 0;
    *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_deviceOrientation] = xmmword_1B4428F00;
    *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_settlingDuration1] = 0x3FF3333333333333;
    *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_settlingDuration2] = 0x3FF999999999999ALL;
    *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_settlingStartAngle] = xmmword_1B4429590;
    *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_settlingEndAngle] = xmmword_1B4428F00;
    *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_settlingStartTime] = 0;
    *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_settlingOrientation] = xmmword_1B4428F00;
    *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_screenCenterDuration] = 0x3FD999999999999ALL;
    *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_unitScreenCenter] = 0x3F0000003F000000;
    v1[OBJC_IVAR___VKCStickerEffectViewInternal_boundsIncludeStroke] = 1;
    v1[OBJC_IVAR___VKCStickerEffectViewInternal_reRenderOnMotion] = 1;
    *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_curlPosition] = 1065353216;
    v9 = OBJC_IVAR___VKCStickerEffectViewInternal_effect;
    *&v9[v1] = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
    v14 = OBJC_IVAR___VKCStickerEffectViewInternal_image;
    *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_image] = 0;
    v1[OBJC_IVAR___VKCStickerEffectViewInternal_isPaused] = 0;
    if (qword_1EB898A70 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v18 = qword_1EB89A500;
  v19 = v56;
  swift_unknownObjectRetain();
  v20 = [v18 objectForKey_];
  if (!v20)
  {
    v21 = [v19 newCommandQueue];
    [v18 setObject:v21 forKey:v19];
    if (!v21)
    {
      swift_unknownObjectRelease_n();
      v49 = sub_1B4415F90();
      (*(*(v49 - 8) + 8))(&v2[v55], v49);

      MEMORY[0x1B8C77190](&v2[v51]);

      type metadata accessor for StickerEffectView();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v20 = v21;
  }

  *&v2[OBJC_IVAR___VKCStickerEffectViewInternal_device] = v19;
  *&v2[OBJC_IVAR___VKCStickerEffectViewInternal_commandQueue] = v20;
  v22 = type metadata accessor for StickerEffectView();
  v59.receiver = v2;
  v59.super_class = v22;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = objc_msgSendSuper2(&v59, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v23 setClipsToBounds_];
  v24 = OBJC_IVAR___VKCStickerEffectViewInternal_metalLayerContainer;
  [*&v23[OBJC_IVAR___VKCStickerEffectViewInternal_metalLayerContainer] setMasksToBounds_];
  v25 = *&v23[v24];
  v26 = [v23 layer];
  [v26 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v25 setFrame_];
  v35 = [v23 layer];
  [v35 addSublayer_];

  v36 = OBJC_IVAR___VKCStickerEffectViewInternal_metalLayer;
  v37 = *&v23[OBJC_IVAR___VKCStickerEffectViewInternal_metalLayer];
  [v37 setDevice_];

  swift_unknownObjectRelease();
  [*&v23[v36] setHidden_];
  [*&v23[v36] setOpaque_];
  v38 = *&v23[v24];
  v39 = *&v23[v36];
  [v38 bounds];
  [v39 setFrame_];

  [*&v23[v36] setPresentsWithTransaction_];
  [*&v23[v24] addSublayer_];
  v40 = [objc_opt_self() defaultCenter];
  v41 = sub_1B4416070();
  [v40 addObserver:v23 selector:sel_scrollViewWillChange_ name:v41 object:0];

  v42 = v23;
  v43 = sub_1B4416070();
  [v40 addObserver:v42 selector:sel_scrollViewDidChange_ name:v43 object:0];

  v44 = v42;
  v45 = sub_1B4416070();
  [v40 addObserver:v44 selector:sel_scrollViewWillChange_ name:v45 object:0];

  v46 = v44;
  v47 = sub_1B4416070();
  [v40 addObserver:v46 selector:sel_scrollViewDidChange_ name:v47 object:0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v46;
}

void sub_1B4403584()
{
  v1 = v0;
  sub_1B4415E90();
  if (v11)
  {
    sub_1B4407DBC(0, &qword_1EB899088);
    if (swift_dynamicCast())
    {
      if ([v0 isDescendantOfView_])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v3 = v9;
        if (Strong && (v4 = sub_1B4416190(), Strong, (v4 & 1) != 0))
        {

          v5 = *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_scrollViewToObserveCount];
          v6 = __OFADD__(v5, 1);
          v7 = v5 + 1;
          if (v6)
          {
            __break(1u);
          }

          else
          {
            *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_scrollViewToObserveCount] = v7;
          }
        }

        else
        {
          *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_scrollViewToObserveCount] = 0;
          v8 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          sub_1B4401E1C(v8);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1B4408384(v10, &qword_1EB899080);
  }
}

void sub_1B4403704()
{
  v1 = v0;
  sub_1B4415E90();
  if (v13)
  {
    sub_1B4407DBC(0, &qword_1EB899088);
    if (swift_dynamicCast())
    {
      v2 = v11;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v4 = Strong, v2 = v11, v5 = sub_1B4416190(), v4, v2, (v5 & 1) != 0))
      {
        v6 = OBJC_IVAR___VKCStickerEffectViewInternal_scrollViewToObserveCount;
        if (*(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_scrollViewToObserveCount) < 1)
        {
          v10 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          sub_1B4401E1C(v10);

          *(v1 + v6) = 0;
        }

        else
        {

          v7 = *(v1 + v6);
          v8 = __OFSUB__(v7, 1);
          v9 = v7 - 1;
          if (v8)
          {
            __break(1u);
          }

          else
          {
            *(v1 + v6) = v9;
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1B4408384(v12, &qword_1EB899080);
  }
}

uint64_t sub_1B4403868(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1B4415EA0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4415E80();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_1B4403A7C()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for StickerEffectView();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = *&v0[OBJC_IVAR___VKCStickerEffectViewInternal_metalLayerContainer];
  v3 = [v0 layer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame_];
  v12 = *&v0[OBJC_IVAR___VKCStickerEffectViewInternal_metalLayer];
  [v2 bounds];
  [v12 setFrame_];
  v13 = [v0 window];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 screen];

    [v15 nativeScale];
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  [v12 bounds];
  v18 = v17 * CGRectGetWidth(v27);
  [v12 bounds];
  v19 = v17 * CGRectGetHeight(v28);
  if (v18 * v19 > 2359296.0)
  {
    v20 = 2359296.0 / (v18 * v19);
    v18 = v18 * v20;
    v19 = v19 * v20;
  }

  v21 = floor(v18);
  v22 = floor(v19);
  [v12 drawableSize];
  if (v21 != v24 || v22 != v23)
  {
    [v12 setDrawableSize_];
    [v12 setContentsScale_];
    v0[OBJC_IVAR___VKCStickerEffectViewInternal_needsRender] = 1;
  }

  [v1 commit];
  if (!*&v0[OBJC_IVAR___VKCStickerEffectViewInternal_displayLink] && *&v0[OBJC_IVAR___VKCStickerEffectViewInternal_renderer] && v0[OBJC_IVAR___VKCStickerEffectViewInternal_needsRender] == 1 && (v0[OBJC_IVAR___VKCStickerEffectViewInternal_renderInProgress] & 1) == 0)
  {
    v0[OBJC_IVAR___VKCStickerEffectViewInternal_needsRender] = 0;
    sub_1B44052A4();
  }
}

void sub_1B4403D48()
{
  v1 = sub_1B4416010();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4416040();
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StickerEffectView();
  v36.receiver = v0;
  v36.super_class = v7;
  objc_msgSendSuper2(&v36, sel_didMoveToWindow);
  v0[OBJC_IVAR___VKCStickerEffectViewInternal_needsRender] = 1;
  if (!*&v0[OBJC_IVAR___VKCStickerEffectViewInternal_displayLink])
  {
    [v0 setNeedsLayout];
  }

  sub_1B4404C34();
  v8 = [v0 window];
  if (!v8)
  {
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

LABEL_6:
    v10 = [v0 window];
    if (v10)
    {

      v11 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      sub_1B4401E1C(v11);

      *&v0[OBJC_IVAR___VKCStickerEffectViewInternal_scrollViewToObserveCount] = 0;
    }

    goto LABEL_27;
  }

  v28 = v4;
  if (qword_1EB898A78 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v29 = v2;
    v30 = v1;
    v12 = [qword_1EB898EE8 allObjects];
    sub_1B4407DBC(0, &qword_1EB899088);
    v13 = sub_1B44160C0();

    v31 = v5;
    if (v13 >> 62)
    {
      break;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_25;
    }

LABEL_11:
    v5 = 0;
    v1 = v13 & 0xFFFFFFFFFFFFFF8;
    v2 = &selRef_initWithEffect_;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1B8C75830](v5, v13);
      }

      else
      {
        if (v5 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v15 = *(v13 + 8 * v5 + 32);
      }

      v16 = v15;
      v17 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v0 isDescendantOfView_])
      {

        v18 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v19 = v16;
        sub_1B4401E1C(v18);

        goto LABEL_26;
      }

      ++v5;
      if (v17 == v14)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v14 = sub_1B4416210();
  if (v14)
  {
    goto LABEL_11;
  }

LABEL_25:

LABEL_26:
  v2 = v29;
  v1 = v30;
  v5 = v31;
  v4 = v28;
LABEL_27:
  v20 = [v0 window];
  if (v20)
  {

    if (!*&v0[OBJC_IVAR___VKCStickerEffectViewInternal_renderer])
    {
      v31 = v5;
      v21 = *&v0[OBJC_IVAR___VKCStickerEffectViewInternal_device];
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v0;
      aBlock[4] = sub_1B4408430;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B44085A0;
      aBlock[3] = &block_descriptor_111;
      v23 = v4;
      v24 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v25 = v0;
      v26 = v32;
      sub_1B4416020();
      v34 = MEMORY[0x1E69E7CC0];
      sub_1B4408440(&qword_1EB898CF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB899000);
      sub_1B4408488(&qword_1EB898CF8, &unk_1EB899000);
      sub_1B44161B0();
      MEMORY[0x1B8C757C0](0, v26, v23, v24);
      _Block_release(v24);
      (v2[1])(v23, v1);
      (*(v33 + 8))(v26, v31);
    }
  }
}

uint64_t sub_1B44042B8(uint64_t a1, void *a2)
{
  v3 = sub_1B4416010();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4416040();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00]();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StickerEffectRenderer();
  swift_allocObject();
  v11 = swift_unknownObjectRetain();
  v12 = sub_1B4408D60(v11);
  sub_1B4407DBC(0, &qword_1EB899010);
  v21 = sub_1B4416150();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = v12;
  v19 = v12;
  aBlock[4] = sub_1B4408438;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B44085A0;
  aBlock[3] = &block_descriptor_117;
  v14 = _Block_copy(aBlock);
  v20 = v7;
  v15 = v14;
  v16 = a2;

  sub_1B4416020();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B4408440(&qword_1EB898CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB899000);
  sub_1B4408488(&qword_1EB898CF8, &unk_1EB899000);
  sub_1B44161B0();
  v17 = v21;
  MEMORY[0x1B8C757C0](0, v10, v6, v15);
  _Block_release(v15);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v20);
}

id sub_1B4404618(_BYTE *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_renderer] = a2;

  a1[OBJC_IVAR___VKCStickerEffectViewInternal_needsRender] = 1;
  if (!*&a1[OBJC_IVAR___VKCStickerEffectViewInternal_displayLink])
  {

    return [a1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1B44046A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1B440472C()
{
  v1 = v0;
  v2 = sub_1B4416010();
  v15 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B4416040();
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultCenter];
  [v8 removeObserver_];

  sub_1B4407DBC(0, &qword_1EB899010);
  v9 = sub_1B4416150();
  aBlock[4] = sub_1B4404A40;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B44085A0;
  aBlock[3] = &block_descriptor_120;
  v10 = _Block_copy(aBlock);
  sub_1B4416020();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B4408440(&qword_1EB898CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB899000);
  sub_1B4408488(&qword_1EB898CF8, &unk_1EB899000);
  sub_1B44161B0();
  MEMORY[0x1B8C757C0](0, v7, v4, v10);
  _Block_release(v10);

  (*(v15 + 8))(v4, v2);
  (*(v5 + 8))(v7, v14);
  v11 = type metadata accessor for StickerEffectView();
  v16.receiver = v13[1];
  v16.super_class = v11;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

void sub_1B4404A40()
{
  if (qword_1EB898A30 != -1)
  {
    swift_once();
  }

  sub_1B43FB544();
}

uint64_t type metadata accessor for StickerEffectView()
{
  result = qword_1EB898FE8;
  if (!qword_1EB898FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B4404C34()
{
  v1 = [v0 window];
  if (v1 && (v1, (v0[OBJC_IVAR___VKCStickerEffectViewInternal_isPaused] & 1) == 0) && sub_1B4400648())
  {
    v2 = CACurrentMediaTime() < *&v0[OBJC_IVAR___VKCStickerEffectViewInternal_settlingStartTime] + 1.2 + 1.6;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v4 = v0[OBJC_IVAR___VKCStickerEffectViewInternal_displayLinkActive];
  v0[OBJC_IVAR___VKCStickerEffectViewInternal_displayLinkActive] = v2;
  sub_1B4402084(v4);
  v0[OBJC_IVAR___VKCStickerEffectViewInternal_motionActive] = v3;

  sub_1B44022A0();
}

void sub_1B4404D74(void *a1)
{
  v2 = OBJC_IVAR___VKCStickerEffectViewInternal_renderInProgress;
  if ((*(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_renderInProgress) & 1) == 0)
  {
    [a1 targetTimestamp];
    v4 = v3;
    if (qword_1EB898A80 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB898EF0;
    [qword_1EB898EF0 settlingDuration];
    v7 = v6;
    if (qword_1EB898A88 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB898EF8;
    [qword_1EB898EF8 settlingDuration];
    v10 = v9;
    v11 = OBJC_IVAR___VKCStickerEffectViewInternal_settlingStartTime;
    v12 = (v4 - *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_settlingStartTime)) / v7;
    *&v12 = v12;
    *&v12 = fminf(fmaxf(*&v12, 0.0), 1.0);
    [v5 _solveForInput_];
    v14 = v13;
    v15 = (v4 - *(v1 + v11) + -1.2) / v10;
    *&v15 = v15;
    *&v15 = fminf(fmaxf(*&v15, 0.0), 1.0);
    [v8 _solveForInput_];
    if (v14 <= 0.999)
    {
      v17 = v14;
    }

    else
    {
      v17 = 1.0;
    }

    if (v16 <= 0.985)
    {
      v18 = v16;
    }

    else
    {
      v18 = 1.0;
    }

    v26 = *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_settlingEndAngle);
    simd_slerp(v26, *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_settlingStartAngle), v17);
    simd_slerp(v19, v26, v18);
    v20 = *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_settlingOrientation);
    *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_settlingOrientation) = v21;
    sub_1B4402554(v20);
    v22 = *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_displayLink);
    v23 = v22;
    sub_1B440506C(v22);
    v25 = v24;

    *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_unitScreenCenter) = v25;
    if (CACurrentMediaTime() >= *(v1 + v11) + 1.2 + 1.6)
    {
      sub_1B4404C34();
    }

    if (*(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_needsRender) == 1 && (*(v1 + v2) & 1) == 0)
    {
      *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_needsRender) = 0;

      sub_1B44052A4();
    }
  }
}

void sub_1B440506C(void *a1)
{
  v3 = [v1 window];
  if (!v3)
  {
    v12 = 0x3F0000003F000000;
    v13 = 1.0;
    if (!a1)
    {
      return;
    }

    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v1 layer];
  v6 = [v5 presentationLayer];

  if (v6)
  {
    [v6 bounds];
    MidX = CGRectGetMidX(v28);
    [v6 bounds];
    MidY = CGRectGetMidY(v29);
    v9 = [v4 layer];
    [v6 convertPoint:v9 toLayer:{MidX, MidY}];
    v26 = v11;
    v27 = v10;
  }

  else
  {
    [v1 bounds];
    v14 = CGRectGetMidX(v30);
    [v1 bounds];
    [v1 convertPoint:v4 toCoordinateSpace:{v14, CGRectGetMidY(v31)}];
    v26 = v16;
    v27 = v15;
  }

  [v4 bounds];
  v24 = v18;
  v25 = v17;

  v19.f64[0] = v27;
  v19.f64[1] = v26;
  v20.f64[0] = v25;
  v20.f64[1] = v24;
  v12 = vcvt_f32_f64(vdivq_f64(v19, v20));
  if (v25 > v24)
  {
    v21 = v25;
  }

  else
  {
    v21 = v24;
  }

  v13 = 1.0 / v21;
  if (a1)
  {
LABEL_11:
    if (v1[OBJC_IVAR___VKCStickerEffectViewInternal_displayLinkActive] == 1)
    {
      v22 = vsub_f32(v12, *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_unitScreenCenter]);
      if (v13 < sqrtf(vaddv_f32(vmul_f32(v22, v22))))
      {
        v23 = a1;
        [v23 targetTimestamp];
        [v23 timestamp];
      }
    }
  }
}

void sub_1B44052A4()
{
  v1 = sub_1B4416010();
  v30 = *(v1 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B4416040();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00]();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_commandQueue);
  v8 = *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_deviceOrientation);
  v26 = *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_settlingOrientation);
  v27 = v8;
  v9 = OBJC_IVAR___VKCStickerEffectViewInternal_image;
  v10 = *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_image);
  v11 = *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_effect);
  v12 = *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_metalLayer);
  v31 = v10;
  v13 = v11;
  [v12 contentsScale];
  if (*(v0 + v9) && (v15 = *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_renderer)) != 0)
  {
    v16 = vnegq_f32(v26);
    v17 = vtrn2q_s32(v26, vtrn1q_s32(v26, v16));
    v18 = vrev64q_s32(v26);
    v18.i32[0] = v16.i32[1];
    v18.i32[3] = v16.i32[2];
    v26 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v26, v27, 3), v18, v27, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v26, v16, 8uLL), *v27.f32, 1), vextq_s8(v17, v17, 8uLL), v27.f32[0]));
    v19 = v14;
    v20 = *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_unitScreenCenter);
    v21 = *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_curlPosition);
    *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_renderInProgress) = 1;
    v27.i64[0] = *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_renderQueue);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[1].i64[0] = v22;
    v23[1].i64[1] = v7;
    v23[2].i64[0] = v15;
    v23[3] = v26;
    v23[4].i64[0] = v10;
    v23[4].i64[1] = v13;
    v23[5].f32[0] = v19;
    v23[5].i64[1] = v20;
    v23[6].i32[0] = v21;
    aBlock[4] = sub_1B4406EC4;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B44085A0;
    aBlock[3] = &block_descriptor_0;
    v24 = _Block_copy(aBlock);
    swift_retain_n();
    v26.i64[0] = v13;
    v31 = v31;

    swift_unknownObjectRetain();
    sub_1B4416020();
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B4408440(&qword_1EB898CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB899000);
    sub_1B4408488(&qword_1EB898CF8, &unk_1EB899000);
    sub_1B44161B0();
    MEMORY[0x1B8C757C0](0, v6, v3, v24);
    _Block_release(v24);

    (*(v30 + 8))(v3, v1);
    (*(v28 + 8))(v6, v29);
  }

  else
  {

    v25 = v31;
  }
}

void sub_1B4405730(uint64_t a1, void *a2, uint64_t a3, __n128 *a4)
{
  v6 = sub_1B4416010();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4416040();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00]();
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v39 = v11;
    v16 = [*(Strong + OBJC_IVAR___VKCStickerEffectViewInternal_metalLayer) nextDrawable];
    if (v16)
    {
      v17 = v16;
      v18 = [a2 commandBuffer];
      if (v18)
      {
        v19 = v18;
        v38 = v7;
        sub_1B440B954(a4, v18, [v17 texture]);
        v21 = v20;
        swift_unknownObjectRelease();
        [v19 commit];
        [v19 waitUntilScheduled];
        v22 = [v19 error];
        if (v22)
        {
          v23 = v22;
          v24 = sub_1B4415F70();
          v25 = sub_1B4416100();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            *v26 = 138412290;
            v28 = v23;
            v29 = _swift_stdlib_bridgeErrorToNSError();
            *(v26 + 4) = v29;
            *v27 = v29;
            _os_log_impl(&dword_1B4335000, v24, v25, "Error in commandBuffer rendering sticker effect, bailing %@", v26, 0xCu);
            sub_1B4408384(v27, &qword_1EB899078);
            MEMORY[0x1B8C77130](v27, -1, -1);
            MEMORY[0x1B8C77130](v26, -1, -1);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }
        }

        else
        {
          if ((v21 & 0x100000000) != 0)
          {
            v30 = 1.0;
          }

          else
          {
            v30 = *&v21;
          }

          sub_1B4407DBC(0, &qword_1EB899010);
          v37 = sub_1B4416150();
          v31 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v32 = swift_allocObject();
          *(v32 + 16) = v31;
          *(v32 + 24) = v17;
          *(v32 + 32) = v30;
          *(v32 + 40) = 1065353216;
          aBlock[4] = sub_1B4407D8C;
          aBlock[5] = v32;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B44085A0;
          aBlock[3] = &block_descriptor_90;
          v36 = _Block_copy(aBlock);
          swift_unknownObjectRetain();

          sub_1B4416020();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v35[1] = sub_1B4408440(&qword_1EB898CF0, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB899000);
          sub_1B4408488(&qword_1EB898CF8, &unk_1EB899000);
          sub_1B44161B0();
          v34 = v36;
          v33 = v37;
          MEMORY[0x1B8C757C0](0, v13, v9, v36);
          _Block_release(v34);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          (*(v38 + 8))(v9, v6);
          (*(v39 + 8))(v13, v10);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_1B4405CC4(double a1, float a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    [v9 begin];
    [v9 setDisableActions_];
    [a4 present];
    v8[OBJC_IVAR___VKCStickerEffectViewInternal_renderInProgress] = 0;
    sub_1B4401FB4(a1);
    *&v8[OBJC_IVAR___VKCStickerEffectViewInternal_strokeScale] = a2;
    [v9 commit];
  }
}

void sub_1B4405DA4(uint64_t a1, char *a2, void *a3, __n128 *a4, uint64_t a5, void (*a6)(void, void *), uint64_t a7)
{
  poolOut[46] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v102 = a2;
  }

  else
  {
    type metadata accessor for StickerEffectRenderer();
    swift_allocObject();
    v102 = a2;
    v82 = swift_unknownObjectRetain();
    sub_1B4408D60(v82);
  }

  [a3 size];
  v12 = v11;
  [a3 scale];
  v14 = v12 * v13;
  if (COERCE__INT64(fabs(v12 * v13)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  [a3 size];
  v16 = v15;
  [a3 scale];
  v18 = v16 * v17;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v19 = v14;
  v20 = v18;
  v21 = a4[1].n128_u64[1];
  if (v18 <= v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = v18;
  }

  v23 = 0.0;
  v24 = fminf(fmaxf(((v22 / a4[2].n128_f32[0]) + -30.0) / 90.0, 0.0), 1.0);
  v25 = (v24 * v24) * ((v24 * -2.0) + 3.0);
  if (*(v21 + OBJC_IVAR___VKCStickerEffectInternal_isStroked) == 1)
  {
    v26 = *(v21 + OBJC_IVAR___VKCStickerEffectInternal_smallStrokeRadiusMultiplier);
    if (!*(v21 + OBJC_IVAR___VKCStickerEffectInternal_forceSmallStrokeRadiusMultiplier))
    {
      v26 = v26 + (v25 * (1.0 - v26));
    }

    v23 = ((v26 * *(v21 + OBJC_IVAR___VKCStickerEffectInternal_strokeRadius)) + (v26 * *(v21 + OBJC_IVAR___VKCStickerEffectInternal_strokeBlurRadius))) + ((v26 * *(v21 + OBJC_IVAR___VKCStickerEffectInternal_strokeRadius)) + (v26 * *(v21 + OBJC_IVAR___VKCStickerEffectInternal_strokeBlurRadius)));
  }

  v27 = *(v21 + OBJC_IVAR___VKCStickerEffectInternal_smallShadowSizeMultiplier) + (v25 * (1.0 - *(v21 + OBJC_IVAR___VKCStickerEffectInternal_smallShadowSizeMultiplier)));
  v28 = *(v21 + OBJC_IVAR___VKCStickerEffectInternal_shadowRadius) * v27;
  v29 = *(v21 + OBJC_IVAR___VKCStickerEffectInternal_shadowOffset);
  v30 = *(v21 + OBJC_IVAR___VKCStickerEffectInternal_shadowParallax);
  v31 = 1.0 - v23;
  v32 = fabsf(v27 * *v29.i32) + fabsf(v27 * *v30.i32);
  v33 = vaddv_f32(vabs_f32(vmul_n_f32(vzip2_s32(v29, v30), v27)));
  if (v32 > v33)
  {
    v33 = v32;
  }

  v34 = 1.0 - ((v28 + v33) + (v28 + v33));
  v35 = (v20 / v19) / (v20 / v19);
  v36 = 1.0 / v35;
  if (v35 > 1.0)
  {
    v35 = 1.0;
  }

  else
  {
    v36 = 1.0;
  }

  v37 = v19 / (v34 * (v31 * v36));
  if (v37 <= -9.2234e18)
  {
    goto LABEL_58;
  }

  if (v37 >= 9.2234e18)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v38 = v20 / (v34 * (v31 * v35));
  if ((LODWORD(v38) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v37) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_60;
  }

  if (v38 <= -9.2234e18)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  if (v38 >= 9.2234e18)
  {
    goto LABEL_62;
  }

  v98 = a3;
  v99 = a4;
  v105 = a6;
  v104 = a7;
  v39 = v37;
  v40 = v38;
  value = CGColorSpaceCreateDeviceRGB();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB898D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4428FE0;
  v42 = *MEMORY[0x1E6966208];
  *(inited + 32) = *MEMORY[0x1E6966208];
  v43 = MEMORY[0x1E69E6530];
  v101 = v39;
  *(inited + 40) = v39;
  v44 = *MEMORY[0x1E69660B8];
  *(inited + 64) = v43;
  *(inited + 72) = v44;
  v100 = v40;
  *(inited + 80) = v40;
  v45 = *MEMORY[0x1E6966130];
  *(inited + 104) = v43;
  *(inited + 112) = v45;
  v46 = MEMORY[0x1E69E7668];
  *(inited + 120) = 1111970369;
  v47 = *MEMORY[0x1E6966030];
  *(inited + 144) = v46;
  *(inited + 152) = v47;
  v48 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  v49 = *MEMORY[0x1E6966028];
  *(inited + 184) = v48;
  *(inited + 192) = v49;
  *(inited + 200) = 1;
  v50 = *MEMORY[0x1E6966100];
  *(inited + 224) = v48;
  *(inited + 232) = v50;
  *(inited + 240) = 1;
  v51 = *MEMORY[0x1E69660D8];
  *(inited + 264) = v48;
  *(inited + 272) = v51;
  v52 = v42;
  v53 = v44;
  v54 = v45;
  v55 = v47;
  v56 = v49;
  v57 = v50;
  v58 = v51;
  v59 = sub_1B440A1CC(MEMORY[0x1E69E7CC0]);
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8990A0);
  *(inited + 280) = v59;
  sub_1B440A1CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB898D30);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_1B4408440(&qword_1EB8990B0, type metadata accessor for CFString);
  v60 = sub_1B4416050();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8992E0);
  v61 = swift_initStackObject();
  v62 = MEMORY[0x1E6966158];
  *(v61 + 16) = xmmword_1B4428FF0;
  v63 = *v62;
  *(v61 + 32) = v63;
  *(v61 + 40) = 1;
  v64 = v63;
  sub_1B440A2F4(v61);
  swift_setDeallocating();
  sub_1B4408384(v61 + 32, &unk_1EB898D40);
  v65 = sub_1B4416050();

  poolOut[0] = 0;
  v66 = *MEMORY[0x1E695E480];
  v67 = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], v65, v60, poolOut);
  if (v67 || !poolOut[0])
  {
    sub_1B4408318();
    v78 = swift_allocError();
    *v80 = v67;
    *(v80 + 4) = 0;
    swift_willThrow();

    v70 = v105;
  }

  else
  {
    pixelBufferOut = 0;
    v68 = poolOut[0];
    v69 = CVPixelBufferPoolCreatePixelBuffer(v66, v68, &pixelBufferOut);
    v70 = v105;
    if (v69 || !pixelBufferOut)
    {
      sub_1B4408318();
      v78 = swift_allocError();
      *v83 = v69;
      *(v83 + 4) = 0;
      swift_willThrow();
    }

    else
    {
      v97 = v60;
      cacheOut = 0;
      v71 = *&v102[OBJC_IVAR___VKCStickerEffectViewInternal_device];
      v72 = pixelBufferOut;
      v73 = CVMetalTextureCacheCreate(v66, 0, v71, 0, &cacheOut);
      if (v73 || !cacheOut)
      {
        sub_1B4408318();
        v78 = swift_allocError();
        *v84 = v73;
        *(v84 + 4) = 0;
        swift_willThrow();
      }

      else
      {
        textureOut = 0;
        v74 = cacheOut;
        v75 = CVMetalTextureCacheCreateTextureFromImage(v66, v74, v72, 0, MTLPixelFormatBGRA8Unorm, v101, v100, 0, &textureOut);
        if (v75)
        {
          v76 = 1;
        }

        else
        {
          v76 = textureOut == 0;
        }

        if (v76)
        {
          v77 = v75;
          sub_1B4408318();
          v78 = swift_allocError();
          *v79 = v77;
          *(v79 + 4) = 0;
          swift_willThrow();
        }

        else
        {
          v85 = textureOut;
          v86 = CVMetalTextureGetTexture(v85);
          if (v86)
          {
            v96 = v86;
            v95 = v85;
            CVBufferSetAttachment(v72, *MEMORY[0x1E6965CE8], value, kCVAttachmentMode_ShouldPropagate);
            v87 = [*&v102[OBJC_IVAR___VKCStickerEffectViewInternal_commandQueue] commandBuffer];
            if (v87)
            {
              v103 = v87;
              sub_1B440B954(v99, v87, v96);
              v90 = swift_allocObject();
              *(v90 + 16) = v105;
              *(v90 + 24) = v104;
              *(v90 + 32) = v72;
              *(v90 + 40) = v101;
              *(v90 + 48) = v100;
              *(v90 + 56) = value;
              *(v90 + 64) = 8194;
              *(v90 + 72) = v98;
              aBlock[4] = sub_1B44083E4;
              aBlock[5] = v90;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1B4406C3C;
              aBlock[3] = &block_descriptor_105;
              v91 = _Block_copy(aBlock);
              v92 = v72;

              v93 = value;
              v94 = v98;

              [v103 addCompletedHandler_];
              _Block_release(v91);
              [v103 commit];

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              return;
            }

            type metadata accessor for MTLCommandBufferError(0);
            aBlock[6] = 1;
            sub_1B440A09C(MEMORY[0x1E69E7CC0]);
            sub_1B4408440(&qword_1EB899260, type metadata accessor for MTLCommandBufferError);
            sub_1B4415F10();
            v78 = aBlock[0];
            swift_willThrow();
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1B4408318();
            v78 = swift_allocError();
            *v88 = 2;
            *(v88 + 4) = 1;
            swift_willThrow();
          }
        }
      }
    }
  }

  v89 = v78;
  v70(0, v78);
}

void sub_1B44069D8(void *a1, void (*a2)(id, id), uint64_t a3, __CVBuffer *a4, size_t a5, size_t a6, CGColorSpace *a7, uint32_t a8, void *a9)
{
  v15 = [a1 error];
  if (v15)
  {
    v16 = v15;
    v33 = v15;
    a2(0, v16);
    goto LABEL_3;
  }

  CVPixelBufferLockBaseAddress(a4, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a4);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
  v20 = __CGBitmapContextCreate_0(BaseAddress, a5, a6, BytesPerRow, a7, a8);
  if (v20)
  {
    v21 = v20;
    Image = CGBitmapContextCreateImage(v20);
    if (Image)
    {
      v23 = Image;
      CVPixelBufferUnlockBaseAddress(a4, 0);
      v24 = v23;
      [a9 scale];
      v26 = v25;
      v27 = [a9 imageOrientation];
      v28 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v24 scale:v27 orientation:v26];

      v33 = v28;
      a2(v28, 0);

LABEL_3:
      v17 = v33;

      goto LABEL_5;
    }

    sub_1B4408318();
    v29 = swift_allocError();
    *v31 = 3;
    *(v31 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_1B4408318();
    v29 = swift_allocError();
    *v30 = 1;
    *(v30 + 4) = 1;
    swift_willThrow();
  }

  v32 = v29;
  a2(0, v29);

  v17 = v29;

LABEL_5:
}

uint64_t sub_1B4406C3C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_1B4406D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B4415F20();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1B4406DA8()
{
  result = sub_1B4415F90();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B4406EEC(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = sub_1B4407170(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1B4416210();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1B4416210())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B8C75830](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v19 = v12;
    v13 = a1(&v19);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1B8C75830](v2, v6);
    v15 = MEMORY[0x1B8C75830](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1B4407348(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1B4407348(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    *(v18 + 8 * v10 + 32) = v14;

    *v3 = v6;
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
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_1B4416210();
}

uint64_t sub_1B4407170(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1B4416210();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8C75830](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1B440728C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1B4416210();
    }

    result = sub_1B44161E0();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1B4407348(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B4416210();
  }

  return sub_1B44161E0();
}

void sub_1B44073AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 136);
  if (v4 >> 62)
  {
LABEL_19:
    v5 = sub_1B4416210();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B8C75830](v6, v4);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          return;
        }
      }

      ++v6;
    }

    while (v7 != v5);
  }

  type metadata accessor for StickerEffectMotionManager.WeakObserver();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 24) = &off_1F2C03EA0;
  swift_unknownObjectWeakAssign();
  v10 = swift_beginAccess();
  MEMORY[0x1B8C75710](v10);
  if (*((*(a2 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B44160D0();
  }

  sub_1B44160E0();
  swift_endAccess();
  sub_1B43FB544();
}

uint64_t sub_1B440759C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for StickerEffectMotionManager.WeakObserver();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B4416210();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B4416210();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B440769C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B4416210();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1B4416210();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1B440728C(result);

  return sub_1B440759C(v4, v2, 0);
}

void sub_1B4407774(id a1)
{
  v4 = *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_effect];
  *&v1[OBJC_IVAR___VKCStickerEffectViewInternal_effect] = a1;
  v3 = a1;
  if (v4 != a1)
  {
    sub_1B4404C34();
    v1[OBJC_IVAR___VKCStickerEffectViewInternal_renderInProgress] = 0;
    v1[OBJC_IVAR___VKCStickerEffectViewInternal_needsRender] = 1;
    if (!*&v1[OBJC_IVAR___VKCStickerEffectViewInternal_displayLink])
    {
      [v1 setNeedsLayout];
    }
  }
}

void sub_1B4407814()
{
  v1 = v0;
  sub_1B4416130();
  MEMORY[0x1EEE9AC00]();
  v13[2] = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B4416140();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4416040();
  MEMORY[0x1EEE9AC00]();
  v13[1] = &xmmword_1B4429590;
  sub_1B4415F80();
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_instanceLabel) = 0;
  v7 = OBJC_IVAR___VKCStickerEffectViewInternal_metalLayer;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69793F0]) init];
  v8 = OBJC_IVAR___VKCStickerEffectViewInternal_metalLayerContainer;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_needsRender) = 1;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_renderInProgress) = 0;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_scrollViewToObserveCount) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_requiredScale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_appliedScale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_strokeScale) = 0x3FF0000000000000;
  v9 = OBJC_IVAR___VKCStickerEffectViewInternal_renderQueue;
  sub_1B4407DBC(0, &qword_1EB899010);
  sub_1B4416030();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8098], v3);
  v13[3] = MEMORY[0x1E69E7CC0];
  sub_1B4408440(&qword_1EB8990C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8990C8);
  sub_1B4408488(&unk_1EB8990D0, &qword_1EB8990C8);
  sub_1B44161B0();
  *(v0 + v9) = sub_1B4416170();
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_renderer) = 0;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_displayLink) = 0;
  v10 = qword_1EB898EE0;
  v11 = qword_1EB898EE0 + 1;
  if (__OFADD__(qword_1EB898EE0, 1))
  {
    __break(1u);
  }

  qword_1EB898EE0 = v11;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_instanceNumber) = v10;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_displayLinkActive) = 0;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_motionActive) = 0;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_deviceOrientation) = xmmword_1B4428F00;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_settlingDuration1) = 0x3FF3333333333333;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_settlingDuration2) = 0x3FF999999999999ALL;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_settlingStartAngle) = xmmword_1B4429590;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_settlingEndAngle) = xmmword_1B4428F00;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_settlingStartTime) = 0;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_settlingOrientation) = xmmword_1B4428F00;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_screenCenterDuration) = 0x3FD999999999999ALL;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_unitScreenCenter) = 0x3F0000003F000000;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_boundsIncludeStroke) = 1;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_reRenderOnMotion) = 1;
  *(v0 + OBJC_IVAR___VKCStickerEffectViewInternal_curlPosition) = 1065353216;
  v12 = OBJC_IVAR___VKCStickerEffectViewInternal_effect;
  *(v1 + v12) = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
  *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_image) = 0;
  *(v1 + OBJC_IVAR___VKCStickerEffectViewInternal_isPaused) = 0;
  sub_1B4416200();
  __break(1u);
}

uint64_t sub_1B4407DBC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1B4407E04(char *a1, void (**a2)(void, void, void))
{
  v4 = sub_1B4416010();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4416040();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v13 = *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_image];
  if (v13)
  {
    v14 = *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_settlingOrientation];
    v15 = vnegq_f32(v14);
    v16 = vtrn2q_s32(v14, vtrn1q_s32(v14, v15));
    v17 = vrev64q_s32(v14);
    v17.i32[0] = v15.i32[1];
    v17.i32[3] = v15.i32[2];
    v40 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v14, *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_deviceOrientation], 3), v17, *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_deviceOrientation], 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v14, v15, 8uLL), *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_deviceOrientation], 1), vextq_s8(v16, v16, 8uLL), COERCE_FLOAT(*&a1[OBJC_IVAR___VKCStickerEffectViewInternal_deviceOrientation])));
    v42 = v4;
    v18 = *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_effect];
    v44 = v5;
    v19 = *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_metalLayer];
    v20 = v13;
    v45 = v8;
    v21 = v20;
    _Block_copy(a2);
    v22 = v18;
    v43 = v9;
    v23 = v22;
    [v19 contentsScale];
    v25 = v24;
    v26 = *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_unitScreenCenter];
    v27 = *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_curlPosition];
    v28 = *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_renderer];
    v29 = *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_instanceNumber];
    v41 = *&a1[OBJC_IVAR___VKCStickerEffectViewInternal_renderQueue];
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = a1;
    *(v30 + 32) = v21;
    *(v30 + 48) = v40;
    *(v30 + 64) = v13;
    *(v30 + 72) = v23;
    *(v30 + 80) = v25;
    *(v30 + 88) = v26;
    *(v30 + 96) = v27;
    *(v30 + 104) = v29;
    *(v30 + 112) = sub_1B4408310;
    *(v30 + 120) = v12;
    aBlock[4] = sub_1B440836C;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B44085A0;
    aBlock[3] = &block_descriptor_99;
    v31 = _Block_copy(aBlock);
    swift_retain_n();
    v32 = v21;
    v40.i64[0] = v23;
    v33 = a1;

    v34 = v32;
    sub_1B4416020();
    v46 = MEMORY[0x1E69E7CC0];
    sub_1B4408440(&qword_1EB898CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB899000);
    sub_1B4408488(&qword_1EB898CF8, &unk_1EB899000);
    v35 = v42;
    sub_1B44161B0();
    MEMORY[0x1B8C757C0](0, v11, v7, v31);
    _Block_release(v31);

    (*(v44 + 8))(v7, v35);
    (*(v43 + 8))(v11, v45);
  }

  else
  {
    sub_1B4408318();
    v37 = swift_allocError();
    *v38 = 3;
    *(v38 + 4) = 1;
    _Block_copy(a2);
    v39 = sub_1B4415F20();
    (a2)[2](a2, 0, v39);
  }
}

unint64_t sub_1B4408318()
{
  result = qword_1EB899090;
  if (!qword_1EB899090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB899090);
  }

  return result;
}

uint64_t sub_1B4408384(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4408440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4408488(unint64_t *a1, uint64_t *a2)
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

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StickerEffectView.SnapshotError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StickerEffectView.SnapshotError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B440853C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4408558(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

void *sub_1B44085BC(void *a1, void *a2)
{
  v3 = v2;
  v32[4] = *MEMORY[0x1E69E9840];
  *(v2 + 48) = 0;
  __asm { FMOV            V8.2S, #1.0 }

  *(v2 + 56) = _D8;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  *(v2 + 96) = xmmword_1B44296F0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v11 = objc_allocWithZone(MEMORY[0x1E6974148]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = [v11 init];
  v13 = sub_1B4416070();
  v14 = [a2 newFunctionWithName_];

  [v12 setVertexFunction_];
  swift_unknownObjectRelease();
  v15 = sub_1B4416070();
  v16 = [a2 newFunctionWithName_];

  [v12 setFragmentFunction_];
  swift_unknownObjectRelease();
  v17 = [v12 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
    __break(1u);
  }

  [v18 setPixelFormat_];

  v30 = 0;
  v19 = [a1 newRenderPipelineStateWithDescriptor:v12 error:&v30];
  v20 = v19;
  v21 = v30;
  if (!v19)
  {
    v27 = v30;
    sub_1B4415F30();

LABEL_8:
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v28 = 0;
    goto LABEL_9;
  }

  v3[11] = v19;
  v32[0] = 0x3F80000000000000;
  *&v32[1] = _D8;
  v32[2] = 0;
  v32[3] = 1065353216;
  v22 = v21;
  v23 = [a1 newBufferWithBytes:v32 length:32 options:0];
  if (!v23)
  {
    type metadata accessor for MTLCommandBufferError(0);
    sub_1B440A09C(MEMORY[0x1E69E7CC0]);
    sub_1B4408D08();
    sub_1B4415F10();
    goto LABEL_8;
  }

  v3[5] = v23;
  __asm { FMOV            V0.2S, #-1.0 }

  *v31 = _D0;
  *&v31[1] = -_D8;
  *&v31[2] = -_D0;
  *&v31[3] = _D8;
  v25 = [a1 newBufferWithBytes:v31 length:32 options:0];
  if (v25)
  {
    v26 = v25;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v3[4] = v26;
    return v3;
  }

  type metadata accessor for MTLCommandBufferError(0);
  v28 = 1;
  sub_1B440A09C(MEMORY[0x1E69E7CC0]);
  sub_1B4408D08();
  sub_1B4415F10();
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_9:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v28)
  {
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v20)
  {
    swift_unknownObjectRelease();
  }

  type metadata accessor for StickerShaderAlphaToLumaGenerator();
  swift_deallocPartialClassInstance();
  return v3;
}

void sub_1B44089A4(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 48);
  if (v2)
  {
    v4 = *(v1 + 80);
    if (v4)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v5 = objc_opt_self();
      v6 = *(v1 + 104);
      v7 = *(v1 + 64);
      v8 = *(v1 + 72);
      swift_unknownObjectRetain();
      v9 = [v5 texture2DDescriptorWithPixelFormat:v6 width:v7 height:v8 mipmapped:0];
      [v9 setUsage_];
      [v9 setStorageMode_];
      v10 = [*(v1 + 16) newTextureWithDescriptor_];

      *(v1 + 80) = v10;
      swift_unknownObjectRelease();
      v4 = *(v1 + 80);
      if (!v4)
      {
LABEL_10:
        swift_unknownObjectRelease();
        return;
      }
    }

    v11 = objc_allocWithZone(MEMORY[0x1E6974128]);
    swift_unknownObjectRetain();
    v12 = [v11 init];
    v13 = [v12 colorAttachments];
    v14 = [v13 objectAtIndexedSubscript_];

    if (v14)
    {
      swift_unknownObjectRetain();
      [v14 setTexture_];

      v15 = [a1 renderCommandEncoderWithDescriptor_];
      if (v15)
      {
        v16 = *(v1 + 56);
        v18 = 1061158912;
        v19 = v16;
        v17 = v15;
        [v15 setRenderPipelineState_];
        [v17 setVertexBuffer:*(v1 + 32) offset:0 atIndex:0];
        [v17 setVertexBuffer:*(v1 + 40) offset:0 atIndex:1];
        [v17 setFragmentTexture:v2 atIndex:0];
        [v17 setFragmentBytes:&v18 length:16 atIndex:0];
        [v17 drawPrimitives:4 vertexStart:0 vertexCount:4];
        [v17 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    __break(1u);
  }
}

uint64_t sub_1B4408C60()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B4408CB0()
{
  sub_1B4408C60();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

unint64_t sub_1B4408D08()
{
  result = qword_1EB899260;
  if (!qword_1EB899260)
  {
    type metadata accessor for MTLCommandBufferError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB899260);
  }

  return result;
}

uint64_t sub_1B4408D60(void *a1)
{
  v3 = v1;
  v22[1] = *MEMORY[0x1E69E9840];
  if (qword_1EB898A48 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB89A4D8;
  *(v1 + 16) = a1;
  *(v1 + 32) = xmmword_1B4428F00;
  *(v1 + 48) = 0;
  *(v1 + 56) = v5;
  *(v1 + 64) = 1065353216;
  *(v1 + 72) = 0x3F0000003F000000;
  *(v1 + 80) = 1065353216;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  type metadata accessor for StickerEffectRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  swift_unknownObjectRetain();
  v9 = [v7 bundleForClass_];
  v22[0] = 0;
  v10 = [a1 newDefaultLibraryWithBundle:v9 error:v22];

  v11 = v22[0];
  if (v10)
  {
    *(v3 + 24) = v10;
    type metadata accessor for StickerShaderAlphaToLumaGenerator();
    swift_allocObject();
    swift_unknownObjectRetain();
    v12 = v11;
    swift_unknownObjectRetain();
    v13 = sub_1B44085BC(a1, v10);
    v14 = v2 == 0;
    if (!v2)
    {
      *(v3 + 184) = v13;
      v15 = *(v3 + 24);
      type metadata accessor for StickerShaderStrokeGenerator();
      swift_allocObject();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      *(v3 + 192) = sub_1B440CEDC(a1, v15);
      v19 = *(v3 + 24);
      type metadata accessor for StickerShaderNormalGenerator();
      swift_allocObject();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      *(v3 + 200) = sub_1B43F99FC(a1, v19);
      type metadata accessor for StickerShaderShadowGenerator();
      v20 = swift_allocObject();
      *(v20 + 24) = 1036831949;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 10;
      *(v20 + 16) = a1;
      *(v3 + 208) = v20;
      type metadata accessor for StickerComicRenderer();
      swift_allocObject();
      v21 = swift_unknownObjectRetain();
      *(v3 + 216) = StickerComicRenderer.init(device:)(v21);
      return v3;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = v22[0];
    sub_1B4415F30();

    swift_willThrow();
    v14 = 0;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v17 = *(v3 + 48);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v14)
  {
  }

  swift_deallocPartialClassInstance();
  return v3;
}

void sub_1B4409164(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  if (v4)
  {
    v5 = v3;
    v8 = *(v3 + 56);
    v9 = v4;
    v11 = sub_1B440A3E0(v9, a2, a3);
    v12 = v10;
    v13 = *(v3 + 136);
    if (!v13)
    {
      v53 = sub_1B440B168(v9, v11, v10, *(v3 + 16));
      if (v80 || (*(v3 + 136) = v53, swift_unknownObjectRelease(), *(v3 + 152) = 0, swift_unknownObjectRelease(), *(v3 + 160) = 0, swift_unknownObjectRelease(), *(v3 + 176) = 0, swift_unknownObjectRelease(), *(v3 + 168) = 0, swift_unknownObjectRelease(), (v13 = *(v3 + 136)) == 0))
      {

LABEL_51:
        return;
      }
    }

    if (*(v3 + 144) || (v8[OBJC_IVAR___VKCStickerEffectInternal_isComicEnabled] & 1) == 0)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v77 = v9;
      v14 = objc_opt_self();
      swift_unknownObjectRetain();
      v15 = [v14 texture2DDescriptorWithPixelFormat:80 width:v11 height:v12 mipmapped:0];
      [v15 setStorageMode_];
      [v15 setUsage_];
      v16 = [*(v5 + 16) newTextureWithDescriptor_];
      *(v5 + 144) = v16;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v76 = v16;
      if (!v16)
      {

        swift_unknownObjectRelease();
        return;
      }

      v75 = v15;
      v17 = *(v5 + 216);
      v18 = v8[OBJC_IVAR___VKCStickerEffectInternal_comicParameters];
      v19 = *&v8[OBJC_IVAR___VKCStickerEffectInternal_comicParameters + 17];
      v84 = *&v8[OBJC_IVAR___VKCStickerEffectInternal_comicParameters + 1];
      v85[0] = v19;
      *(v85 + 15) = *&v8[OBJC_IVAR___VKCStickerEffectInternal_comicParameters + 32];
      v81 = v18;
      v82 = *&v8[OBJC_IVAR___VKCStickerEffectInternal_comicParameters + 1];
      *v83 = *&v8[OBJC_IVAR___VKCStickerEffectInternal_comicParameters + 17];
      *&v83[15] = *&v8[OBJC_IVAR___VKCStickerEffectInternal_comicParameters + 32];
      if ((sub_1B43FF654(&v81) & 1) == 0)
      {
        sub_1B43FF6BC();
        swift_allocError();
        *v70 = 0;
        swift_willThrow();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }

      v74 = v18;

      if ([v13 pixelFormat] != 80 || objc_msgSend(v76, sel_pixelFormat) != 80)
      {
        sub_1B43FF6BC();
        swift_allocError();
        *v71 = 1;
        swift_willThrow();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }

      if (v18)
      {
        v73 = 0;
        v20 = v17;
      }

      else
      {
        v20 = v17;
        v73 = sub_1B43FEEE0();
      }

      v81 = v74;
      v82 = v84;
      *v83 = v85[0];
      *&v83[15] = *(v85 + 15);
      sub_1B43FF710(v13, &v81);
      v81 = v74;
      v82 = v84;
      *v83 = v85[0];
      *&v83[15] = *(v85 + 15);
      sub_1B43FDFC0(&v81, v13, v76, v73, a1);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_beginAccess();
      v72 = MEMORY[0x1E69E7CC0];
      *(v20 + 32) = MEMORY[0x1E69E7CC0];

      swift_beginAccess();
      *(v20 + 40) = v72;

      v9 = v77;
    }

    v21 = *(v5 + 56);
    v22 = OBJC_IVAR___VKCStickerEffectInternal_isStroked;
    if (a3 <= a2)
    {
      v23 = a2;
    }

    else
    {
      v23 = a3;
    }

    v24 = v23;
    v25 = 0.0;
    v26 = 1.0;
    v27 = fminf(fmaxf(((v23 / *(v5 + 64)) + -30.0) / 90.0, 0.0), 1.0);
    v28 = (v27 * v27) * ((v27 * -2.0) + 3.0);
    if (*(v21 + OBJC_IVAR___VKCStickerEffectInternal_isStroked) == 1)
    {
      v29 = *(v21 + OBJC_IVAR___VKCStickerEffectInternal_smallStrokeRadiusMultiplier);
      if (!*(v21 + OBJC_IVAR___VKCStickerEffectInternal_forceSmallStrokeRadiusMultiplier))
      {
        v29 = v29 + (v28 * (1.0 - v29));
      }

      v25 = ((v29 * *(v21 + OBJC_IVAR___VKCStickerEffectInternal_strokeRadius)) + (v29 * *(v21 + OBJC_IVAR___VKCStickerEffectInternal_strokeBlurRadius))) + ((v29 * *(v21 + OBJC_IVAR___VKCStickerEffectInternal_strokeRadius)) + (v29 * *(v21 + OBJC_IVAR___VKCStickerEffectInternal_strokeBlurRadius)));
    }

    v30 = *(v21 + OBJC_IVAR___VKCStickerEffectInternal_smallShadowSizeMultiplier) + (v28 * (1.0 - *(v21 + OBJC_IVAR___VKCStickerEffectInternal_smallShadowSizeMultiplier)));
    v31 = *(v21 + OBJC_IVAR___VKCStickerEffectInternal_shadowRadius) * v30;
    v32 = *(v21 + OBJC_IVAR___VKCStickerEffectInternal_shadowOffset);
    v33 = *(v21 + OBJC_IVAR___VKCStickerEffectInternal_shadowParallax);
    v34 = 1.0 - v25;
    v35 = fabsf(v30 * *v32.i32) + fabsf(v30 * *v33.i32);
    v36 = vaddv_f32(vabs_f32(vmul_n_f32(vzip2_s32(v32, v33), v30)));
    if (v35 > v36)
    {
      v36 = v35;
    }

    v37 = 1.0 - ((v31 + v36) + (v31 + v36));
    v38 = (v12 / v11) / (a3 / a2);
    v39 = 1.0 / v38;
    if (v38 <= 1.0)
    {
      v39 = 1.0;
      v26 = (v12 / v11) / (a3 / a2);
    }

    *&v40 = v37 * (v34 * v39);
    *(&v40 + 1) = v37 * (v34 * v26);
    if (!*(v5 + 152))
    {
      v41 = *(v5 + 184);
      v78 = v40;
      *(v41 + 56) = v40;
      *(v41 + 48) = v13;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v42 = *(v5 + 184);
      v44 = v42[8];
      v43 = v42[9];
      v42[8] = a2;
      v42[9] = a3;
      if (v44 != a2 || v43 != a3)
      {
        v42[10] = 0;
        swift_unknownObjectRelease();
      }

      sub_1B44089A4(a1);
      v46 = v45;

      *(v5 + 152) = v46;
      swift_unknownObjectRelease();
      *(v5 + 160) = 0;
      swift_unknownObjectRelease();
      v22 = OBJC_IVAR___VKCStickerEffectInternal_isStroked;
      v40 = v78;
    }

    if (v8[v22] == 1 && !*(v5 + 160))
    {
      v54 = fminf(fmaxf(((v24 / *(v5 + 64)) + -30.0) / 90.0, 0.0), 1.0);
      v55 = *&v8[OBJC_IVAR___VKCStickerEffectInternal_smallStrokeRadiusMultiplier] + (((v54 * v54) * ((v54 * -2.0) + 3.0)) * (1.0 - *&v8[OBJC_IVAR___VKCStickerEffectInternal_smallStrokeRadiusMultiplier]));
      if (v8[OBJC_IVAR___VKCStickerEffectInternal_forceSmallStrokeRadiusMultiplier])
      {
        v55 = *&v8[OBJC_IVAR___VKCStickerEffectInternal_smallStrokeRadiusMultiplier];
      }

      v56 = *&v8[OBJC_IVAR___VKCStickerEffectInternal_strokeRadius] * v55;
      v57 = *&v8[OBJC_IVAR___VKCStickerEffectInternal_strokeBlurRadius] * v55;
      v58 = *(v5 + 192);
      *(v58 + 64) = v40;
      *(v58 + 48) = v56;
      *(v58 + 52) = v57;
      *(v58 + 56) = *(v5 + 152);

      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
      v59 = *(v5 + 192);
      v61 = v59[9];
      v60 = v59[10];
      v59[9] = a2;
      v59[10] = a3;
      if (v61 != a2 || v60 != a3)
      {
        v59[12] = 0;
        swift_unknownObjectRelease();
      }

      sub_1B440D350(a1);
      v63 = v62;

      *(v5 + 160) = v63;
      swift_unknownObjectRelease();
      *(v5 + 176) = 0;
      swift_unknownObjectRelease();
      *(v5 + 168) = 0;
      swift_unknownObjectRelease();
      if (*(v5 + 176))
      {
        goto LABEL_48;
      }
    }

    else if (*(v5 + 176))
    {
LABEL_48:
      if (v8[OBJC_IVAR___VKCStickerEffectInternal_isPuffy] == 1 && !*(v5 + 168))
      {
        v66 = *(v5 + 200);
        *(v66 + 48) = *&v8[OBJC_IVAR___VKCStickerEffectInternal_normalsRadius];
        v67 = *(v66 + 56);
        *(v66 + 56) = *(v5 + 152);
        swift_unknownObjectRetain_n();

        sub_1B43F999C(v67);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_1B43F9E58(a1);
        v69 = v68;

        swift_unknownObjectRelease();
        *(v5 + 168) = v69;
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
      goto LABEL_51;
    }

    v47 = *(v5 + 208);
    v48 = *&v8[OBJC_IVAR___VKCStickerEffectInternal_shadowRadius];
    v49 = *(v47 + 24);
    *(v47 + 24) = v48;
    if (v48 != v49)
    {
      v50 = *(v47 + 48);
      *(v47 + 48) = 0;
    }

    v51 = *(v5 + 208);
    if (*(v5 + 160))
    {
      v52 = *(v5 + 160);
    }

    else
    {
      v52 = *(v5 + 152);
      swift_unknownObjectRetain();
    }

    v64 = *(v51 + 32);
    *(v51 + 32) = v52;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1B4401080(v64);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v65 = sub_1B44010A4(a1);

    *(v5 + 176) = v65;
    swift_unknownObjectRelease();
    *(v5 + 168) = 0;
    swift_unknownObjectRelease();
    goto LABEL_48;
  }
}

uint64_t sub_1B4409AD0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 48);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1B4409B8C()
{
  sub_1B4409AD0();

  return MEMORY[0x1EEE6BDC0](v0, 224, 15);
}

__n128 __swift_memcpy52_16(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B4409C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_1B4409C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B4409CA8(uint64_t a1, uint64_t a2)
{
  sub_1B44162B0();
  sub_1B4416090();
  v4 = sub_1B44162D0();

  return sub_1B4409D20(a1, a2, v4);
}

unint64_t sub_1B4409D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B4416240())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_1B4409DD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB899310);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1B4409EDC(uint64_t a1)
{
  sub_1B44162B0();
  type metadata accessor for CFString(0);
  sub_1B440C8DC(&qword_1EB8992F8, type metadata accessor for CFString);
  sub_1B4415F50();
  v2 = sub_1B44162D0();

  return sub_1B4409F90(a1, v2);
}

unint64_t sub_1B4409F90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1B440C8DC(&qword_1EB8992F8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B4415F40();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B440A09C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB899318);
    v3 = sub_1B4416220();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B440C928(v4, &v13, &unk_1EB899320);
      v5 = v13;
      v6 = v14;
      result = sub_1B4409CA8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B440B944(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1B440A1CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB899300);
    v3 = sub_1B4416220();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B440C928(v4, &v11, &unk_1EB898D30);
      v5 = v11;
      result = sub_1B4409EDC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B440B944(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1B440A2F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8992F0);
    v3 = sub_1B4416220();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1B4409EDC(v6);
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

id sub_1B440A3E0(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 size];
  v7 = v6;
  result = [a1 scale];
  v10 = v7 * v9;
  if (COERCE__INT64(fabs(v7 * v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [a1 size];
  v12 = v11;
  result = [a1 scale];
  v14 = v12 * v13;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = (v14 / v10) / (a3 / a2);
  v16 = 1.0;
  v17 = 1.0 / v15;
  if (v15 <= 1.0)
  {
    v17 = 1.0;
    v16 = v15;
  }

  v18 = ceilf(v17 * a2);
  if ((LODWORD(v18) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_22;
  }

  if (v18 <= -9.2234e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18 >= 9.2234e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = ceilf(v16 * a3);
  if ((LODWORD(v19) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v19 <= -9.2234e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v19 < 9.2234e18)
  {
    return v18;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B440A5B8()
{
  if (*(v0[7] + OBJC_IVAR___VKCStickerEffectInternal_isCurlEnabled) == 1)
  {
    v35 = v0;
    v1 = 0;
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v4 = v1;
      *&v36 = ((v4 + v4) / 200.0) + -1.0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB899310);
      result = swift_initStackObject();
      *(result + 32) = __PAIR64__(-1.0, v36);
      v6 = (result + 32);
      *(result + 16) = xmmword_1B44297B0;
      *(result + 40) = __PAIR64__(1.0, v36);
      v7 = *(v3 + 16);
      v8 = v7 + 2;
      if (__OFADD__(v7, 2))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v9 = *(v3 + 24) >> 1, v9 < v8))
      {
        if (v7 <= v8)
        {
          v10 = v7 + 2;
        }

        else
        {
          v10 = v7;
        }

        result = sub_1B4409DD8(result, v10, 1, v3);
        v3 = result;
        v9 = *(result + 24) >> 1;
      }

      v11 = *(v3 + 16);
      if (v9 - v11 < 2)
      {
        goto LABEL_35;
      }

      *(v3 + 32 + 8 * v11) = *v6;

      v12 = *(v3 + 16);
      _VF = __OFADD__(v12, 2);
      v14 = v12 + 2;
      if (_VF)
      {
        goto LABEL_36;
      }

      *(v3 + 16) = v14;
      result = swift_initStackObject();
      *(result + 32) = __PAIR64__(1.0, v4 / 200.0);
      v15 = (result + 32);
      *(result + 16) = xmmword_1B44297B0;
      *(result + 40) = COERCE_UNSIGNED_INT(v4 / 200.0);
      v16 = *(v2 + 16);
      v17 = v16 + 2;
      if (__OFADD__(v16, 2))
      {
        goto LABEL_37;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v18 = *(v2 + 24) >> 1, v18 < v17))
      {
        if (v16 <= v17)
        {
          v19 = v16 + 2;
        }

        else
        {
          v19 = v16;
        }

        result = sub_1B4409DD8(result, v19, 1, v2);
        v2 = result;
        v18 = *(result + 24) >> 1;
      }

      v20 = *(v2 + 16);
      if (v18 - v20 < 2)
      {
        goto LABEL_38;
      }

      *(v2 + 32 + 8 * v20) = *v15;

      v21 = *(v2 + 16);
      _VF = __OFADD__(v21, 2);
      v22 = v21 + 2;
      if (_VF)
      {
        goto LABEL_39;
      }

      *(v2 + 16) = v22;
      if (++v1 == 201)
      {
        v23 = *(v3 + 16);
        v35[11] = v23;
        if (!(v23 >> 60))
        {
          v24 = v35[2];
          v25 = [v24 newBufferWithBytes:v3 + 32 length:8 * v23 options:0];

          if (!v25)
          {

            v34 = 0;
            goto LABEL_32;
          }

          v35[12] = v25;
          swift_unknownObjectRetain();
          result = swift_unknownObjectRelease();
          v26 = *(v2 + 16);
          if (!(v26 >> 60))
          {
            v27 = [v24 newBufferWithBytes:v2 + 32 length:8 * v26 options:0];

            if (v27)
            {
              swift_unknownObjectRelease();
              v35[13] = v27;
            }

            else
            {
              type metadata accessor for MTLCommandBufferError(0);
              v38 = 1;
              sub_1B440A09C(MEMORY[0x1E69E7CC0]);
              sub_1B440C8DC(&qword_1EB899260, type metadata accessor for MTLCommandBufferError);
              sub_1B4415F10();
              swift_willThrow();
            }

            return swift_unknownObjectRelease();
          }

LABEL_41:
          __break(1u);
          return result;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v0[11] = 4;
  v28 = v0[2];
  __asm
  {
    FMOV            V0.2S, #-1.0
    FMOV            V8.2S, #1.0
  }

  *v39 = _D0;
  *&v39[1] = -_D8;
  *&v39[2] = -_D0;
  *&v39[3] = _D8;
  v34 = [v28 newBufferWithBytes:v39 length:32 options:0];
  if (v34 && (v0[12] = v34, swift_unknownObjectRelease(), v37[0] = 0x3F80000000000000, *&v37[1] = _D8, v37[2] = 0, v37[3] = 1065353216, (v34 = [v28 newBufferWithBytes:v37 length:32 options:0]) != 0))
  {
    v0[13] = v34;
    return swift_unknownObjectRelease();
  }

  else
  {
LABEL_32:
    type metadata accessor for MTLCommandBufferError(v34);
    v38 = 1;
    sub_1B440A09C(MEMORY[0x1E69E7CC0]);
    sub_1B440C8DC(&qword_1EB899260, type metadata accessor for MTLCommandBufferError);
    sub_1B4415F10();
    return swift_willThrow();
  }
}

void sub_1B440AA98(void *a1, void *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = *(a3 + OBJC_IVAR___VKCStickerEffectInternal_isStroked);
  v37 = *(a3 + OBJC_IVAR___VKCStickerEffectInternal_iridescence);
  v36 = *(a3 + OBJC_IVAR___VKCStickerEffectInternal_isPuffy);
  v35 = *(a3 + OBJC_IVAR___VKCStickerEffectInternal_isBrushed);
  v34 = *(a3 + OBJC_IVAR___VKCStickerEffectInternal_applyIridescenceBeforeStroke);
  v33 = *(a3 + OBJC_IVAR___VKCStickerEffectInternal_applyBrushBeforeStroke);
  v32 = *(a3 + OBJC_IVAR___VKCStickerEffectInternal_isCurlEnabled);
  v5 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  [v5 setConstantValue:&v38 type:53 atIndex:0];
  [v5 setConstantValue:&v37 type:29 atIndex:1];
  [v5 setConstantValue:&v36 type:53 atIndex:2];
  [v5 setConstantValue:&v35 type:53 atIndex:3];
  [v5 setConstantValue:&v34 type:53 atIndex:4];
  [v5 setConstantValue:&v33 type:53 atIndex:5];
  [v5 setConstantValue:&v32 type:53 atIndex:6];
  v6 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  v7 = sub_1B4416070();
  v31 = 0;
  v8 = [a2 newFunctionWithName:v7 constantValues:v5 error:&v31];

  if (!v8 || (v9 = v31, [v6 setVertexFunction_], swift_unknownObjectRelease(), v10 = sub_1B4416070(), v31 = 0, v11 = objc_msgSend(a2, sel_newFunctionWithName_constantValues_error_, v10, v5, &v31), v10, !v11))
  {
LABEL_13:
    v30 = v31;
    sub_1B4415F30();

    swift_willThrow();
    return;
  }

  v12 = v31;
  [v6 setFragmentFunction_];
  swift_unknownObjectRelease();
  v13 = [v6 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v14 setPixelFormat_];

  v15 = [v6 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v16 setBlendingEnabled_];

  v17 = [v6 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v18 setRgbBlendOperation_];

  v19 = [v6 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v20 setSourceRGBBlendFactor_];

  v21 = [v6 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  if (!v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v22 setDestinationRGBBlendFactor_];

  v23 = [v6 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v24 setAlphaBlendOperation_];

  v25 = [v6 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v26 setSourceAlphaBlendFactor_];

  v27 = [v6 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  if (v28)
  {
    [v28 setDestinationAlphaBlendFactor_];

    [v6 setDepthAttachmentPixelFormat_];
    v31 = 0;
    if ([a1 newRenderPipelineStateWithDescriptor:v6 error:&v31])
    {
      v29 = v31;

      return;
    }

    goto LABEL_13;
  }

LABEL_21:
  __break(1u);
}

id sub_1B440B0A0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() texture2DDescriptorWithPixelFormat:252 width:a2 height:a3 mipmapped:0];
  if ([a1 supportsFamily_])
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  [v4 setStorageMode_];
  [v4 setUsage_];
  v6 = [a1 newTextureWithDescriptor_];

  return v6;
}

int64_t sub_1B440B168(void *a1, int64_t a2, int64_t a3, void *a4)
{
  cacheOut[1] = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  cacheOut[0] = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], 0, a4, 0, cacheOut);
  v11 = cacheOut[0];
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = cacheOut[0] == 0;
  }

  if (v12)
  {
    v13 = v10;
    sub_1B440B8F0();
    swift_allocError();
    *v14 = v13;
    *(v14 + 4) = 0;
    swift_willThrow();

LABEL_29:
    return DeviceRGB;
  }

  v62 = a1;
  space = DeviceRGB;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB898D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4428FE0;
  v16 = a3;
  v17 = *MEMORY[0x1E6966208];
  *(inited + 32) = *MEMORY[0x1E6966208];
  v18 = MEMORY[0x1E69E6530];
  v64 = a2;
  *(inited + 40) = a2;
  DeviceRGB = *MEMORY[0x1E69660B8];
  *(inited + 64) = v18;
  *(inited + 72) = DeviceRGB;
  v63 = v16;
  *(inited + 80) = v16;
  v19 = *MEMORY[0x1E6966130];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v20 = MEMORY[0x1E69E7668];
  *(inited + 120) = 1111970369;
  v21 = *MEMORY[0x1E6966030];
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  v22 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  v23 = *MEMORY[0x1E6966028];
  *(inited + 184) = v22;
  *(inited + 192) = v23;
  *(inited + 200) = 1;
  v66 = v9;
  v24 = *MEMORY[0x1E6966100];
  *(inited + 224) = v22;
  *(inited + 232) = v24;
  *(inited + 240) = 1;
  v25 = *MEMORY[0x1E69660D8];
  *(inited + 264) = v22;
  *(inited + 272) = v25;
  v67 = v11;
  v26 = v17;
  v27 = DeviceRGB;
  v28 = v19;
  v29 = v21;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = sub_1B440A1CC(MEMORY[0x1E69E7CC0]);
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8990A0);
  *(inited + 280) = v33;
  sub_1B440A1CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB898D30);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_1B440C8DC(&qword_1EB8990B0, type metadata accessor for CFString);
  v34 = sub_1B4416050();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8992E0);
  v35 = swift_initStackObject();
  v36 = MEMORY[0x1E6966158];
  *(v35 + 16) = xmmword_1B4428FF0;
  v37 = *v36;
  *(v35 + 32) = v37;
  *(v35 + 40) = 1;
  v38 = v37;
  sub_1B440A2F4(v35);
  swift_setDeallocating();
  sub_1B43FFE7C(v35 + 32);
  v39 = sub_1B4416050();

  poolOut = 0;
  v40 = CVPixelBufferPoolCreate(v66, v39, v34, &poolOut);
  v41 = v40;
  if (v40 || !poolOut)
  {
    sub_1B440B8F0();
    swift_allocError();
    *v55 = v41;
    *(v55 + 4) = 0;
    swift_willThrow();

LABEL_28:
    goto LABEL_29;
  }

  pixelBufferOut = 0;
  v42 = poolOut;
  v43 = CVPixelBufferPoolCreatePixelBuffer(v66, v42, &pixelBufferOut);
  if (v43 || !pixelBufferOut)
  {
    sub_1B440B8F0();
    swift_allocError();
    *v56 = v43;
    *(v56 + 4) = 0;
    swift_willThrow();

LABEL_26:
LABEL_27:

    goto LABEL_28;
  }

  v44 = pixelBufferOut;
  CVPixelBufferLockBaseAddress(v44, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(v44);
  if (!BaseAddress)
  {
    sub_1B440B8F0();
    swift_allocError();
    *v57 = 0;
    *(v57 + 4) = 1;
    swift_willThrow();

LABEL_25:
    goto LABEL_26;
  }

  v46 = BaseAddress;
  BytesPerRow = CVPixelBufferGetBytesPerRow(v44);
  DeviceRGB = v64;
  v48 = __CGBitmapContextCreate(v46, v64, v63, BytesPerRow, space);
  if (!v48)
  {
    sub_1B440B8F0();
    swift_allocError();
    *v58 = 1;
    *(v58 + 4) = 1;
    swift_willThrow();

    goto LABEL_25;
  }

  v49 = v63;
  v50 = v48;
  CGContextTranslateCTM(v48, 0.0, v63);
  CGContextScaleCTM(v50, 1.0, -1.0);
  v65 = v50;
  UIGraphicsPushContext(v50);
  v51 = v64;
  [v62 drawInRect_];
  UIGraphicsPopContext();
  CVPixelBufferUnlockBaseAddress(v44, 0);
  textureOut = 0;
  if (v64 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v49 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  if (v49 >= 9.22337204e18)
  {
    goto LABEL_37;
  }

  DeviceRGB = CVMetalTextureCacheCreateTextureFromImage(v66, v67, v44, 0, MTLPixelFormatBGRA8Unorm, v51, v49, 0, &textureOut);
  if (DeviceRGB || !textureOut)
  {
    sub_1B440B8F0();
    swift_allocError();
    *v60 = DeviceRGB;
    *(v60 + 4) = 0;
    swift_willThrow();

LABEL_33:
    goto LABEL_27;
  }

  v52 = v34;
  v53 = textureOut;
  v54 = CVMetalTextureGetTexture(v53);
  if (!v54)
  {
    sub_1B440B8F0();
    swift_allocError();
    *v61 = 2;
    *(v61 + 4) = 1;
    swift_willThrow();

    goto LABEL_33;
  }

  DeviceRGB = v54;

  return DeviceRGB;
}

unint64_t sub_1B440B8F0()
{
  result = qword_1EB8992D8;
  if (!qword_1EB8992D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8992D8);
  }

  return result;
}

_OWORD *sub_1B440B944(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1B440B954(__n128 *a1, void *a2, id a3)
{
  v120 = *MEMORY[0x1E69E9840];
  v7 = [a3 width];
  v108 = a3;
  v109 = [a3 height];
  v8 = *(v3 + 48);
  v9 = *(v3 + 56);
  v10 = a1[1].n128_u64[1];
  v111 = v8;
  v106 = v9;
  if (v10 == v9)
  {
    v18 = v8;
    v19 = v9;
    v17 = a1[1].n128_u64[0];
    if (!v17)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v11 = *(v3 + 64);
    *(v3 + 112) = 0;
    v12 = v8;
    v13 = v9;
    swift_unknownObjectRelease();
    *(v3 + 120) = 0;
    swift_unknownObjectRelease();
    if (v10[OBJC_IVAR___VKCStickerEffectInternal_isCurlEnabled] != v13[OBJC_IVAR___VKCStickerEffectInternal_isCurlEnabled])
    {
      *(v3 + 96) = 0;
      swift_unknownObjectRelease();
      *(v3 + 104) = 0;
      swift_unknownObjectRelease();
    }

    if (v10[OBJC_IVAR___VKCStickerEffectInternal_isStroked] != v13[OBJC_IVAR___VKCStickerEffectInternal_isStroked] || *&v10[OBJC_IVAR___VKCStickerEffectInternal_strokeRadius] != *&v13[OBJC_IVAR___VKCStickerEffectInternal_strokeRadius] || a1[2].n128_f32[0] != v11)
    {
      *(v3 + 152) = 0;
      swift_unknownObjectRelease();
      *(v3 + 160) = 0;
      swift_unknownObjectRelease();
      *(v3 + 176) = 0;
      swift_unknownObjectRelease();
      *(v3 + 168) = 0;
      swift_unknownObjectRelease();
    }

    if (v10[OBJC_IVAR___VKCStickerEffectInternal_isComicEnabled] != v13[OBJC_IVAR___VKCStickerEffectInternal_isComicEnabled] || v10[OBJC_IVAR___VKCStickerEffectInternal_comicParameters] != v13[OBJC_IVAR___VKCStickerEffectInternal_comicParameters])
    {
      *(v3 + 144) = 0;
      swift_unknownObjectRelease();
    }

    if (*&v10[OBJC_IVAR___VKCStickerEffectInternal_normalsRadius] != *&v13[OBJC_IVAR___VKCStickerEffectInternal_normalsRadius])
    {
      *(v3 + 168) = 0;
      swift_unknownObjectRelease();
    }

    if (*&v10[OBJC_IVAR___VKCStickerEffectInternal_shadowRadius] != *&v13[OBJC_IVAR___VKCStickerEffectInternal_shadowRadius] || (v14 = *&v13[OBJC_IVAR___VKCStickerEffectInternal_shadowParallax], v15 = vceq_f32(*&v10[OBJC_IVAR___VKCStickerEffectInternal_shadowOffset], v14), (v15.i8[0] & 1) == 0) || (v15.i8[4] & 1) == 0 || (v16 = vceq_f32(*&v10[OBJC_IVAR___VKCStickerEffectInternal_shadowParallax], v14), (v16.i8[0] & 1) == 0) || (v16.i8[4] & 1) == 0 || a1[2].n128_f32[0] != v11)
    {
      *(v3 + 152) = 0;
      swift_unknownObjectRelease();
      *(v3 + 160) = 0;
      swift_unknownObjectRelease();
      *(v3 + 176) = 0;
      swift_unknownObjectRelease();
    }

    v17 = a1[1].n128_u64[0];
    if (!v17)
    {
      goto LABEL_30;
    }
  }

  v20 = a1;
  v21 = v17;
  v22 = v7;
  v24 = sub_1B440A3E0(v21, v7, v109);
  v25 = *(v3 + 136);
  if (v25 && (v26 = v23, v24 == [v25 width]) && *(v3 + 136))
  {
    v104 = [swift_unknownObjectRetain() height];
    swift_unknownObjectRelease();

    v7 = v22;
    a1 = v20;
    if (v26 == v104)
    {
      goto LABEL_30;
    }
  }

  else
  {

    v7 = v22;
    a1 = v20;
  }

  *(v3 + 136) = 0;
  swift_unknownObjectRelease();
  *(v3 + 144) = 0;
  swift_unknownObjectRelease();
LABEL_30:
  v27 = [v108 width];
  v28 = *(v3 + 176);
  if (!v28 || v27 != [v28 width] || (v29 = objc_msgSend(v108, sel_height), (v30 = *(v3 + 176)) == 0) || v29 != objc_msgSend(v30, sel_height))
  {
    *(v3 + 152) = 0;
    swift_unknownObjectRelease();
    *(v3 + 160) = 0;
    swift_unknownObjectRelease();
    *(v3 + 168) = 0;
    swift_unknownObjectRelease();
    *(v3 + 176) = 0;
    swift_unknownObjectRelease();
  }

  v31 = v4;
  if (!v17)
  {
    if (!v111)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v17 != v111)
  {
LABEL_37:
    *(v3 + 136) = 0;
    swift_unknownObjectRelease();
    *(v3 + 144) = 0;
    swift_unknownObjectRelease();
    *(v3 + 152) = 0;
    swift_unknownObjectRelease();
    *(v3 + 160) = 0;
    swift_unknownObjectRelease();
    *(v3 + 168) = 0;
    swift_unknownObjectRelease();
    *(v3 + 176) = 0;
    swift_unknownObjectRelease();
  }

LABEL_38:
  v32 = *(v3 + 48);
  v33 = *(v3 + 56);
  v34 = a1[1];
  *(v3 + 32) = *a1;
  *(v3 + 48) = v34;
  *(v3 + 64) = a1[2];
  *(v3 + 80) = a1[3].n128_u32[0];
  v35 = v17;
  v36 = v10;

  if (*(v3 + 96) && *(v3 + 104))
  {
    v37 = a2;
  }

  else
  {
    sub_1B440A5B8();
    v37 = a2;
    if (v4)
    {
      goto LABEL_48;
    }
  }

  v38 = *(v3 + 112);
  if (v38)
  {
    goto LABEL_43;
  }

  sub_1B440AA98(*(v3 + 16), *(v3 + 24), v36);
  if (v4)
  {
LABEL_48:

    return;
  }

  *(v3 + 112) = v40;
  swift_unknownObjectRelease();
  v38 = *(v3 + 112);
  if (!v38)
  {

LABEL_66:
    v52 = 1;
LABEL_67:
    LOBYTE(v112[0]) = v52;
    return;
  }

LABEL_43:
  v39 = *(v3 + 120);
  if (v39)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v41 = *(v3 + 16);
    v42 = objc_allocWithZone(MEMORY[0x1E6974050]);
    swift_unknownObjectRetain();
    v43 = v31;
    v44 = a1;
    v45 = [v42 init];
    [v45 setDepthCompareFunction_];
    [v45 setDepthWriteEnabled_];
    v46 = [v41 newDepthStencilStateWithDescriptor_];

    a1 = v44;
    v31 = v43;
    *(v3 + 120) = v46;
    swift_unknownObjectRelease();
    v39 = *(v3 + 120);
    if (!v39)
    {

      goto LABEL_65;
    }
  }

  v47 = *(v3 + 128);
  if (v47)
  {
    swift_unknownObjectRetain();
    if (v7 == [v47 width])
    {
      v48 = *(v3 + 128);
      if (v48)
      {
        if (v109 == [v48 height])
        {
          v49 = *(v3 + 128);
          if (v49)
          {
            goto LABEL_55;
          }

          goto LABEL_59;
        }
      }
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  *(v3 + 128) = sub_1B440B0A0(*(v3 + 16), v7, v109);
  swift_unknownObjectRelease();
  v49 = *(v3 + 128);
  if (!v49)
  {
LABEL_59:

    swift_unknownObjectRelease();
LABEL_65:
    swift_unknownObjectRelease();
    goto LABEL_66;
  }

LABEL_55:
  swift_unknownObjectRetain();
  sub_1B4409164(v37, v7, v109);
  if (v31)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  if (*(v3 + 144))
  {
    v50 = a1;
    v102 = v7;
    v51 = *(v3 + 144);
    goto LABEL_70;
  }

  if (!*(v3 + 136))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_65;
  }

  v50 = a1;
  v102 = v7;
  v51 = swift_unknownObjectRetain();
LABEL_70:
  v105 = v51;
  if (!*(v3 + 160))
  {
    if (*(v3 + 152))
    {
      v53 = swift_unknownObjectRetain();
      v54 = *(v3 + 168);
      if (v54)
      {
        goto LABEL_72;
      }

      goto LABEL_75;
    }

    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_65;
  }

  v53 = *(v3 + 160);
  v54 = *(v3 + 168);
  if (v54)
  {
LABEL_72:
    v55 = v54;
    goto LABEL_77;
  }

LABEL_75:
  if (!*(v3 + 152))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_102;
  }

  v55 = swift_unknownObjectRetain();
LABEL_77:
  v103 = v55;
  if (!*(v3 + 176))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_102:
    swift_unknownObjectRelease();
    v52 = 1;
    goto LABEL_67;
  }

  v100 = v53;
  v101 = v39;
  v56 = *(v3 + 176);
  swift_unknownObjectRetain();
  v99 = v56;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v57 = [v105 width];
  v58 = [v105 height];
  v59 = v109;
  if (v109 <= v102)
  {
    v59 = v102;
  }

  v60 = 0.0;
  v61 = fminf(fmaxf(((v59 / v50[2].n128_f32[0]) + -30.0) / 90.0, 0.0), 1.0);
  v62 = (v61 * v61) * ((v61 * -2.0) + 3.0);
  if (v36[OBJC_IVAR___VKCStickerEffectInternal_isStroked] == 1)
  {
    v63 = *&v36[OBJC_IVAR___VKCStickerEffectInternal_smallStrokeRadiusMultiplier];
    if (!v36[OBJC_IVAR___VKCStickerEffectInternal_forceSmallStrokeRadiusMultiplier])
    {
      v63 = v63 + (v62 * (1.0 - v63));
    }

    v60 = ((v63 * *&v36[OBJC_IVAR___VKCStickerEffectInternal_strokeRadius]) + (v63 * *&v36[OBJC_IVAR___VKCStickerEffectInternal_strokeBlurRadius])) + ((v63 * *&v36[OBJC_IVAR___VKCStickerEffectInternal_strokeRadius]) + (v63 * *&v36[OBJC_IVAR___VKCStickerEffectInternal_strokeBlurRadius]));
  }

  v64 = *&v36[OBJC_IVAR___VKCStickerEffectInternal_smallShadowSizeMultiplier] + (v62 * (1.0 - *&v36[OBJC_IVAR___VKCStickerEffectInternal_smallShadowSizeMultiplier]));
  v65 = *&v36[OBJC_IVAR___VKCStickerEffectInternal_shadowRadius] * v64;
  v97 = vmul_n_f32(*&v36[OBJC_IVAR___VKCStickerEffectInternal_shadowOffset], v64);
  v98 = vmul_n_f32(*&v36[OBJC_IVAR___VKCStickerEffectInternal_shadowParallax], v64);
  v66 = 1.0 - v60;
  v67 = fabsf(*v97.i32) + fabsf(*v98.i32);
  v68 = vaddv_f32(vabs_f32(vzip2_s32(v97, v98)));
  if (v67 <= v68)
  {
    v67 = v68;
  }

  v69 = 1.0 - ((v65 + v67) + (v65 + v67));
  v70 = v109;
  v71 = (v58 / v57) / (v109 / v102);
  v72 = 1.0 / v71;
  if (v71 > 1.0)
  {
    v73 = 1.0;
  }

  else
  {
    v72 = 1.0;
    v73 = (v58 / v57) / (v109 / v102);
  }

  *&v74 = v69 * (v66 * v72);
  *(&v74 + 1) = v69 * (v66 * v73);
  v110 = v74;
  v75 = *&v36[OBJC_IVAR___VKCStickerEffectInternal_shadowAlpha] * (*&v36[OBJC_IVAR___VKCStickerEffectInternal_smallShadowAlphaMultiplier] + (v62 * (1.0 - *&v36[OBJC_IVAR___VKCStickerEffectInternal_smallShadowAlphaMultiplier])));
  *&v76 = MEMORY[0x1B8C75770](*v50);
  v77 = v50[2].n128_u64[1];
  v78 = v50[3].n128_u32[0];
  v112[0] = v76;
  v112[1] = v79;
  v112[2] = v80;
  v112[3] = v81;
  v113 = v77;
  v114 = v78;
  v115 = v110;
  v116 = v75;
  v117 = v97;
  v118 = v98;
  v119 = 1.0 / v70;
  v82 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  v83 = [v82 colorAttachments];
  v84 = [v83 objectAtIndexedSubscript_];

  if (!v84)
  {
    __break(1u);
    goto LABEL_104;
  }

  [v84 setLoadAction_];

  v85 = [v82 colorAttachments];
  v86 = [v85 objectAtIndexedSubscript_];

  if (!v86)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  [v86 setClearColor_];

  v87 = [v82 colorAttachments];
  v88 = [v87 objectAtIndexedSubscript_];

  if (!v88)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  [v88 setTexture_];

  v89 = [v82 depthAttachment];
  if (!v89)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v90 = v89;
  [v89 setLoadAction_];

  v91 = [v82 depthAttachment];
  if (!v91)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v92 = v91;
  [v91 setClearDepth_];

  v93 = [v82 depthAttachment];
  if (v93)
  {
    v94 = v93;
    [v93 setTexture_];

    v95 = [a2 renderCommandEncoderWithDescriptor_];
    if (v95)
    {
      v96 = v95;
      [v95 setRenderPipelineState_];
      [v96 setDepthStencilState_];
      [v96 setVertexBuffer:*(v3 + 96) offset:0 atIndex:0];
      [v96 setVertexBuffer:*(v3 + 104) offset:0 atIndex:1];
      [v96 setVertexBytes:v112 length:128 atIndex:2];
      [v96 setFragmentBytes:v112 length:128 atIndex:0];
      [v96 setFragmentTexture:v105 atIndex:0];
      [v96 setFragmentTexture:v100 atIndex:1];
      [v96 setFragmentTexture:v103 atIndex:2];
      [v96 setFragmentTexture:v99 atIndex:3];
      [v96 drawPrimitives:4 vertexStart:0 vertexCount:*(v3 + 88)];
      [v96 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v52 = 0;
    goto LABEL_67;
  }

LABEL_108:
  __break(1u);
}

uint64_t sub_1B440C8DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B440C928(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1B440C9A0(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR____TtC13VisionKitCore23StickerComicEdgesShader_mode);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (v2 > 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v3 = *(v1 + OBJC_IVAR____TtC13VisionKitCore23StickerComicEdgesShader_threshold);
  v4 = *(v1 + OBJC_IVAR____TtC13VisionKitCore23StickerComicEdgesShader_preThreshold);
  v5 = *(v1 + OBJC_IVAR____TtC13VisionKitCore23StickerComicEdgesShader_sigma);
  v7 = vcvt_f32_f64(*(v1 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size));
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v5;
  return [a1 setFragmentBytes:&v7 length:24 atIndex:0];
}

id sub_1B440CA80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerComicEdgesShader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1B440CAD8(void *a1, void *a2)
{
  *(v2 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_mode) = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(v2 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_vignetteCenter) = _Q0;
  v8 = (v2 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_vignetteColor);
  *v8 = 0;
  v8[1] = 0;
  *(v2 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_vignetteStart) = 0x3FD3333333333333;
  *(v2 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_vignetteEnd) = 0x3FE8000000000000;
  *(v2 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_numLevels) = 1086324736;
  *(v2 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_numLevelsRecip) = 1042983595;
  return sub_1B44012EC(a1, a2);
}

id sub_1B440CB7C(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_mode);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (v2 > 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v3 = *(v1 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_vignetteColor);
  v4 = vcvt_f32_f64(*(v1 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_vignetteCenter));
  v5 = *(v1 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_vignetteStart);
  v6 = *(v1 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_vignetteEnd);
  v7 = *(v1 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_numLevels);
  v8 = *(v1 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_numLevelsRecip);
  v10 = *(v1 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_mode);
  v11 = v4;
  v12 = v3;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return [a1 setFragmentBytes:&v10 length:48 atIndex:0];
}

id sub_1B440CC70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerComicVignetteAndQuantizeShader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B440CCC8(void *a1)
{

  return sub_1B440CDD4(a1, &OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassOneShader_sigma, &OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassOneShader_sigmaColor);
}

id sub_1B440CD6C(void *a1)
{

  return sub_1B440CDD4(a1, &OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassTwoShader_sigma, &OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassTwoShader_sigmaColor);
}

id sub_1B440CDD4(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(v3 + *a2);
  v5 = *(v3 + *a3);
  v6 = vcvt_f32_f64(*(v3 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size));
  *v8 = v4;
  *&v8[1] = v5;
  v9 = v6;
  return [a1 setFragmentBytes:v8 length:16 atIndex:0];
}

id sub_1B440CE80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1B440CEDC(void *a1, void *a2)
{
  v3 = v2;
  v32[4] = *MEMORY[0x1E69E9840];
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  __asm { FMOV            V8.2S, #1.0 }

  *(v2 + 64) = _D8;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 112) = xmmword_1B4429A10;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v11 = objc_allocWithZone(MEMORY[0x1E6974148]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = [v11 init];
  v13 = sub_1B4416070();
  v14 = [a2 newFunctionWithName_];

  [v12 setVertexFunction_];
  swift_unknownObjectRelease();
  v15 = sub_1B4416070();
  v16 = [a2 newFunctionWithName_];

  [v12 setFragmentFunction_];
  swift_unknownObjectRelease();
  v17 = [v12 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
    __break(1u);
  }

  [v18 setPixelFormat_];

  v30 = 0;
  v19 = [a1 newRenderPipelineStateWithDescriptor:v12 error:&v30];
  v20 = v19;
  v21 = v30;
  if (!v19)
  {
    v27 = v30;
    sub_1B4415F30();

LABEL_8:
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v28 = 0;
    goto LABEL_9;
  }

  v3[13] = v19;
  v32[0] = 0x3F80000000000000;
  *&v32[1] = _D8;
  v32[2] = 0;
  v32[3] = 1065353216;
  v22 = v21;
  v23 = [a1 newBufferWithBytes:v32 length:32 options:0];
  if (!v23)
  {
    type metadata accessor for MTLCommandBufferError(0);
    sub_1B440A09C(MEMORY[0x1E69E7CC0]);
    sub_1B4408D08();
    sub_1B4415F10();
    goto LABEL_8;
  }

  v3[5] = v23;
  __asm { FMOV            V0.2S, #-1.0 }

  *v31 = _D0;
  *&v31[1] = -_D8;
  *&v31[2] = -_D0;
  *&v31[3] = _D8;
  v25 = [a1 newBufferWithBytes:v31 length:32 options:0];
  if (v25)
  {
    v26 = v25;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v3[4] = v26;
    return v3;
  }

  type metadata accessor for MTLCommandBufferError(0);
  v28 = 1;
  sub_1B440A09C(MEMORY[0x1E69E7CC0]);
  sub_1B4408D08();
  sub_1B4415F10();
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_9:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v28)
  {
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v20)
  {
    swift_unknownObjectRelease();
  }

  type metadata accessor for StickerShaderStrokeGenerator();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1B440D2D0()
{
  v0 = sub_1B4415F90();
  __swift_allocate_value_buffer(v0, qword_1EB8993B0);
  __swift_project_value_buffer(v0, qword_1EB8993B0);
  return sub_1B4415F80();
}

void sub_1B440D350(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 96);
    if (v3)
    {
      swift_unknownObjectRetain();
      if ([v3 width] == *(v1 + 72))
      {
        v4 = *(v1 + 96);
        if (v4)
        {
          if ([v4 height] == *(v1 + 80))
          {
            v5 = *(v1 + 96);
            if (v5)
            {
              goto LABEL_7;
            }

            goto LABEL_29;
          }
        }
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v9 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 112) width:*(v1 + 72) height:*(v1 + 80) mipmapped:0];
    [v9 setUsage_];
    [v9 setStorageMode_];
    v10 = [*(v1 + 16) newTextureWithDescriptor_];

    *(v1 + 96) = v10;
    swift_unknownObjectRelease();
    v5 = *(v1 + 96);
    if (v5)
    {
LABEL_7:
      v6 = *(v1 + 88);
      if (v6)
      {
        swift_unknownObjectRetain();
        if ([v6 width] == *(v1 + 72))
        {
          v7 = *(v1 + 88);
          if (v7)
          {
            if ([v7 height] == *(v1 + 80))
            {
              v8 = *(v1 + 88);
              if (!v8)
              {
                goto LABEL_35;
              }

              goto LABEL_18;
            }
          }
        }
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v11 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 120) width:*(v1 + 72) height:*(v1 + 80) mipmapped:0];
      [v11 setUsage_];
      [v11 setStorageMode_];
      v12 = [*(v1 + 16) newTextureWithDescriptor_];

      *(v1 + 88) = v12;
      swift_unknownObjectRelease();
      v8 = *(v1 + 88);
      if (!v8)
      {
LABEL_35:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return;
      }

LABEL_18:
      v13 = [swift_unknownObjectRetain() width];
      v14 = [v8 height];
      if (v14 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      v16 = *(v1 + 16);
      v17 = [objc_allocWithZone(MEMORY[0x1E69745B8]) initWithDevice_];
      v18 = [v2 width];
      if (v18 != [v8 width] || (v19 = objc_msgSend(v2, sel_height), v19 != objc_msgSend(v8, sel_height)))
      {
        if (qword_1EB898A90 != -1)
        {
          swift_once();
        }

        v33 = sub_1B4415F90();
        __swift_project_value_buffer(v33, qword_1EB8993B0);
        v34 = sub_1B4415F70();
        v35 = sub_1B4416100();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_1B4335000, v34, v35, "Source texture size (maskTexture) does not match destination texture (distanceTexture)", v36, 2u);
          MEMORY[0x1B8C77130](v36, -1, -1);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
        goto LABEL_35;
      }

      [v17 encodeToCommandBuffer:a1 sourceTexture:v2 destinationTexture:v8];
      v20 = (*(v1 + 52) * v15) / 3.0349;
      v21 = objc_allocWithZone(MEMORY[0x1E69745C0]);
      *&v22 = v20;
      v37 = [v21 initWithDevice:v16 sigma:v22];
      [v37 encodeToCommandBuffer:a1 sourceTexture:v8 destinationTexture:v2];
      v23 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
      v24 = [v23 colorAttachments];
      v25 = [v24 objectAtIndexedSubscript_];

      if (v25)
      {
        [v25 setClearColor_];

        v26 = [v23 colorAttachments];
        v27 = [v26 objectAtIndexedSubscript_];

        if (v27)
        {
          [v27 setLoadAction_];

          v28 = [v23 colorAttachments];
          v29 = [v28 objectAtIndexedSubscript_];

          if (v29)
          {
            swift_unknownObjectRetain();
            [v29 setTexture_];

            v30 = [a1 renderCommandEncoderWithDescriptor_];
            if (v30)
            {
              v31 = *(v1 + 48) * v15;
              v39[0] = v31 + -1.0;
              v39[1] = v31;
              v32 = v30;
              [v30 setRenderPipelineState_];
              [v32 setVertexBuffer:*(v1 + 32) offset:0 atIndex:0];
              [v32 setVertexBuffer:*(v1 + 40) offset:0 atIndex:1];
              [v32 setFragmentTexture:v2 atIndex:0];
              [v32 setFragmentBytes:v39 length:8 atIndex:0];
              [v32 drawPrimitives:4 vertexStart:0 vertexCount:4];
              [v32 endEncoding];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            goto LABEL_29;
          }

LABEL_39:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_29:
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1B440D9CC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B440DA24()
{
  sub_1B440D9CC();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B440DAB4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1B440DB64(uint64_t a1, void *a2, int a3)
{
  v23 = a3;
  v5 = sub_1B4415FC0();
  v6 = *(v5 - 8);
  v7 = (MEMORY[0x1EEE9AC00])();
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22[-v10];
  v12 = sub_1B4415FF0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22[-v17];
  result = _UISolariumEnabled();
  if (result)
  {
    if (a1 == 1)
    {
      sub_1B4415FA0();
    }

    else
    {
      sub_1B4415FB0();
    }

    (*(v6 + 32))(v11, v9, v5);
    sub_1B4416000();
    if (a2)
    {
      v20 = a2;
      sub_1B4415FD0();

      (*(v13 + 8))(v18, v12);
      (*(v13 + 32))(v18, v16, v12);
    }

    if (v23)
    {
      sub_1B4415FE0();
      (*(v13 + 8))(v18, v12);
      (*(v13 + 32))(v18, v16, v12);
    }

    v24[3] = v12;
    v24[4] = MEMORY[0x1E69DC388];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(v13 + 16))(boxed_opaque_existential_1, v18, v12);
    sub_1B4416180();
    return (*(v13 + 8))(v18, v12);
  }

  return result;
}

void sub_1B440DE34(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v9 = a4;
  v10 = a1;
  sub_1B440DB64(a3, a4, a5);
}

void sub_1B440DEB8(void *a1)
{
  v1 = a1;
  sub_1B4416180();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t getkDDRVInteractionDidFinishNotification_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __49__VKCCornerLookupButton_queryForProcessingResult__block_invoke_3_cold_1(v0);
}

void __vk_processHasUnlockEntitlement_block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Failed to check if process has unlock request entitlement: %@", &v3, 0xCu);
}

void VKCGColorCreateWithString_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_3_2();
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_1B4335000, a3, OS_LOG_TYPE_ERROR, "Color string component count (%zu) is different from the expected count for the color space (%zu) plus the alpha component", v5, 0x16u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

CGRect VNImageRectForNormalizedRect(CGRect normalizedRect, size_t imageWidth, size_t imageHeight)
{
  MEMORY[0x1EEDE7378](imageWidth, imageHeight, normalizedRect.origin, *&normalizedRect.origin.y, normalizedRect.size, *&normalizedRect.size.height);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x1EEE73558](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}