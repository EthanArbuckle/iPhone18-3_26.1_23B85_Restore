void sub_20BC1F660()
{
  sub_20BC21444();
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 3)
  {
    v14 = *(v1 + 48);
    v15 = *(v1 + 32);
    v12 = *(v1 + 80);
    v13 = *(v1 + 64);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_20C1732E0, COERCE_FLOAT(*(v1 + 96))), xmmword_20C1732F0, *(v1 + 96), 1), xmmword_20C14BFF0, *(v1 + 96), 2), xmmword_20C173300, *(v1 + 96), 3);
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_20C1732E0, COERCE_FLOAT(*(v1 + 112))), xmmword_20C1732F0, *(v1 + 112), 1), xmmword_20C14BFF0, *(v1 + 112), 2), xmmword_20C173300, *(v1 + 112), 3);
    v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_20C1732E0, COERCE_FLOAT(*(v1 + 128))), xmmword_20C1732F0, *(v1 + 128), 1), xmmword_20C14BFF0, *(v1 + 128), 2), xmmword_20C173300, *(v1 + 128), 3);
    v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_20C1732E0, COERCE_FLOAT(*(v1 + 144))), xmmword_20C1732F0, *(v1 + 144), 1), xmmword_20C14BFF0, *(v1 + 144), 2), xmmword_20C173300, *(v1 + 144), 3);
    v6 = *(v1 + 176);
    v7 = *(v1 + 160);
    v4 = *(v1 + 208);
    v5 = *(v1 + 192);

    v3 = v0 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_uniforms;
    swift_beginAccess();
    *(v3 + 16) = v15;
    *(v3 + 32) = v14;
    *(v3 + 48) = v13;
    *(v3 + 64) = v12;
    *(v3 + 80) = -1;
    *(v3 + 84) = 1123024896;
    *(v3 + 96) = v11;
    *(v3 + 112) = v10;
    *(v3 + 128) = v9;
    *(v3 + 144) = v8;
    *(v3 + 160) = -1;
    *(v3 + 164) = 1116471296;
    *(v3 + 176) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_20C1732E0, v7.f32[0]), xmmword_20C1732F0, *v7.f32, 1), xmmword_20C14BFF0, v7, 2), xmmword_20C173310, v7, 3);
    *(v3 + 192) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_20C1732E0, v6.f32[0]), xmmword_20C1732F0, *v6.f32, 1), xmmword_20C14BFF0, v6, 2), xmmword_20C173310, v6, 3);
    *(v3 + 208) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_20C1732E0, v5.f32[0]), xmmword_20C1732F0, *v5.f32, 1), xmmword_20C14BFF0, v5, 2), xmmword_20C173310, v5, 3);
    *(v3 + 224) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_20C1732E0, v4.f32[0]), xmmword_20C1732F0, *v4.f32, 1), xmmword_20C14BFF0, v4, 2), xmmword_20C173310, v4, 3);
    *(v3 + 240) = 0;
    *(v3 + 244) = 1119092736;
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_20BC1F83C(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_self() texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
  v4 = [*(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_context + 8) newTextureWithDescriptor_];
  if (v4)
  {
    v13 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
    [a1 getRed:&v14 green:&v13 blue:&v12 alpha:0];
    v5 = v12 * 255.0;
    if (COERCE__INT64(fabs(v12 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -1.0)
    {
      if (v5 < 256.0)
      {
        v15[0] = v5;
        v6 = v13 * 255.0;
        if (COERCE__INT64(fabs(v13 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v6 > -1.0)
          {
            if (v6 < 256.0)
            {
              v15[1] = v6;
              v7 = v14 * 255.0;
              if (COERCE__INT64(fabs(v14 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v7 > -1.0)
                {
                  if (v7 < 256.0)
                  {
                    v15[2] = v7;
                    v15[3] = -1;
                    memset(v9, 0, sizeof(v9));
                    v10 = vdupq_n_s64(1uLL);
                    v11 = 1;
                    [v4 replaceRegion:v9 mipmapLevel:0 withBytes:v15 bytesPerRow:4];
                    goto LABEL_12;
                  }

LABEL_21:
                  __break(1u);
                }

LABEL_20:
                __break(1u);
                goto LABEL_21;
              }

LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_12:

  return v4;
}

uint64_t sub_20BC1FA68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v47 = a1;
  v7 = sub_20C13C4B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = sub_20C13C4F4();
  v11 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v48 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_20C13BB84();
  MEMORY[0x28223BE20](v13);
  v17 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v43 = v15;
    v44 = v14;
    v45 = v11;
    v18 = a2;
    sub_20C13B4F4();
    v19 = a2;
    v20 = sub_20C13BB74();
    v21 = sub_20C13D1D4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v42 = v10;
      v23 = v22;
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v23 = 136315138;
      swift_getErrorValue();
      v40 = v21;
      v24 = MEMORY[0x20F2F5860](v49, v50);
      v26 = a4;
      v27 = a3;
      v28 = v8;
      v29 = v7;
      v30 = sub_20B51E694(v24, v25, aBlock);

      *(v23 + 4) = v30;
      v7 = v29;
      v8 = v28;
      a3 = v27;
      a4 = v26;
      _os_log_impl(&dword_20B517000, v20, v40, "[CompositeRenderer] Failed to load texture with error: %s", v23, 0xCu);
      v31 = v41;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x20F2F6A40](v31, -1, -1);
      v32 = v23;
      v10 = v42;
      MEMORY[0x20F2F6A40](v32, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v17, v44);
    v11 = v45;
  }

  sub_20B51C88C(0, &qword_281100530);
  v33 = sub_20C13D374();
  v34 = swift_allocObject();
  v34[2] = a3;
  v34[3] = a4;
  v34[4] = v47;
  v34[5] = a2;
  aBlock[4] = sub_20BC21668;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_69_0;
  v35 = _Block_copy(aBlock);
  v36 = a2;
  swift_unknownObjectRetain();

  v37 = v48;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BC21698(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v37, v10, v35);
  _Block_release(v35);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v37, v46);
}

uint64_t sub_20BC1FF44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_20BC1FFC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a2;
    sub_20C13B4F4();
    v15 = a2;
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34[0] = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = MEMORY[0x20F2F5860](v33[1], v33[2]);
      v22 = sub_20B51E694(v20, v21, v34);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_20B517000, v16, v17, "Failed to load texture with error: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x20F2F6A40](v19, -1, -1);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v13, v10);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24 = *(Strong + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_currentContent);
  v25 = *(Strong + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_currentContent + 8);
  v26 = Strong;
  sub_20BC2164C(v24, v25);

  if (v25 == 255)
  {
    return;
  }

  if ((v25 & 1) == 0)
  {
    if ((a5 & 1) == 0)
    {
      sub_20B51C88C(0, &qword_27C7654B0);
      v27 = sub_20C13D5F4();
      goto LABEL_15;
    }

LABEL_13:
    sub_20BC215C0(v24, v25);
    return;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for CGImage(0);
  sub_20BC21698(&qword_27C76C368, type metadata accessor for CGImage);
  v27 = sub_20C13B654();
LABEL_15:
  v28 = v27;
  sub_20BC215C0(v24, v25);
  if (v28)
  {
    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = 1.0;
      if (a6)
      {
        v30 = 0.0;
      }

      *(v29 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_textureTransitionMix) = v30;
      v31 = *(v29 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers);
      *(v31 + 48) = a1;
      v32 = v29;
      swift_unknownObjectRelease();
      *(v31 + 136) = 1;
      swift_unknownObjectRetain();
    }
  }
}

uint64_t sub_20BC20344()
{
  v1 = v0 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers;
  v2 = *(v0 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers + 8);
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  v5 = 200.0;
  if (*(v0 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_isBehindLyrics))
  {
    v5 = 120.0;
  }

  v6 = 2.9;
  v7 = 2.4;
  if (*(v0 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_isBehindLyrics))
  {
    v6 = 2.4;
  }

  v8 = 160.0;
  if (*(v0 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_isBehindLyrics))
  {
    v8 = 85.0;
    v7 = 2.0;
  }

  v9 = v4 < v3;
  v10 = v4 < v3;
  if (v4 >= v3)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v9)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  v13 = v0 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_environment;
  *v13 = v11;
  *(v13 + 4) = v10;
  *(v13 + 8) = v12;
  *(*(v1 + 16) + 16) = v10;
  v14 = v0 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_uniforms;
  result = swift_beginAccess();
  *(v14 + 260) = v12;
  return result;
}

id sub_20BC20464()
{
  v2.receiver = v0;
  v2.super_class = _s17CompositeRendererCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BC205BC(double a1, double a2, double a3)
{
  v7 = a1 / a2;
  v8 = 1.0 / v7;
  if (v7 < 1.0)
  {
    v7 = 1.0;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = (v3 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_aspectRatio);
  *v9 = v8;
  v9[1] = v7;
  v18 = LODWORD(v8);
  LODWORD(v10) = 0;
  *(&v10 + 1) = v7;
  v17 = v10;
  v11 = v3 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_uniforms;
  swift_beginAccess();
  *(v11 + 304) = v18;
  *(v11 + 320) = v17;
  *(v11 + 336) = 0;
  *(v11 + 344) = 0;
  *(v11 + 352) = xmmword_20C173320;
  v12 = *(v3 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers + 8);
  *(v12 + 24) = a3;
  v13 = *(v12 + 56);
  v14 = *(v12 + 64);
  *(v12 + 56) = a1;
  *(v12 + 64) = a2;
  if (v13 != a1 || v14 != a2)
  {
    sub_20BF108AC(*(v12 + 80));
    sub_20BF10E3C();
  }

  return sub_20BC20344();
}

void sub_20BC20778(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_paused) & 1) == 0)
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v9 = 0.016667;
    if (IsReduceMotionEnabled)
    {
      v9 = 0.0016667;
    }

    sub_20BC20A78(v9);
    v10 = [*(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_context) commandBuffer];
    if (v10)
    {
      v11 = v10;
      v12 = v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers;
      v13 = *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers);
      v14 = OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_uniforms;
      swift_beginAccess();
      sub_20BFEF29C(v11, v2 + v14);
      swift_endAccess();
      v15 = *(v12 + 8);
      *(v15 + 32) = *(v13 + 16);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_20BF10438(v11, v2 + v14);
      swift_endAccess();
      *(*(v12 + 16) + 24) = *(v15 + 136);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v16 = [a1 currentRenderPassDescriptor];
      swift_beginAccess();
      sub_20B78A740(v11, v2 + v14, v16);
      swift_endAccess();

      v17 = [a1 currentDrawable];
      if (v17)
      {
        [v11 presentDrawable_];
        swift_unknownObjectRelease();
      }

      else
      {
        sub_20C13B4F4();
        v18 = sub_20C13BB74();
        v19 = sub_20C13D1D4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_20B517000, v18, v19, "[CompositeRenderer] Failed to get current drawable from view", v20, 2u);
          MEMORY[0x20F2F6A40](v20, -1, -1);
        }

        (*(v5 + 8))(v7, v4);
      }

      [v11 commit];
      swift_unknownObjectRelease();
    }
  }
}

id sub_20BC20A78(float a1)
{
  v3 = v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_uniforms;
  swift_beginAccess();
  *(v3 + 292) = *(v3 + 292) + a1;
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  *(*(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_spectrumAnalysis) + 48) = vmlaq_f32(*(*(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_spectrumAnalysis) + 96), v4, vsubq_f32(*(*(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_spectrumAnalysis) + 80), *(*(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_spectrumAnalysis) + 96)));

  *&v5 = sub_20B8FF1C8();
  v15 = v5;

  *(v3 + 272) = v15;
  sub_20BC20CE0(a1 + a1);
  *(v3 + 368) = (sinf(*(v3 + 292) / 3.5) * 0.5) + 1.0;
  *v3 = 1056964608;
  *(v3 + 376) = 1036831949;
  LODWORD(v6) = *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_pinchMix);
  [*(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_modeTimingFunction) _solveForInput_];
  *(v3 + 256) = v7;
  LODWORD(v8) = *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_textureTransitionMix);
  result = [*(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_crossfadeTimingFunction) _solveForInput_];
  *(v3 + 288) = v10;
  v11 = v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers;
  *(v3 + 4) = 1082130432;
  v12 = *(v11 + 8);
  v13 = *(v12 + 56);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v13 <= -32769.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v13 >= 32768.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v3 + 372) = v13;
  v14 = *(v12 + 64);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v14 <= -32769.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v14 < 32768.0)
  {
    *(v3 + 8) = v14;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_20BC20CE0(float a1)
{
  v2 = v1;
  v3 = 0.0;
  v4 = a1 / 0.0;
  v5 = (a1 / 0.0) + *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_textureTransitionMix);
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_textureTransitionMix) = v5;
  v6 = *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_pinchMix);
  if ((v6 - v4) > 0.0)
  {
    v3 = v6 - v4;
  }

  v7 = v4 + v6;
  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  if (*(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_isBehindLyrics) == 1)
  {
    v3 = v7;
  }

  *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_pinchMix) = v3;
  sub_20BC1EE90(v6);
  v8 = *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers + 8);
  v9 = *(v8 + 40);
  v10 = *(v2 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_environment);
  v11 = -1.0;
  if (v10 < v9 || (v11 = 1.0, v9 < v10))
  {
    *(v8 + 40) = v9 + v11;
    sub_20BF10E3C();
  }
}

void sub_20BC20DAC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, char a6, int a7)
{
  aBlock[15] = *MEMORY[0x277D85DE8];
  v57 = sub_20C13BB84();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  *(v15 + 32) = a6 & 1;
  v53 = a7;
  *(v15 + 33) = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C350);
  inited = swift_initStackObject();
  v17 = MEMORY[0x277CD71B0];
  *(inited + 16) = xmmword_20C14F980;
  v18 = *v17;
  *(inited + 32) = *v17;
  *(inited + 40) = 0;
  v54 = a5;
  v19 = v18;

  v20 = sub_20B6B4B94(inited);
  swift_setDeallocating();
  sub_20BC215E4(inited + 32);
  v21 = *(a3 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_context + 24);
  sub_20B905C5C(v20);

  type metadata accessor for Option(0);
  sub_20BC21698(&qword_27C761D20, type metadata accessor for Option);
  v22 = sub_20C13C744();

  if (a2)
  {
    v23 = swift_allocObject();
    v23[2] = sub_20BC215D4;
    v23[3] = v15;
    aBlock[4] = sub_20BC21660;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BC1FF44;
    aBlock[3] = &block_descriptor_104;
    v24 = _Block_copy(aBlock);

    [v21 newTextureWithCGImage:a1 options:v22 completionHandler:v24];
    _Block_release(v24);

    return;
  }

  aBlock[0] = 0;
  v25 = [v21 newTextureWithCGImage:a1 options:v22 error:aBlock];

  v26 = aBlock[0];
  if (v25)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v46 = v26;

      swift_unknownObjectRelease();
      return;
    }

    v28 = *(Strong + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_currentContent);
    v29 = *(Strong + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_currentContent + 8);
    v30 = Strong;
    v31 = v26;
    swift_unknownObjectRetain();
    sub_20BC2164C(v28, v29);

    if (v29 == 255)
    {
      goto LABEL_22;
    }

    if (v29)
    {
      if (a6)
      {
        type metadata accessor for CGImage(0);
        sub_20BC21698(&qword_27C76C368, type metadata accessor for CGImage);
        v32 = sub_20C13B654();
LABEL_17:
        v47 = v32;
        sub_20BC215C0(v28, v29);
        if (v47)
        {
          swift_beginAccess();
          v48 = swift_unknownObjectWeakLoadStrong();
          if (v48)
          {
            v49 = 1.0;
            if (v53)
            {
              v49 = 0.0;
            }

            *(v48 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_textureTransitionMix) = v49;
            v50 = *(v48 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers);
            *(v50 + 48) = v25;
            v51 = v48;
            swift_unknownObjectRelease();
            *(v50 + 136) = 1;

            swift_unknownObjectRelease();

            return;
          }
        }

LABEL_22:

        swift_unknownObjectRelease_n();
        return;
      }
    }

    else if ((a6 & 1) == 0)
    {
      sub_20B51C88C(0, &qword_27C7654B0);
      v32 = sub_20C13D5F4();
      goto LABEL_17;
    }

    sub_20BC215C0(v28, v29);
    goto LABEL_22;
  }

  v33 = aBlock[0];
  v34 = sub_20C132A44();

  swift_willThrow();
  v35 = v34;
  v36 = v34;
  v37 = v55;
  sub_20C13B4F4();
  v38 = v34;
  v39 = sub_20C13BB74();
  v40 = sub_20C13D1D4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    swift_getErrorValue();
    v43 = MEMORY[0x20F2F5860](v58, v59);
    v45 = sub_20B51E694(v43, v44, aBlock);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_20B517000, v39, v40, "Failed to load texture with error: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x20F2F6A40](v42, -1, -1);
    MEMORY[0x20F2F6A40](v41, -1, -1);
  }

  else
  {
  }

  (*(v56 + 8))(v37, v57);
}

double sub_20BC21444()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76C340);
  v0 = swift_allocObject();
  v0[1] = xmmword_20C1517D0;
  v0[2] = xmmword_20C173330;
  v0[3] = xmmword_20C173340;
  v0[4] = xmmword_20C14BFF0;
  result = 0.0;
  v0[5] = xmmword_20C173320;
  v0[6] = xmmword_20C173350;
  v0[7] = xmmword_20C173360;
  v0[8] = xmmword_20C14BFF0;
  v0[9] = xmmword_20C173320;
  v0[10] = xmmword_20C173350;
  v0[11] = xmmword_20C173360;
  v0[12] = xmmword_20C14BFF0;
  v0[13] = xmmword_20C173320;
  return result;
}

id sub_20BC214CC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_placeholderColor);
  *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_placeholderColor) = a1;

  if (*(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_imageStorage))
  {

    return a1;
  }

  else
  {
    v4 = v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_currentContent;
    v5 = *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_currentContent);
    *v4 = a1;
    v6 = *(v4 + 8);
    *(v4 + 8) = 0;
    v7 = a1;
    sub_20BC215C0(v5, v6);
    v8 = sub_20BC1F83C(v7);

    *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_textureTransitionMix) = 0;
    v9 = *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers);
    *(v9 + 48) = v8;
    result = swift_unknownObjectRelease();
    *(v9 + 136) = 1;
  }

  return result;
}

void sub_20BC215C0(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_20BC215E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76C358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20BC2164C(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_20BC21698(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_20BC2172C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_views;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);

    return v3;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for MetadataEntryContainerView();
    v5 = objc_msgSendSuper2(&v6, sel_viewForFirstBaselineLayout);

    return v5;
  }
}

id sub_20BC2180C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_views;
  swift_beginAccess();
  v2 = *&v0[v1];
  v5 = *(v2 + 16);
  v3 = v2 + 16;
  v4 = v5;
  if (v5)
  {
    v6 = *(v3 + 16 * v4);

    return v6;
  }

  else
  {
    v9.receiver = v0;
    v9.super_class = type metadata accessor for MetadataEntryContainerView();
    v8 = objc_msgSendSuper2(&v9, sel_viewForLastBaselineLayout);

    return v8;
  }
}

char *sub_20BC218AC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_layout] = 0x4024000000000000;
  v3 = &unk_27C76C000;
  v4 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_views] = MEMORY[0x277D84F90];
  v5 = &v1[OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_onAction];
  v6 = type metadata accessor for MetadataEntryContainerView();
  *v5 = 0;
  *(v5 + 1) = 0;
  v80.receiver = v1;
  v80.super_class = v6;
  v7 = objc_msgSendSuper2(&v80, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = *(a1 + 8);
  v9 = (v8 >> 62);
  if (v8 >> 62)
  {
    if (v9 == 1)
    {
LABEL_5:
      type metadata accessor for MetadataEntryTitleLabel();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v9 setTranslatesAutoresizingMaskIntoConstraints_];
      v10 = &off_2822B12E8;
      goto LABEL_7;
    }

    v9 = 0;
    if (v8 == 0x8000000000000000)
    {
      v10 = 0;
      if (*(a1 + 16) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_7:
  v11 = sub_20BC22248(a1);
  v13 = v11;
  v15 = v14;
  v75 = v11;
  if (v11)
  {
    LODWORD(v12) = 1148846080;
    v16 = 1;
    [v11 setContentCompressionResistancePriority:1 forAxis:v12];
    v79 = v4;
    if (!v9)
    {
      v74 = v15;
      goto LABEL_17;
    }

LABEL_11:
    v74 = v15;
    v17 = v9;
    [v7 addSubview_];
    v18 = OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_views;
    swift_beginAccess();
    v19 = *&v7[v18];
    v20 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v7[v18] = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_20BC080E4(0, v19[2] + 1, 1, v19);
      *&v7[v18] = v19;
    }

    v23 = v19[2];
    v22 = v19[3];
    if (v23 >= v22 >> 1)
    {
      v19 = sub_20BC080E4((v22 > 1), v23 + 1, 1, v19);
    }

    v19[2] = v23 + 1;
    v24 = &v19[2 * v23];
    v24[4] = v20;
    v24[5] = v10;
    *&v7[v18] = v19;
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C150040;
    v26 = [v20 leadingAnchor];
    v27 = [v7 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    *(inited + 32) = v28;
    v29 = [v20 trailingAnchor];
    v30 = [v7 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor_];

    *(inited + 40) = v31;
    v32 = [v20 topAnchor];
    v33 = [v7 topAnchor];
    v34 = [v32 constraintEqualToAnchor_];

    *(inited + 48) = v34;
    sub_20B8D9310(inited);

    v13 = v75;
    if (!v75)
    {
      v55 = v20;
      v69 = [v55 bottomAnchor];
      v70 = [v7 bottomAnchor];
      v71 = [v69 constraintEqualToAnchor_];

      MEMORY[0x20F2F43B0]();
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }

    v16 = 0;
LABEL_17:
    v35 = v13;
    [v7 addSubview_];
    v36 = OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_views;
    swift_beginAccess();
    v37 = *&v7[v36];
    v38 = v35;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v7[v36] = v37;
    v73 = v16;
    if ((v39 & 1) == 0)
    {
      v37 = sub_20BC080E4(0, v37[2] + 1, 1, v37);
      *&v7[v36] = v37;
    }

    v41 = v37[2];
    v40 = v37[3];
    if (v41 >= v40 >> 1)
    {
      v37 = sub_20BC080E4((v40 > 1), v41 + 1, 1, v37);
    }

    v37[2] = v41 + 1;
    v42 = &v37[2 * v41];
    v43 = v74;
    v42[4] = v38;
    v42[5] = v43;
    *&v7[v36] = v37;
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_20C150040;
    v45 = [v38 leadingAnchor];
    v46 = [v7 leadingAnchor];
    v47 = [v45 constraintEqualToAnchor_];

    *(v44 + 32) = v47;
    v48 = [v38 trailingAnchor];
    v49 = [v7 trailingAnchor];
    v50 = [v48 constraintEqualToAnchor_];

    *(v44 + 40) = v50;
    v51 = [v38 bottomAnchor];
    v52 = [v7 bottomAnchor];
    v53 = [v51 constraintEqualToAnchor_];

    type metadata accessor for UILayoutPriority(0);
    v76 = 1065353216;
    v77 = 1148846080;
    sub_20B60B184();
    sub_20C13BBA4();
    LODWORD(v54) = v78;
    [v53 setPriority_];
    *(v44 + 48) = v53;
    sub_20B8D9310(v44);

    if ((v73 & 1) == 0)
    {
      v55 = v9;
      v59 = v38;
      v60 = [v59 topAnchor];
      v61 = [v55 bottomAnchor];
      v62 = [v60 constraintEqualToAnchor:v61 constant:*&v7[OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_layout]];

      MEMORY[0x20F2F43B0]();
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();

      v3 = &unk_27C76C000;
      v13 = v75;
      goto LABEL_27;
    }

    v55 = v38;
    v56 = [v55 topAnchor];
    v57 = [v7 topAnchor];
    v58 = [v56 constraintEqualToAnchor_];

    MEMORY[0x20F2F43B0]();
    v13 = v75;
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_23:
      sub_20C13CCE4();
      v3 = &unk_27C76C000;
LABEL_27:

      goto LABEL_28;
    }

LABEL_30:
    sub_20C13CCA4();
    goto LABEL_23;
  }

  v79 = v4;
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_28:
  v63 = objc_opt_self();
  sub_20B5E29D0();
  v64 = sub_20C13CC54();

  [v63 activateConstraints_];

  v65 = v3[111];
  v66 = swift_beginAccess();
  v67 = *&v7[v65];
  MEMORY[0x28223BE20](v66);
  v72[2] = a1;

  sub_20C0C15C8(sub_20BC22860, v72, v67);

  sub_20BC227FC(a1, type metadata accessor for MetadataEntry);
  return v7;
}

char *sub_20BC22248(uint64_t a1)
{
  if ((*(a1 + 8) & 0x8000000000000000) != 0)
  {
    type metadata accessor for MetadataEntrySubtitleLabel();
    v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  else
  {
    if (sub_20C1380F4() == 3)
    {
      type metadata accessor for MetadataFocusableTextView();
      v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v1 setTranslatesAutoresizingMaskIntoConstraints_];
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v3 = &v1[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_onEntryTapped];
      v4 = *&v1[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_onEntryTapped];
      *&v1[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_onEntryTapped] = sub_20BC2285C;
    }

    else
    {
      v1 = [objc_allocWithZone(type metadata accessor for MetadataExpandableTextView()) init];
      [v1 setTranslatesAutoresizingMaskIntoConstraints_];
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v3 = &v1[OBJC_IVAR____TtC9SeymourUI26MetadataExpandableTextView_onEntryTapped];
      v4 = *&v1[OBJC_IVAR____TtC9SeymourUI26MetadataExpandableTextView_onEntryTapped];
      *&v1[OBJC_IVAR____TtC9SeymourUI26MetadataExpandableTextView_onEntryTapped] = sub_20BC227E0;
    }

    *(v3 + 1) = v2;

    sub_20B583ECC(v4);
  }

  return v1;
}

void sub_20BC22404(uint64_t a1)
{
  v2 = type metadata accessor for MetadataAction();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_onAction);
    v7 = Strong;
    sub_20B584050(v6);

    if (v6)
    {
      sub_20BC1B044(a1, v4);
      v6(v4);
      sub_20B583ECC(v6);
      sub_20BC227FC(v4, type metadata accessor for MetadataAction);
    }
  }
}

id sub_20BC22540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataEntryContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BC225F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_views;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *(v7 - 1);
      v9 = *v7;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 8);
      v12 = v8;
      v11(a1, ObjectType, v9);

      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_20BC226E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_views;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v6[2] = a1;

  sub_20C0C15C8(sub_20BC22768, v6, v4);
}

uint64_t sub_20BC22780(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 16))(v2, ObjectType, v3);
}

uint64_t sub_20BC227FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_20BC2291C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_layout];
  *v10 = xmmword_20C173440;
  *(v10 + 1) = xmmword_20C150E70;
  *(v10 + 2) = vdupq_n_s64(0x4054000000000000uLL);
  v11 = OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_containerGuide;
  *&v5[v11] = [objc_opt_self() smu_focusContainerGuide];
  v12 = [objc_opt_self() preferredFontForTextStyle_];
  v13 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
  v14 = TVButtonTextContentView.init(title:)(0x4E4F49544341, 0xE600000000000000);
  v15 = v14;
  if (v12)
  {
    [*&v14[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  [*&v15[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setAdjustsFontForContentSizeCategory_];
  v16 = objc_allocWithZone(type metadata accessor for TVButton());
  v17 = sub_20BB87F6C(v15, 0, 0, v16, 0.0, 0.0, 0.0, 0.0);

  v18 = [objc_opt_self() effectWithStyle_];
  v19 = *&v17[OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v19;
  }

  v22 = OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_button;
  [v20 setEffect_];

  type metadata accessor for UILayoutPriority(0);
  v67 = 1144750080;
  v66 = 1065353216;
  sub_20B60B184();
  v23 = v17;
  sub_20C13BB94();
  LODWORD(v24) = v68;
  [v23 setContentHuggingPriority:0 forAxis:v24];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v5[v22] = v23;
  v65.receiver = v5;
  v65.super_class = type metadata accessor for TVOptionsShelfActionView();
  v25 = objc_msgSendSuper2(&v65, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_button;
  v27 = *&v25[OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_button];
  v28 = v25;
  [v27 smu:4 setSpeedBumpEdges:?];
  v29 = _UISolariumEnabled();
  v30 = *&v25[v26];
  v31 = 35.0;
  if (!v29)
  {
    v31 = 12.0;
  }

  *&v30[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = v31;
  v32 = v30;
  sub_20B9DE3E4();

  v33 = OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_containerGuide;
  v34 = *&v28[OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_containerGuide];
  v35 = v28;
  [v35 addLayoutGuide_];
  [v35 addSubview_];
  v64 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_20C150060;
  v37 = [*&v25[v26] widthAnchor];
  v38 = [v37 constraintEqualToConstant_];

  *(v36 + 32) = v38;
  v39 = [*&v25[v26] heightAnchor];
  v40 = [v39 constraintEqualToConstant_];

  *(v36 + 40) = v40;
  v41 = [*&v25[v26] leadingAnchor];
  v42 = [v35 leadingAnchor];

  v43 = [v41 constraintEqualToAnchor:v42 constant:80.0];
  *(v36 + 48) = v43;
  v44 = [*&v25[v26] topAnchor];
  v45 = [v35 topAnchor];

  v46 = [v44 constraintGreaterThanOrEqualToAnchor:v45 constant:20.0];
  *(v36 + 56) = v46;
  v47 = [*&v25[v26] bottomAnchor];
  v48 = [v35 bottomAnchor];

  v49 = [v47 constraintLessThanOrEqualToAnchor:v48 constant:-80.0];
  *(v36 + 64) = v49;
  v50 = [*&v28[v33] topAnchor];
  v51 = [v35 topAnchor];

  v52 = [v50 constraintEqualToAnchor_];
  *(v36 + 72) = v52;
  v53 = [*&v28[v33] bottomAnchor];
  v54 = [v35 bottomAnchor];

  v55 = [v53 constraintEqualToAnchor_];
  *(v36 + 80) = v55;
  v56 = [*&v28[v33] leadingAnchor];
  v57 = [v35 leadingAnchor];

  v58 = [v56 constraintEqualToAnchor_];
  *(v36 + 88) = v58;
  v59 = [*&v28[v33] trailingAnchor];
  v60 = [v35 trailingAnchor];

  v61 = [v59 constraintEqualToAnchor_];
  *(v36 + 96) = v61;
  sub_20B5E29D0();
  v62 = sub_20C13CC54();

  [v64 activateConstraints_];

  return v35;
}

id sub_20BC2309C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVOptionsShelfActionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BC23150()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_layout;
  *v2 = xmmword_20C173440;
  *(v2 + 16) = xmmword_20C150E70;
  *(v2 + 32) = vdupq_n_s64(0x4054000000000000uLL);
  v3 = OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_containerGuide;
  *(v1 + v3) = [objc_opt_self() smu_focusContainerGuide];
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  v5 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
  v6 = TVButtonTextContentView.init(title:)(0x4E4F49544341, 0xE600000000000000);
  v7 = v6;
  if (v4)
  {
    [*&v6[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  [*&v7[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setAdjustsFontForContentSizeCategory_];
  v8 = objc_allocWithZone(type metadata accessor for TVButton());
  v9 = sub_20BB87F6C(v7, 0, 0, v8, 0.0, 0.0, 0.0, 0.0);

  v10 = [objc_opt_self() effectWithStyle_];
  v11 = *&v9[OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v11;
  }

  v14 = OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_button;
  [v12 setEffect_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  v15 = v9;
  sub_20C13BB94();
  LODWORD(v16) = v17;
  [v15 setContentHuggingPriority:0 forAxis:v16];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v14) = v15;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20BC233E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = sub_20C13CAA4();
  v9 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v9 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v21 = 4 * v9;
  if (4 * v9 < v8 >> 14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = MEMORY[0x277D84F90];
  sub_20B5F6EB0();
  v5 = 0;
  while (1)
  {
    sub_20C13D9C4();
    if (v11)
    {
      break;
    }

    v4 = v10;
    v12 = sub_20C13CB24();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_20BC05948(0, *(v3 + 2) + 1, 1, v3);
    }

    v14 = *(v3 + 2);
    v13 = *(v3 + 3);
    if (v14 >= v13 >> 1)
    {
      v3 = sub_20BC05948((v13 > 1), v14 + 1, 1, v3);
    }

    *(v3 + 2) = v14 + 1;
    v15 = &v3[16 * v14];
    *(v15 + 4) = v5;
    *(v15 + 5) = v12;
    v5 = sub_20C13CB24();
    if (v21 < sub_20C13CAA4() >> 14)
    {
      goto LABEL_18;
    }
  }

  v16 = sub_20C13CB24();
  if (v16 >= 1)
  {
    v4 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_14:
      v18 = *(v3 + 2);
      v17 = *(v3 + 3);
      if (v18 >= v17 >> 1)
      {
        v3 = sub_20BC05948((v17 > 1), v18 + 1, 1, v3);
      }

      *(v3 + 2) = v18 + 1;
      v19 = &v3[16 * v18];
      *(v19 + 4) = v5;
      *(v19 + 5) = v4;
      return v3;
    }

LABEL_19:
    v3 = sub_20BC05948(0, *(v3 + 2) + 1, 1, v3);
    goto LABEL_14;
  }

  return v3;
}

char *sub_20BC23628(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_shelf];
  v11 = type metadata accessor for TVButtonTextContentView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v12 = objc_allocWithZone(v11);
  v13 = TVButtonTextContentView.init(title:)(0, 0);
  v14 = objc_allocWithZone(type metadata accessor for TVButton());
  v15 = sub_20BB87F6C(v13, 0, 0, v14, 0.0, 0.0, 0.0, 0.0);
  sub_20B9DDC1C(8.0, 30.0, 8.0, 30.0);
  v16 = OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    [v17 setEffect_];
  }

  v18 = OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_button;
  [*&v15[v16] setHidden_];
  v19 = v15;
  [v19 setAlpha_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v5[v18] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_indexPath;
  v21 = sub_20C133244();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_focusGuide;
  *&v5[v22] = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v59.receiver = v5;
  v59.super_class = type metadata accessor for TVOpenInMusicView();
  v23 = objc_msgSendSuper2(&v59, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_button;
  v25 = *&v23[OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_button];
  v26 = v23;
  [v26 addSubview_];
  v27 = OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_focusGuide;
  [v26 addLayoutGuide_];
  v28 = *&v26[v27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C14F580;
  v30 = *&v23[v24];
  *(v29 + 32) = v30;
  v31 = v28;
  v32 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v33 = sub_20C13CC54();

  [v31 setPreferredFocusEnvironments_];

  v34 = *&v23[v24];
  [v34 addTarget:v26 action:sel_openInMusicPressed_ forControlEvents:0x2000];

  v58 = objc_opt_self();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C150AE0;
  v36 = [*&v23[v24] trailingAnchor];
  v37 = [v26 trailingAnchor];

  v38 = [v36 constraintEqualToAnchor_];
  *(v35 + 32) = v38;
  v39 = [*&v23[v24] bottomAnchor];
  v40 = [v26 &selRef_secondaryLabel + 5];

  v41 = [v39 constraintEqualToAnchor:v40 constant:3.0];
  *(v35 + 40) = v41;
  v42 = [*&v23[v24] heightAnchor];
  v43 = [v42 constraintEqualToConstant_];

  *(v35 + 48) = v43;
  v44 = [*&v26[v27] topAnchor];
  v45 = [v26 topAnchor];

  v46 = [v44 constraintEqualToAnchor_];
  *(v35 + 56) = v46;
  v47 = [*&v26[v27] leadingAnchor];
  v48 = [v26 leadingAnchor];

  v49 = [v47 constraintEqualToAnchor_];
  *(v35 + 64) = v49;
  v50 = [*&v26[v27] bottomAnchor];
  v51 = [v26 bottomAnchor];

  v52 = [v50 constraintEqualToAnchor_];
  *(v35 + 72) = v52;
  v53 = [*&v26[v27] trailingAnchor];
  v54 = [*&v23[v24] leadingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v35 + 80) = v55;
  sub_20B5E29D0();
  v56 = sub_20C13CC54();

  [v58 activateConstraints_];

  return v26;
}

id sub_20BC23FA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVOpenInMusicView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVOpenInMusicView()
{
  result = qword_27C76C3D0;
  if (!qword_27C76C3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC240B8()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BC2416C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_indexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

uint64_t sub_20BC241C4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_20BC24214(double a1, double a2)
{
  if (a2 <= 300.0)
  {
    return [*(v2 + OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_button) setAlpha_];
  }

  v3 = *(v2 + OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_button);
  if (a2 >= 600.0)
  {
    return [v3 setAlpha_];
  }

  else
  {
    return [v3 setAlpha_];
  }
}

void sub_20BC242A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = (v2 + OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_shelf);
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  (*(a2 + 40))(v11, ObjectType, a2);
  v13[8] = v11[8];
  v13[9] = v11[9];
  v14 = v12;
  v13[4] = v11[4];
  v13[5] = v11[5];
  v13[6] = v11[6];
  v13[7] = v11[7];
  v13[0] = v11[0];
  v13[1] = v11[1];
  v13[2] = v11[2];
  v13[3] = v11[3];
  if (sub_20B5EAF8C(v13) == 1)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = *(&v13[0] + 1);
    v7 = *&v13[0];

    sub_20B520158(v11, &qword_27C762340);
  }

  v9 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
  v10 = TVButtonTextContentView.init(title:)(v7, v8);
  sub_20BB88C24(v10, *(v3 + OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_button));
}

void sub_20BC243E4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_shelf);
  v3 = type metadata accessor for TVButtonTextContentView();
  *v2 = 0;
  v2[1] = 0;
  v4 = objc_allocWithZone(v3);
  v5 = TVButtonTextContentView.init(title:)(0, 0);
  v6 = objc_allocWithZone(type metadata accessor for TVButton());
  v7 = sub_20BB87F6C(v5, 0, 0, v6, 0.0, 0.0, 0.0, 0.0);
  sub_20B9DDC1C(8.0, 30.0, 8.0, 30.0);
  v8 = OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    [v9 setEffect_];
  }

  v10 = OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_button;
  [*&v7[v8] setHidden_];
  v11 = v7;
  [v11 setAlpha_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_indexPath;
  v13 = sub_20C133244();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_focusGuide;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BC245E0()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BC246DC()
{
  sub_20C13CA64();
}

uint64_t sub_20BC247C4()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BC248BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20BC2880C();
  *a1 = result;
  return result;
}

void sub_20BC248EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000676E697ALL;
  v4 = 0x696C616974696E69;
  v5 = 0xE800000000000000;
  v6 = 0x6576697463616E69;
  v7 = 0xEE00676E69746365;
  v8 = 0x72696465526C7275;
  if (v2 != 3)
  {
    v8 = 0x6C706D6F436C7275;
    v7 = 0xEB00000000657465;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x657669746361;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t MetricSceneLifecycleTracker.__allocating_init(dependencies:)()
{
  v0 = swift_allocObject();
  MetricSceneLifecycleTracker.init(dependencies:)();
  return v0;
}

uint64_t sub_20BC24A0C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BC24A74(a1);
  }

  return result;
}

uint64_t sub_20BC24A74(uint64_t a1)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for NavigationSharingURLInfo();
  v47 = *(v3 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v14);
  v49 = &v40 - v15;
  MEMORY[0x28223BE20](v16);
  v44 = &v40 - v17;
  v18 = sub_20C13BB84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B544();
  sub_20C13BB64();
  (*(v19 + 8))(v21, v18);
  v52 = v2;
  v42 = v2;
  v53 = 4;
  sub_20C13A294();
  v50 = v2;
  v51 = 1;
  v41 = v13;
  sub_20C13A294();
  v22 = v6;
  v23 = *(v6 + 16);
  v23(v10, v13, v5);
  v24 = *(v6 + 80);
  v40 = v22;
  v25 = (v24 + 16) & ~v24;
  v26 = swift_allocObject();
  v27 = *(v22 + 32);
  v27(v26 + v25, v10, v5);
  v28 = v43;
  v23(v43, v49, v5);
  v29 = swift_allocObject();
  v27(v29 + v25, v28, v5);
  v30 = (v29 + ((v25 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_20B8F5774;
  v30[1] = v26;
  v31 = v44;
  sub_20C137C94();
  v32 = *(v40 + 8);
  v32(v41, v5);
  v32(v49, v5);
  v33 = v45;
  sub_20BC289E0(v48, v45);
  v34 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v42;
  sub_20B9D1584(v33, v35 + v34);

  v36 = v31;
  v37 = sub_20C137CB4();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_20BC28A44;
  *(v38 + 24) = v35;

  v37(sub_20B5DF6DC, v38);

  return (v32)(v36, v5);
}

uint64_t sub_20BC24FD8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 97) = a3;
  }

  return result;
}

void sub_20BC2504C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 104);
  if (*(a1 + 8) == 1)
  {
    if (v4)
    {
      v5 = *a1;
      sub_20B584050(*(a2 + 104));
      sub_20BC28AB8(v5, 1);
      v4(a3, v5);
      sub_20B583ECC(v4);

      sub_20B583FB8(v5, 1);
    }
  }

  else if (v4)
  {

    v4(a3, 0);

    sub_20B583ECC(v4);
  }
}

uint64_t sub_20BC2513C(char *a1)
{
  v63 = a1;
  v1 = sub_20C1391E4();
  v68 = *(v1 - 8);
  v69 = v1;
  MEMORY[0x28223BE20](v1);
  v67 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C134C44();
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13B604();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v53 - v19;
  v21 = sub_20C135D24();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_20C134F74();
  v58 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v55 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v56 = &v53 - v27;
  v28 = sub_20C13BB84();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B544();
  sub_20C13BB64();
  (*(v29 + 8))(v31, v28);
  v32 = v54;
  v33 = *(v22 + 16);
  v57 = v24;
  v33(v24, v63, v21);
  v34 = sub_20C1333A4();
  v35 = *(*(v34 - 8) + 56);
  v59 = v20;
  v35(v20, 1, 1, v34);
  v36 = sub_20C135664();
  v37 = *(*(v36 - 8) + 56);
  v61 = v17;
  v37(v17, 1, 1, v36);
  v38 = sub_20C135674();
  v39 = *(*(v38 - 8) + 56);
  v63 = v14;
  v39(v14, 1, 1, v38);
  sub_20C134F94();
  v40 = sub_20C134FB4();
  (*(*(v40 - 8) + 56))(v11, 0, 1, v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v41 - 8) + 56))(v32, 1, 1, v41);
  v42 = sub_20C1380C4();
  v44 = v64;
  v43 = v65;
  v45 = v60;
  (*(v64 + 104))(v60, *MEMORY[0x277D4F8B8], v65);
  sub_20B8D7248(v45, v42);

  (*(v44 + 8))(v45, v43);
  v46 = sub_20C135F14();
  (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
  v47 = v56;
  sub_20C134F54();
  v48 = v58;
  v49 = v62;
  (*(v58 + 16))(v55, v47, v62);
  v50 = v67;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20B52D308(&qword_281103B30, MEMORY[0x277D542C0]);
  v51 = v69;
  sub_20C13A764();
  (*(v68 + 8))(v50, v51);
  return (*(v48 + 8))(v47, v49);
}

uint64_t sub_20BC25988()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = sub_20C135D24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B544();
  sub_20C13BB64();
  (*(v11 + 8))(v13, v10);
  *(v1 + 96) = 0;
  v14 = *MEMORY[0x277D50F60];
  v15 = sub_20C134C34();
  (*(*(v15 - 8) + 104))(v9, v14, v15);
  (*(v7 + 104))(v9, *MEMORY[0x277D52110], v6);
  sub_20BC2513C(v9);
  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  sub_20C139EA4();
  v16 = sub_20C137CB4();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v16(sub_20B5DF6DC, v17);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20BC25CC8(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 96);
  if (v2 <= 1)
  {
    if (*(a1 + 96))
    {
      if (a2 == 2)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
LABEL_8:
    if ((a2 | 2) == 3)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v2 == 3)
  {
    if (a2 != 2 && a2 != 4)
    {
      goto LABEL_11;
    }

LABEL_9:
    *(a1 + 96) = a2;
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  if (a2 == 1)
  {
    goto LABEL_9;
  }

LABEL_11:
  v4 = sub_20C133664();
  sub_20B52D308(&qword_27C76C3E8, MEMORY[0x277D500E0]);
  v5 = swift_allocError();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D50068], v4);
  *(swift_allocObject() + 16) = v5;
  return sub_20C137CA4();
}

uint64_t sub_20BC25E44()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B544();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  return sub_20BC25988();
}

Swift::Void __swiftcall MetricSceneLifecycleTracker.reportDefaultLaunch()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-v4];
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B544();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v13 = v1;
  v14 = 1;
  sub_20C13A294();
  v10 = sub_20C137CB4();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v10(sub_20B52347C, v11);

  (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall MetricSceneLifecycleTracker.reportOpenURLContexts()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-v4];
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B544();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v13 = v1;
  v14 = 3;
  sub_20C13A294();
  v10 = sub_20C137CB4();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v10(sub_20B5DF6DC, v11);

  (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall MetricSceneLifecycleTracker.reportContinueUserActivity()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-v4];
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B544();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v13 = v1;
  v14 = 3;
  sub_20C13A294();
  v10 = sub_20C137CB4();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v10(sub_20B5DF6DC, v11);

  (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall MetricSceneLifecycleTracker.reportDidBecomeActive()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-v10];
  v20 = v0;
  v21 = 1;
  sub_20C13A294();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20BC28554;
  *(v12 + 24) = v1;
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v5, v2);
  v15 = (v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_20B64B960;
  v15[1] = v12;

  sub_20C137C94();
  v16 = *(v3 + 8);
  v16(v8, v2);
  v17 = sub_20C137CB4();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v17(sub_20B5DF6DC, v18);

  v16(v11, v2);
}

Swift::Void __swiftcall MetricSceneLifecycleTracker.reportDidEnterBackground()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-v10];
  v20 = v0;
  v21 = 2;
  sub_20C13A294();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20BC285B4;
  *(v12 + 24) = v1;
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v5, v2);
  v15 = (v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_20B683080;
  v15[1] = v12;

  sub_20C137C94();
  v16 = *(v3 + 8);
  v16(v8, v2);
  v17 = sub_20C137CB4();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v17(sub_20B5DF6DC, v18);

  v16(v11, v2);
}

Swift::Void __swiftcall MetricSceneLifecycleTracker.reportDidSelectTab()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-v10];
  v20 = v0;
  v21 = 1;
  sub_20C13A294();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20BC28604;
  *(v12 + 24) = v1;
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v5, v2);
  v15 = (v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_20B683080;
  v15[1] = v12;

  sub_20C137C94();
  v16 = *(v3 + 8);
  v16(v8, v2);
  v17 = sub_20C137CB4();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v17(sub_20B5DF6DC, v18);

  v16(v11, v2);
}

Swift::Void __swiftcall MetricSceneLifecycleTracker.reportDidDeselectTab()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-v10];
  v20 = v0;
  v21 = 2;
  sub_20C13A294();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20BC28664;
  *(v12 + 24) = v1;
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v5, v2);
  v15 = (v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_20B683080;
  v15[1] = v12;

  sub_20C137C94();
  v16 = *(v3 + 8);
  v16(v8, v2);
  v17 = sub_20C137CB4();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v17(sub_20B5DF6DC, v18);

  v16(v11, v2);
}

uint64_t MetricSceneLifecycleTracker.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  sub_20B583ECC(*(v0 + 104));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t MetricSceneLifecycleTracker.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  sub_20B583ECC(*(v0 + 104));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_20BC271CC(uint64_t a1)
{
  v18[1] = a1;
  v1 = sub_20C135D24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B544();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764CF0);
  v10 = v9[12];
  v11 = v9[16];
  v12 = &v4[v9[20]];
  v13 = *MEMORY[0x277D514C0];
  v14 = sub_20C134F84();
  (*(*(v14 - 8) + 104))(v4, v13, v14);
  v15 = sub_20C132C14();
  v16 = *(*(v15 - 8) + 56);
  v16(&v4[v10], 1, 1, v15);
  v16(&v4[v11], 1, 1, v15);
  *v12 = 0;
  *(v12 + 1) = 0;
  (*(v2 + 104))(v4, *MEMORY[0x277D52128], v1);
  sub_20BC2513C(v4);
  (*(v2 + 8))(v4, v1);
  swift_getObjectType();
  return sub_20C139064();
}

uint64_t sub_20BC2749C(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v4 = sub_20C135D24();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v5 = sub_20C13BB84();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC27620, 0, 0);
}

uint64_t sub_20BC27620()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  sub_20C13B544();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  v0[12] = *(v4 + 120);
  v0[13] = *(v4 + 128);
  v0[14] = swift_getObjectType();
  sub_20C13CDA4();
  v0[15] = sub_20C13CD94();
  v6 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BC27738, v6, v5);
}

uint64_t sub_20BC27738()
{

  sub_20C139074();

  return MEMORY[0x2822009F8](sub_20BC277B8, 0, 0);
}

uint64_t sub_20BC277B8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  v6 = *MEMORY[0x277D50F58];
  v7 = sub_20C134C34();
  (*(*(v7 - 8) + 104))(v1, v6, v7);
  (*(v2 + 104))(v1, *MEMORY[0x277D52110], v4);
  sub_20BC2513C(v1);
  (*(v2 + 8))(v1, v4);
  __swift_project_boxed_opaque_existential_1((v5 + 40), *(v5 + 64));
  sub_20C139EA4();
  v8 = swift_task_alloc();
  v0[16] = v8;
  *(v8 + 16) = "SeymourUI/MetricSceneLifecycleTracker.swift";
  *(v8 + 24) = 43;
  *(v8 + 32) = 2;
  *(v8 + 40) = 211;
  *(v8 + 48) = v3;
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_20BC2798C;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B526A50, v8, v10);
}

uint64_t sub_20BC2798C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20BC27B74;
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = v2[3];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BC27AF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BC27AF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BC27B74()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BC27C08(uint64_t a1)
{
  v18[1] = a1;
  v1 = sub_20C135D24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B544();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764CF0);
  v10 = v9[12];
  v11 = v9[16];
  v12 = &v4[v9[20]];
  v13 = *MEMORY[0x277D514D8];
  v14 = sub_20C134F84();
  (*(*(v14 - 8) + 104))(v4, v13, v14);
  v15 = sub_20C132C14();
  v16 = *(*(v15 - 8) + 56);
  v16(&v4[v10], 1, 1, v15);
  v16(&v4[v11], 1, 1, v15);
  *v12 = 0;
  *(v12 + 1) = 0;
  (*(v2 + 104))(v4, *MEMORY[0x277D52128], v1);
  sub_20BC2513C(v4);
  (*(v2 + 8))(v4, v1);
  swift_getObjectType();
  return sub_20C139064();
}

uint64_t sub_20BC27ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = "SeymourUI/MetricSceneLifecycleTracker.swift";
  *(v7 + 24) = 43;
  *(v7 + 32) = 2;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 56) = a1;

  return sub_20C137C94();
}

uint64_t sub_20BC27F7C(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_20C135D24();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v4 = sub_20C13BB84();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC28098, 0, 0);
}

uint64_t sub_20BC28098()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  sub_20C13B544();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  v0[9] = *(v4 + 120);
  v0[10] = *(v4 + 128);
  v0[11] = swift_getObjectType();
  sub_20C13CDA4();
  v0[12] = sub_20C13CD94();
  v6 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BC281B0, v6, v5);
}

uint64_t sub_20BC281B0()
{

  sub_20C139074();

  return MEMORY[0x2822009F8](sub_20BC28230, 0, 0);
}

uint64_t sub_20BC28230()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *MEMORY[0x277D50F68];
  v5 = sub_20C134C34();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277D52110], v3);
  sub_20BC2513C(v1);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20BC28348()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B544();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  return sub_20BC25988();
}

uint64_t sub_20BC28554()
{

  return sub_20C137CA4();
}

uint64_t sub_20BC28604()
{

  return sub_20C137CA4();
}

unint64_t sub_20BC287B8()
{
  result = qword_27C76C3E0;
  if (!qword_27C76C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C3E0);
  }

  return result;
}

uint64_t sub_20BC2880C()
{
  v0 = sub_20C13DEA4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20BC28858(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20BC27F7C(a1, v1);
}

uint64_t sub_20BC28914(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20BC2749C(a1, v1);
}

uint64_t sub_20BC289E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationSharingURLInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20BC28A44(uint64_t a1)
{
  v3 = *(type metadata accessor for NavigationSharingURLInfo() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_20BC2504C(a1, v4, v5);
}

id sub_20BC28AB8(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_20BC28AE4()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v2 = *(v43 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v42 - v10;
  MEMORY[0x28223BE20](v11);
  v47 = &v42 - v12;
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  sub_20C13BB64();
  (*(v14 + 8))(v16, v13);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_subscriptionCache], *&v1[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_subscriptionCache + 24]);
  sub_20C1392E4();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20BC2D8F4;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20B881054;
  *(v19 + 24) = v18;
  v20 = v43;
  (*(v2 + 16))(&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v43);
  v21 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v22 = swift_allocObject();
  (*(v2 + 32))(v22 + v21, &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v23 = (v22 + ((v3 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_20B5D9E70;
  v23[1] = v19;
  v24 = v1;
  v25 = v42;
  sub_20C137C94();
  (*(v2 + 8))(v6, v20);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_20BC2D940;
  *(v27 + 24) = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_20B5F7790;
  *(v28 + 24) = v27;
  v30 = v44;
  v29 = v45;
  v31 = v46;
  (*(v44 + 16))(v46, v25, v45);
  v32 = v30;
  v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v34 = swift_allocObject();
  (*(v32 + 32))(v34 + v33, v31, v29);
  v35 = (v34 + ((v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v35 = sub_20B5F7764;
  v35[1] = v28;
  v36 = v24;
  v37 = v47;
  sub_20C137C94();
  v38 = *(v32 + 8);
  v38(v25, v29);
  v39 = sub_20C137CB4();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  v39(sub_20B5DF6DC, v40);

  return (v38)(v37, v29);
}

uint64_t sub_20BC290BC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_20C139594();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20C138894();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20C138E94();
  v50 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v46 = &v38 - v13;
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v18 = v2;
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1B4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v41 = v6;
    v38 = v23;
    v51[0] = v23;
    *v22 = 136315138;
    v24 = sub_20C136644();
    v39 = v10;
    v26 = sub_20B51E694(v24, v25, v51);
    v10 = v39;

    *(v22 + 4) = v26;
    _os_log_impl(&dword_20B517000, v19, v20, "[MarketingHeaderUpsell] Presenting header upsell shelf with offer: %s", v22, 0xCu);
    v27 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    v28 = v27;
    v6 = v41;
    MEMORY[0x20F2F6A40](v28, -1, -1);
    v29 = v22;
    a1 = v40;
    MEMORY[0x20F2F6A40](v29, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v30 = v46;
  sub_20C138E84();
  v31 = v50;
  v32 = v45;
  (*(v50 + 16))(v43, v30, v45);
  (*(v48 + 104))(v47, *MEMORY[0x277D54408], v49);
  v33 = a1;
  sub_20C138854();
  v34 = v42;
  v35 = v44;
  (*(v42 + 16))(v6, v10, v44);
  (*(v34 + 56))(v6, 0, 1, v35);
  v36 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_offer;
  swift_beginAccess();
  sub_20B8A944C(v6, v18 + v36);
  swift_endAccess();
  sub_20BC2AC44(v10, 0, 1);
  (*(v34 + 8))(v10, v35);
  return (*(v31 + 8))(v30, v32);
}

uint64_t sub_20BC295AC(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v6 = a1;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](v15[2], v15[3]);
    v13 = sub_20B51E694(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v7, v8, "[MarketingHeaderUpsell] Error fetching marketing item for header upsell: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_20BC2A428();
}

uint64_t sub_20BC29784()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132E84();
  v8 = sub_20C135704();
  (*(v5 + 8))(v7, v4);
  sub_20C13B424();
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8 & 1;
    _os_log_impl(&dword_20B517000, v9, v10, "[MarketingHeaderUpsell] : isSubscribed = %{BOOL}d", v11, 8u);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (v8)
  {
    return sub_20BC2A428();
  }

  else
  {
    return sub_20BC29D54();
  }
}

uint64_t sub_20BC2999C(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  sub_20C13B424();
  sub_20C13BB64();
  v14 = *(v5 + 8);
  v14(v13, v4);
  LOBYTE(v35) = 4;
  sub_20B75B4F8();
  if (sub_20C135D14())
  {
    sub_20C13B424();
    v15 = a1;
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34[0] = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v35 = v20;
      *v19 = 136446210;
      swift_getErrorValue();
      v21 = MEMORY[0x20F2F5850](v34[2], v34[3]);
      v23 = sub_20B51E694(v21, v22, &v35);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_20B517000, v16, v17, "[MarketingHeaderUpsell] Received no subscription error, will show offer: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x20F2F6A40](v20, -1, -1);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    v14(v10, v4);
    return sub_20BC29D54();
  }

  else
  {
    sub_20C13B424();
    v25 = a1;
    v26 = sub_20C13BB74();
    v27 = sub_20C13D1D4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v34[0] = v2;
      v29 = v28;
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136446210;
      swift_getErrorValue();
      v31 = MEMORY[0x20F2F5850](v34[6], v34[7]);
      v33 = sub_20B51E694(v31, v32, &v35);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_20B517000, v26, v27, "[MarketingHeaderUpsell] Failed to fetch service subscription for marketing header upsell: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x20F2F6A40](v30, -1, -1);
      MEMORY[0x20F2F6A40](v29, -1, -1);
    }

    v14(v7, v4);
    return sub_20BC2A428();
  }
}

uint64_t sub_20BC29D54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v49 - v10;
  MEMORY[0x28223BE20](v11);
  v55 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - v14;
  v16 = sub_20C13BB84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  sub_20C13BB64();
  (*(v17 + 8))(v19, v16);
  v20 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_offer;
  swift_beginAccess();
  sub_20B52F9E8(&v1[v20], v15, &unk_27C768660);
  v21 = sub_20C138894();
  LODWORD(v20) = (*(*(v21 - 8) + 48))(v15, 1, v21);
  sub_20B520158(v15, &unk_27C768660);
  if (v20 != 1)
  {
    return sub_20BC2A8EC(0);
  }

  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_marketingItemProvider], *&v1[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_marketingItemProvider + 24]);
  v22 = v6;
  v49 = v6;
  sub_20C138E74();
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_20BC2D868;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20BC2D88C;
  *(v25 + 24) = v24;
  v26 = v50;
  v27 = v51;
  v28 = v52;
  (*(v51 + 16))(v50, v22, v52);
  v29 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v29, v26, v28);
  v31 = (v30 + ((v3 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_20B80E568;
  v31[1] = v25;
  v32 = v1;
  v33 = v54;
  sub_20C137C94();
  (*(v27 + 8))(v49, v28);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_20BC2D8D0;
  *(v35 + 24) = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_20B5F67D4;
  *(v36 + 24) = v35;
  v38 = v56;
  v37 = v57;
  v39 = v53;
  (*(v56 + 16))(v53, v33, v57);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = swift_allocObject();
  (*(v38 + 32))(v41 + v40, v39, v37);
  v42 = (v41 + ((v8 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20B5DF204;
  v42[1] = v36;
  v43 = v32;
  v44 = v55;
  sub_20C137C94();
  v45 = *(v38 + 8);
  v45(v33, v37);
  v46 = sub_20C137CB4();
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  v46(sub_20B5DF6DC, v47);

  return (v45)(v44, v37);
}

uint64_t sub_20BC2A428()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v44 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v12 = sub_20C13BB74();
  v13 = sub_20C13D1B4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v43 = v3;
    v15 = v2;
    v16 = v1;
    v17 = v14;
    *v14 = 0;
    _os_log_impl(&dword_20B517000, v12, v13, "[MarketingHeaderUpsell] Hiding header upsell shelf", v14, 2u);
    v18 = v17;
    v1 = v16;
    v2 = v15;
    v3 = v43;
    MEMORY[0x20F2F6A40](v18, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v19 = sub_20C138894();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  v20 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_offer;
  swift_beginAccess();
  sub_20B8A944C(v7, v1 + v20);
  swift_endAccess();
  v48 = 0uLL;
  LOBYTE(v49) = 1;
  *(&v49 + 1) = *v47;
  DWORD1(v49) = *&v47[3];
  *(&v49 + 1) = 0;
  *&v50 = 0;
  WORD4(v50) = 128;
  *(&v50 + 10) = *&v45[7];
  HIWORD(v50) = v46;
  LOBYTE(v54) = 0;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  *(&v54 + 1) = *v45;
  DWORD1(v54) = *&v45[3];
  *(&v54 + 1) = MEMORY[0x277D84F90];
  *&v55[0] = MEMORY[0x277D84F90];
  *(v55 + 8) = 0u;
  *(&v55[1] + 8) = 0u;
  *(&v55[2] + 1) = 0;
  v56 = 2;
  nullsub_1(&v48);
  v21 = v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row;
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 144);
  v57[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 128);
  v57[9] = v22;
  v58 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 160);
  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 80);
  v57[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 64);
  v57[5] = v23;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 112);
  v57[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 96);
  v57[7] = v24;
  v25 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 16);
  v57[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row);
  v57[1] = v25;
  v26 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 48);
  v57[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 32);
  v57[3] = v26;
  v27 = v55[0];
  v28 = v55[2];
  *(v21 + 128) = v55[1];
  *(v21 + 144) = v28;
  *(v21 + 160) = v56;
  v29 = v53;
  *(v21 + 64) = v52;
  *(v21 + 80) = v29;
  *(v21 + 96) = v54;
  *(v21 + 112) = v27;
  v30 = v49;
  *v21 = v48;
  *(v21 + 16) = v30;
  v31 = v51;
  *(v21 + 32) = v50;
  *(v21 + 48) = v31;
  sub_20B520158(v57, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v34 = sub_20B61DDB0(v1, result);
      if (v35)
      {
        v37 = v34;
        v38 = v35;
        v39 = v36;
        sub_20B51C88C(0, &qword_281100530);
        v40 = sub_20C13D374();
        v41 = v44;
        *v44 = v40;
        (*(v3 + 104))(v41, *MEMORY[0x277D85200], v2);
        v42 = sub_20C13C584();
        result = (*(v3 + 8))(v41, v2);
        if ((v42 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B621530(v37, v38, v39, v1, 1, v33);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BC2A8EC(int a1)
{
  v2 = v1;
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23[-v4];
  v6 = sub_20C138894();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-v15];
  sub_20C13B424();
  sub_20C13BB64();
  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_offer;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v18, v5, &unk_27C768660);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &unk_27C768660);
    sub_20C13B424();
    v19 = sub_20C13BB74();
    v20 = sub_20C13D1D4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20B517000, v19, v20, "[MarketingHeaderUpsell] Tried to update loading state in marketing header upsell without an offer", v21, 2u);
      MEMORY[0x20F2F6A40](v21, -1, -1);
    }

    return (v17)(v13, v10);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_20BC2AC44(v9, v24 & 1, 129);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_20BC2AC44(uint64_t a1, char a2, int a3)
{
  v40 = a3;
  v6 = sub_20C13C554();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681B0);
  v10 = swift_allocBox();
  v12 = v11;
  v13 = *(v9 + 48);
  v14 = sub_20C138894();
  (*(*(v14 - 8) + 16))(v12, a1, v14);
  *(v12 + v13) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20C14F980;
  *(v15 + 32) = v10 | 0x4000000000000003;
  v46 = 0uLL;
  LOBYTE(v47[0]) = 1;
  *(v47 + 1) = *v45;
  DWORD1(v47[0]) = *&v45[3];
  *(v47 + 8) = xmmword_20C157520;
  strcpy(&v47[1] + 8, "@");
  *(&v47[1] + 10) = *&v43[7];
  HIWORD(v47[1]) = v44;
  v48 = 0uLL;
  *&v49 = 0xD00000000000001ALL;
  *(&v49 + 1) = 0x800000020C1ACA20;
  v50 = 0uLL;
  LOBYTE(v51) = 0;
  *(&v51 + 1) = *v43;
  DWORD1(v51) = *&v43[3];
  *(&v51 + 1) = v15;
  *&v52[0] = MEMORY[0x277D84F90];
  *(v52 + 8) = 0u;
  *(&v52[1] + 8) = 0u;
  *(&v52[2] + 1) = 0;
  v53 = 2;
  nullsub_1(&v46);
  v16 = &v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row];
  v17 = *&v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 144];
  v54[8] = *&v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 128];
  v54[9] = v17;
  v55 = *&v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 160];
  v18 = *&v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 80];
  v54[4] = *&v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 64];
  v54[5] = v18;
  v19 = *&v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 112];
  v54[6] = *&v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 96];
  v54[7] = v19;
  v20 = *&v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 16];
  v54[0] = *&v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row];
  v54[1] = v20;
  v21 = *&v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 48];
  v54[2] = *&v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 32];
  v54[3] = v21;
  v22 = v52[0];
  v23 = v52[2];
  *(v16 + 8) = v52[1];
  *(v16 + 9) = v23;
  *(v16 + 20) = v53;
  v24 = v50;
  *(v16 + 4) = v49;
  *(v16 + 5) = v24;
  *(v16 + 6) = v51;
  *(v16 + 7) = v22;
  v25 = v47[0];
  *v16 = v46;
  *(v16 + 1) = v25;
  v26 = v48;
  *(v16 + 2) = v47[1];
  *(v16 + 3) = v26;

  sub_20B520158(v54, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v28 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v29 = sub_20B61DDB0(v3, Strong);
    if (v30)
    {
      v32 = v29;
      v33 = v30;
      v34 = v31;
      v39 = v3;
      sub_20B51C88C(0, &qword_281100530);
      *v8 = sub_20C13D374();
      v35 = v41;
      v36 = v42;
      (*(v41 + 104))(v8, *MEMORY[0x277D85200], v42);
      v37 = sub_20C13C584();
      result = (*(v35 + 8))(v8, v36);
      if ((v37 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      if ((v40 & 0x80) != 0)
      {
        sub_20C10BD98(v39, v32, v40 & 1, v28);
      }

      else
      {
        sub_20B621530(v32, v33, v34, v39, v40 & 1, v28);
      }
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  return swift_unknownObjectRelease();
}

id sub_20BC2B064()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingHeaderUpsellShelf();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MarketingHeaderUpsellShelf()
{
  result = qword_27C76C438;
  if (!qword_27C76C438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC2B240()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B8A7BAC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BC2B358()
{
  sub_20BC28AE4();
  swift_getObjectType();
  sub_20C13B0D4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C139454();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B5300D0(&unk_281103B10, MEMORY[0x277D543B0]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C138F84();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B5300D0(&qword_27C76C460, MEMORY[0x277D541F0]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C138FA4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B5300D0(&qword_27C769A40, MEMORY[0x277D54200]);
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

void sub_20BC2B63C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20BC2A8EC(1);
  }
}

void sub_20BC2B694(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_20BC2B6F0(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v34 = a1;
  v35 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_20C1388F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v17 = Strong;
  v18 = swift_unknownObjectWeakLoadStrong();

  if (!v18)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_20B5D9BA8();
    v27 = swift_allocError();
    *v28 = 11;
    *(swift_allocObject() + 16) = v27;
    sub_20C137CA4();
    return;
  }

  v33 = v19;
  v20 = sub_20C138B94();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v11, a2, v20);
  (*(v21 + 56))(v11, 0, 1, v20);
  v22 = sub_20C138894();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v8, a3, v22);
  (*(v23 + 56))(v8, 0, 1, v22);
  sub_20C1388C4();
  v24 = v18 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);
    ObjectType = swift_getObjectType();
    (*(v25 + 296))(v18, v34, v15, ObjectType, v25);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v13 + 8))(v15, v12);
  }

  else
  {
    sub_20B5D9BA8();
    v29 = swift_allocError();
    *v30 = 11;
    *(swift_allocObject() + 16) = v29;
    v31 = v29;
    sub_20C137CA4();
    swift_unknownObjectRelease();

    (*(v13 + 8))(v15, v12);
  }
}

BOOL sub_20BC2BB70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20BC2D7AC();
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t sub_20BC2BC18@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20BC2BCC4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

__n128 sub_20BC2BD10@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BC2BDDC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_canonicalIdentifier);

  return v1;
}

id sub_20BC2BE1C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v7 = &v3[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_row];
  sub_20B5D8060(v24);
  v8 = v24[7];
  v9 = v24[9];
  *(v7 + 8) = v24[8];
  *(v7 + 9) = v9;
  v10 = v24[5];
  v11 = v24[6];
  *(v7 + 4) = v24[4];
  *(v7 + 5) = v10;
  *(v7 + 20) = v25;
  *(v7 + 6) = v11;
  *(v7 + 7) = v8;
  v12 = v24[1];
  *v7 = v24[0];
  *(v7 + 1) = v12;
  v13 = v24[3];
  *(v7 + 2) = v24[2];
  *(v7 + 3) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_offer;
  v15 = sub_20C138894();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = sub_20C135DB4();
  v17 = &v4[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_canonicalIdentifier];
  *v17 = v16;
  v17[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&v4[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_bag] = *&v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v4[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_eventHub] = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650);
  sub_20C133AA4();
  sub_20B51C710(v23, &v4[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_marketingItemProvider]);
  v4[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_placement] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v23, &v4[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_subscriptionCache]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v4[OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_subscriptionToken] = sub_20C13A914();
  v22.receiver = v4;
  v22.super_class = type metadata accessor for MarketingHeaderUpsellShelf();
  v19 = objc_msgSendSuper2(&v22, sel_init);
  v20 = sub_20C135E14();
  (*(*(v20 - 8) + 8))(a3, v20);
  return v19;
}

uint64_t sub_20BC2C0D8(uint64_t a1, unint64_t a2)
{
  v196 = a1;
  v189 = a2;
  v182 = sub_20C13BB84();
  v181 = *(v182 - 1);
  MEMORY[0x28223BE20](v182);
  v180 = &v158 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v165 = &v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v3;
  MEMORY[0x28223BE20](v4);
  v168 = &v158 - v5;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v172 = &v158 - v6;
  v7 = sub_20C132C14();
  v185 = *(v7 - 8);
  v186 = v7;
  MEMORY[0x28223BE20](v7);
  v184 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v167 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v169 = &v158 - v11;
  v166 = v12;
  MEMORY[0x28223BE20](v13);
  v161 = &v158 - v14;
  v179 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v179);
  v183 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v175 = &v158 - v17;
  v18 = sub_20C1388B4();
  v178 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v158 - v22);
  v24 = sub_20C136E94();
  v187 = *(v24 - 8);
  v188 = v24;
  MEMORY[0x28223BE20](v24);
  v191 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C138B94();
  v192 = *(v26 - 8);
  v193 = v26;
  v27 = *(v192 + 64);
  MEMORY[0x28223BE20](v26);
  v163 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v190 = &v158 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v158 - v31;
  v33 = sub_20C138894();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v162 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v194 = &v158 - v37;
  v38 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v38);
  v40 = &v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5EAE70(v196, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20B66A720(v40, type metadata accessor for ShelfItemAction);
  if (EnumCaseMultiPayload != 15)
  {
    return result;
  }

  v43 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderUpsellShelf_offer;
  v44 = v195;
  swift_beginAccess();
  sub_20B52F9E8(v44 + v43, v32, &unk_27C768660);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {
    v49 = (v34 + 32);
    v182 = *(v34 + 32);
    v182(v194, v32, v33);
    v50 = sub_20C138824();
    if ((v189 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v50 + 16) > v189)
    {
      v159 = v34;
      v160 = v33;
      v51 = *(v192 + 16);
      v196 = *(v192 + 80);
      v52 = v50 + ((v196 + 32) & ~v196) + *(v192 + 72) * v189;
      v189 = v192 + 16;
      v181 = v51;
      v51(v190, v52, v193);

      sub_20C138814();
      sub_20C136DF4();
      v53 = v195;
      sub_20BC2A8EC(1);
      sub_20C138B74();
      v54 = v178;
      v55 = (*(v178 + 88))(v23, v18);
      if (v55 == *MEMORY[0x277D540C8])
      {
        (*(v54 + 96))(v23, v18);
        v196 = *v23;
        sub_20C138B74();
        v189 = sub_20C1388A4();
        v57 = v56;
        (*(v54 + 8))(v20, v18);
        v58 = sub_20C136664();
        v59 = v175;
        (*(*(v58 - 8) + 56))(v175, 1, 1, v58);
        v60 = v179;
        v61 = *(v179 + 20);
        v62 = *MEMORY[0x277D513C8];
        v63 = sub_20C134F24();
        (*(*(v63 - 8) + 104))(v59 + v61, v62, v63);
        (*(v185 + 56))(v59 + v60[6], 1, 1, v186);
        v64 = v60[8];
        v65 = sub_20C135ED4();
        (*(*(v65 - 8) + 56))(v59 + v64, 1, 1, v65);
        v66 = sub_20C134A04();
        v68 = v67;
        v69 = v60[10];
        v70 = *MEMORY[0x277D51768];
        v71 = sub_20C1352E4();
        (*(*(v71 - 8) + 104))(v59 + v69, v70, v71);
        v72 = v60[11];
        v73 = v187;
        v74 = v188;
        v75 = v191;
        (*(v187 + 16))(v59 + v72, v191, v188);
        (*(v73 + 56))(v59 + v72, 0, 1, v74);
        v76 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        v77 = (v59 + v60[7]);
        *v77 = v189;
        v77[1] = v57;
        v78 = (v59 + v60[9]);
        *v78 = v66;
        v78[1] = v68;
        *(v59 + v60[12]) = v76;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_20BFA03CC(v53, v59, Strong);
          swift_unknownObjectRelease();
        }

        v80 = swift_unknownObjectWeakLoadStrong();
        if (v80)
        {
          v81 = v80;
          v197[3] = sub_20B51C88C(0, &unk_27C769A50);
          v197[4] = &off_2822D7AE8;
          v82 = v196;
          v197[0] = v196;
          v83 = v81 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v84 = *(v83 + 8);
            ObjectType = swift_getObjectType();
            v86 = v74;
            v87 = v75;
            v88 = *(v84 + 304);
            v89 = v82;
            v90 = v161;
            v88(v81, v197, ObjectType, v84);
            v75 = v87;
            v74 = v86;
            v59 = v175;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
            sub_20B5D9BA8();
            v151 = swift_allocError();
            *v152 = 11;
            *(swift_allocObject() + 16) = v151;
            v153 = v82;
            v154 = v151;
            v90 = v161;
            sub_20C137CA4();
            swift_unknownObjectRelease();
          }

          __swift_destroy_boxed_opaque_existential_1(v197);
          v155 = v177;
          v156 = sub_20C137CB4();
          v157 = swift_allocObject();
          *(v157 + 16) = 0;
          *(v157 + 24) = 0;
          v156(sub_20B52347C, v157);

          (*(v176 + 8))(v90, v155);
        }

        else
        {
        }

        sub_20B66A720(v59, type metadata accessor for ShelfMetricAction);
        (*(v73 + 8))(v75, v74);
LABEL_22:
        (*(v192 + 8))(v190, v193);
        return (*(v159 + 8))(v194, v160);
      }

      v180 = v49;
      if (v55 == *MEMORY[0x277D540D0])
      {
        v175 = ~v196;
        (*(v54 + 96))(v23, v18);
        v92 = v184;
        v91 = v185;
        v93 = v186;
        (*(v185 + 32))(v184, v23, v186);
        v94 = sub_20C136664();
        v95 = v183;
        (*(*(v94 - 8) + 56))(v183, 1, 1, v94);
        v96 = v179;
        v97 = *(v179 + 20);
        v98 = *MEMORY[0x277D51398];
        v99 = sub_20C134F24();
        (*(*(v99 - 8) + 104))(v95 + v97, v98, v99);
        v100 = v96[6];
        (*(v91 + 16))(v95 + v100, v92, v93);
        (*(v91 + 56))(v95 + v100, 0, 1, v93);
        v178 = sub_20C134994();
        v102 = v101;
        v103 = v96[8];
        v104 = sub_20C135ED4();
        (*(*(v104 - 8) + 56))(v95 + v103, 1, 1, v104);
        v105 = sub_20C134A04();
        v107 = v106;
        v108 = v96[10];
        v109 = *MEMORY[0x277D51768];
        v110 = sub_20C1352E4();
        (*(*(v110 - 8) + 104))(v95 + v108, v109, v110);
        v111 = v96[11];
        v113 = v187;
        v112 = v188;
        (*(v187 + 16))(v95 + v111, v191, v188);
        (*(v113 + 56))(v95 + v111, 0, 1, v112);
        v114 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        v115 = (v95 + v96[7]);
        *v115 = v178;
        v115[1] = v102;
        v116 = (v95 + v96[9]);
        *v116 = v105;
        v116[1] = v107;
        *(v95 + v96[12]) = v114;
        v117 = v195;
        v118 = swift_unknownObjectWeakLoadStrong();
        if (v118)
        {
          sub_20BFA03CC(v117, v183, v118);
          swift_unknownObjectRelease();
        }

        swift_getObjectType();
        v119 = v168;
        sub_20C13D234();
        v120 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v121 = v163;
        v122 = v193;
        v181(v163, v190, v193);
        v123 = v159;
        v124 = v162;
        v125 = v160;
        (*(v159 + 16))(v162, v194, v160);
        v126 = (v196 + 24) & v175;
        v127 = (v126 + v27 + *(v123 + 80)) & ~*(v123 + 80);
        v128 = swift_allocObject();
        *(v128 + 16) = v120;
        (*(v192 + 32))(v128 + v126, v121, v122);
        v182((v128 + v127), v124, v125);
        v129 = v170;
        v130 = v165;
        v131 = v171;
        (*(v170 + 16))(v165, v119, v171);
        v132 = (*(v129 + 80) + 16) & ~*(v129 + 80);
        v133 = (v164 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
        v134 = swift_allocObject();
        (*(v129 + 32))(v134 + v132, v130, v131);
        v135 = (v134 + v133);
        *v135 = sub_20BC2D66C;
        v135[1] = v128;
        v136 = v169;
        sub_20C137C94();
        (*(v129 + 8))(v119, v131);
        v137 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v138 = swift_allocObject();
        *(v138 + 16) = sub_20BC2D77C;
        *(v138 + 24) = v137;
        v139 = swift_allocObject();
        *(v139 + 16) = sub_20B5D9CB0;
        *(v139 + 24) = v138;
        v140 = v176;
        v141 = v167;
        v142 = v177;
        (*(v176 + 16))(v167, v136, v177);
        v143 = (*(v140 + 80) + 16) & ~*(v140 + 80);
        v144 = (v166 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
        v145 = swift_allocObject();
        (*(v140 + 32))(v145 + v143, v141, v142);
        v146 = (v145 + v144);
        *v146 = sub_20B5D9CCC;
        v146[1] = v139;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
        v147 = v172;
        sub_20C137C94();
        (*(v140 + 8))(v136, v142);
        v148 = v174;
        v149 = sub_20C137CB4();
        v150 = swift_allocObject();
        *(v150 + 16) = 0;
        *(v150 + 24) = 0;
        v149(sub_20B52347C, v150);

        (*(v173 + 8))(v147, v148);
        sub_20B66A720(v183, type metadata accessor for ShelfMetricAction);
        (*(v185 + 8))(v184, v186);
        (*(v187 + 8))(v191, v188);
        goto LABEL_22;
      }

LABEL_26:
      result = sub_20C13DFE4();
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_26;
  }

  sub_20B520158(v32, &unk_27C768660);
  v45 = v180;
  sub_20C13B424();
  v46 = sub_20C13BB74();
  v47 = sub_20C13D1D4();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134349056;
    *(v48 + 4) = v189;
    _os_log_impl(&dword_20B517000, v46, v47, "[MarketingHeaderUpsell] Failed to handle marketing action at index %{public}ld", v48, 0xCu);
    MEMORY[0x20F2F6A40](v48, -1, -1);
  }

  return (*(v181 + 1))(v45, v182);
}

void sub_20BC2D66C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C138B94() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C138894() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_20BC2B6F0(a1, v2 + v6, v9, a2);
}

unint64_t sub_20BC2D7AC()
{
  result = qword_27C76C458;
  if (!qword_27C76C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C458);
  }

  return result;
}

uint64_t sub_20BC2D964(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BC2DA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v3;
  MEMORY[0x28223BE20](v4);
  v74 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764218);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v7;
  MEMORY[0x28223BE20](v8);
  v79 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764208);
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x28223BE20](v10);
  v82 = v11;
  v83 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763158);
  v89 = *(v14 - 8);
  v90 = v14;
  v15 = *(v89 + 64);
  MEMORY[0x28223BE20](v14);
  v87 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v88 = &v72 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641E0);
  v18 = *(v93 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v92 = &v72 - v21;
  v22 = a1;
  v23 = sub_20C133E94();
  v25 = v24;
  v27 = v26;
  v99 = 1;
  v96 = v23;
  v97 = v24;
  v28 = v26 & 1;
  v98 = v26 & 1;
  sub_20B852060();
  sub_20B8520B4();
  if (sub_20C133C14())
  {
    sub_20B683084(v23, v25, v28);
    v29 = v94;
    __swift_project_boxed_opaque_existential_1((v94 + 152), *(v94 + 176));
    sub_20C133E44();
    v30 = v92;
    sub_20C139F04();

    v31 = swift_allocObject();
    *(v31 + 16) = sub_20BC308D4;
    *(v31 + 24) = v29;
    v32 = v91;
    v33 = v93;
    (*(v18 + 16))(v91, v30, v93);
    v34 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v35 = swift_allocObject();
    (*(v18 + 32))(v35 + v34, v32, v33);
    v36 = (v35 + ((v19 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v36 = sub_20BC30938;
    v36[1] = v31;

    sub_20C137C94();
    return (*(v18 + 8))(v30, v33);
  }

  v93 = v22;
  v38 = v94;
  v99 = 2;
  v96 = v23;
  v97 = v25;
  v98 = v28;
  if (sub_20C133C14())
  {
    sub_20B683084(v23, v25, v27 & 1);
    __swift_project_boxed_opaque_existential_1((v38 + 152), *(v38 + 176));
    sub_20C133E44();
    v39 = v88;
    sub_20C139EF4();

    v40 = swift_allocObject();
    *(v40 + 16) = sub_20BC30840;
    *(v40 + 24) = v38;
    v42 = v89;
    v41 = v90;
    v43 = v87;
    (*(v89 + 16))(v87, v39, v90);
    v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v45 = swift_allocObject();
    (*(v42 + 32))(v45 + v44, v43, v41);
    v46 = (v45 + ((v15 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v46 = sub_20BC308A4;
    v46[1] = v40;

    sub_20C137C94();
    return (*(v42 + 8))(v39, v41);
  }

  v99 = 4;
  v96 = v23;
  v97 = v25;
  v98 = v27 & 1;
  if (sub_20C133C14())
  {
    sub_20B683084(v23, v25, v27 & 1);
    __swift_project_boxed_opaque_existential_1((v38 + 152), *(v38 + 176));
    sub_20C133E44();
    v47 = v84;
    sub_20C139EE4();

    v48 = swift_allocObject();
    *(v48 + 16) = sub_20BC307AC;
    *(v48 + 24) = v38;
    v50 = v85;
    v49 = v86;
    v51 = v83;
    (*(v85 + 16))(v83, v47, v86);
    v52 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v53 = (v82 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    (*(v50 + 32))(v54 + v52, v51, v49);
    v55 = (v54 + v53);
    *v55 = sub_20BC30810;
    v55[1] = v48;
  }

  else
  {
    v99 = 7;
    v96 = v23;
    v97 = v25;
    v98 = v27 & 1;
    if (sub_20C133C14())
    {
      sub_20B683084(v23, v25, v27 & 1);
      __swift_project_boxed_opaque_existential_1((v38 + 152), *(v38 + 176));
      sub_20C133E44();
      v47 = v79;
      sub_20C13A054();

      v56 = swift_allocObject();
      *(v56 + 16) = sub_20BC30718;
      *(v56 + 24) = v38;
      v50 = v80;
      v49 = v81;
      v57 = v78;
      (*(v80 + 16))(v78, v47, v81);
      v58 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v59 = (v77 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      (*(v50 + 32))(v60 + v58, v57, v49);
      v61 = (v60 + v59);
      *v61 = sub_20BC3077C;
      v61[1] = v56;
    }

    else
    {
      v99 = 8;
      v96 = v23;
      v97 = v25;
      v62 = v27 & 1;
      v98 = v27 & 1;
      v63 = sub_20C133C14();
      sub_20B683084(v23, v25, v62);
      if ((v63 & 1) == 0)
      {
        sub_20B659CD4();
        v70 = swift_allocError();
        *v71 = 8;
        *(swift_allocObject() + 16) = v70;
        return sub_20C137CA4();
      }

      __swift_project_boxed_opaque_existential_1((v38 + 152), *(v38 + 176));
      sub_20C133E44();
      v47 = v74;
      sub_20C13A0B4();

      v64 = swift_allocObject();
      *(v64 + 16) = sub_20BC30684;
      *(v64 + 24) = v38;
      v50 = v75;
      v65 = v73;
      v49 = v76;
      (*(v75 + 16))(v73, v47, v76);
      v66 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v67 = (v72 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
      v68 = swift_allocObject();
      (*(v50 + 32))(v68 + v66, v65, v49);
      v69 = (v68 + v67);
      *v69 = sub_20BC306E8;
      v69[1] = v64;
    }
  }

  sub_20C137C94();
  return (*(v50 + 8))(v47, v49);
}

uint64_t sub_20BC2E608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v3;
  MEMORY[0x28223BE20](v4);
  v74 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764218);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v7;
  MEMORY[0x28223BE20](v8);
  v79 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764208);
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x28223BE20](v10);
  v82 = v11;
  v83 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763158);
  v89 = *(v14 - 8);
  v90 = v14;
  v15 = *(v89 + 64);
  MEMORY[0x28223BE20](v14);
  v87 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v88 = &v72 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641E0);
  v18 = *(v93 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v92 = &v72 - v21;
  v22 = a1;
  v23 = sub_20C133E94();
  v25 = v24;
  v27 = v26;
  v99 = 1;
  v96 = v23;
  v97 = v24;
  v28 = v26 & 1;
  v98 = v26 & 1;
  sub_20B852060();
  sub_20B8520B4();
  if (sub_20C133C14())
  {
    sub_20B683084(v23, v25, v28);
    v29 = v94;
    __swift_project_boxed_opaque_existential_1((v94 + 168), *(v94 + 192));
    sub_20C133E44();
    v30 = v92;
    sub_20C139F04();

    v31 = swift_allocObject();
    *(v31 + 16) = sub_20BC30E94;
    *(v31 + 24) = v29;
    v32 = v91;
    v33 = v93;
    (*(v18 + 16))(v91, v30, v93);
    v34 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v35 = swift_allocObject();
    (*(v18 + 32))(v35 + v34, v32, v33);
    v36 = (v35 + ((v19 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v36 = sub_20BC30FD0;
    v36[1] = v31;

    sub_20C137C94();
    return (*(v18 + 8))(v30, v33);
  }

  v93 = v22;
  v38 = v94;
  v99 = 2;
  v96 = v23;
  v97 = v25;
  v98 = v28;
  if (sub_20C133C14())
  {
    sub_20B683084(v23, v25, v27 & 1);
    __swift_project_boxed_opaque_existential_1((v38 + 168), *(v38 + 192));
    sub_20C133E44();
    v39 = v88;
    sub_20C139EF4();

    v40 = swift_allocObject();
    *(v40 + 16) = sub_20BC30E30;
    *(v40 + 24) = v38;
    v42 = v89;
    v41 = v90;
    v43 = v87;
    (*(v89 + 16))(v87, v39, v90);
    v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v45 = swift_allocObject();
    (*(v42 + 32))(v45 + v44, v43, v41);
    v46 = (v45 + ((v15 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v46 = sub_20BC30FCC;
    v46[1] = v40;

    sub_20C137C94();
    return (*(v42 + 8))(v39, v41);
  }

  v99 = 4;
  v96 = v23;
  v97 = v25;
  v98 = v27 & 1;
  if (sub_20C133C14())
  {
    sub_20B683084(v23, v25, v27 & 1);
    __swift_project_boxed_opaque_existential_1((v38 + 168), *(v38 + 192));
    sub_20C133E44();
    v47 = v84;
    sub_20C139EE4();

    v48 = swift_allocObject();
    *(v48 + 16) = sub_20BC30DCC;
    *(v48 + 24) = v38;
    v50 = v85;
    v49 = v86;
    v51 = v83;
    (*(v85 + 16))(v83, v47, v86);
    v52 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v53 = (v82 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    (*(v50 + 32))(v54 + v52, v51, v49);
    v55 = (v54 + v53);
    *v55 = sub_20BC30FC8;
    v55[1] = v48;
  }

  else
  {
    v99 = 7;
    v96 = v23;
    v97 = v25;
    v98 = v27 & 1;
    if (sub_20C133C14())
    {
      sub_20B683084(v23, v25, v27 & 1);
      __swift_project_boxed_opaque_existential_1((v38 + 168), *(v38 + 192));
      sub_20C133E44();
      v47 = v79;
      sub_20C13A054();

      v56 = swift_allocObject();
      *(v56 + 16) = sub_20BC30D68;
      *(v56 + 24) = v38;
      v50 = v80;
      v49 = v81;
      v57 = v78;
      (*(v80 + 16))(v78, v47, v81);
      v58 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v59 = (v77 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      (*(v50 + 32))(v60 + v58, v57, v49);
      v61 = (v60 + v59);
      *v61 = sub_20BC30FC4;
      v61[1] = v56;
    }

    else
    {
      v99 = 8;
      v96 = v23;
      v97 = v25;
      v62 = v27 & 1;
      v98 = v27 & 1;
      v63 = sub_20C133C14();
      sub_20B683084(v23, v25, v62);
      if ((v63 & 1) == 0)
      {
        sub_20B659CD4();
        v70 = swift_allocError();
        *v71 = 8;
        *(swift_allocObject() + 16) = v70;
        return sub_20C137CA4();
      }

      __swift_project_boxed_opaque_existential_1((v38 + 168), *(v38 + 192));
      sub_20C133E44();
      v47 = v74;
      sub_20C13A0B4();

      v64 = swift_allocObject();
      *(v64 + 16) = sub_20BC30D04;
      *(v64 + 24) = v38;
      v50 = v75;
      v65 = v73;
      v49 = v76;
      (*(v75 + 16))(v73, v47, v76);
      v66 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v67 = (v72 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
      v68 = swift_allocObject();
      (*(v50 + 32))(v68 + v66, v65, v49);
      v69 = (v68 + v67);
      *v69 = sub_20BC30FC0;
      v69[1] = v64;
    }
  }

  sub_20C137C94();
  return (*(v50 + 8))(v47, v49);
}

uint64_t sub_20BC2F1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v131 = a3;
  v133 = a4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v6;
  MEMORY[0x28223BE20](v7);
  v107 = &v105 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764218);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v9;
  MEMORY[0x28223BE20](v10);
  v112 = &v105 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764208);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v116 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v12;
  MEMORY[0x28223BE20](v13);
  v117 = &v105 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763158);
  v122 = *(v15 - 8);
  v123 = v15;
  MEMORY[0x28223BE20](v15);
  v120 = v16;
  v121 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v105 - v18;
  v132 = a2;
  v128 = *(a2 - 8);
  v20 = *(v128 + 64);
  MEMORY[0x28223BE20](v21);
  v127 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641E0);
  v125 = *(v22 - 8);
  v23 = *(v125 + 8);
  MEMORY[0x28223BE20](v22);
  v124 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v130 = &v105 - v25;
  v126 = a1;
  v26 = sub_20C133E94();
  v28 = v27;
  v30 = v29;
  v138 = 1;
  v134 = v26;
  v135 = v27;
  v31 = v29 & 1;
  v136 = v29 & 1;
  sub_20B852060();
  sub_20B8520B4();
  if (sub_20C133C14())
  {
    sub_20B683084(v26, v28, v31);
    v123 = v22;
    v32 = v131;
    v33 = v132;
    v34 = v129;
    (*(v131 + 8))(&v134, v132, v131);
    __swift_project_boxed_opaque_existential_1(&v134, v137);
    sub_20C133E44();
    sub_20C139F04();

    v36 = v127;
    v35 = v128;
    (*(v128 + 16))(v127, v34, v33);
    v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v33;
    *(v38 + 24) = v32;
    (*(v35 + 32))(v38 + v37, v36, v33);
    v39 = swift_allocObject();
    *(v39 + 16) = sub_20BC30B38;
    *(v39 + 24) = v38;
    v41 = v124;
    v40 = v125;
    v42 = v130;
    v43 = v123;
    (*(v125 + 2))(v124, v130, v123);
    v44 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v45 = swift_allocObject();
    v40[4](v45 + v44, v41, v43);
    v46 = (v45 + ((v23 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v46 = sub_20BC30FD0;
    v46[1] = v39;
    sub_20C137C94();
    (v40[1])(v42, v43);
  }

  else
  {
    v125 = v19;
    v130 = v20;
    v48 = v131;
    v47 = v132;
    v138 = 2;
    v134 = v26;
    v135 = v28;
    v136 = v31;
    if (sub_20C133C14())
    {
      sub_20B683084(v26, v28, v30 & 1);
      v49 = v129;
      v50 = v47;
      (*(v48 + 8))(&v134, v47, v48);
      __swift_project_boxed_opaque_existential_1(&v134, v137);
      sub_20C133E44();
      v51 = v125;
      sub_20C139EF4();

      v53 = v127;
      v52 = v128;
      (*(v128 + 16))(v127, v49, v50);
      v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = v50;
      *(v55 + 24) = v48;
      (*(v52 + 32))(v55 + v54, v53, v50);
      v56 = swift_allocObject();
      *(v56 + 16) = sub_20BC30A64;
      *(v56 + 24) = v55;
      v58 = v121;
      v57 = v122;
      v59 = v123;
      (*(v122 + 16))(v121, v51, v123);
      v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v61 = (v120 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      (*(v57 + 32))(v62 + v60, v58, v59);
      v63 = (v62 + v61);
      *v63 = sub_20BC30FCC;
      v63[1] = v56;
      sub_20C137C94();
      (*(v57 + 8))(v51, v59);
    }

    else
    {
      v138 = 4;
      v134 = v26;
      v135 = v28;
      v136 = v30 & 1;
      v64 = v47;
      if (sub_20C133C14())
      {
        sub_20B683084(v26, v28, v30 & 1);
        v65 = v129;
        (*(v48 + 8))(&v134, v47, v48);
        __swift_project_boxed_opaque_existential_1(&v134, v137);
        sub_20C133E44();
        v66 = v117;
        sub_20C139EE4();

        v68 = v127;
        v67 = v128;
        (*(v128 + 16))(v127, v65, v64);
        v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v70 = swift_allocObject();
        *(v70 + 16) = v64;
        *(v70 + 24) = v48;
        (*(v67 + 32))(v70 + v69, v68, v64);
        v71 = swift_allocObject();
        *(v71 + 16) = sub_20BC30A10;
        *(v71 + 24) = v70;
        v72 = v118;
        v73 = v116;
        v74 = v119;
        (*(v118 + 16))(v116, v66, v119);
        v75 = (*(v72 + 80) + 16) & ~*(v72 + 80);
        v76 = (v115 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
        v77 = swift_allocObject();
        (*(v72 + 32))(v77 + v75, v73, v74);
        v78 = (v77 + v76);
        *v78 = sub_20BC30FC8;
        v78[1] = v71;
      }

      else
      {
        v138 = 7;
        v134 = v26;
        v135 = v28;
        v136 = v30 & 1;
        if (sub_20C133C14())
        {
          sub_20B683084(v26, v28, v30 & 1);
          v79 = v129;
          (*(v48 + 8))(&v134, v47, v48);
          __swift_project_boxed_opaque_existential_1(&v134, v137);
          sub_20C133E44();
          v66 = v112;
          sub_20C13A054();

          v81 = v127;
          v80 = v128;
          (*(v128 + 16))(v127, v79, v64);
          v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
          v83 = swift_allocObject();
          *(v83 + 16) = v64;
          *(v83 + 24) = v48;
          (*(v80 + 32))(v83 + v82, v81, v64);
          v84 = swift_allocObject();
          *(v84 + 16) = sub_20BC309BC;
          *(v84 + 24) = v83;
          v72 = v113;
          v85 = v111;
          v74 = v114;
          (*(v113 + 16))(v111, v66, v114);
          v86 = (*(v72 + 80) + 16) & ~*(v72 + 80);
          v87 = (v110 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
          v88 = swift_allocObject();
          (*(v72 + 32))(v88 + v86, v85, v74);
          v89 = (v88 + v87);
          *v89 = sub_20BC30FC4;
          v89[1] = v84;
        }

        else
        {
          v138 = 8;
          v134 = v26;
          v135 = v28;
          v136 = v30 & 1;
          v91 = sub_20C133C14();
          sub_20B683084(v26, v28, v30 & 1);
          if ((v91 & 1) == 0)
          {
            sub_20B659CD4();
            v103 = swift_allocError();
            *v104 = 8;
            *(swift_allocObject() + 16) = v103;
            return sub_20C137CA4();
          }

          v92 = v129;
          (*(v48 + 8))(&v134, v64, v48);
          __swift_project_boxed_opaque_existential_1(&v134, v137);
          sub_20C133E44();
          v66 = v107;
          sub_20C13A0B4();

          v94 = v127;
          v93 = v128;
          (*(v128 + 16))(v127, v92, v64);
          v95 = (*(v93 + 80) + 32) & ~*(v93 + 80);
          v96 = swift_allocObject();
          *(v96 + 16) = v64;
          *(v96 + 24) = v48;
          (*(v93 + 32))(v96 + v95, v94, v64);
          v97 = swift_allocObject();
          *(v97 + 16) = sub_20BC30968;
          *(v97 + 24) = v96;
          v72 = v108;
          v98 = v106;
          v74 = v109;
          (*(v108 + 16))(v106, v66, v109);
          v99 = (*(v72 + 80) + 16) & ~*(v72 + 80);
          v100 = (v105 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
          v101 = swift_allocObject();
          (*(v72 + 32))(v101 + v99, v98, v74);
          v102 = (v101 + v100);
          *v102 = sub_20BC30FC0;
          v102[1] = v97;
        }
      }

      sub_20C137C94();
      (*(v72 + 8))(v66, v74);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(&v134);
}

double sub_20BC301E8(uint64_t a1, void (*a2)(__n128))
{
  v3 = sub_20C132C14();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v5);
  v8 = type metadata accessor for ShareSheetLinkItemProvider();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_artworkItemProvider];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v9[OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_title];
  *v11 = 0;
  *(v11 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B52E424(&v19, &v9[OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_storefrontLocalizer]);
  (*(v4 + 16))(&v9[OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_url], v7, v3);
  v12 = *v10;
  *v10 = 0;
  v10[1] = 0;

  *v11 = 0;
  *(v11 + 1) = 0;

  v13 = sub_20C132B64();
  v18.receiver = v9;
  v18.super_class = v8;
  v14 = objc_msgSendSuper2(&v18, sel_initWithPlaceholderItem_, v13);

  (*(v4 + 8))(v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250);
  v15 = swift_allocObject();
  *&result = 1;
  *(v15 + 16) = xmmword_20C14F980;
  *(v15 + 56) = v8;
  *(v15 + 32) = v14;
  return result;
}

uint64_t sub_20BC303FC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t (*a3)(void)@<X4>, void (*a4)(__n128)@<X5>, void (*a5)(__n128)@<X6>, void *a6@<X8>)
{
  v22 = a5;
  v10 = a3(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  a4(v12);
  v15 = (*(a2 + 16))(a1, a2);
  sub_20BC301E8(v15, v22);
  v17 = v16;
  v19 = v18;

  result = (*(v11 + 8))(v14, v10);
  *a6 = v17;
  a6[1] = v19;
  return result;
}

uint64_t sub_20BC30568@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, void (*a3)(__n128)@<X3>, void (*a4)(__n128)@<X4>, void *a5@<X8>)
{
  v9 = a2(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *a1;
  a3(v11);
  v15 = sub_20BC301E8(*(v14 + 232), a4);
  v17 = v16;
  v19 = v18;
  result = (*(v10 + 8))(v13, v9, v15);
  *a5 = v17;
  a5[1] = v19;
  return result;
}

uint64_t objectdestroy_36Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20BC30BE8@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, void (*a3)(__n128)@<X3>, void (*a4)(__n128)@<X4>, void *a5@<X8>)
{
  v9 = a2(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *a1;
  a3(v11);
  v15 = sub_20BC301E8(*(v14 + 288), a4);
  v17 = v16;
  v19 = v18;
  result = (*(v10 + 8))(v13, v9, v15);
  *a5 = v17;
  a5[1] = v19;
  return result;
}

uint64_t sub_20BC30EF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t ShelfLazyLockup.referenceType.getter()
{
  v1 = v0;
  v2 = sub_20C134014();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C136594();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C134A74();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B864C34(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    v13 = sub_20C133E94();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v13 = sub_20C136574();
    (*(v7 + 8))(v9, v6);
  }

  return v13;
}

void sub_20BC31230(char a1)
{
  v3 = sub_20C13C4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (*&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackIconView])
    {
      return;
    }

    v44 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackIconView;
    v8 = v5;
    type metadata accessor for StackIconView();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    type metadata accessor for UILayoutPriority(0);
    v47 = 1144750080;
    v46 = 1065353216;
    sub_20BC34C04(&qword_27C768270, type metadata accessor for UILayoutPriority);
    v45 = v1;
    sub_20C13BB94();
    v10 = v45;
    LODWORD(v11) = v48;
    [v9 setContentHuggingPriority:0 forAxis:v11];
    v12 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackedOverlayView;
    v13 = *&v10[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackedOverlayView];
    v14 = v9;
    [v13 addSubview_];
    v15 = [v10 stackImage];
    if (v15)
    {
      v16 = v15;
      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      (*(v4 + 104))(v7, *MEMORY[0x277D851C0], v8);
      v18 = v14;
      sub_20BD519D8(v16, v7, sub_20BC34BFC, v17);

      (*(v4 + 8))(v7, v8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_20C151490;
    v20 = [v14 leadingAnchor];

    v21 = [*&v10[v12] leadingAnchor];
    v22 = &v10[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout];
    v23 = *&v10[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 24];
    v24 = *&v10[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 32];
    __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout], v23);
    v25 = (*(v24 + 48))(v23, v24);
    v26 = &v45[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets];
    v27 = [v20 constraintEqualToAnchor:v21 constant:v25 + *&v45[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets + 8]];

    *(v19 + 32) = v27;
    v28 = [v14 bottomAnchor];

    v29 = [*&v45[v12] bottomAnchor];
    v30 = *(v22 + 3);
    v31 = *(v22 + 4);
    __swift_project_boxed_opaque_existential_1(v22, v30);
    v32 = (*(v31 + 56))(v30, v31);
    v33 = v45;
    v34 = [v28 constraintEqualToAnchor:v29 constant:-v32 - v26[2]];

    *(v19 + 40) = v34;
    v35 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);
    v36 = sub_20C13CC54();
    [v35 activateConstraints_];

    v37 = &v33[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_iconConstraints];
    swift_beginAccess();
    *(v37 + 3) = v19;

    v38 = *&v33[v44];
    *&v33[v44] = v14;
  }

  else
  {
    v39 = &v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_iconConstraints];
    swift_beginAccess();
    if (*(v39 + 3))
    {
      v40 = objc_opt_self();
      sub_20B51C88C(0, &qword_281100500);

      v41 = sub_20C13CC54();
      [v40 deactivateConstraints_];
    }

    *(v39 + 3) = 0;

    v42 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackIconView;
    v43 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackIconView];
    if (v43)
    {
      [v43 removeFromSuperview];
      v38 = *&v1[v42];
    }

    else
    {
      v38 = 0;
    }

    *&v1[v42] = 0;
  }

  sub_20B626DA0();
}

void *sub_20BC317A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView);
  v2 = v1;
  return v1;
}

char *sub_20BC317D8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_layout];
  *v11 = xmmword_20C158E00;
  *(v11 + 1) = xmmword_20C1737B0;
  *(v11 + 2) = xmmword_20C161770;
  *(v11 + 3) = xmmword_20C151BD0;
  *(v11 + 8) = 0x3FC999999999999ALL;
  v12 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView;
  v13 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v14 = *&qword_27C79ACA0;
  v15 = [v13 config];
  [v15 setCornerRadius_];

  *&v4[v12] = v13;
  v16 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_subtitleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  v18 = objc_opt_self();
  v19 = [v18 preferredFontForTextStyle_];
  [v17 setFont_];

  [v17 setAllowsDefaultTighteningForTruncation_];
  v20 = objc_opt_self();
  v21 = [v20 secondaryLabelColor];
  [v17 setTextColor_];

  [v17 setNumberOfLines_];
  [v17 setLineBreakMode_];
  *&v4[v16] = v17;
  v22 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_titleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setAdjustsFontForContentSizeCategory_];
  v24 = [v18 preferredFontForTextStyle_];
  [v23 setFont_];

  [v23 setAllowsDefaultTighteningForTruncation_];
  v25 = [v20 labelColor];
  [v23 setTextColor_];

  [v23 setNumberOfLines_];
  [v23 setLineBreakMode_];
  *&v4[v22] = v23;
  v36.receiver = v4;
  v36.super_class = type metadata accessor for TVPlaylistBrickRowCell();
  v26 = objc_msgSendSuper2(&v36, sel_initWithFrame_, a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView;
  v28 = *&v26[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView];
  v29 = v26;
  v30 = [v28 config];
  [v30 setScaleSizeIncrease_];

  v31 = (*&v26[v27] + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets);
  *v31 = v14;
  v31[1] = v14;
  v31[2] = v14;
  v31[3] = v14;
  v32 = [v29 contentView];
  [v32 addSubview_];

  v33 = [v29 contentView];
  [v33 addSubview_];

  v34 = [v29 contentView];
  [v34 addSubview_];

  sub_20BC31CF8();
  return v29;
}

void sub_20BC31CF8()
{
  v51 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20C152A00;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView];
  v3 = [v2 leadingAnchor];
  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = [v2 trailingAnchor];
  v8 = [v0 &selRef_setMaximumFractionDigits_];
  v9 = [v8 trailingAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v1 + 40) = v10;
  v11 = [v2 topAnchor];
  v12 = [v0 &selRef_setMaximumFractionDigits_];
  v13 = [v12 &selRef_setLineBreakMode_];

  v14 = [v11 constraintEqualToAnchor_];
  *(v1 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [v2 &selRef_secondaryLabel + 5];
  v17 = [v15 constraintEqualToAnchor_];

  *(v1 + 56) = v17;
  v18 = [v2 heightAnchor];
  v19 = &v0[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_layout];
  v20 = [v18 constraintEqualToConstant_];

  *(v1 + 64) = v20;
  v21 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_titleLabel];
  v22 = [v21 leadingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 leadingAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v1 + 72) = v25;
  v26 = [v21 trailingAnchor];
  v27 = [v0 contentView];
  v28 = [v27 trailingAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v1 + 80) = v29;
  v30 = [v21 topAnchor];
  v31 = [v2 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v19[2]];

  *(v1 + 88) = v32;
  v33 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_subtitleLabel];
  v34 = [v33 topAnchor];
  v35 = [v21 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v1 + 96) = v36;
  v37 = [v33 leadingAnchor];
  v38 = [v0 contentView];
  v39 = [v38 leadingAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v1 + 104) = v40;
  v41 = [v33 trailingAnchor];
  v42 = [v0 contentView];
  v43 = [v42 trailingAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  *(v1 + 112) = v44;
  v45 = [v33 bottomAnchor];
  v46 = [v0 contentView];
  v47 = [v46 bottomAnchor];

  v48 = [v45 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20BC34C04(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v49) = v52;
  [v48 setPriority_];
  *(v1 + 120) = v48;
  sub_20B51C88C(0, &qword_281100500);
  v50 = sub_20C13CC54();

  [v51 activateConstraints_];
}

id sub_20BC324E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v3 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    v26[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v7 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v13);

        ++v12;
        if (v7 == i)
        {
          v14 = v26[0];
          v7 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v14;
    sub_20B6FFB30(v26, *&v3[v7[400]]);

    v15 = sub_20B8E9218(v30);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, v26);
        v18 = *&v3[v6];
        v19 = v27;
        v20 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v20 + 16))(v18, a2 & 1, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v26);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  [*&v3[v7[400]] setControlState:v5 animated:a2 & 1];
  v21 = (v5 & 8) >> 3;
  v22 = *&v3[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_titleLabel];
  if ((v5 & 8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = 4;
  }

  [v22 setSmu:v21 marqueeEnabled:?];
  return [v22 setLineBreakMode_];
}

void sub_20BC32798(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v3 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v7 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v13);

        ++v12;
        if (v7 == i)
        {
          v14 = aBlock[0];
          v7 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v14;
    sub_20B6FFB30(aBlock, *&v3[v7[400]]);

    v15 = sub_20B8E9218(v30);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v26;
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(aBlock, v26);
        (*(v20 + 3))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  [*&v3[v7[400]] setControlState:v5 animated:a2 != 0 focusAnimationCoordinator:a2];
  if (a2)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v3;
    *(v21 + 24) = v5;
    v27 = sub_20BC34C4C;
    v28 = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v26 = &block_descriptor_105;
    v22 = _Block_copy(aBlock);
    v23 = v3;

    [a2 addCoordinatedAnimations:v22 completion:0];
    _Block_release(v22);
  }
}

void sub_20BC32B54()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_itemInfo, &qword_27C762550);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_titleLabel);
}

id sub_20BC32BD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVPlaylistBrickRowCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVPlaylistBrickRowCell()
{
  result = qword_27C76C488;
  if (!qword_27C76C488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC32CEC()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BC32DB4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BC32E00@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20BC32E68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &qword_27C762550);
  return swift_endAccess();
}

uint64_t sub_20BC32F08(uint64_t a1, void *a2, int a3)
{
  v35 = a3;
  v5 = sub_20C137C24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  (*(v6 + 16))(v16, a1, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v18 = *(v9 + 56);
  v34 = a2;
  sub_20B52F9E8(a2 + v17, v11, &unk_27C766680);
  sub_20B52F9E8(v16, &v11[v18], &unk_27C766680);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) != 1)
  {
    v21 = v36;
    sub_20B52F9E8(v11, v36, &unk_27C766680);
    if (v19(&v11[v18], 1, v5) != 1)
    {
      v22 = v33;
      (*(v6 + 32))(v33, &v11[v18], v5);
      sub_20BC34C04(&qword_27C7626D8, MEMORY[0x277D53A78]);
      v23 = sub_20C13C894();
      v24 = *(v6 + 8);
      v24(v22, v5);
      sub_20B520158(v16, &unk_27C766680);
      v24(v21, v5);
      sub_20B520158(v11, &unk_27C766680);
      v20 = v23 ^ 1;
      if ((v23 ^ 1) & 1) != 0 || (v35)
      {
        return v20 & 1;
      }

      goto LABEL_10;
    }

    sub_20B520158(v16, &unk_27C766680);
    (*(v6 + 8))(v21, v5);
LABEL_7:
    sub_20B520158(v11, &qword_27C7626D0);
    v20 = 1;
    return v20 & 1;
  }

  sub_20B520158(v16, &unk_27C766680);
  if (v19(&v11[v18], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v11, &unk_27C766680);
  if (v35)
  {
    v20 = 0;
    return v20 & 1;
  }

LABEL_10:
  v25 = v34;
  [v34 bounds];
  v26 = [v25 stackImage];
  if (v26)
  {
    v27 = v26;
    [v26 size];
  }

  sub_20C13D504();
  v30 = round(fabs(v29)) > 1.0;
  v20 = round(fabs(v28)) > 1.0 || v30;
  return v20 & 1;
}

void sub_20BC333F4(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v221 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v206 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v203 = &v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v204 = &v178 - v8;
  v202 = v9;
  MEMORY[0x28223BE20](v10);
  v205 = &v178 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v178 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v215 = *(v15 - 8);
  v216 = v15;
  v16 = *(v215 + 64);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v209 = &v178 - v18;
  v212 = sub_20C1391C4();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v213 = &v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_20C138A64();
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v214 = &v178 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v21 - 8);
  v210 = &v178 - v22;
  v23 = sub_20C13C554();
  v222 = *(v23 - 8);
  v223 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v178 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_20C137C24();
  v26 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v217 = &v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = v27;
  MEMORY[0x28223BE20](v28);
  v227 = &v178 - v29;
  v30 = sub_20C136CD4();
  v219 = *(v30 - 8);
  v220 = v30;
  MEMORY[0x28223BE20](v30);
  v225 = &v178 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C134E44();
  MEMORY[0x28223BE20](v32 - 8);
  v224 = &v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C134014();
  MEMORY[0x28223BE20](v34);
  v38 = &v178 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v39 == 33)
  {
    v123 = v228;
    sub_20BA1DA40();
    [*&v123[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_titleLabel] setText_];
    [*&v123[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_subtitleLabel] setText_];
    v124 = *&v123[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView];
    v125 = [v124 layer];
    [v125 setBorderColor_];

    v228 = [v124 layer];
    [v228 setBorderWidth_];
    v126 = v228;
  }

  else if (v39 == 32)
  {
    v188 = v14;
    v185 = v16;
    v186 = &v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v221 = v26;
    v187 = v5;
    v40 = v35;
    v41 = v36;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v43 = swift_projectBox();
    v44 = v43 + *(v42 + 64);
    v45 = *v44;
    v46 = *(v44 + 8);
    v199 = v25;
    v47 = *(v44 + 16);
    v48 = *(v44 + 24);
    v50 = *(v44 + 32);
    v49 = *(v44 + 40);
    v195 = v41;
    v51 = *(v41 + 16);
    v196 = v40;
    v51(v38, v43, v40);
    v52 = v228;
    v53 = *&v228[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_titleLabel];
    v54 = v45;
    v55 = v46;
    v191 = v47;
    v198 = v48;

    v193 = v49;

    v197 = v54;
    [v53 setAttributedText_];
    if ((*&v52[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8) != 0)
    {
      v56 = 2;
    }

    else
    {
      v56 = 4;
    }

    [v53 setSmu:(*&v52[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8uLL) >> 3 marqueeEnabled:?];
    [v53 setLineBreakMode_];
    v57 = *&v52[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_subtitleLabel];
    v192 = v55;
    [v57 setAttributedText_];
    v58 = v224;
    v194 = v38;
    sub_20C133F04();
    v190 = sub_20C138054();
    v201 = v59;
    v60 = v225;
    sub_20C134E34();
    v61 = v227;
    sub_20C136CB4();
    v189 = sub_20C136CC4();
    v200 = v62;
    sub_20B51C88C(0, &qword_281100530);
    v63 = sub_20C13D374();
    v64 = v199;
    *v199 = v63;
    v65 = v222;
    v66 = v223;
    (*(v222 + 104))(v64, *MEMORY[0x277D85200], v223);
    v67 = sub_20C13C584();
    (*(v65 + 8))(v64, v66);
    if (v67)
    {
      v68 = *&v52[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView];
      [v68 setContentMode_];
      if (sub_20BC32F08(v61, v68, 0))
      {
        v222 = v50;
        v69 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v70 = v221;
        v71 = *(v221 + 16);
        v72 = v217;
        v73 = v226;
        v184 = v221 + 16;
        v183 = v71;
        v71(v217, v61, v226);
        v74 = *(v70 + 80);
        v75 = (v74 + 24) & ~v74;
        v179 = v218 + 7;
        v76 = (v218 + 7 + v75) & 0xFFFFFFFFFFFFFFF8;
        v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
        v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
        v199 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
        v223 = v68;
        v182 = v74;
        v79 = swift_allocObject();
        *(v79 + 16) = v69;
        v80 = v70;
        v81 = v72;
        v82 = *(v80 + 32);
        v83 = v73;
        v84 = v201;
        v181 = v80 + 32;
        v180 = v82;
        v82(v79 + v75, v72, v83);
        v85 = (v79 + v76);
        v86 = v200;
        *v85 = v189;
        v85[1] = v86;
        v87 = (v79 + v77);
        *v87 = v190;
        v87[1] = v84;
        *(v79 + v78) = 2;
        v88 = v79 + v199;
        *v88 = MEMORY[0x277D84F90];
        *(v88 + 8) = 0;
        v89 = (v79 + ((v78 + 31) & 0xFFFFFFFFFFFFFFF8));
        v90 = v223;
        *v89 = 0;
        v89[1] = 0;
        v91 = &v90[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        v92 = *&v90[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        *v91 = sub_20BC349B4;
        v91[1] = v79;

        sub_20B583ECC(v92);

        [v90 bounds];
        if (v93 <= 0.0 || (v95 = v94, v94 <= 0.0))
        {

          v120 = v226;
          v61 = v227;
          v122 = v220;
          v121 = v221;
          v138 = v219;
          v58 = v224;
          v60 = v225;
        }

        else
        {
          v96 = v93;
          v97 = v182;
          v199 = ~v182;
          [v90 setStackImage_];
          v98 = v210;
          v99 = v226;
          v100 = v227;
          v101 = v183;
          (v183)(v210);
          v102 = v101;
          (*(v221 + 56))(v98, 0, 1, v99);
          v103 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
          swift_beginAccess();
          sub_20B5DF2D4(v98, &v90[v103], &unk_27C766680);
          swift_endAccess();
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v104 = sub_20C13D5A4();
          [v90 setBackgroundColor_];

          v105 = &v90[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
          *v105 = v96;
          v105[1] = v95;
          *(v105 + 16) = 0;
          v106 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v102(v81, v100, v99);
          v107 = (v97 + 16) & v199;
          v108 = (v179 + v107) & 0xFFFFFFFFFFFFFFF8;
          v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
          v110 = (v109 + 23) & 0xFFFFFFFFFFFFFFF8;
          v111 = swift_allocObject();
          v180(v111 + v107, v81, v99);
          *(v111 + v108) = v106;
          v112 = (v111 + v109);
          v113 = v227;
          *v112 = v96;
          v112[1] = v95;
          v210 = v111;
          v114 = (v111 + v110);
          v115 = v183;
          *v114 = 0;
          v114[1] = 0;
          v115(v81, v113, v99);
          (*(v211 + 104))(v213, *MEMORY[0x277D542A8], v212);

          v116 = v214;
          sub_20C138A54();
          v117 = v188;
          sub_20B5F1AC8(v116, v188);
          v118 = v215;
          v119 = v216;
          if ((*(v215 + 48))(v117, 1, v216) == 1)
          {
            sub_20B520158(v117, &unk_27C766670);
            sub_20BA1DA40();

            (*(v207 + 8))(v116, v208);
            v120 = v99;
            v122 = v220;
            v121 = v221;
            v61 = v113;
          }

          else
          {
            v139 = v115;
            v213 = *(v118 + 32);
            v140 = v209;
            (v213)(v209, v117, v119);
            v141 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v139(v81, v113, v99);
            v142 = v119;
            v143 = (v182 + 40) & v199;
            v144 = v81;
            v145 = v143 + v218;
            v146 = (v143 + v218) & 0xFFFFFFFFFFFFFFF8;
            v147 = swift_allocObject();
            *(v147 + 2) = v141;
            v147[3] = v96;
            v147[4] = v95;
            v180(v147 + v143, v144, v99);
            *(v147 + v145) = 0;
            v148 = v147 + v146;
            *(v148 + 1) = 0;
            *(v148 + 2) = 0;
            v149 = swift_allocObject();
            *(v149 + 16) = sub_20BC34B48;
            *(v149 + 24) = v147;
            v150 = v215;
            v151 = v186;
            (*(v215 + 16))(v186, v140, v142);
            v152 = (*(v150 + 80) + 16) & ~*(v150 + 80);
            v153 = (v185 + v152 + 7) & 0xFFFFFFFFFFFFFFF8;
            v154 = swift_allocObject();
            (v213)(v154 + v152, v151, v142);
            v155 = (v154 + v153);
            *v155 = sub_20B5F67A4;
            v155[1] = v149;
            v156 = v204;
            sub_20C137C94();
            v157 = swift_allocObject();
            v158 = v210;
            *(v157 + 16) = sub_20BC34A8C;
            *(v157 + 24) = v158;
            v159 = swift_allocObject();
            *(v159 + 16) = sub_20B5F67D4;
            *(v159 + 24) = v157;
            v160 = v206;
            v161 = v203;
            v162 = v187;
            (*(v206 + 16))(v203, v156, v187);
            v163 = (*(v160 + 80) + 16) & ~*(v160 + 80);
            v164 = (v202 + v163 + 7) & 0xFFFFFFFFFFFFFFF8;
            v165 = swift_allocObject();
            (*(v160 + 32))(v165 + v163, v161, v162);
            v166 = (v165 + v164);
            *v166 = sub_20B5DF204;
            v166[1] = v159;

            v167 = v205;
            sub_20C137C94();
            v168 = *(v160 + 8);
            v168(v156, v162);
            v169 = sub_20C137CB4();
            v170 = swift_allocObject();
            *(v170 + 16) = 0;
            *(v170 + 24) = 0;
            v169(sub_20B52347C, v170);

            v168(v167, v162);
            (*(v150 + 8))(v209, v216);
            (*(v207 + 8))(v214, v208);
            v120 = v226;
            v61 = v227;
            v122 = v220;
            v121 = v221;
          }

          v138 = v219;
          v58 = v224;
          v60 = v225;
        }
      }

      else
      {

        v120 = v226;
        v122 = v220;
        v121 = v221;
        v138 = v219;
      }

      v171 = v197;
      (*(v121 + 8))(v61, v120);
      (*(v138 + 8))(v60, v122);

      sub_20B62A2AC(v58);
      v172 = v194;
      v173 = sub_20C133FF4();
      v175 = v174;
      v177 = v176;
      sub_20B5F09D4(v173, v174, v176);
      sub_20B584078(v173, v175, v177);
      sub_20BC31230(1);

      (*(v195 + 8))(v172, v196);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v127 = v228;
    v128 = sub_20C13BB74();
    v129 = sub_20C13D1D4();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v229[0] = v132;
      *v130 = 138543618;
      *(v130 + 4) = v127;
      *v131 = v127;
      *(v130 + 12) = 2082;
      v229[3] = a1;
      v133 = sub_20B5F66D0();
      v134 = v127;
      v135 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v133);
      v137 = sub_20B51E694(v135, v136, v229);

      *(v130 + 14) = v137;
      _os_log_impl(&dword_20B517000, v128, v129, "Attempted to configure %{public}@ with item: %{public}s", v130, 0x16u);
      sub_20B520158(v131, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v131, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x20F2F6A40](v132, -1, -1);
      MEMORY[0x20F2F6A40](v130, -1, -1);
    }

    (*(v221 + 8))(v4, v2);
  }
}

void sub_20BC349B4()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA44DA4(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BC34A8C(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63630(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BC34B48(uint64_t *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2E8C(*a1, *(v1 + 16), v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_20BC34C04(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_20BC34C4C()
{
  v1 = (*(v0 + 24) & 8uLL) >> 3;
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_titleLabel);
  if ((*(v0 + 24) & 8) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  [v2 setSmu:v1 marqueeEnabled:?];

  return [v2 setLineBreakMode_];
}

void sub_20BC34CBC()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_layout;
  *v3 = xmmword_20C158E00;
  *(v3 + 16) = xmmword_20C1737B0;
  *(v3 + 32) = xmmword_20C161770;
  *(v3 + 48) = xmmword_20C151BD0;
  *(v3 + 64) = 0x3FC999999999999ALL;
  v4 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView;
  v5 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27C79ACA0;
  v7 = [v5 config];
  [v7 setCornerRadius_];

  *(v0 + v4) = v5;
  v8 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_subtitleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontForTextStyle_];
  [v9 setFont_];

  [v9 setAllowsDefaultTighteningForTruncation_];
  v12 = objc_opt_self();
  v13 = [v12 secondaryLabelColor];
  [v9 setTextColor_];

  [v9 setNumberOfLines_];
  [v9 setLineBreakMode_];
  *(v0 + v8) = v9;
  v14 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  v16 = [v10 preferredFontForTextStyle_];
  [v15 setFont_];

  [v15 setAllowsDefaultTighteningForTruncation_];
  v17 = [v12 labelColor];
  [v15 setTextColor_];

  [v15 setNumberOfLines_];
  [v15 setLineBreakMode_];
  *(v0 + v14) = v15;
  sub_20C13DE24();
  __break(1u);
}

char *UpNextQueueViewController.__allocating_init(dependencies:pageNavigator:displayStyle:pageContext:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v14 = sub_20BC3A6AC(a1, v13, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

uint64_t UpNextQueueViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

char *UpNextQueueViewController.init(dependencies:pageNavigator:displayStyle:pageContext:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_20BC39CA0(a1, v16, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v18;
}

uint64_t sub_20BC35358(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider);
    v4 = result;

    if (*(a1 + 16) && (sub_20C134DC4(), sub_20BE7233C(), v5 = *(v3 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page), v6 = v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate, swift_unknownObjectWeakLoadStrong()))
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 120))(v5, a1, ObjectType, v7);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_20BC354D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_20C13CDF4();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_20C13CDA4();
    v10 = v8;
    v11 = sub_20C13CD94();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    sub_20B6383D0(0, 0, v6, a3, v12);
  }
}

uint64_t UpNextQueueViewController.supportedInterfaceOrientations.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_platform) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

Swift::Void __swiftcall UpNextQueueViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v20 - v5;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidLoad, v4);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_storefrontLocalizer], *&v1[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_storefrontLocalizer + 24]);
  sub_20C138D34();
  v7 = sub_20C13C914();

  [v1 setTitle_];

  v8 = *&v1[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider];
  if ((*(v8 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_activationState) & 1) == 0)
  {
    *(v8 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_activationState) = 1;
  }

  sub_20BC35974();
  sub_20B795E8C();
  v9 = *&v1[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsViewPresenter];
  v10 = sub_20C13CDF4();
  v11 = *(*(v10 - 8) + 56);
  v11(v6, 1, 1, v10);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v9;

  sub_20B638964(0, 0, v6, &unk_20C184460, v12);

  v13 = [v1 navigationItem];
  v14 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_dismissView];
  [v13 setLeftBarButtonItem_];

  v15 = [v1 navigationItem];
  [v15 setLargeTitleDisplayMode_];

  v11(v6, 1, 1, v10);
  sub_20C13CDA4();
  v16 = v1;
  v17 = sub_20C13CD94();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  sub_20B6383D0(0, 0, v6, &unk_20C173898, v18);
}

void sub_20BC35974()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider];
  v2 = OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page;
  *(*(v1 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = &off_2822D72E8;
  swift_unknownObjectWeakAssign();
  [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  v5 = *(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  [v4 addSubview_];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  v8 = *&v0[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsView];
  [v6 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C150040;
  v10 = [v8 leadingAnchor];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v14 = [v10 constraintEqualToAnchor:v13 constant:*&qword_27C799F40];

  *(v9 + 32) = v14;
  v15 = [v8 trailingAnchor];
  v16 = [v0 view];
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v19 = [v15 constraintEqualToAnchor:v18 constant:-*&qword_27C799F50];

  *(v9 + 40) = v19;
  v20 = [v8 bottomAnchor];
  v21 = [v0 view];
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = v21;
  v23 = [v21 bottomAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v9 + 48) = v24;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  v26 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) leadingAnchor];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  v29 = [v27 leadingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(inited + 32) = v30;
  v31 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) trailingAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v32;
  v34 = [v32 trailingAnchor];

  v35 = [v31 constraintEqualToAnchor_];
  *(inited + 40) = v35;
  v36 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) topAnchor];
  v37 = [v0 view];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 safeAreaLayoutGuide];

    v40 = [v39 topAnchor];
    v41 = [v36 constraintEqualToAnchor_];

    *(inited + 48) = v41;
    v42 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) bottomAnchor];
    v43 = [v8 topAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(inited + 56) = v44;
    v45 = objc_opt_self();
    sub_20B8D9310(inited);
    sub_20B51C88C(0, &qword_281100500);
    v46 = sub_20C13CC54();

    [v45 activateConstraints_];

    return;
  }

LABEL_21:
  __break(1u);
}

Swift::Void __swiftcall UpNextQueueViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_viewDidAppear_, a1, v7);
  v13[1] = v2;
  (*(v6 + 16))(v9, *&v2[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_metricPage, v5);
  sub_20BC3AAFC(&qword_27C76C4C8, v10, type metadata accessor for UpNextQueueViewController);
  sub_20C138C54();
  (*(v6 + 8))(v9, v5);
  sub_20BC3AAFC(&qword_27C76C4D0, v11, type metadata accessor for UpNextQueueViewController);
  sub_20BC3AAFC(&qword_27C76C4D8, v12, type metadata accessor for UpNextQueueViewController);
  sub_20C139364();
}

Swift::Void __swiftcall UpNextQueueViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewWillAppear_, a1);
  if (v1[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_currentContentInsetBehavior + 16] >= 0xFCu)
  {
    v3 = *(*(*&v1[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = &v3[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    v6 = *&v3[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
    *v5 = sub_20BC3A898;
    v5[1] = v4;
    v7 = v3;

    sub_20B583ECC(v6);

    v8 = v1[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentInsetInitialBehavior + 8];
    if (v8 == 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = *&v1[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentInsetInitialBehavior];
    }

    if (v8 == 3)
    {
      v10 = 64;
    }

    else
    {
      v10 = v1[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentInsetInitialBehavior + 8];
    }

    sub_20B9F2800(v9, v8 == 3, v10, 1);
  }
}

Swift::Void __swiftcall UpNextQueueViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_viewWillDisappear_, a1, v6);
  v11 = v1;
  sub_20C132E84();
  sub_20BC3AAFC(&qword_27C76C4D0, v9, type metadata accessor for UpNextQueueViewController);
  sub_20C139274();
  (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall UpNextQueueViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1);
  sub_20BC3AAFC(&qword_27C76C4D0, v3, type metadata accessor for UpNextQueueViewController);
  sub_20BC3AAFC(&qword_27C76C4D8, v4, type metadata accessor for UpNextQueueViewController);
  sub_20C139374();
}

Swift::Void __swiftcall UpNextQueueViewController.viewWillLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewWillLayoutSubviews);
  sub_20BC35974();
}

Swift::Void __swiftcall UpNextQueueViewController.viewDidLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v3 = v1;
  [v2 bounds];
  sub_20B9D8614(v4, v5, v6, v7);
}

uint64_t sub_20BC36C60()
{
  v1[13] = v0;
  v2 = sub_20C134DC4();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  sub_20C13CDA4();
  v1[17] = sub_20C13CD94();
  v4 = sub_20C13CD24();
  v1[18] = v4;
  v1[19] = v3;

  return MEMORY[0x2822009F8](sub_20BC36D54, v4, v3);
}

uint64_t sub_20BC36D54()
{
  v0[20] = *(v0[13] + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsViewPresenter);
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_20BC36DF4;

  return sub_20C116848();
}

uint64_t sub_20BC36DF4(char a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return MEMORY[0x2822009F8](sub_20BC36F1C, v4, v3);
}

uint64_t sub_20BC36F1C()
{
  v2 = v0;
  v3 = *(v0 + 104);

  v4 = *(v3 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_menuOptions);
  v5 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  v62 = *(v4 + 16);
  if (v62)
  {
    v6 = 0;
    v56 = (*(v2 + 104) + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_storefrontLocalizer);
    v57 = MEMORY[0x277D84F90];
    v60 = v4 + 32;
    v61 = *(v2 + 160);
    v65 = *(v2 + 120);
    v58 = *(v3 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_menuOptions);
    v59 = OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_items;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v7 = *(v61 + v59);
      v8 = *(v7 + 16);
      v64 = v6;
      v63 = *(v60 + v6);
      if (v8)
      {

        sub_20BB5E4F4(0, v8, 0);
        v1 = v5;
        v9 = v7 + 32;
        do
        {
          v66 = v1;
          sub_20B51CC64(v9, v2 + 64);
          v10 = *(v2 + 88);
          v11 = *(v2 + 96);
          __swift_project_boxed_opaque_existential_1((v2 + 64), v10);
          (*(v11 + 8))(v10, v11);
          v12 = *(v2 + 88);
          v13 = *(v2 + 96);
          __swift_project_boxed_opaque_existential_1((v2 + 64), v12);
          (*(v13 + 16))(v12, v13);
          v15 = *(v2 + 88);
          v14 = *(v2 + 96);
          __swift_project_boxed_opaque_existential_1((v2 + 64), v15);
          (*(v14 + 24))(v15, v14);
          v16 = *(v2 + 88);
          v17 = *(v2 + 96);
          __swift_project_boxed_opaque_existential_1((v2 + 64), v16);
          v18 = *(v17 + 32);
          v19 = v17;
          v1 = v66;
          v18(v16, v19);

          sub_20C134D64();
          __swift_destroy_boxed_opaque_existential_1(v2 + 64);
          v21 = *(v66 + 16);
          v20 = *(v66 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_20BB5E4F4(v20 > 1, v21 + 1, 1);
            v1 = v66;
          }

          v22 = *(v2 + 128);
          v23 = *(v2 + 112);
          *(v1 + 16) = v21 + 1;
          (*(v65 + 32))(v1 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v21, v22, v23);
          v9 += 40;
          --v8;
        }

        while (v8);

        v5 = MEMORY[0x277D84F90];
        v4 = v58;
        v6 = v64;
        if (v63 == 1)
        {
LABEL_12:
          v24 = *(v1 + 16);

          if (v24)
          {
            goto LABEL_17;
          }

          goto LABEL_4;
        }
      }

      else
      {
        v1 = v5;
        if (*(v60 + v6) == 1)
        {
          goto LABEL_12;
        }
      }

      if (*(v2 + 176))
      {
        v25 = *(v1 + 16);

        if (v25 >= 2)
        {
LABEL_17:
          __swift_project_boxed_opaque_existential_1(v56, v56[3]);
          v26 = sub_20C138D34();
          v1 = v27;

          v28 = sub_20C13C914();
          v29 = [objc_opt_self() smm:v28 systemImageNamed:?];

          sub_20B51C88C(0, &qword_27C7713A0);
          v30 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v31 = swift_allocObject();
          *(v31 + 16) = v30;
          *(v31 + 24) = v63;
          *(v31 + 32) = v26;
          *(v31 + 40) = v1;
          *(v31 + 48) = v29;
          *(v31 + 56) = v63;

          v32 = v29;
          v33 = sub_20C13D624();
          MEMORY[0x20F2F43B0](v33, v34, v35, v36, v37);
          if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          sub_20C13CCE4();
          v57 = v67;
          v6 = v64;
        }
      }

      else
      {
      }

LABEL_4:
      if (++v6 == v62)
      {
        goto LABEL_21;
      }
    }
  }

  v57 = MEMORY[0x277D84F90];
LABEL_21:
  v1 = v57;
  if (v57 >> 62)
  {
LABEL_25:
    v52 = sub_20C13DB34();
    v38 = *(v2 + 104);
    if (v52)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v38 = *(v2 + 104);
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_23:
      v39 = objc_opt_self();
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = v1;
      *(v2 + 48) = sub_20BC3A924;
      *(v2 + 56) = v41;
      *(v2 + 16) = MEMORY[0x277D85DD0];
      *(v2 + 24) = 1107296256;
      *(v2 + 32) = sub_20BDAD46C;
      *(v2 + 40) = &block_descriptor_106;
      v42 = _Block_copy((v2 + 16));

      v43 = [v39 elementWithUncachedProvider_];
      _Block_release(v42);
      sub_20B51C88C(0, &unk_27C76FED0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_20C14F580;
      *(v44 + 32) = v43;
      v45 = v43;
      v55 = v44;
      v46 = sub_20C13D554();
      sub_20B51C88C(0, &qword_27C770510);
      v47 = sub_20C13C914();
      v48 = [objc_opt_self() smm:v47 systemImageNamed:v55];

      v49 = v46;
      v50 = sub_20C13D264();
      v51 = [v38 navigationItem];
      [v51 setRightBarButtonItem_];

      goto LABEL_27;
    }
  }

  v51 = [v38 navigationItem];
  [v51 setRightBarButtonItem_];
LABEL_27:

  v53 = *(v2 + 8);

  return v53();
}

void sub_20BC377E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v44 = *(v15 - 8);
  v45 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_20BE73650(a3);
  }

  if ((a7 & 0x80) == 0)
  {
    if (a7)
    {
      if (a7 == 1)
      {
        swift_beginAccess();
        v20 = swift_unknownObjectWeakLoadStrong();
        if (v20)
        {
          v21 = v20;
          sub_20B51CC64(v20 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_upNextQueueClient, v46);

          __swift_project_boxed_opaque_existential_1(v46, v46[3]);
          sub_20C139724();
          v22 = swift_allocObject();
          swift_beginAccess();
          v23 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();

          v24 = swift_allocObject();
          *(v24 + 16) = sub_20BC3A944;
          *(v24 + 24) = v22;
          v25 = v43;
          (*(v43 + 16))(v11, v14, v9);
          v26 = (*(v25 + 80) + 16) & ~*(v25 + 80);
          v27 = swift_allocObject();
          (*(v25 + 32))(v27 + v26, v11, v9);
          v28 = (v27 + ((v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v28 = sub_20B875FF0;
          v28[1] = v24;
          sub_20C137C94();
          (*(v25 + 8))(v14, v9);
          __swift_destroy_boxed_opaque_existential_1(v46);
          v29 = v45;
          v30 = sub_20C137CB4();
          v31 = swift_allocObject();
          *(v31 + 16) = 0;
          *(v31 + 24) = 0;
          v30(sub_20B52347C, v31);

          (*(v44 + 8))(v17, v29);
        }
      }
    }

    else
    {
      swift_beginAccess();
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = v32;
        v34 = *(v32 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider);

        v35 = sub_20C0A4B2C(0, 0, sub_20BC3AAF4, v34);
        v37 = v36;

        v38 = *(v34 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page);
        v39 = v38 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v40 = *(v39 + 8);
          ObjectType = swift_getObjectType();
          (*(v40 + 224))(v38, v35, v37, ObjectType, v40);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_20BC37CC4(uint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v28 = &v25 - v6;
  v30 = sub_20C1351C4();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v25 = a2;
    v26 = v5;
    v27 = v2;
    v33[0] = MEMORY[0x277D84F90];
    sub_20BB5E19C(0, v11, 0);
    v12 = v33[0];
    v34 = sub_20C134B14();
    v13 = *(v34 - 8);
    v14 = *(v13 + 16);
    v31 = v13 + 16;
    v32 = v14;
    v15 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v16 = *(v13 + 72);
    do
    {
      v32(v9, v15, v34);
      swift_storeEnumTagMultiPayload();
      v33[0] = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_20BB5E19C(v17 > 1, v18 + 1, 1);
        v12 = v33[0];
      }

      *(v12 + 16) = v18 + 1;
      sub_20B840690(v9, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18);
      v15 += v16;
      --v11;
    }

    while (v11);
    v5 = v26;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v20 = Strong;
  sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_upNextQueueClient, v33);

  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v21 = v28;
  sub_20C139734();

  v22 = sub_20C137CB4();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v22(sub_20B5DF6DC, v23);

  (*(v29 + 8))(v21, v5);
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_20BC3802C(void (*a1)(unint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20BC38134();
  }

  if (a4 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v9 = sub_20C13DE34();

    a4 = v9;
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
  }

  a1(a4);
}

uint64_t sub_20BC38134()
{
  ObjectType = swift_getObjectType();
  v30 = sub_20C1333A4();
  v1 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_20C1352E4();
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C134F24();
  v10 = *(v28 - 8);
  v11 = MEMORY[0x28223BE20](v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v0;
  (*(v10 + 104))(v13, *MEMORY[0x277D51390], v11);
  (*(v7 + 104))(v9, *MEMORY[0x277D51768], v6);
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider);
  v25 = *(*(v14 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v15 = *MEMORY[0x277D523D8];
  v16 = sub_20C135ED4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v5, v15, v16);
  (*(v17 + 56))(v5, 0, 1, v16);
  v18 = v1;
  v19 = *(v1 + 16);
  v20 = v14 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_metricPage;
  v22 = v29;
  v21 = v30;
  v19(v29, v20, v30);
  sub_20BC3AAFC(&qword_27C76C560, v23, type metadata accessor for UpNextQueueViewController);

  sub_20C138D94();

  (*(v18 + 8))(v22, v21);
  sub_20B520158(v5, &unk_27C7621D0);
  (*(v27 + 8))(v9, v26);
  return (*(v10 + 8))(v13, v28);
}

uint64_t sub_20BC3856C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = sub_20C13BB84();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  v4[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v4[22] = v6;
  v7 = *(v6 - 8);
  v4[23] = v7;
  v4[24] = *(v7 + 64);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  sub_20C13CDA4();
  v4[28] = sub_20C13CD94();
  v9 = sub_20C13CD24();
  v4[29] = v9;
  v4[30] = v8;

  return MEMORY[0x2822009F8](sub_20BC38720, v9, v8);
}

uint64_t sub_20BC38720()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_upNextQueueClient), *(v6 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_upNextQueueClient + 24));
  sub_20C139724();
  v7 = *__swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentAvailabilityFilter), *(v6 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentAvailabilityFilter + 24));
  *(v0 + 40) = type metadata accessor for ContentAvailabilityFilter();
  *(v0 + 48) = &off_2822C8E88;
  *(v0 + 16) = v7;
  sub_20B51CC64(v0 + 16, v0 + 56);
  v8 = swift_allocObject();
  sub_20B51C710((v0 + 56), v8 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20BC3A904;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_20B8404CC;
  *(v10 + 24) = v9;
  (*(v5 + 16))(v2, v1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v2, v4);
  v13 = (v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = sub_20B8404D4;
  v13[1] = v10;
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750);
  sub_20C137C94();
  v14 = *(v5 + 8);
  *(v0 + 256) = v14;
  *(v0 + 264) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v1, v4);

  return MEMORY[0x2822009F8](sub_20BC38994, 0, 0);
}

uint64_t sub_20BC38994()
{
  v1 = v0[27];
  v2 = swift_task_alloc();
  v0[34] = v2;
  *(v2 + 16) = "SeymourUI/UpNextQueueViewController.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 285;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_20BC38AA4;
  v4 = v0[31];

  return MEMORY[0x2822008A0](v0 + 15, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B888314, v2, v4);
}

uint64_t sub_20BC38AA4()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {

    v3 = sub_20BC38EC4;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v2[32];
    v7 = v2[27];
    v8 = v2[22];
    v2[37] = v2[15];

    v6(v7, v8);
    v4 = v2[29];
    v5 = v2[30];
    v3 = sub_20BC38C10;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20BC38C10()
{
  v1 = v0[21];
  v2 = *(v0[17] + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsViewPresenter);
  v3 = sub_20BEF6FA4(v0[37]);

  *(v2 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_items) = v3;

  v4 = sub_20C13CDF4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v5[5] = v3;

  sub_20B6383D0(0, 0, v1, &unk_20C184730, v5);

  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_20BC38D88;

  return sub_20BC36C60();
}

uint64_t sub_20BC38D88()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_20BC391CC;
  }

  else
  {
    v5 = sub_20BC39134;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20BC38EC4()
{
  (*(v0 + 256))(*(v0 + 216), *(v0 + 176));
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return MEMORY[0x2822009F8](sub_20BC38F30, v1, v2);
}

uint64_t sub_20BC38F30()
{
  v19 = v0;
  v1 = v0[36];

  sub_20C13B444();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v17 = v0[20];
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x20F2F5850](v0[13], v0[14]);
    v11 = sub_20B51E694(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to setup actions view: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v0[19];
    v12 = v0[20];
    v14 = v0[18];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_20BC39134()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BC391CC()
{
  v19 = v0;
  v1 = v0[39];

  sub_20C13B444();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v17 = v0[20];
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x20F2F5850](v0[13], v0[14]);
    v11 = sub_20B51E694(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to setup actions view: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v0[19];
    v12 = v0[20];
    v14 = v0[18];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_20BC393D0(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_20B51CC64(a1, v7);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_20B51C710(v7, v4 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourUI/ContentAvailabilityFilter.swift";
  *(v5 + 24) = 41;
  *(v5 + 32) = 2;
  *(v5 + 40) = 25;
  *(v5 + 48) = &unk_20C15D270;
  *(v5 + 56) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750);
  return sub_20C137C94();
}

id UpNextQueueViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id UpNextQueueViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BC39734()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider) + 112) + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_deletionCompletion;
  v2 = *v1;
  if (*v1)
  {

    v2(1);
    sub_20B583ECC(v2);
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *v1 = 0;
  *(v1 + 8) = 0;

  return sub_20B583ECC(v3);
}

uint64_t sub_20BC397F8(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

uint64_t sub_20BC39874@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20BC3992C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider);
  v4 = OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BC39A00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BC39AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = sub_20BC3AAFC(&qword_27C76C4D0, v5, type metadata accessor for UpNextQueueViewController);

  return a3(ObjectType, v6, a2);
}

uint64_t sub_20BC39C1C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = *&Strong[*a2];

  return v4;
}

char *sub_20BC39CA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v43[3] = a7;
  v43[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a2, a7);
  a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_visibility] = 1;
  v17 = &a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_currentContentInsetBehavior];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = -4;
  a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_isTransitioningContentInset] = 0;
  *&a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_resignActiveObserver] = 0;
  v18 = &a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_layout];
  sub_20BC3A3D8(v44);
  v19 = v44[1];
  *v18 = v44[0];
  *(v18 + 1) = v19;
  *(v18 + 2) = v44[2];
  *(v18 + 6) = v45;
  *&a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980);
  sub_20C133AA4();
  sub_20B51C710(&v41, &a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentAvailabilityFilter]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  v20 = OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_mediaTagStringBuilder;
  sub_20B51C710(&v41, &a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_mediaTagStringBuilder]);
  sub_20B51CC64(v43, &a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_pageNavigator]);
  sub_20C133AA4();
  a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_platform] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_eventHub] = v41;
  v21 = &a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentInsetInitialBehavior];
  *v21 = *(v18 + 3);
  v21[8] = 0;
  *&a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_menuOptions] = &unk_282288148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v41, &a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_bookmarkClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  v22 = OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_storefrontLocalizer;
  sub_20B51C710(&v41, &a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_storefrontLocalizer]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v41, &a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_subscriptionCache]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_subscriptionToken] = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(&v41, &a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_upNextQueueClient]);
  type metadata accessor for UpNextQueueGalleryDataProvider();
  swift_allocObject();

  v24 = sub_20BE76468(v23, a3, a4, a5);

  *&a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider] = v24;
  type metadata accessor for QueueActionsViewPresenter();
  v25 = swift_allocObject();

  v26 = sub_20BF91C50(a1, 0, 0, v24, v25);
  *&a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsViewPresenter] = v26;
  sub_20B51CC64(&a6[v20], &v41);
  v27 = objc_allocWithZone(type metadata accessor for QueueActionsView());

  v28 = sub_20BF91514(a1, v26, &v41, 1, v27);
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsView] = v28;
  sub_20B51CC64(&a6[v22], &v41);
  __swift_project_boxed_opaque_existential_1(&v41, v42);
  v29 = sub_20C138D34();
  v30 = &a6[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_galleryTitle];
  *v30 = v29;
  v30[1] = v31;
  __swift_destroy_boxed_opaque_existential_1(&v41);
  v40.receiver = a6;
  v40.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  v33 = *&v32[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsViewPresenter];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = (v33 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
  v36 = *(v33 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
  *v35 = sub_20BC3AB44;
  v35[1] = v34;
  v37 = v32;

  sub_20B583ECC(v36);

  swift_getObjectType();
  sub_20C13AF44();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v41);

  swift_getObjectType();
  sub_20C137384();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A7A4();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v41);
  __swift_destroy_boxed_opaque_existential_1(v43);

  return v37;
}

uint64_t sub_20BC3A3D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D743E8];
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v5 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v6 = swift_initStackObject();
  v7 = MEMORY[0x277D74430];
  *(v6 + 16) = xmmword_20C14F980;
  v8 = *v7;
  *(v6 + 32) = *v7;
  *(v6 + 40) = v2;
  v9 = v5;
  v10 = v8;
  v11 = sub_20B6B134C(v6);
  swift_setDeallocating();
  sub_20B520158(v6 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v11;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20BC3AAFC(&qword_27C7618A0, 255, type metadata accessor for AttributeName);
  v12 = sub_20C13C744();

  v13 = [v3 fontDescriptorByAddingAttributes_];

  v14 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v15 = qword_27C799F50;
  sub_20C1380F4();
  v16 = sub_20C138104();
  result = sub_20C138104();
  v18 = 20.0;
  *a1 = 0x73697370696C6C65;
  *(a1 + 8) = 0xE800000000000000;
  *(a1 + 16) = v14;
  if (v16 == result)
  {
    v18 = 0.0;
  }

  *(a1 + 24) = v18;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v15;
  return result;
}

char *sub_20BC3A6AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v18);
  (*(v15 + 16))(v17, a2, a7);
  return sub_20BC39CA0(a1, v17, a3, a4, a5, v19, a7, a8);
}

uint64_t sub_20BC3A7C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BC3856C(a1, v4, v5, v6);
}

uint64_t objectdestroy_36Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20BC3AA24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t sub_20BC3AAFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WorkoutPlanMenuOption.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6574656C6564;
  v2 = 0x656D616E6572;
  if (a1 != 2)
  {
    v2 = 0x61746544776F6873;
  }

  if (a1)
  {
    v1 = 6581861;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20BC3AC48(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6574656C6564;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0xE600000000000000;
  v6 = 0x656D616E6572;
  if (v3 != 2)
  {
    v6 = 0x61746544776F6873;
    v5 = 0xEB00000000736C69;
  }

  v7 = 6581861;
  if (*a1)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v7 = 0x6574656C6564;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE600000000000000;
  v11 = 0xE600000000000000;
  v12 = 0x656D616E6572;
  if (*a2 != 2)
  {
    v12 = 0x61746544776F6873;
    v11 = 0xEB00000000736C69;
  }

  if (*a2)
  {
    v2 = 6581861;
    v10 = 0xE300000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_20C13DFF4();
  }

  return v15 & 1;
}

uint64_t sub_20BC3AD80@<X0>(_BYTE *a1@<X8>)
{
  result = _s9SeymourUI21WorkoutPlanMenuOptionO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_20BC3ADB0(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6574656C6564;
  v4 = 0xE600000000000000;
  v5 = 0x656D616E6572;
  if (*v1 != 2)
  {
    v5 = 0x61746544776F6873;
    v4 = 0xEB00000000736C69;
  }

  if (*v1)
  {
    v3 = 6581861;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_20BC3AE38()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BC3AEF4()
{
  sub_20C13CA64();
}

uint64_t sub_20BC3AF9C()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI21WorkoutPlanMenuOptionO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_20C13DEA4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_20BC3B0A4()
{
  result = qword_27C76C568;
  if (!qword_27C76C568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76C570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C568);
  }

  return result;
}

unint64_t sub_20BC3B10C()
{
  result = qword_27C76C578;
  if (!qword_27C76C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C578);
  }

  return result;
}

void PictureInPictureSurrogateProtocol<>.presentSessionViewController(_:animated:completion:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v31 = a5;
  HIDWORD(v30) = a3;
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a7 + 8))(a6, a7, v16))
  {
    if (qword_27C760CF0 != -1)
    {
      swift_once();
    }

    v19 = v7;
    if (qword_27C760CF8 != -1)
    {
      swift_once();
    }

    v20 = sub_20C13C914();
    v21 = sub_20C13C914();
    v22 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_20C132964();

    v25 = sub_20C13C914();

    v26 = [objc_opt_self() actionWithTitle:v25 style:1 handler:0];

    [v22 addAction_];
    if (a4)
    {
      v36 = a4;
      v37 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_20B7B548C;
      v35 = &block_descriptor_3_1;
      v27 = _Block_copy(&aBlock);
    }

    else
    {
      v27 = 0;
    }

    [v19 presentViewController:v22 animated:1 completion:v27];
    _Block_release(v27);
  }

  else
  {
    sub_20C13B574();
    sub_20C13BB64();
    (*(v15 + 8))(v18, v14);
    ObjectType = swift_getObjectType();
    (*(a2 + 8))(v7, a7, ObjectType, a2);
    if (a4)
    {
      v36 = a4;
      v37 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_20B7B548C;
      v35 = &block_descriptor_107;
      v29 = _Block_copy(&aBlock);
    }

    else
    {
      v29 = 0;
    }

    [v8 presentViewController:a1 animated:BYTE4(v30) & 1 completion:v29];
    _Block_release(v29);
  }
}

uint64_t PictureInPictureSurrogateProtocol<>.presentSessionViewController(_:animated:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 112) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = sub_20C13CDA4();
  *(v6 + 64) = sub_20C13CD94();
  v8 = sub_20C13CD24();
  *(v6 + 72) = v8;
  *(v6 + 80) = v7;

  return MEMORY[0x2822009F8](sub_20BC3B6B0, v8, v7);
}

uint64_t sub_20BC3B6B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 112);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  *(v0 + 88) = sub_20C13CD94();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v1;
  *(v3 + 40) = v7;
  *(v3 + 56) = v2;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_20BC3B7D8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_20BC3B7D8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_20B8AF0D4, v3, v2);
}

uint64_t sub_20BC3B938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v19 = a6;
  v20 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76E940);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  PictureInPictureSurrogateProtocol<>.presentSessionViewController(_:animated:completion:)(a3, a4, a5, sub_20BC3BAC4, v17, v19, v20);
}

void sub_20BC3BB38(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C590);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_20BC3CC4C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BC3C178;
  aBlock[3] = &block_descriptor_8;
  v11 = _Block_copy(aBlock);

  [a2 fetchPairedHRMDevices_];
  _Block_release(v11);
}

uint64_t sub_20BC3BCE8(unint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (v38 - v12);
  if (a1)
  {
    sub_20C13B514();

    v14 = sub_20C13BB74();
    v15 = sub_20C13D1F4();
    v16 = a1 >> 62;
    if (!os_log_type_enabled(v14, v15))
    {

      goto LABEL_9;
    }

    v3 = swift_slowAlloc();
    *v3 = 134217984;
    if (v16)
    {
      goto LABEL_27;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C13DB34())
    {
      *(v3 + 4) = i;

      _os_log_impl(&dword_20B517000, v14, v15, "Fetch %ld paired audio HRM devices", v3, 0xCu);
      MEMORY[0x20F2F6A40](v3, -1, -1);

LABEL_9:
      (*(v8 + 8))(v13, v7);
      v7 = v16 ? sub_20C13DB34() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = MEMORY[0x277D84F90];
      if (!v7)
      {
        break;
      }

      v39 = MEMORY[0x277D84F90];
      v13 = &v39;
      sub_20BB5E848(0, v7 & ~(v7 >> 63), 0);
      if ((v7 & 0x8000000000000000) == 0)
      {
        v38[0] = a3;
        v19 = 0;
        v8 = v39;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x20F2F5430](v19, a1);
          }

          else
          {
            v20 = *(a1 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = [v20 productID];

          v39 = v8;
          v24 = *(v8 + 16);
          v23 = *(v8 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_20BB5E848((v23 > 1), v24 + 1, 1);
            v8 = v39;
          }

          ++v19;
          *(v8 + 16) = v24 + 1;
          *(v8 + 4 * v24 + 32) = v22;
        }

        while (v7 != v19);
        break;
      }

      __break(1u);
LABEL_27:
      ;
    }

    v39 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C590);
    return sub_20C13CD54();
  }

  else
  {
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v26 = sub_20C133CC4();
      sub_20BC3CD24();
      v18 = swift_allocError();
      (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D503A0], v26);
    }

    v28 = a2;
    sub_20C13B514();
    v29 = v18;
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1D4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38[0] = a3;
      v34 = v33;
      v39 = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v35 = MEMORY[0x20F2F5850](v38[2], v38[3]);
      v37 = sub_20B51E694(v35, v36, &v39);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_20B517000, v30, v31, "Failed to fetch paired HRM devices -- %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x20F2F6A40](v34, -1, -1);
      MEMORY[0x20F2F6A40](v32, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    v39 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C590);
    return sub_20C13CD44();
  }
}

uint64_t sub_20BC3C178(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_20BC3CCD8();
    v4 = sub_20C13CC74();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_20BC3C20C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_20BC3CC3C;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_20BC3C5DC;
    v9[3] = &block_descriptor_108;
    v7 = _Block_copy(v9);
    sub_20B584050(a1);

    [v3 setHrmCapableDeviceRoutedStateChangedHandler_];
    _Block_release(v7);
    return sub_20B583ECC(a1);
  }

  else
  {

    return [v2 setHrmCapableDeviceRoutedStateChangedHandler_];
  }
}

uint64_t sub_20BC3C34C(int a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  LODWORD(v7) = a1;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B514();
  v12 = a2;
  v13 = sub_20C13BB74();
  v14 = sub_20C13D1F4();
  v26 = v12;

  if (os_log_type_enabled(v13, v14))
  {
    v22 = v8;
    v24 = a4;
    v25 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 67109378;
    *(v15 + 4) = v7 & 1;
    *(v15 + 8) = 2080;
    v23 = v7;
    if (a2)
    {
      v17 = [v26 productID];
    }

    else
    {
      v17 = 0;
    }

    v27 = v17;
    v28 = a2 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C580);
    v19 = sub_20C13D8F4();
    v7 = sub_20B51E694(v19, v20, &v29);

    *(v15 + 10) = v7;
    _os_log_impl(&dword_20B517000, v13, v14, "HRM capable device routed state changed: isRouted=%{BOOL}d, device=%s", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x20F2F6A40](v16, -1, -1);
    MEMORY[0x20F2F6A40](v15, -1, -1);

    (*(v9 + 8))(v11, v22);
    a3 = v25;
    LOBYTE(v7) = v23;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    if (!a2)
    {
LABEL_8:
      v18 = 0;
      goto LABEL_9;
    }
  }

  v18 = [v26 productID];
LABEL_9:
  v30 = a2 == 0;
  return a3(v7 & 1, v18 | ((a2 == 0) << 32));
}

void sub_20BC3C5DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_20BC3C678()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_20BC3C78C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C5A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20BC3C894;
  v0[13] = &block_descriptor_11_0;
  v0[14] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20BC3C78C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_20BC3C894(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_20BC3C974()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C588);
  *v3 = v0;
  v3[1] = sub_20BC3CA7C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x800000020C1ACD00, sub_20BC3CC44, v2, v4);
}

uint64_t sub_20BC3CA7C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_20BC3CBB4;
  }

  else
  {

    v2 = sub_20BC3CB98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BC3CBB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BC3CC4C(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C590) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20BC3BCE8(a1, a2, v6);
}

unint64_t sub_20BC3CCD8()
{
  result = qword_27C76C598;
  if (!qword_27C76C598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C76C598);
  }

  return result;
}

unint64_t sub_20BC3CD24()
{
  result = qword_27C766EF8;
  if (!qword_27C766EF8)
  {
    sub_20C133CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766EF8);
  }

  return result;
}

uint64_t sub_20BC3CD9C()
{
  sub_20BBB5DB4();
  v0 = swift_allocError();
  *v1 = 0;
  *(swift_allocObject() + 16) = v0;

  return sub_20C137CA4();
}

uint64_t sub_20BC3CFCC()
{
  sub_20BBB5DB4();
  v0 = swift_allocError();
  *v1 = 0;
  *(swift_allocObject() + 16) = v0;

  return sub_20C137CA4();
}

void *sub_20BC3D084()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ChartGalleryViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = sub_20C13C914();
    [v0 setTitle_];

    v5 = *&v0[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_dataProvider];
    if ((*(v5 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_activationState) & 1) == 0)
    {
      *(v5 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_activationState) = 1;
    }

    sub_20C03680C();
    sub_20BC3DE1C();
    sub_20B79599C(0);
    sub_20BAD5814();
    return sub_20B7963BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20BC3D1E8(char a1)
{
  v3 = type metadata accessor for ChartGalleryViewController();
  v36.receiver = v1;
  v36.super_class = v3;
  objc_msgSendSuper2(&v36, sel_viewWillAppear_, a1 & 1);
  v4 = [v1 navigationController];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v4 viewControllers];

  sub_20B51C88C(0, &qword_281100550);
  v7 = sub_20C13CC74();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!sub_20C13DB34())
  {
LABEL_9:

LABEL_10:
    v9 = 0;
LABEL_11:
    v35 = v3;
    v32 = v1;
    v10 = v1;
    v11 = sub_20C13C914();
    if (v3)
    {
      v12 = __swift_project_boxed_opaque_existential_1(&v32, v35);
      v13 = *(v3 - 1);
      v14 = MEMORY[0x28223BE20](v12);
      v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v16, v14);
      v17 = sub_20C13DFD4();
      (*(v13 + 8))(v16, v3);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
      v17 = 0;
    }

    v18 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v11 style:0 target:v17 action:sel_backButtonPressed];

    swift_unknownObjectRelease();
    v19 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v18 setTintColor_];

    if (v9)
    {
      v20 = [v9 navigationItem];
      [v20 setBackBarButtonItem_];
    }

    v21 = *&v10[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentNavigationBarTintColor];
    if (v21)
    {
      v22 = *&v10[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentNavigationBarTintColor];
    }

    else
    {
      v22 = *&v10[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_standardNavigationBarTintColor];
      v21 = 0;
    }

    v23 = v21;
    v24 = [v10 navigationController];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 navigationBar];

      [v26 setTintColor_];
    }

    v27 = &v10[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentContentInsetBehavior];
    v28 = v10[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentContentInsetBehavior + 16];
    if (v28 > 0xFB)
    {
      goto LABEL_27;
    }

    if (v28 >> 6)
    {
      if (v28 >> 6 != 1)
      {
        v29 = *v27;
        v30 = v27[1];
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_20C13DC94();
        v31[0] = v32;
        v31[1] = v33;
        MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
        v32 = v29;
        v33 = v30;
        v34 = v28;
        sub_20C13DDF4();
        sub_20C1380E4();

        goto LABEL_27;
      }

      v28 = 0;
    }

    sub_20BE8F76C(v28);
LABEL_27:

    return;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x20F2F5430](0, v7);
    goto LABEL_7;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
LABEL_7:
    v9 = v8;

    goto LABEL_11;
  }

  __break(1u);
}

void sub_20BC3D8FC(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChartGalleryViewController();
  v23.receiver = v2;
  v23.super_class = v8;
  objc_msgSendSuper2(&v23, sel_viewWillDisappear_, a1 & 1);
  v9 = [v2 navigationController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 viewControllers];

  sub_20B51C88C(0, &qword_281100550);
  v12 = sub_20C13CC74();

  if (v12 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x20F2F5430](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = [v14 navigationItem];
  [v15 setBackBarButtonItem_];

LABEL_11:
  v22 = v2;
  sub_20C132E84();
  sub_20BC3E7E4(&qword_27C76C618);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v16 = [v2 navigationController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v19 = sub_20C13CC74();

    v22 = v2;
    MEMORY[0x28223BE20](v20);
    *(&v21 - 2) = &v22;
    LOBYTE(v18) = sub_20B79AEEC(sub_20B5978BC, (&v21 - 4), v19);

    if ((v18 & 1) == 0)
    {
      v22 = v2;
      sub_20BC3E7E4(&qword_27C76C628);
      sub_20C138C64();
    }
  }
}

void sub_20BC3DE1C()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_upNextQueueButton];
  v2 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v4 = v1;
  *(v4 + 1) = &off_2822C8C68;
  v11.receiver = v3;
  v11.super_class = v2;
  v5 = v1;
  v6 = objc_msgSendSuper2(&v11, sel_init);
  [v6 setCustomView_];

  if (v0[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_platform] == 1)
  {
    v8 = [v0 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20C151490;
    *(v9 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
    *(v9 + 40) = v6;
    sub_20B51C88C(0, &qword_27C770510);
    v10 = v6;
    v7 = sub_20C13CC54();

    [v8 setRightBarButtonItems_];

    goto LABEL_5;
  }

  if (!v0[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_platform])
  {
    v7 = [v0 navigationItem];
    [v7 setRightBarButtonItem_];
LABEL_5:
  }
}

id sub_20BC3E088()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChartGalleryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ChartGalleryViewController()
{
  result = qword_27C76C608;
  if (!qword_27C76C608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BC3E244()
{
  result = sub_20C1352F4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_20BC3E354(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_standardNavigationBarTintColor];
    }

    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentNavigationBarTintColor] = v2;
    v4 = v2;

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    v10[4] = sub_20B7C9A90;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20B7B548C;
    v10[3] = &block_descriptor_109;
    v7 = _Block_copy(v10);
    v8 = v4;
    v9 = v1;

    [v5 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
  }
}

uint64_t sub_20BC3E504(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

uint64_t sub_20BC3E634(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BC3E6EC()
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20BC3E750()
{
  swift_getWitnessTable();

  return sub_20C139374();
}

uint64_t sub_20BC3E7E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChartGalleryViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20BC3E828()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_resignActiveObserver) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_visibility) = 1;
  v2 = OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_metricPageCategory;
  v3 = *MEMORY[0x277D51838];
  v4 = sub_20C1352F4();
  (*(*(v4 - 8) + 104))(v0 + v2, v3, v4);
  v5 = OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_standardNavigationBarTintColor;
  *(v0 + v5) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BC3E990()
{
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_audioSessionCoordinator);
  sub_20C138F44();
  sub_20BA7E7DC();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BBD90DC, v2, v1);
}

void sub_20BC3EA28()
{
  v1 = sub_20C132C14();
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v19 = &v43 - v18;
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_activationState) = 1;
    v49 = v17;
    v50 = v14;
    v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v4;
    v20 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_assetClient + 24);
    v43 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_assetClient + 32);
    v47 = v16;
    v48 = v15;
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_assetClient), v20);
    v44 = v1;
    v51 = v19;
    sub_20C134254();
    v21 = v9;
    sub_20C139E64();
    (*(v52 + 8))(v3, v44);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20BC40254;
    *(v23 + 24) = v22;
    v24 = v45;
    v25 = v9;
    v26 = v46;
    (*(v5 + 16))(v45, v25, v46);
    v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v28 = swift_allocObject();
    (*(v5 + 32))(v28 + v27, v24, v26);
    v29 = (v28 + ((v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_20BC40270;
    v29[1] = v23;
    v30 = v47;
    sub_20C137C94();
    (*(v5 + 8))(v21, v26);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20BC402A0;
    *(v32 + 24) = v31;
    v33 = v48;
    v34 = v49;
    v35 = v50;
    (*(v48 + 16))(v49, v30, v50);
    v36 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v37 = swift_allocObject();
    (*(v33 + 32))(v37 + v36, v34, v35);
    v38 = (v37 + ((v11 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v38 = sub_20B5DF204;
    v38[1] = v32;
    v39 = v51;
    sub_20C137C94();
    v40 = *(v33 + 8);
    v40(v30, v35);
    v41 = sub_20C137CB4();
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    v41(sub_20B52347C, v42);

    v40(v39, v35);
  }
}

void sub_20BC3EFAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20BC3F3F8();
  }
}

void sub_20BC3F01C()
{
  v0 = sub_20C13BB84();
  v28 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C132C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C134284();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = v0;
    v12 = Strong;
    (*(v8 + 16))(v10, Strong + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_preview, v7);

    sub_20C134254();
    (*(v8 + 8))(v10, v7);
    v13 = sub_20C132B24();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    sub_20C13B534();

    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29[0] = v19;
      *v18 = 141558274;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2080;
      v20 = sub_20B51E694(v13, v15, v29);

      *(v18 + 14) = v20;
      _os_log_impl(&dword_20B517000, v16, v17, "Failed to fetch preview from %{mask.hash}s", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x20F2F6A40](v19, -1, -1);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    else
    {
    }

    (*(v28 + 8))(v2, v27);
  }

  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21 + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_display;
    v23 = v21;
    v24 = swift_unknownObjectWeakLoadStrong();
    v25 = *(v22 + 8);

    if (v24)
    {
      ObjectType = swift_getObjectType();
      (*(v25 + 40))(ObjectType, v25);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_20BC3F3F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C6B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_20C138EC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_contentIdentifier);
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_contentIdentifier + 8);
  v11 = sub_20C134264();
  v13 = v12;
  (*(v6 + 104))(v8, *MEMORY[0x277D541B8], v5);
  v14 = sub_20C13A484();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = sub_20C1380F4();
  MEMORY[0x20F2F0730](v9, v10, v11, v13, v8, v4, v15);

  sub_20BC401A0(v4);
  (*(v6 + 8))(v8, v5);
  v16 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v17 = sub_20C132B64();
  v18 = sub_20C13C744();

  v19 = [v16 initWithURL:v17 options:v18];

  v20 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
  v21 = sub_20C13D144();

  v22 = v1 + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_display;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v22 + 8);
    ObjectType = swift_getObjectType();
    (*(v23 + 16))([objc_allocWithZone(MEMORY[0x277CE6598]) initWithPlayerItem_], ObjectType, v23);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v22 + 8);
    v26 = swift_getObjectType();
    v27 = (*(v25 + 8))(v26, v25);
    swift_unknownObjectRelease();
    [v27 play];
  }

  v28 = [objc_opt_self() defaultCenter];
  v29 = sub_20C13C914();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_9;
  }

  v30 = *(v22 + 8);
  v31 = swift_getObjectType();
  v32 = (*(v30 + 8))(v31, v30);
  swift_unknownObjectRelease();
  if (v32)
  {
    v33 = [v32 currentItem];

    if (v33)
    {
      v36 = v33;
      sub_20BC40208();
      v32 = sub_20C13DFD4();

      goto LABEL_10;
    }

LABEL_9:
    v32 = 0;
  }

LABEL_10:
  [v28 addObserver:v1 selector:sel_playerFinished_ name:v29 object:v32];

  return swift_unknownObjectRelease();
}

id sub_20BC3F9C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewPlayerDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PreviewPlayerDataProvider()
{
  result = qword_27C76C698;
  if (!qword_27C76C698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BC3FB80()
{
  result = sub_20C134284();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_20BC3FC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  *&v5[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_display + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_activationState] = 0;
  v5[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_placement] = 9;
  v13 = OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_dynamicOfferCoordinator;
  *&v5[v13] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v14 = OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_purchaseHandler;
  *&v5[v14] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  sub_20C138F44();
  sub_20C133AA4();
  *&v5[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_audioSessionCoordinator] = *&v27[0];
  *&v5[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_dependencies] = a1;
  v15 = OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_preview;
  v16 = sub_20C134284();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v5[v15], a2, v16);
  v18 = &v5[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_contentIdentifier];
  *v18 = a3;
  v18[1] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(v27, &v5[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_assetClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&v5[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_bag] = *&v27[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v5[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_eventHub] = v27[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650);
  sub_20C133AA4();
  sub_20B51C710(v27, &v5[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_marketingItemProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090);
  sub_20C133AA4();
  sub_20B51C710(v27, &v5[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_marketingMetricFieldsProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v27, &v5[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_subscriptionCache]);
  v19 = type metadata accessor for PreviewPlayerDataProvider();
  v26.receiver = v5;
  v26.super_class = v19;
  v20 = objc_msgSendSuper2(&v26, sel_init);
  v21 = &v20[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_eventHub];
  *(*&v20[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_purchaseHandler] + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8) = *&v20[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_eventHub + 8];
  swift_unknownObjectWeakAssign();
  *(*&v20[OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_dynamicOfferCoordinator] + OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8) = *(v21 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v22 = v20;
  sub_20C13CDC4();
  v23 = sub_20C13CDF4();
  (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;
  sub_20B6383D0(0, 0, v12, &unk_20C1741D8, v24);

  (*(v17 + 8))(a2, v16);
  return v22;
}

uint64_t sub_20BC400EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BC3E970(a1, v4, v5, v6);
}

uint64_t sub_20BC401A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C6B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20BC40208()
{
  result = qword_27C7689D0;
  if (!qword_27C7689D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7689D0);
  }

  return result;
}

uint64_t sub_20BC402BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_20BC40384()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C79BCD8 = v2;
  unk_27C79BCE0 = v4;
}

void sub_20BC40450()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C79BCE8 = v2;
  unk_27C79BCF0 = v4;
}

void sub_20BC4051C()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C79BCF8 = v2;
  unk_27C79BD00 = v4;
}

void sub_20BC405E8()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C79BD08 = v2;
  unk_27C79BD10 = v4;
}

void sub_20BC406B4()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C79BD18 = v2;
  unk_27C79BD20 = v4;
}

void sub_20BC40780()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C79BD28 = v2;
  unk_27C79BD30 = v4;
}

void FamilyAvatarProvider.makeFetchRequest(for:size:localFallback:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = [a1 dsid];
  v8 = [objc_allocWithZone(MEMORY[0x277D08290]) initWithFamilyMemberDSID:v7 size:a2 localFallback:a3 & 1];

  if (v8)
  {
    a4[3] = sub_20BC408E4();
    a4[4] = &protocol witness table for FAFetchFamilyPhotoRequest;
    *a4 = v8;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_20BC408E4()
{
  result = qword_27C76C6C0;
  if (!qword_27C76C6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C76C6C0);
  }

  return result;
}

void sub_20BC40930(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = [a1 dsid];
  v8 = [objc_allocWithZone(MEMORY[0x277D08290]) initWithFamilyMemberDSID:v7 size:a2 localFallback:a3 & 1];

  if (v8)
  {
    a4[3] = sub_20BC408E4();
    a4[4] = &protocol witness table for FAFetchFamilyPhotoRequest;
    *a4 = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_20BC409C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *v2;
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_20BC40AC4;
    v5[3] = &block_descriptor_110;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
    v3 = *v2;
  }

  [v3 startRequestWithCompletionHandler_];
  _Block_release(v4);
}

uint64_t sub_20BC40AC4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_20C132C54();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a4;
  v7(v6, v10, a3, a4);

  sub_20B94ACA8(v6, v10);
}

uint64_t sub_20BC40B80()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  sub_20C13E184();
  sub_20C13CA64();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

uint64_t sub_20BC40C18()
{
  MEMORY[0x20F2F58E0](*v0);
  sub_20C13E184();
  sub_20C13CA64();

  return sub_20C13CA64();
}

uint64_t sub_20BC40C9C()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  sub_20C13E184();
  sub_20C13CA64();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

uint64_t sub_20BC40D30(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    if (v4 = *(a1 + 32), v5 = *(a1 + 40), v6 = *(a2 + 32), v7 = *(a2 + 40), *(a1 + 16) == *(a2 + 16)) && *(a1 + 24) == *(a2 + 24) || (v8 = sub_20C13DFF4(), result = 0, (v8))
    {
      if (v4 == v6 && v5 == v7)
      {
        return 1;
      }

      else
      {

        return sub_20C13DFF4();
      }
    }
  }

  return result;
}

unint64_t sub_20BC40E00()
{
  result = qword_27C76C6C8;
  if (!qword_27C76C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C6C8);
  }

  return result;
}

uint64_t sub_20BC40E54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_20BC40E9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}